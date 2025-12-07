uint64_t sub_24AC630B0(int64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v41 = a3;
  v42 = a4;
  v40 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6);
  v10 = &v36 - v9;
  v11 = *v4;
  v12 = *v4 + 56;
  v13 = -1 << *(*v4 + 32);
  v14 = (a1 + 1) & ~v13;
  if (((1 << v14) & *(v12 + 8 * (v14 >> 6))) != 0)
  {
    v15 = ~v13;

    v16 = sub_24ACD09B0();
    if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) != 0)
    {
      v38 = (v16 + 1) & v15;
      v37 = *(v7 + 16);
      v43 = *(v7 + 72);
      v39 = v7 + 16;
      v17 = (v7 + 8);
      v18 = v11;
      v19 = v15;
      while (1)
      {
        v20 = v12;
        v21 = v43 * v14;
        v22 = v19;
        v37(v10, *(v18 + 48) + v43 * v14, v6);
        v23 = v18;
        sub_24AC2B6A8(v42, v40, v41, MEMORY[0x277D088B8]);
        v24 = sub_24ACD0520();
        (*v17)(v10, v6);
        v19 = v22;
        v25 = v24 & v22;
        if (a1 >= v38)
        {
          if (v25 < v38 || a1 < v25)
          {
LABEL_4:
            v18 = v23;
            goto LABEL_5;
          }
        }

        else if (v25 < v38 && a1 < v25)
        {
          goto LABEL_4;
        }

        v18 = v23;
        v28 = *(v23 + 48);
        v29 = v43 * a1;
        v30 = v28 + v43 * a1;
        v31 = v28 + v21 + v43;
        if (v43 * a1 < v21 || v30 >= v31)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_24:
          v19 = v22;
          a1 = v14;
          goto LABEL_5;
        }

        a1 = v14;
        if (v29 != v21)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_24;
        }

LABEL_5:
        v14 = (v14 + 1) & v19;
        v12 = v20;
        if (((*(v20 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v18 = v11;
LABEL_28:
    *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v18 = v11;
  }

  v33 = *(v18 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v35;
    ++*(v18 + 36);
  }

  return result;
}

uint64_t sub_24AC633D4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24ACD0420();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_24AC2ABC8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_24AC5E3F0();
      goto LABEL_7;
    }

    sub_24AC5BF4C(v17, a3 & 1);
    v22 = sub_24AC2ABC8(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_24AC5E094(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_24ACD0C80();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_24AC635C8(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v26 = a4;
  v27 = a5;
  v6 = v5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - v12;
  v14 = *v5;
  v16 = sub_24AC2ACC8(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_24AC5EB0C(&unk_27EF9E090, &qword_24ACD37C0, v26, v27);
      goto LABEL_7;
    }

    sub_24AC5CDC8(v19, a3 & 1, v26, v27);
    v24 = sub_24AC2ACC8(a2);
    if ((v20 & 1) == (v25 & 1))
    {
      v16 = v24;
      v22 = *v6;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v13, a2, v10);
      return sub_24AC5E210(v16, v13, a1, v22, &unk_27EF9E090, &qword_24ACD37C0);
    }

LABEL_15:
    result = sub_24ACD0C80();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v6;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v22[7] + 8 * v16) = a1;
}

uint64_t sub_24AC637CC(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v26 = a4;
  v27 = a5;
  v6 = v5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - v12;
  v14 = *v5;
  v16 = sub_24AC2A3B8(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_24AC5EB0C(&qword_27EF9DDE8, &unk_24ACD37D0, v26, v27);
      goto LABEL_7;
    }

    sub_24AC5C5F4(v19, a3 & 1, v26, v27);
    v24 = sub_24AC2A3B8(a2);
    if ((v20 & 1) == (v25 & 1))
    {
      v16 = v24;
      v22 = *v6;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v13, a2, v10);
      return sub_24AC5E210(v16, v13, a1, v22, &qword_27EF9DDE8, &unk_24ACD37D0);
    }

LABEL_15:
    result = sub_24ACD0C80();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v6;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v22[7] + 8 * v16) = a1;
}

uint64_t sub_24AC639E4(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v26 = a4;
  v27 = a5;
  v6 = v5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - v12;
  v14 = *v5;
  v16 = sub_24AC2AC60(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_24AC5E860(v26, v27);
      goto LABEL_7;
    }

    sub_24AC5C9D4(v19, a3 & 1, v26, v27);
    v24 = sub_24AC2AC60(a2);
    if ((v20 & 1) == (v25 & 1))
    {
      v16 = v24;
      v22 = *v6;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v13, a2, v10);
      return sub_24AC5E14C(v16, v13, a1, v22);
    }

LABEL_15:
    result = sub_24ACD0C80();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v6;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v22[7] + 8 * v16) = a1;
}

uint64_t sub_24AC63BDC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24ACD0420();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_24AC2ABC8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_24AC5EEE4();
      goto LABEL_7;
    }

    sub_24AC5D424(v17, a3 & 1);
    v28 = sub_24AC2ABC8(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_24AC5E2CC(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_24ACD0C80();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E690, &qword_24ACD4C10);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_24AC63DEC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - v10;
  v12 = *v3;
  v14 = sub_24AC2AC60(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_24AC5F240();
      goto LABEL_7;
    }

    sub_24AC5D8D4(v17, a3 & 1);
    v22 = sub_24AC2AC60(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_24AC5E14C(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_24ACD0C80();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_24AC63FC0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - v10;
  v12 = *v3;
  v14 = sub_24AC2AC60(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_24AC5F4C8();
      goto LABEL_7;
    }

    sub_24AC5DCB4(v17, a3 & 1);
    v22 = sub_24AC2AC60(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_24AC5E14C(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_24ACD0C80();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_24AC64194(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - v8;
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v7;
  v29 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24AC5FD10(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_24AC61BF0(&qword_27EF9DDE8, &unk_24ACD37D0, &qword_27EF9E348, &qword_24ACD4C60);
      goto LABEL_12;
    }

    sub_24AC622F0(v10 + 1);
  }

  v12 = *v3;
  sub_24AC2B6A8(&qword_27EF9DF98, &qword_27EF9DDE8, &unk_24ACD37D0, MEMORY[0x277D088B8]);
  v13 = sub_24ACD0520();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v17 = v7 + 16;
    v18 = v19;
    v20 = *(v17 + 56);
    do
    {
      v18(v9, *(v30 + 48) + v20 * a2, v6);
      sub_24AC2B6A8(&qword_27EF9DFE8, &qword_27EF9DDE8, &unk_24ACD37D0, MEMORY[0x277D088C0]);
      v21 = sub_24ACD0550();
      (*(v17 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v28;
  v23 = *v29;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24ACD0C70();
  __break(1u);
  return result;
}

uint64_t sub_24AC64458(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - v8;
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v7;
  v29 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24AC60070(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_24AC61BF0(&unk_27EF9E090, &qword_24ACD37C0, &qword_27EF9E338, &qword_24ACD4C50);
      goto LABEL_12;
    }

    sub_24AC62610(v10 + 1);
  }

  v12 = *v3;
  sub_24AC2B6A8(&qword_27EF9DFD8, &unk_27EF9E090, &qword_24ACD37C0, MEMORY[0x277D088B8]);
  v13 = sub_24ACD0520();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v17 = v7 + 16;
    v18 = v19;
    v20 = *(v17 + 56);
    do
    {
      v18(v9, *(v30 + 48) + v20 * a2, v6);
      sub_24AC2B6A8(&qword_27EF9E140, &unk_27EF9E090, &qword_24ACD37C0, MEMORY[0x277D088C0]);
      v21 = sub_24ACD0550();
      (*(v17 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v28;
  v23 = *v29;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24ACD0C70();
  __break(1u);
  return result;
}

uint64_t sub_24AC6471C(uint64_t result, unint64_t a2, char a3)
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
    sub_24AC603D0(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_24AC61E1C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_24AC62930(v5 + 1);
  }

  v8 = *v3;
  sub_24ACD0D10();
  v9 = qword_24ACD4C88[v4];
  MEMORY[0x24C22D480](v9);
  result = sub_24ACD0D50();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (qword_24ACD4C88[*(*(v8 + 48) + a2)] != v9)
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
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24ACD0C70();
  __break(1u);
  return result;
}

uint64_t sub_24AC64884(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_24AC6062C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_24AC61F5C();
      goto LABEL_16;
    }

    sub_24AC62B5C(v8 + 1);
  }

  v10 = *v4;
  sub_24ACD0D10();
  sub_24ACD05E0();
  result = sub_24ACD0D50();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_24ACD0C40();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_24ACD0C70();
  __break(1u);
  return result;
}

uint64_t sub_24AC64A04(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_24ACD0420();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24AC6088C(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_24AC620B8();
      goto LABEL_12;
    }

    sub_24AC62D94(v10 + 1);
  }

  v12 = *v3;
  sub_24AC66384(&qword_2814AE200, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v13 = sub_24ACD0520();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_24AC66384(&unk_2814AE1F0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_24ACD0550();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24ACD0C70();
  __break(1u);
  return result;
}

void *sub_24AC64CA8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24AC64D88(a1, a2, a3, *v3, &qword_27EF9DDE0, &qword_24ACD37C8, &qword_27EF9DDE8, &unk_24ACD37D0);
  *v3 = result;
  return result;
}

void *sub_24AC64CE8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24AC64D88(a1, a2, a3, *v3, &unk_27EF9DDD0, &qword_24ACD37B8, &unk_27EF9E090, &qword_24ACD37C0);
  *v3 = result;
  return result;
}

void *sub_24AC64D28(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24AC64F70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24AC64D48(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24AC650B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24AC64D68(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24AC65290(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24AC64D88(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_24AC64F70(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E308, &qword_24ACD4C20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E310, &qword_24ACD4C28);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24AC650B8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E328, &qword_24ACD4C40);
  v10 = *(sub_24ACD0420() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_24ACD0420() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_24AC65290(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E318, &qword_24ACD4C30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_24AC65400(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, void (*a5)(char *, char *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  v17 = *(a1 + 16);
  v18 = sub_24AC2B6A8(a4, a2, a3, MEMORY[0x277D088B8]);
  result = MEMORY[0x24C22D040](v17, v10, v18);
  v26 = result;
  if (v17)
  {
    v20 = v11 + 16;
    v25 = *(v11 + 16);
    v21 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v22 = *(v11 + 72);
    v23 = a5;
    v24 = (v20 - 8);
    do
    {
      v25(v14, v21, v10);
      v23(v16, v14);
      (*v24)(v16, v10);
      v21 += v22;
      --v17;
    }

    while (v17);
    return v26;
  }

  return result;
}

uint64_t sub_24AC655B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_24AC66330();
  result = MEMORY[0x24C22D040](v2, &type metadata for CentralManager.State, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_24AC5A0D8(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_24AC6562C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x24C22D040](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_24AC5A1F0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_24AC656C4(uint64_t a1)
{
  v2 = sub_24ACD0420();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_24AC66384(&qword_2814AE200, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  result = MEMORY[0x24C22D040](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_24AC5A340(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_24AC65860(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 88) = a3;
  *(v4 + 16) = a1;
  v5 = sub_24ACD0420();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  *(v4 + 64) = v6;
  *(v4 + 72) = *(v6 - 8);
  *(v4 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC65990, 0, 0);
}

uint64_t sub_24AC65990()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v11 = *(v0 + 64);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  v10 = *(v0 + 88);
  swift_defaultActor_initialize();
  swift_weakInit();
  *(v6 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_mockCharacteristics) = MEMORY[0x277D84F90];
  *(v6 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_characteristics) = MEMORY[0x277D84F98];
  *(v6 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_discoveryInProgress) = 0;
  v8 = (v6 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_mockBehavior);
  v8[1] = 0;
  v8[2] = 0;
  *v8 = 10000000000000000;
  swift_weakAssign();
  (*(v5 + 16))(v3, v7, v4);
  type metadata accessor for Service(0);
  sub_24ACD0000();
  (*(v2 + 32))(v6 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_id, v1, v11);
  *(v6 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_isPrimary) = v10;

  return MEMORY[0x2822009F8](sub_24AC65B14, v6, 0);
}

uint64_t sub_24AC65B14()
{
  (*(v0[6] + 8))(v0[3], v0[5]);

  v1 = v0[1];
  v2 = v0[4];

  return v1(v2);
}

uint64_t sub_24AC65BEC(uint64_t a1)
{
  *(a1 + 8) = sub_24AC66384(&qword_27EF9E2B0, type metadata accessor for MockService, &protocol conformance descriptor for MockService);
  result = sub_24AC66384(&qword_27EF9DFB8, type metadata accessor for MockService, &protocol conformance descriptor for MockService);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for MockService(uint64_t a1)
{
  result = qword_27EF9E2C0;
  if (!qword_27EF9E2C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24AC65D0C(uint64_t a1)
{
  sub_24AC2AA24(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of MockService.setMockingBehavior(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 264) + **(*v1 + 264));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AC20274;

  return v6(a1);
}

uint64_t dispatch thunk of MockService.__allocating_init(peripheral:identifier:isPrimary:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(v3 + 272) + **(v3 + 272));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_24AC2A800;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MockService.discover(characteristicIdentifiers:)(uint64_t a1)
{
  v6 = (*(*v1 + 280) + **(*v1 + 280));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AC2BA00;

  return v6(a1);
}

uint64_t dispatch thunk of MockService.subscript.getter(uint64_t a1)
{
  v6 = (*(*v1 + 288) + **(*v1 + 288));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AC2BA00;

  return v6(a1);
}

unint64_t sub_24AC66330()
{
  result = qword_2814AD8E8;
  if (!qword_2814AD8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814AD8E8);
  }

  return result;
}

uint64_t sub_24AC66384(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24AC663D0()
{
  v0 = sub_24ACD0490();
  __swift_allocate_value_buffer(v0, qword_27EF9E380);
  v1 = __swift_project_value_buffer(v0, qword_27EF9E380);
  if (qword_2814AD278 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814AD280);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t MockPeripheral.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_id;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24AC665C4@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_state;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_24AC66618(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_state;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_24AC666C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_lastSeen;
  swift_beginAccess();
  v5 = sub_24ACD0360();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_24AC66754(uint64_t a1, uint64_t *a2)
{
  v4 = sub_24ACD0360();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_lastSeen;
  swift_beginAccess();
  (*(v5 + 40))(v8 + v9, v7, v4);
  return swift_endAccess();
}

uint64_t sub_24AC6686C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_lastSeen;
  swift_beginAccess();
  v4 = sub_24ACD0360();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_24AC668F4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_lastSeen;
  swift_beginAccess();
  v4 = sub_24ACD0360();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

id sub_24AC669F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockBehavior);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  return sub_24AC56E10(v4, v5, v6);
}

void sub_24AC66A54(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = (*a2 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockBehavior);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  *v5 = v2;
  v5[1] = v3;
  v5[2] = v4;
  sub_24AC56E10(v2, v3, v4);
  sub_24AC56E90(v6, v7, v8);
}

id sub_24AC66AEC@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockBehavior);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  return sub_24AC56E10(v4, v5, v6);
}

__n128 sub_24AC66B48(__int128 *a1)
{
  v8 = *a1;
  v2 = *(a1 + 2);
  v3 = (v1 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockBehavior);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *v3 = v8;
  v3[2] = v2;
  sub_24AC56E90(v4, v5, v6);
  return result;
}

uint64_t sub_24AC66C18(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockSerialNumber);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_24AC66C84()
{
  v1 = (v0 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockSerialNumber);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_24AC66CDC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockSerialNumber);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_24AC66D9C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v18 - v13;
  sub_24AC2B5DC(a1, &v18 - v13, a5, a6);
  v15 = *a2;
  v16 = *a7;
  swift_beginAccess();
  sub_24AC463C4(v14, v15 + v16, a5, a6);
  return swift_endAccess();
}

uint64_t sub_24AC66E90@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_24AC2B5DC(v4 + v8, a4, a2, a3);
}

uint64_t sub_24AC66F18(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  sub_24AC463C4(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

BOOL sub_24AC66FEC()
{
  v1 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_state;
  swift_beginAccess();
  return *(v0 + v1) == 3;
}

uint64_t sub_24AC67038(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24AC67058, v1, 0);
}

uint64_t sub_24AC67058()
{
  Strong = swift_weakLoadStrong();
  *(v0 + 32) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24AC67180, Strong, 0);
  }

  else
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC6CFB4(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_24AC67180()
{
  v9 = v0;
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_24ACD0020();
  sub_24ACD0200();
  swift_allocObject();
  v7 = 0x1000000000;
  v8 = sub_24ACD01D0();
  sub_24AC6CD24(&v7, 1);
  v3 = v7;
  v4 = v8 | 0x4000000000000000;
  v5 = (v2 + *(type metadata accessor for PeripheralPairingInfo(0) + 20));
  *v5 = v3;
  v5[1] = v4;

  return MEMORY[0x2822009F8](sub_24AC2D400, v1, 0);
}

uint64_t sub_24AC67274(uint64_t a1)
{
  *(v2 + 64) = v1;
  *(v2 + 72) = *a1;
  *(v2 + 88) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_24AC672A4, v1, 0);
}

uint64_t sub_24AC672A4()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = (v0[8] + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockBehavior);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  *v4 = v3;
  v4[1] = v1;
  v4[2] = v2;
  sub_24AC56E10(v3, v1, v2);
  sub_24AC56E90(v5, v6, v7);
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v9 = Strong;
    Strong = sub_24AC67390;
    v10 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](Strong, v9, v10);
}

uint64_t sub_24AC67390()
{
  v1 = v0[11];
  v3 = v0[9];
  v2 = v0[10];
  v4 = (v0[12] + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_mockBehavior);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  *v4 = v3;
  v4[1] = v2;
  v4[2] = v1;
  sub_24AC56E10(v3, v2, v1);
  sub_24AC56E90(v5, v6, v7);

  v8 = v0[1];

  return v8();
}

uint64_t MockPeripheral.__allocating_init(centralManager:identifier:macAddress:isConnectable:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 120) = a4;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  *(v4 + 40) = a1;
  v5 = sub_24ACD0420();
  *(v4 + 64) = v5;
  *(v4 + 72) = *(v5 - 8);
  *(v4 + 80) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  *(v4 + 88) = v6;
  *(v4 + 96) = *(v6 - 8);
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_allocObject();

  return MEMORY[0x2822009F8](sub_24AC675A8, 0, 0);
}

uint64_t sub_24AC675A8()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v16 = *(v0 + 104);
  v17 = *(v0 + 88);
  v3 = *(v0 + 72);
  v19 = *(v0 + 120);
  v4 = *(v0 + 64);
  v18 = *(v0 + 56);
  v14 = *(v0 + 48);
  v15 = *(v0 + 80);
  v13 = v4;
  swift_defaultActor_initialize();
  v5 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_macAddress;
  v6 = sub_24ACD0090();
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  *(v1 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_advertisementData) = 0;
  sub_24ACD0350();
  v7 = (v1 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockBehavior);
  *v7 = 10000000000000000;
  v7[1] = 0;
  v7[2] = 0;
  v8 = (v1 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockSerialNumber);
  *v8 = 0;
  v8[1] = 0;
  (*(v3 + 56))(v1 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockBeaconIdentifier, 1, 1, v4);
  swift_weakInit();
  v9 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_connectContinuation;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v11 = *(*(v10 - 8) + 56);
  v11(v1 + v9, 1, 1, v10);
  v11(v1 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_cancelConnectContinuation, 1, 1, v10);
  *(v1 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockServices) = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_services) = MEMORY[0x277D84F98];
  *(v1 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_discoveryInProgress) = 0;
  *(v1 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral__isPaired) = 0;
  swift_weakAssign();
  (*(v3 + 16))(v15, v14, v13);
  type metadata accessor for Peripheral(0);
  sub_24ACD0000();
  (*(v2 + 32))(v1 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_id, v16, v17);
  swift_beginAccess();
  sub_24AC46BE8(v18, v1 + v5);
  swift_endAccess();
  *(v1 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_isConnectable) = v19;
  *(v1 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_state) = 1;

  return MEMORY[0x2822009F8](sub_24AC6789C, v1, 0);
}

uint64_t sub_24AC6789C()
{
  v1 = v0[9];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];

  sub_24AC212F4(v3, &qword_27EF9E048, &qword_24ACD5910);
  (*(v1 + 8))(v4, v2);

  v5 = v0[1];
  v6 = v0[14];

  return v5(v6);
}

uint64_t MockPeripheral.init(centralManager:identifier:macAddress:isConnectable:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 120) = a4;
  *(v5 + 56) = a3;
  *(v5 + 64) = v4;
  *(v5 + 40) = a1;
  *(v5 + 48) = a2;
  v6 = sub_24ACD0420();
  *(v5 + 72) = v6;
  *(v5 + 80) = *(v6 - 8);
  *(v5 + 88) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  *(v5 + 96) = v7;
  *(v5 + 104) = *(v7 - 8);
  *(v5 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC67A90, 0, 0);
}

uint64_t sub_24AC67A90()
{
  v1 = *(v0 + 104);
  v16 = *(v0 + 112);
  v17 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v19 = *(v0 + 120);
  v4 = *(v0 + 64);
  v18 = *(v0 + 56);
  v14 = *(v0 + 48);
  v15 = *(v0 + 88);
  v13 = v2;
  swift_defaultActor_initialize();
  v5 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_macAddress;
  v6 = sub_24ACD0090();
  (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);
  *(v4 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_advertisementData) = 0;
  sub_24ACD0350();
  v7 = (v4 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockBehavior);
  *v7 = 10000000000000000;
  v7[1] = 0;
  v7[2] = 0;
  v8 = (v4 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockSerialNumber);
  *v8 = 0;
  v8[1] = 0;
  (*(v3 + 56))(v4 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockBeaconIdentifier, 1, 1, v2);
  swift_weakInit();
  v9 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_connectContinuation;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v11 = *(*(v10 - 8) + 56);
  v11(v4 + v9, 1, 1, v10);
  v11(v4 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_cancelConnectContinuation, 1, 1, v10);
  *(v4 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockServices) = MEMORY[0x277D84F90];
  *(v4 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_services) = MEMORY[0x277D84F98];
  *(v4 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_discoveryInProgress) = 0;
  *(v4 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral__isPaired) = 0;
  swift_weakAssign();
  (*(v3 + 16))(v15, v14, v13);
  type metadata accessor for Peripheral(0);
  sub_24ACD0000();
  (*(v1 + 32))(v4 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_id, v16, v17);
  swift_beginAccess();
  sub_24AC46BE8(v18, v4 + v5);
  swift_endAccess();
  *(v4 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_isConnectable) = v19;
  *(v4 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_state) = 1;

  return MEMORY[0x2822009F8](sub_24AC67D84, v4, 0);
}

uint64_t sub_24AC67D84()
{
  v1 = v0[10];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];

  sub_24AC212F4(v3, &qword_27EF9E048, &qword_24ACD5910);
  (*(v1 + 8))(v4, v2);

  v5 = v0[1];
  v6 = v0[8];

  return v5(v6);
}

uint64_t sub_24AC67E4C(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockServices) = a1;
}

uint64_t sub_24AC67E90()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E068, &qword_24ACD4140);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC67F2C, v0, 0);
}

uint64_t sub_24AC67F2C()
{
  v1 = *(v0 + 24);
  *(v0 + 48) = 20;
  v2 = type metadata accessor for Peripheral.Options(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_24AC2F5A4;

  return sub_24AC68008();
}

uint64_t sub_24AC68008()
{
  *(v1 + 64) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  *(v1 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC680A4, v0, 0);
}

uint64_t sub_24AC680A4()
{
  v1 = v0[8];
  v2 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_state;
  swift_beginAccess();
  if (*(v1 + v2) != 3)
  {
    if (*(v0[8] + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_isConnectable) == 1 && (Strong = swift_weakLoadStrong(), (v0[10] = Strong) != 0))
    {
      v4 = Strong;
      v6 = v0[8];
      v5 = v0[9];
      v7 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_connectContinuation;
      swift_beginAccess();
      sub_24AC2B5DC(v6 + v7, v5, &qword_27EF9E4F0, &unk_24ACD4130);
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
      LODWORD(v6) = (*(*(v8 - 8) + 48))(v5, 1, v8);
      sub_24AC212F4(v5, &qword_27EF9E4F0, &unk_24ACD4130);
      if (v6 == 1)
      {
        v9 = v0[8];
        v10 = sub_24AC6CFB4(&qword_27EF9E3B8, type metadata accessor for MockPeripheral, &protocol conformance descriptor for MockPeripheral);
        v11 = swift_task_alloc();
        v0[11] = v11;
        *(v11 + 16) = v9;
        *(v11 + 24) = v4;
        v12 = swift_task_alloc();
        v0[12] = v12;
        *v12 = v0;
        v12[1] = sub_24AC68498;
        v13 = MEMORY[0x277D84F78] + 8;

        return MEMORY[0x2822008A0](v12, v9, v10, 0xD000000000000019, 0x800000024ACD9A90, sub_24AC6CE18, v11, v13);
      }

      type metadata accessor for CentralManager.Error(0);
      sub_24AC6CFB4(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      type metadata accessor for CentralManager.Error(0);
      sub_24AC6CFB4(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_24AC68498()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = sub_24AC6E9E4;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_24AC6E9E8;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC685C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v8 = swift_task_alloc();
  v6[5] = v8;
  *v8 = v6;
  v8[1] = sub_24AC68660;

  return sub_24ACC37E4(a5);
}

uint64_t sub_24AC68660()
{
  v2 = *v1;
  v2[6] = v0;

  if (v0)
  {
    v3 = v2[3];

    return MEMORY[0x2822009F8](sub_24AC6E9F0, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_24AC68794()
{
  *(v1 + 32) = v0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v2 = swift_task_alloc();
  *(v1 + 40) = v2;
  *v2 = v1;
  v2[1] = sub_24AC317A4;

  return sub_24AC68830();
}

uint64_t sub_24AC68830()
{
  *(v1 + 64) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  *(v1 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC688CC, v0, 0);
}

uint64_t sub_24AC688CC()
{
  v1 = v0[8];
  v2 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_state;
  swift_beginAccess();
  if (*(v1 + v2) != 1)
  {
    Strong = swift_weakLoadStrong();
    v0[10] = Strong;
    if (Strong)
    {
      v4 = Strong;
      v6 = v0[8];
      v5 = v0[9];
      v7 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_cancelConnectContinuation;
      swift_beginAccess();
      sub_24AC2B5DC(v6 + v7, v5, &qword_27EF9E4F0, &unk_24ACD4130);
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
      LODWORD(v6) = (*(*(v8 - 8) + 48))(v5, 1, v8);
      sub_24AC212F4(v5, &qword_27EF9E4F0, &unk_24ACD4130);
      if (v6 == 1)
      {
        v9 = v0[8];
        v10 = sub_24AC6CFB4(&qword_27EF9E3B8, type metadata accessor for MockPeripheral, &protocol conformance descriptor for MockPeripheral);
        v11 = swift_task_alloc();
        v0[11] = v11;
        *(v11 + 16) = v9;
        *(v11 + 24) = v4;
        v12 = swift_task_alloc();
        v0[12] = v12;
        *v12 = v0;
        v12[1] = sub_24AC68C44;
        v13 = MEMORY[0x277D84F78] + 8;

        return MEMORY[0x2822008A0](v12, v9, v10, 0xD00000000000001ALL, 0x800000024ACD93B0, sub_24AC6CE58, v11, v13);
      }

      type metadata accessor for CentralManager.Error(0);
      sub_24AC6CFB4(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      type metadata accessor for CentralManager.Error(0);
      sub_24AC6CFB4(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_24AC68C44()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = sub_24AC68DD8;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_24AC68D6C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC68D6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AC68DD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AC68E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v28 = a3;
  v29 = a6;
  v26 = a4;
  v27 = a5;
  v25 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v25 - v16;
  v18 = *(v9 + 16);
  v18(&v25 - v16, a1, v8);
  (*(v9 + 56))(v17, 0, 1, v8);
  v19 = *v26;
  swift_beginAccess();
  sub_24AC463C4(v17, a2 + v19, &qword_27EF9E4F0, &unk_24ACD4130);
  swift_endAccess();
  v20 = sub_24ACD07C0();
  (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
  v18(v11, v25, v8);
  v21 = sub_24AC6CFB4(&qword_27EF9E3B8, type metadata accessor for MockPeripheral, &protocol conformance descriptor for MockPeripheral);
  v22 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = a2;
  *(v23 + 3) = v21;
  *(v23 + 4) = v28;
  *(v23 + 5) = a2;
  (*(v9 + 32))(&v23[v22], v11, v8);
  swift_retain_n();

  sub_24AC7EA6C(0, 0, v14, v29, v23);
}

uint64_t sub_24AC6914C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v8 = swift_task_alloc();
  v6[5] = v8;
  *v8 = v6;
  v8[1] = sub_24AC691EC;

  return sub_24ACC3CA4(a5);
}

uint64_t sub_24AC691EC()
{
  v2 = *v1;
  v2[6] = v0;

  if (v0)
  {
    v3 = v2[3];

    return MEMORY[0x2822009F8](sub_24AC69320, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_24AC69320()
{
  v0[2] = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  sub_24ACD0750();
  v1 = v0[1];

  return v1();
}

uint64_t sub_24AC693C8()
{
  if (swift_weakLoadStrong())
  {
    v1 = *(v0 + 16);

    v2 = *(v1 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral__isPaired);
    v3 = *(v0 + 8);
  }

  else
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC6CFB4(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v3 = *(v0 + 8);
    v2 = 0;
  }

  return v3(v2);
}

uint64_t sub_24AC694F8()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_isPairingCentralManager) == 1)
    {
      v2 = *(v0 + 40);
      v3 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_state;
      swift_beginAccess();
      if (*(v2 + v3) == 3)
      {
        v4 = *(v0 + 40);

        *(v4 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral__isPaired) = 1;
        v5 = *(v0 + 8);
        goto LABEL_8;
      }
    }

    type metadata accessor for CentralManager.Error(0);
    sub_24AC6CFB4(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC6CFB4(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v5 = *(v0 + 8);
LABEL_8:

  return v5();
}

uint64_t sub_24AC69758()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_isPairingCentralManager) == 1)
    {
      v2 = *(v0 + 16);

      *(v2 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral__isPaired) = 0;
      v3 = *(v0 + 8);
      goto LABEL_7;
    }

    type metadata accessor for CentralManager.Error(0);
    sub_24AC6CFB4(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC6CFB4(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v3 = *(v0 + 8);
LABEL_7:

  return v3();
}

uint64_t sub_24AC698F8(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v4 = sub_24ACD0AF0();
  v2[26] = v4;
  v2[27] = *(v4 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC69A5C, v1, 0);
}

uint64_t sub_24AC69A5C()
{
  if (swift_weakLoadStrong() && (v1 = v0[18], , v2 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_state, swift_beginAccess(), *(v1 + v2) == 3) && (v3 = v0[18], v4 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_discoveryInProgress, v0[30] = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_discoveryInProgress, (*(v3 + v4) & 1) == 0))
  {
    v7 = (v3 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockBehavior);
    swift_beginAccess();
    v8 = *v7;
    v0[31] = *v7;
    v9 = v7[1];
    v0[32] = v9;
    v10 = v7[2];
    v0[33] = v10;
    *(v3 + v4) = 1;
    if (v10 < 0)
    {
      v12 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      sub_24ACD0CB0();
      v13 = swift_task_alloc();
      v0[34] = v13;
      *v13 = v0;
      v13[1] = sub_24AC69E08;
    }

    else
    {
      sub_24ACD0CB0();
      v11 = swift_task_alloc();
      v0[36] = v11;
      *v11 = v0;
      v11[1] = sub_24AC69F84;
    }

    return sub_24AC59658(v8, v9, 0, 0, 1);
  }

  else
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC6CFB4(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_24AC69E08()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = v2[28];
  v4 = v2[27];
  v5 = v2[26];
  v6 = v2[18];
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = sub_24AC6AD10;
  }

  else
  {
    v7 = sub_24AC6AC3C;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24AC69F84()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = v2[29];
  v4 = v2[27];
  v5 = v2[26];
  v6 = v2[18];
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = sub_24AC6AB84;
  }

  else
  {
    v7 = sub_24AC6A100;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

unint64_t sub_24AC6A100()
{
  v1 = *(v0 + 144);
  if (*(v0 + 136))
  {
    v2 = *(v0 + 136);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v97 = sub_24AC653D0(v2);

  v3 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockServices;
  v4 = *(v1 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockServices);
  if (v4 >> 62)
  {
    goto LABEL_36;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  v6 = MEMORY[0x277D84F90];
  v119 = v0;
  if (v5)
  {
    v122 = MEMORY[0x277D84F90];
    v7 = v4;

    result = sub_24AC64CE8(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      goto LABEL_87;
    }

    v113 = v3;
    v116 = v1;
    v9 = 0;
    v10 = *(v0 + 160);
    v6 = v122;
    v11 = v7;
    v12 = (v10 + 16);
    do
    {
      v13 = *(v0 + 200);
      v14 = *(v0 + 152);
      if ((v7 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x24C22D1B0](v9);
        (*v12)(v13, v15 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_id, v14);
        v0 = v119;
        swift_unknownObjectRelease();
      }

      else
      {
        (*v12)(*(v0 + 200), *(v11 + 8 * v9 + 32) + OBJC_IVAR____TtC15FindMyBluetooth11MockService_id, *(v0 + 152));
      }

      v17 = *(v122 + 16);
      v16 = *(v122 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_24AC64CE8((v16 > 1), v17 + 1, 1);
      }

      v18 = *(v0 + 200);
      v19 = *(v0 + 152);
      ++v9;
      *(v122 + 16) = v17 + 1;
      (*(v10 + 32))(v122 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v17, v18, v19);
      v11 = v7;
    }

    while (v5 != v9);

    v3 = v113;
    v1 = v116;
  }

  v117 = sub_24AC653D0(v6);

  v20 = *&v3[v1];
  if (v20 >> 62)
  {
    v36 = *&v3[v1];
    v3 = sub_24ACD0B30();
    v20 = v36;
    v1 = &unk_27EF9E000;
    if (v3)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v3 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v1 = &unk_27EF9E000;
    if (v3)
    {
LABEL_18:
      v106 = v20 & 0xC000000000000001;
      v98 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_services;
      v99 = *(v0 + 144);
      v100 = v20 + 32;
      v101 = v20 & 0xFFFFFFFFFFFFFF8;
      v114 = v117 + 56;
      v102 = *(v0 + 160);
      v103 = v20;
      v21 = (v102 + 8);

      v22 = 0;
      v104 = v3;
      while (1)
      {
        if (v106)
        {
          v4 = MEMORY[0x24C22D1B0](v22, v103);
          v120 = v4;
          v25 = __OFADD__(v22, 1);
          v26 = v22 + 1;
          if (v25)
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (v22 >= *(v101 + 16))
          {
            goto LABEL_35;
          }

          v120 = *(v100 + 8 * v22);

          v25 = __OFADD__(v22, 1);
          v26 = v22 + 1;
          if (v25)
          {
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            v35 = v4;
            v5 = sub_24ACD0B30();
            v4 = v35;
            goto LABEL_6;
          }
        }

        v108 = v26;
        if (*(v117 + 16))
        {
          v1 = v119[19];
          v27 = OBJC_IVAR____TtC15FindMyBluetooth11MockService_id;
          sub_24AC6CE98(&qword_27EF9DFD8, MEMORY[0x277D088B8]);
          v28 = sub_24ACD0520();
          v29 = -1 << *(v117 + 32);
          v0 = v28 & ~v29;
          if ((*(v114 + ((v0 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v0))
          {
            v30 = ~v29;
            v31 = *(v102 + 72);
            v3 = *(v102 + 16);
            while (1)
            {
              v1 = v119[24];
              v32 = v119[19];
              (v3)(v1, *(v117 + 48) + v0 * v31, v32);
              sub_24AC6CE98(&qword_27EF9E140, MEMORY[0x277D088C0]);
              v33 = sub_24ACD0550();
              v34 = *v21;
              (*v21)(v1, v32);
              if (v33)
              {
                break;
              }

              v0 = (v0 + 1) & v30;
              if (((*(v114 + ((v0 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v0) & 1) == 0)
              {
                goto LABEL_20;
              }
            }

            v0 = v119;
            v1 = v119[24];
            v23 = v119[19];
            (v3)(v1, v120 + v27, v23);
            v3 = v99;
            swift_beginAccess();

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v123 = *&v99[v98];
            *&v99[v98] = 0x8000000000000000;
            sub_24AC63BC8(v120, v1, isUniquelyReferenced_nonNull_native);
            v34(v1, v23);
            *&v99[v98] = v123;
            swift_endAccess();
          }
        }

LABEL_20:

        v22 = v108;
        if (v108 == v104)
        {

          v0 = v119;
          v1 = 0x27EF9E000;
          break;
        }
      }
    }
  }

  v37 = *(v0 + 160);
  v38 = *(v0 + 144);

  v39 = *(v1 + 928);
  swift_beginAccess();
  v121 = v38;
  v118 = v39;
  v40 = *(v38 + v39);
  v41 = -1;
  v42 = -1 << *(v40 + 32);
  if (-v42 < 64)
  {
    v41 = ~(-1 << -v42);
  }

  v43 = v41 & *(v40 + 64);
  v44 = (63 - v42) >> 6;
  v112 = v37;
  v115 = (v37 + 16);
  v45 = (v37 + 32);
  result = swift_bridgeObjectRetain_n();
  v46 = 0;
  v47 = MEMORY[0x277D84F90];
  if (!v43)
  {
    goto LABEL_43;
  }

  do
  {
LABEL_41:
    while (1)
    {
      v48 = __clz(__rbit64(v43));
      v43 &= v43 - 1;
      v49 = *(*(v40 + 56) + ((v46 << 9) | (8 * v48)));
      if (v49)
      {
        break;
      }

      if (!v43)
      {
        goto LABEL_43;
      }
    }

    v51 = *(v0 + 176);
    v109 = *(v0 + 184);
    v52 = *(v0 + 152);
    (*v115)(v51, v49 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_id, v52);
    v53 = v45;
    v54 = *v45;
    v55 = v109;
    v110 = v53;
    v54(v55, v51, v52);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v47 = sub_24AC1D2F8(0, v47[2] + 1, 1, v47);
    }

    v57 = v47[2];
    v56 = v47[3];
    if (v57 >= v56 >> 1)
    {
      v47 = sub_24AC1D2F8((v56 > 1), v57 + 1, 1, v47);
    }

    v58 = *(v0 + 184);
    v59 = *(v0 + 152);
    v47[2] = v57 + 1;
    result = (v54)(v47 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v57, v58, v59);
    v45 = v110;
  }

  while (v43);
  while (1)
  {
LABEL_43:
    v50 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      __break(1u);
      goto LABEL_84;
    }

    if (v50 >= v44)
    {
      break;
    }

    v43 = *(v40 + 64 + 8 * v50);
    ++v46;
    if (v43)
    {
      v46 = v50;
      goto LABEL_41;
    }
  }

  v60 = sub_24AC653D0(v47);

  if (*(v60 + 16) <= *(v97 + 16) >> 3)
  {
    sub_24AC5A844(v60);

    v61 = v97;
  }

  else
  {
    v61 = sub_24AC5B4D0(v60, v97);
  }

  v62 = *(v0 + 160);
  v63 = v61 + 56;
  v64 = -1 << *(v61 + 32);
  if (-v64 < 64)
  {
    v65 = ~(-1 << -v64);
  }

  else
  {
    v65 = -1;
  }

  v66 = v65 & *(v61 + 56);
  result = swift_beginAccess();
  v67 = 0;
  v68 = (63 - v64) >> 6;
  v105 = (v62 + 8);
  v107 = v61 + 56;
  v111 = v61;
  while (v66)
  {
LABEL_67:
    v74 = *(v0 + 168);
    v75 = *(v112 + 72);
    v76 = *(v61 + 48) + v75 * (__clz(__rbit64(v66)) | (v67 << 6));
    v77 = *(v112 + 16);
    v77(v74, v76, *(v0 + 152));
    v78 = swift_isUniquelyReferenced_nonNull_native();
    v124 = *(v121 + v118);
    v79 = v124;
    *(v121 + v118) = 0x8000000000000000;
    result = sub_24AC2ACC8(v74);
    v81 = v124[2];
    v82 = (v80 & 1) == 0;
    v25 = __OFADD__(v81, v82);
    v83 = v81 + v82;
    if (v25)
    {
      goto LABEL_85;
    }

    v84 = v80;
    if (v124[3] < v83)
    {
      v85 = v119[21];
      sub_24AC5CDB4(v83, v78);
      v79 = v124;
      result = sub_24AC2ACC8(v85);
      if ((v84 & 1) != (v86 & 1))
      {

        return sub_24ACD0C80();
      }

LABEL_72:
      if (v84)
      {
        goto LABEL_60;
      }

      goto LABEL_73;
    }

    if (v78)
    {
      goto LABEL_72;
    }

    v92 = result;
    sub_24AC5EAE8();
    result = v92;
    v79 = v124;
    if (v84)
    {
LABEL_60:
      v69 = v79[7];
      v70 = *(v69 + 8 * result);
      *(v69 + 8 * result) = 0;
      goto LABEL_61;
    }

LABEL_73:
    v87 = v119[21];
    v88 = v119[19];
    v79[(result >> 6) + 8] |= 1 << result;
    v89 = result;
    result = v77(v79[6] + result * v75, v87, v88);
    *(v79[7] + 8 * v89) = 0;
    v90 = v79[2];
    v25 = __OFADD__(v90, 1);
    v91 = v90 + 1;
    if (v25)
    {
      goto LABEL_86;
    }

    v79[2] = v91;
    v70 = 1;
LABEL_61:
    v66 &= v66 - 1;
    v0 = v119;
    v71 = v119[21];
    v72 = v119[19];
    *(v121 + v118) = v79;
    sub_24AC2B7BC(v70);
    result = (*v105)(v71, v72);
    v63 = v107;
    v61 = v111;
  }

  while (1)
  {
    v73 = v67 + 1;
    if (__OFADD__(v67, 1))
    {
      break;
    }

    if (v73 >= v68)
    {
      v93 = *(v0 + 240);
      v94 = *(v0 + 144);
      swift_endAccess();

      *(v94 + v93) = 0;

      v95 = *(v0 + 8);
      v96 = MEMORY[0x277D84F90];

      return v95(v96);
    }

    v66 = *(v63 + 8 * v73);
    ++v67;
    if (v66)
    {
      v67 = v73;
      goto LABEL_67;
    }
  }

LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
  return result;
}

uint64_t sub_24AC6AB84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AC6AC3C(uint64_t a1)
{
  *(v1[18] + v1[30]) = 0;
  swift_willThrow();

  v2 = v1[1];

  return v2();
}

uint64_t sub_24AC6AD10()
{
  sub_24AC56E90(v0[31], v0[32], v0[33]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24AC6ADD4(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_24AC6ADF4, v1, 0);
}

uint64_t sub_24AC6ADF4()
{
  v1 = *(v0 + 48);
  v2 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_services;
  *(v0 + 56) = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_services;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {
    v4 = *(v0 + 40);

    v5 = sub_24AC2ACC8(v4);
    if (v6)
    {
      v7 = *(*(v3 + 56) + 8 * v5);

      if (v7)
      {
        v8 = *(v0 + 8);

        return v8(v7);
      }
    }

    else
    {
    }
  }

  v10 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9DDD0, &qword_24ACD37B8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  *(v0 + 64) = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 80);
  *(v0 + 96) = v13;
  v14 = (v13 + 32) & ~v13;
  v15 = swift_allocObject();
  *(v0 + 72) = v15;
  *(v15 + 16) = xmmword_24ACD39E0;
  (*(v12 + 16))(v15 + v14, v10, v11);
  v16 = swift_task_alloc();
  *(v0 + 80) = v16;
  *v16 = v0;
  v16[1] = sub_24AC6B014;

  return sub_24AC698F8(v15);
}

uint64_t sub_24AC6B014(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v4 = *(v3 + 48);
    v5 = sub_24AC59164;
  }

  else
  {
    v6 = *(v3 + 48);

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v5 = sub_24AC6B188;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AC6B188()
{
  v1 = *(v0[6] + v0[7]);
  if (*(v1 + 16))
  {
    v2 = v0[5];

    v3 = sub_24AC2ACC8(v2);
    if (v4)
    {
      v5 = *(*(v1 + 56) + 8 * v3);

      if (v5)
      {
        v6 = v0[1];

        return v6(v5);
      }
    }

    else
    {
    }
  }

  type metadata accessor for CentralManager.Error(0);
  sub_24AC6CFB4(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v8 = v0[1];

  return v8();
}

uint64_t sub_24AC6B2E4(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E048, &qword_24ACD5910);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC6B380, v1, 0);
}

uint64_t sub_24AC6B380()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = sub_24ACD0090();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v6 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_macAddress;
  swift_beginAccess();
  sub_24AC463C4(v1, v2 + v6, &qword_27EF9E048, &qword_24ACD5910);
  swift_endAccess();

  v7 = v0[1];

  return v7();
}

uint64_t sub_24AC6B4B0()
{
  v1[8] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC6B5C0, v0, 0);
}

uint64_t sub_24AC6B5C0()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[8];
  v5 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_connectContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v4 + v5, v3, &qword_27EF9E4F0, &unk_24ACD4130);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_24AC212F4(v0[10], &qword_27EF9E4F0, &unk_24ACD4130);
    if (qword_27EF9DC50 != -1)
    {
      swift_once();
    }

    v6 = sub_24ACD0490();
    __swift_project_value_buffer(v6, qword_27EF9E380);
    v7 = sub_24ACD0470();
    v8 = sub_24ACD0910();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_24AC18000, v7, v8, "Missing connectContinuation!", v9, 2u);
      MEMORY[0x24C22DC60](v9, -1, -1);
    }
  }

  else
  {
    v11 = v0[12];
    v10 = v0[13];
    v12 = v0[11];
    v13 = v0[9];
    (*(v11 + 32))(v10, v0[10], v12);
    sub_24ACD0760();
    (*(v11 + 8))(v10, v12);
    (*(v11 + 56))(v13, 1, 1, v12);
    swift_beginAccess();
    sub_24AC463C4(v13, v4 + v5, &qword_27EF9E4F0, &unk_24ACD4130);
    swift_endAccess();
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_24AC6B820(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC6B930, v1, 0);
}

uint64_t sub_24AC6B930()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[10];
  v5 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_connectContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v4 + v5, v3, &qword_27EF9E4F0, &unk_24ACD4130);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_24AC212F4(v0[12], &qword_27EF9E4F0, &unk_24ACD4130);
    if (qword_27EF9DC50 != -1)
    {
      swift_once();
    }

    v6 = sub_24ACD0490();
    __swift_project_value_buffer(v6, qword_27EF9E380);
    v7 = sub_24ACD0470();
    v8 = sub_24ACD0910();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_24AC18000, v7, v8, "Missing connectContinuation!", v9, 2u);
      MEMORY[0x24C22DC60](v9, -1, -1);
    }
  }

  else
  {
    v10 = v0[9];
    (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
    v12 = v0[14];
    v11 = v0[15];
    v13 = v0[13];
    if (v10)
    {
      v14 = v0[9];
      v0[8] = v14;
      v15 = v14;
      sub_24ACD0750();
    }

    else
    {
      sub_24ACD0760();
    }

    (*(v12 + 8))(v11, v13);
    v16 = v0[11];
    (*(v0[14] + 56))(v16, 1, 1, v0[13]);
    swift_beginAccess();
    sub_24AC463C4(v16, v4 + v5, &qword_27EF9E4F0, &unk_24ACD4130);
    swift_endAccess();
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_24AC6BBAC(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC6BCBC, v1, 0);
}

uint64_t sub_24AC6BCBC()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[10];
  v5 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_cancelConnectContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v4 + v5, v3, &qword_27EF9E4F0, &unk_24ACD4130);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_24AC212F4(v0[12], &qword_27EF9E4F0, &unk_24ACD4130);
    if (qword_27EF9DC50 != -1)
    {
      swift_once();
    }

    v6 = sub_24ACD0490();
    __swift_project_value_buffer(v6, qword_27EF9E380);
    v7 = sub_24ACD0470();
    v8 = sub_24ACD0910();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_24AC18000, v7, v8, "Missing cancelConnectContinuation!", v9, 2u);
      MEMORY[0x24C22DC60](v9, -1, -1);
    }
  }

  else
  {
    v10 = v0[9];
    (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
    v12 = v0[14];
    v11 = v0[15];
    v13 = v0[13];
    if (v10)
    {
      v14 = v0[9];
      v0[8] = v14;
      v15 = v14;
      sub_24ACD0750();
    }

    else
    {
      sub_24ACD0760();
    }

    (*(v12 + 8))(v11, v13);
    v16 = v0[11];
    (*(v0[14] + 56))(v16, 1, 1, v0[13]);
    swift_beginAccess();
    sub_24AC463C4(v16, v4 + v5, &qword_27EF9E4F0, &unk_24ACD4130);
    swift_endAccess();
  }

  v17 = v0[1];

  return v17();
}

uint64_t MockPeripheral.deinit()
{
  v1 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_id;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24AC212F4(v0 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_macAddress, &qword_27EF9E048, &qword_24ACD5910);

  v3 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_lastSeen;
  v4 = sub_24ACD0360();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_24AC56E90(*(v0 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockBehavior), *(v0 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockBehavior + 8), *(v0 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockBehavior + 16));

  sub_24AC212F4(v0 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockBeaconIdentifier, &qword_27EF9EC40, &qword_24ACD8620);
  swift_weakDestroy();
  sub_24AC212F4(v0 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_connectContinuation, &qword_27EF9E4F0, &unk_24ACD4130);
  sub_24AC212F4(v0 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_cancelConnectContinuation, &qword_27EF9E4F0, &unk_24ACD4130);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t MockPeripheral.__deallocating_deinit()
{
  MockPeripheral.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24AC6C118@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_id;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24AC6C19C(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_24AC6C1BC, v1, 0);
}

uint64_t sub_24AC6C1BC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_macAddress;
  swift_beginAccess();
  sub_24AC2B5DC(v1 + v3, v2, &qword_27EF9E048, &qword_24ACD5910);
  v4 = v0[1];

  return v4();
}

uint64_t sub_24AC6C268(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_24AC6C288, v1, 0);
}

uint64_t sub_24AC6C288()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_state;
  swift_beginAccess();
  *v1 = *(v2 + v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_24AC6C310(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_24AC6C330, v1, 0);
}

uint64_t sub_24AC6C330()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_lastSeen;
  swift_beginAccess();
  v4 = sub_24ACD0360();
  (*(*(v4 - 8) + 16))(v2, v1 + v3, v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_24AC6C3FC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24AC6C41C, v1, 0);
}

uint64_t sub_24AC6C41C()
{
  Strong = swift_weakLoadStrong();
  *(v0 + 32) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24AC6C544, Strong, 0);
  }

  else
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC6CFB4(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_24AC6C544()
{
  v9 = v0;
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_24ACD0020();
  sub_24ACD0200();
  swift_allocObject();
  v7 = 0x1000000000;
  v8 = sub_24ACD01D0();
  sub_24AC6CD24(&v7, 1);
  v3 = v7;
  v4 = v8 | 0x4000000000000000;
  v5 = (v2 + *(type metadata accessor for PeripheralPairingInfo(0) + 20));
  *v5 = v3;
  v5[1] = v4;

  return MEMORY[0x2822009F8](sub_24AC47C24, v1, 0);
}

uint64_t sub_24AC6C638()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E068, &qword_24ACD4140);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC6C6D4, v0, 0);
}

uint64_t sub_24AC6C6D4()
{
  v1 = *(v0 + 24);
  *(v0 + 48) = 20;
  v2 = type metadata accessor for Peripheral.Options(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_24AC38644;

  return sub_24AC68008();
}

uint64_t sub_24AC6C7B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC214AC;

  return sub_24AC68008();
}

uint64_t sub_24AC6C83C()
{
  *(v1 + 32) = v0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v2 = swift_task_alloc();
  *(v1 + 40) = v2;
  *v2 = v1;
  v2[1] = sub_24AC315CC;

  return sub_24AC68830();
}

uint64_t sub_24AC6C8D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC20274;

  return sub_24AC68830();
}

uint64_t sub_24AC6C984()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC214AC;

  return sub_24AC694D8();
}

uint64_t sub_24AC6CA10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC214AC;

  return sub_24AC69738();
}

uint64_t sub_24AC6CA9C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E048, &qword_24ACD5910);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC6E9F4, v1, 0);
}

uint64_t sub_24AC6CB38(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC1E290;

  return sub_24AC698F8(a1);
}

uint64_t sub_24AC6CBCC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC214BC;

  return sub_24AC6ADD4(a1);
}

uint64_t sub_24AC6CC60()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC283BC;

  return sub_24AC8106C();
}

uint64_t sub_24AC6CD24(int *a1, int a2)
{
  result = sub_24ACD0250();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_24ACD01C0();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  result = sub_24ACD01F0();
  v8 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v6 - v5;
  v10 = sub_24ACD01E0();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  memset((v7 + v8), a2, v11);
}

uint64_t type metadata accessor for MockPeripheral(uint64_t a1)
{
  result = qword_27EF9E3D0;
  if (!qword_27EF9E3D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24AC6CE98(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EF9E090, &qword_24ACD37C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24AC6CF30(uint64_t a1)
{
  *(a1 + 8) = sub_24AC6CFB4(&qword_27EF9E3C8, type metadata accessor for MockPeripheral, &protocol conformance descriptor for MockPeripheral);
  result = sub_24AC6CFB4(&qword_27EF9E100, type metadata accessor for MockPeripheral, &protocol conformance descriptor for MockPeripheral);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24AC6CFB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  swift_beginAccess();
  return sub_24AC2B5DC(v8 + v9, a5, a3, a4);
}

void sub_24AC6D0BC(uint64_t a1)
{
  sub_24AC6E578(319, &qword_2814AE260, type metadata accessor for Peripheral, MEMORY[0x277D088B0]);
  if (v1 <= 0x3F)
  {
    sub_24AC6E578(319, &qword_2814AE218, MEMORY[0x277D088D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_24ACD0360();
      if (v3 <= 0x3F)
      {
        sub_24AC6E578(319, &qword_27EF9E3E0, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_24AC2AA7C(319);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t dispatch thunk of MockPeripheral.pairingInfo.getter(uint64_t a1)
{
  v6 = (*(*v1 + 544) + **(*v1 + 544));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AC20274;

  return v6(a1);
}

uint64_t dispatch thunk of MockPeripheral.setMockingBehavior(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 552) + **(*v1 + 552));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AC214AC;

  return v6(a1);
}

uint64_t dispatch thunk of MockPeripheral.__allocating_init(centralManager:identifier:macAddress:isConnectable:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(v4 + 560) + **(v4 + 560));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_24AC2A800;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MockPeripheral.connect()()
{
  v4 = (*(*v0 + 576) + **(*v0 + 576));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24AC214AC;

  return v4();
}

uint64_t dispatch thunk of MockPeripheral.connect(useCase:options:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 584) + **(*v2 + 584));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AC214AC;

  return v8(a1, a2);
}

uint64_t dispatch thunk of MockPeripheral.cancelConnection()()
{
  v4 = (*(*v0 + 592) + **(*v0 + 592));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24AC214AC;

  return v4();
}

uint64_t dispatch thunk of MockPeripheral.cancelConnection(options:)(uint64_t a1)
{
  v6 = (*(*v1 + 600) + **(*v1 + 600));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AC214AC;

  return v6(a1);
}

uint64_t dispatch thunk of MockPeripheral.isPaired.getter()
{
  v4 = (*(*v0 + 608) + **(*v0 + 608));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24AC2A800;

  return v4();
}

uint64_t dispatch thunk of MockPeripheral.pair()()
{
  v4 = (*(*v0 + 616) + **(*v0 + 616));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24AC214AC;

  return v4();
}

uint64_t dispatch thunk of MockPeripheral.unpair()()
{
  v4 = (*(*v0 + 624) + **(*v0 + 624));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24AC214AC;

  return v4();
}

uint64_t dispatch thunk of MockPeripheral.discover(serviceIdentifiers:)(uint64_t a1)
{
  v6 = (*(*v1 + 632) + **(*v1 + 632));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AC2BA00;

  return v6(a1);
}

uint64_t dispatch thunk of MockPeripheral.subscript.getter(uint64_t a1)
{
  v6 = (*(*v1 + 640) + **(*v1 + 640));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AC2BA00;

  return v6(a1);
}

uint64_t dispatch thunk of MockPeripheral.set(macAddress:)(uint64_t a1)
{
  v6 = (*(*v1 + 656) + **(*v1 + 656));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AC214AC;

  return v6(a1);
}

void sub_24AC6E578(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_24AC6E5FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 24))
  {
    return (*a1 + 127);
  }

  v3 = (((*(a1 + 16) >> 57) >> 6) | (2 * ((*(a1 + 16) >> 57) & 0x38 | *(a1 + 16) & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24AC6E658(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_24AC6E6E4(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24AC20274;

  return sub_24AC6914C(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t objectdestroyTm_2()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AC6E8D4(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24AC214AC;

  return sub_24AC685C0(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t CharacteristicProtocol.isolatedDescription.getter(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_24ACD0A20();
  MEMORY[0x24C22CD50](60, 0xE100000000000000);
  v20 = v2;
  v9 = *(a2 + 16);
  v10 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v10);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v11 = MEMORY[0x24C22D370](a1, v9);
  MEMORY[0x24C22CD50](v11);

  MEMORY[0x24C22CD50](0x69746E656469202CLL, 0xEF203D2072656966);
  (*(a2 + 24))(a1, a2);
  sub_24AC537F4();
  v12 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v12);

  (*(v6 + 8))(v8, v5);
  MEMORY[0x24C22CD50](0x7265706F7270202CLL, 0xEF203D2073656974);
  (*(a2 + 32))(&v20, a1, a2);
  v13 = Characteristic.Properties.description.getter();
  MEMORY[0x24C22CD50](v13);

  MEMORY[0x24C22CD50](0xD000000000000010, 0x800000024ACD9DF0);
  v14 = (*(a2 + 40))(a1, a2);
  v15 = (v14 & 1) == 0;
  if (v14)
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (v15)
  {
    v17 = 0xE500000000000000;
  }

  else
  {
    v17 = 0xE400000000000000;
  }

  MEMORY[0x24C22CD50](v16, v17);

  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return v21;
}

uint64_t CharacteristicProtocol.description.getter(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_24ACD0A20();

  v16 = 60;
  v17 = 0xE100000000000000;
  v15 = v2;
  v9 = *(a2 + 16);
  v10 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v10);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v11 = MEMORY[0x24C22D370](a1, v9);
  MEMORY[0x24C22CD50](v11);

  MEMORY[0x24C22CD50](0x69746E656469202CLL, 0xEF203D2072656966);
  (*(a2 + 24))(a1, a2);
  sub_24AC537F4();
  v12 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v12);

  (*(v6 + 8))(v8, v5);
  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return v16;
}

uint64_t dispatch thunk of CharacteristicProtocol.mtu.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 48) + **(a2 + 48));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AC2A800;

  return v7(a1, a2);
}

uint64_t dispatch thunk of CharacteristicProtocol.read()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 56) + **(a3 + 56));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AC214AC;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CharacteristicProtocol.readUnderlying()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 64) + **(a2 + 64));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AC20274;

  return v7(a1, a2);
}

uint64_t dispatch thunk of CharacteristicProtocol.writeWithoutResponse(data:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 72) + **(a3 + 72));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AC214AC;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CharacteristicProtocol.write(data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 80) + **(a4 + 80));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24AC214AC;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CharacteristicProtocol.notify()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 88) + **(a3 + 88));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AC214AC;

  return v9(a1, a2, a3);
}

uint64_t TLVSequence.init(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_24ACD0300();
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v11)
    {
      goto LABEL_10;
    }

    v12 = BYTE6(a2);
    if (BYTE6(a2))
    {
LABEL_8:
      do
      {
        v15 = sub_24AC7055C(v12, 0);
        v16 = sub_24ACD0270();
        sub_24AC46698(a1, a2);
        v17 = *(v7 + 8);
        v7 += 8;
        result = v17(v10, v6);
        if (v16 == v12)
        {
          goto LABEL_13;
        }

        __break(1u);
LABEL_10:
        v18 = HIDWORD(a1) - a1;
        if (__OFSUB__(HIDWORD(a1), a1))
        {
          goto LABEL_15;
        }

        v12 = v18;
      }

      while (v18);
    }

LABEL_12:
    result = sub_24AC46698(a1, a2);
    v15 = MEMORY[0x277D84F90];
LABEL_13:
    *a3 = v15;
    a3[1] = 0;
    return result;
  }

  if (v11 != 2)
  {
    goto LABEL_12;
  }

  v14 = *(a1 + 16);
  v13 = *(a1 + 24);
  v12 = v13 - v14;
  if (!__OFSUB__(v13, v14))
  {
    if (v12)
    {
      goto LABEL_8;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t TLVSequence.makeIterator()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t TLVSequence.next()@<X0>(void *a1@<X8>)
{
  v6 = *v1;
  v7 = v1[1];
  v8 = *(*v1 + 16);
  if (v7 >= v8)
  {
    goto LABEL_18;
  }

  if (v7 + 1 >= v8)
  {
    v33 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E3E8, &qword_24ACD50A0);
    sub_24AC2B6A8(&qword_27EF9E3F0, &qword_27EF9E3E8, &qword_24ACD50A0, MEMORY[0x277CC9C20]);
    v3 = sub_24ACD0180();
    v2 = v17;
    if (qword_2814AD278 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

  if (v7 < 0)
  {
    __break(1u);
LABEL_21:
    swift_once();
LABEL_10:
    v18 = sub_24ACD0490();
    __swift_project_value_buffer(v18, qword_2814AD280);

    v19 = sub_24ACD0470();
    v20 = sub_24ACD0910();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v33 = v22;
      *v21 = 136446210;
      v23 = sub_24AC29E20(v3, v2, &v33);

      *(v21 + 4) = v23;
      v24 = "Missing length: %{public}s";
      v25 = v20;
      v26 = v19;
      v27 = v21;
      v28 = 12;
LABEL_15:
      _os_log_impl(&dword_24AC18000, v26, v25, v24, v27, v28);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x24C22DC60](v22, -1, -1);
      MEMORY[0x24C22DC60](v21, -1, -1);
LABEL_17:

LABEL_18:
      v4 = 0;
      result = 0;
      v9 = 0;
      v11 = 0;
      v15 = 0;
      goto LABEL_19;
    }

LABEL_16:

    goto LABEL_17;
  }

  v9 = v6 + 32;
  v10 = *(v6 + 32 + v7 + 1);
  v11 = v7 + 2;
  v12 = v7 + 2 + v10;
  if (__OFADD__(v7 + 2, v10))
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v12 < v11)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v4 = *(v9 + v7);
  if (v12 - 1 >= v8)
  {
    v33 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E3E8, &qword_24ACD50A0);
    sub_24AC2B6A8(&qword_27EF9E3F0, &qword_27EF9E3E8, &qword_24ACD50A0, MEMORY[0x277CC9C20]);
    v11 = sub_24ACD0180();
    v9 = v29;
    if (qword_2814AD278 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

  v13 = __OFADD__(v7, v10 + 2);
  v14 = v7 + v10 + 2;
  if (v13)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
LABEL_13:
    v30 = sub_24ACD0490();
    __swift_project_value_buffer(v30, qword_2814AD280);

    v19 = sub_24ACD0470();
    v31 = sub_24ACD0910();

    if (os_log_type_enabled(v19, v31))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v33 = v22;
      *v21 = 16777986;
      *(v21 + 4) = v4;
      *(v21 + 5) = 256;
      *(v21 + 7) = v10;
      *(v21 + 8) = 2082;
      v32 = sub_24AC29E20(v11, v9, &v33);

      *(v21 + 10) = v32;
      v24 = "Truncated data for T:%hhu L:%hhu: %{public}s";
      v25 = v31;
      v26 = v19;
      v27 = v21;
      v28 = 18;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v15 = (2 * v12) | 1;
  v1[1] = v14;

LABEL_19:
  *a1 = v4;
  a1[1] = result;
  a1[2] = v9;
  a1[3] = v11;
  a1[4] = v15;
  return result;
}

unint64_t sub_24AC6FB34(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  v4 = a1;
  v65 = *MEMORY[0x277D85DE8];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_8;
    }

    v7 = *(a1 + 16);
    v6 = *(a1 + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (!v8)
    {
      if (v9 >= 2)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
LABEL_21:
    v22 = sub_24ACD0490();
    __swift_project_value_buffer(v22, qword_2814AD280);
    sub_24AC46630(v4, v3);
    v11 = sub_24ACD0470();
    v12 = sub_24ACD0910();
    sub_24AC46698(v4, v3);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v60[0] = v14;
      *v13 = 136446210;
      v61 = v4;
      v62 = v3;
      sub_24AC467AC();
      v23 = sub_24ACD0180();
      v25 = sub_24AC29E20(v23, v24, v60);

      *(v13 + 4) = v25;
      v18 = "TLV too large: %{public}s";
      goto LABEL_30;
    }

LABEL_31:

    return sub_24AC9EFAC(MEMORY[0x277D84F90]);
  }

  if (v5)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 2)
      {
        goto LABEL_13;
      }

LABEL_8:
      if (qword_2814AD278 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_56;
    }

    goto LABEL_58;
  }

  if (BYTE6(a2) < 2uLL)
  {
    goto LABEL_8;
  }

LABEL_13:
  if (v5 == 2)
  {
    v20 = *(a1 + 16);
    v19 = *(a1 + 24);
    v8 = __OFSUB__(v19, v20);
    v21 = v19 - v20;
    if (v8)
    {
      goto LABEL_61;
    }

    if (v21 > 31)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v5 == 1)
    {
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        if (HIDWORD(a1) - a1 <= 31)
        {
          goto LABEL_24;
        }

LABEL_20:
        if (qword_2814AD278 == -1)
        {
          goto LABEL_21;
        }

        goto LABEL_59;
      }

      __break(1u);
LABEL_61:
      __break(1u);
    }

    if (BYTE6(a2) > 0x1FuLL)
    {
      goto LABEL_20;
    }
  }

LABEL_24:
  if (sub_24ACD02B0() != 76 || sub_24ACD02B0())
  {
    if (qword_2814AD278 != -1)
    {
      swift_once();
    }

    v26 = sub_24ACD0490();
    __swift_project_value_buffer(v26, qword_2814AD280);
    sub_24AC46630(v4, v3);
    v11 = sub_24ACD0470();
    v12 = sub_24ACD0910();
    sub_24AC46698(v4, v3);
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_31;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v60[0] = v14;
    *v13 = 136446210;
    v61 = v4;
    v62 = v3;
    sub_24AC467AC();
    v27 = sub_24ACD0180();
    v29 = sub_24AC29E20(v27, v28, v60);

    *(v13 + 4) = v29;
    v18 = "Not parsing non-Apple TLV data: %{public}s";
    goto LABEL_30;
  }

  if (v5 == 2)
  {
    v31 = *(v4 + 24);
  }

  else if (v5 == 1)
  {
    v31 = v4 >> 32;
  }

  else
  {
    v31 = BYTE6(v3);
  }

  if (v31 < 2)
  {
    __break(1u);

    __break(1u);
  }

  else
  {
    v32 = sub_24ACD02A0();
    TLVSequence.init(_:)(v32, v33, &v61);
    v35 = v61;
    v34 = v62;
    v59 = MEMORY[0x277D84F90];
    sub_24AC64D28(0, 0, 0);
    v3 = v59;
    v57 = v35;
    v58 = v34;

    TLVSequence.next()(&v61);
    v36 = v62;
    if (v62)
    {
      v37 = sub_24AC2B6A8(&qword_27EF9E410, &qword_27EF9E408, &qword_24ACD5178, MEMORY[0x277CC9EE0]);
      while (1)
      {
        v38 = v64;
        v54 = v63;
        v39 = v61;
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E408, &qword_24ACD5178);
        v60[3] = v40;
        v60[4] = v37;
        v41 = swift_allocObject();
        v60[0] = v41;
        *(v41 + 16) = v36;
        *(v41 + 24) = v54;
        *(v41 + 40) = v38;
        v42 = __swift_project_boxed_opaque_existential_0(v60, v40);
        v4 = v42[2];
        v43 = v42[3] >> 1;
        v44 = v43 - v4;
        if (__OFSUB__(v43, v4))
        {
          break;
        }

        if (v44)
        {
          v45 = v42[1];
          if (v44 < 15)
          {
            memset(__dst, 0, sizeof(__dst));
            v56 = v43 - v4;
            memcpy(__dst, (v45 + v4), v43 - v4);
            v48 = *__dst;
            v2 = v2 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v56 << 16)) << 32);
            v49 = v2;
          }

          else
          {
            sub_24ACD0200();
            swift_allocObject();
            v46 = sub_24ACD01B0();
            v47 = v46;
            if (v44 >= 0x7FFFFFFF)
            {
              sub_24ACD0280();
              v48 = swift_allocObject();
              *(v48 + 16) = 0;
              *(v48 + 24) = v44;
              v49 = v47 | 0x8000000000000000;
            }

            else
            {
              v48 = v44 << 32;
              v49 = v46 | 0x4000000000000000;
            }
          }
        }

        else
        {
          v48 = 0;
          v49 = 0xC000000000000000;
        }

        __swift_destroy_boxed_opaque_existential_0(v60);
        v59 = v3;
        v51 = *(v3 + 16);
        v50 = *(v3 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_24AC64D28((v50 > 1), v51 + 1, 1);
          v3 = v59;
        }

        *(v3 + 16) = v51 + 1;
        v52 = v3 + 24 * v51;
        *(v52 + 32) = v39;
        *(v52 + 40) = v48;
        *(v52 + 48) = v49;
        TLVSequence.next()(&v61);
        v36 = v62;
        if (!v62)
        {
          goto LABEL_51;
        }
      }

      __break(1u);
LABEL_56:
      swift_once();
LABEL_9:
      v10 = sub_24ACD0490();
      __swift_project_value_buffer(v10, qword_2814AD280);
      sub_24AC46630(v4, v3);
      v11 = sub_24ACD0470();
      v12 = sub_24ACD0910();
      sub_24AC46698(v4, v3);
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v60[0] = v14;
        *v13 = 136446210;
        v61 = v4;
        v62 = v3;
        sub_24AC467AC();
        v15 = sub_24ACD0180();
        v17 = sub_24AC29E20(v15, v16, v60);

        *(v13 + 4) = v17;
        v18 = "No TLV header: %{public}s";
LABEL_30:
        _os_log_impl(&dword_24AC18000, v11, v12, v18, v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x24C22DC60](v14, -1, -1);
        MEMORY[0x24C22DC60](v13, -1, -1);
        goto LABEL_31;
      }

      goto LABEL_31;
    }

LABEL_51:

    if (*(v3 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E300, &qword_24ACD5DC0);
      v53 = sub_24ACD0B60();
    }

    else
    {
      v53 = MEMORY[0x277D84F98];
    }

    v60[0] = v53;
    sub_24AC7087C(v3, 1, v60);

    return v60[0];
  }

  return result;
}

void sub_24AC702C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E408, &qword_24ACD5178);
  v16[3] = v8;
  v16[4] = sub_24AC2B6A8(&qword_27EF9E410, &qword_27EF9E408, &qword_24ACD5178, MEMORY[0x277CC9EE0]);
  v9 = swift_allocObject();
  v16[0] = v9;
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v10 = __swift_project_boxed_opaque_existential_0(v16, v8);
  v11 = v10[2];
  v12 = v10[3] >> 1;
  v13 = __OFSUB__(v12, v11);
  v14 = v12 - v11;
  if (v13)
  {
    __break(1u);

    __break(1u);
  }

  else
  {
    sub_24ACC1348((v10[1] + v11), (v10[1] + v11 + v14), &v15);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }
}

void sub_24AC703D8(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void *sub_24AC703F4()
{
  v1 = sub_24AC705D0(*v0);

  return v1;
}

void *sub_24AC70434(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = result;
  v12 = a4;
  v13 = a5;
  if (!a2)
  {
LABEL_10:
    v6 = 0;
    goto LABEL_13;
  }

  v6 = a3;
  if (!a3)
  {
LABEL_13:
    *v5 = a4;
    v5[1] = a5;
    return v6;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = a2;
    v8 = 1;
    while (1)
    {
      TLVSequence.next()(&v14);
      v9 = v15;
      if (!v15)
      {
        a4 = v12;
        a5 = v13;
        v6 = v8 - 1;
        goto LABEL_13;
      }

      v10 = v16;
      *v7 = v14;
      *(v7 + 8) = v9;
      *(v7 + 16) = v10;
      *(v7 + 24) = v17;
      if (v6 == v8)
      {
        break;
      }

      v7 += 40;
      if (__OFADD__(v8++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    a4 = v12;
    a5 = v13;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

double sub_24AC70518@<D0>(uint64_t a1@<X8>)
{
  TLVSequence.next()(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

void *sub_24AC7055C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDF0, &qword_24ACD8480);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_24AC705D0(uint64_t a1)
{

  result = TLVSequence.next()(&v22);
  v2 = v23;
  v3 = MEMORY[0x277D84F90];
  v4 = 0;
  if (v23)
  {
    v5 = v25;
    v6 = MEMORY[0x277D84F90] + 32;
    v7 = v24;
    while (1)
    {
      v8 = v22;
      if (!v4)
      {
        v9 = v3[3];
        if (((v9 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v21 = v5;
        v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
        if (v10 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v10;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E400, &qword_24ACD5170);
        v12 = swift_allocObject();
        v13 = (_swift_stdlib_malloc_size(v12) - 32) / 40;
        v12[2] = v11;
        v12[3] = 2 * v13;
        v14 = (v12 + 4);
        v15 = v3[3] >> 1;
        if (v3[2])
        {
          if (v12 != v3 || v14 >= &v3[5 * v15 + 4])
          {
            memmove(v12 + 4, v3 + 4, 40 * v15);
          }

          v3[2] = 0;
        }

        v6 = v14 + 40 * v15;
        v4 = (v13 & 0x7FFFFFFFFFFFFFFFLL) - v15;

        v3 = v12;
        v5 = v21;
      }

      v17 = __OFSUB__(v4--, 1);
      if (v17)
      {
        break;
      }

      *v6 = v8;
      *(v6 + 8) = v2;
      *(v6 + 16) = v7;
      *(v6 + 24) = v5;
      result = TLVSequence.next()(&v22);
      v2 = v23;
      v7 = v24;
      v6 += 40;
      v5 = v25;
      if (!v23)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_19:

  v18 = v3[3];
  if (v18 < 2)
  {
    return v3;
  }

  v19 = v18 >> 1;
  v17 = __OFSUB__(v19, v4);
  v20 = v19 - v4;
  if (!v17)
  {
    v3[2] = v20;
    return v3;
  }

LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_24AC70788()
{
  result = qword_27EF9E3F8;
  if (!qword_27EF9E3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E3F8);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24AC707E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24AC70830(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24AC7087C(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  v6 = result;
  v7 = *(result + 32);
  v9 = *(result + 40);
  v8 = *(result + 48);
  result = sub_24AC46630(v9, v8);
  if (v8 >> 60 == 15)
  {
    return result;
  }

  v10 = *a3;
  result = sub_24AC2ADA0(v7);
  v12 = v10[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  LOBYTE(v16) = v11;
  if (v10[3] < v15)
  {
    sub_24AC5D1A8(v15, a2 & 1);
    result = sub_24AC2ADA0(v7);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    result = sub_24ACD0C80();
    __break(1u);
  }

  if (a2)
  {
LABEL_8:
    v18 = *a3;
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v22 = result;
  sub_24AC5ED7C();
  result = v22;
  v18 = *a3;
  if ((v16 & 1) == 0)
  {
LABEL_12:
    v18[(result >> 6) + 8] |= 1 << result;
    *(v18[6] + result) = v7;
    v23 = (v18[7] + 16 * result);
    *v23 = v9;
    v23[1] = v8;
    v24 = v18[2];
    v14 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v14)
    {
      v18[2] = v25;
      v16 = v3 - 1;
      if (v3 == 1)
      {
        return result;
      }

      goto LABEL_15;
    }

LABEL_26:
    __break(1u);
    return result;
  }

LABEL_9:
  v19 = (v18[7] + 16 * result);
  v20 = *v19;
  v21 = v19[1];
  *v19 = v9;
  v19[1] = v8;
  result = sub_24AC46698(v20, v21);
  v16 = v3 - 1;
  if (v3 == 1)
  {
    return result;
  }

LABEL_15:
  v3 = (v6 + 72);
  a2 = 1;
  do
  {
    v9 = *(v3 - 16);
    v8 = *(v3 - 1);
    v6 = *v3;
    result = sub_24AC46630(v8, *v3);
    if (v6 >> 60 == 15)
    {
      break;
    }

    v29 = *a3;
    result = sub_24AC2ADA0(v9);
    v31 = v29[2];
    v32 = (v30 & 1) == 0;
    v14 = __OFADD__(v31, v32);
    v33 = v31 + v32;
    if (v14)
    {
      goto LABEL_25;
    }

    LOBYTE(v7) = v30;
    if (v29[3] < v33)
    {
      sub_24AC5D1A8(v33, 1);
      result = sub_24AC2ADA0(v9);
      if ((v7 & 1) != (v34 & 1))
      {
        goto LABEL_6;
      }
    }

    v35 = *a3;
    if (v7)
    {
      v26 = (v35[7] + 16 * result);
      v27 = *v26;
      v28 = v26[1];
      *v26 = v8;
      v26[1] = v6;
      result = sub_24AC46698(v27, v28);
    }

    else
    {
      v35[(result >> 6) + 8] |= 1 << result;
      *(v35[6] + result) = v9;
      v36 = (v35[7] + 16 * result);
      *v36 = v8;
      v36[1] = v6;
      v37 = v35[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_26;
      }

      v35[2] = v38;
    }

    v3 += 3;
    --v16;
  }

  while (v16);
  return result;
}

uint64_t ConnectUseCase.hashValue.getter()
{
  v1 = *v0;
  sub_24ACD0D10();
  MEMORY[0x24C22D480](v1);
  return sub_24ACD0D50();
}

unint64_t ConnectUseCase.description.getter()
{
  result = 0x41794D646E69662ELL;
  switch(*v0)
  {
    case 1:
    case 0xD:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
    case 6:
      result = 0xD00000000000001ALL;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x50794D646E69662ELL;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 0xA:
      result = 0x55794D646E69662ELL;
      break;
    case 0xB:
      result = 0xD000000000000011;
      break;
    case 0xC:
      result = 0xD000000000000012;
      break;
    case 0xE:
      result = 0xD000000000000011;
      break;
    case 0xF:
      result = 0xD000000000000011;
      break;
    case 0x10:
      result = 0x726961706E752ELL;
      break;
    case 0x11:
      result = 0x48726961706E752ELL;
      break;
    case 0x12:
    case 0x13:
      result = 0x756F5379616C702ELL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_24AC70DB8()
{
  result = qword_27EF9E418;
  if (!qword_27EF9E418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E418);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConnectUseCase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConnectUseCase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t ServiceProtocol.isolatedDescription.getter(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_24ACD0420();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v7 = sub_24ACD0740();

  return MEMORY[0x2822009F8](sub_24AC710B4, v7, v6);
}

uint64_t sub_24AC710B4()
{
  v1 = v0[11];
  v2 = v0[9];
  v20 = v0[8];
  v3 = v0[7];
  v21 = v0[6];
  v22 = v0[10];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];
  sub_24ACD0A20();

  v0[2] = v5;
  v7 = *(v4 + 16);
  v8 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v8);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v9 = MEMORY[0x24C22D370](v6, v7);
  MEMORY[0x24C22CD50](v9);

  MEMORY[0x24C22CD50](0x69746E656469202CLL, 0xEF203D2072656966);
  (*(v4 + 40))(v6, v4);
  sub_24AC716B4();
  v10 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v10);

  MEMORY[0x24C22CD50](32, 0xE100000000000000);
  sub_24ACCFFE0();
  v11 = shortCBUUIDDescription(uuid:)(v20);
  v13 = v12;
  (*(v3 + 8))(v20, v21);
  MEMORY[0x24C22CD50](v11, v13);

  MEMORY[0x24C22CD50](93, 0xE100000000000000);
  (*(v22 + 8))(v1, v2);
  MEMORY[0x24C22CD50](91, 0xE100000000000000);

  MEMORY[0x24C22CD50](0x6D6972507369202CLL, 0xED0000203A797261);
  v14 = (*(v4 + 48))(v6, v4);
  v15 = (v14 & 1) == 0;
  if (v14)
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (v15)
  {
    v17 = 0xE500000000000000;
  }

  else
  {
    v17 = 0xE400000000000000;
  }

  MEMORY[0x24C22CD50](v16, v17);

  MEMORY[0x24C22CD50](62, 0xE100000000000000);

  v18 = v0[1];

  return v18(60, 0xE100000000000000);
}

uint64_t ServiceProtocol.description.getter(uint64_t a1, uint64_t a2)
{
  v22 = sub_24ACD0420();
  v5 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v21 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_24ACD0A20();

  v25 = 60;
  v26 = 0xE100000000000000;
  v23 = v2;
  v11 = *(a2 + 16);
  v12 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v12);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v13 = MEMORY[0x24C22D370](a1, v11);
  MEMORY[0x24C22CD50](v13);

  MEMORY[0x24C22CD50](0x69746E656469202CLL, 0xEF203D2072656966);
  (*(a2 + 40))(a1, a2);
  v23 = 91;
  v24 = 0xE100000000000000;
  sub_24AC716B4();
  v14 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v14);

  MEMORY[0x24C22CD50](32, 0xE100000000000000);
  sub_24ACCFFE0();
  v15 = shortCBUUIDDescription(uuid:)(v7);
  v17 = v16;
  (*(v5 + 8))(v7, v22);
  MEMORY[0x24C22CD50](v15, v17);

  MEMORY[0x24C22CD50](93, 0xE100000000000000);
  v18 = v23;
  v19 = v24;
  (*(v21 + 8))(v10, v8);
  MEMORY[0x24C22CD50](v18, v19);

  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return v25;
}

unint64_t sub_24AC716B4()
{
  result = qword_27EF9E0D0;
  if (!qword_27EF9E0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EF9E090, &qword_24ACD37C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E0D0);
  }

  return result;
}

uint64_t Identifier.init(stringLiteral:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v47 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC40, &qword_24ACD8620);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v46 = &v45 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v45 = &v45 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v45 - v17;
  v19 = sub_24ACD0420();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a4;
  v23 = sub_24ACCFFF0();
  if (v23 != __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0) && v23 != __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0))
  {
    v51 = 0;
    v52 = 0xE000000000000000;
    sub_24ACD0A20();
    MEMORY[0x24C22CD50](0xD000000000000061, 0x800000024ACD9FF0);
    v50 = v23;
    swift_getMetatypeMetadata();
    v40 = sub_24ACD05A0();
    LOBYTE(v23) = v41;
    MEMORY[0x24C22CD50](v40);

    goto LABEL_36;
  }

  sub_24ACD03B0();
  v49 = *(v20 + 48);
  if (v49(v18, 1, v19) == 1)
  {
    sub_24AC563B4(v18);
    goto LABEL_36;
  }

  LOBYTE(v23) = a3;
  v24 = v22;
  (*(v20 + 32))(v22, v18, v19);
  if (v23)
  {
    goto LABEL_17;
  }

  if (!a1)
  {
    __break(1u);
LABEL_17:
    v31 = HIDWORD(a1);
    if (HIDWORD(a1))
    {
      goto LABEL_26;
    }

    v25 = a1;
    if ((a1 & 0xFFFFF800) == 0xD800)
    {
      __break(1u);
      goto LABEL_35;
    }

    v31 = a1 >> 16;
    if (a1 >> 16 > 0x10)
    {
      goto LABEL_27;
    }

    if (a1 > 0x7F)
    {
      goto LABEL_28;
    }

    v36 = a1 + 1;
    while (1)
    {
      v51 = (v36 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v36) >> 3))));
      sub_24ACD05D0();
      if ((v23 & 2) != 0)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        v37 = (v25 & 0x3F) << 8;
        if (v25 <= 0x7FF)
        {
          v38 = (v25 >> 6) + v37;
          v39 = 33217;
          goto LABEL_30;
        }
      }

      else
      {
LABEL_36:
        sub_24ACD0B20();
        __break(1u);
      }

      v44 = (v37 | (v25 >> 6) & 0x3F) << 8;
      if (v31)
      {
        v38 = (v25 >> 18) + ((v44 | (v25 >> 12) & 0x3F) << 8);
        v39 = -2122219023;
LABEL_30:
        v36 = v38 + v39;
      }

      else
      {
        v36 = (v25 >> 12) + v44 + 8487393;
      }
    }
  }

  sub_24ACD05D0();
  if ((v23 & 2) == 0)
  {
    goto LABEL_36;
  }

  if (a2 == 36)
  {
    goto LABEL_11;
  }

  if (a2 != 8)
  {
    if (a2 == 4)
    {

      v26 = sub_24ACD0230();
      v24 = v33;
      v27 = v22;
      v51 = sub_24ACD0370();
      v52 = v34;
      sub_24AC46630(v26, v24);
      sub_24AC71FE8(v26, v24, 2, 3);
      sub_24AC46698(v26, v24);
      LOBYTE(v23) = v51;
      sub_24AC46630(v51, v52);
      v35 = v45;
      sub_24ACD0380();
      if (v49(v35, 1, v19) == 1)
      {
        goto LABEL_25;
      }

      goto LABEL_15;
    }

LABEL_35:
    v51 = 0;
    v52 = 0xE000000000000000;
    sub_24ACD0A20();

    v51 = 0xD000000000000014;
    v52 = 0x800000024ACDA060;
    v50 = a2;
    v42 = sub_24ACD0C20();
    LOBYTE(v23) = v43;
    MEMORY[0x24C22CD50](v42);

    goto LABEL_36;
  }

  v26 = sub_24ACD0230();
  v27 = v22;
  v24 = v28;
  v51 = sub_24ACD0370();
  v52 = v29;
  sub_24AC46630(v26, v24);
  sub_24AC71FE8(v26, v24, 0, 3);
  sub_24AC46698(v26, v24);
  LOBYTE(v23) = v51;
  v12 = v52;
  sub_24AC46630(v51, v52);
  v30 = v46;
  sub_24ACD0380();
  if (v49(v30, 1, v19) != 1)
  {
LABEL_15:

    sub_24ACD0000();
    sub_24AC46698(v26, v24);
    sub_24AC46698(v51, v52);
    return (*(v20 + 8))(v27, v19);
  }

  __break(1u);
LABEL_11:
  sub_24ACD03B0();
  if (v49(v12, 1, v19) == 1)
  {
    goto LABEL_24;
  }

  sub_24ACD0000();
  return (*(v20 + 8))(v24, v19);
}

uint64_t sub_24AC71E10(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v5)
    {
      return sub_24ACD0290();
    }

    goto LABEL_10;
  }

  if (v5 == 2)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    a1 = sub_24ACD01C0();
    if (a1)
    {
      a1 = sub_24ACD01F0();
      if (__OFSUB__(v6, a1))
      {
        goto LABEL_16;
      }
    }

    if (!__OFSUB__(v7, v6))
    {
LABEL_13:
      sub_24ACD01E0();
      return sub_24ACD0290();
    }

    __break(1u);
LABEL_10:
    v8 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_24ACD01C0() || !__OFSUB__(v8, sub_24ACD01F0()))
      {
        goto LABEL_13;
      }

LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  return sub_24ACD0290();
}

uint64_t sub_24AC71FE8(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = v4[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    v9 = 0;
    v8 = 0;
    if (v7 == 2)
    {
      v9 = *(v5 + 16);
      v8 = *(v5 + 24);
    }
  }

  else
  {
    v8 = BYTE6(v6);
    v9 = v5;
    v10 = v5 >> 32;
    if (v7)
    {
      v8 = v10;
    }

    else
    {
      v9 = 0;
    }
  }

  if (v9 > a4)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v8 <= a4)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a4 + 1 >= a3)
  {
    return sub_24AC71E10(result, a2, v4, a3, a4 + 1);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t dispatch thunk of ServiceProtocol.discover(characteristicIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 56) + **(a3 + 56));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AC2A800;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of ServiceProtocol.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 64) + **(a3 + 64));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AC2BA00;

  return v9(a1, a2, a3);
}

uint64_t sub_24AC72360()
{
  v0 = sub_24ACD0490();
  __swift_allocate_value_buffer(v0, qword_2814ADB70);
  v1 = __swift_project_value_buffer(v0, qword_2814ADB70);
  if (qword_2814AD278 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814AD280);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_24AC72428(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  sub_24ACD0420();
  v3[8] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4B8, &qword_24ACD54D0);
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC72524, 0, 0);
}

uint64_t sub_24AC72524()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = *(v0 + 40);
  swift_defaultActor_initialize();
  *(v4 + OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_delegateTrampoline) = 0;
  *(v4 + OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_pairingPeripherals) = MEMORY[0x277D84F98];
  sub_24ACD0410();
  *(v0 + 96) = type metadata accessor for PairingAgent(0);
  sub_24ACD0000();
  (*(v2 + 32))(v4 + OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_id, v1, v3);
  *(v4 + OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_underlyingObject) = v5;
  if (*(v6 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_isPairingCentralManager) == 1)
  {
    v7 = qword_2814ADB68;
    v8 = *(v0 + 48);
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = sub_24ACD0490();
    __swift_project_value_buffer(v9, qword_2814ADB70);
    v10 = sub_24ACD0470();
    v11 = sub_24ACD0930();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_24AC18000, v10, v11, "Setting CBPairingAgent delegate", v12, 2u);
      MEMORY[0x24C22DC60](v12, -1, -1);
    }

    v13 = *(v0 + 56);

    *(v13 + OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_isPairingAllowed) = 1;
    v14 = sub_24AC72740;
    v15 = v13;
  }

  else
  {
    v16 = *(v0 + 48);
    v17 = *(v0 + 56);
    *(v17 + OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_isPairingAllowed) = 0;
    v18 = v16;
    v14 = sub_24AC72A6C;
    v15 = v17;
  }

  return MEMORY[0x2822009F8](v14, v15, 0);
}

uint64_t sub_24AC72740()
{
  v26 = v0;
  super_class = v0[3].super_class;
  v2 = *(v0[2].super_class + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_delegateQueue);
  v3 = type metadata accessor for DelegateTrampoline_CBPairingAgentDelegate();
  v4 = objc_allocWithZone(v3);
  swift_weakInit();
  *&v4[OBJC_IVAR____TtC15FindMyBluetoothP33_FB9F492088B4C388E3479FD29311B1A941DelegateTrampoline_CBPairingAgentDelegate_delegateQueue] = v2;
  swift_weakAssign();
  v0[1].receiver = v4;
  v0[1].super_class = v3;
  v5 = v2;
  v6 = objc_msgSendSuper2(v0 + 1, sel_init);
  v7 = *(super_class + OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_delegateTrampoline);
  *(super_class + OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_delegateTrampoline) = v6;

  if (qword_2814ADB68 != -1)
  {
    swift_once();
  }

  v8 = sub_24ACD0490();
  __swift_project_value_buffer(v8, qword_2814ADB70);

  v9 = sub_24ACD0470();
  v10 = sub_24ACD0900();

  if (os_log_type_enabled(v9, v10))
  {
    receiver = v0[6].receiver;
    v12 = v0[3].super_class;
    v22 = v0[3].receiver;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 136315138;
    v23 = v14;
    v24 = 60;
    v25 = 0xE100000000000000;
    v0[2].receiver = v12;
    v15 = sub_24AC78D78(&qword_27EF9E4C8, type metadata accessor for PairingAgent, &unk_24ACD546C);

    v16 = sub_24ACD0C00();
    MEMORY[0x24C22CD50](v16);

    MEMORY[0x24C22CD50](8250, 0xE200000000000000);
    v17 = MEMORY[0x24C22D370](receiver, v15);
    MEMORY[0x24C22CD50](v17);

    MEMORY[0x24C22CD50](62, 0xE100000000000000);

    v18 = sub_24AC29E20(v24, v25, &v23);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_24AC18000, v9, v10, "[%s] init", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x24C22DC60](v14, -1, -1);
    MEMORY[0x24C22DC60](v13, -1, -1);
  }

  else
  {
  }

  v19 = v0->super_class;
  v20 = v0[3].super_class;

  return v19(v20);
}

uint64_t sub_24AC72A6C()
{
  v19 = v0;
  if (qword_2814ADB68 != -1)
  {
    swift_once();
  }

  v1 = sub_24ACD0490();
  __swift_project_value_buffer(v1, qword_2814ADB70);

  v2 = sub_24ACD0470();
  v3 = sub_24ACD0900();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 96);
    v5 = *(v0 + 56);
    v15 = *(v0 + 48);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 136315138;
    v16 = v7;
    v17 = 60;
    v18 = 0xE100000000000000;
    *(v0 + 32) = v5;
    v8 = sub_24AC78D78(&qword_27EF9E4C8, type metadata accessor for PairingAgent, &unk_24ACD546C);

    v9 = sub_24ACD0C00();
    MEMORY[0x24C22CD50](v9);

    MEMORY[0x24C22CD50](8250, 0xE200000000000000);
    v10 = MEMORY[0x24C22D370](v4, v8);
    MEMORY[0x24C22CD50](v10);

    MEMORY[0x24C22CD50](62, 0xE100000000000000);

    v11 = sub_24AC29E20(v17, v18, &v16);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_24AC18000, v2, v3, "[%s] init", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x24C22DC60](v7, -1, -1);
    MEMORY[0x24C22DC60](v6, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);
  v13 = *(v0 + 56);

  return v12(v13);
}

uint64_t sub_24AC72D0C()
{
  v1 = v0;
  if (qword_2814ADB68 != -1)
  {
    swift_once();
  }

  v2 = sub_24ACD0490();
  __swift_project_value_buffer(v2, qword_2814ADB70);

  v3 = sub_24ACD0470();
  v4 = sub_24ACD0900();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 136315138;
    v15 = v6;
    v7 = type metadata accessor for PairingAgent(0);
    v8 = sub_24AC78D78(&qword_27EF9E4C8, type metadata accessor for PairingAgent, &unk_24ACD546C);
    v9 = sub_24ACD0C00();
    MEMORY[0x24C22CD50](v9);

    MEMORY[0x24C22CD50](8250, 0xE200000000000000);
    v10 = MEMORY[0x24C22D370](v7, v8);
    MEMORY[0x24C22CD50](v10);

    MEMORY[0x24C22CD50](62, 0xE100000000000000);
    v11 = sub_24AC29E20(60, 0xE100000000000000, &v15);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_24AC18000, v3, v4, "[%s] deinit", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C22DC60](v6, -1, -1);
    MEMORY[0x24C22DC60](v5, -1, -1);
  }

  v12 = OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_id;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4B8, &qword_24ACD54D0);
  (*(*(v13 - 8) + 8))(v1 + v12, v13);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_24AC72FAC()
{
  sub_24AC72D0C();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for PairingAgent(uint64_t a1)
{
  result = qword_2814ADB58;
  if (!qword_2814ADB58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24AC7302C(uint64_t a1)
{
  sub_24AC7496C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24AC730F8(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v2[16] = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  v2[17] = swift_task_alloc();
  v3 = sub_24ACD0420();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC73224, v1, 0);
}

uint64_t sub_24AC73224()
{
  if (*(v0[15] + OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_isPairingAllowed) == 1)
  {
    v1 = v0[14];

    return MEMORY[0x2822009F8](sub_24AC73368, v1, 0);
  }

  else
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC78D78(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_24AC73368()
{
  v1 = *(v0[14] + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject);
  v0[22] = v1;
  v2 = [v1 state];
  v3 = v0[15];
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      if (v2 == 3)
      {
        v4 = sub_24AC791D4;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v4 = sub_24AC73540;
  }

  else
  {
    if (v2)
    {
      if (v2 == 1)
      {
        v4 = sub_24AC73450;
        goto LABEL_11;
      }

LABEL_8:
      v4 = sub_24AC791D4;
      goto LABEL_11;
    }

    v4 = sub_24AC791D4;
  }

LABEL_11:

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC73450()
{
  type metadata accessor for CentralManager.Error(0);
  sub_24AC78D78(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AC73540()
{
  v1 = v0[22];
  v2 = *(v0[15] + OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_underlyingObject);
  v0[23] = v2;
  if ([v2 isPeerPaired_])
  {

    v3 = v0[1];
LABEL_6:

    return v3();
  }

  v4 = v0[15];
  v0[24] = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_id;
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  sub_24ACCFFE0();
  v5 = OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_pairingPeripherals;
  v0[26] = OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_pairingPeripherals;
  swift_beginAccess();
  if (*(*(v4 + v5) + 16))
  {
    v6 = v0[21];

    sub_24AC2ABC8(v6);
    if (v7)
    {
      v8 = v0[21];
      v9 = v0[18];
      v10 = *(v0[19] + 8);

      v10(v8, v9);

      type metadata accessor for CentralManager.Error(0);
      sub_24AC78D78(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v3 = v0[1];
      goto LABEL_6;
    }
  }

  v12 = v0[20];
  v22 = v0[16];
  v20 = v0[18];
  v21 = v0[15];
  v19 = v0[14];
  v13 = *(v0[19] + 8);
  (v13)(v0[21]);
  sub_24ACCFFE0();
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v4 + v5);
  *(v4 + v5) = 0x8000000000000000;
  sub_24AC633D4(v19, v12, isUniquelyReferenced_nonNull_native);
  v13(v12, v20);
  *(v4 + v5) = v23;
  swift_endAccess();
  [v2 setDelegate_];
  v15 = sub_24AC78D78(&qword_27EF9E4A8, type metadata accessor for PairingAgent, &unk_24ACD552C);
  v16 = swift_task_alloc();
  v0[27] = v16;
  v16[2] = v21;
  v16[3] = v19;
  v16[4] = v22;
  v17 = swift_task_alloc();
  v0[28] = v17;
  *v17 = v0;
  v17[1] = sub_24AC7394C;
  v18 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v17, v21, v15, 0xD000000000000011, 0x800000024ACDA290, sub_24AC78DC0, v16, v18);
}

uint64_t sub_24AC7394C()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = *(v2 + 120);
    v4 = sub_24AC73C60;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_24AC73A74;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC73A90()
{
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_pairingContinuation;
  swift_beginAccess();
  sub_24AC2AAE0(v1, v3 + v5);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_24AC73B7C, v2, 0);
}

uint64_t sub_24AC73B7C()
{
  v1 = v0[23];
  v2 = v0[20];
  sub_24ACCFFE0();
  swift_beginAccess();
  sub_24AC7F32C(0, v2);
  swift_endAccess();
  [v1 setDelegate_];

  v3 = v0[1];

  return v3();
}

uint64_t sub_24AC73C60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AC73CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC73D8C, a6, 0);
}

uint64_t sub_24AC73D8C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v6 = *(v5 - 8);
  (*(v6 + 16))(v1, v4, v5);
  (*(v6 + 56))(v1, 0, 1, v5);
  v7 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_pairingContinuation;
  swift_beginAccess();
  sub_24AC2AAE0(v1, v2 + v7);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_24AC73EB4, v3, 0);
}

uint64_t sub_24AC73EB4()
{
  if (qword_2814ADB68 != -1)
  {
    swift_once();
  }

  v1 = sub_24ACD0490();
  __swift_project_value_buffer(v1, qword_2814ADB70);

  v2 = sub_24ACD0470();
  v3 = sub_24ACD0930();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[7];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = *(v4 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject);
    *(v5 + 4) = v7;
    *v6 = v7;
    v8 = v7;
    _os_log_impl(&dword_24AC18000, v2, v3, "Calling pairPeer() on %@", v5, 0xCu);
    sub_24AC78B24(v6);
    MEMORY[0x24C22DC60](v6, -1, -1);
    MEMORY[0x24C22DC60](v5, -1, -1);
  }

  v9 = v0[7];
  v10 = v0[5];

  [*(v10 + OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_underlyingObject) pairPeer_];

  v11 = v0[1];

  return v11();
}

uint64_t sub_24AC74064(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v2[16] = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  v2[17] = swift_task_alloc();
  v3 = sub_24ACD0420();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC74190, v1, 0);
}

uint64_t sub_24AC74190()
{
  v1 = v0[15];
  if (*(v1 + OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_isPairingAllowed) != 1)
  {
    goto LABEL_6;
  }

  v2 = v0[14];
  v3 = *(v1 + OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_underlyingObject);
  v0[22] = v3;
  if (![v3 isPeerPaired_])
  {

    v11 = v0[1];
    goto LABEL_8;
  }

  v4 = v0[15];
  v0[23] = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_id;
  v0[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  sub_24ACCFFE0();
  v5 = OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_pairingPeripherals;
  v0[25] = OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_pairingPeripherals;
  swift_beginAccess();
  if (*(*(v4 + v5) + 16))
  {
    v6 = v0[21];

    sub_24AC2ABC8(v6);
    if (v7)
    {
      v8 = v0[21];
      v9 = v0[18];
      v10 = *(v0[19] + 8);

      v10(v8, v9);

LABEL_6:
      type metadata accessor for CentralManager.Error(0);
      sub_24AC78D78(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v11 = v0[1];
LABEL_8:

      return v11();
    }
  }

  v13 = v0[20];
  v23 = v0[16];
  v21 = v0[18];
  v22 = v0[15];
  v20 = v0[14];
  v14 = *(v0[19] + 8);
  (v14)(v0[21]);
  sub_24ACCFFE0();
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(v4 + v5);
  *(v4 + v5) = 0x8000000000000000;
  sub_24AC633D4(v20, v13, isUniquelyReferenced_nonNull_native);
  v14(v13, v21);
  *(v4 + v5) = v24;
  swift_endAccess();
  [v3 setDelegate_];
  v16 = sub_24AC78D78(&qword_27EF9E4A8, type metadata accessor for PairingAgent, &unk_24ACD552C);
  v17 = swift_task_alloc();
  v0[26] = v17;
  v17[2] = v22;
  v17[3] = v20;
  v17[4] = v23;
  v18 = swift_task_alloc();
  v0[27] = v18;
  *v18 = v0;
  v18[1] = sub_24AC745D0;
  v19 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v18, v22, v16, 0xD000000000000013, 0x800000024ACDA2B0, sub_24AC78F4C, v17, v19);
}

uint64_t sub_24AC745D0()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = *(v2 + 120);
    v4 = sub_24AC748E4;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_24AC746F8;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC74714()
{
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_pairingContinuation;
  swift_beginAccess();
  sub_24AC2AAE0(v1, v3 + v5);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_24AC74800, v2, 0);
}

uint64_t sub_24AC74800()
{
  v1 = v0[22];
  v2 = v0[20];
  sub_24ACCFFE0();
  swift_beginAccess();
  sub_24AC7F32C(0, v2);
  swift_endAccess();
  [v1 setDelegate_];

  v3 = v0[1];

  return v3();
}

uint64_t sub_24AC748E4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_24AC7496C(uint64_t a1)
{
  if (!qword_27EF9E428)
  {
    type metadata accessor for PairingAgent(255);
    v1 = sub_24ACCFFF0();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF9E428);
    }
  }
}

uint64_t sub_24AC749C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a4;
  v26 = a6;
  v24 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - v14;
  v16 = sub_24ACD07C0();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v9 + 16))(v12, a1, v8);
  v17 = sub_24AC78D78(&qword_27EF9E4A8, type metadata accessor for PairingAgent, &unk_24ACD552C);
  v18 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 2) = a2;
  *(v20 + 3) = v17;
  *(v20 + 4) = a2;
  (*(v9 + 32))(&v20[v18], v12, v8);
  v21 = v25;
  *&v20[v19] = v24;
  *&v20[(v19 + 15) & 0xFFFFFFFFFFFFFFF8] = v21;
  swift_retain_n();

  sub_24AC7EA6C(0, 0, v15, v26, v20);
}

uint64_t sub_24AC74C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC74CBC, a6, 0);
}

uint64_t sub_24AC74CBC()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v6 = *(v5 - 8);
  (*(v6 + 16))(v1, v4, v5);
  (*(v6 + 56))(v1, 0, 1, v5);
  v7 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_pairingContinuation;
  swift_beginAccess();
  sub_24AC2AAE0(v1, v2 + v7);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_24AC74DE4, v3, 0);
}

uint64_t sub_24AC74DE4()
{
  if (qword_2814ADB68 != -1)
  {
    swift_once();
  }

  v1 = sub_24ACD0490();
  __swift_project_value_buffer(v1, qword_2814ADB70);

  v2 = sub_24ACD0470();
  v3 = sub_24ACD0930();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[7];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = *(v4 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject);
    *(v5 + 4) = v7;
    *v6 = v7;
    v8 = v7;
    _os_log_impl(&dword_24AC18000, v2, v3, "Calling unpairPeer() on %@", v5, 0xCu);
    sub_24AC78B24(v6);
    MEMORY[0x24C22DC60](v6, -1, -1);
    MEMORY[0x24C22DC60](v5, -1, -1);
  }

  v9 = v0[7];
  v10 = v0[5];

  [*(v10 + OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_underlyingObject) unpairPeer_];

  v11 = v0[1];

  return v11();
}

uint64_t sub_24AC74F94@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_id;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4B8, &qword_24ACD54D0);
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_24AC7503C()
{
  v0[2] = v0[3];
  v1 = type metadata accessor for PairingAgent(0);
  v2 = sub_24AC78D78(&qword_27EF9E4C8, type metadata accessor for PairingAgent, &unk_24ACD546C);
  v3 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v3);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v4 = MEMORY[0x24C22D370](v1, v2);
  MEMORY[0x24C22CD50](v4);

  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  v5 = v0[1];

  return v5(60, 0xE100000000000000);
}

uint64_t sub_24AC75168(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PairingAgent(0);
  v4 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v4);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v5 = MEMORY[0x24C22D370](v3, a2);
  MEMORY[0x24C22CD50](v5);

  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_24AC75228(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  v8 = sub_24ACD04C0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v2 + OBJC_IVAR____TtC15FindMyBluetoothP33_FB9F492088B4C388E3479FD29311B1A941DelegateTrampoline_CBPairingAgentDelegate_delegateQueue);
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v13 = v12;
  LOBYTE(v12) = sub_24ACD04D0();
  result = (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  if (!a1)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v15 = result;
  if (*(result + OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_underlyingObject) != a1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v16 = sub_24ACD07C0();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v15;
  v17[5] = a1;
  v17[6] = a2;
  v18 = a1;
  v19 = a2;
  sub_24AC7EA6C(0, 0, v7, &unk_24ACD55B8, v17);
}

uint64_t sub_24AC75464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_24AC75488, 0, 0);
}

void sub_24AC75488()
{
  if (v0[3])
  {
    v1 = swift_task_alloc();
    v0[5] = v1;
    *v1 = v0;
    v1[1] = sub_24AC791D8;
    v2 = v0[4];

    sub_24AC76734(v2);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24AC755C0(void *a1, void *a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - v8;
  v10 = sub_24ACD04C0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v3 + OBJC_IVAR____TtC15FindMyBluetoothP33_FB9F492088B4C388E3479FD29311B1A941DelegateTrampoline_CBPairingAgentDelegate_delegateQueue);
  *v13 = v14;
  (*(v11 + 104))(v13, *MEMORY[0x277D85200], v10);
  v15 = v14;
  LOBYTE(v14) = sub_24ACD04D0();
  result = (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  if (!a1)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v17 = result;
  if (*(result + OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_underlyingObject) != a1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v18 = sub_24ACD07C0();
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v17;
  v19[5] = a1;
  v19[6] = a2;
  v19[7] = a3;
  v20 = a1;
  v21 = a2;
  v22 = a3;
  sub_24AC7EA6C(0, 0, v9, &unk_24ACD55A0, v19);
}

uint64_t sub_24AC75810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_24AC75834, 0, 0);
}

void sub_24AC75834()
{
  if (!v0[3])
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = v0[4];
  if (!v1)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_24AC758FC;
  v3 = v0[5];

  sub_24AC7708C(v1, v3);
}

uint64_t sub_24AC758FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24AC75A88(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  v8 = sub_24ACD04C0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v2 + OBJC_IVAR____TtC15FindMyBluetoothP33_FB9F492088B4C388E3479FD29311B1A941DelegateTrampoline_CBPairingAgentDelegate_delegateQueue);
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v13 = v12;
  LOBYTE(v12) = sub_24ACD04D0();
  result = (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  if (!a1)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v15 = result;
  if (*(result + OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_underlyingObject) != a1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v16 = sub_24ACD07C0();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v15;
  v17[5] = a1;
  v17[6] = a2;
  v18 = a2;
  v19 = a1;
  sub_24AC7EA6C(0, 0, v7, &unk_24ACD5580, v17);
}

uint64_t sub_24AC75CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_24AC75CE8, 0, 0);
}

void sub_24AC75CE8()
{
  if (!v0[3])
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = v0[4];
  if (!v1)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_24AC75DAC;

  sub_24AC77B84(v1);
}

uint64_t sub_24AC75DAC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24AC75F28(void *a1, void *a2, uint64_t a3, void *a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25 - v10;
  v12 = sub_24ACD04C0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v4 + OBJC_IVAR____TtC15FindMyBluetoothP33_FB9F492088B4C388E3479FD29311B1A941DelegateTrampoline_CBPairingAgentDelegate_delegateQueue);
  *v15 = v16;
  (*(v13 + 104))(v15, *MEMORY[0x277D85200], v12);
  v17 = v16;
  LOBYTE(v16) = sub_24ACD04D0();
  result = (*(v13 + 8))(v15, v12);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  if (!a1)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v19 = result;
  if (*(result + OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_underlyingObject) != a1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v20 = sub_24ACD07C0();
  (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v19;
  v21[5] = a1;
  v21[6] = a2;
  v21[7] = a3;
  v21[8] = a4;
  v22 = a4;
  v23 = a1;
  v24 = a2;
  sub_24AC7EA6C(0, 0, v11, &unk_24ACD5568, v21);
}

uint64_t sub_24AC7617C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x2822009F8](sub_24AC761A4, 0, 0);
}

void sub_24AC761A4()
{
  if (!v0[3])
  {
    __break(1u);
    goto LABEL_8;
  }

  v1 = v0[4];
  if (!v1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v2 = v0[6];
  if (!v2)
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v2 integerValue];
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_24AC76284;
  v4 = v0[5];

  sub_24AC784DC(v1, v4);
}

uint64_t sub_24AC76284()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_24AC76454()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DelegateTrampoline_CBPairingAgentDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24AC76548()
{
  result = qword_27EF9E4B0;
  if (!qword_27EF9E4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF9E4B8, &qword_24ACD54D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E4B0);
  }

  return result;
}

uint64_t sub_24AC765AC(void *a1)
{
  a1[1] = sub_24AC78D78(&qword_27EF9E4C0, type metadata accessor for PairingAgent, &unk_24ACD54A0);
  a1[2] = sub_24AC78D78(&qword_27EF9E4C8, type metadata accessor for PairingAgent, &unk_24ACD546C);
  result = sub_24AC78D78(&unk_27EF9E4D0, type metadata accessor for PairingAgent, &unk_24ACD54D8);
  a1[3] = result;
  return result;
}

uint64_t sub_24AC76658(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24AC214AC;

  return sub_24AC7617C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24AC76734(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_24ACD0420();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC76800, v1, 0);
}

uint64_t sub_24AC76800()
{
  v33 = v0;
  v1 = *(v0 + 48);
  v2 = [*(v0 + 40) identifier];
  sub_24ACD03F0();

  v3 = OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_pairingPeripherals;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16))
  {
    v5 = *(v0 + 80);

    v6 = sub_24AC2ABC8(v5);
    if (v7)
    {
      v8 = *(v0 + 80);
      v9 = *(v0 + 56);
      v10 = *(v0 + 64);
      *(v0 + 88) = *(*(v4 + 56) + 8 * v6);
      v11 = *(v10 + 8);

      v11(v8, v9);

      v12 = swift_task_alloc();
      *(v0 + 96) = v12;
      *v12 = v0;
      v12[1] = sub_24AC76B74;

      return sub_24AC3B2B0(0);
    }
  }

  v14 = *(*(v0 + 64) + 8);
  v14(*(v0 + 80), *(v0 + 56));
  if (qword_2814ADB68 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 40);
  v16 = sub_24ACD0490();
  __swift_project_value_buffer(v16, qword_2814ADB70);
  v17 = v15;
  v18 = sub_24ACD0470();
  v19 = sub_24ACD0910();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = *(v0 + 72);
    v21 = *(v0 + 56);
    v22 = *(v0 + 40);
    v23 = swift_slowAlloc();
    v31 = v14;
    v32 = swift_slowAlloc();
    v24 = v32;
    *v23 = 136446210;
    v25 = [v22 identifier];
    sub_24ACD03F0();

    sub_24AC78D78(&qword_27EF9E4E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v26 = sub_24ACD0C20();
    v28 = v27;
    v31(v20, v21);
    v29 = sub_24AC29E20(v26, v28, &v32);

    *(v23 + 4) = v29;
    _os_log_impl(&dword_24AC18000, v18, v19, "peerDidComplete for unknown peripheral: %{public}s!", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x24C22DC60](v24, -1, -1);
    MEMORY[0x24C22DC60](v23, -1, -1);
  }

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_24AC76B74()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_24AC76E74;
  }

  else
  {
    v4 = sub_24AC76CA0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC76CA0()
{
  v13 = v0;
  if (qword_2814ADB68 != -1)
  {
    swift_once();
  }

  v1 = sub_24ACD0490();
  __swift_project_value_buffer(v1, qword_2814ADB70);

  v2 = sub_24ACD0470();
  v3 = sub_24ACD08F0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;

    v6 = sub_24AC39074();
    v8 = v7;

    v9 = sub_24AC29E20(v6, v8, &v12);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_24AC18000, v2, v3, "Pairing completed for %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C22DC60](v5, -1, -1);
    MEMORY[0x24C22DC60](v4, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24AC76E74()
{
  v16 = v0;
  if (qword_2814ADB68 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = sub_24ACD0490();
  __swift_project_value_buffer(v2, qword_2814ADB70);
  v3 = v1;
  v4 = sub_24ACD0470();
  v5 = sub_24ACD0910();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 104);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_24AC29E20(0xD000000000000027, 0x800000024ACDA210, &v15);
    *(v8 + 12) = 2114;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_24AC18000, v4, v5, "%s failed with %{public}@!", v8, 0x16u);
    sub_24AC78B24(v9);
    MEMORY[0x24C22DC60](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x24C22DC60](v10, -1, -1);
    MEMORY[0x24C22DC60](v8, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_24AC7708C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_24ACD0420();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC7715C, v2, 0);
}

uint64_t sub_24AC7715C()
{
  v59 = v0;
  v1 = *(v0 + 56);
  v2 = [*(v0 + 40) identifier];
  sub_24ACD03F0();

  v3 = OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_pairingPeripherals;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16))
  {
    v5 = *(v0 + 88);

    v6 = sub_24AC2ABC8(v5);
    if (v7)
    {
      v8 = *(v0 + 88);
      v9 = *(v0 + 64);
      v10 = *(v0 + 72);
      v11 = *(v0 + 48);
      *(v0 + 96) = *(*(v4 + 56) + 8 * v6);
      v12 = *(v10 + 8);

      v12(v8, v9);

      if (v11)
      {
        v13 = *(v0 + 48);
        v14 = v13;
        if (qword_2814ADB68 != -1)
        {
          swift_once();
        }

        v15 = sub_24ACD0490();
        __swift_project_value_buffer(v15, qword_2814ADB70);

        v16 = v13;
        v17 = sub_24ACD0470();
        v18 = sub_24ACD0910();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v58 = v21;
          *v19 = 136315394;

          v22 = sub_24AC39074();
          v24 = v23;

          v25 = sub_24AC29E20(v22, v24, &v58);

          *(v19 + 4) = v25;
          *(v19 + 12) = 2114;
          v26 = v13;
          v27 = _swift_stdlib_bridgeErrorToNSError();
          *(v19 + 14) = v27;
          *v20 = v27;
          _os_log_impl(&dword_24AC18000, v17, v18, "Pairing failed for %s, error: %{public}@", v19, 0x16u);
          sub_24AC78B24(v20);
          MEMORY[0x24C22DC60](v20, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v21);
          MEMORY[0x24C22DC60](v21, -1, -1);
          MEMORY[0x24C22DC60](v19, -1, -1);
        }

        else
        {
        }
      }

      else
      {
        if (qword_2814ADB68 != -1)
        {
          swift_once();
        }

        v46 = sub_24ACD0490();
        __swift_project_value_buffer(v46, qword_2814ADB70);

        v47 = sub_24ACD0470();
        v48 = sub_24ACD0910();

        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v58 = v50;
          *v49 = 136315138;

          v51 = sub_24AC39074();
          v53 = v52;

          v54 = sub_24AC29E20(v51, v53, &v58);

          *(v49 + 4) = v54;
          _os_log_impl(&dword_24AC18000, v47, v48, "Pairing failed for %s", v49, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v50);
          MEMORY[0x24C22DC60](v50, -1, -1);
          MEMORY[0x24C22DC60](v49, -1, -1);
        }
      }

      v55 = swift_task_alloc();
      *(v0 + 104) = v55;
      *v55 = v0;
      v55[1] = sub_24AC777D0;
      v56 = *(v0 + 48);

      return sub_24AC3B2B0(v56);
    }
  }

  v28 = *(*(v0 + 72) + 8);
  v28(*(v0 + 88), *(v0 + 64));
  if (qword_2814ADB68 != -1)
  {
    swift_once();
  }

  v29 = *(v0 + 40);
  v30 = sub_24ACD0490();
  __swift_project_value_buffer(v30, qword_2814ADB70);
  v31 = v29;
  v32 = sub_24ACD0470();
  v33 = sub_24ACD0910();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = *(v0 + 80);
    v35 = *(v0 + 64);
    v36 = *(v0 + 40);
    v37 = swift_slowAlloc();
    v57 = v28;
    v58 = swift_slowAlloc();
    v38 = v58;
    *v37 = 136446210;
    v39 = [v36 identifier];
    sub_24ACD03F0();

    sub_24AC78D78(&qword_27EF9E4E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v40 = sub_24ACD0C20();
    v42 = v41;
    v57(v34, v35);
    v43 = sub_24AC29E20(v40, v42, &v58);

    *(v37 + 4) = v43;
    _os_log_impl(&dword_24AC18000, v32, v33, "peerDidFailToCompletePairing for unknown peripheral: %{public}s!", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x24C22DC60](v38, -1, -1);
    MEMORY[0x24C22DC60](v37, -1, -1);
  }

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_24AC777D0()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_24AC7796C;
  }

  else
  {
    v4 = sub_24AC778FC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC778FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AC7796C()
{
  v16 = v0;
  if (qword_2814ADB68 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = sub_24ACD0490();
  __swift_project_value_buffer(v2, qword_2814ADB70);
  v3 = v1;
  v4 = sub_24ACD0470();
  v5 = sub_24ACD0910();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 112);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_24AC29E20(0xD000000000000033, 0x800000024ACDA1D0, &v15);
    *(v8 + 12) = 2114;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_24AC18000, v4, v5, "%s failed with %{public}@!", v8, 0x16u);
    sub_24AC78B24(v9);
    MEMORY[0x24C22DC60](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x24C22DC60](v10, -1, -1);
    MEMORY[0x24C22DC60](v8, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_24AC77B84(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_24ACD0420();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC77C50, v1, 0);
}

uint64_t sub_24AC77C50()
{
  v33 = v0;
  v1 = *(v0 + 48);
  v2 = [*(v0 + 40) identifier];
  sub_24ACD03F0();

  v3 = OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_pairingPeripherals;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16))
  {
    v5 = *(v0 + 80);

    v6 = sub_24AC2ABC8(v5);
    if (v7)
    {
      v8 = *(v0 + 80);
      v9 = *(v0 + 56);
      v10 = *(v0 + 64);
      *(v0 + 88) = *(*(v4 + 56) + 8 * v6);
      v11 = *(v10 + 8);

      v11(v8, v9);

      v12 = swift_task_alloc();
      *(v0 + 96) = v12;
      *v12 = v0;
      v12[1] = sub_24AC77FC4;

      return sub_24AC3B2B0(0);
    }
  }

  v14 = *(*(v0 + 64) + 8);
  v14(*(v0 + 80), *(v0 + 56));
  if (qword_2814ADB68 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 40);
  v16 = sub_24ACD0490();
  __swift_project_value_buffer(v16, qword_2814ADB70);
  v17 = v15;
  v18 = sub_24ACD0470();
  v19 = sub_24ACD0910();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = *(v0 + 72);
    v21 = *(v0 + 56);
    v22 = *(v0 + 40);
    v23 = swift_slowAlloc();
    v31 = v14;
    v32 = swift_slowAlloc();
    v24 = v32;
    *v23 = 136446210;
    v25 = [v22 identifier];
    sub_24ACD03F0();

    sub_24AC78D78(&qword_27EF9E4E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v26 = sub_24ACD0C20();
    v28 = v27;
    v31(v20, v21);
    v29 = sub_24AC29E20(v26, v28, &v32);

    *(v23 + 4) = v29;
    _os_log_impl(&dword_24AC18000, v18, v19, "peerDidUnpair for unknown peripheral: %{public}s!", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x24C22DC60](v24, -1, -1);
    MEMORY[0x24C22DC60](v23, -1, -1);
  }

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_24AC77FC4()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_24AC782C4;
  }

  else
  {
    v4 = sub_24AC780F0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC780F0()
{
  v13 = v0;
  if (qword_2814ADB68 != -1)
  {
    swift_once();
  }

  v1 = sub_24ACD0490();
  __swift_project_value_buffer(v1, qword_2814ADB70);

  v2 = sub_24ACD0470();
  v3 = sub_24ACD08F0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;

    v6 = sub_24AC39074();
    v8 = v7;

    v9 = sub_24AC29E20(v6, v8, &v12);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_24AC18000, v2, v3, "Unpaired %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C22DC60](v5, -1, -1);
    MEMORY[0x24C22DC60](v4, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24AC782C4()
{
  v16 = v0;
  if (qword_2814ADB68 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = sub_24ACD0490();
  __swift_project_value_buffer(v2, qword_2814ADB70);
  v3 = v1;
  v4 = sub_24ACD0470();
  v5 = sub_24ACD0910();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 104);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_24AC29E20(0xD00000000000001ELL, 0x800000024ACDA1B0, &v15);
    *(v8 + 12) = 2114;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_24AC18000, v4, v5, "%s failed with %{public}@!", v8, 0x16u);
    sub_24AC78B24(v9);
    MEMORY[0x24C22DC60](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x24C22DC60](v10, -1, -1);
    MEMORY[0x24C22DC60](v8, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_24AC784DC(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_24ACD0420();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC785AC, v2, 0);
}

uint64_t sub_24AC785AC()
{
  v42 = v0;
  v1 = *(v0 + 56);
  v2 = [*(v0 + 40) identifier];
  sub_24ACD03F0();

  v3 = OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_pairingPeripherals;
  swift_beginAccess();
  if (*(*(v1 + v3) + 16))
  {
    v4 = *(v0 + 88);

    sub_24AC2ABC8(v4);
    if (v5)
    {
      v6 = *(v0 + 88);
      v7 = *(v0 + 64);
      v8 = *(*(v0 + 72) + 8);

      v8(v6, v7);

      if (qword_2814ADB68 != -1)
      {
        swift_once();
      }

      v9 = sub_24ACD0490();
      __swift_project_value_buffer(v9, qword_2814ADB70);

      v10 = sub_24ACD0470();
      v11 = sub_24ACD08F0();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v41 = v13;
        *v12 = 136315138;

        v14 = sub_24AC39074();
        v16 = v15;

        v17 = sub_24AC29E20(v14, v16, &v41);

        *(v12 + 4) = v17;
        _os_log_impl(&dword_24AC18000, v10, v11, "Accepting pairing request for %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v13);
        MEMORY[0x24C22DC60](v13, -1, -1);
        MEMORY[0x24C22DC60](v12, -1, -1);
      }

      v18 = *(v0 + 48);
      v19 = *(v0 + 40);
      v20 = *(*(v0 + 56) + OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_underlyingObject);
      sub_24AC9F0B8(MEMORY[0x277D84F90]);
      v21 = sub_24ACD04F0();

      [v20 respondToPairingRequest:v19 type:v18 accept:1 data:v21];

      goto LABEL_14;
    }
  }

  v22 = *(*(v0 + 72) + 8);
  v22(*(v0 + 88), *(v0 + 64));
  if (qword_2814ADB68 != -1)
  {
    swift_once();
  }

  v23 = *(v0 + 40);
  v24 = sub_24ACD0490();
  __swift_project_value_buffer(v24, qword_2814ADB70);
  v25 = v23;
  v26 = sub_24ACD0470();
  v27 = sub_24ACD0910();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = *(v0 + 80);
    v29 = *(v0 + 64);
    v30 = *(v0 + 40);
    v31 = swift_slowAlloc();
    v40 = v22;
    v41 = swift_slowAlloc();
    v32 = v41;
    *v31 = 136446210;
    v33 = [v30 identifier];
    sub_24ACD03F0();

    sub_24AC78D78(&qword_27EF9E4E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v34 = sub_24ACD0C20();
    v36 = v35;
    v40(v28, v29);
    v37 = sub_24AC29E20(v34, v36, &v41);

    *(v31 + 4) = v37;
    _os_log_impl(&dword_24AC18000, v26, v27, "peerDidRequestPairing for unknown peripheral: %{public}s!", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x24C22DC60](v32, -1, -1);
    MEMORY[0x24C22DC60](v31, -1, -1);
  }

LABEL_14:

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_24AC78A5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AC20274;

  return sub_24AC75CC4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24AC78B24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E6A0, &qword_24ACD5590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24AC78B8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24AC214AC;

  return sub_24AC75810(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_23Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24AC78CB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AC214AC;

  return sub_24AC75464(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24AC78D78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24AC78DFC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_24AC214AC;

  return sub_24AC73CE8(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t objectdestroy_43Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_24AC79084(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_24AC214AC;

  return sub_24AC74C18(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t type metadata accessor for PeerPath(uint64_t a1)
{
  result = qword_2814AD0E8;
  if (!qword_2814AD0E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24AC79250(uint64_t a1)
{
  sub_24AC79374(319, &qword_2814AE250, type metadata accessor for CentralManager);
  if (v1 <= 0x3F)
  {
    sub_24AC79374(319, &qword_2814AE260, type metadata accessor for Peripheral);
    if (v2 <= 0x3F)
    {
      sub_24AC542BC(319, &qword_2814AE220, &unk_27EF9E090, &qword_24ACD37C0);
      if (v3 <= 0x3F)
      {
        sub_24AC542BC(319, &qword_2814AE238, &qword_27EF9DDE8, &unk_24ACD37D0);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24AC79374(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24ACCFFF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24AC793C8(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));

  return v2;
}

BOOL sub_24AC79400(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_24ACD0D10();
  v4 = qword_24ACD57E0[a1];
  MEMORY[0x24C22D480](v4);
  v5 = sub_24ACD0D50();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = qword_24ACD57E0[*(*(a2 + 48) + v7)];
    result = v9 == v4;
    if (v9 == v4)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_24AC794E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_24ACD0D10();
  sub_24ACD05E0();
  v6 = sub_24ACD0D50();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_24ACD0C40() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_24AC795D8(uint64_t a1, uint64_t a2)
{
  v3 = sub_24ACD0420();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_24AC7EA24(&qword_2814AE200, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]), v7 = sub_24ACD0520(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_24AC7EA24(&unk_2814AE1F0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_24ACD0550();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_24AC797F0(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AC214AC;

  return CentralManagerProtocol.await(state:)(a1, a2, a3);
}

uint64_t sub_24AC7989C(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 113) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E740, &unk_24ACD5E50);
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F8, &qword_24ACD5640);
  *(v2 + 48) = v4;
  *(v2 + 56) = *(v4 - 8);
  *(v2 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC799D4, v1, 0);
}

uint64_t sub_24AC799D4()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager__state);
  if (v1 > 2)
  {
    switch(v1)
    {
      case 3:
        v2 = *(v0 + 113);
        if (*(v0 + 113) > 2u)
        {
          if (*(v0 + 113) <= 4u)
          {
            if (v2 == 3)
            {
              goto LABEL_57;
            }

            goto LABEL_50;
          }

          goto LABEL_47;
        }

        goto LABEL_40;
      case 4:
        v2 = *(v0 + 113);
        if (*(v0 + 113) > 2u)
        {
          if (*(v0 + 113) <= 4u)
          {
            if (v2 != 3)
            {
              goto LABEL_57;
            }

LABEL_46:
            v2 = 3;
            goto LABEL_54;
          }

          goto LABEL_47;
        }

        goto LABEL_40;
      case 5:
        v2 = *(v0 + 113);
        if (*(v0 + 113) > 2u)
        {
          if (*(v0 + 113) <= 4u)
          {
            goto LABEL_45;
          }

          if (v2 == 5)
          {
            goto LABEL_57;
          }

          goto LABEL_49;
        }

        goto LABEL_40;
    }

    goto LABEL_25;
  }

  if (!v1)
  {
    v2 = *(v0 + 113);
    if (*(v0 + 113) <= 2u)
    {
      if (*(v0 + 113))
      {
        if (v2 != 1)
        {
          v2 = 2;
        }

        goto LABEL_54;
      }

      goto LABEL_57;
    }

    goto LABEL_44;
  }

  if (v1 == 1)
  {
    v2 = *(v0 + 113);
    if (*(v0 + 113) <= 2u)
    {
      if (!*(v0 + 113))
      {
        goto LABEL_54;
      }

      if (v2 == 1)
      {
        goto LABEL_57;
      }

LABEL_53:
      v2 = 2;
      goto LABEL_54;
    }

    goto LABEL_44;
  }

  if (v1 != 2)
  {
LABEL_25:
    if (qword_2814AD8F0 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 113);
    if (qword_2814AEE28 == v1)
    {
      if (*(v0 + 113) > 2u)
      {
        if (*(v0 + 113) <= 4u)
        {
          goto LABEL_45;
        }

        if (v2 != 5)
        {
          goto LABEL_57;
        }

LABEL_48:
        v2 = 5;
        goto LABEL_54;
      }

LABEL_40:
      if (!v2)
      {
        goto LABEL_54;
      }

      if (v2 == 1)
      {
LABEL_42:
        v2 = 1;
        goto LABEL_54;
      }

      goto LABEL_53;
    }

    if (*(v0 + 113) <= 2u)
    {
      if (!*(v0 + 113))
      {
        goto LABEL_57;
      }

      if (v2 == 1)
      {
        goto LABEL_54;
      }

      goto LABEL_53;
    }

LABEL_44:
    if (v2 <= 4)
    {
LABEL_45:
      if (v2 == 3)
      {
        goto LABEL_46;
      }

LABEL_50:
      v2 = 4;
      goto LABEL_54;
    }

LABEL_47:
    if (v2 == 5)
    {
      goto LABEL_48;
    }

LABEL_49:
    v2 = 10;
    goto LABEL_54;
  }

  v2 = *(v0 + 113);
  if (*(v0 + 113) > 2u)
  {
    goto LABEL_44;
  }

  if (!*(v0 + 113))
  {
LABEL_54:
    *(v0 + 72) = v2;
    v3 = sub_24AC7EA24(&qword_27EF9E510, type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
    v4 = *(v3 + 88);
    v5 = type metadata accessor for CentralManager(0);
    v10 = (v4 + *v4);
    v6 = swift_task_alloc();
    *(v0 + 80) = v6;
    *v6 = v0;
    v6[1] = sub_24AC79D44;
    v7 = *(v0 + 40);

    return v10(v7, v5, v3);
  }

  if (v2 == 1)
  {
    goto LABEL_42;
  }

LABEL_57:

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_24AC79D44()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_24AC79E54, v1, 0);
}

uint64_t sub_24AC79E54()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_24ACD0800();
  (*(v2 + 8))(v1, v3);
  v4 = sub_24AC7EA24(&unk_2814AD870, type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  v0[11] = v4;
  v0[12] = 0;
  v5 = v0[2];
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_24AC79F70;
  v7 = v0[6];

  return MEMORY[0x2822003E8](v0 + 14, v5, v4, v7);
}

uint64_t sub_24AC79F70()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_24AC7A080, v1, 0);
}

uint64_t sub_24AC7A080()
{
  v1 = *(v0 + 112);
  if (v1 == 7 || (v2 = *(v0 + 96), sub_24ACD0850(), v2) || qword_24ACD57E0[v1] == *(v0 + 72))
  {
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    *(v0 + 96) = 0;
    v5 = *(v0 + 88);
    v6 = *(v0 + 16);
    v7 = swift_task_alloc();
    *(v0 + 104) = v7;
    *v7 = v0;
    v7[1] = sub_24AC79F70;
    v8 = *(v0 + 48);

    return MEMORY[0x2822003E8](v0 + 112, v6, v5, v8);
  }
}

uint64_t sub_24AC7A21C(char a1)
{
  *(v2 + 40) = v1;
  *(v2 + 137) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E740, &unk_24ACD5E50);
  *(v2 + 48) = v3;
  *(v2 + 56) = *(v3 - 8);
  *(v2 + 64) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F8, &qword_24ACD5640);
  *(v2 + 72) = v4;
  *(v2 + 80) = *(v4 - 8);
  *(v2 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC7A354, v1, 0);
}

uint64_t sub_24AC7A354()
{
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_state;
  swift_beginAccess();
  v3 = qword_24ACD57E0[*(v1 + v2)];
  v4 = qword_24ACD57E0[*(v0 + 137)];
  *(v0 + 96) = v4;
  if (v3 == v4)
  {

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = sub_24AC7EA24(&qword_27EF9E500, type metadata accessor for MockCentralManager, &protocol conformance descriptor for MockCentralManager);
    v8 = *(v7 + 88);
    v9 = type metadata accessor for MockCentralManager(0);
    v12 = (v8 + *v8);
    v10 = swift_task_alloc();
    *(v0 + 104) = v10;
    *v10 = v0;
    v10[1] = sub_24AC7A548;
    v11 = *(v0 + 64);

    return v12(v11, v9, v7);
  }
}

uint64_t sub_24AC7A548()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_24AC7A658, v1, 0);
}

uint64_t sub_24AC7A658()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  sub_24ACD0800();
  (*(v2 + 8))(v1, v3);
  v4 = sub_24AC7EA24(&qword_27EF9E508, type metadata accessor for MockCentralManager, ")-V70[");
  v0[14] = v4;
  v0[15] = 0;
  v5 = v0[5];
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_24AC7A774;
  v7 = v0[9];

  return MEMORY[0x2822003E8](v0 + 17, v5, v4, v7);
}

uint64_t sub_24AC7A774()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_24AC7A884, v1, 0);
}

uint64_t sub_24AC7A884()
{
  v1 = *(v0 + 136);
  if (v1 == 7 || (v2 = *(v0 + 120), sub_24ACD0850(), v2) || qword_24ACD57E0[v1] == *(v0 + 96))
  {
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    *(v0 + 120) = 0;
    v5 = *(v0 + 112);
    v6 = *(v0 + 40);
    v7 = swift_task_alloc();
    *(v0 + 128) = v7;
    *v7 = v0;
    v7[1] = sub_24AC7A774;
    v8 = *(v0 + 72);

    return MEMORY[0x2822003E8](v0 + 136, v6, v5, v8);
  }
}

uint64_t CentralManagerProtocol.await(state:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E740, &unk_24ACD5E50);
  *(v4 + 40) = v8;
  *(v4 + 48) = *(v8 - 8);
  *(v4 + 56) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F8, &qword_24ACD5640);
  *(v4 + 64) = v9;
  *(v4 + 72) = *(v9 - 8);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 154) = *a1;
  v12 = (*(a3 + 72) + **(a3 + 72));
  v10 = swift_task_alloc();
  *(v4 + 88) = v10;
  *v10 = v4;
  v10[1] = sub_24AC7AC2C;

  return v12(v4 + 152, a2, a3);
}

uint64_t sub_24AC7AC2C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);

  v1[12] = *(*(v2 + 8) + 8);
  v4 = sub_24ACD0740();
  v1[13] = v4;
  v1[14] = v3;

  return MEMORY[0x2822009F8](sub_24AC7AD88, v4, v3);
}

uint64_t sub_24AC7AD88()
{
  v1 = qword_24ACD57E0[*(v0 + 152)];
  v2 = qword_24ACD57E0[*(v0 + 154)];
  *(v0 + 120) = v2;
  if (v1 == v2)
  {

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v9 = (*(*(v0 + 24) + 88) + **(*(v0 + 24) + 88));
    v5 = swift_task_alloc();
    *(v0 + 128) = v5;
    *v5 = v0;
    v5[1] = sub_24AC7AF04;
    v6 = *(v0 + 56);
    v7 = *(v0 + 24);
    v8 = *(v0 + 16);

    return v9(v6, v8, v7);
  }
}

uint64_t sub_24AC7AF04()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_24AC7B024, v3, v2);
}

uint64_t sub_24AC7B024()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_24ACD0800();
  (*(v2 + 8))(v1, v3);
  v0[17] = 0;
  v4 = v0[12];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_24AC7B10C;
  v7 = v0[8];

  return MEMORY[0x2822003E8](v0 + 153, v5, v4, v7);
}

uint64_t sub_24AC7B10C()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_24AC7B22C, v3, v2);
}

uint64_t sub_24AC7B22C()
{
  v1 = *(v0 + 153);
  if (v1 == 7 || (v2 = *(v0 + 136), sub_24ACD0850(), v2) || qword_24ACD57E0[v1] == *(v0 + 120))
  {
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    *(v0 + 136) = 0;
    v5 = *(v0 + 96);
    v6 = *(v0 + 32);
    v7 = swift_task_alloc();
    *(v0 + 144) = v7;
    *v7 = v0;
    v7[1] = sub_24AC7B10C;
    v8 = *(v0 + 64);

    return MEMORY[0x2822003E8](v0 + 153, v6, v5, v8);
  }
}

uint64_t sub_24AC7B3C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AC214AC;

  return CentralManagerProtocol.await(states:)(a1, a2, a3);
}

uint64_t sub_24AC7B474(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E740, &unk_24ACD5E50);
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F8, &qword_24ACD5640);
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC7B5A8, v1, 0);
}

uint64_t sub_24AC7B5A8()
{
  v12 = v0;

  v2 = sub_24AC655B8(v1);
  v0[19] = v2;

  sub_24AC81B94(&v11);
  if (sub_24AC79400(v11, v2))
  {

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = sub_24AC7EA24(&qword_27EF9E510, type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
    v6 = *(v5 + 88);
    v7 = type metadata accessor for CentralManager(0);
    v10 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[20] = v8;
    *v8 = v0;
    v8[1] = sub_24AC7B794;
    v9 = v0[15];

    return v10(v9, v7, v5);
  }
}

uint64_t sub_24AC7B794()
{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](sub_24AC7B8A4, v1, 0);
}

uint64_t sub_24AC7B8A4()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  sub_24ACD0800();
  (*(v2 + 8))(v1, v3);
  v4 = sub_24AC7EA24(&unk_2814AD870, type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  v0[21] = v4;
  v0[22] = 0;
  v5 = v0[12];
  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v0;
  v6[1] = sub_24AC7B9C0;
  v7 = v0[16];

  return MEMORY[0x2822003E8](v0 + 24, v5, v4, v7);
}

uint64_t sub_24AC7B9C0()
{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](sub_24AC7BAD0, v1, 0);
}

uint64_t sub_24AC7BAD0()
{
  v1 = *(v0 + 192);
  if (v1 == 7)
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));

LABEL_3:

    v2 = *(v0 + 8);
LABEL_6:

    return v2();
  }

  v3 = *(v0 + 176);
  sub_24ACD0850();
  if (v3)
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));

    v2 = *(v0 + 8);
    goto LABEL_6;
  }

  if (*(*(v0 + 152) + 16))
  {
    sub_24ACD0D10();
    v5 = qword_24ACD57E0[v1];
    v6 = *(v0 + 152);
    MEMORY[0x24C22D480](v5);
    v7 = sub_24ACD0D50();
    v8 = -1 << *(v6 + 32);
    v9 = v7 & ~v8;
    if ((*(v6 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v9))
    {
      v10 = ~v8;
      v11 = *(v0 + 152);
      while (qword_24ACD57E0[*(*(v11 + 48) + v9)] != v5)
      {
        v9 = (v9 + 1) & v10;
        if (((*(v11 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v17 = *(v0 + 136);
      v16 = *(v0 + 144);
      v18 = *(v0 + 128);

      (*(v17 + 8))(v16, v18);
      goto LABEL_3;
    }
  }

LABEL_14:
  *(v0 + 176) = 0;
  v12 = *(v0 + 168);
  v13 = *(v0 + 96);
  v14 = swift_task_alloc();
  *(v0 + 184) = v14;
  *v14 = v0;
  v14[1] = sub_24AC7B9C0;
  v15 = *(v0 + 128);

  return MEMORY[0x2822003E8](v0 + 192, v13, v12, v15);
}

uint64_t sub_24AC7BD34(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E740, &unk_24ACD5E50);
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F8, &qword_24ACD5640);
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC7BE68, v1, 0);
}

uint64_t sub_24AC7BE68()
{
  v1 = v0[15];

  v3 = sub_24AC655B8(v2);
  v0[22] = v3;

  v4 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_state;
  swift_beginAccess();
  if (sub_24AC79400(*(v1 + v4), v3))
  {

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = sub_24AC7EA24(&qword_27EF9E500, type metadata accessor for MockCentralManager, &protocol conformance descriptor for MockCentralManager);
    v8 = *(v7 + 88);
    v9 = type metadata accessor for MockCentralManager(0);
    v12 = (v8 + *v8);
    v10 = swift_task_alloc();
    v0[23] = v10;
    *v10 = v0;
    v10[1] = sub_24AC7C06C;
    v11 = v0[18];

    return v12(v11, v9, v7);
  }
}

uint64_t sub_24AC7C06C()
{
  v1 = *(*v0 + 120);

  return MEMORY[0x2822009F8](sub_24AC7C17C, v1, 0);
}

uint64_t sub_24AC7C17C()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  sub_24ACD0800();
  (*(v2 + 8))(v1, v3);
  v4 = sub_24AC7EA24(&qword_27EF9E508, type metadata accessor for MockCentralManager, ")-V70[");
  v0[24] = v4;
  v0[25] = 0;
  v5 = v0[15];
  v6 = swift_task_alloc();
  v0[26] = v6;
  *v6 = v0;
  v6[1] = sub_24AC7C298;
  v7 = v0[19];

  return MEMORY[0x2822003E8](v0 + 27, v5, v4, v7);
}

uint64_t sub_24AC7C298()
{
  v1 = *(*v0 + 120);

  return MEMORY[0x2822009F8](sub_24AC7C3A8, v1, 0);
}

uint64_t sub_24AC7C3A8()
{
  v1 = *(v0 + 216);
  if (v1 == 7)
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));

LABEL_3:

    v2 = *(v0 + 8);
LABEL_6:

    return v2();
  }

  v3 = *(v0 + 200);
  sub_24ACD0850();
  if (v3)
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));

    v2 = *(v0 + 8);
    goto LABEL_6;
  }

  if (*(*(v0 + 176) + 16))
  {
    sub_24ACD0D10();
    v5 = qword_24ACD57E0[v1];
    v6 = *(v0 + 176);
    MEMORY[0x24C22D480](v5);
    v7 = sub_24ACD0D50();
    v8 = -1 << *(v6 + 32);
    v9 = v7 & ~v8;
    if ((*(v6 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v9))
    {
      v10 = ~v8;
      v11 = *(v0 + 176);
      while (qword_24ACD57E0[*(*(v11 + 48) + v9)] != v5)
      {
        v9 = (v9 + 1) & v10;
        if (((*(v11 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v17 = *(v0 + 160);
      v16 = *(v0 + 168);
      v18 = *(v0 + 152);

      (*(v17 + 8))(v16, v18);
      goto LABEL_3;
    }
  }

LABEL_14:
  *(v0 + 200) = 0;
  v12 = *(v0 + 192);
  v13 = *(v0 + 120);
  v14 = swift_task_alloc();
  *(v0 + 208) = v14;
  *v14 = v0;
  v14[1] = sub_24AC7C298;
  v15 = *(v0 + 152);

  return MEMORY[0x2822003E8](v0 + 216, v13, v12, v15);
}

uint64_t CentralManagerProtocol.await(states:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E740, &unk_24ACD5E50);
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F8, &qword_24ACD5640);
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = *(*(a3 + 8) + 8);
  v9 = sub_24ACD0740();
  v4[22] = v9;
  v4[23] = v8;

  return MEMORY[0x2822009F8](sub_24AC7C770, v9, v8);
}

uint64_t sub_24AC7C770()
{
  v7 = v0[13];

  v0[24] = sub_24AC655B8(v1);

  v6 = (*(v7 + 72) + **(v7 + 72));
  v2 = swift_task_alloc();
  v0[25] = v2;
  *v2 = v0;
  v2[1] = sub_24AC7C8A4;
  v3 = v0[13];
  v4 = v0[12];

  return v6(v0 + 29, v4, v3);
}

uint64_t sub_24AC7C8A4()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return MEMORY[0x2822009F8](sub_24AC7C9C4, v3, v2);
}

uint64_t sub_24AC7C9C4()
{
  if (sub_24AC79400(*(v0 + 232), *(v0 + 192)))
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v7 = (*(*(v0 + 104) + 88) + **(*(v0 + 104) + 88));
    v3 = swift_task_alloc();
    *(v0 + 208) = v3;
    *v3 = v0;
    v3[1] = sub_24AC7CB34;
    v4 = *(v0 + 136);
    v5 = *(v0 + 104);
    v6 = *(v0 + 96);

    return v7(v4, v6, v5);
  }
}

uint64_t sub_24AC7CB34()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return MEMORY[0x2822009F8](sub_24AC7CC54, v3, v2);
}

uint64_t sub_24AC7CC54()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  sub_24ACD0800();
  (*(v2 + 8))(v1, v3);
  v0[27] = 0;
  v4 = v0[21];
  v5 = v0[14];
  v6 = swift_task_alloc();
  v0[28] = v6;
  *v6 = v0;
  v6[1] = sub_24AC7CD3C;
  v7 = v0[18];

  return MEMORY[0x2822003E8](v0 + 233, v5, v4, v7);
}

uint64_t sub_24AC7CD3C()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return MEMORY[0x2822009F8](sub_24AC7CE5C, v3, v2);
}

uint64_t sub_24AC7CE5C()
{
  v1 = *(v0 + 233);
  if (v1 == 7)
  {
    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));

LABEL_3:

    v2 = *(v0 + 8);
LABEL_6:

    return v2();
  }

  v3 = *(v0 + 216);
  sub_24ACD0850();
  if (v3)
  {
    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));

    v2 = *(v0 + 8);
    goto LABEL_6;
  }

  if (*(*(v0 + 192) + 16))
  {
    sub_24ACD0D10();
    v5 = qword_24ACD57E0[v1];
    v6 = *(v0 + 192);
    MEMORY[0x24C22D480](v5);
    v7 = sub_24ACD0D50();
    v8 = -1 << *(v6 + 32);
    v9 = v7 & ~v8;
    if ((*(v6 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v9))
    {
      v10 = ~v8;
      v11 = *(v0 + 192);
      while (qword_24ACD57E0[*(*(v11 + 48) + v9)] != v5)
      {
        v9 = (v9 + 1) & v10;
        if (((*(v11 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v17 = *(v0 + 152);
      v16 = *(v0 + 160);
      v18 = *(v0 + 144);

      (*(v17 + 8))(v16, v18);
      goto LABEL_3;
    }
  }

LABEL_14:
  *(v0 + 216) = 0;
  v12 = *(v0 + 168);
  v13 = *(v0 + 112);
  v14 = swift_task_alloc();
  *(v0 + 224) = v14;
  *v14 = v0;
  v14[1] = sub_24AC7CD3C;
  v15 = *(v0 + 144);

  return MEMORY[0x2822003E8](v0 + 233, v13, v12, v15);
}

uint64_t CentralManagerProtocol.isolatedDescription.getter(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E120, &qword_24ACD4550);
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_24ACD0740();
  v3[11] = v6;
  v3[12] = v5;

  return MEMORY[0x2822009F8](sub_24AC7D1B0, v6, v5);
}

uint64_t sub_24AC7D1B0()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v15 = v0[6];
  sub_24ACD0A20();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x24C22CD50](60, 0xE100000000000000);
  v0[4] = v4;
  v6 = *(v15 + 16);
  v7 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v7);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v8 = MEMORY[0x24C22D370](v5, v6);
  MEMORY[0x24C22CD50](v8);

  MEMORY[0x24C22CD50](0x69746E656469202CLL, 0xEF203D2072656966);
  (*(v15 + 56))(v5);
  sub_24AC7DB5C();
  v9 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v9);

  (*(v2 + 8))(v1, v3);
  MEMORY[0x24C22CD50](0x206574617473202CLL, 0xEA0000000000203DLL);
  v14 = (*(v15 + 72) + **(v15 + 72));
  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_24AC7D428;
  v11 = v0[6];
  v12 = v0[5];

  return v14(v0 + 14, v12, v11);
}

uint64_t sub_24AC7D428()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_24AC7D548, v3, v2);
}

uint64_t sub_24AC7D548()
{
  *(v0 + 113) = *(v0 + 112);
  sub_24ACD0B10();
  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t CentralManagerProtocol.description.getter(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E120, &qword_24ACD4550);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  if ((*(a2 + 64))(a1, a2))
  {
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_24ACD0A20();

    v21 = 60;
    v22 = 0xE100000000000000;
    v20 = v2;
    v9 = *(a2 + 16);
    v10 = sub_24ACD0C00();
    MEMORY[0x24C22CD50](v10);

    MEMORY[0x24C22CD50](8250, 0xE200000000000000);
    v11 = MEMORY[0x24C22D370](a1, v9);
    MEMORY[0x24C22CD50](v11);

    v12 = 0x800000024ACDA2D0;
    v13 = 0xD00000000000001DLL;
  }

  else
  {
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_24ACD0A20();

    v21 = 60;
    v22 = 0xE100000000000000;
    v20 = v2;
    v14 = *(a2 + 16);
    v15 = sub_24ACD0C00();
    MEMORY[0x24C22CD50](v15);

    MEMORY[0x24C22CD50](8250, 0xE200000000000000);
    v16 = MEMORY[0x24C22D370](a1, v14);
    MEMORY[0x24C22CD50](v16);

    v13 = 0x69746E656469202CLL;
    v12 = 0xEF203D2072656966;
  }

  MEMORY[0x24C22CD50](v13, v12);
  (*(a2 + 56))(a1, a2);
  sub_24AC7DB5C();
  v17 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v17);

  (*(v6 + 8))(v8, v5);
  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return v21;
}

uint64_t sub_24AC7D8A4(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC20274;

  return sub_24AC7989C(v2);
}

uint64_t sub_24AC7D954(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC214AC;

  return sub_24AC7B474(a1);
}

uint64_t sub_24AC7DA00(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC214AC;

  return sub_24AC7A21C(v2);
}

uint64_t sub_24AC7DAB0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC214AC;

  return sub_24AC7BD34(a1);
}

unint64_t sub_24AC7DB5C()
{
  result = qword_2814AE258;
  if (!qword_2814AE258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF9E120, &qword_24ACD4550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814AE258);
  }

  return result;
}

uint64_t dispatch thunk of static CentralManagerProtocol.pairingCentralManager.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 48) + **(a2 + 48));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AC2A800;

  return v7(a1, a2);
}

uint64_t dispatch thunk of CentralManagerProtocol.state.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 72) + **(a3 + 72));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AC214AC;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CentralManagerProtocol.init(options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 80) + **(a3 + 80));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AC1DF38;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CentralManagerProtocol.stateStream()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 88) + **(a3 + 88));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AC20274;

  return v9(a1, a2, a3);
}