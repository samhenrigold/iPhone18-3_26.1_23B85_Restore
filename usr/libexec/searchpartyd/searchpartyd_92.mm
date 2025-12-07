double sub_100A21B68(uint64_t a1)
{
  *a1 = 2;
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
  *(a1 + 168) = 0;
  result = 1.28822975e-231;
  *(a1 + 176) = xmmword_1013AAD80;
  *(a1 + 192) = 0x2000000000000000;
  return result;
}

void *sub_100A21BB8(void *result)
{
  v1 = result[3] & 0xCFFFFFFFFFFFFFFFLL;
  v2 = result[13] & 0xCFFFFFFFFFFFFFFFLL;
  v3 = result[15] & 0xCFFFFFFFFFFFFFFFLL;
  v4 = result[17] & 0xCFFFFFFFFFFFFFFFLL;
  v5 = result[19] & 0xCFFFFFFFFFFFFFFFLL;
  v6 = result[22] & 0xCFFFFFFFFFFFFFFFLL;
  v7 = result[24] & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  result[1] &= 0xCFFFFFFFFFFFFFFFLL;
  result[3] = v1;
  result[13] = v2;
  result[15] = v3;
  result[17] = v4;
  result[19] = v5;
  result[22] = v6;
  result[24] = v7;
  return result;
}

void *sub_100A21C20(void *result)
{
  v1 = result[3] & 0xCFFFFFFFFFFFFFFFLL;
  v2 = result[13] & 0xCFFFFFFFFFFFFFFFLL;
  v3 = result[15] & 0xCFFFFFFFFFFFFFFFLL;
  v4 = result[17] & 0xCFFFFFFFFFFFFFFFLL;
  v5 = result[19] & 0xCFFFFFFFFFFFFFFFLL;
  v6 = result[22] | 0x3000000000000000;
  v7 = result[24] & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  result[1] &= 0xCFFFFFFFFFFFFFFFLL;
  result[3] = v1;
  result[13] = v2;
  result[15] = v3;
  result[17] = v4;
  result[19] = v5;
  result[22] = v6;
  result[24] = v7;
  return result;
}

double sub_100A21C88(uint64_t a1)
{
  *a1 = 1;
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
  *(a1 + 168) = 0;
  result = 1.28822975e-231;
  *(a1 + 176) = xmmword_1013AAD80;
  *(a1 + 192) = 0x2000000000000000;
  return result;
}

uint64_t sub_100A21CD8(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2 >> 60 != 15)
  {
    sub_100016590(result, a2);
    sub_100016590(a3, a4);

    return sub_100016590(a5, a6);
  }

  return result;
}

void *sub_100A21D44(void *result)
{
  v1 = result[3] & 0xCFFFFFFFFFFFFFFFLL;
  v2 = result[13] & 0xCFFFFFFFFFFFFFFFLL;
  v3 = result[15] & 0xCFFFFFFFFFFFFFFFLL;
  v4 = result[17] & 0xCFFFFFFFFFFFFFFFLL;
  v5 = result[19] & 0xCFFFFFFFFFFFFFFFLL;
  v6 = result[22] & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  v7 = result[24] & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  result[1] &= 0xCFFFFFFFFFFFFFFFLL;
  result[3] = v1;
  result[13] = v2;
  result[15] = v3;
  result[17] = v4;
  result[19] = v5;
  result[22] = v6;
  result[24] = v7;
  return result;
}

void *sub_100A21DB0(void *result)
{
  v1 = result[3] & 0xCFFFFFFFFFFFFFFFLL;
  v2 = result[13] & 0xCFFFFFFFFFFFFFFFLL;
  v3 = result[15] & 0xCFFFFFFFFFFFFFFFLL;
  v4 = result[17] & 0xCFFFFFFFFFFFFFFFLL;
  v5 = result[19] & 0xCFFFFFFFFFFFFFFFLL;
  v6 = result[22] & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  v7 = result[24] & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  result[1] &= 0xCFFFFFFFFFFFFFFFLL;
  result[3] = v1;
  result[13] = v2;
  result[15] = v3;
  result[17] = v4;
  result[19] = v5;
  result[22] = v6;
  result[24] = v7;
  return result;
}

double sub_100A21E1C(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_10138BBF0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
  return result;
}

void *sub_100A21E48(void *result)
{
  v1 = result[3] & 0xCFFFFFFFFFFFFFFFLL;
  v2 = result[13] & 0xCFFFFFFFFFFFFFFFLL;
  v3 = result[15] & 0xCFFFFFFFFFFFFFFFLL;
  v4 = result[17] & 0xCFFFFFFFFFFFFFFFLL;
  v5 = result[19] & 0xCFFFFFFFFFFFFFFFLL;
  v6 = result[22] & 0xCFFFFFFFFFFFFFFFLL;
  v7 = result[24] & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  result[1] &= 0xCFFFFFFFFFFFFFFFLL;
  result[3] = v1;
  result[13] = v2;
  result[15] = v3;
  result[17] = v4;
  result[19] = v5;
  result[22] = v6;
  result[24] = v7;
  return result;
}

void *sub_100A21EB0(void *result)
{
  v1 = result[3] & 0xCFFFFFFFFFFFFFFFLL;
  v2 = result[13] & 0xCFFFFFFFFFFFFFFFLL;
  v3 = result[15] & 0xCFFFFFFFFFFFFFFFLL;
  v4 = result[17] & 0xCFFFFFFFFFFFFFFFLL;
  v5 = result[19] & 0xCFFFFFFFFFFFFFFFLL;
  v6 = result[24] & 0xCFFFFFFFFFFFFFFFLL;
  v7 = result[22] | 0x3000000000000000;
  result[1] &= 0xCFFFFFFFFFFFFFFFLL;
  result[3] = v1;
  result[13] = v2;
  result[15] = v3;
  result[17] = v4;
  result[19] = v5;
  result[22] = v7;
  result[24] = v6;
  return result;
}

void *sub_100A21F14(void *result)
{
  v1 = result[3] & 0xCFFFFFFFFFFFFFFFLL;
  v2 = result[13] & 0xCFFFFFFFFFFFFFFFLL;
  v3 = result[15] & 0xCFFFFFFFFFFFFFFFLL;
  v4 = result[17] & 0xCFFFFFFFFFFFFFFFLL;
  v5 = result[19] & 0xCFFFFFFFFFFFFFFFLL;
  v6 = result[24] & 0xCFFFFFFFFFFFFFFFLL;
  v7 = result[22] & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  result[1] &= 0xCFFFFFFFFFFFFFFFLL;
  result[3] = v1;
  result[13] = v2;
  result[15] = v3;
  result[17] = v4;
  result[19] = v5;
  result[22] = v7;
  result[24] = v6;
  return result;
}

void *sub_100A21F7C(void *result)
{
  v1 = result[3] & 0xCFFFFFFFFFFFFFFFLL;
  v2 = result[13] & 0xCFFFFFFFFFFFFFFFLL;
  v3 = result[15] & 0xCFFFFFFFFFFFFFFFLL;
  v4 = result[17] & 0xCFFFFFFFFFFFFFFFLL;
  v5 = result[19] & 0xCFFFFFFFFFFFFFFFLL;
  v6 = result[24] & 0xCFFFFFFFFFFFFFFFLL;
  v7 = result[22] & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  result[1] &= 0xCFFFFFFFFFFFFFFFLL;
  result[3] = v1;
  result[13] = v2;
  result[15] = v3;
  result[17] = v4;
  result[19] = v5;
  result[22] = v7;
  result[24] = v6;
  return result;
}

void *sub_100A21FE4(void *result)
{
  v1 = result[3] & 0xCFFFFFFFFFFFFFFFLL;
  v2 = result[13] & 0xCFFFFFFFFFFFFFFFLL;
  v3 = result[15] & 0xCFFFFFFFFFFFFFFFLL;
  v4 = result[17] & 0xCFFFFFFFFFFFFFFFLL;
  v5 = result[19] & 0xCFFFFFFFFFFFFFFFLL;
  v6 = result[22] & 0xCFFFFFFFFFFFFFFFLL;
  v7 = result[24] & 0xCFFFFFFFFFFFFFFFLL;
  result[1] &= 0xCFFFFFFFFFFFFFFFLL;
  result[3] = v1;
  result[13] = v2;
  result[15] = v3;
  result[17] = v4;
  result[19] = v5;
  result[22] = v6;
  result[24] = v7;
  return result;
}

double sub_100A22048(uint64_t a1)
{
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = xmmword_1013AAD80;
  *(a1 + 192) = 0x2000000000000000;
  return result;
}

unint64_t sub_100A220CC()
{
  result = qword_1016B1B70;
  if (!qword_1016B1B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1B70);
  }

  return result;
}

unint64_t sub_100A22174()
{
  result = qword_1016B1B78;
  if (!qword_1016B1B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1B78);
  }

  return result;
}

unint64_t sub_100A22270()
{
  result = qword_1016B1B80;
  if (!qword_1016B1B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1B80);
  }

  return result;
}

uint64_t sub_100A2236C(uint64_t a1)
{
  v1 = (*(a1 + 192) >> 58) & 0xC | (*(a1 + 176) >> 60) & 3;
  if (v1 <= 8)
  {
    return v1;
  }

  else
  {
    return (*a1 + 9);
  }
}

uint64_t sub_100A22398@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11)
{
  v12 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v12)
    {
      v13 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v12 != 2)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v15 = *(result + 16);
  v14 = *(result + 24);
  v16 = __OFSUB__(v14, v15);
  v13 = v14 - v15;
  if (v16)
  {
    __break(1u);
LABEL_8:
    LODWORD(v13) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      goto LABEL_43;
    }

    v13 = v13;
  }

LABEL_10:
  if (v13 != 89)
  {
    goto LABEL_46;
  }

  v17 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v17)
    {
      v18 = BYTE6(a4);
      goto LABEL_20;
    }

LABEL_18:
    LODWORD(v18) = HIDWORD(a3) - a3;
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      v18 = v18;
      goto LABEL_20;
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v17 != 2)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v20 = *(a3 + 16);
  v19 = *(a3 + 24);
  v16 = __OFSUB__(v19, v20);
  v18 = v19 - v20;
  if (v16)
  {
    __break(1u);
    goto LABEL_18;
  }

LABEL_20:
  if (v18 != 32)
  {
    goto LABEL_47;
  }

  v21 = a8 >> 62;
  if ((a8 >> 62) <= 1)
  {
    if (!v21)
    {
      v22 = BYTE6(a8);
      goto LABEL_30;
    }

LABEL_28:
    LODWORD(v22) = HIDWORD(a7) - a7;
    if (!__OFSUB__(HIDWORD(a7), a7))
    {
      v22 = v22;
      goto LABEL_30;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v21 != 2)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v24 = *(a7 + 16);
  v23 = *(a7 + 24);
  v16 = __OFSUB__(v23, v24);
  v22 = v23 - v24;
  if (v16)
  {
    __break(1u);
    goto LABEL_28;
  }

LABEL_30:
  if (v22 != 100)
  {
    goto LABEL_48;
  }

  v25 = a6 >> 62;
  if ((a6 >> 62) <= 1)
  {
    if (!v25)
    {
      v26 = BYTE6(a6);
      goto LABEL_40;
    }

LABEL_38:
    LODWORD(v26) = HIDWORD(a5) - a5;
    if (!__OFSUB__(HIDWORD(a5), a5))
    {
      v26 = v26;
      goto LABEL_40;
    }

    goto LABEL_45;
  }

  if (v25 != 2)
  {
    goto LABEL_49;
  }

  v28 = *(a5 + 16);
  v27 = *(a5 + 24);
  v16 = __OFSUB__(v27, v28);
  v26 = v27 - v28;
  if (v16)
  {
    __break(1u);
    goto LABEL_38;
  }

LABEL_40:
  if (v26 == 60)
  {
    *&v43 = result;
    *(&v43 + 1) = a2;
    *&v44 = a3;
    *(&v44 + 1) = a4;
    *&v45 = a5;
    *(&v45 + 1) = a6;
    *&v46 = a7;
    *(&v46 + 1) = a8;
    v47 = a10;
    v48 = a11;
    v29 = result;
    sub_100A21DB0(&v43);
    sub_100017D5C(v29, a2);
    sub_100017D5C(a3, a4);
    sub_100017D5C(a5, a6);
    sub_100017D5C(a7, a8);
    sub_10002E98C(a10, *(&a10 + 1));
    result = sub_10002E98C(a11, *(&a11 + 1));
    v36 = v54;
    *(a9 + 160) = v53;
    *(a9 + 176) = v36;
    *(a9 + 192) = v55;
    v37 = v50;
    *(a9 + 96) = v49;
    *(a9 + 112) = v37;
    v38 = v52;
    *(a9 + 128) = v51;
    *(a9 + 144) = v38;
    v39 = v46;
    *(a9 + 32) = v45;
    *(a9 + 48) = v39;
    v40 = v48;
    *(a9 + 64) = v47;
    *(a9 + 80) = v40;
    v41 = v44;
    *a9 = v43;
    *(a9 + 16) = v41;
    return result;
  }

LABEL_49:
  __break(1u);
  return result;
}

double sub_100A225F0(uint64_t a1)
{
  *a1 = 1;
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
  *(a1 + 168) = 0;
  result = 1.49166815e-154;
  *(a1 + 176) = xmmword_10139BF70;
  *(a1 + 192) = 0x2000000000000000;
  return result;
}

void *sub_100A22640(void *result)
{
  v1 = result[3] & 0xCFFFFFFFFFFFFFFFLL;
  v2 = result[11] & 0xCFFFFFFFFFFFFFFFLL;
  v3 = result[13] & 0xCFFFFFFFFFFFFFFFLL;
  v4 = result[15] & 0xCFFFFFFFFFFFFFFFLL;
  v5 = result[17] & 0xCFFFFFFFFFFFFFFFLL;
  v6 = result[19] & 0xCFFFFFFFFFFFFFFFLL;
  v7 = result[22] & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  v8 = result[24] & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  result[1] &= 0xCFFFFFFFFFFFFFFFLL;
  result[3] = v1;
  result[11] = v2;
  result[13] = v3;
  result[15] = v4;
  result[17] = v5;
  result[19] = v6;
  result[22] = v7;
  result[24] = v8;
  return result;
}

void *sub_100A226B8(void *result)
{
  v1 = result[3] & 0xCFFFFFFFFFFFFFFFLL;
  v2 = result[11] & 0xCFFFFFFFFFFFFFFFLL;
  v3 = result[13] & 0xCFFFFFFFFFFFFFFFLL;
  v4 = result[15] & 0xCFFFFFFFFFFFFFFFLL;
  v5 = result[17] & 0xCFFFFFFFFFFFFFFFLL;
  v6 = result[19] & 0xCFFFFFFFFFFFFFFFLL;
  v7 = result[22] & 0xCFFFFFFFFFFFFFFFLL;
  v8 = result[24] & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  result[1] &= 0xCFFFFFFFFFFFFFFFLL;
  result[3] = v1;
  result[11] = v2;
  result[13] = v3;
  result[15] = v4;
  result[17] = v5;
  result[19] = v6;
  result[22] = v7;
  result[24] = v8;
  return result;
}

void *sub_100A2272C(void *result)
{
  v1 = result[3] & 0xCFFFFFFFFFFFFFFFLL;
  v2 = result[11] & 0xCFFFFFFFFFFFFFFFLL;
  v3 = result[13] & 0xCFFFFFFFFFFFFFFFLL;
  v4 = result[15] & 0xCFFFFFFFFFFFFFFFLL;
  v5 = result[17] & 0xCFFFFFFFFFFFFFFFLL;
  v6 = result[19] & 0xCFFFFFFFFFFFFFFFLL;
  v7 = result[22] | 0x3000000000000000;
  v8 = result[24] & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  result[1] &= 0xCFFFFFFFFFFFFFFFLL;
  result[3] = v1;
  result[11] = v2;
  result[13] = v3;
  result[15] = v4;
  result[17] = v5;
  result[19] = v6;
  result[22] = v7;
  result[24] = v8;
  return result;
}

void *sub_100A227A0(void *result)
{
  v1 = result[3] & 0xCFFFFFFFFFFFFFFFLL;
  v2 = result[11] & 0xCFFFFFFFFFFFFFFFLL;
  v3 = result[13] & 0xCFFFFFFFFFFFFFFFLL;
  v4 = result[15] & 0xCFFFFFFFFFFFFFFFLL;
  v5 = result[17] & 0xCFFFFFFFFFFFFFFFLL;
  v6 = result[19] & 0xCFFFFFFFFFFFFFFFLL;
  v7 = result[22] & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  v8 = result[24] & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  result[1] &= 0xCFFFFFFFFFFFFFFFLL;
  result[3] = v1;
  result[11] = v2;
  result[13] = v3;
  result[15] = v4;
  result[17] = v5;
  result[19] = v6;
  result[22] = v7;
  result[24] = v8;
  return result;
}

void *sub_100A22818(void *result)
{
  v1 = result[3] & 0xCFFFFFFFFFFFFFFFLL;
  v2 = result[11] & 0xCFFFFFFFFFFFFFFFLL;
  v3 = result[13] & 0xCFFFFFFFFFFFFFFFLL;
  v4 = result[15] & 0xCFFFFFFFFFFFFFFFLL;
  v5 = result[17] & 0xCFFFFFFFFFFFFFFFLL;
  v6 = result[19] & 0xCFFFFFFFFFFFFFFFLL;
  v7 = result[22] & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  v8 = result[24] & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  result[1] &= 0xCFFFFFFFFFFFFFFFLL;
  result[3] = v1;
  result[11] = v2;
  result[13] = v3;
  result[15] = v4;
  result[17] = v5;
  result[19] = v6;
  result[22] = v7;
  result[24] = v8;
  return result;
}

void *sub_100A22890(void *result)
{
  v1 = result[3] & 0xCFFFFFFFFFFFFFFFLL;
  v2 = result[11] & 0xCFFFFFFFFFFFFFFFLL;
  v3 = result[13] & 0xCFFFFFFFFFFFFFFFLL;
  v4 = result[15] & 0xCFFFFFFFFFFFFFFFLL;
  v5 = result[17] & 0xCFFFFFFFFFFFFFFFLL;
  v6 = result[19] & 0xCFFFFFFFFFFFFFFFLL;
  v7 = result[22] & 0xCFFFFFFFFFFFFFFFLL;
  v8 = result[24] & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  result[1] &= 0xCFFFFFFFFFFFFFFFLL;
  result[3] = v1;
  result[11] = v2;
  result[13] = v3;
  result[15] = v4;
  result[17] = v5;
  result[19] = v6;
  result[22] = v7;
  result[24] = v8;
  return result;
}

void *sub_100A22904(void *result)
{
  v1 = result[3] & 0xCFFFFFFFFFFFFFFFLL;
  v2 = result[11] & 0xCFFFFFFFFFFFFFFFLL;
  v3 = result[13] & 0xCFFFFFFFFFFFFFFFLL;
  v4 = result[15] & 0xCFFFFFFFFFFFFFFFLL;
  v5 = result[17] & 0xCFFFFFFFFFFFFFFFLL;
  v6 = result[19] & 0xCFFFFFFFFFFFFFFFLL;
  v7 = result[24] & 0xCFFFFFFFFFFFFFFFLL;
  v8 = result[22] | 0x3000000000000000;
  result[1] &= 0xCFFFFFFFFFFFFFFFLL;
  result[3] = v1;
  result[11] = v2;
  result[13] = v3;
  result[15] = v4;
  result[17] = v5;
  result[19] = v6;
  result[22] = v8;
  result[24] = v7;
  return result;
}

void *sub_100A22974(void *result)
{
  v1 = result[3] & 0xCFFFFFFFFFFFFFFFLL;
  v2 = result[11] & 0xCFFFFFFFFFFFFFFFLL;
  v3 = result[13] & 0xCFFFFFFFFFFFFFFFLL;
  v4 = result[15] & 0xCFFFFFFFFFFFFFFFLL;
  v5 = result[17] & 0xCFFFFFFFFFFFFFFFLL;
  v6 = result[19] & 0xCFFFFFFFFFFFFFFFLL;
  v7 = result[24] & 0xCFFFFFFFFFFFFFFFLL;
  v8 = result[22] & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  result[1] &= 0xCFFFFFFFFFFFFFFFLL;
  result[3] = v1;
  result[11] = v2;
  result[13] = v3;
  result[15] = v4;
  result[17] = v5;
  result[19] = v6;
  result[22] = v8;
  result[24] = v7;
  return result;
}

void *sub_100A229E8(void *result)
{
  v1 = result[3] & 0xCFFFFFFFFFFFFFFFLL;
  v2 = result[11] & 0xCFFFFFFFFFFFFFFFLL;
  v3 = result[13] & 0xCFFFFFFFFFFFFFFFLL;
  v4 = result[15] & 0xCFFFFFFFFFFFFFFFLL;
  v5 = result[17] & 0xCFFFFFFFFFFFFFFFLL;
  v6 = result[19] & 0xCFFFFFFFFFFFFFFFLL;
  v7 = result[24] & 0xCFFFFFFFFFFFFFFFLL;
  v8 = result[22] & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  result[1] &= 0xCFFFFFFFFFFFFFFFLL;
  result[3] = v1;
  result[11] = v2;
  result[13] = v3;
  result[15] = v4;
  result[17] = v5;
  result[19] = v6;
  result[22] = v8;
  result[24] = v7;
  return result;
}

void *sub_100A22A5C(void *result)
{
  v1 = result[3] & 0xCFFFFFFFFFFFFFFFLL;
  v2 = result[11] & 0xCFFFFFFFFFFFFFFFLL;
  v3 = result[13] & 0xCFFFFFFFFFFFFFFFLL;
  v4 = result[15] & 0xCFFFFFFFFFFFFFFFLL;
  v5 = result[17] & 0xCFFFFFFFFFFFFFFFLL;
  v6 = result[19] & 0xCFFFFFFFFFFFFFFFLL;
  v7 = result[22] & 0xCFFFFFFFFFFFFFFFLL;
  v8 = result[24] & 0xCFFFFFFFFFFFFFFFLL;
  result[1] &= 0xCFFFFFFFFFFFFFFFLL;
  result[3] = v1;
  result[11] = v2;
  result[13] = v3;
  result[15] = v4;
  result[17] = v5;
  result[19] = v6;
  result[22] = v7;
  result[24] = v8;
  return result;
}

double sub_100A22ACC(uint64_t a1)
{
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = xmmword_10139BF70;
  *(a1 + 192) = 0x2000000000000000;
  return result;
}

uint64_t sub_100A22AFC(uint64_t a1)
{
  v1 = (*(a1 + 192) >> 58) & 0xC | (*(a1 + 176) >> 60) & 3;
  if (v1 <= 8)
  {
    return v1;
  }

  else
  {
    return (*a1 + 9);
  }
}

__n128 sub_100A22B28(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_100A22B6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFFF7 && *(a1 + 200))
  {
    return (*a1 + 65527);
  }

  v3 = ((((*(a1 + 192) >> 46) & 0xC000 | *(a1 + 182) & 0x3FFF) >> 12) | (16 * ((*(a1 + 24) >> 58) & 0xC | (*(a1 + 8) >> 60) & 3 | *(a1 + 111) & 0x30 | (*(a1 + 120) >> 54) & 0xC0 | (*(a1 + 136) >> 52) & 0x300 | (*(a1 + 152) >> 50) & 0xC00))) ^ 0xFFFF;
  if (v3 >= 0xFFF6)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100A22C2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFFF6)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 65527;
    if (a3 >= 0xFFF7)
    {
      *(result + 200) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFFF7)
    {
      *(result + 200) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 0xFFF | (-a2 << 12);
      *result = 0;
      *(result + 8) = ((-a2 >> 4) & 3) << 60;
      *(result + 16) = 0;
      *(result + 24) = (v3 << 58) & 0x3000000000000000;
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *(result + 64) = 0u;
      *(result + 80) = 0u;
      *(result + 96) = 0;
      *(result + 104) = (v3 << 56) & 0x3000000000000000;
      *(result + 112) = 0;
      *(result + 120) = (v3 << 54) & 0x3000000000000000;
      *(result + 128) = 0;
      *(result + 136) = (v3 << 52) & 0x3000000000000000;
      *(result + 144) = 0;
      *(result + 152) = (v3 << 50) & 0x3000000000000000;
      *(result + 160) = 0;
      *(result + 168) = 0;
      *(result + 176) = (v3 << 48) & 0x3000000000000000;
      *(result + 184) = 0;
      *(result + 192) = (v3 << 46) & 0x3000000000000000;
    }
  }

  return result;
}

uint64_t sub_100A22D20(uint64_t result, unsigned int a2)
{
  if (a2 < 9)
  {
    v2 = *(result + 24) & 0xCFFFFFFFFFFFFFFFLL;
    v3 = *(result + 104) & 0xCFFFFFFFFFFFFFFFLL;
    v4 = *(result + 120) & 0xCFFFFFFFFFFFFFFFLL;
    v5 = *(result + 136) & 0xCFFFFFFFFFFFFFFFLL;
    v6 = *(result + 152) & 0xCFFFFFFFFFFFFFFFLL;
    v7 = *(result + 176) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 3) << 60);
    v8 = *(result + 192) & 0xCFFFFFFFFFFFFFFFLL | (((a2 >> 2) & 3) << 60);
    *(result + 8) &= 0xCFFFFFFFFFFFFFFFLL;
    *(result + 24) = v2;
    *(result + 104) = v3;
    *(result + 120) = v4;
    *(result + 136) = v5;
    *(result + 152) = v6;
    *(result + 176) = v7;
    *(result + 192) = v8;
  }

  else
  {
    *result = a2 - 9;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0u;
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 168) = 0;
    *(result + 176) = xmmword_1013AAD80;
    *(result + 192) = 0x2000000000000000;
  }

  return result;
}

uint64_t sub_100A22DF0@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v5 = __chkstk_darwin(v4 - 8);
  v38 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v36 = &v35 - v8;
  __chkstk_darwin(v7);
  v10 = &v35 - v9;
  v11 = type metadata accessor for MACAddress();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MACAddress.init(data:type:)();
  v39 = *(v12 + 48);
  result = v39(v10, 1, v11);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  v37 = v12;
  v41 = *(v12 + 32);
  v41(v14, v10, v11);
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  v19 = OBJC_IVAR____TtC12searchpartyd10Peripheral_advertisementData;
  swift_beginAccess();
  v20 = *(v2 + v19);
  if (!*(v20 + 16))
  {

LABEL_14:
    v32 = a1;
    v33 = v14;
    return (v41)(v32, v33, v11);
  }

  v40 = a1;

  v21 = sub_100771D58(v16, v18);
  v23 = v22;

  if ((v23 & 1) == 0)
  {

    goto LABEL_13;
  }

  sub_100013894(*(v20 + 56) + 32 * v21, v42);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    a1 = v40;
    goto LABEL_14;
  }

  v24 = *(v2 + v19);
  v25 = v39;
  if (*(v24 + 16))
  {

    v26 = sub_100771D58(0xD000000000000018, 0x8000000101367B40);
    if (v27)
    {
      sub_100013894(*(v24 + 56) + 32 * v26, v42);

      if (swift_dynamicCast())
      {
        v28 = v36;
        MACAddress.init(data:type:)();
        v29 = v25(v28, 1, v11);
        v30 = v40;
        if (v29 == 1)
        {
          v41(v40, v14, v11);
          result = v25(v28, 1, v11);
          if (result != 1)
          {
            v31 = v28;
            return sub_10000B3A8(v31, &qword_1016A40D0, &unk_10138BE70);
          }

          return result;
        }

        (*(v37 + 8))(v14, v11);
        v32 = v30;
        v33 = v28;
        return (v41)(v32, v33, v11);
      }
    }

    else
    {
    }
  }

  v34 = v38;
  MACAddress.init(data:type:)();
  if (v25(v34, 1, v11) != 1)
  {
    (*(v37 + 8))(v14, v11);
    v32 = v40;
    v33 = v34;
    return (v41)(v32, v33, v11);
  }

  v41(v40, v14, v11);
  result = v25(v34, 1, v11);
  if (result != 1)
  {
    v31 = v34;
    return sub_10000B3A8(v31, &qword_1016A40D0, &unk_10138BE70);
  }

  return result;
}

id sub_100A2327C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(a1 + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject) maximumWriteValueLengthForType:1];
  *a2 = result;
  return result;
}

id sub_100A232C4()
{
  if (qword_101695518 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177CEA8);
  sub_100A245E8(0x74696E696564, 0xE600000000000000);
  v3.receiver = v0;
  v3.super_class = type metadata accessor for Peripheral(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for Peripheral(uint64_t a1)
{
  result = qword_1016B1C10;
  if (!qword_1016B1C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100A23580()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *&v0[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject];
  v6 = [v5 delegate];
  if (!v6 || (v7 = v6, swift_unknownObjectRelease(), v7 != v0))
  {
    if (qword_101695518 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177CEA8);
    v9 = v0;
    v19 = Logger.logObject.getter();
    v10 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v19, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136446210;
      v13 = [v5 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100A29AD0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      (*(v2 + 8))(v4, v1);
      v17 = sub_1000136BC(v14, v16, &v20);

      *(v11 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v19, v10, "verifyIntegrity: Peripheral has mismatched delegate! %{public}s", v11, 0xCu);
      sub_100007BAC(v12);
    }

    else
    {
      v18 = v19;
    }
  }
}

uint64_t sub_100A23844(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a2, v4);
  v8 = OBJC_IVAR____TtC12searchpartyd10Peripheral_lastSeen;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v8, v7, v4);
  return swift_endAccess();
}

uint64_t sub_100A23960(uint64_t a1)
{
  swift_getObjectType();
  sub_100A23580();
  return OSAllocatedUnfairLock.callAsFunction<A>(_:)();
}

uint64_t sub_100A239E4(uint64_t a1)
{
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  v8 = &type metadata for Data;
  v7[0] = MACAddress.data.getter();
  v7[1] = v4;
  swift_beginAccess();
  sub_1001DDD30(v7, v1, v3);
  swift_endAccess();
  v5 = MACAddress.type.getter();
  v8 = &type metadata for MACAddress.AddressType;
  LOBYTE(v7[0]) = v5 & 1;
  swift_beginAccess();
  sub_1001DDD30(v7, 0xD000000000000018, 0x8000000101367B40);
  return swift_endAccess();
}

uint64_t sub_100A23AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC12searchpartyd10Peripheral_injectedName);
  *v3 = a2;
  v3[1] = a3;
}

uint64_t sub_100A23B3C(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v38 = OBJC_IVAR____TtC12searchpartyd10Peripheral_advertisementData;
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v37 = v6;
  while (v5)
  {
    v11 = v7;
LABEL_16:
    v14 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v15 = v14 | (v11 << 6);
    v16 = (*(a1 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    sub_100013894(*(a1 + 56) + 32 * v15, v40);
    *&v41 = v18;
    *(&v41 + 1) = v17;
    sub_1001E6224(v40, &v42);

LABEL_17:
    v44 = v41;
    v45[0] = v42;
    v45[1] = v43;
    v19 = *(&v41 + 1);
    if (!*(&v41 + 1))
    {
    }

    v20 = v44;
    swift_beginAccess();
    sub_1001E6224(v45, &v41);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = *(a2 + v38);
    v22 = v46;
    *(a2 + v38) = 0x8000000000000000;
    v23 = sub_100771D58(v20, v19);
    v25 = v22[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      goto LABEL_31;
    }

    v29 = v24;
    if (v22[3] < v28)
    {
      sub_100FE8514(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_100771D58(v20, v19);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_33;
      }

LABEL_23:
      if (v29)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_23;
    }

    v34 = v23;
    sub_10100600C();
    v23 = v34;
    if (v29)
    {
LABEL_4:
      v8 = v23;

      v9 = v46;
      v10 = (v46[7] + 32 * v8);
      sub_100007BAC(v10);
      sub_1001E6224(&v41, v10);
      goto LABEL_5;
    }

LABEL_24:
    v9 = v46;
    v46[(v23 >> 6) + 8] |= 1 << v23;
    v31 = (v9[6] + 16 * v23);
    *v31 = v20;
    v31[1] = v19;
    sub_1001E6224(&v41, (v9[7] + 32 * v23));
    v32 = v9[2];
    v27 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v27)
    {
      goto LABEL_32;
    }

    v9[2] = v33;
LABEL_5:
    *(a2 + v38) = v9;

    swift_endAccess();
    v6 = v37;
  }

  if (v6 <= v7 + 1)
  {
    v12 = v7 + 1;
  }

  else
  {
    v12 = v6;
  }

  v13 = v12 - 1;
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {
      v5 = 0;
      v42 = 0u;
      v43 = 0u;
      v7 = v13;
      v41 = 0u;
      goto LABEL_17;
    }

    v5 = *(v2 + 8 * v11);
    ++v7;
    if (v5)
    {
      v7 = v11;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100A23E7C()
{
  sub_100A29AD0(&qword_1016B1CF8, type metadata accessor for Peripheral, &protocol conformance descriptor for NSObject);
  swift_getObjectType();
  v4 = v0;
  CustomStringConvertible.typeDescription.getter();
  type metadata accessor for Peripheral(0);
  CustomStringConvertible<>.addressDescription.getter();
  v1 = [*(v0 + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject) delegate];
  if (v1)
  {
    v4 = 30768;
    sub_1000DFAD8();
    v2._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
    String.append(_:)(v2);
    swift_unknownObjectRelease();
  }

  __chkstk_darwin(v1);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();

  return v4;
}

void sub_100A2404C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, void *a8@<X8>)
{
  v54._countAndFlagsBits = a6;
  v54._object = a7;
  v55 = a4;
  v52 = a2;
  v53 = a3;
  v59 = a8;
  v10 = type metadata accessor for MACAddress();
  v11 = *(v10 - 8);
  v57 = v10;
  v58 = v11;
  __chkstk_darwin(v10);
  v56 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = 0;
  v61 = 0xE000000000000000;
  _StringGuts.grow(_:)(92);
  v62 = v60;
  v63 = v61;
  v21._countAndFlagsBits = 60;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = a1;
  v22._object = v52;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 8250;
  v23._object = 0xE200000000000000;
  String.append(_:)(v23);
  v24._countAndFlagsBits = v53;
  v24._object = v55;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 32;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
  v55 = *(a5 + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject);
  v26 = [v55 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100A29AD0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v27);

  (*(v18 + 8))(v20, v17);
  v28._object = 0x8000000101367B80;
  v28._countAndFlagsBits = 0xD000000000000027;
  String.append(_:)(v28);
  String.append(_:)(v54);
  v29._countAndFlagsBits = 0x65537473616C205DLL;
  v29._object = 0xEC000000203A6E65;
  String.append(_:)(v29);
  v30 = OBJC_IVAR____TtC12searchpartyd10Peripheral_lastSeen;
  swift_beginAccess();
  (*(v14 + 16))(v16, a5 + v30, v13);
  sub_100A29AD0(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v31);

  (*(v14 + 8))(v16, v13);
  v32._countAndFlagsBits = 0x203A43414D20;
  v32._object = 0xE600000000000000;
  String.append(_:)(v32);
  v33 = v56;
  sub_100A22DF0(v56);
  sub_100A29AD0(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
  v34 = v57;
  v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v35);

  (*(v58 + 8))(v33, v34);
  v36._countAndFlagsBits = 0x203A656D616E20;
  v36._object = 0xE700000000000000;
  String.append(_:)(v36);
  if (*(a5 + OBJC_IVAR____TtC12searchpartyd10Peripheral_injectedName + 8))
  {
    v37 = *(a5 + OBJC_IVAR____TtC12searchpartyd10Peripheral_injectedName);
    v38 = *(a5 + OBJC_IVAR____TtC12searchpartyd10Peripheral_injectedName + 8);
    v39 = v55;
LABEL_5:

    goto LABEL_6;
  }

  v39 = v55;
  v40 = [v55 name];
  if (v40)
  {
    v41 = v40;
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v42;

    goto LABEL_5;
  }

  v37 = 0;
  v38 = 0xE000000000000000;
LABEL_6:
  v43._countAndFlagsBits = v37;
  v43._object = v38;
  String.append(_:)(v43);

  v44._countAndFlagsBits = 0x203A6570797420;
  v44._object = 0xE700000000000000;
  String.append(_:)(v44);
  v45 = [v39 connectedTransport];
  if (v45 == 2)
  {
    v46 = 0xEA00000000007967;
    v47 = 0x72656E45776F6C2ELL;
  }

  else
  {
    v46 = 0xE800000000000000;
    if (v45 == 1)
    {
      v47 = 0x63697373616C632ELL;
    }

    else
    {
      v47 = 0x6E776F6E6B6E752ELL;
    }
  }

  v48 = v46;
  String.append(_:)(*&v47);

  v49._countAndFlagsBits = 62;
  v49._object = 0xE100000000000000;
  String.append(_:)(v49);
  v50 = v63;
  v51 = v59;
  *v59 = v62;
  v51[1] = v50;
}

void sub_100A245E8(uint64_t a1, unint64_t a2)
{
  v62 = a1;
  v4 = type metadata accessor for MACAddress();
  v69 = *(v4 - 8);
  __chkstk_darwin(v4);
  v67 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v65 = *(v6 - 8);
  v66 = v6;
  __chkstk_darwin(v6);
  v64 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v63 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100A29AD0(&qword_1016B1CF8, type metadata accessor for Peripheral, &protocol conformance descriptor for NSObject);
  swift_getObjectType();
  v70 = v2;
  v59 = CustomStringConvertible.typeDescription.getter();
  v12 = v11;
  type metadata accessor for Peripheral(0);
  v60 = CustomStringConvertible<>.addressDescription.getter();
  v14 = v13;
  v68 = *&v2[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject];
  v15 = [v68 delegate];
  if (v15)
  {
    v70 = 30768;
    v71 = 0xE200000000000000;
    v72 = v15;
    v61 = v15;
    sub_1000DFAD8();
    v16._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
    String.append(_:)(v16);
    swift_unknownObjectRelease();

    v17 = v70;
    v18 = v71;
  }

  else
  {
    v18 = 0xE300000000000000;
    v17 = 7104878;
  }

  v61 = v17;
  v19 = v2;

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v20, v21))
  {

    return;
  }

  v57 = v21;
  v58 = v20;
  v22 = swift_slowAlloc();
  v56 = swift_slowAlloc();
  v72 = v56;
  *v22 = 136317699;
  *(v22 + 4) = sub_1000136BC(v62, a2, &v72);
  *(v22 + 12) = 2080;
  v23 = sub_1000136BC(v59, v12, &v72);

  *(v22 + 14) = v23;
  *(v22 + 22) = 2082;
  v24 = sub_1000136BC(v60, v14, &v72);

  *(v22 + 24) = v24;
  *(v22 + 32) = 2082;
  v25 = v68;
  v26 = [v68 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100A29AD0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v27 = dispatch thunk of CustomStringConvertible.description.getter();
  v29 = v28;
  (*(v63 + 8))(v10, v8);
  v30 = sub_1000136BC(v27, v29, &v72);

  *(v22 + 34) = v30;
  *(v22 + 42) = 2082;
  v31 = sub_1000136BC(v61, v18, &v72);

  *(v22 + 44) = v31;
  *(v22 + 52) = 2082;
  v32 = OBJC_IVAR____TtC12searchpartyd10Peripheral_lastSeen;
  swift_beginAccess();
  v34 = v64;
  v33 = v65;
  v35 = v66;
  (*(v65 + 16))(v64, &v19[v32], v66);
  sub_100A29AD0(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v36 = dispatch thunk of CustomStringConvertible.description.getter();
  v38 = v37;
  (*(v33 + 8))(v34, v35);
  v39 = sub_1000136BC(v36, v38, &v72);

  *(v22 + 54) = v39;
  *(v22 + 62) = 2160;
  *(v22 + 64) = 1752392040;
  *(v22 + 72) = 2081;
  v40 = v67;
  sub_100A22DF0(v67);
  sub_100A29AD0(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
  v41 = dispatch thunk of CustomStringConvertible.description.getter();
  v43 = v42;
  (*(v69 + 8))(v40, v4);
  v44 = sub_1000136BC(v41, v43, &v72);

  *(v22 + 74) = v44;
  *(v22 + 82) = 2160;
  *(v22 + 84) = 1752392040;
  *(v22 + 92) = 2081;
  if (*&v19[OBJC_IVAR____TtC12searchpartyd10Peripheral_injectedName + 8])
  {
    v45 = *&v19[OBJC_IVAR____TtC12searchpartyd10Peripheral_injectedName];
    v46 = *&v19[OBJC_IVAR____TtC12searchpartyd10Peripheral_injectedName + 8];
  }

  else
  {
    v47 = [v25 name];
    if (!v47)
    {
      v45 = 0;
      v46 = 0xE000000000000000;
      goto LABEL_11;
    }

    v48 = v47;
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v49;
  }

LABEL_11:
  v50 = sub_1000136BC(v45, v46, &v72);

  *(v22 + 94) = v50;
  *(v22 + 102) = 2082;
  v51 = [v25 connectedTransport];
  if (v51 == 2)
  {
    v52 = 0xEA00000000007967;
    v53 = 0x72656E45776F6C2ELL;
  }

  else
  {
    v52 = 0xE800000000000000;
    if (v51 == 1)
    {
      v53 = 0x63697373616C632ELL;
    }

    else
    {
      v53 = 0x6E776F6E6B6E752ELL;
    }
  }

  v54 = sub_1000136BC(v53, v52, &v72);

  *(v22 + 104) = v54;
  v55 = v58;
  _os_log_impl(&_mh_execute_header, v58, v57, "%s <%s: %{public}s %{public}s underlying: <CBPeripheral> [delegate: %{public}s] lastSeen: %{public}s MAC: %{private,mask.hash}s name: %{private,mask.hash}s type: %{public}s>", v22, 0x70u);
  swift_arrayDestroy();
}

uint64_t sub_100A24DF4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = OBJC_IVAR____TtC12searchpartyd10Peripheral_advertisementData;
  swift_beginAccess();
  v8 = *(a1 + v7);
  if (!*(v8 + 16) || (, v9 = sub_100771D58(v4, v6), v11 = v10, , (v11 & 1) == 0))
  {

    goto LABEL_6;
  }

  sub_100013894(*(v8 + 56) + 32 * v9, v13);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_6:
    *a2 = 2;
  }

  return result;
}

void sub_100A24EFC()
{
  sub_1000BC4D4(&qword_1016B1CE0, &qword_1013D2DC0);
  v0 = 0;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v1 = v35;
  if ((v35 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for Service();
    sub_100A29AD0(&qword_1016B1CE8, type metadata accessor for Service, &unk_1014071F8);
    Set.Iterator.init(_cocoa:)();
    v1 = v39;
    v2 = v40;
    v4 = v41;
    v3 = v42;
    v5 = v43;
  }

  else
  {
    v6 = -1 << *(v35 + 32);
    v2 = v35 + 56;
    v4 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(v35 + 56);

    v3 = 0;
  }

  v9 = (v4 + 64) >> 6;
  v31 = v1;
  v32 = v2;
  for (i = v9; ; v9 = i)
  {
    if (v1 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_35;
      }

      type metadata accessor for Service();
      swift_dynamicCast();
      j = v3;
      v13 = v5;
      if (!v35)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v10 = v3;
      v11 = v5;
      for (j = v3; !v11; ++v10)
      {
        j = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_37;
        }

        if (j >= v9)
        {
LABEL_35:
          sub_1000128F8(v1);

          return;
        }

        v11 = *(v2 + 8 * j);
      }

      v13 = (v11 - 1) & v11;
      v14 = *(*(v1 + 48) + ((j << 9) | (8 * __clz(__rbit64(v11)))));

      if (!v14)
      {
        goto LABEL_35;
      }
    }

    v33 = v13;
    sub_1000BC4D4(&qword_1016B1CF0, &qword_1013D2DC8);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v34 = v0;
    v15 = v35;
    if ((v35 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for Characteristic();
      sub_100A29AD0(&qword_1016A5B28, type metadata accessor for Characteristic, &unk_1013D4780);
      Set.Iterator.init(_cocoa:)();
      v16 = v44;
      v17 = v45;
      v18 = v46;
      v19 = v47;
      v20 = v48;
    }

    else
    {
      v21 = -1 << *(v35 + 32);
      v17 = v35 + 56;
      v18 = ~v21;
      v22 = -v21;
      v23 = v22 < 64 ? ~(-1 << v22) : -1;
      v20 = v23 & *(v35 + 56);

      v19 = 0;
      v16 = v15;
    }

    v24 = (v18 + 64) >> 6;
    if ((v16 & 0x8000000000000000) == 0)
    {
      break;
    }

    while (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for Characteristic();
      swift_dynamicCast();
      v27 = v19;
      v28 = v20;
      if (!v35)
      {
        break;
      }

LABEL_33:
      v35 = 12;
      v36 = 0u;
      v37 = 0u;
      v38 = 11;
      sub_100A5A2B8(&v35);

      sub_100101B04(&v35);
      v19 = v27;
      v20 = v28;
      if ((v16 & 0x8000000000000000) == 0)
      {
        goto LABEL_25;
      }
    }

LABEL_8:
    sub_1000128F8(v16);

    v3 = j;
    v5 = v33;
    v0 = v34;
    v1 = v31;
    v2 = v32;
  }

LABEL_25:
  v25 = v19;
  v26 = v20;
  v27 = v19;
  if (v20)
  {
LABEL_29:
    v28 = (v26 - 1) & v26;
    v29 = *(*(v16 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v26)))));

    if (!v29)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

  while (1)
  {
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v27 >= v24)
    {
      goto LABEL_8;
    }

    v26 = *(v17 + 8 * v27);
    ++v25;
    if (v26)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_100A253A0(uint64_t a1, uint64_t a2, uint64_t a3, Class isa)
{
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v6 = *(a3 + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject);
  if (isa)
  {
    sub_100008BB8(0, &qword_1016A9120, CBUUID_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [v6 discoverServices:isa];
}

uint64_t sub_100A25468(char *a1, void (*a2)(void *), uint64_t a3)
{
  v4 = &a1[OBJC_IVAR____TtC12searchpartyd10Peripheral_servicesPromise];
  if (*&a1[OBJC_IVAR____TtC12searchpartyd10Peripheral_servicesPromise])
  {
    if (qword_101695518 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177CEA8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Discovery already in flight!", v9, 2u);
    }

    v12[0] = a1;
    v13 = 259;
    v10 = a1;
    a2(v12);
    return sub_10000B3A8(v12, &unk_1016A6150, &unk_10139DB30);
  }

  else
  {
    *v4 = a2;
    *(v4 + 1) = a3;
  }
}

uint64_t sub_100A255C8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ServiceUUID(0);
  __chkstk_darwin(v4 - 8);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100A23580();
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v23 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v9 = objc_opt_self();
    v10 = a1 + 32;
    do
    {
      sub_10001F280(v10, v20);
      v11 = v21;
      v12 = v22;
      sub_1000035D0(v20, v21);
      (*(v12 + 8))(v11, v12);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v14 = type metadata accessor for UUID();
      (*(*(v14 - 8) + 8))(v6, v14);
      v15 = [v9 UUIDWithNSUUID:isa];

      sub_100007BAC(v20);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v10 += 40;
      --v7;
    }

    while (v7);
    v8 = v23;
  }

  sub_100A23580();
  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  *(v16 + 24) = v8;
  sub_1000BC4D4(&unk_1016CDD30, &unk_101391A90);
  swift_allocObject();
  v17 = v2;
  v20[0] = Future.init(_:)();
  sub_100A299CC();
  v18 = Publisher.eraseToAnyPublisher()();

  return v18;
}

uint64_t sub_100A25814(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ServiceUUID(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*(*a1 + 32) UUID];
  sub_100B699C8(v5);

  LOBYTE(v6) = static UUID.== infix(_:_:)();
  sub_100A297E0(v5, type metadata accessor for ServiceUUID);
  return v6 & 1;
}

uint64_t sub_100A258EC(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for ServiceUUID(0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v14 - v8;
  v10 = [*(*a1 + 32) UUID];
  sub_100B699C8(v9);

  v11 = a2[3];
  v12 = a2[4];
  sub_1000035D0(a2, v11);
  (*(v12 + 8))(v11, v12);
  LOBYTE(v10) = static UUID.== infix(_:_:)();
  sub_100A297E0(v7, type metadata accessor for ServiceUUID);
  sub_100A297E0(v9, type metadata accessor for ServiceUUID);
  return v10 & 1;
}

void sub_100A25A68(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_100395648(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100A25B7C(void *a1, uint64_t a2)
{
  v3 = [a1 services];
  if (v3)
  {
    v4 = v3;
    sub_100008BB8(0, &unk_1016B1CD0, CBService_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100A23580();
  if (qword_101695520 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177CEC0);
  v6 = v2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "CBPeripheralDelegate: peripheral(didDiscoverServices:) called for %@", v9, 0xCu);
    sub_10000B3A8(v10, &qword_10169BB30, &unk_10138B3C0);
  }

  __chkstk_darwin(v12);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
}

void sub_100A25D90(char *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v4 = &a1[OBJC_IVAR____TtC12searchpartyd10Peripheral_servicesPromise];
  v5 = *&a1[OBJC_IVAR____TtC12searchpartyd10Peripheral_servicesPromise];
  if (v5)
  {
    v7 = v4[1];
    if (a3)
    {
      sub_100012908(*&a1[OBJC_IVAR____TtC12searchpartyd10Peripheral_servicesPromise], v4[1]);
      swift_errorRetain();
      if (qword_101695518 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_1000076D4(v8, qword_10177CEA8);
      swift_errorRetain();
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138412290;
        v13 = _convertErrorToNSError(_:)();
        *(v11 + 4) = v13;
        *v12 = v13;
        _os_log_impl(&_mh_execute_header, v9, v10, "didDiscoverServices error!: %@", v11, 0xCu);
        sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);
      }

      v49[0] = a3;
      v50 = 256;
      swift_errorRetain();
      v5(v49);
      sub_1000BB27C(v5, v7);

LABEL_30:
      sub_10000B3A8(v49, &unk_1016A6150, &unk_10139DB30);
      v44 = *v4;
      v45 = v4[1];
      *v4 = 0;
      v4[1] = 0;
      sub_1000BB27C(v44, v45);
      return;
    }

    if (a4 >> 62)
    {
      v24 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v24 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v51 = v5;
    v48 = v7;
    if (!v24)
    {

      v30 = _swiftEmptyArrayStorage;
LABEL_25:
      if (qword_101695518 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_1000076D4(v36, qword_10177CEA8);

      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v49[0] = v47;
        *v39 = 136446210;
        type metadata accessor for Service();
        v40 = Array.description.getter();
        v42 = sub_1000136BC(v40, v41, v49);
        v5 = v51;

        *(v39 + 4) = v42;
        _os_log_impl(&_mh_execute_header, v37, v38, "discovered services: %{public}s", v39, 0xCu);
        sub_100007BAC(v47);
      }

      swift_beginAccess();
      sub_100625A2C(v30);
      swift_endAccess();

      v49[0] = a1;
      HIBYTE(v50) = 0;
      v43 = a1;
      v5(v49);
      sub_1000BB27C(v5, v48);
      goto LABEL_30;
    }

    v49[0] = _swiftEmptyArrayStorage;

    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v24 & 0x8000000000000000) == 0)
    {
      v46 = v4;
      if ((a4 & 0xC000000000000001) != 0)
      {
        v25 = 0;
        do
        {
          v26 = v25 + 1;
          v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          type metadata accessor for Service();
          v28 = swift_allocObject();
          sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
          v29 = swift_allocObject();
          *(v29 + 16) = 0;
          v28[3] = v29;
          v28[6] = 0;
          v28[7] = 0;
          v28[5] = &_swiftEmptySetSingleton;
          swift_unknownObjectUnownedInit();
          v28[4] = v27;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v25 = v26;
        }

        while (v24 != v26);
      }

      else
      {
        v31 = (a4 + 32);
        type metadata accessor for Service();
        do
        {
          v32 = *v31++;
          v33 = swift_allocObject();
          sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
          v34 = swift_allocObject();
          *(v34 + 16) = 0;
          v33[3] = v34;
          v33[6] = 0;
          v33[7] = 0;
          v33[5] = &_swiftEmptySetSingleton;
          swift_unknownObjectUnownedInit();
          v33[4] = v32;
          v35 = v32;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v24;
        }

        while (v24);
      }

      v30 = v49[0];
      v4 = v46;
      v5 = v51;
      goto LABEL_25;
    }

    __break(1u);
  }

  else
  {
    if (qword_101695518 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_10177CEA8);
    v16 = a2;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v16;
      *v20 = v16;
      v21 = v16;
      _os_log_impl(&_mh_execute_header, v17, v18, "peripheral(didDiscoverServices:) called with no servicesPromise available!: %@", v19, 0xCu);
      sub_10000B3A8(v20, &qword_10169BB30, &unk_10138B3C0);
    }
  }
}

uint64_t sub_100A264B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = OBJC_IVAR____TtC12searchpartyd10Peripheral_services;
  swift_beginAccess();
  v7 = *(a1 + v6);
  v10[2] = a2;

  v8 = sub_1012BBDB4(sub_100A29B7C, v10, v7);

  *a3 = v8;
  return result;
}

void sub_100A2655C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v7 = (a1 + 48);
  v8 = *(a1 + 48);
  if (!v8)
  {
    if (qword_101695518 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_10177CEA8);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v53[0] = v24;
      *v23 = 136315138;
      v25 = sub_101103B5C();
      v27 = sub_1000136BC(v25, v26, v53);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "peripheral(didDiscoverCharacteristicsFor:) called with no characteristicsPromise available!: %s", v23, 0xCu);
      sub_100007BAC(v24);
    }

    return;
  }

  v10 = *(a1 + 56);
  if (a2)
  {
    sub_100012908(*(a1 + 48), *(a1 + 56));
    swift_errorRetain();
    if (qword_101695518 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000076D4(v11, qword_10177CEA8);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v55 = v4;
      v14 = v10;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = _convertErrorToNSError(_:)();
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&_mh_execute_header, v12, v13, "didDiscoverCharacteristicsFor error: %@", v15, 0xCu);
      sub_10000B3A8(v16, &qword_10169BB30, &unk_10138B3C0);

      v10 = v14;
    }

    v53[0] = a2;
    v54 = 256;
    swift_errorRetain();
    v8(v53);
    sub_1000BB27C(v8, v10);

    goto LABEL_8;
  }

  v30 = [a3 characteristics];
  if (!v30)
  {
    v53[0] = swift_unknownObjectUnownedLoadStrong();
    HIBYTE(v54) = 0;
    v8(v53);
    sub_1000BB27C(v8, v10);
LABEL_8:
    sub_10000B3A8(v53, &unk_1016A6150, &unk_10139DB30);
    v18 = *(a1 + 48);
    v19 = *(a1 + 56);
    *v7 = 0;
    v7[1] = 0;
LABEL_32:
    sub_1000BB27C(v18, v19);
    return;
  }

  v31 = v30;
  v50 = v8;
  v51 = v7;
  sub_100008BB8(0, &unk_1016B1CC0, CBCharacteristic_ptr);
  v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v32 >> 62)
  {
    v33 = _CocoaArrayWrapper.endIndex.getter();
    v52 = v10;
    if (v33)
    {
      goto LABEL_17;
    }

LABEL_26:

    v40 = _swiftEmptyArrayStorage;
LABEL_27:
    v41 = sub_10112B5A8(v40);

    if (qword_101695520 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_1000076D4(v42, qword_10177CEC0);

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v53[0] = v46;
      *v45 = 136315138;
      type metadata accessor for Characteristic();
      sub_100A29AD0(&qword_1016A5B28, type metadata accessor for Characteristic, &unk_1013D4780);
      v47 = Set.description.getter();
      v49 = sub_1000136BC(v47, v48, v53);

      *(v45 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v43, v44, "localCharacteristics: %s", v45, 0xCu);
      sub_100007BAC(v46);

      v10 = v52;
    }

    swift_beginAccess();
    sub_1005CA6B4(v41);
    swift_endAccess();
    v53[0] = swift_unknownObjectUnownedLoadStrong();
    HIBYTE(v54) = 0;
    v50(v53);
    sub_1000BB27C(v50, v10);
    sub_10000B3A8(v53, &unk_1016A6150, &unk_10139DB30);
    v18 = *(a1 + 48);
    v19 = *(a1 + 56);
    *v51 = 0;
    v51[1] = 0;
    goto LABEL_32;
  }

  v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v52 = v10;
  if (!v33)
  {
    goto LABEL_26;
  }

LABEL_17:
  v55 = v5;
  v53[0] = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v33 & 0x8000000000000000) == 0)
  {
    v34 = 0;
    do
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v35 = *(v32 + 8 * v34 + 32);
      }

      v36 = v35;
      ++v34;
      type metadata accessor for Characteristic();
      v37 = swift_allocObject();
      sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
      v38 = swift_allocObject();
      *(v38 + 16) = 0;
      *(v37 + 40) = v36;
      *(v37 + 48) = &_swiftEmptySetSingleton;
      *(v37 + 56) = 0u;
      *(v37 + 72) = 0u;
      *(v37 + 88) = 0u;
      *(v37 + 104) = 0;
      *(v37 + 16) = v38;
      *(v37 + 24) = a4;
      *(v37 + 32) = a1;
      v39 = a4;
      swift_unownedRetain();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v33 != v34);

    v10 = v52;
    v40 = v53[0];
    goto LABEL_27;
  }

  __break(1u);
}

void sub_100A26C74(void *a1, void *a2, void *a3)
{
  if (a1[13])
  {
    if (a2)
    {
      v29 = a2;
      LOBYTE(v31) = 0;

      swift_errorRetain();
      PassthroughSubject.send(completion:)();

      sub_10000B3A8(&v29, &unk_1016B1CB0, &qword_1013FB750);
    }

    else
    {

      v8 = [a3 value];
      if (v8)
      {
        v9 = v8;
        v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;
      }

      else
      {
        v10 = 0;
        v12 = 0xC000000000000000;
      }

      PassthroughSubject.send(_:)();

      sub_100016590(v10, v12);
    }
  }

  else
  {
    v5 = a1 + 9;
    v4 = a1[9];
    if (v4)
    {
      v6 = a1[10];
      if (a2)
      {
        v29 = a1;
        v30 = a2;
        v31 = 264;
        swift_errorRetain();

        sub_100012908(v4, v6);
      }

      else
      {

        v22 = [a3 value];
        if (v22)
        {
          v23 = v22;
          v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v26 = v25;
        }

        else
        {
          v24 = 0;
          v26 = 0xC000000000000000;
        }

        v29 = v24;
        v30 = v26;
        HIBYTE(v31) = 0;
      }

      v4(&v29);
      sub_1000BB27C(v4, v6);
      sub_10000B3A8(&v29, &qword_1016B1CA8, &qword_1013D2DB8);
      v27 = a1[9];
      v28 = a1[10];
      *v5 = 0;
      v5[1] = 0;
      sub_1000BB27C(v27, v28);
    }

    else
    {
      if (qword_101695518 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_1000076D4(v13, qword_10177CEA8);

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v29 = v17;
        *v16 = 136315138;
        v18 = sub_100A5AADC();
        v20 = sub_1000136BC(v18, v19, &v29);

        *(v16 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v14, v15, "didUpdateValueFor characteristic: %s called with no outstanding promise or subject!", v16, 0xCu);
        sub_100007BAC(v17);
      }
    }
  }
}

uint64_t sub_100A26F7C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t (*a3)(uint64_t *)@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for ServiceUUID(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = [a2 UUID];
  sub_100B699C8(v10);

  v12 = OBJC_IVAR____TtC12searchpartyd10Peripheral_services;
  swift_beginAccess();
  v13 = *(a1 + v12);
  v17 = v10;

  v14 = sub_1012BBDB4(a3, v16, v13);

  result = sub_100A297E0(v10, type metadata accessor for ServiceUUID);
  *a4 = v14;
  return result;
}

uint64_t sub_100A270A4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t (*a3)(uint64_t *)@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for CharacteristicUUID(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = [a2 UUID];
  sub_100B699C8(v10);

  swift_beginAccess();
  v12 = *(a1 + 40);
  v16 = v10;

  v13 = sub_1012BBE10(a3, v15, v12);

  result = sub_100A297E0(v10, type metadata accessor for CharacteristicUUID);
  *a4 = v13;
  return result;
}

void sub_100A271DC(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void (*a6)(id, void *))
{
  v10 = a3;
  v11 = a4;
  v12 = a1;
  v13 = a5;
  a6(v11, a5);
}

id sub_100A27354(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = OBJC_IVAR____TtC12searchpartyd10Peripheral_lock;
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *&v5[v11] = v12;
  *&v5[OBJC_IVAR____TtC12searchpartyd10Peripheral_services] = &_swiftEmptySetSingleton;
  v13 = &v5[OBJC_IVAR____TtC12searchpartyd10Peripheral_connectionPromise];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v5[OBJC_IVAR____TtC12searchpartyd10Peripheral_disconnectionPromise];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v5[OBJC_IVAR____TtC12searchpartyd10Peripheral_servicesPromise];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v5[OBJC_IVAR____TtC12searchpartyd10Peripheral_sendDataPromise];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = OBJC_IVAR____TtC12searchpartyd10Peripheral_findMyIdentifier;
  v18 = type metadata accessor for UUID();
  (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
  v19 = &v5[OBJC_IVAR____TtC12searchpartyd10Peripheral_injectedName];
  *v19 = 0;
  *(v19 + 1) = 0;
  *&v5[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] = a1;
  *&v5[OBJC_IVAR____TtC12searchpartyd10Peripheral_advertisementData] = a2;
  *&v5[OBJC_IVAR____TtC12searchpartyd10Peripheral_RSSI] = a3;
  v20 = OBJC_IVAR____TtC12searchpartyd10Peripheral_lastSeen;
  v21 = type metadata accessor for Date();
  v22 = *(v21 - 8);
  (*(v22 + 16))(&v5[v20], a4, v21);
  swift_beginAccess();
  v23 = a1;
  sub_100A277DC(a5, &v5[v17]);
  swift_endAccess();
  v41.receiver = v5;
  v41.super_class = type metadata accessor for Peripheral(0);
  v24 = objc_msgSendSuper2(&v41, "init");
  v25 = [v23 delegate];
  if (v25)
  {
    if (v25 == v24)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v26 = swift_dynamicCastClass();
      v27 = qword_101695518;
      if (v26)
      {
        v28 = v26;
        v40 = a5;
        swift_unknownObjectRetain();
        if (v27 != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        sub_1000076D4(v29, qword_10177CEA8);
        swift_unknownObjectRetain();
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.fault.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v30, v31))
        {
          v39 = a4;
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          *v32 = 138543362;
          *(v32 + 4) = v28;
          *v33 = v28;
          swift_unknownObjectRetain();
          _os_log_impl(&_mh_execute_header, v30, v31, "CBPeripheral already has a delegate: %{public}@", v32, 0xCu);
          sub_10000B3A8(v33, &qword_10169BB30, &unk_10138B3C0);

          a4 = v39;
        }

        swift_unknownObjectRelease_n();
        a5 = v40;
      }

      else
      {
        if (qword_101695518 != -1)
        {
          swift_once();
        }

        v34 = type metadata accessor for Logger();
        sub_1000076D4(v34, qword_10177CEA8);
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&_mh_execute_header, v35, v36, "CBPeripheral already has a delegate.", v37, 2u);
        }

        swift_unknownObjectRelease();
      }
    }
  }

  [v23 setDelegate:v24];
  sub_10000B3A8(a5, &qword_1016980D0, &unk_10138F3B0);
  (*(v22 + 8))(a4, v21);
  return v24;
}

uint64_t sub_100A277DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100A2784C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for ServiceUUID(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 UUID];
  sub_100B699C8(v8);

  sub_100A23580();
  if (qword_101695520 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000076D4(v10, qword_10177CEC0);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "CBPeripheralDelegate: peripheral(didDiscoverCharacteristicsFor:) %@", v14, 0xCu);
    sub_10000B3A8(v15, &qword_10169BB30, &unk_10138B3C0);
  }

  __chkstk_darwin(v17);
  *(&v27 - 2) = v3;
  *(&v27 - 1) = v8;
  sub_1000BC4D4(&qword_1016B1C88, &qword_1013D2DA0);
  v18 = OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v19 = v28;
  if (v28)
  {
    __chkstk_darwin(v18);
    *(&v27 - 4) = v19;
    *(&v27 - 3) = a2;
    *(&v27 - 2) = v11;
    *(&v27 - 1) = v3;

    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  }

  else
  {
    if (qword_101695518 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v10, qword_10177CEA8);
    v20 = v11;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v20;
      *v24 = v20;
      v25 = v20;
      _os_log_impl(&_mh_execute_header, v21, v22, "Could not find Service for: %@", v23, 0xCu);
      sub_10000B3A8(v24, &qword_10169BB30, &unk_10138B3C0);
    }
  }

  return sub_100A297E0(v8, type metadata accessor for ServiceUUID);
}

void sub_100A27C48(void *a1, uint64_t a2)
{
  v3 = v2;
  v47 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100A23580();
  if (qword_101695520 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177CEC0);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "CBPeripheralDelegate: didUpdateValueFor: %@", v13, 0xCu);
    sub_10000B3A8(v14, &qword_10169BB30, &unk_10138B3C0);
  }

  v16 = [v10 service];
  if (v16)
  {
    v17 = v16;
    v46 = v6;
    v18 = __chkstk_darwin(v16);
    *(&v44 - 2) = v3;
    *(&v44 - 1) = v18;
    sub_1000BC4D4(&qword_1016B1C88, &qword_1013D2DA0);
    v19 = OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v20 = v48;
    if (v48)
    {
      v45 = v5;
      __chkstk_darwin(v19);
      *(&v44 - 2) = v20;
      *(&v44 - 1) = v10;

      sub_1000BC4D4(&qword_1016B1C90, &qword_1013D2DA8);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();

      v22 = v48;
      if (v48)
      {
        __chkstk_darwin(v21);
        v23 = v47;
        *(&v44 - 4) = v22;
        *(&v44 - 3) = v23;
        *(&v44 - 2) = v10;

        OSAllocatedUnfairLock.callAsFunction<A>(_:)();

        return;
      }

      if (qword_101695518 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v9, qword_10177CEA8);
      v33 = v10;
      v24 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();

      v35 = os_log_type_enabled(v24, v34);
      v36 = v45;
      if (v35)
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v48 = v38;
        *v37 = 136315138;
        v39 = [v33 UUID];
        sub_100B699C8(v8);

        sub_100A29AD0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v40 = dispatch thunk of CustomStringConvertible.description.getter();
        v42 = v41;
        (*(v46 + 8))(v8, v36);
        v43 = sub_1000136BC(v40, v42, &v48);

        *(v37 + 4) = v43;
        _os_log_impl(&_mh_execute_header, v24, v34, "Could not find Characteristic for: %s", v37, 0xCu);
        sub_100007BAC(v38);
      }
    }

    else
    {
      if (qword_101695518 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v9, qword_10177CEA8);
      v24 = v17;
      v17 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v17, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v48 = v27;
        *v26 = 136315138;
        v28 = [v24 UUID];
        sub_100B699C8(v8);

        sub_100A29AD0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v29 = dispatch thunk of CustomStringConvertible.description.getter();
        v31 = v30;
        (*(v46 + 8))(v8, v5);
        v32 = sub_1000136BC(v29, v31, &v48);

        *(v26 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v17, v25, "Could not find Service for: %s", v26, 0xCu);
        sub_100007BAC(v27);

        return;
      }
    }
  }
}

void sub_100A28340(void *a1, uint64_t a2)
{
  v56 = a2;
  v4 = type metadata accessor for UUID();
  v57 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100A23580();
  if (qword_101695520 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177CEC0);
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "CBPeripheralDelegate: didWriteValueFor: %@", v11, 0xCu);
    sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);
  }

  v14 = [v8 service];
  if (v14)
  {
    v15 = __chkstk_darwin(v14);
    v55[-2] = v2;
    v55[-1] = v15;
    v58 = v15;
    sub_1000BC4D4(&qword_1016B1C88, &qword_1013D2DA0);
    v16 = OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    if (v59[0])
    {
      __chkstk_darwin(v16);
      v55[1] = v17;
      v55[-2] = v17;
      v55[-1] = v8;

      sub_1000BC4D4(&qword_1016B1C90, &qword_1013D2DA8);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();

      if (v59[0])
      {
        swift_retain_n();
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v59[0] = v21;
          *v20 = 136315138;

          v22 = sub_100A5AADC();
          v24 = v23;

          v25 = sub_1000136BC(v22, v24, v59);

          *(v20 + 4) = v25;
          _os_log_impl(&_mh_execute_header, v18, v19, "CBPeripheralDelegate: didWriteValueFor wrappedCharacteristic: %s", v20, 0xCu);
          sub_100007BAC(v21);
        }

        sub_1000BC4D4(&qword_1016B1C98, &qword_1013D2DB0);
        OSAllocatedUnfairLock.callAsFunction<A>(_:)();

        v26 = v59[0];
        if (v59[0])
        {
          v27 = v59[1];
          if (v56)
          {
            v59[0] = v56;
            v60 = 256;
            swift_errorRetain();
            swift_errorRetain();
            sub_100012908(v26, v27);
            v26(v59);
            sub_1000BB27C(v26, v27);
            sub_1000BB27C(v26, v27);
          }

          else
          {
            HIBYTE(v60) = 0;

            v26(v59);
            sub_1000BB27C(v26, v27);
            sub_1000BB27C(v26, v27);
          }

          sub_10000B3A8(v59, &qword_1016B1CA0, &qword_1013918C0);
          return;
        }

        if (qword_101695518 != -1)
        {
          swift_once();
        }

        sub_1000076D4(v7, qword_10177CEA8);

        v39 = Logger.logObject.getter();
        v48 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v39, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v59[0] = v50;
          *v49 = 136315138;

          v51 = sub_100A5AADC();
          v53 = v52;

          v54 = sub_1000136BC(v51, v53, v59);

          *(v49 + 4) = v54;
          _os_log_impl(&_mh_execute_header, v39, v48, "didWriteValueFor characteristic: %s called with no outstanding promise!", v49, 0xCu);
          sub_100007BAC(v50);
        }
      }

      else
      {
        if (qword_101695518 != -1)
        {
          swift_once();
        }

        sub_1000076D4(v7, qword_10177CEA8);
        v38 = v8;
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v59[0] = v42;
          *v41 = 136315138;
          v43 = [v38 UUID];
          sub_100B699C8(v6);

          sub_100A29AD0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v44 = dispatch thunk of CustomStringConvertible.description.getter();
          v46 = v45;
          (*(v57 + 8))(v6, v4);
          v47 = sub_1000136BC(v44, v46, v59);

          *(v41 + 4) = v47;
          _os_log_impl(&_mh_execute_header, v39, v40, "Could not find Characteristic for: %s", v41, 0xCu);
          sub_100007BAC(v42);
        }
      }

      return;
    }

    if (qword_101695518 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v7, qword_10177CEA8);
    v28 = v58;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v59[0] = v32;
      *v31 = 136315138;
      v33 = [v28 UUID];
      sub_100B699C8(v6);

      sub_100A29AD0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      (*(v57 + 8))(v6, v4);
      v37 = sub_1000136BC(v34, v36, v59);

      *(v31 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v29, v30, "Could not find Service for: %s", v31, 0xCu);
      sub_100007BAC(v32);
    }

    else
    {
    }
  }
}

void sub_100A28D48(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100A23580();
  if (qword_101695520 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177CEC0);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "CBPeripheralDelegate: didUpdateNotificationStateFor: %@", v12, 0xCu);
    sub_10000B3A8(v13, &qword_10169BB30, &unk_10138B3C0);
  }

  v15 = [v9 service];
  if (v15)
  {
    v16 = v15;
    v56 = v5;
    v17 = __chkstk_darwin(v15);
    *(&v55 - 2) = v2;
    *(&v55 - 1) = v17;
    sub_1000BC4D4(&qword_1016B1C88, &qword_1013D2DA0);
    v18 = OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v19 = v57;
    if (v57)
    {
      v55 = v4;
      __chkstk_darwin(v18);
      *(&v55 - 2) = v19;
      *(&v55 - 1) = v9;

      sub_1000BC4D4(&qword_1016B1C90, &qword_1013D2DA8);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();

      if (v57)
      {
        if ([v57[5] isNotifying])
        {
          if (qword_101695518 != -1)
          {
            swift_once();
          }

          sub_1000076D4(v8, qword_10177CEA8);

          v20 = Logger.logObject.getter();
          v21 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v23 = swift_slowAlloc();
            v57 = v23;
            *v22 = 136315138;

            v24 = sub_100A5AADC();
            v26 = v25;

            v27 = sub_1000136BC(v24, v26, &v57);

            *(v22 + 4) = v27;
            v28 = "Start notifying: %s.";
LABEL_27:
            _os_log_impl(&_mh_execute_header, v20, v21, v28, v22, 0xCu);
            sub_100007BAC(v23);

LABEL_29:

            return;
          }
        }

        else
        {
          if (qword_101695518 != -1)
          {
            swift_once();
          }

          sub_1000076D4(v8, qword_10177CEA8);

          v20 = Logger.logObject.getter();
          v21 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v23 = swift_slowAlloc();
            v57 = v23;
            *v22 = 136315138;

            v51 = sub_100A5AADC();
            v53 = v52;

            v54 = sub_1000136BC(v51, v53, &v57);

            *(v22 + 4) = v54;
            v28 = "Stop notifying: %s.";
            goto LABEL_27;
          }
        }

        goto LABEL_29;
      }

      if (qword_101695518 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v8, qword_10177CEA8);
      v40 = v9;
      v29 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();

      v42 = os_log_type_enabled(v29, v41);
      v43 = v55;
      if (v42)
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v57 = v45;
        *v44 = 136315138;
        v46 = [v40 UUID];
        sub_100B699C8(v7);

        sub_100A29AD0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v47 = dispatch thunk of CustomStringConvertible.description.getter();
        v49 = v48;
        (*(v56 + 8))(v7, v43);
        v50 = sub_1000136BC(v47, v49, &v57);

        *(v44 + 4) = v50;
        _os_log_impl(&_mh_execute_header, v29, v41, "Could not find Characteristic for: %s", v44, 0xCu);
        sub_100007BAC(v45);
      }

LABEL_22:

      return;
    }

    if (qword_101695518 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v8, qword_10177CEA8);
    v16 = v16;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    v31 = os_log_type_enabled(v29, v30);
    v32 = v56;
    if (v31)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v57 = v34;
      *v33 = 136315138;
      v35 = [v16 UUID];
      sub_100B699C8(v7);

      sub_100A29AD0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      (*(v32 + 8))(v7, v4);
      v39 = sub_1000136BC(v36, v38, &v57);

      *(v33 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v29, v30, "Could not find Service for: %s", v33, 0xCu);
      sub_100007BAC(v34);

      goto LABEL_22;
    }
  }
}

void sub_100A29614(void *a1)
{
  if (qword_101695520 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177CEC0);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, oslog, v4, "peripheralIsReady: %@", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }
}

uint64_t sub_100A297E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100A298C0@<X0>(uint64_t (**a1)()@<X8>)
{
  v3 = *(v1 + 88);
  v4 = *(v1 + 88);
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  if (v4)
  {
    v7 = v3;
    result = swift_allocObject();
    *(result + 16) = v7;
    v6 = sub_100A29940;
  }

  else
  {
    v6 = 0;
    result = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

unint64_t sub_100A299CC()
{
  result = qword_1016A6330;
  if (!qword_1016A6330)
  {
    sub_1000BC580(&unk_1016CDD30, &unk_101391A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6330);
  }

  return result;
}

double sub_100A29A50@<D0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR____TtC12searchpartyd10Peripheral_services;
  swift_beginAccess();
  *a1 = *(v3 + v4);

  return result;
}

uint64_t sub_100A29AD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void BeaconPayloadv1.init(using:data:advertisement:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v11 = type metadata accessor for BeaconPayloadv1(0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = (&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v17 = (&v23 - v16);
  v18 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v18 != 2)
    {
      goto LABEL_8;
    }

    v20 = *(a2 + 16);
    v19 = *(a2 + 24);
    v21 = __OFSUB__(v19, v20);
    v22 = v19 - v20;
    if (!v21)
    {
      if (v22 >= 120)
      {
        goto LABEL_12;
      }

      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_16;
  }

  if (v18)
  {
    if (!__OFSUB__(HIDWORD(a2), a2))
    {
      if (HIDWORD(a2) - a2 >= 120)
      {
        goto LABEL_12;
      }

      goto LABEL_8;
    }

LABEL_16:
    __break(1u);
    return;
  }

  if (BYTE6(v15) >= 0x78uLL)
  {
LABEL_12:
    sub_100A2AA58(a1, a2, v15, a3, a4, (&v23 - v16));
    if (v5)
    {
      return;
    }

    goto LABEL_13;
  }

LABEL_8:
  sub_100A2B118(a1, a2, v15, a3, a4, v14);
  if (v5)
  {
    return;
  }

  v17 = v14;
LABEL_13:
  sub_100590280(v17, a5);
}

uint64_t type metadata accessor for BeaconPayloadv1(uint64_t a1)
{
  result = qword_1016B1D60;
  if (!qword_1016B1D60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *BeaconPayloadv1.encode()()
{
  v2 = v0;
  v3 = type metadata accessor for HashAlgorithm();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100A2A578();
  v9 = v8;
  v10 = sub_100A2A12C(*v0, *(v0 + 8), v7, v8);
  v12 = v11;
  sub_100016590(v7, v9);
  if (!v1)
  {
    v34 = v12;
    v35 = v10;
    v41 = xmmword_10138C660;
    v13 = *(v4 + 104);
    v31 = enum case for HashAlgorithm.sha256(_:);
    v32 = v4 + 104;
    v30 = v13;
    v13(v6);
    v14 = Data.hash(algorithm:)();
    v16 = v15;
    v33 = *(v4 + 8);
    v33(v6, v3);
    v39 = &type metadata for Data;
    v40 = &protocol witness table for Data;
    v37 = v14;
    v38 = v16;
    v17 = sub_1000035D0(&v37, &type metadata for Data);
    v19 = *v17;
    v18 = v17[1];
    sub_100017D5C(v14, v16);
    sub_100017DB0(v19, v18, &v41);
    sub_100016590(v14, v16);
    sub_100007BAC(&v37);
    v20 = type metadata accessor for BeaconPayloadv1(0);
    Date.timeIntervalSinceReferenceDate.getter();
    if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v21 > -1.0)
    {
      if (v21 < 4294967300.0)
      {
        v36 = bswap32(v21);
        v29[1] = 0;
        v39 = &type metadata for UnsafeRawBufferPointer;
        v40 = &protocol witness table for UnsafeRawBufferPointer;
        v37 = &v36;
        v38 = &v37;
        sub_1000035D0(&v37, &type metadata for UnsafeRawBufferPointer);
        Data._Representation.append(contentsOf:)();
        sub_100007BAC(&v37);
        LOBYTE(v36) = *(v0 + *(v20 + 24));
        v39 = &type metadata for UnsafeRawBufferPointer;
        v40 = &protocol witness table for UnsafeRawBufferPointer;
        v37 = &v36;
        v38 = &v36 + 1;
        sub_1000035D0(&v37, &type metadata for UnsafeRawBufferPointer);
        Data._Representation.append(contentsOf:)();
        sub_100007BAC(&v37);
        v39 = &type metadata for Data;
        v40 = &protocol witness table for Data;
        v23 = v34;
        v22 = v35;
        v37 = v35;
        v38 = v34;
        v24 = sub_1000035D0(&v37, &type metadata for Data);
        v25 = *v24;
        v26 = v24[1];
        sub_100017D5C(v22, v23);
        sub_100017DB0(v25, v26, &v41);
        sub_100007BAC(&v37);
        v30(v6, v31, v3);
        v2 = Data.hash(algorithm:)();
        sub_100016590(v22, v23);
        v33(v6, v3);
        v27 = v41;
        sub_100017D5C(v41, *(&v41 + 1));
        sub_100016590(v27, *(&v27 + 1));
        return v2;
      }

LABEL_9:
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }

  return v2;
}

unint64_t sub_100A2A12C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_autoreleasePoolPush();
  v8 = sub_100A791E0(a1, a2);
  if (v4)
  {
    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v10 = v8;
    v11 = v9;
    sub_100017D5C(v8, v9);
    v12 = objc_autoreleasePoolPush();
    sub_100A79398(&v15, &v14);
    objc_autoreleasePoolPop(v12);
    sub_100016590(v10, v11);
    sub_100016590(v10, v11);
    a2 = v14;
    objc_autoreleasePoolPop(v7);
  }

  return a2;
}

uint64_t sub_100A2A240(uint64_t result)
{
  if (result > 3u)
  {
    if (result > 5u)
    {
      if (result == 6)
      {
        return 8;
      }

      else
      {
        return 9;
      }
    }

    else if (result == 4)
    {
      return 0;
    }

    else
    {
      return 4;
    }
  }

  else if (result > 1u)
  {
    if (result == 2)
    {
      return 36;
    }

    else
    {
      return 37;
    }
  }

  else if (result)
  {
    return 32;
  }

  else
  {
    return result;
  }
}

unint64_t sub_100A2A300@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100A2BB44(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100A2A330@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000746E656D65;
  v4 = 0x7369747265766461;
  v5 = 0x8000000101347FC0;
  v6 = 0xD000000000000012;
  if (v2 != 6)
  {
    v6 = 0x737574617473;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x656475746974616CLL;
  if (v2 != 4)
  {
    v8 = 0x64757469676E6F6CLL;
    v7 = 0xE900000000000065;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x617461446174656DLL;
  result = 0x8000000101347FA0;
  if (v2 != 2)
  {
    v10 = 0xD000000000000010;
    v9 = 0x8000000101347FA0;
  }

  if (*v1)
  {
    v4 = 0x6D617473656D6974;
    v3 = 0xE900000000000070;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v12;
  a1[1] = v3;
  return result;
}

uint64_t BeaconPayloadv1.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BeaconPayloadv1(0) + 20);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100A2A578()
{
  v11 = xmmword_10138C660;
  v1 = type metadata accessor for BeaconPayloadv1(0);
  v2 = *(v0 + *(v1 + 28)) * 10000000.0;
  if (COERCE__INT64(fabs(v2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 <= -2147483650.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v2 >= 2147483650.0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v3 = v1;
  v6 = bswap32(v2);
  v9 = &type metadata for UnsafeRawBufferPointer;
  v10 = &protocol witness table for UnsafeRawBufferPointer;
  v7 = &v6;
  v8 = &v7;
  sub_1000035D0(&v7, &type metadata for UnsafeRawBufferPointer);
  Data._Representation.append(contentsOf:)();
  sub_100007BAC(&v7);
  v4 = *(v0 + *(v3 + 32)) * 10000000.0;
  if (COERCE__INT64(fabs(v4)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v4 <= -2147483650.0)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  if (v4 >= 2147483650.0)
  {
    goto LABEL_13;
  }

  v6 = bswap32(v4);
  v9 = &type metadata for UnsafeRawBufferPointer;
  v10 = &protocol witness table for UnsafeRawBufferPointer;
  v7 = &v6;
  v8 = &v7;
  sub_1000035D0(&v7, &type metadata for UnsafeRawBufferPointer);
  Data._Representation.append(contentsOf:)();
  sub_100007BAC(&v7);
  LOBYTE(v6) = sub_10108FD6C(v3);
  v9 = &type metadata for UnsafeRawBufferPointer;
  v10 = &protocol witness table for UnsafeRawBufferPointer;
  v7 = &v6;
  v8 = (&v6 + 1);
  sub_1000035D0(&v7, &type metadata for UnsafeRawBufferPointer);
  Data._Representation.append(contentsOf:)();
  sub_100007BAC(&v7);
  LOBYTE(v6) = *(v0 + *(v3 + 40));
  v9 = &type metadata for UnsafeRawBufferPointer;
  v10 = &protocol witness table for UnsafeRawBufferPointer;
  v7 = &v6;
  v8 = (&v6 + 1);
  sub_1000035D0(&v7, &type metadata for UnsafeRawBufferPointer);
  Data._Representation.append(contentsOf:)();
  sub_100007BAC(&v7);
  return v11;
}

uint64_t sub_100A2A7C8()
{
  v11 = xmmword_10138C660;
  v1 = type metadata accessor for BeaconPayloadV2(0);
  v2 = *(v0 + *(v1 + 24)) * 10000000.0;
  if (COERCE__INT64(fabs(v2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 <= -2147483650.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v2 >= 2147483650.0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v3 = v1;
  v6 = bswap32(v2);
  v9 = &type metadata for UnsafeRawBufferPointer;
  v10 = &protocol witness table for UnsafeRawBufferPointer;
  v7 = &v6;
  v8 = &v7;
  sub_1000035D0(&v7, &type metadata for UnsafeRawBufferPointer);
  Data._Representation.append(contentsOf:)();
  sub_100007BAC(&v7);
  v4 = *(v0 + *(v3 + 28)) * 10000000.0;
  if (COERCE__INT64(fabs(v4)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v4 <= -2147483650.0)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  if (v4 >= 2147483650.0)
  {
    goto LABEL_13;
  }

  v6 = bswap32(v4);
  v9 = &type metadata for UnsafeRawBufferPointer;
  v10 = &protocol witness table for UnsafeRawBufferPointer;
  v7 = &v6;
  v8 = &v7;
  sub_1000035D0(&v7, &type metadata for UnsafeRawBufferPointer);
  Data._Representation.append(contentsOf:)();
  sub_100007BAC(&v7);
  LOBYTE(v6) = sub_10108FDDC(v3);
  v9 = &type metadata for UnsafeRawBufferPointer;
  v10 = &protocol witness table for UnsafeRawBufferPointer;
  v7 = &v6;
  v8 = (&v6 + 1);
  sub_1000035D0(&v7, &type metadata for UnsafeRawBufferPointer);
  Data._Representation.append(contentsOf:)();
  sub_100007BAC(&v7);
  LOBYTE(v6) = *(v0 + *(v3 + 36));
  v9 = &type metadata for UnsafeRawBufferPointer;
  v10 = &protocol witness table for UnsafeRawBufferPointer;
  v7 = &v6;
  v8 = (&v6 + 1);
  sub_1000035D0(&v7, &type metadata for UnsafeRawBufferPointer);
  Data._Representation.append(contentsOf:)();
  sub_100007BAC(&v7);
  return v11;
}

uint64_t *sub_100A2AA2C()
{
  result = BeaconPayloadv1.encode()();
  if (v0)
  {
    return v2;
  }

  return result;
}

void sub_100A2AA58(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v43 = a6;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100017D5C(a2, a3);
  Data.subObject<A>(range:)();
  if (v6)
  {
    sub_100016590(a2, a3);
    sub_100016590(a4, a5);
    sub_100016590(a2, a3);

    return;
  }

  v41 = v12;
  v42 = a4;
  Date.init(timeIntervalSinceReferenceDate:)();
  Data.subObject<A>(range:)();
  v39 = a1;
  v40 = a2;
  v38 = v15;
  v16 = v46;
  v17 = a3;
  v18 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v18 != 2)
    {
      goto LABEL_12;
    }

    v20 = v40;
    v19 = *(v40 + 24);
  }

  else
  {
    if (!v18)
    {
      v19 = BYTE6(a3);
      goto LABEL_10;
    }

    v20 = v40;
    v19 = v40 >> 32;
  }

  sub_100017D5C(v20, a3);
LABEL_10:
  if (v19 >= 37)
  {
    v35 = v16;
    v36 = v13;
    v37 = a5;
    v21 = v40;
    v22 = Data._Representation.subscript.getter();
    v24 = v23;
    sub_100016590(v21, a3);
    v25 = objc_autoreleasePoolPush();
    v26 = objc_autoreleasePoolPush();
    sub_100A79968(v39, &v45, &v46);
    objc_autoreleasePoolPop(v26);
    v27 = v46;
    objc_autoreleasePoolPop(v25);
    Data.subObject<A>(range:)();
    LODWORD(v25) = v46;
    Data.subObject<A>(range:)();
    v28 = v37;
    LODWORD(v26) = v46;
    Data.subObject<A>(range:)();
    v44 = v46;
    v46 = xmmword_1013D2DD0;
    sub_1000198E8();
    unscale<A, B>(_:_:)();
    v29 = v45;
    v34 = v27;
    Data.subObject<A>(range:)();
    v30 = v40;
    sub_100016590(v40, v17);
    sub_100016590(v34, *(&v27 + 1));
    sub_100016590(v22, v24);
    sub_100016590(v30, v17);

    LOBYTE(v30) = v46;
    v31 = v43;
    *v43 = v42;
    v31[1] = v28;
    v32 = bswap32(v26) / 10000000.0;
    v33 = type metadata accessor for BeaconPayloadv1(0);
    (*(v36 + 32))(v31 + v33[5], v38, v41);
    *(v31 + v33[6]) = v35;
    *(v31 + v33[7]) = bswap32(v25) / 10000000.0;
    *(v31 + v33[8]) = v32;
    *(v31 + v33[9]) = v29;
    *(v31 + v33[10]) = v30;
    return;
  }

LABEL_12:
  __break(1u);
}

void sub_100A2B118(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v43 = a6;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100017D5C(a2, a3);
  Data.subObject<A>(range:)();
  if (v6)
  {
    sub_100016590(a2, a3);
    sub_100016590(a4, a5);
    sub_100016590(a2, a3);

    return;
  }

  v41 = v12;
  v42 = a4;
  Date.init(timeIntervalSinceReferenceDate:)();
  Data.subObject<A>(range:)();
  v39 = a1;
  v40 = a2;
  v38 = v15;
  v16 = v46;
  v17 = a3;
  v18 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v18 != 2)
    {
      goto LABEL_12;
    }

    v20 = v40;
    v19 = *(v40 + 24);
  }

  else
  {
    if (!v18)
    {
      v19 = BYTE6(a3);
      goto LABEL_10;
    }

    v20 = v40;
    v19 = v40 >> 32;
  }

  sub_100017D5C(v20, a3);
LABEL_10:
  if (v19 >= 5)
  {
    v35 = v16;
    v36 = v13;
    v37 = a5;
    v21 = v40;
    v22 = Data._Representation.subscript.getter();
    v24 = v23;
    sub_100016590(v21, a3);
    v25 = objc_autoreleasePoolPush();
    v26 = objc_autoreleasePoolPush();
    sub_100A79968(v39, &v45, &v46);
    objc_autoreleasePoolPop(v26);
    v27 = v46;
    objc_autoreleasePoolPop(v25);
    Data.subObject<A>(range:)();
    LODWORD(v25) = v46;
    Data.subObject<A>(range:)();
    v28 = v37;
    LODWORD(v26) = v46;
    Data.subObject<A>(range:)();
    v44 = v46;
    v46 = xmmword_1013D2DD0;
    sub_1000198E8();
    unscale<A, B>(_:_:)();
    v29 = v45;
    v34 = v27;
    Data.subObject<A>(range:)();
    v30 = v40;
    sub_100016590(v40, v17);
    sub_100016590(v34, *(&v27 + 1));
    sub_100016590(v22, v24);
    sub_100016590(v30, v17);

    LOBYTE(v30) = v46;
    v31 = v43;
    *v43 = v42;
    v31[1] = v28;
    v32 = bswap32(v26) / 10000000.0;
    v33 = type metadata accessor for BeaconPayloadv1(0);
    (*(v36 + 32))(v31 + v33[5], v38, v41);
    *(v31 + v33[6]) = v35;
    *(v31 + v33[7]) = bswap32(v25) / 10000000.0;
    *(v31 + v33[8]) = v32;
    *(v31 + v33[9]) = v29;
    *(v31 + v33[10]) = v30;
    return;
  }

LABEL_12:
  __break(1u);
}

BOOL _s12searchpartyd15BeaconPayloadv1V2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  sub_100017D5C(*a1, v5);
  sub_100017D5C(v6, v7);
  v8 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v4, v5, v6, v7);
  sub_100016590(v6, v7);
  sub_100016590(v4, v5);
  if (!v8)
  {
    return 0;
  }

  v9 = type metadata accessor for BeaconPayloadv1(0);
  if ((static Date.== infix(_:_:)() & 1) == 0 || *(a1 + v9[6]) != *(a2 + v9[6]) || *(a1 + v9[7]) != *(a2 + v9[7]) || *(a1 + v9[8]) != *(a2 + v9[8]))
  {
    return 0;
  }

  sub_1000198E8();
  scale<A, B>(_:_:)();
  scale<A, B>(_:_:)();
  return *(a1 + v9[10]) == *(a2 + v9[10]);
}

uint64_t sub_100A2B9DC(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100A2BA98()
{
  result = qword_1016B1DB0;
  if (!qword_1016B1DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1DB0);
  }

  return result;
}

unint64_t sub_100A2BAF0()
{
  result = qword_1016B1DB8;
  if (!qword_1016B1DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1DB8);
  }

  return result;
}

unint64_t sub_100A2BB44(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10160A538, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100A2BB90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101073BE8(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_100A2BBC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_101075400(KeyPath, v3, a2);
}

Swift::Int sub_100A2BC1C(uint64_t *a1)
{
  v2 = *(type metadata accessor for KeySyncMetadataDisplay(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100B32214(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100A472AC(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_100A2BCC4()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B7E0);
  sub_1000076D4(v0, qword_10177B7E0);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_100A2BD48(unsigned __int8 a1)
{
  v1 = 0xD00000000000002CLL;
  if (a1 > 4u)
  {
    v5 = 0xD00000000000003DLL;
    v6 = 0xD000000000000048;
    if (a1 != 8)
    {
      v6 = 0xD000000000000030;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD00000000000003ELL;
    if (a1 == 5)
    {
      v7 = 0xD000000000000038;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0xD000000000000041;
    v3 = 0xD000000000000033;
    if (a1 != 3)
    {
      v3 = 0xD00000000000002CLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (!a1)
    {
      v1 = 0xD00000000000002BLL;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100A2BE64()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B7F8);
  sub_1000076D4(v0, qword_10177B7F8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100A2BEE8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_100A2BD48(*a1);
  v5 = v4;
  if (v3 == sub_100A2BD48(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100A2BF70()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100A2BD48(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100A2BFD4(uint64_t a1)
{
  sub_100A2BD48(*v1);
  String.hash(into:)();
}

Swift::Int sub_100A2C028(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_100A2BD48(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100A2C088@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100A495B4(*a1);
  *a2 = result;
  return result;
}

id sub_100A2C0B8()
{
  v1 = *(v0 + 272);
  if (v1)
  {
    v2 = *(v0 + 272);
  }

  else
  {
    v3 = *(v0 + 280);
    v11[4] = &off_10162D7F0;
    v11[5] = &off_101643D48;
    v11[6] = &off_101643CB8;
    v11[7] = &off_101617400;
    v11[8] = &off_101643CE0;
    v11[9] = &off_101663530;
    v11[10] = &off_101643C98;
    v11[11] = &off_101622B90;
    v11[12] = &off_10161A578;
    v11[13] = &off_101641BB0;
    v11[14] = &off_1016697F0;
    v11[3] = type metadata accessor for BeaconManagerService(0);
    v11[0] = v0;
    v4 = type metadata accessor for BeaconManagerTrampoline();
    v5 = objc_allocWithZone(v4);
    sub_1007BEC04(v11, &v5[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation]);
    *&v5[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_beaconStore] = v3;
    v10.receiver = v5;
    v10.super_class = v4;

    v6 = objc_msgSendSuper2(&v10, "init");
    sub_100007BAC(v11);
    v7 = *(v0 + 272);
    *(v0 + 272) = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

void *sub_100A2C208()
{
  v1 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService____lazy_storage___unauthorizedTracking;
  if (*(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService____lazy_storage___unauthorizedTracking))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService____lazy_storage___unauthorizedTracking);
  }

  else
  {
    v3 = *(v0 + 280);
    v4 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_accessoryMetadataManager);
    type metadata accessor for UnauthorizedTracking();
    swift_allocObject();

    v2 = sub_100781D48(v3, v4);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100A2C2B8()
{
  v1 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService____lazy_storage___maskedIdentifierService;
  if (*(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService____lazy_storage___maskedIdentifierService))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService____lazy_storage___maskedIdentifierService);
  }

  else
  {
    type metadata accessor for MaskedIdentifierService();
    swift_allocObject();

    v2 = sub_101085084(v3);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100A2C34C()
{
  v1 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService____lazy_storage___accessoryPairingValidator;
  if (*(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService____lazy_storage___accessoryPairingValidator))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService____lazy_storage___accessoryPairingValidator);
  }

  else
  {
    type metadata accessor for AccessoryPairingValidator();
    v2 = swift_allocObject();
    type metadata accessor for DeviceIdentityUtility(0);
    v3 = swift_allocObject();
    swift_defaultActor_initialize();
    v4 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
    v5 = type metadata accessor for Date();
    (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
    *(v3 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
    *(v3 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
    *(v3 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 9;
    *(v2 + 16) = v3;
    *(v2 + 24) = 0;
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t (*sub_100A2C460())@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v1 = (v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService____lazy_storage___payloadDecodingBlock);
  v2 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService____lazy_storage___payloadDecodingBlock);
  v3 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService____lazy_storage___payloadDecodingBlock + 8);
  if (v2)
  {
    v4 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService____lazy_storage___payloadDecodingBlock);
  }

  else
  {
    v4 = sub_100A4E408;
    *v1 = sub_100A4E408;
    v1[1] = v0;
    swift_retain_n();
    sub_1000BB27C(0, v3);
  }

  sub_100012908(v2, v3);
  return v4;
}

uint64_t sub_100A2C4E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>)
{
  v51 = a2;
  v7 = type metadata accessor for UUID();
  v49 = *(v7 - 8);
  v50 = v7;
  __chkstk_darwin(v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DateInterval();
  v52 = *(v14 - 8);
  v53 = v14;
  __chkstk_darwin(v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = dispatch_group_create();
  v18 = *(a4 + 280);
  sub_100025020(a1, &v54);
  if (!v55)
  {

    sub_10000B3A8(&v54, &qword_101696920, &unk_10138B200);
    v32 = type metadata accessor for TimeBasedKey(0);
    return (*(*(v32 - 8) + 56))(a3, 1, 1, v32);
  }

  sub_100031694(&v54, v56);
  (*(v11 + 16))(v13, v51, v10);
  DateInterval.init(start:duration:)();
  v19 = v57;
  v20 = v58;
  v21 = sub_1000035D0(v56, v57);
  v22 = sub_100B03A58(v21, v16, 0, 1, 0, v18, v19, v20);
  if (v24 > 1u)
  {
    v34 = a3;
    if (v24 == 2)
    {
      sub_100359088(v22, v23, 2u);
    }

    v35 = static os_log_type_t.default.getter();
    if (qword_101695028 != -1)
    {
      swift_once();
    }

    v36 = qword_10177C370;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_101385D80;
    v39 = v57;
    v38 = v58;
    sub_1000035D0(v56, v57);
    (*(*(*(v38 + 8) + 8) + 32))(v39);
    v40 = UUID.uuidString.getter();
    v42 = v41;
    (*(v49 + 8))(v9, v50);
    *(v37 + 56) = &type metadata for String;
    *(v37 + 64) = sub_100008C00();
    *(v37 + 32) = v40;
    *(v37 + 40) = v42;

    (*(v52 + 8))(v16, v53);
    v43 = type metadata accessor for TimeBasedKey(0);
    (*(*(v43 - 8) + 56))(v34, 1, 1, v43);
    return sub_100007BAC(v56);
  }

  v25 = v23;
  v26 = v22;
  if (v24)
  {
    if (*(v22 + 16))
    {
      v27 = type metadata accessor for TimeBasedKey(0);
      v28 = *(v27 - 8);
      sub_100A4E410(v26 + ((*(v28 + 80) + 32) & ~*(v28 + 80)), a3, type metadata accessor for TimeBasedKey);

      v29 = v26;
      v30 = v25;
      v31 = 1;
      goto LABEL_14;
    }

    v44 = v26;
    v45 = v25;
    v46 = 1;
LABEL_17:
    sub_100359088(v44, v45, v46);
    (*(v52 + 8))(v16, v53);
    v47 = type metadata accessor for TimeBasedKey(0);
    (*(*(v47 - 8) + 56))(a3, 1, 1, v47);
    return sub_100007BAC(v56);
  }

  if (!*(v22 + 16))
  {

    v44 = v26;
    v45 = v25;
    v46 = 0;
    goto LABEL_17;
  }

  v27 = type metadata accessor for TimeBasedKey(0);
  v28 = *(v27 - 8);
  sub_100A4E410(v26 + ((*(v28 + 80) + 32) & ~*(v28 + 80)), a3, type metadata accessor for TimeBasedKey);

  v29 = v26;
  v30 = v25;
  v31 = 0;
LABEL_14:
  sub_100359088(v29, v30, v31);
  (*(v52 + 8))(v16, v53);
  (*(v28 + 56))(a3, 0, 1, v27);
  return sub_100007BAC(v56);
}

double *sub_100A2CAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v119 = a7;
  v115 = a6;
  v118 = a5;
  v114 = a4;
  v117 = a3;
  v116 = a2;
  v113 = a1;
  v125 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v125);
  v9 = v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v12 = v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v13 = *(v127 - 8);
  __chkstk_darwin(v127);
  v15 = v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = v15;
  v7[2] = 0xD000000000000014;
  v7[3] = 0x80000001013D3280;
  v112[1] = 0x80000001013D3280;
  v130 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v7[4] = 0;
  v7[5] = 0;
  v131 = v7;
  LODWORD(v129) = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v124 = *(v13 + 104);
  v124(v15);
  static DispatchQoS.unspecified.getter();
  *&v133 = _swiftEmptyArrayStorage;
  v16 = sub_100A4BFC4(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v17 = sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  v18 = sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  v128 = v17;
  v19 = v18;
  v126 = v16;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = v121;
  v7[6] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v112[0] = "rvice.BeaconManagerService";
  v21 = v20;
  v22 = v129;
  v23 = v127;
  (v124)(v21, v129, v127);
  static DispatchQoS.unspecified.getter();
  *&v133 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = v121;
  v131[7] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v112[0] = "BeaconSerialQueue";
  v25 = v124;
  (v124)(v24, v22, v23);
  v123 = v13 + 104;
  static DispatchQoS.unspecified.getter();
  *&v133 = _swiftEmptyArrayStorage;
  v122 = v19;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v131[8] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v112[0] = "rdsAdvertisementCacheQueue";
  v26 = v129;
  (v25)(v24, v129, v127);
  v27 = v25;
  static DispatchQoS.unspecified.getter();
  *&v133 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v28 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v29 = v131;
  v131[9] = v28;
  v29[10] = 0;
  v112[0] = "eLocalBeaconSerialQueue";
  v30 = v127;
  v27(v24, v26, v127);
  static DispatchQoS.unspecified.getter();
  *&v133 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v131[11] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v112[0] = "LocationsSerialQueue";
  v27(v24, v129, v30);
  v31 = v27;
  static DispatchQoS.unspecified.getter();
  *&v133 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v32 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v33 = v131;
  v131[12] = v32;
  v112[0] = "gerService.allBeacons";
  v34 = v129;
  v35 = v127;
  v31(v24, v129, v127);
  static DispatchQoS.unspecified.getter();
  *&v133 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v36 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v37 = v33;
  v33[13] = v36;
  v38 = v35;
  v39 = v9;
  v40 = v37;
  v41 = v124;
  (v124)(v24, v34, v38);
  static DispatchQoS.unspecified.getter();
  *&v133 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v40[14] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v112[0] = "gerService.allUnknownBeacons";
  v42 = v127;
  (v41)(v24, v129, v127);
  static DispatchQoS.unspecified.getter();
  *&v133 = _swiftEmptyArrayStorage;
  v120 = v39;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v131[15] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v112[0] = "gerService.unacceptedBeacons";
  v43 = v129;
  v44 = v124;
  (v124)(v24, v129, v42);
  static DispatchQoS.unspecified.getter();
  *&v133 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v45 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v46 = v131;
  v131[16] = v45;
  v112[0] = "gerService.latestLocations";
  v47 = v43;
  v48 = v127;
  v44(v24, v47, v127);
  static DispatchQoS.unspecified.getter();
  *&v133 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v49 = v121;
  v46[17] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v112[0] = "gerService.commandKeys";
  v50 = v49;
  v51 = v49;
  v52 = v129;
  v53 = v124;
  (v124)(v50, v129, v48);
  static DispatchQoS.unspecified.getter();
  *&v133 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v54 = v51;
  v55 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v56 = v131;
  v131[18] = v55;
  v112[0] = "gerService.pairing";
  v57 = v127;
  v53(v54, v52, v127);
  static DispatchQoS.unspecified.getter();
  *&v133 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v58 = v121;
  v56[19] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  (v124)(v58, v129, v57);
  static DispatchQoS.unspecified.getter();
  *&v133 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v112[0] = v12;
  v131[20] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  sub_101074BE8(v133);
  v60 = v59;

  v61 = v131;
  v131[21] = v60;
  v61[22] = 0;
  type metadata accessor for MaintenanceConnectionObserveriOS();
  swift_allocObject();
  v61[23] = sub_1008A9EFC();
  *(v61 + 12) = 0u;
  *(v61 + 13) = 0u;
  *(v61 + 14) = 0u;
  *(v61 + 248) = 6;
  type metadata accessor for Sequencer();
  v61[32] = Sequencer.__allocating_init(name:softTimeout:hardTimeout:)();
  type metadata accessor for XPCSessionManager();
  swift_allocObject();
  v61[33] = XPCSessionManager.init(name:)();
  v61[34] = 0;
  v61[36] = 0;
  v62 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_configSubscription;
  v63 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  (*(*(v63 - 8) + 56))(v61 + v62, 1, 1, v63);
  PressuredExitTransactionManager.init()();
  *(v61 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_afterFirstUnlockActivity) = 0;
  *(v61 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_pruneActivity) = 0;
  *(v61 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_legacyStateCapture) = 0;
  *(v61 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_stateCapture) = 0;
  v64 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_locationFetchService;
  type metadata accessor for LocationFetchService();
  swift_allocObject();
  *(v61 + v64) = sub_1007D66E8();
  v65 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_locatableStateMonitor;
  type metadata accessor for LocatableStateMonitor();
  v66 = swift_allocObject();
  swift_defaultActor_initialize();
  OS_dispatch_queue.sync<A>(execute:)();
  sub_101074EC8(v133);

  sub_1000BC4D4(&qword_1016B1270, &qword_101390A00);
  *(v66 + 112) = AsyncKeyedThrottle.__allocating_init(throttleInterval:)();
  *(v66 + 120) = 0;
  *(v61 + v65) = v66;
  *(v61 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_keySyncMetadataStateCapture) = 0;
  v67 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_observationSubscription;
  v68 = sub_1000BC4D4(&unk_1016B1E80, &qword_10138CDE0);
  (*(*(v68 - 8) + 56))(v61 + v67, 1, 1, v68);
  v69 = v61 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_beaconUUIDsLocalLocating;
  *v69 = 0;
  *(v69 + 1) = &_swiftEmptySetSingleton;
  v70 = v61 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_beaconUUIDsLocating;
  *v70 = 0;
  *(v70 + 1) = _swiftEmptyDictionarySingleton;
  *(v61 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_beaconKeyManagerURLChangedSubscription) = 1;
  *(v61 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_checkInPostInstallXPCActivity) = 0;
  *(v61 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService____lazy_storage___unauthorizedTracking) = 0;
  *(v61 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_pairingSessionCoordinators) = _swiftEmptyDictionarySingleton;
  *(v61 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService____lazy_storage___maskedIdentifierService) = 0;
  *(v61 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_playbackCoordinatorByBeaconIdentifier) = _swiftEmptyDictionarySingleton;
  v71 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_playbackCoordinatorModQueue;
  (v124)(v58, v129, v127);
  static DispatchQoS.unspecified.getter();
  *&v133 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v61 + v71) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v72 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_pairingValidator;
  type metadata accessor for PairingValidator();
  v73 = swift_allocObject();
  *(v73 + 16) = 0;
  *(v61 + v72) = v73;
  *(v61 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService____lazy_storage___accessoryPairingValidator) = 0;
  v74 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_connectableDevicesChangedSubject;
  *&v133 = 0;
  sub_1000BC4D4(&qword_1016AF9D8, &unk_1013D37E0);
  swift_allocObject();
  *(v61 + v74) = CurrentValueSubject.init(_:)();
  v75 = (v61 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService____lazy_storage___payloadDecodingBlock);
  *v75 = 0;
  v75[1] = 0;
  *(v61 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_shouldForceFetch) = 0;
  *(v61 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_notifiedDaemonConfigurationChangedOnce) = 0;
  *(v61 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_messagingDevicesChangedSubscription) = 0;
  *(v61 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_recordDeletedSubscription) = 0;
  *(v61 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_meDeviceChangedSubscription) = 0;
  *(v61 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_triggerFamilyUpdateSubscription) = 0;
  *(v61 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_nvramAlreadyChecked) = 0;
  v76 = v113;
  v61[35] = v113;
  *(v61 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_fmipStateManager) = v116;
  *(v61 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_appActivity) = v117;
  v77 = v114;
  *(v61 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_localPairingMonitor) = v114;
  v78 = qword_101695510;
  swift_retain_n();

  if (v78 != -1)
  {
    swift_once();
  }

  v129 = qword_10177CEA0;
  v79 = *(qword_10177CEA0 + 24);
  type metadata accessor for LocationOfInterestProvider();
  v133 = 0u;
  v134 = 0u;
  v135 = 0;
  swift_allocObject();

  v80 = sub_100EB626C(v76, v79, &v133);
  v131[30] = v80;
  v81 = v115;
  v82 = v118;
  if (v115)
  {
    v130 = v115;
  }

  else
  {
    v83 = objc_allocWithZone(type metadata accessor for TagCommandManager());

    v130 = sub_10089263C(v84, sub_1009B6A00, 0);
  }

  *(v131 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_tagCommandManager) = v130;
  if (v82)
  {
    v85 = v81;
    v86 = v130;
    v87 = v82;
  }

  else
  {
    type metadata accessor for BluetoothCommunicationCoordinator();
    swift_allocObject();
    v88 = v81;
    v89 = v130;
    v87 = sub_10118FD4C();
  }

  v90 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_bluetoothCommunicatorCoordinator;
  v91 = v131;
  *(v131 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_bluetoothCommunicatorCoordinator) = v87;
  type metadata accessor for WildModeAssociationManager();
  swift_allocObject();

  *(v91 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_wildModeAssociationManager) = sub_100887EC8(v76);
  if (v119)
  {
    v92 = v119;
  }

  else
  {
    v93 = *(v131 + v90);
    type metadata accessor for AccessoryMetadataManager();
    swift_allocObject();

    v92 = sub_10035ADBC(v76, v93);
  }

  v94 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_accessoryMetadataManager;
  v95 = v131;
  *(v131 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_accessoryMetadataManager) = v92;
  type metadata accessor for ProductInfoManager();
  swift_allocObject();

  *(v95 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_productInfoManager) = sub_101090E18(v76, v92);
  v96 = *(v95 + v90);
  v97 = *(v95 + v94);
  type metadata accessor for ClassicPairingSupport();
  swift_allocObject();

  v98 = sub_1004670C0(v76, v77, v96, v97);

  *(v95 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_classicPairingSupport) = v98;
  v99 = *(v95 + v90);
  v100 = objc_allocWithZone(type metadata accessor for SoundPlaybackManager());

  *(v95 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_soundPlaybackManager) = sub_100801C00(v76, v99);
  type metadata accessor for TheftDeterrenceStateManager();
  swift_allocObject();
  *(v95 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_theftDeterrenceStateManager) = sub_100EF9F30();

  v101 = CurrentValueSubject.eraseToAnyCurrentValuePublisher()();

  *(v95 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_connectableDevicesChangedPublisher) = v101;

  v103 = sub_100F3A560(v102);
  *(&v134 + 1) = &type metadata for SingleUserAdapter;
  v135 = &off_10165C0E8;
  *&v133 = v103;
  *(&v133 + 1) = v104;
  *&v134 = v105;
  sub_10001F280(&v133, v95 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_cbPeripheralManager);
  type metadata accessor for FirmwareUpdateService();
  swift_allocObject();

  *(v95 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_firmwareUpdateService) = sub_10024FBB4(v106);
  type metadata accessor for FirmwareUpdateScheduler(0);
  swift_allocObject();
  v107 = swift_retain_n();
  *(v95 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_firmwareUpdateScheduler) = sub_100235F98(v107);
  sub_10073CE3C();
  sub_100910D08();

  v108 = AnyCurrentValuePublisher.publisher.getter();

  v132 = v108;
  swift_allocObject();
  swift_weakInit();
  sub_1000BC4D4(&unk_1016B2A90, &unk_10138CBC0);
  sub_1000041A4(&qword_101697B80, &unk_1016B2A90, &unk_10138CBC0, &protocol conformance descriptor for AnyPublisher<A, B>);
  v109 = Publisher<>.sink(receiveValue:)();

  *(v95 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_meDeviceChangedSubscription) = v109;

  type metadata accessor for AccessoryFirmwareUpdateManager();
  swift_allocObject();
  v110 = sub_1010517B8(v76);

  v95[22] = v110;

  sub_100007BAC(&v133);
  return v95;
}

uint64_t sub_100A2E114(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100A8306C(0x12u);
  }

  return result;
}

uint64_t sub_100A2E174(uint64_t a1)
{
  if (*(v1 + 40))
  {
    sub_1003FD838();
    swift_allocError();
    *v2 = 8;
    return swift_willThrow();
  }

  else
  {
    *(v1 + 40) = a1;

    sub_1000BC4D4(&qword_1016B2A78, &qword_1013EACA0);
    sub_1000041A4(&unk_1016B2A80, &qword_1016B2A78, &qword_1013EACA0, &protocol conformance descriptor for AnyPublisher<A, B>);
    v4 = v1;
    v5 = Publisher<>.sink(receiveValue:)();

    *(v4 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_triggerFamilyUpdateSubscription) = v5;
  }
}

uint64_t sub_100A2E2A8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = static os_log_type_t.debug.getter();
  if (qword_101695028 != -1)
  {
    v11 = v7;
    swift_once();
    v7 = v11;
  }

  os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, qword_10177C370, "BeaconManagerService subscription to triggerFamilyUpdatePublisher triggered.", 76, 2, _swiftEmptyArrayStorage);
  v8 = *(a2 + 56);
  *v6 = v8;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.notOnQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if (v8)
  {
    type metadata accessor for Transaction();
    return static Transaction.named<A>(_:with:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100A2E46C()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&unk_1016B2820, &qword_1013D3710);
  __chkstk_darwin(v2 - 8);
  v4 = v15 - v3;
  v5 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v5 - 8);
  v7 = v15 - v6;
  type metadata accessor for Transaction();
  static Transaction.named<A>(_:with:)();
  v8 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_locatableStateMonitor);
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v8;

  sub_10025EDD4(0, 0, v7, &unk_1013D3718, v10);

  if (static SystemInfo.isInternalBuild.getter())
  {
    swift_allocObject();
    swift_weakInit();
    type metadata accessor for StateCapture();
    swift_allocObject();
    *(v1 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_keySyncMetadataStateCapture) = StateCapture.init(_:)();
  }

  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v11 = qword_10177B2E8;
  v16 = type metadata accessor for BeaconManagerService(0);
  v17 = &off_101643C88;
  v15[0] = v1;
  __chkstk_darwin(v16);
  v15[-2] = v15;
  v15[-1] = v11;

  v12 = sub_1000BC4D4(&unk_1016B1E80, &qword_10138CDE0);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_100007BAC(v15);
  (*(*(v12 - 8) + 56))(v4, 0, 1, v12);
  v13 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_observationSubscription;
  swift_beginAccess();
  sub_10002311C(v4, v1 + v13, &unk_1016B2820, &qword_1013D3710);
  swift_endAccess();
  return sub_100802044();
}

uint64_t sub_100A2E80C(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v14 = *(v5 - 8);
  v15 = v5;
  __chkstk_darwin(v5);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[2] = a1[6];
  aBlock[4] = sub_100A4D6CC;
  aBlock[5] = a1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101644588;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_100A4BFC4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);
  (*(v16 + 8))(v4, v2);
  (*(v14 + 8))(v7, v15);

  v10 = a1[5];
  if (v10)
  {
    aBlock[0] = *(v10 + 312);

    sub_1000BC4D4(&unk_1016B2870, &qword_1013B1320);
    sub_1000041A4(&qword_101697B68, &unk_1016B2870, &qword_1013B1320, &protocol conformance descriptor for AnyPublisher<A, B>);
    v11 = Publisher<>.sink(receiveValue:)();

    *(a1 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_messagingDevicesChangedSubscription) = v11;

    aBlock[0] = *(a1[35] + OBJC_IVAR____TtC12searchpartyd11BeaconStore_recordDeletedPublisher);
    swift_allocObject();
    swift_weakInit();

    sub_1000BC4D4(&qword_1016B2880, &qword_1013CAF30);
    sub_1000041A4(&qword_101698DC0, &qword_1016B2880, &qword_1013CAF30, &protocol conformance descriptor for AnyPublisher<A, B>);
    v12 = Publisher<>.sink(receiveValue:)();

    *(a1 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_recordDeletedSubscription) = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100A2EC58(uint64_t a1)
{
  v190 = a1;
  v1 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v1 - 8);
  v160 = &v158 - v2;
  v161 = sub_1000BC4D4(&qword_1016B2888, &qword_1013D3748);
  v159 = *(v161 - 8);
  __chkstk_darwin(v161);
  v158 = &v158 - v3;
  v4 = sub_1000BC4D4(&unk_1016B2890, &qword_1013D3750);
  v163 = *(v4 - 8);
  v164 = v4;
  __chkstk_darwin(v4);
  v162 = &v158 - v5;
  v197 = type metadata accessor for XPCServiceDescription();
  v188 = *(v197 - 8);
  v6 = __chkstk_darwin(v197);
  v182 = &v158 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v184 = &v158 - v8;
  v9 = type metadata accessor for MachServiceName();
  v193 = *(v9 - 8);
  v194 = v9;
  v10 = __chkstk_darwin(v9);
  v181 = &v158 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v183 = &v158 - v13;
  __chkstk_darwin(v12);
  v192 = &v158 - v14;
  v196 = sub_1000BC4D4(&qword_101697E00, &qword_10139A1B0);
  v189 = *(v196 - 8);
  __chkstk_darwin(v196);
  v187 = (&v158 - v15);
  v16 = sub_1000BC4D4(&qword_1016B28A0, &unk_101393D00);
  __chkstk_darwin(v16 - 8);
  v186 = &v158 - v17;
  v18 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v18 - 8);
  v191 = &v158 - v19;
  v180 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v180);
  v179 = (&v158 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v178 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v176 = *(v178 - 8);
  __chkstk_darwin(v178);
  v177 = &v158 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for URL();
  v173 = *(v22 - 8);
  v174 = v22;
  v23 = __chkstk_darwin(v22);
  v169 = &v158 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v170 = &v158 - v25;
  v26 = type metadata accessor for BeaconPayloadFileManager(0);
  __chkstk_darwin(v26 - 8);
  v168 = &v158 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchWorkItemFlags();
  v195 = *(v28 - 8);
  __chkstk_darwin(v28);
  v30 = &v158 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DispatchQoS();
  v32 = *(v31 - 8);
  v166 = v31;
  v167 = v32;
  v33 = __chkstk_darwin(v31);
  v175 = &v158 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v36 = &v158 - v35;
  v37 = type metadata accessor for DispatchQoS.QoSClass();
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = &v158 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v38 + 104))(v40, enum case for DispatchQoS.QoSClass.default(_:), v37);
  v185 = v41;
  v42 = static OS_dispatch_queue.global(qos:)();
  (*(v38 + 8))(v40, v37);
  v206 = sub_100A30CAC;
  v207 = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  v205 = &unk_1016445B0;
  v43 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v203[0] = _swiftEmptyArrayStorage;
  sub_100A4BFC4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v44 = v190;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v43);

  v45 = v30;
  v47 = v166;
  v46 = v167;
  (*(v195 + 8))(v45, v28);
  v171 = *(v46 + 8);
  v172 = v46 + 8;
  v171(v36, v47);
  v195 = *(v44 + 280);
  sub_100A9B21C();
  sub_1003D8548();
  sub_100402860();
  v48 = v169;
  sub_100F4CE88();
  v49 = v170;
  URL.appendingPathComponent(_:isDirectory:)();
  (*(v173 + 8))(v48, v174);
  v50 = v168;
  sub_1011A7624(v49, v168);
  sub_1011A7A60(sub_100A36804, 0);
  sub_100A4DCAC(v50, type metadata accessor for BeaconPayloadFileManager);
  v51 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    v157 = v51;
    swift_once();
    v51 = v157;
  }

  v174 = qword_10177C370;
  os_log(_:dso:log:_:_:)(v51, &_mh_execute_header, qword_10177C370, "Checking-in for com.apple.icloud.searchpartyuseragent.post-install.", 67, 2);
  v173 = 0x8000000101368E10;
  static DispatchQoS.background.getter();
  v52 = swift_allocObject();
  v165 = v36;
  v53 = v52;
  swift_weakInit();
  type metadata accessor for XPCActivity();
  v54 = swift_allocObject();
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v55 = swift_allocObject();
  *(v55 + 16) = 0;
  *(v54 + 40) = v55;
  swift_unknownObjectWeakInit();
  *(v54 + 88) = 0;
  v170 = "agent.post-install";
  *(v54 + 96) = 0;
  *(v54 + 104) = 0;
  (*(v46 + 16))(v175, v36, v47);
  (*(v176 + 104))(v177, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v178);
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100A4BFC4(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);

  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v54 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v54 + 24) = 0xD000000000000032;
  *(v54 + 32) = v173;
  *(v54 + 48) = sub_100A30DD8;
  *(v54 + 56) = 0;
  *(v54 + 64) = sub_100A4D6E4;
  *(v54 + 72) = v53;

  sub_100997398();

  v171(v165, v47);

  v56 = v190;
  *(v190 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_checkInPostInstallXPCActivity) = v54;

  unsafeFromAsyncTask<A>(_:)();

  v57 = static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)(v57, &_mh_execute_header, v174, "BeaconManagerService darwin handlers set", 40, 2, _swiftEmptyArrayStorage);
  sub_100A2C2B8();

  sub_100E9B888();
  v58 = v195;
  sub_100A98658();
  v59 = *(v56 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_locationFetchService);
  aBlock[0] = *(v58 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_estimatedLocationSubject);
  sub_1000BC4D4(&qword_1016B28A8, &qword_1013D3768);
  sub_1000041A4(&qword_1016B28B0, &qword_1016B28A8, &qword_1013D3768, &protocol conformance descriptor for PassthroughSubject<A, B>);
  aBlock[0] = Publisher.eraseToAnyPublisher()();
  v60 = swift_allocObject();
  swift_weakInit();
  v61 = swift_allocObject();
  *(v61 + 16) = sub_100A4D788;
  *(v61 + 24) = v60;
  sub_1000BC4D4(&qword_1016B28B8, &qword_1013D3770);
  sub_1000041A4(&qword_1016B28C0, &qword_1016B28B8, &qword_1013D3770, &protocol conformance descriptor for AnyPublisher<A, B>);
  v62 = Publisher<>.sink(receiveValue:)();

  v59[21] = v62;

  v63 = type metadata accessor for TaskPriority();
  v64 = *(v63 - 8);
  v65 = v191;
  v179 = *(v64 + 56);
  v180 = v63;
  v178 = v64 + 56;
  v179(v191, 1, 1);
  v66 = swift_allocObject();
  v66[2] = 0;
  v66[3] = 0;
  v66[4] = v59;

  sub_100BB9ADC(0, 0, v65, &unk_1013D3778, v66);

  sub_10000B3A8(v65, &qword_101698C00, &qword_10138B570);
  v67 = v59[14];
  v68 = v59[15];
  v59[14] = &unk_1013D3788;
  v59[15] = v56;

  sub_1000BB27C(v67, v68);
  v69 = *(v56 + 288);
  if (v69)
  {
    v70 = v69;
    dispatch thunk of UserDefaultsObserver.start()();
  }

  v71 = v192;
  v72 = v193;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v73 = type metadata accessor for BeaconManagerService(0);
  v205 = v73;
  v206 = &off_101643C78;
  aBlock[0] = v56;

  v74 = v186;
  sub_10014F468(aBlock, v186);
  sub_100007BAC(aBlock);
  v75 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  (*(*(v75 - 8) + 56))(v74, 0, 1, v75);
  v76 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_configSubscription;
  swift_beginAccess();
  sub_10002311C(v74, v56 + v76, &qword_1016B28A0, &unk_101393D00);
  swift_endAccess();
  v205 = v73;
  v206 = &off_101643C60;
  aBlock[0] = v56;

  v77 = v187;
  sub_1004F33B4(aBlock, v187);
  (v189[1])(v77, v196);
  sub_100007BAC(aBlock);
  v176 = type metadata accessor for Transaction();
  static Transaction.named<A>(_:with:)();
  v177 = 0;
  sub_100A37F8C();
  MachServiceName.init(_:)();
  v78 = (v72 + 16);
  v79 = v183;
  v80 = v194;
  v81 = *(v72 + 2);
  (v81)(v183, v71, v194);
  sub_100A2C0B8();
  if (qword_101694B88 != -1)
  {
    swift_once();
  }

  v82 = qword_1016B1DC0;

  v83 = v82;
  v84 = v184;
  XPCServiceDescription.init(name:options:exportedObject:exportedInterface:shouldAccept:interruptionHandler:invalidationHandler:)();
  v196 = *(v56 + 264);
  XPCSessionManager.register(service:)();
  MachServiceName.init(_:)();
  v186 = objc_opt_self();
  v85 = [v186 interfaceWithProtocol:&OBJC_PROTOCOL___SPSimpleBeaconUpdateClientXPCProtocol];
  v187 = v81;
  (v81)(v181, v79, v80);
  v86 = v80;
  v87 = *(v56 + 272);

  v88 = v85;
  v189 = v78;
  v89 = v79;
  v90 = v88;
  v91 = v87;
  v92 = v182;
  XPCServiceDescription.init(name:options:exportedObject:exportedInterface:remoteObjectInterface:shouldAccept:interruptionHandler:invalidationHandler:)();
  XPCSessionManager.register(service:)();

  v93 = *(v188 + 1);
  v94 = v197;
  v93(v92, v197);
  v95 = v93;
  v188 = v93;
  v96 = *(v193 + 1);
  v96(v89, v86);
  v193 = v96;
  v95(v84, v94);
  v97 = v192;
  v96(v192, v86);
  MachServiceName.init(_:)();
  (v187)(v89, v97, v86);
  v98 = *(v56 + 272);
  v99 = [v186 interfaceWithProtocol:&OBJC_PROTOCOL___SPPairingManagerXPCProtocol];

  XPCServiceDescription.init(name:options:exportedObject:exportedInterface:shouldAccept:interruptionHandler:invalidationHandler:)();
  XPCSessionManager.register(service:)();
  v188(v84, v197);
  v193(v97, v86);
  sub_100A3713C();
  MachServiceName.init(_:)();
  v100 = [v186 interfaceWithProtocol:&OBJC_PROTOCOL___SPCBPeripheralManagementXPCProtocol];
  (v187)(v89, v97, v86);
  v101 = *(v56 + 272);
  v102 = v100;
  v103 = v101;
  XPCServiceDescription.init(name:options:exportedObject:exportedInterface:shouldAccept:interruptionHandler:invalidationHandler:)();
  XPCSessionManager.register(service:)();

  v188(v84, v197);
  v193(v97, v194);
  sub_10042E0E8();
  v104 = *(v56 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_firmwareUpdateService);
  v105 = v191;
  (v179)(v191, 1, 1, v180);
  v106 = swift_allocObject();
  v106[2] = 0;
  v106[3] = 0;
  v106[4] = v104;

  sub_1008CE048(0, 0, v105, &unk_1013D3790, v106);

  result = sub_10000B3A8(v105, &qword_101698C00, &qword_10138B570);
  if (!*(v56 + 40))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  v108 = AnyCurrentValuePublisher.publisher.getter();

  if (qword_101695510 != -1)
  {
    swift_once();
  }

  v196 = qword_10177CEA0;

  v109 = AnyCurrentValuePublisher.publisher.getter();

  v110 = objc_allocWithZone(type metadata accessor for CurrentLocationMonitor());
  v111 = CurrentLocationMonitor.init(mode:desiredAccuracy:)(1, 0, 1);
  v205 = &type metadata for SystemInfo;
  v206 = &off_10165ABD8;
  sub_10001F280(aBlock, v203);
  sub_10015049C(v203, v203[3]);
  v202[3] = &type metadata for SystemInfo;
  v202[4] = &off_10165ABD8;
  type metadata accessor for SeparationMonitoringStateDecider.iOS();
  v112 = swift_allocObject();
  sub_10015049C(v202, &type metadata for SystemInfo);
  v201[3] = &type metadata for SystemInfo;
  v201[4] = &off_10165ABD8;
  v112[13] = v108;
  sub_10001F280(v201, v200);
  sub_10015049C(v200, v200[3]);
  v199[3] = &type metadata for SystemInfo;
  v199[4] = &off_10165ABD8;
  v112[12] = _swiftEmptyArrayStorage;
  v197 = v109;
  v112[2] = v109;
  LOBYTE(v198) = 6;
  v194 = sub_1000BC4D4(&qword_101697B98, &unk_10138CBD0);
  swift_allocObject();

  v112[11] = CurrentValueSubject.init(_:)();
  sub_10001F280(v199, (v112 + 3));
  v112[8] = v111;
  v112[9] = &protocol witness table for CurrentLocationMonitor;
  v198 = 0;
  sub_1000BC4D4(&qword_1016B2990, &qword_1013D37A0);
  swift_allocObject();
  v113 = v111;
  v112[10] = CurrentValueSubject.init(_:)();
  v114 = v112[9];
  ObjectType = swift_getObjectType();
  v116 = *(v114 + 32);

  v116(v117, &off_10160F8F0, ObjectType, v114);

  sub_100007BAC(v201);
  sub_100007BAC(v199);
  sub_100007BAC(v200);
  sub_100007BAC(v202);
  sub_100007BAC(v203);
  sub_100007BAC(aBlock);
  *(v56 + 216) = v112;

  v118 = *(v56 + 216);
  if (v118)
  {
    aBlock[0] = *(v118 + 88);
    sub_1000041A4(&qword_1016B2998, &qword_101697B98, &unk_10138CBD0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
    sub_100A4DA50();
    v119 = v158;
    Publisher<>.removeDuplicates()();
    aBlock[0] = *(v56 + 48);
    v120 = aBlock[0];
    v121 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v122 = v160;
    (*(*(v121 - 8) + 56))(v160, 1, 1, v121);
    sub_1000041A4(&unk_1016B29A8, &qword_1016B2888, &qword_1013D3748, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
    sub_1004682F0();
    v123 = v120;
    v125 = v161;
    v124 = v162;
    Publisher.receive<A>(on:options:)();
    sub_10000B3A8(v122, &unk_1016B0FE0, &unk_101391980);

    (*(v159 + 8))(v119, v125);
    swift_allocObject();
    swift_weakInit();
    sub_1000041A4(&qword_1016B29B8, &unk_1016B2890, &qword_1013D3750, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v126 = v164;
    v127 = Publisher<>.sink(receiveValue:)();

    (*(v163 + 8))(v124, v126);
  }

  else
  {
    v127 = 0;
  }

  v128 = v195;
  *(v56 + 232) = v127;

  v129 = qword_101694920;

  if (v129 != -1)
  {
    swift_once();
  }

  v130 = qword_10177B2E8;
  type metadata accessor for SeparationStateSyncManager(0);
  v131 = swift_allocObject();
  *(v131 + 40) = 0u;
  *(v131 + 56) = 0u;
  *(v131 + 72) = 0;
  v132 = OBJC_IVAR____TtC12searchpartyd26SeparationStateSyncManager_observationStoreSubscription;
  v133 = sub_1000BC4D4(&unk_1016B1E80, &qword_10138CDE0);
  (*(*(v133 - 8) + 56))(v131 + v132, 1, 1, v133);
  *(v131 + 16) = v128;
  *(v131 + 24) = v130;
  *(v131 + 32) = v112;
  *(v56 + 224) = v131;

  if (!*(v56 + 40))
  {
    goto LABEL_27;
  }

  sub_10057F8D8();

  sub_100887D6C();
  sub_10073C0D8();

  sub_10023634C(v134);
  sub_1010910D0();
  v135 = *(v56 + 184);

  v136 = AnyCurrentValuePublisher.publisher.getter();

  aBlock[0] = v136;
  swift_allocObject();
  swift_weakInit();
  sub_1000BC4D4(&qword_1016B29C0, &qword_1013D37A8);
  sub_1000041A4(&qword_1016B29C8, &qword_1016B29C0, &qword_1013D37A8, &protocol conformance descriptor for AnyPublisher<A, B>);
  v137 = Publisher<>.sink(receiveValue:)();

  *(v56 + 192) = v137;

  v138 = *(v56 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_connectableDevicesChangedPublisher);
  v139 = swift_allocObject();
  *(v139 + 16) = v135;
  *(v139 + 24) = v138;

  static Transaction.asyncTask(name:block:)();

  v140 = CurrentValueSubject.eraseToAnyCurrentValuePublisher()();
  v141 = *(v196 + 24);
  type metadata accessor for PersistentConnectionObserveriOS();
  swift_allocObject();

  *(v56 + 200) = sub_10093F960(v140, v141);

  if (*(v56 + 200))
  {

    v142 = AnyCurrentValuePublisher.publisher.getter();

    aBlock[0] = v142;
    swift_allocObject();
    swift_weakInit();
    sub_1000BC4D4(&qword_1016B29D0, &qword_1013D37B8);
    sub_1000041A4(&qword_1016B29D8, &qword_1016B29D0, &qword_1013D37B8, &protocol conformance descriptor for AnyPublisher<A, B>);
    v143 = Publisher<>.sink(receiveValue:)();
  }

  else
  {
    v143 = 0;
  }

  *(v56 + 208) = v143;

  v144 = *(v56 + 200);
  if (v144)
  {
    v145 = *(*v144 + 152);

    v145(v146);
  }

  v147 = *(v56 + 216);
  if (v147)
  {
    v148 = *(*v147 + 168);

    v148(v149);
  }

  sub_100EB6514();
  v150 = v195;

  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  sub_1010108B8(aBlock[0], v56);

  v151 = (v150 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_resetHandler);
  v152 = *(v150 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_resetHandler);
  v153 = *(v150 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_resetHandler + 8);
  *v151 = sub_100A4DB54;
  v151[1] = v56;

  sub_1000BB27C(v152, v153);
  v154 = (v150 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconStoreChanged);
  v155 = *(v150 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconStoreChanged);
  v156 = *(v150 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconStoreChanged + 8);
  *v154 = sub_100A4DB5C;
  v154[1] = v56;

  sub_1000BB27C(v155, v156);

  sub_100B1B6D8(v150, v56);
}

uint64_t sub_100A30CAC()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.trustedNow.getter(v3);
  (*(v1 + 8))(v3, v0);
  v4 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    v6 = v4;
    swift_once();
    v4 = v6;
  }

  return os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, qword_10177C370, "TimeLatchRecord: first read is done", 35, 2, _swiftEmptyArrayStorage);
}

__n128 sub_100A30DD8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

uint64_t sub_100A30DEC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Transaction.capture()();
    if (a3 == 3)
    {
      sub_1009971C0();
    }

    else if (a3 == 2)
    {
      sub_1003DD418();
      v6 = static os_log_type_t.default.getter();
      if (qword_101695028 != -1)
      {
        v7 = v6;
        swift_once();
        v6 = v7;
      }

      os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, qword_10177C370, "Running com.apple.icloud.searchpartyuseragent.post-install - task completed.", 76, 2, _swiftEmptyArrayStorage);
      sub_1009971E8();
    }
  }

  return result;
}

uint64_t sub_100A30EF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_100A32DEC();
}

uint64_t sub_100A30F84(uint64_t a1, uint64_t a2)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return _swift_task_switch(sub_100A30FA4, 0, 0);
}

uint64_t sub_100A30FA4()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = swift_allocObject();
  v0[16] = v3;
  *(v3 + 16) = v1;
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  *(v3 + 97) = *(v2 + 73);
  *(v3 + 88) = v6;
  *(v3 + 72) = v5;
  *(v3 + 56) = v4;
  v7 = *v2;
  *(v3 + 40) = v2[1];
  *(v3 + 24) = v7;

  sub_10000F4C8(v2, (v0 + 2));
  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_100A310D8;

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000022, 0x8000000101369110, sub_100A4E35C, v3, &type metadata for () + 1);
}

uint64_t sub_100A310D8()
{

  return _swift_task_switch(sub_100014748, 0, 0);
}

uint64_t sub_100A311F0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = *(result + 248);
    if (v2 == 7)
    {
      if (v5 != 7)
      {
        goto LABEL_11;
      }
    }

    else if (v2 == 6)
    {
      if (v5 != 6)
      {
LABEL_11:
        *(v4 + 248) = v2;
        if (qword_101694B70 != -1)
        {
          swift_once();
        }

        v6 = type metadata accessor for Logger();
        sub_1000076D4(v6, qword_10177B780);
        v7 = Logger.logObject.getter();
        v8 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          v10 = swift_slowAlloc();
          v14 = v10;
          *v9 = 136315138;
          v11 = String.init<A>(describing:)();
          v13 = sub_1000136BC(v11, v12, &v14);

          *(v9 + 4) = v13;
          _os_log_impl(&_mh_execute_header, v7, v8, "Notifying clients of separation monitoring policy change to: %s", v9, 0xCu);
          sub_100007BAC(v10);
        }

        sub_100A9067C(1);

        sub_100A83364(1);
      }
    }

    else if ((v5 & 0xFE) == 6 || (sub_10076B778(v2, v5) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  return result;
}

void sub_100A31400(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = CFNotificationCenterGetDarwinNotifyCenter();
    if (v2)
    {
      v3 = v2;
      v4 = SPMaintenancePolicyChangedNotification;
      v5 = static os_log_type_t.default.getter();
      if (qword_101695028 != -1)
      {
        v8 = v5;
        swift_once();
        v5 = v8;
      }

      os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, qword_10177C370, "Posting SPMaintenancePolicyChangedNotification Darwin notification from service", 79, 2, _swiftEmptyArrayStorage);
      CFNotificationCenterPostNotification(v3, v4, 0, 0, 1u);
    }

    else
    {
      v6 = static os_log_type_t.error.getter();
      if (qword_101695028 != -1)
      {
        v7 = v6;
        swift_once();
        v6 = v7;
      }

      os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, qword_10177C370, "CFNotificationCenterGetDarwinNotifyCenter return nil!", 53, 2, _swiftEmptyArrayStorage);
    }
  }
}

uint64_t sub_100A3157C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_100A907FC();
  }

  return result;
}

uint64_t sub_100A315E8(uint64_t a1)
{
  v1 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    v3 = v1;
    swift_once();
    v1 = v3;
  }

  os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, qword_10177C370, "resetHandler called on BeaconManagerService", 43, 2, _swiftEmptyArrayStorage);
  type metadata accessor for Transaction();
  return static Transaction.named<A>(_:with:)();
}

uint64_t sub_100A316CC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v7 = *(v15 - 8);
  __chkstk_darwin(v15);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    v13 = v10;
    swift_once();
    v10 = v13;
  }

  os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, qword_10177C370, "beaconStoreChanged called on BeaconManagerService", 49, 2, _swiftEmptyArrayStorage);
  v14[1] = *(a2 + 48);
  aBlock[4] = sub_100A4E2B0;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016447E0;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_100A4BFC4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v15);
}

id sub_100A31A64(Swift::Void (__swiftcall *a1)(), uint64_t a2)
{
  v70 = a1;
  v4 = type metadata accessor for BeaconNamingRecord(0);
  v65 = *(v4 - 8);
  v66 = v4;
  __chkstk_darwin(v4);
  v63 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  v60 = *(v64 - 8);
  v6 = *(v60 + 64);
  v7 = __chkstk_darwin(v64);
  v61 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = v59 - v9;
  __chkstk_darwin(v8);
  v69 = v59 - v11;
  v12 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v12 - 8);
  v14 = v59 - v13;
  v15 = type metadata accessor for OwnedBeaconRecord(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v71 = (v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    v58 = v18;
    swift_once();
    v18 = v58;
  }

  v67 = qword_10177C370;
  os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, qword_10177C370, "BeaconManagerService: CloudKit is available", 43, 2, _swiftEmptyArrayStorage);
  v19 = type metadata accessor for Transaction();
  static Transaction.named<A>(_:with:)();
  static Transaction.named<A>(_:with:)();
  sub_1003DB678(v14);
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    v68 = v2;
    sub_10002AC44(v14, v71, type metadata accessor for OwnedBeaconRecord);

    result = MobileGestalt_get_current_device();
    if (result)
    {
      v21 = result;
      v22 = MobileGestalt_copy_userAssignedDeviceName_obj();

      if (v22)
      {
        v59[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v62 = v23;
      }

      else
      {
        v59[0] = 0;
        v62 = 0xE000000000000000;
      }

      result = MobileGestalt_get_current_device();
      if (result)
      {
        v24 = result;
        v59[1] = v19;
        v25 = MobileGestalt_copy_buildVersion_obj();

        if (v25)
        {
          v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = v28;
        }

        else
        {
          v27 = 0;
          v29 = 0xE000000000000000;
        }

        __chkstk_darwin(v26);
        v59[-2] = v30;
        v59[-1] = v31;
        v32 = v68;
        v33 = v69;
        QueueSynchronizer.conditionalSync<A>(_:)();
        v68 = v32;
        sub_1000D2A70(v33, v10, &unk_1016B29E0, &unk_1013B70E0);
        v34 = v66;
        if ((*(v65 + 6))(v10, 1, v66) == 1)
        {
          sub_10000B3A8(v10, &unk_1016B29E0, &unk_1013B70E0);
          v35 = v62;
          v36 = v27;
        }

        else
        {
          v37 = v63;
          sub_10002AC44(v10, v63, type metadata accessor for BeaconNamingRecord);
          v38 = (v37 + *(v34 + 32));
          v35 = v62;
          v36 = v27;
          if (*v38 == v59[0] && v38[1] == v62 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            if (v39 = (v71 + *(v15 + 60)), *v39 == v27) && v39[1] == v29 || (_stringCompareWithSmolCheck(_:_:expecting:)())
            {

              Transaction.capture()();

              sub_10000B3A8(v69, &unk_1016B29E0, &unk_1013B70E0);
              sub_100A4DCAC(v37, type metadata accessor for BeaconNamingRecord);
LABEL_29:
              sub_100A4DCAC(v71, type metadata accessor for OwnedBeaconRecord);
              goto LABEL_30;
            }
          }

          sub_100A4DCAC(v37, type metadata accessor for BeaconNamingRecord);
        }

        v40 = (v71 + *(v15 + 60));
        if (*v40 == v36 && v40[1] == v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          Transaction.capture()();

          v41 = v69;
        }

        else
        {
          v42 = swift_allocObject();
          v62 = v35;
          v43 = v42;
          swift_weakInit();
          v44 = swift_allocObject();
          v65 = j_j___s10FindMyBase11TransactionC7captureyyF;
          *(v44 + 2) = v43;
          *(v44 + 3) = j_j___s10FindMyBase11TransactionC7captureyyF;
          *(v44 + 4) = v70;
          v45 = swift_allocObject();
          v66 = v45;
          *(v45 + 16) = v36;
          *(v45 + 24) = v29;
          v46 = v61;
          sub_1000D2A70(v69, v61, &unk_1016B29E0, &unk_1013B70E0);
          v47 = (*(v60 + 80) + 16) & ~*(v60 + 80);
          v48 = (v6 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
          v49 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
          v50 = (v49 + 23) & 0xFFFFFFFFFFFFFFF8;
          v51 = swift_allocObject();
          sub_1000D2AD8(v46, v51 + v47, &unk_1016B29E0, &unk_1013B70E0);
          *(v51 + v48) = a2;
          v52 = (v51 + v49);
          v53 = v62;
          *v52 = v59[0];
          v52[1] = v53;
          v54 = (v51 + v50);
          *v54 = sub_100A4DBC8;
          v54[1] = v44;
          v55 = (v51 + ((v50 + 23) & 0xFFFFFFFFFFFFFFF8));
          v56 = v70;
          *v55 = v65;
          v55[1] = v56;
          swift_retain_n();

          sub_100A39D08(v71, sub_1002FD9B8, v66, sub_100A4DBD4, v51);

          v41 = v69;
        }

        sub_10000B3A8(v41, &unk_1016B29E0, &unk_1013B70E0);
        goto LABEL_29;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  sub_10000B3A8(v14, &unk_1016A9A20, &qword_10138B280);
LABEL_30:
  sub_100A387D4();
  if (*(a2 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_shouldForceFetch) == 1)
  {
    v57 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v57, &_mh_execute_header, v67, "Forcing a CloudKit fetch since this is the first launch since reboot", 68, 2, _swiftEmptyArrayStorage);
    sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
    type metadata accessor for CloudKitCoordinator();
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    sub_100FCF3A4();
  }

  return static Transaction.named<A>(_:with:)();
}

uint64_t sub_100A3240C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = sub_100A8306C(0x13u);
  if (*(a2 + 40))
  {

    sub_100574D70(v3);

    return CurrentValueSubject.send(_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100A3248C(void *a1, uint64_t a2)
{
  v79 = a1;
  v2 = type metadata accessor for ShareRecord(0);
  v78 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v77 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v61 - v5;
  v7 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v7 - 8);
  v82 = &v61 - v8;
  v9 = type metadata accessor for DirectorySequence();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v74 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URL();
  v73 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v72 = &v61 - v16;
  v71 = type metadata accessor for UUID();
  v17 = *(v71 - 8);
  v18 = __chkstk_darwin(v71);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v61 - v21;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v81 = result;
  if (result)
  {
    v62 = v12;
    v63 = v15;
    v65 = v10;
    v66 = v9;
    v70 = v20;
    v69 = v2;
    LODWORD(v76) = static os_log_type_t.debug.getter();
    if (qword_101695068 != -1)
    {
LABEL_16:
      swift_once();
    }

    v68 = v6;
    v24 = qword_10177C3B0;
    v80 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v25 = swift_allocObject();
    v75 = xmmword_101385D80;
    *(v25 + 16) = xmmword_101385D80;
    v27 = v79[3];
    v26 = v79[4];
    sub_1000035D0(v79, v27);
    v28 = *(v26 + 8);
    v29 = *(v28 + 32);
    v29(v27, v28);
    v30 = UUID.uuidString.getter();
    v61 = v31;
    v32 = *(v17 + 8);
    v67 = v17 + 8;
    v64 = v32;
    v32(v22, v71);
    *(v25 + 56) = &type metadata for String;
    v79 = sub_100008C00();
    *(v25 + 64) = v79;
    v33 = v61;
    *(v25 + 32) = v30;
    *(v25 + 40) = v33;
    v34 = v76;
    v76 = v24;
    os_log(_:dso:log:_:_:)(v34, &_mh_execute_header, v24, "Unsharing cloudBackedRecord %@", 30, 2, v25);

    v35 = *(v81 + 280);
    v29(v27, v28);
    v36 = *(v35 + 168);
    v37 = objc_autoreleasePoolPush();
    if (qword_101694468 != -1)
    {
      swift_once();
    }

    v38 = v62;
    sub_1000076D4(v62, qword_10177A518);
    UUID.uuidString.getter();
    URL.appendingPathComponent(_:isDirectory:)();

    objc_autoreleasePoolPop(v37);
    v83 = _swiftEmptyArrayStorage;
    v84 = _swiftEmptyArrayStorage;
    v39 = [objc_opt_self() defaultManager];
    NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

    v40 = v82;
    DirectorySequence.next()();
    v41 = v40;
    v42 = *(v73 + 48);
    v43 = v42(v40, 1, v38);
    v44 = v63;
    if (v43 != 1)
    {
      v45 = *(v73 + 32);
      v46 = (v73 + 8);
      do
      {
        v45(v44, v41, v38);
        v47 = objc_autoreleasePoolPush();
        sub_1005FF9CC(v44, v36, &v84, &v83);
        objc_autoreleasePoolPop(v47);
        (*v46)(v44, v38);
        DirectorySequence.next()();
        v41 = v82;
      }

      while (v42(v82, 1, v38) != 1);
    }

    (*(v65 + 8))(v74, v66);
    v48 = static os_log_type_t.debug.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v49 = static OS_os_log.default.getter();
    v22 = swift_allocObject();
    *(v22 + 1) = xmmword_10138BBE0;
    v6 = v84;
    v50 = *(v84 + 2);
    *(v22 + 7) = &type metadata for Int;
    *(v22 + 8) = &protocol witness table for Int;
    *(v22 + 4) = v50;
    sub_100A4BFC4(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

    v51 = v72;
    v52 = dispatch thunk of CustomStringConvertible.description.getter();
    v53 = v79;
    *(v22 + 12) = &type metadata for String;
    *(v22 + 13) = v53;
    *(v22 + 9) = v52;
    *(v22 + 10) = v54;
    os_log(_:dso:log:_:_:)(v48, &_mh_execute_header, v49, "Found %i records at %@", 22, 2, v22);

    (*(v73 + 8))(v51, v38);
    v64(v70, v71);

    v55 = *(v6 + 2);
    v17 = v68;
    if (v55)
    {
      v56 = 0;
      while (1)
      {
        if (v56 >= *(v6 + 2))
        {
          __break(1u);
          goto LABEL_16;
        }

        sub_100A4E410(&v6[((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v56], v17, type metadata accessor for ShareRecord);
        v22 = static os_log_type_t.debug.getter();
        v57 = swift_allocObject();
        *(v57 + 16) = v75;
        sub_100A4E410(v17, v77, type metadata accessor for ShareRecord);
        v58 = String.init<A>(describing:)();
        v59 = v79;
        *(v57 + 56) = &type metadata for String;
        *(v57 + 64) = v59;
        *(v57 + 32) = v58;
        *(v57 + 40) = v60;
        os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v76, "Unsharing SharedRecord %@", 25, 2, v57);

        if (!*(v81 + 40))
        {
          break;
        }

        ++v56;

        sub_100528B94(v17, SharingCircleWildAdvertisementKey.init(key:), 0);

        sub_100A4DCAC(v17, type metadata accessor for ShareRecord);
        if (v55 == v56)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_13:
    }
  }

  return result;
}

uint64_t sub_100A32DEC()
{
  v1[2] = v0;
  v2 = type metadata accessor for DarwinNotifications();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_1000BC4D4(&unk_1016B27F0, &qword_1013D3630);
  v1[6] = v3;
  v4 = *(v3 - 8);
  v1[7] = v4;
  v1[8] = *(v4 + 64);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v1[12] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[13] = v5;
  *v5 = v1;
  v5[1] = sub_100A32F9C;

  return daemon.getter();
}

uint64_t sub_100A32F9C(uint64_t a1)
{
  *(*v1 + 112) = a1;

  type metadata accessor for Daemon();
  sub_100A4BFC4(&qword_1016969E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100A330F4, v3, v2);
}

uint64_t sub_100A330F4()
{
  *(v0 + 120) = Daemon.darwinNotificationHandler.getter();

  return _swift_task_switch(sub_100A33168, 0, 0);
}

uint64_t sub_100A33168()
{
  v4 = (&async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:));

  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_100A3324C;
  v2 = *(v0 + 16);

  return v4(0xD000000000000019, 0x8000000101350160, &unk_1013D3640, v2);
}

uint64_t sub_100A3324C(uint64_t a1)
{
  *(*v1 + 136) = a1;

  return _swift_task_switch(sub_100A3336C, 0, 0);
}

uint64_t sub_100A3336C()
{
  v1 = v0[17];
  v2 = v0[12];
  v3 = type metadata accessor for TaskPriority();
  v0[18] = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 56);
  v0[19] = v5;
  v0[20] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v2, 1, 1, v3);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v1;

  sub_100BB9ADC(0, 0, v2, &unk_1013D3650, v6);

  sub_10000B3A8(v2, &qword_101698C00, &qword_10138B570);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v0[21] = v8;
  v13 = (&async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:));

  v10 = swift_task_alloc();
  v0[22] = v10;
  *v10 = v0;
  v10[1] = sub_100A3352C;
  v11 = v0[2];

  return v13(v7, v9, &unk_1013D3660, v11);
}

uint64_t sub_100A3352C(uint64_t a1)
{
  *(*v1 + 184) = a1;

  return _swift_task_switch(sub_100A33668, 0, 0);
}

uint64_t sub_100A33668()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 96);
  (*(v0 + 152))(v2, 1, 1, *(v0 + 144));
  v3 = swift_allocObject();
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = v1;

  sub_100BB9ADC(0, 0, v2, &unk_1013D3670, v3);

  sub_10000B3A8(v2, &qword_101698C00, &qword_10138B570);
  v7 = (&async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:));

  v4 = swift_task_alloc();
  *(v0 + 192) = v4;
  *v4 = v0;
  v4[1] = sub_100A337E4;
  v5 = *(v0 + 16);

  return v7(0xD000000000000021, 0x8000000101350130, &unk_1013D3680, v5);
}

uint64_t sub_100A337E4(uint64_t a1)
{
  *(*v1 + 200) = a1;

  return _swift_task_switch(sub_100A33904, 0, 0);
}

uint64_t sub_100A33904()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 96);
  (*(v0 + 152))(v2, 1, 1, *(v0 + 144));
  v3 = swift_allocObject();
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = v1;

  sub_100BB9ADC(0, 0, v2, &unk_1013D3690, v3);

  sub_10000B3A8(v2, &qword_101698C00, &qword_10138B570);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  *(v0 + 208) = v5;
  v10 = (&async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:));

  v7 = swift_task_alloc();
  *(v0 + 216) = v7;
  *v7 = v0;
  v7[1] = sub_100A33A8C;
  v8 = *(v0 + 16);

  return v10(v4, v6, &unk_1013D36A0, v8);
}

uint64_t sub_100A33A8C(uint64_t a1)
{
  *(*v1 + 224) = a1;

  return _swift_task_switch(sub_100A33BC8, 0, 0);
}

uint64_t sub_100A33BC8()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 96);
  (*(v0 + 152))(v2, 1, 1, *(v0 + 144));
  v3 = swift_allocObject();
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = v1;

  sub_100BB9ADC(0, 0, v2, &unk_1013D36B0, v3);

  sub_10000B3A8(v2, &qword_101698C00, &qword_10138B570);
  v4 = SPEvaluateLocalBeaconingNotification;
  v8 = (&async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:));

  v5 = swift_task_alloc();
  *(v0 + 232) = v5;
  *v5 = v0;
  v5[1] = sub_100A33D3C;
  v6 = *(v0 + 16);

  return v8(v4, &unk_1013D36C0, v6);
}

uint64_t sub_100A33D3C(uint64_t a1)
{
  *(*v1 + 240) = a1;

  return _swift_task_switch(sub_100A33E5C, 0, 0);
}

uint64_t sub_100A33E5C()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 96);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 24);
  (*(v0 + 152))(v2, 1, 1, *(v0 + 144));
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v1;

  sub_100BB9ADC(0, 0, v2, &unk_1013D36D0, v6);

  sub_10000B3A8(v2, &qword_101698C00, &qword_10138B570);
  (*(v4 + 104))(v3, enum case for DarwinNotifications.followersChanged(_:), v5);
  *(v0 + 248) = DarwinNotifications.rawValue.getter();
  *(v0 + 256) = v7;
  (*(v4 + 8))(v3, v5);
  type metadata accessor for DarwinNotificationHandler();
  sub_100A4BFC4(&qword_1016B2800, &type metadata accessor for DarwinNotificationHandler, &protocol conformance descriptor for DarwinNotificationHandler);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 264) = v9;
  *(v0 + 272) = v8;

  return _swift_task_switch(sub_100A3400C, v9, v8);
}

uint64_t sub_100A3400C()
{
  dispatch thunk of DarwinNotificationHandler.asyncStream(name:)();

  return _swift_task_switch(sub_100A34088, 0, 0);
}

uint64_t sub_100A34088()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 48);
  v7 = *(v0 + 16);
  (*(v0 + 152))(v1, 1, 1, *(v0 + 144));
  v8 = *(v4 + 16);
  *(v0 + 280) = v8;
  *(v0 + 288) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v2, v6);
  v9 = *(v4 + 80);
  *(v0 + 328) = v9;
  v10 = (v9 + 32) & ~v9;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  v12 = *(v4 + 32);
  *(v0 + 296) = v12;
  *(v0 + 304) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v12(v11 + v10, v3, v6);
  *(v11 + ((v5 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;

  sub_1008CE048(0, 0, v1, &unk_1013D36E0, v11);

  sub_10000B3A8(v1, &qword_101698C00, &qword_10138B570);
  *(v0 + 312) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 320) = v13;
  v14 = *(v0 + 264);
  v15 = *(v0 + 272);

  return _swift_task_switch(sub_100A3421C, v14, v15);
}

uint64_t sub_100A3421C()
{
  dispatch thunk of DarwinNotificationHandler.asyncStream(name:)();

  return _swift_task_switch(sub_100A34298, 0, 0);
}

uint64_t sub_100A34298()
{
  v14 = *(v0 + 296);
  v13 = *(v0 + 280);
  v1 = *(v0 + 96);
  v15 = *(v0 + 88);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 56);
  v5 = (*(v0 + 328) + 32) & ~*(v0 + 328);
  v6 = *(v0 + 48);
  v7 = (v5 + *(v0 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  (*(v0 + 152))(v1, 1, 1, *(v0 + 144));
  v13(v3, v2, v6);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  v14(v9 + v5, v3, v6);
  *(v9 + v7) = v8;

  sub_1008CE048(0, 0, v1, &unk_1013D36F0, v9);

  sub_10000B3A8(v1, &qword_101698C00, &qword_10138B570);
  v10 = *(v4 + 8);
  v10(v2, v6);
  v10(v15, v6);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100A344CC(uint64_t a1)
{
  v2 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    v5 = v2;
    swift_once();
    v2 = v5;
  }

  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, qword_10177C370, "Self-Beacon State changed", 25, 2, _swiftEmptyArrayStorage);
  type metadata accessor for Transaction();
  static Transaction.named<A>(_:with:)();
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_100A34608()
{
  sub_100A39820();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A34668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v7 = type metadata accessor for DispatchQoS();
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();
  v8 = type metadata accessor for DarwinNotification();
  v5[18] = v8;
  v5[19] = *(v8 - 8);
  v5[20] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016B2808, &qword_1013D36F8);
  v5[21] = swift_task_alloc();
  v9 = sub_1000BC4D4(&unk_1016B2810, &unk_1013D3700);
  v5[22] = v9;
  v5[23] = *(v9 - 8);
  v5[24] = swift_task_alloc();

  return _swift_task_switch(sub_100A34880, 0, 0);
}

uint64_t sub_100A34880()
{
  sub_1000BC4D4(&unk_1016B27F0, &qword_1013D3630);
  AsyncStream.makeAsyncIterator()();
  v1 = swift_task_alloc();
  v0[25] = v1;
  *v1 = v0;
  v1[1] = sub_100A34948;
  v2 = v0[21];
  v3 = v0[22];

  return AsyncStream.Iterator.next(isolation:)(v2, 0, 0, v3);
}

uint64_t sub_100A34948()
{

  return _swift_task_switch(sub_100A34A44, 0, 0);
}

uint64_t sub_100A34A44()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[19];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[23] + 8))(v0[24], v0[22]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[17];
    v16 = v0[16];
    v17 = v0[15];
    v14 = v0[13];
    v15 = v0[20];
    v12 = v0[14];
    v13 = v0[12];
    v7 = v0[11];
    (*(v3 + 32))(v15, v1, v2);
    type metadata accessor for Transaction();
    static Transaction.$current.getter();
    v0[8] = DarwinNotification.transaction.getter();

    sub_1000BC4D4(&qword_10169BD00, &qword_1013FD5B0);
    swift_task_localValuePush();
    v0[6] = sub_100A4E8E8;
    v0[7] = v7;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100006684;
    v0[5] = &unk_101644538;
    v8 = _Block_copy(v0 + 2);

    static DispatchQoS.unspecified.getter();
    v0[9] = _swiftEmptyArrayStorage;
    sub_100A4BFC4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v8);
    (*(v14 + 8))(v12, v13);
    (*(v16 + 8))(v6, v17);

    swift_task_localValuePop();

    (*(v3 + 8))(v15, v2);
    v9 = swift_task_alloc();
    v0[25] = v9;
    *v9 = v0;
    v9[1] = sub_100A34948;
    v10 = v0[21];
    v11 = v0[22];

    return AsyncStream.Iterator.next(isolation:)(v10, 0, 0, v11);
  }
}

uint64_t sub_100A34E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = type metadata accessor for DispatchQoS();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016B2808, &qword_1013D36F8);
  v5[17] = swift_task_alloc();
  v8 = sub_1000BC4D4(&unk_1016B2810, &unk_1013D3700);
  v5[18] = v8;
  v5[19] = *(v8 - 8);
  v5[20] = swift_task_alloc();

  return _swift_task_switch(sub_100A34FD4, 0, 0);
}

uint64_t sub_100A34FD4()
{
  sub_1000BC4D4(&unk_1016B27F0, &qword_1013D3630);
  AsyncStream.makeAsyncIterator()();
  v0[21] = 0;
  v1 = swift_task_alloc();
  v0[22] = v1;
  *v1 = v0;
  v1[1] = sub_100A350A0;
  v2 = v0[17];
  v3 = v0[18];

  return AsyncStream.Iterator.next(isolation:)(v2, 0, 0, v3);
}

uint64_t sub_100A350A0()
{

  return _swift_task_switch(sub_100A3519C, 0, 0);
}

uint64_t sub_100A3519C()
{
  v1 = v0[17];
  v2 = type metadata accessor for DarwinNotification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[19] + 8))(v0[20], v0[18]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    if (qword_1016944B0 != -1)
    {
      swift_once();
      v1 = v0[17];
    }

    v5 = v0[21];
    v14 = v0[16];
    v15 = v0[15];
    v6 = v0[13];
    v16 = v0[14];
    v17 = v1;
    v8 = v0[11];
    v7 = v0[12];
    v9 = v0[10];
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v0[6] = sub_100A4E8E8;
    v0[7] = v9;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100006684;
    v0[5] = &unk_101644510;
    v10 = _Block_copy(v0 + 2);

    static DispatchQoS.unspecified.getter();
    v0[8] = _swiftEmptyArrayStorage;
    sub_100A4BFC4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v10);
    (*(v7 + 8))(v6, v8);
    (*(v15 + 8))(v14, v16);

    sub_10000B3A8(v17, &qword_1016B2808, &qword_1013D36F8);
    v0[21] = v5;
    v11 = swift_task_alloc();
    v0[22] = v11;
    *v11 = v0;
    v11[1] = sub_100A350A0;
    v12 = v0[17];
    v13 = v0[18];

    return AsyncStream.Iterator.next(isolation:)(v12, 0, 0, v13);
  }
}

uint64_t sub_100A35558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = type metadata accessor for StateCaptureDateType();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v6 = type metadata accessor for KeySyncMetadataDisplay(0);
  v3[19] = v6;
  v3[20] = *(v6 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v7 = type metadata accessor for StateCaptureHintAPI();
  v3[23] = v7;
  v3[24] = *(v7 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();

  return _swift_task_switch(sub_100A3576C, 0, 0);
}

uint64_t sub_100A3576C()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 184);
  v4 = *(v0 + 192);
  StateCaptureHint.api.getter();
  (*(v4 + 104))(v2, enum case for StateCaptureHintAPI.request(_:), v3);
  sub_100A4BFC4(&qword_101698DD0, &type metadata accessor for StateCaptureHintAPI, &protocol conformance descriptor for StateCaptureHintAPI);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v5 = *(v4 + 8);
  v5(v2, v3);
  v5(v1, v3);
  if (*(v0 + 248) == *(v0 + 252) && (swift_beginAccess(), Strong = swift_weakLoadStrong(), (*(v0 + 216) = Strong) != 0))
  {
    v7 = swift_task_alloc();
    *(v0 + 224) = v7;
    *v7 = v0;
    v7[1] = sub_100A35A10;

    return sub_100715BF4();
  }

  else
  {
    v9 = *(v0 + 56);
    v10 = type metadata accessor for StateCaptureStateData();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_100A35A10(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 232) = a1;
  *(v3 + 240) = v1;

  if (v1)
  {
    v4 = sub_100A36728;
  }

  else
  {

    v4 = sub_100A35B2C;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_100A35B2C()
{
  v123 = v0;
  v1 = v0[29];
  v119 = *(v1 + 16);
  if (v119)
  {
    v2 = 0;
    v3 = v0[14];
    v117 = v0[20];
    v114 = (*(v117 + 80) + 32) & ~*(v117 + 80);
    v112 = v1 + v114;
    v4 = (v3 + 16);
    v104 = v3;
    v108 = (v3 + 8);
    v5 = _swiftEmptyDictionarySingleton;
    v106 = v0[30];
    v107 = v0[29];
    v110 = (v3 + 16);
    while (1)
    {
      if (v2 >= *(v1 + 16))
      {
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      sub_100A4E410(v112 + *(v117 + 72) * v2, v0[22], type metadata accessor for KeySyncMetadataDisplay);
      if (v5[2])
      {
        v8 = sub_1000210EC(v0[22]);
        v9 = *v4;
        if (v10)
        {
          v11 = v0[22];
          v12 = *(v5[7] + 8 * v8);
          v9(v0[16], v11, v0[13]);
          sub_1000BC4D4(&qword_1016B2830, &qword_1013D3730);
          v13 = swift_allocObject();
          *(v13 + 16) = xmmword_101385D80;
          sub_100A4E410(v11, v13 + v114, type metadata accessor for KeySyncMetadataDisplay);
          v121 = v12;

          sub_10039A12C(v13);

          sub_100A2BC1C(&v121);
          if (v106)
          {

            return;
          }

          v14 = v0[16];

          v15 = v121;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v121 = v5;
          v17 = sub_1000210EC(v14);
          v19 = v5[2];
          v20 = (v18 & 1) == 0;
          v21 = __OFADD__(v19, v20);
          v22 = v19 + v20;
          if (v21)
          {
            goto LABEL_68;
          }

          v23 = v18;
          if (v5[3] >= v22)
          {
            v4 = v110;
            if (isUniquelyReferenced_nonNull_native)
            {
              if ((v18 & 1) == 0)
              {
                goto LABEL_30;
              }
            }

            else
            {
              v49 = v17;
              sub_10100C774();
              v17 = v49;
              v0 = v120;
              v5 = v121;
              if ((v23 & 1) == 0)
              {
                goto LABEL_30;
              }
            }
          }

          else
          {
            v24 = v0[16];
            sub_100FF5058(v22, isUniquelyReferenced_nonNull_native);
            v5 = v121;
            v17 = sub_1000210EC(v24);
            v4 = v110;
            if ((v23 & 1) != (v25 & 1))
            {
              goto LABEL_58;
            }

            v1 = v107;
            if ((v23 & 1) == 0)
            {
LABEL_30:
              v50 = v0[16];
              v51 = v0[13];
              v5[(v17 >> 6) + 8] |= 1 << v17;
              v52 = v17;
              v9(v5[6] + *(v104 + 72) * v17, v50, v51);
              *(v5[7] + 8 * v52) = v15;
              v53 = v5[2];
              v21 = __OFADD__(v53, 1);
              v54 = v53 + 1;
              if (v21)
              {
                goto LABEL_70;
              }

              v5[2] = v54;
              goto LABEL_32;
            }
          }

          *(v5[7] + 8 * v17) = v15;

LABEL_32:
          v55 = v0[22];
          (*v108)(v0[16], v0[13]);
          sub_100A4DCAC(v55, type metadata accessor for KeySyncMetadataDisplay);
          v106 = 0;
          goto LABEL_5;
        }
      }

      else
      {
        v9 = *v4;
      }

      v26 = v0[22];
      v27 = v0[15];
      v9(v27, v26, v0[13]);
      sub_1000BC4D4(&qword_1016B2830, &qword_1013D3730);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_101385D80;
      sub_100A4E410(v26, v28 + v114, type metadata accessor for KeySyncMetadataDisplay);
      v29 = swift_isUniquelyReferenced_nonNull_native();
      v121 = v5;
      v30 = sub_1000210EC(v27);
      v32 = v5[2];
      v33 = (v31 & 1) == 0;
      v21 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v21)
      {
        goto LABEL_66;
      }

      v35 = v31;
      if (v5[3] >= v34)
      {
        v4 = v110;
        if (v29)
        {
          v39 = v5;
        }

        else
        {
          v48 = v30;
          sub_10100C774();
          v30 = v48;
          v0 = v120;
          v39 = v121;
        }
      }

      else
      {
        v36 = v0[15];
        sub_100FF5058(v34, v29);
        v37 = v121;
        v30 = sub_1000210EC(v36);
        v4 = v110;
        if ((v35 & 1) != (v38 & 1))
        {
LABEL_58:

          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          return;
        }

        v39 = v37;
      }

      v40 = v0[22];
      v41 = v0[15];
      v42 = v0[13];
      if (v35)
      {
        v6 = v39;
        *(*(v39 + 56) + 8 * v30) = v28;

        v7 = v42;
        v5 = v6;
        (*v108)(v41, v7);
        sub_100A4DCAC(v40, type metadata accessor for KeySyncMetadataDisplay);
      }

      else
      {
        v43 = v39;
        *(v39 + 8 * (v30 >> 6) + 64) |= 1 << v30;
        v44 = v30;
        v9(*(v39 + 48) + *(v104 + 72) * v30, v41, v42);
        *(v43[7] + 8 * v44) = v28;
        v45 = v42;
        v5 = v43;
        (*(v104 + 8))(v41, v45);
        sub_100A4DCAC(v40, type metadata accessor for KeySyncMetadataDisplay);
        v46 = v43[2];
        v21 = __OFADD__(v46, 1);
        v47 = v46 + 1;
        if (v21)
        {
          goto LABEL_67;
        }

        v43[2] = v47;
        v0 = v120;
      }

      v1 = v107;
LABEL_5:
      if (v119 == ++v2)
      {
        goto LABEL_34;
      }
    }
  }

  v106 = v0[30];
  v5 = _swiftEmptyDictionarySingleton;
LABEL_34:
  v56 = v0[19];
  v101 = v0[20];
  v57 = v0[14];

  sub_1000BC4D4(&unk_1016B2838, &qword_1013D3738);
  v58 = static _DictionaryStorage.copy(original:)();
  v59 = v58;
  v60 = 0;
  v100 = v5 + 8;
  v61 = 1 << *(v5 + 32);
  v62 = -1;
  if (v61 < 64)
  {
    v62 = ~(-1 << v61);
  }

  v63 = v62 & v5[8];
  v99 = (v61 + 63) >> 6;
  v109 = v57;
  v105 = v58 + 64;
  v102 = v58;
  v103 = v5;
  if (v63)
  {
    while (1)
    {
      v64 = __clz(__rbit64(v63));
      v115 = (v63 - 1) & v63;
LABEL_43:
      v67 = v64 | (v60 << 6);
      v69 = v0[17];
      v68 = v0[18];
      v70 = v0[13];
      v116 = *(v109 + 72) * v67;
      (*(v109 + 16))(v68, v5[6] + v116, v70);
      v118 = v67;
      v71 = *(v5[7] + 8 * v67);
      v72 = *(v109 + 32);
      v72(v69, v68, v70);
      v73 = *(v71 + 16);
      if (v73)
      {
        v111 = v72;
        v113 = v60;

        sub_101123BB8(0, v73, 0);
        v74 = v71 + ((*(v101 + 80) + 32) & ~*(v101 + 80));
        v75 = *(v101 + 72);
        do
        {
          v76 = v0[21];
          sub_100A4E410(v74, v76, type metadata accessor for KeySyncMetadataDisplay);
          v77 = (v76 + v56[7]);
          v78 = v77[1];
          v121 = *v77;
          v122 = v78;

          v79._countAndFlagsBits = 47;
          v79._object = 0xE100000000000000;
          String.append(_:)(v79);
          v0[5] = *(v76 + v56[6]);
          v80._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v80);

          v81._countAndFlagsBits = 32;
          v81._object = 0xE100000000000000;
          String.append(_:)(v81);
          String.append(_:)(*(v76 + v56[5]));
          v82._countAndFlagsBits = 8250;
          v82._object = 0xE200000000000000;
          String.append(_:)(v82);
          type metadata accessor for Date();
          sub_100A4BFC4(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          v83._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v83);

          v84 = v121;
          v85 = v122;
          sub_100A4DCAC(v76, type metadata accessor for KeySyncMetadataDisplay);
          v87 = _swiftEmptyArrayStorage[2];
          v86 = _swiftEmptyArrayStorage[3];
          if (v87 >= v86 >> 1)
          {
            sub_101123BB8((v86 > 1), v87 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v87 + 1;
          v88 = &_swiftEmptyArrayStorage[2 * v87];
          v88[4] = v84;
          v88[5] = v85;
          v74 += v75;
          --v73;
          v0 = v120;
        }

        while (v73);

        v59 = v102;
        v5 = v103;
        v60 = v113;
        v72 = v111;
      }

      v89 = v0[17];
      v90 = v0[13];
      *(v105 + ((v118 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v118;
      v72(v59[6] + v116, v89, v90);
      *(v59[7] + 8 * v118) = _swiftEmptyArrayStorage;
      v91 = v59[2];
      v21 = __OFADD__(v91, 1);
      v92 = v91 + 1;
      if (v21)
      {
        break;
      }

      v59[2] = v92;
      v63 = v115;
      if (!v115)
      {
        goto LABEL_38;
      }
    }

LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
  }

  else
  {
LABEL_38:
    v65 = v60;
    while (1)
    {
      v60 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        __break(1u);
        goto LABEL_65;
      }

      if (v60 >= v99)
      {
        break;
      }

      v66 = v100[v60];
      ++v65;
      if (v66)
      {
        v64 = __clz(__rbit64(v66));
        v115 = (v66 - 1) & v66;
        goto LABEL_43;
      }
    }

    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    v0[6] = v59;
    sub_1000BC4D4(&qword_1016B2848, &qword_1013D3740);
    sub_100A4D610();
    dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v106)
    {
    }

    else
    {
      v95 = v0[11];
      v94 = v0[12];
      v96 = v0[10];

      (*(v95 + 104))(v94, enum case for StateCaptureDateType.serialized(_:), v96);
      StateCaptureStateData.init(type:title:data:)();
      v97 = v0[7];
      v98 = type metadata accessor for StateCaptureStateData();
      (*(*(v98 - 8) + 56))(v97, 0, 1, v98);
    }

    v93 = v0[1];

    v93();
  }
}

uint64_t sub_100A36728()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100A36804(uint64_t a1)
{
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B7F8);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    if (a1)
    {
      swift_errorRetain();
      v6 = _swift_stdlib_bridgeErrorToNSError();
      v7 = v6;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    *(v4 + 4) = v6;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Did delete all beacon payload cache files with result: %@.", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }
}

uint64_t sub_100A36974(uint64_t a1, uint64_t a2)
{
  v22[0] = a1;
  v24 = type metadata accessor for SharedBeaconRecord(0);
  v3 = *(v24 - 8);
  v4 = __chkstk_darwin(v24);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v22 - v7;
  v23 = a2;
  v22[2] = *(a2 + 280);
  result = sub_100030068();
  v10 = result;
  v27 = *(result + 16);
  if (v27)
  {
    v11 = 0;
    v12 = _swiftEmptyArrayStorage;
    v13 = v24;
    v25 = v6;
    v26 = v3;
    while (v11 < *(v10 + 16))
    {
      v14 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v15 = *(v3 + 72);
      sub_100A4E410(v10 + v14 + v15 * v11, v8, type metadata accessor for SharedBeaconRecord);
      if (v8[*(v13 + 64)] == 1)
      {
        sub_10002AC44(v8, v6, type metadata accessor for SharedBeaconRecord);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10112421C(0, v12[2] + 1, 1);
          v13 = v24;
          v12 = v28;
        }

        v18 = v12[2];
        v17 = v12[3];
        if (v18 >= v17 >> 1)
        {
          sub_10112421C((v17 > 1), v18 + 1, 1);
          v13 = v24;
          v12 = v28;
        }

        v12[2] = v18 + 1;
        v19 = v12 + v14 + v18 * v15;
        v6 = v25;
        result = sub_10002AC44(v25, v19, type metadata accessor for SharedBeaconRecord);
        v3 = v26;
      }

      else
      {
        result = sub_100A4DCAC(v8, type metadata accessor for SharedBeaconRecord);
      }

      if (v27 == ++v11)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
LABEL_13:

    v20 = sub_100A9A79C(v12);

    if (*(v23 + 40))
    {

      v21 = v22[0];

      sub_10056B588(v20, sub_100A4C2B0, v21);
    }
  }

  __break(1u);
  return result;
}

void sub_100A36C50(uint64_t a1)
{
  Transaction.capture()();
  if (a1)
  {
    swift_errorRetain();
    v2 = static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v3 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_101385D80;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v5 = String.init<A>(describing:)();
    v7 = v6;
    *(v4 + 56) = &type metadata for String;
    *(v4 + 64) = sub_100008C00();
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "requestKeys error: %@", 21, 2, v4);
  }
}

uint64_t sub_100A36D90()
{
  sub_10000FAA4();
  if (NSXPCConnection.hasEntitlement<A>(_:)() & 1) != 0 || (NSXPCConnection.hasEntitlement<A>(_:)())
  {
    v0 = 1;
  }

  else
  {
    v0 = NSXPCConnection.hasEntitlement<A>(_:)();
  }

  return v0 & 1;
}

id sub_100A36E24()
{
  result = sub_100A36E44();
  qword_1016B1DC0 = result;
  return result;
}

id sub_100A36E44()
{
  v0 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___SPBeaconManagerXPCProtocol];
  sub_100A47234();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10138BBE0;
  v2 = sub_100008BB8(0, &qword_101698D10, NSUUID_ptr);
  *(v1 + 32) = v2;
  v3 = sub_100008BB8(0, &qword_10169BAF0, NSArray_ptr);
  *(v1 + 40) = v3;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  sub_100A47234();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10138BBE0;
  *(v4 + 32) = v2;
  *(v4 + 40) = v3;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  sub_100A47234();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_101385D80;
  *(v5 + 32) = v2;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  sub_100A47234();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  *(v6 + 32) = sub_100008BB8(0, &qword_1016B2A50, SPCommandKeysCriteria_ptr);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  sub_100A47234();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101391790;
  *(v7 + 32) = v2;
  *(v7 + 40) = v3;
  *(v7 + 48) = sub_100008BB8(0, &qword_1016B2A58, NSDictionary_ptr);
  *(v7 + 56) = sub_100008BB8(0, &unk_1016B2A60, NSFileHandle_ptr);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  sub_100A47234();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_101385D80;
  *(v8 + 32) = sub_100008BB8(0, &qword_10169E020, NSError_ptr);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  return v0;
}

uint64_t sub_100A3713C()
{
  v1 = v0;
  v2 = type metadata accessor for XPCServiceDescription();
  v58 = *(v2 - 8);
  v59 = v2;
  v3 = __chkstk_darwin(v2);
  v57 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v54 = v47 - v6;
  v7 = __chkstk_darwin(v5);
  v61 = v47 - v8;
  __chkstk_darwin(v7);
  v10 = v47 - v9;
  v11 = type metadata accessor for MachServiceName();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v53 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v52 = v47 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = v47 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = v47 - v21;
  __chkstk_darwin(v20);
  v24 = v47 - v23;
  MachServiceName.init(_:)();
  v55 = v12;
  v56 = v24;
  v25 = v11;
  v60 = *(v12 + 16);
  v60(v22, v24, v11);
  sub_100A2C0B8();
  if (qword_101694B90 != -1)
  {
    swift_once();
  }

  v26 = qword_1016B1DC8;

  v47[1] = v26;
  XPCServiceDescription.init(name:options:exportedObject:exportedInterface:shouldAccept:interruptionHandler:invalidationHandler:)();
  XPCSessionManager.register(service:)();
  MachServiceName.init(_:)();
  v50 = v22;
  v27 = objc_opt_self();
  v28 = [v27 interfaceWithProtocol:&OBJC_PROTOCOL___SPLocationFetchClientXPCProtocol];
  v29 = v22;
  v30 = v60;
  v60(v19, v29, v11);
  v51 = v10;
  v31 = *(v1 + 272);

  v32 = v31;
  v48 = v28;
  XPCServiceDescription.init(name:options:exportedObject:exportedInterface:remoteObjectInterface:shouldAccept:interruptionHandler:invalidationHandler:)();
  XPCSessionManager.register(service:)();
  v49 = v19;
  MachServiceName.init(_:)();
  v33 = v52;
  v30(v52, v19, v11);
  v34 = *(v1 + 272);
  v35 = [v27 interfaceWithProtocol:&OBJC_PROTOCOL___SPBeaconScanningXPCProtocol];
  v36 = [v27 interfaceWithProtocol:&OBJC_PROTOCOL___SPBeaconScanningXPCClientProtocol];

  v37 = v54;
  XPCServiceDescription.init(name:options:exportedObject:exportedInterface:remoteObjectInterface:shouldAccept:interruptionHandler:invalidationHandler:)();
  XPCSessionManager.register(service:)();
  MachServiceName.init(_:)();
  v38 = [v27 interfaceWithProtocol:&OBJC_PROTOCOL___SPDelegatedLocationClientXPCProtocol];
  v60(v53, v33, v11);
  v39 = *(v1 + 272);

  v40 = v39;
  v41 = v38;
  v42 = v57;
  XPCServiceDescription.init(name:options:exportedObject:exportedInterface:remoteObjectInterface:shouldAccept:interruptionHandler:invalidationHandler:)();
  XPCSessionManager.register(service:)();

  v43 = v59;
  v44 = *(v58 + 8);
  v44(v42, v59);
  v45 = *(v55 + 8);
  v45(v33, v25);
  v44(v37, v43);
  v45(v49, v25);
  v44(v61, v43);
  v45(v50, v25);
  v44(v51, v43);
  return (v45)(v56, v25);
}

id sub_100A377C4()
{
  result = sub_100A377E4();
  qword_1016B1DC8 = result;
  return result;
}

id sub_100A377E4()
{
  v0 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___SPOwnerSessionXPCProtocol];
  sub_100A47234();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10138BBE0;
  v2 = sub_100008BB8(0, &qword_10169BAF0, NSArray_ptr);
  *(v1 + 32) = v2;
  v3 = sub_100008BB8(0, &qword_101698D10, NSUUID_ptr);
  *(v1 + 40) = v3;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  sub_100A47234();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10138BBE0;
  v5 = sub_100008BB8(0, &qword_101698CF8, NSSet_ptr);
  *(v4 + 32) = v5;
  *(v4 + 40) = sub_100008BB8(0, &unk_1016B27A0, NSString_ptr);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  sub_100A47234();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10138BBE0;
  *(v6 + 32) = v2;
  *(v6 + 40) = v3;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  sub_100A47234();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10138BBE0;
  *(v7 + 32) = v2;
  *(v7 + 40) = v3;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  sub_100A47234();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_101391790;
  *(v8 + 32) = v5;
  v9 = sub_100008BB8(0, qword_1016C9080, SPUnauthorizedTrackingObservation_ptr);
  *(v8 + 40) = v9;
  v10 = sub_100008BB8(0, &qword_1016B27B0, SPObservationLocation_ptr);
  *(v8 + 48) = v10;
  v11 = sub_100008BB8(0, &qword_1016B27B8, SPUnauthorizedTrackingAdvertisement_ptr);
  *(v8 + 56) = v11;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  sub_100A47234();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_101391790;
  *(v12 + 32) = v2;
  *(v12 + 40) = v9;
  *(v12 + 48) = v10;
  *(v12 + 56) = v11;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  sub_100A47234();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_101391790;
  *(v13 + 32) = v2;
  *(v13 + 40) = v9;
  *(v13 + 48) = v10;
  *(v13 + 56) = v11;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  sub_100A47234();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_101391790;
  *(v14 + 32) = v2;
  *(v14 + 40) = v9;
  *(v14 + 48) = v10;
  *(v14 + 56) = v11;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  sub_100A47234();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10138BBE0;
  *(v15 + 32) = v2;
  *(v15 + 40) = sub_100008BB8(0, &qword_1016B27C0, SPBeaconObservation_ptr);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  sub_100A47234();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  *(v16 + 32) = v3;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  sub_100A47234();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_101385D80;
  *(v17 + 32) = sub_100008BB8(0, &qword_1016969B0, SPBeaconLocation_ptr);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  sub_100A47234();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10138B360;
  *(v18 + 32) = v2;
  *(v18 + 40) = v3;
  *(v18 + 48) = sub_100008BB8(0, &unk_1016A9A40, SPUnknownBeacon_ptr);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  sub_100A47234();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10138BBE0;
  *(v19 + 32) = v2;
  *(v19 + 40) = v3;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  sub_100A47234();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10138BBE0;
  *(v20 + 32) = v2;
  *(v20 + 40) = v3;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  sub_100A47234();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10138BBE0;
  *(v21 + 32) = v2;
  *(v21 + 40) = v3;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  sub_100A47234();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10138BBE0;
  *(v22 + 32) = v2;
  *(v22 + 40) = v3;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  sub_100A47234();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10138BBE0;
  *(v23 + 32) = v5;
  *(v23 + 40) = v3;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  sub_100008BB8(0, &unk_1016B27C8, CLCircularRegion_ptr);
  [v0 setClass:swift_getObjCClassFromMetadata() forSelector:"publishSeparationEventForBeacons:eventType:region:completion:" argumentIndex:1 ofReply:0];
  sub_100A47234();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10138BBE0;
  *(v24 + 32) = v5;
  *(v24 + 40) = v3;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
  [v0 setClass:swift_getObjCClassFromMetadata() forSelector:"updateSafeLocation:completion:" argumentIndex:0 ofReply:0];
  return v0;
}

uint64_t sub_100A37F8C()
{
  v32 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v32);
  v34 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin(v2);
  v31 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v33 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v0 + 48);
  *v13 = v14;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  v16 = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v13, v10);
  if (v16)
  {
    v27 = v9;
    v28 = 0x8000000101368BD0;
    static DispatchQoS.background.getter();
    v18 = swift_allocObject();
    v25 = v0;
    swift_weakInit();
    type metadata accessor for XPCActivity();
    v19 = swift_allocObject();
    sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    *(v19 + 40) = v20;
    swift_unknownObjectWeakInit();
    *(v19 + 88) = 0;
    v26 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v23 = v4;
    v24 = ".searchpartyd.AfterFirstUnlock";
    *(v19 + 96) = 0;
    *(v19 + 104) = 0;
    v21 = v33;
    (*(v33 + 16))(v7, v9, v4);
    (*(v29 + 104))(v31, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v30);
    v35 = _swiftEmptyArrayStorage;
    sub_100A4BFC4(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);

    sub_1000BC4D4(&unk_101695580, &qword_101385D90);
    sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    *(v19 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(v19 + 24) = 0xD00000000000002ELL;
    *(v19 + 32) = v28;
    *(v19 + 48) = sub_100A3848C;
    *(v19 + 56) = 0;
    *(v19 + 64) = sub_100A4CABC;
    *(v19 + 72) = v18;

    sub_100997398();

    (*(v21 + 8))(v27, v23);

    *(v25 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_afterFirstUnlockActivity) = v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100A3848C@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for SystemInfo.DeviceLockState();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  static SystemInfo.lockState.getter();
  (*(v3 + 104))(v6, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v2);
  sub_100A4BFC4(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v9 = *(v3 + 8);
  v9(v6, v2);
  result = (v9)(v8, v2);
  v11 = v14 == v13;
  v12 = 576;
  if (v14 != v13)
  {
    v12 = 0;
  }

  *a1 = 2 * (v14 != v13);
  a1[1] = v11;
  a1[2] = v11;
  a1[3] = v11;
  a1[4] = v12;
  return result;
}

uint64_t sub_100A38648(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Transaction.capture()();
    if (a3 == 3)
    {
      sub_1009971C0();
    }

    else if (a3 == 2)
    {
      v6 = static os_log_type_t.default.getter();
      if (qword_101695028 != -1)
      {
        v7 = v6;
        swift_once();
        v6 = v7;
      }

      os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, qword_10177C370, "Running afterFirstUnlockActivity.", 33, 2, _swiftEmptyArrayStorage);
      sub_1003D8548();
      type metadata accessor for Transaction();
      static Transaction.named<A>(_:with:)();
      sub_1009971E8();
      if (qword_101695510 != -1)
      {
        swift_once();
      }

      sub_1013135AC();
    }
  }

  return result;
}

uint64_t sub_100A387D4()
{
  v24 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v24);
  v23 = v17 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v20 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  v18 = v4;
  v19 = v5;
  v6 = __chkstk_darwin(v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v17 - v9;
  v21 = 0x8000000101368B20;
  static DispatchQoS.background.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1013D3020;
  v12 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for XPCActivity();
  v13 = swift_allocObject();
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v13 + 40) = v14;
  swift_unknownObjectWeakInit();
  *(v13 + 88) = 0;
  v15 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v17[0] = "une.BeaconManagerService";
  v17[1] = v15;
  *(v13 + 96) = 0;
  *(v13 + 104) = 0;
  (*(v5 + 16))(v8, v10, v4);
  (*(v2 + 104))(v20, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v1);
  v25 = _swiftEmptyArrayStorage;
  sub_100A4BFC4(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);

  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v13 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v13 + 24) = 0xD000000000000038;
  *(v13 + 32) = v21;
  *(v13 + 48) = sub_100A4CA68;
  *(v13 + 56) = v11;
  *(v13 + 64) = sub_100A4CAB4;
  *(v13 + 72) = v12;

  sub_100997398();

  (*(v19 + 8))(v10, v18);

  *(v22 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_pruneActivity) = v13;
}

uint64_t sub_100A38C20(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Transaction.capture()();
    if (a3 == 3)
    {
      sub_1009971C0();
    }

    else if (a3 == 2)
    {
      v6 = static os_log_type_t.default.getter();
      if (qword_101695070 != -1)
      {
        v7 = v6;
        swift_once();
        v6 = v7;
      }

      os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, qword_10177C3B8, "pruning BeaconManagerService", 28, 2, _swiftEmptyArrayStorage);

      sub_100A90B94();

      sub_1009971E8();
    }
  }

  return result;
}

uint64_t sub_100A38D38()
{
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  *(v0 + 16) = swift_task_alloc();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100A38E00;

  return daemon.getter();
}

uint64_t sub_100A38E00(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 32) = a1;

  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  v4 = type metadata accessor for Daemon();
  found = type metadata accessor for NotifyWhenFoundManager();
  v6 = sub_100A4BFC4(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100A4BFC4(&unk_1016B10A0, type metadata accessor for NotifyWhenFoundManager, &unk_10139D670);
  *v3 = v9;
  v3[1] = sub_100A38FDC;

  return ActorServiceDaemon.getService<A>()(v4, found, v6, v7);
}

uint64_t sub_100A38FDC(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_100A39130;
  }

  else
  {

    *(v4 + 48) = a1;
    v5 = sub_100A3924C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100A39130()
{
  if (qword_101694688 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AC78);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing NotifyWhenFoundManager.", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100A3924C()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;
  sub_10025F0D4(0, 0, v2, &unk_10139D730, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100A3933C()
{
  v38 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v38);
  v37 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(v36 - 8);
  v3 = __chkstk_darwin(v36);
  v35 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v32 - v6;
  __chkstk_darwin(v5);
  v9 = &v32 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = EnumCaseMultiPayload[7];
  *v13 = v14;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  v16 = (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
    goto LABEL_22;
  }

  v16 = static os_log_type_t.default.getter();
  if (qword_101695058 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v17 = _swiftEmptyArrayStorage;
    os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, qword_10177C3A0, "Family updated", 14, 2, _swiftEmptyArrayStorage, v7);
    v33 = EnumCaseMultiPayload;
    EnumCaseMultiPayload = EnumCaseMultiPayload[35];
    v16 = sub_100025044();
    v18 = v16;
    v19 = *(v16 + 16);
    if (v19)
    {
      v20 = 0;
      v34 = *(v16 + 16);
      while (v20 < *(v18 + 16))
      {
        v7 = ((*(v2 + 80) + 32) & ~*(v2 + 80));
        v21 = *(v2 + 72);
        sub_100A4E410(&v7[v18 + v21 * v20], v9, type metadata accessor for OwnedBeaconRecord);
        v22 = v37;
        sub_100A4E410(&v9[*(v36 + 24)], v37, type metadata accessor for StableIdentifier);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        sub_100A4DCAC(v22, type metadata accessor for StableIdentifier);
        if (EnumCaseMultiPayload == 4)
        {
          v16 = sub_100A4DCAC(v9, type metadata accessor for OwnedBeaconRecord);
        }

        else
        {
          sub_10002AC44(v9, v35, type metadata accessor for OwnedBeaconRecord);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v39 = v17;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            EnumCaseMultiPayload = &v39;
            sub_10112434C(0, v17[2] + 1, 1);
            v17 = v39;
          }

          v25 = v17[2];
          v24 = v17[3];
          if (v25 >= v24 >> 1)
          {
            EnumCaseMultiPayload = &v39;
            sub_10112434C((v24 > 1), v25 + 1, 1);
            v17 = v39;
          }

          v17[2] = v25 + 1;
          v16 = sub_10002AC44(v35, &v7[v17 + v25 * v21], type metadata accessor for OwnedBeaconRecord);
          v19 = v34;
        }

        if (v19 == ++v20)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_21;
    }

LABEL_14:

    v26 = v17[2];
    v28 = v32;
    v27 = v33;
    if (!v26)
    {
    }

    v29 = 0;
    while (v29 < v17[2])
    {
      result = sub_100A4E410(v17 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v29, v28, type metadata accessor for OwnedBeaconRecord);
      EnumCaseMultiPayload = v27[5];
      if (!EnumCaseMultiPayload)
      {
        __break(1u);
        return result;
      }

      ++v29;

      sub_1005288AC(v28);

      v16 = sub_100A4DCAC(v28, type metadata accessor for OwnedBeaconRecord);
      if (v26 == v29)
      {
      }
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    v31 = v16;
    swift_once();
    v16 = v31;
  }
}

uint64_t sub_100A39820()
{
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_10177B780);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Received RTLocationsOfInterestDidChange notification, scheduling safe lcoation update.", v3, 2u);
  }

  v4 = type metadata accessor for Transaction();
  __chkstk_darwin(v4);
  return static Transaction.named<A>(_:with:)();
}

uint64_t sub_100A3997C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  *(v4 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100A39A18, 0, 0);
}

uint64_t sub_100A39A18()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for OwnedBeaconRecord(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_100A39AF0;
  v4 = *(v0 + 24);

  return sub_100A4978C(v4);
}

uint64_t sub_100A39AF0()
{
  v2 = *(*v1 + 24);
  *(*v1 + 40) = v0;

  sub_10000B3A8(v2, &unk_1016A9A20, &qword_10138B280);
  if (v0)
  {
    v3 = sub_100A39C9C;
  }

  else
  {
    v3 = sub_100A39C30;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100A39C30()
{
  dispatch_group_leave(*(v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A39C9C()
{
  dispatch_group_leave(*(v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A39D08(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a3;
  v35 = a2;
  v9 = type metadata accessor for OwnedBeaconRecord(0);
  v33 = *(v9 - 8);
  v10 = *(v33 + 64);
  __chkstk_darwin(v9 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v5 + 280);
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;

  v14 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v15 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = 0x65736C6166;
  *(v16 + 40) = 0xE500000000000000;
  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "Modify record. Disk First? (%@)", 31, 2, v16);

  v17 = objc_autoreleasePoolPush();
  sub_101121B40(a1);
  v19 = v18;
  v31 = v18;
  objc_autoreleasePoolPop(v17);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  sub_100A4E410(a1, &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OwnedBeaconRecord);
  v32 = v12;
  v20 = *(v33 + 80);
  v21 = swift_allocObject();
  v33 = v10;
  v30 = a1;
  v22 = v21;
  v23 = v34;
  *(v21 + 16) = v35;
  *(v21 + 24) = v23;
  sub_10002AC44(v11, v21 + ((v20 + 32) & ~v20), type metadata accessor for OwnedBeaconRecord);

  sub_100FDCA40(v19, sub_100A4CA10, v22);

  v24 = swift_allocObject();
  *(v24 + 16) = sub_1007A7FA0;
  *(v24 + 24) = v13;

  Future.addFailure(block:)();

  sub_100A4E410(v30, v11, type metadata accessor for OwnedBeaconRecord);
  v25 = (v20 + 16) & ~v20;
  v26 = (v33 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  sub_10002AC44(v11, v27 + v25, type metadata accessor for OwnedBeaconRecord);
  *(v27 + v26) = v32;
  v28 = (v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v28 = sub_1007A7FA0;
  v28[1] = v13;

  Future.addSuccess(block:)();
}

uint64_t sub_100A3A11C(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v33 = a2;
  v34 = a4;
  v6 = type metadata accessor for OwnedBeaconRecord(0);
  v7 = __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v31 - v10;
  v12 = objc_autoreleasePoolPush();
  sub_100A47124(a1);
  v14 = v13;
  v16 = v15;
  objc_autoreleasePoolPop(v12);
  if (v16)
  {
    v17 = v14;
  }

  else
  {
    v17 = 0x6E616843206F4E3CLL;
  }

  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0xEE003E6761546567;
  }

  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_1000076D4(v19, qword_10177B7F8);
  sub_100A4E410(a1, v11, type metadata accessor for OwnedBeaconRecord);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v32 = a3;
    v35[0] = v23;
    *v22 = 136315394;
    v24 = sub_1000136BC(v17, v18, v35);

    *(v22 + 4) = v24;
    *(v22 + 12) = 2080;
    sub_100A4E410(v11, v9, type metadata accessor for OwnedBeaconRecord);
    v25 = String.init<A>(describing:)();
    v27 = v26;
    sub_100A4DCAC(v11, type metadata accessor for OwnedBeaconRecord);
    v28 = sub_1000136BC(v25, v27, v35);

    *(v22 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v20, v21, "Successfully updated local beacon [tag: %s]: %s ", v22, 0x16u);
    swift_arrayDestroy();
    a3 = v32;
  }

  else
  {

    sub_100A4DCAC(v11, type metadata accessor for OwnedBeaconRecord);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_100A3AD6C(a1);
  }

  return a3(Strong);
}

uint64_t sub_100A3A470(uint64_t a1, uint64_t (*a2)(uint64_t a1), uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *), char *a7, void (*a8)(void))
{
  v70 = a7;
  v71 = a8;
  v68 = a2;
  v69 = a6;
  v64 = a4;
  v65 = a5;
  v63 = a3;
  v9 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v61 - v10;
  v12 = type metadata accessor for BeaconNamingRecord(0);
  v72 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v66 = v14;
  v67 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v73 = (&v61 - v15);
  v16 = type metadata accessor for OwnedBeaconRecord(0);
  v62 = *(v16 - 8);
  v17 = *(v62 + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v19 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v61 - v20;
  v22 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  __chkstk_darwin(v22);
  v24 = (&v61 - v23);
  sub_1000D2A70(a1, &v61 - v23, &unk_1016B15A0, &qword_1013A0900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v24;
    if (qword_101694B80 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000076D4(v26, qword_10177B7F8);
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v74 = v25;
      v75 = v30;
      *v29 = 136315138;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v31 = String.init<A>(describing:)();
      v33 = sub_1000136BC(v31, v32, &v75);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v27, v28, "Failed to update local beacon: %s", v29, 0xCu);
      sub_100007BAC(v30);
    }

    v71();
  }

  else
  {
    sub_10002AC44(v24, v21, type metadata accessor for OwnedBeaconRecord);
    sub_1000D2A70(v68, v11, &unk_1016B29E0, &unk_1013B70E0);
    v35 = v21;
    if ((*(v72 + 48))(v11, 1, v12) == 1)
    {
      sub_10000B3A8(v11, &unk_1016B29E0, &unk_1013B70E0);
      v69(v21);
      v36 = type metadata accessor for OwnedBeaconRecord;
      v37 = v21;
    }

    else
    {
      v38 = v73;
      sub_10002AC44(v11, v73, type metadata accessor for BeaconNamingRecord);
      v39 = *(v63 + 280);
      v40 = swift_allocObject();
      v41 = v65;
      *(v40 + 16) = v64;
      *(v40 + 24) = v41;
      v71 = v40;
      sub_100A4E410(v35, v19, type metadata accessor for OwnedBeaconRecord);
      v42 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v43 = swift_allocObject();
      v44 = v70;
      *(v43 + 16) = v69;
      *(v43 + 24) = v44;
      sub_10002AC44(v19, v43 + v42, type metadata accessor for OwnedBeaconRecord);

      v45 = static os_log_type_t.default.getter();
      v70 = v35;
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v46 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_101385D80;
      *(v47 + 56) = &type metadata for String;
      *(v47 + 64) = sub_100008C00();
      *(v47 + 32) = 0x65736C6166;
      *(v47 + 40) = 0xE500000000000000;
      os_log(_:dso:log:_:_:)(v45, &_mh_execute_header, v46, "Modify record. Disk First? (%@)", 31, 2, v47);

      v48 = objc_autoreleasePoolPush();
      sub_101121DD0(v38);
      v50 = v49;
      v69 = v49;
      objc_autoreleasePoolPop(v48);
      sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
      type metadata accessor for CloudKitCoordinator();
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v68 = type metadata accessor for BeaconNamingRecord;
      v51 = v67;
      sub_100A4E410(v38, v67, type metadata accessor for BeaconNamingRecord);
      v52 = *(v72 + 80);
      v72 = v39;
      v53 = v66;
      v54 = swift_allocObject();
      v55 = v71;
      *(v54 + 16) = sub_100A4DD0C;
      *(v54 + 24) = v55;
      sub_10002AC44(v51, v54 + ((v52 + 32) & ~v52), type metadata accessor for BeaconNamingRecord);

      sub_100FDCA40(v50, sub_100A4E0E8, v54);

      v56 = swift_allocObject();
      *(v56 + 16) = sub_100A4E080;
      *(v56 + 24) = v43;

      Future.addFailure(block:)();

      sub_100A4E410(v73, v51, v68);
      v57 = (v52 + 16) & ~v52;
      v58 = (v53 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
      v59 = swift_allocObject();
      sub_10002AC44(v51, v59 + v57, type metadata accessor for BeaconNamingRecord);
      *(v59 + v58) = v72;
      v60 = (v59 + ((v58 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v60 = sub_100A4E080;
      v60[1] = v43;

      Future.addSuccess(block:)();

      sub_100A4DCAC(v70, type metadata accessor for OwnedBeaconRecord);
      v36 = type metadata accessor for BeaconNamingRecord;
      v37 = v73;
    }

    return sub_100A4DCAC(v37, v36);
  }
}

uint64_t sub_100A3AD14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + *(type metadata accessor for BeaconNamingRecord(0) + 32));

  *v5 = a2;
  v5[1] = a3;
  return result;
}

uint64_t sub_100A3AD6C(uint64_t a1)
{
  v3 = type metadata accessor for OwnedBeaconRecord(0);
  v45 = *(v3 - 8);
  __chkstk_darwin(v3);
  v47 = v4;
  v48 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v49);
  v50 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v6 - 8);
  v8 = &v45 - v7;
  v9 = type metadata accessor for DirectorySequence();
  v53 = *(v9 - 8);
  v54 = v9;
  __chkstk_darwin(v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v45 - v17;
  v46 = v1;
  v19 = *(v1 + 280);
  v51 = v3;
  v57 = *(v19 + 168);
  v20 = objc_autoreleasePoolPush();
  if (qword_101694468 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v12, qword_10177A518);
  v52 = a1;
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  objc_autoreleasePoolPop(v20);
  v59 = _swiftEmptyArrayStorage;
  v60 = _swiftEmptyArrayStorage;
  v21 = [objc_opt_self() defaultManager];
  v55 = v18;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  DirectorySequence.next()();
  v56 = v13;
  v22 = *(v13 + 48);
  v23 = v22(v8, 1, v12);
  v24 = v12;
  v58 = v11;
  if (v23 != 1)
  {
    v25 = *(v56 + 32);
    v26 = (v56 + 8);
    do
    {
      v25(v16, v8, v24);
      v27 = v22;
      v28 = objc_autoreleasePoolPush();
      sub_1005FF9CC(v16, v57, &v60, &v59);
      objc_autoreleasePoolPop(v28);
      (*v26)(v16, v24);
      DirectorySequence.next()();
      v22 = v27;
    }

    while (v27(v8, 1, v24) != 1);
  }

  (*(v53 + 8))(v58, v54);
  v29 = static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v30 = static OS_os_log.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_10138BBE0;
  v32 = v60;
  v33 = v60[2];
  *(v31 + 56) = &type metadata for Int;
  *(v31 + 64) = &protocol witness table for Int;
  *(v31 + 32) = v33;
  sub_100A4BFC4(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

  v34 = v55;
  v35 = dispatch thunk of CustomStringConvertible.description.getter();
  v37 = v36;
  *(v31 + 96) = &type metadata for String;
  *(v31 + 104) = sub_100008C00();
  *(v31 + 72) = v35;
  *(v31 + 80) = v37;
  os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, v30, "Found %i records at %@", 22, 2, v31);

  (*(v56 + 8))(v34, v24);

  if (!v32[2])
  {
  }

  v38 = v52;
  v39 = v50;
  sub_100A4E410(v52 + *(v51 + 24), v50, type metadata accessor for StableIdentifier);
  if (swift_getEnumCaseMultiPayload())
  {

    return sub_100A4DCAC(v39, type metadata accessor for StableIdentifier);
  }

  else
  {
    sub_100A4DCAC(v39, type metadata accessor for StableIdentifier);
    type metadata accessor for Transaction();
    v41 = swift_allocObject();
    swift_weakInit();
    v42 = v48;
    sub_100A4E410(v38, v48, type metadata accessor for OwnedBeaconRecord);
    v43 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = v41;
    *(v44 + 24) = v32;
    sub_10002AC44(v42, v44 + v43, type metadata accessor for OwnedBeaconRecord);

    static Transaction.asyncTask(name:block:)();
  }
}

uint64_t sub_100A3B47C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v3[8] = type metadata accessor for OwnedBeaconRecord(0);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_100A3B520, 0, 0);
}

uint64_t sub_100A3B520()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v0[11] = result;
  if (result)
  {
    v2 = *(result + 40);
    v0[12] = v2;
    if (v2)
    {

      v3 = swift_task_alloc();
      v0[13] = v3;
      *v3 = v0;
      v3[1] = sub_100A3B638;
      v5 = v0[6];
      v4 = v0[7];

      return sub_100570620(v5, v4);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v6 = v0[1];

    return v6();
  }

  return result;
}

uint64_t sub_100A3B638()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_100A3B99C;
  }

  else
  {

    v2 = sub_100A3B754;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100A3B754()
{
  v18 = v0;
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[7];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177B7F8);
  sub_100A4E410(v2, v1, type metadata accessor for OwnedBeaconRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  if (v6)
  {
    v8 = v0[9];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    sub_100A4E410(v7, v8, type metadata accessor for OwnedBeaconRecord);
    v11 = String.init<A>(describing:)();
    v13 = v12;
    sub_100A4DCAC(v7, type metadata accessor for OwnedBeaconRecord);
    v14 = sub_1000136BC(v11, v13, &v17);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Finished pushing changes to shares: %s ", v9, 0xCu);
    sub_100007BAC(v10);
  }

  else
  {

    sub_100A4DCAC(v7, type metadata accessor for OwnedBeaconRecord);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_100A3B99C()
{

  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B7F8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error from updateSharedBeaconRecord: %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100A3BB6C(uint64_t a1)
{
  v2 = v1;
  v38 = a1;
  v3 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v3 - 8);
  v5 = &v31 - v4;
  v37 = type metadata accessor for OwnedBeaconRecord(0);
  v6 = *(v37 - 8);
  __chkstk_darwin(v37);
  v33 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v11 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v31 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v2 + 56);
  *v17 = v18;
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  result = (*(v15 + 8))(v17, v14);
  if (v18)
  {
    v31 = v9;
    v32 = v5;
    v35 = dispatch_group_create();
    v21 = v38;
    sub_1000D2A70(v38, v13, &unk_1016A9A20, &qword_10138B280);
    type metadata accessor for BeaconKeyManager(0);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v22 = v39;
    type metadata accessor for LocalBeaconingManager(0);
    swift_allocObject();
    v36 = v13;
    *(v2 + 32) = sub_100F81CCC(v13, v22);

    sub_1000D2A70(v21, v11, &unk_1016A9A20, &qword_10138B280);
    if ((*(v6 + 48))(v11, 1, v37) == 1)
    {
      sub_10000B3A8(v11, &unk_1016A9A20, &qword_10138B280);
    }

    else
    {
      v23 = v33;
      sub_10002AC44(v11, v33, type metadata accessor for OwnedBeaconRecord);
      sub_100A3C374(v23);
      sub_100A4DCAC(v23, type metadata accessor for OwnedBeaconRecord);
    }

    sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
    type metadata accessor for CloudKitCoordinator();
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    QueueSynchronizer.conditionalSync<A>(_:)();

    v25 = v35;
    v24 = v36;
    if (v39 == 1)
    {
      dispatch_group_enter(v35);
      v26 = type metadata accessor for TaskPriority();
      v27 = v32;
      (*(*(v26 - 8) + 56))(v32, 1, 1, v26);
      sub_1000D2A70(v38, v24, &unk_1016A9A20, &qword_10138B280);
      v28 = (*(v34 + 80) + 48) & ~*(v34 + 80);
      v29 = swift_allocObject();
      v29[2] = 0;
      v29[3] = 0;
      v29[4] = v25;
      v29[5] = v2;
      sub_1000D2AD8(v24, v29 + v28, &unk_1016A9A20, &qword_10138B280);
      v30 = v25;

      sub_100A838D4(0, 0, v27, &unk_1013D35F8, v29);

      OS_dispatch_group.wait()();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100A3C100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a4;
  v8 = swift_task_alloc();
  *(v6 + 24) = v8;
  *v8 = v6;
  v8[1] = sub_100A3C198;

  return sub_100A4978C(a6);
}

uint64_t sub_100A3C198()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_100A3C310;
  }

  else
  {
    v2 = sub_100A3C2AC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100A3C2AC()
{
  dispatch_group_leave(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A3C310()
{
  dispatch_group_leave(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

void *sub_100A3C374(uint64_t a1)
{
  v2 = v1;
  v62 = a1;
  v3 = sub_1000BC4D4(&qword_10169F458, &unk_1013D35E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v62 - v4;
  v6 = type metadata accessor for OfflineFindingInfo(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v63 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&unk_1016B2720, "r\a\a");
  v10 = __chkstk_darwin(v9);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v64 = &v62 - v13;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v66[0] = 0x7365547265646E75;
  v66[1] = 0xE900000000000074;
  result = SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if ((v65 & 1) == 0)
  {
    v19 = *(v1 + 56);
    *v17 = v19;
    (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
    v20 = v19;
    LOBYTE(v19) = _dispatchPreconditionTest(_:)();
    v22 = *(v15 + 8);
    v21 = (v15 + 8);
    result = v22(v17, v14);
    if (v19)
    {
      v23 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_nvramAlreadyChecked;
      if (*(v2 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_nvramAlreadyChecked))
      {
        return result;
      }

      *(v2 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_nvramAlreadyChecked) = 1;
      v21 = v64;
      sub_101032844(v64);
      sub_1000D2A70(v21, v12, &unk_1016B2720, "r\a\a");
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_10000B3A8(v21, &unk_1016B2720, "r\a\a");
        v28 = v12;
        return sub_10000B3A8(v28, &unk_1016B2720, "r\a\a");
      }

      sub_101032F08();
      *(v2 + v23) = 0;
      sub_1003DE85C(v62, v5);
      if ((*(v7 + 48))(v5, 1, v6) != 1)
      {
        sub_10002AC44(v5, v63, type metadata accessor for OfflineFindingInfo);
        sub_100B9925C();
        if (qword_101694840 != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        sub_1000076D4(v29, qword_10177B060);

        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v66[0] = v33;
          *v32 = 136315138;
          v34 = Dictionary.description.getter();
          v36 = sub_1000136BC(v34, v35, v66);

          *(v32 + 4) = v36;
          _os_log_impl(&_mh_execute_header, v30, v31, "offineFindingInfo: %s", v32, 0xCu);
          sub_100007BAC(v33);
        }

        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v66[0] = v40;
          *v39 = 136315138;
          v41 = Dictionary.description.getter();
          v43 = sub_1000136BC(v41, v42, v66);

          *(v39 + 4) = v43;
          _os_log_impl(&_mh_execute_header, v37, v38, "dict: %s", v39, 0xCu);
          sub_100007BAC(v40);
        }

        v44 = objc_opt_self();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;
        v66[0] = 0;
        v46 = [v44 dataWithPropertyList:isa format:200 options:0 error:v66];

        v47 = v66[0];
        if (v46)
        {

          v48 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v50 = v49;

          sub_101033300(v48, v50);
          sub_100016590(v48, v50);
        }

        else
        {
          v51 = v47;
          _convertNSErrorToError(_:)();

          swift_willThrow();

          swift_errorRetain();
          v52 = Logger.logObject.getter();
          v53 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            v66[0] = swift_slowAlloc();
            *v54 = 136315394;
            v55 = Dictionary.description.getter();
            v57 = v56;

            v58 = sub_1000136BC(v55, v57, v66);

            *(v54 + 4) = v58;
            *(v54 + 12) = 2080;
            swift_getErrorValue();
            v59 = Error.localizedDescription.getter();
            v61 = sub_1000136BC(v59, v60, v66);

            *(v54 + 14) = v61;
            _os_log_impl(&_mh_execute_header, v52, v53, "Error converting offlineFindingInfo to data: %s error: %s", v54, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }
        }

        sub_100A4DCAC(v63, type metadata accessor for OfflineFindingInfo);
        v28 = v64;
        return sub_10000B3A8(v28, &unk_1016B2720, "r\a\a");
      }

      sub_10000B3A8(v5, &qword_10169F458, &unk_1013D35E0);
      if (qword_101694840 == -1)
      {
LABEL_9:
        v24 = type metadata accessor for Logger();
        sub_1000076D4(v24, qword_10177B060);
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&_mh_execute_header, v25, v26, "offineFindingInfo retured nil", v27, 2u);
        }

        v28 = v21;
        return sub_10000B3A8(v28, &unk_1016B2720, "r\a\a");
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_9;
  }

  return result;
}

void sub_100A3CCE4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &aBlock[-1] - v9;
  XPCSession.proxy.getter();
  v11 = v18;
  if (v18)
  {
    if (a4 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = Data._bridgeToObjectiveC()().super.isa;
    }

    (*(v8 + 16))(v10, a1, v7);
    v13 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    (*(v8 + 32))(v14 + v13, v10, v7);
    aBlock[4] = sub_100A4C230;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10077732C;
    aBlock[3] = &unk_101643F48;
    v15 = _Block_copy(aBlock);

    [v11 pushLocalBeaconInfo:isa completion:v15];
    swift_unknownObjectRelease();
    _Block_release(v15);
  }
}

uint64_t sub_100A3CEF8(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_101694B80 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_10177B7F8);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138543362;
      v6 = _convertErrorToNSError(_:)();
      *(v4 + 4) = v6;
      *v5 = v6;
      _os_log_impl(&_mh_execute_header, v2, v3, "Error from pushLocalBeaconInfo: %{public}@", v4, 0xCu);
      sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
    }

    sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100A3D09C@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 stringForKey:v3];

  if (v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.init(uuidString:)();
  }

  else
  {
    v6 = type metadata accessor for UUID();
    v7 = *(*(v6 - 8) + 56);

    return v7(a1, 1, 1, v6);
  }
}

void sub_100A3D1C8(uint64_t a1)
{
  v1 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v2 = qword_10177C370;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_101385D80;
  type metadata accessor for OwnedBeaconRecord(0);
  v4 = UUID.uuidString.getter();
  v6 = v5;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_100008C00();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, v2, "Removing poisoned local beacon: %@", 34, 2, v3);

  sub_100A3D354();
  sub_101032F08();
  v7 = [objc_opt_self() standardUserDefaults];
  v8 = String._bridgeToObjectiveC()();
  [v7 removeObjectForKey:v8];
}