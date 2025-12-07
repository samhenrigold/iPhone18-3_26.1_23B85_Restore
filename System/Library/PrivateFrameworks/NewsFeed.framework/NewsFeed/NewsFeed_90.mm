unint64_t sub_1D633BEDC(unint64_t result, uint64_t a2)
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
  v30 = a2 + 32;
  v31 = result + 32;
  v29 = *(result + 16);
  while (v3 != v2)
  {
    v4 = (v31 + 48 * v3);
    v5 = *v4;
    v6 = v4[1];
    v7 = v4[2];
    v8 = v4[3];
    v9 = v4[4];
    v37 = v4[5];
    v32 = v3;
    v10 = (v30 + 48 * v3);
    v11 = v10[2];
    v12 = v10[3];
    v13 = v10[4];
    v14 = v10[5];
    v15 = v5 == *v10 && v6 == v10[1];
    if (!v15 && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }

    v16 = *(v7 + 16);
    if (v16 != *(v11 + 16))
    {
      return 0;
    }

    v36 = v12;
    v35 = v13;
    v33 = v14;
    v34 = v9;
    if (v16)
    {

      if (v7 != v11)
      {
        v17 = 0;
        v18 = 0;
        while (v18 < *(v7 + 16))
        {
          if (v18 >= *(v11 + 16))
          {
            goto LABEL_51;
          }

          v19 = *(v7 + v17 + 48);
          v20 = *(v11 + v17 + 48);
          v21 = *(v7 + v17 + 32) == *(v11 + v17 + 32) && *(v7 + v17 + 40) == *(v11 + v17 + 40);
          if (!v21 && (sub_1D72646CC() & 1) == 0)
          {
            goto LABEL_46;
          }

          v22 = v20 & 0xF000000000000007;
          if ((~v19 & 0xF000000000000007) != 0)
          {
            if (v22 == 0xF000000000000007)
            {
LABEL_45:

              sub_1D5C84FF4(v19);
              sub_1D5C84FF4(v20);
              goto LABEL_46;
            }

            v39 = v19;
            v38 = v20;
            sub_1D5CFCFAC(v20);
            sub_1D5CFCFAC(v19);
            sub_1D5CFCFAC(v19);
            sub_1D5CFCFAC(v20);

            sub_1D5CFCFAC(v19);

            sub_1D5CFCFAC(v20);
            v23 = static FormatOptionValue.== infix(_:_:)(&v39, &v38);
            sub_1D5C84FF4(v19);
            sub_1D5C84FF4(v20);
            sub_1D5C84FF4(v20);
            sub_1D5C84FF4(v19);

            sub_1D5C84FF4(v20);

            result = sub_1D5C84FF4(v19);
            if ((v23 & 1) == 0)
            {
              goto LABEL_46;
            }
          }

          else
          {
            if (v22 != 0xF000000000000007)
            {
              goto LABEL_45;
            }

            sub_1D5C84FF4(v19);
            result = sub_1D5C84FF4(v20);
          }

          ++v18;
          v17 += 24;
          if (v16 == v18)
          {
            goto LABEL_30;
          }
        }

        goto LABEL_50;
      }
    }

    else
    {
    }

LABEL_30:
    v24 = *(v8 + 16);
    if (v24 != *(v36 + 16))
    {
      goto LABEL_46;
    }

    if (v24)
    {
      v25 = v8 == v36;
    }

    else
    {
      v25 = 1;
    }

    if (!v25)
    {
      v26 = 32;
      while (1)
      {
        result = *(v8 + v26);
        v39 = result;
        if (!v24)
        {
          break;
        }

        v38 = *(v36 + v26);
        v27 = v38;
        sub_1D5FBABE0(result);
        sub_1D5FBABE0(v27);
        LOBYTE(v27) = static FormatSlotTransform.== infix(_:_:)(&v39, &v38);
        sub_1D5FBAC60(v38);
        sub_1D5FBAC60(v39);
        if ((v27 & 1) == 0)
        {
          goto LABEL_46;
        }

        v26 += 8;
        if (!--v24)
        {
          goto LABEL_39;
        }
      }

      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      break;
    }

LABEL_39:
    if ((sub_1D6344414(v34, v35) & 1) == 0)
    {
LABEL_46:

      return 0;
    }

    v28 = sub_1D5BFC390(v37, v33);

    if ((v28 & 1) == 0)
    {
      return 0;
    }

    v3 = v32 + 1;
    result = 1;
    v2 = v29;
    if (v32 + 1 == v29)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_1D633C3EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatContentOverlaySlot(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v9);
  v13 = (&v32 - v12);
  v14 = *(a1 + 16);
  if (v14 == *(a2 + 16) && v14 && a1 != a2)
  {
    v15 = 0;
    v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v34 = v10;
    v35 = a2 + v16;
    v36 = *(v11 + 72);
    v37 = a1 + v16;
    v39 = (&v32 - v12);
    v40 = v7;
    v33 = v14;
    while (1)
    {
      v17 = v36 * v15;
      sub_1D6706BB4(v37 + v36 * v15, v13, type metadata accessor for FormatContentOverlaySlot);
      if (v15 == v14)
      {
        break;
      }

      v38 = v15;
      sub_1D6706BB4(v35 + v17, v7, type metadata accessor for FormatContentOverlaySlot);
      v18 = *v13 == *v7 && v13[1] == v7[1];
      if (!v18 && (sub_1D72646CC() & 1) == 0 || (v19 = *(v34 + 20), v20 = *(v39 + v19), v21 = *(v40 + v19), v22 = *(v21 + 16), v41 = *(v20 + 16), v41 != v22))
      {
LABEL_24:
        sub_1D5D2CFE8(v40, type metadata accessor for FormatContentOverlaySlot);
        sub_1D5D2CFE8(v39, type metadata accessor for FormatContentOverlaySlot);
        return;
      }

      if (v41)
      {
        v23 = v20 == v21;
      }

      else
      {
        v23 = 1;
      }

      if (!v23)
      {
        v24 = 0;
        v25 = (v20 + 40);
        v26 = (v21 + 40);
        while (v24 < *(v20 + 16))
        {
          if (v24 >= *(v21 + 16))
          {
            goto LABEL_27;
          }

          v27 = *(v25 - 1);
          v28 = *(v26 - 1);
          v29 = *v25;
          v30 = *v26;
          sub_1D66F42D0(v27, *v25);
          sub_1D66F42D0(v28, v30);
          v31 = sub_1D71DF590(v27, v29, v28, v30);
          sub_1D66F42E4(v28, v30);
          sub_1D66F42E4(v27, v29);
          if ((v31 & 1) == 0)
          {
            goto LABEL_24;
          }

          ++v24;
          v25 += 16;
          v26 += 16;
          if (v41 == v24)
          {
            goto LABEL_5;
          }
        }

        __break(1u);
LABEL_27:
        __break(1u);
        break;
      }

LABEL_5:
      v15 = v38 + 1;
      v7 = v40;
      sub_1D5D2CFE8(v40, type metadata accessor for FormatContentOverlaySlot);
      v13 = v39;
      sub_1D5D2CFE8(v39, type metadata accessor for FormatContentOverlaySlot);
      v14 = v33;
      if (v15 == v33)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1D633C6F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *(v3 - 1);
      v6 = *(v4 - 1);
      v7 = *v3;
      v8 = *v4;
      sub_1D66F42D0(v5, *v3);
      sub_1D66F42D0(v6, v8);
      v9 = sub_1D71DF590(v5, v7, v6, v8);
      sub_1D66F42E4(v6, v8);
      sub_1D66F42E4(v5, v7);
      if ((v9 & 1) == 0)
      {
        break;
      }

      v3 += 16;
      v4 += 16;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_1D633C870(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_1D72646CC() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_1D72646CC() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

void sub_1D633C9E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v4 = 0;
    do
    {
      v5 = *(a1 + v4 + 40);
      v6 = *(a1 + v4 + 48);
      v7 = *(a1 + v4 + 56);
      v8 = *(a1 + v4 + 64);
      v17[0] = *(a1 + v4 + 32);
      v17[1] = v5;
      v17[2] = v6;
      v18 = v7;
      v19 = v8;
      v9 = *(a2 + v4 + 40);
      v10 = *(a2 + v4 + 48);
      v11 = *(a2 + v4 + 56);
      v12 = *(a2 + v4 + 64);
      v14[0] = *(a2 + v4 + 32);
      v14[1] = v9;
      v14[2] = v10;
      v15 = v11;
      v16 = v12;

      LOBYTE(v8) = _s8NewsFeed12FormatBorderV2eeoiySbAC_ACtFZ_0(v17, v14);

      if ((v8 & 1) == 0)
      {
        break;
      }

      v4 += 40;
      --v2;
    }

    while (v2);
  }
}

BOOL sub_1D633CB78(uint64_t a1, uint64_t a2)
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
      v3 = (a1 + 48);
      v4 = (a2 + 48);
      do
      {
        v5 = *v3;
        v6 = *v4;
        v11 = *(v3 - 1);
        v12 = v5;
        v9 = *(v4 - 1);
        v10 = v6;
        v7 = _s8NewsFeed24FormatLayeredMediaFilterO10MonochromeV2eeoiySbAE_AEtFZ_0(&v11, &v9);
        if (!v7)
        {
          break;
        }

        v3 += 3;
        v4 += 3;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    return 0;
  }

  return v7;
}

uint64_t sub_1D633CC2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugFormatCacheFile(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v9);
  v12 = (&v35 - v11);
  v13 = *(a1 + 16);
  if (v13 != *(a2 + 16))
  {
    return 0;
  }

  if (!v13 || a1 == a2)
  {
    return 1;
  }

  v14 = 0;
  v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v16 = a1 + v15;
  v17 = a2 + v15;
  v18 = *(v10 + 72);
  while (1)
  {
    result = sub_1D6706BB4(v16 + v18 * v14, v12, type metadata accessor for DebugFormatCacheFile);
    if (v14 == v13)
    {
      break;
    }

    sub_1D6706BB4(v17 + v18 * v14, v7, type metadata accessor for DebugFormatCacheFile);
    v20 = v12[2];
    v21 = *(v12 + 24);
    v22 = v7[2];
    v23 = *(v7 + 24);
    v24 = *v12 == *v7 && *(v12 + 1) == *(v7 + 1);
    if (!v24 && (sub_1D72646CC() & 1) == 0 || v20 != v22 || ((v21 ^ v23) & 1) != 0 || (v25 = *(v4 + 28), v26 = v12 + v25, v27 = v7 + v25, (sub_1D725BCBC() & 1) == 0) || (result = type metadata accessor for DebugFormatCacheFileMetadata(0), v28 = *(result + 20), v29 = *&v26[v28], v30 = *&v27[v28], v31 = *(v29 + 16), v31 != *(v30 + 16)))
    {
LABEL_26:
      sub_1D5D2CFE8(v7, type metadata accessor for DebugFormatCacheFile);
      sub_1D5D2CFE8(v12, type metadata accessor for DebugFormatCacheFile);
      return 0;
    }

    if (v31)
    {
      v32 = v29 == v30;
    }

    else
    {
      v32 = 1;
    }

    if (!v32)
    {
      v33 = (v29 + 32);
      v34 = (v30 + 32);
      while (v31)
      {
        if (*v33 != *v34)
        {
          goto LABEL_26;
        }

        ++v33;
        ++v34;
        if (!--v31)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
      break;
    }

LABEL_5:
    ++v14;
    sub_1D5D2CFE8(v7, type metadata accessor for DebugFormatCacheFile);
    sub_1D5D2CFE8(v12, type metadata accessor for DebugFormatCacheFile);
    result = 1;
    if (v14 == v13)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D633CF14(uint64_t a1, uint64_t a2)
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

  v28 = v2;
  v29 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    v24[0] = *v5;
    v24[1] = v8;
    v10 = *v5;
    v9 = v5[1];
    v25[0] = v5[2];
    *(v25 + 11) = *(v5 + 43);
    v11 = v6[1];
    v26[0] = *v6;
    v26[1] = v11;
    v13 = *v6;
    v12 = v6[1];
    v27[0] = v6[2];
    *(v27 + 11) = *(v6 + 43);
    v22[0] = v10;
    v22[1] = v9;
    v23[0] = v5[2];
    *(v23 + 11) = *(v5 + 43);
    v20[0] = v13;
    v20[1] = v12;
    v21[0] = v6[2];
    *(v21 + 11) = *(v6 + 43);
    v18 = v13;
    v19 = v10;
    sub_1D665F27C(v24, v17, qword_1EDF2F000, sub_1D62B64C0, &type metadata for FormatOptionsNodeStatementValue, type metadata accessor for FormatSwitchValue.CaseValue);
    sub_1D665F27C(v26, v17, qword_1EDF2F000, sub_1D62B64C0, &type metadata for FormatOptionsNodeStatementValue, type metadata accessor for FormatSwitchValue.CaseValue);

    v14 = static FormatExpression.== infix(_:_:)(&v19, &v18);

    if ((v14 & 1) == 0)
    {
      sub_1D62B7904(v26);
      sub_1D62B7904(v24);
      return 0;
    }

    v15 = static FormatOptionsNodeStatementValue.== infix(_:_:)((v22 + 8), (v20 + 8));
    sub_1D62B7904(v26);
    sub_1D62B7904(v24);
    if ((v15 & 1) == 0)
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

uint64_t sub_1D633D10C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 49);
  for (i = (a1 + 49); ; i += 24)
  {
    v5 = *(i - 17);
    v6 = *(i - 9);
    v7 = *(i - 1);
    v8 = *i;
    v9 = *(v3 - 17);
    v10 = *(v3 - 9);
    v11 = *(v3 - 1);
    if ((*i & 1) == 0)
    {
      break;
    }

    if ((*v3 & 1) == 0)
    {
      goto LABEL_22;
    }

    sub_1D5E04C58(v5, v6, v7, 1);
    sub_1D5E04C58(v9, v10, v11, 1);
    if ((0x29282F2A2D2BuLL >> (8 * v5)) != (0x29282F2A2D2BuLL >> (8 * v9)))
    {
      v13 = v5;
      v14 = v6;
      v15 = v7;
      v16 = 1;
      goto LABEL_26;
    }

LABEL_7:
    sub_1D5E04C68(v5, v6, v7, v8);
    v3 += 24;
    if (!--v2)
    {
      return 1;
    }
  }

  if (*v3)
  {
LABEL_22:
    sub_1D5E04C58(*(i - 17), *(i - 9), *(i - 1), *i);
    sub_1D5E04C58(v9, v10, v11, v8 ^ 1);
    sub_1D5E04C68(v5, v6, v7, v8);
    v16 = v8 ^ 1;
    v13 = v9;
    v14 = v10;
    v15 = v11;
    goto LABEL_26;
  }

  if ((*(i - 1) & 1) == 0)
  {
    if (*(v3 - 1))
    {
      goto LABEL_24;
    }

    sub_1D5E04C58(*(i - 17), *(i - 9), *(i - 1), 0);
    sub_1D5E04C58(v9, v10, v11, 0);
    sub_1D5E04C58(v5, v6, v7, 0);
    sub_1D5E04C58(v9, v10, v11, 0);
    sub_1D5D2F2C8(v5, v6, 0);
    sub_1D5D2F2C8(v9, v10, 0);
    sub_1D5E04C68(v5, v6, v7, 0);
    if (v5 != v9)
    {
      goto LABEL_25;
    }

    goto LABEL_6;
  }

  if (*(v3 - 1))
  {
    if (v5 == v9 && v6 == v10)
    {
      sub_1D5E04C58(*(i - 17), *(i - 9), *(i - 1), 0);
      sub_1D5E04C58(v5, v6, v11, 0);
      sub_1D5E04C58(v5, v6, v7, 0);
      sub_1D5E04C58(v5, v6, v11, 0);
      sub_1D5E04C58(v5, v6, v7, 0);
      sub_1D5D2F2C8(v5, v6, 1);
      sub_1D5D2F2C8(v5, v6, 1);
    }

    else
    {
      v17 = sub_1D72646CC();
      sub_1D5E04C58(v5, v6, v7, 0);
      sub_1D5E04C58(v9, v10, v11, 0);
      sub_1D5E04C58(v5, v6, v7, 0);
      sub_1D5E04C58(v9, v10, v11, 0);
      sub_1D5E04C58(v5, v6, v7, 0);
      sub_1D5D2F2C8(v5, v6, 1);
      sub_1D5D2F2C8(v9, v10, 1);
      if ((v17 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

LABEL_6:
    sub_1D5E04C68(v5, v6, v7, 0);
    sub_1D5E04C68(v9, v10, v11, 0);
    goto LABEL_7;
  }

  sub_1D5E04C58(*(i - 17), *(i - 9), *(i - 1), 0);

LABEL_24:
  sub_1D5E04C58(v5, v6, v7, 0);
  sub_1D5E04C58(v9, v10, v11, 0);
  sub_1D5E04C58(v5, v6, v7, 0);
  sub_1D5E04C58(v9, v10, v11, 0);
  sub_1D5D2F2C8(v5, v6, v7 & 1);
  sub_1D5D2F2C8(v9, v10, (v7 & 1) == 0);
  sub_1D5E04C68(v5, v6, v7, 0);
LABEL_25:
  sub_1D5E04C68(v5, v6, v7, 0);
  sub_1D5E04C68(v9, v10, v11, 0);
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = 0;
LABEL_26:
  sub_1D5E04C68(v13, v14, v15, v16);
  return 0;
}

uint64_t sub_1D633D588(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v7 = *v3++;
      v6 = v7;
      v8 = *v4;
      v9 = v7 >> 6;
      if (v7 >> 6)
      {
        if (v9 == 1)
        {
          v10 = v8 & 0xC0;
          v11 = (v8 ^ v6) & 1;
          if (v10 != 64 || v11 != 0)
          {
            return 0;
          }
        }

        else if ((v8 & 0xC0) != 0x80)
        {
          return 0;
        }
      }

      else if (v8 > 0x3F || v6 != v8)
      {
        return 0;
      }

      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D633D620(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v14 = 1;
    }

    else
    {
      v3 = (a2 + 64);
      v4 = (a1 + 64);
      do
      {
        v5 = *(v4 - 3);
        v6 = *(v4 - 2);
        v7 = *(v4 - 1);
        v8 = *v4;
        v21 = *(v4 - 4);
        v22 = v5;
        v23 = v6;
        v24 = v7;
        v25 = v8;
        v10 = *(v3 - 3);
        v11 = *(v3 - 2);
        v12 = *(v3 - 1);
        v16 = *(v3 - 4);
        v9 = v16;
        v17 = v10;
        v18 = v11;
        v19 = v12;
        v20 = *v3;
        v13 = v20;
        sub_1D5ECEE80(v21, v5, v6, v7, v8);
        sub_1D5ECEE80(v9, v10, v11, v12, v13);
        v14 = _s8NewsFeed32FormatImageNodeRequestAdjustmentO2eeoiySbAC_ACtFZ_0(&v21, &v16);
        sub_1D5ECEF00(v16, v17, v18, v19, v20);
        sub_1D5ECEF00(v21, v22, v23, v24, v25);
        if ((v14 & 1) == 0)
        {
          break;
        }

        v4 += 40;
        v3 += 40;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_1D633D734(uint64_t result, uint64_t a2)
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
  v4 = result + 32;
  v5 = a2 + 32;
  while (v3 != v2)
  {
    v6 = (v4 + 24 * v3);
    result = *v6;
    v7 = v6[1];
    v8 = v6[2];
    v9 = (v5 + 24 * v3);
    v10 = v9[2];
    if (result != *v9 || v7 != v9[1])
    {
      result = sub_1D72646CC();
      if ((result & 1) == 0)
      {
        return 0;
      }
    }

    v12 = *(v8 + 16);
    if (v12 != *(v10 + 16))
    {
      return 0;
    }

    if (v12)
    {
      v13 = v8 == v10;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      v14 = (v8 + 32);
      v15 = (v10 + 32);
      while (v12)
      {
        if (*v14 != *v15)
        {
          return 0;
        }

        ++v14;
        ++v15;
        if (!--v12)
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

void sub_1D633D840(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      if (*v3)
      {
        v5 = 0x4D6465726579616CLL;
      }

      else
      {
        v5 = 0x616C506F65646976;
      }

      if (*v3)
      {
        v6 = 0xEC00000061696465;
      }

      else
      {
        v6 = 0xED00006B63616279;
      }

      if (*v4)
      {
        v7 = 0x4D6465726579616CLL;
      }

      else
      {
        v7 = 0x616C506F65646976;
      }

      if (*v4)
      {
        v8 = 0xEC00000061696465;
      }

      else
      {
        v8 = 0xED00006B63616279;
      }

      if (v5 == v7 && v6 == v8)
      {
      }

      else
      {
        v10 = sub_1D72646CC();

        if ((v10 & 1) == 0)
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

uint64_t sub_1D633D968(uint64_t a1, uint64_t a2)
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
    sub_1D5E42C00(v45, v26);
    sub_1D5E42C00(v53, v26);
    v24 = static PuzzleMenuConfig.== infix(_:_:)(&v36, &v27);
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
    sub_1D5E42C5C(v61);
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
    sub_1D5E42C5C(v63);
    if ((v24 & 1) == 0)
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

void sub_1D633DB70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16) || !v2 || a1 == a2)
  {
    return;
  }

  v3 = (a1 + 32);
  for (i = (a2 + 32); ; ++i)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *i;
    v8 = v6 >> 62;
    if (!(v6 >> 62))
    {
      if (v7 >> 62)
      {
        return;
      }

      v12 = *(v5 + 16);
      v13 = *(v7 + 16);
      swift_retain_n();
      swift_retain_n();

      LOBYTE(v12) = _s8NewsFeed024FormatAnimationNodeBasicD0C2eeoiySbAC_ACtFZ_0(v12, v13);

      if ((v12 & 1) == 0)
      {
        return;
      }

      goto LABEL_5;
    }

    v9 = v7 >> 62;
    if (v8 == 1)
    {
      if (v9 != 1)
      {
        return;
      }

      v10 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v11 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      swift_retain_n();
      swift_retain_n();

      LOBYTE(v10) = _s8NewsFeed025FormatAnimationNodeSpringD0C2eeoiySbAC_ACtFZ_0(v10, v11);

      if ((v10 & 1) == 0)
      {
        return;
      }

      goto LABEL_5;
    }

    if (v9 != 2)
    {
      return;
    }

    v14 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v15 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v16 = *(v14 + 16);
    v17 = *(v15 + 16);
    swift_retain_n();
    swift_retain_n();

    sub_1D633DB70(v16, v17);
    if ((v18 & 1) == 0)
    {

      return;
    }

    v19 = *(v14 + 104);
    v20 = *(v14 + 120);
    v21 = *(v14 + 136);
    *(v74 + 9) = *(v14 + 145);
    v74[0] = v21;
    v73 = v20;
    v22 = *(v14 + 40);
    v23 = *(v14 + 56);
    v24 = *(v14 + 72);
    v71 = *(v14 + 88);
    v70 = v24;
    v69 = v23;
    v68 = v22;
    v72 = v19;
    v67 = *(v14 + 24);
    v25 = *(v15 + 104);
    v26 = *(v15 + 120);
    v76[0] = *(v15 + 136);
    *(v76 + 9) = *(v15 + 145);
    v75[6] = v26;
    v75[5] = v25;
    v27 = *(v15 + 56);
    v75[1] = *(v15 + 40);
    v75[2] = v27;
    v28 = *(v15 + 88);
    v75[3] = *(v15 + 72);
    v75[4] = v28;
    v75[0] = *(v15 + 24);
    __src[6] = v73;
    __src[7] = v74[0];
    *(&__src[7] + 9) = *(v74 + 9);
    __src[2] = v23;
    __src[3] = v24;
    __src[5] = v72;
    __src[4] = v71;
    __src[1] = v68;
    __src[0] = v67;
    v29 = *(v15 + 104);
    v30 = *(v15 + 136);
    __src[15] = *(v15 + 120);
    __src[16] = v30;
    *(&__src[16] + 9) = *(v15 + 145);
    v31 = *(v15 + 40);
    v32 = *(v15 + 72);
    __src[11] = *(v15 + 56);
    __src[12] = v32;
    __src[13] = *(v15 + 88);
    __src[14] = v29;
    __src[9] = *(v15 + 24);
    __src[10] = v31;
    v77[2] = v23;
    v77[3] = v24;
    *&v78[9] = *(v74 + 9);
    v77[6] = v73;
    *v78 = v74[0];
    v77[4] = v71;
    v77[5] = v72;
    v77[0] = v67;
    v77[1] = v68;
    if (sub_1D60486AC(v77) != 1)
    {
      break;
    }

    v33 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(&v67, &v58, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(v75, &v58, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v33, sub_1D5C34D84);

    __dst[6] = __src[15];
    __dst[7] = __src[16];
    *(&__dst[7] + 9) = *(&__src[16] + 9);
    __dst[2] = __src[11];
    __dst[3] = __src[12];
    __dst[4] = __src[13];
    __dst[5] = __src[14];
    __dst[0] = __src[9];
    __dst[1] = __src[10];
    if (sub_1D60486AC(__dst) != 1)
    {
      goto LABEL_25;
    }

    v64 = __src[6];
    v65[0] = __src[7];
    *(v65 + 9) = *(&__src[7] + 9);
    v60 = __src[2];
    v61 = __src[3];
    v62 = __src[4];
    v63 = __src[5];
    v58 = __src[0];
    v59 = __src[1];
    sub_1D66615F8(&v58, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5C34D84);

LABEL_5:
    if (!--v2)
    {
      return;
    }
  }

  v64 = __src[6];
  v65[0] = __src[7];
  *(v65 + 9) = *(&__src[7] + 9);
  v60 = __src[2];
  v61 = __src[3];
  v62 = __src[4];
  v63 = __src[5];
  v58 = __src[0];
  v59 = __src[1];
  v55 = __src[6];
  v56[0] = __src[7];
  *(v56 + 9) = *(&__src[7] + 9);
  v51 = __src[2];
  v52 = __src[3];
  v53 = __src[4];
  v54 = __src[5];
  v49 = __src[0];
  v50 = __src[1];
  __dst[6] = __src[15];
  __dst[7] = __src[16];
  *(&__dst[7] + 9) = *(&__src[16] + 9);
  __dst[2] = __src[11];
  __dst[3] = __src[12];
  __dst[4] = __src[13];
  __dst[5] = __src[14];
  __dst[0] = __src[9];
  __dst[1] = __src[10];
  if (sub_1D60486AC(__dst) != 1)
  {
    v47 = __src[15];
    v48[0] = __src[16];
    *(v48 + 9) = *(&__src[16] + 9);
    v43 = __src[11];
    v44 = __src[12];
    v45 = __src[13];
    v46 = __src[14];
    v41 = __src[9];
    v42 = __src[10];
    v34 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(&v67, v39, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(v75, v39, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v34, sub_1D5C34D84);
    sub_1D5D355B8(&v67, v39, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v34, sub_1D5C34D84);
    sub_1D5D355B8(v75, v39, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v34, sub_1D5C34D84);
    sub_1D5D355B8(&v58, v39, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v34, sub_1D5C34D84);
    v36 = _s8NewsFeed17FormatMediaTimingV2eeoiySbAC_ACtFZ_0(&v49, &v41);

    sub_1D66615F8(v75, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v34, sub_1D5C34D84);
    sub_1D66615F8(&v67, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v34, sub_1D5C34D84);
    v37[6] = v47;
    v38[0] = v48[0];
    *(v38 + 9) = *(v48 + 9);
    v37[2] = v43;
    v37[3] = v44;
    v37[4] = v45;
    v37[5] = v46;
    v37[0] = v41;
    v37[1] = v42;
    sub_1D62B49F0(v37);
    v39[6] = v55;
    v40[0] = v56[0];
    *(v40 + 9) = *(v56 + 9);
    v39[2] = v51;
    v39[3] = v52;
    v39[4] = v53;
    v39[5] = v54;
    v39[0] = v49;
    v39[1] = v50;
    sub_1D62B49F0(v39);
    v47 = __src[6];
    v48[0] = __src[7];
    *(v48 + 9) = *(&__src[7] + 9);
    v43 = __src[2];
    v44 = __src[3];
    v45 = __src[4];
    v46 = __src[5];
    v41 = __src[0];
    v42 = __src[1];
    sub_1D66615F8(&v41, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v34, sub_1D5C34D84);

    if (!v36)
    {
      return;
    }

    goto LABEL_5;
  }

  v35 = MEMORY[0x1E69E6720];
  sub_1D5D355B8(&v67, &v41, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5C34D84);
  sub_1D5D355B8(v75, &v41, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v35, sub_1D5C34D84);
  sub_1D5D355B8(&v58, &v41, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v35, sub_1D5C34D84);

  v47 = __src[6];
  v48[0] = __src[7];
  *(v48 + 9) = *(&__src[7] + 9);
  v43 = __src[2];
  v44 = __src[3];
  v45 = __src[4];
  v46 = __src[5];
  v41 = __src[0];
  v42 = __src[1];
  sub_1D62B49F0(&v41);
LABEL_25:
  memcpy(__dst, __src, 0x119uLL);
  sub_1D5D35558(__dst, &qword_1EC889AE0, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, sub_1D66F49B8);
}

uint64_t sub_1D633E44C(uint64_t a1, uint64_t a2)
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

  v47 = v2;
  v48 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 80);
    v34 = *(v5 + 64);
    v35 = v8;
    v36 = *(v5 + 96);
    v9 = *(v5 + 16);
    v31[0] = *v5;
    v31[1] = v9;
    v10 = *(v5 + 48);
    v32 = *(v5 + 32);
    v33 = v10;
    v24 = v31[0];
    v25 = v9;
    v26 = v32;
    v27 = v10;
    v28 = v34;
    v29 = v8;
    v30 = v36;
    v11 = *(v6 + 80);
    v40 = *(v6 + 64);
    v41 = v11;
    v42 = *(v6 + 96);
    v12 = *(v6 + 16);
    v37[0] = *v6;
    v37[1] = v12;
    v13 = *(v6 + 48);
    v38 = *(v6 + 32);
    v39 = v13;
    v17 = v37[0];
    v18 = v12;
    v19 = v38;
    v20 = v13;
    v21 = v40;
    v22 = v11;
    v23 = v42;
    sub_1D5C5C4CC(v31, v16);
    sub_1D5C5C4CC(v37, v16);
    v14 = _s8NewsFeed19FormatSourceMapNodeV2eeoiySbAC_ACtFZ_0(&v24, &v17);
    v43[4] = v21;
    v43[5] = v22;
    v44 = v23;
    v43[0] = v17;
    v43[1] = v18;
    v43[2] = v19;
    v43[3] = v20;
    sub_1D5C5C540(v43);
    v45[4] = v28;
    v45[5] = v29;
    v46 = v30;
    v45[0] = v24;
    v45[1] = v25;
    v45[2] = v26;
    v45[3] = v27;
    sub_1D5C5C540(v45);
    if (!v14)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 104;
    v5 += 104;
  }

  return 1;
}

uint64_t sub_1D633E5BC(uint64_t a1, uint64_t a2)
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

  v32 = v2;
  v33 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    v24[0] = *v5;
    v24[1] = v8;
    v9 = v5[3];
    v25 = v5[2];
    v26 = v9;
    v20 = v24[0];
    v21 = v8;
    v22 = v25;
    v23 = v9;
    v10 = *v6;
    v11 = v6[1];
    v12 = v6[3];
    v28 = v6[2];
    v29 = v12;
    v27[0] = v10;
    v27[1] = v11;
    v16 = v10;
    v17 = v11;
    v18 = v28;
    v19 = v12;
    sub_1D5C8C900(v24, v15);
    sub_1D5C8C900(v27, v15);
    v13 = _s8NewsFeed15FormatNodeStyleO2eeoiySbAC_ACtFZ_0(&v20, &v16);
    v30[0] = v16;
    v30[1] = v17;
    v30[2] = v18;
    v30[3] = v19;
    sub_1D5C8C974(v30);
    v31[0] = v20;
    v31[1] = v21;
    v31[2] = v22;
    v31[3] = v23;
    sub_1D5C8C974(v31);
    if (!v13)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 4;
    v5 += 4;
  }

  return 1;
}

void sub_1D633E6D8(unint64_t a1, unint64_t a2)
{
  v110 = type metadata accessor for FormatVersionRequirement(0);
  v4 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110, v5);
  v106 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5BF78(0, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v84 - v9;
  sub_1D66F4EB8(0, &qword_1EDF0CE38, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11, v13);
  v105 = &v84 - v14;
  v15 = type metadata accessor for FormatOption(0);
  v109 = *(v15 - 1);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (&v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v23 = (&v84 - v22);
  v24 = (a1 >> 62);
  v107 = v10;
  if (a1 >> 62)
  {
    goto LABEL_84;
  }

  v25 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    v90 = v25;
    v83 = sub_1D7263BFC();
    v25 = v90;
    if (v90 != v83)
    {
      return;
    }
  }

  else if (v25 != *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if (v25)
  {
    v26 = a1 & 0xFFFFFFFFFFFFFF8;
    v27 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    v92 = a1 & 0xFFFFFFFFFFFFFF8;
    if ((a1 & 0x8000000000000000) != 0)
    {
      v26 = a1;
    }

    if (v24)
    {
      v27 = v26;
    }

    v28 = a2 & 0xFFFFFFFFFFFFFF8;
    v29 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v91 = a2 & 0xFFFFFFFFFFFFFF8;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v28 = a2;
    }

    if (a2 >> 62)
    {
      v29 = v28;
    }

    if (v27 != v29)
    {
      v102 = v15;
      v103 = v12;
      if ((v25 & 0x8000000000000000) == 0)
      {
        v30 = 0;
        v24 = &v112;
        v31 = a1 & 0xC000000000000001;
        v32 = a2 & 0xC000000000000001;
        v85 = a2 + 32;
        v86 = a1 + 32;
        v101 = (v4 + 48);
        v88 = a1;
        v89 = a2;
        v90 = v25;
        v84 = a1 & 0xC000000000000001;
        v87 = a2 & 0xC000000000000001;
        while (1)
        {
          if (__OFADD__(v30, 1))
          {
            goto LABEL_89;
          }

          v94 = v30 + 1;
          if (v31)
          {
            v33 = MEMORY[0x1DA6FB460](v30, a1, v21);
            if (v32)
            {
              goto LABEL_20;
            }
          }

          else
          {
            if (v30 >= *(v92 + 16))
            {
              goto LABEL_91;
            }

            v33 = *(v86 + 8 * v30);

            if (v32)
            {
LABEL_20:
              v15 = MEMORY[0x1DA6FB460](v30, a2);
              goto LABEL_25;
            }
          }

          if (v30 >= *(v91 + 16))
          {
            goto LABEL_92;
          }

          v15 = *(v85 + 8 * v30);

LABEL_25:
          v34 = v33[2] == v15[2] && v33[3] == v15[3];
          if (!v34 && (sub_1D72646CC() & 1) == 0 || (swift_beginAccess(), v104 = v33, v4 = v33[4], swift_beginAccess(), a1 = v15[4], v12 = *(v4 + 16), v12 != *(a1 + 16)))
          {
LABEL_75:

LABEL_80:

            return;
          }

          if (v12)
          {
            v35 = v4 == a1;
          }

          else
          {
            v35 = 1;
          }

          if (!v35)
          {
            v93 = v15;

            if (*(v4 + 16))
            {
              v36 = 0;
              v15 = (v12 - 1);
              a2 = 32;
              while (1)
              {
                v37 = *(v4 + a2);
                v38 = *(v4 + a2 + 32);
                v126[1] = *(v4 + a2 + 16);
                v126[2] = v38;
                v126[0] = v37;
                v39 = *(v4 + a2 + 48);
                v40 = *(v4 + a2 + 64);
                v41 = *(v4 + a2 + 80);
                v127 = *(v4 + a2 + 96);
                v126[4] = v40;
                v126[5] = v41;
                v126[3] = v39;
                v42 = *(v4 + a2 + 16);
                v119 = *(v4 + a2);
                v120 = v42;
                v43 = *(v4 + a2 + 32);
                v44 = *(v4 + a2 + 48);
                v45 = *(v4 + a2 + 64);
                v46 = *(v4 + a2 + 80);
                v125 = *(v4 + a2 + 96);
                v123 = v45;
                v124 = v46;
                v121 = v43;
                v122 = v44;
                if (v36 >= *(a1 + 16))
                {
                  break;
                }

                v47 = *(a1 + a2);
                v48 = *(a1 + a2 + 32);
                v128[1] = *(a1 + a2 + 16);
                v128[2] = v48;
                v128[0] = v47;
                v49 = *(a1 + a2 + 48);
                v50 = *(a1 + a2 + 64);
                v51 = *(a1 + a2 + 80);
                v129 = *(a1 + a2 + 96);
                v128[4] = v50;
                v128[5] = v51;
                v128[3] = v49;
                v52 = *(a1 + a2 + 16);
                v112 = *(a1 + a2);
                v113 = v52;
                v53 = *(a1 + a2 + 32);
                v54 = *(a1 + a2 + 48);
                v55 = *(a1 + a2 + 64);
                v56 = *(a1 + a2 + 80);
                v118 = *(a1 + a2 + 96);
                v116 = v55;
                v117 = v56;
                v114 = v53;
                v115 = v54;
                sub_1D5C5C4CC(v126, v111);
                sub_1D5C5C4CC(v128, v111);
                v12 = static FormatSourceMapNode.== infix(_:_:)(&v119, &v112);
                v130[4] = v116;
                v130[5] = v117;
                v131 = v118;
                v130[0] = v112;
                v130[1] = v113;
                v130[2] = v114;
                v130[3] = v115;
                sub_1D5C5C540(v130);
                v132[4] = v123;
                v132[5] = v124;
                v133 = v125;
                v132[0] = v119;
                v132[1] = v120;
                v132[2] = v121;
                v132[3] = v122;
                sub_1D5C5C540(v132);
                if ((v12 & 1) == 0)
                {

LABEL_79:

                  goto LABEL_80;
                }

                if (v15 == v36)
                {

                  v31 = v84;
                  v15 = v93;
                  goto LABEL_43;
                }

                a2 += 104;
                v36 = (v36 + 1);
                if (v36 >= *(v4 + 16))
                {
                  goto LABEL_82;
                }
              }
            }

            else
            {
LABEL_82:
              __break(1u);
            }

            __break(1u);
LABEL_84:
            v25 = sub_1D7263BFC();
            goto LABEL_3;
          }

LABEL_43:
          v57 = v104;
          swift_beginAccess();
          v58 = v57[5];
          swift_beginAccess();
          v59 = *(v58 + 16);
          v108 = v15[5];
          if (v59 != *(v108 + 16))
          {
            goto LABEL_75;
          }

          v60 = v105;
          if (v59 && v58 != v108)
          {
            v93 = v15;
            v61 = v109;
            v62 = (*(v61 + 80) + 32) & ~*(v61 + 80);
            v99 = v108 + v62;
            v100 = v58 + v62;

            v63 = 0;
            v97 = v58;
            v98 = v23;
            v95 = v59;
            v96 = v18;
            while (v63 < *(v58 + 16))
            {
              v64 = *(v61 + 72) * v63;
              sub_1D6706BB4(v100 + v64, v23, type metadata accessor for FormatOption);
              if (v63 >= *(v108 + 16))
              {
                goto LABEL_88;
              }

              sub_1D6706BB4(v99 + v64, v18, type metadata accessor for FormatOption);
              if ((*v23 != *v18 || v23[1] != v18[1]) && (sub_1D72646CC() & 1) == 0)
              {
                goto LABEL_78;
              }

              *&v132[0] = v23[2];
              *&v130[0] = v18[2];

              v65 = static FormatOptionValue.== infix(_:_:)(v132, v130);

              if ((v65 & 1) == 0)
              {
                goto LABEL_78;
              }

              v66 = v23[3];
              v67 = v18[3];
              if (v66 == 1)
              {
                if (v67 != 1)
                {
                  goto LABEL_78;
                }
              }

              else
              {
                if (v67 == 1)
                {
                  goto LABEL_78;
                }

                if (v66)
                {
                  if (!v67)
                  {
                    goto LABEL_78;
                  }

                  v68 = sub_1D5BFC390(v66, v67);
                  sub_1D66A5FF8(v67);
                  if ((v68 & 1) == 0)
                  {
                    goto LABEL_78;
                  }
                }

                else if (v67)
                {
                  goto LABEL_78;
                }
              }

              v69 = *(v102 + 7);
              v70 = *(v103 + 48);
              sub_1D5CDE2EC(v23 + v69, v60, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement);
              sub_1D5CDE2EC(v18 + v69, v60 + v70, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement);
              v71 = *v101;
              v72 = v110;
              if ((*v101)(v60, 1, v110) == 1)
              {
                v73 = v71(v60 + v70, 1, v72);
                v18 = v96;
                if (v73 != 1)
                {
                  goto LABEL_77;
                }

                sub_1D5D35558(v60, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement, MEMORY[0x1E69E6720], sub_1D5B5BF78);
                v58 = v97;
                v23 = v98;
              }

              else
              {
                v75 = v60;
                v76 = v60;
                v77 = v107;
                sub_1D5CDE2EC(v75, v107, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement);
                if (v71(v76 + v70, 1, v72) == 1)
                {
                  sub_1D5D2CFE8(v77, type metadata accessor for FormatVersionRequirement);
                  v60 = v76;
                  v18 = v96;
LABEL_77:
                  sub_1D66F4424(v60, &qword_1EDF0CE38, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement, v74);
                  v23 = v98;
LABEL_78:
                  sub_1D5D2CFE8(v18, type metadata accessor for FormatOption);
                  sub_1D5D2CFE8(v23, type metadata accessor for FormatOption);

                  goto LABEL_79;
                }

                v78 = v106;
                sub_1D5C8F76C(v76 + v70, v106, type metadata accessor for FormatVersionRequirement);
                v79 = sub_1D6024840(v77, v78);
                sub_1D5D2CFE8(v78, type metadata accessor for FormatVersionRequirement);
                sub_1D5D2CFE8(v77, type metadata accessor for FormatVersionRequirement);
                sub_1D5D35558(v76, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement, MEMORY[0x1E69E6720], sub_1D5B5BF78);
                v60 = v76;
                v61 = v109;
                v18 = v96;
                v58 = v97;
                v23 = v98;
                if ((v79 & 1) == 0)
                {
                  goto LABEL_78;
                }
              }

              ++v63;
              sub_1D5D2CFE8(v18, type metadata accessor for FormatOption);
              sub_1D5D2CFE8(v23, type metadata accessor for FormatOption);
              if (v95 == v63)
              {

                v31 = v84;
                v57 = v104;
                v15 = v93;
                goto LABEL_70;
              }
            }

            __break(1u);
LABEL_88:
            __break(1u);
LABEL_89:
            __break(1u);
            break;
          }

LABEL_70:
          swift_beginAccess();
          v80 = v57[6];
          swift_beginAccess();
          v81 = v15[6];

          v82 = sub_1D5BFC390(v80, v81);

          if (v82)
          {
            v30 = v94;
            a2 = v89;
            v32 = v87;
            a1 = v88;
            if (v94 != v90)
            {
              continue;
            }
          }

          return;
        }
      }

      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
    }
  }
}

uint64_t sub_1D633F214(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a2 + 56);
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(v3 - 1);
      v8 = *v3;
      v9 = *(i - 3) == *(v3 - 3) && *(i - 2) == *(v3 - 2);
      if (!v9 && (sub_1D72646CC() & 1) == 0)
      {
        break;
      }

      v10 = sub_1D5E1E5A4(v5, v7);

      result = 0;
      if ((v10 & 1) == 0 || v6 != v8)
      {
        return result;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_1D633F328(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a2 + 64);
    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *(v3 - 2);
      v15 = *(v3 - 1);
      v9 = *v3;
      v10 = *(i - 4) == *(v3 - 4) && *(i - 3) == *(v3 - 3);
      if (!v10 && (sub_1D72646CC() & 1) == 0)
      {
        return;
      }

      sub_1D5F33D5C(v5);

      v11 = sub_1D5F33D5C(v8);
      if ((sub_1D711A22C(v5, v8, v11) & 1) == 0)
      {
        goto LABEL_42;
      }

      if (v7 > 0xFD)
      {
        if (v9 <= 0xFD)
        {
          goto LABEL_42;
        }

        goto LABEL_35;
      }

      if (v9 > 0xFD)
      {
        goto LABEL_42;
      }

      if (!(v7 >> 6))
      {
        break;
      }

      if (v7 >> 6 == 1)
      {
        if ((v9 & 0xC0) != 0x40)
        {
          goto LABEL_42;
        }

        if (v7)
        {
          goto LABEL_21;
        }

LABEL_25:
        if ((v9 & 1) != 0 || v6 != v15)
        {
          goto LABEL_42;
        }

        goto LABEL_35;
      }

      v12 = v9 & 0xC0;
      if (v6 | v7 ^ 0x80)
      {
        if (v12 != 128 || v15 != 1)
        {
LABEL_42:

          sub_1D5F33D8C(v8);

          sub_1D5F33D8C(v5);
          return;
        }
      }

      else if (v12 != 128 || v15)
      {
        goto LABEL_42;
      }

      if (v9 != 128)
      {
        goto LABEL_42;
      }

LABEL_35:
      if (v5 >> 62)
      {
        v13 = 0;
        if (v8 >> 62)
        {
LABEL_5:

          sub_1D5F33D8C(v8);

          sub_1D5F33D8C(v5);
          if (v13)
          {
            return;
          }

          goto LABEL_6;
        }
      }

      else
      {
        v13 = *(v5 + 16);
        if (v8 >> 62)
        {
          goto LABEL_5;
        }
      }

      v14 = *(v8 + 16);

      sub_1D5F33D8C(v8);

      sub_1D5F33D8C(v5);
      if (v13 != v14)
      {
        return;
      }

LABEL_6:
      v3 += 40;
      if (!--v2)
      {
        return;
      }
    }

    if (v9 >= 0x40)
    {
      goto LABEL_42;
    }

    if (v7)
    {
LABEL_21:
      if ((v9 & 1) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_35;
    }

    goto LABEL_25;
  }
}

void sub_1D633F55C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16) || !v2 || a1 == a2)
  {
    return;
  }

  v3 = (a2 + 56);
  v4 = (a1 + 56);
  while (1)
  {
    if (!v2)
    {
      __break(1u);
      return;
    }

    v10 = *(v4 - 3);
    v9 = *(v4 - 2);
    v11 = *(v4 - 8);
    v12 = *v4;
    v13 = *(v3 - 3);
    v14 = *(v3 - 2);
    v15 = *(v3 - 8);
    v16 = *v3;
    v64 = v13;
    v65 = v14;
    v63 = v2;
    if (*(v4 - 8))
    {
      if (v11 == 1)
      {
        if (v15 == 1)
        {
          v17 = *(v3 - 3);
          sub_1D5D03180(v10, v9, 1);

          sub_1D5D03180(v17, v14, 1);

          sub_1D5D07BA8(v10, v9, 1);
          sub_1D5D07BA8(v17, v14, 1);
          if ((v17 ^ v10))
          {
            sub_1D5D07BA8(v64, v14, 1);

            v53 = v10;
            v54 = v9;
            v55 = 1;
LABEL_65:
            sub_1D5D07BA8(v53, v54, v55);
            goto LABEL_66;
          }

          goto LABEL_25;
        }

        v49 = *(v3 - 3);
        sub_1D5D03180(v13, v14, v15);
        v50 = v10;
        v51 = v9;
        v52 = 1;
      }

      else
      {
        if (v15 == 2)
        {
          v20 = *(v3 - 3);
          sub_1D5D03180(v10, v9, 2);

          sub_1D5D03180(v20, v14, 2);

          sub_1D5D07BA8(v10, v9, 2);
          sub_1D5D07BA8(v20, v14, 2);
          if (v10 != v20)
          {
            sub_1D5D07BA8(v64, v14, 2);

            v53 = v10;
            v54 = v9;
            v55 = 2;
            goto LABEL_65;
          }

          goto LABEL_25;
        }

        v49 = *(v3 - 3);
        sub_1D5D03180(v13, v14, v15);
        v50 = v10;
        v51 = v9;
        v52 = 2;
      }

LABEL_59:
      sub_1D5D07BA8(v50, v51, v52);
      sub_1D5D07BA8(v49, v14, v15);
      return;
    }

    if (*(v3 - 8))
    {
      v49 = *(v3 - 3);
      sub_1D5D03180(v13, v14, v15);
      sub_1D5D03180(v10, v9, 0);
      v50 = v10;
      v51 = v9;
      v52 = 0;
      goto LABEL_59;
    }

    if (v10 == v13 && v9 == v14)
    {
      sub_1D5D03180(v10, v9, 0);

      sub_1D5D03180(v10, v9, 0);

      sub_1D5D03180(v10, v9, 0);
      sub_1D5D03180(v10, v9, 0);
      sub_1D5D07BA8(v10, v9, 0);
      sub_1D5D07BA8(v10, v9, 0);
    }

    else
    {
      v19 = *(v3 - 3);
      v61 = sub_1D72646CC();
      sub_1D5D03180(v10, v9, 0);

      sub_1D5D03180(v19, v14, 0);

      sub_1D5D03180(v19, v14, 0);
      sub_1D5D03180(v10, v9, 0);
      sub_1D5D07BA8(v10, v9, 0);
      sub_1D5D07BA8(v19, v14, 0);
      if ((v61 & 1) == 0)
      {
        sub_1D5D07BA8(v64, v14, 0);

        v53 = v10;
        v54 = v9;
        v55 = 0;
        goto LABEL_65;
      }
    }

LABEL_25:
    v21 = v12 >> 62;
    v22 = v16 >> 62;
    if (v12 >> 62)
    {
      break;
    }

    if (v22)
    {
      sub_1D5D07BA8(v64, v14, v15);

      v53 = v10;
      v54 = v9;
      v55 = v11;
      goto LABEL_65;
    }

    v44 = *(v16 + 32);
    v66 = *(v16 + 16);
    v67 = v44;
    *v68 = *(v16 + 48);
    *&v68[16] = *(v16 + 64);
    v45 = *(v12 + 32);
    v69 = *(v12 + 16);
    v70 = v45;
    *v71 = *(v12 + 48);
    *&v71[16] = *(v12 + 64);

    v46 = _s8NewsFeed21FormatTextNodeBindingO2eeoiySbAC_ACtFZ_0(&v69, &v66);

    sub_1D5D07BA8(v64, v65, v15);

    sub_1D5D07BA8(v10, v9, v11);

    if ((v46 & 1) == 0)
    {
      return;
    }

LABEL_7:
    v4 += 4;
    v3 += 4;
    v2 = v63 - 1;
    if (v63 == 1)
    {
      return;
    }
  }

  v23 = (v12 & 0x3FFFFFFFFFFFFFFFLL);
  if (v21 != 1)
  {
    if (v22 != 2)
    {
LABEL_62:
      sub_1D5D07BA8(v64, v14, v15);

      goto LABEL_63;
    }

    if (v23[2] != *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) || v23[3] != *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x18))
    {
      v5 = sub_1D72646CC();
      sub_1D5D07BA8(v64, v65, v15);

      v6 = v10;
      v7 = v9;
      v8 = v11;
      goto LABEL_6;
    }

LABEL_50:
    sub_1D5D07BA8(v64, v14, v15);

LABEL_51:
    sub_1D5D07BA8(v10, v9, v11);

    goto LABEL_7;
  }

  if (v22 != 1)
  {
    goto LABEL_62;
  }

  v59 = v11;
  v60 = v10;
  v62 = v9;
  v25 = v23[3];
  v24 = v23[4];
  v26 = v23[2];
  v28 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v27 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v29 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
  v30 = *(v26 + 32);
  v69 = *(v26 + 16);
  v70 = v30;
  *v71 = *(v26 + 48);
  *&v71[15] = *(v26 + 63);
  v31 = *(v28 + 48);
  v67 = *(v28 + 32);
  *v68 = v31;
  v32 = *(v28 + 16);
  *&v68[15] = *(v28 + 63);
  v66 = v32;

  if ((static FormatCommandBinding.== infix(_:_:)(&v69, &v66) & 1) == 0)
  {
    goto LABEL_55;
  }

  sub_1D633F55C(v25, v27);
  if ((v33 & 1) == 0)
  {
    goto LABEL_55;
  }

  if (!(v24 >> 62))
  {
    if (v29 >> 62)
    {
      goto LABEL_55;
    }

    v47 = *(v29 + 32);
    v66 = *(v29 + 16);
    v67 = v47;
    *v68 = *(v29 + 48);
    *&v68[16] = *(v29 + 64);
    v48 = *(v24 + 32);
    v69 = *(v24 + 16);
    v70 = v48;
    *v71 = *(v24 + 48);
    *&v71[16] = *(v24 + 64);

    v5 = _s8NewsFeed21FormatTextNodeBindingO2eeoiySbAC_ACtFZ_0(&v69, &v66);

    goto LABEL_53;
  }

  if (v24 >> 62 != 1)
  {
    if (v29 >> 62 != 2)
    {
      goto LABEL_55;
    }

    if (*((v24 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) != *((v29 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) || *((v24 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) != *((v29 & 0x3FFFFFFFFFFFFFFFLL) + 0x18))
    {
      v5 = sub_1D72646CC();

LABEL_53:

      sub_1D5D07BA8(v64, v65, v15);

      v6 = v60;
      v7 = v62;
      v8 = v59;
LABEL_6:
      sub_1D5D07BA8(v6, v7, v8);

      if ((v5 & 1) == 0)
      {
        return;
      }

      goto LABEL_7;
    }

    v10 = v60;
    v9 = v62;
    LOBYTE(v11) = v59;
    v14 = v65;
    goto LABEL_50;
  }

  if (v29 >> 62 != 1)
  {
    goto LABEL_55;
  }

  v34 = (v24 & 0x3FFFFFFFFFFFFFFFLL);
  v56 = v34[4];
  v57 = v34[3];
  v35 = v34[2];
  v37 = *((v29 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v36 = *((v29 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v38 = *((v29 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
  v39 = *(v35 + 32);
  v69 = *(v35 + 16);
  v70 = v39;
  *v71 = *(v35 + 48);
  *&v71[15] = *(v35 + 63);
  v40 = *(v37 + 48);
  v67 = *(v37 + 32);
  *v68 = v40;
  v41 = *(v37 + 16);
  *&v68[15] = *(v37 + 63);
  v66 = v41;
  v58 = v36;

  if (static FormatCommandBinding.== infix(_:_:)(&v69, &v66))
  {
    sub_1D633F55C(v57, v58);
    if (v42)
    {
      *&v69 = v56;
      *&v66 = v38;
      v43 = static FormatAccessibilityContent.== infix(_:_:)(&v69, &v66);

      sub_1D5D07BA8(v64, v65, v15);

      v10 = v60;
      v9 = v62;
      LOBYTE(v11) = v59;
      if ((v43 & 1) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_51;
    }
  }

LABEL_55:

  sub_1D5D07BA8(v64, v65, v15);

  v10 = v60;
  v9 = v62;
  LOBYTE(v11) = v59;
LABEL_63:
  sub_1D5D07BA8(v10, v9, v11);
LABEL_66:
}

uint64_t sub_1D633FE6C(uint64_t a1, uint64_t a2)
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
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[3];
    v30 = v5[2];
    v31 = v8;
    v9 = v5[5];
    v32 = v5[4];
    v33 = v9;
    v10 = v5[1];
    v29[0] = *v5;
    v29[1] = v10;
    v25 = v30;
    v26 = v8;
    v27 = v32;
    v28 = v9;
    v23 = v29[0];
    v24 = v10;
    v11 = v6[3];
    v35 = v6[2];
    v36 = v11;
    v12 = v6[5];
    v37 = v6[4];
    v38 = v12;
    v13 = v6[1];
    v34[0] = *v6;
    v34[1] = v13;
    v19 = v35;
    v20 = v11;
    v21 = v37;
    v22 = v12;
    v17 = v34[0];
    v18 = v13;
    sub_1D66F4220(v29, v16);
    sub_1D66F4220(v34, v16);
    v14 = sub_1D6CB4400(&v23, &v17);
    v39[2] = v19;
    v39[3] = v20;
    v39[4] = v21;
    v39[5] = v22;
    v39[0] = v17;
    v39[1] = v18;
    sub_1D66F427C(v39);
    v40[2] = v25;
    v40[3] = v26;
    v40[4] = v27;
    v40[5] = v28;
    v40[0] = v23;
    v40[1] = v24;
    sub_1D66F427C(v40);
    if ((v14 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 6;
    v5 += 6;
  }

  return 1;
}

void sub_1D633FFDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      if (*v3 == 1)
      {
        v6 = 6578544;
      }

      else
      {
        v6 = 6513005;
      }

      if (*v3)
      {
        v7 = v6;
      }

      else
      {
        v7 = 0x656E6F6870;
      }

      if (*v3)
      {
        v8 = 0xE300000000000000;
      }

      else
      {
        v8 = 0xE500000000000000;
      }

      if (*v4 == 1)
      {
        v9 = 6578544;
      }

      else
      {
        v9 = 6513005;
      }

      if (*v4)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0x656E6F6870;
      }

      if (*v4)
      {
        v11 = 0xE300000000000000;
      }

      else
      {
        v11 = 0xE500000000000000;
      }

      if (v7 == v10 && v8 == v11)
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

void sub_1D6340114(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      if (*v3)
      {
        v5 = 0x746C7561666564;
      }

      else
      {
        v5 = 1685217635;
      }

      if (*v3)
      {
        v6 = 0xE700000000000000;
      }

      else
      {
        v6 = 0xE400000000000000;
      }

      if (*v4)
      {
        v7 = 0x746C7561666564;
      }

      else
      {
        v7 = 1685217635;
      }

      if (*v4)
      {
        v8 = 0xE700000000000000;
      }

      else
      {
        v8 = 0xE400000000000000;
      }

      if (v5 == v7 && v6 == v8)
      {
      }

      else
      {
        v10 = sub_1D72646CC();

        if ((v10 & 1) == 0)
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

void sub_1D6340220(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      if (v6 > 3)
      {
        if (*v3 > 5u)
        {
          if (v6 == 6)
          {
            v8 = 0x80000001D73BCB20;
          }

          else
          {
            v8 = 0x80000001D73BCB40;
          }

          v7 = 0xD000000000000010;
        }

        else if (v6 == 4)
        {
          v7 = 0x446C616D69636564;
          v8 = 0xED00007374696769;
        }

        else
        {
          v8 = 0xE700000000000000;
          v7 = 0x7372657474656CLL;
        }
      }

      else if (*v3 > 1u)
      {
        if (v6 == 2)
        {
          v8 = 0xE800000000000000;
          v7 = 0x73656E696C77656ELL;
        }

        else
        {
          v7 = 0xD000000000000011;
          v8 = 0x80000001D73BCAF0;
        }
      }

      else
      {
        if (*v3)
        {
          v7 = 0xD000000000000016;
        }

        else
        {
          v7 = 0x6170736574696877;
        }

        if (*v3)
        {
          v8 = 0x80000001D73BCAD0;
        }

        else
        {
          v8 = 0xEB00000000736563;
        }
      }

      v9 = *v4;
      if (v9 > 3)
      {
        if (*v4 > 5u)
        {
          if (v9 == 6)
          {
            v11 = 0x80000001D73BCB20;
            if (v7 != 0xD000000000000010)
            {
              goto LABEL_5;
            }
          }

          else
          {
            v11 = 0x80000001D73BCB40;
            if (v7 != 0xD000000000000010)
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

        else if (v9 == 4)
        {
          v11 = 0xED00007374696769;
          if (v7 != 0x446C616D69636564)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v11 = 0xE700000000000000;
          if (v7 != 0x7372657474656CLL)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        if (*v4 > 1u)
        {
          if (v9 == 2)
          {
            v11 = 0xE800000000000000;
            if (v7 != 0x73656E696C77656ELL)
            {
              goto LABEL_5;
            }

            goto LABEL_45;
          }

          v10 = 0xD000000000000011;
          v11 = 0x80000001D73BCAF0;
        }

        else
        {
          v10 = 0x6170736574696877;
          v11 = 0xEB00000000736563;
          if (*v4)
          {
            v11 = 0x80000001D73BCAD0;
            if (v7 != 0xD000000000000016)
            {
              goto LABEL_5;
            }

            goto LABEL_45;
          }
        }

        if (v7 != v10)
        {
          goto LABEL_5;
        }
      }

LABEL_45:
      if (v8 != v11)
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

uint64_t sub_1D6340518(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 40);
  v4 = (a2 + 40);
  while (1)
  {
    v7 = v3 + 2;
    v8 = *v3;
    v10 = *(v4 - 1);
    v9 = *v4;
    v104 = *(v3 - 1);
    v112[0] = v10;
    v11 = v8 & 0x7FFFFFFFFFFFFFFFLL;
    v12 = v9 & 0x7FFFFFFFFFFFFFFFLL;

    swift_retain_n();
    swift_retain_n();

    v13 = static FormatExpression.== infix(_:_:)(&v104, v112);

    if ((v13 & 1) == 0)
    {
      goto LABEL_121;
    }

    v103 = v7;
    if (v8 < 0)
    {
      if ((v9 & 0x8000000000000000) == 0)
      {
        goto LABEL_121;
      }

      v101 = v2;
      v32 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
      v33 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
      v34 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
      v35 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
      v36 = *((v9 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
      v37 = *((v9 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
      v38 = *(v12 + 32);
      v39 = *(v12 + 40);
      v104 = *(v11 + 16);
      v105 = v33;
      v106 = v34;
      v107 = v35;
      v108 = v36;
      v109 = v37;
      v110 = v38;
      v111 = v39;
      if (!v35)
      {

        if (v39)
        {
          goto LABEL_129;
        }

        sub_1D66AD7C0(&v104, &qword_1EC889AF0, &type metadata for FormatVideoPlayerNodeBinding);

        v2 = v101;
        if (v36 != v32)
        {
          return 0;
        }

        goto LABEL_8;
      }

      if (v35 == 1)
      {
        if (v39 == 1)
        {

          sub_1D66AD7C0(&v104, &qword_1EC889AF0, &type metadata for FormatVideoPlayerNodeBinding);
          if (v32 >> 6)
          {
            if (v32 >> 6 == 1)
            {

              if ((v36 & 0xC0) != 0x40)
              {
                return 0;
              }

              v2 = v101;
              if ((v36 ^ v32))
              {
                return 0;
              }
            }

            else
            {

              v2 = v101;
              if ((v36 & 0xC0) != 0x80)
              {
                return 0;
              }
            }
          }

          else
          {

            if (v36 >= 0x40u)
            {
              return 0;
            }

            v2 = v101;
            if ((v36 & 0x3F) != v32)
            {
              return 0;
            }
          }

          goto LABEL_8;
        }

LABEL_129:
        v79 = v36;
        v80 = v37;
        v81 = v38;
        v82 = v39;
      }

      else
      {
        if (v39 == 2)
        {
          if (v32 == v36 && v33 == v37 || (sub_1D72646CC() & 1) != 0)
          {
            sub_1D62B6240(v36, v37, v38, 2);
            sub_1D62B6240(v32, v33, v34, 2);

            sub_1D62B6240(v36, v37, v38, 2);
            sub_1D62B6240(v32, v33, v34, 2);
            v6 = sub_1D6341C50(v34, v38);
            sub_1D66AD7C0(&v104, &qword_1EC889AF0, &type metadata for FormatVideoPlayerNodeBinding);
            sub_1D62B628C(v36, v37, v38, 2);
            sub_1D62B628C(v32, v33, v34, 2);

            v2 = v101;
            if ((v6 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_8;
          }

          v83 = v36;
          v84 = v37;
          v85 = v38;
          v86 = 2;
        }

        else
        {

          v83 = v36;
          v84 = v37;
          v85 = v38;
          v86 = v39;
        }

        sub_1D62B6240(v83, v84, v85, v86);
        v79 = v32;
        v80 = v33;
        v81 = v34;
        v82 = 2;
      }

      sub_1D62B6240(v79, v80, v81, v82);
      sub_1D66AD7C0(&v104, &qword_1EC889AF0, &type metadata for FormatVideoPlayerNodeBinding);

LABEL_137:

      return 0;
    }

    if (v9 < 0)
    {
      goto LABEL_121;
    }

    v15 = *(v8 + 16);
    v14 = *(v8 + 24);
    v17 = *(v9 + 16);
    v16 = *(v9 + 24);

    if ((sub_1D6340518(v15, v17) & 1) == 0)
    {
LABEL_123:

      goto LABEL_137;
    }

    if ((v14 & 0x8000000000000000) == 0)
    {
      break;
    }

    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_123;
    }

    v99 = v4;
    v102 = v2;
    v40 = *((v14 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v41 = *((v14 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v42 = *((v14 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    v43 = *((v14 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
    v44 = v16 & 0x7FFFFFFFFFFFFFFFLL;
    v46 = *((v16 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v45 = *((v16 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v47 = *(v44 + 32);
    v48 = *(v44 + 40);
    v104 = v40;
    v105 = v41;
    v106 = v42;
    v107 = v43;
    v108 = v46;
    v109 = v45;
    v110 = v47;
    v111 = v48;
    if (v43)
    {
      if (v43 == 1)
      {
        if (v48 != 1)
        {
          goto LABEL_132;
        }

        sub_1D66AD7C0(&v104, &qword_1EC889AF0, &type metadata for FormatVideoPlayerNodeBinding);
        if (v40 >> 6)
        {
          if (v40 >> 6 == 1)
          {
            if ((v46 & 0xC0) != 0x40)
            {
              goto LABEL_133;
            }

            if ((v46 ^ v40))
            {
              goto LABEL_122;
            }
          }

          else
          {
            if ((v46 & 0xC0) != 0x80)
            {
LABEL_133:

LABEL_122:

              goto LABEL_152;
            }
          }
        }

        else
        {
          if (v46 >= 0x40u)
          {
            goto LABEL_133;
          }

          if ((v46 & 0x3F) != v40)
          {
            goto LABEL_122;
          }
        }
      }

      else
      {
        if (v48 != 2)
        {

LABEL_132:

          sub_1D62B6240(v46, v45, v47, v48);
          sub_1D66AD7C0(&v104, &qword_1EC889AF0, &type metadata for FormatVideoPlayerNodeBinding);

          goto LABEL_152;
        }

        if ((v40 != v46 || v41 != v45) && (sub_1D72646CC() & 1) == 0)
        {

          sub_1D62B6240(v46, v45, v47, 2);
          sub_1D62B6240(v40, v41, v42, 2);
          sub_1D66AD7C0(&v104, &qword_1EC889AF0, &type metadata for FormatVideoPlayerNodeBinding);

          goto LABEL_122;
        }

        sub_1D62B6240(v46, v45, v47, 2);
        sub_1D62B6240(v40, v41, v42, 2);

        sub_1D62B6240(v46, v45, v47, 2);
        sub_1D62B6240(v40, v41, v42, 2);
        v70 = sub_1D6341C50(v42, v47);
        sub_1D66AD7C0(&v104, &qword_1EC889AF0, &type metadata for FormatVideoPlayerNodeBinding);
        sub_1D62B628C(v46, v45, v47, 2);
        sub_1D62B628C(v40, v41, v42, 2);

        if ((v70 & 1) == 0)
        {
          goto LABEL_122;
        }
      }

      goto LABEL_106;
    }

    if (v48)
    {
      goto LABEL_132;
    }

    sub_1D66AD7C0(&v104, &qword_1EC889AF0, &type metadata for FormatVideoPlayerNodeBinding);

    v69 = (v46 ^ v40);

    v4 = v99;
    if (v69)
    {
      return 0;
    }

LABEL_8:
    v4 += 2;
    result = 1;
    v3 = v103;
    if (!--v2)
    {
      return result;
    }
  }

  if (v16 < 0)
  {
    goto LABEL_123;
  }

  v18 = *(v14 + 16);
  v19 = *(v14 + 24);
  v20 = *(v16 + 16);
  v21 = *(v16 + 24);

  if ((sub_1D6340518(v18, v20) & 1) == 0)
  {
LABEL_125:

    goto LABEL_152;
  }

  if (v19 < 0)
  {
    if ((v21 & 0x8000000000000000) == 0)
    {
      goto LABEL_125;
    }

    v99 = v4;
    v49 = *((v19 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v50 = *((v19 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    v51 = *((v19 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
    v52 = v21 & 0x7FFFFFFFFFFFFFFFLL;
    v53 = *((v19 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v54 = *(v52 + 16);
    v55 = *(v52 + 24);
    v56 = *(v52 + 32);
    v57 = *(v52 + 40);
    v104 = v53;
    v105 = v49;
    v106 = v50;
    v107 = v51;
    v108 = v54;
    v109 = v55;
    v110 = v56;
    v111 = v57;
    if (v51)
    {
      if (v51 == 1)
      {
        if (v57 != 1)
        {
          goto LABEL_139;
        }

        v58 = v54;
        v59 = v54;

        sub_1D66AD7C0(&v104, &qword_1EC889AF0, &type metadata for FormatVideoPlayerNodeBinding);
        if (v53 >> 6)
        {
          v60 = v59 & 0xC0;
          if (v53 >> 6 == 1)
          {
            if (v60 != 64)
            {
              goto LABEL_140;
            }

            if ((v58 ^ v53))
            {
              goto LABEL_121;
            }
          }

          else
          {
            if (v60 != 128)
            {
LABEL_140:

LABEL_121:

              goto LABEL_122;
            }
          }
        }

        else
        {
          if (v59 >= 0x40)
          {
            goto LABEL_140;
          }

          if ((v58 & 0x3F) != v53)
          {
            goto LABEL_121;
          }
        }

        goto LABEL_107;
      }

      if (v57 != 2)
      {
        v87 = v54;

        v54 = v87;
LABEL_139:
        v88 = v54;

        sub_1D62B6240(v88, v55, v56, v57);
        sub_1D66AD7C0(&v104, &qword_1EC889AF0, &type metadata for FormatVideoPlayerNodeBinding);

        goto LABEL_152;
      }

      if (v53 != v54 || v49 != v55)
      {
        v72 = v54;
        v73 = sub_1D72646CC();
        v54 = v72;
        if ((v73 & 1) == 0)
        {

          sub_1D62B6240(v72, v55, v56, 2);
          sub_1D62B6240(v53, v49, v50, 2);
          sub_1D66AD7C0(&v104, &qword_1EC889AF0, &type metadata for FormatVideoPlayerNodeBinding);

          goto LABEL_151;
        }
      }

      v102 = v2;
      v74 = v54;
      sub_1D62B6240(v54, v55, v56, 2);
      sub_1D62B6240(v53, v49, v50, 2);

      sub_1D62B6240(v74, v55, v56, 2);
      sub_1D62B6240(v53, v49, v50, 2);
      v75 = sub_1D6341C50(v50, v56);
      sub_1D66AD7C0(&v104, &qword_1EC889AF0, &type metadata for FormatVideoPlayerNodeBinding);
      sub_1D62B628C(v74, v55, v56, 2);
      sub_1D62B628C(v53, v49, v50, 2);

      if ((v75 & 1) == 0)
      {
        goto LABEL_151;
      }

LABEL_106:

      v2 = v102;
LABEL_107:
      v4 = v99;
      goto LABEL_8;
    }

    if (v57)
    {
      goto LABEL_139;
    }

    v71 = v54;

    sub_1D66AD7C0(&v104, &qword_1EC889AF0, &type metadata for FormatVideoPlayerNodeBinding);

    v4 = v99;
    if (v71 != v53)
    {
      return 0;
    }

    goto LABEL_8;
  }

  if (v21 < 0)
  {
    goto LABEL_125;
  }

  v22 = v4;
  v24 = *(v19 + 16);
  v23 = *(v19 + 24);
  v26 = *(v21 + 16);
  v25 = *(v21 + 24);

  if ((sub_1D6340518(v24, v26) & 1) == 0)
  {
LABEL_124:

    goto LABEL_151;
  }

  v100 = v2;
  if (v23 < 0)
  {
    if ((v25 & 0x8000000000000000) == 0)
    {
      goto LABEL_124;
    }

    v61 = *((v23 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v62 = *((v23 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v63 = *((v23 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    v64 = *((v23 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
    v66 = *((v25 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v65 = *((v25 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v67 = *((v25 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    v68 = *((v25 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
    v98 = v61;
    v104 = v61;
    v105 = v62;
    v106 = v63;
    v107 = v64;
    v108 = v66;
    v109 = v65;
    v110 = v67;
    v111 = v68;
    if (!v64)
    {
      v4 = v22;
      if (v68)
      {
        goto LABEL_144;
      }

      sub_1D66AD7C0(&v104, &qword_1EC889AF0, &type metadata for FormatVideoPlayerNodeBinding);

      if (v66 != v98)
      {
        goto LABEL_151;
      }

      goto LABEL_120;
    }

    v4 = v22;
    if (v64 == 1)
    {
      if (v68 != 1)
      {
        goto LABEL_144;
      }

      sub_1D66AD7C0(&v104, &qword_1EC889AF0, &type metadata for FormatVideoPlayerNodeBinding);
      if (!(v98 >> 6))
      {
        if (v66 >= 0x40u)
        {
          goto LABEL_145;
        }

        if ((v66 & 0x3F) != v98)
        {
          goto LABEL_149;
        }

        goto LABEL_119;
      }

      if (v98 >> 6 == 1)
      {
        if ((v66 & 0xC0) != 0x40)
        {
          goto LABEL_145;
        }

        if ((v66 ^ v98))
        {
          goto LABEL_149;
        }

        goto LABEL_119;
      }

      if ((v66 & 0xC0) == 0x80)
      {

LABEL_119:

LABEL_120:

        v2 = v100;
        goto LABEL_8;
      }

LABEL_145:
    }

    else
    {
      if (v68 != 2)
      {
        v89 = v67;
        v90 = v65;

        v65 = v90;
        v67 = v89;
LABEL_144:
        v91 = v67;
        v92 = v65;

        sub_1D62B6240(v66, v92, v91, v68);
        sub_1D66AD7C0(&v104, &qword_1EC889AF0, &type metadata for FormatVideoPlayerNodeBinding);

        goto LABEL_150;
      }

      v96 = v63;
      v97 = v67;
      if (v61 == v66 && v62 == v65 || (v76 = v66, v77 = v65, v78 = sub_1D72646CC(), v65 = v77, v66 = v76, (v78 & 1) != 0))
      {
        v94 = v65;
        sub_1D62B6240(v66, v65, v97, 2);
        sub_1D62B6240(v98, v62, v96, 2);

        sub_1D62B6240(v66, v94, v97, 2);
        sub_1D62B6240(v98, v62, v96, 2);
        v95 = sub_1D6341C50(v96, v97);
        sub_1D66AD7C0(&v104, &qword_1EC889AF0, &type metadata for FormatVideoPlayerNodeBinding);
        sub_1D62B628C(v66, v94, v97, 2);
        sub_1D62B628C(v98, v62, v96, 2);

        if ((v95 & 1) == 0)
        {
          goto LABEL_149;
        }

        goto LABEL_119;
      }

      v93 = v65;

      sub_1D62B6240(v76, v93, v97, 2);
      sub_1D62B6240(v98, v62, v96, 2);
      sub_1D66AD7C0(&v104, &qword_1EC889AF0, &type metadata for FormatVideoPlayerNodeBinding);
    }

LABEL_149:

LABEL_150:

    goto LABEL_151;
  }

  if (v25 < 0)
  {
    goto LABEL_124;
  }

  v28 = *(v23 + 16);
  v27 = *(v23 + 24);
  v29 = *(v25 + 16);
  v30 = *(v25 + 24);

  if (sub_1D6340518(v28, v29))
  {
    v104 = v27;
    v112[0] = v30;
    v31 = static FormatVideoPlayerContent.== infix(_:_:)(&v104, v112);

    if ((v31 & 1) == 0)
    {
      goto LABEL_127;
    }

    v4 = v22;
    goto LABEL_120;
  }

LABEL_127:

LABEL_151:

LABEL_152:

  return 0;
}

uint64_t sub_1D6341C50(uint64_t result, uint64_t a2)
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
  v4 = result + 32;
  v5 = a2 + 32;
  while (v3 != v2)
  {
    v6 = *(v4 + 8 * v3);
    v7 = *(v5 + 8 * v3);
    if (v6)
    {
      if (!v7)
      {
LABEL_31:

        return 0;
      }

      v8 = *(v6 + 16);
      if (v8 != *(v7 + 16))
      {
        return 0;
      }

      if (v8)
      {
        v9 = v6 == v7;
      }

      else
      {
        v9 = 1;
      }

      if (!v9)
      {
        v10 = (v6 + 48);
        v11 = (v7 + 48);
        while (v8)
        {
          v12 = *v10;
          v13 = *v11;
          v14 = *(v10 - 2) == *(v11 - 2) && *(v10 - 1) == *(v11 - 1);
          if (!v14 && (sub_1D72646CC() & 1) == 0)
          {
            return 0;
          }

          result = *(v12 + 16);
          if (result != *(v13 + 16) || *(v12 + 24) != *(v13 + 24))
          {
            result = sub_1D72646CC();
            if ((result & 1) == 0)
            {
              return 0;
            }
          }

          v10 += 3;
          v11 += 3;
          if (!--v8)
          {
            goto LABEL_7;
          }
        }

        __break(1u);
        break;
      }
    }

    else
    {
      if (v7)
      {
        goto LABEL_31;
      }

      result = swift_bridgeObjectRelease_n();
    }

LABEL_7:
    if (++v3 == v2)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6341D90(uint64_t a1, uint64_t a2)
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
      v7 = *(v3 - 2) == *(v4 - 2) && *(v3 - 1) == *(v4 - 1);
      if (!v7 && (sub_1D72646CC() & 1) == 0)
      {
        return 0;
      }

      if (v5 < 0)
      {
        if ((v6 & 0x8000000000000000) == 0)
        {
          return 0;
        }

        v8 = v5 & 0x7FFFFFFFFFFFFFFFLL;
        v9 = *(v8 + 16);
        v10 = *(v8 + 24);
        v12 = *((v6 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
        v11 = *((v6 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
        if (v9 < 0)
        {
          if ((v12 & 0x8000000000000000) == 0)
          {

            swift_retain_n();

            return 0;
          }

          v13 = v9 & 0x7FFFFFFFFFFFFFFFLL;
          v92 = *(v8 + 24);
          v14 = *((v9 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
          v90 = *(v13 + 24);
          v91 = v11;
          v15 = v12 & 0x7FFFFFFFFFFFFFFFLL;
          v16 = *(v15 + 16);
          v89 = *(v15 + 24);
          if (v14 < 0)
          {
            if ((v16 & 0x8000000000000000) == 0)
            {

              swift_retain_n();

LABEL_73:

              goto LABEL_112;
            }

            v17 = v14 & 0x7FFFFFFFFFFFFFFFLL;
            v18 = *((v14 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
            v88 = *(v17 + 24);
            v19 = *((v16 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
            if (v18 < 0)
            {
              if ((v19 & 0x8000000000000000) == 0)
              {

                swift_retain_n();
                swift_retain_n();

                goto LABEL_110;
              }

              v21 = v18 & 0x7FFFFFFFFFFFFFFFLL;
              v22 = *((v18 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
              v84 = *(v21 + 24);
              v23 = v19 & 0x7FFFFFFFFFFFFFFFLL;
              v24 = *(v23 + 16);
              v87 = *(v23 + 24);
              v85 = *((v16 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
              if (v22 < 0)
              {
                if ((v24 & 0x8000000000000000) == 0)
                {

                  swift_retain_n();
                  swift_retain_n();

                  goto LABEL_80;
                }

                v83 = v22 & 0x7FFFFFFFFFFFFFFFLL;
                v26 = *((v22 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
                v82 = *(v83 + 24);
                v27 = v24 & 0x7FFFFFFFFFFFFFFFLL;
                v28 = *(v27 + 16);
                if (v26 < 0)
                {
                  if ((v28 & 0x8000000000000000) == 0)
                  {

                    swift_retain_n();
                    swift_retain_n();

                    swift_retain_n();

                    goto LABEL_84;
                  }

                  v79 = v26 & 0x7FFFFFFFFFFFFFFFLL;
                  v30 = *((v26 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
                  v80 = v28 & 0x7FFFFFFFFFFFFFFFLL;
                  v81 = *(v27 + 24);
                  v31 = *((v28 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
                  v77 = *(v79 + 24);
                  v78 = *(v80 + 24);
                  if (v30 < 0)
                  {
                    if ((v31 & 0x8000000000000000) == 0)
                    {

                      swift_retain_n();
                      swift_retain_n();

                      swift_retain_n();

                      swift_retain_n();

                      goto LABEL_106;
                    }

                    v33 = v30 & 0x7FFFFFFFFFFFFFFFLL;
                    v34 = *((v30 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
                    v35 = *(v33 + 24);
                    v36 = v31 & 0x7FFFFFFFFFFFFFFFLL;
                    v37 = *(v36 + 16);
                    v76 = *(v36 + 24);
                    if (v34 < 0)
                    {
                      v74 = *(v33 + 24);
                      if ((v37 & 0x8000000000000000) == 0)
                      {

                        swift_retain_n();
                        swift_retain_n();

                        swift_retain_n();

                        swift_retain_n();

                        swift_retain_n();

                        goto LABEL_91;
                      }

                      v39 = v34 & 0x7FFFFFFFFFFFFFFFLL;
                      v40 = *((v34 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
                      v41 = *(v39 + 24);
                      v42 = v37 & 0x7FFFFFFFFFFFFFFFLL;
                      v44 = *(v42 + 16);
                      v43 = *(v42 + 24);
                      if (v40 < 0)
                      {
                        if ((v44 & 0x8000000000000000) == 0)
                        {

                          swift_retain_n();
                          swift_retain_n();

                          swift_retain_n();

                          swift_retain_n();

                          swift_retain_n();

                          swift_retain_n();

                          goto LABEL_104;
                        }

                        v45 = v40 & 0x7FFFFFFFFFFFFFFFLL;
                        v46 = *((v40 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
                        v70 = *(v45 + 24);
                        v71 = *(v39 + 24);
                        v47 = v44 & 0x7FFFFFFFFFFFFFFFLL;
                        v48 = *(v47 + 16);
                        v72 = *(v47 + 24);
                        v73 = *(v42 + 24);
                        if (v46 < 0)
                        {
                          if ((v48 & 0x8000000000000000) == 0)
                          {

                            swift_retain_n();
                            swift_retain_n();

                            swift_retain_n();

                            swift_retain_n();

                            swift_retain_n();

                            swift_retain_n();

                            swift_retain_n();

                            goto LABEL_103;
                          }

                          v50 = v46 & 0x7FFFFFFFFFFFFFFFLL;
                          v51 = *((v46 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
                          v69 = *(v50 + 24);
                          v52 = v48 & 0x7FFFFFFFFFFFFFFFLL;
                          v53 = *(v52 + 16);
                          v54 = *(v52 + 24);
                          if (v51 < 0)
                          {
                            if ((v53 & 0x8000000000000000) == 0)
                            {

                              swift_retain_n();
                              swift_retain_n();

                              swift_retain_n();

                              swift_retain_n();

                              swift_retain_n();

                              swift_retain_n();

                              swift_retain_n();

                              swift_retain_n();

                              goto LABEL_102;
                            }

                            v66 = *((v51 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
                            v67 = *((v51 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
                            v68 = *((v53 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
                            v65 = *((v53 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);

                            swift_retain_n();
                            swift_retain_n();

                            swift_retain_n();

                            swift_retain_n();

                            swift_retain_n();

                            swift_retain_n();

                            swift_retain_n();

                            swift_retain_n();

                            swift_retain_n();
                            v49 = v72;

                            swift_retain_n();
                            v55 = v54;

                            LOBYTE(v67) = sub_1D6365CBC(v66, v67, v68, v65);

                            if ((v67 & 1) == 0)
                            {

                              goto LABEL_102;
                            }
                          }

                          else
                          {
                            if (v53 < 0)
                            {
                              swift_retain_n();
                              swift_retain_n();

                              swift_retain_n();

                              swift_retain_n();

                              swift_retain_n();

                              swift_retain_n();

                              swift_retain_n();

                              swift_retain_n();

LABEL_102:

                              goto LABEL_103;
                            }

                            swift_retain_n();
                            swift_retain_n();

                            swift_retain_n();

                            swift_retain_n();

                            swift_retain_n();

                            swift_retain_n();

                            swift_retain_n();

                            swift_retain_n();

                            swift_retain_n();
                            v49 = v72;

                            v55 = v54;
                          }

                          v56 = sub_1D6341D90(v69, v55);

                          swift_bridgeObjectRelease_n();
                          if ((v56 & 1) == 0)
                          {

                            goto LABEL_103;
                          }
                        }

                        else
                        {
                          if (v48 < 0)
                          {
                            swift_retain_n();
                            swift_retain_n();

                            swift_retain_n();

                            swift_retain_n();

                            swift_retain_n();

                            swift_retain_n();

                            swift_retain_n();

LABEL_103:

                            goto LABEL_104;
                          }

                          swift_retain_n();
                          swift_retain_n();

                          swift_retain_n();

                          swift_retain_n();

                          swift_retain_n();

                          swift_retain_n();

                          swift_retain_n();

                          swift_retain_n();

                          v49 = v72;
                        }

                        v57 = sub_1D6341D90(v70, v49);

                        swift_bridgeObjectRelease_n();
                        v43 = v73;
                        v41 = v71;
                        if ((v57 & 1) == 0)
                        {

                          goto LABEL_104;
                        }
                      }

                      else
                      {
                        if (v44 < 0)
                        {
                          swift_retain_n();
                          swift_retain_n();

                          swift_retain_n();

                          swift_retain_n();

                          swift_retain_n();

                          swift_retain_n();

LABEL_104:

LABEL_105:

LABEL_106:

                          goto LABEL_107;
                        }

                        swift_retain_n();
                        swift_retain_n();

                        swift_retain_n();

                        swift_retain_n();

                        swift_retain_n();

                        swift_retain_n();

                        swift_retain_n();
                      }

                      v75 = sub_1D6341D90(v41, v43);

                      swift_bridgeObjectRelease_n();
                      v38 = v76;
                      v35 = v74;
                      if ((v75 & 1) == 0)
                      {

                        goto LABEL_105;
                      }
                    }

                    else
                    {
                      if (v37 < 0)
                      {
                        swift_retain_n();
                        swift_retain_n();

                        swift_retain_n();

                        swift_retain_n();

                        swift_retain_n();

LABEL_91:

                        goto LABEL_105;
                      }

                      swift_retain_n();
                      swift_retain_n();

                      swift_retain_n();

                      swift_retain_n();

                      swift_retain_n();

                      swift_retain_n();

                      v38 = v76;
                    }

                    v58 = sub_1D6341D90(v35, v38);

                    swift_bridgeObjectRelease_n();
                    v32 = v78;
                    if ((v58 & 1) == 0)
                    {

LABEL_107:

                      goto LABEL_108;
                    }
                  }

                  else
                  {
                    if (v31 < 0)
                    {
                      swift_retain_n();
                      swift_retain_n();

                      swift_retain_n();

                      swift_retain_n();

                      goto LABEL_106;
                    }

                    swift_retain_n();
                    swift_retain_n();

                    swift_retain_n();

                    swift_retain_n();

                    swift_retain_n();

                    v32 = v78;
                  }

                  v59 = sub_1D6341D90(v77, v32);

                  swift_bridgeObjectRelease_n();
                  v29 = v81;
                  if ((v59 & 1) == 0)
                  {

                    goto LABEL_108;
                  }
                }

                else
                {
                  if (v28 < 0)
                  {
                    swift_retain_n();
                    swift_retain_n();

                    swift_retain_n();

LABEL_84:

LABEL_108:

LABEL_109:

LABEL_110:

LABEL_111:

LABEL_112:

                    return 0;
                  }

                  v29 = *(v27 + 24);
                  swift_retain_n();
                  swift_retain_n();

                  swift_retain_n();

                  swift_retain_n();
                }

                v60 = sub_1D6341D90(v82, v29);

                swift_bridgeObjectRelease_n();
                v25 = v87;
                if ((v60 & 1) == 0)
                {

                  goto LABEL_109;
                }
              }

              else
              {
                if (v24 < 0)
                {
                  swift_retain_n();
                  swift_retain_n();

LABEL_80:

                  goto LABEL_109;
                }

                swift_retain_n();
                swift_retain_n();

                swift_retain_n();

                v25 = v87;
              }

              v86 = sub_1D6341D90(v84, v25);

              swift_bridgeObjectRelease_n();
              v20 = v85;
              if ((v86 & 1) == 0)
              {

                goto LABEL_111;
              }
            }

            else
            {
              if (v19 < 0)
              {
                swift_retain_n();
                swift_retain_n();

                goto LABEL_111;
              }

              v20 = *((v16 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
              swift_retain_n();
              swift_retain_n();
            }

            v61 = sub_1D6341D90(v88, v20);

            swift_bridgeObjectRelease_n();
            if ((v61 & 1) == 0)
            {

              goto LABEL_111;
            }
          }

          else
          {

            swift_retain_n();

            if (v16 < 0)
            {

              goto LABEL_112;
            }
          }

          v62 = sub_1D6341D90(v90, v89);

          v11 = v91;
          v10 = v92;
          if ((v62 & 1) == 0)
          {

            goto LABEL_73;
          }
        }

        else
        {

          swift_retain_n();

          if (v12 < 0)
          {

            return 0;
          }
        }

        v63 = sub_1D6341D90(v10, v11);

        if ((v63 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v6 < 0)
      {
        return 0;
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

void sub_1D6343C34(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16) || !v2 || a1 == a2)
  {
    return;
  }

  v3 = 0;
  v4 = a1 + 32;
  v5 = a2 + 32;
  do
  {
    if (v3 == v2)
    {
      goto LABEL_76;
    }

    v6 = (v4 + 24 * v3);
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];
    v10 = (v5 + 24 * v3);
    v11 = v10[2];
    v12 = v7 == *v10 && v8 == v10[1];
    if (!v12 && (sub_1D72646CC() & 1) == 0)
    {
      break;
    }

    v13 = *(v9 + 16);
    if (v13 != *(v11 + 16))
    {
      break;
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
      v47 = v11 + 32;
      v48 = v9 + 32;

      v15 = 0;
      v45 = v11;
      v46 = v9;
      v43 = v3;
      v44 = v2;
      v41 = v5;
      v42 = v4;
      v40 = v13;
      while (1)
      {
        if (v15 >= *(v9 + 16))
        {
          goto LABEL_77;
        }

        if (v15 >= *(v11 + 16))
        {
          goto LABEL_78;
        }

        v16 = (v48 + 48 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = v16[2];
        v20 = v16[3];
        v52 = v16[4];
        v51 = v16[5];
        v49 = v15;
        v21 = (v47 + 48 * v15);
        v23 = v21[2];
        v22 = v21[3];
        v24 = v21[4];
        v53 = v21[5];
        v25 = v17 == *v21 && v18 == v21[1];
        if (!v25 && (sub_1D72646CC() & 1) == 0 || (v26 = *(v19 + 16), v26 != *(v23 + 16)))
        {
LABEL_69:

          goto LABEL_70;
        }

        v50 = v22;
        if (v26)
        {

          if (v19 != v23)
          {
            v27 = 0;
            v28 = 0;
            v54 = v23;
            while (v28 < *(v19 + 16))
            {
              if (v28 >= *(v23 + 16))
              {
                goto LABEL_75;
              }

              v29 = *(v19 + v27 + 48);
              v30 = *(v23 + v27 + 48);
              v31 = *(v19 + v27 + 32) == *(v23 + v27 + 32) && *(v19 + v27 + 40) == *(v23 + v27 + 40);
              if (!v31 && (sub_1D72646CC() & 1) == 0)
              {
                goto LABEL_62;
              }

              v32 = v30 & 0xF000000000000007;
              if ((~v29 & 0xF000000000000007) != 0)
              {
                if (v32 == 0xF000000000000007)
                {

                  sub_1D5C84FF4(v29);
                  sub_1D5C84FF4(v30);
                  goto LABEL_62;
                }

                v55 = v30;
                v56[0] = v29;
                sub_1D5CFCFAC(v30);
                sub_1D5CFCFAC(v29);
                sub_1D5CFCFAC(v29);
                sub_1D5CFCFAC(v30);

                sub_1D5CFCFAC(v29);

                sub_1D5CFCFAC(v30);
                v33 = static FormatOptionValue.== infix(_:_:)(v56, &v55);
                sub_1D5C84FF4(v29);
                sub_1D5C84FF4(v30);
                sub_1D5C84FF4(v30);
                sub_1D5C84FF4(v29);

                sub_1D5C84FF4(v30);

                sub_1D5C84FF4(v29);
                if ((v33 & 1) == 0)
                {

                  goto LABEL_67;
                }
              }

              else
              {
                if (v32 != 0xF000000000000007)
                {

                  sub_1D5C84FF4(v29);
                  sub_1D5C84FF4(v30);

                  goto LABEL_66;
                }

                sub_1D5C84FF4(v29);
                sub_1D5C84FF4(v30);
              }

              ++v28;
              v27 += 24;
              v23 = v54;
              if (v26 == v28)
              {
                goto LABEL_45;
              }
            }

LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
LABEL_78:
            __break(1u);
            return;
          }
        }

        else
        {
        }

LABEL_45:
        v34 = *(v20 + 16);
        if (v34 != *(v50 + 16))
        {

LABEL_66:

LABEL_67:

          goto LABEL_70;
        }

        if (v34)
        {
          v35 = v20 == v50;
        }

        else
        {
          v35 = 1;
        }

        v11 = v45;
        if (!v35)
        {
          v36 = 4;
          while ((v36 - 4) < *(v20 + 16))
          {
            v37 = *(v20 + 8 * v36);
            v56[0] = v37;
            if ((v36 - 4) >= *(v50 + 16))
            {
              goto LABEL_73;
            }

            v55 = *(v50 + 8 * v36);
            v38 = v55;
            sub_1D5FBABE0(v37);
            sub_1D5FBABE0(v38);
            LOBYTE(v38) = static FormatSlotTransform.== infix(_:_:)(v56, &v55);
            sub_1D5FBAC60(v55);
            sub_1D5FBAC60(v56[0]);
            if ((v38 & 1) == 0)
            {
              goto LABEL_62;
            }

            ++v36;
            if (!--v34)
            {
              goto LABEL_55;
            }
          }

          __break(1u);
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

LABEL_55:
        if ((sub_1D6344414(v52, v24) & 1) == 0)
        {
LABEL_62:

LABEL_70:

          return;
        }

        v39 = sub_1D5BFC390(v51, v53);

        v9 = v46;
        if ((v39 & 1) == 0)
        {
          goto LABEL_69;
        }

        v15 = v49 + 1;
        v5 = v41;
        v3 = v43;
        v2 = v44;
        v4 = v42;
        if (v49 + 1 == v40)
        {

          break;
        }
      }
    }

    ++v3;
  }

  while (v3 != v2);
}

uint64_t sub_1D6344414(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatContentSlotItemObject(0);
  v53 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v42 - v10;
  v12 = type metadata accessor for FormatContentSlotItem(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v20 = &v42 - v19;
  v21 = *(a1 + 16);
  if (v21 != *(a2 + 16))
  {
    return 0;
  }

  if (!v21 || a1 == a2)
  {
    return 1;
  }

  v22 = 0;
  v23 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v46 = *(a1 + 16);
  v47 = a2 + v23;
  v48 = *(v18 + 72);
  v49 = a1 + v23;
  v43 = v15;
  v44 = v12;
  v45 = &v42 - v19;
  while (1)
  {
    v27 = v48 * v22;
    result = sub_1D6706BB4(v49 + v48 * v22, v20, type metadata accessor for FormatContentSlotItem);
    if (v22 == v21)
    {
      goto LABEL_34;
    }

    sub_1D6706BB4(v47 + v27, v15, type metadata accessor for FormatContentSlotItem);
    if ((_s8NewsFeed27FormatContentSlotItemObjectO2eeoiySbAC_ACtFZ_0(v20, v15) & 1) == 0)
    {
      goto LABEL_26;
    }

    v52 = v22;
    v28 = *(v12 + 20);
    v29 = *&v20[v28];
    v30 = *&v20[v28 + 8];
    v31 = &v15[v28];
    v32 = *v31;
    v33 = v31[1];
    if (v29)
    {
      break;
    }

    sub_1D5D615EC(0, v30);
    if (v32)
    {
      sub_1D5D615EC(v32, v33);
      goto LABEL_31;
    }

    sub_1D5D615EC(0, v33);
    v26 = 0;
LABEL_8:
    v22 = v52 + 1;
    sub_1D5CDE22C(v26, v30);
    sub_1D5D2CFE8(v15, type metadata accessor for FormatContentSlotItem);
    sub_1D5D2CFE8(v20, type metadata accessor for FormatContentSlotItem);
    result = 1;
    v21 = v46;
    if (v22 == v46)
    {
      return result;
    }
  }

  if (!v32)
  {
    sub_1D5D615EC(v29, v30);
    sub_1D5D615EC(0, v33);
    sub_1D5D615EC(v29, v30);

LABEL_31:
    sub_1D5CDE22C(v29, v30);
    sub_1D5CDE22C(v32, v33);
    goto LABEL_26;
  }

  sub_1D5D615EC(v29, v30);
  sub_1D5D615EC(v32, v33);
  sub_1D5D615EC(v29, v30);
  v50 = v32;
  v51 = v29;
  if ((sub_1D6339F3C(v29, v32) & 1) == 0 || (v34 = *(v30 + 16), v34 != *(v33 + 16)))
  {
LABEL_25:
    sub_1D5CDE22C(v50, v33);

    v41 = v51;

    sub_1D5CDE22C(v41, v30);
    v15 = v43;
    v20 = v45;
LABEL_26:
    sub_1D5D2CFE8(v15, type metadata accessor for FormatContentSlotItem);
    sub_1D5D2CFE8(v20, type metadata accessor for FormatContentSlotItem);
    return 0;
  }

  if (!v34)
  {
LABEL_6:
    v25 = v33;
    v12 = v44;
    v20 = v45;
    result = v50;
    v26 = v51;
LABEL_7:
    sub_1D5CDE22C(result, v25);

    v15 = v43;
    goto LABEL_8;
  }

  v25 = v30;
  v12 = v44;
  v20 = v45;
  result = v50;
  v26 = v51;
  if (v30 == v33)
  {
    goto LABEL_7;
  }

  v35 = 0;
  v36 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  v37 = v30 + v36;
  v38 = v33 + v36;
  while (v35 < *(v30 + 16))
  {
    v39 = *(v53 + 72) * v35;
    result = sub_1D6706BB4(v37 + v39, v11, type metadata accessor for FormatContentSlotItemObject);
    if (v35 >= *(v33 + 16))
    {
      goto LABEL_33;
    }

    sub_1D6706BB4(v38 + v39, v7, type metadata accessor for FormatContentSlotItemObject);
    v40 = _s8NewsFeed27FormatContentSlotItemObjectO2eeoiySbAC_ACtFZ_0(v11, v7);
    sub_1D5D2CFE8(v7, type metadata accessor for FormatContentSlotItemObject);
    result = sub_1D5D2CFE8(v11, type metadata accessor for FormatContentSlotItemObject);
    if ((v40 & 1) == 0)
    {
      goto LABEL_25;
    }

    if (v34 == ++v35)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1D63448F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v5 = *v4;
      v6 = *v3;
      if (*(v4 - 2) == *(v3 - 2) && *(v4 - 1) == *(v3 - 1))
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
        if (v8 & 1) == 0 || ((v5 ^ v6))
        {
          return result;
        }
      }

      v3 += 24;
      v4 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D6344A40(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t *, uint64_t *), void (*a5)(uint64_t))
{
  v5 = *(a1 + 16);
  if (v5 == *(a2 + 16))
  {
    if (!v5 || a1 == a2)
    {
      v13 = 1;
    }

    else
    {
      v9 = (a1 + 32);
      v10 = (a2 + 32);
      do
      {
        v11 = *v9++;
        v16 = v11;
        v12 = *v10++;
        v15 = v12;
        (a3)();
        a3(v12);
        v13 = a4(&v16, &v15);
        a5(v15);
        a5(v16);
        --v5;
      }

      while ((v13 & 1) != 0 && v5);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_1D6344B50(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

  v6 = (a1 + 48);
  for (i = (a2 + 48); ; i += 3)
  {
    v8 = *v6;
    v9 = *i;
    v10 = *(v6 - 2) == *(i - 2) && *(v6 - 1) == *(i - 1);
    if (!v10 && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }

    if ((v8 & 0x8000000000000000) == 0)
    {
      if (v9 < 0)
      {
        return 0;
      }

      if (*(v8 + 16))
      {
        if ((*(v9 + 16) & 1) == 0)
        {
          return 0;
        }
      }

      else if (*(v9 + 16))
      {
        return 0;
      }

      goto LABEL_6;
    }

    if ((v9 & 0x8000000000000000) == 0)
    {
      return 0;
    }

    v11 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v12 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v13 = *((v9 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v14 = *((v9 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    if (v11 < 0)
    {
      break;
    }

    if (v13 < 0)
    {

      swift_retain_n();

LABEL_108:

      return 0;
    }

    v15 = *(v11 + 16);
    v16 = *(v13 + 16);

    swift_retain_n();

    if (v15 != v16)
    {

      goto LABEL_108;
    }

LABEL_103:

    v64 = a4(v12, v14);

    if ((v64 & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    v6 += 3;
    if (!--v4)
    {
      return 1;
    }
  }

  if ((v13 & 0x8000000000000000) == 0)
  {

    swift_retain_n();

    return 0;
  }

  v17 = v11 & 0x7FFFFFFFFFFFFFFFLL;
  v18 = *((v11 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v90 = *(v17 + 24);
  v19 = *((v13 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v91 = v12;
  v89 = *((v13 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  if ((v18 & 0x8000000000000000) == 0)
  {
    if (v19 < 0)
    {

      swift_retain_n();
    }

    else
    {
      v20 = *(v18 + 16);
      v21 = *(v19 + 16);

      swift_retain_n();

      if (v20 == v21)
      {

LABEL_102:

        v63 = a4(v90, v89);

        v12 = v91;
        if ((v63 & 1) == 0)
        {

          goto LABEL_113;
        }

        goto LABEL_103;
      }
    }

LABEL_113:

    goto LABEL_152;
  }

  if ((v19 & 0x8000000000000000) == 0)
  {

    swift_retain_n();

    goto LABEL_113;
  }

  v22 = v18 & 0x7FFFFFFFFFFFFFFFLL;
  v23 = *((v18 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v85 = *(v22 + 24);
  v86 = a4;
  v24 = *((v19 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v25 = *((v19 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  if ((v23 & 0x8000000000000000) == 0)
  {
    if (v24 < 0)
    {
      goto LABEL_114;
    }

    if (*(v23 + 16))
    {
      if ((*(v24 + 16) & 1) == 0)
      {
        goto LABEL_114;
      }
    }

    else if (*(v24 + 16))
    {
LABEL_114:
      swift_retain_n();
      swift_retain_n();

      goto LABEL_151;
    }

    swift_retain_n();
    swift_retain_n();

    v29 = v25;
    a4 = v86;
LABEL_101:

    v62 = a4(v85, v29);

    swift_bridgeObjectRelease_n();

    if ((v62 & 1) == 0)
    {

      goto LABEL_151;
    }

    goto LABEL_102;
  }

  if ((v24 & 0x8000000000000000) == 0)
  {

    swift_retain_n();
    swift_retain_n();

    goto LABEL_151;
  }

  v26 = v23 & 0x7FFFFFFFFFFFFFFFLL;
  v27 = *((v23 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v82 = *(v26 + 24);
  v28 = *((v24 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v84 = *((v24 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  v83 = *((v19 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  if (v27 < 0)
  {
    if ((v28 & 0x8000000000000000) == 0)
    {

      swift_retain_n();
      swift_retain_n();

      swift_retain_n();

      goto LABEL_121;
    }

    v30 = v27 & 0x7FFFFFFFFFFFFFFFLL;
    v31 = *((v27 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v32 = *((v28 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v33 = *((v28 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v81 = *(v30 + 24);
    if (v31 < 0)
    {
      v80 = *((v28 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
      if ((v32 & 0x8000000000000000) == 0)
      {

        swift_retain_n();
        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        goto LABEL_149;
      }

      v35 = v31 & 0x7FFFFFFFFFFFFFFFLL;
      v36 = *((v31 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
      v37 = *((v32 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
      v79 = *((v32 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
      v78 = *(v35 + 24);
      if (v36 < 0)
      {
        if ((v37 & 0x8000000000000000) == 0)
        {

          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          goto LABEL_129;
        }

        v38 = v36 & 0x7FFFFFFFFFFFFFFFLL;
        v39 = *((v36 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
        v75 = *(v38 + 24);
        v40 = *((v37 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
        v76 = *((v37 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
        if (v39 < 0)
        {
          if ((v40 & 0x8000000000000000) == 0)
          {

            swift_retain_n();
            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            goto LABEL_133;
          }

          v42 = v39 & 0x7FFFFFFFFFFFFFFFLL;
          v43 = *((v39 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
          v44 = *((v40 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
          v45 = *((v40 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
          v74 = *(v42 + 24);
          if (v43 < 0)
          {
            if ((v44 & 0x8000000000000000) == 0)
            {

              swift_retain_n();
              swift_retain_n();

              swift_retain_n();

              swift_retain_n();

              swift_retain_n();

              swift_retain_n();

              swift_retain_n();

              goto LABEL_146;
            }

            v47 = v43 & 0x7FFFFFFFFFFFFFFFLL;
            v48 = *((v43 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
            v71 = *(v47 + 24);
            v73 = *((v40 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
            v49 = *((v44 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
            v72 = *((v44 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
            if (v48 < 0)
            {
              if ((v49 & 0x8000000000000000) == 0)
              {

                swift_retain_n();
                swift_retain_n();

                swift_retain_n();

                swift_retain_n();

                swift_retain_n();

                swift_retain_n();

                swift_retain_n();

                swift_retain_n();

                goto LABEL_145;
              }

              v69 = v48 & 0x7FFFFFFFFFFFFFFFLL;
              v51 = *((v48 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
              v68 = *(v69 + 24);
              v52 = *((v49 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
              v70 = *((v49 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
              if (v51 < 0)
              {
                if ((v70 & 0x8000000000000000) == 0)
                {

                  swift_retain_n();
                  swift_retain_n();

                  swift_retain_n();

                  swift_retain_n();

                  swift_retain_n();

                  swift_retain_n();

                  swift_retain_n();

                  swift_retain_n();

                  swift_retain_n();

                  goto LABEL_144;
                }

                v55 = *((v51 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
                v66 = *((v51 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
                v56 = *((v70 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
                v57 = *((v70 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);

                swift_retain_n();
                swift_retain_n();

                swift_retain_n();

                swift_retain_n();

                swift_retain_n();

                swift_retain_n();

                swift_retain_n();

                swift_retain_n();

                swift_retain_n();

                swift_retain_n();

                LOBYTE(v55) = a3(v66, v55, v56, v57);

                if ((v55 & 1) == 0)
                {

LABEL_144:

                  goto LABEL_145;
                }
              }

              else
              {
                if (v70 < 0)
                {
                  goto LABEL_140;
                }

                if (*(v51 + 16))
                {
                  if ((*(v70 + 16) & 1) == 0)
                  {
                    goto LABEL_140;
                  }
                }

                else if (*(v70 + 16))
                {
LABEL_140:
                  swift_retain_n();
                  swift_retain_n();

                  swift_retain_n();

                  swift_retain_n();

                  swift_retain_n();

                  swift_retain_n();

                  swift_retain_n();

                  swift_retain_n();

                  swift_retain_n();

                  goto LABEL_144;
                }

                swift_retain_n();
                swift_retain_n();

                swift_retain_n();

                swift_retain_n();

                swift_retain_n();

                swift_retain_n();

                swift_retain_n();

                swift_retain_n();

                swift_retain_n();
              }

              v54 = v86;
              v67 = v86(v68, v52);

              swift_bridgeObjectRelease_n();

              v46 = v76;
              v53 = v72;
              if ((v67 & 1) == 0)
              {

                goto LABEL_145;
              }
            }

            else
            {
              if (v49 < 0)
              {
                goto LABEL_137;
              }

              if (*(v48 + 16))
              {
                if ((*(v49 + 16) & 1) == 0)
                {
                  goto LABEL_137;
                }
              }

              else if (*(v49 + 16))
              {
LABEL_137:
                swift_retain_n();
                swift_retain_n();

                swift_retain_n();

                swift_retain_n();

                swift_retain_n();

                swift_retain_n();

                swift_retain_n();

                swift_retain_n();

LABEL_145:

                goto LABEL_146;
              }

              swift_retain_n();
              swift_retain_n();

              swift_retain_n();

              swift_retain_n();

              swift_retain_n();

              swift_retain_n();

              swift_retain_n();

              v46 = v76;

              swift_retain_n();

              v53 = v72;

              v54 = v86;
            }

            v77 = v54(v71, v53);

            swift_bridgeObjectRelease_n();

            v50 = v73;
            if ((v77 & 1) == 0)
            {

              goto LABEL_146;
            }
          }

          else
          {
            if (v44 < 0)
            {
              goto LABEL_135;
            }

            if (*(v43 + 16))
            {
              if ((*(v44 + 16) & 1) == 0)
              {
                goto LABEL_135;
              }
            }

            else if (*(v44 + 16))
            {
LABEL_135:
              swift_retain_n();
              swift_retain_n();

              swift_retain_n();

              swift_retain_n();

              swift_retain_n();

              swift_retain_n();

              swift_retain_n();

LABEL_146:

              goto LABEL_147;
            }

            swift_retain_n();
            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            v46 = v76;

            v50 = v45;
          }

          v58 = v86(v74, v50);

          swift_bridgeObjectRelease_n();

          if ((v58 & 1) == 0)
          {

            goto LABEL_147;
          }
        }

        else
        {
          if (v40 < 0)
          {
            goto LABEL_131;
          }

          if (*(v39 + 16))
          {
            if ((*(v40 + 16) & 1) == 0)
            {
              goto LABEL_131;
            }
          }

          else if (*(v40 + 16))
          {
LABEL_131:
            swift_retain_n();
            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

LABEL_133:

LABEL_147:

            goto LABEL_148;
          }

          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          v46 = v76;
        }

        a4 = v86;
        v59 = v86(v75, v46);

        swift_bridgeObjectRelease_n();

        v41 = v79;
        if ((v59 & 1) == 0)
        {

          goto LABEL_148;
        }
      }

      else
      {
        if (v37 < 0)
        {
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

LABEL_129:

          goto LABEL_148;
        }

        if (*(v36 + 16))
        {
          if ((*(v37 + 16) & 1) == 0)
          {
            goto LABEL_127;
          }
        }

        else if (*(v37 + 16))
        {
LABEL_127:
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

LABEL_148:

          goto LABEL_149;
        }

        swift_retain_n();
        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        v41 = v79;

        a4 = v86;
      }

      v87 = a4(v78, v41);

      swift_bridgeObjectRelease_n();

      v33 = v80;
      if ((v87 & 1) == 0)
      {

        goto LABEL_149;
      }
    }

    else
    {
      if (v32 < 0)
      {
        goto LABEL_123;
      }

      if (*(v31 + 16))
      {
        if ((*(v32 + 16) & 1) == 0)
        {
          goto LABEL_123;
        }
      }

      else if (*(v32 + 16))
      {
LABEL_123:
        swift_retain_n();
        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

LABEL_149:

        goto LABEL_150;
      }

      swift_retain_n();
      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      a4 = v86;
    }

    v60 = a4(v81, v33);

    swift_bridgeObjectRelease_n();

    v34 = v84;
    if ((v60 & 1) == 0)
    {

      goto LABEL_150;
    }

    goto LABEL_100;
  }

  if (v28 < 0)
  {
    goto LABEL_119;
  }

  if (*(v27 + 16))
  {
    if ((*(v28 + 16) & 1) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_48;
  }

  if ((*(v28 + 16) & 1) == 0)
  {
LABEL_48:
    swift_retain_n();
    swift_retain_n();

    swift_retain_n();

    v34 = v84;

    a4 = v86;
LABEL_100:

    v61 = a4(v82, v34);

    swift_bridgeObjectRelease_n();

    v29 = v83;
    if ((v61 & 1) == 0)
    {

      goto LABEL_151;
    }

    goto LABEL_101;
  }

LABEL_119:
  swift_retain_n();
  swift_retain_n();

  swift_retain_n();

LABEL_121:

LABEL_150:

LABEL_151:

LABEL_152:

  return 0;
}

void sub_1D6347044(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16) || !v2 || a1 == a2)
  {
    return;
  }

  v3 = 0;
  v4 = a1 + 32;
  v5 = a2 + 32;
  v199 = a2 + 32;
  v200 = a1 + 32;
  while (1)
  {
    v8 = (v4 + 136 * v3);
    v9 = v8[5];
    v10 = v8[7];
    v289 = v8[6];
    v290 = v10;
    v11 = v8[1];
    v12 = v8[3];
    v285 = v8[2];
    v286 = v12;
    v14 = v8[3];
    v13 = v8[4];
    v15 = v13;
    v288 = v8[5];
    v287 = v13;
    v16 = *v8;
    v17 = *v8;
    v284 = v8[1];
    v283 = v16;
    v18 = (v5 + 136 * v3);
    v19 = v18[5];
    v20 = v18[7];
    v298 = v18[6];
    v299 = v20;
    v21 = v18[1];
    v22 = v18[3];
    v294 = v18[2];
    v295 = v22;
    v24 = v18[3];
    v23 = v18[4];
    v25 = v23;
    v297 = v18[5];
    v296 = v23;
    v26 = *v18;
    v27 = *v18;
    v293 = v18[1];
    v292 = v26;
    v28 = v8[5];
    v29 = v8[7];
    v301[6] = v8[6];
    v301[7] = v29;
    v30 = v8[1];
    v31 = v8[3];
    v301[2] = v8[2];
    v301[3] = v31;
    v32 = v8[4];
    v301[5] = v28;
    v301[4] = v32;
    v33 = *v8;
    v301[1] = v30;
    v301[0] = v33;
    v308 = v19;
    v309 = v298;
    v310 = v18[7];
    v304 = v21;
    v305 = v294;
    v306 = v24;
    v307 = v25;
    v303 = v27;
    v34 = v8[7];
    v312[6] = v289;
    v312[7] = v34;
    v312[2] = v285;
    v312[3] = v14;
    v312[4] = v15;
    v312[5] = v9;
    v291 = *(v8 + 128);
    v300 = *(v18 + 128);
    v302 = *(v8 + 128);
    v311 = *(v18 + 128);
    v313 = *(v8 + 128);
    v312[0] = v17;
    v312[1] = v11;
    v35 = sub_1D5F78DC4(v312);
    if (v35)
    {
      break;
    }

    v72 = sub_1D5DEA32C(v312);
    v228 = v298;
    v229 = v299;
    LOBYTE(v230) = v300;
    v224 = v294;
    v225 = v295;
    v226 = v296;
    v227 = v297;
    v222 = v292;
    v223 = v293;
    if (sub_1D5F78DC4(&v222))
    {
      v280 = v289;
      v281 = v290;
      v282 = v291;
      v276 = v285;
      v277 = v286;
      v279 = v288;
      v278 = v287;
      v275 = v284;
      v274 = v283;
      v192 = sub_1D5DEA32C(&v274);
      v261 = v289;
      v262 = v290;
      v263[0] = v291;
      v257 = v285;
      v258 = v286;
      v260 = v288;
      v259 = v287;
      v255 = v283;
      v256 = v284;
      v193 = sub_1D5DEA32C(&v255);
      sub_1D5F78EE4(v193, &v265);
      sub_1D5F78EE4(v192, &v265);
      goto LABEL_234;
    }

    v73 = sub_1D5DEA32C(&v222);
    sub_1D5F78F40(v72, &v214);
    sub_1D5F78F40(v73, &v246);
    v259 = v218;
    v260 = v219;
    v261 = v220;
    v262 = v221;
    v255 = v214;
    v256 = v215;
    v257 = v216;
    v258 = v217;
    *&v263[32] = v248;
    *&v263[48] = v249;
    *v263 = v246;
    *&v263[16] = v247;
    *&v263[96] = v252;
    *&v263[112] = v253;
    *&v263[64] = v250;
    *&v263[80] = v251;
    v268 = v217;
    v267 = v216;
    v266 = v215;
    v265 = v214;
    v272 = v221;
    v271 = v220;
    v270 = v219;
    v269 = v218;
    if (sub_1D6011280(&v265) == 1)
    {
      v74 = sub_1D5D756C8(&v265);
      v242 = v250;
      v243 = v251;
      v244 = v252;
      v245 = v253;
      v238 = v246;
      v239 = v247;
      v240 = v248;
      v241 = v249;
      v75 = sub_1D6011280(&v238);
      v76 = sub_1D5D756C8(&v238);
      if (v75 != 1)
      {
        goto LABEL_235;
      }

      v77 = v76;
      sub_1D5ECEF80(&v283, &v274);
      sub_1D5ECEF80(&v292, &v274);
      if (*v74 != *v77 || *(v74 + 8) != *(v77 + 8))
      {
LABEL_221:
        sub_1D5ECEF80(&v292, &v274);
        sub_1D5ECEF80(&v283, &v274);
        sub_1D5ECEF80(&v292, &v274);
        sub_1D5ECEF80(&v283, &v274);
        sub_1D5ECEF80(&v292, &v274);
        sub_1D5ECEF80(&v283, &v274);
        sub_1D5ECEF80(&v292, &v274);
        sub_1D5ECEF80(&v283, &v274);
        goto LABEL_222;
      }

      if (*(v74 + 48))
      {
        if ((*(v77 + 48) & 1) == 0 || *(v74 + 16) != *(v77 + 16) || *(v74 + 24) != *(v77 + 24) || *(v74 + 32) != *(v77 + 32))
        {
          goto LABEL_221;
        }

        v78 = *(v74 + 40);
        v79 = *(v77 + 40);
      }

      else
      {
        if (*(v77 + 48))
        {
          goto LABEL_221;
        }

        v78 = *(v74 + 16);
        v79 = *(v77 + 16);
      }

      if (v78 != v79 || *(v74 + 56) != *(v77 + 56) || *(v74 + 64) != *(v77 + 64))
      {
        goto LABEL_221;
      }

      if (*(v74 + 104))
      {
        if ((*(v77 + 104) & 1) == 0 || *(v74 + 72) != *(v77 + 72) || *(v74 + 80) != *(v77 + 80) || *(v74 + 88) != *(v77 + 88))
        {
          goto LABEL_221;
        }

        v144 = *(v74 + 96);
        v145 = *(v77 + 96);
      }

      else
      {
        if (*(v77 + 104))
        {
          goto LABEL_221;
        }

        v144 = *(v74 + 72);
        v145 = *(v77 + 72);
      }

      if (v144 != v145)
      {
        goto LABEL_221;
      }

      v146 = *(v74 + 112);
      v147 = *(v77 + 112);
      v148 = *(v146 + 16);
      if (v148 != *(v147 + 16))
      {
        goto LABEL_221;
      }

      if (v148 && v146 != v147)
      {
        v149 = (v146 + 32);
        v150 = (v147 + 32);
        sub_1D5ECEF80(&v292, &v274);
        sub_1D5ECEF80(&v283, &v274);
        sub_1D5ECEF80(&v292, &v274);
        sub_1D5ECEF80(&v283, &v274);
        sub_1D5ECEF80(&v292, &v274);
        sub_1D5ECEF80(&v283, &v274);
        sub_1D5ECEF80(&v292, &v274);
        sub_1D5ECEF80(&v283, &v274);
        while (1)
        {
          v151 = *v149++;
          *&v274 = v151;
          *&v206 = *v150;

          v152 = static FormatColor.== infix(_:_:)(&v274, &v206);

          if ((v152 & 1) == 0)
          {
            break;
          }

          ++v150;
          if (!--v148)
          {
            goto LABEL_76;
          }
        }

LABEL_222:
        v190 = &qword_1EC889AC8;
        v191 = &type metadata for FormatDirectionalGradient;
LABEL_227:
        sub_1D66AD7C0(&v255, v190, v191);
        sub_1D5ECEFDC(&v292);
LABEL_228:
        sub_1D5ECEFDC(&v283);
LABEL_229:
        sub_1D66AD7C0(v301, &qword_1EC8817E0, &type metadata for FormatImageAdjustment);
        sub_1D5ECEFDC(&v292);
        sub_1D5ECEFDC(&v283);
        sub_1D5ECEFDC(&v292);
        goto LABEL_230;
      }

      sub_1D5ECEF80(&v292, &v274);
      sub_1D5ECEF80(&v283, &v274);
      sub_1D5ECEF80(&v292, &v274);
      sub_1D5ECEF80(&v283, &v274);
      sub_1D5ECEF80(&v292, &v274);
      sub_1D5ECEF80(&v283, &v274);
      sub_1D5ECEF80(&v292, &v274);
      sub_1D5ECEF80(&v283, &v274);
LABEL_76:
      v153 = *(v74 + 120);
      v154 = *(v77 + 120);
      if (v153)
      {
        if (!v154)
        {
          goto LABEL_222;
        }

        v155 = *(v153 + 16);
        if (v155 != *(v154 + 16))
        {
          goto LABEL_222;
        }

        if (v155 && v153 != v154)
        {
          v156 = (v153 + 32);
          v157 = (v154 + 32);
          while (*v156 == *v157)
          {
            ++v156;
            ++v157;
            if (!--v155)
            {
              goto LABEL_84;
            }
          }

          goto LABEL_222;
        }

LABEL_84:
        v158 = &qword_1EC889AC8;
        v159 = &type metadata for FormatDirectionalGradient;
LABEL_179:
        sub_1D66AD7C0(&v255, v158, v159);
        sub_1D5ECEFDC(&v292);
      }

      else
      {
        sub_1D66AD7C0(&v255, &qword_1EC889AC8, &type metadata for FormatDirectionalGradient);
        sub_1D5ECEFDC(&v292);
        if (v154)
        {
          goto LABEL_228;
        }
      }

      sub_1D5ECEFDC(&v283);
      sub_1D66AD7C0(v301, &qword_1EC8817E0, &type metadata for FormatImageAdjustment);
      sub_1D5ECEFDC(&v292);
      sub_1D5ECEFDC(&v283);
      sub_1D5ECEFDC(&v292);
      sub_1D5ECEFDC(&v283);
LABEL_182:
      v5 = v199;
      v4 = v200;
      goto LABEL_10;
    }

    v124 = sub_1D5D756C8(&v265);
    v242 = v250;
    v243 = v251;
    v244 = v252;
    v245 = v253;
    v238 = v246;
    v239 = v247;
    v240 = v248;
    v241 = v249;
    v125 = sub_1D6011280(&v238);
    v126 = sub_1D5D756C8(&v238);
    if (v125 == 1)
    {
LABEL_235:
      sub_1D5ECEF80(&v292, &v274);
      sub_1D5ECEF80(&v283, &v274);
      sub_1D5ECEF80(&v292, &v274);
      sub_1D5ECEF80(&v283, &v274);
      sub_1D5ECEF80(&v292, &v274);
      sub_1D5ECEF80(&v283, &v274);
      sub_1D5ECEF80(&v292, &v274);
      sub_1D5ECEF80(&v283, &v274);
      v196 = &qword_1EC889AC8;
      v197 = &type metadata for FormatDirectionalGradient;
LABEL_238:
      sub_1D66AD7C0(&v255, v196, v197);
      goto LABEL_229;
    }

    v206 = *v124;
    v207 = v124[1];
    v208 = v124[2];
    v209 = v124[3];
    v127 = v126[1];
    v202 = *v126;
    v203 = v127;
    v128 = v126[3];
    v204 = v126[2];
    v205 = v128;
    sub_1D5ECEF80(&v283, &v274);
    sub_1D5ECEF80(&v292, &v274);
    sub_1D5ECEF80(&v292, &v274);
    sub_1D5ECEF80(&v283, &v274);
    sub_1D5ECEF80(&v292, &v274);
    sub_1D5ECEF80(&v283, &v274);
    sub_1D5ECEF80(&v292, &v274);
    sub_1D5ECEF80(&v283, &v274);
    sub_1D5ECEF80(&v292, &v274);
    sub_1D5ECEF80(&v283, &v274);
    v129 = _s8NewsFeed14FormatGradientV2eeoiySbAC_ACtFZ_0(&v206, &v202);
    sub_1D66AD7C0(&v255, &qword_1EC889AC8, &type metadata for FormatDirectionalGradient);
    sub_1D5ECEFDC(&v292);
    sub_1D5ECEFDC(&v283);
    sub_1D66AD7C0(v301, &qword_1EC8817E0, &type metadata for FormatImageAdjustment);
    sub_1D5ECEFDC(&v292);
    sub_1D5ECEFDC(&v283);
    sub_1D5ECEFDC(&v292);
    sub_1D5ECEFDC(&v283);
    if (!v129)
    {
      return;
    }

LABEL_10:
    if (++v3 == v2)
    {
      return;
    }
  }

  if (v35 != 1)
  {
    v80 = sub_1D5DEA32C(v312);
    v81 = *v80;
    v82 = *(v80 + 8);
    v261 = v298;
    v262 = v299;
    v263[0] = v300;
    v257 = v294;
    v258 = v295;
    v260 = v297;
    v259 = v296;
    v255 = v292;
    v256 = v293;
    if (sub_1D5F78DC4(&v255) != 2)
    {
      goto LABEL_234;
    }

    v83 = sub_1D5DEA32C(&v255);
    v84 = *v83;
    v85 = *(v83 + 8);
    sub_1D66AD7C0(v301, &qword_1EC8817E0, &type metadata for FormatImageAdjustment);
    if (v82)
    {
      switch(*&v81)
      {
        case 1:
          if (*&v84 == 1)
          {
            v178 = v85;
          }

          else
          {
            v178 = 0;
          }

          if (v178)
          {
            goto LABEL_10;
          }

          return;
        case 2:
          v6 = *&v84 == 2;
          goto LABEL_6;
        case 3:
          v6 = *&v84 == 3;
          goto LABEL_6;
        case 4:
          v6 = *&v84 == 4;
          goto LABEL_6;
        case 5:
          v6 = *&v84 == 5;
          goto LABEL_6;
        case 6:
          v6 = *&v84 == 6;
          goto LABEL_6;
        case 7:
          v6 = *&v84 == 7;
          goto LABEL_6;
        case 8:
          v6 = *&v84 == 8;
          goto LABEL_6;
        case 9:
          v6 = *&v84 == 9;
          goto LABEL_6;
        case 0xALL:
          v6 = *&v84 == 10;
          goto LABEL_6;
        case 0xBLL:
          v6 = *&v84 == 11;
          goto LABEL_6;
        case 0xCLL:
          v6 = *&v84 == 12;
          goto LABEL_6;
        case 0xDLL:
          v6 = *&v84 == 13;
          goto LABEL_6;
        case 0xELL:
          v6 = *&v84 == 14;
          goto LABEL_6;
        case 0xFLL:
          if (*&v84 > 0xEuLL)
          {
            v177 = v85;
          }

          else
          {
            v177 = 0;
          }

          if (v177)
          {
            goto LABEL_10;
          }

          return;
        default:
          v6 = *&v84 == 0;
LABEL_6:
          if (v6)
          {
            v7 = v85;
          }

          else
          {
            v7 = 0;
          }

          if (v7)
          {
            goto LABEL_10;
          }

          return;
      }
    }

    if ((v85 & 1) != 0 || v81 != v84)
    {
      return;
    }

    goto LABEL_10;
  }

  v36 = sub_1D5DEA32C(v312);
  v280 = v298;
  v281 = v299;
  v282 = v300;
  v276 = v294;
  v277 = v295;
  v279 = v297;
  v278 = v296;
  v275 = v293;
  v274 = v292;
  if (sub_1D5F78DC4(&v274) == 1)
  {
    v37 = sub_1D5DEA32C(&v274);
    v255 = *v36;
    v38 = *(v36 + 64);
    v40 = *(v36 + 16);
    v39 = *(v36 + 32);
    v258 = *(v36 + 48);
    v259 = v38;
    v256 = v40;
    v257 = v39;
    v42 = *(v36 + 96);
    v41 = *(v36 + 112);
    v43 = *(v36 + 80);
    v263[0] = *(v36 + 128);
    v262 = v41;
    v260 = v43;
    v261 = v42;
    v44 = *(v37 + 80);
    v45 = *(v37 + 96);
    v46 = *(v37 + 112);
    v264 = *(v37 + 128);
    *&v263[120] = v46;
    *&v263[104] = v45;
    *&v263[88] = v44;
    v47 = *(v37 + 16);
    v48 = *(v37 + 32);
    v49 = *(v37 + 48);
    *&v263[72] = *(v37 + 64);
    *&v263[56] = v49;
    *&v263[40] = v48;
    *&v263[24] = v47;
    *&v263[8] = *v37;
    v50 = *(v36 + 80);
    v51 = *(v36 + 96);
    v52 = *(v36 + 112);
    v273 = *(v36 + 128);
    v272 = v52;
    v271 = v51;
    v270 = v50;
    v53 = *(v36 + 16);
    v54 = *(v36 + 32);
    v55 = *(v36 + 48);
    v269 = *(v36 + 64);
    v268 = v55;
    v267 = v54;
    v266 = v53;
    v265 = *v36;
    if (sub_1D6011234(&v265) == 1)
    {
      v56 = sub_1D5D756B8(&v265);
      v57 = *v56;
      v58 = *(v56 + 8);
      v222 = *v37;
      v59 = *(v37 + 64);
      v61 = *(v37 + 16);
      v60 = *(v37 + 32);
      v225 = *(v37 + 48);
      v226 = v59;
      v223 = v61;
      v224 = v60;
      v63 = *(v37 + 96);
      v62 = *(v37 + 112);
      v64 = *(v37 + 80);
      LOBYTE(v230) = *(v37 + 128);
      v228 = v63;
      v229 = v62;
      v227 = v64;
      v65 = sub_1D6011234(&v222);
      v66 = sub_1D5D756B8(&v222);
      if (v65 != 1)
      {
        goto LABEL_237;
      }

      v67 = *v66;
      v68 = *(v66 + 8);
      sub_1D5ECEF80(&v283, &v246);
      sub_1D5ECEF80(&v292, &v246);
      *&v214 = v57;
      *&v238 = v67;
      sub_1D5ECEF80(&v283, &v246);
      sub_1D5ECEF80(&v292, &v246);
      sub_1D5ECEF80(&v292, &v246);
      sub_1D5ECEF80(&v283, &v246);
      sub_1D5ECEF80(&v292, &v246);
      sub_1D5ECEF80(&v283, &v246);
      sub_1D5ECEF80(&v292, &v246);
      sub_1D5ECEF80(&v283, &v246);
      sub_1D5ECEF80(&v292, &v246);
      sub_1D5ECEF80(&v283, &v246);
      v69 = static FormatColor.== infix(_:_:)(&v214, &v238);

      if ((v69 & 1) == 0)
      {
        goto LABEL_226;
      }

      v70 = 0xE600000000000000;
      v71 = 0x6C616D726F6ELL;
      switch(v58)
      {
        case 1:
          v70 = 0xE800000000000000;
          v71 = 0x796C7069746C756DLL;
          break;
        case 2:
          v71 = 0x6E6565726373;
          break;
        case 3:
          v70 = 0xE700000000000000;
          v71 = 0x79616C7265766FLL;
          break;
        case 4:
          v71 = 0x6E656B726164;
          break;
        case 5:
          v70 = 0xE700000000000000;
          v71 = 0x6E65746867696CLL;
          break;
        case 6:
          v70 = 0xEA00000000006567;
          v71 = 0x646F44726F6C6F63;
          break;
        case 7:
          v70 = 0xE90000000000006ELL;
          v71 = 0x727542726F6C6F63;
          break;
        case 8:
          v70 = 0xE900000000000074;
          v179 = 1952870259;
          goto LABEL_158;
        case 9:
          v70 = 0xE900000000000074;
          v179 = 1685217640;
LABEL_158:
          v71 = v179 | 0x6867694C00000000;
          break;
        case 10:
          v70 = 0xEA00000000006563;
          v71 = 0x6E65726566666964;
          break;
        case 11:
          v70 = 0xE90000000000006ELL;
          v71 = 0x6F6973756C637865;
          break;
        case 12:
          v70 = 0xE300000000000000;
          v71 = 6649192;
          break;
        case 13:
          v70 = 0xEA00000000006E6FLL;
          v71 = 0x6974617275746173;
          break;
        case 14:
          v70 = 0xE500000000000000;
          v71 = 0x726F6C6F63;
          break;
        case 15:
          v70 = 0xEA00000000007974;
          v71 = 0x69736F6E696D756CLL;
          break;
        default:
          break;
      }

      v180 = 0xE600000000000000;
      v181 = 0x6C616D726F6ELL;
      switch(v68)
      {
        case 1:
          v180 = 0xE800000000000000;
          v181 = 0x796C7069746C756DLL;
          break;
        case 2:
          v181 = 0x6E6565726373;
          break;
        case 3:
          v180 = 0xE700000000000000;
          v181 = 0x79616C7265766FLL;
          break;
        case 4:
          v181 = 0x6E656B726164;
          break;
        case 5:
          v180 = 0xE700000000000000;
          v181 = 0x6E65746867696CLL;
          break;
        case 6:
          v180 = 0xEA00000000006567;
          v181 = 0x646F44726F6C6F63;
          break;
        case 7:
          v180 = 0xE90000000000006ELL;
          v181 = 0x727542726F6C6F63;
          break;
        case 8:
          v180 = 0xE900000000000074;
          v182 = 1952870259;
          goto LABEL_175;
        case 9:
          v180 = 0xE900000000000074;
          v182 = 1685217640;
LABEL_175:
          v181 = v182 | 0x6867694C00000000;
          break;
        case 10:
          v180 = 0xEA00000000006563;
          v181 = 0x6E65726566666964;
          break;
        case 11:
          v180 = 0xE90000000000006ELL;
          v181 = 0x6F6973756C637865;
          break;
        case 12:
          v180 = 0xE300000000000000;
          v181 = 6649192;
          break;
        case 13:
          v180 = 0xEA00000000006E6FLL;
          v181 = 0x6974617275746173;
          break;
        case 14:
          v180 = 0xE500000000000000;
          v181 = 0x726F6C6F63;
          break;
        case 15:
          v180 = 0xEA00000000007974;
          v181 = 0x69736F6E696D756CLL;
          break;
        default:
          break;
      }

      if (v71 == v181 && v70 == v180)
      {

        v158 = &qword_1EC889AC0;
        v159 = &type metadata for FormatImageAdjustmentBlend;
        goto LABEL_179;
      }

      v183 = sub_1D72646CC();

      sub_1D66AD7C0(&v255, &qword_1EC889AC0, &type metadata for FormatImageAdjustmentBlend);
      sub_1D5ECEFDC(&v292);
      sub_1D5ECEFDC(&v283);
      sub_1D66AD7C0(v301, &qword_1EC8817E0, &type metadata for FormatImageAdjustment);
      sub_1D5ECEFDC(&v292);
      sub_1D5ECEFDC(&v283);
      sub_1D5ECEFDC(&v292);
      sub_1D5ECEFDC(&v283);
      if ((v183 & 1) == 0)
      {
        return;
      }

      goto LABEL_182;
    }

    v86 = sub_1D5D756B8(&v265);
    v246 = *v37;
    v87 = *(v37 + 64);
    v89 = *(v37 + 16);
    v88 = *(v37 + 32);
    v249 = *(v37 + 48);
    v250 = v87;
    v247 = v89;
    v248 = v88;
    v91 = *(v37 + 96);
    v90 = *(v37 + 112);
    v92 = *(v37 + 80);
    v254 = *(v37 + 128);
    v252 = v91;
    v253 = v90;
    v251 = v92;
    if (sub_1D6011234(&v246) == 1)
    {
      sub_1D5D756B8(&v246);
LABEL_237:
      sub_1D5ECEF80(&v292, &v222);
      sub_1D5ECEF80(&v283, &v222);
      sub_1D5ECEF80(&v292, &v222);
      sub_1D5ECEF80(&v283, &v222);
      sub_1D5ECEF80(&v292, &v222);
      sub_1D5ECEF80(&v283, &v222);
      sub_1D5ECEF80(&v292, &v222);
      sub_1D5ECEF80(&v283, &v222);
      v196 = &qword_1EC889AC0;
      v197 = &type metadata for FormatImageAdjustmentBlend;
      goto LABEL_238;
    }

    v198 = v2;
    v93 = sub_1D5D756B8(&v246);
    sub_1D5ECEF80(&v292, &v214);
    sub_1D5ECEF80(&v292, &v214);
    v94 = *v86;
    v95 = *(v86 + 16);
    v96 = *(v86 + 48);
    v224 = *(v86 + 32);
    v225 = v96;
    v222 = v94;
    v223 = v95;
    v97 = *(v86 + 64);
    v98 = *(v86 + 80);
    v99 = *(v86 + 112);
    v228 = *(v86 + 96);
    v229 = v99;
    v226 = v97;
    v227 = v98;
    v100 = *(v93 + 112);
    v102 = *(v93 + 64);
    v101 = *(v93 + 80);
    v236 = *(v93 + 96);
    v237 = v100;
    v234 = v102;
    v235 = v101;
    v103 = *v93;
    v104 = *(v93 + 16);
    v105 = *(v93 + 48);
    v232 = *(v93 + 32);
    v233 = v105;
    v230 = v103;
    v231 = v104;
    v106 = *(v86 + 112);
    v108 = *(v86 + 64);
    v107 = *(v86 + 80);
    v244 = *(v86 + 96);
    v245 = v106;
    v242 = v108;
    v243 = v107;
    v109 = *v86;
    v110 = *(v86 + 16);
    v111 = *(v86 + 48);
    v240 = *(v86 + 32);
    v241 = v111;
    v238 = v109;
    v239 = v110;
    if (sub_1D6011280(&v238) == 1)
    {
      v112 = sub_1D5D756C8(&v238);
      sub_1D5ECEF80(&v283, &v214);
      sub_1D5ECEF80(&v283, &v214);
      v113 = *v93;
      v114 = *(v93 + 16);
      v115 = *(v93 + 48);
      v208 = *(v93 + 32);
      v209 = v115;
      v206 = v113;
      v207 = v114;
      v116 = *(v93 + 64);
      v117 = *(v93 + 80);
      v118 = *(v93 + 112);
      v212 = *(v93 + 96);
      v213 = v118;
      v210 = v116;
      v211 = v117;
      v119 = sub_1D6011280(&v206);
      v120 = sub_1D5D756C8(&v206);
      if (v119 != 1)
      {
        goto LABEL_239;
      }

      v121 = v120;
      sub_1D5ECEF80(&v292, &v214);
      sub_1D5ECEF80(&v283, &v214);
      sub_1D5ECEF80(&v283, &v214);
      sub_1D5ECEF80(&v292, &v214);
      if (*v112 != *v121 || *(v112 + 8) != *(v121 + 8))
      {
LABEL_223:
        sub_1D5ECEF80(&v292, &v214);
        sub_1D5ECEF80(&v283, &v214);
        sub_1D5ECEF80(&v292, &v214);
        sub_1D5ECEF80(&v283, &v214);
        sub_1D5ECEF80(&v292, &v214);
        sub_1D5ECEF80(&v283, &v214);
        sub_1D5ECEF80(&v292, &v214);
        sub_1D5ECEF80(&v283, &v214);
LABEL_224:
        sub_1D66AD7C0(&v222, &qword_1EC889AC8, &type metadata for FormatDirectionalGradient);
        sub_1D5ECEFDC(&v292);
LABEL_225:
        sub_1D5ECEFDC(&v283);
        sub_1D5ECEFDC(&v292);
        sub_1D5ECEFDC(&v283);
LABEL_226:
        v190 = &qword_1EC889AC0;
        v191 = &type metadata for FormatImageAdjustmentBlend;
        goto LABEL_227;
      }

      if (*(v112 + 48))
      {
        if ((*(v121 + 48) & 1) == 0 || *(v112 + 16) != *(v121 + 16) || *(v112 + 24) != *(v121 + 24) || *(v112 + 32) != *(v121 + 32))
        {
          goto LABEL_223;
        }

        v122 = *(v112 + 40);
        v123 = *(v121 + 40);
      }

      else
      {
        if (*(v121 + 48))
        {
          goto LABEL_223;
        }

        v122 = *(v112 + 16);
        v123 = *(v121 + 16);
      }

      if (v122 != v123 || *(v112 + 56) != *(v121 + 56) || *(v112 + 64) != *(v121 + 64))
      {
        goto LABEL_223;
      }

      if (*(v112 + 104))
      {
        if ((*(v121 + 104) & 1) == 0 || *(v112 + 72) != *(v121 + 72) || *(v112 + 80) != *(v121 + 80) || *(v112 + 88) != *(v121 + 88))
        {
          goto LABEL_223;
        }

        v160 = *(v112 + 96);
        v161 = *(v121 + 96);
      }

      else
      {
        if (*(v121 + 104))
        {
          goto LABEL_223;
        }

        v160 = *(v112 + 72);
        v161 = *(v121 + 72);
      }

      if (v160 != v161)
      {
        goto LABEL_223;
      }

      v162 = *(v112 + 112);
      v163 = *(v121 + 112);
      v164 = *(v162 + 16);
      if (v164 != *(v163 + 16))
      {
        goto LABEL_223;
      }

      if (v164 && v162 != v163)
      {
        v165 = (v162 + 32);
        v166 = (v163 + 32);
        sub_1D5ECEF80(&v292, &v214);
        sub_1D5ECEF80(&v283, &v214);
        sub_1D5ECEF80(&v292, &v214);
        sub_1D5ECEF80(&v283, &v214);
        sub_1D5ECEF80(&v292, &v214);
        sub_1D5ECEF80(&v283, &v214);
        sub_1D5ECEF80(&v292, &v214);
        sub_1D5ECEF80(&v283, &v214);
        while (1)
        {
          v167 = *v165++;
          *&v214 = v167;
          *&v202 = *v166;

          v168 = static FormatColor.== infix(_:_:)(&v214, &v202);

          if ((v168 & 1) == 0)
          {
            goto LABEL_224;
          }

          ++v166;
          if (!--v164)
          {
            goto LABEL_109;
          }
        }
      }

      sub_1D5ECEF80(&v292, &v214);
      sub_1D5ECEF80(&v283, &v214);
      sub_1D5ECEF80(&v292, &v214);
      sub_1D5ECEF80(&v283, &v214);
      sub_1D5ECEF80(&v292, &v214);
      sub_1D5ECEF80(&v283, &v214);
      sub_1D5ECEF80(&v292, &v214);
      sub_1D5ECEF80(&v283, &v214);
LABEL_109:
      v169 = *(v112 + 120);
      v170 = *(v121 + 120);
      if (v169)
      {
        if (!v170)
        {
          goto LABEL_224;
        }

        v171 = *(v169 + 16);
        if (v171 != *(v170 + 16))
        {
          goto LABEL_224;
        }

        if (v171 && v169 != v170)
        {
          v172 = (v169 + 32);
          v173 = (v170 + 32);
          while (*v172 == *v173)
          {
            ++v172;
            ++v173;
            if (!--v171)
            {
              goto LABEL_117;
            }
          }

          goto LABEL_224;
        }

LABEL_117:
        sub_1D66AD7C0(&v222, &qword_1EC889AC8, &type metadata for FormatDirectionalGradient);
        sub_1D5ECEFDC(&v292);
      }

      else
      {
        sub_1D66AD7C0(&v222, &qword_1EC889AC8, &type metadata for FormatDirectionalGradient);
        sub_1D5ECEFDC(&v292);
        if (v170)
        {
          goto LABEL_225;
        }
      }

      sub_1D5ECEFDC(&v283);
      sub_1D5ECEFDC(&v292);
      sub_1D5ECEFDC(&v283);
    }

    else
    {
      v130 = sub_1D5D756C8(&v238);
      sub_1D5ECEF80(&v283, &v214);
      sub_1D5ECEF80(&v283, &v214);
      v131 = *v93;
      v132 = *(v93 + 16);
      v133 = *(v93 + 48);
      v208 = *(v93 + 32);
      v209 = v133;
      v206 = v131;
      v207 = v132;
      v134 = *(v93 + 64);
      v135 = *(v93 + 80);
      v136 = *(v93 + 112);
      v212 = *(v93 + 96);
      v213 = v136;
      v210 = v134;
      v211 = v135;
      v137 = sub_1D6011280(&v206);
      v138 = sub_1D5D756C8(&v206);
      if (v137 == 1)
      {
LABEL_239:
        sub_1D5ECEF80(&v292, &v214);
        sub_1D5ECEF80(&v283, &v214);
        sub_1D5ECEF80(&v292, &v214);
        sub_1D5ECEF80(&v283, &v214);
        sub_1D5ECEF80(&v292, &v214);
        sub_1D5ECEF80(&v283, &v214);
        sub_1D5ECEF80(&v292, &v214);
        sub_1D5ECEF80(&v283, &v214);
        sub_1D66AD7C0(&v222, &qword_1EC889AC8, &type metadata for FormatDirectionalGradient);
        goto LABEL_226;
      }

      v139 = v130[1];
      v202 = *v130;
      v203 = v139;
      v140 = v130[3];
      v204 = v130[2];
      v205 = v140;
      v141 = v138[1];
      v201[0] = *v138;
      v201[1] = v141;
      v142 = v138[3];
      v201[2] = v138[2];
      v201[3] = v142;
      sub_1D5ECEF80(&v292, &v214);
      sub_1D5ECEF80(&v283, &v214);
      sub_1D5ECEF80(&v283, &v214);
      sub_1D5ECEF80(&v292, &v214);
      sub_1D5ECEF80(&v292, &v214);
      sub_1D5ECEF80(&v283, &v214);
      sub_1D5ECEF80(&v292, &v214);
      sub_1D5ECEF80(&v283, &v214);
      sub_1D5ECEF80(&v292, &v214);
      sub_1D5ECEF80(&v283, &v214);
      sub_1D5ECEF80(&v292, &v214);
      sub_1D5ECEF80(&v283, &v214);
      v143 = _s8NewsFeed14FormatGradientV2eeoiySbAC_ACtFZ_0(&v202, v201);
      sub_1D66AD7C0(&v222, &qword_1EC889AC8, &type metadata for FormatDirectionalGradient);
      sub_1D5ECEFDC(&v292);
      sub_1D5ECEFDC(&v283);
      sub_1D5ECEFDC(&v292);
      sub_1D5ECEFDC(&v283);
      if (!v143)
      {
        goto LABEL_226;
      }
    }

    v174 = *(v86 + 128);
    v175 = 0xE600000000000000;
    v2 = v198;
    v5 = v199;
    v4 = v200;
    v176 = 0x6C616D726F6ELL;
    switch(v174)
    {
      case 1:
        v175 = 0xE800000000000000;
        v176 = 0x796C7069746C756DLL;
        break;
      case 2:
        v176 = 0x6E6565726373;
        break;
      case 3:
        v175 = 0xE700000000000000;
        v176 = 0x79616C7265766FLL;
        break;
      case 4:
        v176 = 0x6E656B726164;
        break;
      case 5:
        v175 = 0xE700000000000000;
        v176 = 0x6E65746867696CLL;
        break;
      case 6:
        v175 = 0xEA00000000006567;
        v176 = 0x646F44726F6C6F63;
        break;
      case 7:
        v175 = 0xE90000000000006ELL;
        v176 = 0x727542726F6C6F63;
        break;
      case 8:
        v175 = 0xE900000000000074;
        v184 = 1952870259;
        goto LABEL_197;
      case 9:
        v175 = 0xE900000000000074;
        v184 = 1685217640;
LABEL_197:
        v176 = v184 | 0x6867694C00000000;
        break;
      case 10:
        v175 = 0xEA00000000006563;
        v176 = 0x6E65726566666964;
        break;
      case 11:
        v175 = 0xE90000000000006ELL;
        v176 = 0x6F6973756C637865;
        break;
      case 12:
        v175 = 0xE300000000000000;
        v176 = 6649192;
        break;
      case 13:
        v175 = 0xEA00000000006E6FLL;
        v176 = 0x6974617275746173;
        break;
      case 14:
        v175 = 0xE500000000000000;
        v176 = 0x726F6C6F63;
        break;
      case 15:
        v175 = 0xEA00000000007974;
        v176 = 0x69736F6E696D756CLL;
        break;
      default:
        break;
    }

    v185 = *(v93 + 128);
    v186 = 0xE600000000000000;
    v187 = 0x6C616D726F6ELL;
    switch(v185)
    {
      case 1:
        v186 = 0xE800000000000000;
        v187 = 0x796C7069746C756DLL;
        break;
      case 2:
        v187 = 0x6E6565726373;
        break;
      case 3:
        v186 = 0xE700000000000000;
        v187 = 0x79616C7265766FLL;
        break;
      case 4:
        v187 = 0x6E656B726164;
        break;
      case 5:
        v186 = 0xE700000000000000;
        v187 = 0x6E65746867696CLL;
        break;
      case 6:
        v186 = 0xEA00000000006567;
        v187 = 0x646F44726F6C6F63;
        break;
      case 7:
        v186 = 0xE90000000000006ELL;
        v187 = 0x727542726F6C6F63;
        break;
      case 8:
        v186 = 0xE900000000000074;
        v188 = 1952870259;
        goto LABEL_214;
      case 9:
        v186 = 0xE900000000000074;
        v188 = 1685217640;
LABEL_214:
        v187 = v188 | 0x6867694C00000000;
        break;
      case 10:
        v186 = 0xEA00000000006563;
        v187 = 0x6E65726566666964;
        break;
      case 11:
        v186 = 0xE90000000000006ELL;
        v187 = 0x6F6973756C637865;
        break;
      case 12:
        v186 = 0xE300000000000000;
        v187 = 6649192;
        break;
      case 13:
        v186 = 0xEA00000000006E6FLL;
        v187 = 0x6974617275746173;
        break;
      case 14:
        v186 = 0xE500000000000000;
        v187 = 0x726F6C6F63;
        break;
      case 15:
        v186 = 0xEA00000000007974;
        v187 = 0x69736F6E696D756CLL;
        break;
      default:
        break;
    }

    if (v176 == v187 && v175 == v186)
    {

      sub_1D66AD7C0(&v255, &qword_1EC889AC0, &type metadata for FormatImageAdjustmentBlend);
      sub_1D5ECEFDC(&v292);
      sub_1D5ECEFDC(&v283);
      sub_1D66AD7C0(v301, &qword_1EC8817E0, &type metadata for FormatImageAdjustment);
      sub_1D5ECEFDC(&v292);
      sub_1D5ECEFDC(&v283);
      sub_1D5ECEFDC(&v292);
      sub_1D5ECEFDC(&v283);
    }

    else
    {
      v189 = sub_1D72646CC();

      sub_1D66AD7C0(&v255, &qword_1EC889AC0, &type metadata for FormatImageAdjustmentBlend);
      sub_1D5ECEFDC(&v292);
      sub_1D5ECEFDC(&v283);
      sub_1D66AD7C0(v301, &qword_1EC8817E0, &type metadata for FormatImageAdjustment);
      sub_1D5ECEFDC(&v292);
      sub_1D5ECEFDC(&v283);
      sub_1D5ECEFDC(&v292);
      sub_1D5ECEFDC(&v283);
      if ((v189 & 1) == 0)
      {
        return;
      }
    }

    goto LABEL_10;
  }

  v228 = v289;
  v229 = v290;
  LOBYTE(v230) = v291;
  v224 = v285;
  v225 = v286;
  v226 = v287;
  v227 = v288;
  v222 = v283;
  v223 = v284;
  v194 = sub_1D5DEA32C(&v222);
  v261 = v289;
  v262 = v290;
  v263[0] = v291;
  v257 = v285;
  v258 = v286;
  v260 = v288;
  v259 = v287;
  v255 = v283;
  v256 = v284;
  v195 = sub_1D5DEA32C(&v255);
  sub_1D5F78E88(v195, &v265);
  sub_1D5F78E88(v194, &v265);
LABEL_234:
  sub_1D5ECEF80(&v292, &v255);
  sub_1D66AD7C0(v301, &qword_1EC8817E0, &type metadata for FormatImageAdjustment);
LABEL_230:
  sub_1D5ECEFDC(&v283);
}

uint64_t sub_1D6348EA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v6 = *(v3 - 1);
      v7 = *(v4 - 1);
      v5 = *v4;
      if (*v3 == 1)
      {
        if (v6 == 0.0)
        {
          if (v7 != 0.0)
          {
            LOBYTE(v5) = 0;
          }

          if ((v5 & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          if (v7 == 0.0)
          {
            v5 = 0;
          }

          if (v5 != 1)
          {
            return 0;
          }
        }
      }

      else
      {
        if (v6 != v7)
        {
          LOBYTE(v5) = 1;
        }

        if (v5)
        {
          return 0;
        }
      }

      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D6348F40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatContentOverlaySubgroup(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v9);
  v12 = (&v22 - v11);
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16))
  {
    if (!v13 || a1 == a2)
    {
      v20 = 1;
    }

    else
    {
      v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v15 = a1 + v14;
      v16 = a2 + v14;
      v17 = *(v10 + 72);
      while (1)
      {
        sub_1D6706BB4(v15, v12, type metadata accessor for FormatContentOverlaySubgroup);
        sub_1D6706BB4(v16, v7, type metadata accessor for FormatContentOverlaySubgroup);
        v18 = *v12 == *v7 && v12[1] == v7[1];
        if (!v18 && (sub_1D72646CC() & 1) == 0)
        {
          break;
        }

        sub_1D633C3EC(*(v12 + *(v4 + 20)), *(v7 + *(v4 + 20)));
        v20 = v19;
        sub_1D5D2CFE8(v7, type metadata accessor for FormatContentOverlaySubgroup);
        sub_1D5D2CFE8(v12, type metadata accessor for FormatContentOverlaySubgroup);
        if (v20)
        {
          v16 += v17;
          v15 += v17;
          if (--v13)
          {
            continue;
          }
        }

        return v20 & 1;
      }

      sub_1D5D2CFE8(v7, type metadata accessor for FormatContentOverlaySubgroup);
      sub_1D5D2CFE8(v12, type metadata accessor for FormatContentOverlaySubgroup);
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_1D6349160(uint64_t result, uint64_t a2)
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
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_1D63491BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatPropertyDefinition(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v345 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16) || !v12 || a1 == a2)
  {
    return;
  }

  v364 = &v345 - v11;
  v13 = 0;
  v14 = a1 + 32;
  v15 = a2 + 32;
  v359 = a2 + 32;
  v360 = a1 + 32;
  v356 = v5;
  v354 = v8;
  v361 = v12;
  while (1)
  {
    v16 = (v14 + 88 * v13);
    v17 = v16[3];
    v391 = v16[2];
    v392 = v17;
    v393 = v16[4];
    v394 = *(v16 + 80);
    v18 = v16[1];
    v389 = *v16;
    v390 = v18;
    v19 = (v15 + 88 * v13);
    v20 = v19[1];
    v395 = *v19;
    v396 = v20;
    v21 = v19[2];
    v22 = v19[3];
    v23 = v19[4];
    v400 = *(v19 + 80);
    v398 = v22;
    v399 = v23;
    v397 = v21;
    if (v389 != v395 && (sub_1D72646CC() & 1) == 0)
    {
      return;
    }

    if (*(&v390 + 1))
    {
      if (!*(&v396 + 1) || v390 != v396 && (sub_1D72646CC() & 1) == 0)
      {
        return;
      }
    }

    else if (*(&v396 + 1))
    {
      return;
    }

    v363 = v13;
    v24 = v392;
    v26 = *(&v397 + 1);
    v25 = v397;
    v28 = *(&v398 + 1);
    v27 = v398;
    v29 = *(&v399 + 1);
    v30 = v400;
    v383[0] = v391;
    v383[1] = v392;
    v373 = v398;
    v374 = *(&v392 + 1);
    v383[2] = v393;
    v366 = *(&v393 + 1);
    v367 = v392;
    v384 = v394;
    v385 = v397;
    v386 = v398;
    v375 = *(&v397 + 1);
    v376 = v399;
    v387 = v399;
    v368 = v394;
    v31 = v394 >> 6;
    v388 = v400;
    v369 = *(&v398 + 1);
    v370 = v393;
    v377 = v397;
    v378 = v391;
    v372 = v400;
    v371 = *(&v399 + 1);
    v365 = *(&v391 + 1);
    if (v31)
    {
      break;
    }

    if (v400 >= 0x40u)
    {
      goto LABEL_141;
    }

    v60 = *(v378 + 16);
    if (v60 != *(v397 + 16))
    {
      goto LABEL_140;
    }

    v62 = v377;
    v61 = v378;
    if (v60 && v378 != v377)
    {
      v127 = 0;
      while (1)
      {
        v129 = *(v61 + v127 + 48);
        v128 = *(v61 + v127 + 56);
        v130 = *(v61 + v127 + 64);
        v131 = *(v61 + v127 + 72);
        v132 = v62 + v127;
        v133 = *(v62 + v127 + 32);
        v134 = *(v62 + v127 + 40);
        v136 = *(v62 + v127 + 48);
        v135 = *(v62 + v127 + 56);
        v137 = *(v62 + v127 + 64);
        v138 = *(v132 + 72);
        if (*(v61 + v127 + 32) != v133 || *(v61 + v127 + 40) != v134)
        {
          v362 = *(v132 + 72);
          v140 = v137;
          v141 = v131;
          v142 = v130;
          v143 = sub_1D72646CC();
          v130 = v142;
          v131 = v141;
          v137 = v140;
          v138 = v362;
          if ((v143 & 1) == 0)
          {
            break;
          }
        }

        if (v129 != v136 || v128 != v135)
        {
          v145 = v130;
          v146 = sub_1D72646CC();
          v130 = v145;
          if ((v146 & 1) == 0)
          {
            break;
          }
        }

        v147 = v130 == v137 && v131 == v138;
        if (!v147 && (sub_1D72646CC() & 1) == 0)
        {
          break;
        }

        v127 += 48;
        --v60;
        v62 = v377;
        v61 = v378;
        if (!v60)
        {
          goto LABEL_27;
        }
      }

LABEL_140:
      sub_1D618EC0C(v378, v365, v367, v374, v370, v366, v368);
      v270 = v376;
      v269 = v377;
      v271 = v375;
      v272 = v373;
      v273 = v369;
      v274 = v371;
      v275 = v372;
LABEL_142:
      sub_1D618EC0C(v269, v271, v272, v273, v270, v274, v275);
      sub_1D66AD7C0(v383, &qword_1EDF2A868, &type metadata for FormatTypeDefinition);
      return;
    }

LABEL_27:
    sub_1D618EC0C(v61, v365, v367, v374, v370, v366, v368);
    sub_1D618EC0C(v62, v375, v373, v369, v376, v371, v372);
    sub_1D66AD7C0(v383, &qword_1EDF2A868, &type metadata for FormatTypeDefinition);
LABEL_135:
    v14 = v360;
    v15 = v359;
    v13 = v363 + 1;
    if (v363 + 1 == v361)
    {
      return;
    }
  }

  if (v31 != 1)
  {
    if ((v400 & 0xC0) != 0x80)
    {
LABEL_141:
      v280 = v397;
      sub_1D618EC0C(v378, *(&v391 + 1), v392, v374, v393, v366, v368);
      v269 = v280;
      v271 = v26;
      v272 = v27;
      v273 = v28;
      v270 = v376;
      v274 = v29;
      v275 = v30;
      goto LABEL_142;
    }

    v63 = *(&v391 + 1);
    v64 = *(v378 + 16);
    if (v64 != *(v397 + 16))
    {
      sub_1D618EC0C(v397, *(&v397 + 1), v398, *(&v398 + 1), v376, v371, v400);
      v306 = v378;
      v307 = v28;
      v309 = v366;
      v308 = v367;
      v310 = v27;
      v311 = v374;
      v312 = v370;
      v157 = v368;
      sub_1D618EC0C(v378, v63, v367, v374, v370, v366, v368);
      sub_1D618EC0C(v306, v63, v308, v311, v312, v309, v157);
      v313 = v375;
      v314 = v310;
      v315 = v307;
      v316 = v376;
      LOBYTE(v310) = v372;
      sub_1D618EC0C(v377, v375, v314, v315, v376, v371, v372);
      sub_1D618EC0C(v378, v63, v308, v311, v312, v309, v157);
      sub_1D618EC0C(v377, v313, v373, v369, v316, v371, v310);
      sub_1D62B7D1C(&v389, v381);
      sub_1D62B7D1C(&v395, v381);
LABEL_148:
      sub_1D66AD7C0(v383, &qword_1EDF2A868, &type metadata for FormatTypeDefinition);
      v317 = v376;
      v318 = v375;
      v319 = v373;
      v320 = v369;
      v321 = v371;
      sub_1D60CF6F4(v377, v375, v373, v369, v376, v371, v372);
      v322 = v378;
      v323 = v365;
      v324 = v367;
      sub_1D60CF6F4(v378, v365, v367, v374, v370, v366, v157);
      sub_1D60CF6F4(v377, v318, v319, v320, v317, v321, v372);
      v299 = v322;
      v300 = v323;
      v301 = v324;
      v302 = v374;
      v303 = v370;
      v304 = v366;
      v305 = v157;
LABEL_149:
      sub_1D60CF6F4(v299, v300, v301, v302, v303, v304, v305);
      sub_1D62B7D78(&v395);
      sub_1D62B7D78(&v389);
      return;
    }

    if (v64)
    {
      if (v378 == v397)
      {
        v65 = v378;
        v66 = v371;
        sub_1D618EC0C(v378, v375, v398, *(&v398 + 1), v376, v371, v400);
        v67 = v366;
        v68 = v367;
        v69 = v374;
        v70 = v370;
        v71 = v368;
        sub_1D618EC0C(v65, v63, v367, v374, v370, v366, v368);
        sub_1D618EC0C(v65, v63, v68, v69, v70, v67, v71);
        v72 = v376;
        v73 = v66;
        LOBYTE(v66) = v372;
        sub_1D618EC0C(v65, v375, v27, v369, v376, v73, v372);
        v74 = v65;
        v75 = v69;
        LOBYTE(v69) = v66;
        v76 = v65;
        v77 = v371;
        sub_1D618EC0C(v74, v63, v367, v75, v70, v67, v71);
        v78 = v369;
        v79 = v69;
        sub_1D618EC0C(v76, v375, v27, v369, v72, v77, v69);
        sub_1D62B7D1C(&v389, v381);
        sub_1D62B7D1C(&v395, v381);
        v80 = v27;
        v81 = v76;
      }

      else
      {
        v148 = (*(v356 + 80) + 32) & ~*(v356 + 80);
        v149 = v378;
        v150 = v378 + v148;
        v151 = v397 + v148;
        sub_1D618EC0C(v397, v375, v398, *(&v398 + 1), v376, v371, v400);
        v152 = v63;
        v153 = v63;
        v154 = v370;
        v155 = v366;
        v156 = v374;
        v157 = v368;
        sub_1D618EC0C(v149, v152, v367, v374, v370, v366, v368);
        v158 = v149;
        v159 = v367;
        sub_1D618EC0C(v158, v153, v367, v156, v154, v155, v157);
        sub_1D618EC0C(v377, v375, v373, v369, v376, v371, v372);
        sub_1D618EC0C(v378, v153, v159, v156, v154, v155, v157);
        sub_1D618EC0C(v377, v375, v373, v369, v376, v371, v372);
        sub_1D62B7D1C(&v389, v381);
        sub_1D62B7D1C(&v395, v381);
        v160 = *(v356 + 72);
        v161 = v354;
        do
        {
          v162 = v364;
          sub_1D6706BB4(v150, v364, type metadata accessor for FormatPropertyDefinition);
          sub_1D6706BB4(v151, v161, type metadata accessor for FormatPropertyDefinition);
          v163 = _s8NewsFeed24FormatPropertyDefinitionO2eeoiySbAC_ACtFZ_0(v162, v161);
          sub_1D5D2CFE8(v161, type metadata accessor for FormatPropertyDefinition);
          sub_1D5D2CFE8(v162, type metadata accessor for FormatPropertyDefinition);
          if (!v163)
          {
            goto LABEL_148;
          }

          v151 += v160;
          v150 += v160;
          --v64;
        }

        while (v64);
        v81 = v377;
        v76 = v378;
        v79 = v372;
        v77 = v371;
        v78 = v369;
        v80 = v373;
        v72 = v376;
      }
    }

    else
    {
      v82 = v371;
      sub_1D618EC0C(v397, *(&v397 + 1), v398, *(&v398 + 1), v376, v371, v400);
      v76 = v378;
      v83 = v63;
      v84 = v63;
      v86 = v366;
      v85 = v367;
      v87 = v374;
      v88 = v370;
      v89 = v368;
      sub_1D618EC0C(v378, v84, v367, v374, v370, v366, v368);
      sub_1D618EC0C(v76, v83, v85, v87, v88, v86, v89);
      v72 = v376;
      sub_1D618EC0C(v377, v375, v27, v369, v376, v82, v372);
      v90 = v86;
      v77 = v82;
      sub_1D618EC0C(v76, v83, v367, v87, v88, v90, v89);
      v91 = v377;
      v78 = v369;
      v79 = v372;
      sub_1D618EC0C(v377, v375, v27, v369, v72, v82, v372);
      sub_1D62B7D1C(&v389, v381);
      sub_1D62B7D1C(&v395, v381);
      v92 = v27;
      v81 = v91;
      v80 = v92;
    }

    sub_1D66AD7C0(v383, &qword_1EDF2A868, &type metadata for FormatTypeDefinition);
    v164 = v81;
    v165 = v375;
    sub_1D60CF6F4(v164, v375, v80, v78, v72, v77, v79);
    v166 = v76;
    v167 = v367;
    v168 = v374;
    v169 = v77;
    v170 = v370;
    v171 = v80;
    v172 = v366;
    v173 = v368;
    sub_1D60CF6F4(v166, v365, v367, v374, v370, v366, v368);
    sub_1D60CF6F4(v377, v165, v171, v78, v376, v169, v372);
    v174 = v378;
    v175 = v365;
    v176 = v167;
    v177 = v168;
    v178 = v170;
    v179 = v172;
    v180 = v173;
LABEL_134:
    sub_1D60CF6F4(v174, v175, v176, v177, v178, v179, v180);
    sub_1D62B7D78(&v395);
    sub_1D62B7D78(&v389);
    goto LABEL_135;
  }

  if ((v400 & 0xC0) != 0x40)
  {
    goto LABEL_141;
  }

  v32 = *(v378 + 16);
  if (v32 != *(v397 + 16))
  {
    v279 = *(&v391 + 1);
    v276 = v376;
    sub_1D618EC0C(v397, *(&v397 + 1), v373, *(&v398 + 1), v376, *(&v399 + 1), v400);
    v277 = v378;
    v278 = v378;
    goto LABEL_144;
  }

  v33 = v376;
  if (v32 && v378 != v397)
  {
    v123 = (v378 + 40);
    v124 = (v397 + 40);
    while (1)
    {
      if (*(v123 - 1) != *(v124 - 1) || *v123 != *v124)
      {
        v126 = sub_1D72646CC();
        v25 = v377;
        if ((v126 & 1) == 0)
        {
          break;
        }
      }

      v123 += 2;
      v124 += 2;
      if (!--v32)
      {
        goto LABEL_19;
      }
    }

    v28 = v369;
    v276 = v33;
    sub_1D618EC0C(v377, v375, v373, v369, v33, v29, v30);
    v277 = v378;
    v278 = v378;
    v279 = v365;
LABEL_144:
    v281 = v374;
    v282 = v370;
    v191 = v366;
    v283 = v368;
    sub_1D618EC0C(v278, v279, v24, v374, v370, v366, v368);
    sub_1D618EC0C(v277, v279, v24, v281, v282, v191, v283);
    v284 = v276;
    v190 = v372;
    sub_1D618EC0C(v377, v375, v373, v28, v284, v371, v372);
    v285 = v277;
    v286 = v279;
    v287 = v24;
    v288 = v281;
    v289 = v282;
    v290 = v191;
    v291 = v283;
LABEL_145:
    sub_1D618EC0C(v285, v286, v287, v288, v289, v290, v291);
    sub_1D62B7D1C(&v389, v381);
    sub_1D62B7D1C(&v395, v381);
    sub_1D66AD7C0(v383, &qword_1EDF2A868, &type metadata for FormatTypeDefinition);
    goto LABEL_146;
  }

LABEL_19:
  v34 = v365;
  v35 = *(v365 + 16);
  v36 = v375;
  if (v35 != *(v375 + 16))
  {
    v28 = v369;
    v325 = v33;
    sub_1D618EC0C(v25, v375, v373, v369, v33, v29, v30);
    v326 = v378;
    v327 = v374;
    v328 = v370;
    v191 = v366;
    v329 = v368;
    sub_1D618EC0C(v378, v34, v24, v374, v370, v366, v368);
    sub_1D618EC0C(v326, v34, v24, v327, v328, v191, v329);
    v330 = v325;
    v190 = v372;
    sub_1D618EC0C(v377, v375, v373, v28, v330, v371, v372);
    v285 = v326;
    v286 = v34;
    v287 = v24;
    v288 = v327;
    v289 = v328;
    v290 = v191;
    v291 = v329;
    goto LABEL_145;
  }

  v28 = v369;
  v37 = v373;
  if (!v35)
  {
    v93 = v378;
    v94 = v374;
    v95 = v25;
    sub_1D618EC0C(v25, v375, v373, v369, v33, v29, v30);
    v96 = v370;
    v97 = v366;
    v98 = v368;
    sub_1D618EC0C(v93, v34, v24, v94, v370, v366, v368);
    sub_1D618EC0C(v93, v34, v24, v94, v96, v97, v98);
    v99 = v95;
    v100 = v36;
    v101 = v373;
    v102 = v371;
    sub_1D618EC0C(v99, v100, v373, v369, v376, v371, v372);
    v103 = v93;
    v53 = v376;
    sub_1D618EC0C(v103, v34, v24, v94, v96, v97, v98);
    v52 = v377;
    v51 = v372;
    v54 = v375;
    v59 = v102;
    v28 = v369;
    v55 = v101;
    v56 = v369;
    v57 = v53;
    v58 = v59;
LABEL_35:
    sub_1D618EC0C(v52, v54, v55, v56, v57, v59, v51);
    sub_1D62B7D1C(&v389, v381);
    sub_1D62B7D1C(&v395, v381);
LABEL_36:
    if (v368)
    {
      v104 = v366;
      v24 = v367;
      v105 = v370;
      if ((v51 & 1) == 0)
      {
        goto LABEL_152;
      }

      v106 = v373;
      sub_1D618ECBC(v373, v28, v53, v58, 1);
      sub_1D618ECBC(v24, v374, v105, v104, 1);
      if ((v24 != v106 || v374 != v28) && (sub_1D72646CC() & 1) == 0)
      {
        sub_1D5E32940(v24, v374, v105, v104, 1);
        v341 = v373;
        sub_1D5E32940(v373, v28, v53, v58, 1);
        sub_1D66AD7C0(v383, &qword_1EDF2A868, &type metadata for FormatTypeDefinition);
        v342 = v341;
        LOBYTE(v341) = v372;
        sub_1D60CF6F4(v377, v375, v342, v28, v53, v58, v372);
        v191 = v104;
        v190 = v341;
LABEL_146:
        v292 = v378;
        v293 = v365;
        v294 = v374;
        v295 = v370;
        v296 = v191;
        v297 = v191;
        v298 = v368;
        sub_1D60CF6F4(v378, v365, v24, v374, v370, v296, v368);
        sub_1D60CF6F4(v377, v375, v373, v28, v376, v371, v190);
        v299 = v292;
        v300 = v293;
        v301 = v24;
        v302 = v294;
        v303 = v295;
        v304 = v297;
        v305 = v298;
        goto LABEL_149;
      }

      if (v105)
      {
        v107 = 0x6F74656C676E6973;
      }

      else
      {
        v107 = 0x65636E6174736E69;
      }

      if (v105)
      {
        v108 = 0xE90000000000006ELL;
      }

      else
      {
        v108 = 0xE800000000000000;
      }

      v109 = v53;
      if (v53)
      {
        v110 = 0x6F74656C676E6973;
      }

      else
      {
        v110 = 0x65636E6174736E69;
      }

      if (v53)
      {
        v111 = 0xE90000000000006ELL;
      }

      else
      {
        v111 = 0xE800000000000000;
      }

      v362 = v111;
      v358 = v108;
      if (v107 == v110 && v108 == v111)
      {
        v112 = v24;
        v113 = v24;
        v114 = v374;
        v115 = v366;
        sub_1D618ECBC(v112, v374, v105, v366, 1);
        v116 = v373;
        v117 = v105;
        v118 = v369;
        v119 = v53;
        v120 = v371;
        v121 = v115;
        v122 = v114;
        v24 = v113;
        sub_1D618ECBC(v373, v369, v119, v371, 1);
        sub_1D618ECBC(v116, v118, v109, v120, 1);
        sub_1D618ECBC(v113, v122, v117, v121, 1);
        v28 = v118;

        sub_1D5E32940(v24, v122, v117, v121, 1);
        sub_1D5E32940(v116, v118, v109, v120, 1);
        sub_1D5E32940(v116, v118, v109, v120, 1);
        sub_1D5E32940(v24, v122, v117, v121, 1);
      }

      else
      {
        LODWORD(v357) = sub_1D72646CC();
        v237 = v24;
        v238 = v24;
        v239 = v374;
        v240 = v366;
        sub_1D618ECBC(v237, v374, v105, v366, 1);
        v116 = v373;
        v241 = v105;
        v242 = v369;
        v243 = v53;
        v244 = v371;
        v121 = v240;
        v245 = v239;
        v24 = v238;
        sub_1D618ECBC(v373, v369, v243, v371, 1);
        sub_1D618ECBC(v116, v242, v109, v244, 1);
        sub_1D618ECBC(v238, v245, v241, v121, 1);
        v28 = v242;

        sub_1D5E32940(v24, v245, v241, v121, 1);
        sub_1D5E32940(v116, v242, v109, v244, 1);
        sub_1D5E32940(v116, v242, v109, v244, 1);
        sub_1D5E32940(v24, v245, v241, v121, 1);
        if ((v357 & 1) == 0)
        {
          v343 = v371;
          sub_1D5E32940(v116, v242, v109, v371, 1);
          sub_1D5E32940(v24, v374, v370, v121, 1);
          sub_1D66AD7C0(v383, &qword_1EDF2A868, &type metadata for FormatTypeDefinition);
          v344 = v343;
          v191 = v121;
          v190 = v372;
          sub_1D60CF6F4(v377, v375, v116, v242, v109, v344, v372);
          goto LABEL_146;
        }
      }

      v246 = v371;
      sub_1D5E32940(v116, v28, v109, v371, 1);
      sub_1D5E32940(v24, v374, v370, v121, 1);
      sub_1D66AD7C0(v383, &qword_1EDF2A868, &type metadata for FormatTypeDefinition);
      v247 = v246;
      v191 = v121;
      v190 = v372;
      sub_1D60CF6F4(v377, v375, v116, v28, v109, v247, v372);
    }

    else
    {
      v104 = v366;
      v24 = v367;
      v105 = v370;
      if (v51)
      {
LABEL_152:
        v190 = v51;
        v331 = v373;
        v332 = v104;
        v333 = v368;
        sub_1D618ECBC(v373, v28, v376, v58, (v368 & 1) == 0);
        v334 = v374;
        sub_1D618ECBC(v24, v374, v105, v332, v333 & 1);
        sub_1D5E32940(v24, v334, v105, v332, v333 & 1);
        v335 = (v333 & 1) == 0;
        v336 = v332;
        v337 = v376;
        sub_1D5E32940(v331, v28, v376, v58, v335);
        sub_1D66AD7C0(v383, &qword_1EDF2A868, &type metadata for FormatTypeDefinition);
        v338 = v337;
        v191 = v336;
        sub_1D60CF6F4(v377, v375, v331, v28, v338, v58, v190);
        goto LABEL_146;
      }

      v181 = *(v367 + 32);
      v381[0] = *(v367 + 16);
      v381[1] = v181;
      v382[0] = *(v367 + 48);
      *(v382 + 15) = *(v367 + 63);
      v182 = v373;
      v183 = *(v373 + 32);
      v379[0] = *(v373 + 16);
      v379[1] = v183;
      v380[0] = *(v373 + 48);
      *(v380 + 15) = *(v373 + 63);
      sub_1D618ECBC(v373, v28, v53, v58, 0);
      v184 = v374;
      sub_1D618ECBC(v24, v374, v105, v104, 0);
      sub_1D618ECBC(v24, v184, v105, v104, 0);
      sub_1D618ECBC(v182, v28, v53, v58, 0);
      v185 = v182;
      v186 = v53;
      sub_1D618ECBC(v185, v28, v53, v58, 0);
      sub_1D618ECBC(v24, v184, v105, v104, 0);
      if ((static FormatCommandBinding.== infix(_:_:)(v381, v379) & 1) == 0 || (sub_1D635A604(v374, v28), (v187 & 1) == 0))
      {
        v339 = v374;
        sub_1D5E32940(v24, v374, v105, v104, 0);
        v340 = v373;
        sub_1D5E32940(v373, v28, v53, v58, 0);
        sub_1D5E32940(v340, v28, v53, v58, 0);
        sub_1D5E32940(v24, v339, v105, v104, 0);
        sub_1D5E32940(v340, v28, v53, v58, 0);
        sub_1D5E32940(v24, v339, v105, v104, 0);
        sub_1D66AD7C0(v383, &qword_1EDF2A868, &type metadata for FormatTypeDefinition);
        v190 = v372;
        sub_1D60CF6F4(v377, v375, v340, v28, v53, v58, v372);
        v191 = v104;
        goto LABEL_146;
      }

      if (v105 == v53 && v104 == v58)
      {
        v188 = v374;
        sub_1D5E32940(v24, v374, v105, v104, 0);
        v189 = v373;
        sub_1D5E32940(v373, v28, v105, v104, 0);
        sub_1D5E32940(v189, v28, v105, v104, 0);
        sub_1D5E32940(v24, v188, v105, v104, 0);
        sub_1D5E32940(v189, v28, v105, v104, 0);
        sub_1D5E32940(v24, v188, v105, v104, 0);
        sub_1D66AD7C0(v383, &qword_1EDF2A868, &type metadata for FormatTypeDefinition);
        v190 = v372;
        sub_1D60CF6F4(v377, v375, v189, v28, v105, v104, v372);
        v191 = v104;
      }

      else
      {
        v248 = sub_1D72646CC();
        v249 = v105;
        v250 = v104;
        v251 = v372;
        v252 = v373;
        v253 = v374;
        LODWORD(v362) = v248;
        sub_1D5E32940(v24, v374, v249, v250, 0);
        sub_1D5E32940(v252, v28, v186, v58, 0);
        sub_1D5E32940(v252, v28, v186, v58, 0);
        sub_1D5E32940(v24, v253, v249, v250, 0);
        sub_1D5E32940(v252, v28, v186, v58, 0);
        v254 = v249;
        v191 = v250;
        sub_1D5E32940(v24, v253, v254, v250, 0);
        sub_1D66AD7C0(v383, &qword_1EDF2A868, &type metadata for FormatTypeDefinition);
        v190 = v251;
        sub_1D60CF6F4(v377, v375, v252, v28, v186, v58, v251);
        if ((v362 & 1) == 0)
        {
          goto LABEL_146;
        }
      }
    }

    v255 = v378;
    v256 = v365;
    v257 = v374;
    v258 = v370;
    v259 = v191;
    v260 = v191;
    v261 = v368;
    sub_1D60CF6F4(v378, v365, v24, v374, v370, v259, v368);
    sub_1D60CF6F4(v377, v375, v373, v28, v376, v371, v190);
    v174 = v255;
    v175 = v256;
    v176 = v24;
    v177 = v257;
    v178 = v258;
    v179 = v260;
    v180 = v261;
    goto LABEL_134;
  }

  if (v365 == v375)
  {
    v38 = v30;
    v39 = v365;
    sub_1D618EC0C(v25, v365, v373, v369, v33, v29, v38);
    v40 = v378;
    v41 = v34;
    v42 = v24;
    v43 = v370;
    v44 = v24;
    v45 = v37;
    v46 = v374;
    v47 = v366;
    v48 = v368;
    sub_1D618EC0C(v378, v41, v42, v374, v370, v366, v368);
    sub_1D618EC0C(v40, v39, v44, v46, v43, v47, v48);
    v49 = v45;
    v50 = v371;
    v51 = v372;
    sub_1D618EC0C(v377, v39, v49, v28, v376, v371, v372);
    sub_1D618EC0C(v40, v39, v44, v46, v43, v47, v368);
    v53 = v376;
    v52 = v377;
    v54 = v39;
    v55 = v373;
    v56 = v28;
    v57 = v376;
    v58 = v50;
    v59 = v50;
    goto LABEL_35;
  }

  v346 = v375 + 32;
  v347 = v365 + 32;
  v348 = v35;
  v192 = v29;
  v193 = v24;
  v194 = v374;
  v195 = v25;
  sub_1D618EC0C(v25, v375, v373, v369, v33, v192, v30);
  v196 = v378;
  v197 = v370;
  v198 = v366;
  v199 = v368;
  sub_1D618EC0C(v378, v34, v193, v194, v370, v366, v368);
  sub_1D618EC0C(v196, v34, v193, v194, v197, v198, v199);
  v200 = v195;
  v201 = v371;
  sub_1D618EC0C(v200, v375, v373, v28, v376, v371, v372);
  v202 = v193;
  v53 = v376;
  sub_1D618EC0C(v196, v34, v202, v194, v197, v198, v199);
  v51 = v372;
  v58 = v201;
  sub_1D618EC0C(v377, v375, v373, v28, v53, v201, v372);
  sub_1D62B7D1C(&v389, v381);
  sub_1D62B7D1C(&v395, v381);
  v203 = v348;
  v204 = 0;
  while (1)
  {
    if (v204 == v203)
    {
      goto LABEL_159;
    }

    v205 = (v347 + 40 * v204);
    v206 = *v205;
    v207 = v205[1];
    v362 = v205[2];
    v208 = v205[3];
    v355 = v205[4];
    v349 = v204;
    v209 = (v346 + 40 * v204);
    v210 = *v209;
    v211 = v209[1];
    v212 = v209[2];
    v350 = v209[3];
    v351 = v208;
    v357 = v209[4];
    v358 = v207;
    v213 = v206 == v210 && v207 == v211;
    v24 = v367;
    if (!v213 && (sub_1D72646CC() & 1) == 0)
    {
      sub_1D66AD7C0(v383, &qword_1EDF2A868, &type metadata for FormatTypeDefinition);
      v262 = v377;
      v263 = v375;
      v264 = v373;
      v28 = v369;
      v265 = v369;
      v266 = v53;
      v267 = v58;
      v268 = v51;
      v190 = v51;
      goto LABEL_139;
    }

    v214 = v362;
    v353 = v211;
    if (v362 != v212)
    {
      break;
    }

    v224 = v355;

LABEL_124:
    if (v351 == v350 && v224 == v357)
    {

      v235 = v372;
      v53 = v376;
    }

    else
    {
      v236 = sub_1D72646CC();

      v235 = v372;
      v53 = v376;
      if ((v236 & 1) == 0)
      {
        sub_1D66AD7C0(v383, &qword_1EDF2A868, &type metadata for FormatTypeDefinition);
        v28 = v369;
        v190 = v235;
        sub_1D60CF6F4(v377, v375, v373, v369, v53, v371, v235);
        v191 = v366;
        v24 = v367;
        goto LABEL_146;
      }
    }

    v203 = v348;
    v204 = v349 + 1;
    v28 = v369;
    v58 = v371;
    v51 = v235;
    if (v349 + 1 == v348)
    {
      goto LABEL_36;
    }
  }

  v190 = v51;
  if (*(v362 + 16) != *(v212 + 16))
  {
LABEL_138:
    sub_1D66AD7C0(v383, &qword_1EDF2A868, &type metadata for FormatTypeDefinition);
    v262 = v377;
    v263 = v375;
    v264 = v373;
    v28 = v369;
    v265 = v369;
    v266 = v53;
    v267 = v58;
    v268 = v190;
LABEL_139:
    sub_1D60CF6F4(v262, v263, v264, v265, v266, v267, v268);
    v191 = v366;
    goto LABEL_146;
  }

  v215 = v362 + 56;
  v216 = 1 << *(v362 + 32);
  if (v216 < 64)
  {
    v217 = ~(-1 << v216);
  }

  else
  {
    v217 = -1;
  }

  v218 = v217 & *(v362 + 56);
  v219 = (v216 + 63) >> 6;
  v220 = v212 + 56;

  v221 = 0;
  while (v218)
  {
    v222 = __clz(__rbit64(v218));
    v352 = (v218 - 1) & v218;
LABEL_114:
    v226 = (*(v214 + 48) + 16 * (v222 | (v221 << 6)));
    v228 = *v226;
    v227 = v226[1];
    sub_1D7264A0C();

    sub_1D72621EC();
    v229 = sub_1D7264A5C();
    v230 = -1 << *(v212 + 32);
    v231 = v229 & ~v230;
    if (((*(v220 + ((v231 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v231) & 1) == 0)
    {
LABEL_137:

      v190 = v372;
      v58 = v371;
      v24 = v367;
      v53 = v376;
      goto LABEL_138;
    }

    v232 = ~v230;
    while (1)
    {
      v233 = (*(v212 + 48) + 16 * v231);
      v234 = *v233 == v228 && v233[1] == v227;
      if (v234 || (sub_1D72646CC() & 1) != 0)
      {
        break;
      }

      v231 = (v231 + 1) & v232;
      if (((*(v220 + ((v231 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v231) & 1) == 0)
      {
        goto LABEL_137;
      }
    }

    v214 = v362;
    v218 = v352;
  }

  v223 = v221;
  v224 = v355;
  while (1)
  {
    v221 = v223 + 1;
    if (__OFADD__(v223, 1))
    {
      break;
    }

    if (v221 >= v219)
    {
      goto LABEL_124;
    }

    v225 = *(v215 + 8 * v221);
    ++v223;
    if (v225)
    {
      v222 = __clz(__rbit64(v225));
      v352 = (v225 - 1) & v225;
      goto LABEL_114;
    }
  }

  __break(1u);
  __break(1u);
LABEL_159:
  __break(1u);
}

uint64_t sub_1D634B03C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || result == a2)
    {
      return 1;
    }

    v3 = 0;
    v45 = a2 + 32;
    v46 = result + 32;
    while (1)
    {
      if (v3 == v2)
      {
        goto LABEL_35;
      }

      v4 = (v46 + 40 * v3);
      v5 = *v4;
      v6 = v4[1];
      v8 = v4[2];
      v7 = v4[3];
      v9 = v4[4];
      v10 = (v45 + 40 * v3);
      v12 = v10[2];
      v11 = v10[3];
      v13 = v10[4];
      if (v5 != *v10 || v6 != v10[1])
      {
        v47 = v3;
        v15 = v2;
        v16 = v7;
        v17 = sub_1D72646CC();
        v7 = v16;
        v2 = v15;
        v3 = v47;
        if ((v17 & 1) == 0)
        {
          return 0;
        }
      }

      v18 = v8 == v12 && v7 == v11;
      if (!v18 && (sub_1D72646CC() & 1) == 0)
      {
        return 0;
      }

      v19 = *(v9 + 16);
      if (v19 != *(v13 + 16))
      {
        return 0;
      }

      if (v19 && v9 != v13)
      {
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

    if (*(v9 + 16))
    {
      v21 = 0;
      v22 = v19 - 1;
      v23 = 32;
      while (1)
      {
        v24 = *(v9 + v23);
        v25 = *(v9 + v23 + 32);
        v63[1] = *(v9 + v23 + 16);
        v63[2] = v25;
        v63[0] = v24;
        v26 = *(v9 + v23 + 48);
        v27 = *(v9 + v23 + 64);
        v28 = *(v9 + v23 + 80);
        v64 = *(v9 + v23 + 96);
        v63[4] = v27;
        v63[5] = v28;
        v63[3] = v26;
        v29 = *(v9 + v23 + 16);
        v56 = *(v9 + v23);
        v57 = v29;
        v30 = *(v9 + v23 + 32);
        v31 = *(v9 + v23 + 48);
        v32 = *(v9 + v23 + 64);
        v33 = *(v9 + v23 + 80);
        v62 = *(v9 + v23 + 96);
        v60 = v32;
        v61 = v33;
        v58 = v30;
        v59 = v31;
        if (v21 >= *(v13 + 16))
        {
          break;
        }

        v34 = *(v13 + v23);
        v35 = *(v13 + v23 + 32);
        v65[1] = *(v13 + v23 + 16);
        v65[2] = v35;
        v65[0] = v34;
        v36 = *(v13 + v23 + 48);
        v37 = *(v13 + v23 + 64);
        v38 = *(v13 + v23 + 80);
        v66 = *(v13 + v23 + 96);
        v65[4] = v37;
        v65[5] = v38;
        v65[3] = v36;
        v39 = *(v13 + v23 + 16);
        v49 = *(v13 + v23);
        v50 = v39;
        v40 = *(v13 + v23 + 32);
        v41 = *(v13 + v23 + 48);
        v42 = *(v13 + v23 + 64);
        v43 = *(v13 + v23 + 80);
        v55 = *(v13 + v23 + 96);
        v53 = v42;
        v54 = v43;
        v51 = v40;
        v52 = v41;
        sub_1D5C5C4CC(v63, v48);
        sub_1D5C5C4CC(v65, v48);
        v44 = static FormatSourceMapNode.== infix(_:_:)(&v56, &v49);
        v67[4] = v53;
        v67[5] = v54;
        v68 = v55;
        v67[0] = v49;
        v67[1] = v50;
        v67[2] = v51;
        v67[3] = v52;
        sub_1D5C5C540(v67);
        v69[4] = v60;
        v69[5] = v61;
        v70 = v62;
        v69[0] = v56;
        v69[1] = v57;
        v69[2] = v58;
        v69[3] = v59;
        result = sub_1D5C5C540(v69);
        if ((v44 & 1) == 0)
        {
          goto LABEL_31;
        }

        if (v22 == v21)
        {

          goto LABEL_7;
        }

        v23 += 104;
        if (++v21 >= *(v9 + 16))
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
      return result;
    }

LABEL_30:
    __break(1u);
LABEL_31:
  }

  return 0;
}

void sub_1D634B39C(uint64_t a1, uint64_t a2)
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
    v6 = *(a1 + v3 + 56);
    v8 = *(a2 + v3 + 32);
    v7 = *(a2 + v3 + 40);
    v9 = *(a2 + v3 + 48);
    v23 = *(a2 + v3 + 56);
    v22 = *(a1 + v3 + 48);
    if (v22)
    {
      break;
    }

    if (*(a2 + v3 + 48))
    {
      sub_1D5D03180(v8, v7, v9);
      sub_1D5D03180(v5, v4, 0);
      v13 = v5;
      v14 = v4;
      v15 = 0;
LABEL_29:
      sub_1D5D07BA8(v13, v14, v15);
      sub_1D5D07BA8(v8, v7, v9);
      return;
    }

    if (v5 == v8 && v4 == v7)
    {
      sub_1D5D03180(v5, v4, 0);
      v10 = v6;

      sub_1D5D03180(v5, v4, 0);

      sub_1D5D03180(v5, v4, 0);
      sub_1D5D03180(v5, v4, 0);
      sub_1D5D07BA8(v5, v4, 0);
      sub_1D5D07BA8(v5, v4, 0);
    }

    else
    {
      v19 = sub_1D72646CC();
      sub_1D5D03180(v5, v4, 0);
      v10 = v6;

      sub_1D5D03180(v8, v7, 0);

      sub_1D5D03180(v8, v7, 0);
      sub_1D5D03180(v5, v4, 0);
      sub_1D5D07BA8(v5, v4, 0);
      sub_1D5D07BA8(v8, v7, 0);
      if ((v19 & 1) == 0)
      {
        sub_1D5D07BA8(v8, v7, 0);

        v16 = v5;
        v17 = v4;
        v18 = 0;
        goto LABEL_30;
      }
    }

LABEL_21:
    v12 = sub_1D6EEB7F0(v10, v23);
    sub_1D5D07BA8(v8, v7, v9);

    sub_1D5D07BA8(v5, v4, v22);

    if (v12)
    {
      v3 += 32;
      if (--v2)
      {
        continue;
      }
    }

    return;
  }

  if (*(a1 + v3 + 48) == 1)
  {
    if (v9 != 1)
    {
      sub_1D5D03180(v8, v7, v9);
      v13 = v5;
      v14 = v4;
      v15 = 1;
      goto LABEL_29;
    }

    sub_1D5D03180(v5, v4, 1);
    v10 = v6;

    sub_1D5D03180(v8, v7, 1);

    sub_1D5D07BA8(v5, v4, 1);
    sub_1D5D07BA8(v8, v7, 1);
    if ((v8 ^ v5))
    {
      sub_1D5D07BA8(v8, v7, 1);

      v16 = v5;
      v17 = v4;
      v18 = 1;
      goto LABEL_30;
    }

    goto LABEL_21;
  }

  if (v9 != 2)
  {
    sub_1D5D03180(v8, v7, v9);
    v13 = v5;
    v14 = v4;
    v15 = 2;
    goto LABEL_29;
  }

  sub_1D5D03180(v5, v4, 2);
  v10 = v6;

  sub_1D5D03180(v8, v7, 2);

  sub_1D5D07BA8(v5, v4, 2);
  sub_1D5D07BA8(v8, v7, 2);
  if (v5 == v8)
  {
    goto LABEL_21;
  }

  sub_1D5D07BA8(v8, v7, 2);

  v16 = v5;
  v17 = v4;
  v18 = 2;
LABEL_30:
  sub_1D5D07BA8(v16, v17, v18);
}

void sub_1D634B7E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a2 + 40);
    v4 = (a1 + 40);
    while (1)
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *v3;
      v10 = *(v3 - 1);
      v11 = v6;

      swift_retain_n();
      swift_retain_n();

      v8 = static FormatExpression.== infix(_:_:)(&v11, &v10);

      if ((v8 & 1) == 0)
      {
        break;
      }

      v9 = sub_1D6EEB7F0(v5, v7);

      if (v9)
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

uint64_t sub_1D634B928(uint64_t a1, uint64_t a2)
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
      v7 = *(v3 - 2) == *(v4 - 2) && *(v3 - 1) == *(v4 - 1);
      if (!v7 && (sub_1D72646CC() & 1) == 0)
      {
        return 0;
      }

      if (!v5)
      {
        if (v6)
        {
          sub_1D5D0A57C(v6);
          v23 = 0;
          goto LABEL_47;
        }

        goto LABEL_6;
      }

      if (v5 == 1)
      {
        if (v6 != 1)
        {
          sub_1D5D0A57C(v6);
          v23 = 1;
LABEL_47:
          sub_1D5D0A58C(v23);
          v5 = v6;
          goto LABEL_61;
        }

LABEL_6:
        sub_1D5D0A58C(v5);
        sub_1D5D0A58C(v5);
        goto LABEL_7;
      }

      if (v6 < 2)
      {
        sub_1D5D0A57C(v6);
        sub_1D5D0A57C(v5);
        v23 = v5;
        goto LABEL_47;
      }

      v8 = *(v5 + 16);
      v47 = *(v5 + 24);
      v9 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v8)
      {
        if (v8 != 1)
        {
          if (v9 < 2)
          {
            sub_1D5D0A57C(v6);

            sub_1D5D0A57C(v5);

            sub_1D5D0A57C(v6);
            sub_1D5D0A57C(v5);
            sub_1D5D0A57C(v9);
            sub_1D5D0A57C(v8);
            v24 = v8;
            goto LABEL_50;
          }

          v11 = *(v8 + 16);
          v44 = *(v8 + 24);
          v45 = *(v6 + 24);
          v12 = *(v9 + 24);
          v46 = *(v9 + 16);
          if (!v11)
          {
            if (v46)
            {
              sub_1D5D0A57C(v6);

              sub_1D5D0A57C(v5);

              sub_1D5D0A57C(v6);
              sub_1D5D0A57C(v5);
              v42 = v9;
              sub_1D5D0A57C(v9);
              v43 = v8;
              sub_1D5D0A57C(v8);
              sub_1D5D0A57C(v46);
              v25 = 0;
              goto LABEL_58;
            }

            goto LABEL_30;
          }

          if (v11 == 1)
          {
            if (v46 != 1)
            {
              sub_1D5D0A57C(v6);

              sub_1D5D0A57C(v5);

              sub_1D5D0A57C(v6);
              sub_1D5D0A57C(v5);
              v42 = v9;
              sub_1D5D0A57C(v9);
              v43 = v8;
              sub_1D5D0A57C(v8);
              sub_1D5D0A57C(v46);
              v25 = 1;
              goto LABEL_58;
            }

LABEL_30:
            v13 = *(v8 + 16);
            sub_1D5D0A57C(v6);

            sub_1D5D0A57C(v5);

            sub_1D5D0A57C(v6);
            sub_1D5D0A57C(v5);
            sub_1D5D0A57C(v9);
            sub_1D5D0A57C(v8);
            sub_1D5D0A58C(v13);
            sub_1D5D0A58C(v13);
            v14 = v9;
LABEL_41:

            v20 = sub_1D634B928(v44, v12);

            sub_1D5D0A58C(v8);
            sub_1D5D0A58C(v14);
            v10 = v45;
            if ((v20 & 1) == 0)
            {
              goto LABEL_60;
            }

            goto LABEL_42;
          }

          v42 = *(v6 + 16);
          v43 = *(v5 + 16);
          if (v46 < 2)
          {
            v26 = *(v8 + 16);
            sub_1D5D0A57C(v6);

            sub_1D5D0A57C(v5);

            sub_1D5D0A57C(v6);
            sub_1D5D0A57C(v5);
            sub_1D5D0A57C(v9);
            sub_1D5D0A57C(v8);
            sub_1D5D0A57C(v46);
            sub_1D5D0A57C(v26);
            v25 = v26;
            goto LABEL_58;
          }

          v15 = *(v11 + 16);
          v39 = *(v11 + 24);
          v16 = *(v46 + 16);
          v40 = *(v46 + 24);
          v41 = *(v8 + 16);
          if (v15)
          {
            if (v15 == 1)
            {
              if (v16 != 1)
              {
                v33 = *(v46 + 16);
                sub_1D5D0A57C(v6);

                sub_1D5D0A57C(v5);

                v34 = 1;
LABEL_55:
                v28 = v6;
                v29 = v5;
                v31 = v46;
                v30 = v8;
                v32 = v41;
                v27 = v33;
LABEL_56:
                sub_1D5D0A57C(v28);
                sub_1D5D0A57C(v29);
                sub_1D5D0A57C(v9);
                sub_1D5D0A57C(v30);
                sub_1D5D0A57C(v31);
                sub_1D5D0A57C(v32);
                sub_1D5D0A57C(v27);
                sub_1D5D0A58C(v34);
                sub_1D5D0A58C(v33);
                v25 = v41;
LABEL_58:
                sub_1D5D0A58C(v25);
                sub_1D5D0A58C(v46);
                v14 = v42;
                v8 = v43;
LABEL_59:
                sub_1D5D0A58C(v8);
                sub_1D5D0A58C(v14);
LABEL_60:
                sub_1D5D0A58C(v5);
                sub_1D5D0A58C(v6);

                sub_1D5D0A58C(v6);

LABEL_61:
                sub_1D5D0A58C(v5);
                return 0;
              }

LABEL_37:
              sub_1D5D0A57C(v6);

              sub_1D5D0A57C(v5);

              sub_1D5D0A57C(v6);
              sub_1D5D0A57C(v5);
              sub_1D5D0A57C(v9);
              sub_1D5D0A57C(v8);
              sub_1D5D0A57C(v46);
              v17 = v41;
              sub_1D5D0A57C(v41);
              sub_1D5D0A58C(v15);
              sub_1D5D0A58C(v15);
            }

            else
            {
              if (v16 < 2)
              {
                v33 = *(v46 + 16);
                v27 = *(v11 + 16);
                sub_1D5D0A57C(v6);

                sub_1D5D0A57C(v5);

                sub_1D5D0A57C(v6);
                v28 = v5;
                v29 = v9;
                v9 = v43;
                v30 = v46;
                v31 = v41;
                v32 = v33;
                v34 = v27;
                goto LABEL_56;
              }

              v37 = *(v15 + 16);
              v38 = *(v15 + 24);
              v18 = *(v16 + 16);
              v35 = *(v46 + 16);
              v36 = *(v16 + 24);
              sub_1D5D0A57C(v6);

              sub_1D5D0A57C(v5);

              sub_1D5D0A57C(v6);
              sub_1D5D0A57C(v5);
              sub_1D5D0A57C(v9);
              sub_1D5D0A57C(v8);
              sub_1D5D0A57C(v46);
              v17 = v41;
              sub_1D5D0A57C(v41);
              sub_1D5D0A57C(v35);
              sub_1D5D0A57C(v15);
              sub_1D5D0A57C(v18);

              LOBYTE(v38) = sub_1D6365F00(v37, v38, v18, v36);
              sub_1D5D0A58C(v18);

              sub_1D5D0A58C(v15);
              sub_1D5D0A58C(v35);
              if ((v38 & 1) == 0)
              {
                v25 = v41;
                goto LABEL_58;
              }
            }

            v19 = sub_1D634B928(v39, v40);

            sub_1D5D0A58C(v17);
            sub_1D5D0A58C(v46);
            v14 = v42;
            v8 = v43;
            if ((v19 & 1) == 0)
            {
              goto LABEL_59;
            }

            goto LABEL_41;
          }

          if (v16)
          {
            v33 = *(v46 + 16);
            sub_1D5D0A57C(v6);

            sub_1D5D0A57C(v5);

            v34 = 0;
            goto LABEL_55;
          }

          goto LABEL_37;
        }

        if (v9 != 1)
        {
          sub_1D5D0A57C(v6);

          sub_1D5D0A57C(v5);

          sub_1D5D0A57C(v6);
          sub_1D5D0A57C(v5);
          sub_1D5D0A57C(v9);
          v24 = 1;
LABEL_50:
          sub_1D5D0A58C(v24);
          sub_1D5D0A58C(v9);
          goto LABEL_60;
        }
      }

      else if (v9)
      {
        sub_1D5D0A57C(v6);

        sub_1D5D0A57C(v5);

        sub_1D5D0A57C(v6);
        sub_1D5D0A57C(v5);
        sub_1D5D0A57C(v9);
        v24 = 0;
        goto LABEL_50;
      }

      sub_1D5D0A57C(v6);

      sub_1D5D0A57C(v5);

      sub_1D5D0A57C(v6);
      sub_1D5D0A57C(v5);
      sub_1D5D0A58C(v8);
      sub_1D5D0A58C(v8);
LABEL_42:

      v21 = sub_1D634B928(v47, v10);

      sub_1D5D0A58C(v5);
      sub_1D5D0A58C(v6);

      sub_1D5D0A58C(v6);

      sub_1D5D0A58C(v5);
      if ((v21 & 1) == 0)
      {
        return 0;
      }

LABEL_7:
      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

void sub_1D634C12C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D72585BC();
  MEMORY[0x1EEE9AC00](v4, v5);
  MEMORY[0x1EEE9AC00](v6, v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  MEMORY[0x1EEE9AC00](&v104[-v10], v11);
  v17 = *(a1 + 16);
  if (v17 == *(a2 + 16) && v17 && a1 != a2)
  {
    v115 = &v104[-v14];
    v116 = v12;
    v108 = v16;
    v109 = v15;
    v117 = (v13 + 8);
    v118 = (v13 + 16);
    v18 = (a1 + 48);
    v19 = (a2 + 48);
    v121 = v4;
    do
    {
      v31 = *v18;
      v32 = *v19;
      v33 = *(v18 - 2) == *(v19 - 2) && *(v18 - 1) == *(v19 - 1);
      if (!v33 && (sub_1D72646CC() & 1) == 0)
      {
        return;
      }

      if (v31 >> 62)
      {
        if (v31 >> 62 == 1)
        {
          if (v32 >> 62 != 1)
          {
            return;
          }

          v34 = swift_projectBox();
          v35 = swift_projectBox();
          v122 = v18;
          v36 = *v118;
          v120 = v19;
          v37 = v115;
          v36(v115, v34, v4);
          v38 = v116;
          v36(v116, v35, v4);

          LOBYTE(v34) = sub_1D72584CC();
          v39 = *v117;
          (*v117)(v38, v4);
          v40 = v37;
          v19 = v120;
          v39(v40, v4);
          v18 = v122;

          if ((v34 & 1) == 0)
          {
            return;
          }
        }

        else
        {
          if (v32 >> 62 != 2)
          {
            return;
          }

          v55 = v31 & 0x3FFFFFFFFFFFFFFFLL;
          v56 = *(v55 + 16);
          v57 = v32 & 0x3FFFFFFFFFFFFFFFLL;
          v59 = *(v57 + 16);
          v58 = *(v57 + 24);
          v60 = v56;
          v119 = *(v55 + 24);
          v120 = v58;
          if (v56 >> 62)
          {
            if (v56 >> 62 == 1)
            {
              if (v59 >> 62 != 1)
              {
                goto LABEL_55;
              }

              v112 = v56;
              v61 = swift_projectBox();
              v62 = swift_projectBox();
              v122 = v18;
              v63 = *v118;
              v114 = v55;
              v64 = v108;
              v63(v108, v61, v4);
              v65 = v109;
              v63(v109, v62, v121);

              swift_retain_n();

              LODWORD(v113) = sub_1D72584CC();
              v66 = *v117;
              v4 = v121;
              (*v117)(v65, v121);
              v27 = v120;
              v66(v64, v4);
              v18 = v122;

              if ((v113 & 1) == 0)
              {
                goto LABEL_33;
              }
            }

            else
            {
              if (v59 >> 62 != 2)
              {
LABEL_55:

                goto LABEL_65;
              }

              v79 = *((v56 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
              v80 = *((v59 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
              v81 = *((v59 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
              v125 = *((v56 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
              v126 = v79;
              v123 = v80;
              v124 = v81;
              v114 = v80;

              v122 = (v59 & 0x3FFFFFFFFFFFFFFFLL);
              swift_retain_n();

              if ((static FormatWebEmbedNodeContent.== infix(_:_:)(&v125, &v123) & 1) == 0)
              {

                goto LABEL_65;
              }

              v82 = v126;
              v83 = v124;

              sub_1D634C12C(v82, v83);
              LODWORD(v113) = v84;

              if ((v113 & 1) == 0)
              {
                goto LABEL_33;
              }

              v27 = v120;
              v4 = v121;
            }
          }

          else
          {
            if (v59 >> 62)
            {
              return;
            }

            v69 = *(v56 + 16);
            v68 = *(v56 + 24);
            v113 = *(v56 + 32);
            v114 = v68;
            v70 = *(v56 + 40);
            v71 = *(v59 + 16);
            v72 = *(v59 + 24);
            v73 = *(v59 + 32);
            v74 = *(v59 + 40);
            v107 = v71;
            v122 = v69;
            v110 = v72;
            v111 = v73;
            if (v70)
            {
              if ((v74 & 1) == 0)
              {

LABEL_63:

                swift_retain_n();

                v96 = v107;
                v98 = v110;
                v97 = v111;
                sub_1D62B6164(v107, v110, v111, v70 ^ 1);
                sub_1D62B61A8(v122, v114, v113, v70);
                sub_1D62B61A8(v96, v98, v97, v70 ^ 1);

                goto LABEL_64;
              }

              if (v69 != v71 || v68 != v72)
              {
                v76 = v71;
                v77 = v72;
                v78 = sub_1D72646CC();
                v72 = v77;
                v71 = v76;
                if ((v78 & 1) == 0)
                {
                  v99 = v76;

                  swift_retain_n();

                  v100 = v111;
                  sub_1D62B6164(v99, v77, v111, 1);
                  v101 = v122;
                  v102 = v113;
                  v103 = v114;
                  sub_1D62B6164(v122, v114, v113, 1);
                  sub_1D62B61A8(v101, v103, v102, 1);
                  sub_1D62B61A8(v99, v77, v100, 1);

LABEL_64:

                  goto LABEL_65;
                }
              }

              v20 = v71;
              sub_1D62B6164(v71, v72, v111, 1);
              v106 = v57;
              sub_1D62B6164(v122, v114, v113, 1);
              v112 = v60;

              swift_retain_n();

              v21 = v111;
              sub_1D62B6164(v20, v110, v111, 1);
              v22 = v122;
              v24 = v113;
              v23 = v114;
              sub_1D62B6164(v122, v114, v113, 1);
              v105 = sub_1D6341C50(v24, v21);
              sub_1D62B61A8(v22, v23, v24, 1);
              v25 = v107;
              v26 = v110;
              sub_1D62B61A8(v107, v110, v21, 1);
              sub_1D62B61A8(v25, v26, v21, 1);
              sub_1D62B61A8(v122, v114, v113, 1);

              v27 = v120;
              if ((v105 & 1) == 0)
              {
                goto LABEL_33;
              }
            }

            else
            {
              if (v74)
              {
                goto LABEL_63;
              }

              swift_retain_n();

              v85 = v122;
              sub_1D62B61A8(v122, v114, v113, 0);
              v86 = v107;
              sub_1D62B61A8(v107, v110, v111, 0);

              v87 = v86 ^ v85;
              v27 = v120;
              if (v87)
              {
LABEL_33:

LABEL_65:

                return;
              }
            }
          }

          v28 = v119;

          sub_1D634C12C(v28, v27);
          v30 = v29;

          swift_bridgeObjectRelease_n();

          if ((v30 & 1) == 0)
          {
            return;
          }
        }
      }

      else
      {
        if (v32 >> 62)
        {
          return;
        }

        v42 = *(v31 + 16);
        v41 = *(v31 + 24);
        v122 = *(v31 + 32);
        v43 = *(v31 + 40);
        v45 = *(v32 + 16);
        v44 = *(v32 + 24);
        v120 = *(v32 + 32);
        if (v43)
        {
          if ((*(v32 + 40) & 1) == 0)
          {

LABEL_57:

            v88 = v120;
            sub_1D62B6164(v45, v44, v120, v43 ^ 1);
            sub_1D62B61A8(v42, v41, v122, v43);
            v89 = v43 ^ 1;
            v90 = v45;
            v91 = v44;
            v92 = v88;
            goto LABEL_58;
          }

          v46 = v42 == v45 && v41 == v44;
          if (!v46 && (sub_1D72646CC() & 1) == 0)
          {

            v93 = v120;
            sub_1D62B6164(v45, v44, v120, 1);
            v94 = v44;
            v95 = v122;
            sub_1D62B6164(v42, v41, v122, 1);
            sub_1D62B61A8(v42, v41, v95, 1);
            v90 = v45;
            v91 = v94;
            v92 = v93;
            v89 = 1;
LABEL_58:
            sub_1D62B61A8(v90, v91, v92, v89);

            goto LABEL_65;
          }

          v47 = v120;
          sub_1D62B6164(v45, v44, v120, 1);
          v48 = v41;
          v112 = v41;
          v49 = v44;
          v114 = v44;
          v50 = v122;
          sub_1D62B6164(v42, v48, v122, 1);

          sub_1D62B6164(v45, v49, v47, 1);
          v51 = v42;
          v113 = v42;
          v52 = v42;
          v53 = v112;
          sub_1D62B6164(v52, v112, v50, 1);
          LODWORD(v119) = sub_1D6341C50(v50, v47);
          sub_1D62B61A8(v51, v53, v50, 1);
          v54 = v114;
          sub_1D62B61A8(v45, v114, v47, 1);
          sub_1D62B61A8(v45, v54, v47, 1);
          sub_1D62B61A8(v113, v53, v50, 1);

          v4 = v121;
          if ((v119 & 1) == 0)
          {
            return;
          }
        }

        else
        {
          if (*(v32 + 40))
          {
            goto LABEL_57;
          }

          sub_1D62B61A8(v42, v41, v122, 0);
          sub_1D62B61A8(v45, v44, v120, 0);

          v67 = v45 ^ v42;
          v4 = v121;
          if (v67)
          {
            return;
          }
        }
      }

      v18 += 3;
      v19 += 3;
      --v17;
    }

    while (v17);
  }
}