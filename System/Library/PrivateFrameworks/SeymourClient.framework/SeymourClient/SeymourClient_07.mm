uint64_t sub_1B4E83DA8(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1B4F66AF4();
  v7 = *(v6 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B4E7F1FC(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1B4E86E38(MEMORY[0x1E69CCA00], &qword_1EB8F5790, &qword_1B4F73F48);
      goto LABEL_12;
    }

    sub_1B4E88FE4(v12 + 1);
  }

  v14 = *v3;
  sub_1B4E952A0(&qword_1EB8F4DA0, MEMORY[0x1E69CCA00], MEMORY[0x1E69CCA10]);
  v15 = sub_1B4F67F14();
  v16 = v14 + 56;
  v32 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v11, *(v32 + 48) + v22 * a2, v6);
      sub_1B4E952A0(&qword_1EB8F5788, MEMORY[0x1E69CCA00], MEMORY[0x1E69CCA18]);
      v23 = sub_1B4F67F54();
      (*(v20 - 8))(v11, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6, v9);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E84070(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1B4F65E04();
  v7 = *(v6 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B4E7FC10(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1B4E86E38(MEMORY[0x1E69CB850], &qword_1EB8F57F0, &qword_1B4F73F68);
      goto LABEL_12;
    }

    sub_1B4E89938(v12 + 1);
  }

  v14 = *v3;
  sub_1B4E952A0(&qword_1EB8F4190, MEMORY[0x1E69CB850], MEMORY[0x1E69CB860]);
  v15 = sub_1B4F67F14();
  v16 = v14 + 56;
  v32 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v11, *(v32 + 48) + v22 * a2, v6);
      sub_1B4E952A0(&qword_1EB8F57E8, MEMORY[0x1E69CB850], MEMORY[0x1E69CB868]);
      v23 = sub_1B4F67F54();
      (*(v20 - 8))(v11, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6, v9);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E84338(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1B4F66674();
  v7 = *(v6 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B4E7F558(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1B4E86E38(MEMORY[0x1E69CC5E8], &qword_1EB8F5758, &unk_1B4F79F60);
      goto LABEL_12;
    }

    sub_1B4E89300(v12 + 1);
  }

  v14 = *v3;
  sub_1B4E952A0(&qword_1EDB70088, MEMORY[0x1E69CC5E8], MEMORY[0x1E69CC5F8]);
  v15 = sub_1B4F67F14();
  v16 = v14 + 56;
  v32 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v11, *(v32 + 48) + v22 * a2, v6);
      sub_1B4E952A0(&qword_1EB8F5750, MEMORY[0x1E69CC5E8], MEMORY[0x1E69CC600]);
      v23 = sub_1B4F67F54();
      (*(v20 - 8))(v11, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6, v9);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E84600(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1B4F67A94();
  v7 = *(v6 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B4E7FF6C(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1B4E86E38(MEMORY[0x1E69CD370], &qword_1EB8F56E0, &qword_1B4F73EF8);
      goto LABEL_12;
    }

    sub_1B4E89C54(v12 + 1);
  }

  v14 = *v3;
  sub_1B4E952A0(&qword_1EB8F4180, MEMORY[0x1E69CD370], MEMORY[0x1E69CD380]);
  v15 = sub_1B4F67F14();
  v16 = v14 + 56;
  v32 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v11, *(v32 + 48) + v22 * a2, v6);
      sub_1B4E952A0(&qword_1EB8F56D8, MEMORY[0x1E69CD370], MEMORY[0x1E69CD388]);
      v23 = sub_1B4F67F54();
      (*(v20 - 8))(v11, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6, v9);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E848C8(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1B4F67124();
  v7 = *(v6 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B4E802C8(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1B4E86E38(MEMORY[0x1E69CCE28], &qword_1EB8F56F0, &qword_1B4F73F00);
      goto LABEL_12;
    }

    sub_1B4E89F70(v12 + 1);
  }

  v14 = *v3;
  sub_1B4E952A0(&qword_1EDB70038, MEMORY[0x1E69CCE28], MEMORY[0x1E69CCE38]);
  v15 = sub_1B4F67F14();
  v16 = v14 + 56;
  v32 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v11, *(v32 + 48) + v22 * a2, v6);
      sub_1B4E952A0(&qword_1EB8F56E8, MEMORY[0x1E69CCE28], MEMORY[0x1E69CCE40]);
      v23 = sub_1B4F67F54();
      (*(v20 - 8))(v11, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6, v9);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E84B90(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1B4F679C4();
  v7 = *(v6 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B4E80624(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1B4E86E38(MEMORY[0x1E69CD2D8], &qword_1EB8F5700, &qword_1B4F73F08);
      goto LABEL_12;
    }

    sub_1B4E8A28C(v12 + 1);
  }

  v14 = *v3;
  sub_1B4E952A0(&qword_1EDB70020, MEMORY[0x1E69CD2D8], MEMORY[0x1E69CD2E8]);
  v15 = sub_1B4F67F14();
  v16 = v14 + 56;
  v32 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v11, *(v32 + 48) + v22 * a2, v6);
      sub_1B4E952A0(&qword_1EB8F56F8, MEMORY[0x1E69CD2D8], MEMORY[0x1E69CD2F0]);
      v23 = sub_1B4F67F54();
      (*(v20 - 8))(v11, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6, v9);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E84E58(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1B4F67244();
  v7 = *(v6 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B4E80980(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1B4E86E38(MEMORY[0x1E69CCF40], &qword_1EB8F5740, &qword_1B4F73F30);
      goto LABEL_12;
    }

    sub_1B4E8A5A8(v12 + 1);
  }

  v14 = *v3;
  sub_1B4E952A0(&qword_1EB8F4178, MEMORY[0x1E69CCF40], MEMORY[0x1E69CCF48]);
  v15 = sub_1B4F67F14();
  v16 = v14 + 56;
  v32 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v11, *(v32 + 48) + v22 * a2, v6);
      sub_1B4E952A0(&qword_1EB8F5738, MEMORY[0x1E69CCF40], MEMORY[0x1E69CCF50]);
      v23 = sub_1B4F67F54();
      (*(v20 - 8))(v11, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6, v9);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E85120(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1B4F67154();
  v7 = *(v6 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B4E7F8B4(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1B4E86E38(MEMORY[0x1E69CCEC8], &qword_1EB8F5730, &qword_1B4F73F28);
      goto LABEL_12;
    }

    sub_1B4E8961C(v12 + 1);
  }

  v14 = *v3;
  sub_1B4E952A0(&qword_1EDB70030, MEMORY[0x1E69CCEC8], MEMORY[0x1E69CCED8]);
  v15 = sub_1B4F67F14();
  v16 = v14 + 56;
  v32 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v11, *(v32 + 48) + v22 * a2, v6);
      sub_1B4E952A0(&qword_1EB8F5728, MEMORY[0x1E69CCEC8], MEMORY[0x1E69CCEE0]);
      v23 = sub_1B4F67F54();
      (*(v20 - 8))(v11, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6, v9);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E853E8(uint64_t result, unint64_t a2, char a3)
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
    sub_1B4E80CDC(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1B4E86650();
      goto LABEL_16;
    }

    sub_1B4E8A8C4(v7 + 1);
  }

  v9 = *v3;
  sub_1B4F68E84();
  sub_1B4F64D54();
  sub_1B4F67FE4();

  result = sub_1B4F68EC4();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = sub_1B4F64D54();
      v14 = v13;
      if (v12 == sub_1B4F64D54() && v14 == v15)
      {
        goto LABEL_19;
      }

      v17 = sub_1B4F68D54();

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
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E855C0(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1B4F66E34();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*v4 + 16);
  v15 = *(*v4 + 24);
  if (v15 > v14 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v27 = v11;
    sub_1B4E80F48(v14 + 1);
  }

  else
  {
    if (v15 > v14)
    {
      sub_1B4E86790();
      goto LABEL_12;
    }

    v27 = v11;
    sub_1B4E8AB00(v14 + 1);
  }

  v16 = *v4;
  sub_1B4F68E84();
  sub_1B4F66E24();
  v17 = sub_1B4F68EC4();
  v18 = -1 << *(v16 + 32);
  a2 = v17 & ~v18;
  if ((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v20 = *(v9 + 72);
    do
    {
      sub_1B4E95150(*(v16 + 48) + v20 * a2, v13, MEMORY[0x1E69CCB48]);
      v21 = MEMORY[0x1B8C806C0](v13, a1);
      sub_1B4E951B8(v13, MEMORY[0x1E69CCB48]);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1B4E95218(a1, *(v22 + 48) + *(v9 + 72) * a2, MEMORY[0x1E69CCB48]);
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
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E85804(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1B4F64F74();
  v7 = *(v6 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B4E81250(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1B4E86E38(MEMORY[0x1E69CB178], &qword_1EB8F56D0, &qword_1B4F73EF0);
      goto LABEL_12;
    }

    sub_1B4E8ADD8(v12 + 1);
  }

  v14 = *v3;
  sub_1B4E952A0(&qword_1EB8F4170, MEMORY[0x1E69CB178], MEMORY[0x1E69CB180]);
  v15 = sub_1B4F67F14();
  v16 = v14 + 56;
  v32 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v11, *(v32 + 48) + v22 * a2, v6);
      sub_1B4E952A0(&qword_1EB8F56C8, MEMORY[0x1E69CB178], MEMORY[0x1E69CB188]);
      v23 = sub_1B4F67F54();
      (*(v20 - 8))(v11, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6, v9);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E85ACC(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1B4F67184();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*v4 + 16);
  v15 = *(*v4 + 24);
  if (v15 > v14 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v27 = v11;
    sub_1B4E815AC(v14 + 1);
  }

  else
  {
    if (v15 > v14)
    {
      sub_1B4E8699C();
      goto LABEL_12;
    }

    v27 = v11;
    sub_1B4E8B0F4(v14 + 1);
  }

  v16 = *v4;
  sub_1B4F68E84();
  sub_1B4F67174();
  v17 = sub_1B4F68EC4();
  v18 = -1 << *(v16 + 32);
  a2 = v17 & ~v18;
  if ((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v20 = *(v9 + 72);
    do
    {
      sub_1B4E95150(*(v16 + 48) + v20 * a2, v13, MEMORY[0x1E69CCEF0]);
      v21 = MEMORY[0x1B8C80A10](v13, a1);
      sub_1B4E951B8(v13, MEMORY[0x1E69CCEF0]);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1B4E95218(a1, *(v22 + 48) + *(v9 + 72) * a2, MEMORY[0x1E69CCEF0]);
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
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E85D10(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1B4F67004();
  v7 = *(v6 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B4E818B4(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1B4E86E38(MEMORY[0x1E69CCCE0], &qword_1EB8F56C0, &qword_1B4F73EE8);
      goto LABEL_12;
    }

    sub_1B4E8B3CC(v12 + 1);
  }

  v14 = *v3;
  sub_1B4E952A0(&qword_1EB8F4168, MEMORY[0x1E69CCCE0], MEMORY[0x1E69CCCE8]);
  v15 = sub_1B4F67F14();
  v16 = v14 + 56;
  v32 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v11, *(v32 + 48) + v22 * a2, v6);
      sub_1B4E952A0(&qword_1EB8F56B8, MEMORY[0x1E69CCCE0], MEMORY[0x1E69CCCF0]);
      v23 = sub_1B4F67F54();
      (*(v20 - 8))(v11, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6, v9);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E85FD8(uint64_t result, unint64_t a2, char a3)
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
    sub_1B4E81C10(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1B4E86BA8();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1B4E8B6E8(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x1B8C82710](*(*v3 + 40), v4, 4);
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
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E860FC(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1B4F66894();
  v7 = *(v6 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B4E82088(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1B4E86E38(MEMORY[0x1E69CC710], &qword_1EB8F5698, &qword_1B4F73EC8);
      goto LABEL_12;
    }

    sub_1B4E8BB04(v12 + 1);
  }

  v14 = *v3;
  sub_1B4E952A0(&qword_1EB8F5688, MEMORY[0x1E69CC710], MEMORY[0x1E69CC718]);
  v15 = sub_1B4F67F14();
  v16 = v14 + 56;
  v32 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v11, *(v32 + 48) + v22 * a2, v6);
      sub_1B4E952A0(&qword_1EB8F5690, MEMORY[0x1E69CC710], MEMORY[0x1E69CC720]);
      v23 = sub_1B4F67F54();
      (*(v20 - 8))(v11, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6, v9);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

void *sub_1B4E863C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4738, &qword_1B4F6D110);
  v2 = *v0;
  v3 = sub_1B4F68964();
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

  return result;
}

void *sub_1B4E86520(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1B4F68964();
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
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
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

void *sub_1B4E86650()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5710, &qword_1B4F73F18);
  v2 = *v0;
  v3 = sub_1B4F68964();
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

void *sub_1B4E86790()
{
  v1 = v0;
  v2 = sub_1B4F66E34();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4628, &qword_1B4F6D008);
  v7 = *v0;
  v8 = sub_1B4F68964();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_1B4E95150(*(v7 + 48) + v22, v6, MEMORY[0x1E69CCB48]);
        result = sub_1B4E95218(v6, *(v9 + 48) + v22, MEMORY[0x1E69CCB48]);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

void *sub_1B4E8699C()
{
  v1 = v0;
  v2 = sub_1B4F67184();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4608, &qword_1B4F6CFE0);
  v7 = *v0;
  v8 = sub_1B4F68964();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_1B4E95150(*(v7 + 48) + v22, v6, MEMORY[0x1E69CCEF0]);
        result = sub_1B4E95218(v6, *(v9 + 48) + v22, MEMORY[0x1E69CCEF0]);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

void *sub_1B4E86BA8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F56A8, &qword_1B4F73ED8);
  v2 = *v0;
  v3 = sub_1B4F68964();
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

void *sub_1B4E86CE8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F56A0, &qword_1B4F73ED0);
  v2 = *v0;
  v3 = sub_1B4F68964();
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

  return result;
}

void *sub_1B4E86E38(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = *v3;
  v13 = sub_1B4F68964();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v6;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v8 + 32;
    for (i = v8 + 16; v21; result = (*(v8 + 32))(*(v14 + 48) + v26, v11, v7))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v8 + 72) * (v23 | (v18 << 6));
      (*(v8 + 16))(v11, *(v12 + 48) + v26, v7);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v14;
  }

  return result;
}

uint64_t sub_1B4E87070(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46B0, &qword_1B4F6D088);
  result = sub_1B4F68974();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_1B4F68E84();
      sub_1B4F652E4();
      sub_1B4F67FE4();

      result = sub_1B4F68EC4();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1B4E872AC(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1B4F64E14();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5720, &qword_1B4F73F20);
  v8 = sub_1B4F68974();
  result = v7;
  if (*(v7 + 16))
  {
    v29 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v16 = v8 + 56;
    v30 = (v3 + 32);
    v31 = result;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v33 + 72);
      (*(v33 + 16))(v6, *(result + 48) + v21 * (v18 | (v10 << 6)), v34);
      sub_1B4E952A0(&qword_1EB8F41B0, MEMORY[0x1E69CB098], MEMORY[0x1E69CB0A0]);
      result = sub_1B4F67F14();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v30)(*(v8 + 48) + v17 * v21, v6, v34);
      ++*(v8 + 16);
      result = v31;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_1B4E875C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4738, &qword_1B4F6D110);
  result = sub_1B4F68974();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1B4F68E84();

      sub_1B4F67FE4();
      result = sub_1B4F68EC4();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1B4E87800(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1B4F66484();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5808, &qword_1B4F73F80);
  v8 = sub_1B4F68974();
  result = v7;
  if (*(v7 + 16))
  {
    v29 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v16 = v8 + 56;
    v30 = (v3 + 32);
    v31 = result;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v33 + 72);
      (*(v33 + 16))(v6, *(result + 48) + v21 * (v18 | (v10 << 6)), v34);
      sub_1B4E952A0(&qword_1EB8F41A8, MEMORY[0x1E69CC278], MEMORY[0x1E69CC280]);
      result = sub_1B4F67F14();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v30)(*(v8 + 48) + v17 * v21, v6, v34);
      ++*(v8 + 16);
      result = v31;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_1B4E87B1C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46E8, &qword_1B4F6D0C0);
  result = sub_1B4F68974();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_1B4F68E84();
      MEMORY[0x1B8C82740](v16);
      result = sub_1B4F68EC4();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1B4E87D3C(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1B4F670C4();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F57A0, &qword_1B4F73F50);
  v8 = sub_1B4F68974();
  result = v7;
  if (*(v7 + 16))
  {
    v29 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v16 = v8 + 56;
    v30 = (v3 + 32);
    v31 = result;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v33 + 72);
      (*(v33 + 16))(v6, *(result + 48) + v21 * (v18 | (v10 << 6)), v34);
      sub_1B4E952A0(&qword_1EB8F41A0, MEMORY[0x1E69CCDC8], MEMORY[0x1E69CCDD8]);
      result = sub_1B4F67F14();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v30)(*(v8 + 48) + v17 * v21, v6, v34);
      ++*(v8 + 16);
      result = v31;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_1B4E88058(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1B4F660C4();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5780, &unk_1B4F79F50);
  v8 = sub_1B4F68974();
  result = v7;
  if (*(v7 + 16))
  {
    v29 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v16 = v8 + 56;
    v30 = (v3 + 32);
    v31 = result;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v33 + 72);
      (*(v33 + 16))(v6, *(result + 48) + v21 * (v18 | (v10 << 6)), v34);
      sub_1B4E952A0(&qword_1EB8F4198, MEMORY[0x1E69CBE40], MEMORY[0x1E69CBE50]);
      result = sub_1B4F67F14();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v30)(*(v8 + 48) + v17 * v21, v6, v34);
      ++*(v8 + 16);
      result = v31;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_1B4E88374(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1B4F65DE4();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5768, &unk_1B4F79F40);
  v8 = sub_1B4F68974();
  result = v7;
  if (*(v7 + 16))
  {
    v29 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v16 = v8 + 56;
    v30 = (v3 + 32);
    v31 = result;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v33 + 72);
      (*(v33 + 16))(v6, *(result + 48) + v21 * (v18 | (v10 << 6)), v34);
      sub_1B4E952A0(&qword_1EB8F4188, MEMORY[0x1E69CB800], MEMORY[0x1E69CB810]);
      result = sub_1B4F67F14();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v30)(*(v8 + 48) + v17 * v21, v6, v34);
      ++*(v8 + 16);
      result = v31;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_1B4E88690(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1B4F66BA4();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F57E0, &qword_1B4F73F60);
  v8 = sub_1B4F68974();
  result = v7;
  if (*(v7 + 16))
  {
    v29 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v16 = v8 + 56;
    v30 = (v3 + 32);
    v31 = result;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v33 + 72);
      (*(v33 + 16))(v6, *(result + 48) + v21 * (v18 | (v10 << 6)), v34);
      sub_1B4E952A0(&qword_1EB8F4DC0, MEMORY[0x1E69CCAC8], MEMORY[0x1E69CCAD8]);
      result = sub_1B4F67F14();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v30)(*(v8 + 48) + v17 * v21, v6, v34);
      ++*(v8 + 16);
      result = v31;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_1B4E889AC(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1B4F66A54();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F57C8, &unk_1B4F79F30);
  v8 = sub_1B4F68974();
  result = v7;
  if (*(v7 + 16))
  {
    v29 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v16 = v8 + 56;
    v30 = (v3 + 32);
    v31 = result;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v33 + 72);
      (*(v33 + 16))(v6, *(result + 48) + v21 * (v18 | (v10 << 6)), v34);
      sub_1B4E952A0(&qword_1EB8F4DF0, MEMORY[0x1E69CC938], MEMORY[0x1E69CC948]);
      result = sub_1B4F67F14();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v30)(*(v8 + 48) + v17 * v21, v6, v34);
      ++*(v8 + 16);
      result = v31;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_1B4E88CC8(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1B4F669F4();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F57B0, &qword_1B4F73F58);
  v8 = sub_1B4F68974();
  result = v7;
  if (*(v7 + 16))
  {
    v29 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v16 = v8 + 56;
    v30 = (v3 + 32);
    v31 = result;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v33 + 72);
      (*(v33 + 16))(v6, *(result + 48) + v21 * (v18 | (v10 << 6)), v34);
      sub_1B4E952A0(&qword_1EB8F4DF8, MEMORY[0x1E69CC830], MEMORY[0x1E69CC840]);
      result = sub_1B4F67F14();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v30)(*(v8 + 48) + v17 * v21, v6, v34);
      ++*(v8 + 16);
      result = v31;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_1B4E88FE4(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1B4F66AF4();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5790, &qword_1B4F73F48);
  v8 = sub_1B4F68974();
  result = v7;
  if (*(v7 + 16))
  {
    v29 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v16 = v8 + 56;
    v30 = (v3 + 32);
    v31 = result;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v33 + 72);
      (*(v33 + 16))(v6, *(result + 48) + v21 * (v18 | (v10 << 6)), v34);
      sub_1B4E952A0(&qword_1EB8F4DA0, MEMORY[0x1E69CCA00], MEMORY[0x1E69CCA10]);
      result = sub_1B4F67F14();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v30)(*(v8 + 48) + v17 * v21, v6, v34);
      ++*(v8 + 16);
      result = v31;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_1B4E89300(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1B4F66674();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5758, &unk_1B4F79F60);
  v8 = sub_1B4F68974();
  result = v7;
  if (*(v7 + 16))
  {
    v29 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v16 = v8 + 56;
    v30 = (v3 + 32);
    v31 = result;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v33 + 72);
      (*(v33 + 16))(v6, *(result + 48) + v21 * (v18 | (v10 << 6)), v34);
      sub_1B4E952A0(&qword_1EDB70088, MEMORY[0x1E69CC5E8], MEMORY[0x1E69CC5F8]);
      result = sub_1B4F67F14();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v30)(*(v8 + 48) + v17 * v21, v6, v34);
      ++*(v8 + 16);
      result = v31;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_1B4E8961C(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1B4F67154();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5730, &qword_1B4F73F28);
  v8 = sub_1B4F68974();
  result = v7;
  if (*(v7 + 16))
  {
    v29 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v16 = v8 + 56;
    v30 = (v3 + 32);
    v31 = result;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v33 + 72);
      (*(v33 + 16))(v6, *(result + 48) + v21 * (v18 | (v10 << 6)), v34);
      sub_1B4E952A0(&qword_1EDB70030, MEMORY[0x1E69CCEC8], MEMORY[0x1E69CCED8]);
      result = sub_1B4F67F14();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v30)(*(v8 + 48) + v17 * v21, v6, v34);
      ++*(v8 + 16);
      result = v31;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_1B4E89938(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1B4F65E04();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F57F0, &qword_1B4F73F68);
  v8 = sub_1B4F68974();
  result = v7;
  if (*(v7 + 16))
  {
    v29 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v16 = v8 + 56;
    v30 = (v3 + 32);
    v31 = result;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v33 + 72);
      (*(v33 + 16))(v6, *(result + 48) + v21 * (v18 | (v10 << 6)), v34);
      sub_1B4E952A0(&qword_1EB8F4190, MEMORY[0x1E69CB850], MEMORY[0x1E69CB860]);
      result = sub_1B4F67F14();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v30)(*(v8 + 48) + v17 * v21, v6, v34);
      ++*(v8 + 16);
      result = v31;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_1B4E89C54(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1B4F67A94();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F56E0, &qword_1B4F73EF8);
  v8 = sub_1B4F68974();
  result = v7;
  if (*(v7 + 16))
  {
    v29 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v16 = v8 + 56;
    v30 = (v3 + 32);
    v31 = result;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v33 + 72);
      (*(v33 + 16))(v6, *(result + 48) + v21 * (v18 | (v10 << 6)), v34);
      sub_1B4E952A0(&qword_1EB8F4180, MEMORY[0x1E69CD370], MEMORY[0x1E69CD380]);
      result = sub_1B4F67F14();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v30)(*(v8 + 48) + v17 * v21, v6, v34);
      ++*(v8 + 16);
      result = v31;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_1B4E89F70(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1B4F67124();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F56F0, &qword_1B4F73F00);
  v8 = sub_1B4F68974();
  result = v7;
  if (*(v7 + 16))
  {
    v29 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v16 = v8 + 56;
    v30 = (v3 + 32);
    v31 = result;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v33 + 72);
      (*(v33 + 16))(v6, *(result + 48) + v21 * (v18 | (v10 << 6)), v34);
      sub_1B4E952A0(&qword_1EDB70038, MEMORY[0x1E69CCE28], MEMORY[0x1E69CCE38]);
      result = sub_1B4F67F14();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v30)(*(v8 + 48) + v17 * v21, v6, v34);
      ++*(v8 + 16);
      result = v31;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_1B4E8A28C(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1B4F679C4();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5700, &qword_1B4F73F08);
  v8 = sub_1B4F68974();
  result = v7;
  if (*(v7 + 16))
  {
    v29 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v16 = v8 + 56;
    v30 = (v3 + 32);
    v31 = result;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v33 + 72);
      (*(v33 + 16))(v6, *(result + 48) + v21 * (v18 | (v10 << 6)), v34);
      sub_1B4E952A0(&qword_1EDB70020, MEMORY[0x1E69CD2D8], MEMORY[0x1E69CD2E8]);
      result = sub_1B4F67F14();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v30)(*(v8 + 48) + v17 * v21, v6, v34);
      ++*(v8 + 16);
      result = v31;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_1B4E8A5A8(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1B4F67244();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5740, &qword_1B4F73F30);
  v8 = sub_1B4F68974();
  result = v7;
  if (*(v7 + 16))
  {
    v29 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v16 = v8 + 56;
    v30 = (v3 + 32);
    v31 = result;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v33 + 72);
      (*(v33 + 16))(v6, *(result + 48) + v21 * (v18 | (v10 << 6)), v34);
      sub_1B4E952A0(&qword_1EB8F4178, MEMORY[0x1E69CCF40], MEMORY[0x1E69CCF48]);
      result = sub_1B4F67F14();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v30)(*(v8 + 48) + v17 * v21, v6, v34);
      ++*(v8 + 16);
      result = v31;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_1B4E8A8C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5710, &qword_1B4F73F18);
  result = sub_1B4F68974();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_1B4F68E84();
      sub_1B4F64D54();
      sub_1B4F67FE4();

      result = sub_1B4F68EC4();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1B4E8AB00(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1B4F66E34();
  v30 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4628, &qword_1B4F6D008);
  result = sub_1B4F68974();
  v9 = result;
  if (*(v7 + 16))
  {
    v29 = v1;
    v10 = 0;
    v11 = 1 << *(v7 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v7 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v30 + 72);
      sub_1B4E95150(*(v7 + 48) + v20 * (v17 | (v10 << 6)), v6, MEMORY[0x1E69CCB48]);
      sub_1B4F68E84();
      sub_1B4F66E24();
      result = sub_1B4F68EC4();
      v21 = -1 << *(v9 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_1B4E95218(v6, *(v9 + 48) + v16 * v20, MEMORY[0x1E69CCB48]);
      ++*(v9 + 16);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v7 + 56 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v9;
  }

  return result;
}

uint64_t sub_1B4E8ADD8(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1B4F64F74();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F56D0, &qword_1B4F73EF0);
  v8 = sub_1B4F68974();
  result = v7;
  if (*(v7 + 16))
  {
    v29 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v16 = v8 + 56;
    v30 = (v3 + 32);
    v31 = result;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v33 + 72);
      (*(v33 + 16))(v6, *(result + 48) + v21 * (v18 | (v10 << 6)), v34);
      sub_1B4E952A0(&qword_1EB8F4170, MEMORY[0x1E69CB178], MEMORY[0x1E69CB180]);
      result = sub_1B4F67F14();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v30)(*(v8 + 48) + v17 * v21, v6, v34);
      ++*(v8 + 16);
      result = v31;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_1B4E8B0F4(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1B4F67184();
  v30 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4608, &qword_1B4F6CFE0);
  result = sub_1B4F68974();
  v9 = result;
  if (*(v7 + 16))
  {
    v29 = v1;
    v10 = 0;
    v11 = 1 << *(v7 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v7 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v30 + 72);
      sub_1B4E95150(*(v7 + 48) + v20 * (v17 | (v10 << 6)), v6, MEMORY[0x1E69CCEF0]);
      sub_1B4F68E84();
      sub_1B4F67174();
      result = sub_1B4F68EC4();
      v21 = -1 << *(v9 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_1B4E95218(v6, *(v9 + 48) + v16 * v20, MEMORY[0x1E69CCEF0]);
      ++*(v9 + 16);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v7 + 56 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v9;
  }

  return result;
}

uint64_t sub_1B4E8B3CC(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1B4F67004();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F56C0, &qword_1B4F73EE8);
  v8 = sub_1B4F68974();
  result = v7;
  if (*(v7 + 16))
  {
    v29 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v16 = v8 + 56;
    v30 = (v3 + 32);
    v31 = result;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v33 + 72);
      (*(v33 + 16))(v6, *(result + 48) + v21 * (v18 | (v10 << 6)), v34);
      sub_1B4E952A0(&qword_1EB8F4168, MEMORY[0x1E69CCCE0], MEMORY[0x1E69CCCE8]);
      result = sub_1B4F67F14();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v30)(*(v8 + 48) + v17 * v21, v6, v34);
      ++*(v8 + 16);
      result = v31;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_1B4E8B6E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F56A8, &qword_1B4F73ED8);
  result = sub_1B4F68974();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 4 * (v13 | (v6 << 6)));
      result = MEMORY[0x1B8C82710](*(v5 + 40), v16, 4);
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 4 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_1B4E8B8DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F56A0, &qword_1B4F73ED0);
  result = sub_1B4F68974();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_1B4F68E84();

      sub_1B4F68774();
      result = sub_1B4F68EC4();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1B4E8BB04(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1B4F66894();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5698, &qword_1B4F73EC8);
  v8 = sub_1B4F68974();
  result = v7;
  if (*(v7 + 16))
  {
    v29 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v16 = v8 + 56;
    v30 = (v3 + 32);
    v31 = result;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v33 + 72);
      (*(v33 + 16))(v6, *(result + 48) + v21 * (v18 | (v10 << 6)), v34);
      sub_1B4E952A0(&qword_1EB8F5688, MEMORY[0x1E69CC710], MEMORY[0x1E69CC718]);
      result = sub_1B4F67F14();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v30)(*(v8 + 48) + v17 * v21, v6, v34);
      ++*(v8 + 16);
      result = v31;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_1B4E8BE20(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B4F688C4() + 1) & ~v5;
    do
    {
      sub_1B4F68E84();

      sub_1B4F67FE4();
      v9 = sub_1B4F68EC4();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1B4E8BFD0(int64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66484();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v42 = a2;
    v12 = ~v10;
    v13 = sub_1B4F688C4();
    v14 = v12;
    a2 = v42;
    v41 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v39 = v9;
    v40 = v16;
    v17 = *(v15 + 56);
    v38 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v40(v8, *(a2 + 48) + v17 * v11, v4);
      sub_1B4E952A0(&qword_1EB8F41A8, MEMORY[0x1E69CC278], MEMORY[0x1E69CC280]);
      v22 = sub_1B4F67F14();
      (*v38)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v41)
      {
        if (v23 >= v41 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v42 + 48) + v18 * a1 >= (*(v42 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v42;
          v26 = *(v42 + 56);
          v27 = *(*(sub_1B4F666C4() - 8) + 72);
          v28 = v27 * a1;
          v29 = v26 + v27 * a1;
          v30 = v27 * v11;
          v31 = v26 + v27 * v11 + v27;
          if (v28 < v30 || v29 >= v31)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v39;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v33 = v28 == v30;
            v9 = v39;
            v14 = v20;
            if (!v33)
            {
              swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v41 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v39;
      a2 = v42;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }
}

uint64_t sub_1B4E8C314(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B4F688C4() + 1) & ~v5;
    do
    {
      sub_1B4F68E84();

      sub_1B4F67FE4();
      v11 = sub_1B4F68EC4();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1B4E8C4D0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B4F688C4() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 2 * v6);
      sub_1B4F68E84();
      MEMORY[0x1B8C82740](qword_1B4F73F88[v9]);
      result = sub_1B4F68EC4();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 2 * v3);
        v13 = (v11 + 2 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1B4E8C66C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B4F688C4() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      sub_1B4F68E84();
      MEMORY[0x1B8C82740](qword_1B4F74B10[v9]);
      result = sub_1B4F68EC4();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_1B4E8C808(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5, uint64_t (*a6)(void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      v10 = a7;
      v11 = a6;
      v12 = a5;
      v13 = a4;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
      a4 = v13;
      a5 = v12;
      a6 = v11;
      a7 = v10;
    }

    sub_1B4E8FC10(result, a2, a3, a4, a5, a6, a7);
    v15 = v14;

    return v15;
  }

  return result;
}

unint64_t *sub_1B4E8C8B0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1B4E94874(v9, a2, a3, a4, a5);
    v11 = v10;
    swift_bridgeObjectRelease_n();

    return v11;
  }

  return result;
}

void *sub_1B4E8C954(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a7)(uint64_t), uint64_t (*a8)(void *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v15 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1B4E945E4(v15, a2, a3, a4, a5, a6, a7, a8);
    v17 = v16;
    swift_bridgeObjectRelease_n();

    return v17;
  }

  return result;
}

void sub_1B4E8CA20(uint64_t a1)
{
  v82 = sub_1B4F670C4();
  v4 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82, v5);
  v83 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5590, &qword_1B4F73E10);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v64 - v11;
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v13, v14);
  v18 = &v64 - v17;
  v19 = *(a1 + 16);
  v20 = *v1;
  v21 = *(*v1 + 2);
  v22 = v21 + v19;
  if (__OFADD__(v21, v19))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v81 = v15;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v80 = v12;
  if (!isUniquelyReferenced_nonNull_native || (v24 = *(v20 + 3) >> 1, v24 < v22))
  {
    if (v21 <= v22)
    {
      v25 = v21 + v19;
    }

    else
    {
      v25 = v21;
    }

    v20 = sub_1B4E78BC8(isUniquelyReferenced_nonNull_native, v25, 1, v20, &qword_1EB8F5620, &qword_1B4F73E80, MEMORY[0x1E69CCDC8]);
    v24 = *(v20 + 3) >> 1;
  }

  v26 = *(v20 + 2);
  v22 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v21 = *(v4 + 72);
  v27 = v24 - v26;
  sub_1B4E93A84(&v84, &v20[v22 + v21 * v26], v24 - v26, a1, MEMORY[0x1E69CCDC8]);
  if (v28 < v19)
  {
    goto LABEL_16;
  }

  if (v28)
  {
    v31 = *(v20 + 2);
    v32 = __OFADD__(v31, v28);
    v33 = v31 + v28;
    if (v32)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v20 + 2) = v33;
  }

  if (v28 != v27)
  {
    sub_1B4E632A0(v84);
LABEL_14:
    *v1 = v20;
    return;
  }

LABEL_17:
  v79 = *(v20 + 2);
  v30 = v85;
  v70 = v84;
  v33 = v87;
  v29 = &v89;
  v65 = v86;
  v34 = v88;
  v68 = v85;
  if (v88)
  {
    v35 = v87;
LABEL_27:
    v77 = (v34 - 1) & v34;
    v39 = v82;
    (*(v2 + 16))(v18, *(v70 + 48) + (__clz(__rbit64(v34)) | (v35 << 6)) * v21, v82, v16);
    v72 = *(v2 + 56);
    v72(v18, 0, 1, v39);
    v38 = v35;
    while (1)
    {
      v40 = v80;
      sub_1B4E21A90(v18, v80, &qword_1EB8F5590, &qword_1B4F73E10);
      v41 = *(v2 + 48);
      v2 += 48;
      v76 = v41;
      if (v41(v40, 1, v39) == 1)
      {
        break;
      }

      v43 = (v4 + 32);
      v67 = (v65 + 64) >> 6;
      v71 = v4 + 56;
      v69 = (v4 + 16);
      v66 = (v4 + 8);
      v42 = v80;
      v78 = v43;
      while (1)
      {
        sub_1B4DD2BC4(v42, &qword_1EB8F5590, &qword_1B4F73E10);
        v44 = *(v20 + 3);
        v45 = v44 >> 1;
        if ((v44 >> 1) < v79 + 1)
        {
          v20 = sub_1B4E78BC8((v44 > 1), v79 + 1, 1, v20, &qword_1EB8F5620, &qword_1B4F73E80, MEMORY[0x1E69CCDC8]);
          v45 = *(v20 + 3) >> 1;
        }

        v46 = v81;
        sub_1B4E21A90(v18, v81, &qword_1EB8F5590, &qword_1B4F73E10);
        if (v76(v46, 1, v82) != 1)
        {
          break;
        }

        v47 = v38;
        v48 = v81;
        v4 = v79;
LABEL_38:
        v38 = v47;
        sub_1B4DD2BC4(v48, &qword_1EB8F5590, &qword_1B4F73E10);
        v79 = v4;
LABEL_33:
        *(v20 + 2) = v4;
        v42 = v80;
        sub_1B4E21A90(v18, v80, &qword_1EB8F5590, &qword_1B4F73E10);
        if (v76(v42, 1, v82) == 1)
        {
          goto LABEL_30;
        }
      }

      v74 = &v20[v22];
      v4 = v79;
      v49 = *v78;
      if (v79 <= v45)
      {
        v50 = v45;
      }

      else
      {
        v50 = v79;
      }

      v75 = v50;
      v48 = v81;
      v51 = v82;
      v52 = v83;
      v73 = v49;
      while (1)
      {
        v56 = v52;
        v57 = v48;
        v58 = v51;
        v59 = v49;
        v49(v56, v57, v51);
        if (v4 == v75)
        {
          (*v66)(v83, v58);
          v4 = v75;
          v79 = v75;
          goto LABEL_33;
        }

        sub_1B4DD2BC4(v18, &qword_1EB8F5590, &qword_1B4F73E10);
        v79 = v4;
        v59(&v74[v4 * v21], v83, v58);
        v60 = v77;
        if (!v77)
        {
          break;
        }

        v61 = v38;
LABEL_55:
        v77 = (v60 - 1) & v60;
        v54 = v82;
        (*v69)(v18, *(v70 + 48) + (__clz(__rbit64(v60)) | (v61 << 6)) * v21, v82);
        v53 = 0;
        v63 = v61;
LABEL_44:
        v4 = v79 + 1;
        v72(v18, v53, 1, v54);
        v48 = v81;
        sub_1B4E21A90(v18, v81, &qword_1EB8F5590, &qword_1B4F73E10);
        v55 = v76(v48, 1, v54);
        v51 = v54;
        v38 = v63;
        v47 = v63;
        v52 = v83;
        v49 = v73;
        if (v55 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v67 <= v38 + 1)
      {
        v62 = v38 + 1;
      }

      else
      {
        v62 = v67;
      }

      v63 = v62 - 1;
      while (1)
      {
        v61 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if (v61 >= v67)
        {
          v77 = 0;
          v53 = 1;
          v54 = v82;
          goto LABEL_44;
        }

        v60 = *(v68 + 8 * v61);
        ++v38;
        if (v60)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v39 = v82;
      v72 = *(v2 + 56);
      v72(v18, 1, 1, v82);
      v77 = 0;
    }

    v42 = v80;
LABEL_30:
    sub_1B4DD2BC4(v18, &qword_1EB8F5590, &qword_1B4F73E10);
    sub_1B4E632A0(v70);
    sub_1B4DD2BC4(v42, &qword_1EB8F5590, &qword_1B4F73E10);
    goto LABEL_14;
  }

LABEL_20:
  v36 = (*(v29 - 32) + 64) >> 6;
  if (v36 <= v33 + 1)
  {
    v37 = v33 + 1;
  }

  else
  {
    v37 = v36;
  }

  v38 = v37 - 1;
  while (1)
  {
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v35 >= v36)
    {
      goto LABEL_57;
    }

    v34 = *(v30 + 8 * v35);
    ++v33;
    if (v34)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
}

uint64_t sub_1B4E8D19C(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v20 = v8 + v6;
  }

  else
  {
    v20 = v8;
  }

  v7 = sub_1B4E78BC8(isUniquelyReferenced_nonNull_native, v20, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v16 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  if (v16 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v17 = v7[2];
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    v7[2] = v19;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_1B4E8D2F8(uint64_t a1)
{
  v82 = sub_1B4F660C4();
  v4 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82, v5);
  v83 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F55A0, &qword_1B4F73E20);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v64 - v11;
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v13, v14);
  v18 = &v64 - v17;
  v19 = *(a1 + 16);
  v20 = *v1;
  v21 = *(*v1 + 2);
  v22 = v21 + v19;
  if (__OFADD__(v21, v19))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v81 = v15;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v80 = v12;
  if (!isUniquelyReferenced_nonNull_native || (v24 = *(v20 + 3) >> 1, v24 < v22))
  {
    if (v21 <= v22)
    {
      v25 = v21 + v19;
    }

    else
    {
      v25 = v21;
    }

    v20 = sub_1B4E78BC8(isUniquelyReferenced_nonNull_native, v25, 1, v20, &qword_1EB8F5628, &qword_1B4F73E88, MEMORY[0x1E69CBE40]);
    v24 = *(v20 + 3) >> 1;
  }

  v26 = *(v20 + 2);
  v22 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v21 = *(v4 + 72);
  v27 = v24 - v26;
  sub_1B4E93A84(&v84, &v20[v22 + v21 * v26], v24 - v26, a1, MEMORY[0x1E69CBE40]);
  if (v28 < v19)
  {
    goto LABEL_16;
  }

  if (v28)
  {
    v31 = *(v20 + 2);
    v32 = __OFADD__(v31, v28);
    v33 = v31 + v28;
    if (v32)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v20 + 2) = v33;
  }

  if (v28 != v27)
  {
    sub_1B4E632A0(v84);
LABEL_14:
    *v1 = v20;
    return;
  }

LABEL_17:
  v79 = *(v20 + 2);
  v30 = v85;
  v70 = v84;
  v33 = v87;
  v29 = &v89;
  v65 = v86;
  v34 = v88;
  v68 = v85;
  if (v88)
  {
    v35 = v87;
LABEL_27:
    v77 = (v34 - 1) & v34;
    v39 = v82;
    (*(v2 + 16))(v18, *(v70 + 48) + (__clz(__rbit64(v34)) | (v35 << 6)) * v21, v82, v16);
    v72 = *(v2 + 56);
    v72(v18, 0, 1, v39);
    v38 = v35;
    while (1)
    {
      v40 = v80;
      sub_1B4E21A90(v18, v80, &qword_1EB8F55A0, &qword_1B4F73E20);
      v41 = *(v2 + 48);
      v2 += 48;
      v76 = v41;
      if (v41(v40, 1, v39) == 1)
      {
        break;
      }

      v43 = (v4 + 32);
      v67 = (v65 + 64) >> 6;
      v71 = v4 + 56;
      v69 = (v4 + 16);
      v66 = (v4 + 8);
      v42 = v80;
      v78 = v43;
      while (1)
      {
        sub_1B4DD2BC4(v42, &qword_1EB8F55A0, &qword_1B4F73E20);
        v44 = *(v20 + 3);
        v45 = v44 >> 1;
        if ((v44 >> 1) < v79 + 1)
        {
          v20 = sub_1B4E78BC8((v44 > 1), v79 + 1, 1, v20, &qword_1EB8F5628, &qword_1B4F73E88, MEMORY[0x1E69CBE40]);
          v45 = *(v20 + 3) >> 1;
        }

        v46 = v81;
        sub_1B4E21A90(v18, v81, &qword_1EB8F55A0, &qword_1B4F73E20);
        if (v76(v46, 1, v82) != 1)
        {
          break;
        }

        v47 = v38;
        v48 = v81;
        v4 = v79;
LABEL_38:
        v38 = v47;
        sub_1B4DD2BC4(v48, &qword_1EB8F55A0, &qword_1B4F73E20);
        v79 = v4;
LABEL_33:
        *(v20 + 2) = v4;
        v42 = v80;
        sub_1B4E21A90(v18, v80, &qword_1EB8F55A0, &qword_1B4F73E20);
        if (v76(v42, 1, v82) == 1)
        {
          goto LABEL_30;
        }
      }

      v74 = &v20[v22];
      v4 = v79;
      v49 = *v78;
      if (v79 <= v45)
      {
        v50 = v45;
      }

      else
      {
        v50 = v79;
      }

      v75 = v50;
      v48 = v81;
      v51 = v82;
      v52 = v83;
      v73 = v49;
      while (1)
      {
        v56 = v52;
        v57 = v48;
        v58 = v51;
        v59 = v49;
        v49(v56, v57, v51);
        if (v4 == v75)
        {
          (*v66)(v83, v58);
          v4 = v75;
          v79 = v75;
          goto LABEL_33;
        }

        sub_1B4DD2BC4(v18, &qword_1EB8F55A0, &qword_1B4F73E20);
        v79 = v4;
        v59(&v74[v4 * v21], v83, v58);
        v60 = v77;
        if (!v77)
        {
          break;
        }

        v61 = v38;
LABEL_55:
        v77 = (v60 - 1) & v60;
        v54 = v82;
        (*v69)(v18, *(v70 + 48) + (__clz(__rbit64(v60)) | (v61 << 6)) * v21, v82);
        v53 = 0;
        v63 = v61;
LABEL_44:
        v4 = v79 + 1;
        v72(v18, v53, 1, v54);
        v48 = v81;
        sub_1B4E21A90(v18, v81, &qword_1EB8F55A0, &qword_1B4F73E20);
        v55 = v76(v48, 1, v54);
        v51 = v54;
        v38 = v63;
        v47 = v63;
        v52 = v83;
        v49 = v73;
        if (v55 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v67 <= v38 + 1)
      {
        v62 = v38 + 1;
      }

      else
      {
        v62 = v67;
      }

      v63 = v62 - 1;
      while (1)
      {
        v61 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if (v61 >= v67)
        {
          v77 = 0;
          v53 = 1;
          v54 = v82;
          goto LABEL_44;
        }

        v60 = *(v68 + 8 * v61);
        ++v38;
        if (v60)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v39 = v82;
      v72 = *(v2 + 56);
      v72(v18, 1, 1, v82);
      v77 = 0;
    }

    v42 = v80;
LABEL_30:
    sub_1B4DD2BC4(v18, &qword_1EB8F55A0, &qword_1B4F73E20);
    sub_1B4E632A0(v70);
    sub_1B4DD2BC4(v42, &qword_1EB8F55A0, &qword_1B4F73E20);
    goto LABEL_14;
  }

LABEL_20:
  v36 = (*(v29 - 32) + 64) >> 6;
  if (v36 <= v33 + 1)
  {
    v37 = v33 + 1;
  }

  else
  {
    v37 = v36;
  }

  v38 = v37 - 1;
  while (1)
  {
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v35 >= v36)
    {
      goto LABEL_57;
    }

    v34 = *(v30 + 8 * v35);
    ++v33;
    if (v34)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
}

void sub_1B4E8DA74(uint64_t a1)
{
  v82 = sub_1B4F65DE4();
  v4 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82, v5);
  v83 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F55A8, &qword_1B4F73E28);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v64 - v11;
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v13, v14);
  v18 = &v64 - v17;
  v19 = *(a1 + 16);
  v20 = *v1;
  v21 = *(*v1 + 2);
  v22 = v21 + v19;
  if (__OFADD__(v21, v19))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v81 = v15;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v80 = v12;
  if (!isUniquelyReferenced_nonNull_native || (v24 = *(v20 + 3) >> 1, v24 < v22))
  {
    if (v21 <= v22)
    {
      v25 = v21 + v19;
    }

    else
    {
      v25 = v21;
    }

    v20 = sub_1B4E78BC8(isUniquelyReferenced_nonNull_native, v25, 1, v20, &qword_1EB8F5638, &qword_1B4F73E98, MEMORY[0x1E69CB800]);
    v24 = *(v20 + 3) >> 1;
  }

  v26 = *(v20 + 2);
  v22 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v21 = *(v4 + 72);
  v27 = v24 - v26;
  sub_1B4E93A84(&v84, &v20[v22 + v21 * v26], v24 - v26, a1, MEMORY[0x1E69CB800]);
  if (v28 < v19)
  {
    goto LABEL_16;
  }

  if (v28)
  {
    v31 = *(v20 + 2);
    v32 = __OFADD__(v31, v28);
    v33 = v31 + v28;
    if (v32)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v20 + 2) = v33;
  }

  if (v28 != v27)
  {
    sub_1B4E632A0(v84);
LABEL_14:
    *v1 = v20;
    return;
  }

LABEL_17:
  v79 = *(v20 + 2);
  v30 = v85;
  v70 = v84;
  v33 = v87;
  v29 = &v89;
  v65 = v86;
  v34 = v88;
  v68 = v85;
  if (v88)
  {
    v35 = v87;
LABEL_27:
    v77 = (v34 - 1) & v34;
    v39 = v82;
    (*(v2 + 16))(v18, *(v70 + 48) + (__clz(__rbit64(v34)) | (v35 << 6)) * v21, v82, v16);
    v72 = *(v2 + 56);
    v72(v18, 0, 1, v39);
    v38 = v35;
    while (1)
    {
      v40 = v80;
      sub_1B4E21A90(v18, v80, &qword_1EB8F55A8, &qword_1B4F73E28);
      v41 = *(v2 + 48);
      v2 += 48;
      v76 = v41;
      if (v41(v40, 1, v39) == 1)
      {
        break;
      }

      v43 = (v4 + 32);
      v67 = (v65 + 64) >> 6;
      v71 = v4 + 56;
      v69 = (v4 + 16);
      v66 = (v4 + 8);
      v42 = v80;
      v78 = v43;
      while (1)
      {
        sub_1B4DD2BC4(v42, &qword_1EB8F55A8, &qword_1B4F73E28);
        v44 = *(v20 + 3);
        v45 = v44 >> 1;
        if ((v44 >> 1) < v79 + 1)
        {
          v20 = sub_1B4E78BC8((v44 > 1), v79 + 1, 1, v20, &qword_1EB8F5638, &qword_1B4F73E98, MEMORY[0x1E69CB800]);
          v45 = *(v20 + 3) >> 1;
        }

        v46 = v81;
        sub_1B4E21A90(v18, v81, &qword_1EB8F55A8, &qword_1B4F73E28);
        if (v76(v46, 1, v82) != 1)
        {
          break;
        }

        v47 = v38;
        v48 = v81;
        v4 = v79;
LABEL_38:
        v38 = v47;
        sub_1B4DD2BC4(v48, &qword_1EB8F55A8, &qword_1B4F73E28);
        v79 = v4;
LABEL_33:
        *(v20 + 2) = v4;
        v42 = v80;
        sub_1B4E21A90(v18, v80, &qword_1EB8F55A8, &qword_1B4F73E28);
        if (v76(v42, 1, v82) == 1)
        {
          goto LABEL_30;
        }
      }

      v74 = &v20[v22];
      v4 = v79;
      v49 = *v78;
      if (v79 <= v45)
      {
        v50 = v45;
      }

      else
      {
        v50 = v79;
      }

      v75 = v50;
      v48 = v81;
      v51 = v82;
      v52 = v83;
      v73 = v49;
      while (1)
      {
        v56 = v52;
        v57 = v48;
        v58 = v51;
        v59 = v49;
        v49(v56, v57, v51);
        if (v4 == v75)
        {
          (*v66)(v83, v58);
          v4 = v75;
          v79 = v75;
          goto LABEL_33;
        }

        sub_1B4DD2BC4(v18, &qword_1EB8F55A8, &qword_1B4F73E28);
        v79 = v4;
        v59(&v74[v4 * v21], v83, v58);
        v60 = v77;
        if (!v77)
        {
          break;
        }

        v61 = v38;
LABEL_55:
        v77 = (v60 - 1) & v60;
        v54 = v82;
        (*v69)(v18, *(v70 + 48) + (__clz(__rbit64(v60)) | (v61 << 6)) * v21, v82);
        v53 = 0;
        v63 = v61;
LABEL_44:
        v4 = v79 + 1;
        v72(v18, v53, 1, v54);
        v48 = v81;
        sub_1B4E21A90(v18, v81, &qword_1EB8F55A8, &qword_1B4F73E28);
        v55 = v76(v48, 1, v54);
        v51 = v54;
        v38 = v63;
        v47 = v63;
        v52 = v83;
        v49 = v73;
        if (v55 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v67 <= v38 + 1)
      {
        v62 = v38 + 1;
      }

      else
      {
        v62 = v67;
      }

      v63 = v62 - 1;
      while (1)
      {
        v61 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if (v61 >= v67)
        {
          v77 = 0;
          v53 = 1;
          v54 = v82;
          goto LABEL_44;
        }

        v60 = *(v68 + 8 * v61);
        ++v38;
        if (v60)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v39 = v82;
      v72 = *(v2 + 56);
      v72(v18, 1, 1, v82);
      v77 = 0;
    }

    v42 = v80;
LABEL_30:
    sub_1B4DD2BC4(v18, &qword_1EB8F55A8, &qword_1B4F73E28);
    sub_1B4E632A0(v70);
    sub_1B4DD2BC4(v42, &qword_1EB8F55A8, &qword_1B4F73E28);
    goto LABEL_14;
  }

LABEL_20:
  v36 = (*(v29 - 32) + 64) >> 6;
  if (v36 <= v33 + 1)
  {
    v37 = v33 + 1;
  }

  else
  {
    v37 = v36;
  }

  v38 = v37 - 1;
  while (1)
  {
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v35 >= v36)
    {
      goto LABEL_57;
    }

    v34 = *(v30 + 8 * v35);
    ++v33;
    if (v34)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
}

void sub_1B4E8E1F0(uint64_t a1)
{
  v82 = sub_1B4F65E04();
  v4 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82, v5);
  v83 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F57F8, &qword_1B4F73F70);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v64 - v11;
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v13, v14);
  v18 = &v64 - v17;
  v19 = *(a1 + 16);
  v20 = *v1;
  v21 = *(*v1 + 2);
  v22 = v21 + v19;
  if (__OFADD__(v21, v19))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v81 = v15;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v80 = v12;
  if (!isUniquelyReferenced_nonNull_native || (v24 = *(v20 + 3) >> 1, v24 < v22))
  {
    if (v21 <= v22)
    {
      v25 = v21 + v19;
    }

    else
    {
      v25 = v21;
    }

    v20 = sub_1B4E78BC8(isUniquelyReferenced_nonNull_native, v25, 1, v20, &qword_1EB8F5630, &qword_1B4F73E90, MEMORY[0x1E69CB850]);
    v24 = *(v20 + 3) >> 1;
  }

  v26 = *(v20 + 2);
  v22 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v21 = *(v4 + 72);
  v27 = v24 - v26;
  sub_1B4E93A84(&v84, &v20[v22 + v21 * v26], v24 - v26, a1, MEMORY[0x1E69CB850]);
  if (v28 < v19)
  {
    goto LABEL_16;
  }

  if (v28)
  {
    v31 = *(v20 + 2);
    v32 = __OFADD__(v31, v28);
    v33 = v31 + v28;
    if (v32)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v20 + 2) = v33;
  }

  if (v28 != v27)
  {
    sub_1B4E632A0(v84);
LABEL_14:
    *v1 = v20;
    return;
  }

LABEL_17:
  v79 = *(v20 + 2);
  v30 = v85;
  v70 = v84;
  v33 = v87;
  v29 = &v89;
  v65 = v86;
  v34 = v88;
  v68 = v85;
  if (v88)
  {
    v35 = v87;
LABEL_27:
    v77 = (v34 - 1) & v34;
    v39 = v82;
    (*(v2 + 16))(v18, *(v70 + 48) + (__clz(__rbit64(v34)) | (v35 << 6)) * v21, v82, v16);
    v72 = *(v2 + 56);
    v72(v18, 0, 1, v39);
    v38 = v35;
    while (1)
    {
      v40 = v80;
      sub_1B4E21A90(v18, v80, &qword_1EB8F57F8, &qword_1B4F73F70);
      v41 = *(v2 + 48);
      v2 += 48;
      v76 = v41;
      if (v41(v40, 1, v39) == 1)
      {
        break;
      }

      v43 = (v4 + 32);
      v67 = (v65 + 64) >> 6;
      v71 = v4 + 56;
      v69 = (v4 + 16);
      v66 = (v4 + 8);
      v42 = v80;
      v78 = v43;
      while (1)
      {
        sub_1B4DD2BC4(v42, &qword_1EB8F57F8, &qword_1B4F73F70);
        v44 = *(v20 + 3);
        v45 = v44 >> 1;
        if ((v44 >> 1) < v79 + 1)
        {
          v20 = sub_1B4E78BC8((v44 > 1), v79 + 1, 1, v20, &qword_1EB8F5630, &qword_1B4F73E90, MEMORY[0x1E69CB850]);
          v45 = *(v20 + 3) >> 1;
        }

        v46 = v81;
        sub_1B4E21A90(v18, v81, &qword_1EB8F57F8, &qword_1B4F73F70);
        if (v76(v46, 1, v82) != 1)
        {
          break;
        }

        v47 = v38;
        v48 = v81;
        v4 = v79;
LABEL_38:
        v38 = v47;
        sub_1B4DD2BC4(v48, &qword_1EB8F57F8, &qword_1B4F73F70);
        v79 = v4;
LABEL_33:
        *(v20 + 2) = v4;
        v42 = v80;
        sub_1B4E21A90(v18, v80, &qword_1EB8F57F8, &qword_1B4F73F70);
        if (v76(v42, 1, v82) == 1)
        {
          goto LABEL_30;
        }
      }

      v74 = &v20[v22];
      v4 = v79;
      v49 = *v78;
      if (v79 <= v45)
      {
        v50 = v45;
      }

      else
      {
        v50 = v79;
      }

      v75 = v50;
      v48 = v81;
      v51 = v82;
      v52 = v83;
      v73 = v49;
      while (1)
      {
        v56 = v52;
        v57 = v48;
        v58 = v51;
        v59 = v49;
        v49(v56, v57, v51);
        if (v4 == v75)
        {
          (*v66)(v83, v58);
          v4 = v75;
          v79 = v75;
          goto LABEL_33;
        }

        sub_1B4DD2BC4(v18, &qword_1EB8F57F8, &qword_1B4F73F70);
        v79 = v4;
        v59(&v74[v4 * v21], v83, v58);
        v60 = v77;
        if (!v77)
        {
          break;
        }

        v61 = v38;
LABEL_55:
        v77 = (v60 - 1) & v60;
        v54 = v82;
        (*v69)(v18, *(v70 + 48) + (__clz(__rbit64(v60)) | (v61 << 6)) * v21, v82);
        v53 = 0;
        v63 = v61;
LABEL_44:
        v4 = v79 + 1;
        v72(v18, v53, 1, v54);
        v48 = v81;
        sub_1B4E21A90(v18, v81, &qword_1EB8F57F8, &qword_1B4F73F70);
        v55 = v76(v48, 1, v54);
        v51 = v54;
        v38 = v63;
        v47 = v63;
        v52 = v83;
        v49 = v73;
        if (v55 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v67 <= v38 + 1)
      {
        v62 = v38 + 1;
      }

      else
      {
        v62 = v67;
      }

      v63 = v62 - 1;
      while (1)
      {
        v61 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if (v61 >= v67)
        {
          v77 = 0;
          v53 = 1;
          v54 = v82;
          goto LABEL_44;
        }

        v60 = *(v68 + 8 * v61);
        ++v38;
        if (v60)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v39 = v82;
      v72 = *(v2 + 56);
      v72(v18, 1, 1, v82);
      v77 = 0;
    }

    v42 = v80;
LABEL_30:
    sub_1B4DD2BC4(v18, &qword_1EB8F57F8, &qword_1B4F73F70);
    sub_1B4E632A0(v70);
    sub_1B4DD2BC4(v42, &qword_1EB8F57F8, &qword_1B4F73F70);
    goto LABEL_14;
  }

LABEL_20:
  v36 = (*(v29 - 32) + 64) >> 6;
  if (v36 <= v33 + 1)
  {
    v37 = v33 + 1;
  }

  else
  {
    v37 = v36;
  }

  v38 = v37 - 1;
  while (1)
  {
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v35 >= v36)
    {
      goto LABEL_57;
    }

    v34 = *(v30 + 8 * v35);
    ++v33;
    if (v34)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
}

void sub_1B4E8E96C(uint64_t a1)
{
  v82 = sub_1B4F67A94();
  v4 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82, v5);
  v83 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F57D0, &unk_1B4F79EF0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v64 - v11;
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v13, v14);
  v18 = &v64 - v17;
  v19 = *(a1 + 16);
  v20 = *v1;
  v21 = *(*v1 + 2);
  v22 = v21 + v19;
  if (__OFADD__(v21, v19))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v81 = v15;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v80 = v12;
  if (!isUniquelyReferenced_nonNull_native || (v24 = *(v20 + 3) >> 1, v24 < v22))
  {
    if (v21 <= v22)
    {
      v25 = v21 + v19;
    }

    else
    {
      v25 = v21;
    }

    v20 = sub_1B4E78BC8(isUniquelyReferenced_nonNull_native, v25, 1, v20, &qword_1EB8F5648, &qword_1B4F73EA8, MEMORY[0x1E69CD370]);
    v24 = *(v20 + 3) >> 1;
  }

  v26 = *(v20 + 2);
  v22 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v21 = *(v4 + 72);
  v27 = v24 - v26;
  sub_1B4E93A84(&v84, &v20[v22 + v21 * v26], v24 - v26, a1, MEMORY[0x1E69CD370]);
  if (v28 < v19)
  {
    goto LABEL_16;
  }

  if (v28)
  {
    v31 = *(v20 + 2);
    v32 = __OFADD__(v31, v28);
    v33 = v31 + v28;
    if (v32)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v20 + 2) = v33;
  }

  if (v28 != v27)
  {
    sub_1B4E632A0(v84);
LABEL_14:
    *v1 = v20;
    return;
  }

LABEL_17:
  v79 = *(v20 + 2);
  v30 = v85;
  v70 = v84;
  v33 = v87;
  v29 = &v89;
  v65 = v86;
  v34 = v88;
  v68 = v85;
  if (v88)
  {
    v35 = v87;
LABEL_27:
    v77 = (v34 - 1) & v34;
    v39 = v82;
    (*(v2 + 16))(v18, *(v70 + 48) + (__clz(__rbit64(v34)) | (v35 << 6)) * v21, v82, v16);
    v72 = *(v2 + 56);
    v72(v18, 0, 1, v39);
    v38 = v35;
    while (1)
    {
      v40 = v80;
      sub_1B4E21A90(v18, v80, &qword_1EB8F57D0, &unk_1B4F79EF0);
      v41 = *(v2 + 48);
      v2 += 48;
      v76 = v41;
      if (v41(v40, 1, v39) == 1)
      {
        break;
      }

      v43 = (v4 + 32);
      v67 = (v65 + 64) >> 6;
      v71 = v4 + 56;
      v69 = (v4 + 16);
      v66 = (v4 + 8);
      v42 = v80;
      v78 = v43;
      while (1)
      {
        sub_1B4DD2BC4(v42, &qword_1EB8F57D0, &unk_1B4F79EF0);
        v44 = *(v20 + 3);
        v45 = v44 >> 1;
        if ((v44 >> 1) < v79 + 1)
        {
          v20 = sub_1B4E78BC8((v44 > 1), v79 + 1, 1, v20, &qword_1EB8F5648, &qword_1B4F73EA8, MEMORY[0x1E69CD370]);
          v45 = *(v20 + 3) >> 1;
        }

        v46 = v81;
        sub_1B4E21A90(v18, v81, &qword_1EB8F57D0, &unk_1B4F79EF0);
        if (v76(v46, 1, v82) != 1)
        {
          break;
        }

        v47 = v38;
        v48 = v81;
        v4 = v79;
LABEL_38:
        v38 = v47;
        sub_1B4DD2BC4(v48, &qword_1EB8F57D0, &unk_1B4F79EF0);
        v79 = v4;
LABEL_33:
        *(v20 + 2) = v4;
        v42 = v80;
        sub_1B4E21A90(v18, v80, &qword_1EB8F57D0, &unk_1B4F79EF0);
        if (v76(v42, 1, v82) == 1)
        {
          goto LABEL_30;
        }
      }

      v74 = &v20[v22];
      v4 = v79;
      v49 = *v78;
      if (v79 <= v45)
      {
        v50 = v45;
      }

      else
      {
        v50 = v79;
      }

      v75 = v50;
      v48 = v81;
      v51 = v82;
      v52 = v83;
      v73 = v49;
      while (1)
      {
        v56 = v52;
        v57 = v48;
        v58 = v51;
        v59 = v49;
        v49(v56, v57, v51);
        if (v4 == v75)
        {
          (*v66)(v83, v58);
          v4 = v75;
          v79 = v75;
          goto LABEL_33;
        }

        sub_1B4DD2BC4(v18, &qword_1EB8F57D0, &unk_1B4F79EF0);
        v79 = v4;
        v59(&v74[v4 * v21], v83, v58);
        v60 = v77;
        if (!v77)
        {
          break;
        }

        v61 = v38;
LABEL_55:
        v77 = (v60 - 1) & v60;
        v54 = v82;
        (*v69)(v18, *(v70 + 48) + (__clz(__rbit64(v60)) | (v61 << 6)) * v21, v82);
        v53 = 0;
        v63 = v61;
LABEL_44:
        v4 = v79 + 1;
        v72(v18, v53, 1, v54);
        v48 = v81;
        sub_1B4E21A90(v18, v81, &qword_1EB8F57D0, &unk_1B4F79EF0);
        v55 = v76(v48, 1, v54);
        v51 = v54;
        v38 = v63;
        v47 = v63;
        v52 = v83;
        v49 = v73;
        if (v55 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v67 <= v38 + 1)
      {
        v62 = v38 + 1;
      }

      else
      {
        v62 = v67;
      }

      v63 = v62 - 1;
      while (1)
      {
        v61 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if (v61 >= v67)
        {
          v77 = 0;
          v53 = 1;
          v54 = v82;
          goto LABEL_44;
        }

        v60 = *(v68 + 8 * v61);
        ++v38;
        if (v60)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v39 = v82;
      v72 = *(v2 + 56);
      v72(v18, 1, 1, v82);
      v77 = 0;
    }

    v42 = v80;
LABEL_30:
    sub_1B4DD2BC4(v18, &qword_1EB8F57D0, &unk_1B4F79EF0);
    sub_1B4E632A0(v70);
    sub_1B4DD2BC4(v42, &qword_1EB8F57D0, &unk_1B4F79EF0);
    goto LABEL_14;
  }

LABEL_20:
  v36 = (*(v29 - 32) + 64) >> 6;
  if (v36 <= v33 + 1)
  {
    v37 = v33 + 1;
  }

  else
  {
    v37 = v36;
  }

  v38 = v37 - 1;
  while (1)
  {
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v35 >= v36)
    {
      goto LABEL_57;
    }

    v34 = *(v30 + 8 * v35);
    ++v33;
    if (v34)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
}

void sub_1B4E8F0E8(uint64_t a1)
{
  v82 = sub_1B4F67244();
  v4 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82, v5);
  v83 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5748, &qword_1B4F73F38);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v64 - v11;
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v13, v14);
  v18 = &v64 - v17;
  v19 = *(a1 + 16);
  v20 = *v1;
  v21 = *(*v1 + 2);
  v22 = v21 + v19;
  if (__OFADD__(v21, v19))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v81 = v15;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v80 = v12;
  if (!isUniquelyReferenced_nonNull_native || (v24 = *(v20 + 3) >> 1, v24 < v22))
  {
    if (v21 <= v22)
    {
      v25 = v21 + v19;
    }

    else
    {
      v25 = v21;
    }

    v20 = sub_1B4E78BC8(isUniquelyReferenced_nonNull_native, v25, 1, v20, &qword_1EB8F5680, &qword_1B4F73EC0, MEMORY[0x1E69CCF40]);
    v24 = *(v20 + 3) >> 1;
  }

  v26 = *(v20 + 2);
  v22 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v21 = *(v4 + 72);
  v27 = v24 - v26;
  sub_1B4E93A84(&v84, &v20[v22 + v21 * v26], v24 - v26, a1, MEMORY[0x1E69CCF40]);
  if (v28 < v19)
  {
    goto LABEL_16;
  }

  if (v28)
  {
    v31 = *(v20 + 2);
    v32 = __OFADD__(v31, v28);
    v33 = v31 + v28;
    if (v32)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v20 + 2) = v33;
  }

  if (v28 != v27)
  {
    sub_1B4E632A0(v84);
LABEL_14:
    *v1 = v20;
    return;
  }

LABEL_17:
  v79 = *(v20 + 2);
  v30 = v85;
  v70 = v84;
  v33 = v87;
  v29 = &v89;
  v65 = v86;
  v34 = v88;
  v68 = v85;
  if (v88)
  {
    v35 = v87;
LABEL_27:
    v77 = (v34 - 1) & v34;
    v39 = v82;
    (*(v2 + 16))(v18, *(v70 + 48) + (__clz(__rbit64(v34)) | (v35 << 6)) * v21, v82, v16);
    v72 = *(v2 + 56);
    v72(v18, 0, 1, v39);
    v38 = v35;
    while (1)
    {
      v40 = v80;
      sub_1B4E21A90(v18, v80, &qword_1EB8F5748, &qword_1B4F73F38);
      v41 = *(v2 + 48);
      v2 += 48;
      v76 = v41;
      if (v41(v40, 1, v39) == 1)
      {
        break;
      }

      v43 = (v4 + 32);
      v67 = (v65 + 64) >> 6;
      v71 = v4 + 56;
      v69 = (v4 + 16);
      v66 = (v4 + 8);
      v42 = v80;
      v78 = v43;
      while (1)
      {
        sub_1B4DD2BC4(v42, &qword_1EB8F5748, &qword_1B4F73F38);
        v44 = *(v20 + 3);
        v45 = v44 >> 1;
        if ((v44 >> 1) < v79 + 1)
        {
          v20 = sub_1B4E78BC8((v44 > 1), v79 + 1, 1, v20, &qword_1EB8F5680, &qword_1B4F73EC0, MEMORY[0x1E69CCF40]);
          v45 = *(v20 + 3) >> 1;
        }

        v46 = v81;
        sub_1B4E21A90(v18, v81, &qword_1EB8F5748, &qword_1B4F73F38);
        if (v76(v46, 1, v82) != 1)
        {
          break;
        }

        v47 = v38;
        v48 = v81;
        v4 = v79;
LABEL_38:
        v38 = v47;
        sub_1B4DD2BC4(v48, &qword_1EB8F5748, &qword_1B4F73F38);
        v79 = v4;
LABEL_33:
        *(v20 + 2) = v4;
        v42 = v80;
        sub_1B4E21A90(v18, v80, &qword_1EB8F5748, &qword_1B4F73F38);
        if (v76(v42, 1, v82) == 1)
        {
          goto LABEL_30;
        }
      }

      v74 = &v20[v22];
      v4 = v79;
      v49 = *v78;
      if (v79 <= v45)
      {
        v50 = v45;
      }

      else
      {
        v50 = v79;
      }

      v75 = v50;
      v48 = v81;
      v51 = v82;
      v52 = v83;
      v73 = v49;
      while (1)
      {
        v56 = v52;
        v57 = v48;
        v58 = v51;
        v59 = v49;
        v49(v56, v57, v51);
        if (v4 == v75)
        {
          (*v66)(v83, v58);
          v4 = v75;
          v79 = v75;
          goto LABEL_33;
        }

        sub_1B4DD2BC4(v18, &qword_1EB8F5748, &qword_1B4F73F38);
        v79 = v4;
        v59(&v74[v4 * v21], v83, v58);
        v60 = v77;
        if (!v77)
        {
          break;
        }

        v61 = v38;
LABEL_55:
        v77 = (v60 - 1) & v60;
        v54 = v82;
        (*v69)(v18, *(v70 + 48) + (__clz(__rbit64(v60)) | (v61 << 6)) * v21, v82);
        v53 = 0;
        v63 = v61;
LABEL_44:
        v4 = v79 + 1;
        v72(v18, v53, 1, v54);
        v48 = v81;
        sub_1B4E21A90(v18, v81, &qword_1EB8F5748, &qword_1B4F73F38);
        v55 = v76(v48, 1, v54);
        v51 = v54;
        v38 = v63;
        v47 = v63;
        v52 = v83;
        v49 = v73;
        if (v55 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v67 <= v38 + 1)
      {
        v62 = v38 + 1;
      }

      else
      {
        v62 = v67;
      }

      v63 = v62 - 1;
      while (1)
      {
        v61 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if (v61 >= v67)
        {
          v77 = 0;
          v53 = 1;
          v54 = v82;
          goto LABEL_44;
        }

        v60 = *(v68 + 8 * v61);
        ++v38;
        if (v60)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v39 = v82;
      v72 = *(v2 + 56);
      v72(v18, 1, 1, v82);
      v77 = 0;
    }

    v42 = v80;
LABEL_30:
    sub_1B4DD2BC4(v18, &qword_1EB8F5748, &qword_1B4F73F38);
    sub_1B4E632A0(v70);
    sub_1B4DD2BC4(v42, &qword_1EB8F5748, &qword_1B4F73F38);
    goto LABEL_14;
  }

LABEL_20:
  v36 = (*(v29 - 32) + 64) >> 6;
  if (v36 <= v33 + 1)
  {
    v37 = v33 + 1;
  }

  else
  {
    v37 = v36;
  }

  v38 = v37 - 1;
  while (1)
  {
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v35 >= v36)
    {
      goto LABEL_57;
    }

    v34 = *(v30 + 8 * v35);
    ++v33;
    if (v34)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
}

void *sub_1B4E8F864(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(char *, unint64_t, uint64_t, uint64_t), uint64_t a6, unint64_t a7)
{
  v49 = a1;
  v53 = *MEMORY[0x1E69E9840];
  v12 = a4(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v18 = (&v40 - v17);
  LOBYTE(v17) = *(a3 + 32);
  v41 = ((1 << v17) + 63) >> 6;
  v19 = 8 * v41;
  if ((v17 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v47 = v18;
    v48 = v15;
    v40 = a5;
    v43 = &v40;
    MEMORY[0x1EEE9AC00](v15, v16);
    v42 = &v40 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v42, v19);
    a6 = 0;
    v50 = a3;
    v21 = *(a3 + 56);
    a3 += 56;
    v20 = v21;
    v22 = 1 << *(a3 - 24);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & v20;
    v25 = (v22 + 63) >> 6;
    v44 = 0;
    v45 = v13 + 16;
    v46 = (v13 + 8);
    while (v24)
    {
      v26 = __clz(__rbit64(v24));
      v51 = (v24 - 1) & v24;
LABEL_12:
      a7 = v26 | (a6 << 6);
      v29 = *(v50 + 48) + *(v13 + 9) * a7;
      v18 = v13;
      v30 = *(v13 + 2);
      a5 = v47;
      v31 = v48;
      v30(v47, v29, v48);
      v32 = v52;
      v33 = v49(a5);
      v52 = v32;
      if (v32)
      {
        (*v46)(a5, v31);

        return swift_willThrow();
      }

      v19 = v33;
      v15 = (*v46)(a5, v31);
      v13 = v18;
      v24 = v51;
      if (v19)
      {
        *&v42[(a7 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << a7;
        if (__OFADD__(v44++, 1))
        {
          __break(1u);
          return v40(v42, v41, v44, v50);
        }
      }
    }

    v27 = a6;
    while (1)
    {
      a6 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (a6 >= v25)
      {
        return v40(v42, v41, v44, v50);
      }

      v28 = *(a3 + 8 * a6);
      v27 = (v27 + 1);
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v51 = (v28 - 1) & v28;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    v36 = v15;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v15 = v36;
  }

  v37 = swift_slowAlloc();
  v38 = v52;
  v39 = sub_1B4E8C808(v37, v41, a3, v49, a2, a6, a7);

  result = MEMORY[0x1B8C831D0](v37, -1, -1);
  if (!v38)
  {
    return v39;
  }

  return result;
}

void sub_1B4E8FC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5, uint64_t (*a6)(void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v32 = a2;
  v33 = a7;
  v39 = a4;
  v34 = a1;
  v42 = a6(0);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v42, v9);
  v40 = a3;
  v41 = &v32 - v12;
  v13 = 0;
  v16 = *(a3 + 56);
  v15 = a3 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v37 = v10 + 16;
  v38 = v10;
  v35 = 0;
  v36 = (v10 + 8);
  while (v19)
  {
    v21 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v22 = v21 | (v13 << 6);
    v23 = v42;
    v24 = v41;
LABEL_11:
    (*(v38 + 16))(v24, *(v40 + 48) + *(v38 + 72) * v22, v23, v11);
    v27 = v39(v24);
    v28 = v24;
    if (v7)
    {
      (*v36)(v24, v23);
      return;
    }

    v29 = v27;
    (*v36)(v28, v23);
    if (v29)
    {
      *(v34 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      if (__OFADD__(v35++, 1))
      {
        __break(1u);
LABEL_16:
        v31 = v40;

        v33(v34, v32, v35, v31);
        return;
      }
    }
  }

  v25 = v13;
  v23 = v42;
  v24 = v41;
  while (1)
  {
    v13 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      goto LABEL_16;
    }

    v26 = *(v15 + 8 * v13);
    ++v25;
    if (v26)
    {
      v19 = (v26 - 1) & v26;
      v22 = __clz(__rbit64(v26)) | (v13 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1B4E8FE78(uint64_t *a1, double a2)
{
  v3 = *(sub_1B4F65C64() - 8);
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1B4E93D2C(v4);
  }

  v5 = v4[2];
  v6[0] = v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v6[1] = v5;
  sub_1B4E92590(v6);
  *a1 = v4;
}

uint64_t sub_1B4E8FF20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1B4F670C4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1B4E952A0(&qword_1EB8F41A0, MEMORY[0x1E69CCDC8], MEMORY[0x1E69CCDD8]);
  v31 = a1;
  v11 = sub_1B4F67F14();
  v29 = v10 + 56;
  v30 = v10;
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v9, *(v30 + 48) + v18 * v13, v5);
      sub_1B4E952A0(&qword_1EB8F5798, MEMORY[0x1E69CCDC8], MEMORY[0x1E69CCDE0]);
      v19 = sub_1B4F67F54();
      (*(v16 - 8))(v9, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1B4E86E38(MEMORY[0x1E69CCDC8], &qword_1EB8F57A0, &qword_1B4F73F50);
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1B4E91F14(v13, MEMORY[0x1E69CCDC8], &qword_1EB8F41A0, MEMORY[0x1E69CCDC8], MEMORY[0x1E69CCDD8]);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1B4E90230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1B4F66AF4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1B4E952A0(&qword_1EB8F4DA0, MEMORY[0x1E69CCA00], MEMORY[0x1E69CCA10]);
  v31 = a1;
  v11 = sub_1B4F67F14();
  v29 = v10 + 56;
  v30 = v10;
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v9, *(v30 + 48) + v18 * v13, v5);
      sub_1B4E952A0(&qword_1EB8F5788, MEMORY[0x1E69CCA00], MEMORY[0x1E69CCA18]);
      v19 = sub_1B4F67F54();
      (*(v16 - 8))(v9, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1B4E86E38(MEMORY[0x1E69CCA00], &qword_1EB8F5790, &qword_1B4F73F48);
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1B4E91F14(v13, MEMORY[0x1E69CCA00], &qword_1EB8F4DA0, MEMORY[0x1E69CCA00], MEMORY[0x1E69CCA10]);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1B4E90540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1B4F660C4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1B4E952A0(&qword_1EB8F4198, MEMORY[0x1E69CBE40], MEMORY[0x1E69CBE50]);
  v31 = a1;
  v11 = sub_1B4F67F14();
  v29 = v10 + 56;
  v30 = v10;
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v9, *(v30 + 48) + v18 * v13, v5);
      sub_1B4E952A0(&qword_1EB8F5778, MEMORY[0x1E69CBE40], MEMORY[0x1E69CBE58]);
      v19 = sub_1B4F67F54();
      (*(v16 - 8))(v9, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1B4E86E38(MEMORY[0x1E69CBE40], &qword_1EB8F5780, &unk_1B4F79F50);
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1B4E91F14(v13, MEMORY[0x1E69CBE40], &qword_1EB8F4198, MEMORY[0x1E69CBE40], MEMORY[0x1E69CBE50]);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1B4E90850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1B4F65DE4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1B4E952A0(&qword_1EB8F4188, MEMORY[0x1E69CB800], MEMORY[0x1E69CB810]);
  v31 = a1;
  v11 = sub_1B4F67F14();
  v29 = v10 + 56;
  v30 = v10;
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v9, *(v30 + 48) + v18 * v13, v5);
      sub_1B4E952A0(&qword_1EB8F5760, MEMORY[0x1E69CB800], MEMORY[0x1E69CB818]);
      v19 = sub_1B4F67F54();
      (*(v16 - 8))(v9, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1B4E86E38(MEMORY[0x1E69CB800], &qword_1EB8F5768, &unk_1B4F79F40);
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1B4E91F14(v13, MEMORY[0x1E69CB800], &qword_1EB8F4188, MEMORY[0x1E69CB800], MEMORY[0x1E69CB810]);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1B4E90B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1B4F66674();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1B4E952A0(&qword_1EDB70088, MEMORY[0x1E69CC5E8], MEMORY[0x1E69CC5F8]);
  v31 = a1;
  v11 = sub_1B4F67F14();
  v29 = v10 + 56;
  v30 = v10;
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v9, *(v30 + 48) + v18 * v13, v5);
      sub_1B4E952A0(&qword_1EB8F5750, MEMORY[0x1E69CC5E8], MEMORY[0x1E69CC600]);
      v19 = sub_1B4F67F54();
      (*(v16 - 8))(v9, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1B4E86E38(MEMORY[0x1E69CC5E8], &qword_1EB8F5758, &unk_1B4F79F60);
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1B4E91F14(v13, MEMORY[0x1E69CC5E8], &qword_1EDB70088, MEMORY[0x1E69CC5E8], MEMORY[0x1E69CC5F8]);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1B4E90E70(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1B4F68E84();
  sub_1B4F67FE4();
  v6 = sub_1B4F68EC4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1B4F68D54() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1B4E863C4();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1B4E92210(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_1B4E90FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1B4F67154();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1B4E952A0(&qword_1EDB70030, MEMORY[0x1E69CCEC8], MEMORY[0x1E69CCED8]);
  v31 = a1;
  v11 = sub_1B4F67F14();
  v29 = v10 + 56;
  v30 = v10;
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v9, *(v30 + 48) + v18 * v13, v5);
      sub_1B4E952A0(&qword_1EB8F5728, MEMORY[0x1E69CCEC8], MEMORY[0x1E69CCEE0]);
      v19 = sub_1B4F67F54();
      (*(v16 - 8))(v9, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1B4E86E38(MEMORY[0x1E69CCEC8], &qword_1EB8F5730, &qword_1B4F73F28);
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1B4E91F14(v13, MEMORY[0x1E69CCEC8], &qword_1EDB70030, MEMORY[0x1E69CCEC8], MEMORY[0x1E69CCED8]);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1B4E912BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1B4F67A94();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1B4E952A0(&qword_1EB8F4180, MEMORY[0x1E69CD370], MEMORY[0x1E69CD380]);
  v31 = a1;
  v11 = sub_1B4F67F14();
  v29 = v10 + 56;
  v30 = v10;
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v9, *(v30 + 48) + v18 * v13, v5);
      sub_1B4E952A0(&qword_1EB8F56D8, MEMORY[0x1E69CD370], MEMORY[0x1E69CD388]);
      v19 = sub_1B4F67F54();
      (*(v16 - 8))(v9, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1B4E86E38(MEMORY[0x1E69CD370], &qword_1EB8F56E0, &qword_1B4F73EF8);
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1B4E91F14(v13, MEMORY[0x1E69CD370], &qword_1EB8F4180, MEMORY[0x1E69CD370], MEMORY[0x1E69CD380]);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1B4E915CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1B4F67124();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1B4E952A0(&qword_1EDB70038, MEMORY[0x1E69CCE28], MEMORY[0x1E69CCE38]);
  v31 = a1;
  v11 = sub_1B4F67F14();
  v29 = v10 + 56;
  v30 = v10;
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v9, *(v30 + 48) + v18 * v13, v5);
      sub_1B4E952A0(&qword_1EB8F56E8, MEMORY[0x1E69CCE28], MEMORY[0x1E69CCE40]);
      v19 = sub_1B4F67F54();
      (*(v16 - 8))(v9, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1B4E86E38(MEMORY[0x1E69CCE28], &qword_1EB8F56F0, &qword_1B4F73F00);
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1B4E91F14(v13, MEMORY[0x1E69CCE28], &qword_1EDB70038, MEMORY[0x1E69CCE28], MEMORY[0x1E69CCE38]);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1B4E918DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1B4F679C4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1B4E952A0(&qword_1EDB70020, MEMORY[0x1E69CD2D8], MEMORY[0x1E69CD2E8]);
  v31 = a1;
  v11 = sub_1B4F67F14();
  v29 = v10 + 56;
  v30 = v10;
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v9, *(v30 + 48) + v18 * v13, v5);
      sub_1B4E952A0(&qword_1EB8F56F8, MEMORY[0x1E69CD2D8], MEMORY[0x1E69CD2F0]);
      v19 = sub_1B4F67F54();
      (*(v16 - 8))(v9, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1B4E86E38(MEMORY[0x1E69CD2D8], &qword_1EB8F5700, &qword_1B4F73F08);
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1B4E91F14(v13, MEMORY[0x1E69CD2D8], &qword_1EDB70020, MEMORY[0x1E69CD2D8], MEMORY[0x1E69CD2E8]);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1B4E91BEC(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = sub_1B4F68924();

    if (v5)
    {
      v6 = sub_1B4E91D98(v4, a1);

      return v6;
    }

    return 0;
  }

  sub_1B4F68E84();
  sub_1B4F68774();
  v8 = sub_1B4F68EC4();
  v9 = -1 << *(v3 + 32);
  v10 = v8 & ~v9;
  if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  sub_1B4DE1BDC();
  while (1)
  {

    v12 = sub_1B4F68764();

    if (v12)
    {
      break;
    }

    v10 = (v10 + 1) & v11;
    if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v1;
  v16 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1B4E86CE8();
    v14 = v16;
  }

  v15 = *(*(v14 + 48) + 8 * v10);
  sub_1B4E923D4(v10);
  result = v15;
  *v1 = v16;
  return result;
}

uint64_t sub_1B4E91D98(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_1B4F688F4();
  v5 = swift_unknownObjectRetain();
  v6 = sub_1B4E7CE00(v5, v4);
  v14 = v6;
  sub_1B4F68E84();

  sub_1B4F68774();
  v7 = sub_1B4F68EC4();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_1B4DE1BDC();
    while (1)
    {

      v11 = sub_1B4F68764();

      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v12 = *(*(v6 + 48) + 8 * v9);
  sub_1B4E923D4(v9);
  result = sub_1B4F68764();
  if (result)
  {
    *v3 = v14;
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B4E91F14(int64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v42 = a4;
  v43 = a5;
  v41 = a3;
  v7 = a2(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v37 - v10;
  v12 = *v5;
  v13 = *v5 + 56;
  v14 = -1 << *(*v5 + 32);
  v15 = (a1 + 1) & ~v14;
  if (((1 << v15) & *(v13 + 8 * (v15 >> 6))) != 0)
  {
    v16 = ~v14;

    v17 = sub_1B4F688C4();
    if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) != 0)
    {
      v39 = (v17 + 1) & v16;
      v38 = *(v8 + 16);
      v44 = *(v8 + 72);
      v40 = v8 + 16;
      v18 = (v8 + 8);
      v19 = v12;
      v20 = v16;
      while (1)
      {
        v21 = v13;
        v22 = v44 * v15;
        v23 = v20;
        v38(v11, *(v19 + 48) + v44 * v15, v7);
        v24 = v19;
        sub_1B4E952A0(v41, v42, v43);
        v25 = sub_1B4F67F14();
        (*v18)(v11, v7);
        v20 = v23;
        v26 = v25 & v23;
        if (a1 >= v39)
        {
          if (v26 < v39 || a1 < v26)
          {
LABEL_4:
            v19 = v24;
            goto LABEL_5;
          }
        }

        else if (v26 < v39 && a1 < v26)
        {
          goto LABEL_4;
        }

        v19 = v24;
        v29 = *(v24 + 48);
        v30 = v44 * a1;
        v31 = v29 + v44 * a1;
        v32 = v29 + v22 + v44;
        if (v44 * a1 < v22 || v31 >= v32)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_24:
          v20 = v23;
          a1 = v15;
          goto LABEL_5;
        }

        a1 = v15;
        if (v30 != v22)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_24;
        }

LABEL_5:
        v15 = (v15 + 1) & v20;
        v13 = v21;
        if (((*(v21 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v19 = v12;
LABEL_28:
    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v19 = v12;
  }

  v34 = *(v19 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v36;
    ++*(v19 + 36);
  }
}

unint64_t sub_1B4E92210(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1B4F688C4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1B4F68E84();

        sub_1B4F67FE4();
        v10 = sub_1B4F68EC4();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1B4E923D4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1B4F688C4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1B4F68E84();

        sub_1B4F68774();
        v10 = sub_1B4F68EC4();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

void sub_1B4E92590(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1B4F68CF4();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v5 = v3;
      v6 = v2 / 2;
      if (v2 <= 1)
      {
        v7 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1B4F65C64();
        v7 = sub_1B4F68214();
        *(v7 + 16) = v6;
      }

      v8 = *(sub_1B4F65C64() - 8);
      v10[0] = v7 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v10[1] = v6;
      sub_1B4E92964(v10, v9, v11, a1, v5);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1B4E926BC(0, v2, 1, a1, v4);
  }
}

void sub_1B4E926BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, double a5)
{
  v9 = sub_1B4F65C64();
  MEMORY[0x1EEE9AC00](v9, v10);
  v47 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v52 = &v37 - v14;
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v15, v16);
  v51 = &v37 - v19;
  v39 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v17 + 16);
    v21 = v17 + 16;
    v23 = *(v21 + 56);
    v48 = (v21 - 8);
    v49 = v22;
    v50 = v21;
    v45 = (v21 + 16);
    v46 = v20;
    v24 = (v20 + v23 * (a3 - 1));
    v44 = -v23;
    v25 = a1 - a3;
    v38 = v23;
    v26 = v20 + v23 * a3;
LABEL_5:
    v42 = v24;
    v43 = a3;
    v40 = v26;
    v41 = v25;
    v53 = v25;
    v27 = v24;
    while (1)
    {
      v28 = v51;
      v29 = v49;
      (v49)(v51, v26, v9, v18);
      v30 = v52;
      v29(v52, v27, v9);
      v31 = sub_1B4F65C54();
      v32 = sub_1B4F65C54();
      v33 = *v48;
      (*v48)(v30, v9);
      v33(v28, v9);
      if (v31 >= v32)
      {
LABEL_4:
        a3 = v43 + 1;
        v24 = &v42[v38];
        v25 = v41 - 1;
        v26 = v40 + v38;
        if (v43 + 1 == v39)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v46)
      {
        break;
      }

      v34 = *v45;
      v35 = v47;
      (*v45)(v47, v26, v9);
      swift_arrayInitWithTakeFrontToBack();
      v34(v27, v35, v9);
      v27 += v44;
      v26 += v44;
      if (__CFADD__(v53++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1B4E92964(int64_t *a1, double a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = v5;
  v124 = a1;
  v10 = sub_1B4F65C64();
  MEMORY[0x1EEE9AC00](v10, v11);
  v128 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v138 = &v121 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v144 = &v121 - v18;
  v22.n128_f64[0] = MEMORY[0x1EEE9AC00](v19, v20);
  v143 = &v121 - v23;
  v24 = a4[1];
  v133 = v21;
  if (v24 < 1)
  {
    v26 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v6 = *v124;
    if (!*v124)
    {
      goto LABEL_132;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = v133;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_126:
      v26 = sub_1B4E9398C(v26);
    }

    v146 = v26;
    v117 = *(v26 + 2);
    if (v117 >= 2)
    {
      while (*a4)
      {
        v118 = *&v26[16 * v117];
        v119 = *&v26[16 * v117 + 24];
        sub_1B4E93348(*a4 + *(v10 + 72) * v118, *a4 + *(v10 + 72) * *&v26[16 * v117 + 16], *a4 + *(v10 + 72) * v119, v6, v116);
        if (v7)
        {
          goto LABEL_104;
        }

        if (v119 < v118)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_1B4E9398C(v26);
        }

        if (v117 - 2 >= *(v26 + 2))
        {
          goto LABEL_120;
        }

        v120 = &v26[16 * v117];
        *v120 = v118;
        *(v120 + 1) = v119;
        v146 = v26;
        sub_1B4E93900(v117 - 1);
        v26 = v146;
        v117 = *(v146 + 2);
        if (v117 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v122 = a5;
  v25 = 0;
  v141 = (v21 + 8);
  v142 = v21 + 16;
  v140 = (v21 + 32);
  v26 = MEMORY[0x1E69E7CC0];
  v126 = a4;
  v145 = v10;
  while (1)
  {
    v134 = v26;
    if (v25 + 1 >= v24)
    {
      v38 = v25 + 1;
    }

    else
    {
      v135 = v24;
      v123 = v7;
      v27 = *a4;
      v125 = v25;
      v28 = v133[9];
      v6 = &v27[v28 * (v25 + 1)];
      v29 = v27;
      v139 = v27;
      v30 = v10;
      v31 = v133[2];
      v32 = v143;
      v31(v143, v6, v30, v22);
      v33 = &v29[v28 * v25];
      v34 = v144;
      v131 = v31;
      (v31)(v144, v33, v30);
      v136 = sub_1B4F65C54();
      v132 = sub_1B4F65C54();
      v35 = v133[1];
      v35(v34, v30);
      v130 = v35;
      v35(v32, v30);
      v36 = v125 + 2;
      v137 = v28;
      v37 = &v139[v28 * (v125 + 2)];
      while (1)
      {
        v38 = v135;
        if (v135 == v36)
        {
          break;
        }

        v39 = v131;
        LODWORD(v139) = v136 < v132;
        v40 = v143;
        v41 = v145;
        (v131)(v143, v37, v145);
        v42 = v144;
        v39(v144, v6, v41);
        v43 = sub_1B4F65C54();
        v44 = sub_1B4F65C54();
        v45 = v130;
        (v130)(v42, v41);
        v45(v40, v41);
        v26 = v134;
        ++v36;
        v37 += v137;
        v6 += v137;
        if (((v139 ^ (v43 >= v44)) & 1) == 0)
        {
          v38 = v36 - 1;
          break;
        }
      }

      v7 = v123;
      v25 = v125;
      a4 = v126;
      v10 = v145;
      if (v136 < v132)
      {
        if (v38 < v125)
        {
          goto LABEL_123;
        }

        if (v125 < v38)
        {
          v46 = v137 * (v38 - 1);
          v6 = v38 * v137;
          v135 = v38;
          v47 = v38;
          v48 = v125;
          v49 = v125 * v137;
          do
          {
            if (v48 != --v47)
            {
              v50 = *a4;
              if (!v50)
              {
                goto LABEL_129;
              }

              v51 = *v140;
              (*v140)(v128, &v50[v49], v10);
              if (v49 < v46 || &v50[v49] >= &v50[v6])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v49 != v46)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v51(&v50[v46], v128, v10);
              a4 = v126;
              v26 = v134;
            }

            ++v48;
            v46 -= v137;
            v6 -= v137;
            v49 += v137;
          }

          while (v48 < v47);
          v7 = v123;
          v25 = v125;
          v38 = v135;
        }
      }
    }

    v52 = a4[1];
    if (v38 < v52)
    {
      if (__OFSUB__(v38, v25))
      {
        goto LABEL_122;
      }

      if (v38 - v25 < v122)
      {
        if (__OFADD__(v25, v122))
        {
          goto LABEL_124;
        }

        if (v25 + v122 >= v52)
        {
          v6 = a4[1];
        }

        else
        {
          v6 = v25 + v122;
        }

        if (v6 < v25)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v38 != v6)
        {
          break;
        }
      }
    }

    v6 = v38;
    if (v38 < v25)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_1B4E78A4C(0, *(v26 + 2) + 1, 1, v26);
    }

    v54 = *(v26 + 2);
    v53 = *(v26 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v26 = sub_1B4E78A4C((v53 > 1), v54 + 1, 1, v26);
    }

    *(v26 + 2) = v55;
    v56 = &v26[16 * v54];
    *(v56 + 4) = v25;
    *(v56 + 5) = v6;
    v57 = *v124;
    if (!*v124)
    {
      goto LABEL_131;
    }

    v129 = v6;
    if (v54)
    {
      while (1)
      {
        v6 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v26 + 4);
          v59 = *(v26 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v26[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v26[16 * v6 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v6 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v26[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v26[16 * v6];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v6 - 1;
        if (v6 - 1 >= v55)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a4)
        {
          goto LABEL_128;
        }

        v96 = *&v26[16 * v95 + 32];
        v97 = *&v26[16 * v6 + 40];
        sub_1B4E93348(*a4 + v133[9] * v96, *a4 + v133[9] * *&v26[16 * v6 + 32], *a4 + v133[9] * v97, v57, v22.n128_f64[0]);
        if (v7)
        {
          goto LABEL_104;
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_1B4E9398C(v26);
        }

        if (v95 >= *(v26 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v26[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v146 = v26;
        sub_1B4E93900(v6);
        v26 = v146;
        v55 = *(v146 + 2);
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v26[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v26[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v26[16 * v6 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v6 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v24 = a4[1];
    v25 = v129;
    if (v129 >= v24)
    {
      goto LABEL_94;
    }
  }

  v123 = v7;
  v99 = *a4;
  v100 = v133[9];
  v139 = v133[2];
  v101 = &v99[v100 * (v38 - 1)];
  v136 = -v100;
  v137 = v99;
  v125 = v25;
  v102 = (v25 - v38);
  v127 = v100;
  v103 = &v99[v38 * v100];
  v129 = v6;
LABEL_85:
  v135 = v38;
  v130 = v103;
  v131 = v102;
  v132 = v101;
  v104 = v101;
  while (1)
  {
    v105 = v143;
    v106 = v139;
    (v139)(v143, v103, v10, v22);
    v107 = v144;
    v106(v144, v104, v145);
    v108 = sub_1B4F65C54();
    v109 = sub_1B4F65C54();
    v110 = *v141;
    v111 = v107;
    v10 = v145;
    (*v141)(v111, v145);
    v110(v105, v10);
    if (v108 >= v109)
    {
LABEL_84:
      v38 = v135 + 1;
      v101 = v132 + v127;
      v102 = v131 - 1;
      v6 = v129;
      v103 = &v130[v127];
      if (v135 + 1 != v129)
      {
        goto LABEL_85;
      }

      v7 = v123;
      v25 = v125;
      a4 = v126;
      v26 = v134;
      if (v129 < v125)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v137)
    {
      break;
    }

    v112 = *v140;
    v113 = v138;
    (*v140)(v138, v103, v10);
    swift_arrayInitWithTakeFrontToBack();
    v112(v104, v113, v10);
    v104 += v136;
    v103 += v136;
    if (__CFADD__(v102++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

void sub_1B4E93348(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, double a5)
{
  v65 = sub_1B4F65C64();
  v9 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65, v10);
  v62 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v61 = &v51 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_60;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_61;
  }

  v19 = (a2 - a1) / v17;
  v68 = a1;
  v67 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || a2 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v35 = a4 + v21;
    if (v21 >= 1)
    {
      v36 = -v17;
      v55 = a4;
      v56 = (v9 + 16);
      v54 = (v9 + 8);
      v37 = v35;
      v64 = a1;
      v57 = v36;
      do
      {
        v52 = v35;
        v38 = a2;
        v39 = a2 + v36;
        v40 = a3;
        v58 = v38;
        v59 = v39;
        while (1)
        {
          if (v38 <= a1)
          {
            v68 = v38;
            v66 = v52;
            goto LABEL_58;
          }

          v41 = v40;
          v53 = v35;
          v63 = v40 + v36;
          v42 = v37 + v36;
          v43 = *v56;
          v44 = v61;
          v45 = v37 + v36;
          v46 = v37;
          v47 = v65;
          (*v56)(v61, v45, v65);
          v48 = v62;
          (v43)(v62, v39, v47);
          v60 = sub_1B4F65C54();
          v49 = sub_1B4F65C54();
          v50 = *v54;
          (*v54)(v48, v47);
          v50(v44, v47);
          if (v60 < v49)
          {
            break;
          }

          v35 = v42;
          v40 = v63;
          if (v41 < v46 || v63 >= v46)
          {
            swift_arrayInitWithTakeFrontToBack();
            v39 = v59;
            a1 = v64;
          }

          else
          {
            v39 = v59;
            a1 = v64;
            if (v41 != v46)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v37 = v42;
          v36 = v57;
          v38 = v58;
          if (v42 <= v55)
          {
            a2 = v58;
            goto LABEL_57;
          }
        }

        v37 = v46;
        if (v41 < v58 || v63 >= v58)
        {
          a3 = v63;
          a2 = v59;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v64;
          v35 = v53;
          v36 = v57;
        }

        else
        {
          a3 = v63;
          a2 = v59;
          a1 = v64;
          v35 = v53;
          v36 = v57;
          if (v41 != v58)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v37 > v55);
    }

LABEL_57:
    v68 = a2;
    v66 = v35;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v60 = a4 + v20;
    v66 = a4 + v20;
    v63 = a3;
    if (v20 >= 1 && a2 < a3)
    {
      v23 = *(v9 + 16);
      v58 = v17;
      v59 = v9 + 16;
      v56 = (v9 + 8);
      v57 = v23;
      do
      {
        v64 = a1;
        v24 = v61;
        v25 = v65;
        v26 = v57;
        v57(v61, a2, v65);
        v27 = v62;
        v26(v62, a4, v25);
        v28 = a2;
        v29 = sub_1B4F65C54();
        v30 = sub_1B4F65C54();
        v31 = *v56;
        (*v56)(v27, v25);
        v31(v24, v25);
        if (v29 >= v30)
        {
          v32 = v58;
          v34 = a4 + v58;
          v33 = v64;
          if (v64 < a4 || v64 >= v34)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v28;
          }

          else
          {
            a2 = v28;
            if (v64 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v67 = v34;
          a4 += v32;
        }

        else
        {
          v32 = v58;
          a2 = v28 + v58;
          v33 = v64;
          if (v64 < v28 || v64 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v64 != v28)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v33 + v32;
        v68 = a1;
      }

      while (a4 < v60 && a2 < v63);
    }
  }

LABEL_58:
  sub_1B4E939A0(&v68, &v67, &v66, v14);
}

uint64_t sub_1B4E93900(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B4E9398C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1B4E939A0(unint64_t *a1, unint64_t *a2, uint64_t *a3, double a4)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = sub_1B4F65C64();
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_1B4E93A84(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v43 = a5(0);
  v45 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v9);
  v44 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v11, v12);
  v42 = &v36 - v14;
  v15 = a4 + 56;
  v16 = -1 << *(a4 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v34 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v15;
    *(a1 + 16) = ~v16;
    *(a1 + 24) = v34;
    *(a1 + 32) = v18;
    return;
  }

  if (!a3)
  {
    v34 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v36 = -1 << *(a4 + 32);
    v37 = a1;
    v19 = 0;
    v20 = (63 - v16) >> 6;
    v38 = v45 + 32;
    v39 = v45 + 16;
    a1 = 1;
    v40 = a4 + 56;
    v41 = a3;
    v21 = v42;
    while (v18)
    {
      v47 = a2;
LABEL_15:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v46 = v19;
      v25 = a4;
      v26 = *(a4 + 48);
      v27 = v44;
      v28 = v45;
      v29 = *(v45 + 72);
      v30 = v43;
      (*(v45 + 16))(v44, v26 + v29 * (v24 | (v19 << 6)), v43, v13);
      v31 = *(v28 + 32);
      v31(v21, v27, v30);
      v32 = v47;
      v31(v47, v21, v30);
      if (a1 == v41)
      {
        v16 = v36;
        a1 = v37;
        a4 = v25;
        v34 = v46;
        v15 = v40;
        goto LABEL_25;
      }

      a2 = &v32[v29];
      v33 = __OFADD__(a1++, 1);
      a4 = v25;
      v19 = v46;
      v15 = v40;
      if (v33)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = *(v15 + 8 * v23);
      ++v22;
      if (v18)
      {
        v47 = a2;
        v19 = v23;
        goto LABEL_15;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v35 = v19 + 1;
    }

    else
    {
      v35 = v20;
    }

    v34 = v35 - 1;
    v16 = v36;
    a1 = v37;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}