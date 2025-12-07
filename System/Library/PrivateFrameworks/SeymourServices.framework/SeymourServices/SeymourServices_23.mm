uint64_t sub_2270DCB34(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227663E50();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270C5414(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D50520], &qword_27D7B8BC0, &unk_2276717F0);
      goto LABEL_12;
    }

    sub_2270F2B4C(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_27D7B8688, MEMORY[0x277D50520], MEMORY[0x277D50528]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7B8BC8, MEMORY[0x277D50520], MEMORY[0x277D50530]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270DCDFC(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_2276655A0();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270C5770(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D51730], &qword_27D7B8B90, &qword_2276717D8);
      goto LABEL_12;
    }

    sub_2270F2E68(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_27D7B8690, MEMORY[0x277D51730], MEMORY[0x277D51738]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7B8B98, MEMORY[0x277D51730], MEMORY[0x277D51740]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270DD0C4(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227664650();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270C5ACC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D50A68], &qword_27D7B8BB0, &qword_2276717E8);
      goto LABEL_12;
    }

    sub_2270F3184(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_27D7B8698, MEMORY[0x277D50A68], MEMORY[0x277D50A70]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7B8BB8, MEMORY[0x277D50A68], MEMORY[0x277D50A78]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270DD38C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227663610();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270C5E28(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D4FFF0], &qword_27D7B8BA0, &qword_2276717E0);
      goto LABEL_12;
    }

    sub_2270F34A0(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_27D7B86A0, MEMORY[0x277D4FFF0], MEMORY[0x277D4FFF8]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7B8BA8, MEMORY[0x277D4FFF0], MEMORY[0x277D50000]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270DD654(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227663680();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270C6184(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D50018], &qword_27D7B8B80, &qword_2276717D0);
      goto LABEL_12;
    }

    sub_2270F37BC(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_27D7B86A8, MEMORY[0x277D50018], MEMORY[0x277D50020]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7B8B88, MEMORY[0x277D50018], MEMORY[0x277D50028]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270DD91C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227663350();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270C64E0(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D4FEC8], &qword_27D7B8B70, &qword_2276717C8);
      goto LABEL_12;
    }

    sub_2270F3AD8(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_27D7B86B0, MEMORY[0x277D4FEC8], MEMORY[0x277D4FED0]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7B8B78, MEMORY[0x277D4FEC8], MEMORY[0x277D4FED8]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270DDBE4(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227663C90();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270C683C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D503E8], &qword_27D7B8B60, &qword_2276717C0);
      goto LABEL_12;
    }

    sub_2270F3DF4(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_27D7B86B8, MEMORY[0x277D503E8], MEMORY[0x277D503F0]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7B8B68, MEMORY[0x277D503E8], MEMORY[0x277D503F8]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270DDEAC(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227664E20();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270C6B98(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D51068], &qword_27D7B8AD8, &qword_227671760);
      goto LABEL_12;
    }

    sub_2270F4110(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&unk_2813A5750, MEMORY[0x277D51068], MEMORY[0x277D51070]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7B8AE0, MEMORY[0x277D51068], MEMORY[0x277D51078]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270DE174(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_2276639B0();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270C6EF4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D501C8], &qword_27D7B8A30, &qword_22767E140);
      goto LABEL_12;
    }

    sub_2270F442C(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_28139BCA8, MEMORY[0x277D501C8], MEMORY[0x277D501D0]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7B8678, MEMORY[0x277D501C8], MEMORY[0x277D501D8]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270DE43C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_2276687D0();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270C7250(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D535A0], &qword_27D7BA520, &qword_227678DE0);
      goto LABEL_12;
    }

    sub_2270F4748(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&unk_28139B498, MEMORY[0x277D535A0], MEMORY[0x277D535A8]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BA518, MEMORY[0x277D535A0], MEMORY[0x277D535B0]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270DE704(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_2276668A0();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270C75AC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D526D0], &qword_27D7BA530, &qword_227678DE8);
      goto LABEL_12;
    }

    sub_2270F4A64(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&unk_28139B620, MEMORY[0x277D526D0], MEMORY[0x277D526D8]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BA528, MEMORY[0x277D526D0], MEMORY[0x277D526E0]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270DE9CC(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227666070();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270C7908(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D52038], &qword_27D7BA540, &qword_227678DF0);
      goto LABEL_12;
    }

    sub_2270F4D80(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_28139B6D0, MEMORY[0x277D52038], MEMORY[0x277D52040]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BA538, MEMORY[0x277D52038], MEMORY[0x277D52048]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270DEC94(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227663180();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270C7C64(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D4FCA8], &qword_27D7B8A28, &unk_2276716B0);
      goto LABEL_12;
    }

    sub_2270F509C(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_28139BD58, MEMORY[0x277D4FCA8], MEMORY[0x277D4FCB0]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_28139BD50, MEMORY[0x277D4FCA8], MEMORY[0x277D4FCB8]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270DEF5C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_2276624A0();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270C7FC0(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277CC9260], &qword_27D7B8B30, &qword_227671798);
      goto LABEL_12;
    }

    sub_2270F53B8(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_28139BDE0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_28139BDD8, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270DF224(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227663480();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270C831C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D4FF88], &qword_27D7B8B38, &unk_2276717A0);
      goto LABEL_12;
    }

    sub_2270F56D4(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&unk_2813A5800, MEMORY[0x277D4FF88], MEMORY[0x277D4FF90]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7B89E0, MEMORY[0x277D4FF88], MEMORY[0x277D4FF98]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270DF4EC(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227665490();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270C8678(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D51680], &qword_27D7BAAD8, &qword_2276791A8);
      goto LABEL_12;
    }

    sub_2270F59F0(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_27D7B8628, MEMORY[0x277D51680], MEMORY[0x277D51688]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BAAD0, MEMORY[0x277D51680], MEMORY[0x277D51690]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270DF7B4(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227665680();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270C89D4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D51898], &qword_27D7B8C18, qword_227671828);
      goto LABEL_12;
    }

    sub_2270F5D0C(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&unk_28139B7E8, MEMORY[0x277D51898], MEMORY[0x277D518A0]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7B8900, MEMORY[0x277D51898], MEMORY[0x277D518A8]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270DFA7C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_2276638D0();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270C8D30(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D50180], &qword_27D7BA4F8, &qword_227678DC8);
      goto LABEL_12;
    }

    sub_2270F6028(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_2813A57E8, MEMORY[0x277D50180], MEMORY[0x277D50188]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7B8920, MEMORY[0x277D50180], MEMORY[0x277D50190]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270DFD44(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227667780();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270C908C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D52F78], &qword_27D7BA638, &qword_227678E98);
      goto LABEL_12;
    }

    sub_2270F6344(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&unk_2813A55D0, MEMORY[0x277D52F78], MEMORY[0x277D52F80]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BA630, MEMORY[0x277D52F78], MEMORY[0x277D52F88]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E000C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227664530();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270C93E8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D50978], &qword_27D7B8AC0, &qword_22767E170);
      goto LABEL_12;
    }

    sub_2270F6660(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_2813A57C0, MEMORY[0x277D50978], MEMORY[0x277D50980]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7B8AC8, MEMORY[0x277D50978], MEMORY[0x277D50988]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E02D4(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227665F20();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270C9744(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D51FE0], &qword_27D7BA640, &unk_22767DFD0);
      goto LABEL_12;
    }

    sub_2270F697C(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&unk_27D7BBD10, MEMORY[0x277D51FE0], MEMORY[0x277D51FE8]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7B8700, MEMORY[0x277D51FE0], MEMORY[0x277D51FF8]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E059C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227667C20();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270C9AA0(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D531E0], &qword_27D7B8A40, &qword_22767DE30);
      goto LABEL_12;
    }

    sub_2270F6C98(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_28139B4E0, MEMORY[0x277D531E0], MEMORY[0x277D531E8]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_28139B4D8, MEMORY[0x277D531E0], MEMORY[0x277D531F0]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E0864(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227666170();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270C9DFC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D520D0], &qword_27D7BAA18, &qword_227679128);
      goto LABEL_12;
    }

    sub_2270F6FB4(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_2813A56C0, MEMORY[0x277D520D0], MEMORY[0x277D520D8]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BAA10, MEMORY[0x277D520D0], MEMORY[0x277D520E0]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E0B2C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227669040();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270CA158(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D539C0], &qword_27D7BA628, &qword_227678E90);
      goto LABEL_12;
    }

    sub_2270F72D0(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_2813A5518, MEMORY[0x277D539C0], MEMORY[0x277D539C8]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BA620, MEMORY[0x277D539C0], MEMORY[0x277D539D0]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E0DF4(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_2276646D0();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270CA4B4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D50B18], &qword_27D7BAA28, &qword_227679130);
      goto LABEL_12;
    }

    sub_2270F75EC(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_27D7B8980, MEMORY[0x277D50B18], MEMORY[0x277D50B20]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BAA20, MEMORY[0x277D50B18], MEMORY[0x277D50B28]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E10BC(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_2276632A0();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270CA810(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D4FE80], &qword_27D7BA588, &qword_227678E28);
      goto LABEL_12;
    }

    sub_2270F7908(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_28139BD28, MEMORY[0x277D4FE80], MEMORY[0x277D4FE88]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_28139BD20, MEMORY[0x277D4FE80], MEMORY[0x277D4FE90]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E1384(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227664EB0();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270CAB6C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D51130], &qword_27D7BA578, &qword_227678E18);
      goto LABEL_12;
    }

    sub_2270F7C24(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_28139B8B8, MEMORY[0x277D51130], MEMORY[0x277D51138]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_28139B8B0, MEMORY[0x277D51130], MEMORY[0x277D51140]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E164C(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_2270D5908(v7 + 1, &qword_27D7BA9E0, &qword_227679100, MEMORY[0x277D49450]);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_2270EF67C(&qword_27D7BA9E0, &qword_227679100);
      goto LABEL_16;
    }

    sub_2271019C0(v7 + 1, &qword_27D7BA9E0, &qword_227679100, MEMORY[0x277D49450]);
  }

  v9 = *v3;
  sub_22766D370();
  sub_227662AE0();
  sub_22766C100();

  result = sub_22766D3F0();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = sub_227662AE0();
      v14 = v13;
      if (v12 == sub_227662AE0() && v14 == v15)
      {
        goto LABEL_19;
      }

      v17 = sub_22766D190();

      if (v17)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v18 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v6;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E187C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_2276640A0();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270CAEC8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D50678], &qword_27D7BA998, &qword_2276790D0);
      goto LABEL_12;
    }

    sub_2270F7F40(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&unk_28139B9E0, MEMORY[0x277D50678], MEMORY[0x277D50680]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BA990, MEMORY[0x277D50678], MEMORY[0x277D50688]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E1B44(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227664AA0();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270CB224(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D50CD0], &qword_27D7BA678, &qword_227678EB0);
      goto LABEL_12;
    }

    sub_2270F825C(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_2813A5788, MEMORY[0x277D50CD0], MEMORY[0x277D50CD8]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BA670, MEMORY[0x277D50CD0], MEMORY[0x277D50CE0]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E1E0C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_2276650A0();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270CB580(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D51330], &qword_27D7B8B08, &qword_227671780);
      goto LABEL_12;
    }

    sub_2270F8578(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_2813A5738, MEMORY[0x277D51330], MEMORY[0x277D51338]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7B8B10, MEMORY[0x277D51330], MEMORY[0x277D51340]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E20D4(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227669580();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270CB8DC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D53E88], &qword_27D7BA5C8, &qword_227678E58);
      goto LABEL_12;
    }

    sub_2270F8894(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&unk_28139B208, MEMORY[0x277D53E88], MEMORY[0x277D53E90]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_28139B200, MEMORY[0x277D53E88], MEMORY[0x277D53E98]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E239C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227666330();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270CBC38(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D522A0], &qword_27D7BA5E0, &qword_227678E68);
      goto LABEL_12;
    }

    sub_2270F8BB0(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_28139B698, MEMORY[0x277D522A0], MEMORY[0x277D522A8]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BA5D8, MEMORY[0x277D522A0], MEMORY[0x277D522B0]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E2664(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227666980();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270CBF94(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D52758], &qword_27D7BA598, &qword_227678E30);
      goto LABEL_12;
    }

    sub_2270F8ECC(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_27D7B86C8, MEMORY[0x277D52758], MEMORY[0x277D52760]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BA590, MEMORY[0x277D52758], MEMORY[0x277D52768]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E292C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227664A10();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270CC2F0(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D50C78], &qword_27D7BA570, &qword_227678E10);
      goto LABEL_12;
    }

    sub_2270F91E8(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_27D7B86C0, MEMORY[0x277D50C78], MEMORY[0x277D50C80]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BA568, MEMORY[0x277D50C78], MEMORY[0x277D50C88]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E2BF4(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_2276633A0();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270CC64C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D4FF18], &qword_27D7BA558, &qword_227678E00);
      goto LABEL_12;
    }

    sub_2270F9504(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&unk_28139BCF8, MEMORY[0x277D4FF18], MEMORY[0x277D4FF20]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_28139BCF0, MEMORY[0x277D4FF18], MEMORY[0x277D4FF28]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E2EBC(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_2276664D0();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270CC9A8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D52300], &qword_27D7BA550, &qword_227678DF8);
      goto LABEL_12;
    }

    sub_2270F9820(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_27D7B8680, MEMORY[0x277D52300], MEMORY[0x277D52308]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BA548, MEMORY[0x277D52300], MEMORY[0x277D52310]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E3184(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227665D70();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270CCD04(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D51E30], &qword_27D7BAA38, &qword_227679138);
      goto LABEL_12;
    }

    sub_2270F9B3C(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_28139B708, MEMORY[0x277D51E30], MEMORY[0x277D51E38]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BAA30, MEMORY[0x277D51E30], MEMORY[0x277D51E40]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E344C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227667B30();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270CD060(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D53128], &qword_27D7BAA48, &qword_227679140);
      goto LABEL_12;
    }

    sub_2270F9E58(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&unk_28139B4F8, MEMORY[0x277D53128], MEMORY[0x277D53130]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BAA40, MEMORY[0x277D53128], MEMORY[0x277D53138]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E3714(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_2276645D0();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270CD3BC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D50A30], &qword_27D7BAA78, &qword_227679160);
      goto LABEL_12;
    }

    sub_2270FA174(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_27D7B8990, MEMORY[0x277D50A30], MEMORY[0x277D50A38]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BAA70, MEMORY[0x277D50A30], MEMORY[0x277D50A40]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E39DC(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_2276692D0();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270CD718(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D53B20], &qword_27D7BAA88, &qword_227679168);
      goto LABEL_12;
    }

    sub_2270FA490(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_27D7B8998, MEMORY[0x277D53B20], MEMORY[0x277D53B28]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BAA80, MEMORY[0x277D53B20], MEMORY[0x277D53B30]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E3CA4(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_2270CDA74(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_2270EE5AC();
      goto LABEL_16;
    }

    sub_2270FA7AC(v7 + 1);
  }

  v9 = *v3;
  sub_22766D370();
  sub_2276637A0();
  sub_22766C100();

  result = sub_22766D3F0();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = sub_2276637A0();
      v14 = v13;
      if (v12 == sub_2276637A0() && v14 == v15)
      {
        goto LABEL_19;
      }

      v17 = sub_22766D190();

      if (v17)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v18 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v6;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E3E7C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227664E40();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270CDCE0(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D51098], &qword_27D7BA6B8, &qword_227678ED8);
      goto LABEL_12;
    }

    sub_2270FA9E8(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_27D7B8710, MEMORY[0x277D51098], MEMORY[0x277D510A0]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BA6B0, MEMORY[0x277D51098], MEMORY[0x277D510A8]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E4144(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227666F60();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270CE03C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D52AB0], &qword_27D7BAA68, &qword_227679158);
      goto LABEL_12;
    }

    sub_2270FAD04(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_28139B5A0, MEMORY[0x277D52AB0], MEMORY[0x277D52AB8]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_28139B598, MEMORY[0x277D52AB0], MEMORY[0x277D52AC0]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E440C(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2276682D0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  v29 = v9;
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v28 = v10;
    sub_2270CE398(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_2270EE1A8(MEMORY[0x277D53468], &qword_27D7B8A38, &unk_2276716C0, MEMORY[0x277D53468]);
      goto LABEL_12;
    }

    v28 = v10;
    sub_2270FB020(v13 + 1);
  }

  v15 = *v4;
  sub_22766D370();
  sub_2276682C0();
  v16 = sub_22766D3F0();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      v20 = MEMORY[0x277D53468];
      sub_226F48E08(*(v15 + 48) + v19 * a2, v12, MEMORY[0x277D53468]);
      v21 = MEMORY[0x22AA945D0](v12, a1);
      sub_226F48E70(v12, v20);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_2271059DC(a1, *(v22 + 48) + *(v29 + 72) * a2, MEMORY[0x277D53468]);
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v22 + 16) = v26;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E4684(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270D9508(v7 + 1, &qword_27D7B8B40, &unk_22767E160, MEMORY[0x277D50998]);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_2270EF67C(&qword_27D7B8B40, &unk_22767E160);
      goto LABEL_12;
    }

    sub_227105180(v7 + 1, &qword_27D7B8B40, &unk_22767E160, MEMORY[0x277D50998]);
  }

  v9 = *v3;
  sub_22766D370();
  v10 = sub_227664570();
  MEMORY[0x22AA996B0](v10);
  result = sub_22766D3F0();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = sub_227664570();
      result = sub_227664570();
      if (v13 == result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + a2) = v6;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E4848(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227668A00();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270CE9FC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D53708], &qword_27D7BAAF8, &qword_2276791B8);
      goto LABEL_12;
    }

    sub_2270FB2F8(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_2813A5558, MEMORY[0x277D53708], MEMORY[0x277D53710]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BAAF0, MEMORY[0x277D53708], MEMORY[0x277D53718]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E4B10(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_2276668F0();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270CED58(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D52700], &qword_27D7BA510, &qword_227678DD8);
      goto LABEL_12;
    }

    sub_2270FB614(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_2813A5678, MEMORY[0x277D52700], MEMORY[0x277D52708]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BA508, MEMORY[0x277D52700], MEMORY[0x277D52710]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E4DD8(uint64_t result, char a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a4)
  {
    sub_2270CF0B4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2270EE6EC();
      goto LABEL_12;
    }

    sub_2270FB930(v8 + 1);
  }

  v10 = *v4;
  sub_22766D370();
  sub_227664970();
  result = sub_22766D3F0();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      result = sub_227664960();
      if (result)
      {
        goto LABEL_15;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_12:
  v13 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v14 = *(v13 + 48) + 16 * a3;
  *v14 = v7;
  *(v14 + 8) = a2 & 1;
  v15 = *(v13 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v13 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E4F54(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270D9508(v7 + 1, &qword_27D7BA800, &qword_227678F80, MEMORY[0x277D53B38]);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_2270EF67C(&qword_27D7BA800, &qword_227678F80);
      goto LABEL_12;
    }

    sub_227105180(v7 + 1, &qword_27D7BA800, &qword_227678F80, MEMORY[0x277D53B38]);
  }

  v9 = *v3;
  sub_22766D370();
  v10 = sub_227669310();
  MEMORY[0x22AA996B0](v10);
  result = sub_22766D3F0();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = sub_227669310();
      result = sub_227669310();
      if (v13 == result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + a2) = v6;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E5118(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227662750();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270CF31C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277CC9578], &qword_27D7BA698, &qword_227678EC8);
      goto LABEL_12;
    }

    sub_2270FBB68(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_2813A5820, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_28139BDB8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E53E0(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2276660A0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  v29 = v9;
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v28 = v10;
    sub_2270CF678(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_2270EE1A8(MEMORY[0x277D52060], &qword_27D7BA860, &qword_227678FD0, MEMORY[0x277D52060]);
      goto LABEL_12;
    }

    v28 = v10;
    sub_2270FBE84(v13 + 1);
  }

  v15 = *v4;
  sub_22766D370();
  sub_227666090();
  v16 = sub_22766D3F0();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      v20 = MEMORY[0x277D52060];
      sub_226F48E08(*(v15 + 48) + v19 * a2, v12, MEMORY[0x277D52060]);
      v21 = MEMORY[0x22AA923A0](v12, a1);
      sub_226F48E70(v12, v20);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_2271059DC(a1, *(v22 + 48) + *(v29 + 72) * a2, MEMORY[0x277D52060]);
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v22 + 16) = v26;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E5658(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227667E50();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270CF980(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D533B8], &qword_27D7B8B48, &qword_2276717B0);
      goto LABEL_12;
    }

    sub_2270FC15C(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_2813A55A8, MEMORY[0x277D533B8], MEMORY[0x277D533C0]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7B8B50, MEMORY[0x277D533B8], MEMORY[0x277D533C8]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E5920(uint64_t result, void *a2, char a3, unint64_t a4, char a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t (*a9)(void))
{
  v13 = result;
  v14 = *(*v9 + 16);
  v15 = *(*v9 + 24);
  if (v15 > v14 && (a5 & 1) != 0)
  {
    goto LABEL_36;
  }

  if (a5)
  {
    sub_2270CFCDC(v14 + 1, a6, a7);
  }

  else
  {
    if (v15 > v14)
    {
      result = sub_2270EF05C(a6, a7, a9);
      goto LABEL_36;
    }

    sub_2270FC478(v14 + 1, a6, a7);
  }

  v16 = *v9;
  sub_22766D370();
  if (!a3)
  {
    MEMORY[0x22AA996B0](0);
    sub_227663FB0();
    goto LABEL_12;
  }

  if (a3 == 1)
  {
    MEMORY[0x22AA996B0](1);
    sub_227664C10();
LABEL_12:
    sub_22766C100();

    goto LABEL_14;
  }

  MEMORY[0x22AA996B0](2);
  sub_22766C100();
LABEL_14:
  result = sub_22766D3F0();
  v17 = -1 << *(v16 + 32);
  a4 = result & ~v17;
  if ((*(v16 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v18 = ~v17;
    v35 = a2;
    while (1)
    {
      v19 = *(v16 + 48) + 24 * a4;
      result = *v19;
      if (!*(v19 + 16))
      {
        break;
      }

      if (*(v19 + 16) == 1)
      {
        if (a3 != 1)
        {
          goto LABEL_17;
        }

        v20 = sub_227664C10();
        v22 = v21;
        v23 = sub_227664C10();
LABEL_30:
        if (v20 == v23 && v22 == v24)
        {
          goto LABEL_39;
        }

        v28 = sub_22766D190();

        a2 = v35;
        if (v28)
        {
          goto LABEL_40;
        }

        goto LABEL_17;
      }

      if (a3 == 2)
      {
        if (result == v13 && *(v19 + 8) == a2)
        {
          goto LABEL_40;
        }

        result = sub_22766D190();
        if (result)
        {
          goto LABEL_40;
        }
      }

LABEL_17:
      a4 = (a4 + 1) & v18;
      if (((*(v16 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    if (a3)
    {
      goto LABEL_17;
    }

    v20 = sub_227663FB0();
    v22 = v26;
    v23 = sub_227663FB0();
    goto LABEL_30;
  }

LABEL_36:
  v29 = *v34;
  *(*v34 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v30 = *(v29 + 48) + 24 * a4;
  *v30 = v13;
  *(v30 + 8) = a2;
  *(v30 + 16) = a3;
  v31 = *(v29 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (v32)
  {
    __break(1u);
LABEL_39:

LABEL_40:
    result = sub_22766D210();
    __break(1u);
  }

  else
  {
    *(v29 + 16) = v33;
  }

  return result;
}

void sub_2270E5BF8(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2270CFFA8(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        sub_2270EE87C();
        goto LABEL_26;
      }

      sub_2270FC71C(v6 + 1);
    }

    v8 = *v3;
    sub_22766D370();
    v9 = *(a1 + 16);
    MEMORY[0x22AA996B0](v9);
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = (a1 + 56);
      do
      {
        v12 = *(v11 - 2);
        v13 = *(v11 - 1);
        v14 = *v11;
        v11 += 32;
        v28 = v12;
        v29 = v13;
        sub_226EB396C(v12, v13, v14);
        sub_226F48228();
        sub_22766BF60();
        sub_226EB2DFC(v28, v29, v14);
        --v10;
      }

      while (v10);
    }

    v15 = sub_22766D3F0();
    v16 = v8 + 56;
    v17 = -1 << *(v8 + 32);
    a2 = v15 & ~v17;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v18 = ~v17;
      v27 = ~v17;
      while (1)
      {
        v19 = *(*(v8 + 48) + 8 * a2);
        if (*(v19 + 16) == v9)
        {
          break;
        }

LABEL_14:
        a2 = (a2 + 1) & v18;
        if (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      if (v9 && v19 != a1)
      {

        v20 = 0;
        v21 = 0;
        while (v21 < *(v19 + 16))
        {
          if (v21 >= *(a1 + 16))
          {
            goto LABEL_29;
          }

          if (*(v19 + v20 + 32) != *(a1 + v20 + 32) || (sub_226F48150(), sub_226EC1E18(), (sub_227663B20() & 1) == 0))
          {

            v18 = v27;
            v16 = v8 + 56;
            goto LABEL_14;
          }

          ++v21;
          v20 += 32;
          if (v9 == v21)
          {

            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

LABEL_25:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B87B8, &qword_227680850);
      sub_22766D210();
      __break(1u);
    }
  }

LABEL_26:
  v22 = *v26;
  *(*v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v22 + 48) + 8 * a2) = a1;
  v23 = *(v22 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v22 + 16) = v25;
    return;
  }

LABEL_30:
  __break(1u);
}

uint64_t sub_2270E5EA4(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227664CA0();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270D010C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D50E98], &qword_27D7B8B00, &qword_227671778);
      goto LABEL_12;
    }

    sub_2270FC848(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_2813A5770, MEMORY[0x277D50E98], MEMORY[0x277D50EA0]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_28139B8F8, MEMORY[0x277D50E98], MEMORY[0x277D50EA8]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E616C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227668E30();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270D0468(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D538B8], &qword_27D7BA858, &qword_227678FC8);
      goto LABEL_12;
    }

    sub_2270FCB64(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&unk_2813A5530, MEMORY[0x277D538B8], MEMORY[0x277D538C0]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BA850, MEMORY[0x277D538B8], MEMORY[0x277D538C8]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E6434(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227665100();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270D07C4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D51360], &qword_27D7BA820, &qword_227678FA0);
      goto LABEL_12;
    }

    sub_2270FCE80(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_2813A5720, MEMORY[0x277D51360], MEMORY[0x277D51368]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_28139B860, MEMORY[0x277D51360], MEMORY[0x277D51370]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E66FC(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t a6)
{
  v7 = result;
  v8 = *(*v6 + 16);
  v9 = *(*v6 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270D0B20(v8 + 1, a4, a5);
  }

  else
  {
    if (v9 > v8)
    {
      v10 = a2;
      result = sub_2270EE9CC(a4, a5);
      a2 = v10;
      goto LABEL_12;
    }

    sub_2270FD19C(v8 + 1, a4, a5);
  }

  v11 = *v6;
  result = sub_22766D360();
  v12 = -1 << *(v11 + 32);
  a2 = result & ~v12;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    while (*(*(v11 + 48) + 8 * a2) != v7)
    {
      a2 = (a2 + 1) & v13;
      if (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = v7;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E6838(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227668390();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270D0D3C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D53480], &qword_27D7BA848, &qword_227678FC0);
      goto LABEL_12;
    }

    sub_2270FD384(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&unk_2813A5570, MEMORY[0x277D53480], MEMORY[0x277D53488]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BA840, MEMORY[0x277D53480], MEMORY[0x277D53490]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E6B00(uint64_t result, uint64_t a2, unsigned int a3, unint64_t a4, char a5)
{
  v7 = result;
  v8 = *(*v5 + 16);
  v9 = *(*v5 + 24);
  if (v9 > v8 && (a5 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a5)
  {
    sub_2270D5ED4(v8 + 1, &qword_27D7BAAC8, &qword_2276791A0, MEMORY[0x277D52D30]);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2270EF05C(&qword_27D7BAAC8, &qword_2276791A0, sub_226F04958);
      goto LABEL_12;
    }

    sub_227101F1C(v8 + 1, &qword_27D7BAAC8, &qword_2276791A0, sub_226F04958, MEMORY[0x277D52D30]);
  }

  v10 = *v5;
  sub_22766D370();
  sub_227667460();
  result = sub_22766D3F0();
  v11 = -1 << *(v10 + 32);
  a4 = result & ~v11;
  if ((*(v10 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v12 = ~v11;
    do
    {
      v13 = *(v10 + 48) + 24 * a4;
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);
      sub_226F04958(*v13, v15, *(v13 + 16));
      v17 = MEMORY[0x22AA93770](v14, v15, v16, v7, a2, a3);
      result = sub_226EE28B0(v14, v15, v16);
      if (v17)
      {
        goto LABEL_15;
      }

      a4 = (a4 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_12:
  v18 = *v23;
  *(*v23 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v19 = *(v18 + 48) + 24 * a4;
  *v19 = v7;
  *(v19 + 8) = a2;
  *(v19 + 16) = a3;
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v18 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E6D40(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227669140();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270D1098(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D53A28], &qword_27D7BAB18, &qword_2276791C8);
      goto LABEL_12;
    }

    sub_2270FD6A0(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_27D7BA4D8, MEMORY[0x277D53A28], MEMORY[0x277D53A30]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BAB10, MEMORY[0x277D53A28], MEMORY[0x277D53A38]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

void sub_2270E7008(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270D13F4(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_2270EEAFC();
      goto LABEL_12;
    }

    sub_2270FD9BC(v7 + 1);
  }

  v9 = *v3;
  sub_22766D370();
  sub_2276630D0();
  v10 = sub_22766D3F0();
  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = *(v9 + 48) + 40 * a2;
      v14 = *(v13 + 32);
      v15 = *(v13 + 16);
      v24[0] = *v13;
      v24[1] = v15;
      v25 = v14;
      sub_226F48CA0(v24, v23);
      v16 = MEMORY[0x22AA8F3E0](v24, result);
      sub_227105978(v24);
      if (v16)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v17 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v18 = *(v17 + 48) + 40 * a2;
  v19 = *(result + 16);
  *v18 = *result;
  *(v18 + 16) = v19;
  *(v18 + 32) = *(result + 32);
  v20 = *(v17 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v17 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_15:
  sub_22766D210();
  __break(1u);
}

uint64_t sub_2270E71A8(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227663110();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270D1668(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D4FC78], &qword_27D7BAAB0, &qword_227679188);
      goto LABEL_12;
    }

    sub_2270FDC0C(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_27D7B89B8, MEMORY[0x277D4FC78], MEMORY[0x277D4FC80]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BAAA8, MEMORY[0x277D4FC78], MEMORY[0x277D4FC88]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E7470(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227667580();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270D19C4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D52E68], &qword_27D7BA988, &qword_2276790C8);
      goto LABEL_12;
    }

    sub_2270FDF28(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_27D7B8930, MEMORY[0x277D52E68], MEMORY[0x277D52E70]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BA980, MEMORY[0x277D52E68], MEMORY[0x277D52E78]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E7738(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227666650();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270D1D20(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D52498], &qword_27D7BA708, &qword_22767E0A0);
      goto LABEL_12;
    }

    sub_2270FE244(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_2813A56A8, MEMORY[0x277D52498], MEMORY[0x277D524A0]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BA700, MEMORY[0x277D52498], MEMORY[0x277D524A8]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E7A00(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227664410();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270D207C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D508B0], &qword_27D7BA9A8, &qword_2276790D8);
      goto LABEL_12;
    }

    sub_2270FE560(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_28139B998, MEMORY[0x277D508B0], MEMORY[0x277D508B8]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BA9A0, MEMORY[0x277D508B0], MEMORY[0x277D508C0]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E7CC8(uint64_t result, uint64_t a2, char a3, unint64_t a4, char a5)
{
  v7 = result;
  v8 = *(*v5 + 16);
  v9 = *(*v5 + 24);
  if (v9 > v8 && (a5 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a5)
  {
    sub_2270D23D8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2270EF51C(&qword_27D7BA5E8, &qword_227678E70, sub_226EB396C);
      goto LABEL_12;
    }

    sub_2270FE87C(v8 + 1);
  }

  v10 = *v5;
  sub_22766D370();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86E8, &qword_227671548);
  sub_226F44E40();
  sub_227663B10();
  result = sub_22766D3F0();
  v11 = -1 << *(v10 + 32);
  a4 = result & ~v11;
  if ((*(v10 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v12 = ~v11;
    sub_22710571C();
    sub_226ED978C();
    do
    {
      result = sub_227663B20();
      if (result)
      {
        goto LABEL_15;
      }

      a4 = (a4 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_12:
  v13 = *v18;
  *(*v18 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v14 = *(v13 + 48) + 24 * a4;
  *v14 = v7;
  *(v14 + 8) = a2;
  *(v14 + 16) = a3 & 1;
  v15 = *(v13 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v13 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E7F00(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270D2684(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2270EEC6C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2270FEB08(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x22AA99670](*(*v3 + 40), v4, 4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 4 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E8024(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227665030();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270D28AC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D512F0], &qword_27D7BA9B8, &qword_2276790E0);
      goto LABEL_12;
    }

    sub_2270FECFC(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_28139B880, MEMORY[0x277D512F0], MEMORY[0x277D512F8]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BA9B0, MEMORY[0x277D512F0], MEMORY[0x277D51300]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E82EC(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227668EF0();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270D2C08(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D53920], &qword_27D7BA9C8, &qword_2276790F0);
      goto LABEL_12;
    }

    sub_2270FF018(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_28139B2A0, MEMORY[0x277D53920], MEMORY[0x277D53928]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_28139B298, MEMORY[0x277D53920], MEMORY[0x277D53930]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E85B4(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270D2F64(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2270EEDAC();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2270FF334(v5 + 1);
  }

  v8 = *v3;
  sub_22766D370();
  MEMORY[0x22AA996B0](v4);
  result = sub_22766D3F0();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

void sub_2270E8700(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a4)
  {
    sub_2270D31B4(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      sub_2270EEEEC();
      goto LABEL_12;
    }

    sub_2270FF554(v9 + 1);
  }

  v11 = *v4;
  sub_22766D370();
  sub_2276673B0();
  v12 = sub_22766D3F0();
  v13 = -1 << *(v11 + 32);
  a3 = v12 & ~v13;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v14 = ~v13;
    do
    {

      v15 = sub_2276673A0();

      if (v15)
      {
        goto LABEL_15;
      }

      a3 = (a3 + 1) & v14;
    }

    while (((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_12:
  v16 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_15:
  sub_22766D210();
  __break(1u);
}

uint64_t sub_2270E8894(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227667440();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270D3414(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D52D18], &qword_27D7BA668, &qword_227678EA8);
      goto LABEL_12;
    }

    sub_2270FF78C(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_2813A5610, MEMORY[0x277D52D18], MEMORY[0x277D52D20]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BA660, MEMORY[0x277D52D18], MEMORY[0x277D52D28]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E8B5C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227667C80();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270D3770(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D53250], &qword_27D7BA960, &qword_2276790B0);
      goto LABEL_12;
    }

    sub_2270FFAA8(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_27D7B8908, MEMORY[0x277D53250], MEMORY[0x277D53258]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BA958, MEMORY[0x277D53250], MEMORY[0x277D53260]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E8E24(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227665CA0();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270D3ACC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D51CF0], &qword_27D7BA728, &qword_227678F08);
      goto LABEL_12;
    }

    sub_2270FFDC4(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_2813A56D8, MEMORY[0x277D51CF0], MEMORY[0x277D51CF8]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BA720, MEMORY[0x277D51CF0], MEMORY[0x277D51D00]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E90EC(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227667CD0();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270D3E28(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D53288], &qword_27D7BA718, &qword_227678F00);
      goto LABEL_12;
    }

    sub_2271000E0(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_27D7B8728, MEMORY[0x277D53288], MEMORY[0x277D53290]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BA710, MEMORY[0x277D53288], MEMORY[0x277D53298]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E93B4(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227668260();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270D4184(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D53428], &qword_27D7BA978, &qword_2276790C0);
      goto LABEL_12;
    }

    sub_2271003FC(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_27D7B8918, MEMORY[0x277D53428], MEMORY[0x277D53430]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BA970, MEMORY[0x277D53428], MEMORY[0x277D53438]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E967C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_2276627D0();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270D44E0(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277CC95F0], &qword_27D7B8A58, &qword_2276716E0);
      goto LABEL_12;
    }

    sub_227100718(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_28139BDA0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7B8750, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E9944(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227666F20();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270D483C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D52A80], &qword_27D7BA758, &qword_227678F20);
      goto LABEL_12;
    }

    sub_227100A34(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&unk_2813A5640, MEMORY[0x277D52A80], MEMORY[0x277D52A88]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BA750, MEMORY[0x277D52A80], MEMORY[0x277D52A90]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E9C0C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227667170();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270D4B98(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D52C10], &qword_27D7BA748, &qword_227678F18);
      goto LABEL_12;
    }

    sub_227100D50(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_2813A5628, MEMORY[0x277D52C10], MEMORY[0x277D52C18]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BA740, MEMORY[0x277D52C10], MEMORY[0x277D52C20]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270E9ED4(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_2276675F0();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270D4EF4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D52EC0], &qword_27D7BA6E8, &qword_227678EF0);
      goto LABEL_12;
    }

    sub_22710106C(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&unk_2813A55F0, MEMORY[0x277D52EC0], MEMORY[0x277D52EC8]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BA6E0, MEMORY[0x277D52EC0], MEMORY[0x277D52ED0]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270EA19C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227668240();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270D5250(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D533E0], &qword_27D7BA9D8, &qword_2276790F8);
      goto LABEL_12;
    }

    sub_227101388(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_27D7B8950, MEMORY[0x277D533E0], MEMORY[0x277D533E8]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BA9D0, MEMORY[0x277D533E0], MEMORY[0x277D533F0]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270EA464(uint64_t result, uint64_t a2, unsigned int a3, unint64_t a4, char a5)
{
  v7 = result;
  v8 = *(*v5 + 16);
  v9 = *(*v5 + 24);
  if (v9 > v8 && (a5 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a5)
  {
    sub_2270D5ED4(v8 + 1, &qword_27D7BAA00, &qword_227679118, MEMORY[0x277D49510]);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2270EF05C(&qword_27D7BAA00, &qword_227679118, sub_226F491FC);
      goto LABEL_12;
    }

    sub_227101F1C(v8 + 1, &qword_27D7BAA00, &qword_227679118, sub_226F491FC, MEMORY[0x277D49510]);
  }

  v10 = *v5;
  sub_22766D370();
  sub_227662FC0();
  result = sub_22766D3F0();
  v11 = -1 << *(v10 + 32);
  a4 = result & ~v11;
  if ((*(v10 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v12 = ~v11;
    do
    {
      v13 = *(v10 + 48) + 24 * a4;
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);
      sub_226EE2880(*v13, v15, *(v13 + 16));
      v17 = MEMORY[0x22AA8F2D0](v14, v15, v16, v7, a2, a3);
      result = sub_226EE2898(v14, v15, v16);
      if (v17)
      {
        goto LABEL_15;
      }

      a4 = (a4 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_12:
  v18 = *v23;
  *(*v23 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v19 = *(v18 + 48) + 24 * a4;
  *v19 = v7;
  *(v19 + 8) = a2;
  *(v19 + 16) = a3;
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v18 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270EA6A4(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270D9508(v7 + 1, &qword_27D7BA9E8, &qword_227679108, MEMORY[0x277D49438]);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_2270EF67C(&qword_27D7BA9E8, &qword_227679108);
      goto LABEL_12;
    }

    sub_227105180(v7 + 1, &qword_27D7BA9E8, &qword_227679108, MEMORY[0x277D49438]);
  }

  v9 = *v3;
  sub_22766D370();
  v10 = sub_227662A50();
  MEMORY[0x22AA996B0](v10);
  result = sub_22766D3F0();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = sub_227662A50();
      result = sub_227662A50();
      if (v13 == result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + a2) = v6;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270EA868(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227662BD0();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270D55AC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D494A8], &qword_27D7BA9F8, &qword_227679110);
      goto LABEL_12;
    }

    sub_2271016A4(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_27D7B8968, MEMORY[0x277D494A8], MEMORY[0x277D494B0]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BA9F0, MEMORY[0x277D494A8], MEMORY[0x277D494B8]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270EAB30(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_2270D5908(v7 + 1, &qword_27D7BAA08, &qword_227679120, MEMORY[0x277D494C0]);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_2270EF67C(&qword_27D7BAA08, &qword_227679120);
      goto LABEL_16;
    }

    sub_2271019C0(v7 + 1, &qword_27D7BAA08, &qword_227679120, MEMORY[0x277D494C0]);
  }

  v9 = *v3;
  sub_22766D370();
  sub_227662C00();
  sub_22766C100();

  result = sub_22766D3F0();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = sub_227662C00();
      v14 = v13;
      if (v12 == sub_227662C00() && v14 == v15)
      {
        goto LABEL_19;
      }

      v17 = sub_22766D190();

      if (v17)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v18 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v6;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270EAD60(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227669360();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270D5B78(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D53BA0], &qword_27D7BA768, &qword_22767E100);
      goto LABEL_12;
    }

    sub_227101C00(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_2813A5500, MEMORY[0x277D53BA0], MEMORY[0x277D53BA8]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BA760, MEMORY[0x277D53BA0], MEMORY[0x277D53BB0]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270EB028(uint64_t result, uint64_t a2, unsigned int a3, unint64_t a4, char a5)
{
  v7 = result;
  v8 = *(*v5 + 16);
  v9 = *(*v5 + 24);
  if (v9 > v8 && (a5 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a5)
  {
    sub_2270D5ED4(v8 + 1, &qword_27D7BAAA0, &qword_227679180, MEMORY[0x277D52278]);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2270EF05C(&qword_27D7BAAA0, &qword_227679180, sub_226F48C1C);
      goto LABEL_12;
    }

    sub_227101F1C(v8 + 1, &qword_27D7BAAA0, &qword_227679180, sub_226F48C1C, MEMORY[0x277D52278]);
  }

  v10 = *v5;
  sub_22766D370();
  sub_2276662F0();
  result = sub_22766D3F0();
  v11 = -1 << *(v10 + 32);
  a4 = result & ~v11;
  if ((*(v10 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v12 = ~v11;
    do
    {
      v13 = *(v10 + 48) + 24 * a4;
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);
      sub_226F48C1C(*v13, v15, *(v13 + 16));
      v17 = MEMORY[0x22AA92600](v14, v15, v16, v7, a2, a3);
      result = sub_226F48C34(v14, v15, v16);
      if (v17)
      {
        goto LABEL_15;
      }

      a4 = (a4 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_12:
  v18 = *v23;
  *(*v23 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v19 = *(v18 + 48) + 24 * a4;
  *v19 = v7;
  *(v19 + 8) = a2;
  *(v19 + 16) = a3;
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v18 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270EB268(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227669480();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270D6150(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D53C88], &qword_27D7B8B18, &qword_227671788);
      goto LABEL_12;
    }

    sub_227102180(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&unk_2813A54E0, MEMORY[0x277D53C88], MEMORY[0x277D53C90]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7B8B20, MEMORY[0x277D53C88], MEMORY[0x277D53C98]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270EB530(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227666710();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270D64AC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D52578], &qword_27D7BA6F8, &qword_227678EF8);
      goto LABEL_12;
    }

    sub_22710249C(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_2813A5690, MEMORY[0x277D52578], MEMORY[0x277D52580]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BA6F0, MEMORY[0x277D52578], MEMORY[0x277D52588]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270EB7F8(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_2276658B0();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270D6808(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D519E0], &qword_27D7BAA60, &qword_227679150);
      goto LABEL_12;
    }

    sub_2271027B8(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_27D7B8988, MEMORY[0x277D519E0], MEMORY[0x277D519E8]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BAA58, MEMORY[0x277D519E0], MEMORY[0x277D519F0]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270EBAC0(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227665A20();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270D6B64(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D51AF0], &qword_27D7BA790, &qword_227678F38);
      goto LABEL_12;
    }

    sub_227102AD4(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&unk_28139B780, MEMORY[0x277D51AF0], MEMORY[0x277D51AF8]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BA788, MEMORY[0x277D51AF0], MEMORY[0x277D51B00]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270EBD88(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_2276630F0();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270D6EC0(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D4FC48], &qword_27D7BA688, &qword_227678EB8);
      goto LABEL_12;
    }

    sub_227102FFC(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_27D7B8708, MEMORY[0x277D4FC48], MEMORY[0x277D4FC50]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BA680, MEMORY[0x277D4FC48], MEMORY[0x277D4FC58]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270EC050(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227667DE0();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270D721C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D53330], &qword_27D7BA6D8, &qword_227678EE8);
      goto LABEL_12;
    }

    sub_227103318(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_27D7B8720, MEMORY[0x277D53330], MEMORY[0x277D53338]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BA6D0, MEMORY[0x277D53330], MEMORY[0x277D53340]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270EC318(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227666600();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270D7578(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D52448], &qword_27D7BA6C8, &qword_227678EE0);
      goto LABEL_12;
    }

    sub_227103634(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_27D7B8718, MEMORY[0x277D52448], MEMORY[0x277D52450]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BA6C0, MEMORY[0x277D52448], MEMORY[0x277D52458]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270EC5E0(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227665750();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270D78D4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D518F8], &qword_27D7BA658, &qword_227678EA0);
      goto LABEL_12;
    }

    sub_227103950(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_27D7BA648, MEMORY[0x277D518F8], MEMORY[0x277D51900]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BA650, MEMORY[0x277D518F8], MEMORY[0x277D51908]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270EC8A8(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227668830();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270D7C30(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D535E8], &qword_27D7BA608, &qword_227678E80);
      goto LABEL_12;
    }

    sub_227103C6C(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_27D7B86F0, MEMORY[0x277D535E8], MEMORY[0x277D535F0]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BA600, MEMORY[0x277D535E8], MEMORY[0x277D535F8]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270ECB70(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227668630();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270D7F8C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D53508], &qword_27D7BA618, &qword_227678E88);
      goto LABEL_12;
    }

    sub_227103F88(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_27D7B86F8, MEMORY[0x277D53508], MEMORY[0x277D53510]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BA610, MEMORY[0x277D53508], MEMORY[0x277D53518]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270ECE38(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_2276682A0();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270D82E8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D53450], &qword_27D7BA5F8, &qword_227678E78);
      goto LABEL_12;
    }

    sub_2271042A4(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_2813A5590, MEMORY[0x277D53450], MEMORY[0x277D53458]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BA5F0, MEMORY[0x277D53450], MEMORY[0x277D53460]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270ED100(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227664B30();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270D8644(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D50D88], &qword_27D7BAAE8, &qword_2276791B0);
      goto LABEL_12;
    }

    sub_2271045C0(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_27D7B89D0, MEMORY[0x277D50D88], MEMORY[0x277D50D90]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BAAE0, MEMORY[0x277D50D88], MEMORY[0x277D50D98]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270ED3C8(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227664B70();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270D89A0(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D50DB8], &qword_27D7BA7F0, &qword_227678F70);
      goto LABEL_12;
    }

    sub_2271048DC(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_27D7BA7E0, MEMORY[0x277D50DB8], MEMORY[0x277D50DC0]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BA7E8, MEMORY[0x277D50DB8], MEMORY[0x277D50DC8]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270ED690(uint64_t a1, unint64_t a2, char a3)
{
  v29 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - v8;
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v26 = v7;
  v27 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270D8CFC(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_2270EF1BC(&qword_27D7B88C0, &unk_22767A720, &qword_27D7B8AB8, &unk_227671740);
      goto LABEL_12;
    }

    sub_227104BF8(v10 + 1);
  }

  v12 = *v3;
  sub_22766D370();
  sub_226EB99C8(&qword_27D7B88D0, MEMORY[0x277D52730], MEMORY[0x277D52738]);
  sub_227663B10();
  v13 = sub_22766D3F0();
  v14 = v12 + 56;
  v28 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v25 = v6;
    v16 = ~v15;
    v17 = *(v7 + 72);
    do
    {
      sub_226E93170(*(v28 + 48) + v17 * a2, v9, &qword_27D7B88C0, &unk_22767A720);
      sub_227666900();
      v18 = MEMORY[0x277D52730];
      sub_226EB99C8(&qword_27D7B88D8, MEMORY[0x277D52730], MEMORY[0x277D52740]);
      sub_226EB99C8(&qword_27D7B88E0, v18, MEMORY[0x277D52748]);
      v19 = sub_227663B20();
      sub_226E97D1C(v9, &qword_27D7B88C0, &unk_22767A720);
      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v27;
  *(*v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_226E95D18(v29, *(v20 + 48) + *(v26 + 72) * a2, &qword_27D7B88C0, &unk_22767A720);
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v20 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270ED9B8(uint64_t result, uint64_t a2, char a3, unint64_t a4, char a5)
{
  v8 = result;
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  if (v10 > v9 && (a5 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a5)
  {
    sub_2270D9290(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_2270EF51C(&qword_27D7BAA98, &qword_227679178, sub_226F48BA8);
      goto LABEL_12;
    }

    sub_227104F28(v9 + 1);
  }

  v11 = *v5;
  sub_22766D370();
  sub_2276666E0();
  result = sub_22766D3F0();
  v12 = -1 << *(v11 + 32);
  a4 = result & ~v12;
  if ((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v13 = ~v12;
    do
    {
      v14 = *(v11 + 48) + 24 * a4;
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = *(v14 + 16);
      sub_226F48BA8(*v14, v16, v17);
      v18 = sub_2276666D0();
      result = sub_226F48BB8(v15, v16, v17);
      if (v18)
      {
        goto LABEL_15;
      }

      a4 = (a4 + 1) & v13;
    }

    while (((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_12:
  v19 = *v24;
  *(*v24 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v20 = *(v19 + 48) + 24 * a4;
  *v20 = v8;
  *(v20 + 8) = a2;
  *(v20 + 16) = a3 & 1;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v19 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270EDBA8(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270D9508(v7 + 1, &qword_27D7BA770, &qword_227678F28, MEMORY[0x277D531A0]);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_2270EF67C(&qword_27D7BA770, &qword_227678F28);
      goto LABEL_12;
    }

    sub_227105180(v7 + 1, &qword_27D7BA770, &qword_227678F28, MEMORY[0x277D531A0]);
  }

  v9 = *v3;
  sub_22766D370();
  v10 = sub_227667BC0();
  MEMORY[0x22AA996B0](v10);
  result = sub_22766D3F0();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = sub_227667BC0();
      result = sub_227667BC0();
      if (v13 == result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + a2) = v6;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_2270EDD6C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_2276662D0();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270D9760(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D52258], &qword_27D7BAB08, &qword_2276791C0);
      goto LABEL_12;
    }

    sub_2271053A8(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_28139B6A8, MEMORY[0x277D52258], MEMORY[0x277D52260]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BAB00, MEMORY[0x277D52258], MEMORY[0x277D52268]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

void sub_2270EE034(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22766CDB0();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = 16 * (v16 | (v10 << 6));
        v20 = (*(v4 + 48) + v19);
        v21 = v20[1];
        v22 = (*(v6 + 48) + v19);
        *v22 = *v20;
        v22[1] = v21;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void *sub_2270EE1A8(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = v4;
  v9 = a1(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v29 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v13 = *v4;
  v14 = sub_22766CDB0();
  v15 = v14;
  if (*(v13 + 16))
  {
    v30 = v8;
    result = (v14 + 56);
    v17 = ((1 << *(v15 + 32)) + 63) >> 6;
    if (v15 != v13 || result >= v13 + 56 + 8 * v17)
    {
      result = memmove(result, (v13 + 56), 8 * v17);
    }

    v19 = 0;
    *(v15 + 16) = *(v13 + 16);
    v20 = 1 << *(v13 + 32);
    v21 = *(v13 + 56);
    v22 = -1;
    if (v20 < 64)
    {
      v22 = ~(-1 << v20);
    }

    v23 = v22 & v21;
    v24 = (v20 + 63) >> 6;
    if ((v22 & v21) != 0)
    {
      do
      {
        v25 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
LABEL_17:
        v28 = *(v10 + 72) * (v25 | (v19 << 6));
        sub_226F48E08(*(v13 + 48) + v28, v12, a4);
        result = sub_2271059DC(v12, *(v15 + 48) + v28, a4);
      }

      while (v23);
    }

    v26 = v19;
    while (1)
    {
      v19 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v19 >= v24)
      {

        v8 = v30;
        goto LABEL_21;
      }

      v27 = *(v13 + 56 + 8 * v19);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v23 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v8 = v15;
  }

  return result;
}

void sub_2270EE3B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8BD0, &unk_22767DF20);
  v2 = *v0;
  v3 = sub_22766CDB0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void *sub_2270EE5AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA868, &qword_227678FD8);
  v2 = *v0;
  v3 = sub_22766CDB0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2270EE6EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C08, &qword_227671818);
  v2 = *v0;
  v3 = sub_22766CDB0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 8) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 16 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *v18;
      LOBYTE(v18) = *(v18 + 8);
      v20 = *(v4 + 48) + v17;
      *v20 = v19;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_2270EE87C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA808, &qword_227678F88);
  v2 = *v0;
  v3 = sub_22766CDB0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void *sub_2270EE9CC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22766CDB0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + 8 * v16) = *(*(v4 + 48) + 8 * v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void sub_2270EEAFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAAB8, &qword_227679190);
  v2 = *v0;
  v3 = sub_22766CDB0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 40 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v18 + 32);
        v24 = *(v4 + 48) + v17;
        *v24 = *v18;
        *(v24 + 8) = v20;
        *(v24 + 16) = v21;
        *(v24 + 24) = v22;
        *(v24 + 32) = v23;
        sub_2271059CC(v19, v20, v21, v22, v23);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void *sub_2270EEC6C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA9C0, &qword_2276790E8);
  v2 = *v0;
  v3 = sub_22766CDB0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2270EEDAC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA830, &qword_227678FB0);
  v2 = *v0;
  v3 = sub_22766CDB0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_2270EEEEC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA968, &qword_2276790B8);
  v2 = *v0;
  v3 = sub_22766CDB0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void *sub_2270EF05C(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v6 = *v3;
  v7 = sub_22766CDB0();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = 24 * (v18 | (v12 << 6));
        v22 = *(v6 + 48) + v21;
        v23 = *(v22 + 8);
        v24 = *(v8 + 48) + v21;
        v25 = *(v22 + 16);
        *v24 = *v22;
        *(v24 + 8) = v23;
        *(v24 + 16) = v25;
        result = a3();
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v8;
  }

  return result;
}

void *sub_2270EF1BC(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v30 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v13 = *v4;
  v14 = sub_22766CDB0();
  v15 = v14;
  if (*(v13 + 16))
  {
    v29 = v9;
    result = (v14 + 56);
    v17 = ((1 << *(v15 + 32)) + 63) >> 6;
    if (v15 != v13 || result >= v13 + 56 + 8 * v17)
    {
      result = memmove(result, (v13 + 56), 8 * v17);
    }

    v19 = 0;
    *(v15 + 16) = *(v13 + 16);
    v20 = 1 << *(v13 + 32);
    v21 = *(v13 + 56);
    v22 = -1;
    if (v20 < 64)
    {
      v22 = ~(-1 << v20);
    }

    v23 = v22 & v21;
    v24 = (v20 + 63) >> 6;
    if ((v22 & v21) != 0)
    {
      do
      {
        v25 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
LABEL_17:
        v28 = *(v30 + 72) * (v25 | (v19 << 6));
        sub_226E93170(*(v13 + 48) + v28, v12, a1, a2);
        result = sub_226E95D18(v12, *(v15 + 48) + v28, a1, a2);
      }

      while (v23);
    }

    v26 = v19;
    while (1)
    {
      v19 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v19 >= v24)
      {

        v9 = v29;
        goto LABEL_21;
      }

      v27 = *(v13 + 56 + 8 * v19);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v23 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v9 = v15;
  }

  return result;
}

id sub_2270EF3DC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22766CDB0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_2270EF51C(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v6 = *v3;
  v7 = sub_22766CDB0();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = 24 * (v18 | (v12 << 6));
        v22 = *(v6 + 48) + v21;
        v23 = *(v22 + 8);
        v24 = *(v22 + 16);
        v25 = *(v8 + 48) + v21;
        *v25 = *v22;
        *(v25 + 8) = v23;
        *(v25 + 16) = v24;
        result = a3();
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v8;
  }

  return result;
}