void sub_1AADD2208(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1AADB05C0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1AAD891B4(v16, a4 & 1);
      v11 = sub_1AADB05C0(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1AAF905B4();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1AAD942C4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 32 * v11;

    sub_1AADD4904(a1, v22);
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  v24 = (v21[7] + 32 * v11);
  v25 = a1[1];
  *v24 = *a1;
  v24[1] = v25;
  v26 = v21[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v27;
}

void sub_1AADD2388(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1AADB0594(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_15;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1AAD89460(v14, a3 & 1);
      v9 = sub_1AADB0594(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_1AAF905B4();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_1AAD9445C();
      v9 = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
    return;
  }

  v19[(v9 >> 6) + 8] |= 1 << v9;
  *(v19[6] + 8 * v9) = a2;
  *(v19[7] + 8 * v9) = a1;
  v20 = v19[2];
  v13 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19[2] = v21;
}

void sub_1AADD24D0(uint64_t a1, uint64_t a2, char a3, __n128 a4)
{
  v5 = v4;
  v9 = *v4;
  v11 = sub_1AADB09E4(a2, a4);
  v12 = *(v9 + 16);
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v9 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1AAD8A130(v14, a3 & 1);
      v19 = sub_1AADB09E4(a2, v18);
      if ((v15 & 1) != (v20 & 1))
      {
LABEL_17:
        sub_1AAF905B4();
        __break(1u);
        return;
      }

      v11 = v19;
      v17 = *v5;
      if (v15)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    sub_1AAD94A74();
  }

  v17 = *v5;
  if ((v15 & 1) == 0)
  {
LABEL_13:
    sub_1AAD9AB20(a2, v27);
    v17[(v11 >> 6) + 8] |= 1 << v11;
    v21 = v17[6] + 40 * v11;
    v22 = v28;
    v23 = v27[1];
    *v21 = v27[0];
    *(v21 + 16) = v23;
    *(v21 + 32) = v22;
    *(v17[7] + 8 * v11) = a1;
    v24 = v17[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (!v25)
    {
      v17[2] = v26;
      return;
    }

    goto LABEL_16;
  }

LABEL_8:
  *(v17[7] + 8 * v11) = a1;
}

void sub_1AADD2654(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1AACB89FC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1AAD8A400(v14, a3 & 1);
      v9 = sub_1AACB89FC(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_1AAF905B4();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_1AAD94C28();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + 8 * v9) = a2;
    *(v19[7] + 8 * v9) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

void sub_1AADD27B0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1AAF8CBA4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1AACED27C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + 8 * v14) = a1;
      return;
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_1AAD951A4();
    goto LABEL_7;
  }

  sub_1AAD8A664(v17, a3 & 1);
  v21 = sub_1AACED27C(a2);
  if ((v18 & 1) != (v22 & 1))
  {
LABEL_14:
    sub_1AAF905B4();
    __break(1u);
    return;
  }

  v14 = v21;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  sub_1AADD4484(v14, v11, a1, v20);
}

void sub_1AADD294C(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1AACE1760(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1AAD8AF44(v16, a4 & 1);
      v11 = sub_1AACE1760(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_1AAF905B4();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1AAD961D8();
      v11 = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(v11 >> 6) + 8] |= 1 << v11;
    *(v21[6] + v11) = a3;
    v23 = (v21[7] + 16 * v11);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * v11);
  *v22 = a1;
  v22[1] = a2;
}

void sub_1AADD2AB4(uint64_t a1, __int128 *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1AADB0AA8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1AAD8BCD4(v14, a3 & 1);
      v9 = sub_1AADB0AA8(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_1AAF905B4();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_1AAD96C54();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    v20 = (v19[6] + 48 * v9);
    v21 = *a2;
    v22 = a2[1];
    *(v20 + 25) = *(a2 + 25);
    *v20 = v21;
    v20[1] = v22;
    *(v19[7] + 8 * v9) = a1;
    v23 = v19[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v19[2] = v24;
      sub_1AADD48A8(a2, &v25);
      return;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

void sub_1AADD2C2C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1AADB0B14(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1AAD8C184(v14, a3 & 1);
      v9 = sub_1AADB0B14(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_1AAF905B4();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_1AAD96E0C();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    v20 = v19[6] + 72 * v9;
    *v20 = *a2;
    v21 = *(a2 + 16);
    v22 = *(a2 + 32);
    v23 = *(a2 + 48);
    *(v20 + 64) = *(a2 + 64);
    *(v20 + 32) = v22;
    *(v20 + 48) = v23;
    *(v20 + 16) = v21;
    *(v19[7] + 8 * v9) = a1;
    v24 = v19[2];
    v13 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v13)
    {
      v19[2] = v25;
      sub_1AAD9B8B0(a2, v26);
      return;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

void sub_1AADD2DB4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, double a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1AADB0548(a6);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a5 & 1) == 0)
  {
    if (v22 < v20 || (a5 & 1) != 0)
    {
      sub_1AAD8C7CC(v20, a5 & 1);
      v15 = sub_1AADB0548(a6);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_16:
        sub_1AAF905B4();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      sub_1AAD96FEC();
      v15 = v23;
    }
  }

  v25 = *v7;
  if ((v21 & 1) == 0)
  {
    v25[(v15 >> 6) + 8] |= 1 << v15;
    *(v25[6] + 8 * v15) = a6;
    v30 = v25[7] + 32 * v15;
    *v30 = a1;
    *(v30 + 8) = a2;
    *(v30 + 16) = a3 & 1;
    *(v30 + 24) = a4;
    v31 = v25[2];
    v19 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (!v19)
    {
      v25[2] = v32;
      return;
    }

    goto LABEL_15;
  }

  v26 = v25[7] + 32 * v15;
  v27 = *v26;
  v28 = *(v26 + 8);
  v29 = *(v26 + 16);
  *v26 = a1;
  *(v26 + 8) = a2;
  *(v26 + 16) = a3 & 1;
  *(v26 + 24) = a4;
  sub_1AAD04750(v27, v28, v29);
}

void sub_1AADD2F58(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, double a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1AADB0A28(a1, a2, a3 & 1, a4);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a5 & 1) == 0)
  {
    if (v22 < v20 || (a5 & 1) != 0)
    {
      sub_1AAD8CA7C(v20, a5 & 1);
      v15 = sub_1AADB0A28(a1, a2, a3 & 1, a4);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_16:
        sub_1AAF905B4();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      sub_1AAD97160();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a6;
    return;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = v25[6] + 32 * v15;
  *v26 = a1;
  *(v26 + 8) = a2;
  *(v26 + 16) = a3 & 1;
  *(v26 + 24) = a4;
  *(v25[7] + 8 * v15) = a6;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v25[2] = v28;
  sub_1AACD7304(a1, a2, a3 & 1);
}

void sub_1AADD30F8(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1AADB0548(a4);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_1AAD8CD74(v16, a3 & 1);
      v11 = sub_1AADB0548(a4);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_1AAF905B4();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1AAD97300();
      v11 = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(v11 >> 6) + 8] |= 1 << v11;
    *(v21[6] + 8 * v11) = a4;
    v23 = (v21[7] + 16 * v11);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * v11);
  *v22 = a1;
  v22[1] = a2;
}

void sub_1AADD3254(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1AADB05C0(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_1AAD8CFF0(v16, a3 & 1);
      v11 = sub_1AADB05C0(a1, a2);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_1AAF905B4();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1AAD9745C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a4;
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a1;
  v22[1] = a2;
  *(v21[7] + 8 * v11) = a4;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

unint64_t sub_1AADD33B0(uint64_t a1, char a2, double a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1AADB0454(a1);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v18 >= v16 && (a2 & 1) == 0)
  {
    v19 = result;
    sub_1AAD93DA0();
    result = v19;
    goto LABEL_8;
  }

  sub_1AAD88ADC(v16, a2 & 1);
  result = sub_1AADB0454(a1);
  if ((v17 & 1) == (v20 & 1))
  {
LABEL_8:
    v21 = *v5;
    if (v17)
    {
      v22 = (v21[7] + 16 * result);
      *v22 = a3;
      v22[1] = a4;
      return result;
    }

    v21[(result >> 6) + 8] |= 1 << result;
    v23 = v21[6] + 72 * result;
    *v23 = *a1;
    v24 = *(a1 + 16);
    v25 = *(a1 + 32);
    v26 = *(a1 + 48);
    *(v23 + 64) = *(a1 + 64);
    *(v23 + 32) = v25;
    *(v23 + 48) = v26;
    *(v23 + 16) = v24;
    v27 = (v21[7] + 16 * result);
    *v27 = a3;
    v27[1] = a4;
    v28 = v21[2];
    v15 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v15)
    {
      v21[2] = v29;
      return sub_1AAD9B9C0(a1, v30);
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1AAF905B4();
  __break(1u);
  return result;
}

uint64_t sub_1AADD351C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = a2;
  v8 = *v3;
  v10 = sub_1AACE1760(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
  }

  else
  {
    v14 = v9;
    v15 = v8[3];
    if (v15 >= v13 && (a3 & 1) != 0)
    {
LABEL_7:
      v16 = *v4;
      if (v14)
      {
LABEL_8:
        v17 = v16[7];
        v18 = type metadata accessor for ChartContentRenderContext.Bins(0);
        return sub_1AADD49BC(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for ChartContentRenderContext.Bins);
      }

      return sub_1AADD4704(v10, v6, a1, v16, type metadata accessor for ChartContentRenderContext.Bins, type metadata accessor for ChartContentRenderContext.Bins);
    }

    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1AAD975B8();
      goto LABEL_7;
    }

    sub_1AAD8D288(v13, a3 & 1);
    v20 = sub_1AACE1760(v6);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      return sub_1AADD4704(v10, v6, a1, v16, type metadata accessor for ChartContentRenderContext.Bins, type metadata accessor for ChartContentRenderContext.Bins);
    }
  }

  result = sub_1AAF905B4();
  __break(1u);
  return result;
}

unint64_t sub_1AADD3678(uint64_t a1, char a2, double a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1AADB0B80(a3, a4);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v18 >= v16 && (a2 & 1) == 0)
  {
    v19 = result;
    sub_1AAD97814();
    result = v19;
    goto LABEL_8;
  }

  sub_1AAD8D610(v16, a2 & 1);
  result = sub_1AADB0B80(a3, a4);
  if ((v17 & 1) == (v20 & 1))
  {
LABEL_8:
    v21 = *v5;
    if (v17)
    {
      *(v21[7] + 8 * result) = a1;
      return result;
    }

    v21[(result >> 6) + 8] |= 1 << result;
    v22 = (v21[6] + 16 * result);
    *v22 = a3;
    v22[1] = a4;
    *(v21[7] + 8 * result) = a1;
    v23 = v21[2];
    v15 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v15)
    {
      v21[2] = v24;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1AAF905B4();
  __break(1u);
  return result;
}

uint64_t sub_1AADD37D8(uint64_t *a1, __int128 *a2, char a3)
{
  v4 = v3;
  v7 = *a1;
  v9 = a1[2];
  v8 = a1[3];
  v11 = a1[4];
  v10 = a1[5];
  v12 = a1[6];
  v13 = a1[7];
  v31 = a1[1];
  v32 = a1[8];
  v33 = a1[9];
  v34 = a1[10];
  v35 = a1[11];
  v36 = a1[12];
  v37 = a1[13];
  v38 = a1[14];
  v39 = a1[15];
  v40 = a1[16];
  v41 = a1[17];
  v42 = a1[18];
  v43 = a1[19];
  v44 = a1[20];
  v45 = a1[21];
  v46 = a1[22];
  v54 = a1[26];
  v56 = a1[27];
  v14 = a1[29];
  v58 = a1[28];
  v15 = a1[36];
  v47 = a1[30];
  v48 = a1[23];
  v49 = a1[31];
  v50 = a1[24];
  v51 = a1[32];
  v52 = a1[25];
  v53 = a1[33];
  v55 = a1[34];
  v57 = a1[35];
  v16 = a1[37];
  v17 = *v3;
  v18 = sub_1AADB0D50(a2);
  v20 = *(v17 + 16);
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_12;
  }

  v24 = v19;
  v25 = *(v17 + 24);
  if (v25 >= v23 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v25 >= v23 && (a3 & 1) == 0)
  {
    v26 = v18;
    sub_1AAD97E1C();
    v18 = v26;
    goto LABEL_8;
  }

  sub_1AAD8E1B4(v23, a3 & 1);
  v18 = sub_1AADB0D50(a2);
  if ((v24 & 1) != (v27 & 1))
  {
LABEL_12:
    result = sub_1AAF905B4();
    __break(1u);
    return result;
  }

LABEL_8:
  if (v24)
  {
    v28 = (*(*v4 + 56) + 304 * v18);
    memcpy(__dst, v28, sizeof(__dst));
    *v28 = v7;
    v28[1] = v31;
    v28[6] = v12;
    v28[7] = v13;
    v28[2] = v9;
    v28[3] = v8;
    v28[4] = v11;
    v28[5] = v10;
    v28[8] = v32;
    v28[9] = v33;
    v28[10] = v34;
    v28[11] = v35;
    v28[12] = v36;
    v28[13] = v37;
    v28[14] = v38;
    v28[15] = v39;
    v28[16] = v40;
    v28[17] = v41;
    v28[18] = v42;
    v28[19] = v43;
    v28[20] = v44;
    v28[21] = v45;
    v28[22] = v46;
    v28[23] = v48;
    v28[24] = v50;
    v28[25] = v52;
    v28[26] = v54;
    v28[27] = v56;
    v28[28] = v58;
    v28[29] = v14;
    v28[30] = v47;
    v28[31] = v49;
    v28[32] = v51;
    v28[33] = v53;
    v28[34] = v55;
    v28[35] = v57;
    v28[36] = v15;
    v28[37] = v16;
    return sub_1AADD484C(__dst);
  }

  else
  {
    v60[0] = v7;
    v60[1] = v31;
    v60[6] = v12;
    v60[7] = v13;
    v30 = *v4;
    v60[2] = v9;
    v60[3] = v8;
    v60[4] = v11;
    v60[5] = v10;
    v60[8] = v32;
    v60[9] = v33;
    v60[10] = v34;
    v60[11] = v35;
    v60[12] = v36;
    v60[13] = v37;
    v60[14] = v38;
    v60[15] = v39;
    v60[16] = v40;
    v60[17] = v41;
    v60[18] = v42;
    v60[19] = v43;
    v60[20] = v44;
    v60[21] = v45;
    v60[22] = v46;
    v60[23] = v48;
    v60[24] = v50;
    v60[25] = v52;
    v60[26] = v54;
    v60[27] = v56;
    v60[28] = v58;
    v60[29] = v14;
    v60[30] = v47;
    v60[31] = v49;
    v60[32] = v51;
    v60[33] = v53;
    v60[34] = v55;
    v60[35] = v57;
    v60[36] = v15;
    v60[37] = v16;
    sub_1AADD4584(v18, a2, v60, v30);
    return sub_1AAD81BF4(a2, __dst);
  }
}

void sub_1AADD3B44(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1AADB0938(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1AAD8F6E8(v14, a3 & 1);
      v9 = sub_1AADB0938(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_1AAF905B4();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_1AAD98974();
      v9 = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;

    return;
  }

  v19[(v9 >> 6) + 8] |= 1 << v9;
  *(v19[6] + 8 * v9) = a2;
  *(v19[7] + 8 * v9) = a1;
  v20 = v19[2];
  v13 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v21;
}

uint64_t sub_1AADD3CA4(const void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1AADB0D50(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1AAD8FDBC(v14, a3 & 1);
      v9 = sub_1AADB0D50(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1AAF905B4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_1AAD98C90();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    v22 = v19[6] + 152 * v9;
    v24 = *(a2 + 64);
    v23 = *(a2 + 80);
    v25 = *(a2 + 48);
    *(v22 + 32) = *(a2 + 32);
    *(v22 + 48) = v25;
    *(v22 + 64) = v24;
    *(v22 + 80) = v23;
    v26 = *(a2 + 16);
    *v22 = *a2;
    *(v22 + 16) = v26;
    v27 = *(a2 + 96);
    v28 = *(a2 + 112);
    v29 = *(a2 + 128);
    *(v22 + 144) = *(a2 + 144);
    *(v22 + 112) = v28;
    *(v22 + 128) = v29;
    *(v22 + 96) = v27;
    memcpy((v19[7] + 312 * v9), a1, 0x138uLL);
    v30 = v19[2];
    v13 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (!v13)
    {
      v19[2] = v31;
      return sub_1AAD81BF4(a2, v32);
    }

    goto LABEL_15;
  }

  v20 = v19[7] + 312 * v9;

  return sub_1AADD4960(a1, v20);
}

uint64_t sub_1AADD3E4C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = a2;
  v8 = *v3;
  v10 = sub_1AACE1760(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
  }

  else
  {
    v14 = v9;
    v15 = v8[3];
    if (v15 >= v13 && (a3 & 1) != 0)
    {
LABEL_7:
      v16 = *v4;
      if (v14)
      {
LABEL_8:
        v17 = v16[7];
        v18 = type metadata accessor for ChartAccessibilityContent.Builder.Bins(0);
        return sub_1AADD49BC(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for ChartAccessibilityContent.Builder.Bins);
      }

      return sub_1AADD4704(v10, v6, a1, v16, type metadata accessor for ChartAccessibilityContent.Builder.Bins, type metadata accessor for ChartAccessibilityContent.Builder.Bins);
    }

    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1AAD98EC4();
      goto LABEL_7;
    }

    sub_1AAD903E8(v13, a3 & 1);
    v20 = sub_1AACE1760(v6);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      return sub_1AADD4704(v10, v6, a1, v16, type metadata accessor for ChartAccessibilityContent.Builder.Bins, type metadata accessor for ChartAccessibilityContent.Builder.Bins);
    }
  }

  result = sub_1AAF905B4();
  __break(1u);
  return result;
}

unint64_t sub_1AADD3FA8(__int128 *a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1AACE1760(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1AAD90770(v14, a3 & 1);
      result = sub_1AACE1760(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1AAF905B4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1AAD99120();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    v21 = (v19[7] + 48 * result);
    v22 = *a1;
    v23 = a1[1];
    *(v21 + 25) = *(a1 + 25);
    *v21 = v22;
    v21[1] = v23;
    v24 = v19[2];
    v13 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v13)
    {
      v19[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v20 = v19[7] + 48 * result;

  return sub_1AADD47F0(a1, v20);
}

void sub_1AADD4160(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void))
{
  v8 = v5;
  v12 = *v5;
  v13 = sub_1AADB0E38(a2);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 < v18 || (a3 & 1) != 0)
    {
      a5(v18, a3 & 1);
      v13 = sub_1AADB0E38(a2);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        sub_1AAF905B4();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      a4();
      v13 = v21;
    }
  }

  v23 = *v8;
  if ((v19 & 1) == 0)
  {
    v23[(v13 >> 6) + 8] |= 1 << v13;
    v24 = (v23[6] + 96 * v13);
    v25 = *(a2 + 16);
    *v24 = *a2;
    v24[1] = v25;
    v26 = *(a2 + 32);
    v27 = *(a2 + 48);
    v28 = *(a2 + 64);
    *(v24 + 73) = *(a2 + 73);
    v24[3] = v27;
    v24[4] = v28;
    v24[2] = v26;
    *(v23[7] + 8 * v13) = a1;
    v29 = v23[2];
    v17 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (!v17)
    {
      v23[2] = v30;
      sub_1AAD9C17C(a2, &v31);
      return;
    }

    goto LABEL_15;
  }

  *(v23[7] + 8 * v13) = a1;
}

uint64_t sub_1AADD4304(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for CalendarCache.Key(0);
  result = sub_1AADD4A24(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for CalendarCache.Key);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_1AADD43B8(unint64_t a1, uint64_t a2, void *__src, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = memcpy((a4[7] + 776 * a1), __src, 0x301uLL);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_1AADD4484(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1AAF8CBA4();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_1AADD453C(unint64_t result, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1AADD4584(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a3 + 272);
  v5 = *(a3 + 280);
  v6 = *(a3 + 288);
  v7 = *(a3 + 296);
  a4[(result >> 6) + 8] |= 1 << result;
  v8 = a4[6] + 152 * result;
  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 16) = v9;
  v10 = *(a2 + 80);
  *(v8 + 64) = *(a2 + 64);
  *(v8 + 80) = v10;
  v11 = *(a2 + 48);
  *(v8 + 32) = *(a2 + 32);
  *(v8 + 48) = v11;
  *(v8 + 144) = *(a2 + 144);
  v12 = *(a2 + 128);
  *(v8 + 112) = *(a2 + 112);
  *(v8 + 128) = v12;
  *(v8 + 96) = *(a2 + 96);
  v13 = a4[7] + 304 * result;
  v14 = *(a3 + 16);
  *v13 = *a3;
  *(v13 + 16) = v14;
  v15 = *(a3 + 48);
  *(v13 + 32) = *(a3 + 32);
  *(v13 + 48) = v15;
  v16 = *(a3 + 80);
  *(v13 + 64) = *(a3 + 64);
  *(v13 + 80) = v16;
  v17 = *(a3 + 112);
  *(v13 + 96) = *(a3 + 96);
  *(v13 + 112) = v17;
  v18 = *(a3 + 144);
  *(v13 + 128) = *(a3 + 128);
  *(v13 + 144) = v18;
  v19 = *(a3 + 176);
  *(v13 + 160) = *(a3 + 160);
  *(v13 + 176) = v19;
  v20 = *(a3 + 208);
  *(v13 + 192) = *(a3 + 192);
  *(v13 + 208) = v20;
  v21 = *(a3 + 240);
  *(v13 + 224) = *(a3 + 224);
  *(v13 + 240) = v21;
  *(v13 + 256) = *(a3 + 256);
  *(v13 + 272) = v4;
  *(v13 + 280) = v5;
  *(v13 + 288) = v6;
  *(v13 + 296) = v7;
  v22 = a4[2];
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v24;
  }

  return result;
}

void *sub_1AADD4660(unint64_t a1, uint64_t a2, void *__src, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 152 * a1;
  v6 = *(a2 + 112);
  *(v5 + 96) = *(a2 + 96);
  *(v5 + 112) = v6;
  *(v5 + 128) = *(a2 + 128);
  *(v5 + 144) = *(a2 + 144);
  v7 = *(a2 + 48);
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 48) = v7;
  v8 = *(a2 + 80);
  *(v5 + 64) = *(a2 + 64);
  *(v5 + 80) = v8;
  v9 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v9;
  result = memcpy((a4[7] + 312 * a1), __src, 0x138uLL);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1AADD4704(unint64_t a1, char a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v10 = a4[7];
  v11 = a5(0);
  result = sub_1AADD4A24(a3, v10 + *(*(v11 - 8) + 72) * a1, a6);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_1AADD47AC(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_1AADD484C(uint64_t a1)
{
  sub_1AAD45FFC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AADD49BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AADD4A24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t AxisMark.foregroundStyle<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v19, a2, v15);
  KeyPath = swift_getKeyPath();
  (*(v11 + 16))(v13, a1, a3);
  v23 = sub_1AAF8DA44();
  return sub_1AADD4C3C(v17, KeyPath, &v23, a2, a4, x8_0);
}

uint64_t sub_1AADD4C3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a2;
  (*(*(a4 - 8) + 32))(a6, a1, a4);
  v12 = *(v11 + *MEMORY[0x1E69E6CE8] + 8);
  v13 = type metadata accessor for ModifiedAxisMark(0, a4, v12, a5);
  *(a6 + *(v13 + 44)) = a2;
  v14 = *(*(v12 - 8) + 32);
  v15 = a6 + *(v13 + 48);

  return v14(v15, a3, v12);
}

double AxisMark.font(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v4, a2, v9);
  KeyPath = swift_getKeyPath();
  v16 = a1;
  sub_1AADD4C3C(v11, KeyPath, &v16, a2, a3, a4);

  return result;
}

uint64_t AxisMark.offset(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v11 = *(a1 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v5, a1, v12);
  (*(v11 + 32))(a3, v14, a1);
  result = type metadata accessor for OffsetAxisMark(0, a1, a2, v15);
  v17 = (a3 + *(result + 36));
  *v17 = a4;
  v17[1] = a5;
  return result;
}

void sub_1AADD4F60(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1AADD4FE8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_1AADD50EC(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t sub_1AADD5288(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1AAF90274();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1AADD533C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 84);
  v5 = *(*(a3 + 24) - 8);
  v6 = *(v3 + 64);
  v7 = *(v5 + 80);
  if (v4 <= *(v5 + 84))
  {
    v8 = *(v5 + 84);
  }

  else
  {
    v8 = *(v3 + 84);
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v9)
  {
    goto LABEL_31;
  }

  v10 = ((v7 + ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v7) + *(v5 + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((a2 - v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v14 < 2)
    {
LABEL_31:
      if (v4 == v9)
      {
        return (*(v3 + 48))();
      }

      v18 = ((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if ((v8 & 0x80000000) != 0)
      {
        return (*(v5 + 48))((v18 + v7 + 8) & ~v7);
      }

      v19 = *v18;
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_31;
  }

LABEL_18:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 <= 3)
    {
      v16 = ((v7 + ((v6 + 7) & 0xFFFFFFF8) + 8) & ~v7) + *(v5 + 64);
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v17 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v17 = *a1;
      }
    }

    else if (v16 == 1)
    {
      v17 = *a1;
    }

    else
    {
      v17 = *a1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v9 + (v17 | v15) + 1;
}

unsigned int *sub_1AADD5550(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v4 + 64);
  v8 = *(v6 + 80);
  if (v5 <= *(v6 + 84))
  {
    v9 = *(v6 + 84);
  }

  else
  {
    v9 = *(v4 + 84);
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = ((v8 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v8) + *(v6 + 64);
  if (a3 > v10)
  {
    if (v11 <= 3)
    {
      v16 = ((a3 - v10 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
      if (HIWORD(v16))
      {
        v12 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v12 = v17;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v10 < a2)
  {
    v13 = ~v10 + a2;
    if (v11 >= 4)
    {
      v14 = result;
      bzero(result, v11);
      result = v14;
      *v14 = v13;
      v15 = 1;
      if (v12 > 1)
      {
        goto LABEL_14;
      }

      goto LABEL_51;
    }

    v15 = (v13 >> (8 * v11)) + 1;
    if (v11)
    {
      v18 = v13 & ~(-1 << (8 * v11));
      v19 = result;
      bzero(result, v11);
      result = v19;
      if (v11 != 3)
      {
        if (v11 == 2)
        {
          *v19 = v18;
          if (v12 > 1)
          {
            goto LABEL_14;
          }
        }

        else
        {
          *v19 = v13;
          if (v12 > 1)
          {
LABEL_14:
            if (v12 == 2)
            {
              *(result + v11) = v15;
            }

            else
            {
              *(result + v11) = v15;
            }

            return result;
          }
        }

LABEL_51:
        if (v12)
        {
          *(result + v11) = v15;
        }

        return result;
      }

      *v19 = v18;
      *(v19 + 2) = BYTE2(v18);
    }

    if (v12 > 1)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *(result + v11) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_35;
    }

    *(result + v11) = 0;
  }

  else if (v12)
  {
    *(result + v11) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return result;
  }

LABEL_35:
  if (v5 == v10)
  {
    v20 = *(v4 + 56);

    return v20();
  }

  else
  {
    v21 = ((result + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((v9 & 0x80000000) != 0)
    {
      v23 = *(v6 + 56);

      return v23((v21 + v8 + 8) & ~v8);
    }

    else
    {
      if ((a2 & 0x80000000) != 0)
      {
        v22 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v22 = a2 - 1;
      }

      *v21 = v22;
    }
  }

  return result;
}

uint64_t sub_1AADD5860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a5;
  v30 = a3;
  v26 = a1;
  v28 = *(a4 - 8);
  v7 = v28;
  MEMORY[0x1EEE9AC00](a1);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v25 - v11;
  v27 = v25 - v11;
  v14 = *v13;
  v18 = type metadata accessor for ModifiedAxisMark(0, v15, v16, v17);
  v25[1] = *(a1 + *(v18 + 44));
  swift_beginAccess();
  v19 = *(v14 + 40);
  v32[0] = *(v14 + 32);
  v32[1] = v19;
  v33 = *(v14 + 48);

  v20 = swift_readAtKeyPath();
  v21 = *(v7 + 16);
  v21(v12);
  v20(v31, 0);

  v22 = v26;
  (v21)(v9, v26 + *(v18 + 48), a4);
  swift_beginAccess();
  swift_setAtWritableKeyPath();
  swift_endAccess();
  v32[0] = v14;
  (*(v29 + 8))(v22, v32);
  v23 = v27;
  (v21)(v9, v27, a4);
  swift_beginAccess();
  swift_setAtWritableKeyPath();
  swift_endAccess();
  return (*(v28 + 8))(v23, a4);
}

uint64_t sub_1AADD5AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v31 = a2;
  v32 = a5;
  v27 = a1;
  v7 = *(a3 - 8);
  v29 = a4;
  v30 = v7;
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  v28 = &v26 - v11;
  v14 = *v13;
  v18 = type metadata accessor for ModifiedAxisMark(0, v15, v16, v17);
  v26 = *(a1 + *(v18 + 44));
  swift_beginAccess();
  v19 = *(v14 + 40);
  v34[0] = *(v14 + 32);
  v34[1] = v19;
  v35 = *(v14 + 48);

  v20 = swift_readAtKeyPath();
  v21 = *(v7 + 16);
  v21(v12);
  v20(v33, 0);

  v22 = v27;
  (v21)(v9, v27 + *(v18 + 48), a3);
  swift_beginAccess();
  swift_setAtWritableKeyPath();
  swift_endAccess();
  v33[0] = v14;
  (*(v29 + 16))(v34, v22, v33);
  v23 = v34[0];
  v24 = v28;
  (v21)(v9, v28, a3);
  swift_beginAccess();
  swift_setAtWritableKeyPath();
  swift_endAccess();
  result = (*(v30 + 8))(v24, a3);
  *v32 = v23;
  return result;
}

uint64_t sub_1AADD5D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1AADD144C(v12, v16);
  v13 = type metadata accessor for ModifiedAxisMark(0, a3, a4, a5);
  (*(v9 + 16))(v11, a1 + *(v13 + 48), a4);
  swift_setAtWritableKeyPath();
  (*(a5 + 24))(a1, v16, a3, a5);
  return sub_1AADD1484(v16);
}

uint64_t sub_1AADD5EDC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 48);
  v9 = *(v7 + 56);
  v11 = (a1 + *(type metadata accessor for OffsetAxisMark(0, a3, a4, v10) + 36));
  *(v7 + 48) = v8 + *v11;
  *(v7 + 56) = v9 + v11[1];
  v13 = v7;
  result = (*(a4 + 8))(a1, &v13, a3, a4);
  *(v7 + 48) = v8;
  *(v7 + 56) = v9;
  return result;
}

void *sub_1AADD5F94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = *a2;
  swift_beginAccess();
  v10 = *(v9 + 48);
  v11 = *(v9 + 56);
  v13 = (a1 + *(type metadata accessor for OffsetAxisMark(0, a3, a4, v12) + 36));
  *(v9 + 48) = v10 + *v13;
  *(v9 + 56) = v11 + v13[1];
  v16 = v9;
  result = (*(a4 + 16))(&v17, a1, &v16, a3, a4);
  v15 = v17;
  *(v9 + 48) = v10;
  *(v9 + 56) = v11;
  *a5 = v15;
  return result;
}

uint64_t sub_1AADD6064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AADD144C(a2, v10);
  v8 = type metadata accessor for OffsetAxisMark(0, a3, a4, v7);
  v11 = vaddq_f64(*(a1 + *(v8 + 36)), v11);
  (*(a4 + 24))(a1, v10, a3, a4);
  return sub_1AADD1484(v10);
}

void static BuilderPair<>._layoutAxisMark(_:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for BuilderPair(0, a3, a4, a4);
  v13 = *(v12 + 8);
  sub_1AADCF1A0();
  if (v14)
  {
    v15 = *a2;
    v16 = sub_1AADCF1A8(v12, v13, v12 + 8 * *(v14 + 24), (v12 + 16));
    MEMORY[0x1EEE9AC00](v16);
    v19[2] = a3;
    v19[3] = a4;
    v19[4] = a5;
    v19[5] = a6;
    v19[6] = v15;
    v19[7] = v17;
    sub_1AACBC418(a1, sub_1AADD65BC, v19, v12, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v18);
  }

  else
  {
    __break(1u);
  }
}

double sub_1AADD63B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29[6] = a1;
  v29[7] = a2;
  v21 = *(a3 + 16);
  if (v21)
  {
    v4 = *(a2 + 16);

    v5 = 0;
    v6 = (a3 + 48);
    do
    {
      v23 = *(v6 - 2);
      v13 = *v6;
      v29[8] = *(v6 - 1);
      v14 = *(a1 + v13);
      v15 = *(v4 + 16);
      v16 = *(v15 + 32);
      *&v24 = v5;

      sub_1AAF90024();
      v29[0] = v16;
      swift_beginAccess();
      v17 = *(v15 + 16);
      if (*(v17 + 16) && (v18 = sub_1AACCAE28(v29), (v19 & 1) != 0))
      {
        v8 = *(*(v17 + 56) + 8 * v18);
      }

      else
      {
        swift_endAccess();
        sub_1AAF90704();
        MEMORY[0x1AC5992C0](v5);
        MEMORY[0x1AC5992F0](v16);
        v32 = v26;
        v33 = v27;
        v34 = v28;
        v30 = v24;
        v31 = v25;
        v7 = sub_1AAF906E4();
        v8 = sub_1AACCB060(v7);
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = *(v15 + 16);
        *(v15 + 16) = 0x8000000000000000;
        sub_1AACCB154(v8, v29, isUniquelyReferenced_nonNull_native);
        *(v15 + 16) = v35;
      }

      swift_endAccess();
      v10 = sub_1AACCAFF0(v29);
      ++v5;
      v6 += 3;
      v11 = *(v15 + 32);
      *(v15 + 32) = v8;
      v12 = *(v4 + 24);
      *(v4 + 24) = v8;
      sub_1AADD6EB8(v10, v23, v14);
      *(v4 + 24) = v12;
      *(v15 + 32) = v11;
    }

    while (v21 != v5);
  }

  else
  {
  }

  return result;
}

void static BuilderPair<>._renderAxisMark(_:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for BuilderPair(0, a3, a4, a4);
  v13 = *(v12 + 8);
  sub_1AADCF1A0();
  if (v14)
  {
    v15 = *a2;
    v16 = sub_1AADCF1A8(v12, v13, v12 + 8 * *(v14 + 24), (v12 + 16));
    MEMORY[0x1EEE9AC00](v16);
    v19[2] = a3;
    v19[3] = a4;
    v19[4] = a5;
    v19[5] = a6;
    v19[6] = v15;
    v19[7] = v17;
    sub_1AACBC418(a1, sub_1AADD6A70, v19, v12, MEMORY[0x1E69E73E0], &type metadata for _AxisMarkRenderOutputs, MEMORY[0x1E69E7410], v18);
  }

  else
  {
    __break(1u);
  }
}

double sub_1AADD6700@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = a2;
  v51[6] = a1;
  v51[7] = a2;
  v52 = 0;
  v53 = MEMORY[0x1E69E7CC0];
  v42 = *(a3 + 16);
  if (v42)
  {
    v6 = *(a2 + 16);

    v7 = 0;
    v8 = (a3 + 48);
    do
    {
      v16 = *(v8 - 1);
      v59 = *(v8 - 2);
      v17 = *v8;
      v52 = v16;
      v18 = *(a1 + v17);
      v19 = *(v6 + 16);
      v20 = *(v19 + 32);
      *&v45 = v7;

      sub_1AAF90024();
      v51[0] = v20;
      swift_beginAccess();
      v21 = *(v19 + 16);
      if (*(v21 + 16) && (v22 = sub_1AACCAE28(v51), (v23 & 1) != 0))
      {
        v10 = *(*(v21 + 56) + 8 * v22);
      }

      else
      {
        swift_endAccess();
        sub_1AAF90704();
        MEMORY[0x1AC5992C0](v7);
        MEMORY[0x1AC5992F0](v20);
        v56 = v48;
        v57 = v49;
        v58 = v50;
        v54 = v45;
        v55 = v47;
        v9 = sub_1AAF906E4();
        v10 = sub_1AACCB060(v9);
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = *(v19 + 16);
        *(v19 + 16) = 0x8000000000000000;
        sub_1AACCB154(v10, v51, isUniquelyReferenced_nonNull_native);
        *(v19 + 16) = v44;
      }

      swift_endAccess();
      v12 = sub_1AACCAFF0(v51);
      ++v7;
      v8 += 3;
      v13 = *(v19 + 32);
      *(v19 + 32) = v10;
      v14 = *(v6 + 24);
      *(v6 + 24) = v10;
      sub_1AADD6FE4(v12, v59, v18);
      v15 = v53;
      *(v6 + 24) = v14;
      *(v19 + 32) = v13;
    }

    while (v42 != v7);
    v4 = a2;
  }

  else
  {

    v15 = MEMORY[0x1E69E7CC0];
  }

  v24 = *(*(v4 + 16) + 24);
  v25 = *(v15 + 16);
  v26 = MEMORY[0x1E69E7CC0];
  if (v25)
  {
    v46 = MEMORY[0x1E69E7CC0];
    sub_1AAD0F6F0(0, v25, 0);
    v27 = v46;
    v28 = (v15 + 32);
    v29 = *(v46 + 16);
    do
    {
      v31 = *v28++;
      v30 = v31;
      v32 = *(v46 + 24);

      if (v29 >= v32 >> 1)
      {
        sub_1AAD0F6F0((v32 > 1), v29 + 1, 1);
      }

      *(v46 + 16) = v29 + 1;
      *(v46 + 8 * v29++ + 32) = v30;
      --v25;
    }

    while (v25);
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC0];
  }

  v33 = type metadata accessor for SgGroup(0);
  v34 = swift_allocBox();
  v36 = v35;
  v37 = v33[6];
  v38 = type metadata accessor for SgClipRect(0);
  (*(*(v38 - 8) + 56))(&v36[v37], 1, 1, v38);
  *v36 = v24;
  *(v36 + 1) = v27;
  *&v36[v33[7]] = 0x3FF0000000000000;
  *&v36[v33[8]] = 0;
  *&v36[v33[9]] = v26;
  v36[v33[10]] = 0;
  *a4 = v34;

  return result;
}

void static BuilderPair<>._collectAxisMark(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for BuilderPair(0, a3, a4, a4);
  v13 = *(v12 + 8);
  sub_1AADCF1A0();
  if (v14)
  {
    v15 = sub_1AADCF1CC(v12, v13, v12 + 8 * *(v14 + 24), (v12 + 16));
    MEMORY[0x1EEE9AC00](v15);
    v18[2] = a3;
    v18[3] = a4;
    v18[4] = a5;
    v18[5] = a6;
    v18[6] = a2;
    v18[7] = v16;
    sub_1AACBC418(a1, sub_1AADD6C60, v18, v12, MEMORY[0x1E69E73E0], &type metadata for _AxisMarkCollectOutputs, MEMORY[0x1E69E7410], v17);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AADD6BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1AADD144C(a2, &v15);
  v14 = a1;
  v16 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v17 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  v8 = *(a3 + 16);
  if (v8)
  {
    v9 = (a3 + 48);
    do
    {
      v10 = *(v9 - 2);
      v11 = *(v9 - 1);
      v12 = *v9;
      v9 += 3;
      v16 = v11;
      v7 = sub_1AADD6CB8(v7, v10, *(a1 + v12));
      --v8;
    }

    while (v8);
    v7 = v18;
  }

  *a4 = v7;

  return sub_1AADD6E74(&v14);
}

uint64_t sub_1AADD6CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 72;
  sub_1AADD144C((v3 + 1), v17);
  v10 = v18;
  v11 = v3[21];
  sub_1AADAD8EC();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AAF92AB0;
  *(inited + 32) = v11;
  *(inited + 72) = 0;
  v16 = v10;

  sub_1AADC85B8(inited);
  v13 = v16;

  v18 = v13;
  (*(v7 + 16))(v9, *v4 + v4[20], a2);
  (*(a3 + 24))(&v16, v9, v17, a2, a3);
  result = (*(v7 + 8))(v9, a2);
  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    v15 = v16;
    v4[21] = v11 + 1;
    sub_1AADC8D3C(v15);
    return sub_1AADD1484(v17);
  }

  return result;
}

uint64_t sub_1AADD6EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, *v3 + v3[2], a2, v7);
  v13 = v3[1];
  v10 = *(a3 + 8);

  v10(v9, &v13, a2, a3);

  return (*(v6 + 8))(v9, a2);
}

char *sub_1AADD6FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a2 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, *v4 + v4[2], a2, v8);
  v17 = v4[1];
  v11 = *(a3 + 16);

  v11(&v18, v10, &v17, a2, a3);

  (*(v7 + 8))(v10, a2);
  v12 = v18;
  v13 = v4[3];
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1AAD68DAC(0, *(v13 + 2) + 1, 1, v13);
    v13 = result;
  }

  v16 = *(v13 + 2);
  v15 = *(v13 + 3);
  if (v16 >= v15 >> 1)
  {
    result = sub_1AAD68DAC((v15 > 1), v16 + 1, 1, v13);
    v13 = result;
  }

  *(v13 + 2) = v16 + 1;
  *&v13[8 * v16 + 32] = v12;
  v4[3] = v13;
  return result;
}

__n128 sub_1AADD7188(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1AADD71C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AADD720C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static AxisMarkValues.automatic.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  type metadata accessor for AxisMarkValues.Storage.Stride(0);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for AxisMarkValues.Storage(0);
  v3 = *(v2 + 24);
  *(a1 + *(v2 + 20)) = 2;
  *(a1 + v3) = 2;
  v4 = *(*(v2 - 8) + 56);

  return v4(a1, 0, 1, v2);
}

void *AxisMarks.init<A>(preset:position:values:content:)@<X0>(_BYTE *a1@<X0>, char *a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, uint64_t a10)
{
  v16 = *a2;
  *a9 = *a1;
  a9[1] = v16;
  v17 = type metadata accessor for AxisMarks(0, a6, a8, a4);
  v18 = *(v17 + 40);
  sub_1AADD744C(&a9[v18]);
  v19 = type metadata accessor for AxisMarkValues.Storage(0);
  (*(*(v19 - 8) + 56))(&a9[v18], 0, 1, v19);
  v20 = &a9[*(v17 + 44)];
  result = swift_allocObject();
  result[2] = a6;
  result[3] = a7;
  result[4] = a8;
  result[5] = a10;
  result[6] = a4;
  result[7] = a5;
  *v20 = sub_1AADD74C4;
  *(v20 + 1) = result;
  v20[40] = 1;
  return result;
}

uint64_t sub_1AADD744C@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1AACAF550();
  v5 = v4;

  *a2 = v3;
  *(a2 + 8) = v5;
  type metadata accessor for AxisMarkValues.Storage.Stride(0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for AxisMarkValues.Storage(0);
  v7 = *(result + 24);
  *(a2 + *(result + 20)) = 2;
  *(a2 + v7) = 2;
  return result;
}

uint64_t sub_1AADD74C4@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  v5 = v2[6];
  v6 = *(a1 + 16);
  v8 = *a1;
  v9 = v6;
  v10 = *(a1 + 24);
  a2[3] = v3;
  a2[4] = v4;
  sub_1AACB2508(a2);
  return v5(&v8);
}

uint64_t sub_1AADD7528(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *AxisMarks.init<A>(preset:position:values:content:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, uint64_t a10)
{
  v16 = *a2;
  v20 = *a1;
  v19 = v16;
  v17 = swift_allocObject();
  v17[2] = a6;
  v17[3] = a7;
  v17[4] = a8;
  v17[5] = a10;
  v17[6] = a4;
  v17[7] = a5;
  return AxisMarks.init<A>(preset:position:values:content:)(&v20, &v19, sub_1AADD775C, v17, a6, a7, a8, a9, a10);
}

uint64_t sub_1AADD7628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  v12(v9);
  sub_1AACE0800();
  v13 = *(v5 + 8);
  v13(v7, a4);
  sub_1AACE0800();
  return (v13)(v11, a4);
}

uint64_t AxisMarks.init<A>(format:preset:position:values:stroke:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>)
{
  v16 = *a3;
  *a9 = *a2;
  a9[1] = v16;
  sub_1AADD79A8(0, &qword_1EB424C10, &protocol witness table for Never, type metadata accessor for AxisMarks);
  v18 = v17;
  sub_1AACAEB18(a4, &a9[*(v17 + 40)], &qword_1ED9B63B8, type metadata accessor for AxisMarkValues.Storage);
  v19 = &a9[*(v18 + 44)];
  sub_1AADD7908(0);
  *(v19 + 3) = v20;
  *(v19 + 4) = sub_1AADD79FC();
  v21 = swift_allocObject();
  *v19 = v21;
  sub_1AADCFA24(a1, a5, a6, a7, a8, (v21 + 16));
  sub_1AACD1518(a5, &qword_1ED9B2F20, MEMORY[0x1E697DD48], MEMORY[0x1E69E6720], sub_1AACD2D88);
  sub_1AACB767C(a4, type metadata accessor for AxisMarkValues);
  result = (*(*(a6 - 8) + 8))(a1, a6);
  v19[40] = 0;
  return result;
}

void sub_1AADD7908(uint64_t a1)
{
  if (!qword_1EB424C18)
  {
    v6[0] = &type metadata for AxisGridLine;
    v6[1] = &type metadata for AxisTickForExtended;
    sub_1AADD79A8(255, &qword_1EB424BF8, MEMORY[0x1E6982070], type metadata accessor for AxisValueLabel);
    v6[2] = v2;
    v4 = type metadata accessor for BuilderTuple(a1, 3, v6, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EB424C18);
    }
  }
}

void sub_1AADD79A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (!*a2)
  {
    v5 = (a4)(0, MEMORY[0x1E69E73E0], a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1AADD79FC()
{
  result = qword_1EB424C20;
  if (!qword_1EB424C20)
  {
    sub_1AADD7908(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424C20);
  }

  return result;
}

uint64_t AxisMarks.init<A, B>(format:preset:position:values:stroke:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, char *a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, _BYTE *a8@<X8>, uint64_t a9)
{
  v14 = *a3;
  *a8 = *a2;
  a8[1] = v14;
  sub_1AADD79A8(0, &qword_1EB424C10, &protocol witness table for Never, type metadata accessor for AxisMarks);
  v16 = v15;
  v17 = *(v15 + 40);
  sub_1AADD744C(&a8[v17]);
  v18 = type metadata accessor for AxisMarkValues.Storage(0);
  (*(*(v18 - 8) + 56))(&a8[v17], 0, 1, v18);
  v19 = &a8[*(v16 + 44)];
  sub_1AADD7908(0);
  *(v19 + 3) = v20;
  *(v19 + 4) = sub_1AADD79FC();
  v21 = swift_allocObject();
  *v19 = v21;
  sub_1AADCFA24(a1, a5, a6, a9, a7, (v21 + 16));
  sub_1AACD1518(a5, &qword_1ED9B2F20, MEMORY[0x1E697DD48], MEMORY[0x1E69E6720], sub_1AACD2D88);
  result = (*(*(a6 - 8) + 8))(a1, a6);
  v19[40] = 0;
  return result;
}

uint64_t AxisMarks.init<>(preset:position:values:stroke:)@<X0>(_BYTE *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v8 = *a2;
  *a5 = *a1;
  a5[1] = v8;
  sub_1AADD79A8(0, &qword_1EB424C10, &protocol witness table for Never, type metadata accessor for AxisMarks);
  v10 = v9;
  sub_1AACAEB18(a3, &a5[*(v9 + 40)], &qword_1ED9B63B8, type metadata accessor for AxisMarkValues.Storage);
  v11 = &a5[*(v10 + 44)];
  sub_1AADD7908(0);
  *(v11 + 3) = v12;
  *(v11 + 4) = sub_1AADD79FC();
  v13 = swift_allocObject();
  *v11 = v13;
  sub_1AADCF710(a4, (v13 + 16));
  sub_1AACD1518(a4, &qword_1ED9B2F20, MEMORY[0x1E697DD48], MEMORY[0x1E69E6720], sub_1AACD2D88);
  result = sub_1AACB767C(a3, type metadata accessor for AxisMarkValues);
  v11[40] = 0;
  return result;
}

uint64_t AxisMarks.init<A>(preset:position:values:stroke:)@<X0>(_BYTE *a1@<X0>, char *a2@<X1>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v7 = *a2;
  *a5 = *a1;
  a5[1] = v7;
  sub_1AADD79A8(0, &qword_1EB424C10, &protocol witness table for Never, type metadata accessor for AxisMarks);
  v9 = v8;
  v10 = *(v8 + 40);
  sub_1AADD744C(&a5[v10]);
  v11 = type metadata accessor for AxisMarkValues.Storage(0);
  (*(*(v11 - 8) + 56))(&a5[v10], 0, 1, v11);
  v12 = &a5[*(v9 + 44)];
  sub_1AADD7908(0);
  *(v12 + 3) = v13;
  *(v12 + 4) = sub_1AADD79FC();
  v14 = swift_allocObject();
  *v12 = v14;
  sub_1AADCF710(a4, (v14 + 16));
  result = sub_1AACD1518(a4, &qword_1ED9B2F20, MEMORY[0x1E697DD48], MEMORY[0x1E69E6720], sub_1AACD2D88);
  v12[40] = 0;
  return result;
}

uint64_t AxisMarkPreset.description.getter()
{
  v1 = 0x6465646E65747865;
  v2 = 0x7465736E69;
  if (*v0 != 2)
  {
    v2 = 0x6974616D6F747561;
  }

  if (*v0)
  {
    v1 = 0x64656E67696C61;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AADD7F7C()
{
  v1 = 0x6974616D6F747561;
  if (*v0 == 2)
  {
    v1 = 0x7465736E69;
  }

  v2 = 0x6465646E65747865;
  if (*v0)
  {
    v2 = 0x64656E67696C61;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t AxisMarkPosition.description.getter()
{
  v1 = *v0;
  v2 = 0x676E696461656CLL;
  v3 = 0x676E696C69617274;
  if (v1 != 3)
  {
    v3 = 0x6974616D6F747561;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 7368564;
  if (*v0)
  {
    v4 = 0x6D6F74746F62;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AADD808C()
{
  v1 = *v0;
  v2 = 0x6974616D6F747561;
  if (v1 == 3)
  {
    v2 = 0x676E696C69617274;
  }

  if (v1 == 2)
  {
    v2 = 0x676E696461656CLL;
  }

  v3 = 7368564;
  if (*v0)
  {
    v3 = 0x6D6F74746F62;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t static AxisMarkValues.automatic(desiredCount:roundLowerBound:roundUpperBound:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2 & 1;
  *(a5 + 16) = 0;
  *(a5 + 24) = 1;
  type metadata accessor for AxisMarkValues.Storage.Stride(0);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for AxisMarkValues.Storage(0);
  v9 = *(v8 + 24);
  *(a5 + *(v8 + 20)) = a3;
  *(a5 + v9) = a4;
  v10 = *(*(v8 - 8) + 56);

  return v10(a5, 0, 1, v8);
}

uint64_t static AxisMarkValues.automatic<A>(minimumStride:desiredCount:roundLowerBound:roundUpperBound:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v11 = MEMORY[0x1EEE9AC00](a1);
  (*(v13 + 16))(v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  sub_1AAD46810();
  sub_1AAF8F354();
  v14 = v18[1];
  *a6 = a2;
  *(a6 + 8) = a3 & 1;
  *(a6 + 16) = v14;
  *(a6 + 24) = 0;
  type metadata accessor for AxisMarkValues.Storage.Stride(0);
  swift_storeEnumTagMultiPayload();
  v15 = type metadata accessor for AxisMarkValues.Storage(0);
  v16 = *(v15 + 24);
  *(a6 + *(v15 + 20)) = a4;
  *(a6 + v16) = a5;
  return (*(*(v15 - 8) + 56))(a6, 0, 1, v15);
}

uint64_t static AxisMarkValues.stride<A>(by:roundLowerBound:roundUpperBound:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, void *a4@<X8>)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  (*(v9 + 16))(v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  sub_1AAD46810();
  sub_1AAF8F354();
  *a4 = v13[1];
  type metadata accessor for AxisMarkValues.Storage.Stride(0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for AxisMarkValues.Storage(0);
  v11 = *(v10 + 24);
  *(a4 + *(v10 + 20)) = a2;
  *(a4 + v11) = a3;
  return (*(*(v10 - 8) + 56))(a4, 0, 1, v10);
}

uint64_t AxisMarkValues.description.getter()
{
  v87 = sub_1AAF8CA64();
  v91 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v2 = &v87 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1AAF8CB94();
  v89 = *(v3 - 8);
  v90 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v88 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AxisMarkValues.Storage.Stride(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACAF184(0, &qword_1ED9B63B8, type metadata accessor for AxisMarkValues.Storage, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v87 - v9;
  v11 = type metadata accessor for AxisMarkValues.Storage(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACAEB18(v0, v10, &qword_1ED9B63B8, type metadata accessor for AxisMarkValues.Storage);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    sub_1AACB812C(v10, v14, type metadata accessor for AxisMarkValues.Storage);
    sub_1AACB81D4(v14, v7, type metadata accessor for AxisMarkValues.Storage.Stride);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v17 = v14;
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        v34 = *v7;
        if (v7[8])
        {
          if (v7[8] == 1)
          {
            v93[0] = 0;
            v93[1] = 0xE000000000000000;
            v35 = *(v34 + 16);
            v36 = MEMORY[0x1E69E7CC0];
            if (v35)
            {
              v92 = MEMORY[0x1E69E7CC0];
              sub_1AACEA040(0, v35, 0);
              v36 = v92;
              v37 = v34 + 32;
              v38 = v87;
              do
              {
                sub_1AAF8C844();
                v92 = v36;
                v40 = *(v36 + 2);
                v39 = *(v36 + 3);
                if (v40 >= v39 >> 1)
                {
                  sub_1AACEA040((v39 > 1), v40 + 1, 1);
                  v36 = v92;
                }

                *(v36 + 2) = v40 + 1;
                (*(v91 + 32))(&v36[((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v40], v2, v38);
                v37 += 8;
                --v35;
              }

              while (v35);
              v17 = v14;
            }

            else
            {
              v38 = v87;
            }

            v84 = MEMORY[0x1AC598460](v36, v38);
            v86 = v85;

            MEMORY[0x1AC5982F0](v84, v86);

LABEL_64:
            v15 = v93[0];
LABEL_65:
            sub_1AACB767C(v17, type metadata accessor for AxisMarkValues.Storage);
            return v15;
          }

          v83 = MEMORY[0x1E69E6158];
        }

        else
        {
          v83 = MEMORY[0x1E69E63B0];
        }

        v15 = MEMORY[0x1AC598460](*v7, v83);

        goto LABEL_65;
      }

      v18 = v11;
      v93[0] = 0;
      v93[1] = 0xE000000000000000;
      MEMORY[0x1AC5982F0](540703074, 0xE400000000000000);
      sub_1AAF8FA24();
      v21 = v93[0];
      v22 = v93[1];
      v20 = sub_1AAD67908(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v24 = *(v20 + 2);
      v23 = *(v20 + 3);
      if (v24 >= v23 >> 1)
      {
        v20 = sub_1AAD67908((v23 > 1), v24 + 1, 1, v20);
      }

      v15 = 0x656469727473;
      *(v20 + 2) = v24 + 1;
      v25 = &v20[16 * v24];
      *(v25 + 4) = v21;
      *(v25 + 5) = v22;
    }

    else
    {
      v18 = v11;
      if (!EnumCaseMultiPayload)
      {
        v19 = v7[24];
        if (v7[8])
        {
          v20 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v41 = *v7;
          v93[0] = 0;
          v93[1] = 0xE000000000000000;
          sub_1AAF900D4();

          strcpy(v93, "desiredCount: ");
          HIBYTE(v93[1]) = -18;
          v92 = v41;
          v42 = sub_1AAF90474();
          MEMORY[0x1AC5982F0](v42);

          v43 = v93[0];
          v44 = v93[1];
          v20 = sub_1AAD67908(0, 1, 1, MEMORY[0x1E69E7CC0]);
          v46 = *(v20 + 2);
          v45 = *(v20 + 3);
          if (v46 >= v45 >> 1)
          {
            v20 = sub_1AAD67908((v45 > 1), v46 + 1, 1, v20);
          }

          *(v20 + 2) = v46 + 1;
          v47 = &v20[16 * v46];
          *(v47 + 4) = v43;
          *(v47 + 5) = v44;
        }

        v48 = 0xE900000000000063;
        v15 = 0x6974616D6F747561;
        if ((v19 & 1) == 0)
        {
          v93[0] = 0;
          v93[1] = 0xE000000000000000;
          sub_1AAF900D4();
          MEMORY[0x1AC5982F0](0x536D756D696E696DLL, 0xEF203A6564697274);
          sub_1AAF8FA24();
          v49 = v93[0];
          v50 = v93[1];
          v51 = v17;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_1AAD67908(0, *(v20 + 2) + 1, 1, v20);
          }

          v53 = *(v20 + 2);
          v52 = *(v20 + 3);
          if (v53 >= v52 >> 1)
          {
            v20 = sub_1AAD67908((v52 > 1), v53 + 1, 1, v20);
          }

          *(v20 + 2) = v53 + 1;
          v54 = &v20[16 * v53];
          *(v54 + 4) = v49;
          *(v54 + 5) = v50;
          v17 = v51;
        }

        goto LABEL_37;
      }

      sub_1AACAF0D8(0);
      v27 = v26;
      v28 = *&v7[*(v26 + 48)];
      (*(v89 + 32))(v88, v7, v90);
      v93[0] = 0;
      v93[1] = 0xE000000000000000;
      MEMORY[0x1AC5982F0](540703074, 0xE400000000000000);
      sub_1AAF90284();
      v29 = v93[0];
      v30 = v93[1];
      v20 = sub_1AAD67908(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v32 = *(v20 + 2);
      v31 = *(v20 + 3);
      if (v32 >= v31 >> 1)
      {
        v20 = sub_1AAD67908((v31 > 1), v32 + 1, 1, v20);
      }

      *(v20 + 2) = v32 + 1;
      v33 = &v20[16 * v32];
      *(v33 + 4) = v29;
      *(v33 + 5) = v30;
      if (v28 == 1)
      {
        (*(v89 + 8))(v88, v90);
      }

      else
      {
        strcpy(v93, "count: ");
        v93[1] = 0xE700000000000000;
        v92 = v28;
        v55 = sub_1AAF90474();
        MEMORY[0x1AC5982F0](v55);

        v56 = v93[0];
        v57 = v93[1];
        v59 = *(v20 + 2);
        v58 = *(v20 + 3);
        if (v59 >= v58 >> 1)
        {
          v20 = sub_1AAD67908((v58 > 1), v59 + 1, 1, v20);
        }

        (*(v89 + 8))(v88, v90);
        *(v20 + 2) = v59 + 1;
        v60 = &v20[16 * v59];
        *(v60 + 4) = v56;
        *(v60 + 5) = v57;
      }

      v15 = 0x656469727473;
      sub_1AACD1518(&v7[*(v27 + 64)], &qword_1ED9B6B90, MEMORY[0x1E6969AE8], MEMORY[0x1E69E6720], sub_1AACAF184);
    }

    v48 = 0xE600000000000000;
LABEL_37:
    v61 = *(v17 + *(v18 + 20));
    if (v61 != 2)
    {
      v62 = v17;
      v93[0] = 0;
      v93[1] = 0xE000000000000000;
      sub_1AAF900D4();

      v93[0] = 0xD000000000000011;
      v93[1] = 0x80000001AAFCE600;
      if (v61)
      {
        v63 = 1702195828;
      }

      else
      {
        v63 = 0x65736C6166;
      }

      if (v61)
      {
        v64 = 0xE400000000000000;
      }

      else
      {
        v64 = 0xE500000000000000;
      }

      MEMORY[0x1AC5982F0](v63, v64);

      v65 = v93[0];
      v66 = v93[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1AAD67908(0, *(v20 + 2) + 1, 1, v20);
      }

      v68 = *(v20 + 2);
      v67 = *(v20 + 3);
      if (v68 >= v67 >> 1)
      {
        v20 = sub_1AAD67908((v67 > 1), v68 + 1, 1, v20);
      }

      *(v20 + 2) = v68 + 1;
      v69 = &v20[16 * v68];
      *(v69 + 4) = v65;
      *(v69 + 5) = v66;
      v17 = v62;
    }

    v70 = *(v17 + *(v18 + 24));
    if (v70 == 2)
    {
      if (!*(v20 + 2))
      {
        sub_1AACB767C(v17, type metadata accessor for AxisMarkValues.Storage);

        return v15;
      }
    }

    else
    {
      v93[0] = 0;
      v93[1] = 0xE000000000000000;
      sub_1AAF900D4();

      v93[0] = 0xD000000000000011;
      v93[1] = 0x80000001AAFCE5E0;
      if (v70)
      {
        v71 = 1702195828;
      }

      else
      {
        v71 = 0x65736C6166;
      }

      if (v70)
      {
        v72 = 0xE400000000000000;
      }

      else
      {
        v72 = 0xE500000000000000;
      }

      MEMORY[0x1AC5982F0](v71, v72);

      v73 = v93[0];
      v74 = v93[1];
      v75 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1AAD67908(0, *(v20 + 2) + 1, 1, v20);
      }

      v77 = *(v20 + 2);
      v76 = *(v20 + 3);
      if (v77 >= v76 >> 1)
      {
        v20 = sub_1AAD67908((v76 > 1), v77 + 1, 1, v20);
      }

      *(v20 + 2) = v77 + 1;
      v78 = &v20[16 * v77];
      *(v78 + 4) = v73;
      *(v78 + 5) = v74;
      v17 = v75;
    }

    v93[0] = v15;
    v93[1] = v48;
    MEMORY[0x1AC5982F0](40, 0xE100000000000000);
    v92 = v20;
    sub_1AACD2D88(0, &qword_1ED9B0C88, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1AADD9348();
    v79 = sub_1AAF8F544();
    v81 = v80;

    MEMORY[0x1AC5982F0](v79, v81);

    MEMORY[0x1AC5982F0](41, 0xE100000000000000);
    goto LABEL_64;
  }

  v15 = 0x6974616D6F747561;
  sub_1AACD1518(v10, &qword_1ED9B63B8, type metadata accessor for AxisMarkValues.Storage, MEMORY[0x1E69E6720], sub_1AACAF184);
  return v15;
}

double sub_1AADD90F0()
{
  if (qword_1EB422C58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = sub_1AAD7B1A0(&v3, 5);
  swift_endAccess();
  if (v0)
  {
    sub_1AACD2D88(0, &qword_1EB424C30, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1AAF92AB0;
    *(v2 + 56) = MEMORY[0x1E69E6158];
    *(v2 + 32) = 0xD000000000000038;
    *(v2 + 40) = 0x80000001AAFCE640;
    sub_1AAF90674();
  }

  return result;
}

uint64_t sub_1AADD9254(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1AADD92F8(uint64_t result, uint64_t (*a2)(BOOL, uint64_t, uint64_t))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1, result + 1, 1);
    *v2 = result;
  }

  return result;
}

unint64_t sub_1AADD9348()
{
  result = qword_1ED9B11D0;
  if (!qword_1ED9B11D0)
  {
    sub_1AACD2D88(255, &qword_1ED9B0C88, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B11D0);
  }

  return result;
}

void sub_1AADD93C4(uint64_t a1)
{
  sub_1AACD2D88(319, &qword_1ED9B4008, &type metadata for AxisMarkPreset.Storage, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1AACD2D88(319, &qword_1ED9B3DF8, &type metadata for AxisMarkPosition.Storage, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1AACAF184(319, &qword_1ED9B63B8, type metadata accessor for AxisMarkValues.Storage, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for AxisValueLabelOrientation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 4;
  if (v6 < 3)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t getEnumTagSinglePayload for AxisMarkPosition(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 4)
  {
    v7 = 4;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 5;
  if (v6 < 4)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t storeEnumTagSinglePayload for AxisMarkPosition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1AADD96F8(uint64_t a1)
{
  sub_1AACAF184(319, &qword_1ED9B63B8, type metadata accessor for AxisMarkValues.Storage, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1AADD9818()
{
  result = qword_1EB424C28;
  if (!qword_1EB424C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424C28);
  }

  return result;
}

unint64_t sub_1AADD9870()
{
  result = qword_1ED9B23E0[0];
  if (!qword_1ED9B23E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9B23E0);
  }

  return result;
}

uint64_t sub_1AADD98C4(uint64_t a1, uint64_t a2)
{
  if (!sub_1AACD08D8(a1, a2))
  {
    return 0;
  }

  v4 = type metadata accessor for AxisMarkValues.Storage(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }

LABEL_7:
    v9 = *(v4 + 24);
    v10 = *(a1 + v9);
    v11 = *(a2 + v9);
    if (v10 == 2)
    {
      if (v11 != 2)
      {
        return 0;
      }
    }

    else if (v11 == 2 || ((v11 ^ v10) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (v7 != 2 && ((v7 ^ v6) & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1AADD99C0()
{
  sub_1AACB6BD8();
  sub_1AAF8E144();
  return v1;
}

double sub_1AADD9A7C(char a1, char *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13)
{
  v17 = *a2;
  sub_1AACB61E4(0, &qword_1EB423AB8, &type metadata for AxisLabelConfiguration, MEMORY[0x1E69E6F90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1AAF92AB0;
  v19 = MEMORY[0x1E6981138];
  *(v18 + 56) = MEMORY[0x1E6981148];
  *(v18 + 64) = v19;
  v20 = swift_allocObject();
  *(v18 + 32) = v20;
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  *(v20 + 32) = a5 & 1;
  *(v20 + 40) = a6;
  *(v18 + 72) = v17;
  *(v18 + 80) = a7;
  *(v18 + 88) = a8;
  *(v18 + 96) = a9 & 1;
  *(v18 + 104) = a10;
  *(v18 + 112) = a11 & 1;
  *(v18 + 120) = a3;
  *(v18 + 128) = a4;
  *(v18 + 136) = a5 & 1;
  *(v18 + 144) = a6;
  v25[0] = a1;
  v25[8] = 3;
  v26 = 0;
  v27 = v18;
  sub_1AACD7304(a3, a4, a5 & 1);

  sub_1AACD7304(a3, a4, a5 & 1);

  MEMORY[0x1AC597820](v25, a12, &type metadata for ChartAxisModifier, a13);

  return result;
}

double sub_1AADD9C80(char *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, void (*a7)(void), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v17 = *a1;
  sub_1AACB61E4(0, &qword_1EB423AB8, &type metadata for AxisLabelConfiguration, MEMORY[0x1E69E6F90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1AAF92AB0;
  v24 = a10;
  v25 = a12;
  sub_1AACB2508(&v22);
  a7();
  sub_1AACBB198(&v22, v18 + 32);
  *(v18 + 72) = v17;
  *(v18 + 80) = a2;
  *(v18 + 88) = a3;
  *(v18 + 96) = a4 & 1;
  *(v18 + 104) = a5;
  *(v18 + 112) = a6 & 1;
  *(v18 + 120) = 0u;
  *(v18 + 136) = 0u;
  LOBYTE(v22) = a13;
  BYTE8(v22) = 3;
  v23 = 0;
  v24 = v18;
  MEMORY[0x1AC597820](&v22, a9, &type metadata for ChartAxisModifier, a11);

  return result;
}

double sub_1AADD9E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  v23 = *a5;

  v14 = sub_1AAF8EA44();
  v16 = v15;
  v18 = v17;
  sub_1AADD9A7C(a13, &v23, v14, v15, v17 & 1, v19, a6, a7, a8 & 1, a9, a10 & 1, a11, a12);
  sub_1AAD04750(v14, v16, v18 & 1);

  return result;
}

double View.chartZAxisLabel(_:position:alignment:spacing:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  v26 = a4;
  v25 = a3;
  v15 = sub_1AAF8C784();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v27 = *a2;
  (*(v18 + 16))(&v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v16);
  v19 = sub_1AAF8EA54();
  v21 = v20;
  LOBYTE(a1) = v22;
  sub_1AADD9A7C(2, &v27, v19, v20, v22 & 1, v23, v25, v26, a5 & 1, a6, a7 & 1, a8, a9);
  sub_1AAD04750(v19, v21, a1 & 1);

  return result;
}

double sub_1AADDA168@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X5>, char a6@<W6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v30 = a3;
  v28 = a5;
  v29 = a2;
  v27 = a8;
  v15 = MEMORY[0x1EEE9AC00](a1);
  v31 = *v17;
  (*(v18 + 16))(&v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v19, a9, v15);
  v20 = sub_1AAF8EA64();
  v22 = v21;
  v24 = v23;
  sub_1AADD9A7C(a12, &v31, v20, v21, v23 & 1, v25, v29, v30, a4 & 1, v28, a6 & 1, a7, a10);
  sub_1AAD04750(v20, v22, v24 & 1);

  return result;
}

uint64_t sub_1AADDA2E8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AADDA300(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AADDA348(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1AADDA43C()
{
  if (!qword_1EB424C38)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB424C38);
    }
  }
}

uint64_t sub_1AADDA498(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a2 + 40);
  if (v2 == 9)
  {
    if (v3 != 9)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  if (*(a1 + 64))
  {
    if (*(a2 + 64))
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (*(a2 + 64))
  {
    return 0;
  }

  v4 = a1;
  v5 = a2;
  v6 = sub_1AAF8F0F4();
  a2 = v5;
  v7 = v6;
  a1 = v4;
  if ((v7 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v8 = *(a2 + 80);
  if (*(a1 + 80))
  {
    if (!*(a2 + 80))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 72) != *(a2 + 72))
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  sub_1AAD45E1C(0, &qword_1ED9B2768, MEMORY[0x1E6981170]);
  return AGCompareValues();
}

void sub_1AADDA580(uint64_t a1)
{
  if (!qword_1EB424C48)
  {
    sub_1AACB61E4(255, &qword_1ED9B3AF8, &type metadata for AxisCompositingLayer, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB424C48);
    }
  }
}

uint64_t AxisTick.init(centered:length:stroke:snapToPixel:pixelOffset:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, double a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *&v10[7] = *a3;
  *&v10[23] = *(a3 + 16);
  if (a6)
  {
    a5 = 0.0;
  }

  *(a7 + 17) = *v10;
  v8 = *a2;
  v9 = *(a2 + 8);
  *&v10[39] = *(a3 + 32);
  *a7 = result;
  *(a7 + 8) = v8;
  *(a7 + 16) = v9;
  *(a7 + 33) = *&v10[16];
  *(a7 + 48) = *&v10[31];
  *(a7 + 64) = 0;
  *(a7 + 65) = a4 & 1;
  *(a7 + 72) = a5;
  return result;
}

__n128 AxisTick.init(centered:length:stroke:snapToPixel:pixelOffset:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, double a4@<X3>, char a5@<W4>, uint64_t a6@<X8>, double a7@<D0>)
{
  *&v9[7] = *a2;
  *&v9[23] = *(a2 + 16);
  *&v9[39] = *(a2 + 32);
  if (a5)
  {
    a4 = 0.0;
  }

  *a6 = a1;
  *(a6 + 8) = a7;
  *(a6 + 16) = 2;
  *(a6 + 17) = *v9;
  *(a6 + 33) = *&v9[16];
  result = *&v9[31];
  *(a6 + 48) = *&v9[31];
  *(a6 + 64) = 0;
  *(a6 + 65) = a3 & 1;
  *(a6 + 72) = a4;
  return result;
}

__n128 AxisTick.init(centered:length:stroke:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *(a3 + 8) = a4;
  result = *a2;
  v5 = *(a2 + 16);
  *(a3 + 24) = *a2;
  *(a3 + 72) = 0;
  *a3 = a1;
  *(a3 + 16) = 2;
  *(a3 + 40) = v5;
  *(a3 + 56) = *(a2 + 32);
  *(a3 + 64) = 0;
  return result;
}

unint64_t AxisTick.Length.description.getter()
{
  v1 = *v0;
  if (*(v0 + 8) > 1u)
  {
    if (*(v0 + 8) == 2)
    {
      return sub_1AAF8F9F4();
    }

    else
    {
      return 0x6974616D6F747561;
    }
  }

  else
  {
    if (*(v0 + 8))
    {
      if (v1 == 0.0)
      {
        return 0x4C747365676E6F6CLL;
      }

      sub_1AAF900D4();

      v3 = 0xD00000000000001BLL;
    }

    else
    {
      if (v1 == 0.0)
      {
        return 0x6C6562616CLL;
      }

      sub_1AAF900D4();

      v3 = 0xD000000000000014;
    }

    v5 = v3;
    v4 = sub_1AAF8F9F4();
    MEMORY[0x1AC5982F0](v4);

    MEMORY[0x1AC5982F0](41, 0xE100000000000000);
    return v5;
  }
}

uint64_t static AxisTick._layoutAxisMark(_:_:)(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 16);
  v3 = *a2;
  if (v2 == 2)
  {
    v4 = *(result + 8);
  }

  else
  {
    if (v2 != 255)
    {
      return result;
    }

    v4 = 4.0;
    if (*(v3 + 24) - 1 > 1)
    {
      return result;
    }
  }

  result = swift_beginAccess();
  v5 = *(v3 + 224);
  if (v5 <= v4)
  {
    v5 = v4;
  }

  *(v3 + 224) = v5;
  return result;
}

double *sub_1AADDA960@<X0>(double *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *(result + 4);
  v4 = *(result + 2);
  v12[3] = *(result + 3);
  v12[4] = v3;
  v5 = *result;
  v12[1] = *(result + 1);
  v12[2] = v4;
  v12[0] = v5;
  if (*(*a2 + 24))
  {
    *a3 = 0xE000000000000000;
  }

  else
  {
    v6 = result;
    v10 = *a2;
    sub_1AACE477C(v12, v11);
    static AxisTick._renderAxisMark(_:_:)(v6, &v10, a3);
    v8 = *(v6 + 3);
    v11[2] = *(v6 + 2);
    v11[3] = v8;
    v11[4] = *(v6 + 4);
    v9 = *(v6 + 1);
    v11[0] = *v6;
    v11[1] = v9;
    return sub_1AACE1438(v11);
  }

  return result;
}

double sub_1AADDAA04@<D0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v19 = *a1;
  v4 = *(a1 + 1);
  v5 = a1[16];
  v20 = *(a1 + 24);
  v21 = *(a1 + 40);
  v6 = *(a1 + 7);
  v7 = a1[64];
  v8 = a1[65];
  v9 = *(a1 + 9);
  v10 = *(a2 + 8);
  v11 = *(a2 + 96);
  if (*(a2 + 128) == 2)
  {
    v12 = *(a2 + 112);
    v13 = *(a2 + 120);
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v14 = *(a2 + 104);
  v15 = *(a2 + 32);
  v16 = *(a2 + 40);
  sub_1AAD049BC(0, &qword_1ED9AD718, &type metadata for CollectedAxisMark);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1AAF92AB0;
  *(v17 + 32) = v10;
  *(v17 + 40) = v11;
  *(v17 + 48) = v12;
  *(v17 + 56) = v13;
  *(v17 + 64) = v14;
  *(v17 + 65) = v19;
  *(v17 + 72) = v4;
  *(v17 + 80) = v5;
  *(v17 + 104) = v21;
  *(v17 + 88) = v20;
  *(v17 + 120) = v6;
  *(v17 + 128) = v7;
  *(v17 + 129) = v8;
  *(v17 + 136) = v9;
  *(v17 + 144) = v15;
  *(v17 + 152) = v16;
  *(v17 + 296) = 0;
  *a3 = v17;

  return result;
}

uint64_t sub_1AADDAB78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SgShapeStyle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AADDABDC(uint64_t a1)
{
  v2 = type metadata accessor for SgShapeStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for AxisTick.Length(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AxisTick.Length(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = ~a2;
    }
  }

  return result;
}

uint64_t sub_1AADDACE8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (!*(*a2 + 24) && *(result + 16) == 2)
  {
    v3 = *(result + 8);
    result = swift_beginAccess();
    v4 = *(v2 + 224);
    if (v4 <= v3)
    {
      v4 = v3;
    }

    *(v2 + 224) = v4;
  }

  return result;
}

uint64_t sub_1AADDAD64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 40))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1AADDADAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

double AxisValueLabel.init<>(centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:)@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, char *a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  v15 = *(a8 + 16);
  v16 = *(a8 + 18);
  v17 = *a11;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7 & 1;
  *(a9 + 56) = *a8;
  *(a9 + 72) = v15;
  *(a9 + 74) = v16;
  *(a9 + 75) = a10;
  *(a9 + 76) = v17;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13 & 1;
  *(a9 + 96) = a14;
  *(a9 + 104) = a15 & 1;
  result = 0.0;
  *(a9 + 138) = 0u;
  *(a9 + 112) = 0u;
  *(a9 + 128) = 0u;
  *(a9 + 154) = 2;
  return result;
}

uint64_t AxisValueLabel.init<A>(format:centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, char *a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v20 = *(a10 + 16);
  v21 = *(a10 + 18);
  v22 = *a12;
  *a9 = a2;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5 & 1;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8 & 1;
  *(a9 + 56) = *a10;
  *(a9 + 72) = v20;
  *(a9 + 74) = v21;
  *(a9 + 75) = a11;
  *(a9 + 76) = v22;
  *(a9 + 80) = a13;
  *(a9 + 88) = a14 & 1;
  *(a9 + 96) = a15;
  *(a9 + 104) = a16 & 1;
  result = sub_1AADDB1B4(a1, a17, a9 + 112, a18, a19);
  *(a9 + 154) = 0;
  return result;
}

uint64_t AxisValueLabel.init<>(_:centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:)@<X0>(char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, char *a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  v20 = *(a13 + 16);
  v21 = *(a13 + 18);
  v22 = *a15;
  *a9 = a5;
  *(a9 + 8) = a6;
  *(a9 + 16) = a7;
  *(a9 + 24) = a8 & 1;
  *(a9 + 32) = a10;
  *(a9 + 40) = a11;
  *(a9 + 48) = a12 & 1;
  *(a9 + 56) = *a13;
  *(a9 + 72) = v20;
  *(a9 + 74) = v21;
  *(a9 + 75) = a14;
  *(a9 + 76) = v22;
  *(a9 + 80) = a16;
  *(a9 + 88) = a17 & 1;
  *(a9 + 96) = a18;
  *(a9 + 104) = a19 & 1;
  result = sub_1AAF8EA44();
  *(a9 + 112) = result;
  *(a9 + 120) = v24;
  *(a9 + 128) = v25 & 1;
  *(a9 + 136) = v26;
  *(a9 + 154) = 1;
  return result;
}

uint64_t AxisValueLabel.init<A>(_:centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](a6);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOWORD(v14) = *(a3 + 16);
  v16 = *(a3 + 18);
  v17 = *a5;
  *a2 = v18;
  *(a2 + 8) = v19;
  *(a2 + 16) = v20;
  *(a2 + 24) = v21 & 1;
  *(a2 + 32) = v22;
  *(a2 + 40) = v23;
  *(a2 + 48) = v24 & 1;
  *(a2 + 56) = *a3;
  *(a2 + 72) = v14;
  *(a2 + 74) = v16;
  *(a2 + 75) = v25;
  *(a2 + 76) = v17;
  *(a2 + 80) = v26;
  *(a2 + 88) = v27 & 1;
  *(a2 + 96) = v28;
  *(a2 + 104) = v29 & 1;
  (*(v13 + 16))(v15, a1, a10);
  v30 = sub_1AAF8EA64();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  result = (*(v13 + 8))(a1, a10);
  *(a2 + 112) = v30;
  *(a2 + 120) = v32;
  *(a2 + 128) = v34 & 1;
  *(a2 + 136) = v36;
  *(a2 + 154) = 1;
  return result;
}

uint64_t sub_1AADDB1B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  *(a3 + 24) = type metadata accessor for AnyPrimitiveFormat.PrimitiveFormat(0, a2, a4, a5);
  *(a3 + 32) = &off_1F1FD54D8;
  v8 = sub_1AACB2508(a3);
  result = (*(*(a2 - 8) + 32))(v8, a1, a2);
  *(a3 + 41) = 0;
  return result;
}

uint64_t sub_1AADDB234()
{
  sub_1AAF8F274();
  if (sub_1AAF8F234())
  {
    return 0;
  }

  sub_1AAF8F1F4();
  if (sub_1AAF8F234())
  {
    return 0;
  }

  sub_1AAF8F214();
  if (sub_1AAF8F234())
  {
    return 0;
  }

  sub_1AAF8F284();
  if (sub_1AAF8F234())
  {
    return 2;
  }

  sub_1AAF8F204();
  if (sub_1AAF8F234())
  {
    return 2;
  }

  sub_1AAF8F224();
  if (sub_1AAF8F234())
  {
    return 2;
  }

  sub_1AAF8F244();
  if (sub_1AAF8F234())
  {
    return 1;
  }

  sub_1AAF8F254();
  if (sub_1AAF8F234())
  {
    return 1;
  }

  sub_1AAF885A0(4);
  return 3;
}

uint64_t sub_1AADDB31C()
{
  sub_1AAF8F244();
  if (sub_1AAF8F234())
  {
    return 0;
  }

  sub_1AAF8F1F4();
  if (sub_1AAF8F234())
  {
    return 0;
  }

  sub_1AAF8F204();
  if (sub_1AAF8F234())
  {
    return 0;
  }

  sub_1AAF8F254();
  if (sub_1AAF8F234())
  {
    return 2;
  }

  sub_1AAF8F214();
  if (sub_1AAF8F234())
  {
    return 2;
  }

  sub_1AAF8F224();
  if (sub_1AAF8F234())
  {
    return 2;
  }

  sub_1AAF8F274();
  if (sub_1AAF8F234())
  {
    return 1;
  }

  sub_1AAF8F284();
  if (sub_1AAF8F234())
  {
    return 1;
  }

  sub_1AAF885A0(4);
  return 3;
}

uint64_t static AxisValueLabel._collectAxisMark(_:_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v5 = a4;
  v56 = a5;
  v9 = type metadata accessor for AxisValueLabel.LabelContent(0, a3, a4, a4);
  v10 = *(v9 - 8);
  v57 = v9;
  v58 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v44 - v11);
  sub_1AADDB8B4(a1, a2, a3, v5, &v92);
  if (*a2)
  {
    v13 = sub_1AAF904F4();

    if ((v13 & 1) == 0)
    {
      v14 = 0;
      v15 = *(a2 + 96);
      LODWORD(v16) = 1;
      v54 = 0;
      v55 = v15;
      goto LABEL_6;
    }
  }

  else
  {
  }

  LODWORD(v16) = 0;
  v15 = *(a2 + 96);
  v14 = 1;
  v54 = v15;
  v55 = 0;
LABEL_6:
  v53 = v15;
  v17 = *(a2 + 32);
  v18 = *(a2 + 40);
  v19 = *(a1 + 1);
  v20 = *(a1 + 2);
  v52 = a1[24];
  v50 = v20;
  v51 = v19;
  if (v52)
  {
    sub_1AAF8F264();
    v22 = v21;
    v24 = v23;
  }

  else
  {
    v22 = v19;
    v24 = v20;
  }

  v25 = v92;
  if (v93 < 0)
  {
    v48 = *(a2 + 8);
    swift_bridgeObjectRetain_n();
    sub_1AADDCDAC(&v92, &v59);
  }

  else
  {
    v49 = v12;
    v47 = v5;
    LODWORD(v46) = v16;
    v16 = *(a2 + 8);
    *&v59 = v93;

    v12 = v49;
    v5 = v47;
    *&v59 = sub_1AAF8E9F4();
    *(&v59 + 1) = v26;
    LOBYTE(v60[0]) = v27 & 1;
    *(&v60[0] + 1) = v28;
    v25 = sub_1AAF8EF44();
    v48 = v16;
    LOBYTE(v16) = v46;
  }

  v91 = v16;
  v89 = v14;
  v30 = type metadata accessor for AxisValueLabel(0, a3, v5, v29);
  (*(v58 + 16))(v12, &a1[*(v30 + 64)], v57);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v49 = v25;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v58 + 8))(v12, v57);
    }

    sub_1AACE0A98(a2 + 48, &v59);
    BYTE9(v60[1]) = 1;
  }

  else
  {
    v32 = v12[1];
    v59 = *v12;
    v60[0] = v32;
    *(v60 + 10) = *(v12 + 26);
  }

  v86 = v59;
  v87[0] = v60[0];
  *(v87 + 10) = *(v60 + 10);
  v33 = *(a2 + 104);
  v34 = *a1;
  v35 = *(a1 + 4);
  v36 = *(a1 + 5);
  v37 = a1[48];
  v38 = *(a1 + 7);
  v39 = *(a1 + 8);
  LODWORD(v58) = *(a1 + 36);
  LODWORD(v57) = a1[74];
  LODWORD(v47) = *(a1 + 75);
  v46 = *(a1 + 10);
  v45 = a1[88];
  v44 = *(a1 + 12);
  v40 = a1[104];
  sub_1AADDCE08(&v86, v85);
  v41 = *(a2 + 24);
  *&v59 = v48;
  *(&v59 + 1) = v53;
  LOBYTE(v60[0]) = v33;
  BYTE1(v60[0]) = v34;
  *(&v60[0] + 1) = v51;
  *&v60[1] = v50;
  BYTE8(v60[1]) = v52;
  v61 = v35;
  v62 = v36;
  v63 = v37;
  v64 = v38;
  v65 = v39;
  v66 = v58;
  v67 = v57;
  v68 = v47;
  v69 = v46;
  v70 = v45;
  v71 = v44;
  v72 = v40;
  v73 = v48;
  v74 = v54;
  v75 = v91;
  *&v76[3] = *&v90[3];
  *v76 = *v90;
  v77 = v55;
  v78 = v89;
  *&v79[3] = *&v88[3];
  *v79 = *v88;
  v80 = v49;
  v81 = v17;
  v82 = v18;
  v83 = v22;
  v84 = v24;
  v85[6] = v41;
  sub_1AACDF8EC(0, &qword_1ED9AD718, &type metadata for CollectedAxisMark, MEMORY[0x1E69E6F90]);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1AAF92AB0;
  sub_1AAD57CE8(&v59, v42 + 32);
  *(v42 + 296) = 1;

  sub_1AADDCE40(&v92);
  sub_1AAD57D44(&v59);
  result = sub_1AAD784B8(&v86);
  *v56 = v42;
  return result;
}

void sub_1AADDB8B4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v83 = a1;
  sub_1AACDF93C(255);
  v9 = sub_1AAF8DF74();
  v77 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v74 - v10;
  sub_1AADDDB94();
  v80 = sub_1AAF8DF74();
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v76 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v78 = &v74 - v13;
  v14 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v82 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = a4;
  v18 = type metadata accessor for AxisValueLabel.LabelContent(0, a3, a4, v17);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v74 - v20);
  if (*(a2 + 24))
  {
    v84 = *(a2 + 24);
    v22 = *(a2 + 16);
    if (v22)
    {
LABEL_3:

      v24 = v22;
      goto LABEL_10;
    }
  }

  else
  {
    if (qword_1ED9B1DA8 != -1)
    {
      swift_once();
    }

    v84 = qword_1ED9C34B8;

    v22 = *(a2 + 16);
    if (v22)
    {
      goto LABEL_3;
    }
  }

  v74 = v14;
  v81 = a5;
  v25 = qword_1ED9B1D98;

  if (v25 != -1)
  {
    swift_once();
  }

  *&v91 = qword_1ED9C34B0;

  v24 = sub_1AAF8DA44();
  a5 = v81;
  v14 = v74;
LABEL_10:
  v26 = type metadata accessor for AxisValueLabel(0, a3, v85, v23);
  (*(v19 + 16))(v21, v83 + *(v26 + 64), v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v28 = v14;
      (*(v14 + 32))();

      v29 = v75;
      v30 = v85;
      sub_1AAF8EBE4();

      *&v91 = v24;
      v31 = sub_1AADDDBEC(&qword_1ED9B11E8, sub_1AACDF93C, MEMORY[0x1E6980A18]);
      v95 = v30;
      v96 = v31;
      v85 = MEMORY[0x1E697E858];
      WitnessTable = swift_getWitnessTable();
      v33 = v78;
      sub_1AAF8EB24();
      (*(v77 + 8))(v29, v9);
      v34 = v79;
      v35 = *(v79 + 16);
      v81 = a5;
      v36 = v80;
      v35(v76, v33, v80);
      v37 = sub_1AADDDBEC(&qword_1ED9AF4F0, sub_1AADDDB94, MEMORY[0x1E6980490]);
      v93 = WitnessTable;
      v94 = v37;
      swift_getWitnessTable();
      a5 = v81;
      v38 = sub_1AAF8EF44();

      (*(v34 + 8))(v33, v36);
      (*(v28 + 8))(v82, a3);
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0x8000000000000000;
    }

    else
    {
      v85 = v24;
      v50 = *(a2 + 112);
      v51 = *(a2 + 120);
      v52 = *(a2 + 128);

      *&v91 = sub_1AAF75A98(v50, v51, v52);
      *(&v91 + 1) = v53;
      sub_1AADA6144();
      v54 = sub_1AAF8EA64();
      v56 = v55;
      v58 = v57;

      v38 = sub_1AAF8EA24();
      v39 = v59;
      v40 = v60;
      v41 = v61;

      v42 = v85;
      sub_1AAD04750(v54, v56, v58 & 1);
    }
  }

  else
  {
    v85 = v24;
    v43 = v21[1];
    v91 = *v21;
    v92[0] = v43;
    *(v92 + 10) = *(v21 + 26);
    v44 = *(a2 + 112);
    v45 = *(a2 + 120);
    v46 = *(a2 + 128);
    sub_1AADABA40(&v91, &v88);
    if (v90)
    {
      v86 = v88;
      *v87 = *v89;
      *&v87[9] = *&v89[9];

      v47 = sub_1AAF75A98(v44, v45, v46);
      v49 = v48;
      sub_1AAD57C94(&v86);
    }

    else
    {
      sub_1AACBB198(&v88, &v86);
      v62 = *&v87[8];
      v63 = *&v87[16];
      sub_1AACBB42C(&v86, *&v87[8]);
      v64 = *(v63 + 8);

      v47 = v64(v44, v45, v46, v62, v63);
      v49 = v65;
      sub_1AACB634C(&v86);
    }

    *&v88 = v47;
    *(&v88 + 1) = v49;
    sub_1AADA6144();
    v66 = sub_1AAF8EA64();
    v68 = v67;
    v70 = v69;

    v38 = sub_1AAF8EA24();
    v39 = v71;
    v40 = v72;
    v41 = v73;

    sub_1AAD04750(v66, v68, v70 & 1);

    sub_1AAD784B8(&v91);
    v42 = v85;
  }

  *a5 = v38;
  a5[1] = v39;
  a5[2] = v40 & 1;
  a5[3] = v41;
  a5[4] = v42;
}

unint64_t AxisValueLabelOrientation.description.getter()
{
  v1 = 0x746E6F7A69726F68;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x6974616D6F747561;
  }

  if (*v0)
  {
    v1 = 0x6C61636974726576;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1AADDC1C4()
{
  v1 = 0x6974616D6F747561;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000010;
  }

  v2 = 0x746E6F7A69726F68;
  if (*v0)
  {
    v2 = 0x6C61636974726576;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

void static AxisValueLabelCollisionResolution.greedy.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 18) = 0;
}

uint64_t static AxisValueLabelCollisionResolution.greedy(priority:minimumSpacing:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = a4;
  *(a3 + 8) = result;
  *(a3 + 16) = a2 & 1;
  *(a3 + 18) = 0;
  return result;
}

void static AxisValueLabelCollisionResolution.truncate.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 256;
  *(a1 + 18) = 0;
}

double static AxisValueLabelCollisionResolution.disabled.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_1AAF92AC0;
  *(a1 + 16) = 256;
  *(a1 + 18) = 0;
  return result;
}

uint64_t AxisValueLabelCollisionResolution.description.getter()
{
  if (*(v0 + 18))
  {
    return 0x6974616D6F747561;
  }

  v2 = *(v0 + 16);
  if ((v2 & 0x100) != 0)
  {
    if (v2)
    {
      v3 = 0;
    }

    else
    {
      v3 = *v0 == 0;
    }

    if (v3)
    {
      return 0x657461636E757274;
    }

    else
    {
      return 0x64656C6261736964;
    }
  }

  else
  {
    if (v2)
    {
      if (*v0 == 0.0)
      {
        return 0x796465657267;
      }

      sub_1AAF900D4();
      MEMORY[0x1AC5982F0](0xD000000000000011, 0x80000001AAFCE6E0);
      sub_1AAF8FA24();
    }

    else
    {
      sub_1AAF900D4();
      MEMORY[0x1AC5982F0](0xD000000000000011, 0x80000001AAFCE6E0);
      sub_1AAF8FA24();
      MEMORY[0x1AC5982F0](0xD000000000000012, 0x80000001AAFCE700);
      v4 = sub_1AAF8F9F4();
      MEMORY[0x1AC5982F0](v4);
    }

    MEMORY[0x1AC5982F0](41, 0xE100000000000000);
    return 0;
  }
}

uint64_t sub_1AADDC474(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  v9 = a4[2];
  v8 = a4[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20[0] = sub_1AAF8FE74();
  v11 = *(v20[0] - 8);
  MEMORY[0x1EEE9AC00](v20[0]);
  v13 = v20 - v12;
  sub_1AACCAE10(a1, a2, a3);
  v14 = a4[4];
  sub_1AACFB938(a1, a2, a3, AssociatedTypeWitness, v14, v13);
  v15 = sub_1AADDC640(v20[1], v9, v8, v14);
  v22 = v9;
  v23 = v8;
  v24 = v14;
  v25 = v15;
  v26 = v16;
  v17 = v20[0];
  sub_1AACD90D0(sub_1AADDDE68, v21, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6158], v18, v27);
  (*(v11 + 8))(v13, v17);

  if (v27[1])
  {
    return v27[0];
  }

  else
  {
    return 0;
  }
}

uint64_t (*sub_1AADDC640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v9);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = a4;
  (*(v7 + 32))(&v12[v11], v10, a2);
  return sub_1AADDDEA8;
}

uint64_t sub_1AADDC770(uint64_t a1, uint64_t a2)
{
  v61 = a1;
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v56[0] = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1AAF8FE74();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v60 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v63 = v56 - v7;
  v8 = sub_1AAF8FE74();
  v57 = *(v8 - 8);
  v58 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v56 - v9;
  v62 = v6;
  v11 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v56 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = v56 - v20;
  v22 = *(v4 + 16);
  v22(v56 - v20, v67, v3, v19);
  v66 = v4;
  v67 = v3;
  v23 = *(v4 + 56);
  v64 = v21;
  v24 = v21;
  v25 = v23;
  v23(v24, 0, 1, v3);
  sub_1AACAEF68(v61, v68);
  sub_1AADDDE04();
  v26 = swift_dynamicCast();
  v27 = a2;
  v28 = *(a2 - 8);
  v29 = *(v28 + 56);
  v56[1] = a2;
  v59 = v14;
  if (v26)
  {
    v30 = v28;
    v31 = v27;
    v29(v10, 0, 1, v27);
    v32 = v67;
    (v22)(v17, v10, v67);
    (*(v30 + 8))(v10, v31);
    v33 = v17;
    v34 = 0;
    v35 = v32;
  }

  else
  {
    v29(v10, 1, 1, a2);
    (*(v57 + 8))(v10, v58);
    v33 = v17;
    v34 = 1;
    v35 = v67;
  }

  v25(v33, v34, 1, v35);
  v36 = v64;
  v37 = *(TupleTypeMetadata2 + 48);
  v38 = *(v11 + 16);
  v39 = v62;
  v40 = v63;
  v38(v63, v64, v62);
  v38(&v40[v37], v17, v39);
  v41 = *(v66 + 48);
  if (v41(v40, 1, v67) != 1)
  {
    v46 = v59;
    v38(v59, v40, v39);
    v44 = v40;
    if (v41(&v40[v37], 1, v67) != 1)
    {
      v48 = v66;
      v49 = &v40[v37];
      v50 = v56[0];
      v51 = v67;
      (*(v66 + 32))(v56[0], v49, v67);
      v45 = sub_1AAF8F5F4();
      v52 = v46;
      v53 = *(v48 + 8);
      v53(v50, v51);
      v54 = *(v11 + 8);
      v54(v17, v39);
      v54(v64, v39);
      v53(v52, v51);
      v54(v44, v39);
      return v45 & 1;
    }

    v47 = *(v11 + 8);
    v47(v17, v39);
    v47(v64, v39);
    (*(v66 + 8))(v46, v67);
    goto LABEL_9;
  }

  v42 = v36;
  v43 = *(v11 + 8);
  v43(v17, v39);
  v43(v42, v39);
  v44 = v40;
  if (v41(&v40[v37], 1, v67) != 1)
  {
LABEL_9:
    (*(v60 + 8))(v44, TupleTypeMetadata2);
    v45 = 0;
    return v45 & 1;
  }

  v43(v40, v39);
  v45 = 1;
  return v45 & 1;
}

void sub_1AADDCE94(uint64_t a1)
{
  sub_1AACDF8EC(319, &qword_1ED9B2A20, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
  if (v2 <= 0x3F)
  {
    sub_1AACDF8EC(319, &qword_1ED9B2760, MEMORY[0x1E6981FA0], MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      sub_1AACDF8EC(319, &qword_1ED9B2AF8, MEMORY[0x1E6981D58], MEMORY[0x1E69E6720]);
      if (v4 <= 0x3F)
      {
        sub_1AACDF8EC(319, &qword_1ED9B2780, &type metadata for AxisValueLabelCollisionResolution.Storage, MEMORY[0x1E69E6720]);
        if (v5 <= 0x3F)
        {
          sub_1AACDF8EC(319, &qword_1ED9B2788, &type metadata for AxisValueLabelOrientation.Storage, MEMORY[0x1E69E6720]);
          if (v6 <= 0x3F)
          {
            sub_1AACDF8EC(319, &qword_1ED9B4438, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
            if (v8 <= 0x3F)
            {
              type metadata accessor for AxisValueLabel.LabelContent(319, *(a1 + 16), *(a1 + 24), v7);
              if (v9 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1AADDD070(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  if (v4 <= 0x2A)
  {
    v4 = 42;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = *(v3 + 80) & 0xF8;
  v6 = v4 + (~v5 & (v5 + 112)) + 1;
  v7 = 8 * v6;
  if (v6 > 3)
  {
    goto LABEL_6;
  }

  v10 = ((a2 + ~(-1 << v7) - 253) >> v7) + 1;
  if (HIWORD(v10))
  {
    v8 = *&a1[v6];
    if (v8)
    {
      goto LABEL_14;
    }

LABEL_25:
    v12 = *a1;
    v13 = v12 >= 2;
    v14 = (v12 + 2147483646) & 0x7FFFFFFF;
    if (!v13)
    {
      v14 = -1;
    }

    if (v14 + 1 >= 2)
    {
      return v14;
    }

    else
    {
      return 0;
    }
  }

  if (v10 > 0xFF)
  {
    v8 = *&a1[v6];
    if (*&a1[v6])
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

  if (v10 < 2)
  {
    goto LABEL_25;
  }

LABEL_6:
  v8 = a1[v6];
  if (!a1[v6])
  {
    goto LABEL_25;
  }

LABEL_14:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (a1[2] << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return (v6 | v11) + 254;
}

void sub_1AADDD1E4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  if (v6 <= 0x2A)
  {
    v6 = 42;
  }

  v7 = *(v5 + 80) & 0xF8;
  v8 = v6 + (~v7 & (v7 + 112)) + 1;
  if (a3 < 0xFE)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 253) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFD)
  {
    v10 = a2 - 254;
    if (v8 >= 4)
    {
      bzero(a1, v8);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v8)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_39:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      *a1 = a2 + 2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_24;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

__n128 initializeBufferWithCopyOfBuffer for AxisValueLabelCollisionResolution(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AxisValueLabelCollisionResolution(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 19))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AxisValueLabelCollisionResolution(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 19) = v3;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for AxisValueLabelCollisionResolution.Storage(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AxisValueLabelCollisionResolution.Storage(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 18))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AxisValueLabelCollisionResolution.Storage(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 18) = v3;
  return result;
}

uint64_t sub_1AADDD4B8(uint64_t a1)
{
  if (*(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AADDD4D4(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 17) = 1;
  }

  else
  {
    *(result + 17) = 0;
  }

  return result;
}

__n128 sub_1AADDD508(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1AADDD51C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 42))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 41);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1AADDD564(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AADDD5C4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AADDD634(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 42;
  if (*(v3 + 64) > 0x2AuLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_1AADDD74C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x2A)
  {
    v5 = 42;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t sub_1AADDD908()
{
  result = qword_1EB424C50;
  if (!qword_1EB424C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424C50);
  }

  return result;
}

uint64_t sub_1AADDD95C(uint64_t a1, uint64_t a2)
{
  sub_1AADABA40(a1, v13);
  sub_1AADABA40(a2, &v14);
  if (v13[41])
  {
    sub_1AADABA40(v13, &v11);
    if (v16 == 1)
    {
      v9 = v11;
      *v10 = v12[0];
      *&v10[9] = *(v12 + 9);
      v7 = v14;
      v8[0] = *v15;
      *(v8 + 9) = *&v15[9];
      v3 = sub_1AAF77A14(&v9, &v7);
      sub_1AAD57C94(&v7);
      sub_1AAD57C94(&v9);
LABEL_9:
      sub_1AADDDB64(v13);
      return v3 & 1;
    }

    sub_1AAD57C94(&v11);
  }

  else
  {
    sub_1AADABA40(v13, &v11);
    if ((v16 & 1) == 0)
    {
      sub_1AACBB198(&v11, &v9);
      sub_1AACBB198(&v14, &v7);
      v4 = *&v10[8];
      v5 = *&v10[16];
      sub_1AACBB42C(&v9, *&v10[8]);
      v3 = (*(v5 + 16))(&v7, v4, v5);
      sub_1AACB634C(&v7);
      sub_1AACB634C(&v9);
      goto LABEL_9;
    }

    sub_1AACB634C(&v11);
  }

  sub_1AADDDAAC(v13);
  v3 = 0;
  return v3 & 1;
}

uint64_t sub_1AADDDAAC(uint64_t a1)
{
  sub_1AADDDB08();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AADDDB08()
{
  if (!qword_1EB424C58)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB424C58);
    }
  }
}

void sub_1AADDDB94()
{
  if (!qword_1ED9AF4E8)
  {
    v0 = sub_1AAF8E5F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9AF4E8);
    }
  }
}

uint64_t sub_1AADDDBEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AADDDC34(uint64_t a1, uint64_t a2)
{
  sub_1AACDF8EC(0, qword_1ED9B4010, &type metadata for AnyFormatStyle, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AADDDCD4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AADDDD44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 42))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 41);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AADDDD80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 26) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AADDDDCC(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 41) = a2;
  return result;
}

unint64_t sub_1AADDDE04()
{
  result = qword_1EB424C60;
  if (!qword_1EB424C60)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB424C60);
  }

  return result;
}

uint64_t sub_1AADDDE68@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 40))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1AADDDF14(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  if (sub_1AAF8F8D4() != 1)
  {
    v48 = a1;
    *&v50 = a2;
    v14 = sub_1AAF8F914();
    WitnessTable = swift_getWitnessTable();
    v16 = sub_1AAF8FC24();
    if (v16)
    {
      __break(1u);
    }

    else
    {
      *&v50 = a2;
      MEMORY[0x1EEE9AC00](v16);
      v37 = a6;
      v38 = v17;
      v46 = a3;
      v47 = v17;
      v39 = v48;
      v45 = a4 & 1;
      LOBYTE(v40) = a4 & 1;
      v44 = a5 & 1;
      BYTE1(v40) = a5 & 1;
      v41 = a3;
      sub_1AADDE62C(0, &qword_1ED9B0CD8, MEMORY[0x1E69E5F90]);
      v20 = sub_1AACB00E0(sub_1AADDE4E8, v36, v14, v18, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v19);
      v21 = *(v20 + 16);
      v22 = MEMORY[0x1E69E7CC0];
      if (v21)
      {
        v43 = a7;
        *&v50 = MEMORY[0x1E69E7CC0];
        sub_1AAD214F4(0, v21, 0);
        v22 = v50;
        v23 = *(v50 + 16);
        v24 = (v20 + 40);
        do
        {
          v26 = *v24;
          v24 += 2;
          v25 = v26;
          *&v50 = v22;
          v27 = *(v22 + 24);
          if (v23 >= v27 >> 1)
          {
            sub_1AAD214F4((v27 > 1), v23 + 1, 1);
            v22 = v50;
          }

          *(v22 + 16) = v23 + 1;
          *(v22 + 8 * v23++ + 32) = v25;
          --v21;
        }

        while (v21);
      }

      v28 = sub_1AADE6A18(v22);
      v30 = v29;

      v31 = v47;
      if ((v30 & 1) == 0)
      {
        v51 = a2;
        swift_getWitnessTable();
        v32 = sub_1AAF8FB04();
        v49 = v50;
        MEMORY[0x1EEE9AC00](v32);
        v36[0] = a6;
        v36[1] = v31;
        v37 = v20;
        v38 = v28;
        v39 = a2;
        v40 = v48;
        LOBYTE(v41) = v45;
        BYTE1(v41) = v44;
        v42 = v46;
        sub_1AADDE62C(0, &qword_1ED9B29B0, MEMORY[0x1E69E66A8]);
        v33 = sub_1AADDE68C();
        v34 = sub_1AADDE728();
        sub_1AAF786F0(sub_1AADDE5F0, &v35, &type metadata for DiffToDesiredCount, v33, v34, &v52);
        if ((v53 & 1) == 0)
        {

          sub_1AAF8F944();
          return;
        }

        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  sub_1AAF8F944();
}

uint64_t sub_1AADDE2BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __OFSUB__(a2, a1);
  result = a2 - a1;
  if (result < 0 == v4)
  {
    if (!v4)
    {
      if (!__OFSUB__(a3, a1))
      {
        if (a3 - a1 >= result)
        {
          return result;
        }

        goto LABEL_21;
      }

LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = a1 - a3;
  if (a1 < a3)
  {
    v6 = a1 - a2;
    if (!__OFSUB__(a1, a2))
    {
      v4 = __OFSUB__(a1, a3);
      v7 = a1 - a3;
      if (!v4)
      {
        if (v7 <= v6)
        {
          v8 = v6;
        }

        else
        {
          v8 = v7;
        }

        if ((v8 & 0x8000000000000000) == 0)
        {
          return 0;
        }

        goto LABEL_26;
      }

      goto LABEL_24;
    }

    goto LABEL_22;
  }

  if (__OFSUB__(a1, a3))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v4 = __OFSUB__(a1, a2);
  v9 = a1 - a2;
  if (v4)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  if (v9 < result)
  {
    __break(1u);
    goto LABEL_19;
  }

  return result;
}

unint64_t sub_1AADDE344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, char a3@<W5>, char a4@<W6>, uint64_t a5@<X7>, uint64_t *a6@<X8>, uint64_t a7, uint64_t a8)
{
  v13 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *v18;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (result >= *(v14 + 16))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(v14 + 16 * result + 32) > v15)
  {
    v20 = qword_1EB424C68;
    v21 = unk_1EB424C70;
LABEL_11:
    *a6 = v20;
    a6[1] = v21;
    return result;
  }

  sub_1AAF8F944();
  v22 = (*(a8 + 32))(a2, a3 & 1, a4 & 1, a7, a8);
  result = (*(v13 + 8))(v17, a7);
  v20 = v22 - a5;
  if (__OFSUB__(v22, a5))
  {
    goto LABEL_14;
  }

  if ((v20 & 0x8000000000000000) == 0 || (v23 = __OFSUB__(0, v20), v20 = a5 - v22, !v23))
  {
    if (v22 >= a5)
    {
      v21 = 0;
    }

    else
    {
      v21 = -1;
    }

    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

BOOL sub_1AADDE4C8(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return a2[1] < a1[1];
  }

  else
  {
    return *a1 < *a2;
  }
}

uint64_t sub_1AADDE4E8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 48);
  v4 = (*(*(v1 + 24) + 40))(*(v1 + 32), *(v1 + 40), *(v1 + 41), *(v1 + 16));
  result = sub_1AADDE2BC(v3, v4, v5);
  *a1 = result;
  a1[1] = v7;
  return result;
}

BOOL sub_1AADDE564(void *a1, void *a2)
{
  if (*a2 == *a1)
  {
    return a1[1] >= a2[1];
  }

  else
  {
    return *a2 >= *a1;
  }
}

BOOL sub_1AADDE584(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return a2[1] >= a1[1];
  }

  else
  {
    return *a1 >= *a2;
  }
}

BOOL sub_1AADDE5A4(void *a1, void *a2)
{
  if (*a2 == *a1)
  {
    return a1[1] < a2[1];
  }

  else
  {
    return *a2 < *a1;
  }
}

void sub_1AADDE62C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1AADDE68C()
{
  result = qword_1EB424C78;
  if (!qword_1EB424C78)
  {
    sub_1AADDE62C(255, &qword_1ED9B29B0, MEMORY[0x1E69E66A8]);
    sub_1AAD2000C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424C78);
  }

  return result;
}

unint64_t sub_1AADDE728()
{
  result = qword_1EB424C80;
  if (!qword_1EB424C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424C80);
  }

  return result;
}

unint64_t sub_1AADDE790()
{
  result = qword_1EB424C88;
  if (!qword_1EB424C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424C88);
  }

  return result;
}

uint64_t sub_1AADDE7E4(uint64_t a1)
{
  sub_1AACEC8E4(0);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  type metadata accessor for CalendarBinningUnit(0);
  sub_1AACEE9E4(a1);
  v10 = v9;
  sub_1AACEE9E4(a1 + *(v3 + 36));
  v12 = v11;
  sub_1AACE8E98(v10, v8);
  result = sub_1AACE8E98(v12, v5);
  v14 = v12 - v10;
  if (__OFSUB__(v12, v10))
  {
    __break(1u);
    goto LABEL_9;
  }

  v15 = v14 + 1;
  if (__OFADD__(v14, 1))
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1AAF8CA14();
  if (result)
  {
    v16 = __OFSUB__(v15--, 1);
    if (v16)
    {
      goto LABEL_10;
    }
  }

  v17 = sub_1AAF8CA14();
  sub_1AACE8D8C(v5, sub_1AACEC8E4);
  result = sub_1AACE8D8C(v8, sub_1AACEC8E4);
  if ((v17 & 1) == 0)
  {
    return v15;
  }

  v16 = __OFSUB__(v15--, 1);
  if (!v16)
  {
    return v15;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1AADDE958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AACD57C4(0);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  sub_1AACEC8E4(0);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CalendarBinningUnit(0);
  sub_1AACEE9E4(a1);
  sub_1AACE8E98(v15, v14);
  if ((sub_1AAF8CA14() & 1) == 0 && (sub_1AAF8CA14() & 1) == 0)
  {
    return sub_1AACD582C(v14, a2, sub_1AACEC8E4);
  }

  v16 = sub_1AAF8CA64();
  sub_1AACECACC(&qword_1ED9B6BA8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v17 = sub_1AAF8F584();
  result = sub_1AACE8D8C(v14, sub_1AACEC8E4);
  if (v17)
  {
    v19 = *(v16 - 8);
    v20 = v19[2];
    v20(v10, a1, v16);
    v20(&v10[*(v5 + 48)], a1, v16);
    sub_1AACEDD44(v10, v7, sub_1AACD57C4);
    v21 = *(v5 + 48);
    v22 = v19[4];
    v22(a2, v7, v16);
    v25 = a2;
    v23 = v19[1];
    v23(&v7[v21], v16);
    sub_1AACD582C(v10, v7, sub_1AACD57C4);
    v22(v25 + *(v12 + 36), &v7[*(v5 + 48)], v16);
    return (v23)(v7, v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AADDEC74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a3;
  sub_1AACD57C4(0);
  v49 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v45 - v9;
  v10 = sub_1AAF8CA64();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - v15;
  sub_1AACEC8E4(0);
  v18 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v46 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v45 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v45 - v24;
  sub_1AADDE958(a1, &v45 - v24);
  v54 = v18;
  v26 = a1 + *(v18 + 36);
  v50 = v3;
  sub_1AADDE958(v26, v22);
  v27 = v25;
  v51 = a2;
  if ((a2 & 1) == 0)
  {
    v27 = &v25[*(v54 + 36)];
  }

  v28 = v11[2];
  v29 = v16;
  v28(v16, v27, v10);
  v30 = v22;
  v31 = v53;
  if (v53)
  {
    v30 = &v22[*(v54 + 36)];
  }

  v52 = v22;
  v32 = v13;
  v28(v13, v30, v10);
  sub_1AACECACC(&qword_1ED9B6BA8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v33 = v29;
  if (sub_1AAF8F564())
  {
    v34 = v11[1];
    v34(v32, v10);
    v34(v29, v10);
    sub_1AACE8D8C(v52, sub_1AACEC8E4);
    sub_1AACE8D8C(v25, sub_1AACEC8E4);
    return (v31 & 1) + (v51 & 1);
  }

  result = sub_1AAF8F584();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v36 = v32;
  v45 = v32;
  v37 = v48;
  v28(v48, v33, v10);
  v38 = v47;
  v53 = v25;
  v39 = v49;
  v28((v37 + *(v49 + 48)), v36, v10);
  sub_1AACEDD44(v37, v38, sub_1AACD57C4);
  v40 = *(v39 + 48);
  v41 = v11[4];
  v51 = v33;
  v42 = v46;
  v41(v46, v38, v10);
  v43 = v11[1];
  v43(v38 + v40, v10);
  sub_1AACD582C(v37, v38, sub_1AACD57C4);
  v41((v42 + *(v54 + 36)), v38 + *(v39 + 48), v10);
  v43(v38, v10);
  v44 = sub_1AADDE7E4(v42);
  sub_1AACE8D8C(v42, sub_1AACEC8E4);
  v43(v45, v10);
  v43(v51, v10);
  sub_1AACE8D8C(v52, sub_1AACEC8E4);
  sub_1AACE8D8C(v53, sub_1AACEC8E4);
  result = v44 + 1;
  if (__OFADD__(v44, 1))
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

void sub_1AADDF164()
{
  sub_1AACEC8E4(0);
  sub_1AAF8C854();
  v2 = v1;
  sub_1AAF8C854();
  v4 = v2 - v3;
  v5 = ceil((v2 - v3) / *(v0 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_durationBounds + 8));
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = ceil(v4 / *(v0 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_durationBounds)) + 1.0;
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v6 < v5)
  {
LABEL_15:
    __break(1u);
  }
}

uint64_t sub_1AADDF288(uint64_t a1, char a2, char a3)
{
  sub_1AADDF164();
  if ((a2 & 1) == 0 && (a3 & 1) == 0)
  {
    v7 = __OFSUB__(result--, 1);
    if (v7)
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    v7 = __OFADD__(v6++, 1);
    if (v7)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    if (v6 >= result)
    {
      return result;
    }

    __break(1u);
  }

  v7 = __OFADD__(result++, 1);
  if (v7)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v8 < result)
  {
LABEL_15:
    __break(1u);
  }

  return result;
}

uint64_t sub_1AADDF310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1AAF8CB84() & 1) != 0 && *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20)) && (sub_1AAF8CA14())
  {

    JUMPOUT(0x1AC595760);
  }

  return 0;
}

uint64_t sub_1AADDF3A0()
{
  sub_1AAF90694();
  sub_1AACED800(v1);
  return sub_1AAF906F4();
}

uint64_t sub_1AADDF3E4(uint64_t a1)
{
  sub_1AAF90694();
  sub_1AACED800(v2);
  return sub_1AAF906F4();
}

uint64_t sub_1AADDF424()
{
  sub_1AAF8CAD4();
  type metadata accessor for CalendarCache.Value(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1AADDF484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v20 = type metadata accessor for CalendarCache.Key(0);
  MEMORY[0x1EEE9AC00](v20);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for CalendarCache.Value(0);
  MEMORY[0x1EEE9AC00](v23);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  sub_1AADDFDEC(0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 64);
  v15 = sub_1AAF8CB94();
  (*(*(v15 - 8) + 16))(v6, a1, v15);
  v16 = sub_1AAF8CA64();
  v17 = *(*(v16 - 8) + 16);
  v17(&v6[v13], a2, v16);
  v18 = v21;
  v17(&v6[v14], v21, v16);
  swift_storeEnumTagMultiPayload();
  v24 = v22;
  v25 = a1;
  v26 = a2;
  v27 = v18;
  swift_beginAccess();
  sub_1AACED630(v6, sub_1AADE42CC, v11);
  swift_endAccess();
  sub_1AACE8D8C(v6, type metadata accessor for CalendarCache.Key);
  sub_1AACEDD44(v11, v8, type metadata accessor for CalendarCache.Value);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1AACE8D8C(v11, type metadata accessor for CalendarCache.Value);
    return *v8;
  }

  else
  {
    result = sub_1AACE8D8C(v8, type metadata accessor for CalendarCache.Value);
    __break(1u);
  }

  return result;
}

uint64_t sub_1AADDF734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18[2] = a3;
  v18[3] = a4;
  v18[1] = a1;
  v7 = sub_1AAF8C774();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893713CalendarCache_calendar;
  sub_1AACECC0C(0, &qword_1ED9B1E08, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v11 = sub_1AAF8CB94();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1AAF92AB0;
  (*(v12 + 16))(v14 + v13, a2, v11);
  sub_1AACEC014(v14);
  swift_setDeallocating();
  (*(v12 + 8))(v14 + v13, v11);
  swift_deallocClassInstance();
  sub_1AAF8CAF4();

  v15 = sub_1AAF8C744();
  LOBYTE(a2) = v16;
  (*(v8 + 8))(v10, v7);
  *a5 = v15;
  *(a5 + 8) = a2 & 1;
  type metadata accessor for CalendarCache.Value(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1AADDF990()
{
  sub_1AAF8CB54();
  type metadata accessor for CalendarCache.Value(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1AADDF9F8()
{
  v0 = MEMORY[0x1E69E7CC0];
  v1 = sub_1AADF70C8(MEMORY[0x1E69E7CC0]);
  sub_1AADE4364(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AAFA1130;
  *(v2 + 32) = v0;
  *(v2 + 40) = -1;
  *(v2 + 48) = -1;
  *(v2 + 56) = v1;
  swift_beginAccess();
  pthread_key_create((v2 + 16), sub_1AAF8AEF0);
  result = swift_endAccess();
  off_1ED9B14C8 = v2;
  return result;
}

uint64_t sub_1AADDFAA8()
{
  v1 = OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893713CalendarCache_calendar;
  v2 = sub_1AAF8CBA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1AADDFB8C(uint64_t a1)
{
  result = sub_1AAF8CBA4();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1AADDFC2C(uint64_t a1)
{
  sub_1AACECC0C(319, &qword_1ED9B2738, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1AADDFD14();
    if (v2 <= 0x3F)
    {
      sub_1AACECC0C(319, &qword_1ED9B1678, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1AADDFD14()
{
  if (!qword_1ED9B29B8)
  {
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B29B8);
    }
  }
}

void sub_1AADDFD64(uint64_t a1)
{
  sub_1AACE8B14(319);
  if (v1 <= 0x3F)
  {
    sub_1AADDFDEC(319);
    if (v2 <= 0x3F)
    {
      sub_1AADDFE60(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1AADDFDEC(uint64_t a1)
{
  if (!qword_1ED9B1668)
  {
    sub_1AAF8CB94();
    sub_1AAF8CA64();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ED9B1668);
    }
  }
}

void sub_1AADDFE60(uint64_t a1)
{
  if (!qword_1ED9B1658)
  {
    sub_1AAF8CB94();
    sub_1AAF8CA64();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ED9B1658);
    }
  }
}

uint64_t sub_1AADDFF48(uint64_t a1)
{
  result = sub_1AACECACC(&qword_1EB424C90, type metadata accessor for CalendarBinningUnit, &unk_1AAFA11F4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AADDFFE8(uint64_t a1, uint64_t a2)
{
  v711 = sub_1AAF8CBA4();
  v709 = *(v711 - 8);
  MEMORY[0x1EEE9AC00](v711);
  v705 = &v686 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v694 = &v686 - v6;
  v7 = sub_1AAF8CB94();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v708 = &v686 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v686 - v11;
  sub_1AACECC0C(0, &qword_1ED9B1678, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v686 - v14;
  v16 = sub_1AAF8CA64();
  v710 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v703 = &v686 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v686 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v686 - v22;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v690 = &v686 - v26;
  v27 = *(v8 + 104);
  v691 = *MEMORY[0x1E6969A68];
  v700 = v8 + 104;
  v699 = v27;
  (v27)(v12, v25);
  v704 = a2;
  sub_1AAF8CAD4();
  v707 = v8;
  v701 = *(v8 + 8);
  v702 = v8 + 8;
  v701(v12, v7);
  v28 = sub_1AAF8C6F4();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v15, 1, v28) == 1)
  {
    sub_1AADE4234(v15);
    (*(v710 + 16))(v690, a1, v16);
  }

  else
  {
    sub_1AAF8C6E4();
    (*(v29 + 8))(v15, v28);
    (*(v710 + 32))(v690, v23, v16);
  }

  v692 = a1;
  sub_1AACECC0C(0, &qword_1ED9B0658, type metadata accessor for CalendarBinningUnit, MEMORY[0x1E69E6F90]);
  v30 = type metadata accessor for CalendarBinningUnit(0);
  v31 = *(v30 - 8);
  v32 = (v30 - 8);
  v693 = *(v31 + 72);
  v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v34 = swift_allocObject();
  v687 = v34;
  *(v34 + 16) = xmmword_1AAFA1140;
  v35 = v34 + v33;
  LODWORD(v689) = *MEMORY[0x1E6969A98];
  v699(v12);
  v36 = *(v710 + 16);
  v717 = v710 + 16;
  v36(v20, a1, v16);
  v716 = *(v709 + 16);
  v719 = v7;
  v720 = v12;
  v37 = v16;
  v38 = v709 + 16;
  v39 = v711;
  v716(v694, v704, v711);
  v40 = v707 + 16;
  v706 = *(v707 + 16);
  v706(v35, v12, v7);
  v707 = v40;
  *(v35 + v32[7]) = 1;
  v41 = v32[8];
  v715 = v32;
  v42 = (v35 + v41);
  v43 = v35;
  v696 = v35;
  v44 = v37;
  v718 = v36;
  v36(v42, v20, v37);
  v45 = v43 + v32[9];
  v46 = v694;
  v714 = v38;
  v47 = v716;
  v716(v45, v694, v39);
  v48 = v708;
  v706(v708, v720, v719);
  v49 = v703;
  v36(v703, v20, v37);
  v50 = v705;
  v47(v705, v46, v39);
  v695 = type metadata accessor for CalendarBinningImpl(0);
  swift_allocObject();
  v51 = sub_1AACE7AF4(v48, 1, v49, v50);
  v697 = *(v709 + 8);
  v709 += 8;
  v52 = v39;
  v697(v46, v39);
  v53 = *(v710 + 8);
  v710 += 8;
  v698 = v53;
  v54 = v20;
  v53(v20, v44);
  v56 = v719;
  v55 = v720;
  v701(v720, v719);
  v57 = v715;
  v58 = v696;
  *(v696 + v715[10]) = v51;
  v59 = v58 + v693;
  v60 = v56;
  (v699)(v55, v689, v56);
  v712 = v54;
  v713 = v44;
  v61 = v718;
  v718(v54, v692, v44);
  v62 = v694;
  v716(v694, v704, v52);
  v63 = v59;
  v64 = v59;
  v65 = v706;
  v706(v63, v55, v60);
  *(v64 + v57[7]) = 5;
  v66 = v64 + v57[8];
  v688 = v64;
  v61(v66, v54, v44);
  v67 = v61;
  v68 = v62;
  v69 = v711;
  v70 = v716;
  v716((v64 + v57[9]), v68, v711);
  v71 = v708;
  v65(v708, v720, v60);
  v72 = v703;
  v73 = v712;
  v67(v703, v712, v713);
  v74 = v705;
  v75 = v694;
  v70(v705, v694, v69);
  swift_allocObject();
  v76 = sub_1AACE7AF4(v71, 5, v72, v74);
  v77 = v75;
  v697(v75, v69);
  v78 = v73;
  v79 = v713;
  v698(v73, v713);
  v81 = v719;
  v80 = v720;
  v701(v720, v719);
  v82 = v715;
  *(v688 + v715[10]) = v76;
  v688 = 2 * v693;
  v83 = v696 + 2 * v693;
  v84 = v80;
  (v699)(v80, v689, v81);
  v85 = v718;
  v718(v78, v692, v79);
  v86 = v69;
  v87 = v716;
  v716(v77, v704, v86);
  v88 = v81;
  v89 = v706;
  v706(v83, v84, v88);
  *(v83 + v82[7]) = 15;
  v90 = v83 + v82[8];
  v686 = v83;
  v91 = v78;
  v92 = v713;
  v85(v90, v91, v713);
  v93 = v83 + v82[9];
  v94 = v77;
  v95 = v711;
  v87(v93, v77, v711);
  v96 = v708;
  v89(v708, v720, v719);
  v97 = v703;
  v718(v703, v712, v92);
  v98 = v705;
  v87(v705, v77, v95);
  swift_allocObject();
  v99 = sub_1AACE7AF4(v96, 15, v97, v98);
  v100 = v95;
  v697(v77, v95);
  v102 = v712;
  v101 = v713;
  v698(v712, v713);
  v103 = v719;
  v104 = v720;
  v701(v720, v719);
  v105 = v715;
  *(v686 + v715[10]) = v99;
  v106 = v696 + v688 + v693;
  v107 = v103;
  (v699)(v104, v689, v103);
  v108 = v718;
  v718(v102, v692, v101);
  v109 = v716;
  v716(v94, v704, v100);
  v110 = v107;
  v111 = v706;
  v706(v106, v104, v110);
  *(v106 + v105[7]) = 30;
  v112 = v105;
  v113 = v106 + v105[8];
  v114 = v106;
  v688 = v106;
  v115 = v102;
  v116 = v713;
  v108(v113, v102, v713);
  v117 = v114 + v112[9];
  v118 = v694;
  v119 = v711;
  v109(v117, v694, v711);
  v120 = v109;
  v121 = v708;
  v111(v708, v720, v719);
  v122 = v703;
  v718(v703, v115, v116);
  v123 = v705;
  v120(v705, v118, v119);
  swift_allocObject();
  v124 = sub_1AACE7AF4(v121, 30, v122, v123);
  v697(v118, v119);
  v125 = v115;
  v126 = v713;
  v698(v115, v713);
  v127 = v719;
  v128 = v720;
  v701(v720, v719);
  *(v688 + v715[10]) = v124;
  v688 = 4 * v693;
  v129 = v696 + 4 * v693;
  LODWORD(v689) = *MEMORY[0x1E6969A88];
  v699(v128);
  v130 = v718;
  v718(v125, v692, v126);
  v131 = v711;
  v716(v118, v704, v711);
  v132 = v128;
  v133 = v706;
  v706(v129, v132, v127);
  v134 = v715;
  *(v129 + v715[7]) = 1;
  v135 = v134;
  v130(v129 + v134[8], v125, v713);
  v136 = v716;
  v716((v129 + v135[9]), v118, v131);
  v137 = v708;
  v133(v708, v720, v719);
  v138 = v703;
  v140 = v712;
  v139 = v713;
  v718(v703, v712, v713);
  v141 = v705;
  v142 = v711;
  v136(v705, v118, v711);
  swift_allocObject();
  v143 = sub_1AACE7AF4(v137, 1, v138, v141);
  v144 = v118;
  v697(v118, v142);
  v145 = v140;
  v146 = v139;
  v698(v140, v139);
  v148 = v719;
  v147 = v720;
  v701(v720, v719);
  v149 = v715;
  *(v129 + v715[10]) = v143;
  v150 = v696 + v688 + v693;
  (v699)(v147, v689, v148);
  v151 = v145;
  v152 = v145;
  v153 = v718;
  v718(v151, v692, v146);
  v154 = v142;
  v155 = v716;
  v716(v144, v704, v154);
  v156 = v147;
  v157 = v706;
  v706(v150, v156, v148);
  *(v150 + v149[7]) = 5;
  v158 = v150 + v149[8];
  v688 = v150;
  v153(v158, v152, v146);
  v159 = v150 + v149[9];
  v160 = v694;
  v155(v159, v694, v711);
  v161 = v155;
  v162 = v708;
  v157(v708, v720, v719);
  v163 = v703;
  v164 = v152;
  v165 = v713;
  v718(v703, v164, v713);
  v166 = v705;
  v167 = v160;
  v168 = v160;
  v169 = v711;
  v161(v705, v168, v711);
  swift_allocObject();
  v170 = sub_1AACE7AF4(v162, 5, v163, v166);
  v171 = v167;
  v172 = v167;
  v173 = v169;
  v697(v171, v169);
  v174 = v712;
  v175 = v165;
  v698(v712, v165);
  v176 = v719;
  v177 = v720;
  v701(v720, v719);
  v178 = v715;
  *(v688 + v715[10]) = v170;
  v179 = v696 + 6 * v693;
  v180 = v176;
  (v699)(v177, v689, v176);
  v181 = v718;
  v718(v174, v692, v175);
  v182 = v716;
  v716(v172, v704, v173);
  v183 = v180;
  v184 = v706;
  v706(v179, v177, v183);
  *(v179 + v178[7]) = 15;
  v185 = v179 + v178[8];
  v688 = v179;
  v186 = v713;
  v181(v185, v174, v713);
  v187 = v179 + v178[9];
  v188 = v694;
  v189 = v711;
  v182(v187, v694, v711);
  v190 = v708;
  v191 = v719;
  v184(v708, v720, v719);
  v192 = v703;
  v193 = v712;
  v718(v703, v712, v186);
  v194 = v705;
  v716(v705, v188, v189);
  swift_allocObject();
  v195 = sub_1AACE7AF4(v190, 15, v192, v194);
  v697(v188, v189);
  v698(v193, v186);
  v196 = v720;
  v701(v720, v191);
  *(v688 + v715[10]) = v195;
  v688 = 8 * v693;
  v197 = v696 + 7 * v693;
  (v699)(v196, v689, v191);
  v198 = v718;
  v718(v193, v692, v186);
  v199 = v694;
  v200 = v716;
  v716(v694, v704, v189);
  v201 = v196;
  v202 = v706;
  v706(v197, v201, v191);
  v203 = v715;
  *(v197 + v715[7]) = 30;
  v204 = v197 + v203[8];
  v686 = v197;
  v205 = v712;
  v198(v204, v712, v713);
  v206 = v197 + v203[9];
  v207 = v711;
  v200(v206, v199, v711);
  v208 = v708;
  v202(v708, v720, v719);
  v209 = v703;
  v210 = v205;
  v211 = v205;
  v212 = v713;
  v718(v703, v210, v713);
  v213 = v705;
  v214 = v694;
  v215 = v207;
  v200(v705, v694, v207);
  swift_allocObject();
  v216 = sub_1AACE7AF4(v208, 30, v209, v213);
  v697(v214, v207);
  v217 = v212;
  v698(v211, v212);
  v219 = v719;
  v218 = v720;
  v701(v720, v719);
  v220 = v715;
  *(v686 + v715[10]) = v216;
  v221 = v696 + v688;
  LODWORD(v689) = *MEMORY[0x1E6969A58];
  v699(v218);
  v222 = v718;
  v718(v211, v692, v217);
  v716(v214, v704, v215);
  v223 = v219;
  v224 = v706;
  v706(v221, v218, v223);
  v225 = v220;
  *(v221 + v220[7]) = 1;
  v226 = v221 + v220[8];
  v227 = v221;
  v686 = v221;
  v222(v226, v712, v217);
  v228 = v222;
  v229 = v227 + v225[9];
  v230 = v711;
  v231 = v716;
  v716(v229, v214, v711);
  v232 = v708;
  v224(v708, v720, v719);
  v233 = v703;
  v234 = v712;
  v228(v703, v712, v713);
  v235 = v705;
  v236 = v214;
  v237 = v230;
  v231(v705, v214, v230);
  swift_allocObject();
  v238 = sub_1AACE7AF4(v232, 1, v233, v235);
  v697(v214, v230);
  v239 = v713;
  v698(v234, v713);
  v240 = v719;
  v241 = v720;
  v701(v720, v719);
  v242 = v715;
  *(v686 + v715[10]) = v238;
  v243 = v696 + v688 + v693;
  v244 = v241;
  (v699)(v241, v689, v240);
  v245 = v234;
  v246 = v718;
  v718(v245, v692, v239);
  v247 = v716;
  v716(v236, v704, v237);
  v248 = v244;
  v249 = v706;
  v706(v243, v248, v240);
  *(v243 + v242[7]) = 3;
  v250 = v242;
  v251 = v243 + v242[8];
  v688 = v243;
  v252 = v712;
  v246(v251, v712, v713);
  v253 = v243 + v250[9];
  v254 = v236;
  v255 = v236;
  v256 = v711;
  v247(v253, v254, v711);
  v257 = v247;
  v258 = v708;
  v249(v708, v720, v719);
  v259 = v703;
  v260 = v252;
  v718(v703, v252, v713);
  v261 = v705;
  v257(v705, v255, v256);
  swift_allocObject();
  v262 = sub_1AACE7AF4(v258, 3, v259, v261);
  v263 = v255;
  v697(v255, v256);
  v264 = v713;
  v698(v252, v713);
  v265 = v719;
  v266 = v720;
  v701(v720, v719);
  v267 = v715;
  *(v688 + v715[10]) = v262;
  v268 = v696 + 10 * v693;
  (v699)(v266, v689, v265);
  v269 = v264;
  v270 = v718;
  v718(v260, v692, v269);
  v271 = v716;
  v716(v263, v704, v711);
  v272 = v706;
  v706(v268, v266, v265);
  *(v268 + v267[7]) = 6;
  v273 = v268 + v267[8];
  v688 = v268;
  v274 = v260;
  v275 = v713;
  v270(v273, v274, v713);
  v276 = v694;
  v277 = v711;
  v271(v268 + v267[9], v694, v711);
  v278 = v708;
  v272(v708, v720, v719);
  v279 = v703;
  v280 = v712;
  v718(v703, v712, v275);
  v281 = v705;
  v271(v705, v276, v277);
  swift_allocObject();
  v282 = sub_1AACE7AF4(v278, 6, v279, v281);
  v283 = v276;
  v697(v276, v277);
  v698(v280, v275);
  v284 = v719;
  v285 = v720;
  v701(v720, v719);
  v286 = v715;
  *(v688 + v715[10]) = v282;
  v287 = v696 + 11 * v693;
  (v699)(v285, v689, v284);
  v288 = v280;
  v289 = v280;
  v290 = v275;
  v718(v288, v692, v275);
  v716(v283, v704, v711);
  v291 = v706;
  v706(v287, v285, v284);
  *(v287 + v286[7]) = 12;
  v292 = v287 + v286[8];
  v688 = v287;
  v293 = v289;
  v294 = v289;
  v295 = v718;
  v718(v292, v294, v290);
  v296 = v287 + v286[9];
  v297 = v694;
  v298 = v711;
  v716(v296, v694, v711);
  v299 = v708;
  v291(v708, v720, v719);
  v300 = v703;
  v301 = v290;
  v295(v703, v293, v290);
  v302 = v705;
  v716(v705, v297, v298);
  swift_allocObject();
  v303 = sub_1AACE7AF4(v299, 12, v300, v302);
  v697(v297, v298);
  v698(v293, v290);
  v304 = v719;
  v305 = v720;
  v701(v720, v719);
  v306 = v715;
  *(v688 + v715[10]) = v303;
  v307 = v696 + 12 * v693;
  LODWORD(v689) = *MEMORY[0x1E6969A48];
  v699(v305);
  v308 = v718;
  v718(v293, v692, v301);
  v309 = v716;
  v716(v694, v704, v711);
  v310 = v305;
  v311 = v706;
  v706(v307, v310, v304);
  *(v307 + v306[7]) = 1;
  v312 = v307 + v306[8];
  v688 = v307;
  v308(v312, v293, v301);
  v313 = v694;
  v314 = v711;
  v309(v307 + v306[9], v694, v711);
  v315 = v309;
  v316 = v708;
  v311(v708, v720, v719);
  v317 = v703;
  v319 = v712;
  v318 = v713;
  v308(v703, v712, v713);
  v320 = v705;
  v315(v705, v313, v314);
  swift_allocObject();
  v321 = sub_1AACE7AF4(v316, 1, v317, v320);
  v322 = v313;
  v323 = v313;
  v324 = v314;
  v697(v322, v314);
  v698(v319, v318);
  v326 = v719;
  v325 = v720;
  v701(v720, v719);
  *(v688 + v715[10]) = v321;
  v327 = v696 + 13 * v693;
  v328 = v325;
  (v699)(v325, v689, v326);
  v329 = v718;
  v718(v319, v692, v318);
  v330 = v716;
  v716(v323, v704, v324);
  v331 = v326;
  v332 = v706;
  v706(v327, v328, v331);
  v333 = v715;
  *(v327 + v715[7]) = 2;
  v334 = v327 + v333[8];
  v688 = v327;
  v335 = v713;
  v329(v334, v712, v713);
  v336 = v327 + v333[9];
  v337 = v323;
  v338 = v711;
  v330(v336, v323, v711);
  v339 = v330;
  v340 = v708;
  v332(v708, v720, v719);
  v341 = v703;
  v718(v703, v712, v335);
  v342 = v705;
  v339(v705, v323, v338);
  swift_allocObject();
  v343 = sub_1AACE7AF4(v340, 2, v341, v342);
  v697(v323, v338);
  v345 = v712;
  v344 = v713;
  v698(v712, v713);
  v347 = v719;
  v346 = v720;
  v701(v720, v719);
  v348 = v715;
  *(v688 + v715[10]) = v343;
  v349 = v696 + 14 * v693;
  LODWORD(v689) = *MEMORY[0x1E6969A10];
  v699(v346);
  v350 = v718;
  v718(v345, v692, v344);
  v716(v337, v704, v338);
  v351 = v347;
  v352 = v706;
  v706(v349, v346, v351);
  *(v349 + v348[7]) = 1;
  v353 = v349 + v348[8];
  v688 = v349;
  v354 = v713;
  v350(v353, v345, v713);
  v355 = v350;
  v356 = v349 + v348[9];
  v357 = v694;
  v358 = v711;
  v359 = v716;
  v716(v356, v694, v711);
  v360 = v708;
  v352(v708, v720, v719);
  v361 = v703;
  v355(v703, v712, v354);
  v362 = v705;
  v359(v705, v357, v358);
  swift_allocObject();
  v363 = sub_1AACE7AF4(v360, 1, v361, v362);
  v364 = v358;
  v697(v357, v358);
  v365 = v712;
  v366 = v354;
  v698(v712, v354);
  v367 = v719;
  v368 = v720;
  v701(v720, v719);
  v369 = v715;
  *(v688 + v715[10]) = v363;
  v688 = 16 * v693;
  v370 = v696 + 15 * v693;
  v371 = v368;
  (v699)(v368, v689, v367);
  v372 = v718;
  v718(v365, v692, v366);
  v373 = v716;
  v716(v694, v704, v364);
  v374 = v706;
  v706(v370, v371, v367);
  *(v370 + v369[7]) = 2;
  v375 = v370 + v369[8];
  v686 = v370;
  v372(v375, v365, v713);
  v376 = v694;
  v377 = v711;
  v373(v370 + v369[9], v694, v711);
  v378 = v708;
  v374(v708, v720, v719);
  v379 = v703;
  v380 = v713;
  v372(v703, v712, v713);
  v381 = v705;
  v373(v705, v376, v377);
  swift_allocObject();
  v382 = sub_1AACE7AF4(v378, 2, v379, v381);
  v697(v376, v377);
  v383 = v712;
  v698(v712, v380);
  v385 = v719;
  v384 = v720;
  v701(v720, v719);
  v386 = v715;
  *(v686 + v715[10]) = v382;
  v387 = v696 + v688;
  LODWORD(v689) = *MEMORY[0x1E6969A78];
  v388 = v385;
  v699(v384);
  v389 = v718;
  v718(v383, v690, v380);
  v390 = v716;
  v716(v376, v704, v711);
  v391 = v388;
  v392 = v706;
  v706(v387, v384, v391);
  *(v387 + v386[7]) = 1;
  v393 = v386;
  v394 = v387 + v386[8];
  v395 = v387;
  v686 = v387;
  v396 = v712;
  v389(v394, v712, v380);
  v397 = v395 + v393[9];
  v398 = v376;
  v399 = v711;
  v390(v397, v376, v711);
  v400 = v390;
  v392(v708, v720, v719);
  v401 = v703;
  v718(v703, v396, v380);
  v402 = v705;
  v403 = v399;
  v400(v705, v398, v399);
  swift_allocObject();
  v404 = sub_1AACE7AF4(v708, 1, v401, v402);
  v405 = v398;
  v697(v398, v403);
  v406 = v712;
  v407 = v380;
  v698(v712, v380);
  v409 = v719;
  v408 = v720;
  v701(v720, v719);
  *(v686 + v715[10]) = v404;
  v410 = v696 + v688 + v693;
  (v699)(v408, v689, v409);
  v411 = v718;
  v718(v406, v690, v380);
  v412 = v405;
  v413 = v711;
  v716(v412, v704, v711);
  v414 = v706;
  v706(v410, v408, v409);
  v415 = v715;
  *(v410 + v715[7]) = 2;
  v416 = v410 + v415[8];
  v688 = v410;
  v411(v416, v406, v407);
  v417 = v410 + v415[9];
  v418 = v694;
  v419 = v716;
  v716(v417, v694, v413);
  v420 = v708;
  v414(v708, v720, v719);
  v421 = v703;
  v422 = v713;
  v718(v703, v406, v713);
  v423 = v705;
  v419(v705, v418, v413);
  swift_allocObject();
  v424 = sub_1AACE7AF4(v420, 2, v421, v423);
  v425 = v418;
  v697(v418, v413);
  v426 = v422;
  v698(v406, v422);
  v428 = v719;
  v427 = v720;
  v701(v720, v719);
  *(v688 + v715[10]) = v424;
  v429 = v696 + 18 * v693;
  (v699)(v427, v689, v428);
  v430 = v718;
  v718(v406, v690, v426);
  v716(v425, v704, v711);
  v431 = v427;
  v432 = v706;
  v706(v429, v431, v428);
  v433 = v715;
  *(v429 + v715[7]) = 3;
  v430(v429 + v433[8], v406, v426);
  v434 = v429 + v433[9];
  v435 = v711;
  v436 = v716;
  v716(v434, v425, v711);
  v432(v708, v720, v719);
  v437 = v703;
  v438 = v712;
  v439 = v426;
  v430(v703, v712, v426);
  v440 = v705;
  v441 = v694;
  v436(v705, v694, v435);
  swift_allocObject();
  v442 = sub_1AACE7AF4(v708, 3, v437, v440);
  v443 = v441;
  v444 = v435;
  v697(v441, v435);
  v445 = v439;
  v698(v438, v439);
  v446 = v719;
  v447 = v720;
  v701(v720, v719);
  v448 = v715;
  *(v429 + v715[10]) = v442;
  v449 = v696 + 19 * v693;
  (v699)(v447, v689, v446);
  v450 = v438;
  v451 = v718;
  v718(v450, v690, v445);
  v452 = v443;
  v453 = v716;
  v716(v452, v704, v444);
  v454 = v706;
  v706(v449, v447, v446);
  *(v449 + v448[7]) = 6;
  v455 = v449 + v448[8];
  v688 = v449;
  v451(v455, v712, v445);
  v456 = v694;
  v457 = v711;
  v453(v449 + v448[9], v694, v711);
  v458 = v708;
  v454(v708, v720, v446);
  v459 = v703;
  v461 = v712;
  v460 = v713;
  v718(v703, v712, v713);
  v462 = v705;
  v453(v705, v456, v457);
  swift_allocObject();
  v463 = sub_1AACE7AF4(v458, 6, v459, v462);
  v464 = v456;
  v697(v456, v457);
  v465 = v460;
  v698(v461, v460);
  v467 = v719;
  v466 = v720;
  v701(v720, v719);
  *(v688 + v715[10]) = v463;
  v468 = v696 + 20 * v693;
  (v699)(v466, v691, v467);
  v469 = v718;
  v718(v461, v692, v465);
  v470 = v464;
  v471 = v464;
  v472 = v716;
  v716(v471, v704, v457);
  v473 = v467;
  v474 = v706;
  v706(v468, v466, v473);
  v475 = v715;
  *(v468 + v715[7]) = 1;
  v476 = v468 + v475[8];
  v689 = v468;
  v477 = v712;
  v469(v476, v712, v465);
  v478 = v468 + v475[9];
  v479 = v711;
  v480 = v472;
  v472(v478, v470, v711);
  v481 = v708;
  v482 = v719;
  v474(v708, v720, v719);
  v483 = v703;
  v484 = v713;
  v718(v703, v477, v713);
  v485 = v705;
  v480(v705, v470, v479);
  swift_allocObject();
  v486 = sub_1AACE7AF4(v481, 1, v483, v485);
  v487 = v479;
  v697(v470, v479);
  v488 = v712;
  v489 = v484;
  v698(v712, v484);
  v490 = v720;
  v491 = v482;
  v701(v720, v482);
  v492 = v715;
  *(v689 + v715[10]) = v486;
  v493 = v696 + 21 * v693;
  (v699)(v490, v691, v491);
  v494 = v488;
  v495 = v718;
  v718(v494, v692, v489);
  v716(v470, v704, v487);
  v496 = v490;
  v497 = v491;
  v498 = v706;
  v706(v493, v496, v491);
  *(v493 + v492[7]) = 2;
  v499 = v493 + v492[8];
  v689 = v493;
  v500 = v712;
  v501 = v713;
  v495(v499, v712, v713);
  v502 = v493 + v492[9];
  v503 = v694;
  v504 = v711;
  v505 = v716;
  v716(v502, v694, v711);
  v506 = v708;
  v498(v708, v720, v497);
  v507 = v703;
  v508 = v501;
  v718(v703, v500, v501);
  v509 = v705;
  v505(v705, v503, v504);
  swift_allocObject();
  v510 = sub_1AACE7AF4(v506, 2, v507, v509);
  v511 = v503;
  v512 = v504;
  v697(v503, v504);
  v513 = v712;
  v698(v712, v501);
  v515 = v719;
  v514 = v720;
  v701(v720, v719);
  *(v689 + v715[10]) = v510;
  v516 = v696 + 22 * v693;
  (v699)(v514, v691, v515);
  v517 = v718;
  v718(v513, v692, v508);
  v518 = v716;
  v716(v511, v704, v512);
  v519 = v706;
  v706(v516, v514, v515);
  v520 = v715;
  *(v516 + v715[7]) = 5;
  v521 = v516 + v520[8];
  v522 = v516;
  v689 = v516;
  v523 = v713;
  v517(v521, v712, v713);
  v524 = v522 + v520[9];
  v525 = v694;
  v518(v524, v694, v512);
  v526 = v708;
  v527 = v719;
  v519(v708, v720, v719);
  v528 = v703;
  v529 = v712;
  v517(v703, v712, v523);
  v530 = v705;
  v518(v705, v525, v512);
  swift_allocObject();
  v531 = sub_1AACE7AF4(v526, 5, v528, v530);
  v532 = v525;
  v697(v525, v512);
  v533 = v529;
  v534 = v529;
  v535 = v523;
  v698(v534, v523);
  v536 = v720;
  v537 = v527;
  v701(v720, v527);
  *(v689 + v715[10]) = v531;
  v538 = v696 + 23 * v693;
  v539 = v536;
  (v699)(v536, v691, v537);
  v540 = v535;
  v541 = v718;
  v718(v533, v692, v535);
  v542 = v716;
  v716(v532, v704, v512);
  v543 = v706;
  v706(v538, v539, v537);
  v544 = v715;
  *(v538 + v715[7]) = 10;
  v545 = v538 + v544[8];
  v689 = v538;
  v541(v545, v533, v540);
  v546 = v538 + v544[9];
  v547 = v694;
  v542(v546, v694, v711);
  v548 = v542;
  v549 = v708;
  v543(v708, v539, v719);
  v550 = v703;
  v551 = v713;
  v718(v703, v533, v713);
  v552 = v705;
  v553 = v711;
  v548(v705, v547, v711);
  swift_allocObject();
  v554 = sub_1AACE7AF4(v549, 10, v550, v552);
  v555 = v547;
  v697(v547, v553);
  v698(v533, v551);
  v557 = v719;
  v556 = v720;
  v701(v720, v719);
  *(v689 + v715[10]) = v554;
  v558 = v696 + 24 * v693;
  (v699)(v556, v691, v557);
  v559 = v551;
  v560 = v718;
  v718(v533, v692, v559);
  v561 = v555;
  v562 = v711;
  v563 = v716;
  v716(v561, v704, v711);
  v564 = v706;
  v706(v558, v556, v557);
  v565 = v715;
  v566 = v558;
  *(v558 + v715[7]) = 20;
  v567 = v565;
  v568 = v566 + v565[8];
  v689 = v566;
  v560(v568, v533, v713);
  v569 = v566 + v567[9];
  v570 = v694;
  v563(v569, v694, v562);
  v571 = v563;
  v572 = v708;
  v564(v708, v720, v719);
  v573 = v703;
  v574 = v713;
  v718(v703, v533, v713);
  v575 = v705;
  v571(v705, v570, v562);
  swift_allocObject();
  v576 = sub_1AACE7AF4(v572, 20, v573, v575);
  v697(v570, v562);
  v698(v533, v574);
  v578 = v719;
  v577 = v720;
  v701(v720, v719);
  v579 = v715;
  *(v689 + v715[10]) = v576;
  v580 = v696 + 25 * v693;
  v581 = v578;
  (v699)(v577, v691, v578);
  v582 = v718;
  v718(v533, v692, v574);
  v583 = v716;
  v716(v570, v704, v562);
  v584 = v581;
  v585 = v706;
  v706(v580, v577, v584);
  *(v580 + v579[7]) = 50;
  v586 = v580 + v579[8];
  v689 = v580;
  v582(v586, v533, v574);
  v587 = v580 + v579[9];
  v588 = v694;
  v589 = v711;
  v583(v587, v694, v711);
  v590 = v708;
  v585(v708, v577, v719);
  v591 = v703;
  v592 = v712;
  v582(v703, v712, v713);
  v593 = v705;
  v594 = v589;
  v583(v705, v588, v589);
  swift_allocObject();
  v595 = sub_1AACE7AF4(v590, 50, v591, v593);
  v596 = v588;
  v697(v588, v589);
  v597 = v592;
  v598 = v713;
  v698(v592, v713);
  v599 = v719;
  v600 = v720;
  v701(v720, v719);
  v601 = v715;
  *(v689 + v715[10]) = v595;
  v602 = v696 + 26 * v693;
  (v699)(v600, v691, v599);
  v603 = v718;
  v718(v597, v692, v598);
  v716(v596, v704, v594);
  v604 = v599;
  v605 = v599;
  v606 = v706;
  v706(v602, v600, v604);
  *(v602 + v601[7]) = 100;
  v607 = v602 + v601[8];
  v608 = v602;
  v689 = v602;
  v609 = v712;
  v603(v607, v712, v713);
  v610 = v603;
  v611 = v608 + v601[9];
  v612 = v711;
  v613 = v716;
  v716(v611, v694, v711);
  v614 = v708;
  v606(v708, v720, v605);
  v615 = v703;
  v616 = v609;
  v617 = v609;
  v618 = v713;
  v610(v703, v617, v713);
  v619 = v705;
  v620 = v694;
  v613(v705, v694, v612);
  swift_allocObject();
  v621 = sub_1AACE7AF4(v614, 100, v615, v619);
  v697(v620, v612);
  v698(v616, v618);
  v623 = v719;
  v622 = v720;
  v701(v720, v719);
  v624 = v715;
  *(v689 + v715[10]) = v621;
  v625 = v696 + 27 * v693;
  v626 = v622;
  (v699)(v622, v691, v623);
  v627 = v718;
  v718(v616, v692, v618);
  v628 = v620;
  v629 = v612;
  v630 = v716;
  v716(v628, v704, v612);
  v631 = v623;
  v632 = v706;
  v706(v625, v626, v631);
  *(v625 + v624[7]) = 200;
  v633 = v625 + v624[8];
  v689 = v625;
  v634 = v618;
  v627(v633, v616, v618);
  v635 = v694;
  v630(v625 + v624[9], v694, v629);
  v636 = v630;
  v637 = v708;
  v632(v708, v720, v719);
  v638 = v703;
  v639 = v634;
  v627(v703, v712, v634);
  v640 = v705;
  v641 = v635;
  v642 = v635;
  v643 = v629;
  v636(v705, v642, v629);
  swift_allocObject();
  v644 = sub_1AACE7AF4(v637, 200, v638, v640);
  v645 = v641;
  v646 = v643;
  v697(v641, v643);
  v647 = v712;
  v648 = v639;
  v698(v712, v639);
  v650 = v719;
  v649 = v720;
  v701(v720, v719);
  v651 = v715;
  *(v689 + v715[10]) = v644;
  v652 = v696 + 28 * v693;
  (v699)(v649, v691, v650);
  v653 = v718;
  v718(v647, v692, v648);
  v716(v645, v704, v646);
  v654 = v706;
  v706(v652, v649, v650);
  *(v652 + v651[7]) = 500;
  v655 = v651;
  v656 = v652 + v651[8];
  v657 = v712;
  v653(v656, v712, v648);
  v658 = v652 + v655[9];
  v659 = v711;
  v660 = v716;
  v716(v658, v645, v711);
  v661 = v708;
  v654(v708, v720, v719);
  v662 = v703;
  v718(v703, v657, v648);
  v663 = v705;
  v660(v705, v645, v659);
  swift_allocObject();
  v664 = sub_1AACE7AF4(v661, 500, v662, v663);
  v665 = v659;
  v697(v645, v659);
  v666 = v712;
  v698(v712, v648);
  v668 = v719;
  v667 = v720;
  v701(v720, v719);
  v669 = v715;
  *(v652 + v715[10]) = v664;
  v670 = v696 + 29 * v693;
  v671 = v668;
  (v699)(v667, v691, v668);
  v672 = v718;
  v718(v666, v692, v648);
  v673 = v694;
  v674 = v716;
  v716(v694, v704, v665);
  v706(v670, v667, v671);
  *(v670 + v669[7]) = 1000;
  v675 = v670 + v669[8];
  v696 = v670;
  v677 = v712;
  v676 = v713;
  v672(v675, v712, v713);
  v678 = v670 + v669[9];
  v679 = v673;
  v674(v678, v673, v665);
  v680 = v708;
  v706(v708, v720, v719);
  v681 = v703;
  v672(v703, v677, v676);
  v682 = v705;
  v674(v705, v679, v665);
  swift_allocObject();
  v683 = sub_1AACE7AF4(v680, 1000, v681, v682);
  v697(v679, v665);
  v684 = v698;
  v698(v677, v676);
  v701(v720, v719);
  *(v696 + v715[10]) = v683;
  v684(v690, v676);
  return v687;
}

uint64_t sub_1AADE4234(uint64_t a1)
{
  sub_1AACECC0C(0, &qword_1ED9B1678, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AADE42E4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1AACECC0C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_1AADE4364(uint64_t a1)
{
  if (!qword_1ED9B1368[0])
  {
    sub_1AACE8880(255, qword_1ED9B1208, type metadata accessor for LRUCache);
    v5 = type metadata accessor for ThreadSpecific(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, qword_1ED9B1368);
    }
  }
}

uint64_t ChartBinRange.contains(_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1AAF8F584() & 1) == 0)
  {
    return 0;
  }

  if (sub_1AAF8F564())
  {
    return 1;
  }

  if (*(v2 + *(a2 + 40)) == 1)
  {
    return sub_1AAF8F5F4() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t ChartBinRange.relative<A>(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v42 = a4;
  v45 = a1;
  v46 = a3;
  v44 = a5;
  v8 = *(a2 + 16);
  v9 = sub_1AAF8FCA4();
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v43 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  v18 = sub_1AAF8F5D4();
  v38 = *(v18 - 8);
  v39 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v37 - v19;
  v22 = a2 + 36;
  v21 = *(a2 + 36);
  v23 = *(v6 + *(v22 + 4));
  result = sub_1AAF8F584();
  if (v23 == 1)
  {
    if (result)
    {
      v25 = *(v8 - 8);
      v26 = v25[2];
      v26(v17, v6, v8);
      v26(&v17[*(TupleTypeMetadata2 + 48)], v6 + v21, v8);
      v27 = v43;
      (*(v43 + 16))(v14, v17, TupleTypeMetadata2);
      v41 = *(TupleTypeMetadata2 + 48);
      v28 = v25[4];
      v28(v20, v14, v8);
      v29 = v25[1];
      v29(&v14[v41], v8);
      (*(v27 + 32))(v14, v17, TupleTypeMetadata2);
      v30 = v39;
      v28(&v20[*(v39 + 36)], &v14[*(TupleTypeMetadata2 + 48)], v8);
      v29(v14, v8);
      sub_1AAF8F5C4();
      v31 = v38;
      return (*(v31 + 8))(v20, v30);
    }

    __break(1u);
  }

  else if (result)
  {
    v32 = *(v8 - 8);
    v33 = v32[2];
    v33(v17, v6, v8);
    v33(&v17[*(TupleTypeMetadata2 + 48)], v6 + v21, v8);
    v34 = v43;
    (*(v43 + 16))(v14, v17, TupleTypeMetadata2);
    v39 = *(TupleTypeMetadata2 + 48);
    v35 = v32[4];
    v20 = v11;
    v35(v11, v14, v8);
    v36 = v32[1];
    v36(&v14[v39], v8);
    (*(v34 + 32))(v14, v17, TupleTypeMetadata2);
    v30 = v41;
    v35(&v11[*(v41 + 36)], &v14[*(TupleTypeMetadata2 + 48)], v8);
    v36(v14, v8);
    sub_1AAF8FC94();
    v31 = v40;
    return (*(v31 + 8))(v20, v30);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AADE49F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *(*(a4 - 8) + 32);
  v11(a6, a1, a4);
  v13 = type metadata accessor for ChartBinRange(0, a4, a5, v12);
  result = (v11)(a6 + *(v13 + 36), a2, a4);
  *(a6 + *(v13 + 40)) = a3;
  return result;
}

uint64_t static PlottableValue.value<>(_:_:)@<X0>(uint64_t a1@<X0>, int a3@<W2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  LODWORD(v43) = a3;
  v41 = a9;
  v42 = a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v40 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - v17;
  v39 = sub_1AAF8FCA4();
  MEMORY[0x1EEE9AC00](v39);
  v20 = &v33 - v19;

  v21 = sub_1AAF8EA44();
  v42 = v23;
  v43 = v22;
  v38 = v24;
  v25 = *(type metadata accessor for ChartBinRange(0, a6, a8, v23) + 36);
  result = sub_1AAF8F584();
  if (result)
  {
    v27 = *(a6 - 8);
    v35 = v21;
    v28 = v27;
    v37 = a8;
    v29 = *(v27 + 16);
    v36 = a7;
    v29(v18, a5, a6);
    v29(&v18[*(TupleTypeMetadata2 + 48)], a5 + v25, a6);
    v30 = v40;
    (*(v14 + 16))(v40, v18, TupleTypeMetadata2);
    v34 = *(TupleTypeMetadata2 + 48);
    v31 = *(v28 + 32);
    v31(v20, v30, a6);
    v32 = *(v28 + 8);
    v32(&v30[v34], a6);
    (*(v14 + 32))(v30, v18, TupleTypeMetadata2);
    v31(&v20[*(v39 + 36)], &v30[*(TupleTypeMetadata2 + 48)], a6);
    v32(v30, a6);
    return sub_1AAE8C744(v35, v43, v38 & 1, v42, v20, a6, v36, v41);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static PlottableValue.value<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v46 = a1;
  v47 = a7;
  v45 = a8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v44 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - v17;
  v43 = sub_1AAF8FCA4();
  MEMORY[0x1EEE9AC00](v43);
  v20 = &v37 - v19;
  v22 = MEMORY[0x1EEE9AC00](v21);
  (*(v24 + 16))(&v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v46, a4, v22);
  v25 = sub_1AAF8EA64();
  v46 = v27;
  v47 = v26;
  v42 = v28;
  v29 = *(type metadata accessor for ChartBinRange(0, a3, a6, v27) + 36);
  result = sub_1AAF8F584();
  if (result)
  {
    v31 = *(a3 - 8);
    v39 = v25;
    v32 = v31;
    v41 = a6;
    v33 = *(v31 + 16);
    v40 = a5;
    v33(v18, a2, a3);
    v33(&v18[*(TupleTypeMetadata2 + 48)], a2 + v29, a3);
    v34 = v44;
    (*(v14 + 16))(v44, v18, TupleTypeMetadata2);
    v38 = *(TupleTypeMetadata2 + 48);
    v35 = *(v32 + 32);
    v35(v20, v34, a3);
    v36 = *(v32 + 8);
    v36(&v34[v38], a3);
    (*(v14 + 32))(v34, v18, TupleTypeMetadata2);
    v35(&v20[*(v43 + 36)], &v34[*(TupleTypeMetadata2 + 48)], a3);
    v36(v34, a3);
    return sub_1AAE8C744(v39, v47, v42 & 1, v46, v20, a3, v40, v45);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static PlottableValue.value<>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v46 = a7;
  v43 = a9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = *(TupleTypeMetadata2 - 8);
  v39 = TupleTypeMetadata2;
  v40 = v17;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v42 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v35 - v20;
  v41 = sub_1AAF8FCA4();
  MEMORY[0x1EEE9AC00](v41);
  v23 = &v35 - v22;
  v25 = *(type metadata accessor for ChartBinRange(0, a6, a8, v24) + 36);
  v44 = a3;
  v45 = a1;
  v47 = a2;
  sub_1AACD7304(a1, a2, a3 & 1);

  result = sub_1AAF8F584();
  if (result)
  {
    v27 = *(a6 - 8);
    v37 = a4;
    v38 = a8;
    v28 = v27;
    v29 = *(v27 + 16);
    v29(v21, a5, a6);
    v30 = v39;
    v29(&v21[*(v39 + 48)], a5 + v25, a6);
    v31 = v40;
    v32 = v42;
    (*(v40 + 16))(v42, v21, v30);
    v36 = *(v30 + 48);
    v33 = *(v28 + 32);
    v33(v23, v32, a6);
    v34 = *(v28 + 8);
    v34(&v32[v36], a6);
    (*(v31 + 32))(v32, v21, v30);
    v33(&v23[*(v41 + 36)], &v32[*(v30 + 48)], a6);
    v34(v32, a6);
    return sub_1AAE8C744(v45, v47, v44 & 1, v37, v23, a6, v46, v43);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AADE5500(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AADE5580(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(v4 + 80);
  v9 = v6 + v8;
  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_25;
  }

  v11 = v6 + (v9 & ~v8) + 1;
  v12 = 8 * v11;
  if (v11 > 3)
  {
    goto LABEL_7;
  }

  v14 = ((v10 + ~(-1 << v12)) >> v12) + 1;
  if (HIWORD(v14))
  {
    v13 = *(a1 + v11);
    if (v13)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v14 <= 0xFF)
    {
      if (v14 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_25;
      }

LABEL_14:
      v15 = (v13 - 1) << v12;
      if (v11 > 3)
      {
        v15 = 0;
      }

      if (v11)
      {
        if (v11 > 3)
        {
          LODWORD(v11) = 4;
        }

        if (v11 > 2)
        {
          if (v11 == 3)
          {
            LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v11) = *a1;
          }
        }

        else if (v11 == 1)
        {
          LODWORD(v11) = *a1;
        }

        else
        {
          LODWORD(v11) = *a1;
        }
      }

      return v7 + (v11 | v15) + 1;
    }

    v13 = *(a1 + v11);
    if (*(a1 + v11))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v17 = *(((a1 + v9) & ~v8) + v6);
  if (v17 < 2)
  {
    return 0;
  }

  return ((v17 + 2147483646) & 0x7FFFFFFF) + 1;
}

char *sub_1AADE5710(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = *(v5 + 80);
  v10 = v8 + ((v8 + v9) & ~v9) + 1;
  v11 = a3 >= v7;
  v12 = a3 - v7;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v17 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v17))
      {
        v13 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v13 = v18;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v7 < a2)
  {
    v14 = ~v7 + a2;
    if (v10 < 4)
    {
      v16 = (v14 >> (8 * v10)) + 1;
      if (v8 + ((v8 + v9) & ~v9) != -1)
      {
        v19 = v14 & ~(-1 << (8 * v10));
        v20 = result;
        bzero(result, v10);
        result = v20;
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *v20 = v19;
            if (v13 > 1)
            {
LABEL_44:
              if (v13 == 2)
              {
                *&result[v10] = v16;
              }

              else
              {
                *&result[v10] = v16;
              }

              return result;
            }
          }

          else
          {
            *v20 = v14;
            if (v13 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v20 = v19;
        v20[2] = BYTE2(v19);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v8 + ((v8 + v9) & ~v9) + 1);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v13)
    {
      result[v10] = v16;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&result[v10] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v10] = 0;
  }

  else if (v13)
  {
    result[v10] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 < 0xFE)
  {
    *((&result[v8 + v9] & ~v9) + v8) = a2 + 1;
  }

  else
  {
    v21 = *(v5 + 56);

    return v21();
  }

  return result;
}

void sub_1AADE595C(void (*a1)(__int128 *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1AAD41148(0, v4, 0);
    v7 = v16;
    v8 = *(type metadata accessor for CalendarBinningUnit(0) - 8);
    v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    while (1)
    {
      a1(&v15, v9);
      if (v3)
      {
        break;
      }

      v11 = v15;
      v16 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        v14 = v15;
        sub_1AAD41148((v12 > 1), v13 + 1, 1);
        v11 = v14;
        v7 = v16;
      }

      *(v7 + 16) = v13 + 1;
      *(v7 + 16 * v13 + 32) = v11;
      v9 += v10;
      if (!--v4)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1AADE5AC4(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1AACEF664(0, v5, 0);
    v8 = v16;
    for (i = (a3 + 40); ; i += 2)
    {
      v10 = *i;
      v14[0] = *(i - 1);
      v14[1] = v10;

      (a1)(&v15, v14);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v11 = v15;
      v16 = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1AACEF664((v12 > 1), v13 + 1, 1);
        v8 = v16;
      }

      *(v8 + 16) = v13 + 1;
      *(v8 + 8 * v13 + 32) = v11;
      if (!--v5)
      {
        return;
      }
    }

    __break(1u);
  }
}