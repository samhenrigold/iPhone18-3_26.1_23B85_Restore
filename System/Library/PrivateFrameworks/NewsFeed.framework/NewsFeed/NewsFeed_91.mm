uint64_t sub_1D634CD10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = a1 + 32;
    v5 = a2 + 32;
    while (1)
    {
      v6 = (v4 + 80 * v3);
      v7 = v6[1];
      v34 = *v6;
      v35 = v7;
      v8 = v6[3];
      v36 = v6[2];
      *v37 = v8;
      v9 = v6[4];
      v10 = (v5 + 80 * v3);
      v11 = v10[3];
      v40 = v10[2];
      *v41 = v11;
      *&v41[16] = v10[4];
      v12 = *v10;
      v39 = v10[1];
      *&v37[16] = v9;
      v38 = v12;
      if (v34 != v12 && (sub_1D72646CC() & 1) == 0)
      {
        return 0;
      }

      v27 = v35;
      v28 = v36;
      v29[0] = *v37;
      *(v29 + 15) = *&v37[15];
      v24 = v39;
      v25 = v40;
      v26[0] = *v41;
      *(v26 + 15) = *&v41[15];
      sub_1D5CF5D60(&v34, v23);
      sub_1D5CF5D60(&v38, v23);
      sub_1D5CF5DBC(&v35, v23);
      sub_1D5CF5DBC(&v39, v23);
      v13 = static FormatOptionsNodeStatementValue.== infix(_:_:)(&v27, &v24);
      v30[0] = v24;
      v30[1] = v25;
      v31[0] = v26[0];
      *(v31 + 15) = *(v26 + 15);
      sub_1D5CF603C(v30);
      v32[0] = v27;
      v32[1] = v28;
      v33[0] = v29[0];
      *(v33 + 15) = *(v29 + 15);
      sub_1D5CF603C(v32);
      if ((v13 & 1) == 0 || (v14 = *(*&v37[24] + 16), v14 != *(*&v41[24] + 16)))
      {
LABEL_25:
        sub_1D5CF5E18(&v38);
        sub_1D5CF5E18(&v34);
        return 0;
      }

      if (v14 && *&v37[24] != *&v41[24])
      {
        v15 = (*&v37[24] + 32);
        v16 = (*&v41[24] + 32);
        do
        {
          v19 = *v15++;
          v18 = v19;
          v20 = *v16;
          v21 = v19 >> 6;
          if (v19 >> 6)
          {
            if (v21 == 1)
            {
              if (v20 & 0xC0) != 0x40 || ((v20 ^ v18))
              {
                goto LABEL_25;
              }
            }

            else if ((v20 & 0xC0) != 0x80)
            {
              goto LABEL_25;
            }
          }

          else if (v20 > 0x3F || v18 != v20)
          {
            goto LABEL_25;
          }

          ++v16;
          --v14;
        }

        while (v14);
      }

      ++v3;
      sub_1D5CF5E18(&v38);
      sub_1D5CF5E18(&v34);
      if (v3 == v2)
      {
        return 1;
      }
    }
  }

  return 1;
}

uint64_t sub_1D634CF68(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v5 = *v3;
      v6 = *v4;
      if (*(v3 - 2) == *(v4 - 2) && *(v3 - 1) == *(v4 - 1))
      {
        if (v5 != v6)
        {
          return 0;
        }
      }

      else
      {
        v8 = sub_1D72646CC();
        result = 0;
        if ((v8 & 1) == 0 || v5 != v6)
        {
          return result;
        }
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D634D024(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v41 = v2;
  v42 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 48);
    v28 = *(v5 + 32);
    v29 = v8;
    v30 = *(v5 + 64);
    v31 = *(v5 + 80);
    v9 = *(v5 + 16);
    v27[0] = *v5;
    v27[1] = v9;
    v26 = v31;
    v23 = v28;
    v24 = v8;
    v25 = v30;
    v21 = v27[0];
    v22 = v9;
    v10 = *(v6 + 48);
    v33 = *(v6 + 32);
    v34 = v10;
    v35 = *(v6 + 64);
    v36 = *(v6 + 80);
    v11 = *(v6 + 16);
    v32[0] = *v6;
    v32[1] = v11;
    v20 = v36;
    v16 = v11;
    v17 = v33;
    v18 = v10;
    v19 = v35;
    v15 = v32[0];
    sub_1D66F4374(v27, v14);
    sub_1D66F4374(v32, v14);
    v12 = _s8NewsFeed16FormatShineBlendV2eeoiySbAC_ACtFZ_0(&v21, &v15);
    v37[2] = v17;
    v37[3] = v18;
    v37[4] = v19;
    v38 = v20;
    v37[0] = v15;
    v37[1] = v16;
    sub_1D66F43D0(v37);
    v39[2] = v23;
    v39[3] = v24;
    v39[4] = v25;
    v40 = v26;
    v39[0] = v21;
    v39[1] = v22;
    sub_1D66F43D0(v39);
    if (!v12)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 88;
    v5 += 88;
  }

  return 1;
}

uint64_t sub_1D634D194(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v25 = a2 + 32;
  v26 = result + 32;
  while (v3 != v2)
  {
    v4 = (v26 + 40 * v3);
    result = *v4;
    v5 = v4[1];
    v6 = v4[2];
    v7 = v4[3];
    v8 = v4[4];
    v9 = (v25 + 40 * v3);
    v11 = v9[2];
    v10 = v9[3];
    v12 = v9[4];
    if (result != *v9 || v5 != v9[1])
    {
      result = sub_1D72646CC();
      if ((result & 1) == 0)
      {
        return 0;
      }
    }

    if (v7)
    {
      if (!v10)
      {
        return 0;
      }

      if (v6 != v11 || v7 != v10)
      {
        result = sub_1D72646CC();
        if ((result & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v10)
    {
      return 0;
    }

    v15 = *(v8 + 16);
    if (v15 != *(v12 + 16))
    {
      return 0;
    }

    if (v15)
    {
      v16 = v8 == v12;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      v17 = (v8 + 56);
      v18 = (v12 + 56);
      while (v15)
      {
        result = *(v17 - 3);
        v19 = *(v17 - 1);
        v20 = *v17;
        v21 = *(v18 - 1);
        v22 = *v18;
        if (result != *(v18 - 3) || *(v17 - 2) != *(v18 - 2))
        {
          result = sub_1D72646CC();
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        if (v19 != v21 || v20 != v22)
        {
          result = sub_1D72646CC();
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        v17 += 4;
        v18 += 4;
        if (!--v15)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
      break;
    }

LABEL_5:
    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D634D390(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a2 + 64);
    for (i = (a1 + 64); ; i += 40)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 2);
      v10 = *(v3 - 1);
      v11 = *v3;
      v12 = *(i - 4) == *(v3 - 4) && *(i - 3) == *(v3 - 3);
      if (!v12 && (sub_1D72646CC() & 1) == 0)
      {
        break;
      }

      if (v8)
      {
        if ((v11 & 1) == 0)
        {
          goto LABEL_21;
        }

        if (v6 == v9 && v7 == v10)
        {
          sub_1D5C75A4C(v6, v7, 1);
          sub_1D5C75A4C(v6, v7, 1);
          sub_1D5D2F2C8(v6, v7, 1);
          sub_1D5D2F2C8(v6, v7, 1);
        }

        else
        {
          v5 = sub_1D72646CC();
          sub_1D5C75A4C(v9, v10, 1);
          sub_1D5C75A4C(v6, v7, 1);
          sub_1D5D2F2C8(v6, v7, 1);
          sub_1D5D2F2C8(v9, v10, 1);
          if ((v5 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else
      {
        if (v11)
        {
LABEL_21:

          sub_1D5D2F2C8(v6, v7, v8);
          sub_1D5D2F2C8(v9, v10, v8 ^ 1);
          return 0;
        }

        sub_1D5D2F2C8(v6, v7, 0);
        sub_1D5D2F2C8(v9, v10, 0);
        if ((v9 ^ v6))
        {
          return 0;
        }
      }

      v3 += 40;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_1D634D564(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = 0;
    v4 = a1 + 32;
    v5 = a2 + 32;
    v23 = a1 + 32;
    v24 = *(a1 + 16);
    v22 = a2 + 32;
    while (v3 != v2)
    {
      v6 = (v4 + 24 * v3);
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[2];
      v10 = (v5 + 24 * v3);
      v11 = v10[2];
      v12 = v7 == *v10 && v8 == v10[1];
      if (!v12 && (sub_1D72646CC() & 1) == 0)
      {
        return;
      }

      v13 = *(v9 + 16);
      if (v13 != *(v11 + 16))
      {
        return;
      }

      if (v13)
      {
        v14 = v9 == v11;
      }

      else
      {
        v14 = 1;
      }

      if (!v14)
      {
        v25 = v3;

        v15 = 0;
        v16 = 0;
        while (v16 < *(v9 + 16))
        {
          if (v16 >= *(v11 + 16))
          {
            goto LABEL_36;
          }

          v17 = *(v9 + v15 + 32);
          v18 = *(v9 + v15 + 40);
          v19 = *(v11 + v15 + 32);
          v20 = *(v11 + v15 + 40);
          if (v18)
          {
            if ((*(v11 + v15 + 40) & 1) == 0)
            {
              sub_1D62B72CC(*(v9 + v15 + 32), 1);
              sub_1D62B72CC(v19, 0);
              sub_1D62B72CC(v17, 1);
              sub_1D62B72CC(v19, 0);
              goto LABEL_32;
            }

            sub_1D62B72CC(*(v9 + v15 + 32), 1);
            sub_1D62B72CC(v19, 1);
            if ((0x29282F2A2D2BuLL >> (8 * v17)) != (0x29282F2A2D2BuLL >> (8 * v19)))
            {
              goto LABEL_33;
            }
          }

          else
          {
            v27 = *(v9 + v15 + 32);
            v28 = 0;
            if (v20)
            {
              sub_1D62B72CC(v17, 0);
              sub_1D62B72CC(v19, 1);
              sub_1D62B72CC(v17, 0);
              sub_1D62B72CC(v19, 1);
              sub_1D62B72CC(v17, 0);

LABEL_32:
              sub_1D62B72BC(v17, v18);
              sub_1D62B72BC(v19, v18 ^ 1);
              sub_1D62B72BC(v19, v18 ^ 1);
LABEL_33:
              sub_1D62B72BC(v17, v18);

              return;
            }

            v26 = v19;
            sub_1D62B72CC(v17, 0);
            sub_1D62B72CC(v19, 0);
            sub_1D62B72CC(v17, 0);
            sub_1D62B72CC(v19, 0);
            sub_1D62B72CC(v17, 0);
            v21 = static FormatFloat.== infix(_:_:)(&v27, &v26);

            sub_1D62B72BC(v17, 0);
            sub_1D62B72BC(v19, 0);
            if ((v21 & 1) == 0)
            {
              goto LABEL_33;
            }
          }

          ++v16;
          sub_1D62B72BC(v17, v18);
          v15 += 16;
          if (v13 == v16)
          {

            v2 = v24;
            v3 = v25;
            v5 = v22;
            v4 = v23;
            goto LABEL_7;
          }
        }

        __break(1u);
LABEL_36:
        __break(1u);
        break;
      }

LABEL_7:
      if (++v3 == v2)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1D634D8B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    while (1)
    {
      v6 = *v4;
      v7 = *v3;
      v8 = *(v4 - 2) == *(v3 - 2) && *(v4 - 1) == *(v3 - 1);
      if (!v8 && (sub_1D72646CC() & 1) == 0)
      {
        return;
      }

      v4 += 24;
      v9 = 0x68637465727473;
      if (v6 != 2)
      {
        v9 = 0x7265746E6563;
      }

      v10 = 0xE600000000000000;
      if (v6 == 2)
      {
        v10 = 0xE700000000000000;
      }

      if (v6)
      {
        v11 = 0x646E4578656C66;
      }

      else
      {
        v11 = 0x7261745378656C66;
      }

      v12 = 0xE900000000000074;
      if (v6)
      {
        v12 = 0xE700000000000000;
      }

      v13 = v6 <= 1 ? v11 : v9;
      v14 = v6 <= 1 ? v12 : v10;
      if (v7 <= 1)
      {
        break;
      }

      if (v7 == 2)
      {
        v16 = 0xE700000000000000;
        v15 = 0x68637465727473;
LABEL_33:
        if (v13 != v15)
        {
          goto LABEL_5;
        }

        goto LABEL_34;
      }

      v16 = 0xE600000000000000;
      if (v13 != 0x7265746E6563)
      {
LABEL_5:
        v5 = sub_1D72646CC();

        if ((v5 & 1) == 0)
        {
          return;
        }

        goto LABEL_6;
      }

LABEL_34:
      if (v14 != v16)
      {
        goto LABEL_5;
      }

LABEL_6:
      v3 += 24;
      if (!--v2)
      {
        return;
      }
    }

    v15 = 0x7261745378656C66;
    v16 = 0xE900000000000074;
    if (v7)
    {
      v16 = 0xE700000000000000;
      if (v13 != 0x646E4578656C66)
      {
        goto LABEL_5;
      }

      goto LABEL_34;
    }

    goto LABEL_33;
  }
}

void sub_1D634DA7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v6 = *v4;
      v7 = *v3;
      v8 = *(v4 - 2) == *(v3 - 2) && *(v4 - 1) == *(v3 - 1);
      if (!v8 && (sub_1D72646CC() & 1) == 0)
      {
        return;
      }

      if (v6 <= 2)
      {
        if (v6 == 1)
        {
          v11 = 0x646E4578656C66;
        }

        else
        {
          v11 = 0x7265746E6563;
        }

        v12 = 0xE700000000000000;
        if (v6 != 1)
        {
          v12 = 0xE600000000000000;
        }

        if (v6)
        {
          v10 = v11;
        }

        else
        {
          v10 = 0x7261745378656C66;
        }

        if (v6)
        {
          v9 = v12;
        }

        else
        {
          v9 = 0xE900000000000074;
        }

        if (v7 <= 2)
        {
LABEL_40:
          if (v7)
          {
            if (v7 == 1)
            {
              v13 = 0xE700000000000000;
              if (v10 != 0x646E4578656C66)
              {
                goto LABEL_5;
              }
            }

            else
            {
              v13 = 0xE600000000000000;
              if (v10 != 0x7265746E6563)
              {
                goto LABEL_5;
              }
            }
          }

          else
          {
            v13 = 0xE900000000000074;
            if (v10 != 0x7261745378656C66)
            {
              goto LABEL_5;
            }
          }

          goto LABEL_56;
        }
      }

      else if (v6 > 4)
      {
        if (v6 == 5)
        {
          v10 = 0x6F72416563617073;
        }

        else
        {
          v10 = 0x6576456563617073;
        }

        if (v6 == 5)
        {
          v9 = 0xEB00000000646E75;
        }

        else
        {
          v9 = 0xEB00000000796C6ELL;
        }

        if (v7 <= 2)
        {
          goto LABEL_40;
        }
      }

      else if (v6 == 3)
      {
        v9 = 0xE700000000000000;
        v10 = 0x68637465727473;
        if (v7 <= 2)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v10 = 0x7465426563617073;
        v9 = 0xEC0000006E656577;
        if (v7 <= 2)
        {
          goto LABEL_40;
        }
      }

      if (v7 > 4)
      {
        if (v7 == 5)
        {
          v14 = 0x6F72416563617073;
          v15 = 6581877;
        }

        else
        {
          v14 = 0x6576456563617073;
          v15 = 7957614;
        }

        v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        if (v10 != v14)
        {
LABEL_5:
          v5 = sub_1D72646CC();

          if ((v5 & 1) == 0)
          {
            return;
          }

          goto LABEL_6;
        }
      }

      else if (v7 == 3)
      {
        v13 = 0xE700000000000000;
        if (v10 != 0x68637465727473)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v13 = 0xEC0000006E656577;
        if (v10 != 0x7465426563617073)
        {
          goto LABEL_5;
        }
      }

LABEL_56:
      if (v9 != v13)
      {
        goto LABEL_5;
      }

LABEL_6:
      v4 += 24;
      v3 += 24;
      --v2;
    }

    while (v2);
  }
}

void sub_1D634DD64(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v6 = *v4;
      v7 = *v3;
      v8 = *(v4 - 2) == *(v3 - 2) && *(v4 - 1) == *(v3 - 1);
      if (!v8 && (sub_1D72646CC() & 1) == 0)
      {
        return;
      }

      v4 += 24;
      if (v6 == 4)
      {
        v9 = 0x6F72416563617073;
      }

      else
      {
        v9 = 0x6576456563617073;
      }

      v10 = 0xEB00000000796C6ELL;
      if (v6 == 4)
      {
        v10 = 0xEB00000000646E75;
      }

      if (v6 == 3)
      {
        v9 = 0x7465426563617073;
        v10 = 0xEC0000006E656577;
      }

      if (v6 == 1)
      {
        v11 = 0x646E4578656C66;
      }

      else
      {
        v11 = 0x7265746E6563;
      }

      v12 = 0xE700000000000000;
      if (v6 != 1)
      {
        v12 = 0xE600000000000000;
      }

      if (!v6)
      {
        v11 = 0x7261745378656C66;
        v12 = 0xE900000000000074;
      }

      if (v6 <= 2)
      {
        v13 = v11;
      }

      else
      {
        v13 = v9;
      }

      if (v6 <= 2)
      {
        v14 = v12;
      }

      else
      {
        v14 = v10;
      }

      if (v7 > 2)
      {
        if (v7 == 3)
        {
          v15 = 0xEC0000006E656577;
          if (v13 != 0x7465426563617073)
          {
            goto LABEL_5;
          }
        }

        else
        {
          if (v7 == 4)
          {
            v16 = 0x6F72416563617073;
            v17 = 6581877;
          }

          else
          {
            v16 = 0x6576456563617073;
            v17 = 7957614;
          }

          v15 = v17 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          if (v13 != v16)
          {
LABEL_5:
            v5 = sub_1D72646CC();

            if ((v5 & 1) == 0)
            {
              return;
            }

            goto LABEL_6;
          }
        }
      }

      else if (v7)
      {
        if (v7 == 1)
        {
          v15 = 0xE700000000000000;
          if (v13 != 0x646E4578656C66)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v15 = 0xE600000000000000;
          if (v13 != 0x7265746E6563)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        v15 = 0xE900000000000074;
        if (v13 != 0x7261745378656C66)
        {
          goto LABEL_5;
        }
      }

      if (v14 != v15)
      {
        goto LABEL_5;
      }

LABEL_6:
      v3 += 24;
      --v2;
    }

    while (v2);
  }
}

void sub_1D634DFE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v6 = *v4;
      v7 = *v3;
      v8 = *(v4 - 2) == *(v3 - 2) && *(v4 - 1) == *(v3 - 1);
      if (!v8 && (sub_1D72646CC() & 1) == 0)
      {
        return;
      }

      v4 += 24;
      v9 = 1885434487;
      if (v6 == 1)
      {
        v10 = 0xE400000000000000;
      }

      else
      {
        v9 = 0x6576655270617277;
        v10 = 0xEB00000000657372;
      }

      if (v6)
      {
        v11 = v9;
      }

      else
      {
        v11 = 0x706172576F6ELL;
      }

      if (v6)
      {
        v12 = v10;
      }

      else
      {
        v12 = 0xE600000000000000;
      }

      if (v7)
      {
        if (v7 == 1)
        {
          v13 = 0xE400000000000000;
          if (v11 != 1885434487)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v13 = 0xEB00000000657372;
          if (v11 != 0x6576655270617277)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        v13 = 0xE600000000000000;
        if (v11 != 0x706172576F6ELL)
        {
          goto LABEL_5;
        }
      }

      if (v12 != v13)
      {
LABEL_5:
        v5 = sub_1D72646CC();

        if ((v5 & 1) == 0)
        {
          return;
        }

        goto LABEL_6;
      }

LABEL_6:
      v3 += 24;
      --v2;
    }

    while (v2);
  }
}

void sub_1D634E170(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v6 = *v4;
      v7 = *v3;
      v8 = *(v4 - 2) == *(v3 - 2) && *(v4 - 1) == *(v3 - 1);
      if (!v8 && (sub_1D72646CC() & 1) == 0)
      {
        return;
      }

      v4 += 24;
      if (v6 == 2)
      {
        v9 = 0x6E6D756C6F63;
      }

      else
      {
        v9 = 0x65526E6D756C6F63;
      }

      v10 = 0xE600000000000000;
      if (v6 != 2)
      {
        v10 = 0xED00006573726576;
      }

      v11 = 7827314;
      if (v6)
      {
        v11 = 0x7265766552776F72;
      }

      v12 = 0xEA00000000006573;
      if (!v6)
      {
        v12 = 0xE300000000000000;
      }

      if (v6 <= 1)
      {
        v13 = v11;
      }

      else
      {
        v13 = v9;
      }

      if (v6 <= 1)
      {
        v14 = v12;
      }

      else
      {
        v14 = v10;
      }

      if (v7 > 1)
      {
        if (v7 == 2)
        {
          v15 = 0xE600000000000000;
          if (v13 != 0x6E6D756C6F63)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v15 = 0xED00006573726576;
          if (v13 != 0x65526E6D756C6F63)
          {
            goto LABEL_5;
          }
        }
      }

      else if (v7)
      {
        v15 = 0xEA00000000006573;
        if (v13 != 0x7265766552776F72)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v15 = 0xE300000000000000;
        if (v13 != 7827314)
        {
          goto LABEL_5;
        }
      }

      if (v14 != v15)
      {
LABEL_5:
        v5 = sub_1D72646CC();

        if ((v5 & 1) == 0)
        {
          return;
        }

        goto LABEL_6;
      }

LABEL_6:
      v3 += 24;
      --v2;
    }

    while (v2);
  }
}

void sub_1D634E344(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v5 = *v4;
      v6 = *v3;
      v7 = *(v4 - 2) == *(v3 - 2) && *(v4 - 1) == *(v3 - 1);
      if (!v7 && (sub_1D72646CC() & 1) == 0)
      {
        break;
      }

      if (v5)
      {
        v8 = 0x656E696C6E69;
      }

      else
      {
        v8 = 0x6B636F6C62;
      }

      if (v5)
      {
        v9 = 0xE600000000000000;
      }

      else
      {
        v9 = 0xE500000000000000;
      }

      if (v6)
      {
        v10 = 0x656E696C6E69;
      }

      else
      {
        v10 = 0x6B636F6C62;
      }

      if (v6)
      {
        v11 = 0xE600000000000000;
      }

      else
      {
        v11 = 0xE500000000000000;
      }

      if (v8 == v10 && v9 == v11)
      {
      }

      else
      {
        v13 = sub_1D72646CC();

        if ((v13 & 1) == 0)
        {
          return;
        }
      }

      v3 += 24;
      v4 += 24;
      --v2;
    }

    while (v2);
  }
}

void sub_1D634E470(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      v7 = *v4;
      if (v6 == 1)
      {
        v8 = 0x64656C6261736964;
      }

      else
      {
        v8 = 0xD000000000000012;
      }

      if (v6 == 1)
      {
        v9 = 0xE800000000000000;
      }

      else
      {
        v9 = 0x80000001D73B7530;
      }

      if (*v3)
      {
        v10 = v8;
      }

      else
      {
        v10 = 0x7463757274736564;
      }

      if (*v3)
      {
        v11 = v9;
      }

      else
      {
        v11 = 0xEB00000000657669;
      }

      if (v7 == 1)
      {
        v12 = 0x64656C6261736964;
      }

      else
      {
        v12 = 0xD000000000000012;
      }

      if (v7 == 1)
      {
        v13 = 0xE800000000000000;
      }

      else
      {
        v13 = 0x80000001D73B7530;
      }

      if (*v4)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0x7463757274736564;
      }

      if (*v4)
      {
        v15 = v13;
      }

      else
      {
        v15 = 0xEB00000000657669;
      }

      if (v10 == v14 && v11 == v15)
      {
      }

      else
      {
        v5 = sub_1D72646CC();

        if ((v5 & 1) == 0)
        {
          return;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }
}

void sub_1D634E5D0(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_47;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    if (v5 != sub_1D7263BFC())
    {
      return;
    }
  }

  else if (v5 != *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if (v5)
  {
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
    v7 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a1 & 0x8000000000000000) != 0)
    {
      v6 = a1;
    }

    if (v4)
    {
      v7 = v6;
    }

    v8 = a2 & 0xFFFFFFFFFFFFFF8;
    v9 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v43 = a2 & 0xFFFFFFFFFFFFFF8;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v8 = a2;
    }

    if (a2 >> 62)
    {
      v9 = v8;
    }

    if (v7 != v9)
    {
      if ((v5 & 0x8000000000000000) == 0)
      {
        v10 = 0;
        v11 = a1 & 0xC000000000000001;
        v44 = a2 & 0xC000000000000001;
        v42 = a2 + 32;
        v40 = v5;
        v41 = a2;
        while (1)
        {
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
            break;
          }

          if (v11)
          {
            v13 = MEMORY[0x1DA6FB460](v10, a1);
            if (v44)
            {
              goto LABEL_20;
            }
          }

          else
          {
            if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_51;
            }

            v13 = *(a1 + 32 + 8 * v10);

            if (v44)
            {
LABEL_20:
              v14 = MEMORY[0x1DA6FB460](v10, a2);
              goto LABEL_25;
            }
          }

          if (v10 >= *(v43 + 16))
          {
            goto LABEL_52;
          }

          v14 = *(v42 + 8 * v10);

LABEL_25:
          *&v67[0] = *(v13 + 16);
          *&v65[0] = *(v14 + 16);

          v15 = static FormatExpression.== infix(_:_:)(v67, v65);

          if ((v15 & 1) == 0 || (v45 = v12, swift_beginAccess(), v16 = *(v13 + 24), swift_beginAccess(), v17 = *(v14 + 24), v4 = *(v16 + 16), v4 != *(v17 + 16)))
          {
LABEL_43:

            return;
          }

          if (v4)
          {

            if (v16 != v17)
            {
              if (*(v16 + 16))
              {
                v18 = 0;
                v19 = v4 - 1;
                v4 = 32;
                while (1)
                {
                  v20 = *(v16 + v4);
                  v21 = *(v16 + v4 + 32);
                  v61[1] = *(v16 + v4 + 16);
                  v61[2] = v21;
                  v61[0] = v20;
                  v22 = *(v16 + v4 + 48);
                  v23 = *(v16 + v4 + 64);
                  v24 = *(v16 + v4 + 80);
                  v62 = *(v16 + v4 + 96);
                  v61[4] = v23;
                  v61[5] = v24;
                  v61[3] = v22;
                  v25 = *(v16 + v4 + 16);
                  v54 = *(v16 + v4);
                  v55 = v25;
                  v26 = *(v16 + v4 + 32);
                  v27 = *(v16 + v4 + 48);
                  v28 = *(v16 + v4 + 64);
                  v29 = *(v16 + v4 + 80);
                  v60 = *(v16 + v4 + 96);
                  v58 = v28;
                  v59 = v29;
                  v56 = v26;
                  v57 = v27;
                  if (v18 >= *(v17 + 16))
                  {
                    break;
                  }

                  v30 = *(v17 + v4);
                  v31 = *(v17 + v4 + 32);
                  v63[1] = *(v17 + v4 + 16);
                  v63[2] = v31;
                  v63[0] = v30;
                  v32 = *(v17 + v4 + 48);
                  v33 = *(v17 + v4 + 64);
                  v34 = *(v17 + v4 + 80);
                  v64 = *(v17 + v4 + 96);
                  v63[4] = v33;
                  v63[5] = v34;
                  v63[3] = v32;
                  v35 = *(v17 + v4 + 16);
                  v47 = *(v17 + v4);
                  v48 = v35;
                  v36 = *(v17 + v4 + 32);
                  v37 = *(v17 + v4 + 48);
                  v38 = *(v17 + v4 + 64);
                  v39 = *(v17 + v4 + 80);
                  v53 = *(v17 + v4 + 96);
                  v51 = v38;
                  v52 = v39;
                  v49 = v36;
                  v50 = v37;
                  sub_1D5C5C4CC(v61, v46);
                  sub_1D5C5C4CC(v63, v46);
                  a2 = static FormatSourceMapNode.== infix(_:_:)(&v54, &v47);
                  v65[4] = v51;
                  v65[5] = v52;
                  v66 = v53;
                  v65[0] = v47;
                  v65[1] = v48;
                  v65[2] = v49;
                  v65[3] = v50;
                  sub_1D5C5C540(v65);
                  v67[4] = v58;
                  v67[5] = v59;
                  v68 = v60;
                  v67[0] = v54;
                  v67[1] = v55;
                  v67[2] = v56;
                  v67[3] = v57;
                  sub_1D5C5C540(v67);
                  if ((a2 & 1) == 0)
                  {

                    goto LABEL_43;
                  }

                  if (v19 == v18)
                  {

                    v5 = v40;
                    a2 = v41;
                    v11 = a1 & 0xC000000000000001;
                    goto LABEL_39;
                  }

                  v4 += 104;
                  if (++v18 >= *(v16 + 16))
                  {
                    goto LABEL_45;
                  }
                }
              }

              else
              {
LABEL_45:
                __break(1u);
              }

              __break(1u);
LABEL_47:
              v5 = sub_1D7263BFC();
              goto LABEL_3;
            }
          }

          else
          {
          }

LABEL_39:

          v10 = v45;
          if (v45 == v5)
          {
            return;
          }
        }
      }

      __break(1u);
    }
  }
}

void sub_1D634EA04(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    while (1)
    {
      v6 = *(v3 - 1);
      v5 = *v3;
      v7 = *v4;
      v11 = *(v4 - 1);
      v12 = v6;
      swift_retain_n();

      swift_retain_n();

      v8 = static FormatExpression.== infix(_:_:)(&v12, &v11);

      if ((v8 & 1) == 0)
      {
        break;
      }

      sub_1D634EB4C(v5, v7);
      v10 = v9;

      if (v10)
      {
        v3 += 2;
        v4 += 2;
        if (--v2)
        {
          continue;
        }
      }

      return;
    }
  }
}

void sub_1D634EB4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16) || !v2 || a1 == a2)
  {
    return;
  }

  v3 = 0;
  v4 = a1 + 32;
  v52 = a2 + 32;
  v47 = a1 + 32;
  v48 = *(a1 + 16);
  while (1)
  {
    if (v3 == v2)
    {
      goto LABEL_86;
    }

    v6 = *(v4 + 8 * v3);
    v7 = *(v52 + 8 * v3);
    if (v6 < 0)
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
        return;
      }

      v17 = v6 & 0x7FFFFFFFFFFFFFFFLL;
      v18 = *((v6 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
      v19 = *(v18 + 16);
      v51 = *((v7 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
      if (v19 != *(v51 + 16))
      {
        return;
      }

      v49 = *(v17 + 24);
      v50 = *((v7 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
      if (v19)
      {

        swift_retain_n();
        swift_retain_n();
        if (v18 != )
        {
          v20 = (v18 + 40);
          v21 = (v51 + 40);
          while (1)
          {
            v22 = *(v20 - 1);
            v23 = *v20;
            v24 = *v21;
            v53 = *(v21 - 1);
            v54 = v22;
            swift_retain_n();

            swift_retain_n();

            v25 = static FormatExpression.== infix(_:_:)(&v54, &v53);

            if ((v25 & 1) == 0)
            {
              break;
            }

            sub_1D634EB4C(v23, v24);
            v27 = v26;

            if ((v27 & 1) == 0)
            {
              goto LABEL_80;
            }

            v20 += 2;
            v21 += 2;
            if (!--v19)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_79;
        }
      }

      else
      {

        swift_retain_n();
        swift_retain_n();
      }

LABEL_53:
      if (v49)
      {
        v4 = v47;
        v2 = v48;
        if (!v50)
        {
          goto LABEL_80;
        }

        sub_1D634EB4C(v49, v50);
        v35 = v34;

        swift_bridgeObjectRelease_n();
        if ((v35 & 1) == 0)
        {
          return;
        }
      }

      else
      {
        v4 = v47;
        v2 = v48;
        if (v50)
        {
LABEL_80:

          return;
        }

        swift_bridgeObjectRelease_n();
      }

      goto LABEL_7;
    }

    if (v7 < 0)
    {
      return;
    }

    v8 = *(v6 + 16);
    v10 = *(v6 + 24);
    v9 = *(v6 + 32);
    v11 = *(v7 + 16);
    v13 = *(v7 + 24);
    v12 = *(v7 + 32);
    v14 = (v8 >> 3) & 3;
    v15 = v11 & 0x18;
    if (v14 > 1)
    {
      if (v14 != 2)
      {
        if (v15 != 24)
        {
          goto LABEL_72;
        }

        goto LABEL_35;
      }

      if (v15 != 16)
      {
        goto LABEL_72;
      }

LABEL_32:
      if ((v11 ^ v8))
      {
        goto LABEL_72;
      }

      goto LABEL_35;
    }

    if (v14)
    {
      if (v15 != 8)
      {
        goto LABEL_72;
      }

      goto LABEL_32;
    }

    if ((v11 & 0x18) != 0)
    {
      goto LABEL_72;
    }

    v16 = v8 >> 5;
    if (v8 >> 5 <= 1)
    {
      if (v16)
      {
        if ((v11 & 0xE0) != 0x20)
        {
LABEL_72:

LABEL_79:

          return;
        }
      }

      else if (v11 >= 0x20)
      {
        goto LABEL_72;
      }

      goto LABEL_32;
    }

    if (v16 == 2)
    {
      if ((v11 & 0xE0) != 0x40)
      {
        goto LABEL_72;
      }

      goto LABEL_32;
    }

    if (v16 == 3)
    {
      if ((v11 & 0xE0) != 0x60)
      {
        goto LABEL_72;
      }

      goto LABEL_32;
    }

    if ((v11 & 0xE0) != 0x80)
    {
      goto LABEL_72;
    }

LABEL_35:
    if (*(v6 + 40))
    {
      break;
    }

    if (*(v7 + 40))
    {
      swift_retain_n();
      swift_retain_n();
      sub_1D5F586D0(v13, v12, 1);
      sub_1D5F586D0(v10, v9, 0);
      v38 = v10;
      v39 = v9;
      v40 = 0;
      goto LABEL_74;
    }

    v32 = *(v10 + 16);
    if (v32 != *(v13 + 16))
    {
      goto LABEL_75;
    }

    if (v32)
    {
      if (v10 != v13)
      {
        v36 = (v10 + 32);
        v37 = (v13 + 32);
        while (*v36 == *v37)
        {
          ++v36;
          ++v37;
          if (!--v32)
          {
            goto LABEL_62;
          }
        }

LABEL_75:
        swift_retain_n();
        swift_retain_n();
        sub_1D5F586D0(v13, v12, 0);
        sub_1D5F586D0(v10, v9, 0);
        v44 = v10;
        v45 = v9;
        v46 = 0;
LABEL_76:
        sub_1D5F5870C(v44, v45, v46);
        v41 = v13;
        v42 = v12;
        v43 = 0;
LABEL_77:
        sub_1D5F5870C(v41, v42, v43);

        return;
      }

      swift_retain_n();
      swift_retain_n();
      sub_1D5F586D0(v10, v12, 0);
      sub_1D5F586D0(v10, v9, 0);
      sub_1D5F5870C(v10, v9, 0);
      v33 = v10;
    }

    else
    {
LABEL_62:
      swift_retain_n();
      swift_retain_n();
      sub_1D5F586D0(v13, v12, 0);
      sub_1D5F586D0(v10, v9, 0);
      sub_1D5F5870C(v10, v9, 0);
      v33 = v13;
    }

    sub_1D5F5870C(v33, v12, 0);

LABEL_7:
    if (++v3 == v2)
    {
      return;
    }
  }

  if ((*(v7 + 40) & 1) == 0)
  {
    swift_retain_n();
    swift_retain_n();
    sub_1D5F586D0(v13, v12, 0);
    sub_1D5F586D0(v10, v9, 1);
    v44 = v10;
    v45 = v9;
    v46 = 1;
    goto LABEL_76;
  }

  v28 = *(v10 + 16);
  if (v28 != *(v13 + 16))
  {
LABEL_73:
    swift_retain_n();
    swift_retain_n();
    sub_1D5F586D0(v13, v12, 1);
    sub_1D5F586D0(v10, v9, 1);
    v38 = v10;
    v39 = v9;
    v40 = 1;
LABEL_74:
    sub_1D5F5870C(v38, v39, v40);
    v41 = v13;
    v42 = v12;
    v43 = 1;
    goto LABEL_77;
  }

  if (v28)
  {
    v29 = v10 == v13;
  }

  else
  {
    v29 = 1;
  }

  if (v29)
  {
LABEL_6:
    v5 = sub_1D633D734(*(v6 + 32), *(v7 + 32));
    swift_retain_n();
    swift_retain_n();
    sub_1D5F586D0(v13, v12, 1);
    sub_1D5F586D0(v10, v9, 1);
    sub_1D5F5870C(v10, v9, 1);
    sub_1D5F5870C(v13, v12, 1);

    if ((v5 & 1) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  v30 = (v10 + 32);
  v31 = (v13 + 32);
  while (v28)
  {
    if (*v30 != *v31)
    {
      goto LABEL_73;
    }

    ++v30;
    ++v31;
    if (!--v28)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_86:
  __break(1u);
}

void sub_1D634F2BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    do
    {
      v6 = FormatItemTrait.rawValue.getter();
      v8 = v7;
      if (v6 == FormatItemTrait.rawValue.getter() && v8 == v9)
      {
      }

      else
      {
        v5 = sub_1D72646CC();

        if ((v5 & 1) == 0)
        {
          return;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }
}

void sub_1D634F3EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *v4++;

      v8 = sub_1D5E1FA08(v5, v7);

      if ((v8 & 1) == 0)
      {
        break;
      }

      --v2;
    }

    while (v2);
  }
}

uint64_t sub_1D634F4A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v18 = 1;
    }

    else
    {
      v3 = (a2 + 80);
      v4 = a1 + 40;
      do
      {
        v5 = *v4;
        v6 = *(v4 + 8);
        v7 = *(v4 + 16);
        v8 = *(v4 + 24);
        v9 = *(v4 + 32);
        v10 = *(v4 + 40);
        v27 = *(v4 - 8);
        v28 = v5;
        v29 = v6;
        v30 = v7;
        v31 = v8;
        v32 = v9;
        v33 = v10;
        v12 = *(v3 - 5);
        v13 = *(v3 - 4);
        v14 = *(v3 - 3);
        v15 = *(v3 - 2);
        v16 = *(v3 - 1);
        v20 = *(v3 - 6);
        v11 = v20;
        v21 = v12;
        v22 = v13;
        v23 = v14;
        v24 = v15;
        v25 = v16;
        v26 = *v3;
        v17 = v26;
        sub_1D62B7654(v27, v5, v6, v7, v8, v9, v10);
        sub_1D62B7654(v11, v12, v13, v14, v15, v16, v17);
        v18 = _s8NewsFeed25FormatBezierPathComponentO2eeoiySbAC_ACtFZ_0(&v27, &v20);
        sub_1D62B772C(v20, v21, v22, v23, v24, v25, v26);
        sub_1D62B772C(v27, v28, v29, v30, v31, v32, v33);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v4 += 56;
        v3 += 56;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

void sub_1D634F5E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = 0;
    v16 = a1 + 32;
    v4 = a2 + 32;
    while (v3 != v2)
    {
      v5 = (v16 + 16 * v3);
      v7 = *v5;
      v6 = v5[1];
      v8 = (v4 + 16 * v3);
      v9 = v8[1];
      v17 = *v8;
      v18 = v7;
      swift_retain_n();

      swift_retain_n();

      v10 = static FormatExpression.== infix(_:_:)(&v18, &v17);

      if ((v10 & 1) == 0 || (v11 = *(v6 + 16), v11 != *(v9 + 16)))
      {
LABEL_20:

        return;
      }

      if (v11)
      {
        v12 = v6 == v9;
      }

      else
      {
        v12 = 1;
      }

      if (!v12)
      {
        v13 = 4;
        while ((v13 - 4) < *(v6 + 16))
        {
          v14 = *(v6 + 8 * v13);
          v18 = v14;
          if ((v13 - 4) >= *(v9 + 16))
          {
            goto LABEL_23;
          }

          v17 = *(v9 + 8 * v13);
          v15 = v17;
          sub_1D5CFEC98(v14);
          sub_1D5CFEC98(v15);
          LOBYTE(v15) = static FormatAdjustment.== infix(_:_:)();
          sub_1D5CFED88(v17);
          sub_1D5CFED88(v18);
          if ((v15 & 1) == 0)
          {
            goto LABEL_20;
          }

          ++v13;
          if (!--v11)
          {
            goto LABEL_5;
          }
        }

        __break(1u);
LABEL_23:
        __break(1u);
        break;
      }

LABEL_5:
      ++v3;

      if (v3 == v2)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1D634F7BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatPackage(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v176 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = sub_1D725BD1C();
  v8 = *(v216 - 8);
  MEMORY[0x1EEE9AC00](v216, v9);
  v200 = &v176 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69D6B38];
  sub_1D5B5BF78(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v199 = &v176 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v198 = &v176 - v17;
  sub_1D66F4EB8(0, &qword_1EDF178B0, &qword_1EDF45AC0, v11);
  v206 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v176 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v201 = &v176 - v24;
  v220 = type metadata accessor for FormatMetadata(0);
  MEMORY[0x1EEE9AC00](v220, v25);
  v202 = (&v176 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v27, v28);
  v209 = (&v176 - v29);
  MEMORY[0x1EEE9AC00](v30, v31);
  v207 = (&v176 - v32);
  MEMORY[0x1EEE9AC00](v33, v34);
  v208 = (&v176 - v35);
  v211 = sub_1D72585BC();
  v36 = *(v211 - 8);
  MEMORY[0x1EEE9AC00](v211, v37);
  v210 = &v176 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D66F4E3C(0);
  v212 = v39;
  MEMORY[0x1EEE9AC00](v39, v40);
  v218 = &v176 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2AB28(0);
  v43 = v42;
  v215 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v44);
  v204 = &v176 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46, v47);
  v203 = &v176 - v48;
  MEMORY[0x1EEE9AC00](v49, v50);
  v219 = &v176 - v51;
  MEMORY[0x1EEE9AC00](v52, v53);
  v217 = &v176 - v54;
  v55 = type metadata accessor for FormatWorkspaceGroup(0);
  MEMORY[0x1EEE9AC00](v55, v56);
  v58 = (&v176 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v59, v60);
  v64 = (&v176 - v63);
  v65 = *(a1 + 16);
  if (v65 != *(a2 + 16) || !v65 || a1 == a2)
  {
    return;
  }

  v189 = v61;
  v66 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  v67 = a1 + v66;
  v68 = a2 + v66;
  v69 = 0;
  v186 = (v8 + 48);
  v182 = (v8 + 32);
  v183 = (v8 + 8);
  v184 = (v36 + 32);
  v191 = (v36 + 8);
  v70 = *(v62 + 72);
  v190 = v7;
  v194 = v65;
  v180 = v67;
  v179 = v68;
  v178 = v70;
  while (1)
  {
    v71 = v70 * v69;
    sub_1D6706BB4(v67 + v70 * v69, v64, type metadata accessor for FormatWorkspaceGroup);
    if (v69 == v194)
    {
      goto LABEL_120;
    }

    v185 = v69;
    sub_1D6706BB4(v68 + v71, v58, type metadata accessor for FormatWorkspaceGroup);
    v72 = *v64 == *v58 && v64[1] == v58[1];
    if (!v72 && (sub_1D72646CC() & 1) == 0 || (v64[2] != v58[2] || v64[3] != v58[3]) && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_115;
    }

    v73 = *(v189 + 24);
    v74 = *(v64 + v73);
    v75 = *(v64 + v73 + 8);
    v213 = v58 + v73;
    v214 = v64 + v73;
    v76 = v74 == *(v58 + v73) && v75 == *(v58 + v73 + 8);
    if (!v76 && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_115;
    }

    v205 = type metadata accessor for FormatContentSubgroup(0);
    v77 = v205[5];
    v78 = &v214[v77];
    v79 = &v213[v77];
    if ((sub_1D6B1A454(&v214[v77], &v213[v77]) & 1) == 0)
    {
      goto LABEL_115;
    }

    sub_1D5B5971C(0);
    v81 = *(v80 + 36);
    v82 = *&v78[v81];
    v83 = *&v79[v81];
    v84 = *(v82 + 16);
    if (v84 != *(v83 + 16))
    {
      goto LABEL_115;
    }

    v85 = v217;
    if (v84 && v82 != v83)
    {
      v86 = 0;
      v87 = (*(v215 + 80) + 32) & ~*(v215 + 80);
      v193 = v82 + v87;
      v192 = v83 + v87;
      v181 = v82;
      v195 = v21;
      v196 = v43;
      v188 = v83;
      v187 = v84;
      do
      {
        if (v86 >= *(v82 + 16))
        {
          goto LABEL_118;
        }

        v92 = v64;
        v93 = v58;
        v94 = v86;
        v95 = *(v215 + 72) * v86;
        sub_1D6706BB4(v193 + v95, v85, sub_1D5C2AB28);
        v96 = *(v83 + 16);
        v197 = v94;
        if (v94 >= v96)
        {
          goto LABEL_119;
        }

        v97 = v219;
        sub_1D6706BB4(v192 + v95, v219, sub_1D5C2AB28);
        v98 = v218;
        v99 = v218 + *(v212 + 48);
        v43 = v196;
        sub_1D6706BB4(v85, v218, sub_1D5C2AB28);
        sub_1D6706BB4(v97, v99, sub_1D5C2AB28);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          v58 = v93;
          if (EnumCaseMultiPayload != 1)
          {
            v88 = swift_getEnumCaseMultiPayload();
            v89 = sub_1D66F4E3C;
            v21 = v195;
            if (v88 != 2)
            {
              goto LABEL_102;
            }

            goto LABEL_25;
          }

          v101 = v204;
          sub_1D6706BB4(v98, v204, sub_1D5C2AB28);
          sub_1D5D57E78(0, &unk_1EC88B470, type metadata accessor for FormatPackage);
          v103 = *(v102 + 48);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            sub_1D5D2CFE8(v101 + v103, type metadata accessor for FormatMetadata);
            sub_1D5D2CFE8(v101, type metadata accessor for FormatPackage);
            goto LABEL_105;
          }

          v104 = v190;
          sub_1D5C8F76C(v99, v190, type metadata accessor for FormatPackage);
          v105 = v209;
          sub_1D5C8F76C(v101 + v103, v209, type metadata accessor for FormatMetadata);
          v106 = v99 + v103;
          v107 = v202;
          sub_1D5C8F76C(v106, v202, type metadata accessor for FormatMetadata);
          v108 = static FormatPackage.== infix(_:_:)(v101, v104);
          sub_1D5D2CFE8(v101, type metadata accessor for FormatPackage);
          v21 = v195;
          v64 = v92;
          if ((v108 & 1) == 0)
          {
            goto LABEL_112;
          }

          v109 = v105[1];
          v110 = v107[1];
          if (v109)
          {
            if (!v110 || (*v105 != *v107 || v109 != v110) && (sub_1D72646CC() & 1) == 0)
            {
              goto LABEL_112;
            }
          }

          else if (v110)
          {
            goto LABEL_112;
          }

          if ((sub_1D725BCBC() & 1) == 0 || (sub_1D725BCBC() & 1) == 0)
          {
            goto LABEL_112;
          }

          v126 = v220[7];
          v127 = v105;
          v128 = *(v206 + 48);
          v129 = MEMORY[0x1E69D6B38];
          sub_1D5CDE2EC(v127 + v126, v21, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
          sub_1D5CDE2EC(v107 + v126, &v21[v128], &qword_1EDF45AC0, v129);
          v130 = *v186;
          if ((*v186)(v21, 1, v216) == 1)
          {
            if (v130(&v21[v128], 1, v216) != 1)
            {
              goto LABEL_111;
            }

            sub_1D5D35558(v21, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720], sub_1D5B5BF78);
            v105 = v209;
          }

          else
          {
            v132 = v199;
            sub_1D5CDE2EC(v21, v199, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
            if (v130(&v21[v128], 1, v216) == 1)
            {
              v131.n128_f64[0] = (*v183)(v132, v216);
LABEL_111:
              sub_1D66F4424(v21, &qword_1EDF178B0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], v131);
              v105 = v209;
LABEL_112:
              sub_1D5D2CFE8(v107, type metadata accessor for FormatMetadata);
              sub_1D5D2CFE8(v105, type metadata accessor for FormatMetadata);
              sub_1D5D2CFE8(v190, type metadata accessor for FormatPackage);
LABEL_113:
              v89 = sub_1D5C2AB28;
              v175 = v217;
              v98 = v218;
              goto LABEL_114;
            }

            v133 = &v21[v128];
            v134 = v200;
            v135 = v216;
            (*v182)(v200, v133, v216);
            sub_1D5B58B84(&qword_1EDF178B8, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B50]);
            v136 = sub_1D7261FBC();
            v137 = *v183;
            v138 = v134;
            v21 = v195;
            (*v183)(v138, v135);
            v139 = v135;
            v43 = v196;
            v137(v132, v139);
            sub_1D5D35558(v21, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720], sub_1D5B5BF78);
            v105 = v209;
            if ((v136 & 1) == 0)
            {
              goto LABEL_112;
            }
          }

          if ((sub_1D5C15FFC(*(v105 + v220[8]), *(v107 + v220[8])) & 1) == 0 || (sub_1D5C15FFC(*(v105 + v220[9]), *(v107 + v220[9])) & 1) == 0 || (sub_1D5D3A964(*(v105 + v220[10]), *(v107 + v220[10])) & 1) == 0)
          {
            goto LABEL_112;
          }

          v140 = sub_1D5D3A964(*(v105 + v220[11]), *(v107 + v220[11]));
          sub_1D5D2CFE8(v107, type metadata accessor for FormatMetadata);
          sub_1D5D2CFE8(v105, type metadata accessor for FormatMetadata);
          sub_1D5D2CFE8(v190, type metadata accessor for FormatPackage);
        }

        else
        {
          v111 = v203;
          sub_1D6706BB4(v98, v203, sub_1D5C2AB28);
          sub_1D5D57E78(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0]);
          v113 = *(v112 + 48);
          v58 = v93;
          if (swift_getEnumCaseMultiPayload())
          {
            sub_1D5D2CFE8(v111 + v113, type metadata accessor for FormatMetadata);
            (*v191)(v111, v211);
LABEL_105:
            v89 = sub_1D66F4E3C;
            v175 = v217;
            v64 = v92;
            goto LABEL_114;
          }

          v114 = v98;
          v115 = v92;
          v116 = v211;
          v117 = v111;
          (*v184)(v210, v99, v211);
          v118 = v208;
          sub_1D5C8F76C(v111 + v113, v208, type metadata accessor for FormatMetadata);
          v119 = v99 + v113;
          v120 = v207;
          sub_1D5C8F76C(v119, v207, type metadata accessor for FormatMetadata);
          v121 = sub_1D72584CC();
          v122 = *v191;
          (*v191)(v117, v116);
          if ((v121 & 1) == 0)
          {
            sub_1D5D2CFE8(v120, type metadata accessor for FormatMetadata);
            sub_1D5D2CFE8(v118, type metadata accessor for FormatMetadata);
            v122(v210, v211);
            v89 = sub_1D5C2AB28;
            v175 = v217;
            v58 = v93;
            v64 = v115;
            v98 = v114;
            goto LABEL_114;
          }

          v177 = v122;
          v123 = v118[1];
          v124 = v120[1];
          v125 = v118;
          if (v123)
          {
            v21 = v195;
            v58 = v93;
            v64 = v115;
            v43 = v196;
            if (!v124 || (*v118 != *v120 || v123 != v124) && (sub_1D72646CC() & 1) == 0)
            {
              goto LABEL_109;
            }
          }

          else
          {
            v21 = v195;
            v58 = v93;
            v64 = v115;
            v43 = v196;
            if (v124)
            {
              goto LABEL_109;
            }
          }

          if ((sub_1D725BCBC() & 1) == 0 || (sub_1D725BCBC() & 1) == 0)
          {
            goto LABEL_109;
          }

          v141 = v220[7];
          v142 = v125;
          v143 = *(v206 + 48);
          v144 = MEMORY[0x1E69D6B38];
          v145 = v120;
          v146 = v201;
          sub_1D5CDE2EC(v142 + v141, v201, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
          sub_1D5CDE2EC(v145 + v141, v146 + v143, &qword_1EDF45AC0, v144);
          v147 = *v186;
          if ((*v186)(v146, 1, v216) == 1)
          {
            if (v147((v146 + v143), 1, v216) != 1)
            {
              goto LABEL_108;
            }

            sub_1D5D35558(v146, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720], sub_1D5B5BF78);
            v120 = v207;
            v125 = v208;
          }

          else
          {
            v149 = v198;
            sub_1D5CDE2EC(v146, v198, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
            if (v147((v146 + v143), 1, v216) == 1)
            {
              v148.n128_f64[0] = (*v183)(v149, v216);
LABEL_108:
              sub_1D66F4424(v146, &qword_1EDF178B0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], v148);
              v120 = v207;
              v125 = v208;
LABEL_109:
              sub_1D5D2CFE8(v120, type metadata accessor for FormatMetadata);
              sub_1D5D2CFE8(v125, type metadata accessor for FormatMetadata);
              v177(v210, v211);
              goto LABEL_113;
            }

            v150 = v200;
            v151 = v216;
            (*v182)(v200, (v146 + v143), v216);
            sub_1D5B58B84(&qword_1EDF178B8, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B50]);
            v152 = sub_1D7261FBC();
            v153 = *v183;
            v154 = v150;
            v21 = v195;
            (*v183)(v154, v151);
            v153(v149, v151);
            sub_1D5D35558(v146, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720], sub_1D5B5BF78);
            v120 = v207;
            v125 = v208;
            if ((v152 & 1) == 0)
            {
              goto LABEL_109;
            }
          }

          if ((sub_1D5C15FFC(*(v125 + v220[8]), *(v120 + v220[8])) & 1) == 0 || (sub_1D5C15FFC(*(v125 + v220[9]), *(v120 + v220[9])) & 1) == 0 || (sub_1D5D3A964(*(v125 + v220[10]), *(v120 + v220[10])) & 1) == 0)
          {
            goto LABEL_109;
          }

          v92 = v64;
          v140 = sub_1D5D3A964(*(v125 + v220[11]), *(v120 + v220[11]));
          sub_1D5D2CFE8(v120, type metadata accessor for FormatMetadata);
          sub_1D5D2CFE8(v125, type metadata accessor for FormatMetadata);
          v177(v210, v211);
        }

        v89 = sub_1D5C2AB28;
        v82 = v181;
        if ((v140 & 1) == 0)
        {
LABEL_102:
          v175 = v217;
          v98 = v218;
          v64 = v92;
LABEL_114:
          sub_1D5D2CFE8(v98, v89);
          sub_1D5D2CFE8(v219, sub_1D5C2AB28);
          sub_1D5D2CFE8(v175, sub_1D5C2AB28);
          goto LABEL_115;
        }

LABEL_25:
        v90 = v58;
        v91 = v197 + 1;
        sub_1D5D2CFE8(v218, sub_1D5C2AB28);
        sub_1D5D2CFE8(v219, sub_1D5C2AB28);
        v85 = v217;
        v86 = v91;
        v58 = v90;
        sub_1D5D2CFE8(v217, sub_1D5C2AB28);
        v83 = v188;
        v64 = v92;
      }

      while (v187 != v86);
    }

    if ((sub_1D6339F3C(*&v214[v205[6]], *&v213[v205[6]]) & 1) == 0)
    {
      goto LABEL_115;
    }

    if ((sub_1D5BFC390(*&v214[v205[7]], *&v213[v205[7]]) & 1) == 0)
    {
      goto LABEL_115;
    }

    if ((sub_1D633BEDC(*&v214[v205[8]], *&v213[v205[8]]) & 1) == 0)
    {
      goto LABEL_115;
    }

    v155 = v205[9];
    v156 = *&v214[v155];
    v157 = *&v213[v155];
    v158 = *(v156 + 16);
    if (v158 != *(v157 + 16))
    {
      goto LABEL_115;
    }

    if (v158 && v156 != v157)
    {
      v159 = (v157 + 48);
      v160 = (v156 + 48);
      do
      {
        v161 = *v160;
        v162 = *v159;
        if (*(v160 - 2) == *(v159 - 2) && *(v160 - 1) == *(v159 - 1))
        {
          if (v161 != v162)
          {
            goto LABEL_115;
          }
        }

        else if (sub_1D72646CC() & 1) == 0 || ((v161 ^ v162))
        {
          goto LABEL_115;
        }

        v159 += 24;
        v160 += 24;
      }

      while (--v158);
    }

    if ((static FormatMetadata.== infix(_:_:)(&v214[v205[10]], &v213[v205[10]]) & 1) == 0 || (v164 = v205[11], v165 = *&v214[v164], v166 = *&v213[v164], v167 = *(v165 + 16), v167 != *(v166 + 16)))
    {
LABEL_115:
      sub_1D5D2CFE8(v58, type metadata accessor for FormatWorkspaceGroup);
      sub_1D5D2CFE8(v64, type metadata accessor for FormatWorkspaceGroup);
      return;
    }

    if (v167 && v165 != v166)
    {
      break;
    }

LABEL_98:
    sub_1D6343C34(*&v214[v205[12]], *&v213[v205[12]]);
    v174 = v173;
    sub_1D5D2CFE8(v58, type metadata accessor for FormatWorkspaceGroup);
    sub_1D5D2CFE8(v64, type metadata accessor for FormatWorkspaceGroup);
    if (v174)
    {
      v69 = v185 + 1;
      v67 = v180;
      v68 = v179;
      v70 = v178;
      if (v185 + 1 != v194)
      {
        continue;
      }
    }

    return;
  }

  v169 = (v165 + 32);
  v170 = (v166 + 32);
  while (1)
  {
    v171 = *v169++;
    v222 = v171;
    if (!v167)
    {
      break;
    }

    v221 = *v170;

    v172 = static FormatContentSubgroupFilter.== infix(_:_:)(&v222, &v221);

    if ((v172 & 1) == 0)
    {
      goto LABEL_115;
    }

    ++v170;
    if (!--v167)
    {
      goto LABEL_98;
    }
  }

  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
}

void sub_1D6350F34(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    while (1)
    {
      v5 = *v3;
      v10 = *v4;
      v11 = v5;
      v8 = v10;
      v9 = v5;

      swift_retain_n();
      swift_retain_n();

      v6 = static FormatExpression.== infix(_:_:)(&v9, &v8);

      if ((v6 & 1) == 0)
      {
        break;
      }

      v7 = static FormatVideoNodeContent.== infix(_:_:)(&v11 + 1, &v10 + 1);

      if (v7)
      {
        ++v3;
        ++v4;
        if (--v2)
        {
          continue;
        }
      }

      return;
    }
  }
}

BOOL sub_1D63510A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    else
    {
      v4 = 0;
      do
      {
        v5 = *(a1 + v4 + 40);
        v7 = *(a1 + v4 + 48);
        v6 = *(a1 + v4 + 56);
        v8 = *(a1 + v4 + 64);
        v9 = *(a1 + v4 + 72);
        v29[0] = *(a1 + v4 + 32);
        v29[1] = v5;
        v30 = v7;
        v31 = v6;
        v32 = v8;
        v33 = v9;
        v10 = *(a2 + v4 + 40);
        v11 = *(a2 + v4 + 48);
        v12 = *(a2 + v4 + 56);
        v13 = *(a2 + v4 + 64);
        v14 = *(a2 + v4 + 72);
        v24[0] = *(a2 + v4 + 32);
        v24[1] = v10;
        v25 = v11;
        v26 = v12;
        v27 = v13;
        v28 = v14;

        sub_1D5CFCFAC(v7);
        sub_1D5CFCFAC(v6);
        sub_1D5D0A59C(v9);

        sub_1D5CFCFAC(v11);
        sub_1D5CFCFAC(v12);
        sub_1D5D0A59C(v14);
        v15 = _s8NewsFeed30FormatSponsoredBannerNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0(v29, v24);
        v16 = v25;
        v17 = v26;
        v18 = v28;

        sub_1D5C84FF4(v16);
        sub_1D5C84FF4(v17);
        sub_1D5D0A5AC(v18);
        v19 = v30;
        v20 = v31;
        v21 = v33;

        sub_1D5C84FF4(v19);
        sub_1D5C84FF4(v20);
        sub_1D5D0A5AC(v21);
        if (!v15)
        {
          break;
        }

        v4 += 48;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    return 0;
  }

  return v15;
}

BOOL sub_1D635122C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    else
    {
      v4 = 0;
      do
      {
        v5 = *(a1 + v4 + 40);
        v6 = *(a1 + v4 + 48);
        v7 = *(a1 + v4 + 56);
        v8 = *(a1 + v4 + 64);
        v9 = *(a1 + v4 + 65);
        v27[0] = *(a1 + v4 + 32);
        v27[1] = v5;
        v28 = v6;
        v29 = v7;
        v30 = v8;
        v31 = v9;
        v10 = *(a2 + v4 + 40);
        v11 = *(a2 + v4 + 48);
        v12 = *(a2 + v4 + 56);
        v13 = *(a2 + v4 + 65);
        v22[0] = *(a2 + v4 + 32);
        v22[1] = v10;
        v23 = v11;
        v24 = v12;
        v25 = *(a2 + v4 + 64);
        v14 = v25;
        v26 = v13;

        sub_1D5ED34B0(v6, v7, v8);

        sub_1D5ED34B0(v11, v12, v14);
        v15 = _s8NewsFeed26FormatPuzzleEmbedNodeStyleV8SelectorV2eeoiySbAE_AEtFZ_0(v27, v22);
        v16 = v23;
        v17 = v24;
        LOBYTE(v10) = v25;

        sub_1D5ED348C(v16, v17, v10);
        v18 = v28;
        v19 = v29;
        LOBYTE(v10) = v30;

        sub_1D5ED348C(v18, v19, v10);
        if (!v15)
        {
          break;
        }

        v4 += 40;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    return 0;
  }

  return v15;
}

BOOL sub_1D6351398(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    else
    {
      v4 = 0;
      do
      {
        v5 = *(a1 + v4 + 40);
        v6 = *(a1 + v4 + 48);
        v7 = *(a1 + v4 + 56);
        v8 = *(a1 + v4 + 64);
        v9 = *(a1 + v4 + 72);
        v26[0] = *(a1 + v4 + 32);
        v26[1] = v5;
        v26[2] = v6;
        v27 = v7;
        v28 = v8;
        v29 = v9;
        v10 = *(a2 + v4 + 40);
        v11 = *(a2 + v4 + 48);
        v12 = *(a2 + v4 + 56);
        v13 = *(a2 + v4 + 64);
        v14 = *(a2 + v4 + 72);
        v22[0] = *(a2 + v4 + 32);
        v22[1] = v10;
        v22[2] = v11;
        v23 = v12;
        v24 = v13;
        v25 = v14;

        sub_1D5CFCFAC(v7);
        sub_1D5CFCFAC(v8);

        sub_1D5CFCFAC(v12);
        sub_1D5CFCFAC(v13);
        v15 = _s8NewsFeed27FormatProgressViewNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0(v26, v22);
        v16 = v23;
        v17 = v24;

        sub_1D5C84FF4(v16);
        sub_1D5C84FF4(v17);
        v18 = v27;
        v19 = v28;

        sub_1D5C84FF4(v18);
        sub_1D5C84FF4(v19);
        if (!v15)
        {
          break;
        }

        v4 += 48;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    return 0;
  }

  return v15;
}

uint64_t sub_1D635151C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v69 = v2;
  v70 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 112);
    v9 = *(v5 + 80);
    v52 = *(v5 + 96);
    v53 = v8;
    v10 = *(v5 + 112);
    v54 = *(v5 + 128);
    v11 = *(v5 + 48);
    v12 = *(v5 + 16);
    v48 = *(v5 + 32);
    v49 = v11;
    v13 = *(v5 + 48);
    v14 = *(v5 + 80);
    v50 = *(v5 + 64);
    v51 = v14;
    v15 = *(v5 + 16);
    v47[0] = *v5;
    v47[1] = v15;
    v43 = v52;
    v44 = v10;
    v45 = *(v5 + 128);
    v39 = v48;
    v40 = v13;
    v41 = v50;
    v42 = v9;
    v37 = v47[0];
    v38 = v12;
    v16 = *(v6 + 112);
    v17 = *(v6 + 80);
    v61 = *(v6 + 96);
    v62 = v16;
    v18 = *(v6 + 112);
    v63 = *(v6 + 128);
    v19 = *(v6 + 48);
    v20 = *(v6 + 16);
    v57 = *(v6 + 32);
    v58 = v19;
    v21 = *(v6 + 48);
    v22 = *(v6 + 80);
    v59 = *(v6 + 64);
    v60 = v22;
    v23 = *(v6 + 16);
    v56[0] = *v6;
    v56[1] = v23;
    v33 = v61;
    v34 = v18;
    v35 = *(v6 + 128);
    v29 = v57;
    v30 = v21;
    v31 = v59;
    v32 = v17;
    v55 = *(v5 + 144);
    v46 = *(v5 + 144);
    v64 = *(v6 + 144);
    v36 = *(v6 + 144);
    v27 = v56[0];
    v28 = v20;
    sub_1D615EAA0(v47, v26);
    sub_1D615EAA0(v56, v26);
    v24 = _s8NewsFeed25FormatIssueCoverNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0(&v37, &v27);
    v65[6] = v33;
    v65[7] = v34;
    v65[8] = v35;
    v66 = v36;
    v65[2] = v29;
    v65[3] = v30;
    v65[4] = v31;
    v65[5] = v32;
    v65[0] = v27;
    v65[1] = v28;
    sub_1D615EAD8(v65);
    v67[6] = v43;
    v67[7] = v44;
    v67[8] = v45;
    v68 = v46;
    v67[2] = v39;
    v67[3] = v40;
    v67[4] = v41;
    v67[5] = v42;
    v67[0] = v37;
    v67[1] = v38;
    sub_1D615EAD8(v67);
    if ((v24 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 152;
    v5 += 152;
  }

  return 1;
}

uint64_t sub_1D635170C(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *, _BYTE *), uint64_t (*a4)(__int128 *, __int128 *), void (*a5)(_OWORD *))
{
  v7 = *(a1 + 16);
  if (v7 != *(a2 + 16))
  {
    return 0;
  }

  if (!v7 || a1 == a2)
  {
    return 1;
  }

  v85 = v5;
  v86 = v6;
  v11 = (a1 + 32);
  v12 = (a2 + 32);
  for (i = v7 - 1; ; --i)
  {
    v14 = v11[7];
    v15 = v11[9];
    v68 = v11[8];
    v69 = v15;
    v16 = v11[3];
    v17 = v11[5];
    v64 = v11[4];
    v65 = v17;
    v18 = v11[5];
    v19 = v11[7];
    v66 = v11[6];
    v67 = v19;
    v20 = v11[1];
    v61[0] = *v11;
    v61[1] = v20;
    v21 = v11[3];
    v23 = *v11;
    v22 = v11[1];
    v62 = v11[2];
    v63 = v21;
    v24 = v11[9];
    v58 = v68;
    v59 = v24;
    v54 = v64;
    v55 = v18;
    v56 = v66;
    v57 = v14;
    v50 = v23;
    v51 = v22;
    v52 = v62;
    v53 = v16;
    v25 = v12[7];
    v26 = v12[9];
    v78 = v12[8];
    v79 = v26;
    v27 = v12[3];
    v28 = v12[5];
    v74 = v12[4];
    v75 = v28;
    v29 = v12[5];
    v30 = v12[7];
    v76 = v12[6];
    v77 = v30;
    v31 = v12[1];
    v71[0] = *v12;
    v71[1] = v31;
    v32 = v12[3];
    v34 = *v12;
    v33 = v12[1];
    v72 = v12[2];
    v73 = v32;
    v35 = v12[9];
    v47 = v78;
    v48 = v35;
    v43 = v74;
    v44 = v29;
    v45 = v76;
    v46 = v25;
    v39 = v34;
    v40 = v33;
    v70 = *(v11 + 160);
    v60 = *(v11 + 160);
    v80 = *(v12 + 160);
    v49 = *(v12 + 160);
    v41 = v72;
    v42 = v27;
    a3(v61, v38);
    a3(v71, v38);
    v36 = a4(&v50, &v39);
    v81[8] = v47;
    v81[9] = v48;
    v82 = v49;
    v81[4] = v43;
    v81[5] = v44;
    v81[6] = v45;
    v81[7] = v46;
    v81[0] = v39;
    v81[1] = v40;
    v81[2] = v41;
    v81[3] = v42;
    a5(v81);
    v83[8] = v58;
    v83[9] = v59;
    v84 = v60;
    v83[4] = v54;
    v83[5] = v55;
    v83[6] = v56;
    v83[7] = v57;
    v83[0] = v50;
    v83[1] = v51;
    v83[2] = v52;
    v83[3] = v53;
    a5(v83);
    if ((v36 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v12 = (v12 + 168);
    v11 = (v11 + 168);
  }

  return 1;
}

uint64_t sub_1D6351934(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v87 = v2;
  v88 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[9];
    v9 = v5[11];
    v70 = v5[10];
    v71 = v9;
    v10 = v5[11];
    v72 = v5[12];
    v11 = v5[5];
    v12 = v5[7];
    v66 = v5[6];
    v67 = v12;
    v13 = v5[7];
    v14 = v5[9];
    v68 = v5[8];
    v69 = v14;
    v15 = v5[1];
    v16 = v5[3];
    v62 = v5[2];
    v63 = v16;
    v17 = v5[3];
    v18 = v5[5];
    v64 = v5[4];
    v65 = v18;
    v19 = v5[1];
    v61[0] = *v5;
    v61[1] = v19;
    v58 = v70;
    v59 = v10;
    v60 = v5[12];
    v54 = v66;
    v55 = v13;
    v56 = v68;
    v57 = v8;
    v50 = v62;
    v51 = v17;
    v52 = v64;
    v53 = v11;
    v48 = v61[0];
    v49 = v15;
    v20 = v6[9];
    v21 = v6[11];
    v82 = v6[10];
    v83 = v21;
    v22 = v6[11];
    v84 = v6[12];
    v23 = v6[5];
    v24 = v6[7];
    v78 = v6[6];
    v79 = v24;
    v25 = v6[7];
    v26 = v6[9];
    v80 = v6[8];
    v81 = v26;
    v27 = v6[1];
    v28 = v6[3];
    v74 = v6[2];
    v75 = v28;
    v29 = v6[3];
    v30 = v6[5];
    v76 = v6[4];
    v77 = v30;
    v31 = v6[1];
    v73[0] = *v6;
    v73[1] = v31;
    v45 = v82;
    v46 = v22;
    v47 = v6[12];
    v41 = v78;
    v42 = v25;
    v43 = v80;
    v44 = v20;
    v37 = v74;
    v38 = v29;
    v39 = v76;
    v40 = v23;
    v35 = v73[0];
    v36 = v27;
    sub_1D5D0B3B8(v61, v34);
    sub_1D5D0B3B8(v73, v34);
    v32 = _s8NewsFeed27FormatLayeredMediaNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0(&v48, &v35);
    v85[10] = v45;
    v85[11] = v46;
    v85[12] = v47;
    v85[6] = v41;
    v85[7] = v42;
    v85[9] = v44;
    v85[8] = v43;
    v85[2] = v37;
    v85[3] = v38;
    v85[5] = v40;
    v85[4] = v39;
    v85[1] = v36;
    v85[0] = v35;
    sub_1D5D0B670(v85);
    v86[10] = v58;
    v86[11] = v59;
    v86[12] = v60;
    v86[6] = v54;
    v86[7] = v55;
    v86[8] = v56;
    v86[9] = v57;
    v86[2] = v50;
    v86[3] = v51;
    v86[4] = v52;
    v86[5] = v53;
    v86[0] = v48;
    v86[1] = v49;
    sub_1D5D0B670(v86);
    if ((v32 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 13;
    v5 += 13;
  }

  return 1;
}

BOOL sub_1D6351B68(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    else
    {
      v5 = 0;
      do
      {
        v6 = *(a1 + v5 + 40);
        v7 = *(a1 + v5 + 48);
        v8 = *(a1 + v5 + 56);
        v9 = *(a1 + v5 + 66);
        v10 = *(a1 + v5 + 64);
        v11 = *(a1 + v5 + 67);
        v31[0] = *(a1 + v5 + 32);
        v31[1] = v6;
        v32 = v7;
        v33 = v8;
        v35 = v9;
        v34 = v10;
        v36 = v11;
        v12 = *(a2 + v5 + 40);
        v13 = v10 | (v9 << 16);
        LOBYTE(v9) = *(a2 + v5 + 48);
        v14 = *(a2 + v5 + 56);
        v15 = *(a2 + v5 + 66);
        v16 = *(a2 + v5 + 64);
        v17 = v16 | (v15 << 16);
        v18 = *(a2 + v5 + 67);
        v25[0] = *(a2 + v5 + 32);
        v25[1] = v12;
        v26 = v9;
        v27 = v14;
        v29 = v15;
        v28 = v16;
        v30 = v18;

        sub_1D62B7DCC(v8, v13);

        sub_1D62B7DCC(v14, v17);
        v19 = _s8NewsFeed28FormatSupplementaryNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0(v31, v25);
        v20 = v27;
        v21 = v28 | (v29 << 16);

        sub_1D62B6F70(v20, v21);
        v22 = v33;
        v23 = v34 | (v35 << 16);

        sub_1D62B6F70(v22, v23);
        if (!v19)
        {
          break;
        }

        v5 += 40;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    return 0;
  }

  return v19;
}

void sub_1D6351CF4(uint64_t a1, uint64_t a2)
{
  v81 = type metadata accessor for FormatVersionRequirement(0);
  v4 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81, v5);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5BF78(0, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v66 - v10;
  sub_1D66F4EB8(0, &qword_1EDF0CE38, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12, v14);
  v85 = &v66 - v15;
  v16 = type metadata accessor for FormatOption(0);
  v82 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v86 = (&v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19, v20);
  v87 = (&v66 - v22);
  v23 = *(a2 + 16);
  v84 = *(a1 + 16);
  if (v84 == v23 && v84 && a1 != a2)
  {
    v76 = v21;
    v77 = v13;
    v72 = v7;
    v73 = v11;
    v83 = 0;
    v24 = a1 + 32;
    v25 = a2 + 32;
    v26 = &qword_1EDF44860;
    v80 = (v4 + 48);
    while (v83 != v84)
    {
      v27 = (v24 + 32 * v83);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v27 + 16);
      v31 = v27[3];
      v32 = v25 + 32 * v83;
      v33 = *(v32 + 8);
      v34 = *(v32 + 16);
      v35 = *(v32 + 24);
      if (v28 != *v32 || v29 != v33)
      {
        v37 = v31;
        v38 = v26;
        v39 = v29;
        v40 = v24;
        v41 = sub_1D72646CC();
        v24 = v40;
        v29 = v39;
        v26 = v38;
        v31 = v37;
        if ((v41 & 1) == 0)
        {
          return;
        }
      }

      if (v30 == 2)
      {
        v42 = v80;
        if (v34 != 2)
        {
          return;
        }
      }

      else
      {
        if (v34 == 2)
        {
          return;
        }

        v43 = v34 ^ v30;
        v42 = v80;
        if (v43)
        {
          return;
        }
      }

      if (v31)
      {
        if (!v35)
        {
          return;
        }

        v44 = *(v31 + 16);
        if (v44 != *(v35 + 16))
        {
          return;
        }

        if (v44 && v31 != v35)
        {
          v67 = v25;
          v68 = v24;
          v69 = v29;
          v45 = (*(v82 + 80) + 32) & ~*(v82 + 80);
          v78 = v35 + v45;
          v79 = v31 + v45;

          v70 = v33;

          swift_bridgeObjectRetain_n();
          v46 = 0;
          v74 = v44;
          v75 = v35;
          v71 = v31;
          while (v46 < *(v31 + 16))
          {
            v47 = *(v82 + 72) * v46;
            sub_1D6706BB4(v79 + v47, v87, type metadata accessor for FormatOption);
            if (v46 >= *(v35 + 16))
            {
              goto LABEL_53;
            }

            v48 = v78 + v47;
            v49 = v86;
            sub_1D6706BB4(v48, v86, type metadata accessor for FormatOption);
            if ((*v87 != *v49 || v87[1] != v49[1]) && (sub_1D72646CC() & 1) == 0)
            {
              goto LABEL_50;
            }

            v50 = v87[2];
            v88 = v86[2];
            v89 = v50;

            LOBYTE(v50) = static FormatOptionValue.== infix(_:_:)(&v89, &v88);

            if ((v50 & 1) == 0)
            {
              goto LABEL_50;
            }

            v51 = v87[3];
            v52 = v86[3];
            if (v51 == 1)
            {
              if (v52 != 1)
              {
                goto LABEL_50;
              }
            }

            else
            {
              if (v52 == 1)
              {
                goto LABEL_50;
              }

              if (v51)
              {
                if (!v52)
                {
                  goto LABEL_50;
                }

                v53 = sub_1D5BFC390(v51, v52);
                sub_1D66A5FF8(v52);
                if ((v53 & 1) == 0)
                {
                  goto LABEL_50;
                }
              }

              else if (v52)
              {
                goto LABEL_50;
              }
            }

            v54 = *(v76 + 28);
            v55 = *(v77 + 48);
            v56 = v85;
            sub_1D5CDE2EC(v87 + v54, v85, v26, type metadata accessor for FormatVersionRequirement);
            sub_1D5CDE2EC(v86 + v54, v56 + v55, v26, type metadata accessor for FormatVersionRequirement);
            v57 = *v42;
            v58 = v81;
            if ((*v42)(v56, 1, v81) == 1)
            {
              if (v57(v85 + v55, 1, v58) != 1)
              {
                goto LABEL_49;
              }

              sub_1D5D35558(v85, v26, type metadata accessor for FormatVersionRequirement, MEMORY[0x1E69E6720], sub_1D5B5BF78);
              v60 = v74;
              v35 = v75;
            }

            else
            {
              v61 = v85;
              v62 = v73;
              sub_1D5CDE2EC(v85, v73, v26, type metadata accessor for FormatVersionRequirement);
              if (v57(v61 + v55, 1, v58) == 1)
              {
                sub_1D5D2CFE8(v62, type metadata accessor for FormatVersionRequirement);
LABEL_49:
                sub_1D66F4424(v85, &qword_1EDF0CE38, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement, v59);
LABEL_50:
                sub_1D5D2CFE8(v86, type metadata accessor for FormatOption);
                sub_1D5D2CFE8(v87, type metadata accessor for FormatOption);

                swift_bridgeObjectRelease_n();
                return;
              }

              v63 = v85;
              v64 = v72;
              sub_1D5C8F76C(v85 + v55, v72, type metadata accessor for FormatVersionRequirement);
              v65 = sub_1D6024840(v62, v64);
              sub_1D5D2CFE8(v64, type metadata accessor for FormatVersionRequirement);
              sub_1D5D2CFE8(v62, type metadata accessor for FormatVersionRequirement);
              sub_1D5D35558(v63, v26, type metadata accessor for FormatVersionRequirement, MEMORY[0x1E69E6720], sub_1D5B5BF78);
              v60 = v74;
              v35 = v75;
              v42 = v80;
              v31 = v71;
              if ((v65 & 1) == 0)
              {
                goto LABEL_50;
              }
            }

            ++v46;
            sub_1D5D2CFE8(v86, type metadata accessor for FormatOption);
            sub_1D5D2CFE8(v87, type metadata accessor for FormatOption);
            if (v60 == v46)
            {

              swift_bridgeObjectRelease_n();
              v24 = v68;
              v25 = v67;
              goto LABEL_7;
            }
          }

          __break(1u);
LABEL_53:
          __break(1u);
          break;
        }
      }

      else if (v35)
      {
        return;
      }

LABEL_7:
      if (++v83 == v84)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D6352518(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v31 = v2;
  v32 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    v23[0] = *v5;
    v23[1] = v8;
    v24[0] = v5[2];
    v9 = v24[0];
    *(v24 + 11) = *(v5 + 43);
    v20 = v23[0];
    v21 = v8;
    v22[0] = v9;
    *(v22 + 11) = *(v24 + 11);
    v10 = *v6;
    v11 = v6[1];
    v12 = v6[2];
    *(v26 + 11) = *(v6 + 43);
    v13 = *(v26 + 11);
    v25[1] = v11;
    v26[0] = v12;
    v25[0] = v10;
    v17 = v10;
    v18 = v11;
    v19[0] = v12;
    *(v19 + 11) = v13;
    sub_1D619392C(v23, v16);
    sub_1D619392C(v25, v16);
    v14 = _s8NewsFeed23FormatWebEmbedNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0(&v20, &v17);
    v27[0] = v17;
    v27[1] = v18;
    v28[0] = v19[0];
    *(v28 + 11) = *(v19 + 11);
    sub_1D6193964(v27);
    v29[0] = v20;
    v29[1] = v21;
    v30[0] = v22[0];
    *(v30 + 11) = *(v22 + 11);
    sub_1D6193964(v29);
    if ((v14 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v5 += 4;
    v6 += 4;
  }

  return 1;
}

uint64_t sub_1D6352660(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v53 = v2;
  v54 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  v7 = v4 - 1;
  while (1)
  {
    v8 = v5[1];
    v46 = *v5;
    v47 = v8;
    v9 = v5[3];
    v48 = v5[2];
    v49 = v9;
    v10 = v46;
    v11 = *(&v47 + 1);
    v12 = v47;
    v13 = v6[3];
    v51 = v6[2];
    v52 = v13;
    v14 = v6[1];
    v50[0] = *v6;
    v50[1] = v14;
    v15 = v50[0];
    v16 = *(&v14 + 1);
    v17 = v14;
    v37 = v5;
    v38 = v7;
    if ((BYTE8(v47) & 4) != 0)
    {
      if ((BYTE8(v14) & 4) == 0)
      {
LABEL_28:
        sub_1D62B7098(v46, *(&v46 + 1), v47, SBYTE8(v47));
        sub_1D62B7098(v15, *(&v15 + 1), v17, v16);
        sub_1D62B7130(v10, *(&v10 + 1), v12, v11);
        sub_1D62B7130(v15, *(&v15 + 1), v17, v16);
        return 0;
      }

      *&v39 = v46;
      v45 = *&v50[0];
      sub_1D62B7098(*&v50[0], *(&v50[0] + 1), v14, SBYTE8(v14));
      sub_1D62B7098(v10, *(&v10 + 1), v12, v11);
      sub_1D62B7098(v10, *(&v10 + 1), v12, v11);
      sub_1D62B7098(v15, *(&v15 + 1), v17, v16);
      sub_1D5CFBAA8(&v46, &v42);
      sub_1D5CFBAA8(v50, &v42);
      v21 = &v39;
      v22 = &v45;
    }

    else
    {
      if ((BYTE8(v14) & 4) != 0)
      {
        goto LABEL_28;
      }

      sub_1D62B7098(*&v50[0], *(&v50[0] + 1), v14, SBYTE8(v14));
      sub_1D62B7098(v10, *(&v10 + 1), v12, v11);
      sub_1D62B7098(v10, *(&v10 + 1), v12, v11);
      sub_1D62B7098(v15, *(&v15 + 1), v17, v16);
      sub_1D5CFBAA8(&v46, &v42);
      sub_1D5CFBAA8(v50, &v42);
      if ((sub_1D6353004(v10, v15) & 1) == 0 || (v18 = *(*(&v10 + 1) + 32), v42 = *(*(&v10 + 1) + 16), v43 = v18, v44[0] = *(*(&v10 + 1) + 48), *(v44 + 15) = *(*(&v10 + 1) + 63), v19 = *(*(&v15 + 1) + 32), v39 = *(*(&v15 + 1) + 16), v40 = v19, v41[0] = *(*(&v15 + 1) + 48), *(v41 + 15) = *(*(&v15 + 1) + 63), (static FormatCommandBinding.== infix(_:_:)(&v42, &v39) & 1) == 0) || (sub_1D6359F3C(v12, v17, static FormatTextContent.== infix(_:_:)), (v20 & 1) == 0))
      {
        sub_1D62B7130(v10, *(&v10 + 1), v12, v11);
        sub_1D62B7130(v15, *(&v15 + 1), v17, v16);
        sub_1D62B7130(v15, *(&v15 + 1), v17, v16);
        sub_1D62B7130(v10, *(&v10 + 1), v12, v11);
LABEL_32:
        sub_1D5D08954(v50);
        sub_1D5D08954(&v46);
        return 0;
      }

      *&v42 = v11;
      *&v39 = v16;
      v21 = &v42;
      v22 = &v39;
    }

    v23 = static FormatTextContent.== infix(_:_:)(v21, v22);
    sub_1D62B7130(v10, *(&v10 + 1), v12, v11);
    sub_1D62B7130(v15, *(&v15 + 1), v17, v16);
    sub_1D62B7130(v15, *(&v15 + 1), v17, v16);
    sub_1D62B7130(v10, *(&v10 + 1), v12, v11);
    if ((v23 & 1) == 0)
    {
      goto LABEL_32;
    }

    v24 = v48;
    v25 = v49;
    v26 = v51;
    v27 = v52;
    if ((v49 & 0x2000000000000000) == 0)
    {
      if ((v52 & 0x2000000000000000) != 0)
      {
        goto LABEL_29;
      }

      v28 = *(v48 + 32);
      v42 = *(v48 + 16);
      v43 = v28;
      v44[0] = *(v48 + 48);
      *(v44 + 15) = *(v48 + 63);
      v29 = *(v51 + 32);
      v39 = *(v51 + 16);
      v40 = v29;
      v41[0] = *(v51 + 48);
      *(v41 + 15) = *(v51 + 63);
      sub_1D62B6FC0(v51, *(&v51 + 1), v52);
      sub_1D62B6FC0(v24, *(&v24 + 1), v25);
      sub_1D62B6FC0(v24, *(&v24 + 1), v25);
      sub_1D62B6FC0(v26, *(&v26 + 1), v27);
      if (static FormatCommandBinding.== infix(_:_:)(&v42, &v39))
      {
        sub_1D6352BBC(*(&v24 + 1), *(&v26 + 1));
        if (v30)
        {
          *&v42 = v25;
          *&v39 = v27;
          goto LABEL_21;
        }
      }

      sub_1D62B703C(v24, *(&v24 + 1), v25);
      sub_1D62B703C(v26, *(&v26 + 1), v27);
      sub_1D62B703C(v26, *(&v26 + 1), v27);
      v35 = *(&v24 + 1);
      v34 = v24;
      v36 = v25;
      goto LABEL_31;
    }

    if ((v52 & 0x2000000000000000) == 0)
    {
LABEL_29:
      sub_1D62B6FC0(v48, *(&v48 + 1), v49);
      sub_1D62B6FC0(v26, *(&v26 + 1), v27);
      sub_1D62B703C(v24, *(&v24 + 1), v25);
      v35 = *(&v26 + 1);
      v34 = v26;
      v36 = v27;
LABEL_31:
      sub_1D62B703C(v34, v35, v36);
      goto LABEL_32;
    }

    *&v42 = v48;
    *&v39 = v51;
    sub_1D62B6FC0(v51, *(&v51 + 1), v52);
    sub_1D62B6FC0(v24, *(&v24 + 1), v25);
    sub_1D62B6FC0(v24, *(&v24 + 1), v25);
    sub_1D62B6FC0(v26, *(&v26 + 1), v27);
LABEL_21:
    v31 = static FormatSyncImageContent.== infix(_:_:)(&v42, &v39);
    sub_1D62B703C(v24, *(&v24 + 1), v25);
    sub_1D62B703C(v26, *(&v26 + 1), v27);
    sub_1D62B703C(v26, *(&v26 + 1), v27);
    sub_1D62B703C(v24, *(&v24 + 1), v25);
    if ((v31 & 1) == 0)
    {
      goto LABEL_32;
    }

    v32 = sub_1D6FB6D20(*(&v49 + 1), *(&v52 + 1));
    sub_1D5D08954(v50);
    sub_1D5D08954(&v46);
    if ((v32 & 1) == 0)
    {
      return 0;
    }

    if (!v38)
    {
      return 1;
    }

    v7 = v38 - 1;
    v6 += 4;
    v5 = v37 + 4;
  }
}

void sub_1D6352BBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16) || !v2 || a1 == a2)
  {
    return;
  }

  v3 = 0;
  while (1)
  {
    v5 = *(a1 + v3 + 32);
    v4 = *(a1 + v3 + 40);
    v6 = *(a1 + v3 + 48);
    v7 = *(a1 + v3 + 56);
    v9 = *(a2 + v3 + 32);
    v8 = *(a2 + v3 + 40);
    v10 = *(a2 + v3 + 48);
    v11 = *(a2 + v3 + 56);
    v23[1] = v5;
    v23[2] = v4;
    v24 = v6;
    v25 = v7;
    v23[0] = v11;
    v22 = v10;
    if (v6)
    {
      if (v6 == 1)
      {
        if (v10 == 1)
        {
          sub_1D5D03180(v5, v4, 1);

          sub_1D5D03180(v9, v8, 1);

          sub_1D5D07BA8(v5, v4, 1);
          sub_1D5D07BA8(v9, v8, 1);
          if ((v9 ^ v5))
          {
            sub_1D5D07BA8(v9, v8, 1);

            v17 = v5;
            v18 = v4;
            v19 = 1;
            goto LABEL_28;
          }

          goto LABEL_18;
        }

        sub_1D5D03180(v9, v8, v10);
        v14 = v5;
        v15 = v4;
        v16 = 1;
LABEL_26:
        sub_1D5D07BA8(v14, v15, v16);
        sub_1D5D07BA8(v9, v8, v10);
        return;
      }

      if (v10 != 2)
      {
        sub_1D5D03180(v9, v8, v10);
        v14 = v5;
        v15 = v4;
        v16 = 2;
        goto LABEL_26;
      }

      sub_1D5D03180(v5, v4, 2);

      sub_1D5D03180(v9, v8, 2);

      sub_1D5D07BA8(v5, v4, 2);
      sub_1D5D07BA8(v9, v8, 2);
      if (v5 != v9)
      {
        sub_1D5D07BA8(v9, v8, 2);

        v17 = v5;
        v18 = v4;
        v19 = 2;
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    if (v10)
    {
      sub_1D5D03180(v9, v8, v10);
      sub_1D5D03180(v5, v4, 0);
      v14 = v5;
      v15 = v4;
      v16 = 0;
      goto LABEL_26;
    }

    if (v5 == v9 && v4 == v8)
    {
      sub_1D5D03180(v5, v4, 0);

      sub_1D5D03180(v5, v4, 0);

      sub_1D5D03180(v5, v4, 0);
      sub_1D5D03180(v5, v4, 0);
      sub_1D5D07BA8(v5, v4, 0);
      sub_1D5D07BA8(v5, v4, 0);
      goto LABEL_18;
    }

    v12 = sub_1D72646CC();
    sub_1D5D03180(v5, v4, 0);

    sub_1D5D03180(v9, v8, 0);

    sub_1D5D03180(v9, v8, 0);
    sub_1D5D03180(v5, v4, 0);
    sub_1D5D07BA8(v5, v4, 0);
    sub_1D5D07BA8(v9, v8, 0);
    if ((v12 & 1) == 0)
    {
      break;
    }

LABEL_18:
    v13 = static FormatSyncImageContent.== infix(_:_:)(&v25, v23);
    sub_1D5D07BA8(v9, v8, v22);

    sub_1D5D07BA8(v5, v4, v6);

    if (v13)
    {
      v3 += 32;
      if (--v2)
      {
        continue;
      }
    }

    return;
  }

  sub_1D5D07BA8(v9, v8, 0);

  v17 = v5;
  v18 = v4;
  v19 = 0;
LABEL_28:
  sub_1D5D07BA8(v17, v18, v19);
}

uint64_t sub_1D6353004(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
LABEL_13:
    v16 = 0;
    return v16 & 1;
  }

  if (v2 && a1 != a2)
  {
    v3 = v2 - 1;
    v4 = (a1 + 56);
    v5 = (a2 + 56);
    while (1)
    {
      v18 = v3;
      v6 = *(v4 - 1);
      v7 = *v4;
      v8 = *(v4 - 2);
      v10 = *(v5 - 3);
      v9 = *(v5 - 2);
      v11 = *(v5 - 1);
      v12 = *v5;
      *&v21[0] = *(v4 - 3);
      *&v19[0] = v10;

      swift_retain_n();
      swift_retain_n();

      LOBYTE(v10) = static FormatExpression.== infix(_:_:)(v21, v19);

      if ((v10 & 1) == 0)
      {
        break;
      }

      v13 = *(v8 + 32);
      v21[0] = *(v8 + 16);
      v21[1] = v13;
      v22[0] = *(v8 + 48);
      *(v22 + 15) = *(v8 + 63);
      v14 = *(v9 + 32);
      v19[0] = *(v9 + 16);
      v19[1] = v14;
      v20[0] = *(v9 + 48);
      *(v20 + 15) = *(v9 + 63);
      if ((static FormatCommandBinding.== infix(_:_:)(v21, v19) & 1) == 0)
      {
        break;
      }

      sub_1D6359F3C(v6, v11, static FormatTextContent.== infix(_:_:));
      if ((v15 & 1) == 0)
      {
        break;
      }

      *&v21[0] = v7;
      *&v19[0] = v12;
      v16 = static FormatTextContent.== infix(_:_:)(v21, v19);

      if (v16)
      {
        v3 = v18 - 1;
        v4 += 4;
        v5 += 4;
        if (v18)
        {
          continue;
        }
      }

      return v16 & 1;
    }

    goto LABEL_13;
  }

  v16 = 1;
  return v16 & 1;
}

uint64_t sub_1D635324C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v83 = v2;
  v84 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[9];
    v9 = v5[7];
    v64 = v5[8];
    v65 = v8;
    v10 = v5[9];
    v66 = v5[10];
    v11 = v5[5];
    v12 = v5[3];
    v60 = v5[4];
    v61 = v11;
    v13 = v5[5];
    v14 = v5[7];
    v62 = v5[6];
    v63 = v14;
    v15 = v5[1];
    v57[0] = *v5;
    v57[1] = v15;
    v16 = v5[3];
    v18 = *v5;
    v17 = v5[1];
    v58 = v5[2];
    v59 = v16;
    v53 = v64;
    v54 = v10;
    v55 = v5[10];
    v49 = v60;
    v50 = v13;
    v51 = v62;
    v52 = v9;
    v45 = v18;
    v46 = v17;
    v47 = v58;
    v48 = v12;
    v19 = v6[9];
    v20 = v6[7];
    v75 = v6[8];
    v76 = v19;
    v21 = v6[9];
    v77 = v6[10];
    v22 = v6[5];
    v23 = v6[3];
    v71 = v6[4];
    v72 = v22;
    v24 = v6[5];
    v25 = v6[7];
    v73 = v6[6];
    v74 = v25;
    v26 = v6[1];
    v68[0] = *v6;
    v68[1] = v26;
    v27 = v6[3];
    v29 = *v6;
    v28 = v6[1];
    v69 = v6[2];
    v70 = v27;
    v41 = v75;
    v42 = v21;
    v43 = v6[10];
    v37 = v71;
    v38 = v24;
    v39 = v73;
    v40 = v20;
    v33 = v29;
    v34 = v28;
    v67 = *(v5 + 176);
    v56 = *(v5 + 176);
    v78 = *(v6 + 176);
    v44 = *(v6 + 176);
    v35 = v69;
    v36 = v23;
    sub_1D62B7804(v57, v32);
    sub_1D62B7804(v68, v32);
    v30 = _s8NewsFeed24FormatGroupNodeMaskStyleC8SelectorV2eeoiySbAE_AEtFZ_0(&v45, &v33);
    v79[8] = v41;
    v79[9] = v42;
    v79[10] = v43;
    v80 = v44;
    v79[4] = v37;
    v79[5] = v38;
    v79[6] = v39;
    v79[7] = v40;
    v79[0] = v33;
    v79[1] = v34;
    v79[2] = v35;
    v79[3] = v36;
    sub_1D62B7860(v79);
    v81[8] = v53;
    v81[9] = v54;
    v81[10] = v55;
    v82 = v56;
    v81[5] = v50;
    v81[6] = v51;
    v81[7] = v52;
    v81[0] = v45;
    v81[1] = v46;
    v81[2] = v47;
    v81[3] = v48;
    v81[4] = v49;
    sub_1D62B7860(v81);
    if ((v30 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 = (v6 + 184);
    v5 = (v5 + 184);
  }

  return 1;
}

uint64_t sub_1D6353478(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v17 = v2;
  v18 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    memcpy(__dst, v5, 0x13AuLL);
    memcpy(v12, v5, 0x13AuLL);
    memcpy(v14, v6, 0x13AuLL);
    memcpy(__src, v6, 0x13AuLL);
    sub_1D60101A0(__dst, v10);
    sub_1D60101A0(v14, v10);
    v8 = _s8NewsFeed20FormatGroupNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0(v12, __src);
    memcpy(v15, __src, 0x13AuLL);
    sub_1D60101D8(v15);
    memcpy(v16, v12, 0x13AuLL);
    sub_1D60101D8(v16);
    if (!v8)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 320;
    v5 += 320;
  }

  return 1;
}

uint64_t sub_1D63535A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v93 = v2;
  v94 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 176);
    v9 = *(v5 + 144);
    v72 = *(v5 + 160);
    v73 = v8;
    v10 = *(v5 + 176);
    v74 = *(v5 + 192);
    v11 = *(v5 + 112);
    v12 = *(v5 + 80);
    v68 = *(v5 + 96);
    v69 = v11;
    v13 = *(v5 + 112);
    v14 = *(v5 + 144);
    v70 = *(v5 + 128);
    v71 = v14;
    v15 = *(v5 + 48);
    v16 = *(v5 + 16);
    v64 = *(v5 + 32);
    v65 = v15;
    v17 = *(v5 + 48);
    v18 = *(v5 + 80);
    v66 = *(v5 + 64);
    v67 = v18;
    v19 = *(v5 + 16);
    v63[0] = *v5;
    v63[1] = v19;
    v59 = v72;
    v60 = v10;
    v61 = *(v5 + 192);
    v55 = v68;
    v56 = v13;
    v57 = v70;
    v58 = v9;
    v51 = v64;
    v52 = v17;
    v53 = v66;
    v54 = v12;
    v49 = v63[0];
    v50 = v16;
    v20 = *(v6 + 176);
    v21 = *(v6 + 144);
    v85 = *(v6 + 160);
    v86 = v20;
    v22 = *(v6 + 176);
    v87 = *(v6 + 192);
    v23 = *(v6 + 112);
    v24 = *(v6 + 80);
    v81 = *(v6 + 96);
    v82 = v23;
    v25 = *(v6 + 112);
    v26 = *(v6 + 144);
    v83 = *(v6 + 128);
    v84 = v26;
    v27 = *(v6 + 48);
    v28 = *(v6 + 16);
    v77 = *(v6 + 32);
    v78 = v27;
    v29 = *(v6 + 48);
    v30 = *(v6 + 80);
    v79 = *(v6 + 64);
    v80 = v30;
    v31 = *(v6 + 16);
    v76[0] = *v6;
    v76[1] = v31;
    v45 = v85;
    v46 = v22;
    v47 = *(v6 + 192);
    v41 = v81;
    v42 = v25;
    v43 = v83;
    v44 = v21;
    v37 = v77;
    v38 = v29;
    v39 = v79;
    v40 = v24;
    v75 = *(v5 + 208);
    v62 = *(v5 + 208);
    v88 = *(v6 + 208);
    v48 = *(v6 + 208);
    v35 = v76[0];
    v36 = v28;
    sub_1D5D0B0E4(v63, v34);
    sub_1D5D0B0E4(v76, v34);
    v32 = _s8NewsFeed20FormatImageNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0(&v49, &v35);
    v89[10] = v45;
    v89[11] = v46;
    v89[12] = v47;
    v90 = v48;
    v89[6] = v41;
    v89[7] = v42;
    v89[8] = v43;
    v89[9] = v44;
    v89[2] = v37;
    v89[3] = v38;
    v89[4] = v39;
    v89[5] = v40;
    v89[0] = v35;
    v89[1] = v36;
    sub_1D5D0B1AC(v89);
    v91[10] = v59;
    v91[11] = v60;
    v91[12] = v61;
    v91[6] = v55;
    v91[7] = v56;
    v91[8] = v57;
    v91[9] = v58;
    v91[2] = v51;
    v91[3] = v52;
    v91[4] = v53;
    v91[5] = v54;
    v91[0] = v49;
    v92 = v62;
    v91[1] = v50;
    sub_1D5D0B1AC(v91);
    if (!v32)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 216;
    v5 += 216;
  }

  return 1;
}

uint64_t sub_1D6353814(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v65 = v2;
  v66 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[7];
    v9 = v5[5];
    v50 = v5[6];
    v51 = v8;
    v10 = v5[7];
    v52[0] = v5[8];
    *(v52 + 9) = *(v5 + 137);
    v11 = v5[3];
    v12 = v5[1];
    v46 = v5[2];
    v47 = v11;
    v13 = v5[3];
    v14 = v5[5];
    v48 = v5[4];
    v49 = v14;
    v15 = v5[1];
    v45[0] = *v5;
    v45[1] = v15;
    v42 = v50;
    v43 = v10;
    v44[0] = v5[8];
    *(v44 + 9) = *(v5 + 137);
    v38 = v46;
    v39 = v13;
    v40 = v48;
    v41 = v9;
    v36 = v45[0];
    v37 = v12;
    v16 = v6[7];
    v17 = v6[5];
    v58 = v6[6];
    v59 = v16;
    v18 = v6[7];
    v60[0] = v6[8];
    *(v60 + 9) = *(v6 + 137);
    v19 = v6[3];
    v20 = v6[1];
    v54 = v6[2];
    v55 = v19;
    v21 = v6[3];
    v22 = v6[5];
    v56 = v6[4];
    v57 = v22;
    v23 = v6[1];
    v53[0] = *v6;
    v53[1] = v23;
    v33 = v58;
    v34 = v18;
    v35[0] = v6[8];
    *(v35 + 9) = *(v6 + 137);
    v29 = v54;
    v30 = v21;
    v31 = v56;
    v32 = v17;
    v27 = v53[0];
    v28 = v20;
    sub_1D5D044D4(v45, v26);
    sub_1D5D044D4(v53, v26);
    v24 = _s8NewsFeed19FormatViewNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0(&v36, &v27);
    v61[6] = v33;
    v61[7] = v34;
    v62[0] = v35[0];
    *(v62 + 9) = *(v35 + 9);
    v61[2] = v29;
    v61[3] = v30;
    v61[4] = v31;
    v61[5] = v32;
    v61[0] = v27;
    v61[1] = v28;
    sub_1D5D04BEC(v61);
    v63[6] = v42;
    v63[7] = v43;
    v64[0] = v44[0];
    *(v64 + 9) = *(v44 + 9);
    v63[2] = v38;
    v63[3] = v39;
    v63[4] = v40;
    v63[5] = v41;
    v63[0] = v36;
    v63[1] = v37;
    sub_1D5D04BEC(v63);
    if (!v24)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 10;
    v5 += 10;
  }

  return 1;
}

void sub_1D6353A1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v5 = 0;
    do
    {
      v6 = *(a1 + v5 + 40);
      v7 = *(a1 + v5 + 64);
      v8 = *(a1 + v5 + 72);
      v9 = *(a1 + v5 + 80);
      v10 = *(a1 + v5 + 84);
      v22[0] = *(a1 + v5 + 32);
      v22[1] = v6;
      v23 = *(a1 + v5 + 48);
      v24 = v7;
      v25 = v8;
      v27 = v10;
      v26 = v9;
      v11 = *(a2 + v5 + 40);
      v12 = *(a2 + v5 + 64);
      v13 = *(a2 + v5 + 72);
      v14 = *(a2 + v5 + 80);
      v15 = *(a2 + v5 + 84);
      v16[0] = *(a2 + v5 + 32);
      v16[1] = v11;
      v17 = *(a2 + v5 + 48);
      v18 = v12;
      v19 = v13;
      v21 = v15;
      v20 = v14;

      LOBYTE(v8) = _s8NewsFeed24FormatAnimationNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0(v22, v16);

      if ((v8 & 1) == 0)
      {
        break;
      }

      v5 += 56;
      --v2;
    }

    while (v2);
  }
}

void sub_1D6353B70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a2 + 56);
    v4 = (a1 + 56);
    while (1)
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v7 = *(v3 - 1);
      v8 = *v3;
      v9 = *(v4 - 3) == *(v3 - 3) && *(v4 - 2) == *(v3 - 2);
      if (!v9 && (sub_1D72646CC() & 1) == 0)
      {
        break;
      }

      v12 = v7;
      v13 = v5;

      swift_retain_n();
      swift_retain_n();

      v10 = static FormatTextContent.== infix(_:_:)(&v13, &v12);

      if ((v10 & 1) == 0)
      {

        return;
      }

      v12 = v8;
      v13 = v6;

      v11 = _s8NewsFeed30FormatTextNodeAlternativeLogicO2eeoiySbAC_ACtFZ_0(&v13, &v12);

      if (v11)
      {
        v3 += 4;
        v4 += 4;
        if (--v2)
        {
          continue;
        }
      }

      return;
    }
  }
}

uint64_t sub_1D6353D90(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v61 = v2;
  v62 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[5];
    v9 = v5[7];
    v48 = v5[6];
    v49[0] = v9;
    *(v49 + 10) = *(v5 + 122);
    v10 = v5[1];
    v11 = v5[3];
    v44 = v5[2];
    v45 = v11;
    v12 = v5[3];
    v13 = v5[5];
    v46 = v5[4];
    v47 = v13;
    v14 = v5[1];
    v43[0] = *v5;
    v43[1] = v14;
    v15 = v5[7];
    v41 = v48;
    v42[0] = v15;
    *(v42 + 10) = *(v5 + 122);
    v37 = v44;
    v38 = v12;
    v39 = v46;
    v40 = v8;
    v35 = v43[0];
    v36 = v10;
    v16 = v6[5];
    v17 = v6[7];
    v55 = v6[6];
    v56[0] = v17;
    *(v56 + 10) = *(v6 + 122);
    v18 = v6[1];
    v19 = v6[3];
    v51 = v6[2];
    v52 = v19;
    v20 = v6[3];
    v21 = v6[5];
    v53 = v6[4];
    v54 = v21;
    v22 = v6[1];
    v50[0] = *v6;
    v50[1] = v22;
    v23 = v6[7];
    v33 = v55;
    v34[0] = v23;
    *(v34 + 10) = *(v6 + 122);
    v29 = v51;
    v30 = v20;
    v31 = v53;
    v32 = v16;
    v27 = v50[0];
    v28 = v18;
    sub_1D62B7998(v43, v26);
    sub_1D62B7998(v50, v26);
    v24 = _s8NewsFeed19FormatMicaNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0(&v35, &v27);
    v57[6] = v33;
    v58[0] = v34[0];
    *(v58 + 10) = *(v34 + 10);
    v57[2] = v29;
    v57[3] = v30;
    v57[4] = v31;
    v57[5] = v32;
    v57[0] = v27;
    v57[1] = v28;
    sub_1D62B79F4(v57);
    v59[6] = v41;
    v60[0] = v42[0];
    *(v60 + 10) = *(v42 + 10);
    v59[2] = v37;
    v59[3] = v38;
    v59[4] = v39;
    v59[5] = v40;
    v59[0] = v35;
    v59[1] = v36;
    sub_1D62B79F4(v59);
    if (!v24)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 9;
    v5 += 9;
  }

  return 1;
}

void sub_1D6353F70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatCommandOpenURL(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  MEMORY[0x1EEE9AC00](v6, v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16) || !v16 || a1 == a2)
  {
    return;
  }

  v63 = &v59 - v12;
  v64 = v15;
  v61 = v14;
  v62 = v13;
  v17 = (a1 + 40);
  for (i = (a2 + 40); ; i += 2)
  {
    v19 = v17 + 2;
    v20 = *v17;
    v22 = *(i - 1);
    v21 = *i;
    *&v70 = *(v17 - 1);
    *&v67 = v22;
    v23 = v21 & 0x3FFFFFFFFFFFFFFFLL;

    swift_retain_n();
    swift_retain_n();

    v24 = static FormatExpression.== infix(_:_:)(&v70, &v67);

    if ((v24 & 1) == 0)
    {
LABEL_35:

      return;
    }

    v25 = v20 >> 62;
    if ((v20 >> 62) <= 1)
    {
      if (v25)
      {
        if (v21 >> 62 != 1)
        {
          goto LABEL_35;
        }

        v44 = *((v20 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v45 = *((v21 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v46 = *(v44 + 32);
        v70 = *(v44 + 16);
        v71 = v46;
        v72[0] = *(v44 + 48);
        *(v72 + 15) = *(v44 + 63);
        v47 = *(v45 + 32);
        v67 = *(v45 + 16);
        v68 = v47;
        v69[0] = *(v45 + 48);
        *(v69 + 15) = *(v45 + 63);
        v48 = static FormatCommandBinding.== infix(_:_:)(&v70, &v67);

        if ((v48 & 1) == 0)
        {
          return;
        }
      }

      else
      {
        if (v21 >> 62)
        {
          goto LABEL_35;
        }

        v26 = swift_projectBox();
        v27 = swift_projectBox();
        v28 = v26;
        v29 = v63;
        sub_1D6706BB4(v28, v63, type metadata accessor for FormatCommandOpenURL);
        v66 = v23;
        v30 = v64;
        sub_1D6706BB4(v27, v64, type metadata accessor for FormatCommandOpenURL);
        v31 = _s8NewsFeed20FormatCommandOpenURLO2eeoiySbAC_ACtFZ_0(v29, v30);
        sub_1D5D2CFE8(v30, type metadata accessor for FormatCommandOpenURL);
        sub_1D5D2CFE8(v29, type metadata accessor for FormatCommandOpenURL);

        if ((v31 & 1) == 0)
        {
          return;
        }
      }

      goto LABEL_6;
    }

    if (v25 != 2)
    {

      if (v21 != 0xC000000000000000)
      {
        return;
      }

      goto LABEL_6;
    }

    if (v21 >> 62 != 2)
    {
      goto LABEL_35;
    }

    v32 = *((v20 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v33 = *((v20 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v65 = v22;
    v66 = v21 & 0x3FFFFFFFFFFFFFFFLL;
    v34 = *((v21 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v35 = *(v66 + 24);
    v36 = v35 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1D6353F70(v32, v34);
    if ((v37 & 1) == 0)
    {
LABEL_36:

      goto LABEL_37;
    }

    v38 = v33 >> 62;
    if ((v33 >> 62) > 1)
    {
      break;
    }

    if (v38)
    {
      if (v35 >> 62 != 1)
      {
        goto LABEL_36;
      }

      v54 = *((v33 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v55 = *((v35 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v56 = *(v54 + 32);
      v70 = *(v54 + 16);
      v71 = v56;
      v72[0] = *(v54 + 48);
      *(v72 + 15) = *(v54 + 63);
      v57 = *(v55 + 32);
      v67 = *(v55 + 16);
      v68 = v57;
      v69[0] = *(v55 + 48);
      *(v69 + 15) = *(v55 + 63);
      v58 = static FormatCommandBinding.== infix(_:_:)(&v70, &v67);

      if ((v58 & 1) == 0)
      {
        return;
      }
    }

    else
    {
      if (v35 >> 62)
      {
        goto LABEL_36;
      }

      v39 = swift_projectBox();
      v40 = swift_projectBox();
      v60 = v34;
      v41 = v61;
      sub_1D6706BB4(v39, v61, type metadata accessor for FormatCommandOpenURL);
      v42 = v62;
      sub_1D6706BB4(v40, v62, type metadata accessor for FormatCommandOpenURL);
      v43 = _s8NewsFeed20FormatCommandOpenURLO2eeoiySbAC_ACtFZ_0(v41, v42);
      sub_1D5D2CFE8(v42, type metadata accessor for FormatCommandOpenURL);
      sub_1D5D2CFE8(v41, type metadata accessor for FormatCommandOpenURL);

      if ((v43 & 1) == 0)
      {
        return;
      }
    }

LABEL_6:
    v17 = v19;
    if (!--v16)
    {
      return;
    }
  }

  if (v38 != 2)
  {

    if (v35 != 0xC000000000000000)
    {
      return;
    }

    goto LABEL_6;
  }

  if (v35 >> 62 != 2)
  {
    goto LABEL_36;
  }

  v49 = *((v33 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v60 = *((v33 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v50 = *((v35 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v51 = *(v36 + 24);

  sub_1D6353F70(v60, v50);
  if (v52)
  {
    v53 = sub_1D6FB6D20(v49, v51);

    if ((v53 & 1) == 0)
    {
      return;
    }

    goto LABEL_6;
  }

LABEL_37:
}

void sub_1D6354600(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v7 = *v3;
      v8 = *v4;
      v9 = *(v3 - 2) == *(v4 - 2) && *(v3 - 1) == *(v4 - 1);
      if (!v9 && (sub_1D72646CC() & 1) == 0)
      {
        return;
      }

      if (v7 >> 62)
      {
        if (v7 >> 62 == 1)
        {
          if (v8 >> 62 != 1)
          {
            return;
          }

          v10 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
          v11 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v12 = v8 & 0x3FFFFFFFFFFFFFFFLL;
          v13 = *(v12 + 16);
          v14 = *(v12 + 24);
          v15 = *(v12 + 64);
          *&v65 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          *(&v65 + 1) = v11;
          v16 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
          v66 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
          v67 = v16;
          LOBYTE(v68) = v10;
          *&v58 = v13;
          *(&v58 + 1) = v14;
          v17 = *(v12 + 48);
          v59 = *(v12 + 32);
          v60 = v17;
          LOBYTE(v61) = v15;

          v18 = _s8NewsFeed17FormatBundleImageV2eeoiySbAC_ACtFZ_0(&v65, &v58);

          if (!v18)
          {
            return;
          }
        }

        else
        {
          if (v8 >> 62 != 2)
          {
            return;
          }

          v26 = v7 & 0x3FFFFFFFFFFFFFFFLL;
          v27 = *(v26 + 16);
          v57 = *(v26 + 24);
          v28 = v8 & 0x3FFFFFFFFFFFFFFFLL;
          v29 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v30 = *(v28 + 24);
          if (v27 >> 62)
          {
            if (v27 >> 62 == 1)
            {
              if (v29 >> 62 != 1)
              {
                goto LABEL_35;
              }

              v31 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
              v32 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
              v33 = v29 & 0x3FFFFFFFFFFFFFFFLL;
              v34 = *(v33 + 16);
              v35 = *(v33 + 24);
              v36 = *(v33 + 64);
              *&v65 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
              *(&v65 + 1) = v32;
              v37 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
              v66 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
              v67 = v37;
              LOBYTE(v68) = v31;
              *&v58 = v34;
              *(&v58 + 1) = v35;
              v38 = *(v33 + 48);
              v59 = *(v33 + 32);
              v60 = v38;
              LOBYTE(v61) = v36;

              swift_retain_n();

              v39 = _s8NewsFeed17FormatBundleImageV2eeoiySbAC_ACtFZ_0(&v65, &v58);

              if (!v39)
              {
LABEL_37:

                goto LABEL_38;
              }
            }

            else
            {
              if (v29 >> 62 != 2)
              {
LABEL_35:

LABEL_38:

                return;
              }

              v47 = v27 & 0x3FFFFFFFFFFFFFFFLL;
              v48 = *(v47 + 24);
              v49 = v29 & 0x3FFFFFFFFFFFFFFFLL;
              v51 = *(v49 + 16);
              v50 = *(v49 + 24);
              *&v65 = *(v47 + 16);
              *(&v65 + 1) = v48;
              *&v58 = v51;
              *(&v58 + 1) = v50;

              swift_retain_n();

              if ((static FormatSyncImageContent.== infix(_:_:)(&v65, &v58) & 1) == 0)
              {

                goto LABEL_38;
              }

              v56 = v30;
              v52 = *(&v65 + 1);
              v53 = *(&v58 + 1);

              sub_1D6354600(v52, v53);
              v55 = v54;

              if ((v55 & 1) == 0)
              {
                goto LABEL_37;
              }

              v30 = v56;
            }
          }

          else
          {
            if (v29 >> 62)
            {
              return;
            }

            v40 = *(v29 + 96);
            v62 = *(v29 + 80);
            v63 = v40;
            v64 = *(v29 + 112);
            v41 = *(v29 + 32);
            v58 = *(v29 + 16);
            v59 = v41;
            v42 = *(v29 + 64);
            v60 = *(v29 + 48);
            v61 = v42;
            v43 = *(v27 + 96);
            v69 = *(v27 + 80);
            v70 = v43;
            v71 = *(v27 + 112);
            v44 = *(v27 + 32);
            v65 = *(v27 + 16);
            v66 = v44;
            v45 = *(v27 + 64);
            v67 = *(v27 + 48);
            v68 = v45;

            swift_retain_n();

            v46 = _s8NewsFeed17FormatSymbolImageV2eeoiySbAC_ACtFZ_0(&v65, &v58);

            if ((v46 & 1) == 0)
            {
              goto LABEL_37;
            }
          }

          sub_1D6354600(v57, v30);
          v6 = v5;

          swift_bridgeObjectRelease_n();
          if ((v6 & 1) == 0)
          {
            return;
          }
        }
      }

      else
      {
        if (v8 >> 62)
        {
          return;
        }

        v19 = *(v8 + 96);
        v62 = *(v8 + 80);
        v63 = v19;
        v64 = *(v8 + 112);
        v20 = *(v8 + 32);
        v58 = *(v8 + 16);
        v59 = v20;
        v21 = *(v8 + 64);
        v60 = *(v8 + 48);
        v61 = v21;
        v22 = *(v7 + 96);
        v69 = *(v7 + 80);
        v70 = v22;
        v71 = *(v7 + 112);
        v23 = *(v7 + 32);
        v65 = *(v7 + 16);
        v66 = v23;
        v24 = *(v7 + 64);
        v67 = *(v7 + 48);
        v68 = v24;

        v25 = _s8NewsFeed17FormatSymbolImageV2eeoiySbAC_ACtFZ_0(&v65, &v58);

        if ((v25 & 1) == 0)
        {
          return;
        }
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }
}

void sub_1D6354AF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = 0;
    v4 = a1 + 32;
    v5 = a2 + 32;
    while (v3 != v2)
    {
      v6 = (v4 + 24 * v3);
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[2];
      v10 = (v5 + 24 * v3);
      v11 = v10[2];
      v12 = v7 == *v10 && v8 == v10[1];
      if (!v12 && (sub_1D72646CC() & 1) == 0)
      {
        return;
      }

      if (v9)
      {
        if (v9 == 1)
        {
          if (v11 != 1)
          {
            sub_1D5DEA234(v11);
            v23 = 1;
LABEL_51:
            sub_1D5CBF568(v23);
            v9 = v11;
LABEL_52:
            sub_1D5CBF568(v9);
            return;
          }

          v13 = 1;
        }

        else if (v9 == 2)
        {
          if (v11 != 2)
          {
            sub_1D5DEA234(v11);
            v23 = 2;
            goto LABEL_51;
          }

          v13 = 2;
        }

        else
        {
          if (v11 < 3 || (v14 = *(v9 + 16), v14 != *(v11 + 16)))
          {
            sub_1D5DEA234(v11);
            sub_1D5DEA234(v9);
            v23 = v9;
            goto LABEL_51;
          }

          if (v14)
          {
            v15 = v9 == v11;
          }

          else
          {
            v15 = 1;
          }

          if (!v15)
          {
            v24 = v5;
            v25 = v4;
            v26 = v2;
            sub_1D5DEA234(v11);
            sub_1D5DEA234(v9);

            sub_1D5DEA234(v9);

            sub_1D5DEA234(v11);
            v16 = 0;
            v17 = (v9 + 40);
            v18 = (v11 + 40);
            v27 = v14;
            while (1)
            {
              if (v16 >= *(v9 + 16))
              {
                goto LABEL_55;
              }

              if (v16 >= *(v11 + 16))
              {
                goto LABEL_56;
              }

              v19 = *(v17 - 1);
              v20 = *v17;
              v21 = *(v18 - 1);
              v22 = *v18;
              if (*v17)
              {
                if ((*v18 & 1) == 0)
                {
                  sub_1D62B72CC(*(v17 - 1), 1);
                  sub_1D62B72CC(v21, 0);
                  sub_1D62B72CC(v19, 1);
                  sub_1D62B72CC(v21, 0);
LABEL_46:
                  sub_1D62B72BC(v19, v20);
                  sub_1D62B72BC(v21, v20 ^ 1);
                  sub_1D62B72BC(v21, v20 ^ 1);
LABEL_47:
                  sub_1D62B72BC(v19, v20);
                  sub_1D5CBF568(v9);
                  sub_1D5CBF568(v11);

                  sub_1D5CBF568(v11);

                  goto LABEL_52;
                }

                sub_1D62B72CC(v19, 1);
                sub_1D62B72CC(v21, 1);
                v14 = v27;
                if ((0x29282F2A2D2BuLL >> (8 * v19)) != (0x29282F2A2D2BuLL >> (8 * v21)))
                {
                  goto LABEL_47;
                }
              }

              else
              {
                v30 = *(v17 - 1);
                v31 = 0;
                if (v22)
                {
                  sub_1D62B72CC(v19, 0);
                  sub_1D62B72CC(v21, 1);
                  sub_1D62B72CC(v19, 0);
                  sub_1D62B72CC(v21, 1);
                  sub_1D62B72CC(v19, 0);

                  goto LABEL_46;
                }

                v29 = v21;
                sub_1D62B72CC(v19, 0);
                sub_1D62B72CC(v21, 0);
                sub_1D62B72CC(v19, 0);
                sub_1D62B72CC(v21, 0);
                sub_1D62B72CC(v19, 0);
                v28 = static FormatFloat.== infix(_:_:)(&v30, &v29);

                sub_1D62B72BC(v19, 0);
                sub_1D62B72BC(v21, 0);
                if ((v28 & 1) == 0)
                {
                  goto LABEL_47;
                }
              }

              ++v16;
              sub_1D62B72BC(v19, v20);
              v17 += 16;
              v18 += 16;
              if (v14 == v16)
              {
                sub_1D5CBF568(v9);
                sub_1D5CBF568(v11);

                sub_1D5CBF568(v11);

                v11 = v9;
                v4 = v25;
                v2 = v26;
                v5 = v24;
                goto LABEL_29;
              }
            }
          }

          sub_1D5DEA234(v11);
          sub_1D5DEA234(v9);
          v13 = v9;
        }
      }

      else
      {
        if (v11)
        {
          sub_1D5DEA234(v11);
          v23 = 0;
          goto LABEL_51;
        }

        v13 = 0;
      }

      sub_1D5CBF568(v13);
LABEL_29:
      ++v3;
      sub_1D5CBF568(v11);
      if (v3 == v2)
      {
        return;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
  }
}

uint64_t sub_1D6354F50(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v29 = a2 + 32;
  v30 = result + 32;
  v27 = *(result + 16);
  while (v3 != v2)
  {
    v4 = (v30 + 24 * v3);
    v5 = *v4;
    v6 = v4[1];
    v7 = v4[2];
    v8 = (v29 + 24 * v3);
    v9 = v8[2];
    v10 = v5 == *v8 && v6 == v8[1];
    if (!v10 && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }

    v11 = *(v7 + 16);
    if (v11 != *(v9 + 16))
    {
      return 0;
    }

    if (v11)
    {
      v12 = v7 == v9;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      v28 = v3;

      v13 = 0;
      v14 = 0;
      v31 = v7;
      v33 = v11;
      while (v14 < *(v7 + 16))
      {
        if (v14 >= *(v9 + 16))
        {
          goto LABEL_46;
        }

        v16 = *(v7 + v13 + 32);
        v15 = *(v7 + v13 + 40);
        v17 = *(v7 + v13 + 48);
        v18 = *(v7 + v13 + 49);
        v20 = *(v9 + v13 + 32);
        v19 = *(v9 + v13 + 40);
        v21 = *(v9 + v13 + 48);
        v34 = v18;
        if (v18)
        {
          if ((*(v9 + v13 + 49) & 1) == 0)
          {
            goto LABEL_38;
          }

          sub_1D5E04C58(v16, v15, v17, 1);
          sub_1D5E04C58(v20, v19, v21, 1);
          v7 = v31;
          if ((0x29282F2A2D2BuLL >> (8 * v16)) != (0x29282F2A2D2BuLL >> (8 * v20)))
          {
            v23 = v16;
            v24 = v15;
            v25 = v17;
            v26 = 1;
            goto LABEL_42;
          }
        }

        else
        {
          if (*(v9 + v13 + 49))
          {
LABEL_38:
            v22 = *(v7 + v13 + 49);
            sub_1D5E04C58(v16, v15, v17, v18);
            sub_1D5E04C58(v20, v19, v21, v22 ^ 1);
            sub_1D5E04C68(v16, v15, v17, v22);
            v26 = v22 ^ 1;
            v23 = v20;
            v24 = v19;
            v25 = v21;
            goto LABEL_42;
          }

          if (*(v7 + v13 + 48))
          {
            if ((*(v9 + v13 + 48) & 1) == 0)
            {
              sub_1D5E04C58(v16, v15, v17, 0);
              sub_1D5E04C58(v20, v19, v21, 0);
              sub_1D5E04C58(v16, v15, v17, 0);
              sub_1D5E04C58(v20, v19, v21, 0);
              sub_1D5E04C58(v16, v15, v17, 0);
              sub_1D5D2F2C8(v16, v15, 1);
LABEL_40:
              sub_1D5D2F2C8(v20, v19, (v17 & 1) == 0);
LABEL_41:
              sub_1D5E04C68(v16, v15, v17, 0);
              sub_1D5E04C68(v20, v19, v21, 0);
              v23 = v16;
              v24 = v15;
              v25 = v17;
              v26 = 0;
LABEL_42:
              sub_1D5E04C68(v23, v24, v25, v26);

              return 0;
            }

            if (v16 == v20 && v15 == v19)
            {
              sub_1D5E04C58(v16, v15, v17, 0);
              sub_1D5E04C58(v16, v15, v21, 0);
              sub_1D5E04C58(v16, v15, v17, 0);
              sub_1D5E04C58(v16, v15, v21, 0);
              sub_1D5E04C58(v16, v15, v17, 0);
              sub_1D5D2F2C8(v16, v15, 1);
              sub_1D5D2F2C8(v16, v15, 1);
            }

            else
            {
              v32 = sub_1D72646CC();
              sub_1D5E04C58(v16, v15, v17, 0);
              sub_1D5E04C58(v20, v19, v21, 0);
              sub_1D5E04C58(v16, v15, v17, 0);
              sub_1D5E04C58(v20, v19, v21, 0);
              sub_1D5E04C58(v16, v15, v17, 0);
              sub_1D5D2F2C8(v16, v15, 1);
              sub_1D5D2F2C8(v20, v19, 1);
              if ((v32 & 1) == 0)
              {
                goto LABEL_41;
              }
            }
          }

          else
          {
            sub_1D5E04C58(v16, v15, v17, 0);
            sub_1D5E04C58(v20, v19, v21, 0);
            sub_1D5E04C58(v16, v15, v17, 0);
            sub_1D5E04C58(v20, v19, v21, 0);
            sub_1D5D2F2C8(v16, v15, 0);
            if (v21)
            {
              goto LABEL_40;
            }

            sub_1D5D2F2C8(v20, v19, 0);
            if (v16 != v20)
            {
              goto LABEL_41;
            }
          }

          sub_1D5E04C68(v16, v15, v17, 0);
          sub_1D5E04C68(v20, v19, v21, 0);
        }

        ++v14;
        result = sub_1D5E04C68(v16, v15, v17, v34);
        v13 += 24;
        if (v33 == v14)
        {

          v2 = v27;
          v3 = v28;
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
      break;
    }

LABEL_7:
    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D63554CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    for (i = (a2 + 48); ; i += 3)
    {
      v6 = *v3;
      v7 = *i;
      v8 = *(v3 - 2) == *(i - 2) && *(v3 - 1) == *(i - 1);
      if (!v8 && (sub_1D72646CC() & 1) == 0)
      {
        return 0;
      }

      if (v6 >> 62)
      {
        break;
      }

      if (v7 >> 62)
      {
LABEL_105:
        sub_1D5EB1500(v7);
        sub_1D5EB1500(v6);
        v56 = v6;
        goto LABEL_107;
      }

      if (*(v6 + 16) == *(v7 + 16) && *(v6 + 24) == *(v7 + 24))
      {
        sub_1D5EB1500(v7);
        sub_1D5EB1500(v6);
        v5 = v7;
LABEL_6:
        sub_1D5EB15C4(v6);
        sub_1D5EB15C4(v5);
        goto LABEL_7;
      }

      v27 = sub_1D72646CC();
      sub_1D5EB1500(v7);
      sub_1D5EB1500(v6);
      sub_1D5EB15C4(v6);
      sub_1D5EB15C4(v7);
      if ((v27 & 1) == 0)
      {
        return 0;
      }

LABEL_7:
      v3 += 3;
      if (!--v2)
      {
        return 1;
      }
    }

    if (v6 >> 62 != 1)
    {
      if (v6 == 0x8000000000000000)
      {
        v6 = 0x8000000000000000;
        v5 = 0x8000000000000000;
        if (v7 != 0x8000000000000000)
        {
          sub_1D5EB1500(v7);
          v56 = 0x8000000000000000;
LABEL_107:
          sub_1D5EB15C4(v56);
          v6 = v7;
          goto LABEL_131;
        }
      }

      else
      {
        v6 = 0x8000000000000008;
        v5 = 0x8000000000000008;
        if (v7 != 0x8000000000000008)
        {
          sub_1D5EB1500(v7);
          v56 = 0x8000000000000008;
          goto LABEL_107;
        }
      }

      goto LABEL_6;
    }

    if (v7 >> 62 != 1)
    {
      goto LABEL_105;
    }

    v9 = 0x8000000000000000;
    v10 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v11 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v98 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v99 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    if (v10 >> 62)
    {
      if (v10 >> 62 == 1)
      {
        if (v11 >> 62 != 1)
        {
          goto LABEL_106;
        }

        v12 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v13 = *((v11 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v97 = v12;
        v94 = *((v11 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v95 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        if (v12 >> 62)
        {
          v93 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v96 = *((v11 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          if (v12 >> 62 == 1)
          {
            if (v13 >> 62 != 1)
            {
              v65 = *((v11 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
              sub_1D5EB1500(v7);
              sub_1D5EB1500(v6);

              sub_1D5EB1500(v6);

              sub_1D5EB1500(v7);
              sub_1D5EB1500(v11);
              sub_1D5EB1500(v10);
              sub_1D5EB1500(v65);
              v66 = v97;
              goto LABEL_110;
            }

            v14 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            v85 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
            v86 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            v15 = v13 & 0x3FFFFFFFFFFFFFFFLL;
            v16 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            v90 = v14;
            v84 = *(v15 + 24);
            if (v14 >> 62)
            {
              v82 = v16;
              if (v14 >> 62 == 1)
              {
                if (v16 >> 62 != 1)
                {
                  v63 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                  v60 = v16;
                  sub_1D5EB1500(v7);
                  sub_1D5EB1500(v6);

                  sub_1D5EB1500(v6);

                  sub_1D5EB1500(v7);
                  sub_1D5EB1500(v11);
                  sub_1D5EB1500(v10);
                  v62 = v96;
                  sub_1D5EB1500(v96);
                  sub_1D5EB1500(v97);
                  sub_1D5EB1500(v60);
                  v61 = v90;
                  goto LABEL_116;
                }

                v17 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                v18 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                v78 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
                v79 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
                v80 = v17;
                v81 = v18;
                if (v17 >> 62)
                {
                  if (v17 >> 62 == 1)
                  {
                    if (v18 >> 62 != 1)
                    {
                      v68 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                      sub_1D5EB1500(v7);
                      sub_1D5EB1500(v6);

                      sub_1D5EB1500(v6);

                      sub_1D5EB1500(v7);
                      sub_1D5EB1500(v11);
                      sub_1D5EB1500(v10);
                      sub_1D5EB1500(v96);
                      sub_1D5EB1500(v97);
                      v47 = v82;
                      sub_1D5EB1500(v82);
                      v69 = v90;
                      sub_1D5EB1500(v90);
                      sub_1D5EB1500(v68);
                      sub_1D5EB1500(v80);
                      sub_1D5EB15C4(v80);
                      v70 = v68;
LABEL_120:
                      sub_1D5EB15C4(v70);
                      sub_1D5EB15C4(v69);
                      v73 = v47;
                      goto LABEL_126;
                    }

                    v19 = *((v17 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
                    v76 = *((v18 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                    v77 = *((v18 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
                    v102 = *((v17 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                    v103 = v19;
                    v100 = v76;
                    v101 = v77;
                    v20 = v18;
                    sub_1D5EB1500(v7);
                    sub_1D5EB1500(v6);

                    sub_1D5EB1500(v6);

                    sub_1D5EB1500(v7);
                    sub_1D5EB1500(v11);
                    sub_1D5EB1500(v10);
                    sub_1D5EB1500(v96);
                    sub_1D5EB1500(v97);
                    sub_1D5EB1500(v82);
                    sub_1D5EB1500(v90);
                    sub_1D5EB1500(v20);

                    sub_1D5EB1500(v20);
                    sub_1D5EB1500(v80);
                    sub_1D5EB1500(v76);

                    if (!static FormatVisibility.== infix(_:_:)(&v102, &v100))
                    {
                      sub_1D5EB15C4(v76);

                      sub_1D5EB15C4(v80);
                      v24 = v81;
                      sub_1D5EB15C4(v81);
LABEL_122:
                      sub_1D5EB15C4(v24);

                      sub_1D5EB15C4(v90);
                      sub_1D5EB15C4(v82);
                      sub_1D5EB15C4(v97);
                      sub_1D5EB15C4(v96);
                      goto LABEL_128;
                    }

                    v21 = v103;
                    v22 = v10;
                    v23 = v101;

                    v75 = sub_1D63554CC(v21, v23);

                    v10 = v22;

                    sub_1D5EB15C4(v76);

                    sub_1D5EB15C4(v80);
                    v24 = v81;
                    sub_1D5EB15C4(v81);
                    if ((v75 & 1) == 0)
                    {
                      goto LABEL_122;
                    }

                    v25 = v79;
                    goto LABEL_98;
                  }

                  v49 = v16;
                  sub_1D5EB1500(v7);
                  sub_1D5EB1500(v6);

                  sub_1D5EB1500(v6);

                  sub_1D5EB1500(v7);
                  sub_1D5EB1500(v11);
                  sub_1D5EB1500(v10);
                  sub_1D5EB1500(v96);
                  sub_1D5EB1500(v97);
                  sub_1D5EB1500(v49);
                  sub_1D5EB1500(v90);
                  if (v80 == 0x8000000000000000)
                  {
                    v50 = v81;
                    if (v81 != 0x8000000000000000)
                    {
                      sub_1D5EB1500(v81);
                      v74 = 0x8000000000000000;
LABEL_125:
                      sub_1D5EB15C4(v74);
                      sub_1D5EB15C4(v50);
                      sub_1D5EB15C4(v90);
                      v73 = v82;
LABEL_126:
                      sub_1D5EB15C4(v73);
                      sub_1D5EB15C4(v97);
                      v58 = v96;
LABEL_127:
                      sub_1D5EB15C4(v58);
LABEL_128:
                      v57 = v10;
                      goto LABEL_129;
                    }

                    sub_1D5EB1500(0x8000000000000000);
                    v25 = v79;

                    sub_1D5EB15C4(0x8000000000000000);
                    v51 = 0x8000000000000000;
                  }

                  else
                  {
                    v50 = v81;
                    if (v81 != 0x8000000000000008)
                    {
                      sub_1D5EB1500(v81);
                      v74 = 0x8000000000000008;
                      goto LABEL_125;
                    }

                    sub_1D5EB1500(0x8000000000000008);
                    v25 = v79;

                    sub_1D5EB15C4(0x8000000000000008);
                    v51 = 0x8000000000000008;
                  }
                }

                else
                {
                  v47 = v16;
                  if (v18 >> 62)
                  {
                    v71 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                    v72 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                    sub_1D5EB1500(v7);
                    sub_1D5EB1500(v6);

                    sub_1D5EB1500(v6);

                    sub_1D5EB1500(v7);
                    sub_1D5EB1500(v11);
                    sub_1D5EB1500(v10);
                    sub_1D5EB1500(v96);
                    sub_1D5EB1500(v97);
                    sub_1D5EB1500(v47);
                    v69 = v90;
                    sub_1D5EB1500(v90);
                    sub_1D5EB1500(v71);
                    sub_1D5EB1500(v72);
                    sub_1D5EB15C4(v72);
                    v70 = v71;
                    goto LABEL_120;
                  }

                  if (*(v17 + 16) != *(v18 + 16) || *(v17 + 24) != *(v18 + 24))
                  {
                    v89 = sub_1D72646CC();
                    sub_1D5EB1500(v7);
                    sub_1D5EB1500(v6);

                    sub_1D5EB1500(v6);

                    sub_1D5EB1500(v7);
                    sub_1D5EB1500(v11);
                    sub_1D5EB1500(v10);
                    sub_1D5EB1500(v96);
                    sub_1D5EB1500(v97);
                    sub_1D5EB1500(v47);
                    sub_1D5EB1500(v90);
                    sub_1D5EB1500(v81);
                    v25 = v79;

                    sub_1D5EB1500(v81);
                    sub_1D5EB1500(v80);
                    sub_1D5EB15C4(v80);
                    sub_1D5EB15C4(v81);
                    if ((v89 & 1) == 0)
                    {
                      sub_1D5EB15C4(v81);

                      sub_1D5EB15C4(v90);
                      sub_1D5EB15C4(v82);
                      sub_1D5EB15C4(v97);
                      sub_1D5EB15C4(v96);
                      v57 = v93;
                      goto LABEL_129;
                    }

                    goto LABEL_98;
                  }

                  sub_1D5EB1500(v7);
                  sub_1D5EB1500(v6);

                  sub_1D5EB1500(v6);

                  sub_1D5EB1500(v7);
                  sub_1D5EB1500(v11);
                  sub_1D5EB1500(v10);
                  sub_1D5EB1500(v96);
                  sub_1D5EB1500(v97);
                  sub_1D5EB1500(v47);
                  sub_1D5EB1500(v90);
                  sub_1D5EB1500(v81);
                  v25 = v79;

                  sub_1D5EB1500(v81);
                  sub_1D5EB1500(v80);
                  sub_1D5EB15C4(v80);
                  v51 = v81;
                }

                sub_1D5EB15C4(v51);
LABEL_98:

                v52 = sub_1D63554CC(v78, v25);

                sub_1D5EB15C4(v81);

                sub_1D5EB15C4(v90);
                sub_1D5EB15C4(v82);
                if ((v52 & 1) == 0)
                {
LABEL_113:
                  sub_1D5EB15C4(v97);
                  sub_1D5EB15C4(v96);
                  v57 = v93;
                  goto LABEL_129;
                }

                goto LABEL_99;
              }

              sub_1D5EB1500(v7);
              sub_1D5EB1500(v6);

              sub_1D5EB1500(v6);

              if (v90 == 0x8000000000000000)
              {
                v43 = 0x8000000000000000;
                v44 = v7;
                v41 = v96;
                v45 = v97;
                v46 = 0x8000000000000000;
                if (v82 != 0x8000000000000000)
                {
                  v64 = v82;
                  sub_1D5EB1500(v7);
                  sub_1D5EB1500(v11);
                  sub_1D5EB1500(v10);
                  v65 = v96;
                  sub_1D5EB1500(v96);
                  v66 = v97;
                  sub_1D5EB1500(v97);
                  sub_1D5EB1500(v82);
                  v67 = 0x8000000000000000;
                  goto LABEL_117;
                }
              }

              else
              {
                v44 = v7;
                v41 = v96;
                v45 = v97;
                v43 = 0x8000000000000008;
                v46 = 0x8000000000000008;
                if (v82 != 0x8000000000000008)
                {
                  v64 = v82;
                  sub_1D5EB1500(v7);
                  sub_1D5EB1500(v11);
                  sub_1D5EB1500(v10);
                  v65 = v96;
                  sub_1D5EB1500(v96);
                  v66 = v97;
                  sub_1D5EB1500(v97);
                  sub_1D5EB1500(v82);
                  v67 = 0x8000000000000008;
LABEL_117:
                  sub_1D5EB15C4(v67);
                  sub_1D5EB15C4(v64);
LABEL_111:
                  sub_1D5EB15C4(v66);
                  v58 = v65;
                  goto LABEL_127;
                }
              }
            }

            else
            {
              if (v16 >> 62)
              {
                v60 = v16;
                v61 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                sub_1D5EB1500(v7);
                sub_1D5EB1500(v6);

                sub_1D5EB1500(v6);

                sub_1D5EB1500(v7);
                sub_1D5EB1500(v11);
                sub_1D5EB1500(v10);
                v62 = v96;
                sub_1D5EB1500(v96);
                v63 = v97;
                sub_1D5EB1500(v97);
                sub_1D5EB1500(v60);
LABEL_116:
                sub_1D5EB1500(v61);
                sub_1D5EB15C4(v61);
                sub_1D5EB15C4(v60);
                sub_1D5EB15C4(v63);
                v58 = v62;
                goto LABEL_127;
              }

              v41 = v16;
              if (*(v14 + 16) != *(v16 + 16) || *(v14 + 24) != *(v16 + 24))
              {
                v87 = sub_1D72646CC();
                sub_1D5EB1500(v7);
                sub_1D5EB1500(v6);

                sub_1D5EB1500(v6);

                sub_1D5EB1500(v7);
                sub_1D5EB1500(v11);
                sub_1D5EB1500(v10);
                sub_1D5EB1500(v96);
                sub_1D5EB1500(v97);
                sub_1D5EB1500(v41);
                sub_1D5EB1500(v90);
                sub_1D5EB15C4(v90);
                sub_1D5EB15C4(v41);
                if ((v87 & 1) == 0)
                {
                  goto LABEL_113;
                }

LABEL_99:

                v53 = sub_1D63554CC(v85, v84);

                sub_1D5EB15C4(v97);
                sub_1D5EB15C4(v96);
                v11 = v86;
                v10 = v93;
                if ((v53 & 1) == 0)
                {
                  goto LABEL_128;
                }

                goto LABEL_100;
              }

              sub_1D5EB1500(v7);
              sub_1D5EB1500(v6);

              sub_1D5EB1500(v6);

              sub_1D5EB1500(v7);
              sub_1D5EB1500(v11);
              v44 = v10;
              v11 = v96;
              v10 = v97;
              v45 = v90;
              v43 = v90;
              v46 = v41;
            }

            v88 = v46;
            v92 = v45;
            v83 = v43;
            sub_1D5EB1500(v44);
            sub_1D5EB1500(v11);
            sub_1D5EB1500(v10);
            sub_1D5EB1500(v41);
            sub_1D5EB1500(v92);
            sub_1D5EB15C4(v83);
            sub_1D5EB15C4(v88);
            goto LABEL_99;
          }

          sub_1D5EB1500(v7);
          sub_1D5EB1500(v6);

          sub_1D5EB1500(v6);

          v35 = v7;
          v36 = v11;
          if (v97 == 0x8000000000000000)
          {
            v37 = v10;
            v38 = 0x8000000000000000;
            v39 = v96;
            if (v96 != 0x8000000000000000)
            {
              sub_1D5EB1500(v7);
              sub_1D5EB1500(v11);
              v10 = v93;
              sub_1D5EB1500(v93);
              sub_1D5EB1500(v96);
              v59 = 0x8000000000000000;
LABEL_112:
              sub_1D5EB15C4(v59);
              sub_1D5EB15C4(v39);
              goto LABEL_128;
            }
          }

          else
          {
            v37 = v10;
            v9 = 0x8000000000000008;
            v38 = 0x8000000000000008;
            v39 = v96;
            if (v96 != 0x8000000000000008)
            {
              sub_1D5EB1500(v7);
              sub_1D5EB1500(v11);
              v10 = v93;
              sub_1D5EB1500(v93);
              sub_1D5EB1500(v96);
              v59 = 0x8000000000000008;
              goto LABEL_112;
            }
          }
        }

        else
        {
          if (v13 >> 62)
          {
            v66 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            v65 = *((v11 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            sub_1D5EB1500(v7);
            sub_1D5EB1500(v6);

            sub_1D5EB1500(v6);

            sub_1D5EB1500(v7);
            sub_1D5EB1500(v11);
            sub_1D5EB1500(v10);
            sub_1D5EB1500(v65);
LABEL_110:
            sub_1D5EB1500(v66);
            goto LABEL_111;
          }

          v33 = *(v12 + 16) == *(v13 + 16) && *(v12 + 24) == *(v13 + 24);
          v34 = *((v11 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          if (!v33)
          {
            v91 = sub_1D72646CC();
            sub_1D5EB1500(v7);
            sub_1D5EB1500(v6);

            sub_1D5EB1500(v6);

            sub_1D5EB1500(v7);
            sub_1D5EB1500(v11);
            sub_1D5EB1500(v10);
            sub_1D5EB1500(v34);
            sub_1D5EB1500(v97);
            sub_1D5EB15C4(v97);
            sub_1D5EB15C4(v34);
            if ((v91 & 1) == 0)
            {
              goto LABEL_128;
            }

            goto LABEL_100;
          }

          sub_1D5EB1500(v7);
          sub_1D5EB1500(v6);

          sub_1D5EB1500(v6);

          sub_1D5EB1500(v7);
          v36 = v11;
          sub_1D5EB1500(v11);
          v93 = v10;
          v35 = v10;
          v11 = v34;
          v38 = v34;
          v37 = v97;
          v9 = v97;
        }

        v40 = v37;
        sub_1D5EB1500(v35);
        sub_1D5EB1500(v11);
        sub_1D5EB1500(v40);
        sub_1D5EB15C4(v9);
        sub_1D5EB15C4(v38);
        v11 = v36;
        v10 = v93;
LABEL_100:

        v29 = sub_1D63554CC(v95, v94);

        sub_1D5EB15C4(v10);
        v30 = v11;
LABEL_101:
        sub_1D5EB15C4(v30);
        if ((v29 & 1) == 0)
        {
          goto LABEL_130;
        }

        goto LABEL_102;
      }

      sub_1D5EB1500(v7);
      sub_1D5EB1500(v6);

      sub_1D5EB1500(v6);

      v31 = v7;
      if (v10 == 0x8000000000000000)
      {
        v32 = 0x8000000000000000;
        if (v11 != 0x8000000000000000)
        {
          sub_1D5EB1500(v7);
          sub_1D5EB1500(v11);
          v57 = 0x8000000000000000;
LABEL_129:
          sub_1D5EB15C4(v57);
          sub_1D5EB15C4(v11);
LABEL_130:
          sub_1D5EB15C4(v6);
          sub_1D5EB15C4(v7);

          sub_1D5EB15C4(v7);

LABEL_131:
          sub_1D5EB15C4(v6);
          return 0;
        }
      }

      else
      {
        v9 = 0x8000000000000008;
        v32 = 0x8000000000000008;
        if (v11 != 0x8000000000000008)
        {
          sub_1D5EB1500(v7);
          sub_1D5EB1500(v11);
          v57 = 0x8000000000000008;
          goto LABEL_129;
        }
      }
    }

    else
    {
      if (v11 >> 62)
      {
LABEL_106:
        sub_1D5EB1500(v7);
        sub_1D5EB1500(v6);

        sub_1D5EB1500(v6);

        sub_1D5EB1500(v7);
        sub_1D5EB1500(v11);
        sub_1D5EB1500(v10);
        goto LABEL_128;
      }

      if (*(v10 + 16) != *(v11 + 16) || *(v10 + 24) != *(v11 + 24))
      {
        v29 = sub_1D72646CC();
        sub_1D5EB1500(v7);
        sub_1D5EB1500(v6);

        sub_1D5EB1500(v6);

        sub_1D5EB1500(v7);
        sub_1D5EB1500(v11);
        sub_1D5EB1500(v10);
        sub_1D5EB15C4(v10);
        v30 = v11;
        goto LABEL_101;
      }

      sub_1D5EB1500(v7);
      sub_1D5EB1500(v6);

      sub_1D5EB1500(v6);

      sub_1D5EB1500(v7);
      sub_1D5EB1500(v11);
      v9 = v10;
      v31 = v10;
      v32 = v11;
    }

    sub_1D5EB1500(v31);
    sub_1D5EB15C4(v9);
    sub_1D5EB15C4(v32);
LABEL_102:

    v54 = sub_1D63554CC(v99, v98);

    sub_1D5EB15C4(v6);
    sub_1D5EB15C4(v7);

    sub_1D5EB15C4(v7);

    sub_1D5EB15C4(v6);
    if ((v54 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_1D635677C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725B76C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v243 = &v205 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69D6A58];
  sub_1D5B5BF78(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v240 = &v205 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v246 = &v205 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v238 = &v205 - v17;
  sub_1D66F4EB8(0, &qword_1EDF3BA98, &qword_1EDF45AD0, v8);
  v248 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v247 = &v205 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v245 = &v205 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v239 = (&v205 - v26);
  v27 = type metadata accessor for FormatPropertyDefinition(0);
  v252 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = &v205 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v205 - v33;
  v244 = type metadata accessor for FormatSlotDefinitionItemSet(0);
  v250 = *(v244 - 8);
  MEMORY[0x1EEE9AC00](v244, v35);
  v241 = &v205 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v242 = &v205 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v205 - v42;
  MEMORY[0x1EEE9AC00](v44, v45);
  v249 = &v205 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v50 = &v205 - v49;
  MEMORY[0x1EEE9AC00](v51, v52);
  v54 = &v205 - v53;
  v55 = type metadata accessor for FormatSlotDefinition(0);
  MEMORY[0x1EEE9AC00](v55, v56);
  v253 = (&v205 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v58, v59);
  v63 = (&v205 - v62);
  v64 = *(a1 + 16);
  if (v64 != *(a2 + 16))
  {
    return 0;
  }

  if (!v64 || a1 == a2)
  {
    return 1;
  }

  v227 = v60;
  v237 = v54;
  v235 = v50;
  v65 = 0;
  v66 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v67 = a1 + v66;
  v68 = a2 + v66;
  v232 = (v5 + 48);
  v228 = (v5 + 32);
  v229 = (v5 + 8);
  v69 = *(v61 + 72);
  v251 = (&v205 - v62);
  v233 = v4;
  v234 = v43;
  v236 = v64;
  v225 = v67;
  v224 = a2 + v66;
  v223 = v69;
  while (1)
  {
    result = sub_1D6706BB4(v67 + v69 * v65, v63, type metadata accessor for FormatSlotDefinition);
    if (v65 == v236)
    {
      __break(1u);
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
      __break(1u);
      __break(1u);
LABEL_147:
      __break(1u);
      return result;
    }

    v231 = v65;
    v71 = v253;
    sub_1D6706BB4(v68 + v69 * v65, v253, type metadata accessor for FormatSlotDefinition);
    v72 = *v63 == *v71 && v63[1] == v71[1];
    if (!v72 && (sub_1D72646CC() & 1) == 0 || (v251[2] != v253[2] || v251[3] != v253[3]) && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_134;
    }

    result = v251[4];
    if (result != v253[4] || v251[5] != v253[5])
    {
      result = sub_1D72646CC();
      if ((result & 1) == 0)
      {
        goto LABEL_134;
      }
    }

    v73 = v251[6];
    v74 = v253[6];
    v75 = *(v73 + 16);
    if (v75 != *(v74 + 16))
    {
      goto LABEL_134;
    }

    if (v75 && v73 != v74)
    {
      break;
    }

LABEL_97:
    v156 = v251[7];
    v83 = v253[7];
    v141 = *(v156 + 16);
    if (v141 != *(v83 + 16))
    {
      goto LABEL_134;
    }

    if (v141 && v156 != v83)
    {
      v175 = 0;
      v81 = v156 + 32;
      v142 = v83 + 32;
      while (v175 < *(v156 + 16))
      {
        v176 = *(v81 + 8 * v175);
        v255 = v176;
        if (v175 >= *(v83 + 16))
        {
          goto LABEL_137;
        }

        v254 = *(v142 + 8 * v175);
        v177 = v254;
        sub_1D5FBABE0(v176);
        sub_1D5FBABE0(v177);
        LOBYTE(v177) = static FormatSlotTransform.== infix(_:_:)(&v255, &v254);
        sub_1D5FBAC60(v254);
        sub_1D5FBAC60(v255);
        if ((v177 & 1) == 0)
        {
          goto LABEL_134;
        }

        if (v141 == ++v175)
        {
          goto LABEL_105;
        }
      }

      __break(1u);
LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

LABEL_105:
    v156 = v251[8];
    v142 = v253[8];
    v178 = *(v156 + 16);
    if (v178 != *(v142 + 16))
    {
      goto LABEL_134;
    }

    if (v178 && v156 != v142)
    {
      v83 = 0;
      v179 = (*(v252 + 80) + 32) & ~*(v252 + 80);
      v180 = v156 + v179;
      v81 = v142 + v179;
      while (v83 < *(v156 + 16))
      {
        v181 = *(v252 + 72) * v83;
        sub_1D6706BB4(v180 + v181, v34, type metadata accessor for FormatPropertyDefinition);
        if (v83 >= *(v142 + 16))
        {
          goto LABEL_139;
        }

        sub_1D6706BB4(v81 + v181, v30, type metadata accessor for FormatPropertyDefinition);
        v182 = static FormatPropertyDefinition.== infix(_:_:)(v34, v30);
        v141 = type metadata accessor for FormatPropertyDefinition;
        sub_1D5D2CFE8(v30, type metadata accessor for FormatPropertyDefinition);
        sub_1D5D2CFE8(v34, type metadata accessor for FormatPropertyDefinition);
        if ((v182 & 1) == 0)
        {
          goto LABEL_134;
        }

        if (v178 == ++v83)
        {
          goto LABEL_113;
        }
      }

LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      v158.n128_f64[0] = (*v229)(v142, v156);
LABEL_141:
      sub_1D66F4424(v141, &qword_1EDF3BA98, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], v158);
LABEL_130:
      sub_1D5D2CFE8(v234, type metadata accessor for FormatSlotDefinitionItemSet);
      sub_1D5D2CFE8(v249, type metadata accessor for FormatSlotDefinitionItemSet);
LABEL_131:
      sub_1D5CDE22C(v214, v230);
      v203 = v221;

      v204 = v220;

      v198 = v204;
      v199 = v203;
LABEL_132:
      sub_1D5CDE22C(v198, v199);
      goto LABEL_133;
    }

LABEL_113:
    v183 = *(v227 + 40);
    v184 = v247;
    v185 = *(v248 + 48);
    v186 = MEMORY[0x1E69D6A58];
    v63 = v251;
    sub_1D5CDE2EC(v251 + v183, v247, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    v187 = v253 + v183;
    v188 = v184;
    sub_1D5CDE2EC(v187, v184 + v185, &qword_1EDF45AD0, v186);
    v189 = *v232;
    v190 = v184;
    v191 = v233;
    if ((*v232)(v190, 1, v233) == 1)
    {
      if (v189(v188 + v185, 1, v191) != 1)
      {
        goto LABEL_125;
      }

      sub_1D5D35558(v188, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720], sub_1D5B5BF78);
      sub_1D5D2CFE8(v253, type metadata accessor for FormatSlotDefinition);
      sub_1D5D2CFE8(v63, type metadata accessor for FormatSlotDefinition);
    }

    else
    {
      v193 = v240;
      sub_1D5CDE2EC(v188, v240, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
      if (v189(v188 + v185, 1, v191) == 1)
      {
        v192.n128_f64[0] = (*v229)(v193, v191);
LABEL_125:
        sub_1D66F4424(v188, &qword_1EDF3BA98, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], v192);
        goto LABEL_134;
      }

      v194 = v188 + v185;
      v195 = v243;
      (*v228)(v243, v194, v191);
      sub_1D5B58B84(&qword_1EC881E90, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A68]);
      v196 = sub_1D7261FBC();
      v197 = *v229;
      (*v229)(v195, v191);
      v197(v193, v191);
      sub_1D5D35558(v247, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720], sub_1D5B5BF78);
      sub_1D5D2CFE8(v253, type metadata accessor for FormatSlotDefinition);
      sub_1D5D2CFE8(v63, type metadata accessor for FormatSlotDefinition);
      if ((v196 & 1) == 0)
      {
        return 0;
      }
    }

    v65 = v231 + 1;
    result = 1;
    v67 = v225;
    v68 = v224;
    v69 = v223;
    if (v231 + 1 == v236)
    {
      return result;
    }
  }

  v76 = 0;
  v77 = (*(v250 + 80) + 32) & ~*(v250 + 80);
  v78 = v73 + v77;
  v213 = v77;
  v79 = v74 + v77;
  v219 = v73;
  v218 = v74;
  v217 = v75;
  v216 = v73 + v77;
  v215 = v74 + v77;
  while (1)
  {
    if (v76 >= *(v73 + 16))
    {
      goto LABEL_145;
    }

    v226 = *(v250 + 72);
    v80 = v226 * v76;
    v81 = v237;
    result = sub_1D6706BB4(v78 + v226 * v76, v237, type metadata accessor for FormatSlotDefinitionItemSet);
    v82 = *(v74 + 16);
    v222 = v76;
    v83 = v235;
    if (v76 >= v82)
    {
      goto LABEL_146;
    }

    sub_1D6706BB4(v79 + v80, v235, type metadata accessor for FormatSlotDefinitionItemSet);
    if (*v81 != *v83)
    {
      goto LABEL_133;
    }

    if (*(v81 + 4) != *(v83 + 4))
    {
      goto LABEL_133;
    }

    if ((sub_1D5E1EFE4(*(v81 + 8), *(v83 + 8)) & 1) == 0)
    {
      goto LABEL_133;
    }

    v84 = *(v81 + 16);
    v85 = *(v83 + 16);
    v86 = *(v84 + 16);
    if (v86 != *(v85 + 16))
    {
      goto LABEL_133;
    }

    if (v86 && v84 != v85)
    {
      v87 = (*(v252 + 80) + 32) & ~*(v252 + 80);
      v88 = v84 + v87;
      v89 = v85 + v87;
      v90 = *(v252 + 72);
      do
      {
        sub_1D6706BB4(v88, v34, type metadata accessor for FormatPropertyDefinition);
        sub_1D6706BB4(v89, v30, type metadata accessor for FormatPropertyDefinition);
        v91 = static FormatPropertyDefinition.== infix(_:_:)(v34, v30);
        sub_1D5D2CFE8(v30, type metadata accessor for FormatPropertyDefinition);
        sub_1D5D2CFE8(v34, type metadata accessor for FormatPropertyDefinition);
        if ((v91 & 1) == 0)
        {
          goto LABEL_133;
        }

        v89 += v90;
        v88 += v90;
      }

      while (--v86);
    }

    v93 = *(v81 + 24);
    v92 = *(v81 + 32);
    v94 = *(v83 + 24);
    v95 = *(v83 + 32);
    v230 = v95;
    if (!v93)
    {
      sub_1D5D615EC(0, v92);
      v108 = v245;
      v107 = v246;
      if (!v94)
      {
        sub_1D5D615EC(0, v230);
        goto LABEL_91;
      }

      v95 = v230;
      sub_1D5D615EC(v94, v230);
LABEL_123:
      sub_1D5CDE22C(v93, v92);
      v198 = v94;
      v199 = v95;
      goto LABEL_132;
    }

    if (!v94)
    {
      sub_1D5D615EC(v93, v92);
      sub_1D5D615EC(0, v95);
      sub_1D5D615EC(v93, v92);

      goto LABEL_123;
    }

    v96 = *(v93 + 16);
    v72 = v96 == *(v94 + 16);
    v221 = v92;
    v220 = v93;
    v214 = v94;
    if (!v72)
    {
      sub_1D5D615EC(v93, v92);
      sub_1D5D615EC(v94, v95);
      sub_1D5D615EC(v93, v92);
      goto LABEL_131;
    }

    if (v96)
    {
      v97 = v94;
      v98 = *(v252 + 80);
      sub_1D5D615EC(v93, v92);
      v99 = v93;
      if (v93 != v97)
      {
        v100 = (v98 + 32) & ~v98;
        v101 = v93;
        v102 = v93 + v100;
        v103 = v95;
        v104 = v214 + v100;
        sub_1D5D615EC(v214, v103);
        sub_1D5D615EC(v101, v92);
        v105 = *(v252 + 72);
        while (1)
        {
          sub_1D6706BB4(v102, v34, type metadata accessor for FormatPropertyDefinition);
          sub_1D6706BB4(v104, v30, type metadata accessor for FormatPropertyDefinition);
          v106 = static FormatPropertyDefinition.== infix(_:_:)(v34, v30);
          sub_1D5D2CFE8(v30, type metadata accessor for FormatPropertyDefinition);
          sub_1D5D2CFE8(v34, type metadata accessor for FormatPropertyDefinition);
          if ((v106 & 1) == 0)
          {
            goto LABEL_131;
          }

          v104 += v105;
          v102 += v105;
          if (!--v96)
          {
            goto LABEL_46;
          }
        }
      }
    }

    else
    {
      sub_1D5D615EC(v93, v92);
      v99 = v94;
    }

    sub_1D5D615EC(v99, v95);
    sub_1D5D615EC(v93, v92);
LABEL_46:
    v109 = *(v221 + 16);
    if (v109 != *(v230 + 16))
    {
      goto LABEL_131;
    }

    if (v109)
    {
      v92 = v221;
      v110 = v221;
      v108 = v245;
      v107 = v246;
      v94 = v220;
      if (v221 != v230)
      {
        v111 = 0;
        v112 = v221 + v213;
        v209 = v230 + v213;
        v207 = v109;
        v206 = v221 + v213;
        while (1)
        {
          v113 = v111 * v226;
          v114 = v249;
          v115 = v111;
          result = sub_1D6706BB4(v112 + v111 * v226, v249, type metadata accessor for FormatSlotDefinitionItemSet);
          v210 = v115;
          if (v115 == v109)
          {
            goto LABEL_147;
          }

          v116 = v209 + v113;
          v117 = v234;
          sub_1D6706BB4(v116, v234, type metadata accessor for FormatSlotDefinitionItemSet);
          if (*v114 != *v117)
          {
            goto LABEL_130;
          }

          if (*(v249 + 4) != *(v234 + 1))
          {
            goto LABEL_130;
          }

          if ((sub_1D5E1EFE4(*(v249 + 8), *(v234 + 1)) & 1) == 0)
          {
            goto LABEL_130;
          }

          v118 = *(v249 + 16);
          v119 = *(v234 + 2);
          v120 = *(v118 + 16);
          if (v120 != *(v119 + 16))
          {
            goto LABEL_130;
          }

          if (v120 && v118 != v119)
          {
            break;
          }

LABEL_60:
          v126 = v249;
          v128 = *(v249 + 24);
          v127 = *(v249 + 32);
          v129 = *(v234 + 3);
          v130 = *(v234 + 4);
          v212 = v130;
          v211 = v129;
          if (v128)
          {
            if (!v129)
            {
              sub_1D5D615EC(v128, v127);
              sub_1D5D615EC(0, v130);
              sub_1D5D615EC(v128, v127);

              v200 = 0;
LABEL_143:
              sub_1D5CDE22C(v128, v127);
              sub_1D5CDE22C(v200, v130);
              goto LABEL_130;
            }

            v131 = *(v128 + 16);
            v72 = v131 == *(v129 + 16);
            v208 = v127;
            v205 = v128;
            if (!v72)
            {
              sub_1D5D615EC(v128, v127);
              sub_1D5D615EC(v129, v130);
              sub_1D5D615EC(v128, v127);
LABEL_129:
              sub_1D5CDE22C(v211, v212);
              v201 = v208;

              v202 = v205;

              sub_1D5CDE22C(v202, v201);
              v83 = v235;
              goto LABEL_130;
            }

            if (v131)
            {
              v132 = *(v252 + 80);
              sub_1D5D615EC(v128, v127);
              v133 = v128;
              if (v128 != v211)
              {
                v134 = (v132 + 32) & ~v132;
                v135 = v128;
                v136 = v128 + v134;
                v137 = v130;
                v138 = v211 + v134;
                sub_1D5D615EC(v211, v137);
                sub_1D5D615EC(v135, v127);
                v139 = *(v252 + 72);
                while (1)
                {
                  sub_1D6706BB4(v136, v34, type metadata accessor for FormatPropertyDefinition);
                  sub_1D6706BB4(v138, v30, type metadata accessor for FormatPropertyDefinition);
                  v140 = static FormatPropertyDefinition.== infix(_:_:)(v34, v30);
                  sub_1D5D2CFE8(v30, type metadata accessor for FormatPropertyDefinition);
                  sub_1D5D2CFE8(v34, type metadata accessor for FormatPropertyDefinition);
                  if ((v140 & 1) == 0)
                  {
                    goto LABEL_129;
                  }

                  v138 += v139;
                  v136 += v139;
                  if (!--v131)
                  {
                    goto LABEL_74;
                  }
                }
              }
            }

            else
            {
              sub_1D5D615EC(v128, v127);
              v133 = v211;
            }

            sub_1D5D615EC(v133, v130);
            sub_1D5D615EC(v128, v127);
LABEL_74:
            v144 = *(v208 + 16);
            if (v144 != *(v212 + 16))
            {
              goto LABEL_129;
            }

            if (v144)
            {
              v145 = v208;
              v146 = v208;
              v142 = v238;
              v141 = v239;
              v147 = v242;
              if (v208 != v212)
              {
                v148 = v208 + v213;
                v149 = v212 + v213;
                while (1)
                {
                  sub_1D6706BB4(v148, v147, type metadata accessor for FormatSlotDefinitionItemSet);
                  v150 = v241;
                  sub_1D6706BB4(v149, v241, type metadata accessor for FormatSlotDefinitionItemSet);
                  v151 = static FormatSlotDefinitionItemSet.== infix(_:_:)(v147, v150);
                  sub_1D5D2CFE8(v150, type metadata accessor for FormatSlotDefinitionItemSet);
                  sub_1D5D2CFE8(v147, type metadata accessor for FormatSlotDefinitionItemSet);
                  if ((v151 & 1) == 0)
                  {
                    goto LABEL_129;
                  }

                  v149 += v226;
                  v148 += v226;
                  --v144;
                  v147 = v242;
                  if (!v144)
                  {
                    goto LABEL_80;
                  }
                }
              }
            }

            else
            {
LABEL_80:
              v146 = v212;
              v142 = v238;
              v141 = v239;
              v145 = v208;
            }

            sub_1D5CDE22C(v211, v146);

            v143 = v205;

            v126 = v249;
            v83 = v235;
            v127 = v145;
          }

          else
          {
            sub_1D5D615EC(0, v127);
            v142 = v238;
            v141 = v239;
            if (v211)
            {
              v130 = v212;
              v200 = v211;
              sub_1D5D615EC(v211, v212);
              v128 = 0;
              goto LABEL_143;
            }

            sub_1D5D615EC(0, v212);
            v143 = 0;
          }

          sub_1D5CDE22C(v143, v127);
          v152 = *(v244 + 36);
          v153 = *(v248 + 48);
          v154 = MEMORY[0x1E69D6A58];
          sub_1D5CDE2EC(v126 + v152, v141, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
          sub_1D5CDE2EC(&v234[v152], v141 + v153, &qword_1EDF45AD0, v154);
          v155 = *v232;
          v156 = v233;
          if ((*v232)(v141, 1, v233) == 1)
          {
            v157 = v155(v141 + v153, 1, v156);
            v81 = v237;
            if (v157 != 1)
            {
              goto LABEL_141;
            }

            sub_1D5D35558(v141, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720], sub_1D5B5BF78);
            sub_1D5D2CFE8(v234, type metadata accessor for FormatSlotDefinitionItemSet);
            sub_1D5D2CFE8(v249, type metadata accessor for FormatSlotDefinitionItemSet);
            v109 = v207;
          }

          else
          {
            sub_1D5CDE2EC(v141, v142, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
            v159 = v155(v141 + v153, 1, v156);
            v81 = v237;
            if (v159 == 1)
            {
              goto LABEL_140;
            }

            v160 = v141 + v153;
            v161 = v243;
            (*v228)(v243, v160, v156);
            sub_1D5B58B84(&qword_1EC881E90, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A68]);
            LODWORD(v212) = sub_1D7261FBC();
            v162 = *v229;
            (*v229)(v161, v156);
            v162(v142, v156);
            sub_1D5D35558(v239, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720], sub_1D5B5BF78);
            sub_1D5D2CFE8(v234, type metadata accessor for FormatSlotDefinitionItemSet);
            sub_1D5D2CFE8(v249, type metadata accessor for FormatSlotDefinitionItemSet);
            v109 = v207;
            if ((v212 & 1) == 0)
            {
              goto LABEL_131;
            }
          }

          v111 = v210 + 1;
          v108 = v245;
          v107 = v246;
          v92 = v221;
          v94 = v220;
          v112 = v206;
          if (v210 + 1 == v109)
          {
            v110 = v230;
            goto LABEL_90;
          }
        }

        v121 = (*(v252 + 80) + 32) & ~*(v252 + 80);
        v122 = v118 + v121;
        v123 = v119 + v121;
        v124 = *(v252 + 72);
        while (1)
        {
          sub_1D6706BB4(v122, v34, type metadata accessor for FormatPropertyDefinition);
          sub_1D6706BB4(v123, v30, type metadata accessor for FormatPropertyDefinition);
          v125 = static FormatPropertyDefinition.== infix(_:_:)(v34, v30);
          sub_1D5D2CFE8(v30, type metadata accessor for FormatPropertyDefinition);
          sub_1D5D2CFE8(v34, type metadata accessor for FormatPropertyDefinition);
          if ((v125 & 1) == 0)
          {
            goto LABEL_130;
          }

          v123 += v124;
          v122 += v124;
          if (!--v120)
          {
            goto LABEL_60;
          }
        }
      }
    }

    else
    {
      v110 = v230;
      v108 = v245;
      v107 = v246;
      v92 = v221;
      v94 = v220;
    }

LABEL_90:
    sub_1D5CDE22C(v214, v110);

LABEL_91:
    sub_1D5CDE22C(v94, v92);
    v163 = *(v244 + 36);
    v164 = *(v248 + 48);
    v165 = MEMORY[0x1E69D6A58];
    sub_1D5CDE2EC(&v237[v163], v108, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    sub_1D5CDE2EC(v83 + v163, v108 + v164, &qword_1EDF45AD0, v165);
    v166 = *v232;
    v167 = v233;
    if ((*v232)(v108, 1, v233) != 1)
    {
      break;
    }

    v168 = v166(v108 + v164, 1, v167);
    v81 = v237;
    if (v168 != 1)
    {
      goto LABEL_127;
    }

    sub_1D5D35558(v108, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    sub_1D5D2CFE8(v235, type metadata accessor for FormatSlotDefinitionItemSet);
    result = sub_1D5D2CFE8(v81, type metadata accessor for FormatSlotDefinitionItemSet);
    v73 = v219;
    v74 = v218;
    v170 = v217;
LABEL_96:
    v76 = v222 + 1;
    v78 = v216;
    v79 = v215;
    if (v222 + 1 == v170)
    {
      goto LABEL_97;
    }
  }

  sub_1D5CDE2EC(v108, v107, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  if (v166(v108 + v164, 1, v167) != 1)
  {
    v171 = v107;
    v172 = v243;
    (*v228)(v243, v108 + v164, v167);
    sub_1D5B58B84(&qword_1EC881E90, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A68]);
    v173 = sub_1D7261FBC();
    v174 = *v229;
    (*v229)(v172, v167);
    v174(v171, v167);
    sub_1D5D35558(v108, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    sub_1D5D2CFE8(v235, type metadata accessor for FormatSlotDefinitionItemSet);
    result = sub_1D5D2CFE8(v237, type metadata accessor for FormatSlotDefinitionItemSet);
    v73 = v219;
    v74 = v218;
    v170 = v217;
    if ((v173 & 1) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_96;
  }

  (*v229)(v107, v167);
  v81 = v237;
LABEL_127:
  sub_1D66F4424(v108, &qword_1EDF3BA98, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], v169);
  v83 = v235;
LABEL_133:
  sub_1D5D2CFE8(v83, type metadata accessor for FormatSlotDefinitionItemSet);
  sub_1D5D2CFE8(v81, type metadata accessor for FormatSlotDefinitionItemSet);
LABEL_134:
  sub_1D5D2CFE8(v253, type metadata accessor for FormatSlotDefinition);
  sub_1D5D2CFE8(v251, type metadata accessor for FormatSlotDefinition);
  return 0;
}

uint64_t sub_1D63583EC(uint64_t a1, uint64_t a2)
{
  sub_1D5C30060(0, &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReference);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v20 - v11;
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16))
  {
    if (!v13 || a1 == a2)
    {
      v18 = 1;
    }

    else
    {
      v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v15 = a1 + v14;
      v16 = a2 + v14;
      v17 = *(v10 + 72);
      do
      {
        sub_1D665F27C(v15, v12, &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReference);
        sub_1D665F27C(v16, v7, &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReference);
        v18 = sub_1D6B1AB54(v12, v7);
        sub_1D66F4A30(v7);
        sub_1D66F4A30(v12);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v16 += v17;
        v15 += v17;
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_1D6358610(uint64_t a1, uint64_t a2)
{
  sub_1D5C30060(0, &qword_1EDF2C890, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatFileReference);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v20 - v11;
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16))
  {
    if (!v13 || a1 == a2)
    {
      v18 = 1;
    }

    else
    {
      v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v15 = a1 + v14;
      v16 = a2 + v14;
      v17 = *(v10 + 72);
      do
      {
        sub_1D665F27C(v15, v12, &qword_1EDF2C890, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatFileReference);
        sub_1D665F27C(v16, v7, &qword_1EDF2C890, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatFileReference);
        v18 = sub_1D6B1B3A4(v12, v7);
        sub_1D66F4AC4(v7);
        sub_1D66F4AC4(v12);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v16 += v17;
        v15 += v17;
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_1D6358834(uint64_t a1, uint64_t a2)
{
  sub_1D5C30060(0, &qword_1EDF2C860, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatFileReference);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v20 - v11;
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16))
  {
    if (!v13 || a1 == a2)
    {
      v18 = 1;
    }

    else
    {
      v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v15 = a1 + v14;
      v16 = a2 + v14;
      v17 = *(v10 + 72);
      do
      {
        sub_1D665F27C(v15, v12, &qword_1EDF2C860, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatFileReference);
        sub_1D665F27C(v16, v7, &qword_1EDF2C860, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatFileReference);
        v18 = sub_1D6B1BB98(v12, v7);
        sub_1D66F4B58(v7);
        sub_1D66F4B58(v12);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v16 += v17;
        v15 += v17;
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_1D6358A58(uint64_t a1, uint64_t a2)
{
  sub_1D5C30060(0, &qword_1EDF2C878, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatFileReference);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v20 - v11;
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16))
  {
    if (!v13 || a1 == a2)
    {
      v18 = 1;
    }

    else
    {
      v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v15 = a1 + v14;
      v16 = a2 + v14;
      v17 = *(v10 + 72);
      do
      {
        sub_1D665F27C(v15, v12, &qword_1EDF2C878, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatFileReference);
        sub_1D665F27C(v16, v7, &qword_1EDF2C878, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatFileReference);
        v18 = sub_1D6B1C388(v12, v7);
        sub_1D66F4BEC(v7);
        sub_1D66F4BEC(v12);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v16 += v17;
        v15 += v17;
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_1D6358CD0(uint64_t a1, uint64_t a2)
{
  sub_1D5C30060(0, &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReference);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v20 - v11;
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16))
  {
    if (!v13 || a1 == a2)
    {
      v18 = 1;
    }

    else
    {
      v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v15 = a1 + v14;
      v16 = a2 + v14;
      v17 = *(v10 + 72);
      do
      {
        sub_1D665F27C(v15, v12, &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReference);
        sub_1D665F27C(v16, v7, &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReference);
        v18 = sub_1D6B1D1D4(v12, v7);
        sub_1D66F4C80(v7);
        sub_1D66F4C80(v12);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v16 += v17;
        v15 += v17;
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_1D6358EF4(uint64_t a1, uint64_t a2)
{
  sub_1D5C30060(0, &unk_1EDF2C868, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatFileReference);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v20 - v11;
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16))
  {
    if (!v13 || a1 == a2)
    {
      v18 = 1;
    }

    else
    {
      v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v15 = a1 + v14;
      v16 = a2 + v14;
      v17 = *(v10 + 72);
      do
      {
        sub_1D665F27C(v15, v12, &unk_1EDF2C868, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatFileReference);
        sub_1D665F27C(v16, v7, &unk_1EDF2C868, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatFileReference);
        v18 = sub_1D6B1DA8C(v12, v7);
        sub_1D66F4D14(v7);
        sub_1D66F4D14(v12);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v16 += v17;
        v15 += v17;
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_1D6359118(uint64_t a1, uint64_t a2)
{
  sub_1D5C30060(0, &unk_1EDF2C850, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatFileReference);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v20 - v11;
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16))
  {
    if (!v13 || a1 == a2)
    {
      v18 = 1;
    }

    else
    {
      v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v15 = a1 + v14;
      v16 = a2 + v14;
      v17 = *(v10 + 72);
      do
      {
        sub_1D665F27C(v15, v12, &unk_1EDF2C850, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatFileReference);
        sub_1D665F27C(v16, v7, &unk_1EDF2C850, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatFileReference);
        v18 = sub_1D6B1E2A8(v12, v7);
        sub_1D66F4DA8(v7);
        sub_1D66F4DA8(v12);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v16 += v17;
        v15 += v17;
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

void sub_1D6359368(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *, uint64_t *))
{
  v3 = *(a1 + 16);
  if (v3 == *(a2 + 16) && v3 && a1 != a2)
  {
    v5 = (a1 + 32);
    v6 = (a2 + 32);
    do
    {
      v7 = *v5++;
      v11 = v7;
      v8 = *v6++;
      v10 = v8;

      v9 = a3(&v11, &v10);

      --v3;
    }

    while ((v9 & 1) != 0 && v3);
  }
}

void sub_1D6359438(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = 0;
    v4 = a1 + 32;
    v5 = a2 + 32;
    v56 = a1 + 32;
    v57 = *(a1 + 16);
    while (1)
    {
      if (v3 == v2)
      {
        __break(1u);
        __break(1u);
        return;
      }

      v8 = (v4 + 24 * v3);
      v9 = *v8;
      v10 = v8[1];
      v6 = v8[2];
      v11 = (v5 + 24 * v3);
      v12 = v11[2];
      v13 = v9 == *v11 && v10 == v11[1];
      if (!v13 && (sub_1D72646CC() & 1) == 0)
      {
        return;
      }

      v14 = v6 >> 62;
      if ((v6 >> 62) > 1)
      {
        break;
      }

      if (!v14)
      {
        if (v12 >> 62)
        {
          goto LABEL_71;
        }

        v15 = v5;
        v16 = v4;
        v17 = *(v6 + 16);
        v18 = *(v12 + 16);
        v19 = *(v17 + 16);
        if (v19 != *(v18 + 16))
        {

          sub_1D5F33D5C(v6);

          sub_1D5F33D5C(v12);
          sub_1D5F33D5C(v12);
          sub_1D5F33D5C(v6);
          goto LABEL_68;
        }

        if (v19)
        {

          sub_1D5F33D5C(v6);

          sub_1D5F33D5C(v12);
          sub_1D5F33D5C(v12);
          sub_1D5F33D5C(v6);
          if (v17 != v18)
          {

            v20 = 32;
            while (1)
            {
              v63 = *(v17 + v20);
              v61 = *(v18 + v20);

              v21 = static FormatColor.== infix(_:_:)(&v63, &v61);

              if ((v21 & 1) == 0)
              {
                break;
              }

              v20 += 8;
              if (!--v19)
              {

                goto LABEL_52;
              }
            }

            goto LABEL_68;
          }
        }

        else
        {

          sub_1D5F33D5C(v6);

          sub_1D5F33D5C(v12);
          sub_1D5F33D5C(v12);
          sub_1D5F33D5C(v6);
        }

LABEL_52:
        sub_1D5F33D8C(v6);
        sub_1D5F33D8C(v12);

        sub_1D5F33D8C(v12);

        v4 = v16;
        v5 = v15;
        v2 = v57;
LABEL_8:
        sub_1D5F33D8C(v6);
        goto LABEL_9;
      }

      if (v12 >> 62 != 1)
      {
LABEL_71:
        sub_1D5F33D5C(v12);
        sub_1D5F33D5C(v6);
        v48 = v6;
LABEL_72:
        sub_1D5F33D8C(v48);
        v6 = v12;
        goto LABEL_73;
      }

      v33 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v63 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v61 = v33;

      sub_1D5F33D5C(v6);

      sub_1D5F33D5C(v12);
      sub_1D5F33D5C(v12);
      sub_1D5F33D5C(v6);
      v34 = static FormatColor.== infix(_:_:)(&v63, &v61);
      sub_1D5F33D8C(v6);
      sub_1D5F33D8C(v12);

      sub_1D5F33D8C(v12);

      sub_1D5F33D8C(v6);
      if ((v34 & 1) == 0)
      {
        return;
      }

LABEL_9:
      if (++v3 == v2)
      {
        return;
      }
    }

    if (v14 != 2)
    {
      if (v6 == 0xC000000000000000)
      {
        if (v12 != 0xC000000000000000)
        {
          sub_1D5F33D5C(v12);
          v48 = 0xC000000000000000;
          goto LABEL_72;
        }

        v6 = 0xC000000000000000;
        v7 = 0xC000000000000000;
      }

      else
      {
        v6 = 0xC000000000000008;
        if (v12 != 0xC000000000000008)
        {
          sub_1D5F33D5C(v12);
          v48 = 0xC000000000000008;
          goto LABEL_72;
        }

        v7 = 0xC000000000000008;
      }

      sub_1D5F33D8C(v7);
      goto LABEL_8;
    }

    if (v12 >> 62 != 2)
    {
      goto LABEL_71;
    }

    v22 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v59 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v60 = v22;
    v24 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v23 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v25 = v22 >> 62;
    if ((v22 >> 62) > 1)
    {
      v58 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      if (v25 != 2)
      {

        sub_1D5F33D5C(v6);

        sub_1D5F33D5C(v12);
        sub_1D5F33D5C(v12);
        sub_1D5F33D5C(v6);
        if (v60 == 0xC000000000000000)
        {
          if (v24 != 0xC000000000000000)
          {
            sub_1D5F33D5C(v24);
            v51 = 0xC000000000000000;
LABEL_83:
            sub_1D5F33D8C(v51);
            sub_1D5F33D8C(v24);
LABEL_68:
            sub_1D5F33D8C(v6);
            sub_1D5F33D8C(v12);
LABEL_69:

            sub_1D5F33D8C(v12);
LABEL_70:

LABEL_73:
            sub_1D5F33D8C(v6);
            return;
          }

          sub_1D5F33D5C(0xC000000000000000);

          sub_1D5F33D8C(0xC000000000000000);
          v45 = 0xC000000000000000;
        }

        else
        {
          if (v24 != 0xC000000000000008)
          {
            sub_1D5F33D5C(v24);
            v51 = 0xC000000000000008;
            goto LABEL_83;
          }

          sub_1D5F33D5C(0xC000000000000008);

          sub_1D5F33D8C(0xC000000000000008);
          v45 = 0xC000000000000008;
        }

        sub_1D5F33D8C(v45);
        v29 = v24;
        goto LABEL_63;
      }

      if (v24 >> 62 != 2)
      {

        sub_1D5F33D5C(v6);

        sub_1D5F33D5C(v12);
        sub_1D5F33D5C(v12);
        sub_1D5F33D5C(v6);
        sub_1D5F33D5C(v24);
        v50 = v60;
        goto LABEL_82;
      }

      v55 = v5;
      v35 = *((v22 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v37 = *((v24 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v36 = *((v24 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v63 = *((v22 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v64 = v35;
      v61 = v37;
      v62 = v36;

      sub_1D5F33D5C(v6);

      sub_1D5F33D5C(v12);
      sub_1D5F33D5C(v12);
      sub_1D5F33D5C(v6);
      sub_1D5F33D5C(v24);

      sub_1D5F33D5C(v24);
      sub_1D5F33D5C(v60);
      sub_1D5F33D5C(v37);

      if ((static FormatSymbolImageColor.== infix(_:_:)(&v63, &v61) & 1) == 0)
      {
        sub_1D5F33D8C(v37);

        sub_1D5F33D8C(v60);
        sub_1D5F33D8C(v24);
LABEL_85:
        sub_1D5F33D8C(v24);

        sub_1D5F33D8C(v6);
        sub_1D5F33D8C(v12);

        sub_1D5F33D8C(v12);
        goto LABEL_70;
      }

      v38 = v64;
      v39 = v24;
      v40 = v62;

      sub_1D6359438(v38, v40);
      v53 = v41;

      v24 = v39;

      sub_1D5F33D8C(v37);

      sub_1D5F33D8C(v60);
      sub_1D5F33D8C(v39);
      if ((v53 & 1) == 0)
      {
        goto LABEL_85;
      }

      v29 = v39;
      v5 = v55;
LABEL_49:
      v2 = v57;
    }

    else
    {
      if (v25)
      {
        if (v24 >> 62 != 1)
        {
LABEL_80:
          v50 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

          sub_1D5F33D5C(v6);

          sub_1D5F33D5C(v12);
          sub_1D5F33D5C(v12);
          sub_1D5F33D5C(v6);
          sub_1D5F33D5C(v24);
LABEL_82:
          sub_1D5F33D5C(v50);
          v51 = v50;
          goto LABEL_83;
        }

        v42 = *((v24 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v63 = *((v22 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v61 = v42;
        v43 = v22;

        sub_1D5F33D5C(v6);

        sub_1D5F33D5C(v12);
        sub_1D5F33D5C(v12);
        sub_1D5F33D5C(v6);
        sub_1D5F33D5C(v24);

        sub_1D5F33D5C(v24);
        sub_1D5F33D5C(v43);
        v29 = v24;
        v44 = static FormatColor.== infix(_:_:)(&v63, &v61);
        sub_1D5F33D8C(v60);
        sub_1D5F33D8C(v24);
        if ((v44 & 1) == 0)
        {
          sub_1D5F33D8C(v24);

          sub_1D5F33D8C(v6);
          sub_1D5F33D8C(v12);
          goto LABEL_69;
        }

        goto LABEL_63;
      }

      if (v24 >> 62)
      {
        goto LABEL_80;
      }

      v58 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v26 = *(v22 + 16);
      v54 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v27 = *(v24 + 16);
      v28 = *(v26 + 16);
      if (v28 != *(v27 + 16))
      {
        v52 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

        sub_1D5F33D5C(v6);

        sub_1D5F33D5C(v12);
        sub_1D5F33D5C(v12);
        sub_1D5F33D5C(v6);
        v49 = v54;
        sub_1D5F33D5C(v54);

        sub_1D5F33D5C(v54);
        sub_1D5F33D5C(v52);
        goto LABEL_76;
      }

      if (!v28)
      {

        sub_1D5F33D5C(v6);

        sub_1D5F33D5C(v12);
        sub_1D5F33D5C(v12);
        sub_1D5F33D5C(v6);
        v29 = v54;
        sub_1D5F33D5C(v54);
        v23 = v58;

        sub_1D5F33D5C(v54);
        sub_1D5F33D5C(v60);
        sub_1D5F33D8C(v60);
        sub_1D5F33D8C(v54);
LABEL_63:

        sub_1D6359438(v59, v23);
        v47 = v46;

        sub_1D5F33D8C(v29);

        sub_1D5F33D8C(v6);
        sub_1D5F33D8C(v12);

        sub_1D5F33D8C(v12);

        sub_1D5F33D8C(v6);
        v4 = v56;
        if ((v47 & 1) == 0)
        {
          return;
        }

        goto LABEL_9;
      }

      sub_1D5F33D5C(v6);

      sub_1D5F33D5C(v12);
      sub_1D5F33D5C(v12);
      sub_1D5F33D5C(v6);
      v29 = v54;
      sub_1D5F33D5C(v54);

      sub_1D5F33D5C(v54);
      sub_1D5F33D5C(v60);
      if (v26 != v27)
      {
        v30 = v5;

        v31 = 32;
        while (1)
        {
          v63 = *(v26 + v31);
          v61 = *(v27 + v31);

          v32 = static FormatColor.== infix(_:_:)(&v63, &v61);

          if ((v32 & 1) == 0)
          {
            break;
          }

          v31 += 8;
          if (!--v28)
          {

            sub_1D5F33D8C(v60);
            v29 = v54;
            sub_1D5F33D8C(v54);
            v5 = v30;
            goto LABEL_49;
          }
        }

        v49 = v54;
LABEL_76:
        sub_1D5F33D8C(v60);
        sub_1D5F33D8C(v49);
        sub_1D5F33D8C(v49);

        sub_1D5F33D8C(v6);
        sub_1D5F33D8C(v12);
        goto LABEL_69;
      }

      sub_1D5F33D8C(v60);
      sub_1D5F33D8C(v54);
    }

    v23 = v58;
    goto LABEL_63;
  }
}

void sub_1D6359F3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *, void *))
{
  v3 = *(a1 + 16);
  if (v3 != *(a2 + 16) || !v3 || a1 == a2)
  {
    return;
  }

  v4 = 0;
  while (1)
  {
    v6 = *(a1 + v4 + 32);
    v5 = *(a1 + v4 + 40);
    v7 = *(a1 + v4 + 48);
    v8 = *(a1 + v4 + 56);
    v10 = *(a2 + v4 + 32);
    v9 = *(a2 + v4 + 40);
    v11 = *(a2 + v4 + 48);
    v12 = *(a2 + v4 + 56);
    v25[1] = v6;
    v25[2] = v5;
    v26 = v7;
    v27 = v8;
    v25[0] = v12;
    v24 = v11;
    if (v7)
    {
      if (v7 == 1)
      {
        if (v11 == 1)
        {
          sub_1D5D03180(v6, v5, 1);

          sub_1D5D03180(v10, v9, 1);

          sub_1D5D07BA8(v6, v5, 1);
          sub_1D5D07BA8(v10, v9, 1);
          if ((v10 ^ v6))
          {
            sub_1D5D07BA8(v10, v9, 1);

            v18 = v6;
            v19 = v5;
            v20 = 1;
            goto LABEL_28;
          }

          goto LABEL_18;
        }

        sub_1D5D03180(v10, v9, v11);
        v15 = v6;
        v16 = v5;
        v17 = 1;
LABEL_26:
        sub_1D5D07BA8(v15, v16, v17);
        sub_1D5D07BA8(v10, v9, v11);
        return;
      }

      if (v11 != 2)
      {
        sub_1D5D03180(v10, v9, v11);
        v15 = v6;
        v16 = v5;
        v17 = 2;
        goto LABEL_26;
      }

      sub_1D5D03180(v6, v5, 2);

      sub_1D5D03180(v10, v9, 2);

      sub_1D5D07BA8(v6, v5, 2);
      sub_1D5D07BA8(v10, v9, 2);
      if (v6 != v10)
      {
        sub_1D5D07BA8(v10, v9, 2);

        v18 = v6;
        v19 = v5;
        v20 = 2;
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    if (v11)
    {
      sub_1D5D03180(v10, v9, v11);
      sub_1D5D03180(v6, v5, 0);
      v15 = v6;
      v16 = v5;
      v17 = 0;
      goto LABEL_26;
    }

    if (v6 == v10 && v5 == v9)
    {
      sub_1D5D03180(v6, v5, 0);

      sub_1D5D03180(v6, v5, 0);

      sub_1D5D03180(v6, v5, 0);
      sub_1D5D03180(v6, v5, 0);
      sub_1D5D07BA8(v6, v5, 0);
      sub_1D5D07BA8(v6, v5, 0);
      goto LABEL_18;
    }

    v13 = sub_1D72646CC();
    sub_1D5D03180(v6, v5, 0);

    sub_1D5D03180(v10, v9, 0);

    sub_1D5D03180(v10, v9, 0);
    sub_1D5D03180(v6, v5, 0);
    sub_1D5D07BA8(v6, v5, 0);
    sub_1D5D07BA8(v10, v9, 0);
    if ((v13 & 1) == 0)
    {
      break;
    }

LABEL_18:
    v14 = a3(&v27, v25);
    sub_1D5D07BA8(v10, v9, v24);

    sub_1D5D07BA8(v6, v5, v7);

    if (v14)
    {
      v4 += 32;
      if (--v3)
      {
        continue;
      }
    }

    return;
  }

  sub_1D5D07BA8(v10, v9, 0);

  v18 = v6;
  v19 = v5;
  v20 = 0;
LABEL_28:
  sub_1D5D07BA8(v18, v19, v20);
}

uint64_t sub_1D635A390(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_1D635A3EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v5 = *v4;
      v6 = *v3;
      v7 = *(v4 - 2) == *(v3 - 2) && *(v4 - 1) == *(v3 - 1);
      if (!v7 && (sub_1D72646CC() & 1) == 0)
      {
        break;
      }

      if (v5)
      {
        v8 = 0x746C7561666564;
      }

      else
      {
        v8 = 1685217635;
      }

      if (v5)
      {
        v9 = 0xE700000000000000;
      }

      else
      {
        v9 = 0xE400000000000000;
      }

      if (v6)
      {
        v10 = 0x746C7561666564;
      }

      else
      {
        v10 = 1685217635;
      }

      if (v6)
      {
        v11 = 0xE700000000000000;
      }

      else
      {
        v11 = 0xE400000000000000;
      }

      if (v8 == v10 && v9 == v11)
      {
      }

      else
      {
        v13 = sub_1D72646CC();

        if ((v13 & 1) == 0)
        {
          return;
        }
      }

      v3 += 24;
      v4 += 24;
      --v2;
    }

    while (v2);
  }
}

BOOL sub_1D635A518(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    else
    {
      v3 = (a2 + 48);
      v4 = (a1 + 48);
      do
      {
        v5 = *(v4 - 1);
        v6 = *v4;
        v15 = *(v4 - 2);
        v16 = v5;
        v17 = v6;
        v8 = *(v3 - 1);
        v12 = *(v3 - 2);
        v7 = v12;
        v13 = v8;
        v14 = *v3;
        v9 = v14;
        sub_1D66F4990(v15, v5, v6);
        sub_1D66F4990(v7, v8, v9);
        v10 = _s8NewsFeed22FormatGroupRequirementO2eeoiySbAC_ACtFZ_0(&v15, &v12);
        sub_1D62B7514(v12, v13, v14);
        sub_1D62B7514(v15, v16, v17);
        if (!v10)
        {
          break;
        }

        v4 += 24;
        v3 += 24;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    return 0;
  }

  return v10;
}

void sub_1D635A604(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16) || !v2 || a1 == a2)
  {
    return;
  }

  v3 = (a1 + 64);
  for (i = (a2 + 64); ; i += 5)
  {
    v9 = *(v3 - 4);
    v8 = *(v3 - 3);
    v10 = *(v3 - 1);
    v11 = *(i - 4);
    v12 = *(i - 3);
    v13 = *(i - 16);
    v34 = *i;
    v35 = *v3;
    v32 = *(v3 - 16);
    v33 = *(i - 16);
    v31 = *(i - 1);
    if (v32)
    {
      break;
    }

    if (*(i - 16))
    {
      sub_1D5D03180(v11, v12, v13);
      sub_1D5D03180(v9, v8, 0);
      v23 = v9;
      v24 = v8;
      v25 = 0;
      goto LABEL_31;
    }

    v20 = v9 == v11 && v8 == v12;
    v30 = *(i - 4);
    v21 = *(v3 - 3);
    if (v20)
    {
      sub_1D5D03180(v9, v8, 0);

      sub_1D5D03180(v9, v8, 0);
      v15 = v34;

      sub_1D5D03180(v9, v8, 0);
      sub_1D5D03180(v9, v8, 0);
      sub_1D5D07BA8(v9, v8, 0);
      v17 = v9;
      v16 = v21;
      sub_1D5D07BA8(v9, v21, 0);
      v19 = v30;
    }

    else
    {
      v29 = sub_1D72646CC();
      sub_1D5D03180(v9, v8, 0);

      sub_1D5D03180(v11, v12, 0);
      v15 = v34;

      sub_1D5D03180(v11, v12, 0);
      sub_1D5D03180(v9, v8, 0);
      v17 = v9;
      v16 = v21;
      sub_1D5D07BA8(v9, v21, 0);
      v19 = v30;
      sub_1D5D07BA8(v30, v12, 0);
      if ((v29 & 1) == 0)
      {
        sub_1D5D07BA8(v30, v12, 0);

        v26 = v17;
        v27 = v21;
        v28 = 0;
        goto LABEL_32;
      }
    }

LABEL_23:
    if (v10 == v31 && v35 == v15)
    {
      sub_1D5D07BA8(v19, v12, v33);

      sub_1D5D07BA8(v17, v16, v32);
    }

    else
    {
      v5 = sub_1D72646CC();
      v6 = v12;
      v7 = v5;
      sub_1D5D07BA8(v19, v6, v33);

      sub_1D5D07BA8(v17, v16, v32);

      if ((v7 & 1) == 0)
      {
        return;
      }
    }

    v3 += 5;
    if (!--v2)
    {
      return;
    }
  }

  if (*(v3 - 16) == 1)
  {
    if (v13 != 1)
    {
      sub_1D5D03180(v11, v12, v13);
      v23 = v9;
      v24 = v8;
      v25 = 1;
      goto LABEL_31;
    }

    sub_1D5D03180(v9, v8, 1);

    v14 = v11;
    sub_1D5D03180(v11, v12, 1);
    v15 = v34;

    v16 = v8;
    sub_1D5D07BA8(v9, v8, 1);
    sub_1D5D07BA8(v14, v12, 1);
    v17 = v9;
    v18 = v14 ^ v9;
    v19 = v14;
    if (v18)
    {
      sub_1D5D07BA8(v14, v12, 1);

      v26 = v17;
      v27 = v16;
      v28 = 1;
      goto LABEL_32;
    }

    goto LABEL_23;
  }

  if (v13 != 2)
  {
    sub_1D5D03180(v11, v12, v13);
    v23 = v9;
    v24 = v8;
    v25 = 2;
LABEL_31:
    sub_1D5D07BA8(v23, v24, v25);
    sub_1D5D07BA8(v11, v12, v13);
    return;
  }

  sub_1D5D03180(v9, v8, 2);

  v22 = v11;
  sub_1D5D03180(v11, v12, 2);
  v15 = v34;

  v16 = v8;
  sub_1D5D07BA8(v9, v8, 2);
  sub_1D5D07BA8(v22, v12, 2);
  v17 = v9;
  v20 = v9 == v22;
  v19 = v22;
  if (v20)
  {
    goto LABEL_23;
  }

  sub_1D5D07BA8(v22, v12, 2);

  v26 = v17;
  v27 = v16;
  v28 = 2;
LABEL_32:
  sub_1D5D07BA8(v26, v27, v28);
}

void sub_1D635AA9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 64);
    v4 = (a2 + 64);
    do
    {
      v6 = *(v3 - 2);
      v12 = *(v3 - 1);
      v7 = *v3;
      v8 = *(v4 - 2);
      v9 = *(v4 - 1);
      v10 = *v4;
      v11 = *(v3 - 4) == *(v4 - 4) && *(v3 - 3) == *(v4 - 3);
      if (!v11 && (sub_1D72646CC() & 1) == 0)
      {
        break;
      }

      if ((sub_1D5BFC390(v6, v8) & 1) == 0)
      {

        return;
      }

      if (v12 == v9 && v7 == v10)
      {
      }

      else
      {
        v5 = sub_1D72646CC();

        if ((v5 & 1) == 0)
        {
          return;
        }
      }

      v3 += 5;
      v4 += 5;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_1D635AC6C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v17 = v2;
  v18 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    memcpy(__dst, v5, sizeof(__dst));
    memcpy(v12, v5, sizeof(v12));
    memcpy(v14, v6, sizeof(v14));
    memcpy(__src, v6, sizeof(__src));
    sub_1D5CFDDA0(__dst, v10);
    sub_1D5CFDDA0(v14, v10);
    v8 = _s8NewsFeed19FormatTextNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0(v12, __src);
    memcpy(v15, __src, sizeof(v15));
    sub_1D5CFF4CC(v15);
    memcpy(v16, v12, sizeof(v16));
    sub_1D5CFF4CC(v16);
    if ((v8 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 528;
    v5 += 528;
  }

  return 1;
}

uint64_t sub_1D635ADD8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t *, char *), void (*a5)(uint64_t, __n128))
{
  v5 = *(a1 + 16);
  if (v5 != *(a2 + 16))
  {
LABEL_11:
    v13 = 0;
    return v13 & 1;
  }

  if (v5 && a1 != a2)
  {
    v8 = (a2 + 32);
    v9 = (a1 + 40);
    while (1)
    {
      v11 = v9 + 2;
      v10 = *v9;
      v20 = *(v9 - 1);
      v21 = v10;
      v16 = *v8;
      v19 = v16;
      v18 = v20;
      v17 = v16;

      a3(v10);

      a3(*(&v16 + 1));

      v12 = static FormatExpression.== infix(_:_:)(&v18, &v17);

      if ((v12 & 1) == 0)
      {
        break;
      }

      v13 = a4(&v21, &v19 + 8);

      (a5)(*(&v16 + 1));

      (a5)(v10);
      if (v13)
      {
        ++v8;
        v9 = v11;
        if (--v5)
        {
          continue;
        }
      }

      return v13 & 1;
    }

    (a5)(*(&v16 + 1));

    (a5)(v10);
    goto LABEL_11;
  }

  v13 = 1;
  return v13 & 1;
}

void sub_1D635AF88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *v4++;

      v8 = sub_1D6EEB7F0(v5, v7);

      if ((v8 & 1) == 0)
      {
        break;
      }

      --v2;
    }

    while (v2);
  }
}

void sub_1D635B040(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      if (v6 <= 1)
      {
        if (*v3)
        {
          v7 = 0x7466654C706F74;
        }

        else
        {
          v7 = 7105633;
        }

        if (*v3)
        {
          v8 = 0xE700000000000000;
        }

        else
        {
          v8 = 0xE300000000000000;
        }
      }

      else if (v6 == 2)
      {
        v8 = 0xE800000000000000;
        v7 = 0x7468676952706F74;
      }

      else if (v6 == 3)
      {
        v7 = 0x654C6D6F74746F62;
        v8 = 0xEA00000000007466;
      }

      else
      {
        v7 = 0x69526D6F74746F62;
        v8 = 0xEB00000000746867;
      }

      v9 = *v4;
      if (v9 <= 1)
      {
        if (*v4)
        {
          v11 = 0x7466654C706F74;
        }

        else
        {
          v11 = 7105633;
        }

        if (*v4)
        {
          v10 = 0xE700000000000000;
        }

        else
        {
          v10 = 0xE300000000000000;
        }

        if (v7 != v11)
        {
LABEL_5:
          v5 = sub_1D72646CC();

          if ((v5 & 1) == 0)
          {
            return;
          }

          goto LABEL_6;
        }
      }

      else if (v9 == 2)
      {
        v10 = 0xE800000000000000;
        if (v7 != 0x7468676952706F74)
        {
          goto LABEL_5;
        }
      }

      else if (v9 == 3)
      {
        v10 = 0xEA00000000007466;
        if (v7 != 0x654C6D6F74746F62)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v10 = 0xEB00000000746867;
        if (v7 != 0x69526D6F74746F62)
        {
          goto LABEL_5;
        }
      }

      if (v8 != v10)
      {
        goto LABEL_5;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_1D635B244(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0) - 8;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v27 - v18;
  v20 = *(a1 + 16);
  if (v20 == *(a2 + 16))
  {
    if (!v20 || a1 == a2)
    {
      v25 = 1;
    }

    else
    {
      v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v22 = a1 + v21;
      v23 = a2 + v21;
      v24 = *(v17 + 72);
      do
      {
        sub_1D6706BB4(v22, v19, a4);
        sub_1D6706BB4(v23, v14, a4);
        v25 = a5(v19, v14);
        sub_1D5D2CFE8(v14, a6);
        sub_1D5D2CFE8(v19, a6);
        if ((v25 & 1) == 0)
        {
          break;
        }

        v23 += v24;
        v22 += v24;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v25 = 0;
  }

  return v25 & 1;
}

uint64_t sub_1D635B3E4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v224 = v2;
  v225 = v3;
  v179 = (a2 + 32);
  v180 = (a1 + 32);
  for (i = v4 - 1; ; --i)
  {
    v6 = v180[3];
    v7 = v180[5];
    v213 = v180[4];
    *v214 = v7;
    *&v214[10] = *(v180 + 90);
    v8 = v180[1];
    v209 = *v180;
    v210 = v8;
    v9 = v180[3];
    v11 = *v180;
    v10 = v180[1];
    v211 = v180[2];
    v212 = v9;
    v12 = v179[1];
    v215 = *v179;
    v216 = v12;
    *&v220[10] = *(v179 + 90);
    v13 = v179[3];
    v14 = v179[5];
    v219 = v179[4];
    *v220 = v14;
    v15 = v179[3];
    v16 = *v179;
    v17 = v179[1];
    v217 = v179[2];
    v218 = v15;
    v221[0] = v11;
    v221[1] = v10;
    *(v222 + 10) = *(v180 + 90);
    v18 = v180[5];
    v221[4] = v213;
    v222[0] = v18;
    v221[2] = v211;
    v221[3] = v6;
    v222[2] = v16;
    v222[3] = v17;
    *(v223 + 10) = *(v179 + 90);
    v19 = v179[5];
    v222[6] = v219;
    v223[0] = v19;
    v222[4] = v217;
    v222[5] = v13;
    v20 = *(&v209 + 1);
    v21 = v209;
    v22 = v210;
    v23 = v211;
    v24 = (*&v214[24] >> 12) & 3;
    v25 = v212;
    if (!v24)
    {
      if ((*&v220[24] & 0x3000) != 0)
      {
        goto LABEL_85;
      }

      v43 = v216;
      v201 = v209;
      v202 = v210;
      v203 = v211;
      v204 = v212;
      v205 = v215;
      v206 = v216;
      v207 = v217;
      v208 = v218;
      if (v212 >> 14)
      {
        if (v212 >> 14 == 1)
        {
          if ((v218 & 0xC000) != 0x4000 || v209 != v215 && (sub_1D72646CC() & 1) == 0)
          {
LABEL_89:
            sub_1D60B2AC8(&v215, &v189);
            sub_1D60B2AC8(&v209, &v189);
            sub_1D60B2AC8(&v215, &v189);
            sub_1D60B2AC8(&v209, &v189);
            sub_1D60B2AC8(&v215, &v189);
            sub_1D60B2AC8(&v209, &v189);
            sub_1D60B2AC8(&v215, &v189);
            sub_1D60B2AC8(&v209, &v189);
            goto LABEL_95;
          }

          sub_1D60B2AC8(&v215, &v189);
          sub_1D60B2AC8(&v209, &v189);
          sub_1D60B2AC8(&v215, &v189);
          sub_1D60B2AC8(&v209, &v189);
          sub_1D60B2AC8(&v215, &v189);
          sub_1D60B2AC8(&v209, &v189);
          sub_1D60B2AC8(&v215, &v189);
          sub_1D60B2AC8(&v209, &v189);
          sub_1D60B2AC8(&v215, &v189);
          sub_1D60B2AC8(&v209, &v189);
          v44 = sub_1D6341C50(v22, v43);
        }

        else
        {
          if ((v218 & 0xC000) != 0x8000)
          {
            goto LABEL_89;
          }

          v185 = v209;
          v186 = v210;
          v187 = v211;
          v188 = v212 & 0x3FFF;
          v181 = v215;
          v182 = v216;
          v183 = v217;
          v184 = v218 & 0x3FFF;
          sub_1D60B2AC8(&v215, &v189);
          sub_1D60B2AC8(&v209, &v189);
          sub_1D60B2AC8(&v215, &v189);
          sub_1D60B2AC8(&v209, &v189);
          sub_1D60B2AC8(&v215, &v189);
          sub_1D60B2AC8(&v209, &v189);
          sub_1D60B2AC8(&v215, &v189);
          sub_1D60B2AC8(&v209, &v189);
          sub_1D60B2AC8(&v215, &v189);
          sub_1D60B2AC8(&v209, &v189);
          v44 = _s8NewsFeed21FormatTextNodeBindingO2eeoiySbAC_ACtFZ_0(&v185, &v181);
        }

        v62 = v44;
        sub_1D66AD7C0(&v201, &qword_1EC88A028, &type metadata for FormatString);
        sub_1D60B2A74(&v215);
        sub_1D60B2A74(&v209);
      }

      else
      {
        if (v218 >= 0x4000u)
        {
          goto LABEL_89;
        }

        if (v209 == v215)
        {
          sub_1D60B2AC8(&v215, &v189);
          sub_1D60B2AC8(&v209, &v189);
          sub_1D60B2AC8(&v215, &v189);
          sub_1D60B2AC8(&v209, &v189);
          sub_1D60B2AC8(&v215, &v189);
          sub_1D60B2AC8(&v209, &v189);
          sub_1D60B2AC8(&v215, &v189);
          sub_1D60B2AC8(&v209, &v189);
          sub_1D66AD7C0(&v201, &qword_1EC88A028, &type metadata for FormatString);
          sub_1D66AD7C0(v221, &qword_1EC88A020, &type metadata for FormatURLComponent);
          sub_1D60B2A74(&v215);
          sub_1D60B2A74(&v209);
          sub_1D60B2A74(&v215);
          sub_1D60B2A74(&v209);
          goto LABEL_81;
        }

        v62 = sub_1D72646CC();
        sub_1D60B2AC8(&v215, &v189);
        sub_1D60B2AC8(&v209, &v189);
        sub_1D60B2AC8(&v215, &v189);
        sub_1D60B2AC8(&v209, &v189);
        sub_1D60B2AC8(&v215, &v189);
        sub_1D60B2AC8(&v209, &v189);
        sub_1D60B2AC8(&v215, &v189);
        sub_1D60B2AC8(&v209, &v189);
        sub_1D66AD7C0(&v201, &qword_1EC88A028, &type metadata for FormatString);
      }

      sub_1D66AD7C0(v221, &qword_1EC88A020, &type metadata for FormatURLComponent);
      sub_1D60B2A74(&v215);
      sub_1D60B2A74(&v209);
      sub_1D60B2A74(&v215);
      sub_1D60B2A74(&v209);
      if ((v62 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_81;
    }

    v176 = *(&v212 + 1);
    v165 = v213;
    v161 = i;
    v178 = *&v214[8];
    v171 = *(&v210 + 1);
    v173 = *v214;
    v177 = *(&v213 + 1);
    v168 = v211;
    v162 = *&v214[24];
    if (v24 != 1)
    {
      break;
    }

    if ((*&v220[24] & 0x3000) != 0x1000)
    {
      goto LABEL_85;
    }

    v26 = *(&v215 + 1);
    v27 = v215;
    v28 = v216;
    v29 = *(&v217 + 1);
    *v153 = *(&v219 + 1);
    *&v153[8] = *v220;
    *&v155 = *(&v216 + 1);
    v158 = v219;
    v160 = *&v220[16];
    v30 = v218;
    v201 = v209;
    v202 = v210;
    v203 = v211;
    v204 = v212;
    v205 = v215;
    v206 = v216;
    v207 = v217;
    v208 = v218;
    *(&v155 + 1) = *(&v218 + 1);
    v143 = *&v220[24];
    v149 = v217;
    if (v212 >> 14)
    {
      v174 = v210;
      v166 = *(&v209 + 1);
      v139 = *(&v215 + 1);
      v141 = v218;
      v163 = v209;
      v145 = *(&v217 + 1);
      v147 = v216;
      v151 = v215;
      v156 = v212;
      v31 = v218 & 0xC000;
      if (v212 >> 14 == 1)
      {
        if (v31 != 0x4000)
        {
          goto LABEL_90;
        }

        v32 = v209;
        if (v209 != v215)
        {
          v33 = *(&v209 + 1);
          v34 = sub_1D72646CC();
          v20 = v33;
          if ((v34 & 1) == 0)
          {
            goto LABEL_91;
          }
        }

        v35 = v20;
        sub_1D60B2AC8(&v215, &v189);
        sub_1D60B2AC8(&v209, &v189);
        sub_1D5E1DA6C(v151, v26, v147, v155, v149, v29, v141);
        sub_1D5E1DA6C(v32, v35, v174, v171, v23, *(&v23 + 1), v25);
        sub_1D60B2AC8(&v215, &v189);
        sub_1D60B2AC8(&v209, &v189);
        sub_1D5E1DA6C(v151, v26, v147, v155, v149, v29, v141);
        sub_1D5E1DA6C(v163, v35, v174, v171, v23, *(&v23 + 1), v25);
        sub_1D60B2AC8(&v215, &v189);
        sub_1D60B2AC8(&v209, &v189);
        sub_1D5E1DA6C(v151, v139, v147, v155, v149, v29, v141);
        sub_1D5E1DA6C(v163, v166, v174, v171, v23, *(&v23 + 1), v25);
        v137 = sub_1D6341C50(v174, v147);
        sub_1D66AD7C0(&v201, &qword_1EC88A028, &type metadata for FormatString);
        sub_1D5E1DE98(v151, v139, v147, v155, v149, v145, v141);
        v36 = v156;
        sub_1D5E1DE98(v163, v166, v174, v171, v23, *(&v23 + 1), v156);
        sub_1D5E1DE98(v151, v139, v147, v155, v149, v145, v141);
        v37 = v163;
        v38 = v166;
        v39 = v174;
        v40 = v171;
        v42 = *(&v23 + 1);
        v41 = v23;
      }

      else
      {
        if (v31 != 0x8000)
        {
LABEL_90:
          v151 = v215;
          v147 = v216;
          v32 = v209;
          v141 = v218;
          v33 = *(&v209 + 1);
          v174 = v210;
LABEL_91:
          sub_1D60B2AC8(&v215, &v189);
          sub_1D60B2AC8(&v209, &v189);
          sub_1D60B2AC8(&v215, &v189);
          sub_1D60B2AC8(&v209, &v189);
          sub_1D60B2AC8(&v215, &v189);
          sub_1D60B2AC8(&v209, &v189);
          sub_1D5E1DA6C(v151, v26, v147, v155, v149, v29, v141);
          v135 = v32;
          v136 = v33;
          goto LABEL_94;
        }

        v185 = v209;
        v186 = v210;
        v187 = v211;
        v188 = v212 & 0x3FFF;
        v181 = v215;
        v182 = v216;
        v183 = v217;
        v184 = v218 & 0x3FFF;
        v60 = *(&v210 + 1);
        v61 = v217;
        sub_1D60B2AC8(&v215, &v189);
        sub_1D60B2AC8(&v209, &v189);
        sub_1D5E1DA6C(v27, v26, v28, v155, v61, v145, v30);
        sub_1D5E1DA6C(v21, v166, v174, v60, v23, *(&v23 + 1), v156);
        sub_1D60B2AC8(&v215, &v189);
        sub_1D60B2AC8(&v209, &v189);
        sub_1D5E1DA6C(v151, v26, v28, v155, v61, v145, v30);
        sub_1D5E1DA6C(v163, v166, v174, v171, v23, *(&v23 + 1), v156);
        sub_1D60B2AC8(&v215, &v189);
        sub_1D60B2AC8(&v209, &v189);
        sub_1D5E1DA6C(v151, v26, v147, v155, v149, v145, v141);
        sub_1D5E1DA6C(v163, v166, v174, v171, v23, *(&v23 + 1), v156);
        v137 = _s8NewsFeed21FormatTextNodeBindingO2eeoiySbAC_ACtFZ_0(&v185, &v181);
        sub_1D66AD7C0(&v201, &qword_1EC88A028, &type metadata for FormatString);
        sub_1D5E1DE98(v151, v139, v147, v155, v149, v145, v141);
        v36 = v156;
        sub_1D5E1DE98(v163, v166, v174, v171, v23, *(&v23 + 1), v156);
        sub_1D5E1DE98(v151, v139, v147, v155, v149, v145, v141);
        v37 = v163;
        v38 = v166;
        v39 = v174;
        v40 = v171;
        v42 = *(&v23 + 1);
        v41 = v23;
      }

      sub_1D5E1DE98(v37, v38, v39, v40, v41, v42, v36);
      if ((v137 & 1) == 0)
      {
        goto LABEL_97;
      }
    }

    else
    {
      if (v218 >= 0x4000u)
      {
        goto LABEL_90;
      }

      if (v209 == v215)
      {
        v59 = *(&v209 + 1);
        sub_1D60B2AC8(&v215, &v189);
        sub_1D60B2AC8(&v209, &v189);
        sub_1D60B2AC8(&v215, &v189);
        sub_1D60B2AC8(&v209, &v189);
        sub_1D60B2AC8(&v215, &v189);
        sub_1D60B2AC8(&v209, &v189);
        sub_1D5E1DA6C(v21, v59, v28, v155, v149, v29, v30);
        sub_1D5E1DA6C(v21, v59, v22, v171, v23, *(&v23 + 1), v25);
        sub_1D66AD7C0(&v201, &qword_1EC88A028, &type metadata for FormatString);
      }

      else
      {
        v69 = v209;
        v70 = v218;
        v71 = *(&v209 + 1);
        v72 = v215;
        v73 = sub_1D72646CC();
        sub_1D60B2AC8(&v215, &v189);
        sub_1D60B2AC8(&v209, &v189);
        sub_1D60B2AC8(&v215, &v189);
        sub_1D60B2AC8(&v209, &v189);
        sub_1D60B2AC8(&v215, &v189);
        sub_1D60B2AC8(&v209, &v189);
        sub_1D5E1DA6C(v72, v26, v28, v155, v149, v29, v70);
        sub_1D5E1DA6C(v69, v71, v22, v171, v168, *(&v168 + 1), v25);
        sub_1D66AD7C0(&v201, &qword_1EC88A028, &type metadata for FormatString);
        if ((v73 & 1) == 0)
        {
          goto LABEL_97;
        }
      }
    }

    v74 = v162 & 0xFFFFCFFF;
    v75 = v143;
    v76 = v143 & 0xFFFFCFFF;
    v78 = v176;
    v77 = v177;
    v79 = v165;
    v189 = v176;
    v190 = v165;
    v80 = v173;
    v191 = v177;
    v192 = v173;
    v81 = *(&v178 + 1);
    v82 = v178;
    v193 = v178;
    v194 = v162 & 0xCFFF;
    v83 = *(&v155 + 1);
    v84 = v158;
    v195 = *(&v155 + 1);
    v196 = v158;
    v86 = *v153;
    v85 = *&v153[8];
    v197 = *v153;
    v87 = *&v153[16];
    v198 = *&v153[8];
    v199 = v160;
    v200 = v143 & 0xCFFF;
    v175 = v162 & 0xFFFFCFFF;
    if (v162 >> 14)
    {
      if (v162 >> 14 == 1)
      {
        if ((v143 & 0xC000) != 0x4000)
        {
          goto LABEL_87;
        }

        if (v176 != *(&v155 + 1) || v165 != v158)
        {
          v88 = sub_1D72646CC();
          v76 = v143 & 0xFFFFCFFF;
          v83 = *(&v155 + 1);
          if ((v88 & 1) == 0)
          {
            goto LABEL_99;
          }
        }

        v89 = v83;
        v90 = v76;
        sub_1D5E1DA6C(v83, v158, *v153, *&v153[8], *&v153[16], v160, v76);
        sub_1D5E1DA6C(v176, v165, v177, v173, v178, *(&v178 + 1), v175);
        sub_1D5E1DA6C(v89, v158, *v153, *&v153[8], *&v153[16], v160, v90);
        sub_1D5E1DA6C(v176, v165, v177, v173, v178, *(&v178 + 1), v175);
        v91 = v160;
        sub_1D5E1DA6C(v89, v158, *v153, *&v153[8], *&v153[16], v160, v90);
        v92 = v176;
        v93 = v173;
        v94 = *(&v178 + 1);
        v95 = v175;
        sub_1D5E1DA6C(v176, v165, v177, v173, v178, *(&v178 + 1), v175);
        v169 = sub_1D6341C50(v177, *v153);
        sub_1D66AD7C0(&v189, &qword_1EC88A028, &type metadata for FormatString);
        v96 = *&v153[16];
        v97 = *&v153[8];
        v98 = v143 & 0xCFFF;
        sub_1D5E1DE98(*(&v155 + 1), v158, *v153, *&v153[8], *&v153[16], v160, v98);
        v99 = v178;
        sub_1D5E1DE98(v176, v165, v177, v173, v178, *(&v178 + 1), v175);
        v100 = *(&v155 + 1);
        v101 = v158;
        v102 = *v153;
LABEL_69:
        sub_1D5E1DE98(v100, v101, v102, v97, v96, v91, v98);
        sub_1D5E1DE98(v92, v79, v177, v93, v99, v94, v95);
        sub_1D66AD7C0(v221, &qword_1EC88A020, &type metadata for FormatURLComponent);
        sub_1D60B2A74(&v215);
        sub_1D60B2A74(&v209);
        sub_1D60B2A74(&v215);
        sub_1D60B2A74(&v209);
        if ((v169 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_75;
      }

      if ((v143 & 0xC000) != 0x8000)
      {
        goto LABEL_87;
      }

      *&v185 = v176;
      *(&v185 + 1) = v165;
      *&v186 = v177;
      *(&v186 + 1) = v173;
      v187 = v178;
      v188 = v162 & 0xFFF;
      *&v181 = *(&v155 + 1);
      *(&v181 + 1) = v158;
      v182 = *v153;
      *&v183 = *&v153[16];
      *(&v183 + 1) = v160;
      v184 = v143 & 0xFFF;
      sub_1D5E1DA6C(*(&v155 + 1), v158, *v153, *&v153[8], *&v153[16], v160, v76);
      sub_1D5E1DA6C(v176, v165, v177, v173, v178, *(&v178 + 1), v162 & 0xFFFFCFFF);
      sub_1D5E1DA6C(*(&v155 + 1), v158, *v153, *&v153[8], *&v153[16], v160, v143 & 0xCFFF);
      sub_1D5E1DA6C(v176, v165, v177, v173, v178, *(&v178 + 1), v175);
      sub_1D5E1DA6C(*(&v155 + 1), v158, *v153, *&v153[8], *&v153[16], v160, v143 & 0xCFFF);
      sub_1D5E1DA6C(v176, v165, v177, v173, v178, *(&v178 + 1), v175);
      v170 = _s8NewsFeed21FormatTextNodeBindingO2eeoiySbAC_ACtFZ_0(&v185, &v181);
      sub_1D66AD7C0(&v189, &qword_1EC88A028, &type metadata for FormatString);
      v103 = v158;
      v105 = *v153;
      v104 = *&v153[8];
      v106 = *&v153[16];
      v107 = v143 & 0xCFFF;
      sub_1D5E1DE98(*(&v155 + 1), v158, *v153, *&v153[8], *&v153[16], v160, v107);
      v108 = v176;
      v109 = v176;
      v110 = v165;
      v111 = v177;
LABEL_78:
      sub_1D5E1DE98(v109, v110, v111, v173, v178, *(&v178 + 1), v175);
      sub_1D5E1DE98(*(&v155 + 1), v103, v105, v104, v106, v160, v107);
      sub_1D5E1DE98(v108, v165, v177, v173, v178, *(&v178 + 1), v175);
      sub_1D66AD7C0(v221, &qword_1EC88A020, &type metadata for FormatURLComponent);
      sub_1D60B2A74(&v215);
      sub_1D60B2A74(&v209);
      sub_1D60B2A74(&v215);
      sub_1D60B2A74(&v209);
      i = v161;
      if ((v170 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_81;
    }

LABEL_71:
    if (v75 >= 0x4000)
    {
      goto LABEL_87;
    }

    if (v78 == v83 && v79 == v84)
    {
      sub_1D5E1DA6C(v78, v79, v86, v85, v87, v160, v76);
      sub_1D5E1DA6C(v78, v79, v177, v80, v178, *(&v178 + 1), v175);
      sub_1D66AD7C0(&v189, &qword_1EC88A028, &type metadata for FormatString);
      sub_1D66AD7C0(v221, &qword_1EC88A020, &type metadata for FormatURLComponent);
      sub_1D60B2A74(&v215);
      sub_1D60B2A74(&v209);
      sub_1D60B2A74(&v215);
      sub_1D60B2A74(&v209);
LABEL_75:
      i = v161;
      goto LABEL_81;
    }

    v118 = v78;
    v119 = v83;
    v120 = v76;
    v121 = sub_1D72646CC();
    sub_1D5E1DA6C(v119, v84, v86, v85, v87, v160, v120);
    sub_1D5E1DA6C(v118, v79, v177, v80, v178, *(&v178 + 1), v175);
    sub_1D66AD7C0(&v189, &qword_1EC88A028, &type metadata for FormatString);
    sub_1D66AD7C0(v221, &qword_1EC88A020, &type metadata for FormatURLComponent);
    sub_1D60B2A74(&v215);
    sub_1D60B2A74(&v209);
    sub_1D60B2A74(&v215);
    sub_1D60B2A74(&v209);
    i = v161;
    if ((v121 & 1) == 0)
    {
      return 0;
    }

LABEL_81:
    if (!i)
    {
      return 1;
    }

    v179 += 7;
    v180 += 7;
  }

  if ((*&v220[24] & 0x3000) != 0x2000)
  {
LABEL_85:
    sub_1D60B2AC8(&v215, &v201);
    sub_1D60B2AC8(&v209, &v201);
    sub_1D66AD7C0(v221, &qword_1EC88A020, &type metadata for FormatURLComponent);
    return 0;
  }

  v45 = *(&v215 + 1);
  v46 = v216;
  *v152 = *(&v219 + 1);
  *&v152[8] = *v220;
  v154 = *(&v216 + 1);
  v159 = v219;
  v160 = *&v220[16];
  v47 = v218;
  v201 = v209;
  v202 = v210;
  v203 = v211;
  v204 = v212;
  v205 = v215;
  v206 = v216;
  v48 = *(&v217 + 1);
  v207 = v217;
  v208 = v218;
  v174 = v210;
  v155 = v218;
  v140 = *&v220[24];
  v148 = v217;
  if (!(v212 >> 14))
  {
    if (v218 >= 0x4000u)
    {
      goto LABEL_92;
    }

    if (v209 == v215)
    {
      v63 = *(&v209 + 1);
      sub_1D60B2AC8(&v215, &v189);
      sub_1D60B2AC8(&v209, &v189);
      sub_1D60B2AC8(&v215, &v189);
      sub_1D60B2AC8(&v209, &v189);
      sub_1D60B2AC8(&v215, &v189);
      sub_1D60B2AC8(&v209, &v189);
      sub_1D5E1DA6C(v21, v63, v46, v154, v148, v48, v155);
      sub_1D5E1DA6C(v21, v63, v174, v171, v23, *(&v23 + 1), v25);
      sub_1D66AD7C0(&v201, &qword_1EC88A028, &type metadata for FormatString);
    }

    else
    {
      v112 = *(&v209 + 1);
      v113 = v215;
      v114 = sub_1D72646CC();
      sub_1D60B2AC8(&v215, &v189);
      sub_1D60B2AC8(&v209, &v189);
      sub_1D60B2AC8(&v215, &v189);
      sub_1D60B2AC8(&v209, &v189);
      sub_1D60B2AC8(&v215, &v189);
      sub_1D60B2AC8(&v209, &v189);
      sub_1D5E1DA6C(v113, *(&v113 + 1), v46, v154, v148, v48, v155);
      sub_1D5E1DA6C(v21, v112, v174, v171, v168, *(&v168 + 1), v25);
      sub_1D66AD7C0(&v201, &qword_1EC88A028, &type metadata for FormatString);
      if ((v114 & 1) == 0)
      {
        goto LABEL_97;
      }
    }

LABEL_62:
    v74 = v162 & 0xFFFFCFFF;
    v75 = v140;
    v76 = v140 & 0xFFFFCFFF;
    v78 = v176;
    v77 = v177;
    v79 = v165;
    v189 = v176;
    v190 = v165;
    v80 = v173;
    v191 = v177;
    v192 = v173;
    v81 = *(&v178 + 1);
    v82 = v178;
    v193 = v178;
    v194 = v162 & 0xCFFF;
    v83 = *(&v155 + 1);
    v84 = v159;
    v195 = *(&v155 + 1);
    v196 = v159;
    v86 = *v152;
    v85 = *&v152[8];
    v197 = *v152;
    v198 = *&v152[8];
    v87 = *&v152[16];
    v199 = v160;
    v200 = v140 & 0xCFFF;
    v175 = v162 & 0xFFFFCFFF;
    if (v162 >> 14)
    {
      v172 = v140 & 0xFFFFCFFF;
      if (v162 >> 14 == 1)
      {
        if ((v140 & 0xC000) != 0x4000)
        {
          goto LABEL_87;
        }

        if (v176 != *(&v155 + 1) || v165 != v159)
        {
          v115 = sub_1D72646CC();
          v76 = v140 & 0xFFFFCFFF;
          v83 = *(&v155 + 1);
          if ((v115 & 1) == 0)
          {
LABEL_99:
            sub_1D5E1DA6C(v83, v84, v86, v85, v87, v160, v76);
            v127 = v176;
            v129 = v177;
            v128 = v79;
            v130 = v80;
            v132 = *(&v178 + 1);
            v131 = v178;
            v133 = v175;
            goto LABEL_88;
          }
        }

        v116 = v83;
        v117 = v76;
        sub_1D5E1DA6C(v83, v159, *v152, *&v152[8], *&v152[16], v160, v76);
        sub_1D5E1DA6C(v176, v165, v177, v173, v178, *(&v178 + 1), v175);
        sub_1D5E1DA6C(v116, v159, *v152, *&v152[8], *&v152[16], v160, v117);
        sub_1D5E1DA6C(v176, v165, v177, v173, v178, *(&v178 + 1), v175);
        v91 = v160;
        sub_1D5E1DA6C(v116, v159, *v152, *&v152[8], *&v152[16], v160, v117);
        v92 = v176;
        v93 = v173;
        v94 = *(&v178 + 1);
        v95 = v175;
        sub_1D5E1DA6C(v176, v165, v177, v173, v178, *(&v178 + 1), v175);
        v169 = sub_1D6341C50(v177, *v152);
        sub_1D66AD7C0(&v189, &qword_1EC88A028, &type metadata for FormatString);
        v97 = *&v152[8];
        v96 = *&v152[16];
        v98 = v172;
        sub_1D5E1DE98(*(&v155 + 1), v159, *v152, *&v152[8], *&v152[16], v160, v172);
        v99 = v178;
        sub_1D5E1DE98(v176, v165, v177, v173, v178, *(&v178 + 1), v175);
        v100 = *(&v155 + 1);
        v101 = v159;
        v102 = *v152;
        goto LABEL_69;
      }

      if ((v140 & 0xC000) != 0x8000)
      {
LABEL_87:
        v123 = v85;
        v124 = v87;
        v125 = v81;
        v126 = v74;
        sub_1D5E1DA6C(v83, v84, v86, v123, v124, v160, v76);
        v127 = v78;
        v128 = v79;
        v129 = v77;
        v130 = v80;
        v131 = v82;
        v132 = v125;
        v133 = v126;
LABEL_88:
        sub_1D5E1DA6C(v127, v128, v129, v130, v131, v132, v133);
        v134 = &v189;
        goto LABEL_96;
      }

      *&v185 = v176;
      *(&v185 + 1) = v165;
      *&v186 = v177;
      *(&v186 + 1) = v173;
      v187 = v178;
      v188 = v162 & 0xFFF;
      *&v181 = *(&v155 + 1);
      *(&v181 + 1) = v159;
      v182 = *v152;
      *&v183 = *&v152[16];
      *(&v183 + 1) = v160;
      v184 = v140 & 0xFFF;
      sub_1D5E1DA6C(*(&v155 + 1), v159, *v152, *&v152[8], *&v152[16], v160, v76);
      sub_1D5E1DA6C(v176, v165, v177, v173, v178, *(&v178 + 1), v162 & 0xFFFFCFFF);
      sub_1D5E1DA6C(*(&v155 + 1), v159, *v152, *&v152[8], *&v152[16], v160, v172);
      sub_1D5E1DA6C(v176, v165, v177, v173, v178, *(&v178 + 1), v175);
      sub_1D5E1DA6C(*(&v155 + 1), v159, *v152, *&v152[8], *&v152[16], v160, v172);
      sub_1D5E1DA6C(v176, v165, v177, v173, v178, *(&v178 + 1), v175);
      v170 = _s8NewsFeed21FormatTextNodeBindingO2eeoiySbAC_ACtFZ_0(&v185, &v181);
      sub_1D66AD7C0(&v189, &qword_1EC88A028, &type metadata for FormatString);
      v103 = v159;
      v105 = *v152;
      v104 = *&v152[8];
      v106 = *&v152[16];
      v107 = v172;
      sub_1D5E1DE98(*(&v155 + 1), v159, *v152, *&v152[8], *&v152[16], v160, v172);
      v108 = v176;
      v109 = v176;
      v110 = v165;
      v111 = v177;
      goto LABEL_78;
    }

    goto LABEL_71;
  }

  v167 = *(&v209 + 1);
  v144 = v215;
  v146 = v216;
  v164 = v209;
  v150 = *(&v215 + 1);
  v157 = v212;
  v142 = *(&v217 + 1);
  if (v212 >> 14 == 1)
  {
    if ((v218 & 0xC000) != 0x4000)
    {
      goto LABEL_92;
    }

    if (v209 != v215)
    {
      v49 = sub_1D72646CC();
      v45 = v150;
      v20 = v167;
      if ((v49 & 1) == 0)
      {
        goto LABEL_93;
      }
    }

    v50 = v20;
    v51 = v45;
    sub_1D60B2AC8(&v215, &v189);
    sub_1D60B2AC8(&v209, &v189);
    sub_1D5E1DA6C(v144, v51, v146, v154, v148, v48, v155);
    sub_1D5E1DA6C(v164, v50, v174, v171, v23, *(&v23 + 1), v25);
    sub_1D60B2AC8(&v215, &v189);
    sub_1D60B2AC8(&v209, &v189);
    sub_1D5E1DA6C(v144, v51, v146, v154, v148, v142, v155);
    sub_1D5E1DA6C(v164, v50, v174, v171, v23, *(&v23 + 1), v25);
    sub_1D60B2AC8(&v215, &v189);
    sub_1D60B2AC8(&v209, &v189);
    sub_1D5E1DA6C(v144, v150, v146, v154, v148, v142, v155);
    sub_1D5E1DA6C(v164, v167, v174, v171, v23, *(&v23 + 1), v25);
    v138 = sub_1D6341C50(v174, v146);
    sub_1D66AD7C0(&v201, &qword_1EC88A028, &type metadata for FormatString);
    sub_1D5E1DE98(v144, v150, v146, v154, v148, v142, v155);
    sub_1D5E1DE98(v164, v167, v174, v171, v23, *(&v23 + 1), v157);
    sub_1D5E1DE98(v144, v150, v146, v154, v148, v142, v155);
    v52 = v164;
    v53 = v167;
    v54 = v174;
    v55 = v171;
    v57 = *(&v23 + 1);
    v56 = v23;
    v58 = v157;
    goto LABEL_46;
  }

  if ((v218 & 0xC000) == 0x8000)
  {
    v185 = v209;
    v186 = v210;
    v187 = v211;
    v188 = v212 & 0x3FFF;
    v181 = v215;
    v182 = v216;
    v183 = v217;
    v64 = *(&v217 + 1);
    v184 = v218 & 0x3FFF;
    v65 = *(&v210 + 1);
    v66 = v217;
    v67 = *(&v215 + 1);
    v68 = v215;
    sub_1D60B2AC8(&v215, &v189);
    sub_1D60B2AC8(&v209, &v189);
    sub_1D5E1DA6C(v68, v67, v46, v154, v66, v64, v47);
    sub_1D5E1DA6C(v21, v167, v174, v65, v23, *(&v168 + 1), v157);
    sub_1D60B2AC8(&v215, &v189);
    sub_1D60B2AC8(&v209, &v189);
    sub_1D5E1DA6C(v144, v150, v146, v154, v148, v142, v155);
    sub_1D5E1DA6C(v164, v167, v174, v171, v23, *(&v168 + 1), v157);
    sub_1D60B2AC8(&v215, &v189);
    sub_1D60B2AC8(&v209, &v189);
    sub_1D5E1DA6C(v144, v150, v146, v154, v148, v142, v155);
    sub_1D5E1DA6C(v164, v167, v174, v171, v168, *(&v168 + 1), v157);
    v138 = _s8NewsFeed21FormatTextNodeBindingO2eeoiySbAC_ACtFZ_0(&v185, &v181);
    sub_1D66AD7C0(&v201, &qword_1EC88A028, &type metadata for FormatString);
    sub_1D5E1DE98(v144, v150, v146, v154, v148, v142, v155);
    sub_1D5E1DE98(v164, v167, v174, v171, v168, *(&v168 + 1), v157);
    sub_1D5E1DE98(v144, v150, v146, v154, v148, v142, v155);
    v52 = v164;
    v53 = v167;
    v54 = v174;
    v55 = v171;
    v57 = *(&v168 + 1);
    v56 = v168;
    v58 = v157;
LABEL_46:
    sub_1D5E1DE98(v52, v53, v54, v55, v56, v57, v58);
    if ((v138 & 1) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_62;
  }

LABEL_92:
  v144 = v215;
  v146 = v216;
  v150 = *(&v215 + 1);
  v167 = *(&v209 + 1);
  v164 = v209;
LABEL_93:
  sub_1D60B2AC8(&v215, &v189);
  sub_1D60B2AC8(&v209, &v189);
  sub_1D60B2AC8(&v215, &v189);
  sub_1D60B2AC8(&v209, &v189);
  sub_1D60B2AC8(&v215, &v189);
  sub_1D60B2AC8(&v209, &v189);
  sub_1D5E1DA6C(v144, v150, v146, v154, v148, v48, v155);
  v135 = v164;
  v136 = v167;
LABEL_94:
  sub_1D5E1DA6C(v135, v136, v174, v171, v23, *(&v23 + 1), v25);
LABEL_95:
  v134 = &v201;
LABEL_96:
  sub_1D66AD7C0(v134, &qword_1EC88A028, &type metadata for FormatString);
LABEL_97:
  sub_1D66AD7C0(v221, &qword_1EC88A020, &type metadata for FormatURLComponent);
  sub_1D60B2A74(&v215);
  sub_1D60B2A74(&v209);
  sub_1D60B2A74(&v215);
  sub_1D60B2A74(&v209);
  return 0;
}