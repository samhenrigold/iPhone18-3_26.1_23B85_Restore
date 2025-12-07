id sub_27442FF24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27442E628();
  *a1 = result;
  return result;
}

uint64_t sub_27442FF94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274431488();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_27442FFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274431488();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_27443005C(uint64_t a1)
{
  sub_274431488();
  sub_274639D9C();
  __break(1u);
}

unint64_t sub_274430088()
{
  result = qword_28094A470;
  if (!qword_28094A470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094A470);
  }

  return result;
}

uint64_t sub_2744300DC(uint64_t a1)
{
  sub_2744342DC();
  if (*(&v5 + 1))
  {
    v7[0] = v4;
    v7[1] = v5;
    v8 = v6;
  }

  else
  {
    sub_27440CB1C(&v4, &qword_28094A4B0, &unk_27465FF40);
    v2 = *(v1 + 56);
    *&v4 = *(v1 + 48);
    *(&v4 + 1) = v2;

    sub_27463C31C();
  }

  sub_27463C30C();
  return sub_274430664(v7);
}

uint64_t sub_274430194()
{
  sub_27442E410(v3);
  sub_27442E410(v2);
  v0 = MEMORY[0x277C58A40](v3, v2);
  sub_274430664(v2);
  sub_274430664(v3);
  return v0 & 1;
}

uint64_t sub_2744301F8()
{
  sub_27463C74C();
  sub_2744300DC(v1);
  return sub_27463C7AC();
}

uint64_t sub_274430240(uint64_t a1)
{
  sub_27463C74C();
  sub_2744300DC(v2);
  return sub_27463C7AC();
}

unint64_t sub_274430294()
{
  result = qword_28094A478;
  if (!qword_28094A478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094A478);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_27443034C(uint64_t a1)
{
  v3 = v2;
  v23 = v1[4];
  v21 = v1[6];
  v22 = v1[5];
  v4 = v1[8];
  v20 = v1[7];
  v19 = v1[9];
  v5 = v1[10];
  v6 = v1[11];
  v8 = v1[12];
  v7 = v1[13];
  v9 = v1[14];
  v3[2] = v23;
  v3[3] = v22;
  v3[4] = v21;
  v3[5] = v20;
  v3[6] = v4;
  v3[7] = v19;
  v3[8] = v5;
  v3[9] = v6;
  v3[10] = v8;
  v3[11] = v7;
  v3[12] = v9;
  v10 = type metadata accessor for ListParameterListContentView(0, (v3 + 2));
  OUTLINED_FUNCTION_19_0(v10);
  v12 = (*(v11 + 80) + 120) & ~*(v11 + 80);
  v14 = v1[3];
  v18 = v1[2];
  v15 = *(v1 + ((*(v13 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  v3[13] = v16;
  *v16 = v3;
  v16[1] = sub_2744304E8;

  return sub_274420E1C(a1, v18, v14, v1 + v12, v15, v23, v22, v21);
}

uint64_t sub_2744304E8()
{
  OUTLINED_FUNCTION_79();
  v1 = *v0;
  OUTLINED_FUNCTION_70();
  *v2 = v1;

  OUTLINED_FUNCTION_92();

  return v3();
}

unint64_t sub_274430610()
{
  result = qword_28094A4A8;
  if (!qword_28094A4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094A4A8);
  }

  return result;
}

uint64_t sub_2744306B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_27443071C()
{
  result = qword_28094A4D0;
  if (!qword_28094A4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094A4D0);
  }

  return result;
}

uint64_t sub_274430770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_27463AF4C();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_274430844(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A4E8, &qword_274649268);
  v34 = v4;
  result = sub_27463C5FC();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v33 = v5;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_274525134(0, (v32 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + 8 * v18);
    if ((v34 & 1) == 0)
    {
    }

    sub_27463C74C();
    sub_27463B71C();
    result = sub_27463C7AC();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    *(*(v7 + 56) + 8 * v26) = v22;
    ++*(v7 + 16);
    v5 = v33;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

void sub_274430AE8(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  v7 = a2;
  OUTLINED_FUNCTION_18_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_28094A560, &unk_2746493E0);
  OUTLINED_FUNCTION_29_0();
  sub_27463C5FC();
  OUTLINED_FUNCTION_89();
  if (!v8)
  {

LABEL_30:
    *v6 = v4;
    return;
  }

  v40 = v2;
  v9 = 0;
  OUTLINED_FUNCTION_3_1();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  v15 = v4 + 64;
  if ((v11 & v10) == 0)
  {
LABEL_4:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      ++v17;
      if (*(v5 + 8 * v9))
      {
        OUTLINED_FUNCTION_28_0();
        v12 = v19 & v18;
        goto LABEL_9;
      }
    }

    if (v7)
    {
      OUTLINED_FUNCTION_13_0();
      if (v36 != v37)
      {
        OUTLINED_FUNCTION_55_0(v35);
      }

      else
      {
        v38 = OUTLINED_FUNCTION_27_0();
        sub_274525134(v38, v39, v5);
      }

      v3[2] = 0;
    }

    v6 = v40;
    goto LABEL_30;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_9:
    v20 = v16 | (v9 << 6);
    v21 = *(v3[6] + 8 * v20);
    v22 = *(v3[7] + 8 * v20);
    if ((v7 & 1) == 0)
    {
      v23 = v21;
      v24 = v22;
    }

    sub_27463BF6C();
    OUTLINED_FUNCTION_17();
    if (((v27 << v26) & ~*(v15 + 8 * v25)) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_16();
LABEL_21:
    OUTLINED_FUNCTION_24_0();
    *(v15 + v32) |= v33;
    *(*(v4 + 48) + 8 * v34) = v21;
    *(*(v4 + 56) + 8 * v34) = v22;
    OUTLINED_FUNCTION_57_0();
    if (!v12)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_15_0();
  while (1)
  {
    OUTLINED_FUNCTION_81();
    if (v31)
    {
      if (v29)
      {
        break;
      }
    }

    if (v28 == v30)
    {
      v28 = 0;
    }

    if (*(v15 + 8 * v28) != -1)
    {
      OUTLINED_FUNCTION_14_0();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_274430CA8(uint64_t a1, void *a2)
{
  v7 = v2;
  OUTLINED_FUNCTION_18_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954920, &unk_274649270);
  OUTLINED_FUNCTION_29_0();
  sub_27463C5FC();
  OUTLINED_FUNCTION_89();
  if (!v9)
  {
LABEL_27:

LABEL_28:
    *v7 = a2;
    return;
  }

  v10 = 0;
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_73();
  if (!v6)
  {
LABEL_4:
    v12 = v10;
    while (1)
    {
      v10 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v10 >= v5)
      {
        break;
      }

      ++v12;
      if (*(v4 + 8 * v10))
      {
        OUTLINED_FUNCTION_28_0();
        v6 = v14 & v13;
        goto LABEL_9;
      }
    }

    if ((a2 & 1) == 0)
    {

      v7 = v2;
      goto LABEL_28;
    }

    OUTLINED_FUNCTION_13_0();
    v7 = v2;
    if (v25 != v26)
    {
      OUTLINED_FUNCTION_55_0(v24);
    }

    else
    {
      v27 = OUTLINED_FUNCTION_27_0();
      sub_274525134(v27, v28, v4);
    }

    v3[2] = 0;
    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_54_0();
LABEL_9:
    v15 = v11 | (v10 << 6);
    v16 = *(v3[6] + 8 * v15);
    v17 = *(v3[7] + 8 * v15);
    if ((a2 & 1) == 0)
    {

      v18 = v17;
    }

    sub_27463C74C();
    (*(*v16 + 200))(v29);
    sub_27463C7AC();
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_72();
    if (v19)
    {
      break;
    }

    OUTLINED_FUNCTION_16();
LABEL_19:
    OUTLINED_FUNCTION_24_0();
    *(a2 + v21 + 64) |= v22;
    *(a2[6] + 8 * v23) = v16;
    *(a2[7] + 8 * v23) = v17;
    OUTLINED_FUNCTION_57_0();
    if (!v6)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_15_0();
  while (1)
  {
    OUTLINED_FUNCTION_81();
    if (v19)
    {
      if (v20)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_74();
    if (!v19)
    {
      OUTLINED_FUNCTION_14_0();
      goto LABEL_19;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_274430E90(uint64_t a1, void *a2)
{
  v5 = v2;
  OUTLINED_FUNCTION_18_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A500, &unk_274660070);
  OUTLINED_FUNCTION_29_0();
  sub_27463C5FC();
  OUTLINED_FUNCTION_89();
  if (!v7)
  {
LABEL_29:

LABEL_30:
    *v5 = a2;
    return;
  }

  v8 = 0;
  OUTLINED_FUNCTION_3_1();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v14 = a2 + 8;
  if ((v10 & v9) == 0)
  {
LABEL_4:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v8 >= v13)
      {
        break;
      }

      ++v16;
      if (*(v4 + 8 * v8))
      {
        OUTLINED_FUNCTION_28_0();
        v11 = v18 & v17;
        goto LABEL_9;
      }
    }

    if ((a2 & 1) == 0)
    {

      v5 = v2;
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_13_0();
    v5 = v2;
    if (v33 != v34)
    {
      OUTLINED_FUNCTION_55_0(v32);
    }

    else
    {
      v35 = OUTLINED_FUNCTION_27_0();
      sub_274525134(v35, v36, v4);
    }

    v3[2] = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_9:
    v19 = v15 | (v8 << 6);
    v20 = *(v3[6] + 8 * v19);
    v21 = *(v3[7] + 8 * v19);
    if ((a2 & 1) == 0)
    {
    }

    sub_27463C74C();
    (*(*v20 + 200))(v37);
    sub_27463C7AC();
    OUTLINED_FUNCTION_17();
    if (((v24 << v23) & ~v14[v22]) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_16();
LABEL_21:
    OUTLINED_FUNCTION_24_0();
    *(v14 + v29) |= v30;
    *(a2[6] + 8 * v31) = v20;
    *(a2[7] + 8 * v31) = v21;
    OUTLINED_FUNCTION_57_0();
    if (!v11)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_15_0();
  while (1)
  {
    OUTLINED_FUNCTION_81();
    if (v28)
    {
      if (v26)
      {
        break;
      }
    }

    if (v25 == v27)
    {
      v25 = 0;
    }

    if (v14[v25] != -1)
    {
      OUTLINED_FUNCTION_14_0();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_2744310A0(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  v7 = a2;
  OUTLINED_FUNCTION_18_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A508, &qword_274649280);
  OUTLINED_FUNCTION_29_0();
  v8 = sub_27463C5FC();
  if (!v3[2])
  {
LABEL_27:

    *v6 = v8;
    return;
  }

  v9 = 0;
  v10 = v3 + 8;
  OUTLINED_FUNCTION_73();
  if (!v5)
  {
LABEL_4:
    v12 = v9;
    while (1)
    {
      v9 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v9 >= v4)
      {
        break;
      }

      ++v12;
      if (v10[v9])
      {
        OUTLINED_FUNCTION_28_0();
        v5 = v14 & v13;
        goto LABEL_9;
      }
    }

    if (v7)
    {
      OUTLINED_FUNCTION_13_0();
      if (v24 != v25)
      {
        *v10 = -1 << v23;
      }

      else
      {
        v26 = OUTLINED_FUNCTION_27_0();
        sub_274525134(v26, v27, (v3 + 8));
      }

      v3[2] = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_54_0();
LABEL_9:
    v15 = v11 | (v9 << 6);
    v16 = *(v3[6] + 8 * v15);
    v17 = *(v3[7] + 8 * v15);
    if ((v7 & 1) == 0)
    {
    }

    sub_27463C73C();
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_72();
    if (v18)
    {
      break;
    }

    OUTLINED_FUNCTION_16();
LABEL_19:
    OUTLINED_FUNCTION_24_0();
    *(v8 + v20 + 64) |= v21;
    *(v8[6] + 8 * v22) = v16;
    *(v8[7] + 8 * v22) = v17;
    ++v8[2];
    if (!v5)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_15_0();
  while (1)
  {
    OUTLINED_FUNCTION_81();
    if (v18)
    {
      if (v19)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_74();
    if (!v18)
    {
      OUTLINED_FUNCTION_14_0();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_274431278(uint64_t a1, uint64_t a2)
{
  v8 = v2;
  v9 = a2;
  OUTLINED_FUNCTION_18_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_28094AAA8, &unk_2746498C0);
  OUTLINED_FUNCTION_29_0();
  sub_27463C5FC();
  OUTLINED_FUNCTION_89();
  if (!v10)
  {
LABEL_28:

LABEL_29:
    *v8 = v4;
    return;
  }

  v33 = v2;
  v11 = 0;
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_73();
  if (!v7)
  {
LABEL_4:
    v14 = v11;
    while (1)
    {
      v11 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v6)
      {
        break;
      }

      ++v14;
      if (*(v5 + 8 * v11))
      {
        OUTLINED_FUNCTION_28_0();
        v7 = v16 & v15;
        goto LABEL_9;
      }
    }

    if ((v9 & 1) == 0)
    {

      v8 = v33;
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_13_0();
    v8 = v33;
    if (v29 != v30)
    {
      OUTLINED_FUNCTION_55_0(v28);
    }

    else
    {
      v31 = OUTLINED_FUNCTION_27_0();
      sub_274525134(v31, v32, v5);
    }

    v3[2] = 0;
    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_54_0();
LABEL_9:
    v17 = v12 | (v11 << 6);
    v18 = (v3[6] + v17 * v13);
    if (v9)
    {
      v19 = *v18;
      v20 = v18[2];
      v35 = v18[1];
      v36 = v20;
      v34 = v19;
      v21 = *(v3[7] + 8 * v17);
    }

    else
    {
      sub_274434ED4(v18, &v34);
      v21 = *(v3[7] + 8 * v17);
    }

    sub_27463C74C();
    sub_27463C30C();
    MEMORY[0x277C58EA0](*(&v36 + 1));
    sub_27463C7AC();
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_72();
    if (v22)
    {
      break;
    }

    OUTLINED_FUNCTION_16();
LABEL_20:
    *(v4 + 64 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v25 = (*(v4 + 48) + 48 * v23);
    v26 = v34;
    v27 = v36;
    v25[1] = v35;
    v25[2] = v27;
    *v25 = v26;
    *(*(v4 + 56) + 8 * v23) = v21;
    OUTLINED_FUNCTION_57_0();
    if (!v7)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_15_0();
  while (1)
  {
    OUTLINED_FUNCTION_81();
    if (v22)
    {
      if (v24)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_74();
    if (!v22)
    {
      OUTLINED_FUNCTION_14_0();
      goto LABEL_20;
    }
  }

LABEL_31:
  __break(1u);
}

unint64_t sub_274431488()
{
  result = qword_28094A4F0;
  if (!qword_28094A4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094A4F0);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_274431528()
{
  result = qword_28094A520;
  if (!qword_28094A520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A518, &qword_274649290);
    sub_2744315E0();
    sub_274434E04(&unk_28094A548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094A520);
  }

  return result;
}

unint64_t sub_2744315E0()
{
  result = qword_28094A528;
  if (!qword_28094A528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A530, &qword_274649298);
    sub_274434E04(&unk_28094A538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094A528);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

void sub_274431700(uint64_t a1)
{
  v2 = *(a1 + 24);
  swift_getWitnessTable();
  v3 = sub_27463953C();
  if (v4 <= 0x3F)
  {
    v28 = 0;
    v36 = v3;
    v5 = sub_274431930();
    if (v6 <= 0x3F)
    {
      v37 = v5;
      v38 = v5;
      v39 = v5;
      v40 = v5;
      v41 = MEMORY[0x277D839B0];
      v42 = MEMORY[0x277D839B0];
      v29 = 0;
      v43 = MEMORY[0x277D839B0];
      v44 = MEMORY[0x277D839B0];
      v7 = *(a1 + 96);
      v22[0] = *(a1 + 16);
      v22[1] = v2;
      v8 = *(a1 + 48);
      v23 = *(a1 + 32);
      v24 = v8;
      v9 = *(a1 + 80);
      v25 = *(a1 + 64);
      v26 = v9;
      v27 = v7;
      type metadata accessor for ListParameterListContentView.Model(255, v22);
      swift_getWitnessTable();
      v10 = sub_27463922C();
      if (v11 <= 0x3F)
      {
        v30 = 0;
        v45 = v10;
        sub_274431978(319, &qword_28094A5F0, &unk_2809507C0, &qword_274649C60);
        if (v13 <= 0x3F)
        {
          v31 = 0;
          v46 = v12;
          sub_2744335D4(319, &unk_28094A600, &type metadata for EditorPresentationEnvironment);
          if (v15 <= 0x3F)
          {
            v32 = 0;
            v47 = v14;
            sub_274431978(319, &qword_28094BC00, &qword_28094A610, &qword_2746493F0);
            if (v17 <= 0x3F)
            {
              v33 = 0;
              v48 = v16;
              sub_274431978(319, &qword_28094A618, &qword_28094A620, qword_2746493F8);
              if (v19 <= 0x3F)
              {
                v34 = 0;
                v49 = v18;
                sub_2744319CC(319);
                if (v21 <= 0x3F)
                {
                  v35 = 0;
                  v50 = v20;
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_274431930()
{
  result = qword_280953290;
  if (!qword_280953290)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280953290);
  }

  return result;
}

void sub_274431978(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_27463919C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2744319CC(uint64_t a1)
{
  if (!qword_28094A628[0])
  {
    sub_274430610();
    v1 = sub_2746392BC();
    if (!v2)
    {
      atomic_store(v1, qword_28094A628);
    }
  }
}

uint64_t sub_274431A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_274431A6C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 177))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_274431AAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 177) = 1;
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

    *(result + 177) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_274431BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = *(v3 + 24);
  v19 = *(v3 + 16);
  OUTLINED_FUNCTION_80();
  v22[0] = v12;
  v22[1] = v13;
  v23 = v7;
  v24 = v8;
  v25 = v9;
  v26 = v10;
  v27 = v11;
  v28 = v2;
  v29 = v4;
  v30 = v5;
  v31 = v6;
  v14 = type metadata accessor for ListParameterListContentView(0, v22);
  OUTLINED_FUNCTION_53_0(v14);
  OUTLINED_FUNCTION_87();
  *&v17 = v2;
  *(&v17 + 1) = v4;
  return sub_274418F5C(a1, v3 + v15, v19, v18, v7, v8, v9, v10, a2, v11, v17, v5, v6);
}

uint64_t sub_274431D38()
{
  v14 = v0[3];
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[9];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[12];
  v16[0] = v0[2];
  v15 = v16[0];
  v16[1] = v14;
  v16[2] = v1;
  v16[3] = v2;
  v16[4] = v3;
  v16[5] = v4;
  v16[6] = v5;
  v16[7] = v6;
  v16[8] = v8;
  v16[9] = v7;
  v16[10] = v9;
  v10 = type metadata accessor for ListParameterListContentView(0, v16);
  OUTLINED_FUNCTION_53_0(v10);
  OUTLINED_FUNCTION_87();
  *&v13 = v6;
  *(&v13 + 1) = v8;
  return sub_27441EDC8(v0 + v11, v15, v14, v1, v2, v3, v4, v5, v13, v7, v9);
}

unint64_t sub_274431E0C()
{
  result = qword_28094A728;
  if (!qword_28094A728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094A728);
  }

  return result;
}

uint64_t sub_274431FDC()
{
  v19 = v0[4];
  v20 = v0[3];
  v2 = v0[7];
  v17 = v0[6];
  v18 = v0[5];
  v3 = v0[8];
  v4 = v0[9];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[12];
  v21[0] = v0[2];
  v1 = v21[0];
  v21[1] = v20;
  v21[2] = v19;
  v21[3] = v18;
  v21[4] = v17;
  v21[5] = v2;
  v21[6] = v3;
  v21[7] = v4;
  v21[8] = v6;
  v21[9] = v5;
  v21[10] = v7;
  v8 = type metadata accessor for ListParameterListContentView(0, v21);
  OUTLINED_FUNCTION_19_0(v8);
  OUTLINED_FUNCTION_64();
  v9 = sub_27463AF4C();
  OUTLINED_FUNCTION_19_0(v9);
  v10 = OUTLINED_FUNCTION_59_0();
  *&v14 = v4;
  *(&v14 + 1) = v6;
  return sub_2744205C4(v10, v11, v12, v1, v20, v19, v18, v17, v2, v3, v14, v15, v16);
}

uint64_t objectdestroy_82Tm()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 32);
  v14[0] = *(v0 + 16);
  v14[1] = v2;
  v3 = *(v0 + 64);
  v14[2] = *(v0 + 48);
  v14[3] = v3;
  v14[4] = *(v0 + 80);
  v15 = v1;
  v4 = type metadata accessor for ListParameterListContentView(0, v14);
  OUTLINED_FUNCTION_11_0();
  v6 = v0 + ((*(v5 + 80) + 104) & ~*(v5 + 80));

  sub_2743F459C(*(v6 + 88), *(v6 + 96));
  if (*(v6 + 152))
  {
    if (*(v6 + 136))
    {
      __swift_destroy_boxed_opaque_existential_1((v6 + 112));
    }
  }

  else
  {
  }

  sub_2743F45E8(*(v6 + 160), *(v6 + 168));
  v7 = v4[38];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60, &qword_2746515D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_274639FEC();
    if (!OUTLINED_FUNCTION_86(v6 + v7))
    {
      OUTLINED_FUNCTION_23_0();
      (*(v9 + 8))(v6 + v7, v8);
    }
  }

  else
  {
  }

  v10 = OUTLINED_FUNCTION_68(v6 + v4[39]);
  j__swift_release(v10);
  v11 = v4[40];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A490, &qword_274649180);
  OUTLINED_FUNCTION_7();
  (*(v12 + 8))(v6 + v11);
  OUTLINED_FUNCTION_90();
  return swift_deallocObject();
}

uint64_t sub_274432374(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v16 = *(v2 + 24);
  v17 = *(v2 + 16);
  OUTLINED_FUNCTION_80();
  v19[0] = v11;
  v19[1] = v12;
  v20 = v6;
  v21 = v7;
  v22 = v8;
  v23 = v9;
  v24 = v10;
  v25 = v1;
  v26 = v3;
  v27 = v4;
  v28 = v5;
  v13 = type metadata accessor for ListParameterListContentView(0, v19);
  OUTLINED_FUNCTION_53_0(v13);
  OUTLINED_FUNCTION_87();
  return a1(v2 + v14, v17, v16, v6, v7, v8, v9, v10, v1, v3, v4, v5);
}

uint64_t objectdestroy_97Tm()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 32);
  v21[0] = *(v0 + 16);
  v19 = *&v21[0];
  v21[1] = v2;
  v3 = *(v0 + 64);
  v21[2] = *(v0 + 48);
  v21[3] = v3;
  v21[4] = *(v0 + 80);
  v22 = v1;
  v4 = type metadata accessor for ListParameterListContentView(0, v21);
  OUTLINED_FUNCTION_11_0();
  v6 = (*(v5 + 80) + 104) & ~*(v5 + 80);
  v20 = *(v7 + 64);
  OUTLINED_FUNCTION_64();
  v8 = sub_27463AF4C();
  OUTLINED_FUNCTION_1();
  v10 = *(v9 + 80);
  v11 = v0 + v6;

  sub_2743F459C(*(v11 + 88), *(v11 + 96));
  if (*(v0 + v6 + 152))
  {
    if (*(v11 + 136))
    {
      __swift_destroy_boxed_opaque_existential_1((v11 + 112));
    }
  }

  else
  {
  }

  sub_2743F45E8(*(v11 + 160), *(v11 + 168));
  v12 = v4[38];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60, &qword_2746515D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_274639FEC();
    if (!__swift_getEnumTagSinglePayload(v11 + v12, 1, v13))
    {
      OUTLINED_FUNCTION_25_0();
      (*(v14 + 8))(v11 + v12, v13);
    }
  }

  else
  {
  }

  v15 = OUTLINED_FUNCTION_68(v11 + v4[39]);
  j__swift_release(v15);
  v16 = v4[40];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A490, &qword_274649180);
  OUTLINED_FUNCTION_7();
  (*(v17 + 8))(v11 + v16);

  (*(*(v19 - 8) + 8))(v0 + ((v6 + v20 + v10) & ~v10) + *(v8 + 32), v19);
  return swift_deallocObject();
}

uint64_t sub_2744329A0(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  sub_27463C0AC();
  result = sub_27463AF4C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_274432A3C(unsigned __int16 *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v5 + 80);
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v6)
  {
    ++v10;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_28;
  }

  v11 = v10 + ((v9 + 16) & ~v9);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((a2 - v8 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_28:
      v17 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v7 & 0x80000000) != 0)
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v17 + v9 + 8) & ~v9, v6, AssociatedTypeWitness);
        if (EnumTagSinglePayload >= 2)
        {
          return EnumTagSinglePayload - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v18 = *v17;
        if (v18 >= 0xFFFFFFFF)
        {
          LODWORD(v18) = -1;
        }

        return (v18 + 1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_28;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    switch(v11)
    {
      case 2:
        LODWORD(v11) = *a1;
        break;
      case 3:
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v11) = *a1;
        break;
      default:
        LODWORD(v11) = *a1;
        break;
    }
  }

  return v8 + (v11 | v16) + 1;
}

void sub_274432C20(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = 0;
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v8 + 80);
  v13 = (v12 + 16) & ~v12;
  if (v9)
  {
    v14 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v14 = *(*(AssociatedTypeWitness - 8) + 64) + 1;
  }

  v15 = v13 + v14;
  v16 = 8 * (v13 + v14);
  if (a3 > v11)
  {
    if (v15 <= 3)
    {
      v17 = ((a3 - v11 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v17))
      {
        v7 = 4;
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
          v7 = v18;
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
  }

  if (v11 >= a2)
  {
    v21 = ~v12;
    switch(v7)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_62:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          v23 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
          if ((v10 & 0x80000000) != 0)
          {
            v25 = ((v23 + v12 + 8) & v21);
            if (v10 >= a2)
            {

              __swift_storeEnumTagSinglePayload((v23 + v12 + 8) & v21, a2 + 1, v9, AssociatedTypeWitness);
            }

            else
            {
              if (v14 <= 3)
              {
                v26 = ~(-1 << (8 * v14));
              }

              else
              {
                v26 = -1;
              }

              if (v14)
              {
                v27 = v26 & (~v10 + a2);
                if (v14 <= 3)
                {
                  v28 = v14;
                }

                else
                {
                  v28 = 4;
                }

                bzero(v25, v14);
                switch(v28)
                {
                  case 2:
                    *v25 = v27;
                    break;
                  case 3:
                    *v25 = v27;
                    v25[2] = BYTE2(v27);
                    break;
                  case 4:
                    *v25 = v27;
                    break;
                  default:
                    *v25 = v27;
                    break;
                }
              }
            }
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v24 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v24 = a2 - 1;
            }

            *v23 = v24;
          }
        }

        break;
    }
  }

  else
  {
    v19 = ~v11 + a2;
    if (v15 < 4)
    {
      v20 = (v19 >> v16) + 1;
      if (v15)
      {
        v22 = v19 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *a1 = v22;
          a1[2] = BYTE2(v22);
        }

        else if (v15 == 2)
        {
          *a1 = v22;
        }

        else
        {
          *a1 = v19;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v19;
      v20 = 1;
    }

    switch(v7)
    {
      case 1:
        a1[v15] = v20;
        break;
      case 2:
        *&a1[v15] = v20;
        break;
      case 3:
        goto LABEL_62;
      case 4:
        *&a1[v15] = v20;
        break;
      default:
        return;
    }
  }
}

void sub_274432F3C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    sub_27463C0AC();
    sub_27463AF4C();
    if (v2 <= 0x3F)
    {
      sub_274431930();
      if (v3 <= 0x3F)
      {
        sub_27443357C(319);
        if (v4 <= 0x3F)
        {
          sub_2744335D4(319, &qword_28094A888, MEMORY[0x277D85048]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_274433080(int *a1, unsigned int a2)
{
  result = swift_getAssociatedTypeWitness();
  v5 = *(result - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v5 + 80);
  if (v6)
  {
    v10 = *(*(result - 8) + 64);
  }

  else
  {
    v10 = *(*(result - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = v9 | 7;
  if (v8 >= a2)
  {
LABEL_31:
    v20 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v7 & 0x80000000) != 0)
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v9 + ((((((v20 + 17) & 0xFFFFFFFFFFFFFFF8) + v11 + 9) & ~v11) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v9, v6, result);
      if (EnumTagSinglePayload >= 2)
      {
        return EnumTagSinglePayload - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v21 = *v20;
      if (*v20 >= 0xFFFFFFFF)
      {
        LODWORD(v21) = -1;
      }

      return (v21 + 1);
    }
  }

  else
  {
    v12 = ((((((v10 + ((v9 + 16) & ~v9) + ((v10 + ((v9 + 16) & ~v9) + v11 + ((v11 + 33) & ~v11)) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 8;
    v13 = v12 & 0xFFFFFFF8;
    if ((v12 & 0xFFFFFFF8) != 0)
    {
      v14 = 2;
    }

    else
    {
      v14 = a2 - v8 + 1;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    switch(v16)
    {
      case 1:
        v17 = *(a1 + v12);
        if (!v17)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      case 2:
        v17 = *(a1 + v12);
        if (!v17)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      case 3:
        __break(1u);
        return result;
      case 4:
        v17 = *(a1 + v12);
        if (!v17)
        {
          goto LABEL_31;
        }

LABEL_28:
        v18 = v17 - 1;
        if (v13)
        {
          v18 = 0;
          v19 = *a1;
        }

        else
        {
          v19 = 0;
        }

        result = v8 + (v19 | v18) + 1;
        break;
      default:
        goto LABEL_31;
    }
  }

  return result;
}

void sub_274433284(_DWORD *a1, unsigned int a2, unsigned int a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = 0;
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v8 + 80);
  v13 = v12 | 7;
  if (v9)
  {
    v14 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v14 = *(*(AssociatedTypeWitness - 8) + 64) + 1;
  }

  v15 = ((((((((v12 + 16) & ~v12) + v14 + ((((v12 + 16) & ~v12) + v14 + v13 + (((v12 | 7) + 33) & ~(v12 | 7))) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v11 < a3)
  {
    if (((((((((v12 + 16) & ~v12) + v14 + ((((v12 + 16) & ~v12) + v14 + v13 + (((v12 | 7) + 33) & ~(v12 | 7))) & ~v13) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a3 - v11 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v7 = v17;
    }

    else
    {
      v7 = 0;
    }
  }

  if (a2 <= v11)
  {
    v20 = ~v12;
    switch(v7)
    {
      case 1:
        *(a1 + v15) = 0;
        if (a2)
        {
          goto LABEL_36;
        }

        break;
      case 2:
        *(a1 + v15) = 0;
        if (a2)
        {
          goto LABEL_36;
        }

        break;
      case 3:
LABEL_60:
        __break(1u);
        break;
      case 4:
        *(a1 + v15) = 0;
        goto LABEL_35;
      default:
LABEL_35:
        if (a2)
        {
LABEL_36:
          v21 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
          if ((v10 & 0x80000000) != 0)
          {
            v23 = ((v12 + ((((((v21 + 17) & 0xFFFFFFFFFFFFFFF8) + v13 + 9) & ~v13) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & v20);
            if (v10 >= a2)
            {

              __swift_storeEnumTagSinglePayload((v12 + ((((((v21 + 17) & 0xFFFFFFFFFFFFFFF8) + v13 + 9) & ~v13) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & v20, a2 + 1, v9, AssociatedTypeWitness);
            }

            else
            {
              if (v14 <= 3)
              {
                v24 = ~(-1 << (8 * v14));
              }

              else
              {
                v24 = -1;
              }

              if (v14)
              {
                v25 = v24 & (~v10 + a2);
                if (v14 <= 3)
                {
                  v26 = v14;
                }

                else
                {
                  v26 = 4;
                }

                bzero(v23, v14);
                switch(v26)
                {
                  case 2:
                    *v23 = v25;
                    break;
                  case 3:
                    *v23 = v25;
                    v23[2] = BYTE2(v25);
                    break;
                  case 4:
                    *v23 = v25;
                    break;
                  default:
                    *v23 = v25;
                    break;
                }
              }
            }
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

        break;
    }
  }

  else
  {
    if (((((((((v12 + 16) & ~v12) + v14 + ((((v12 + 16) & ~v12) + v14 + v13 + (((v12 | 7) + 33) & ~(v12 | 7))) & ~v13) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v18 = a2 - v11;
    }

    else
    {
      v18 = 1;
    }

    if (((((((((v12 + 16) & ~v12) + v14 + ((((v12 + 16) & ~v12) + v14 + v13 + (((v12 | 7) + 33) & ~(v12 | 7))) & ~v13) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v19 = ~v11 + a2;
      bzero(a1, ((((((((v12 + 16) & ~v12) + v14 + ((((v12 + 16) & ~v12) + v14 + v13 + (((v12 | 7) + 33) & ~(v12 | 7))) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v19;
    }

    switch(v7)
    {
      case 1:
        *(a1 + v15) = v18;
        break;
      case 2:
        *(a1 + v15) = v18;
        break;
      case 3:
        goto LABEL_60;
      case 4:
        *(a1 + v15) = v18;
        break;
      default:
        return;
    }
  }
}

void sub_27443357C(uint64_t a1)
{
  if (!qword_28094A880)
  {
    type metadata accessor for CGRect(255);
    v1 = sub_27463AD1C();
    if (!v2)
    {
      atomic_store(v1, &qword_28094A880);
    }
  }
}

void sub_2744335D4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_27463919C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2744336B0()
{
  result = qword_28094A890;
  if (!qword_28094A890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094A890);
  }

  return result;
}

unint64_t sub_274433790()
{
  result = qword_28094A8E8;
  if (!qword_28094A8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A8E0, &qword_274649760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094A8E8);
  }

  return result;
}

unint64_t sub_274433850()
{
  result = qword_28094A900;
  if (!qword_28094A900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A908, &qword_274649770);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A910, &qword_274649778);
    sub_2746396BC();
    sub_274434E04(&qword_28094A918);
    sub_274433D44(&qword_280949470);
    swift_getOpaqueTypeConformance2();
    sub_274434E04(&unk_28094E670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094A900);
  }

  return result;
}

unint64_t sub_2744339C8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_93(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_84(0, v4, v5);
    v2();
    OUTLINED_FUNCTION_2_2();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_274433A24()
{
  result = qword_28094A938;
  if (!qword_28094A938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A8D8, &qword_274649758);
    sub_274433AB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094A938);
  }

  return result;
}

unint64_t sub_274433AB0()
{
  result = qword_28094A940;
  if (!qword_28094A940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A8D0, &qword_274649750);
    sub_274433D44(&unk_280951F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094A940);
  }

  return result;
}

uint64_t sub_274433B6C()
{
  OUTLINED_FUNCTION_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_7();
  v3 = OUTLINED_FUNCTION_5_0();
  v4(v3);
  return v0;
}

unint64_t sub_274433BDC()
{
  result = qword_280952130;
  if (!qword_280952130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094A950, &unk_27465B740);
    sub_274434478(&unk_28094A960);
    sub_274434E04(&qword_28094A710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952130);
  }

  return result;
}

unint64_t sub_274433CC0()
{
  result = qword_28094A970;
  if (!qword_28094A970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280952150, &unk_27465B750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094A970);
  }

  return result;
}

unint64_t sub_274433D44(uint64_t a1)
{
  result = OUTLINED_FUNCTION_93(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_274433DB4(uint64_t a1)
{
  v3 = v2;
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v2[2] = v1[4];
  v2[3] = v4;
  v2[4] = v5;
  v2[5] = v6;
  v2[6] = v7;
  v8 = type metadata accessor for StackListRow(0, (v2 + 2));
  OUTLINED_FUNCTION_53_0(v8);
  v10 = (*(v9 + 80) + 72) & ~*(v9 + 80);
  v11 = v1[2];
  v12 = v1[3];
  v13 = swift_task_alloc();
  v3[7] = v13;
  *v13 = v3;
  v13[1] = sub_274433EE8;

  return sub_27442AA70(a1, v11, v12, v1 + v10);
}

uint64_t sub_274433EE8()
{
  OUTLINED_FUNCTION_79();
  v1 = *v0;
  OUTLINED_FUNCTION_70();
  *v2 = v1;

  OUTLINED_FUNCTION_92();

  return v3();
}

uint64_t objectdestroy_139Tm()
{
  v4 = *(v0 + 32);
  v25 = *(v0 + 16);
  v26 = v4;
  v27 = *(v0 + 40);
  v24 = v27;
  v5 = type metadata accessor for StackListRow(0, &v25);
  OUTLINED_FUNCTION_11_0();
  v7 = v0 + ((*(v6 + 80) + 56) & ~*(v6 + 80));

  OUTLINED_FUNCTION_98();

  OUTLINED_FUNCTION_76(v8, v9, v10, v11, v12, v13, v14, v15, v24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_52_0();
  sub_27463C0AC();
  OUTLINED_FUNCTION_35_0();
  v17 = sub_27463AF4C();
  if (!OUTLINED_FUNCTION_83(v17))
  {
    OUTLINED_FUNCTION_23_0();
    (*(v18 + 8))(v2 + v3, AssociatedTypeWitness);
  }

  OUTLINED_FUNCTION_98();

  v19 = *(v1 + 32);
  if (!OUTLINED_FUNCTION_86(v2 + v19))
  {
    OUTLINED_FUNCTION_23_0();
    (*(v20 + 8))(v2 + v19, AssociatedTypeWitness);
  }

  v21 = OUTLINED_FUNCTION_68(v7 + *(v5 + 96));
  sub_2743F45E8(v21, v22);
  return swift_deallocObject();
}

uint64_t sub_2744341C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_66(a1, a2, a3, a4, a5, a6, a7, a8, v10, v12, v13, v14, v15, v16);
  OUTLINED_FUNCTION_53_0(v8);
  OUTLINED_FUNCTION_65();

  return v11();
}

uint64_t sub_2744342DC()
{
  OUTLINED_FUNCTION_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_7();
  v3 = OUTLINED_FUNCTION_5_0();
  v4(v3);
  return v0;
}

unint64_t sub_274434334()
{
  result = qword_28094A998;
  if (!qword_28094A998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A898, &qword_274649720);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A988, &qword_2746497B0);
    sub_2746396BC();
    sub_274434478(&unk_28094A9A0);
    sub_274433D44(&qword_280949470);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094A998);
  }

  return result;
}

unint64_t sub_274434478(uint64_t a1)
{
  result = OUTLINED_FUNCTION_93(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_84(0, v4, v5);
    v2();
    OUTLINED_FUNCTION_10_0();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2744344DC()
{
  result = qword_28094A9A8;
  if (!qword_28094A9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A9B0, &qword_2746497C0);
    sub_274434E04(&unk_28094A9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094A9A8);
  }

  return result;
}

unint64_t sub_274434594()
{
  result = qword_28094A9C8;
  if (!qword_28094A9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A8A0, &qword_274649728);
    sub_274434478(&unk_28094A9D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094A9C8);
  }

  return result;
}

unint64_t sub_274434644()
{
  result = qword_28094A9E0;
  if (!qword_28094A9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A9E8, &qword_2746497D8);
    sub_2744129AC();
    sub_274434E04(&qword_28094AA10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094A9E0);
  }

  return result;
}

uint64_t objectdestroy_147Tm()
{
  v1 = *(v0 + 32);
  v33 = *(v0 + 16);
  v32 = v33;
  v34 = v1;
  v35 = *(v0 + 40);
  v28 = v35;
  v2 = type metadata accessor for StackListRow(0, &v33);
  OUTLINED_FUNCTION_11_0();
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v29 = *(v5 + 64);
  OUTLINED_FUNCTION_64();
  v31 = sub_27463AF4C();
  OUTLINED_FUNCTION_1();
  v7 = *(v6 + 80);
  v30 = v4;
  v8 = v0 + v4;

  v9 = v0 + v4 + v2[20];

  OUTLINED_FUNCTION_76(v10, v11, v12, v13, v14, v15, v16, v17, v28);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_62_0();
  sub_27463C0AC();
  OUTLINED_FUNCTION_35_0();
  v19 = sub_27463AF4C();
  v20 = *(v19 + 32);
  if (!__swift_getEnumTagSinglePayload(v9 + v20, 1, AssociatedTypeWitness))
  {
    OUTLINED_FUNCTION_25_0();
    (*(v21 + 8))(v9 + v20, AssociatedTypeWitness);
  }

  v22 = v8 + v2[21];

  v23 = *(v19 + 32);
  if (!__swift_getEnumTagSinglePayload(v22 + v23, 1, AssociatedTypeWitness))
  {
    OUTLINED_FUNCTION_25_0();
    (*(v24 + 8))(v22 + v23, AssociatedTypeWitness);
  }

  v25 = OUTLINED_FUNCTION_68(v8 + v2[24]);
  sub_2743F45E8(v25, v26);

  (*(*(v32 - 8) + 8))(v0 + ((v30 + v29 + v7) & ~v7) + *(v31 + 32), v32);
  OUTLINED_FUNCTION_90();
  return swift_deallocObject();
}

uint64_t sub_2744349C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = OUTLINED_FUNCTION_66(a1, a2, a3, a4, a5, a6, a7, a8, v23, v25, v26, v27, v28, v29);
  OUTLINED_FUNCTION_19_0(v14);
  v16 = (*(v15 + 80) + 56) & ~*(v15 + 80);
  v18 = v16 + *(v17 + 64);
  OUTLINED_FUNCTION_64();
  v19 = sub_27463AF4C();
  OUTLINED_FUNCTION_53_0(v19);
  v21 = v9 + ((v18 + *(v20 + 80)) & ~*(v20 + 80));

  return v24(v9 + v16, v21, v8, v10, v11, v12, v13);
}

unint64_t sub_274434AB4()
{
  result = qword_28094AA28;
  if (!qword_28094AA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094AA20, &unk_27465DD30);
    sub_274434B6C();
    sub_274434E04(&unk_28094AA50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094AA28);
  }

  return result;
}

unint64_t sub_274434B6C()
{
  result = qword_28094AA30;
  if (!qword_28094AA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094AA38, &unk_274649820);
    sub_274434E04(&unk_28094AA40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094AA30);
  }

  return result;
}

unint64_t sub_274434C8C()
{
  result = qword_28094AA70;
  if (!qword_28094AA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094AA68, &unk_2746498A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094AA78, &unk_27465B710);
    sub_274434D4C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094AA70);
  }

  return result;
}

unint64_t sub_274434D4C()
{
  result = qword_28094AA80;
  if (!qword_28094AA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094AA78, &unk_27465B710);
    sub_274434E04(&unk_28094DE30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094AA80);
  }

  return result;
}

unint64_t sub_274434E04(uint64_t a1)
{
  result = OUTLINED_FUNCTION_93(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_84(0, v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_274434E3C(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = OUTLINED_FUNCTION_64();
  v6 = type metadata accessor for DismissDeleteConfirmationModifier(v3, v4, v2, v5);
  OUTLINED_FUNCTION_53_0(v6);
  OUTLINED_FUNCTION_65();

  return sub_27442D29C(v7, v8, v9, v10);
}

uint64_t sub_274434F38(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    v3 = swift_checkMetadataState();
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_27463C0AC();
      AssociatedTypeWitness = sub_27463AF4C();
      if (v5 <= 0x3F)
      {
        AssociatedTypeWitness = sub_274412734(319, &unk_28094AB30, off_279ED9270);
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_274435048(int *a1, unsigned int a2)
{
  result = swift_getAssociatedTypeWitness();
  v5 = *(result - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 64);
  if (v6)
  {
    v9 = *(v5 + 64);
  }

  else
  {
    v9 = v8 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = *(v5 + 80);
  v11 = v10 | 7;
  if (v7 >= a2)
  {
LABEL_28:
    if (v6 < 0x7FFFFFFF)
    {
      v20 = ((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if ((v7 & 0x80000000) != 0)
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v10 + ((((v20 + v11 + 8) & ~v11) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v10, v6, result);
        if (EnumTagSinglePayload >= 2)
        {
          return EnumTagSinglePayload - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v21 = *v20;
        if (*v20 >= 0xFFFFFFFF)
        {
          LODWORD(v21) = -1;
        }

        return (v21 + 1);
      }
    }

    else
    {

      return __swift_getEnumTagSinglePayload(a1, v6, result);
    }
  }

  else
  {
    v12 = ((v9 - ((-17 - v10) | v10) - ((-9 - (((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + v11)) | v11) + 5) & 0xFFFFFFFFFFFFFFF8) + 8;
    v13 = v12 & 0xFFFFFFF8;
    if ((v12 & 0xFFFFFFF8) != 0)
    {
      v14 = 2;
    }

    else
    {
      v14 = a2 - v7 + 1;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    switch(v16)
    {
      case 1:
        v17 = *(a1 + v12);
        if (!v17)
        {
          goto LABEL_28;
        }

        goto LABEL_25;
      case 2:
        v17 = *(a1 + v12);
        if (!v17)
        {
          goto LABEL_28;
        }

        goto LABEL_25;
      case 3:
        __break(1u);
        return result;
      case 4:
        v17 = *(a1 + v12);
        if (!v17)
        {
          goto LABEL_28;
        }

LABEL_25:
        v18 = v17 - 1;
        if (v13)
        {
          v18 = 0;
          v19 = *a1;
        }

        else
        {
          v19 = 0;
        }

        result = v7 + (v19 | v18) + 1;
        break;
      default:
        goto LABEL_28;
    }
  }

  return result;
}

void sub_274435268(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  v11 = *(v7 + 80);
  v12 = v11 | 7;
  v13 = v11 + 8;
  if (v8)
  {
    v14 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v14 = v10 + 1;
  }

  v15 = ((5 - (((-17 - v11) | v11) - v14 + ((((-8 - v10) | 7) - v13) | v12))) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v18 = 0;
  }

  else
  {
    if (((5 - (((-17 - v11) | v11) - v14 + ((((-8 - v10) | 7) - v13) | v12))) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a3 - v9 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }
  }

  if (a2 <= v9)
  {
    v21 = ~v11;
    switch(v18)
    {
      case 1:
        *(a1 + v15) = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        return;
      case 2:
        *(a1 + v15) = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        return;
      case 3:
LABEL_49:
        __break(1u);
        return;
      case 4:
        *(a1 + v15) = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (!a2)
        {
          return;
        }

LABEL_35:
        if (v8 >= 0x7FFFFFFF)
        {
          v24 = a1;
          v25 = a2;
        }

        else
        {
          v22 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
          if ((v9 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v23 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v23 = (a2 - 1);
            }

            *v22 = v23;
            return;
          }

          v24 = ((v13 + ((((v22 + v12 + 8) & ~v12) + 15) & 0xFFFFFFFFFFFFFFF8)) & v21);
          v25 = (a2 + 1);
        }

        __swift_storeEnumTagSinglePayload(v24, v25, v8, AssociatedTypeWitness);
        break;
    }
  }

  else
  {
    if (v15)
    {
      v19 = 1;
    }

    else
    {
      v19 = a2 - v9;
    }

    if (v15)
    {
      v20 = ~v9 + a2;
      bzero(a1, v15);
      *a1 = v20;
    }

    switch(v18)
    {
      case 1:
        *(a1 + v15) = v19;
        break;
      case 2:
        *(a1 + v15) = v19;
        break;
      case 3:
        goto LABEL_49;
      case 4:
        *(a1 + v15) = v19;
        break;
      default:
        return;
    }
  }
}

uint64_t OUTLINED_FUNCTION_51_0()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_66(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = v14[3];
  v17 = v14[4];
  v18 = v14[5];
  v19 = v14[6];
  a10 = v14[2];
  a11 = v16;
  a12 = v17;
  a13 = v18;
  a14 = v19;

  return type metadata accessor for StackListRow(0, &a10);
}

uint64_t OUTLINED_FUNCTION_83(uint64_t a1)
{
  v4 = v2 + *(a1 + 32);

  return __swift_getEnumTagSinglePayload(v4, 1, v1);
}

uint64_t OUTLINED_FUNCTION_84(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
}

uint64_t OUTLINED_FUNCTION_86(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_97()
{

  return sub_27463B94C();
}

uint64_t OUTLINED_FUNCTION_98()
{
}

void sub_274435CE8(uint64_t a1)
{
  sub_274435D7C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_274435D7C(uint64_t a1)
{
  if (!qword_280949EF8)
  {
    sub_27463918C();
    v1 = sub_27463919C();
    if (!v2)
    {
      atomic_store(v1, &qword_280949EF8);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_14WorkflowEditor22RectangleGroupBoxStyleV010BackgroundF0O(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_274435DF8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_274435E4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_274435EA8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for RectangleGroupBoxStyle.OutlineStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RectangleGroupBoxStyle.OutlineStyle(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_274436040()
{
  result = qword_28094ABB0;
  if (!qword_28094ABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094ABB0);
  }

  return result;
}

uint64_t sub_274436094@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_274639ABC();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D000, &qword_2746487E0);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  type metadata accessor for RectangleGroupBoxStyle(0);
  sub_274437858();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_27463918C();
    OUTLINED_FUNCTION_0_4();
    return (*(v12 + 32))(a1, v11);
  }

  else
  {
    sub_27463BC0C();
    v14 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v8, v2);
  }
}

uint64_t sub_2744362A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_27463A1AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094ABB8, &qword_274649AB8);
  v6 = OUTLINED_FUNCTION_13_1();
  sub_274436408(v6);
  v7 = sub_27463B0CC();
  v9 = v8;
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094ABC0, &qword_274649AC0) + 36));
  *v10 = v7;
  v10[1] = v9;
  v11 = *v3;
  v12 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094ABC8, &unk_274649AC8) + 36));
  v13 = *(sub_27463970C() + 20);
  v14 = *MEMORY[0x277CE0118];
  sub_274639BFC();
  OUTLINED_FUNCTION_0_4();
  (*(v15 + 104))(&v12[v13], v14);
  *v12 = v11;
  *(v12 + 1) = v11;
  *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A6C8, &unk_274649500) + 36)] = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094ABD0, &qword_274649AD8);
  v16 = OUTLINED_FUNCTION_13_1();
  sub_2744367E4(v16, v17);
  v18 = sub_27463B0CC();
  v20 = v19;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094ABD8, &qword_274649AE0);
  v22 = (v14 + *(result + 36));
  *v22 = v18;
  v22[1] = v20;
  return result;
}

uint64_t sub_274436408(uint64_t a1)
{
  v2 = type metadata accessor for RectangleBackgroundView(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AC78, &qword_274649B58);
  MEMORY[0x28223BE20](v5);
  v7 = (&v14 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AC80, &qword_274649B60);
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AC88, &qword_274649B68);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    if (v12 == 1)
    {
      *v4 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D000, &qword_2746487E0);
      swift_storeEnumTagMultiPayload();
      sub_274437E7C();
      swift_storeEnumTagMultiPayload();
      sub_27443827C(&qword_28094AC98, type metadata accessor for RectangleBackgroundView, &unk_274649BB8);
      sub_274639DDC();
      sub_274437858();
      swift_storeEnumTagMultiPayload();
      sub_274437DC0();
      sub_274639DDC();
      sub_274437ED0(v11);
      return sub_274437F38(v4, type metadata accessor for RectangleBackgroundView);
    }

    else
    {
      *v7 = v12;
      swift_storeEnumTagMultiPayload();
      sub_274437DC0();

      return sub_274639DDC();
    }
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_27443827C(&qword_28094AC98, type metadata accessor for RectangleBackgroundView, &unk_274649BB8);
    sub_274639DDC();
    sub_274437858();
    swift_storeEnumTagMultiPayload();
    sub_274437DC0();
    sub_274639DDC();
    return sub_274437ED0(v11);
  }
}

uint64_t sub_2744367E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094ABE0, &qword_274649AE8);
  MEMORY[0x28223BE20](v4);
  if (*(a1 + 8))
  {
    sub_2744368CC(&v7 - v5);
    sub_2743F6204();
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

void sub_2744368CC(uint64_t a1@<X8>)
{
  v143 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094ABE8, &qword_274649AF0);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v3);
  v135 = &v130[-v4];
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094ABF0, &qword_274649AF8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v5);
  v141 = &v130[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094ABF8, &qword_274649B00);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v8);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AC00, &qword_274649B08);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v130[-v10];
  v12 = sub_27463970C();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_0();
  v137 = (v15 - v14);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AC08, &qword_274649B10);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v16);
  v136 = &v130[-v17];
  v18 = sub_27463918C();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v130[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v24);
  v26 = &v130[-v25];
  v142 = sub_274437364(v1);
  v27 = *(v1 + 8);
  switch(v27)
  {
    case 1:
LABEL_5:
      v134 = v2;
      v29 = *v1;
      v30 = *(v12 + 20);
      v31 = *MEMORY[0x277CE0118];
      sub_274639BFC();
      OUTLINED_FUNCTION_0_4();
      v33 = v137;
      v34 = (*(v32 + 104))(v30 + v137, v31);
      *v33 = v29;
      v33[1] = v29;
      v34.n128_u64[0] = 1.0;
      OUTLINED_FUNCTION_8_1(v34, v35, v36);
      OUTLINED_FUNCTION_3_2();
      v37 = v136;
      sub_274437E7C();
      OUTLINED_FUNCTION_11_1();
      v39 = &v37[v38];
      OUTLINED_FUNCTION_7_1();
      sub_274437E7C();
      *&v39[*(sub_2746396FC() + 20)] = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AC18, &qword_274649B20);
      OUTLINED_FUNCTION_14_1();
      OUTLINED_FUNCTION_5_2(v40);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AC20, &qword_274649B28);
      v42 = OUTLINED_FUNCTION_10_1(v41);
      v44 = v43;
      sub_274437F38(v33, v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AC28, &qword_274649B30);
      OUTLINED_FUNCTION_14_1();
      *v45 = v42;
      v45[1] = v44;
      sub_274437858();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_7_1();
      sub_27440CA78(v46, v47, v48, v49);
      sub_274437690();
      sub_274639DDC();
      sub_274437858();
      swift_storeEnumTagMultiPayload();
      sub_2744375D8();
      v50 = v143;
      sub_274639DDC();
      sub_27440CB1C(v11, &qword_28094AC00, &qword_274649B08);
      OUTLINED_FUNCTION_7_1();
      sub_27440CB1C(v51, v52, v53);
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AC10, &qword_274649B18);
      v55 = v50;
LABEL_11:
      __swift_storeEnumTagSinglePayload(v55, 0, 1, v54);
      OUTLINED_FUNCTION_16_0();
      return;
    case 2:
      v56 = *v1;
      v57 = *(v12 + 20);
      v58 = *MEMORY[0x277CE0118];
      sub_274639BFC();
      OUTLINED_FUNCTION_0_4();
      v60 = v137;
      v61 = (*(v59 + 104))(v57 + v137, v58);
      *v60 = v56;
      v60[1] = v56;
      v61.n128_u64[0] = 2.0;
      OUTLINED_FUNCTION_8_1(v61, v62, v63);
      OUTLINED_FUNCTION_3_2();
      v64 = v136;
      sub_274437E7C();
      OUTLINED_FUNCTION_11_1();
      v66 = &v64[v65];
      OUTLINED_FUNCTION_7_1();
      sub_274437E7C();
      *&v66[*(sub_2746396FC() + 20)] = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AC18, &qword_274649B20);
      OUTLINED_FUNCTION_14_1();
      OUTLINED_FUNCTION_5_2(v67);
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AC20, &qword_274649B28);
      v69 = OUTLINED_FUNCTION_10_1(v68);
      v71 = v70;
      sub_274437F38(v60, v57);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AC28, &qword_274649B30);
      OUTLINED_FUNCTION_14_1();
      *v72 = v69;
      v72[1] = v71;
      sub_274437858();
      swift_storeEnumTagMultiPayload();
      sub_2744375D8();
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_7_1();
      sub_27440CA78(v73, v74, v75, v76);
      v77 = v143;
      sub_274639DDC();
      OUTLINED_FUNCTION_7_1();
      sub_27440CB1C(v78, v79, v80);
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AC10, &qword_274649B18);
      v55 = v77;
      goto LABEL_11;
    case 3:
      sub_274436094(v26);
      (*(v20 + 104))(v23, *MEMORY[0x277CDF3C0], v18);
      LODWORD(v132) = sub_27463917C();
      v133 = v7;
      v28 = *(v20 + 8);
      v28(v23, v18);
      v28(v26, v18);
      if ((v132 & 1) == 0)
      {
        v132 = sub_27463AB7C();
        v86 = sub_27463A32C();
        v136 = v11;
        v131 = v86;
        sub_2746390AC();
        v88 = v87;
        v90 = v89;
        v92 = v91;
        v94 = v93;
        v95 = *v1 + 1.0;
        v134 = v2;
        v96 = *(v12 + 20);
        v97 = *MEMORY[0x277CE0118];
        sub_274639BFC();
        OUTLINED_FUNCTION_0_4();
        v99 = v137;
        v100 = (*(v98 + 104))(v137 + v96, v97);
        *v99 = v95;
        v99[1] = v95;
        v100.n128_u64[0] = 1.0;
        OUTLINED_FUNCTION_8_1(v100, v101, v102);
        v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AC50, &qword_274649B38);
        v104 = v135;
        v105 = &v135[*(v103 + 36)];
        v106 = MEMORY[0x277CDFC08];
        sub_274437E7C();
        v107 = v144 * 0.5;
        v108 = &v105[*(v138 + 68)];
        sub_274437E7C();
        *&v108[*(sub_2746396FC() + 20)] = v107;
        v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AC18, &qword_274649B20);
        OUTLINED_FUNCTION_5_2(&v108[*(v109 + 36)]);
        v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AC20, &qword_274649B28);
        *&v108[*(v110 + 52)] = v142;
        *&v108[*(v110 + 56)] = 256;
        v111 = sub_27463B0CC();
        v113 = v112;
        sub_274437F38(v99, v106);
        v114 = &v108[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AC28, &qword_274649B30) + 36)];
        *v114 = v111;
        v114[1] = v113;
        v115 = sub_27463B0CC();
        v117 = v116;
        v118 = &v105[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AC70, &unk_274649B48) + 36)];
        *v118 = v115;
        v118[1] = v117;
        *v104 = v132;
        *(v104 + 8) = v131;
        *(v104 + 16) = v88;
        *(v104 + 24) = v90;
        *(v104 + 32) = v92;
        *(v104 + 40) = v94;
        *(v104 + 48) = 0;
        LOBYTE(v105) = sub_27463A32C();
        sub_2746390AC();
        v119 = v104 + *(v134 + 36);
        *v119 = v105;
        *(v119 + 8) = v120;
        *(v119 + 16) = v121;
        *(v119 + 24) = v122;
        *(v119 + 32) = v123;
        *(v119 + 40) = 0;
        OUTLINED_FUNCTION_7_1();
        sub_274437858();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_2_3();
        sub_27440CA78(v124, v125, v126, v127);
        sub_274437690();
        v128 = v136;
        sub_274639DDC();
        sub_274437858();
        swift_storeEnumTagMultiPayload();
        sub_2744375D8();
        v129 = v143;
        sub_274639DDC();
        sub_27440CB1C(v128, &qword_28094AC00, &qword_274649B08);
        sub_27440CB1C(v104, &qword_28094ABE8, &qword_274649AF0);
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AC10, &qword_274649B18);
        v55 = v129;
        goto LABEL_11;
      }

      goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AC10, &qword_274649B18);
  OUTLINED_FUNCTION_16_0();

  __swift_storeEnumTagSinglePayload(v81, v82, v83, v84);
}

uint64_t sub_274437364(uint64_t a1)
{
  switch(*(a1 + 8))
  {
    case 1:
    case 3:
      sub_27463ABBC();
      v1 = sub_27463ABAC();

      result = v1;
      break;
    case 2:

      result = sub_27463AB1C();
      break;
    default:

      result = sub_27463AB7C();
      break;
  }

  return result;
}

uint64_t sub_274437400@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_274639ABC();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D000, &qword_2746487E0);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_274437858();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_27463918C();
    OUTLINED_FUNCTION_0_4();
    return (*(v12 + 32))(a1, v11);
  }

  else
  {
    sub_27463BC0C();
    v14 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v8, v2);
  }
}

unint64_t sub_2744375D8()
{
  result = qword_28094AC30;
  if (!qword_28094AC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094AC00, &qword_274649B08);
    sub_27440CA78(&qword_28094AC38, &qword_28094AC08, &qword_274649B10, MEMORY[0x277CE0458]);
    sub_274437690();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094AC30);
  }

  return result;
}

unint64_t sub_274437690()
{
  result = qword_28094AC40;
  if (!qword_28094AC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094ABE8, &qword_274649AF0);
    sub_27443771C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094AC40);
  }

  return result;
}

unint64_t sub_27443771C()
{
  result = qword_28094AC48;
  if (!qword_28094AC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094AC50, &qword_274649B38);
    sub_2744377D4();
    sub_27440CA78(&qword_28094AC68, &qword_28094AC70, &unk_274649B48, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094AC48);
  }

  return result;
}

unint64_t sub_2744377D4()
{
  result = qword_28094AC58;
  if (!qword_28094AC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094AC60, &qword_274649B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094AC58);
  }

  return result;
}

uint64_t sub_274437858()
{
  OUTLINED_FUNCTION_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_0_4();
  v3 = OUTLINED_FUNCTION_5_0();
  v4(v3);
  return v0;
}

uint64_t sub_2744378AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094ACE0, &qword_274649C08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094ACE8, &qword_274649C10);
  sub_27440CA78(&qword_28094ACF0, &qword_28094ACE0, &qword_274649C08, MEMORY[0x277CDF3A0]);
  sub_2744382E8();
  return sub_27463A61C();
}

uint64_t sub_27443798C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AD00, &qword_274649C18);
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v26 = &v26 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AD08, &unk_274649C20);
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - v5;
  v7 = sub_27463918C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v14 = *a1;
  v15 = a1[1];
  sub_274437400(&v26 - v12);
  (*(v8 + 104))(v10, *MEMORY[0x277CDF3C0], v7);
  v16 = sub_27463917C();
  v17 = *(v8 + 8);
  v17(v10, v7);
  v17(v13, v7);
  if (v16)
  {
    *v6 = v14;
    v6[1] = v15;
    swift_storeEnumTagMultiPayload();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094ACE0, &qword_274649C08);
    v19 = sub_27440CA78(&qword_28094ACF0, &qword_28094ACE0, &qword_274649C08, MEMORY[0x277CDF3A0]);
    v30 = v18;
    v31 = v19;
    swift_getOpaqueTypeConformance2();
    return sub_274639DDC();
  }

  else
  {
    LOBYTE(v30) = v14;
    BYTE1(v30) = v15;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094ACE0, &qword_274649C08);
    v22 = sub_27440CA78(&qword_28094ACF0, &qword_28094ACE0, &qword_274649C08, MEMORY[0x277CDF3A0]);
    v23 = v26;
    sub_27463A84C();
    v24 = v27;
    v25 = v29;
    (*(v27 + 16))(v6, v23, v29);
    swift_storeEnumTagMultiPayload();
    v30 = v21;
    v31 = v22;
    swift_getOpaqueTypeConformance2();
    sub_274639DDC();
    return (*(v24 + 8))(v23, v25);
  }
}

uint64_t sub_274437D88(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_274437DC0()
{
  result = qword_28094AC90;
  if (!qword_28094AC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094AC88, &qword_274649B68);
    sub_27443827C(&qword_28094AC98, type metadata accessor for RectangleBackgroundView, &unk_274649BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094AC90);
  }

  return result;
}

uint64_t sub_274437E7C()
{
  OUTLINED_FUNCTION_57();
  v1(0);
  OUTLINED_FUNCTION_0_4();
  v2 = OUTLINED_FUNCTION_5_0();
  v3(v2);
  return v0;
}

uint64_t sub_274437ED0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AC88, &qword_274649B68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_274437F38(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_274437FB8(uint64_t a1)
{
  sub_274435D7C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_274438024()
{
  result = qword_28094ACB0;
  if (!qword_28094ACB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094ABD0, &qword_274649AD8);
    sub_2744380DC();
    sub_27440CA78(&qword_28094ACD8, &qword_28094ABD8, &qword_274649AE0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094ACB0);
  }

  return result;
}

unint64_t sub_2744380DC()
{
  result = qword_28094ACB8;
  if (!qword_28094ACB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094ABC8, &unk_274649AC8);
    sub_274438194();
    sub_27440CA78(&unk_28094A6D0, &qword_28094A6C8, &unk_274649500, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094ACB8);
  }

  return result;
}

unint64_t sub_274438194()
{
  result = qword_28094ACC0;
  if (!qword_28094ACC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094ABB8, &qword_274649AB8);
    sub_27443827C(&qword_28094ACC8, MEMORY[0x277CDE380], MEMORY[0x277CDE378]);
    sub_27440CA78(&qword_28094ACD0, &qword_28094ABC0, &qword_274649AC0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094ACC0);
  }

  return result;
}

uint64_t sub_27443827C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2744382E8()
{
  result = qword_28094ACF8;
  if (!qword_28094ACF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094ACE8, &qword_274649C10);
    sub_27440CA78(&qword_28094ACF0, &qword_28094ACE0, &qword_274649C08, MEMORY[0x277CDF3A0]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094ACE0, &qword_274649C08);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094ACF8);
  }

  return result;
}

__n128 OUTLINED_FUNCTION_5_2@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 - 176);
  v3 = *(v1 - 160);
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v1 - 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_1(__n128 a1, __n128 a2, __n128 a3)
{
  a2.n128_u64[0] = 10.0;
  a3.n128_u64[0] = 0;

  return MEMORY[0x282130860](0, 0, a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_10_1(uint64_t a1)
{
  *(v1 + *(a1 + 52)) = *(v2 - 192);
  *(v1 + *(a1 + 56)) = 256;

  return sub_27463B0CC();
}

void *EnvironmentValues.configurationUIContext.getter()
{
  v0 = sub_274438594();
  OUTLINED_FUNCTION_3_3(v0, &_s25ConfigurationUIContextKeyVN);

  return sub_274639ACC();
}

unint64_t sub_274438594()
{
  result = qword_28094AD40;
  if (!qword_28094AD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094AD40);
  }

  return result;
}

uint64_t EnvironmentValues.configurationUIContext.setter(uint64_t a1)
{
  sub_274439BF0(a1, v3, &unk_2809507C0, &qword_274649C60);
  sub_274438594();
  sub_274639ADC();
  return sub_274415174(a1, &unk_2809507C0, &qword_274649C60);
}

void *sub_274438664()
{
  v0 = sub_27443981C();
  OUTLINED_FUNCTION_3_3(v0, &_s26PresentationEnvironmentKeyVN);

  return sub_274639ACC();
}

void *sub_2744386A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274438664();
  *a1 = v3;
  return result;
}

uint64_t sub_2744387D8()
{
  sub_2744397C8();
  sub_274639ACC();
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_274415174(&v2, &qword_28094AE00, &unk_274649F70);
  return Strong;
}

uint64_t sub_274438840(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  sub_2744397C8();
  sub_274639ADC();
  return swift_unknownObjectRelease();
}

uint64_t View.parameterLayoutMode(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_27463A6CC();
}

void *sub_274438928()
{
  v0 = sub_274439918();
  OUTLINED_FUNCTION_3_3(v0, &_s22ParameterLayoutModeKeyVN);

  return sub_274639ACC();
}

void *sub_274438968@<X0>(uint64_t a1@<X8>)
{
  result = sub_274438928();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_2744389E0()
{
  OUTLINED_FUNCTION_4_1();
  sub_274439918();
  return sub_274639ADC();
}

uint64_t sub_274438A48()
{
  OUTLINED_FUNCTION_5_3();
  v0 = sub_274438A28();
  return OUTLINED_FUNCTION_6_1(v0);
}

uint64_t sub_274438AB0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_27463A6CC();
}

uint64_t sub_274438B40(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_274639ACC();
  return v3;
}

uint64_t sub_274438B88()
{
  OUTLINED_FUNCTION_5_3();
  v0 = sub_274438B20();
  return OUTLINED_FUNCTION_6_1(v0);
}

uint64_t View.presentationEnvironment(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_27463A6CC();
}

void *WidgetConfigurationContext.overridingCellBackgroundColor.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

__n128 WidgetConfigurationContext.init(widgetFamily:fillProvider:overridingCellBackgroundColor:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  result = *a2;
  v5 = *(a2 + 16);
  *(a4 + 8) = *a2;
  *(a4 + 24) = v5;
  *(a4 + 40) = a3;
  return result;
}

void *FocusConfigurationContext.overridingCellBackgroundColor.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t FocusConfigurationContext.init(widgetFamily:overridingCellBackgroundColor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static ParameterLayoutMode.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    return (v4 & 1) == 0 && v2 == v3;
  }

  v5 = *&v3 == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t EditorPresentationEnvironment.hashValue.getter()
{
  v1 = *v0;
  sub_27463C74C();
  MEMORY[0x277C58EA0](v1);
  return sub_27463C7AC();
}

uint64_t sub_274438E38()
{
  swift_unknownObjectWeakInit();

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_274438E70@<X0>(uint64_t a1@<X8>)
{
  if (qword_280949290 != -1)
  {
    swift_once();
  }

  return sub_274439BF0(&unk_28094AD10, a1, &qword_28094AE00, &unk_274649F70);
}

uint64_t sub_274438EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_274439AD0();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_274438F4C()
{
  sub_274439720();
  sub_274639ACC();
  return v1;
}

double sub_274438FC4()
{
  qword_28094AD38 = 0;
  result = 0.0;
  xmmword_28094AD18 = 0u;
  unk_28094AD28 = 0u;
  return result;
}

uint64_t sub_274438FDC@<X0>(uint64_t a1@<X8>)
{
  if (qword_280949298 != -1)
  {
    swift_once();
  }

  return sub_274439BF0(&xmmword_28094AD18, a1, &unk_2809507C0, &qword_274649C60);
}

void (*EnvironmentValues.configurationUIContext.modify(void *a1))(char **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v3;
  v3[15] = v1;
  v3[16] = sub_274438594();
  sub_274639ACC();
  return sub_2744390C8;
}

void sub_2744390C8(char **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_7_2();
    sub_274439BF0(v2 + 40, v2 + 80, &unk_2809507C0, &qword_274649C60);
    sub_274639ADC();
    sub_274415174(v2 + 40, &unk_2809507C0, &qword_274649C60);
  }

  else
  {
    OUTLINED_FUNCTION_7_2();
    sub_274639ADC();
  }

  sub_274415174(v2, &unk_2809507C0, &qword_274649C60);

  free(v2);
}

unint64_t sub_2744391AC()
{
  result = qword_28094AD48;
  if (!qword_28094AD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094AD48);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_274439254(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2744392A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_274439314(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_274439368(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ParameterLayoutMode(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ParameterLayoutMode(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_274439428(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_274439444(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for EditorPresentationEnvironment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for EditorPresentationEnvironment(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVy14WorkflowEditor19ParameterLayoutModeOGGAaBHPxAaBHD1__AjA0cI0HPyHCHCTm(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_27463965C();
  sub_274439668(a4, a2, a3);
  return swift_getWitnessTable();
}

uint64_t sub_274439668(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2744396CC()
{
  result = qword_28094AD80;
  if (!qword_28094AD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094AD80);
  }

  return result;
}

unint64_t sub_274439720()
{
  result = qword_28094AD88;
  if (!qword_28094AD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094AD88);
  }

  return result;
}

unint64_t sub_274439774()
{
  result = qword_28094AD90;
  if (!qword_28094AD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094AD90);
  }

  return result;
}

unint64_t sub_2744397C8()
{
  result = qword_28094AD98;
  if (!qword_28094AD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094AD98);
  }

  return result;
}

unint64_t sub_27443981C()
{
  result = qword_28094AE08;
  if (!qword_28094AE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094AE08);
  }

  return result;
}

unint64_t sub_274439870()
{
  result = qword_28094AE10;
  if (!qword_28094AE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094AE10);
  }

  return result;
}

unint64_t sub_2744398C4()
{
  result = qword_28094AE18;
  if (!qword_28094AE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094AE18);
  }

  return result;
}

unint64_t sub_274439918()
{
  result = qword_28094AE20;
  if (!qword_28094AE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094AE20);
  }

  return result;
}

uint64_t sub_2744399FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_274439C58();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_274439A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2744391AC();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_274439AD0()
{
  result = qword_28094AE28;
  if (!qword_28094AE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094AE30, &unk_27465D220);
    sub_274439B54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094AE28);
  }

  return result;
}

unint64_t sub_274439B54()
{
  result = qword_28094AE38;
  if (!qword_28094AE38)
  {
    sub_274439BAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094AE38);
  }

  return result;
}

unint64_t sub_274439BAC()
{
  result = qword_28094AE40[0];
  if (!qword_28094AE40[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_28094AE40);
  }

  return result;
}

uint64_t sub_274439BF0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_274439C58()
{
  result = qword_28094AE48;
  if (!qword_28094AE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094AE48);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_2()
{

  return sub_274439BF0(v0, v0 + 40, v1, v2);
}

WorkflowEditor::WorkflowActionRemovalMode_optional __swiftcall WorkflowActionRemovalMode.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_274439D90@<X0>(uint64_t *a1@<X8>)
{
  result = WorkflowActionRemovalMode.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t (*sub_274439E24())()
{
  v1 = OUTLINED_FUNCTION_18_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_11_2(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_23_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_5_4(v4);
  return sub_274442800;
}

uint64_t sub_274439EB0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AE60, &qword_27464A280);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_6(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_10_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AE58, &qword_27464A278);
  OUTLINED_FUNCTION_13_2(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_7_3();
  return v6(v5);
}

uint64_t sub_274439F94()
{
  v1 = OUTLINED_FUNCTION_22_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_2(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AE60, &qword_27464A280);
  OUTLINED_FUNCTION_3_4(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_20_1(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_21_0(v8);
  OUTLINED_FUNCTION_9_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AE58, &qword_27464A278);
  OUTLINED_FUNCTION_24_1();
  swift_endAccess();
  return OUTLINED_FUNCTION_19_1();
}

uint64_t sub_27443A094@<X0>(uint64_t *a2@<X8>)
{
  result = sub_27443A0F0();
  *a2 = result;
  return result;
}

uint64_t sub_27443A0C0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return sub_27443A104(v1);
}

uint64_t (*sub_27443A118())()
{
  v1 = OUTLINED_FUNCTION_18_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_11_2(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_23_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_5_4(v4);
  return sub_274442800;
}

uint64_t sub_27443A188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_60_0();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  (*(v13 + 16))(&v15 - v11, a1, v10);
  return a7(v12);
}

uint64_t sub_27443A268()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952690, &qword_27464A2D8);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_6(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_10_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AE70, &qword_27464A2D0);
  OUTLINED_FUNCTION_13_2(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_7_3();
  return v6(v5);
}

uint64_t sub_27443A34C()
{
  v1 = OUTLINED_FUNCTION_22_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_2(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952690, &qword_27464A2D8);
  OUTLINED_FUNCTION_3_4(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_20_1(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_21_0(v8);
  OUTLINED_FUNCTION_9_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AE70, &qword_27464A2D0);
  OUTLINED_FUNCTION_24_1();
  swift_endAccess();
  return OUTLINED_FUNCTION_19_1();
}

void sub_27443A44C(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (a2)
  {
    v7 = v4[4];
    v8 = v4[5];
    (*(v8 + 16))(*(*a1 + 48), v6, v7);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3(*(*a1 + 56));
  }

  free(v6);
  free(v5);

  free(v4);
}

id WorkflowEditorResults.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_27443A580()
{
  v1 = 0uLL;
  v2 = 0;
  sub_274439E10(&v1);

  return sub_27443A104(0);
}

id WorkflowEditorResults.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AE70, &qword_27464A2D0);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AE58, &qword_27464A278);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  v13 = OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorResults__actionError;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AE80, &qword_27464A2E0);
  sub_274638F6C();
  (*(v9 + 32))(&v0[v13], v12, v7);
  v14 = OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorResults__finalResultCollection;
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AE88, &qword_27464A2E8);
  sub_274638F6C();
  (*(v3 + 32))(&v0[v14], v6, v1);
  v15 = type metadata accessor for WorkflowEditorResults(0);
  v18.receiver = v0;
  v18.super_class = v15;
  return objc_msgSendSuper2(&v18, sel_init);
}

uint64_t sub_27443A87C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for WorkflowEditorResults(0);
  result = sub_274638EFC();
  *a2 = result;
  return result;
}

uint64_t sub_27443A904@<X0>(_BYTE *a2@<X8>)
{
  result = sub_27443A95C();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_27443A984())()
{
  v1 = OUTLINED_FUNCTION_18_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_11_2(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_23_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_5_4(v4);
  return sub_274442800;
}

uint64_t sub_27443AA10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AEA0, &qword_27464A340);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_6(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_10_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C2F0, &qword_27464D370);
  OUTLINED_FUNCTION_13_2(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_7_3();
  return v6(v5);
}

uint64_t sub_27443AAF4()
{
  v1 = OUTLINED_FUNCTION_22_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_2(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AEA0, &qword_27464A340);
  OUTLINED_FUNCTION_3_4(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_20_1(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_21_0(v8);
  OUTLINED_FUNCTION_9_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C2F0, &qword_27464D370);
  OUTLINED_FUNCTION_24_1();
  swift_endAccess();
  return OUTLINED_FUNCTION_19_1();
}

uint64_t sub_27443ABF4@<X0>(_BYTE *a2@<X8>)
{
  result = sub_27443AC4C();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_27443AC74())()
{
  v1 = OUTLINED_FUNCTION_18_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_11_2(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_23_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_5_4(v4);
  return sub_274442800;
}

uint64_t sub_27443AD00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AEA0, &qword_27464A340);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_6(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_10_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C2F0, &qword_27464D370);
  OUTLINED_FUNCTION_13_2(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_7_3();
  return v6(v5);
}

uint64_t sub_27443ADE4()
{
  v1 = OUTLINED_FUNCTION_22_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_2(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AEA0, &qword_27464A340);
  OUTLINED_FUNCTION_3_4(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_20_1(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_21_0(v8);
  OUTLINED_FUNCTION_9_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C2F0, &qword_27464D370);
  OUTLINED_FUNCTION_24_1();
  swift_endAccess();
  return OUTLINED_FUNCTION_19_1();
}

uint64_t sub_27443AEE4@<X0>(uint64_t *a2@<X8>)
{
  result = sub_27443AF38();
  *a2 = result;
  return result;
}

uint64_t (*sub_27443AF60())()
{
  v1 = OUTLINED_FUNCTION_18_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_11_2(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_23_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_5_4(v4);
  return sub_27443AFD0;
}

uint64_t sub_27443AFF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AEC0, &qword_27464A3E0);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_6(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_10_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AEB8, &qword_27464A3D8);
  OUTLINED_FUNCTION_13_2(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_7_3();
  return v6(v5);
}

uint64_t sub_27443B0D4()
{
  v1 = OUTLINED_FUNCTION_22_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_2(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AEC0, &qword_27464A3E0);
  OUTLINED_FUNCTION_3_4(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_20_1(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_21_0(v8);
  OUTLINED_FUNCTION_9_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AEB8, &qword_27464A3D8);
  OUTLINED_FUNCTION_24_1();
  swift_endAccess();
  return OUTLINED_FUNCTION_19_1();
}

uint64_t sub_27443B1D4@<X0>(_BYTE *a2@<X8>)
{
  result = sub_27443B22C();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_27443B254())()
{
  v1 = OUTLINED_FUNCTION_18_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_11_2(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_23_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_5_4(v4);
  return sub_274442800;
}

uint64_t sub_27443B2E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AEA0, &qword_27464A340);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_6(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_10_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C2F0, &qword_27464D370);
  OUTLINED_FUNCTION_13_2(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_7_3();
  return v6(v5);
}

uint64_t sub_27443B3C4()
{
  v1 = OUTLINED_FUNCTION_22_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_2(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AEA0, &qword_27464A340);
  OUTLINED_FUNCTION_3_4(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_20_1(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_21_0(v8);
  OUTLINED_FUNCTION_9_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C2F0, &qword_27464D370);
  OUTLINED_FUNCTION_24_1();
  swift_endAccess();
  return OUTLINED_FUNCTION_19_1();
}

uint64_t sub_27443B4C4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_65();
  sub_274638FAC();

  if (v7)
  {
    sub_27443C9D4(v1, v2, v3, v4, v5, v6, v7);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return (v7 == 0) | sub_27443B22C() & 1;
}

uint64_t (*sub_27443B57C(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_27443B4C4() & 1;
  return sub_27443B5C8;
}

BOOL sub_27443B5F0(uint64_t a1)
{
  v1 = sub_27443B680();
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

uint64_t sub_27443B624@<X0>(uint64_t *a2@<X8>)
{
  result = sub_27443B680();
  *a2 = result;
  return result;
}

uint64_t sub_27443B650(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return sub_27443B694(v1);
}

uint64_t sub_27443B6A8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_28_1();
  swift_getKeyPath();
  v3 = v2;
  return sub_274638FBC();
}

uint64_t (*sub_27443B70C())()
{
  v1 = OUTLINED_FUNCTION_18_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_11_2(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_23_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_5_4(v4);
  return sub_274442800;
}

uint64_t sub_27443B798()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AEE8, &qword_27464A4C8);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_6(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_10_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AEE0, &qword_27464A4C0);
  OUTLINED_FUNCTION_13_2(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_7_3();
  return v6(v5);
}

uint64_t sub_27443B87C()
{
  v1 = OUTLINED_FUNCTION_22_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_2(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AEE8, &qword_27464A4C8);
  OUTLINED_FUNCTION_3_4(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_20_1(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_21_0(v8);
  OUTLINED_FUNCTION_9_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AEE0, &qword_27464A4C0);
  OUTLINED_FUNCTION_24_1();
  swift_endAccess();
  return OUTLINED_FUNCTION_19_1();
}

void *sub_27443B97C()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_27443B9E0();
  *v0 = v2;
  return result;
}

uint64_t (*sub_27443BA08())()
{
  v1 = OUTLINED_FUNCTION_18_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_11_2(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_23_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_5_4(v4);
  return sub_274442800;
}

uint64_t sub_27443BA94()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AF00, &qword_27464A520);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_6(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_10_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AEF8, &qword_27464A518);
  OUTLINED_FUNCTION_13_2(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_7_3();
  return v6(v5);
}

uint64_t sub_27443BB78()
{
  v1 = OUTLINED_FUNCTION_22_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_2(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AF00, &qword_27464A520);
  OUTLINED_FUNCTION_3_4(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_20_1(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_21_0(v8);
  OUTLINED_FUNCTION_9_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AEF8, &qword_27464A518);
  OUTLINED_FUNCTION_24_1();
  swift_endAccess();
  return OUTLINED_FUNCTION_19_1();
}

void *sub_27443BC78()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_27443BCDC();
  *v0 = v2;
  return result;
}

uint64_t sub_27443BCF0(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_28_1();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_31_1(KeyPath);
}

uint64_t sub_27443BD5C(char *a1, uint64_t a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_1();
  swift_getKeyPath();
  v3 = v2;
  return sub_274638FBC();
}

uint64_t (*sub_27443BDC0())()
{
  v1 = OUTLINED_FUNCTION_18_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_11_2(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_23_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_5_4(v4);
  return sub_274442800;
}

uint64_t sub_27443BE4C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AF18, &qword_27464A578);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_6(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_10_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AF10, &qword_27464A570);
  OUTLINED_FUNCTION_13_2(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_7_3();
  return v6(v5);
}

uint64_t sub_27443BF30()
{
  v1 = OUTLINED_FUNCTION_22_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_2(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AF18, &qword_27464A578);
  OUTLINED_FUNCTION_3_4(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_20_1(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_21_0(v8);
  OUTLINED_FUNCTION_9_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AF10, &qword_27464A570);
  OUTLINED_FUNCTION_24_1();
  swift_endAccess();
  return OUTLINED_FUNCTION_19_1();
}

uint64_t (*sub_27443C048())()
{
  v2 = OUTLINED_FUNCTION_18_1();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_2(v3);
  v5 = OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_editorDelegate;
  *(v4 + 40) = v0;
  *(v4 + 48) = v5;
  v6 = v0 + v5;
  OUTLINED_FUNCTION_12_0(v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v1 + 24) = Strong;
  *(v1 + 32) = v8;
  return sub_27443C0C0;
}

uint64_t sub_27443C12C(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_27443C18C())()
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  v3 = OUTLINED_FUNCTION_11_2(v2);
  v4 = OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_auxiliaryViewPresenter;
  *(v3 + 32) = v0;
  *(v3 + 40) = v4;
  OUTLINED_FUNCTION_12_0(v0 + v4);
  *(v1 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_27443C200;
}

void sub_27443C200()
{
  OUTLINED_FUNCTION_32_1();
  swift_unknownObjectWeakAssign();
  if (v1)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v0);
}

uint64_t sub_27443C274(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = a1[1];
  v7 = swift_unknownObjectRetain();
  return a5(v7, v6);
}

uint64_t sub_27443C31C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3 + *a3;
  swift_beginAccess();
  *(v5 + 8) = a2;
  OUTLINED_FUNCTION_25_1();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_27443C380())()
{
  v2 = OUTLINED_FUNCTION_18_1();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_2(v3);
  v5 = OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_coordinateSpaceDelegate;
  *(v4 + 40) = v0;
  *(v4 + 48) = v5;
  v6 = v0 + v5;
  OUTLINED_FUNCTION_12_0(v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v1 + 24) = Strong;
  *(v1 + 32) = v8;
  return sub_274442804;
}

void sub_27443C3F8()
{
  OUTLINED_FUNCTION_32_1();
  *(v0[5] + v0[6] + 8) = v0[4];
  swift_unknownObjectWeakAssign();
  if (v1)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v0);
}

uint64_t sub_27443C474@<X0>(uint64_t *a2@<X8>)
{
  result = sub_27443C514();
  *a2 = result;
  return result;
}

void sub_27443C4A0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_27443C58C(v1);
}

uint64_t sub_27443C4D0(uint64_t a1)
{
  v1 = sub_27443C514();
  v2 = v1;
  if (v1)
  {
  }

  return sub_27443D5DC(v2 != 0);
}

uint64_t sub_27443C528(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_25_1();
  sub_274638FAC();

  return v2;
}

void sub_27443C58C(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = a1;
  v4 = v1;
  v5 = sub_274638FBC();
  sub_27443C4D0(v5);
}

void (*sub_27443C60C(uint64_t *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_27443C514();
  return sub_27443C654;
}

void sub_27443C654(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_27443C58C(v2);
  }

  else
  {
    sub_27443C58C(*a1);
  }
}

uint64_t sub_27443C6D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AF30, &unk_27464A5D0);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_6(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_10_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809526F0, &qword_27464A5C8);
  OUTLINED_FUNCTION_13_2(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_7_3();
  return v6(v5);
}

uint64_t sub_27443C7BC()
{
  v1 = OUTLINED_FUNCTION_22_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_2(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AF30, &unk_27464A5D0);
  OUTLINED_FUNCTION_3_4(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_20_1(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_21_0(v8);
  OUTLINED_FUNCTION_9_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809526F0, &qword_27464A5C8);
  OUTLINED_FUNCTION_24_1();
  swift_endAccess();
  return OUTLINED_FUNCTION_19_1();
}

double sub_27443C8BC()
{
  OUTLINED_FUNCTION_16_1();
  sub_27443C960();
  *v0 = v2;
  *(v0 + 16) = v3;
  result = *&v4;
  *(v0 + 32) = v4;
  *(v0 + 48) = v5;
  return result;
}

uint64_t sub_27443C904(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  *&v8 = *a1;
  *(&v8 + 1) = v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  sub_27444272C(v8, v1, v2, v3, v4, v5, v6);
  return sub_27443CA58(&v8);
}

uint64_t sub_27443C960()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_25_1();
  sub_274638FAC();
}

void *sub_27443C9D4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 == 1)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    if (a7)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_27443CA58(__int128 *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_274638FBC();
}

uint64_t (*sub_27443CAEC())()
{
  v1 = OUTLINED_FUNCTION_18_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_11_2(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_23_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_5_4(v4);
  return sub_274442800;
}

uint64_t sub_27443CB78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AF40, &qword_27464A5E0);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_6(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_10_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FEA0, &unk_27465C110);
  OUTLINED_FUNCTION_13_2(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_7_3();
  return v6(v5);
}

uint64_t sub_27443CC5C()
{
  v1 = OUTLINED_FUNCTION_22_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_2(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AF40, &qword_27464A5E0);
  OUTLINED_FUNCTION_3_4(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_20_1(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_21_0(v8);
  OUTLINED_FUNCTION_9_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FEA0, &unk_27465C110);
  OUTLINED_FUNCTION_24_1();
  swift_endAccess();
  return OUTLINED_FUNCTION_19_1();
}

uint64_t sub_27443CD5C@<X0>(uint64_t *a2@<X8>)
{
  result = sub_27443CDC8();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_27443CD88(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_27443CE38(v1, v2);
}

uint64_t sub_27443CDC8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_65();
  sub_274638FAC();

  return v1;
}

uint64_t sub_27443CE38(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_274638FBC();
}

uint64_t (*sub_27443CEB0())()
{
  v1 = OUTLINED_FUNCTION_18_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_11_2(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_23_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_5_4(v4);
  return sub_274442800;
}

uint64_t sub_27443CF3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AF58, &qword_27465C0D0);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_6(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_10_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AF50, &unk_27464A630);
  OUTLINED_FUNCTION_13_2(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_7_3();
  return v6(v5);
}

uint64_t sub_27443D020()
{
  v1 = OUTLINED_FUNCTION_22_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_2(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AF58, &qword_27465C0D0);
  OUTLINED_FUNCTION_3_4(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_20_1(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_21_0(v8);
  OUTLINED_FUNCTION_9_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AF50, &unk_27464A630);
  OUTLINED_FUNCTION_24_1();
  swift_endAccess();
  return OUTLINED_FUNCTION_19_1();
}

double sub_27443D138()
{
  OUTLINED_FUNCTION_16_1();
  v1(&v4);
  v2 = v5;
  result = *&v4;
  *v0 = v4;
  *(v0 + 16) = v2;
  return result;
}

uint64_t sub_27443D1A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, uint64_t), uint64_t (*a6)(void *))
{
  v7 = a1[1];
  v8 = a1[2];
  v10[0] = *a1;
  v10[1] = v7;
  v10[2] = v8;
  a5(v10[0], v7);
  return a6(v10);
}

uint64_t sub_27443D228(__int128 *a1, uint64_t a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_1();
  swift_getKeyPath();
  v3 = v2;
  return sub_274638FBC();
}

uint64_t (*sub_27443D29C())()
{
  v1 = OUTLINED_FUNCTION_18_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_11_2(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_23_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_5_4(v4);
  return sub_274442800;
}

uint64_t sub_27443D328()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AF70, &qword_27464A690);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_6(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_10_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954960, &qword_27465C120);
  OUTLINED_FUNCTION_13_2(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_7_3();
  return v6(v5);
}

uint64_t sub_27443D40C()
{
  v1 = OUTLINED_FUNCTION_22_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_2(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AF70, &qword_27464A690);
  OUTLINED_FUNCTION_3_4(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_20_1(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_21_0(v8);
  OUTLINED_FUNCTION_9_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954960, &qword_27465C120);
  OUTLINED_FUNCTION_24_1();
  swift_endAccess();
  return OUTLINED_FUNCTION_19_1();
}

uint64_t sub_27443D50C@<X0>(_BYTE *a2@<X8>)
{
  result = sub_27443D564();
  *a2 = result & 1;
  return result;
}

uint64_t sub_27443D578(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_25_1();
  sub_274638FAC();

  return v2;
}

uint64_t sub_27443D5F0(char a1, uint64_t a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_28_1();
  swift_getKeyPath();
  v3 = v2;
  return sub_274638FBC();
}

uint64_t (*sub_27443D654())()
{
  v1 = OUTLINED_FUNCTION_18_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_11_2(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_23_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_5_4(v4);
  return sub_274442800;
}

void sub_27443D6C4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_27443D748(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_24_1();
  return swift_endAccess();
}

uint64_t sub_27443D7B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AEA0, &qword_27464A340);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_6(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_10_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C2F0, &qword_27464D370);
  OUTLINED_FUNCTION_13_2(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_7_3();
  return v6(v5);
}

uint64_t sub_27443D89C()
{
  v1 = OUTLINED_FUNCTION_22_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_2(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AEA0, &qword_27464A340);
  OUTLINED_FUNCTION_3_4(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_20_1(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_21_0(v8);
  OUTLINED_FUNCTION_9_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C2F0, &qword_27464D370);
  OUTLINED_FUNCTION_24_1();
  swift_endAccess();
  return OUTLINED_FUNCTION_19_1();
}

double _s14WorkflowEditor0aB7OptionsC17actionCanvasWidth12CoreGraphics7CGFloatVyF_0(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_canvasWidth;
  OUTLINED_FUNCTION_47(v2 + OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_canvasWidth, a2);
  return *(v2 + v3);
}

uint64_t sub_27443D9D4(double a1)
{
  v3 = OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_canvasWidth;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27443DA88(void *a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5 + OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_pendingScrollParameters;
  v7 = *(v5 + OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_pendingScrollParameters);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;
  v8 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AF80, &unk_27464A6E0);
  OUTLINED_FUNCTION_65();
  sub_27440CA78(v9, v10, v11, v12);
  return sub_274638F5C();
}

void *sub_27443DB34(uint64_t a1)
{
  v2 = v1;
  v49 = a1;
  v45 = sub_27463B1EC();
  OUTLINED_FUNCTION_1();
  v48 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_0();
  v7 = v6 - v5;
  v8 = sub_27463B21C();
  OUTLINED_FUNCTION_1();
  v47 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_0();
  v13 = v12 - v11;
  v14 = sub_27463B23C();
  OUTLINED_FUNCTION_1();
  v46 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v36 - v20;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274638FAC();

  if (v54)
  {
    return sub_27443C9D4(aBlock, *(&aBlock + 1), v52, *(&v52 + 1), v53, *(&v53 + 1), v54);
  }

  v38 = v18;
  v39 = v21;
  v44 = v52;
  v42 = v8;
  v43 = v14;
  v40 = v13;
  v41 = v7;
  v52 = 0u;
  v53 = 0u;
  aBlock = 0u;
  v54 = 2;
  sub_27443CA58(&aBlock);
  v23 = [objc_opt_self() systemShortcutsUserDefaults];
  v24 = sub_27463B66C();
  v25 = [v23 BOOLForKey_];

  if ((v25 & 1) == 0)
  {
    objc_opt_self();
    v26 = swift_dynamicCastObjCClass();
    if (v26)
    {
      v27 = v26;
      sub_27443E05C();
      swift_unknownObjectRetain();
      v37 = sub_27463BCEC();
      v28 = v38;
      sub_27463B22C();
      v29 = v39;
      sub_27463B28C();
      v46 = *(v46 + 8);
      (v46)(v28, v43);
      v30 = swift_allocObject();
      *(v30 + 16) = v2;
      *(v30 + 24) = v27;
      *&v53 = sub_27443E0E0;
      *(&v53 + 1) = v30;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v52 = sub_27443E0E8;
      *(&v52 + 1) = &block_descriptor;
      _Block_copy(&aBlock);
      OUTLINED_FUNCTION_29_1();
      swift_unknownObjectRetain();
      v31 = v2;
      v32 = v40;
      sub_27463B20C();
      v50 = MEMORY[0x277D84F90];
      sub_27443FBC4(&qword_28094E100, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0, &unk_27464D1A0);
      sub_27440CA78(&qword_28094E110, &unk_28094AFA0, &unk_27464D1A0, MEMORY[0x277D83970]);
      v33 = v41;
      v34 = v45;
      sub_27463C1EC();
      v35 = v37;
      MEMORY[0x277C58400](v29, v32, v33, v27);
      _Block_release(v27);
      swift_unknownObjectRelease();

      (*(v48 + 8))(v33, v34);
      (*(v47 + 8))(v32, v42);
      (v46)(v29, v43);
    }
  }

  (v44)(v49);
  swift_unknownObjectRelease();
}

unint64_t sub_27443E05C()
{
  result = qword_28094AF90;
  if (!qword_28094AF90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28094AF90);
  }

  return result;
}

uint64_t sub_27443E0E8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_27443E144(void *a1)
{
  v2 = v1;
  v4 = sub_2746381FC();
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_3_0();
  v7 = (v6 - v5);
  sub_27463851C();
  sub_27463850C();
  sub_2746384FC();

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = v2;
  v9 = objc_allocWithZone(type metadata accessor for WFActionDetailsViewController(0));
  v10 = a1;
  v11 = v2;
  WFActionDetailsViewController.init(action:showCloseButton:appendActionHandler:)(v7, 1, sub_27443E350, v8);
  v13 = v12;
  [v11 presentDrawerViewController:v12 inPopover:0 withSourceRect:{*MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24)}];
}

void sub_27443E270(void *a1, void *a2)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    v4 = [a1 copyForDuplicating];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F500, &unk_27464ADC0);
    v5 = sub_27463B4DC();
    v4 = sub_2745942EC(v5, a1);
  }

  v6 = v4;
  [a2 appendAction_];
}

uint64_t sub_27443E358()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AF80, &unk_27464A6E0);
  OUTLINED_FUNCTION_65();
  sub_27440CA78(v0, v1, v2, v3);
  return sub_274638F5C();
}

id sub_27443E3D8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954960, &qword_27465C120);
  v66 = *(v2 - 8);
  v67 = v2;
  MEMORY[0x28223BE20](v2);
  v65 = &v46 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AF50, &unk_27464A630);
  v63 = *(v4 - 8);
  v64 = v4;
  MEMORY[0x28223BE20](v4);
  v62 = &v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FEA0, &unk_27465C110);
  v60 = *(v6 - 8);
  v61 = v6;
  MEMORY[0x28223BE20](v6);
  v59 = &v46 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809526F0, &qword_27464A5C8);
  v57 = *(v8 - 8);
  v58 = v8;
  MEMORY[0x28223BE20](v8);
  v56 = &v46 - v9;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AF10, &qword_27464A570);
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v53 = &v46 - v10;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AEF8, &qword_27464A518);
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v50 = &v46 - v11;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AEE0, &qword_27464A4C0);
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v47 = &v46 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AEB8, &qword_27464A3D8);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C2F0, &qword_27464D370);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v46 - v19;
  v21 = OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions__canShowEmptyState;
  LOBYTE(v69) = 0;
  sub_274638F6C();
  v22 = *(v18 + 32);
  v22(&v1[v21], v20, v17);
  v23 = OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions__canShowInputAction;
  LOBYTE(v69) = 1;
  sub_274638F6C();
  v22(&v1[v23], v20, v17);
  v24 = OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions__triggerInputType;
  *&v69 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B090, &qword_27464AAD8);
  sub_274638F6C();
  (*(v14 + 32))(&v1[v24], v16, v13);
  v25 = OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions__isExplicitlyReadOnly;
  LOBYTE(v69) = 0;
  sub_274638F6C();
  v22(&v1[v25], v20, v17);
  v26 = OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions__home;
  *&v69 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B0A0, &qword_27464AAE0);
  v27 = v47;
  sub_274638F6C();
  (*(v48 + 32))(&v1[v26], v27, v49);
  v28 = OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions__scrollingBehavior;
  LOBYTE(v69) = 0;
  v29 = v50;
  sub_274638F6C();
  (*(v51 + 32))(&v1[v28], v29, v52);
  v30 = OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions__auxiliaryBarVisibility;
  LOBYTE(v69) = 0;
  v31 = v53;
  sub_274638F6C();
  (*(v54 + 32))(&v1[v30], v31, v55);
  *&v1[OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_editorDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_coordinateSpaceDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v32 = OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions__variableEditingState;
  *&v69 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B0C0, &qword_27464AB18);
  v33 = v56;
  sub_274638F6C();
  (*(v57 + 32))(&v1[v32], v33, v58);
  v34 = OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions__variablePickingState;
  v70 = 0u;
  v71 = 0u;
  v69 = 0u;
  v72 = 2;
  v35 = v59;
  sub_274638F6C();
  (*(v60 + 32))(&v1[v34], v35, v61);
  v36 = OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions__parameterEditingHint;
  *&v69 = 0;
  *(&v69 + 1) = 0xE000000000000000;
  v37 = v62;
  sub_274638F6C();
  (*(v63 + 32))(&v1[v36], v37, v64);
  v38 = OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions__parameterSelectionState;
  v69 = 0uLL;
  *&v70 = 0;
  v39 = v65;
  sub_274638F6C();
  (*(v66 + 32))(&v1[v38], v39, v67);
  v40 = OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions__isEditingVariable;
  LOBYTE(v69) = 0;
  sub_274638F6C();
  v22(&v1[v40], v20, v17);
  *&v1[OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_canvasWidth] = 0;
  v41 = OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_onScrollToAction;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AF80, &unk_27464A6E0);
  swift_allocObject();
  *&v1[v41] = sub_274638F1C();
  v42 = &v1[OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_pendingScrollParameters];
  v42[32] = 0;
  *v42 = 0u;
  *(v42 + 1) = 0u;
  v43 = OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_onSavePendingChanges;
  swift_allocObject();
  *&v1[v43] = sub_274638F1C();
  v44 = type metadata accessor for WorkflowEditorOptions(0);
  v68.receiver = v1;
  v68.super_class = v44;
  return objc_msgSendSuper2(&v68, sel_init);
}

id sub_27443ED40(uint64_t (*a1)(void))
{
  v1 = objc_allocWithZone(a1(0));

  return [v1 init];
}

id sub_27443ED98(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_27443F110@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for WorkflowEditorOptions(0);
  result = sub_274638EFC();
  *a2 = result;
  return result;
}

uint64_t WorkflowEditorOptions.appendAction(_:)(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_editorDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 16))(a1, 1, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall WorkflowEditorOptions.presentDrawerViewController(_:inPopover:withSourceRect:)(UIViewController *_, Swift::Bool inPopover, __C::CGRect withSourceRect)
{
  height = withSourceRect.size.height;
  width = withSourceRect.size.width;
  y = withSourceRect.origin.y;
  x = withSourceRect.origin.x;
  OUTLINED_FUNCTION_47(v3 + OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_auxiliaryViewPresenter, inPopover);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong presentDrawerViewControllerAsAuxiliaryViewPresenter:_ inPopover:inPopover sourceRect:{x, y, width, height}];
    swift_unknownObjectRelease();
  }
}

id WorkflowEditorView.init(workflow:options:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 56) = sub_27463902C();
  *a3 = a1;
  *(a3 + 8) = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(a3 + 32) = sub_27443FBBC;
  *(a3 + 40) = v6;
  *(a3 + 48) = 0;
  *(a3 + 16) = 0;
  v7 = objc_allocWithZone(type metadata accessor for WorkflowEditorResults(0));
  v8 = a1;
  result = [v7 init];
  *(a3 + 24) = result;
  return result;
}

void sub_27443F468(void *a1)
{
  type metadata accessor for ActionList(0);
  swift_allocObject();
  v2 = a1;
  ActionList.init(workflow:)();
}

id WorkflowEditorView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v62 = sub_27463A19C();
  OUTLINED_FUNCTION_1();
  v61 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_0();
  v6 = v5 - v4;
  v57 = type metadata accessor for WorkflowView(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_0();
  v10 = v9 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AFB0, &qword_27464A6F0);
  OUTLINED_FUNCTION_1();
  v60 = v11;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v55 - v13;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AFB8, &qword_27464A6F8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v55 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AFC0, &qword_27464A700);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v19);
  v21 = &v55 - v20;
  v22 = *(v1 + 16);
  v68 = *(v1 + 8);
  v56 = v22;
  v23 = *(v1 + 32);
  v69 = *(v1 + 24);
  v24 = *(v1 + 40);
  v25 = *(v1 + 48);
  v55 = *(v1 + 56);
  v26 = type metadata accessor for ActionList(0);
  v27 = sub_27443FBC4(&qword_28094AFC8, type metadata accessor for ActionList, &protocol conformance descriptor for ActionList);
  v67 = v23;
  v66 = v24;
  v65 = v25;
  v64 = v26;
  v63 = v27;
  v28 = sub_27463920C();
  sub_2744B2C20(v28);
  sub_27463A18C();
  v29 = sub_27443FBC4(&qword_28094AFD0, type metadata accessor for WorkflowView, &unk_274651578);
  v30 = v57;
  sub_27463A82C();
  (*(v61 + 8))(v6, v62);
  sub_27443FC0C(v10);
  __src[0] = v30;
  __src[1] = v29;
  swift_getOpaqueTypeConformance2();
  v31 = v59;
  sub_27463A86C();
  (*(v60 + 8))(v14, v31);
  sub_27443FC68();
  sub_27463A5FC();
  sub_27443FF80(v17, &qword_28094AFB8, &qword_27464A6F8);
  v32 = v56;
  v33 = v56;
  sub_274532F00(v32, __src);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AFE8, &qword_27464A708);
  memcpy(&v21[*(v34 + 36)], __src, 0x80uLL);
  type metadata accessor for WorkflowEditorOptions(0);
  sub_27443FBC4(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
  OUTLINED_FUNCTION_28_1();
  v35 = sub_27463979C();
  v37 = v36;
  type metadata accessor for WorkflowEditorResults(0);
  sub_27443FBC4(&unk_28094C450, type metadata accessor for WorkflowEditorResults, &protocol conformance descriptor for WorkflowEditorResults);
  v38 = sub_27463979C();
  v40 = v39;
  KeyPath = swift_getKeyPath();
  v42 = &v21[*(v18 + 36)];
  *v42 = v35;
  *(v42 + 1) = v37;
  *(v42 + 2) = v38;
  *(v42 + 3) = v40;
  *(v42 + 4) = KeyPath;
  v42[40] = 0;
  if (VCIsInternalBuild())
  {
    sub_27463903C();
  }

  sub_27443FD84();
  v43 = v70;
  sub_27463A5BC();
  sub_27443FF80(v21, &qword_28094AFC0, &qword_27464A700);
  v44 = swift_getKeyPath();
  v45 = sub_27463920C();
  v46 = (v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B010, &qword_27464A768) + 36));
  *v46 = v44;
  v46[1] = v45;
  v47 = sub_274638EEC();
  v48 = (v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B018, &qword_27464A770) + 36));
  v49 = v68;
  *v48 = v47;
  v48[1] = v49;
  v50 = v49;
  v51 = sub_274638EEC();
  v52 = (v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B020, &qword_27464A778) + 36));
  v53 = v69;
  *v52 = v51;
  v52[1] = v53;

  return v53;
}

uint64_t sub_27443FAF0()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_27451D5DC();
  *v0 = result;
  return result;
}

uint64_t sub_27443FB48()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_27463985C();
  *v0 = result;
  return result;
}

uint64_t sub_27443FBC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_27443FC0C(uint64_t a1)
{
  v2 = type metadata accessor for WorkflowView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_27443FC68()
{
  result = qword_28094AFD8;
  if (!qword_28094AFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094AFB8, &qword_27464A6F8);
    type metadata accessor for WorkflowView(255);
    sub_27443FBC4(&qword_28094AFD0, type metadata accessor for WorkflowView, &unk_274651578);
    swift_getOpaqueTypeConformance2();
    sub_27443FBC4(&qword_28094A6C0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094AFD8);
  }

  return result;
}

unint64_t sub_27443FD84()
{
  result = qword_28094AFF0;
  if (!qword_28094AFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094AFC0, &qword_27464A700);
    sub_27443FE10();
    sub_27443FF2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094AFF0);
  }

  return result;
}

unint64_t sub_27443FE10()
{
  result = qword_28094AFF8;
  if (!qword_28094AFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094AFE8, &qword_27464A708);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094AFB8, &qword_27464A6F8);
    sub_27443FC68();
    swift_getOpaqueTypeConformance2();
    sub_27443FED8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094AFF8);
  }

  return result;
}

unint64_t sub_27443FED8()
{
  result = qword_28094B000;
  if (!qword_28094B000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094B000);
  }

  return result;
}

unint64_t sub_27443FF2C()
{
  result = qword_28094B008;
  if (!qword_28094B008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094B008);
  }

  return result;
}

uint64_t sub_27443FF80(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4_2();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_27443FFD8()
{
  result = qword_28094B028;
  if (!qword_28094B028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094B028);
  }

  return result;
}

unint64_t sub_274440030()
{
  result = qword_28094B030;
  if (!qword_28094B030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094B030);
  }

  return result;
}

unint64_t sub_274440088()
{
  result = qword_28094B038;
  if (!qword_28094B038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094B038);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WorkflowActionRemovalMode(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void sub_274440290(uint64_t a1)
{
  sub_274441FA0(319, &qword_28094B058, &qword_28094AE80, &qword_27464A2E0);
  if (v1 <= 0x3F)
  {
    sub_274441FA0(319, &unk_28094B060, &qword_28094AE88, &qword_27464A2E8);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
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

uint64_t sub_274440624(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_274440664(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2744406BC(uint64_t a1)
{
  sub_274441FF4(319, &qword_28094B080, MEMORY[0x277D839B0]);
  if (v1 <= 0x3F)
  {
    sub_274441FA0(319, &qword_28094B088, &qword_28094B090, &qword_27464AAD8);
    if (v2 <= 0x3F)
    {
      sub_274441FA0(319, &qword_28094B098, &qword_28094B0A0, &qword_27464AAE0);
      if (v3 <= 0x3F)
      {
        sub_274441FF4(319, &qword_28094B0A8, &type metadata for WorkflowEditorOptions.ScrollingBehavior);
        if (v4 <= 0x3F)
        {
          sub_274441FF4(319, &qword_28094B0B0, &type metadata for WorkflowEditorOptions.AuxiliaryBarVisibility);
          if (v5 <= 0x3F)
          {
            sub_274441FA0(319, &qword_28094B0B8, &qword_28094B0C0, &qword_27464AB18);
            if (v6 <= 0x3F)
            {
              sub_274441FF4(319, &qword_28094B0C8, &type metadata for WorkflowEditorOptions.VariablePickingState);
              if (v7 <= 0x3F)
              {
                sub_274441FF4(319, &qword_28094B0D0, MEMORY[0x277D837D0]);
                if (v8 <= 0x3F)
                {
                  sub_274441FF4(319, &qword_28094B0D8, &type metadata for WorkflowEditorOptions.ParameterSelectionState);
                  if (v9 <= 0x3F)
                  {
                    swift_updateClassMetadata2();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_274441FA0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_274638FCC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_274441FF4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_274638FCC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *sub_274442050(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14WorkflowEditor0aB7OptionsC20VariablePickingStateO(uint64_t a1)
{
  if ((*(a1 + 48) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 48) & 3;
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_274442164(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 49))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2744421A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_2744421F8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_14WorkflowEditor0aB7OptionsC23ParameterSelectionStateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_274442248(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_274442298(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_2744422F0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_274442340(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_274442380(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2744423E0()
{
  result = qword_28094B140;
  if (!qword_28094B140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094B020, &qword_27464A778);
    sub_274442498();
    sub_27440CA78(&unk_2809548B0, &qword_28094B180, &unk_274660030, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094B140);
  }

  return result;
}

unint64_t sub_274442498()
{
  result = qword_28094B148;
  if (!qword_28094B148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094B018, &qword_27464A770);
    sub_274442550();
    sub_27440CA78(&qword_2809548A0, &unk_28094B170, &unk_27464AD70, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094B148);
  }

  return result;
}

unint64_t sub_274442550()
{
  result = qword_28094B150;
  if (!qword_28094B150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094B010, &qword_27464A768);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094AFC0, &qword_27464A700);
    sub_27443FD84();
    swift_getOpaqueTypeConformance2();
    sub_27440CA78(&qword_28094B158, &unk_28094B160, &qword_27464AD68, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094B150);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_274442658(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_274442698(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2744426EC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

void *sub_27444272C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 == 1)
  {
    v7 = result;
    swift_unknownObjectRetain();
  }

  else
  {
    if (a7)
    {
      return result;
    }

    swift_unknownObjectRetain();
  }
}

void *sub_2744427B0(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_4(uint64_t a1)
{
  *(v1 + 40) = a1;

  return sub_274638F9C();
}

uint64_t OUTLINED_FUNCTION_8_2(uint64_t result)
{
  *v1 = result;
  *(result + 24) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_10_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_12_0(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_13_2(uint64_t a1)
{

  return sub_274638F8C();
}

uint64_t OUTLINED_FUNCTION_24_1()
{

  return sub_274638F7C();
}

uint64_t OUTLINED_FUNCTION_31_1(uint64_t a1)
{

  return sub_274638FAC();
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_274442A44(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_274442A64(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
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

  *(result + 25) = v3;
  return result;
}

unint64_t sub_274442AA8()
{
  result = qword_28094B188;
  if (!qword_28094B188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094B188);
  }

  return result;
}

uint64_t sub_274442AFC@<X0>(uint64_t a1@<X8>)
{
  sub_2746394BC();
  sub_27444365C();
  sub_27463BACC();
  sub_27463BB0C();
  if (v10[4] == v10[0])
  {
    v2 = sub_27463941C();
    v3 = a1;
    v4 = 1;
  }

  else
  {
    v5 = sub_27463BB3C();
    v7 = v6;
    v8 = sub_27463941C();
    (*(*(v8 - 8) + 16))(a1, v7, v8);
    v5(v10, 0);
    v3 = a1;
    v4 = 0;
    v2 = v8;
  }

  return __swift_storeEnumTagSinglePayload(v3, v4, 1, v2);
}

uint64_t sub_274442C1C(unint64_t a1)
{
  if (a1 >> 62)
  {
    result = sub_27463C27C();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  sub_2744535A4();
  if ((a1 & 0xC000000000000001) != 0)
  {
    return MEMORY[0x277C58B20](0, a1);
  }

  else
  {
  }
}

void *sub_274442C98(uint64_t a1)
{
  result = sub_274443724(a1);
  if (v4)
  {
    goto LABEL_8;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_0_7();
  if (v5)
  {
    return OUTLINED_FUNCTION_2_5();
  }

  OUTLINED_FUNCTION_3_5();
  return sub_274443764(v6, v7, v8, v9, v10);
}

uint64_t sub_274442D1C(uint64_t a1)
{
  result = sub_274443724(a1);
  if (v4)
  {
    goto LABEL_8;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_0_7();
  if (v5)
  {
    return OUTLINED_FUNCTION_2_5();
  }

  OUTLINED_FUNCTION_3_5();
  return sub_274443808(v6, v7, v8, v9, v10);
}

void sub_274442D88(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_2744436B4(a1 + 32, a2);
  }

  else
  {
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    OUTLINED_FUNCTION_1_5(a2, 0);
  }
}

void sub_274442DA8(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_274434ED4(a1 + 32, a2);
  }

  else
  {
    OUTLINED_FUNCTION_1_5(a2, 0);
  }
}

uint64_t sub_274442DDC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v7);
}

double sub_274442E88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B198, &qword_27464AED0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9[-v1];
  sub_274442AFC(&v9[-v1]);
  v3 = sub_27463941C();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_2744435F4(v2);
    return 0.0;
  }

  else
  {
    sub_2746396EC();
    v9[8] = v5 & 1;
    v9[0] = v6 & 1;
    sub_2746393FC();
    v4 = v7;
    (*(*(v3 - 8) + 8))(v2, v3);
  }

  return v4;
}

double sub_274442FAC(__n128 a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double *a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  v12 = a8[1];
  if (*a8 != 0.0)
  {
    return sub_27444302C(a3, a4 & 1, a5, a6 & 1, a9, a10 & 1, a11, a12 & 1, *a8, v12);
  }

  v13 = 0.0;
  if (v12 != 0.0)
  {
    return sub_27444302C(a3, a4 & 1, a5, a6 & 1, a9, a10 & 1, a11, a12 & 1, *a8, v12);
  }

  return v13;
}

double sub_27444302C(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8, double result, double a10)
{
  v10 = result / a10;
  if (a6)
  {
    *&a5 = INFINITY;
  }

  if (*&a5 < result)
  {
    result = *&a5;
  }

  if (a2)
  {
    *&a1 = INFINITY;
  }

  if (*&a1 < result)
  {
    result = *&a1;
  }

  if (a8)
  {
    *&a7 = INFINITY;
  }

  if (*&a7 < a10)
  {
    a10 = *&a7;
  }

  if (a4)
  {
    *&a3 = INFINITY;
  }

  if (*&a3 < a10)
  {
    a10 = *&a3;
  }

  if (result / a10 >= v10)
  {
    return v10 * a10;
  }

  return result;
}

uint64_t sub_2744430A4(uint64_t a1, char a2, uint64_t a3, char a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, uint64_t a9, double *a10, uint64_t a11, char a12, uint64_t a13, char a14)
{
  v33 = a3;
  v34 = a11;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B198, &qword_27464AED0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v33 - v24;
  v26 = sub_27463941C();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v33 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274442AFC(v25);
  if (__swift_getEnumTagSinglePayload(v25, 1, v26) == 1)
  {
    return sub_2744435F4(v25);
  }

  (*(v27 + 32))(v29, v25, v26);
  v31 = *a10;
  v32 = a10[1];
  if (*a10 != 0.0 || v32 != 0.0)
  {
    v40 = a2 & 1;
    v39 = a4 & 1;
    v38 = a12 & 1;
    v37 = a14 & 1;
    sub_27444302C(a1, a2 & 1, v33, a4 & 1, v34, a12 & 1, a13, a14 & 1, v31, v32);
    v41.origin.x = a5;
    v41.origin.y = a6;
    v41.size.width = a7;
    v41.size.height = a8;
    CGRectGetMidX(v41);
    v42.origin.x = a5;
    v42.origin.y = a6;
    v42.size.width = a7;
    v42.size.height = a8;
    CGRectGetMidY(v42);
    sub_27463B1DC();
    v36 = 0;
    v35 = 0;
    sub_27463940C();
  }

  return (*(v27 + 8))(v29, v26);
}

uint64_t (*sub_2744434DC(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_27463900C();
  return sub_274443550;
}

void sub_274443550(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t sub_2744435A0()
{
  result = qword_28094B190;
  if (!qword_28094B190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094B190);
  }

  return result;
}

uint64_t sub_2744435F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B198, &qword_27464AED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_27444365C()
{
  result = qword_28094B1A0;
  if (!qword_28094B1A0)
  {
    sub_2746394BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094B1A0);
  }

  return result;
}

uint64_t sub_2744436B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B1A8, &qword_27464AED8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_274443764(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 8 * a2);
    v6 = *(a5 + 56) + 24 * a2;
    v7 = *v6;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    *result = *v6;
    result[1] = v8;
    *(result + 16) = v9;
    v10 = v5;
    sub_2744438B8(v7, v8, v9);
    return v10;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_274443808(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    v6 = *(a5 + 56) + 16 * a2;
    v7 = *v6;
    v8 = *(v6 + 8);
    *result = *v6;
    *(result + 8) = v8;

    sub_2744438AC(v7);
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

id sub_2744438B8(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

void OUTLINED_FUNCTION_1_5(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  a1[1] = a2;
  a1[2] = a2;
  *a1 = a2;
}

id sub_274443914(void *a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_4_3();
  sub_27463B66C();
  OUTLINED_FUNCTION_29_1();

  v3 = [v2 initWithSymbolName_];

  return v3;
}

BOOL sub_274443980(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 32))();
  v3 = sub_27443B4C4();

  if (v3)
  {
    return 1;
  }

  v5 = OUTLINED_FUNCTION_13_3();
  v7 = v6(v5);
  sub_274530580();
  v9 = v8;

  v4 = v9 != 0;
  return v4;
}

id sub_274443A24()
{
  v0 = WFUserInterfaceFromViewController();

  return v0;
}

void sub_274443A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 32))(a3, a4);
  v6 = &v5[OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_editorDelegate];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 1);

  if (Strong)
  {
    ObjectType = swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820, &unk_27464AF60);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_274648560;
    v11 = *(*(a1 + 32) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
    *(v10 + 32) = v11;
    v14 = 0;
    v12 = *(v8 + 8);
    v13 = v11;
    v12(v10, &v14, ObjectType, v8);
    swift_unknownObjectRelease();
  }
}

id sub_274443B78(unint64_t a1, void *Strong, uint64_t a3, uint64_t a4)
{
  v8 = a1;
  v9 = *(a1 + 32);
  v10 = OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action;
  v11 = *(v9 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  v13 = v11;
  v270 = v4;
  if (!sub_274443980(a3, a4) && !v12)
  {
    v254 = v13;
    v255 = v10;
    v268 = a3;
    v269 = a4;
    v16 = [objc_opt_self() clearColor];
    v17 = [objc_allocWithZone(MEMORY[0x277D79FB8]) initWithColor_];

    v253 = MEMORY[0x277D84F90];
    v276 = MEMORY[0x277D84F90];
    sub_27463B70C("Show Info", 9);
    if (qword_2809492C0 != -1)
    {
      goto LABEL_139;
    }

    while (1)
    {
      v18 = qword_28094BB00;
      v19 = sub_27463B66C();
      v20 = sub_27463B66C();

      v266 = v18;
      v21 = [v18 localizedStringForKey:v19 value:v20 table:0];

      sub_27463B6AC();
      v22 = objc_allocWithZone(MEMORY[0x277D7A158]);
      v256 = v17;
      v23 = sub_27446D8F0(0x7269632E6F666E69, 0xEB00000000656C63, v256);
      OUTLINED_FUNCTION_5();
      v24 = swift_allocObject();
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_12_1();
      v25 = swift_allocObject();
      v33 = OUTLINED_FUNCTION_11_3(v25, v26, v27, v28, v29, v30, v31, v32, v248, v249, v250, v251, v252, v253, v254, v255, v256, v258, v259, v260, v263, v266, v268, v269);
      v33[4] = v24;
      v33[5] = v8;
      v33[6] = Strong;
      v34 = 0x277D7D000uLL;
      v35 = objc_allocWithZone(MEMORY[0x277D7D790]);
      swift_unknownObjectRetain();
      v36 = OUTLINED_FUNCTION_10_3();
      sub_2744465E4(v36, v37, v23, v38, v25);
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_7_4();
      if (v40)
      {
        OUTLINED_FUNCTION_0_8(v39);
        sub_27463B85C();
      }

      OUTLINED_FUNCTION_13_3();
      sub_27463B8AC();
      if ([*(v9 + v255) isDeletable])
      {
        v41 = OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_isFavorite;
        if (*(v9 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_isFavorite) == 1)
        {
          sub_27463B70C("Unpin", 5);
        }

        else
        {
          sub_27463B70C("Pin", 3);
        }

        v42 = sub_27463B66C();
        v43 = sub_27463B66C();

        v44 = OUTLINED_FUNCTION_14_2(v267, sel_localizedStringForKey_value_table_, v42);

        sub_27463B6AC();
        if (*(v9 + v41))
        {
          v45 = 0x73616C732E6E6970;
        }

        else
        {
          v45 = 7235952;
        }

        if (*(v9 + v41))
        {
          v46 = 0xE900000000000068;
        }

        else
        {
          v46 = 0xE300000000000000;
        }

        v47 = objc_allocWithZone(MEMORY[0x277D7A158]);
        sub_27446D8F0(v45, v46, v257);
        v48 = swift_allocObject();
        *(v48 + 16) = v8;
        *(v48 + 24) = Strong;
        objc_allocWithZone(MEMORY[0x277D7D790]);
        swift_unknownObjectRetain();
        v49 = OUTLINED_FUNCTION_6_2();
        sub_2744465E4(v49, v50, v51, v52, v48);
        OUTLINED_FUNCTION_17_0();
        OUTLINED_FUNCTION_7_4();
        if (v40)
        {
LABEL_142:
          OUTLINED_FUNCTION_0_8(v53);
          sub_27463B85C();
        }

        OUTLINED_FUNCTION_13_3();
        sub_27463B8AC();
        v252 = v276;
      }

      else
      {
        v252 = v276;
      }

      v54 = OUTLINED_FUNCTION_5_5();
      v260 = v56;
      v263 = v55;
      v57 = v56(v54);
      v58 = sub_274449FCC(v57);

      if (v58)
      {
        if (sub_274449E74())
        {
          sub_27463B70C("Expand", 6);
        }

        else
        {
          sub_27463B70C("Collapse", 8);
        }

        v59 = sub_27463B66C();
        v60 = sub_27463B66C();

        v61 = OUTLINED_FUNCTION_14_2(v267, sel_localizedStringForKey_value_table_, v59);

        sub_27463B6AC();
        v62 = sub_274449E74();
        if (v62)
        {
          v63 = 0xD000000000000019;
        }

        else
        {
          v63 = 0xD00000000000001BLL;
        }

        if (v62)
        {
          v64 = "rectangle.compress.vertical";
        }

        else
        {
          v64 = "rwise”";
        }

        v65 = objc_allocWithZone(MEMORY[0x277D7A158]);
        sub_27446D8F0(v63, v64 | 0x8000000000000000, v257);
        OUTLINED_FUNCTION_5();
        v66 = swift_allocObject();
        swift_unknownObjectWeakInit();
        OUTLINED_FUNCTION_12_1();
        v67 = swift_allocObject();
        v75 = OUTLINED_FUNCTION_11_3(v67, v68, v69, v70, v71, v72, v73, v74, v248, v249, v250, v251, v252, v253, v254, v255, v257, v258, v259, v260, v263, v267, v268, v269);
        v75[4] = v66;
        v75[5] = v8;
        v75[6] = Strong;
        objc_allocWithZone(*(v34 + 1936));
        swift_unknownObjectRetain();
        v76 = OUTLINED_FUNCTION_6_2();
        sub_2744465E4(v76, v77, v78, v79, v67);
        OUTLINED_FUNCTION_17_0();
        OUTLINED_FUNCTION_1_6();
        if (v40)
        {
          v246 = OUTLINED_FUNCTION_0_8(v80);
          OUTLINED_FUNCTION_16_2(v246);
        }

        OUTLINED_FUNCTION_4_3();
        sub_27463B8AC();
        v252 = v276;
      }

      v81 = OUTLINED_FUNCTION_5_5();
      v83 = v82(v81);
      v84 = &v83[OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_editorDelegate];
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v85 = *(v84 + 1);

      v258 = v9;
      if (!Strong)
      {
        goto LABEL_73;
      }

      sub_2746383BC();
      if (!swift_dynamicCastClass() || (v17 = 0x277D7C000, objc_opt_self(), (v86 = swift_dynamicCastObjCClass()) == 0))
      {
        swift_unknownObjectRelease();
        goto LABEL_73;
      }

      v8 = v86;
      v87 = v254;
      v88 = OUTLINED_FUNCTION_5_5();
      v89 = v260(v88);
      v90 = [v89 actionTree];

      v91 = [v90 actionsGroupedWithAction_];
      if (!v91)
      {
        swift_unknownObjectRelease();

        goto LABEL_73;
      }

      v249 = v8;
      v250 = v85;
      v251 = v87;
      v259 = Strong;
      sub_274412734(0, &qword_28094E040, 0x277D7C098);
      v92 = sub_27463B81C();

      v93 = MEMORY[0x277D84F90];
      v274 = MEMORY[0x277D84F90];
      v94 = sub_274453594();
      v95 = 0;
      v8 = v92 & 0xC000000000000001;
      Strong = (v92 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v94 == v95)
        {

          v99 = sub_274453594();
          v100 = 0;
          v17 = (v93 & 0xC000000000000001);
          v8 = &unk_279EDC000;
          while (v99 != v100)
          {
            if (v17)
            {
              v101 = MEMORY[0x277C58B20](v100, v93);
            }

            else
            {
              if (v100 >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_136;
              }

              v101 = *(v93 + 8 * v100 + 32);
            }

            v102 = v101;
            if (__OFADD__(v100, 1))
            {
              goto LABEL_135;
            }

            v103 = [v101 mode];

            ++v100;
            v104 = v103 == 1;
            v9 = v258;
            if (v104)
            {
LABEL_72:
              swift_unknownObjectRelease();

              goto LABEL_73;
            }
          }

          for (i = 0; ; ++i)
          {
            if (v99 == i)
            {
              goto LABEL_72;
            }

            if (v17)
            {
              v106 = MEMORY[0x277C58B20](i, v93);
            }

            else
            {
              if (i >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_138;
              }

              v106 = *(v93 + 8 * i + 32);
            }

            v107 = v106;
            if (__OFADD__(i, 1))
            {
              goto LABEL_137;
            }

            if ([v106 mode] == 2)
            {
              break;
            }
          }

          v232 = (v260)(v268, v269);
          v233 = [v232 indexOfAction_];

          if (v233 == sub_274637CAC())
          {
            swift_unknownObjectRelease();

LABEL_73:
          }

          else
          {
            sub_27463B70C("Put Back “Otherwise”", 24);
            v234 = sub_27463B66C();
            v235 = sub_27463B66C();

            v236 = OUTLINED_FUNCTION_14_2(v267, sel_localizedStringForKey_value_table_, v234);

            v237 = sub_27463B6AC();
            v239 = v238;

            v240 = objc_allocWithZone(MEMORY[0x277D7A158]);
            v241 = OUTLINED_FUNCTION_9_2();
            v242 = sub_27446D8F0(v241 & 0xFFFFFFFFFFFFLL | 0x7262000000000000, 0xEC00000068636E61, v257);
            OUTLINED_FUNCTION_2_6();
            v243 = swift_allocObject();
            Strong = v259;
            v243[2] = v249;
            v243[3] = v259;
            v243[4] = v250;
            v243[5] = v233;
            objc_allocWithZone(*(v34 + 1936));
            v244 = v251;
            swift_unknownObjectRetain();
            sub_2744465E4(v237, v239, v242, sub_274446890, v243);
            MEMORY[0x277C57F30]();
            OUTLINED_FUNCTION_8_3();
            if (v40)
            {
              OUTLINED_FUNCTION_0_8(v245);
              sub_27463B85C();
            }

            sub_27463B8AC();
            v252 = v276;

            swift_unknownObjectRelease();
            v9 = v258;
          }

          v275 = MEMORY[0x277D84F90];
          v108 = OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_accessResourcesAllowingMultipleAccounts;
          if (!sub_274453594() && !sub_274453594())
          {
            v133 = MEMORY[0x277D84F90];
            v135 = v267;
            goto LABEL_104;
          }

          v264 = *(v9 + v108);
          v109 = sub_274453594();
          if (v109)
          {
            v110 = v109;
            v261 = sub_274412734(0, &qword_280949EA0, 0x277D7A158);
            if (v110 >= 1)
            {
              v259 = (v264 & 0xC000000000000001);

              for (j = 0; j != v110; ++j)
              {
                if (v259)
                {
                  v112 = MEMORY[0x277C58B20](j, v264);
                }

                else
                {
                  v112 = *(v264 + 8 * j + 32);
                }

                v113 = v112;
                sub_27463B70C("Manage accounts…", 18);
                sub_27463B66C();
                OUTLINED_FUNCTION_29_1();
                v114 = sub_27463B66C();

                v115 = [v267 localizedStringForKey:Strong value:v114 table:0];

                v116 = sub_27463B6AC();
                v118 = v117;

                v119 = sub_274443914(0x662E6E6F73726570);
                OUTLINED_FUNCTION_2_6();
                v120 = swift_allocObject();
                v128 = OUTLINED_FUNCTION_11_3(v120, v121, v122, v123, v124, v125, v126, v127, v248, v249, v250, v251, v252, v253, v254, v255, v257, v258, v259, v261, v264, v267, v268, v269);
                *(v128 + 32) = v113;
                *(v128 + 40) = v270;
                v129 = objc_allocWithZone(MEMORY[0x277D7D790]);
                v130 = v113;
                v131 = v270;
                Strong = sub_2744465E4(v116, v118, v119, sub_2744467F4, v120);
                MEMORY[0x277C57F30]();
                v132 = *((v275 & 0xFFFFFFFFFFFFFF8) + 0x18);
                if (*((v275 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v132 >> 1)
                {
                  OUTLINED_FUNCTION_0_8(v132);
                  sub_27463B85C();
                }

                sub_27463B8AC();
              }

              v133 = v275;

              v9 = v258;
              goto LABEL_87;
            }

            __break(1u);
          }

          else
          {
            v133 = MEMORY[0x277D84F90];
LABEL_87:
            v8 = *(v9 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_accessResourcesThatCanLogOut);
            v134 = sub_274453594();
            v135 = v267;
            if (!v134)
            {
              goto LABEL_104;
            }

            v34 = v134;
            v265 = sub_274412734(0, &qword_280949EA0, 0x277D7A158);
            if (v34 >= 1)
            {
              v262 = v8 & 0xC000000000000001;

              v136 = 0;
              do
              {
                if (v262)
                {
                  v137 = MEMORY[0x277C58B20](v136, v8);
                }

                else
                {
                  v137 = *(v8 + 8 * v136 + 32);
                }

                v138 = v137;
                if ([v138 isAvailable])
                {
                  sub_27463B70C("Sign Out", 8);
                }

                else
                {
                  sub_27463B70C("Allow Access", 12);
                }

                v139 = sub_27463B66C();
                v140 = sub_27463B66C();

                v141 = OUTLINED_FUNCTION_14_2(v135, sel_localizedStringForKey_value_table_, v139);

                Strong = sub_27463B6AC();
                LODWORD(v140) = [v138 isAvailable];

                if (v140)
                {
                  v142 = 0x662E6E6F73726570;
                }

                else
                {
                  v142 = 0x72616D6B63656863;
                }

                v143 = sub_274443914(v142);
                OUTLINED_FUNCTION_5();
                v144 = swift_allocObject();
                swift_unknownObjectWeakInit();
                OUTLINED_FUNCTION_2_6();
                v145 = swift_allocObject();
                v153 = OUTLINED_FUNCTION_11_3(v145, v146, v147, v148, v149, v150, v151, v152, v248, v249, v250, v251, v252, v253, v254, v255, v257, v258, v259, v262, v265, v267, v268, v269);
                *(v153 + 32) = v144;
                *(v153 + 40) = v138;
                objc_allocWithZone(MEMORY[0x277D7D790]);
                v154 = v138;
                v155 = OUTLINED_FUNCTION_4_3();
                sub_2744465E4(v155, v156, v143, v157, v145);
                MEMORY[0x277C57F30]();
                OUTLINED_FUNCTION_1_6();
                if (v40)
                {
                  v159 = OUTLINED_FUNCTION_0_8(v158);
                  OUTLINED_FUNCTION_16_2(v159);
                }

                ++v136;
                OUTLINED_FUNCTION_4_3();
                sub_27463B8AC();

                v135 = v267;
              }

              while (v34 != v136);
              v133 = v275;

LABEL_104:
              v260 = v133;
              v273 = MEMORY[0x277D84F90];
              sub_27463B70C("Duplicate", 9);
              sub_27463B66C();
              OUTLINED_FUNCTION_29_1();
              v160 = sub_27463B66C();

              v161 = [v135 localizedStringForKey:Strong value:v160 table:0];

              sub_27463B6AC();
              v162 = sub_274412734(0, &qword_280949EA0, 0x277D7A158);
              v163 = sub_274443914(0xD000000000000015);
              OUTLINED_FUNCTION_5();
              v164 = swift_allocObject();
              swift_unknownObjectWeakInit();
              OUTLINED_FUNCTION_12_1();
              v165 = swift_allocObject();
              v165[2] = v268;
              v165[3] = v269;
              v165[4] = v164;
              v165[5] = v254;
              v165[6] = v270;
              objc_allocWithZone(MEMORY[0x277D7D790]);
              v166 = v254;
              v167 = v270;
              v168 = OUTLINED_FUNCTION_10_3();
              sub_2744465E4(v168, v169, v163, v170, v165);
              MEMORY[0x277C57F30]();
              v171 = *((v273 & 0xFFFFFFFFFFFFFF8) + 0x18);
              if (*((v273 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v171 >> 1)
              {
                OUTLINED_FUNCTION_0_8(v171);
                sub_27463B85C();
              }

              sub_27463B8AC();
              sub_27463B70C("Copy", 4);
              v172 = sub_27463B66C();
              v173 = sub_27463B66C();

              v174 = OUTLINED_FUNCTION_14_2(v267, sel_localizedStringForKey_value_table_, v172);

              sub_27463B6AC();
              v270 = v162;
              v175 = sub_274443914(0x642E6E6F2E636F64);
              OUTLINED_FUNCTION_5();
              v176 = swift_allocObject();
              v259 = v167;
              swift_unknownObjectWeakInit();
              OUTLINED_FUNCTION_2_6();
              v177 = swift_allocObject();
              v177[2] = v268;
              v177[3] = v269;
              v177[4] = v176;
              v177[5] = v166;
              objc_allocWithZone(MEMORY[0x277D7D790]);
              v263 = v166;
              v178 = OUTLINED_FUNCTION_10_3();
              sub_2744465E4(v178, v179, v175, v180, v177);
              MEMORY[0x277C57F30]();
              OUTLINED_FUNCTION_7_4();
              if (v40)
              {
                OUTLINED_FUNCTION_0_8(v181);
                sub_27463B85C();
              }

              OUTLINED_FUNCTION_13_3();
              sub_27463B8AC();
              sub_274412734(0, &qword_28094E040, 0x277D7C098);
              if (sub_2744F3CC8())
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820, &unk_27464AF60);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_27464AEE0;
                sub_27463B70C("Paste Above", 11);
                v183 = sub_27463B66C();
                v184 = sub_27463B66C();

                v185 = OUTLINED_FUNCTION_14_2(v267, sel_localizedStringForKey_value_table_, v183);

                v186 = sub_27463B6AC();
                v188 = v187;

                v189 = OUTLINED_FUNCTION_9_2();
                v190 = sub_274443914((v189 & 0xFFFFFFFFFFFFLL | 0x7075000000000000));
                OUTLINED_FUNCTION_5();
                v191 = swift_allocObject();
                swift_unknownObjectWeakInit();
                OUTLINED_FUNCTION_2_6();
                v192 = swift_allocObject();
                v192[2] = v268;
                v192[3] = v269;
                v192[4] = v191;
                v192[5] = v263;
                v193 = objc_allocWithZone(MEMORY[0x277D7D790]);
                v194 = v263;
                *(inited + 32) = sub_2744465E4(v186, v188, v190, sub_274446878, v192);
                sub_27463B70C("Paste Below", 11);
                v195 = sub_27463B66C();
                v196 = sub_27463B66C();

                v197 = OUTLINED_FUNCTION_14_2(v267, sel_localizedStringForKey_value_table_, v195);

                v198 = sub_27463B6AC();
                v200 = v199;

                v201 = OUTLINED_FUNCTION_9_2();
                v202 = sub_274443914((v201 & 0xFFFFFFFFFFFFLL | 0x6F64000000000000));
                OUTLINED_FUNCTION_2_6();
                v203 = swift_allocObject();
                v203[2] = v268;
                v203[3] = v269;
                v203[4] = v167;
                v203[5] = v194;
                objc_allocWithZone(MEMORY[0x277D7D790]);
                v204 = v194;
                v205 = v167;
                *(inited + 40) = sub_2744465E4(v198, v200, v202, sub_274446884, v203);
                sub_27445BB24(inited);
              }

              v272 = MEMORY[0x277D84F90];
              v206 = MEMORY[0x277D84F90];
              v207 = v260;
              if ([*(v258 + v255) isDeletable])
              {
                sub_27463B70C("Remove", 6);
                v208 = sub_27463B66C();
                v209 = sub_27463B66C();

                v210 = [v267 localizedStringForKey:v208 value:v209 table:0];

                sub_27463B6AC();
                sub_274443914(0x69632E6B72616D78);
                OUTLINED_FUNCTION_5();
                v211 = swift_allocObject();
                swift_unknownObjectWeakInit();
                OUTLINED_FUNCTION_2_6();
                v212 = swift_allocObject();
                v220 = OUTLINED_FUNCTION_11_3(v212, v213, v214, v215, v216, v217, v218, v219, v248, v249, v250, v251, v252, v253, v254, v255, v257, v258, v167, v260, v263, v267, v268, v269);
                *(v220 + 32) = v211;
                *(v220 + 40) = v263;
                objc_allocWithZone(MEMORY[0x277D7D790]);
                v221 = v263;
                v222 = OUTLINED_FUNCTION_6_2();
                sub_2744466D8(v222, v223, v224, 1, v225, v212);
                MEMORY[0x277C57F30]();
                OUTLINED_FUNCTION_1_6();
                if (v40)
                {
                  v247 = OUTLINED_FUNCTION_0_8(v226);
                  OUTLINED_FUNCTION_16_2(v247);
                }

                OUTLINED_FUNCTION_4_3();
                sub_27463B8AC();
                v206 = v272;
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B210, &unk_27464AF50);
              v17 = swift_initStackObject();
              *(v17 + 1) = xmmword_27464AEF0;
              *(v17 + 4) = v252;
              *(v17 + 5) = v207;
              *(v17 + 6) = v273;
              *(v17 + 7) = v206;
              v271 = MEMORY[0x277D84F90];

              v9 = 0;
              Strong = &unk_280949E80;
              v8 = &selRef_dropTargetUpdated;
              while (1)
              {
                if (v9 == 4)
                {
                  sub_274412734(0, &unk_28094B220, 0x277D7D788);
                  OUTLINED_FUNCTION_29_1();
                  swift_setDeallocating();
                  sub_2744EBBD8();

                  v14 = sub_27444649C(v253, &selRef_initWithElements_);

                  return v14;
                }

                if (v9 > 3)
                {
                  __break(1u);
                  goto LABEL_133;
                }

                v227 = *(v17 + v9 + 4);
                if (v227 >> 62)
                {
                  if (!sub_27463C27C())
                  {
LABEL_120:
                    ++v9;
                    continue;
                  }
                }

                else if (!*((v227 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_120;
                }

                v228 = objc_allocWithZone(MEMORY[0x277D7D7D0]);

                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E80, &unk_274648620);
                v229 = sub_27463B7FC();

                v230 = [v228 initWithMenuElements_];

                if (!v230)
                {
                  goto LABEL_120;
                }

                MEMORY[0x277C57F30]();
                OUTLINED_FUNCTION_8_3();
                if (v40)
                {
                  OUTLINED_FUNCTION_0_8(v231);
                  sub_27463B85C();
                }

                ++v9;
                sub_27463B8AC();
                v253 = v271;
              }
            }
          }

          __break(1u);
          goto LABEL_142;
        }

        if (v8)
        {
          v96 = MEMORY[0x277C58B20](v95, v92);
        }

        else
        {
          if (v95 >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_134;
          }

          v96 = *(v92 + 8 * v95 + 32);
        }

        v97 = v96;
        if (__OFADD__(v95, 1))
        {
          break;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          MEMORY[0x277C57F30]();
          OUTLINED_FUNCTION_8_3();
          if (v40)
          {
            OUTLINED_FUNCTION_0_8(v98);
            sub_27463B85C();
          }

          sub_27463B8AC();
          v93 = v274;
          ++v95;
        }

        else
        {

          ++v95;
        }

        v9 = v258;
        v34 = 0x277D7D000;
      }

LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      swift_once();
    }
  }

  return 0;
}

void sub_274445400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    (*(a5 + 80))(a2, a3, a4, a5);
  }
}

void sub_2744454D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_274449E74();
    sub_274445568(a2, v11, a4, a5, (v10 & 1) == 0);
  }
}

void sub_274445568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = (*(a4 + 8))(a3, a4);
  v7 = sub_274449FCC(v6);

  if (v7)
  {
    sub_274449F00(a5 & 1);
    v8 = OUTLINED_FUNCTION_13_3();

    v9(v8);
  }
}

void sub_27444562C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [a1 createAccompanyingActionWithMode_];
  ObjectType = swift_getObjectType();
  (*(a3 + 24))(v7, a4, ObjectType, a3);
}

void sub_2744456C0(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(a1, ObjectType, &protocol descriptor for AccountConfigurableAccessResource))
  {
    v6 = v5;
    v7 = swift_getObjectType();
    v8 = *(v6 + 8);
    v9 = a1;
    v8(v7, v6);
    v10 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B230, &unk_27464BDA0));
    v11 = sub_274639CDC();
    [a2 presentViewController:v11 animated:1 completion:0];
  }
}

void sub_2744457A8(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ([a2 isAvailable])
    {
      [a2 logOut];
    }

    else
    {
      v5 = sub_274443A24();
      aBlock[4] = CGSizeMake;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2744458C4;
      aBlock[3] = &block_descriptor_42;
      v6 = _Block_copy(aBlock);
      [a2 makeAvailableWithUserInterface:v5 completionHandler:v6];

      _Block_release(v6);
      swift_unknownObjectRelease();
    }
  }
}

void sub_2744458C4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_27444593C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(a5 + 8))(a4, a5);
  v10 = [v9 indexOfAction_];

  if (v10 != sub_274637CAC())
  {
    v11 = (*(a5 + 32))(a4, a5);
    v12 = &v11[OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_editorDelegate];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v14 = *(v12 + 1);

    if (Strong)
    {
      v15 = __OFADD__(v10, 1);
      v16 = v10 + 1;
      if (v15)
      {
        __break(1u);
      }

      else
      {
        ObjectType = swift_getObjectType();
        (*(v14 + 32))(a1, v16, ObjectType, v14);
        swift_unknownObjectRelease();
      }
    }
  }
}

void *sub_274445A64(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820, &unk_27464AF60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_274648560;
    *(inited + 32) = a2;
    v12 = a2;
    sub_274445B8C(inited, a4, a5);
    v14 = v13;
    swift_setDeallocating();
    sub_2744EBB98();
    sub_274412734(0, &qword_28094E040, 0x277D7C098);
    v15 = sub_2744F386C(v14);

    sub_27444593C(v15, a3, v12, a4, a5);
  }

  return result;
}

void sub_274445B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x277D84F90];
  v6 = sub_274453594();
  if (v6)
  {
    v7 = v6;
    OUTLINED_FUNCTION_15_1(v6);
    if (v7 < 0)
    {
      goto LABEL_54;
    }

    v8 = 0;
    v9 = v59;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x277C58B20](v8, a1);
      }

      else
      {
        v10 = *(a1 + 8 * v8 + 32);
      }

      v11 = v10;

      v59 = v9;
      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
      if (v13 >= v12 >> 1)
      {
        v14 = OUTLINED_FUNCTION_0_8(v12);
        sub_2744512AC(v14, v13 + 1, 1);
      }

      ++v8;
      *(v9 + 16) = v13 + 1;
      *(v9 + 8 * v13 + 32) = v11;
    }

    while (v7 != v8);
    v5 = MEMORY[0x277D84F90];
  }

  v15 = sub_2745E18E8();
  v60 = MEMORY[0x277D84FA0];
  v16 = sub_274453594();
  if (!v16)
  {
LABEL_50:

    return;
  }

  v17 = v16;
  v18 = 0;
  v57 = a1;
  v58 = a1 & 0xC000000000000001;
  v53 = a1 + 32;
  v54 = a1 & 0xFFFFFFFFFFFFFF8;
  v52 = a3;
  v50 = v16;
  v51 = v15;
  while (1)
  {
    if (v58)
    {
      v19 = MEMORY[0x277C58B20](v18, a1);
    }

    else
    {
      if (v18 >= *(v54 + 16))
      {
        goto LABEL_52;
      }

      v19 = *(v53 + 8 * v18);
    }

    v20 = v19;
    if (__OFADD__(v18++, 1))
    {
      break;
    }

    if (*(v60 + 16))
    {
      sub_27463C74C();
      MEMORY[0x277C58EA0](v20);
      v22 = sub_27463C7AC();
      v23 = ~(-1 << *(v60 + 32));
      while (1)
      {
        v24 = v22 & v23;
        if (((*(v60 + 56 + (((v22 & v23) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v22 & v23)) & 1) == 0)
        {
          break;
        }

        v22 = v24 + 1;
        if (*(*(v60 + 48) + 8 * v24) == v20)
        {
          goto LABEL_47;
        }
      }
    }

    v25 = (*(a3 + 8))(a2, a3);
    v26 = [v25 actionTree];

    v27 = [v26 actionsGroupedWithAction_];
    if (v27)
    {
      v56 = v18;
      sub_274412734(0, &qword_28094E040, 0x277D7C098);
      v28 = sub_27463B81C();

      v29 = sub_274453594();
      if (v29)
      {
        v30 = v29;
        OUTLINED_FUNCTION_15_1(v29);
        if (v30 < 0)
        {
          goto LABEL_53;
        }

        v31 = 0;
        v5 = v59;
        do
        {
          if ((v28 & 0xC000000000000001) != 0)
          {
            v32 = MEMORY[0x277C58B20](v31, v28);
          }

          else
          {
            v32 = *(v28 + 8 * v31 + 32);
          }

          v33 = v32;

          v59 = v5;
          v35 = *(v5 + 16);
          v34 = *(v5 + 24);
          if (v35 >= v34 >> 1)
          {
            v36 = OUTLINED_FUNCTION_0_8(v34);
            sub_2744512AC(v36, v35 + 1, 1);
          }

          ++v31;
          *(v5 + 16) = v35 + 1;
          *(v5 + 8 * v35 + 32) = v33;
        }

        while (v30 != v31);
        a3 = v52;
        v17 = v50;
        v15 = v51;
      }

      if ((sub_27451D694(v37, v15) & 1) == 0)
      {
        sub_2745882AC(v5);
        sub_2744535A4();
        if ((v28 & 0xC000000000000001) != 0)
        {
          v40 = MEMORY[0x277C58B20](0, v28);
        }

        else
        {
          v40 = *(v28 + 32);
        }

        v41 = v40;
        v5 = MEMORY[0x277D84F90];

        v42 = sub_2744F4830();

        v43 = v42;
        OUTLINED_FUNCTION_17_0();
        OUTLINED_FUNCTION_1_6();
        if (v39)
        {
          v49 = OUTLINED_FUNCTION_0_8(v44);
          OUTLINED_FUNCTION_16_2(v49);
        }

        OUTLINED_FUNCTION_4_3();
        sub_27463B8AC();
        v45 = [v42 createAccompanyingActions];
        v18 = v56;
        if (v45)
        {
          v46 = v45;
          v47 = sub_27463B81C();
        }

        else
        {
          v47 = v5;
        }

        sub_27445BC10(v47);

        goto LABEL_47;
      }

      v5 = MEMORY[0x277D84F90];
      v18 = v56;
    }

    sub_2744F4830();
    OUTLINED_FUNCTION_17_0();
    OUTLINED_FUNCTION_1_6();
    if (v39)
    {
      v48 = OUTLINED_FUNCTION_0_8(v38);
      OUTLINED_FUNCTION_16_2(v48);
    }

    OUTLINED_FUNCTION_4_3();
    sub_27463B8AC();
LABEL_47:

    a1 = v57;
    if (v18 == v17)
    {
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
}

void *sub_274446044(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820, &unk_27464AF60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_274648560;
    *(inited + 32) = a2;
    v10 = a2;
    sub_274445B8C(inited, a3, a4);
    v12 = v11;
    swift_setDeallocating();
    sub_2744EBB98();
    sub_274412734(0, &qword_28094E040, 0x277D7C098);
    sub_2744F3BB4(v12);
  }

  return result;
}

void sub_274446138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = (*(a4 + 8))(a3, a4);
    v10 = [v9 indexOfAction_];

    if (v10 != sub_274637CAC())
    {
      sub_274412734(0, &qword_28094E040, 0x277D7C098);
      v12 = sub_2744F3DF0(v11);
      v13 = (*(a4 + 32))(a3, a4);
      v14 = &v13[OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_editorDelegate];
      swift_beginAccess();
      v15 = swift_unknownObjectWeakLoadStrong();
      v16 = *(v14 + 1);

      if (v15)
      {
        ObjectType = swift_getObjectType();
        (*(v16 + 32))(v12, v10, ObjectType, v16);

        swift_unknownObjectRelease();
        return;
      }
    }
  }
}