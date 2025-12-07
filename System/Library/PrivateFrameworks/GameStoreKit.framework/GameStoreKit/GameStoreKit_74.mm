void sub_24ED87ED0(uint64_t result, unint64_t a2, char a3)
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
    sub_24ED8312C(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_24ED8A694();
      goto LABEL_12;
    }

    sub_24ED8D55C(v7 + 1);
  }

  v9 = *v3;
  sub_24F92D068();
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  v10 = sub_24F92D0B8();
  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      sub_24E772724(*(v9 + 48) + 40 * a2, v20);
      v13 = MEMORY[0x253052150](v20, result);
      sub_24E772780(v20);
      if (v13)
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
  v15 = *(v14 + 48) + 40 * a2;
  v16 = *(result + 16);
  *v15 = *result;
  *(v15 + 16) = v16;
  *(v15 + 32) = *(result + 32);
  v17 = *(v14 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v14 + 16) = v19;
    return;
  }

  __break(1u);
LABEL_15:
  sub_24F92CF78();
  __break(1u);
}

uint64_t sub_24ED8805C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_24F927D58();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
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
    sub_24ED833A0(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_24ED8AE10(MEMORY[0x277CEC160], &qword_27F21E528, &qword_24F95C750);
      goto LABEL_12;
    }

    sub_24ED8D79C(v11 + 1);
  }

  v13 = *v3;
  sub_24ED8F50C(&qword_27F21E530, MEMORY[0x277CEC160], MEMORY[0x277CEC168]);
  v14 = sub_24F92AEE8();
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
      sub_24ED8F50C(&qword_27F21E538, MEMORY[0x277CEC160], MEMORY[0x277CEC170]);
      v22 = sub_24F92AFF8();
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
  result = sub_24F92CF78();
  __break(1u);
  return result;
}

void sub_24ED88324(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t a6)
{
  v8 = *(*v6 + 16);
  v9 = *(*v6 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24ED848C0(v8 + 1, a4, a5);
  }

  else
  {
    if (v9 > v8)
    {
      v10 = a2;
      sub_24ED8ACE0(a4, a5);
      a2 = v10;
      goto LABEL_12;
    }

    sub_24ED8EB24(v8 + 1, a4, a5);
  }

  v11 = *v6;
  v12 = sub_24F92D058();
  v13 = -1 << *(v11 + 32);
  a2 = v12 & ~v13;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v14 = ~v13;
    while (*(*(v11 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v14;
      if (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v15 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = result;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_24F92CF78();
  __break(1u);
}

void sub_24ED88460(uint64_t result, unint64_t a2, char a3)
{
  v36 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_67;
  }

  if (a3)
  {
    sub_24ED836FC(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      sub_24ED8A80C(&qword_27F22F0E0, &qword_24F99BB48);
      goto LABEL_67;
    }

    sub_24ED8DAB8(v5 + 1);
  }

  v7 = *v3;
  sub_24F92D068();
  sub_24F2032F0(v37, v36);
  v8 = sub_24F92D0B8();
  v9 = -1 << *(v7 + 32);
  a2 = v8 & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v35 = ~v9;
    v10 = 0xEB00000000746365;
    v11 = 0x6669636570736E75;
    do
    {
      v12 = *(*(v7 + 48) + a2);
      if (v12 <= 3)
      {
        v15 = 0xD000000000000016;
        if (v12 == 2)
        {
          v16 = 0x800000024FA43300;
        }

        else
        {
          v15 = 0x646E756F72;
          v16 = 0xE500000000000000;
        }

        if (*(*(v7 + 48) + a2))
        {
          v17 = 0x526465646E756F72;
        }

        else
        {
          v17 = v11;
        }

        if (*(*(v7 + 48) + a2))
        {
          v18 = v10;
        }

        else
        {
          v18 = 0xEB00000000646569;
        }

        if (*(*(v7 + 48) + a2) <= 1u)
        {
          v14 = v17;
        }

        else
        {
          v14 = v15;
        }

        if (*(*(v7 + 48) + a2) <= 1u)
        {
          v13 = v18;
        }

        else
        {
          v13 = v16;
        }
      }

      else if (*(*(v7 + 48) + a2) <= 5u)
      {
        if (v12 == 4)
        {
          v14 = 0xD000000000000010;
          v13 = 0x800000024FA43320;
        }

        else
        {
          v13 = 0xE400000000000000;
          v14 = 1819044208;
        }
      }

      else if (v12 == 6)
      {
        v13 = 0xE300000000000000;
        v14 = 7364969;
      }

      else if (v12 == 7)
      {
        v13 = 0xE600000000000000;
        v14 = 0x746365527674;
      }

      else
      {
        v14 = 0x656E726F64616E75;
        v13 = 0xE900000000000064;
      }

      v19 = 0x656E726F64616E75;
      if (v36 == 7)
      {
        v19 = 0x746365527674;
      }

      v20 = 0xE900000000000064;
      if (v36 == 7)
      {
        v20 = 0xE600000000000000;
      }

      if (v36 == 6)
      {
        v19 = 7364969;
        v20 = 0xE300000000000000;
      }

      v21 = 1819044208;
      if (v36 == 4)
      {
        v21 = 0xD000000000000010;
      }

      v22 = 0x800000024FA43320;
      if (v36 != 4)
      {
        v22 = 0xE400000000000000;
      }

      if (v36 <= 5u)
      {
        v19 = v21;
        v20 = v22;
      }

      v23 = 0xD000000000000016;
      if (v36 == 2)
      {
        v24 = 0x800000024FA43300;
      }

      else
      {
        v23 = 0x646E756F72;
        v24 = 0xE500000000000000;
      }

      v25 = v11;
      if (v36)
      {
        v11 = 0x526465646E756F72;
      }

      v26 = v10;
      if (!v36)
      {
        v10 = 0xEB00000000646569;
      }

      if (v36 <= 1u)
      {
        v23 = v11;
        v24 = v10;
      }

      v27 = v36 <= 3u ? v23 : v19;
      v28 = v36 <= 3u ? v24 : v20;
      if (v14 == v27 && v13 == v28)
      {
        goto LABEL_70;
      }

      v29 = sub_24F92CE08();

      if (v29)
      {
        goto LABEL_71;
      }

      a2 = (a2 + 1) & v35;
      v10 = v26;
      v11 = v25;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_67:
  v30 = *v34;
  *(*v34 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v30 + 48) + a2) = v36;
  v31 = *(v30 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (!v32)
  {
    *(v30 + 16) = v33;
    return;
  }

  __break(1u);
LABEL_70:

LABEL_71:
  sub_24F92CF78();
  __break(1u);
}

void sub_24ED88810(uint64_t result, unint64_t a2, char a3)
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
    sub_24ED83A78(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_24ED8A80C(&qword_27F22F0D8, &qword_24F99BB40);
      a2 = v7;
      goto LABEL_12;
    }

    sub_24ED8DE04(v5 + 1);
  }

  v8 = *v3;
  sub_24F92D068();
  MEMORY[0x253052A00](v4);
  v9 = sub_24F92D0B8();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_24F92CF78();
  __break(1u);
}

uint64_t sub_24ED88970(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213980, &qword_24F93B520);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v7;
  v30 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24ED83CC8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_24ED8A93C();
      goto LABEL_12;
    }

    sub_24ED8E024(v11 + 1);
  }

  v13 = *v3;
  sub_24E602068(&qword_27F22F0A8, &qword_27F213980, &qword_24F93B520, MEMORY[0x277D0D508]);
  v14 = sub_24F92AEE8();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v18 = v7 + 16;
    v19 = v20;
    v21 = *(v18 + 56);
    do
    {
      v19(v10, *(v31 + 48) + v21 * a2, v6);
      sub_24E602068(&qword_27F22F0B0, &qword_27F213980, &qword_24F93B520, MEMORY[0x277D0D510]);
      v22 = sub_24F92AFF8();
      (*(v18 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v29;
  v24 = *v30;
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
  result = sub_24F92CF78();
  __break(1u);
  return result;
}

uint64_t sub_24ED88C14(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_24F92A278();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
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
    sub_24ED84028(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_24ED8AE10(MEMORY[0x277D22300], &qword_27F22F090, &qword_24F99BB10);
      goto LABEL_12;
    }

    sub_24ED8E344(v11 + 1);
  }

  v13 = *v3;
  sub_24ED8F50C(&qword_27F22F080, MEMORY[0x277D22300], MEMORY[0x277D22308]);
  v14 = sub_24F92AEE8();
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
      sub_24ED8F50C(&qword_27F22F088, MEMORY[0x277D22300], MEMORY[0x277D22310]);
      v22 = sub_24F92AFF8();
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
  result = sub_24F92CF78();
  __break(1u);
  return result;
}

uint64_t sub_24ED88EDC(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_24F92A2C8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
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
    sub_24ED84384(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_24ED8AE10(MEMORY[0x277D22320], &qword_27F21E5C0, &qword_24F95C7A8);
      goto LABEL_12;
    }

    sub_24ED8E660(v11 + 1);
  }

  v13 = *v3;
  sub_24ED8F50C(&qword_27F21E5C8, MEMORY[0x277D22320], MEMORY[0x277D22328]);
  v14 = sub_24F92AEE8();
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
      sub_24ED8F50C(&qword_27F21E5D0, MEMORY[0x277D22320], MEMORY[0x277D22330]);
      v22 = sub_24F92AFF8();
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
  result = sub_24F92CF78();
  __break(1u);
  return result;
}

void sub_24ED891A4(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24ED846E0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_24ED8AB7C();
      goto LABEL_12;
    }

    sub_24ED8E97C(v6 + 1);
  }

  v8 = *v3;
  sub_24F92D068();
  sub_24EDC9B90(v19, result);
  v9 = sub_24F92D0B8();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21E480, &unk_24F944D20);

      v13 = sub_24EDD4478(v12, result);

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v18;
  *(*v18 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = result;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_24F92CF78();
  __break(1u);
}

void sub_24ED89330(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_24ED84E4C(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_24ED8B048(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_24ED8F028(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = sub_24F92C3F8();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_24E69A5C4(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_24F92C408();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_24F92CF78();
  __break(1u);
}

uint64_t sub_24ED894C0(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_24F92AA48();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
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
    sub_24ED84ADC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_24ED8AE10(MEMORY[0x277D224C0], &qword_27F22F068, &qword_24F99BB00);
      goto LABEL_12;
    }

    sub_24ED8ED0C(v11 + 1);
  }

  v13 = *v3;
  sub_24ED8F50C(&qword_27F21BCA0, MEMORY[0x277D224C0], MEMORY[0x277D224D0]);
  v14 = sub_24F92AEE8();
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
      sub_24ED8F50C(&qword_27F21BCA8, MEMORY[0x277D224C0], MEMORY[0x277D224D8]);
      v22 = sub_24F92AFF8();
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
  result = sub_24F92CF78();
  __break(1u);
  return result;
}

void sub_24ED89788(uint64_t result, unint64_t a2, char a3)
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
    sub_24ED8506C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_24ED8A80C(&qword_27F21E590, &qword_24F95C788);
      a2 = v7;
      goto LABEL_12;
    }

    sub_24ED8F234(v5 + 1);
  }

  v8 = *v3;
  sub_24F92D068();
  MEMORY[0x253052A00](v4 & 1);
  v9 = sub_24F92D0B8();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != (v4 & 1))
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4 & 1;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_24F92CF78();
  __break(1u);
}

void sub_24ED898F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E558, &qword_24F95C760);
  v2 = *v0;
  v3 = sub_24F92C808();
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

void sub_24ED89A4C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5F8, &qword_24F95C7F0);
  v2 = *v0;
  v3 = sub_24F92C808();
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
        v17 = (v14 | (v8 << 6)) << 6;
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[3];
        v27[2] = v18[2];
        v27[3] = v21;
        v27[0] = v20;
        v27[1] = v19;
        v22 = (*(v4 + 48) + v17);
        v23 = *v18;
        v24 = v18[1];
        v25 = v18[3];
        v22[2] = v18[2];
        v22[3] = v25;
        *v22 = v23;
        v22[1] = v24;
        sub_24E8056D8(v27, &v26);
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

void sub_24ED89BD0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F108, &qword_24F99BB70);
  v2 = *v0;
  v3 = sub_24F92C808();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
LABEL_11:
      v11 &= v11 - 1;
    }

    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        goto LABEL_17;
      }

      v11 = *(v2 + 56 + 8 * v13);
      ++v8;
      if (v11)
      {
        v8 = v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v4;
  }
}

void sub_24ED89CDC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F100, &qword_24F99BB68);
  v2 = *v0;
  v3 = sub_24F92C808();
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
}

void sub_24ED89E1C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F050, &qword_24F99BAF0);
  v2 = *v0;
  v3 = sub_24F92C808();
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
        v17 = 72 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = v18[1];
        v19 = v18[2];
        v21 = v18[3];
        v24 = *(v18 + 32);
        v23[3] = v21;
        v23[0] = *v18;
        v23[1] = v20;
        v23[2] = v19;
        memmove((*(v4 + 48) + v17), v18, 0x42uLL);
        sub_24E627A14(v23, v22);
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

void sub_24ED89FAC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5B8, &qword_24F95C7A0);
  v2 = *v0;
  v3 = sub_24F92C808();
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
        sub_24E65864C(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
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

void sub_24ED8A138()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E560, &qword_24F95C768);
  v2 = *v0;
  v3 = sub_24F92C808();
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

void sub_24ED8A294()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F110, &qword_24F99BB78);
  v2 = *v0;
  v3 = sub_24F92C808();
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
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        sub_24E8E2880(v18, *(&v18 + 1));
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

void sub_24ED8A3F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E598, &qword_24F95C790);
  v2 = *v0;
  v3 = sub_24F92C808();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = v18;
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

void sub_24ED8A554()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F130, &qword_24F99BB90);
  v2 = *v0;
  v3 = sub_24F92C808();
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
}

void sub_24ED8A694()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F0F0, &qword_24F99BB58);
  v2 = *v0;
  v3 = sub_24F92C808();
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
        sub_24E772724(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
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

void sub_24ED8A80C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_24F92C808();
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
}

void sub_24ED8A93C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213980, &qword_24F93B520);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F0B8, &qword_24F99BB28);
  v6 = *v0;
  v7 = sub_24F92C808();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    v24 = v3 + 16;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
      (*(v3 + 32))(*(v8 + 48) + v20, v5, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }
}

void sub_24ED8AB7C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F128, &qword_24F99BB88);
  v2 = *v0;
  v3 = sub_24F92C808();
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

void sub_24ED8ACE0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_24F92C808();
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
}

void sub_24ED8AE10(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v3;
  v12 = sub_24F92C808();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    v14 = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || v14 >= v11 + 56 + 8 * v15)
    {
      memmove(v14, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    v29 = v8 + 16;
    while (v20)
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
      (*(v8 + 32))(*(v13 + 48) + v25, v10, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }
}

void sub_24ED8B048(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_24F92C808();
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
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        v21 = v20;
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

void sub_24ED8B188(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E558, &qword_24F95C760);
  v4 = sub_24F92C818();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_24F92D068();

      sub_24F92B218();
      v20 = sub_24F92D0B8();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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
}

void sub_24ED8B3C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5F8, &qword_24F95C7F0);
  v4 = sub_24F92C818();
  v5 = v4;
  if (!*(v3 + 16))
  {

LABEL_34:
    *v2 = v5;
    return;
  }

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
  v11 = v4 + 56;
  while (v9)
  {
    v17 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_15:
    v20 = (*(v3 + 48) + ((v17 | (v6 << 6)) << 6));
    v22 = *v20;
    v21 = v20[1];
    v23 = v20[3];
    v36 = v20[2];
    v37 = v23;
    v34 = v22;
    v35 = v21;
    sub_24F92D068();
    if (*(&v34 + 1))
    {
      sub_24F92D088();
      sub_24E8056D8(&v34, v33);
      sub_24F92B218();
    }

    else
    {
      sub_24F92D088();
      sub_24E8056D8(&v34, v33);
    }

    v24 = *(&v36 + 1);
    sub_24F92B218();
    if (v24)
    {
      sub_24F92D088();
      sub_24F92B218();
      if (*(&v37 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_24F92D088();
      if (*(&v37 + 1))
      {
LABEL_20:
        sub_24F92D088();
        sub_24F92B218();
        goto LABEL_23;
      }
    }

    sub_24F92D088();
LABEL_23:
    v25 = sub_24F92D0B8();
    v26 = -1 << *(v5 + 32);
    v27 = v25 & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v11 + 8 * (v27 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v26) >> 6;
      while (++v28 != v30 || (v29 & 1) == 0)
      {
        v31 = v28 == v30;
        if (v28 == v30)
        {
          v28 = 0;
        }

        v29 |= v31;
        v32 = *(v11 + 8 * v28);
        if (v32 != -1)
        {
          v12 = __clz(__rbit64(~v32)) + (v28 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_36;
    }

    v12 = __clz(__rbit64((-1 << v27) & ~*(v11 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
    v13 = (*(v5 + 48) + (v12 << 6));
    v14 = v34;
    v15 = v35;
    v16 = v37;
    v13[2] = v36;
    v13[3] = v16;
    *v13 = v14;
    v13[1] = v15;
    ++*(v5 + 16);
  }

  v18 = v6;
  while (1)
  {
    v6 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v6 >= v10)
    {

      v2 = v1;
      goto LABEL_34;
    }

    v19 = *(v3 + 56 + 8 * v6);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v9 = (v19 - 1) & v19;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

void sub_24ED8B6D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F120, &qword_24F99BB80);
  v4 = sub_24F92C818();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_24F92D068();
      sub_24F92B218();

      v17 = sub_24F92D0B8();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
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
}

void sub_24ED8B934(uint64_t a1)
{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F108, &qword_24F99BB70);
  v3 = sub_24F92C818();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = v3 + 56;
    while (v8)
    {
LABEL_13:
      sub_24F92D068();
      sub_24F92B218();
      v13 = sub_24F92D0B8();
      v14 = -1 << *(v4 + 32);
      v15 = v13 & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v10 + 8 * (v15 >> 6))) == 0)
      {
        v17 = 0;
        v18 = (63 - v14) >> 6;
        while (++v16 != v18 || (v17 & 1) == 0)
        {
          v19 = v16 == v18;
          if (v16 == v18)
          {
            v16 = 0;
          }

          v17 |= v19;
          v20 = *(v10 + 8 * v16);
          if (v20 != -1)
          {
            v11 = __clz(__rbit64(~v20)) + (v16 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_24;
      }

      v11 = __clz(__rbit64((-1 << v15) & ~*(v10 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v8 &= v8 - 1;
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      ++*(v4 + 16);
    }

    while (1)
    {
      v12 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
        goto LABEL_22;
      }

      v8 = *(v2 + 56 + 8 * v12);
      ++v5;
      if (v8)
      {
        v5 = v12;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_22:

    *v1 = v4;
  }
}

void sub_24ED8BB20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F118, &unk_24FA292D0);
  v4 = sub_24F92C818();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_24F92D068();
      sub_24F92B218();

      v17 = sub_24F92D0B8();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
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
}

void sub_24ED8BD6C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F100, &qword_24F99BB68);
  v4 = sub_24F92C818();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_24F92D068();
      MEMORY[0x253052A00](v16);
      v17 = sub_24F92D0B8();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
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
}

void sub_24ED8BF8C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F0E8, &qword_24F99BB50);
  v4 = sub_24F92C818();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_24F92D068();
      sub_24F92B218();

      v17 = sub_24F92D0B8();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
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
}

void sub_24ED8C214(uint64_t a1)
{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F050, &qword_24F99BAF0);
  v3 = sub_24F92C818();
  if (*(v2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(v2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v2 + 56);
    for (i = (v5 + 63) >> 6; v7; ++*(v3 + 16))
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(v2 + 48) + 72 * (v9 | (v4 << 6));
      v14 = *(v12 + 32);
      v13 = *(v12 + 48);
      v15 = *(v12 + 16);
      v34 = *(v12 + 64);
      v32 = v14;
      v33 = v13;
      v30 = *v12;
      v31 = v15;
      v16 = *(v12 + 48);
      v27 = *(v12 + 32);
      v28 = v16;
      v29 = *(v12 + 64);
      v17 = *(v12 + 16);
      v25 = *v12;
      v26 = v17;
      sub_24F92D068();
      sub_24E627A14(&v30, &v23);
      GameActivityDraftPlayerInfo.hash(into:)(v24);
      sub_24F92D0B8();
      v18 = sub_24F92C6D8();
      *(v3 + 56 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = *(v3 + 48) + 72 * v18;
      *v19 = v30;
      v20 = v31;
      v21 = v32;
      v22 = v33;
      *(v19 + 64) = v34;
      *(v19 + 32) = v21;
      *(v19 + 48) = v22;
      *(v19 + 16) = v20;
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= i)
      {
        goto LABEL_14;
      }

      v11 = *(v2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    *v1 = v3;
  }
}

void sub_24ED8C418(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5B8, &qword_24F95C7A0);
  v4 = sub_24F92C818();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      sub_24E65864C(*(v3 + 48) + 40 * (v16 | (v6 << 6)), v27);
      v19 = sub_24F92C7B8();
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
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
      v13 = *(v5 + 48) + 40 * v12;
      v14 = v27[0];
      v15 = v27[1];
      *(v13 + 32) = v28;
      *v13 = v14;
      *(v13 + 16) = v15;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
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
}

void sub_24ED8C644(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F058, &unk_24FA29070);
  v4 = sub_24F92C818();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_24F92D068();
      sub_24F92B218();

      v17 = sub_24F92D0B8();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
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
}

void sub_24ED8C8D4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void *))
{
  v5 = v4;
  v6 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = sub_24F92C818();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v7 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v6 + 48) + (v16 | (v9 << 6)));
      v20 = sub_24F92D068();
      a4(v20);
      sub_24F92B218();

      v21 = sub_24F92D0B8();
      v22 = -1 << *(v8 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + v15) = v19;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v5 = v4;
        goto LABEL_26;
      }

      v18 = *(v6 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v5 = v8;
  }
}

void sub_24ED8CB18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E560, &qword_24F95C768);
  v4 = sub_24F92C818();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_24F92D068();

      sub_24F92B218();
      v20 = sub_24F92D0B8();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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
}

void sub_24ED8CD50(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F110, &qword_24F99BB78);
  v4 = sub_24F92C818();
  v5 = v4;
  if (*(v3 + 16))
  {
    v29 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v19 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v22 = (*(v3 + 48) + 16 * (v19 | (v6 << 6)));
      v24 = *v22;
      v23 = v22[1];
      sub_24F92D068();
      sub_24E8E2880(v24, v23);
      sub_24E8E2880(v24, v23);
      sub_24F92B218();

      v13 = sub_24F92D0B8();
      v14 = -1 << *(v5 + 32);
      v15 = v13 & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v12 + 8 * (v15 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v14) >> 6;
        while (++v16 != v26 || (v25 & 1) == 0)
        {
          v27 = v16 == v26;
          if (v16 == v26)
          {
            v16 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v16);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v16 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v12 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v5 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v23;
      ++*(v5 + 16);
      v3 = v29;
    }

    v20 = v6;
    while (1)
    {
      v6 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v21 = *(v7 + 8 * v6);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v10 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }
}

void sub_24ED8D114(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E598, &qword_24F95C790);
  v4 = sub_24F92C818();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_24F92B0D8();
      sub_24F92D068();
      v18 = v17;
      sub_24F92B218();
      v19 = sub_24F92D0B8();

      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v18;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v27;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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
}

void sub_24ED8D368(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F130, &qword_24F99BB90);
  v4 = sub_24F92C818();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 4 * (v13 | (v6 << 6)));
      v17 = MEMORY[0x2530529D0](*(v5 + 40), v16, 4);
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
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
}

void sub_24ED8D55C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F0F0, &qword_24F99BB58);
  v4 = sub_24F92C818();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      sub_24E772724(*(v3 + 48) + 40 * (v16 | (v6 << 6)), v27);
      sub_24F92D068();
      _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
      v19 = sub_24F92D0B8();
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
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
      v13 = *(v5 + 48) + 40 * v12;
      v14 = v27[0];
      v15 = v27[1];
      *(v13 + 32) = v28;
      *v13 = v14;
      *(v13 + 16) = v15;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
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
}

void sub_24ED8D79C(uint64_t a1)
{
  v2 = v1;
  v34 = sub_24F927D58();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E528, &qword_24F95C750);
  v7 = sub_24F92C818();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_24ED8F50C(&qword_27F21E530, MEMORY[0x277CEC160], MEMORY[0x277CEC168]);
      v21 = sub_24F92AEE8();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
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
    *v2 = v7;
  }
}

void sub_24ED8DAB8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F0E0, &qword_24F99BB48);
  v4 = sub_24F92C818();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_17:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      sub_24F92D068();
      sub_24F92B218();

      v12 = sub_24F92D0B8();
      v13 = -1 << *(v5 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v11 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v11 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v19 = *(v3 + 56 + 8 * v6);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v9 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }
}

void sub_24ED8DE04(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F0D8, &qword_24F99BB40);
  v4 = sub_24F92C818();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_24F92D068();
      MEMORY[0x253052A00](v16);
      v17 = sub_24F92D0B8();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
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
}

void sub_24ED8E024(uint64_t a1)
{
  v2 = v1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213980, &qword_24F93B520);
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v29 - v4;
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F0B8, &qword_24F99BB28);
  v7 = sub_24F92C818();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_24E602068(&qword_27F22F0A8, &qword_27F213980, &qword_24F93B520, MEMORY[0x277D0D508]);
      v21 = sub_24F92AEE8();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
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
    *v2 = v7;
  }
}

void sub_24ED8E344(uint64_t a1)
{
  v2 = v1;
  v34 = sub_24F92A278();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F090, &qword_24F99BB10);
  v7 = sub_24F92C818();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_24ED8F50C(&qword_27F22F080, MEMORY[0x277D22300], MEMORY[0x277D22308]);
      v21 = sub_24F92AEE8();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
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
    *v2 = v7;
  }
}

void sub_24ED8E660(uint64_t a1)
{
  v2 = v1;
  v34 = sub_24F92A2C8();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5C0, &qword_24F95C7A8);
  v7 = sub_24F92C818();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_24ED8F50C(&qword_27F21E5C8, MEMORY[0x277D22320], MEMORY[0x277D22328]);
      v21 = sub_24F92AEE8();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
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
    *v2 = v7;
  }
}

void sub_24ED8E97C(uint64_t a1)
{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F128, &qword_24F99BB88);
  v3 = sub_24F92C818();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    for (i = v3 + 56; v8; ++*(v4 + 16))
    {
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v14 = *(*(v2 + 48) + 8 * (v11 | (v5 << 6)));
      sub_24F92D068();

      sub_24EDC9B90(v16, v14);
      sub_24F92D0B8();
      v15 = sub_24F92C6D8();
      *(i + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v4 + 48) + 8 * v15) = v14;
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_14;
      }

      v13 = *(v2 + 56 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v8 = (v13 - 1) & v13;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    *v1 = v4;
  }
}

void sub_24ED8EB24(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_24F92C818();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      v19 = sub_24F92D058();
      v20 = -1 << *(v7 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_24;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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

    *v4 = v7;
  }
}

void sub_24ED8ED0C(uint64_t a1)
{
  v2 = v1;
  v34 = sub_24F92AA48();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F068, &qword_24F99BB00);
  v7 = sub_24F92C818();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_24ED8F50C(&qword_27F21BCA0, MEMORY[0x277D224C0], MEMORY[0x277D224D0]);
      v21 = sub_24F92AEE8();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
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
    *v2 = v7;
  }
}

void sub_24ED8F028(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_24F92C818();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      v19 = sub_24F92C3F8();
      v20 = -1 << *(v7 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v27;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v4 = v7;
  }
}

void sub_24ED8F234(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E590, &qword_24F95C788);
  v4 = sub_24F92C818();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_24F92D068();
      MEMORY[0x253052A00](v16);
      v17 = sub_24F92D0B8();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
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
}

id sub_24ED8F454(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_24ED8F464(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_24ED8F474(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_24E612C80(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_24ED8F50C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24ED8F56C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9479A0;
  *(inited + 32) = 0x444965676170;
  v11 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v11;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 88) = 0x6974736567677573;
  *(inited + 96) = 0xEB00000000736E6FLL;
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F158, &qword_24F99BCC0);
  v12 = MEMORY[0x277D22590];
  v13 = sub_24ED8FC54(&qword_27F22F170, &qword_27F22F178, &protocol conformance descriptor for FriendSuggestion, MEMORY[0x277D22590]);
  *(inited + 104) = a3;
  *(inited + 136) = v13;
  *(inited + 144) = 0x69766E49746E6573;
  *(inited + 152) = 0xEF736E6F69746174;
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  *(inited + 192) = sub_24E61B71C(&qword_27F213798, v11, v12);
  *(inited + 160) = a4;

  v14 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v15 = sub_24E80FFAC(v14);

  a5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a5[4] = result;
  *a5 = v15;
  return result;
}

uint64_t sub_24ED8F78C()
{
  v1 = 0x6974736567677573;
  if (*v0 != 1)
  {
    v1 = 0x69766E49746E6573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x444965676170;
  }
}

uint64_t sub_24ED8F7F8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24ED8FE38(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24ED8F820(uint64_t a1)
{
  v2 = sub_24ED8FC00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ED8F85C(uint64_t a1)
{
  v2 = sub_24ED8FC00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ED8F8B8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_24ED8F908(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_24ED8F908(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F148, &qword_24F99BCB8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ED8FC00();
  sub_24F92D108();
  if (!v1)
  {
    LOBYTE(v11) = 0;
    v7 = sub_24F92CC28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F158, &qword_24F99BCC0);
    v10 = 1;
    sub_24ED8FC54(&qword_27F22F160, &qword_27F22F168, &protocol conformance descriptor for FriendSuggestion, MEMORY[0x277D83978]);
    sub_24F92CC68();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
    v10 = 2;
    sub_24E61B71C(&qword_27F216420, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    v9 = 0;
    sub_24F92CC68();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_24ED8FC00()
{
  result = qword_27F22F150;
  if (!qword_27F22F150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F150);
  }

  return result;
}

uint64_t sub_24ED8FC54(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F158, &qword_24F99BCC0);
    sub_24ED8FCDC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24ED8FCDC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FriendSuggestion(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24ED8FD34()
{
  result = qword_27F22F180;
  if (!qword_27F22F180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F180);
  }

  return result;
}

unint64_t sub_24ED8FD8C()
{
  result = qword_27F22F188;
  if (!qword_27F22F188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F188);
  }

  return result;
}

unint64_t sub_24ED8FDE4()
{
  result = qword_27F22F190;
  if (!qword_27F22F190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F190);
  }

  return result;
}

uint64_t sub_24ED8FE38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974736567677573 && a2 == 0xEB00000000736E6FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69766E49746E6573 && a2 == 0xEF736E6F69746174)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24ED8FF68@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>, double a9@<D5>, double a10@<D6>, float64_t a11@<D7>, double a12, float64_t a13)
{
  v29 = a10;
  v30 = a11;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680, &unk_24F981ED0);
  v23 = v22 - 8;
  MEMORY[0x28223BE20](v22);
  v25 = &v28 - v24;
  sub_24E60169C(a1, &v28 - v24, &unk_27F23A690, &qword_24F982880);
  sub_24E60169C(a2, &v25[*(v23 + 56)], &unk_27F23A690, &qword_24F982880);
  if (a4 > 1580.0)
  {
    a4 = 1580.0;
  }

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  sub_24F928A48();

  v31[0] = (v31[1] & 1) == 0;
  sub_24ECE74B4(0.0);
  PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)(0x6F43656C676E6973, 0xEC0000006E6D756CLL, v31, 0, v26, a3, a4, a5, a6, a7, a8, a9, v29, v30, a12, a13);
  return sub_24E601704(v25, &unk_27F23A680, &unk_24F981ED0);
}

uint64_t sub_24ED9015C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>, double a10@<D5>, double a11@<D6>, float64_t a12@<D7>, double a13, float64_t a14)
{
  v37 = a11;
  v38 = a12;
  v35[1] = a1;
  v36 = a4;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680, &unk_24F981ED0);
  v23 = v22 - 8;
  MEMORY[0x28223BE20](v22);
  v25 = v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v35 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = v35 - v30;
  sub_24E60169C(a2, v35 - v30, &unk_27F23A690, &qword_24F982880);
  sub_24E60169C(a3, &v31[*(v23 + 56)], &unk_27F23A690, &qword_24F982880);
  sub_24E60169C(v31, v28, &unk_27F23A680, &unk_24F981ED0);
  v32 = *(v23 + 56);
  sub_24E60169C(v28, v25, &unk_27F23A690, &qword_24F982880);
  sub_24E60169C(&v28[v32], &v25[*(v23 + 56)], &unk_27F23A690, &qword_24F982880);
  if (a5 > 1580.0)
  {
    a5 = 1580.0;
  }

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  sub_24F928A48();

  v39[0] = (v39[1] & 1) == 0;
  sub_24ECE74B4(0.0);
  PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)(0x6F43656C676E6973, 0xEC0000006E6D756CLL, v39, 0, v33, v36, a5, a6, a7, a8, a9, a10, v37, v38, a13, a14);
  sub_24E601704(v25, &unk_27F23A680, &unk_24F981ED0);
  sub_24E601704(v31, &unk_27F23A680, &unk_24F981ED0);
  sub_24E601704(&v28[v32], &unk_27F23A690, &qword_24F982880);
  return sub_24E601704(v28, &unk_27F23A690, &qword_24F982880);
}

double sub_24ED9042C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680, &unk_24F981ED0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  sub_24E60169C(a2, &v10 - v7, &unk_27F23A690, &qword_24F982880);
  sub_24E60169C(a3, &v8[*(v6 + 56)], &unk_27F23A690, &qword_24F982880);
  sub_24E601704(v8, &unk_27F23A680, &unk_24F981ED0);
  return 20.0;
}

uint64_t sub_24ED90514@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_24E74EC40();
  result = sub_24F92BEF8();
  v4 = MEMORY[0x277D225C0];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = result;
  return result;
}

void *DiffablePageContentPresenter.init(objectGraph:pageUrl:sidePackedPage:pageProvider:pageModifier:shelfProvider:moreOfPageProvider:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = v13;
  v15 = *v13;
  *(v14 + qword_27F22F198) = 0;
  v16 = MEMORY[0x277D84F90];
  *(v14 + qword_27F22F1A0) = MEMORY[0x277D84F90];
  v17 = qword_27F39C780;
  *(v14 + v17) = sub_24E60986C(v16);
  v50 = (v14 + qword_27F22F1A8);
  *v50 = 0;
  v50[1] = 0;
  v18 = (v14 + qword_27F22F1B0);
  *v18 = 0;
  v18[1] = 0;
  v52 = v18;
  v19 = (v14 + qword_27F22F1B8);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v14 + qword_27F22F1C0);
  *v20 = 0;
  v20[1] = 0;
  v51 = v20;
  v21 = (v14 + qword_27F22F1C8);
  *v21 = 0;
  v21[1] = 0;
  v53 = v21;
  v22 = (v14 + qword_27F39C788);
  *v22 = 0u;
  v22[1] = 0u;
  *(v22 + 25) = 0u;
  *(v14 + qword_27F39C790) = 0;
  *(v14 + qword_27F22F1D0) = 0;
  *(v14 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v14 + qword_27F39C798) = 0;
  v23 = qword_27F39C7A0;
  v25 = v15[11];
  v26 = v15[12];
  v27 = v15[13];
  v28 = v15[14];
  v62 = v15[10];
  v24 = v62;
  v63 = v25;
  v64 = v26;
  v65 = v27;
  v66 = v28;
  type metadata accessor for DiffablePageContentPresenter.PageFetchResult(255, &v62);
  sub_24F92ADB8();
  *(v14 + v23) = sub_24F92AD98();
  v29 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8, &unk_24F96A5F0);
  swift_allocObject();
  *(v14 + v29) = sub_24F92ADA8();
  v30 = qword_27F39C7B0;
  v62 = v24;
  v63 = v25;
  v64 = v26;
  v65 = v27;
  v66 = v28;
  type metadata accessor for DiffablePageContentPresenter.IncompleteShelfFetchResult(255, &v62);
  sub_24F92ADB8();
  *(v14 + v30) = sub_24F92AD98();
  v31 = qword_27F39C7B8;
  *(v14 + v31) = sub_24F92AD98();
  v32 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
  swift_allocObject();
  *(v14 + v32) = sub_24F92ADA8();
  v33 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0, &unk_24F989C70);
  swift_allocObject();
  *(v14 + v33) = sub_24F92ADA8();
  v34 = qword_27F22F1E0;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8, &unk_24F96A610);
  v36 = *(*(v35 - 8) + 56);
  v36(v14 + v34, 1, 1, v35);
  v36(v14 + qword_27F22F1E8, 1, 1, v35);
  v14[2] = a1;
  sub_24E911D90(a2, v14 + qword_27F39C7D0);
  v37 = *v50;
  v38 = v50[1];
  *v50 = a4;
  v50[1] = a5;
  sub_24E824448(v37, v38);
  v39 = *v19;
  v40 = v19[1];
  *v19 = a6;
  v19[1] = a7;
  sub_24E824448(v39, v40);
  if (a3)
  {
    v41 = swift_allocObject();
    v41[2] = v24;
    v41[3] = v25;
    v41[4] = v26;
    v41[5] = v27;
    v41[6] = v28;
    v41[7] = a3;
    v42 = sub_24ED95860;
  }

  else
  {
    v42 = 0;
    v41 = 0;
  }

  v44 = *v52;
  v43 = v52[1];
  *v52 = v42;
  v52[1] = v41;
  sub_24E824448(v44, v43);
  v45 = *v51;
  v46 = v51[1];
  *v51 = a8;
  v51[1] = a9;
  sub_24E824448(v45, v46);
  v47 = *v53;
  v48 = v53[1];
  *v53 = a10;
  v53[1] = a11;
  sub_24E824448(v47, v48);
  *(v14 + qword_27F22F1F0) = a12;
  *(v14 + qword_27F39C7D8) = a13;
  return v14;
}

uint64_t DiffablePageContentPresenter.deinit()
{

  sub_24E601704(v0 + qword_27F39C7D0, &qword_27F228530, &unk_24F93C6E0);
  swift_unknownObjectRelease();

  sub_24E824448(*(v0 + qword_27F22F1A8), *(v0 + qword_27F22F1A8 + 8));
  sub_24E824448(*(v0 + qword_27F22F1B0), *(v0 + qword_27F22F1B0 + 8));
  sub_24E824448(*(v0 + qword_27F22F1B8), *(v0 + qword_27F22F1B8 + 8));
  sub_24E824448(*(v0 + qword_27F22F1C0), *(v0 + qword_27F22F1C0 + 8));
  sub_24E824448(*(v0 + qword_27F22F1C8), *(v0 + qword_27F22F1C8 + 8));

  sub_24E94E128(v0 + qword_27F39C788);

  sub_24E601704(v0 + qword_27F22F1E0, &qword_27F2226F0, &unk_24F96A670);
  sub_24E601704(v0 + qword_27F22F1E8, &qword_27F2226F0, &unk_24F96A670);
  return v0;
}

uint64_t sub_24ED90B7C()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v4, v0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = NSStringFromClass(ObjCClassFromMetadata);
  sub_24F92B0D8();

  return sub_24F92AAD8();
}

uint64_t sub_24ED90CF4(uint64_t a1)
{
  v3 = qword_27F39C780;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_24ED90D4C()
{
  v1 = v0;
  v2 = *(v0 + qword_27F22F1A0);
  v3 = MEMORY[0x277D84F90];
  v12 = MEMORY[0x277D84F90];
  v4 = *(v2 + 16);

  if (v4)
  {
    v5 = 0;
    do
    {
      v6 = v2 + 32 + 40 * v5;
      v7 = v5;
      while (1)
      {
        if (v7 >= *(v2 + 16))
        {
          __break(1u);

          sub_24E6585F8(v11);

          __break(1u);
          return result;
        }

        sub_24E65864C(v6, v11);
        sub_24ED93060(v11, v1, &v10);
        v8 = sub_24E6585F8(v11);
        if (v10)
        {
          break;
        }

        ++v7;
        v6 += 40;
        if (v4 == v7)
        {
          goto LABEL_11;
        }
      }

      MEMORY[0x253050F00](v8);
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      v5 = v7 + 1;
      sub_24F92B638();
      v3 = v12;
    }

    while (v4 - 1 != v7);
  }

LABEL_11:

  return v3;
}

double sub_24ED90EC4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_27F22F1B0);
  v4 = *(v2 + qword_27F22F1B0);
  v5 = *(v2 + qword_27F22F1B0 + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_24E824448(v4, v5);
}

uint64_t sub_24ED90EE4@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_27F39C788;
  swift_beginAccess();
  return sub_24E9B7D88(v1 + v3, a1);
}

uint64_t sub_24ED90F3C(uint64_t a1)
{
  v3 = qword_27F39C788;
  swift_beginAccess();
  sub_24EBD46D4(a1, v1 + v3);
  swift_endAccess();
  sub_24ED93120();
  return sub_24E94E128(a1);
}

void sub_24ED90FC8(char a1)
{
  v2 = *(v1 + qword_27F22F1D0);
  *(v1 + qword_27F22F1D0) = a1;
  sub_24ED93194(v2);
}

void *sub_24ED90FE0()
{
  v0 = sub_24ED959BC();
  v1 = v0;
  return v0;
}

void sub_24ED9100C(uint64_t a1)
{
  v3 = qword_27F39C798;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_24ED910C4(__n128 a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_24F92A088();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + qword_27F22F1A8);
  if (v9)
  {
    v39 = v6;
    v10 = *(v1 + qword_27F22F1A8 + 8);
    v11 = *(v1 + qword_27F22F1F0);
    if (v11)
    {
      sub_24E5FCA4C(v9, *(v1 + qword_27F22F1A8 + 8));
      if (qword_27F210788 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v12 = qword_27F230F98;
      v13 = v11 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_requestedTime;
      swift_beginAccess();
      *v13 = v12;
      *(v13 + 8) = 0;
      v14 = *(v11 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequestedTime);
      swift_beginAccess();
      *(v14 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }
    }

    else
    {
      sub_24E5FCA4C(v9, *(v1 + qword_27F22F1A8 + 8));
    }

    v15 = sub_24ED91578();
    if ((*(v2 + qword_27F39C790) & 1) != 0 || (v15 & 1) == 0)
    {
      sub_24E824448(v9, v10);
    }

    else
    {
      *(v2 + qword_27F39C790) = 1;
      v16 = v9(v2 + qword_27F39C7D0);
      if (v11)
      {
        v17 = *(v11 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
        swift_beginAccess();
        v18 = *(v17 + 48);
        v19 = __OFADD__(v18, 1);
        v20 = v18 + 1;
        if (v19)
        {
          __break(1u);
          return;
        }

        *(v17 + 48) = v20;
        v21 = v20 == 0;
        swift_beginAccess();
        *(v17 + 40) = v21;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_24EA6BFA0();
        }
      }

      v37 = v16;
      v38 = v10;
      if (*(v2 + qword_27F39C7D8))
      {
        *v8 = 1;
        v22 = v39;
        (*(v5 + 104))(v8, *MEMORY[0x277D222A0], v39);
        sub_24F92A0D8();
        (*(v5 + 8))(v8, v22);
      }

      v23 = swift_allocObject();
      swift_weakInit();
      v24 = swift_allocObject();
      v25 = swift_allocObject();
      v26 = v3[10];
      v24[2] = v26;
      v27 = v3[11];
      v24[3] = v27;
      v28 = v3[12];
      v24[4] = v28;
      v29 = v3[13];
      v24[5] = v29;
      v30 = v3;
      v31 = v3[14];
      v24[6] = v31;
      v24[7] = v23;
      v24[8] = v30;
      swift_weakInit();
      v32 = swift_allocObject();
      *&v33 = v26;
      *(&v33 + 1) = v27;
      *&v34 = v28;
      *(&v34 + 1) = v29;
      *(v32 + 16) = v33;
      *(v32 + 32) = v34;
      *(v32 + 48) = v31;
      *(v32 + 56) = v25;
      v35 = sub_24E74EC40();

      v36 = sub_24F92BEF8();
      v40[3] = v35;
      v40[4] = MEMORY[0x277D225C0];
      v40[0] = v36;
      sub_24F92A958();
      sub_24E824448(v9, v38);

      __swift_destroy_boxed_opaque_existential_1(v40);
    }
  }
}

uint64_t sub_24ED91578()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_24F92A078();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F92A088();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + qword_27F22F1B0);
  if (!v12)
  {
    v20 = 0;
    v21 = (v1 + qword_27F22F1B0);
LABEL_25:
    v46 = v21[1];
    *v21 = 0;
    v21[1] = 0;
    sub_24E824448(v20, v46);
    v29 = 1;
    return v29 & 1;
  }

  v53 = v9;
  v54 = v6;
  v13 = *(v1 + qword_27F22F1B0 + 8);
  v14 = sub_24E5FCA4C(v12, v13);
  v15 = v12(v14);
  sub_24E824448(v12, v13);
  if (!v15)
  {
    v20 = *(v1 + qword_27F22F1B0);
    v21 = (v1 + qword_27F22F1B0);
    goto LABEL_25;
  }

  v50 = v4;
  v51 = v3;
  v16 = *(v1 + qword_27F22F1B8);
  if (v16)
  {
    v17 = *(v1 + qword_27F22F1B8 + 8);
    sub_24E5FCA4C(*(v1 + qword_27F22F1B8), v17);
    v18 = v16(v15);
    v19.n128_f64[0] = sub_24E824448(v16, v17);
  }

  else
  {
    swift_unknownObjectRetain();
    v18 = v15;
  }

  v22 = *(v2 + 96);
  v23 = *(v22 + 8);
  v52 = v2;
  v24 = *(v2 + 80);
  v25 = *(v23(v24, v22, v19) + 16);

  if (!v25)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v21 = (v1 + qword_27F22F1B0);
    v20 = *(v1 + qword_27F22F1B0);
    goto LABEL_25;
  }

  *(v1 + qword_27F22F198) = v18;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(v1 + qword_27F22F1A0) = (v23)(v24, v22);

  v26 = *(v22 + 16);
  v49 = v22 + 16;
  v48 = v26;
  v27 = v26(v24, v22);
  v28 = qword_27F39C780;
  swift_beginAccess();
  *(v1 + v28) = v27;

  v29 = (*(v22 + 24))(v24, v22);
  if (v29)
  {
LABEL_17:
    swift_unknownObjectRetain();
    v38 = sub_24ED90D4C();
    v56 = v18;
    v57 = v38;
    v58 = v29 & 1;
    sub_24F92AD88();
    sub_24ED96264(v56, v57, v58);
    if (v29)
    {
      goto LABEL_22;
    }

    v39 = v48(v24, v22);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F4B8, &unk_24F99C1D0);
    v60 = sub_24E602068(&qword_27F22F4C0, &qword_27F22F4B8, &unk_24F99C1D0, MEMORY[0x277D83488]);
    v56 = v39;
    LOBYTE(v55) = 0;
    sub_24ED91BFC(&v56, &v55);
    __swift_destroy_boxed_opaque_existential_1(&v56);
    if (*(v1 + qword_27F22F1F0))
    {
      sub_24ED6F318();
    }

    if (!*(v1 + qword_27F39C7D8))
    {
LABEL_22:
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      v56 = v18;
      v40 = v54;
      sub_24F92AD48();
      v41 = v50;
      v42 = v51;
      (*(v50 + 104))(v40, *MEMORY[0x277D22290], v51);
      sub_24F92A0C8();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      (*(v41 + 8))(v40, v42);
    }

    v43 = (v1 + qword_27F22F1B0);
    v44 = *(v1 + qword_27F22F1B0);
    v45 = *(v1 + qword_27F22F1B0 + 8);
    *v43 = 0;
    v43[1] = 0;
    sub_24E824448(v44, v45);
    return v29 & 1;
  }

  v30 = *(v1 + qword_27F22F1F0);
  if (!v30)
  {
LABEL_14:
    if (*(v1 + qword_27F39C7D8))
    {
      *v11 = 1;
      v37 = v53;
      (*(v8 + 104))(v11, *MEMORY[0x277D222A0], v53);
      sub_24F92A0D8();
      (*(v8 + 8))(v11, v37);
    }

    v55 = v18;
    (*(*(v52 + 88) + 8))(&v56, v24);
    v60 = 0;
    v61 = 0;
    sub_24ED90F3C(&v56);
    goto LABEL_17;
  }

  v31 = *(v30 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
  result = swift_beginAccess();
  v33 = *(v31 + 48);
  v34 = __OFADD__(v33, 1);
  v35 = v33 + 1;
  if (!v34)
  {
    *(v31 + 48) = v35;
    v36 = v35 == 0;
    swift_beginAccess();
    *(v31 + 40) = v36;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_24ED91BFC(void *a1, char *a2)
{
  v3 = *a2;
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (qword_27F2100D8 != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40, &qword_24F97A580);
  __swift_project_value_buffer(v4, qword_27F225388);
  sub_24F928868();

  if (v7 == 2 || (v7 & 1) == 0)
  {
    MEMORY[0x28223BE20](v5);
    v6[16] = v3;
    sub_24ED91D24(a1, sub_24ED962B0, v6);
  }
}

void sub_24ED91D24(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v75 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v63 - v8;
  v74 = sub_24F91F4A8();
  v10 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v73 = &v63 - v14;
  if ((*(v3 + qword_27F39C790) & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    if ((sub_24F92BBE8() & 1) == 0)
    {
      v64 = v12;
      v72 = a3;
      v15 = sub_24E60AABC(MEMORY[0x277D84F90]);
      v87 = v15;
      v16 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v17 = MEMORY[0x28223BE20](v16);
      (*(v19 + 16))(&v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_1(v84);
      sub_24F92B3F8();
      v68 = qword_27F22F1D8;
      __swift_mutable_project_boxed_opaque_existential_1(v84, AssociatedTypeWitness);
      sub_24F92C4D8();
      if (*(&v82 + 1))
      {
        v70 = (v10 + 32);
        v71 = (v10 + 48);
        v69 = (v10 + 8);
        v66 = (v10 + 16);
        v20 = &OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_isStoreRequest;
        v65 = xmmword_24F93DE60;
        v21 = v73;
        v22 = v74;
        while (1)
        {
          v79[0] = v81;
          v79[1] = v82;
          v80 = v83;
          v23 = v20[240];
          swift_beginAccess();
          v24 = *(v4 + v23);
          if (!*(v24 + 16))
          {
            goto LABEL_6;
          }

          v25 = sub_24E76D934(v79);
          if ((v26 & 1) == 0)
          {
            break;
          }

          v27 = *(*(v24 + 56) + 8 * v25);

          sub_24E65864C(v79, v78);
          v75(v27);
          if ((*v71)(v9, 1, v22) != 1)
          {
            (*v70)(v21, v9, v22);
            v28 = qword_27F22F1D8;
            swift_beginAccess();
            v29 = *(v4 + v28);
            if (*(v29 + 16))
            {

              v30 = sub_24F92C7B8();
              v31 = -1 << *(v29 + 32);
              v32 = v30 & ~v31;
              if ((*(v29 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
              {
                v33 = ~v31;
                while (1)
                {
                  sub_24E65864C(*(v29 + 48) + 40 * v32, v77);
                  v34 = MEMORY[0x253052150](v77, v78);
                  sub_24E6585F8(v77);
                  if (v34)
                  {
                    break;
                  }

                  v32 = (v32 + 1) & v33;
                  if (((*(v29 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
                  {
                    goto LABEL_17;
                  }
                }

                v21 = v73;
                v22 = v74;
                (*v69)(v73, v74);
                sub_24E6585F8(v78);
                sub_24E6585F8(v79);
                goto LABEL_24;
              }

LABEL_17:
            }

            v35 = (v27 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup);
            if (v87[2] && (sub_24E76D644(*v35, v35[1]), (v36 & 1) != 0))
            {
              v37 = *v35;
              v38 = v35[1];

              v39 = sub_24F4D6258(v77, v37, v38);
              if (*v40)
              {
                v41 = v40;
                v67 = v39;
                v42 = v64;
                v21 = v73;
                v43 = v74;
                (*v66)(v64, v73, v74);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v76[0] = *v41;
                *v41 = 0x8000000000000000;
                sub_24E81CBE8(v42, v78, isUniquelyReferenced_nonNull_native);
                *v41 = v76[0];

                (v67)(v77, 0);
              }

              else
              {
                (v39)(v77, 0);

                v21 = v73;
                v43 = v74;
              }
            }

            else
            {
              v45 = *v35;
              v46 = v35[1];
              v67 = v45;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F4B0, &unk_24F99C1C0);
              v47 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213100, &qword_24F96AFA0) - 8);
              v48 = (*(*v47 + 80) + 32) & ~*(*v47 + 80);
              v49 = swift_allocObject();
              *(v49 + 16) = v65;
              v50 = v49 + v48;
              v51 = v47[14];
              sub_24E65864C(v78, v50);
              v21 = v73;
              v43 = v74;
              (*v66)((v50 + v51), v73, v74);

              v52 = sub_24E60AAD0(v49);
              swift_setDeallocating();
              sub_24E601704(v50, &qword_27F213100, &qword_24F96AFA0);
              swift_deallocClassInstance();
              v53 = v87;
              v54 = swift_isUniquelyReferenced_nonNull_native();
              v77[0] = v53;
              sub_24E81CD60(v52, v67, v46, v54);

              v87 = v77[0];
            }

            sub_24E65864C(v78, v76);
            swift_beginAccess();
            sub_24ED7D5A0(v77, v76);
            sub_24E6585F8(v77);
            swift_endAccess();
            sub_24ED93274();

            (*v69)(v21, v43);
            sub_24E6585F8(v78);
            sub_24E6585F8(v79);
            v22 = v43;
LABEL_24:
            v20 = &OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_isStoreRequest;
            goto LABEL_7;
          }

          sub_24E6585F8(v78);
          sub_24E6585F8(v79);
          sub_24E601704(v9, &qword_27F228530, &unk_24F93C6E0);
          v20 = &OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_isStoreRequest;
LABEL_7:
          __swift_mutable_project_boxed_opaque_existential_1(v84, AssociatedTypeWitness);
          sub_24F92C4D8();
          if (!*(&v82 + 1))
          {
            v15 = v87;
            goto LABEL_28;
          }
        }

LABEL_6:
        sub_24E6585F8(v79);
        goto LABEL_7;
      }

LABEL_28:
      __swift_destroy_boxed_opaque_existential_1(v84);
      if (*(v15 + 16))
      {
        v55 = 1 << *(v15 + 32);
        v56 = -1;
        if (v55 < 64)
        {
          v56 = ~(-1 << v55);
        }

        v57 = v56 & *(v15 + 64);
        v58 = (v55 + 63) >> 6;

        v59 = 0;
        if (v57)
        {
          goto LABEL_37;
        }

        while (1)
        {
          v60 = v59 + 1;
          if (__OFADD__(v59, 1))
          {
            break;
          }

          if (v60 >= v58)
          {

            goto LABEL_40;
          }

          v57 = *(v15 + 64 + 8 * v60);
          ++v59;
          if (v57)
          {
            v59 = v60;
            do
            {
LABEL_37:
              v57 &= v57 - 1;

              sub_24ED92630(v61, v62);
            }

            while (v57);
            continue;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_40:
      }
    }
  }
}

double sub_24ED92630(uint64_t a1, __n128 a2)
{
  v4 = *v2;
  v5 = sub_24F92A088();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + qword_27F22F1C0);
  if (v10)
  {
    v11 = *(v2 + qword_27F22F1C0 + 8);
    if (*(v2 + qword_27F39C7D8))
    {
      *v9 = 0;
      (*(v6 + 104))(v9, *MEMORY[0x277D22298], v5, v7);
      sub_24E5FCA4C(v10, v11);
      sub_24F92A0D8();
      (*(v6 + 8))(v9, v5);
    }

    else
    {
      sub_24E5FCA4C(*(v2 + qword_27F22F1C0), *(v2 + qword_27F22F1C0 + 8));
    }

    v30 = v10(a1);
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    v14 = swift_allocObject();
    v15 = v4[10];
    v13[2] = v15;
    v28 = v10;
    v29 = v11;
    v16 = v4[11];
    v13[3] = v16;
    v17 = v4[12];
    v13[4] = v17;
    v18 = a1;
    v19 = v4[13];
    v13[5] = v19;
    v20 = v4[14];
    v13[6] = v20;
    v13[7] = v12;
    v13[8] = v4;
    v21 = v14;
    swift_weakInit();
    v22 = swift_allocObject();
    *&v23 = v15;
    *(&v23 + 1) = v16;
    *&v24 = v17;
    *(&v24 + 1) = v19;
    *(v22 + 16) = v23;
    *(v22 + 32) = v24;
    *(v22 + 48) = v20;
    *(v22 + 56) = v21;
    *(v22 + 64) = v18;
    v25 = sub_24E74EC40();

    v26 = sub_24F92BEF8();
    v31[3] = v25;
    v31[4] = MEMORY[0x277D225C0];
    v31[0] = v26;
    sub_24F92A958();
    sub_24E824448(v28, v29);

    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  return v7.n128_f64[0];
}

void sub_24ED92928()
{
  v1 = *v0;
  if ((*(v0 + qword_27F39C790) & 1) == 0)
  {
    v2 = v0;
    v3 = v1[10];
    v4 = v1[11];
    v5 = v1[12];
    v6 = v1[13];
    v7 = v1[14];
    *&v19 = v3;
    *(&v19 + 1) = v4;
    v20 = v5;
    v21 = v6;
    v22 = v7;
    v8 = type metadata accessor for DiffablePageContentPresenter(0, &v19);
    WitnessTable = swift_getWitnessTable();
    if ((PaginatedPagePresenter.isPreparingNextPage.getter(v8, WitnessTable) & 1) == 0)
    {
      PaginatedPagePresenter.nextPage.getter(WitnessTable, &v19);
      if (v21)
      {
        sub_24E612B0C(&v19, v24);
        v10 = *(v0 + qword_27F22F1C8);
        if (v10)
        {
          v11 = *(v0 + qword_27F22F1C8 + 8);
          sub_24E5FCA4C(*(v2 + qword_27F22F1C8), v11);
          v10(v24);
          sub_24E824448(v10, v11);
          sub_24E643A9C(v24, &v19);
          v23 = 1;
          sub_24ED90F3C(&v19);
          v12 = swift_allocObject();
          swift_weakInit();
          v13 = swift_allocObject();
          v13[2] = v3;
          v13[3] = v4;
          v13[4] = v5;
          v13[5] = v6;
          v13[6] = v7;
          v13[7] = v12;
          v14 = swift_allocObject();
          swift_weakInit();
          sub_24E643A9C(v24, v18);
          v15 = swift_allocObject();
          *(v15 + 16) = v3;
          *(v15 + 24) = v4;
          *(v15 + 32) = v5;
          *(v15 + 40) = v6;
          *(v15 + 48) = v7;
          *(v15 + 56) = v14;
          sub_24E612B0C(v18, (v15 + 64));
          v16 = sub_24E74EC40();

          v17 = sub_24F92BEF8();
          v21 = v16;
          v22 = MEMORY[0x277D225C0];
          *&v19 = v17;
          sub_24F92A958();

          __swift_destroy_boxed_opaque_existential_1(&v19);
          __swift_destroy_boxed_opaque_existential_1(v24);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v24);
        }
      }

      else
      {
        sub_24E601704(&v19, &qword_27F2129B0, &unk_24F945320);
      }
    }
  }
}

uint64_t sub_24ED92BE8(unint64_t a1)
{
  v14[6] = *v1;
  v15 = v1;
  v20[0] = MEMORY[0x277D84F90];
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_27:
    v4 = sub_24F92C738();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v14[5] = 0;
  v6 = MEMORY[0x277D84F90];
  while (v4 != v5)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x253052270](v5, a1);
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_26;
      }

      v7 = *(a1 + 8 * v5 + 32);

      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    v9 = OBJC_IVAR____TtC12GameStoreKit5Shelf_pageChangeMetrics;
    swift_beginAccess();
    v10 = *(v7 + v9);

    ++v5;
    if (v10)
    {
      MEMORY[0x253050F00](v11);
      if (*((v20[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      sub_24F92B638();
      v6 = v20[0];
      v5 = v8;
    }
  }

  if (v6 >> 62)
  {
    if (sub_24F92C738())
    {
      goto LABEL_17;
    }
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
  }

LABEL_17:
  if (*(v15 + qword_27F22F198))
  {
    v16 = *(v15 + qword_27F22F198);
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F488, &qword_24F99C190);
    if (swift_dynamicCast())
    {
      if (*(&v18 + 1))
      {
        v12 = sub_24E612C80(&v17, v20);
        MEMORY[0x28223BE20](v12);
        v14[2] = v20;
        v14[3] = v15;
        sub_24EB0B714(sub_24ED96164, v14, v6);

        return __swift_destroy_boxed_opaque_existential_1(v20);
      }
    }

    else
    {
      v19 = 0;
      v17 = 0u;
      v18 = 0u;
    }
  }

  else
  {

    v19 = 0;
    v17 = 0u;
    v18 = 0u;
  }

  return sub_24E601704(&v17, &qword_27F22F480, &qword_24F99C188);
}

uint64_t DiffablePageContentPresenter.FetchError.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

uint64_t sub_24ED92F5C()
{
  sub_24F92D068();
  DiffablePageContentPresenter.FetchError.hash(into:)();
  return sub_24F92D0B8();
}

uint64_t DiffablePageContentPresenter.IncompleteShelfFetchResult.init(allShelves:fetchedShelves:shelfErrors:shelfBatch:error:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

void *DiffablePageContentPresenter.IncompleteShelfFetchResult.error.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t sub_24ED93060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = qword_27F39C780;
  result = swift_beginAccess();
  v8 = *(a2 + v6);
  if (*(v8 + 16))
  {

    v9 = sub_24E76D934(a1);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  *a3 = v11;
  return result;
}

uint64_t sub_24ED93120()
{
  v1 = qword_27F39C788;
  swift_beginAccess();
  sub_24E9B7D88(v0 + v1, v3);
  sub_24F92AD88();
  return sub_24E94E128(v3);
}

void sub_24ED93194(char a1)
{
  v2 = *(v1 + qword_27F22F1D0);
  if (v2 != (a1 & 1))
  {
    v3 = *(v1 + qword_27F22F1F0);
    if (v2)
    {
      if (v3)
      {
        v4 = *(v3 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
        swift_beginAccess();
        v5 = *(v4 + 48);
        v6 = __OFADD__(v5, 1);
        v7 = v5 + 1;
        if (v6)
        {
          __break(1u);
        }

        else
        {
          *(v4 + 48) = v7;
          v8 = v7 == 0;
          swift_beginAccess();
          *(v4 + 40) = v8;
          swift_beginAccess();
          if (swift_weakLoadStrong())
          {
            sub_24EA6BFA0();
          }
        }
      }
    }

    else if (v3)
    {
      sub_24ED6F318();
    }
  }
}

void sub_24ED93274()
{
  v1 = qword_27F22F1D8;
  swift_beginAccess();
  v2 = *(v0 + qword_27F22F1D0);
  *(v0 + qword_27F22F1D0) = *(*(v0 + v1) + 16) != 0;
  sub_24ED93194(v2);
}

uint64_t DiffablePageContentPresenter.onPaginationStateChanged.getter()
{
  sub_24ED95B08();
}

double sub_24ED93300(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = a5;
  v13 = sub_24F92A078();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v40 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v38 = v14;
    v39 = v13;
    *(Strong + qword_27F39C790) = 0;
    v20 = *(Strong + qword_27F22F1B8);
    v37[0] = v16;
    v37[1] = a8;
    if (v20)
    {
      v21 = *(Strong + qword_27F22F1B8 + 8);
      sub_24E5FCA4C(v20, v21);
      v20(v16);
      sub_24E824448(v20, v21);
    }

    else
    {
      swift_unknownObjectRetain();
    }

    v22 = swift_allocObject();
    v23 = *(a3 + 96);
    *(v22 + 16) = *(a3 + 80);
    *(v22 + 32) = v23;
    *(v22 + 48) = *(a3 + 112);
    v24 = swift_unknownObjectRetain();
    sub_24ED96130(v24);
    v26 = v25;

    swift_unknownObjectRelease_n();
    *(v19 + qword_27F22F198) = v26;
    swift_unknownObjectRetain_n();
    swift_unknownObjectRelease();
    *(v19 + qword_27F22F1A0) = (*(a6 + 8))(a4, a6);

    v27 = *(a6 + 16);
    v28 = v27(a4, a6);
    v29 = qword_27F39C780;
    swift_beginAccess();
    *(v19 + v29) = v28;

    v42 = v26;
    v30 = v41;
    v31 = *(v41 + 8);
    swift_unknownObjectRetain();
    v31(&v43, a4, v30);
    v47 = 0;
    v48 = 0;
    sub_24ED90F3C(&v43);
    v32 = sub_24ED90D4C();
    v43 = v26;
    v44 = v32;
    v45 = 0;
    sub_24F92AD88();
    sub_24ED96264(v43, v44, v45);
    v33 = v27(a4, a6);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F4B8, &unk_24F99C1D0);
    v47 = sub_24E602068(&qword_27F22F4C0, &qword_27F22F4B8, &unk_24F99C1D0, MEMORY[0x277D83488]);
    v43 = v33;
    LOBYTE(v42) = 0;
    sub_24ED91BFC(&v43, &v42);
    __swift_destroy_boxed_opaque_existential_1(&v43);
    swift_unknownObjectRelease();
    if (*(v19 + qword_27F22F1F0))
    {

      sub_24ED6F318();
    }

    v35 = v38;
    v34 = v39;
    if (*(v19 + qword_27F39C7D8))
    {
      v43 = v26;
      v36 = v40;
      sub_24F92AD48();
      (*(v35 + 104))(v36, *MEMORY[0x277D22290], v34);
      sub_24F92A0C8();
      swift_unknownObjectRelease();
      (*(v35 + 8))(v36, v34);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_24ED9371C(void *a1, uint64_t a2)
{
  v3 = sub_24F92A078();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + qword_27F39C790) = 0;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v15 = a1;
    v16 = 0;
    v17 = 0x80;
    v8 = a1;
    sub_24F92AD88();

    sub_24ED96264(v15, v16, v17);
  }

  swift_beginAccess();
  v9 = swift_weakLoadStrong();
  if (v9)
  {
    v10 = *(v9 + qword_27F22F1F0);

    if (v10)
    {
      sub_24ED6F318();
    }
  }

  swift_beginAccess();
  v11 = swift_weakLoadStrong();
  if (v11)
  {
    v12 = *(v11 + qword_27F39C7D8);

    if (v12)
    {
      *v6 = a1;
      (*(v4 + 104))(v6, *MEMORY[0x277D22280], v3);
      v13 = a1;
      sub_24F92A0C8();

      (*(v4 + 8))(v6, v3);
    }
  }
}

uint64_t sub_24ED93968@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_fetchStrategy) == 0;
  if (*(a1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_fetchStrategy))
  {
    v6 = 0xD000000000000011;
  }

  else
  {
    v6 = 0x6F4C656761506E6FLL;
  }

  if (v5)
  {
    v7 = 0xEA00000000006461;
  }

  else
  {
    v7 = 0x800000024FA42F40;
  }

  if (a2)
  {
    v8 = 0xD000000000000011;
  }

  else
  {
    v8 = 0x6F4C656761506E6FLL;
  }

  if (a2)
  {
    v9 = 0x800000024FA42F40;
  }

  else
  {
    v9 = 0xEA00000000006461;
  }

  if (v6 == v8 && v7 == v9)
  {

    return sub_24E60169C(a1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_url, a3, &qword_27F228530, &unk_24F93C6E0);
  }

  v11 = sub_24F92CE08();

  if (v11)
  {
    return sub_24E60169C(a1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_url, a3, &qword_27F228530, &unk_24F93C6E0);
  }

  v12 = sub_24F91F4A8();
  v13 = *(*(v12 - 8) + 56);

  return v13(a3, 1, 1, v12);
}

uint64_t sub_24ED93AD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  swift_beginAccess();
  return sub_24E60169C(a1 + v5, a3, &qword_27F228530, &unk_24F93C6E0);
}

void sub_24ED93B40(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v120 = a6;
  v117 = a4;
  v113 = a3;
  v112 = sub_24F92AAE8();
  v7 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v111 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F92A078();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if (!*(Strong + qword_27F22F198))
  {

    return;
  }

  v15 = *(Strong + qword_27F39C7D8);
  v121 = Strong;
  if (v15)
  {
    *v12 = 0;
    (*(v10 + 104))(v12, *MEMORY[0x277D22288], v9);
    swift_unknownObjectRetain();
    sub_24F92A0C8();
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    swift_unknownObjectRetain();
  }

  v16 = MEMORY[0x277D84F90];
  v134 = sub_24ED95894(MEMORY[0x277D84F90]);
  v133 = sub_24E60ACC8(v16);
  v105 = v13;
  v17 = *(v13 + 16);
  v18 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 64);
  v107 = qword_27F22F1D8;
  v22 = (v19 + 63) >> 6;
  v114 = v120 + 16;
  v109 = (v7 + 8);

  v23 = 0;
  v24 = 0;
  v108 = xmmword_24F93A400;
  v110 = v17;
  while (v21)
  {
    v116 = v24;
LABEL_17:
    v29 = __clz(__rbit64(v21)) | (v23 << 6);
    sub_24E65864C(*(v17 + 48) + 40 * v29, &v130);
    v30 = *(*(v17 + 56) + 8 * v29);
    v115 = v130;
    v31 = v132;
    v119 = v131;
    v32 = *(&v131 + 1);

    if (!v32)
    {
      goto LABEL_31;
    }

    v21 &= v21 - 1;
    v130 = v115;
    v131 = v119;
    v132 = v31;
    if (v30[OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched] == 1)
    {
      if (*((*(v120 + 16))(v117) + 16) && (sub_24E76D934(&v130), (v33 & 1) != 0))
      {

        v34 = v116;
        v35 = Shelf.mergingWith(_:)(v30);
        if (!v34)
        {
          v42 = v35;
          v116 = 0;
          sub_24E65864C(&v130, &v124);
          *&v122[0] = v42;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F4A8, &qword_24F99C1A8);
          sub_24F92AED8();

          goto LABEL_28;
        }

        sub_24E65864C(&v130, &v124);
        *&v122[0] = v34;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F490, &qword_24F99C198);
        sub_24F92AED8();

        sub_24E6585F8(&v130);
        v24 = 0;
      }

      else
      {

        v25 = v111;
        sub_24ED90B7C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
        sub_24F928468();
        *(swift_allocObject() + 16) = v108;
        sub_24F9283A8();
        *(&v125 + 1) = MEMORY[0x277D84030];
        *&v124 = swift_allocObject();
        sub_24E65864C(&v130, v124 + 16);
        sub_24F928438();
        sub_24E601704(&v124, &qword_27F2129B0, &unk_24F945320);
        v26 = v112;
        sub_24F92A5A8();

        v27 = v25;
        v17 = v110;
        (*v109)(v27, v26);
        sub_24E6585F8(&v130);
        v24 = v116;
      }
    }

    else
    {
      v36 = qword_27F39C780;
      v37 = v121;
      swift_beginAccess();
      v38 = *(v37 + v36);
      if (*(v38 + 16))
      {

        v39 = sub_24E76D934(&v130);
        if (v40)
        {
          v41 = *(*(v38 + 56) + 8 * v39);

          sub_24E65864C(v41 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id, v122);

          v124 = v122[0];
          v125 = v122[1];
          v126 = v123;
          sub_24E65864C(&v130, v122);
          v129 = Shelf.withId(_:)(&v124);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F4A8, &qword_24F99C1A8);
          sub_24F92AED8();
          sub_24E6585F8(&v124);
          goto LABEL_28;
        }
      }

      sub_24E65864C(&v130, &v124);
      *&v122[0] = v30;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F4A8, &qword_24F99C1A8);
      sub_24F92AED8();
LABEL_28:
      swift_beginAccess();
      sub_24F7A58DC(&v130, &v124);
      sub_24E601704(&v124, &qword_27F235830, &qword_24F93B8C0);
      swift_endAccess();
      sub_24ED93274();

      sub_24E6585F8(&v130);
      v24 = v116;
    }
  }

  while (1)
  {
    v28 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    if (v28 >= v22)
    {
      break;
    }

    v21 = *(v18 + 8 * v28);
    ++v23;
    if (v21)
    {
      v116 = v24;
      v23 = v28;
      goto LABEL_17;
    }
  }

  v116 = v24;
LABEL_31:

  v43 = *(v105 + 24);
  v46 = *(v43 + 64);
  v45 = v43 + 64;
  v44 = v46;
  v47 = 1 << *(*(v105 + 24) + 32);
  v48 = -1;
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  v49 = v48 & v44;
  v50 = (v47 + 63) >> 6;
  v110 = *(v105 + 24);

  v51 = 0;
  v106 = v50;
  while (v49)
  {
LABEL_41:
    v56 = __clz(__rbit64(v49));
    v49 &= v49 - 1;
    v57 = v56 | (v51 << 6);
    v58 = (*(v110 + 48) + 16 * v57);
    v60 = *v58;
    v59 = v58[1];
    v61 = *(*(v110 + 56) + 8 * v57);
    v62 = v120;
    v63 = *(v120 + 16);

    *&v119 = v61;
    v64 = v61;
    v65 = v63(v117, v62);
    *&v115 = v60;
    *&v124 = v60;
    *(&v124 + 1) = v59;

    sub_24F92C7F8();
    if (!*(v65 + 16))
    {
      sub_24E6585F8(&v130);

LABEL_35:
      v52 = v111;
      sub_24ED90B7C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = v108;
      sub_24F9283A8();
      *(&v131 + 1) = MEMORY[0x277D837D0];
      *&v130 = v115;
      *(&v130 + 1) = v59;
      sub_24F928458();
      sub_24E601704(&v130, &qword_27F2129B0, &unk_24F945320);
      v53 = v112;
      sub_24F92A5A8();

      v54 = v53;
      v50 = v106;
      (*v109)(v52, v54);
      continue;
    }

    sub_24E76D934(&v130);
    v67 = v66;
    sub_24E6585F8(&v130);

    if ((v67 & 1) == 0)
    {
      goto LABEL_35;
    }

    v68 = v115;
    *&v124 = v115;
    *(&v124 + 1) = v59;

    sub_24F92C7F8();
    *&v124 = v119;
    v69 = v119;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F490, &qword_24F99C198);
    sub_24F92AED8();
    swift_beginAccess();
    *&v130 = v68;
    *(&v130 + 1) = v59;

    sub_24F92C7F8();
    sub_24F24655C(&v124, &v130);
    sub_24E6585F8(&v124);
    if (*(&v131 + 1))
    {
      v124 = v130;
      v125 = v131;
      v126 = v132;
      sub_24F92C7D8();
      sub_24E6585F8(&v124);
      swift_dynamicCast();
    }

    else
    {
      v127 = 0;
      v128 = 0;
    }

    swift_endAccess();

    sub_24ED93274();
  }

  while (1)
  {
    v55 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      __break(1u);
      goto LABEL_72;
    }

    if (v55 >= v50)
    {
      break;
    }

    v49 = *(v45 + 8 * v55);
    ++v51;
    if (v49)
    {
      v51 = v55;
      goto LABEL_41;
    }
  }

  v70 = v134;
  v71 = v134 + 64;
  v72 = 1 << *(v134 + 32);
  v73 = -1;
  if (v72 < 64)
  {
    v73 = ~(-1 << v72);
  }

  v74 = v73 & *(v134 + 64);
  v75 = qword_27F39C780;
  v76 = (v72 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v77 = 0;
  while (v74)
  {
LABEL_57:
    v79 = __clz(__rbit64(v74)) | (v77 << 6);
    sub_24E65864C(*(v70 + 48) + 40 * v79, &v130);
    v80 = *(*(v70 + 56) + 8 * v79);
    v115 = v130;
    v81 = v132;
    v119 = v131;
    v82 = *(&v131 + 1);

    if (!v82)
    {
LABEL_67:

      v99 = v121;
      if (*(v121 + qword_27F22F198))
      {
        v100 = v120;
        v101 = *(v120 + 32);
        swift_unknownObjectRetain();
        v101(sub_24ED96224, v99, v117, v100);
        swift_unknownObjectRelease();
      }

      *&v130 = sub_24ED90D4C();
      *(&v130 + 1) = v70;
      *&v131 = v133;
      *(&v131 + 1) = v105;
      v132 = 0;

      sub_24F92AD88();
      v102 = v132;

      *&v130 = v70;
      type metadata accessor for Shelf(0);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F498, &qword_24F99C1A0);
      sub_24E602068(&qword_27F22F4A0, &qword_27F22F498, &qword_24F99C1A0, MEMORY[0x277D834C0]);
      v103 = sub_24F92B738();
      sub_24ED92BE8(v103);

      swift_unknownObjectRelease();
      return;
    }

    v130 = v115;
    v131 = v119;
    v132 = v81;
    v83 = v121;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v122[0] = *(v83 + v75);
    v85 = *&v122[0];
    *(v83 + v75) = 0x8000000000000000;
    v86 = sub_24E76D934(&v130);
    v88 = *(v85 + 16);
    v89 = (v87 & 1) == 0;
    v90 = __OFADD__(v88, v89);
    v91 = v88 + v89;
    if (v90)
    {
      goto LABEL_74;
    }

    v92 = v87;
    if (*(v85 + 24) >= v91)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v98 = v86;
        sub_24E8ADF84();
        v86 = v98;
      }
    }

    else
    {
      sub_24E899884(v91, isUniquelyReferenced_nonNull_native);
      v86 = sub_24E76D934(&v130);
      if ((v92 & 1) != (v93 & 1))
      {
        goto LABEL_76;
      }
    }

    v94 = *&v122[0];
    if (v92)
    {
      *(*(*&v122[0] + 56) + 8 * v86) = v80;

      sub_24E6585F8(&v130);
    }

    else
    {
      *(*&v122[0] + 8 * (v86 >> 6) + 64) |= 1 << v86;
      v95 = v86;
      sub_24E65864C(&v130, v94[6] + 40 * v86);
      *(v94[7] + 8 * v95) = v80;
      sub_24E6585F8(&v130);
      v96 = v94[2];
      v90 = __OFADD__(v96, 1);
      v97 = v96 + 1;
      if (v90)
      {
        goto LABEL_75;
      }

      v94[2] = v97;
    }

    v74 &= v74 - 1;
    *(v121 + v75) = v94;
    swift_endAccess();
  }

  while (1)
  {
    v78 = v77 + 1;
    if (__OFADD__(v77, 1))
    {
      break;
    }

    if (v78 >= v76)
    {
      goto LABEL_67;
    }

    v74 = *(v71 + 8 * v78);
    ++v77;
    if (v74)
    {
      v77 = v78;
      goto LABEL_57;
    }
  }

LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  sub_24F92CF88();
  __break(1u);
}

uint64_t sub_24ED94BDC(uint64_t a1, uint64_t a2)
{
  v4 = qword_27F39C780;
  swift_beginAccess();
  v5 = *(a2 + v4);
  if (!*(v5 + 16))
  {
    return 0;
  }

  v6 = OBJC_IVAR____TtC12GameStoreKit5Shelf_id;

  v7 = sub_24E76D934(a1 + v6);
  if (v8)
  {
    v9 = *(*(v5 + 56) + 8 * v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_24ED94C84(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24F92A078();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (*(Strong + qword_27F39C7D8))
    {
      *v8 = a1;
      v8[8] = 0;
      (*(v6 + 104))(v8, *MEMORY[0x277D22278], v5);
      v11 = a1;
      sub_24F92A0C8();
      (*(v6 + 8))(v8, v5);
    }

    v12 = 1 << *(a3 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a3 + 64);
    v15 = (v12 + 63) >> 6;

    for (i = 0; v14; i = v17)
    {
      v17 = i;
LABEL_11:
      sub_24E65864C(*(a3 + 48) + 40 * (__clz(__rbit64(v14)) | (v17 << 6)), v25);
      sub_24ED94F40(v25, v10);
      v14 &= v14 - 1;
      sub_24E6585F8(v25);
    }

    while (1)
    {
      v17 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v17 >= v15)
      {

        v18 = sub_24ED90D4C();
        v19 = MEMORY[0x277D84F90];
        v20 = sub_24E60986C(MEMORY[0x277D84F90]);
        v21 = sub_24E60ACC8(v19);
        v25[0] = v18;
        v25[1] = v20;
        v25[2] = v21;
        v25[3] = 0;
        v26 = a1;
        v22 = a1;
        sub_24F92AD88();
        v23 = v26;

        return;
      }

      v14 = *(a3 + 64 + 8 * v17);
      ++i;
      if (v14)
      {
        goto LABEL_11;
      }
    }

    __break(1u);

    sub_24E6585F8(v25);
    __break(1u);
  }
}

void sub_24ED94F40(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_24F7A58DC(a1, v3);
  sub_24E601704(v3, &qword_27F235830, &qword_24F93B8C0);
  swift_endAccess();
  sub_24ED93274();
}

uint64_t sub_24ED94FD0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = *(result + qword_27F22F1B8);
    if (v11)
    {
      v12 = *(result + qword_27F22F1B8 + 8);
      sub_24E5FCA4C(*(result + qword_27F22F1B8), v12);
      v13 = v11(v8);
      v14.n128_f64[0] = sub_24E824448(v11, v12);
    }

    else
    {
      swift_unknownObjectRetain();
      v13 = v8;
    }

    if (*(v10 + qword_27F22F198))
    {
      v28[0] = *(v10 + qword_27F22F198);
      v27 = v13;
      (*(a4 + 16))(&v21, &v27, a3, a4, v14);
      v15 = v21;
      *(v10 + qword_27F22F198) = v21;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(v10 + qword_27F22F1A0) = (*(a5 + 8))(a3, a5);

      v16 = *(a5 + 16);
      v17 = v16(a3, a5);
      v18 = qword_27F39C780;
      swift_beginAccess();
      *(v10 + v18) = v17;

      swift_unknownObjectRetain();
      v19 = sub_24ED90D4C();
      v21 = v15;
      v22 = v19;
      v23 = 0;
      sub_24F92AD88();
      sub_24ED96264(v21, v22, v23);
      v20 = v16(a3, a5);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F4B8, &unk_24F99C1D0);
      v25 = sub_24E602068(&qword_27F22F4C0, &qword_27F22F4B8, &unk_24F99C1D0, MEMORY[0x277D83488]);
      v21 = v20;
      LOBYTE(v27) = 0;
      sub_24ED91BFC(&v21, &v27);
      __swift_destroy_boxed_opaque_existential_1(&v21);
      v27 = v15;
      (*(a4 + 8))(&v21, a3, a4);
      v25 = 0;
      v26 = 0;
      sub_24ED90F3C(&v21);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_24ED952A8(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v8[0] = a1;
    v8[1] = 0;
    v9 = 0x80;
    v5 = a1;
    sub_24F92AD88();

    sub_24ED96264(a1, 0, 128);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24E643A9C(a3, v8);
    v10 = a1;
    v11 = 0;
    v7 = a1;
    sub_24ED90F3C(v8);
  }

  return result;
}

uint64_t sub_24ED953A8(uint64_t a1, void *a2, uint64_t a3)
{
  v16[1] = a3;
  v4 = sub_24F928818();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v16 - v9;
  v12 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v12);
  (*(v11 + 8))(v12, v11);
  sub_24F0F22FC(v7, v10);
  (*(v5 + 8))(v7, v4);
  v13 = a2[3];
  v14 = a2[4];
  __swift_mutable_project_boxed_opaque_existential_1(a2, v13);
  (*(v14 + 16))(v10, v13, v14);
  return sub_24F92AD88();
}

uint64_t sub_24ED95544()
{
  sub_24ED95B08();
}

uint64_t sub_24ED955B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void (*a14)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v21 = swift_allocObject();
  a14(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
  return v21;
}

uint64_t DiffableDynamicPageContentPresenter.init(objectGraph:pageUrl:sidePackedPage:pageProvider:pageModifier:shelfProvider:moreOfPageProvider:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11)
{
  v24 = a7;
  v25 = a8;
  v23 = a6;
  v21 = a10;
  v22 = a9;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v21 - v18;
  sub_24E60169C(a2, &v21 - v18, &qword_27F228530, &unk_24F93C6E0);
  DiffablePageContentPresenter.init(objectGraph:pageUrl:sidePackedPage:pageProvider:pageModifier:shelfProvider:moreOfPageProvider:pendingPageRender:pageRenderMetrics:)(a1, v19, a3, a4, a5, v23, v24, v25, v22, *(&v22 + 1), v21, *(&v21 + 1), a11);
  sub_24E601704(a2, &qword_27F228530, &unk_24F93C6E0);
  return v11;
}

uint64_t _s12GameStoreKit28DiffablePageContentPresenterCfD_0()
{
  DiffablePageContentPresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24ED95828()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

double sub_24ED95860()
{
  CGSizeMake();

  swift_unknownObjectRetain();
  return result;
}

unint64_t sub_24ED95894(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C8, &unk_24F963C30);
    v3 = sub_24F92CB58();
    v4 = a1 + 32;

    while (1)
    {
      sub_24E60169C(v4, v13, &qword_27F2135D0, &qword_24F93ADC0);
      result = sub_24E76D934(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      *(v3[7] + 8 * result) = v15;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_24ED959BC()
{
  v1 = qword_27F39C798;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24ED95A18()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24ED95A60()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_24ED95B34(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24ED95B70(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

__n128 sub_24ED95C18(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

id sub_24ED95C2C@<X0>(void *a1@<X8>)
{
  v2 = sub_24ED959BC();
  *a1 = v2;

  return v2;
}

void sub_24ED95C68(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_24ED9100C(v1);
}

void sub_24ED95CA4(uint64_t a1)
{
  sub_24E6D4C08(319);
  if (v1 <= 0x3F)
  {
    sub_24ED95EF0(319);
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_24ED95EF0(uint64_t a1)
{
  if (!qword_27F22F278[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2226D8, &unk_24F96A610);
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, qword_27F22F278);
    }
  }
}

uint64_t sub_24ED95F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24ED95FB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 17))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 16) & 0x7E | (*(a1 + 16) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24ED96004(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_24ED9607C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

double sub_24ED96130(uint64_t a1)
{
  sub_24ED95AB4(a1, v1[2], v1[3], v1[4]);

  swift_unknownObjectRetain();
  return result;
}

uint64_t sub_24ED96180()
{

  return swift_deallocObject();
}

uint64_t sub_24ED961D0()
{

  return swift_deallocObject();
}

uint64_t sub_24ED9622C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

void sub_24ED96264(void *a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_24ED962EC()
{

  return swift_deallocObject();
}

uint64_t AppPromotion.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v44 = a2;
  v51 = sub_24F9285B8();
  v43 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v41 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v6 - 8);
  v40 = v38 - v7;
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v39 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v38 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = v38 - v19;
  v45 = a1;
  sub_24F928398();
  v21 = sub_24F928348();
  if (v22)
  {
    v46 = v21;
    v47 = v22;
  }

  else
  {
    sub_24F91F6A8();
    v23 = sub_24F91F668();
    v24 = v9;
    v26 = v25;
    (*(v24 + 8))(v11, v8);
    v46 = v23;
    v47 = v26;
  }

  sub_24F92C7F8();
  v27 = *(v13 + 8);
  v27(v20, v12);
  v28 = v49;
  *(v3 + 24) = v48;
  *(v3 + 40) = v28;
  *(v3 + 56) = v50;
  v29 = v45;
  sub_24F928398();
  sub_24EA21600();
  v30 = v42;
  sub_24F928218();
  if (v30)
  {
    (*(v43 + 8))(v44, v51);
    v27(v29, v12);
    v27(v17, v12);
    sub_24E6585F8(v3 + 24);
    type metadata accessor for AppPromotion(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v38[1] = v13 + 8;
    v27(v17, v12);
    *(v3 + 16) = v48;
    sub_24F929608();
    v38[0] = v12;
    v42 = 0;
    v31 = v39;
    sub_24F928398();
    v32 = v43;
    v33 = v44;
    (*(v43 + 16))(v41, v44, v51);
    v34 = v40;
    sub_24F929548();
    sub_24E65E0D4(v34, v3 + OBJC_IVAR____TtC12GameStoreKit12AppPromotion_impressionMetrics);
    type metadata accessor for Action(0);
    sub_24F928398();
    v35 = static Action.tryToMakeInstance(byDeserializing:using:)(v31, v33);
    (*(v32 + 8))(v33, v51);
    v36 = v38[0];
    v27(v29, v38[0]);
    v27(v31, v36);
    *(v3 + OBJC_IVAR____TtC12GameStoreKit12AppPromotion_clickAction) = v35;
  }

  return v3;
}

uint64_t type metadata accessor for AppPromotion(uint64_t a1)
{
  result = qword_27F22F4D8;
  if (!qword_27F22F4D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppPromotion.deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12AppPromotion_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return v0;
}

uint64_t sub_24ED96930@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for AppPromotion(0);
  *a1 = v1;
}

GameStoreKit::AppPromotionType_optional __swiftcall AppPromotionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AppPromotionType.rawValue.getter()
{
  v1 = 0x65676E69746E6F63;
  if (*v0 != 1)
  {
    v1 = 0x657449726566666FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E657645707061;
  }
}

uint64_t sub_24ED96A3C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x65676E69746E6F63;
  v4 = 0xEF726566664F746ELL;
  if (v2 != 1)
  {
    v3 = 0x657449726566666FLL;
    v4 = 0xE90000000000006DLL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x746E657645707061;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x65676E69746E6F63;
  v8 = 0xEF726566664F746ELL;
  if (*a2 != 1)
  {
    v7 = 0x657449726566666FLL;
    v8 = 0xE90000000000006DLL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x746E657645707061;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24ED96B60()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24ED96C14(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24ED96CB4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24ED96D70(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEF726566664F746ELL;
  v5 = 0x65676E69746E6F63;
  if (v2 != 1)
  {
    v5 = 0x657449726566666FLL;
    v4 = 0xE90000000000006DLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746E657645707061;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t AppPromotion.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AppPromotion.init(deserializing:using:)(a1, a2);
  return v4;
}

void (*static AppPromotion.makeInstance(byDeserializing:using:)(uint64_t a1, uint64_t a2))(char *, uint64_t)
{
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 2];
  sub_24F928398();
  sub_24EA21600();
  sub_24F928218();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  (*(v6 + 8))(v8, v5);
  v11[0] = v11[1];
  return sub_24ED97520(v11, a1, a2);
}

uint64_t static AppPromotion.tryToMakeInstances(byDeserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14[-v5];
  v7 = sub_24F92AC28();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24E60169C(a1, v6, &qword_27F2213B0, &qword_24F965EC0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_24E601704(v6, &qword_27F2213B0, &qword_24F965EC0);
    return 0;
  }

  (*(v8 + 32))(v10, v6, v7);
  v11 = sub_24F92ABF8();
  if (v11)
  {
    (*(v8 + 8))(v10, v7);
    return 0;
  }

  MEMORY[0x28223BE20](v11);
  *&v14[-16] = a2;
  type metadata accessor for AppPromotion(0);
  v13 = sub_24F92ABB8();
  (*(v8 + 8))(v10, v7);
  return v13;
}

void (*sub_24ED971C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (**a3)(char *, uint64_t)@<X8>))(char *, uint64_t)
{
  v7 = sub_24F928388();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 2];
  sub_24F928398();
  sub_24EA21600();
  sub_24F928218();
  if (v3)
  {

    (*(v8 + 8))(v10, v7);
    result = 0;
  }

  else
  {
    (*(v8 + 8))(v10, v7);
    v13[0] = v13[1];
    result = sub_24ED97520(v13, a1, a2);
  }

  *a3 = result;
  return result;
}

uint64_t AppPromotion.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12AppPromotion_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

uint64_t sub_24ED9744C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 120))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_24ED9749C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for AppPromotion(0);
  *a1 = v3;
}

void (*sub_24ED97520(unsigned __int8 *a1, uint64_t a2, uint64_t a3))(char *, uint64_t)
{
  v29 = a2;
  v30 = a3;
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  v14 = sub_24F928388();
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v29 - v18;
  v22 = MEMORY[0x28223BE20](v20);
  v23 = &v29 - v21;
  v24 = *a1;
  v26 = *(v25 + 16);
  v27 = (v5 + 16);
  if (v24)
  {
    if (v24 == 1)
    {
      v26(v19, v29, v22);
      (*v27)(v10, v30, v4);
      type metadata accessor for ContingentOffer(0);
      swift_allocObject();
      return ContingentOffer.init(deserializing:using:)(v19, v10);
    }

    else
    {
      v26(v16, v29, v22);
      (*v27)(v7, v30, v4);
      type metadata accessor for OfferItem(0);
      swift_allocObject();
      return OfferItem.init(deserializing:using:)(v16, v7);
    }
  }

  else
  {
    v26(&v29 - v21, v29, v22);
    (*v27)(v13, v30, v4);
    type metadata accessor for AppEvent(0);
    swift_allocObject();
    return AppEvent.init(deserializing:using:)(v23, v13);
  }
}

unint64_t sub_24ED97838()
{
  result = qword_27F22F4C8;
  if (!qword_27F22F4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F4C8);
  }

  return result;
}

unint64_t sub_24ED97890()
{
  result = qword_27F22F4D0;
  if (!qword_27F22F4D0)
  {
    type metadata accessor for AppPromotion(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F4D0);
  }

  return result;
}

void sub_24ED97900(uint64_t a1)
{
  sub_24E61C938(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void *SearchResultsMessage.__allocating_init(primaryText:secondaryText:messageClickAction:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *SearchResultsMessage.init(primaryText:secondaryText:messageClickAction:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

void *SearchResultsMessage.deinit()
{

  return v0;
}

uint64_t SearchResultsMessage.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_24ED97B10@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24ED97B3C(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

void *sub_24ED97B3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v31 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = sub_24F928388();
  v33 = *(v10 - 8);
  v34 = v10;
  MEMORY[0x28223BE20](v10);
  v30 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  sub_24F928398();
  v35 = v5;
  v15 = a2;
  v16 = v4;
  v17 = v4;
  v18 = *(v5 + 16);
  v18(v9, a2, v17);
  type metadata accessor for LinkableText();
  swift_allocObject();
  v19 = v32;
  v20 = LinkableText.init(deserializing:using:)(v14, v9);
  if (v19)
  {
    (*(v35 + 8))(a2, v16);
    return (*(v33 + 8))(a1, v34);
  }

  else
  {
    v32 = v20;
    v27 = a1;
    sub_24F928398();
    v22 = v31;
    v18(v31, a2, v16);
    sub_24ED97FA4(&qword_27F21C360, type metadata accessor for LinkableText, &protocol conformance descriptor for LinkableText);
    sub_24F929548();
    v28 = v36;
    type metadata accessor for SearchAction(0);
    v29 = 0;
    v23 = v27;
    sub_24F928398();
    v18(v22, v15, v16);
    sub_24ED97FA4(&qword_27F226C48, type metadata accessor for SearchAction, &protocol conformance descriptor for Action);
    sub_24F929548();
    (*(v35 + 8))(v15, v16);
    (*(v33 + 8))(v23, v34);
    v24 = v36;
    type metadata accessor for SearchResultsMessage();
    result = swift_allocObject();
    v25 = v28;
    result[2] = v32;
    result[3] = v25;
    result[4] = v24;
  }

  return result;
}

uint64_t sub_24ED97FA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SearchResultsContent.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SearchResultsContent.init(deserializing:using:)(a1, a2);
  return v4;
}

__n128 SearchResultsContent.__allocating_init(results:nextPage:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  result = *a2;
  v6 = *(a2 + 16);
  *(v4 + 24) = *a2;
  *(v4 + 40) = v6;
  return result;
}

uint64_t SearchResultsContent.init(results:nextPage:)(uint64_t a1, _OWORD *a2)
{
  *(v2 + 16) = a1;
  v3 = a2[1];
  *(v2 + 24) = *a2;
  *(v2 + 40) = v3;
  return v2;
}

void *SearchResultsContent.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v42 = a2;
  v46 = v4;
  v39 = *v4;
  v40 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v38 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  v18 = sub_24F92AC28();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1;
  sub_24F928398();
  sub_24F9282B8();
  v41 = *(v13 + 8);
  v41(v17, v12);
  if ((*(v19 + 48))(v11, 1, v18) == 1)
  {
    sub_24E601704(v11, &qword_27F2213B0, &qword_24F965EC0);
    v22 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v23 = 0x73746C75736572;
    v24 = v39;
    v23[1] = 0xE700000000000000;
    v23[2] = v24;
    (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D22530], v22);
    swift_willThrow();
    v25 = sub_24F9285B8();
    (*(*(v25 - 8) + 8))(v42, v25);
    v41(v43, v12);
    v26 = v46;
    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v19 + 32))(v21, v11, v18);
    (*(v19 + 16))(v8, v21, v18);
    (*(v19 + 56))(v8, 0, 1, v18);
    v39 = v12;
    v27 = v42;
    Instances15byDeserializing5usingSayACGSg9JetEngine9JSONArrayVSg_AI11JSONContextVtFZ_0 = _s12GameStoreKit12SearchResultC18tryToMakeInstances15byDeserializing5usingSayACGSg9JetEngine9JSONArrayVSg_AI11JSONContextVtFZ_0(v8, v42);
    sub_24E601704(v8, &qword_27F2213B0, &qword_24F965EC0);
    v29 = MEMORY[0x277D84F90];
    if (Instances15byDeserializing5usingSayACGSg9JetEngine9JSONArrayVSg_AI11JSONContextVtFZ_0)
    {
      v29 = Instances15byDeserializing5usingSayACGSg9JetEngine9JSONArrayVSg_AI11JSONContextVtFZ_0;
    }

    v26 = v46;
    v46[2] = v29;
    v30 = v38;
    v31 = v43;
    sub_24F928398();
    sub_24F928368();
    v32 = sub_24F9285B8();
    (*(*(v32 - 8) + 8))(v27, v32);
    v33 = v31;
    v34 = v39;
    v35 = v41;
    v41(v33, v39);
    v35(v30, v34);
    (*(v19 + 8))(v21, v18);
    v36 = v45;
    *(v26 + 3) = v44;
    *(v26 + 5) = v36;
  }

  return v26;
}

uint64_t SearchResultsContent.deinit()
{

  sub_24E601704(v0 + 24, &qword_27F2129B0, &unk_24F945320);
  return v0;
}

uint64_t SearchResultsContent.__deallocating_deinit()
{

  sub_24E601704(v0 + 24, &qword_27F2129B0, &unk_24F945320);

  return swift_deallocClassInstance();
}

void *sub_24ED98638@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = SearchResultsContent.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t SearchLink.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SearchLink.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t SearchLink.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v56 = a1;
  v3 = sub_24F91F6B8();
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v45 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F9285B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v63 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - v9;
  v57 = sub_24F928388();
  v50 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v48 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v45 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v45 - v16;
  sub_24F929608();
  sub_24F928398();
  v53 = v6;
  v18 = *(v6 + 16);
  v18(v10, a2, v5);
  v52 = v10;
  sub_24F929548();
  sub_24E65E0D4(v17, v55 + OBJC_IVAR____TtC12GameStoreKit10SearchLink_impressionMetrics);
  v54 = a2;
  v19 = v5;
  v51 = v18;
  v49 = v6 + 16;
  v18(v63, a2, v5);
  v20 = v48;
  sub_24F928398();
  v21 = sub_24F928348();
  if (v22)
  {
    v58 = v21;
    v59 = v22;
  }

  else
  {
    v23 = v45;
    sub_24F91F6A8();
    v24 = sub_24F91F668();
    v26 = v25;
    (*(v46 + 8))(v23, v47);
    v58 = v24;
    v59 = v26;
  }

  sub_24F92C7F8();
  v27 = *(v50 + 1);
  v27(v20, v57);
  v50 = v27;
  v28 = v61;
  v30 = v55;
  v29 = v56;
  *(v55 + 16) = v60;
  *(v30 + 32) = v28;
  *(v30 + 48) = v62;
  sub_24F928398();
  v31 = sub_24F928348();
  v33 = v32;
  v34 = v57;
  v27(v14, v57);
  *(v30 + 56) = v31;
  *(v30 + 64) = v33;
  sub_24F928398();
  v35 = sub_24F928348();
  v37 = v36;
  v27(v14, v34);
  *(v30 + 72) = v35;
  *(v30 + 80) = v37;
  type metadata accessor for Artwork(0);
  sub_24F928398();
  v38 = v63;
  v51(v52, v63, v19);
  sub_24ED9962C(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  sub_24F929548();
  *(v30 + OBJC_IVAR____TtC12GameStoreKit10SearchLink_artwork) = v60;
  type metadata accessor for Action(0);
  sub_24F928398();
  v39 = static Action.tryToMakeInstance(byDeserializing:using:)(v14, v38);
  v40 = *(v53 + 8);
  v40(v54, v19);
  v41 = v29;
  v42 = v57;
  v43 = v50;
  v50(v41, v57);
  v43(v14, v42);
  v40(v63, v19);
  *(v30 + 88) = v39;
  return v30;
}

uint64_t SearchLink.__allocating_init(id:imageName:artwork:title:clickAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a2;
  v33 = a5;
  v14 = sub_24F91F6B8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  sub_24E60169C(a1, &v36, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v37 + 1))
  {
    v19 = v37;
    *(v18 + 16) = v36;
    *(v18 + 32) = v19;
    *(v18 + 48) = v38;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v30 = a3;
    v31 = a6;
    v21 = a7;
    v22 = a8;
    v23 = v20;
    v24 = a4;
    v26 = v25;
    (*(v15 + 8))(v17, v14);
    v34 = v23;
    v35 = v26;
    a8 = v22;
    a7 = v21;
    a4 = v24;
    a3 = v30;
    a6 = v31;
    sub_24F92C7F8();
    sub_24E601704(&v36, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  v27 = v32;
  *(v18 + 56) = v33;
  *(v18 + 64) = a6;
  *(v18 + 72) = v27;
  *(v18 + 80) = a3;
  *(v18 + 88) = a7;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit10SearchLink_artwork) = a4;
  sub_24E65E0D4(a8, v18 + OBJC_IVAR____TtC12GameStoreKit10SearchLink_impressionMetrics);
  return v18;
}

uint64_t SearchLink.init(id:imageName:artwork:title:clickAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v34 = a2;
  v35 = a5;
  v16 = sub_24F91F6B8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, &v38, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v39 + 1))
  {
    v41 = v38;
    v42 = v39;
    v43 = v40;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v32 = a3;
    v33 = a6;
    v21 = a7;
    v22 = a8;
    v23 = v20;
    v24 = a4;
    v26 = v25;
    (*(v17 + 8))(v19, v16);
    v36 = v23;
    v37 = v26;
    a8 = v22;
    a7 = v21;
    a4 = v24;
    a3 = v32;
    a6 = v33;
    sub_24F92C7F8();
    sub_24E601704(&v38, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  v27 = v42;
  *(v9 + 16) = v41;
  *(v9 + 32) = v27;
  v28 = v34;
  v29 = v35;
  *(v9 + 48) = v43;
  *(v9 + 56) = v29;
  *(v9 + 64) = a6;
  *(v9 + 72) = v28;
  *(v9 + 80) = a3;
  *(v9 + 88) = a7;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit10SearchLink_artwork) = a4;
  sub_24E65E0D4(a8, v9 + OBJC_IVAR____TtC12GameStoreKit10SearchLink_impressionMetrics);
  return v9;
}

uint64_t SearchLink.title.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t SearchLink.imageName.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

double SearchLink.clickSender.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t SearchLink.deinit()
{
  sub_24E6585F8(v0 + 16);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit10SearchLink_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return v0;
}

uint64_t SearchLink.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 16);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit10SearchLink_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

uint64_t sub_24ED992CC()
{
  v1 = *(*v0 + 56);

  return v1;
}

uint64_t sub_24ED99300()
{
  v1 = *(*v0 + 72);

  return v1;
}

uint64_t type metadata accessor for SearchLink(uint64_t a1)
{
  result = qword_27F22F4F0;
  if (!qword_27F22F4F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ED993DC@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 88);
  if (v3)
  {
    v4 = type metadata accessor for Action(0);
    v5 = sub_24ED9962C(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v4;
  a1[4] = v5;
}

uint64_t sub_24ED9947C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = SearchLink.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

void sub_24ED99528(uint64_t a1)
{
  sub_24E61C938(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24ED9962C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_24ED99674()
{
  result = [objc_allocWithZone(MEMORY[0x277D225F0]) init];
  qword_27F22F500 = result;
  return result;
}

uint64_t static GlobalEventCanary.value.getter()
{
  if (qword_27F2106E0 != -1)
  {
    swift_once();
  }

  v0 = qword_27F22F500;
  [qword_27F22F500 lock];
  v1 = qword_27F22F508;

  [v0 unlock];
  return v1;
}

id sub_24ED99740@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27F2106E0 != -1)
  {
    swift_once();
  }

  v2 = qword_27F22F500;
  [qword_27F22F500 lock];
  v4 = qword_27F22F508;
  v3 = qword_27F22F510;

  result = [v2 unlock];
  *a1 = v4;
  a1[1] = v3;
  return result;
}

id sub_24ED997D8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = qword_27F2106E0;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_27F22F500;
  [qword_27F22F500 lock];
  qword_27F22F508 = v2;
  qword_27F22F510 = v1;

  return [v4 unlock];
}

id static GlobalEventCanary.value.setter(uint64_t a1, uint64_t a2)
{
  if (qword_27F2106E0 != -1)
  {
    swift_once();
  }

  v4 = qword_27F22F500;
  [qword_27F22F500 lock];
  qword_27F22F508 = a1;
  qword_27F22F510 = a2;

  return [v4 unlock];
}

id (*static GlobalEventCanary.value.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (qword_27F2106E0 != -1)
  {
    swift_once();
  }

  v2 = qword_27F22F500;
  a1[2] = qword_27F22F500;
  [v2 lock];
  v4 = qword_27F22F508;
  v3 = qword_27F22F510;

  [v2 unlock];
  *a1 = v4;
  a1[1] = v3;
  return sub_24ED999DC;
}

id sub_24ED999DC(uint64_t a1, char a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2)
  {

    [v4 lock];
    qword_27F22F508 = v3;
    qword_27F22F510 = v2;

    [v4 unlock];
  }

  else
  {
    [*(a1 + 16) lock];
    qword_27F22F508 = v3;
    qword_27F22F510 = v2;

    return [v4 unlock];
  }
}

uint64_t InformationContainer.__allocating_init(id:annotationGroups:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91F6B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  sub_24E65E064(a1, &v15);
  if (*(&v16 + 1))
  {
    sub_24E9BBAA8(a1);
    v18 = v15;
    v19 = v16;
    v20 = v17;
  }

  else
  {
    sub_24F91F6A8();
    v9 = sub_24F91F668();
    v11 = v10;
    (*(v5 + 8))(v7, v4);
    v14[1] = v9;
    v14[2] = v11;
    sub_24F92C7F8();
    sub_24E9BBAA8(a1);
    sub_24E9BBAA8(&v15);
  }

  v12 = v19;
  *(v8 + 24) = v18;
  *(v8 + 40) = v12;
  *(v8 + 56) = v20;
  *(v8 + 16) = a2;
  return v8;
}

uint64_t InformationContainer.init(id:annotationGroups:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E65E064(a1, &v16);
  if (*(&v17 + 1))
  {
    sub_24E9BBAA8(a1);
    v19 = v16;
    v20 = v17;
    v21 = v18;
  }

  else
  {
    sub_24F91F6A8();
    v10 = sub_24F91F668();
    v12 = v11;
    (*(v7 + 8))(v9, v6);
    v15[1] = v10;
    v15[2] = v12;
    sub_24F92C7F8();
    sub_24E9BBAA8(a1);
    sub_24E9BBAA8(&v16);
  }

  v13 = v20;
  *(v3 + 24) = v19;
  *(v3 + 40) = v13;
  *(v3 + 56) = v21;
  *(v3 + 16) = a2;
  return v3;
}

uint64_t InformationContainer.deinit()
{

  sub_24E6585F8(v0 + 24);
  return v0;
}

uint64_t InformationContainer.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_24ED99E54@<X0>(uint64_t *a1@<X8>, char *a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24ED99E90(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_24ED99E90(char *a1, uint64_t a2)
{
  v27 = a2;
  v26 = sub_24F9285B8();
  v3 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v25 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F91F6B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_24F928388();
  v9 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  v28 = a1;
  sub_24F928398();
  v13 = sub_24F928348();
  if (v14)
  {
    v29 = v13;
    v30 = v14;
  }

  else
  {
    sub_24F91F6A8();
    v15 = sub_24F91F668();
    v17 = v16;
    (*(v6 + 8))(v8, v5);
    v29 = v15;
    v30 = v17;
  }

  sub_24F92C7F8();
  v18 = *(v9 + 8);
  v18(v12, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F520, &qword_24F99C778);
  v19 = v28;
  sub_24F928398();
  v20 = v26;
  v21 = v27;
  (*(v3 + 16))(v25, v27, v26);
  sub_24ED9A2BC();
  sub_24F929548();
  if (v29)
  {
    v22 = v29;
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  type metadata accessor for InformationContainer();
  v23 = swift_allocObject();
  InformationContainer.init(id:annotationGroups:)(v31, v22);
  (*(v3 + 8))(v21, v20);
  v18(v19, v32);
  return v23;
}

unint64_t sub_24ED9A1F0()
{
  result = qword_27F22F518;
  if (!qword_27F22F518)
  {
    type metadata accessor for InformationContainer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F518);
  }

  return result;
}

unint64_t sub_24ED9A2BC()
{
  result = qword_27F22F528;
  if (!qword_27F22F528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F520, &qword_24F99C778);
    sub_24ED9A340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F528);
  }

  return result;
}

unint64_t sub_24ED9A340()
{
  result = qword_27F22F530;
  if (!qword_27F22F530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F530);
  }

  return result;
}

double OverlayUnavailableNowPlayingFeatures.id.getter@<D0>(uint64_t a1@<X8>)
{
  sub_24E60169C(v1, v5, &qword_27F213F18, &qword_24F93BE20);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t type metadata accessor for OverlayUnavailableNowPlayingFeatures(uint64_t a1)
{
  result = qword_27F22F558;
  if (!qword_27F22F558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double OverlayUnavailableNowPlayingFeatures.segue.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for OverlayUnavailableNowPlayingFeatures(0);
  sub_24E60169C(v1 + *(v3 + 28), v6, qword_27F24EC90, &unk_24F93C1D0);
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  return result;
}

uint64_t OverlayUnavailableNowPlayingFeatures.contextMenu.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for OverlayUnavailableNowPlayingFeatures(0);
  sub_24E60169C(v1 + *(v6 + 32), v5, &qword_27F215440, &unk_24F942BD0);
  return sub_24E6009C8(v5, a1, &qword_27F215460, &qword_24F942C00);
}

uint64_t sub_24ED9A6F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for OverlayUnavailableNowPlayingFeatures(0);
  sub_24E60169C(a1 + *(v7 + 32), v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E6009C8(v6, a2, &qword_27F215460, &qword_24F942C00);
}

unint64_t sub_24ED9A848()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000011;
  v4 = 0x6575676573;
  if (v1 != 3)
  {
    v4 = 0x4D747865746E6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6976694468746977;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24ED9A8E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24ED9CAA8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24ED9A910(uint64_t a1)
{
  v2 = sub_24ED9AC94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ED9A94C(uint64_t a1)
{
  v2 = sub_24ED9AC94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OverlayUnavailableNowPlayingFeatures.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F538, &unk_24F99C780);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ED9AC94();
  sub_24F92D128();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CD18();
    type metadata accessor for OverlayUnavailableNowPlayingFeatures(0);
    v8[13] = 2;
    sub_24F929608();
    sub_24ED9CE14(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
    v8[12] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    v8[11] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    sub_24E65CD0C();
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}