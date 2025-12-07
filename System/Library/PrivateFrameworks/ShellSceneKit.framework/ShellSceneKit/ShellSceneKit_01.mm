void *sub_265FCE2C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800551D8, &unk_265FEEFE0);
  v2 = *v0;
  v3 = sub_265FEC600();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_265FCF134(&v28, &v27))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 4 * v16;
      v18 = *(*(v2 + 48) + 4 * v16);
      v16 *= 80;
      v19 = (*(v2 + 56) + v16);
      v21 = v19[1];
      v20 = v19[2];
      v22 = v19[3];
      *(v31 + 10) = *(v19 + 58);
      v31[0] = v22;
      v28 = *v19;
      v29 = v21;
      v30 = v20;
      *(*(v4 + 48) + v17) = v18;
      v23 = (*(v4 + 56) + v16);
      *v23 = v28;
      v24 = v29;
      v25 = v30;
      v26 = v31[0];
      *(v23 + 58) = *(v31 + 10);
      v23[2] = v25;
      v23[3] = v26;
      v23[1] = v24;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

id sub_265FCE47C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800551E0, &unk_265FEFC70);
  v2 = *v0;
  v3 = sub_265FEC600();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_265FCE5D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800551E8, &qword_265FEEFF0);
  v2 = *v0;
  v3 = sub_265FEC600();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

unint64_t sub_265FCE734(int a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_265FDA61C(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_265FCBF04(v13, a3 & 1);
      result = sub_265FDA61C(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_16:
        sub_265FCF0EC(0, &unk_280055180, 0x277D0ACF0);
        result = sub_265FEC710();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      sub_265FCDCDC();
      result = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 4 * result) = a1;
    return result;
  }

  v18[(result >> 6) + 8] |= 1 << result;
  *(v18[6] + 8 * result) = a2;
  *(v18[7] + 4 * result) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18[2] = v20;

  return a2;
}

unint64_t sub_265FCE898(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_265FDA660(a3);
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
      sub_265FCC168(v16, a4 & 1);
      result = sub_265FDA660(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_265FEC710();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_265FCDE38();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 4 * result) = a3;
    v24 = (v21[7] + 16 * result);
    *v24 = a1;
    v24[1] = a2;
    v25 = v21[2];
    v15 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v15)
    {
      v21[2] = v26;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  v23 = v22[1];
  *v22 = a1;
  v22[1] = a2;
}

uint64_t sub_265FCEA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_265FDA6A8(a2, a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_265FCC3EC(v18, a5 & 1);
      v13 = sub_265FDA6A8(a2, a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_265FEC710();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_265FCDFB4();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    *(v23[7] + 8 * v13) = a1;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = v23[6] + 24 * v13;
  *v25 = a2;
  *(v25 + 8) = a3;
  *(v25 + 16) = a4;
  *(v23[7] + 8 * v13) = a1;
  v26 = v23[2];
  v17 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v27;

  return sub_265FC23C0(a2, a3);
}

unint64_t sub_265FCEB98(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_265FDA660(a2);
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
      sub_265FCCFB0(v14, a3 & 1);
      result = sub_265FDA660(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_265FEC710();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_265FCE5D8();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 4 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

unint64_t sub_265FCECE4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_265FDA660(a2);
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
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;

      return MEMORY[0x2821F96F8]();
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 4 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_265FCE47C();
    result = v17;
    goto LABEL_8;
  }

  sub_265FCCD44(v14, a3 & 1);
  result = sub_265FDA660(a2);
  if ((v15 & 1) == (v18 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_265FEC710();
  __break(1u);
  return MEMORY[0x2821F96F8]();
}

unint64_t sub_265FCEE2C(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_265FDA660(a2);
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
      sub_265FCCA0C(v14, a3 & 1);
      result = sub_265FDA660(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_265FEC710();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_265FCE2C0();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 4 * result) = a2;
    v21 = (v19[7] + 80 * result);
    *v21 = *a1;
    v22 = a1[1];
    v23 = a1[2];
    v24 = a1[3];
    *(v21 + 58) = *(a1 + 58);
    v21[2] = v23;
    v21[3] = v24;
    v21[1] = v22;
    v25 = v19[2];
    v13 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v13)
    {
      v19[2] = v26;
      return result;
    }

    goto LABEL_15;
  }

  v20 = v19[7] + 80 * result;

  return sub_265FCF36C(a1, v20);
}

uint64_t sub_265FCEFE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_265FCF0EC(0, &unk_2800551B0, 0x277CD9E40);
  sub_265FCF0EC(0, &unk_280055710, 0x277CD9E58);
  swift_getKeyPath();
  sub_265FCF438(&qword_2800551C0, &unk_280055720, &qword_265FEEFA8, &unk_265FEE4F4);
  sub_265FEBF30();
}

uint64_t sub_265FCF0EC(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_265FCF190(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = [v2 displayId];
  v4 = OBJC_IVAR____TtC13ShellSceneKit17FBSHardwareSource_connectedHardware;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (*(v5 + 16) && (v6 = sub_265FDA660(v3), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 16 * v6 + 8);
    swift_endAccess();
    return v8;
  }

  else
  {
    swift_endAccess();
    sub_265FEC550();
    MEMORY[0x2667756D0](0xD000000000000026, 0x8000000265FF1410);
    [v2 displayId];
    v10 = sub_265FEC6B0();
    MEMORY[0x2667756D0](v10);

    MEMORY[0x2667756D0](0xD000000000000015, 0x8000000265FF13C0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055178, &unk_265FEEF50);
    v11 = sub_265FEC090();
    v13 = v12;

    MEMORY[0x2667756D0](v11, v13);

    result = sub_265FEC5E0();
    __break(1u);
  }

  return result;
}

unint64_t sub_265FCF3C8()
{
  result = qword_2800551F0;
  if (!qword_2800551F0)
  {
    sub_265FCF0EC(255, &unk_280055180, 0x277D0ACF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800551F0);
  }

  return result;
}

uint64_t sub_265FCF438(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

void sub_265FCF484()
{
  v0 = [objc_opt_self() currentProcess];
  v1 = [v0 isApplication];

  byte_280055210 = v1;
}

uint64_t sub_265FCF4E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055218, &qword_265FEF000);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_265FEC270();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  v11 = sub_265FEC290();
  result = sub_265FD0338(v8);
  *a3 = v11;
  return result;
}

uint64_t sub_265FCF610(uint64_t a1, int *a2)
{
  v2[2] = sub_265FEC250();
  v2[3] = sub_265FEC240();
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_265FCF720;

  return v6();
}

uint64_t sub_265FCF720()
{

  v1 = sub_265FEC230();

  return MEMORY[0x2822009F8](sub_265FCF85C, v1, v0);
}

uint64_t sub_265FCF85C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_265FCF8BC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = sub_265FEC250();
  v4[3] = sub_265FEC240();
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_265FCF9CC;

  return v8();
}

uint64_t sub_265FCF9CC()
{

  v1 = sub_265FEC230();

  return MEMORY[0x2822009F8](sub_265FD0580, v1, v0);
}

uint64_t sub_265FCFB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055218, &qword_265FEF000);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_265FD03A0(a3, v25 - v10);
  v12 = sub_265FEC270();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_265FD0338(v11);
  }

  else
  {
    sub_265FEC260();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_265FEC230();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_265FEC110() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_265FD0338(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_265FD0338(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_265FCFDC8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_265FCFEC0;

  return v6(a1);
}

uint64_t sub_265FCFEC0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_265FCFFB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055218, &qword_265FEF000);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13[-v5];
  if (qword_2800547E8 != -1)
  {
    swift_once();
  }

  if (byte_280055210 == 1 && [objc_opt_self() isMainThread])
  {
    v7 = sub_265FEC250();
    MEMORY[0x28223BE20](v7);
    *&v13[-16] = a1;
    *&v13[-8] = a2;
    sub_265FE1E5C(sub_265FD0270, &v13[-32], "ShellSceneKit/Task+Utils.swift", 30, 2, 34);
  }

  else
  {
    v9 = sub_265FEC270();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    sub_265FEC250();

    v10 = sub_265FEC240();
    v11 = swift_allocObject();
    v12 = MEMORY[0x277D85700];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = a1;
    v11[5] = a2;
    sub_265FCFB08(0, 0, v6, &unk_265FEF010, v11);
  }
}

uint64_t sub_265FD01B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_265FC66D0;

  return sub_265FCF8BC(a1, v4, v5, v6);
}

uint64_t sub_265FD028C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265FC658C;

  return sub_265FCF610(a1, v4);
}

uint64_t sub_265FD0338(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055218, &qword_265FEF000);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265FD03A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055218, &qword_265FEF000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265FD0410(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265FC66D0;

  return sub_265FCFDC8(a1, v4);
}

uint64_t sub_265FD04C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265FC658C;

  return sub_265FCFDC8(a1, v4);
}

id sub_265FD0584(uint64_t *a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 < 0)
  {
    v5 = *(a2 + 9);
    v6 = [objc_allocWithZone(MEMORY[0x277D0ACE8]) initWithConfiguration_];
    v7 = sub_265FEC0D0();
    [v6 setUniqueIdentifier_];

    if (v3)
    {
      [v6 setUIKitMainLike];
      if ((v3 & 0x100) == 0)
      {
LABEL_7:
        if (v5 == 2)
        {
LABEL_9:
          v8 = sub_265FD7354();

          return v8;
        }

LABEL_8:
        [v6 setCloningSupported_];
        goto LABEL_9;
      }
    }

    else if ((v3 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    [v6 setExpectsSecureRendering];
    if (v5 == 2)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return v2;
}

id sub_265FD0790()
{
  result = [v0 CADisplay];
  if (!result)
  {
    sub_265FEC550();

    v2 = [v0 description];
    v3 = sub_265FEC0E0();
    v5 = v4;

    MEMORY[0x2667756D0](v3, v5);

    result = sub_265FEC5E0();
    __break(1u);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13ShellSceneKit7ProfileV15DisplayIdentityVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (v1 >> 1) & 0x3F00 | v1 & 0xFE;
  v3 = 0x4000 - (v2 | (v1 >> 15));
  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_265FD08BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 74))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_265FD0904(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 74) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 74) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_265FD0968(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 72);
  if ((~v3 & 0xFEFE) != 0)
  {
    v4 = *(v1 + 56);
    v5 = *(v1 + 64);
    sub_265FE0D40(v4, v5, *(v1 + 72), *v1, *(v1 + 8), *(v1 + 16), &v11);
    if (v19 == 1)
    {
      sub_265FC2440(&v11);
      *&v11 = 0;
      *(&v11 + 1) = 0xE000000000000000;
      sub_265FEC550();

      *&v11 = v4;
      *(&v11 + 1) = v5;
      LOWORD(v12) = v3;
      v10 = Profile.DisplayIdentity.description.getter();
      MEMORY[0x2667756D0](v10);

      sub_265FEC5E0();
      __break(1u);
    }

    else
    {
      v6 = v18;
      a1[6] = v17;
      a1[7] = v6;
      a1[8] = v19;
      v7 = v14;
      a1[2] = v13;
      a1[3] = v7;
      v8 = v16;
      a1[4] = v15;
      a1[5] = v8;
      v9 = v12;
      *a1 = v11;
      a1[1] = v9;
    }
  }

  else
  {
    a1[6] = 0u;
    a1[7] = 0u;
    a1[4] = 0u;
    a1[5] = 0u;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
    a1[8] = xmmword_265FEF050;
  }
}

uint64_t sub_265FD0AC4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = MEMORY[0x277D84F90];
  *&v204 = sub_265FD21A0(MEMORY[0x277D84F90]);
  *(&v204 + 1) = v6;
  *&v205 = v7;
  sub_265FE48DC(v5);
  *(&v205 + 1) = v8;
  *&v206 = v9;
  sub_265FE48DC(v5);
  *(&v206 + 1) = v10;
  *v207 = v11;
  *&v207[8] = 0;
  *&v207[16] = 0;
  *&v207[24] = -258;
  sub_265FE48DC(v5);
  *&v198 = v12;
  *(&v198 + 1) = v13;
  sub_265FE48DC(v5);
  *&v199 = v14;
  *(&v199 + 1) = v15;
  sub_265FE48DC(v5);
  *&v200 = v16;
  *(&v200 + 1) = v17;
  sub_265FE48DC(v5);
  v202 = 0uLL;
  *v203 = -258;
  *&v203[16] = 0;
  *&v203[8] = 0;
  *&v203[24] = -258;
  v18 = *v2;
  v19 = v2[1];
  v196 = *v2;
  v197 = v19;
  v20 = *(a1 + 16);

  v167 = v20;
  if (!v20)
  {
LABEL_159:

    *&v201 = v18;
    *(&v201 + 1) = v19;

    v131 = *&v207[8];
    v130 = *&v207[16];
    v132 = *&v207[24];
    v134 = v3[7];
    v133 = v3[8];
    v135 = *(v3 + 36);
    if ((~*&v207[24] & 0xFFFFFEFE) == 0)
    {
      sub_265FD246C(*&v207[8], *&v207[16], *&v207[24]);
      sub_265FD246C(v134, v133, v135);

      if ((~v135 & 0xFFFFFEFE) == 0)
      {
        goto LABEL_183;
      }

      goto LABEL_164;
    }

    if ((~v135 & 0xFFFFFEFE) == 0)
    {
      sub_265FD246C(*&v207[8], *&v207[16], *&v207[24]);
      sub_265FD246C(v134, v133, v135);
      sub_265FD246C(v131, v130, v132);

      sub_265FC23C8(v131, v130);
LABEL_164:
      sub_265FD2458(v131, v130, v132);
      v136 = v134;
      v137 = v133;
      v138 = v135;
LABEL_173:
      sub_265FD2458(v136, v137, v138);
      v139 = v3[7];
      v140 = v3[8];
      v141 = v202;
      v142 = *(v3 + 36);
      v143 = *v203;
      sub_265FD246C(v139, v140, v142);
      sub_265FD2458(v141, *(&v141 + 1), v143);
      *&v202 = v139;
      *(&v202 + 1) = v140;
      *v203 = v142;
      v144 = *&v203[8];
      v145 = *&v203[16];
      v146 = *&v203[24];
      sub_265FD246C(v131, v130, v132);
      sub_265FD2458(v144, v145, v146);
      *&v203[8] = v131;
      *&v203[16] = v130;
      *&v203[24] = v132;
LABEL_184:
      v170 = v206;
      v171[0] = *v207;
      *(v171 + 10) = *&v207[10];
      v168 = v204;
      v169 = v205;
      v149 = *(v3 + 3);
      v172[2] = *(v3 + 2);
      v173[0] = v149;
      *(v173 + 10) = *(v3 + 58);
      v150 = *(v3 + 1);
      v172[0] = *v3;
      v172[1] = v150;
      sub_265FCF134(&v168, &v190);
      sub_265FD2480(v172);
      v151 = v171[0];
      *(v3 + 2) = v170;
      *(v3 + 3) = v151;
      *(v3 + 58) = *(v171 + 10);
      v152 = v169;
      *v3 = v168;
      *(v3 + 1) = v152;
      v154 = v202;
      v153 = *v203;
      v186 = v202;
      *v187 = *v203;
      *&v187[10] = *&v203[10];
      v156 = v198;
      v155 = v199;
      v182 = v198;
      v183 = v199;
      v158 = v200;
      v157 = v201;
      v184 = v200;
      v185 = v201;
      v159 = *&v203[10];
      *(a2 + 90) = *&v203[10];
      a2[4] = v154;
      a2[5] = v153;
      a2[2] = v158;
      a2[3] = v157;
      *a2 = v156;
      a2[1] = v155;
      v190 = v156;
      v191 = v155;
      v192 = v158;
      v193 = v157;
      v194 = v154;
      v195[0] = v153;
      *(v195 + 10) = v159;
      sub_265FD24B0(&v182, &v174);
      sub_265FD24E8(&v190);
      v176 = v206;
      *v177 = *v207;
      *&v177[10] = *&v207[10];
      v174 = v204;
      v175 = v205;
      return sub_265FD2480(&v174);
    }

    if (*&v207[24] < 0)
    {
      if (v135 < 0)
      {
        if (*&v207[8] == v134 && *&v207[16] == v133)
        {
          sub_265FD246C(*&v207[8], *&v207[16], *&v207[24]);
          sub_265FD246C(v131, v130, v135);
          sub_265FD246C(v131, v130, v132);
          sub_265FD2458(v131, v130, v135);
        }

        else
        {
          v148 = sub_265FEC6C0();
          sub_265FD246C(v131, v130, v132);
          sub_265FD246C(v134, v133, v135);
          sub_265FD246C(v131, v130, v132);
          sub_265FD2458(v134, v133, v135);

          if ((v148 & 1) == 0)
          {
            goto LABEL_172;
          }
        }

        if (((v132 ^ v135) & 1) == 0 && (((v132 ^ v135) >> 8) & 1) == 0)
        {
          goto LABEL_182;
        }

LABEL_172:
        sub_265FC23C8(v131, v130);
        v136 = v131;
        v137 = v130;
        v138 = v132;
        goto LABEL_173;
      }
    }

    else if ((v135 & 0x80000000) == 0)
    {
      if (*&v207[8] == v134 && *&v207[16] == v133)
      {
        sub_265FD246C(*&v207[8], *&v207[16], *&v207[24]);
        sub_265FD246C(v131, v130, v135);
        sub_265FD246C(v131, v130, v132);
        sub_265FD2458(v131, v130, v135);

LABEL_182:
        sub_265FC23C8(v131, v130);
LABEL_183:
        sub_265FD2458(v131, v130, v132);
        goto LABEL_184;
      }

      v147 = sub_265FEC6C0();
      sub_265FD246C(v131, v130, v132);
      sub_265FD246C(v134, v133, v135);
      sub_265FD246C(v131, v130, v132);
      sub_265FD2458(v134, v133, v135);

      if (v147)
      {
        goto LABEL_182;
      }

      goto LABEL_172;
    }

    sub_265FD246C(*&v207[8], *&v207[16], *&v207[24]);
    sub_265FD246C(v134, v133, v135);
    sub_265FD246C(v131, v130, v132);
    sub_265FD2458(v134, v133, v135);

    goto LABEL_172;
  }

  v165 = v19;
  v166 = v18;
  v21 = 0;
  while (v21 < *(a1 + 16))
  {
    sub_265FC24A8(a1 + 32 + 144 * v21, &v190);
    sub_265FE0D40(v190, *(&v190 + 1), v191, v204, *(&v204 + 1), v205, &v182);
    v23 = v189;
    sub_265FC2440(&v182);
    if (v23 != 1)
    {
      goto LABEL_186;
    }

    v24 = v190;
    v25 = v191;
    sub_265FC24A8(&v190, &v182);
    sub_265FC23C0(v24, *(&v24 + 1));
    sub_265FBF4AC(&v182, v24, *(&v24 + 1), v25);
    v26 = BYTE2(v191);
    v27 = v190;
    v28 = v191;
    if (BYTE2(v191) == 1)
    {
      v29 = v206;
      v30 = *(v206 + 16);
      if (*(&v205 + 1))
      {

        sub_265FC0994(v27, *(&v27 + 1), v28, v29 + 32, v30, (v24 + 16), v24 + 32);
        v32 = v31;
        v34 = v33;

        if ((v32 & 1) == 0)
        {
          goto LABEL_57;
        }
      }

      else
      {
        if (v30)
        {
          v41 = (v206 + 48);
          do
          {
            v42 = *(v41 - 2);
            v43 = *(v41 - 1);
            v44 = *v41;
            if (v44 < 0)
            {
              if ((v28 & 0x80000000) != 0)
              {
                v46 = v42 == v27 && v43 == *(&v27 + 1);
                if (v46 || (sub_265FEC6C0()) && ((v28 ^ v44) & 1) == 0 && (((v28 ^ v44) >> 8) & 1) == 0)
                {
                  goto LABEL_57;
                }
              }
            }

            else if ((v28 & 0x80000000) == 0)
            {
              v45 = v42 == v27 && v43 == *(&v27 + 1);
              if (v45 || (sub_265FEC6C0() & 1) != 0)
              {
                goto LABEL_57;
              }
            }

            v41 += 12;
            --v30;
          }

          while (v30);
        }

        v34 = 0;
      }

      sub_265FBFE5C(v27, *(&v27 + 1), v28, v34);
LABEL_57:
      v53 = v190;
      v54 = *&v207[8];
      v55 = *&v207[16];
      v56 = v191;
      v57 = *&v207[24];
      sub_265FC23C0(v190, *(&v190 + 1));
      sub_265FD2458(v54, v55, v57);
      *&v207[8] = v53;
      *&v207[24] = v56;
      goto LABEL_60;
    }

    v35 = *v207;
    v36 = *(*v207 + 16);
    if (!*(&v206 + 1))
    {
      if (v36)
      {
        v47 = (*v207 + 48);
        do
        {
          v48 = *(v47 - 2);
          v49 = *(v47 - 1);
          v50 = *v47;
          if (v50 < 0)
          {
            if ((v28 & 0x80000000) != 0)
            {
              v52 = v48 == v27 && v49 == *(&v27 + 1);
              if (v52 || (sub_265FEC6C0()) && ((v28 ^ v50) & 1) == 0 && (((v28 ^ v50) >> 8) & 1) == 0)
              {
                goto LABEL_60;
              }
            }
          }

          else if ((v28 & 0x80000000) == 0)
          {
            v51 = v48 == v27 && v49 == *(&v27 + 1);
            if (v51 || (sub_265FEC6C0() & 1) != 0)
            {
              goto LABEL_60;
            }
          }

          v47 += 12;
          --v36;
        }

        while (v36);
      }

      v40 = 0;
LABEL_59:
      sub_265FBFE5C(v27, *(&v27 + 1), v28, v40);
      goto LABEL_60;
    }

    sub_265FC0994(v27, *(&v27 + 1), v28, v35 + 32, v36, (v24 + 16), v24 + 32);
    v38 = v37;
    v40 = v39;

    if (v38)
    {
      goto LABEL_59;
    }

LABEL_60:
    sub_265FE0D40(v190, *(&v190 + 1), v191, v166, v165, v3[2], &v174);
    if (v181 != 1)
    {
      *&v187[16] = v179;
      v188 = v180;
      v189 = v181;
      v184 = v176;
      v185 = *v177;
      v186 = *&v177[16];
      *v187 = v178;
      v182 = v174;
      v183 = v175;
      if (BYTE2(v175) == 1)
      {
        if ((v26 & 1) == 0)
        {
          v66 = v190;
          v67 = v191;
          v68 = v200;
          v69 = *(*(&v200 + 1) + 16);
          if (v200)
          {

            sub_265FC0994(v66, *(&v66 + 1), v67, *(&v68 + 1) + 32, v69, (v68 + 16), v68 + 32);
            v71 = v70;
            v73 = v72;

            if ((v71 & 1) == 0)
            {
              goto LABEL_134;
            }
          }

          else
          {
            if (v69)
            {
              v103 = (*(&v200 + 1) + 48);
              do
              {
                v104 = *(v103 - 2);
                v105 = *(v103 - 1);
                v106 = *v103;
                if (v106 < 0)
                {
                  if ((v67 & 0x80000000) != 0)
                  {
                    v108 = v104 == v66 && v105 == *(&v66 + 1);
                    if (v108 || (sub_265FEC6C0()) && ((v67 ^ v106) & 1) == 0 && (((v67 ^ v106) >> 8) & 1) == 0)
                    {
                      goto LABEL_134;
                    }
                  }
                }

                else if ((v67 & 0x80000000) == 0)
                {
                  v107 = v104 == v66 && v105 == *(&v66 + 1);
                  if (v107 || (sub_265FEC6C0() & 1) != 0)
                  {
                    goto LABEL_134;
                  }
                }

                v103 += 12;
                --v69;
              }

              while (v69);
            }

            v73 = 0;
          }

          v111 = *(&v66 + 1);
          v110 = v66;
          v112 = v67;
          v113 = v73;
LABEL_133:
          sub_265FBFE5C(v110, v111, v112, v113);
        }
      }

      else if (v26)
      {
        v74 = v190;
        v75 = v191;
        v76 = v199;
        v77 = *(*(&v199 + 1) + 16);
        if (v199)
        {

          sub_265FC0994(v74, *(&v74 + 1), v75, *(&v76 + 1) + 32, v77, (v76 + 16), v76 + 32);
          v79 = v78;
          v81 = v80;

          if ((v79 & 1) == 0)
          {
            goto LABEL_134;
          }
        }

        else
        {
          sub_265FE46EC(v190, *(&v190 + 1), v191, *(&v199 + 1) + 32, v77);
          if ((v109 & 1) == 0)
          {
            goto LABEL_134;
          }

          v81 = 0;
        }

        v111 = *(&v74 + 1);
        v110 = v74;
        v112 = v75;
        v113 = v81;
        goto LABEL_133;
      }

LABEL_134:
      sub_265FC2504(&v182);
      goto LABEL_135;
    }

    sub_265FC2440(&v174);
    v58 = v190;
    v59 = v191;
    v60 = v198;
    v61 = *(*(&v198 + 1) + 16);
    if (!v198)
    {
      if (v61)
      {
        v82 = (*(&v198 + 1) + 48);
        do
        {
          v83 = *(v82 - 2);
          v84 = *(v82 - 1);
          v85 = *v82;
          if (v85 < 0)
          {
            if ((v59 & 0x80000000) != 0)
            {
              v87 = v83 == v58 && v84 == *(&v58 + 1);
              if (v87 || (sub_265FEC6C0()) && ((v59 ^ v85) & 1) == 0 && (((v59 ^ v85) >> 8) & 1) == 0)
              {
                goto LABEL_95;
              }
            }
          }

          else if ((v59 & 0x80000000) == 0)
          {
            v86 = v83 == v58 && v84 == *(&v58 + 1);
            if (v86 || (sub_265FEC6C0() & 1) != 0)
            {
              goto LABEL_95;
            }
          }

          v82 += 12;
          --v61;
        }

        while (v61);
      }

      v65 = 0;
LABEL_94:
      sub_265FBFE5C(v58, *(&v58 + 1), v59, v65);
      goto LABEL_95;
    }

    sub_265FC0994(v58, *(&v58 + 1), v59, *(&v60 + 1) + 32, v61, (v60 + 16), v60 + 32);
    v63 = v62;
    v65 = v64;

    if (v63)
    {
      goto LABEL_94;
    }

LABEL_95:
    v88 = v190;
    v89 = v191;
    if (v26)
    {
      v90 = v199;
      v91 = *(*(&v199 + 1) + 16);
      if (v199)
      {

        sub_265FC0994(v88, *(&v88 + 1), v89, *(&v90 + 1) + 32, v91, (v90 + 16), v90 + 32);
        v93 = v92;
        v95 = v94;

        if ((v93 & 1) == 0)
        {
          goto LABEL_135;
        }

        goto LABEL_107;
      }

      sub_265FE46EC(v190, *(&v190 + 1), v191, *(&v199 + 1) + 32, v91);
      if (v101)
      {
        v95 = 0;
        goto LABEL_107;
      }
    }

    else
    {
      v96 = v200;
      v97 = *(*(&v200 + 1) + 16);
      if (v200)
      {

        sub_265FC0994(v88, *(&v88 + 1), v89, *(&v96 + 1) + 32, v97, (v96 + 16), v96 + 32);
        v99 = v98;
        v95 = v100;

        if ((v99 & 1) == 0)
        {
          goto LABEL_135;
        }

        goto LABEL_107;
      }

      sub_265FE46EC(v190, *(&v190 + 1), v191, *(&v200 + 1) + 32, v97);
      if (v102)
      {
        v95 = 0;
LABEL_107:
        sub_265FBFE5C(v88, *(&v88 + 1), v89, v95);
      }
    }

LABEL_135:
    v115 = *(&v190 + 1);
    v114 = v190;
    v116 = v191;
    v117 = v196;
    v118 = v197;
    v119 = *(v197 + 16);
    if (v196)
    {

      v120 = sub_265FC0994(v114, v115, v116, v118 + 32, v119, (v117 + 16), v117 + 32);
      v122 = v121;
      v22 = v123;

      if ((v122 & 1) == 0)
      {
LABEL_4:
        sub_265FC0D0C(v120, v22, &v182);
        sub_265FC23C8(v182, *(&v182 + 1));
      }
    }

    else if (v119)
    {
      v120 = 0;
      v124 = (v197 + 48);
      do
      {
        v125 = *(v124 - 2);
        v126 = *(v124 - 1);
        v127 = *v124;
        if (v127 < 0)
        {
          if ((v116 & 0x80000000) != 0)
          {
            v129 = v125 == v114 && v126 == v115;
            if (v129 || (sub_265FEC6C0()) && ((v116 ^ v127) & 1) == 0 && (((v116 ^ v127) >> 8) & 1) == 0)
            {
LABEL_3:
              v22 = 0;
              goto LABEL_4;
            }
          }
        }

        else if ((v116 & 0x80000000) == 0)
        {
          v128 = v125 == v114 && v126 == v115;
          if (v128 || (sub_265FEC6C0() & 1) != 0)
          {
            goto LABEL_3;
          }
        }

        v124 += 12;
        ++v120;
      }

      while (v119 != v120);
    }

    ++v21;
    sub_265FC2504(&v190);
    if (v21 == v167)
    {
      v18 = v196;
      v19 = v197;
      goto LABEL_159;
    }
  }

  __break(1u);
LABEL_186:
  *&v182 = 0;
  *(&v182 + 1) = 0xE000000000000000;
  sub_265FEC550();

  *&v174 = 0xD00000000000002FLL;
  *(&v174 + 1) = 0x8000000265FF1590;
  v182 = v190;
  LOWORD(v183) = v191;
  sub_265FC23C0(v190, *(&v190 + 1));
  v161 = Profile.DisplayIdentity.description.getter();
  v163 = v162;
  sub_265FC23C8(v182, *(&v182 + 1));
  MEMORY[0x2667756D0](v161, v163);

  result = sub_265FEC5E0();
  __break(1u);
  return result;
}

void *sub_265FD1984(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055240, &qword_265FEF170);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_265FD1A0C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_265FEC4A0();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_265FD1984(v3, 0);
  sub_265FD1C98((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_265FD1AA0(uint64_t result, char a2, void (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void, uint64_t))
{
  if (result < 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v7 = v4;
  v9 = result;
  v12 = v4[1];
  v10 = v4 + 1;
  v11 = v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v10 = v12;
  if (isUniquelyReferenced_nonNull_native && v9 <= *(v11 + 24) >> 1)
  {
    v14 = *v7;
    if (*v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    a3();
    v11 = *v10;
    v14 = *v7;
    if (*v7)
    {
LABEL_5:
      swift_beginAccess();
      v15 = *(v14 + 16) & 0x3FLL;
      v16 = MEMORY[0x2667755A0](v9);
      if (a2)
      {
        v17 = v16;
        if (v15 >= v16)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v19 = v16;
        swift_beginAccess();
        v16 = v19;
        v17 = *(v14 + 24) & 0x3FLL;
        if (v15 >= v16)
        {
          goto LABEL_17;
        }
      }

LABEL_13:
      if (v17 <= v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = v17;
      }

      goto LABEL_27;
    }
  }

  v16 = MEMORY[0x2667755A0](v9);
  v15 = 0;
  if (a2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v16 > 0)
  {
    goto LABEL_13;
  }

LABEL_17:
  if (v17 <= v16)
  {
    v20 = v16;
  }

  else
  {
    v20 = v17;
  }

  result = MEMORY[0x2667755A0](*(v11 + 16));
  if (result <= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = result;
  }

  if (v21 < v15)
  {
    if (v17 <= v21)
    {
      v18 = v21;
    }

    else
    {
      v18 = v17;
    }

LABEL_27:
    v22 = a4(v11, v18, 0, v17);

    *v7 = v22;
    return result;
  }

  if (!v14 || (result = swift_isUniquelyReferenced_native(), (result & 1) != 0))
  {
    v23 = *v7;
    if (*v7)
    {
      goto LABEL_32;
    }

LABEL_36:
    if (!v17)
    {
      return result;
    }

    __break(1u);
    goto LABEL_38;
  }

  if (!*v7)
  {
LABEL_39:
    __break(1u);
    return result;
  }

  v23 = sub_265FEC010();

  *v7 = v23;
  if (!v23)
  {
    goto LABEL_36;
  }

LABEL_32:
  result = swift_beginAccess();
  if ((*(v23 + 24) & 0x3FLL) != v17)
  {
    *(v23 + 24) = *(v23 + 24) & 0xFFFFFFFFFFFFFFC0 | v17 & 0x3F;
  }

  return result;
}

uint64_t sub_265FD1C98(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_265FEC4A0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_265FEC4A0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_265FD2588(&qword_280055238, &qword_280055230, &qword_265FEF168);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055230, &qword_265FEF168);
            v9 = sub_265FE50EC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_265FC20E0();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_265FD1E28(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_265FEC4A0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_265FEC4A0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_265FD2588(qword_280055250, &qword_280055248, &qword_265FEF178);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055248, &qword_265FEF178);
            v9 = sub_265FE516C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for SSKDisplayProfile(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_265FD1FB8(uint64_t a1)
{
  v15 = MEMORY[0x277D84F90];
  sub_265FD1A0C(MEMORY[0x277D84F90]);
  v2 = *(a1 + 16);
  sub_265FD1AA0(v2, 0, sub_265FBFFF8, sub_265FC0458);
  sub_265FEC5A0();
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = a1 + 32;
  while (1)
  {
    v6 = (v4 + 24 * v3);
    v8 = *v6;
    v7 = v6[1];
    v9 = v6[2];
    v10 = *(v15 + 16);
    if (v10)
    {
      break;
    }

LABEL_12:

    v13 = v9;
    ++v3;
    sub_265FBFCD0(v8, v7, 0);
    v5 = v9;
    sub_265FEC580();
    sub_265FEC5B0();
    sub_265FEC5C0();
    sub_265FEC590();

    if (v3 == v2)
    {
      return 0;
    }
  }

  v11 = (v15 + 40);
  while (1)
  {
    v12 = *(v11 - 1) == v8 && *v11 == v7;
    if (v12 || (sub_265FEC6C0() & 1) != 0)
    {
      break;
    }

    v11 += 2;
    if (!--v10)
    {
      goto LABEL_12;
    }
  }

  result = v9;
  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_265FD21A0(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v45 = 0;
  v46 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  sub_265FD1AA0(v3, 0, sub_265FC0018, sub_265FC0470);
  v44 = v2;
  sub_265FC0038(0, v3, 0);
  if (!v3)
  {
    return v45;
  }

  v4 = 0;
  v30 = a1 + 32;
  while (1)
  {
    sub_265FD2518(v30 + 168 * v4, v33);
    v5 = v33[0];
    v6 = v33[1];
    v7 = v34;
    v32[2] = v37;
    v32[3] = v38;
    v32[7] = v42;
    v32[8] = v43;
    v32[4] = v39;
    v32[5] = v40;
    v32[6] = v41;
    v32[0] = v35;
    v32[1] = v36;
    v8 = v45;
    v9 = v46;
    v10 = *(v46 + 16);
    if (!v45)
    {
      if (v10)
      {
        v16 = (v46 + 48);
        do
        {
          result = *(v16 - 2);
          v17 = *(v16 - 1);
          v18 = *v16;
          if (v18 < 0)
          {
            if ((v7 & 0x80000000) != 0)
            {
              v20 = result == v5 && v17 == v6;
              if (v20 || (result = sub_265FEC6C0(), (result & 1) != 0))
              {
                if (((v7 ^ v18) & 1) == 0 && (((v7 ^ v18) >> 8) & 1) == 0)
                {
                  goto LABEL_33;
                }
              }
            }
          }

          else if ((v7 & 0x80000000) == 0)
          {
            if (result == v5 && v17 == v6)
            {
              goto LABEL_33;
            }

            result = sub_265FEC6C0();
            if (result)
            {
              goto LABEL_33;
            }
          }

          v16 += 12;
          --v10;
        }

        while (v10);
      }

      v14 = 0;
      goto LABEL_27;
    }

    sub_265FC0994(v5, v6, v7, v9 + 32, v10, (v8 + 16), v8 + 32);
    v12 = v11;
    v14 = v13;

    if ((v12 & 1) == 0)
    {
      break;
    }

LABEL_27:
    sub_265FBFE5C(v5, v6, v7, v14);
    sub_265FC24A8(v32, v31);
    v44 = v2;
    v22 = *(v2 + 16);
    v21 = *(v2 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_265FC0038((v21 > 1), v22 + 1, 1);
      sub_265FC23C8(v5, v6);
      v2 = v44;
    }

    else
    {
      sub_265FC23C8(v5, v6);
    }

    ++v4;
    sub_265FC2504(v32);
    *(v2 + 16) = v22 + 1;
    v23 = (v2 + 144 * v22);
    v24 = v31[4];
    v26 = v31[1];
    v25 = v31[2];
    v23[5] = v31[3];
    v23[6] = v24;
    v23[3] = v26;
    v23[4] = v25;
    v27 = v31[8];
    v29 = v31[5];
    v28 = v31[6];
    v23[9] = v31[7];
    v23[10] = v27;
    v23[7] = v29;
    v23[8] = v28;
    v23[2] = v31[0];
    if (v4 == v3)
    {
      return v45;
    }
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_265FD2458(uint64_t a1, uint64_t a2, int a3)
{
  if ((~a3 & 0xFEFE) != 0)
  {
    return sub_265FC23C8(a1, a2);
  }

  return a1;
}

uint64_t sub_265FD246C(uint64_t a1, uint64_t a2, int a3)
{
  if ((~a3 & 0xFEFE) != 0)
  {
    return sub_265FC23C0(a1, a2);
  }

  return a1;
}

uint64_t sub_265FD2518(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055228, "lM");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265FD2588(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

__n128 __swift_memcpy106_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_265FD2608(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 106))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_265FD2650(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 106) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 106) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_265FD27D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_265FD283C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_265FD28AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_265FD291C()
{
  nullsub_1();
  v1 = v0;

  return v1;
}

uint64_t sub_265FD2960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_265FD29D4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_265FD29E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 0;
  }

  else
  {
    return sub_265FEC6C0();
  }
}

uint64_t sub_265FD2AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_265FD2ADC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_265FD2B24(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_265FD2B78(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void *sub_265FD2BE8()
{
  v1 = v0;
  v2 = *v0;
  sub_265FD3158(0);
  v3 = v0[3];
  v0[3] = 0;

  swift_beginAccess();
  v4 = v0[2];
  if ((v4 & 0xC000000000000001) != 0)
  {

    sub_265FEC490();
    sub_265FCF0EC(0, &qword_280054BD0, 0x277D0AAC8);
    sub_265FD4EE0();
    result = sub_265FEC2F0();
    v4 = v49;
    v6 = v50;
    v8 = v51;
    v7 = v52;
    v9 = v53;
  }

  else
  {
    v10 = -1 << *(v4 + 32);
    v6 = v4 + 56;
    v8 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v4 + 56);

    v7 = 0;
  }

  v32 = v8;
  v13 = (v8 + 64) >> 6;
  v33 = v2 - 8;
  v35 = v1;
  v34 = v4;
  v40 = v6;
  while (v4 < 0)
  {
    v19 = sub_265FEC4C0();
    if (!v19)
    {
      return sub_265FCF430(v4);
    }

    v45[0] = v19;
    sub_265FCF0EC(0, &qword_280054BD0, 0x277D0AAC8);
    swift_dynamicCast();
    v18 = v46[0];
    v16 = v7;
    v17 = v9;
    if (!v46[0])
    {
      return sub_265FCF430(v4);
    }

LABEL_20:
    v41 = v17;
    v47 = v2;
    v20 = sub_265FD4070(&qword_2800552F8, &unk_265FEF6A8);
    v48 = v20;
    v46[0] = v1;
    type metadata accessor for TransformSceneExtension();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    type metadata accessor for TransformSceneExtension.HostComponent();
    v22 = swift_getObjCClassFromMetadata();

    v23 = [v18 componentForExtension:ObjCClassFromMetadata ofClass:{v22, v32, v33}];
    if (!v23)
    {

LABEL_9:
      v9 = v41;
      goto LABEL_10;
    }

    v45[0] = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280054F30, &unk_265FF03E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280055310, &qword_265FEF6D8);
    swift_dynamicCast();
    v24 = v42;
    if (!v42)
    {

      v6 = v40;
      goto LABEL_9;
    }

    v25 = *__swift_project_boxed_opaque_existential_1(v46, v47);
    v45[3] = v2;
    v45[4] = v20;
    v45[0] = v25;
    v38 = __swift_project_boxed_opaque_existential_1(v45, v2);
    swift_beginAccess();
    v26 = sub_265FEC440();
    v39 = &v32;
    v37 = v26;
    v36 = *(v26 - 8);
    MEMORY[0x28223BE20](v26);
    v27 = v2;
    v29 = &v32 - v28;

    sub_265FEC310();
    swift_endAccess();
    v30 = *(v27 - 8);
    if ((*(v30 + 48))(v29, 1, v27) == 1)
    {

      (*(v36 + 8))(v29, v37);
      v44 = 0;
      v43 = 0u;
      v42 = 0u;
    }

    else
    {
      *(&v43 + 1) = v27;
      v44 = v20;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v42);
      (*(v30 + 32))(boxed_opaque_existential_1, v29, v27);
    }

    v2 = v27;
    v9 = v41;
    sub_265FD4F48(&v42);
    __swift_destroy_boxed_opaque_existential_0(v45);
    v1 = v35;
    v4 = v34;
    v6 = v40;
LABEL_10:
    result = __swift_destroy_boxed_opaque_existential_0(v46);
    v7 = v16;
  }

  v14 = v7;
  v15 = v9;
  v16 = v7;
  if (v9)
  {
LABEL_16:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v4 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
      return sub_265FCF430(v4);
    }

    goto LABEL_20;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      return sub_265FCF430(v4);
    }

    v15 = *(v6 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void sub_265FD3158(char *a1)
{
  if (a1)
  {
    v2 = *&a1[OBJC_IVAR____TtC13ShellSceneKit27RootScenePresentationBinder_rootWindow];
    v3 = a1;
    v4 = [v2 layer];
    v5 = [v4 context];

    if (v5)
    {
      v73 = [v5 contextId];
    }

    else
    {
      v73 = 0;
    }

    swift_beginAccess();
    v12 = *(v1 + 16);
    if ((v12 & 0xC000000000000001) != 0)
    {

      sub_265FEC490();
      sub_265FCF0EC(0, &qword_280054BD0, 0x277D0AAC8);
      sub_265FD4EE0();
      sub_265FEC2F0();
      v12 = v89;
      v13 = v90;
      v14 = v91;
      v15 = v92;
      v16 = v93;
    }

    else
    {
      v17 = -1 << *(v12 + 32);
      v13 = v12 + 56;
      v14 = ~v17;
      v18 = -v17;
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      else
      {
        v19 = -1;
      }

      v16 = v19 & *(v12 + 56);

      v15 = 0;
    }

    v20 = (v14 + 64) >> 6;
    v80 = v12;
    v74 = v5;
    v75 = v3;
    while (1)
    {
      if (v12 < 0)
      {
        v28 = sub_265FEC4C0();
        if (!v28 || (v84 = v28, sub_265FCF0EC(0, &qword_280054BD0, 0x277D0AAC8), swift_dynamicCast(), v27 = aBlock, v25 = v15, v26 = v16, !aBlock))
        {
LABEL_37:
          v46 = v12;
          goto LABEL_59;
        }
      }

      else
      {
        v23 = v15;
        v24 = v16;
        v25 = v15;
        if (!v16)
        {
          while (1)
          {
            v25 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              break;
            }

            if (v25 >= v20)
            {
              goto LABEL_37;
            }

            v24 = *(v13 + 8 * v25);
            ++v23;
            if (v24)
            {
              goto LABEL_22;
            }
          }

          __break(1u);
          goto LABEL_62;
        }

LABEL_22:
        v26 = (v24 - 1) & v24;
        v27 = *(*(v12 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));
        if (!v27)
        {
          goto LABEL_37;
        }
      }

      v82 = v26;
      [v3 addScene_];
      v29 = [v27 definition];
      v30 = [v29 clientIdentity];

      LODWORD(v29) = [v30 isLocal];
      if (v29)
      {
        type metadata accessor for BacklightSupportSceneExtension();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        type metadata accessor for BacklightSupportSceneExtension.HostComponent();
        v32 = [v27 componentForExtension:ObjCClassFromMetadata ofClass:swift_getObjCClassFromMetadata()];
        if (v32)
        {
          *&aBlock = v32;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280054F30, &unk_265FF03E0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280055320, &qword_265FEE6F0);
          swift_dynamicCast();
          if (v84)
          {
            v33 = [v84 hostScene];
            if (!v33)
            {
              goto LABEL_67;
            }

            v34 = v33;
            v35 = swift_allocObject();
            *(v35 + 16) = v73;
            *(v35 + 20) = v5 == 0;
            v36 = swift_allocObject();
            *(v36 + 16) = sub_265FD4FFC;
            *(v36 + 24) = v35;
            *&v87 = sub_265FD5000;
            *(&v87 + 1) = v36;
            *&aBlock = MEMORY[0x277D85DD0];
            *(&aBlock + 1) = 1107296256;
            *&v86 = sub_265FBCE10;
            *(&v86 + 1) = &block_descriptor_19;
            v37 = _Block_copy(&aBlock);

            [v34 updateSettingsWithBlock_];

            v38 = v37;
            v5 = v74;
            _Block_release(v38);
            isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

            v3 = v75;
            v12 = v80;
            if (isEscapingClosureAtFileLocation)
            {
              goto LABEL_63;
            }
          }
        }
      }

      type metadata accessor for TransformSceneExtension();
      v40 = swift_getObjCClassFromMetadata();
      type metadata accessor for TransformSceneExtension.HostComponent();
      v41 = [v27 componentForExtension:v40 ofClass:swift_getObjCClassFromMetadata()];
      v42 = 0uLL;
      if (v41)
      {
        *&aBlock = v41;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280054F30, &unk_265FF03E0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280055310, &qword_265FEF6D8);
        swift_dynamicCast();
        if (v84)
        {
          v43 = *&v84[OBJC_IVAR____TtCC13ShellSceneKit23TransformSceneExtension13HostComponent_scene];
          if (!v43)
          {
            goto LABEL_67;
          }

          v44 = v43;
          v45 = [v44 settings];
          if (!swift_dynamicCastObjCProtocolConditional())
          {

            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            sub_265FEC550();

            *&aBlock = 0xD00000000000002BLL;
            *(&aBlock + 1) = 0x8000000265FF1690;
            v68 = [v44 settings];
            v69 = [v68 description];
            v70 = sub_265FEC0E0();
            v72 = v71;

            MEMORY[0x2667756D0](v70, v72);

            goto LABEL_67;
          }

          swift_getObjectType();
          sub_265FE9E5C(&v94);
          v78 = v95;
          v79 = v94;
          v77 = v96;

          v22 = v78;
          v21 = v79;
          v42 = v77;
          v12 = v80;
          v16 = v82;
        }

        else
        {
          v21 = xmmword_265FEF5F0;
          v22 = xmmword_265FEF5E0;
          v12 = v80;
          v16 = v82;
          v42 = 0uLL;
        }
      }

      else
      {
        v21 = xmmword_265FEF5F0;
        v22 = xmmword_265FEF5E0;
        v16 = v82;
      }

      aBlock = v21;
      v86 = v22;
      v87 = v42;
      [v3 setTransform:&aBlock forScene:v27];

      v15 = v25;
    }
  }

  v3 = *(v1 + 24);
  if (v3)
  {
    swift_beginAccess();
    v6 = *(v1 + 16);
    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = v3;

      sub_265FEC490();
      sub_265FCF0EC(0, &qword_280054BD0, 0x277D0AAC8);
      sub_265FD4EE0();
      sub_265FEC2F0();
      v8 = *(&aBlock + 1);
      v6 = aBlock;
      v10 = *(&v86 + 1);
      v9 = v86;
      v11 = v87;
    }

    else
    {
      v47 = -1 << *(v6 + 32);
      v8 = v6 + 56;
      v9 = ~v47;
      v48 = -v47;
      if (v48 < 64)
      {
        v49 = ~(-1 << v48);
      }

      else
      {
        v49 = -1;
      }

      v11 = v49 & *(v6 + 56);
      v50 = v3;

      v10 = 0;
    }

    v51 = (v9 + 64) >> 6;
    v52 = &unk_279BC1000;
    v76 = v3;
    v81 = v6;
    do
    {
      while (1)
      {
        if (v6 < 0)
        {
          v58 = sub_265FEC4C0();
          if (!v58)
          {
            goto LABEL_58;
          }

          v88 = v58;
          sub_265FCF0EC(0, &qword_280054BD0, 0x277D0AAC8);
          swift_dynamicCast();
          v57 = v94;
          v55 = v10;
          v56 = v11;
          if (!v94)
          {
            goto LABEL_58;
          }
        }

        else
        {
          v53 = v10;
          v54 = v11;
          v55 = v10;
          if (!v11)
          {
            while (1)
            {
              v55 = v53 + 1;
              if (__OFADD__(v53, 1))
              {
                break;
              }

              if (v55 >= v51)
              {
                goto LABEL_58;
              }

              v54 = *(v8 + 8 * v55);
              ++v53;
              if (v54)
              {
                goto LABEL_49;
              }
            }

LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_67:
            sub_265FEC5E0();
            __break(1u);
            return;
          }

LABEL_49:
          v56 = (v54 - 1) & v54;
          v57 = *(*(v6 + 48) + ((v55 << 9) | (8 * __clz(__rbit64(v54)))));
          if (!v57)
          {
            goto LABEL_58;
          }
        }

        v83 = v56;
        [v3 v52[176]];
        type metadata accessor for BacklightSupportSceneExtension();
        v59 = swift_getObjCClassFromMetadata();
        type metadata accessor for BacklightSupportSceneExtension.HostComponent();
        v60 = [v57 componentForExtension:v59 ofClass:swift_getObjCClassFromMetadata()];
        if (v60)
        {
          *&v94 = v60;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280054F30, &unk_265FF03E0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280055320, &qword_265FEE6F0);
          swift_dynamicCast();
          v61 = v88;
          if (v88)
          {
            break;
          }
        }

        v10 = v55;
        v11 = v83;
      }

      v62 = [v88 hostScene];
      if (!v62)
      {
        goto LABEL_67;
      }

      v63 = v62;
      v64 = swift_allocObject();
      *(v64 + 16) = 0;
      *(v64 + 20) = 1;
      v65 = swift_allocObject();
      *(v65 + 16) = sub_265FD4FB0;
      *(v65 + 24) = v64;
      *&v96 = sub_265FD4FB4;
      *(&v96 + 1) = v65;
      *&v94 = MEMORY[0x277D85DD0];
      *(&v94 + 1) = 1107296256;
      *&v95 = sub_265FBCE10;
      *(&v95 + 1) = &block_descriptor_0;
      v66 = _Block_copy(&v94);

      [v63 updateSettingsWithBlock_];

      _Block_release(v66);
      v67 = swift_isEscapingClosureAtFileLocation();

      v10 = v55;
      v6 = v81;
      v11 = v83;
      v3 = v76;
      v52 = &unk_279BC1000;
    }

    while ((v67 & 1) == 0);
    __break(1u);
LABEL_58:
    v46 = v6;
LABEL_59:
    sub_265FCF430(v46);
  }
}

void sub_265FD3CD8(void *a1)
{
  v2 = v1;
  sub_265FD4CEC(v1);
  swift_beginAccess();
  v4 = a1;
  sub_265FD40F8(v25, v4, &qword_280054BD0, 0x277D0AAC8, &qword_2800552F0, &qword_265FF03F0);
  swift_endAccess();

  v5 = *(v1 + 24);
  if (v5)
  {
    [v5 addScene_];
  }

  v6 = [v4 definition];
  v7 = [v6 clientIdentity];

  LODWORD(v6) = [v7 isLocal];
  if (v6)
  {
    v8 = *(v2 + 24);
    if (v8 && (v9 = [*(v8 + OBJC_IVAR____TtC13ShellSceneKit27RootScenePresentationBinder_rootWindow) layer], v10 = objc_msgSend(v9, sel_context), v9, v10))
    {
      LODWORD(v12) = [v10 contextId];

      v11 = 0;
      v12 = v12;
    }

    else
    {
      v12 = 0;
      v11 = 1;
    }

    v13 = sub_265FC5F74();
    if (v13)
    {
      v14 = v13;
      LOBYTE(v26[0]) = v11;
      sub_265FDCF5C(v12 | (v11 << 32));
    }
  }

  v15 = *(v2 + 24);
  if (v15)
  {
    v16 = v15;
    v17 = sub_265FDBC1C();
    if (v17)
    {
      v18 = v17;
      sub_265FE9890(v26);
      v23 = v26[1];
      v24 = v26[0];
      v22 = v26[2];

      v20 = v22;
      v19 = v23;
      v21 = v24;
    }

    else
    {
      v19 = xmmword_265FEF5E0;
      v21 = xmmword_265FEF5F0;
      v20 = 0uLL;
    }

    v25[0] = v21;
    v25[1] = v19;
    v25[2] = v20;
    [v16 setTransform:v25 forScene:{v4, v22, v23, v24}];
  }
}

uint64_t sub_265FD3F08()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_265FD3F6C()
{
  v1 = *v0;
  sub_265FEC780();
  MEMORY[0x266775D10](v1);
  return sub_265FEC7B0();
}

uint64_t sub_265FD3FB4(uint64_t a1)
{
  v2 = *v1;
  sub_265FEC780();
  MEMORY[0x266775D10](v2);
  return sub_265FEC7B0();
}

uint64_t sub_265FD402C(uint64_t a1)
{
  result = sub_265FD4070(&unk_2800552E0, &unk_265FEF668);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_265FD4070(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _HostingContext();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_265FD40F8(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_265FEC4B0();

    if (v17)
    {

      sub_265FCF0EC(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = sub_265FEC4A0();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_265FD436C(v15, result + 1, a5, a6, a3, a4);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_265FD456C(v28 + 1, a5, a6);
        }

        v29 = v16;
        sub_265FD478C(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_265FCF0EC(0, a3, a4);
    v19 = sub_265FEC410();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_265FEC420();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v26 = a2;
      sub_265FD4810(v26, v21, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_265FD436C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_265FEC520();
    v23 = v10;
    sub_265FEC490();
    if (sub_265FEC4C0())
    {
      sub_265FCF0EC(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_265FD456C(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = sub_265FEC410();
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_265FEC4C0());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t sub_265FD456C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_265FEC510();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = sub_265FEC410();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

unint64_t sub_265FD478C(uint64_t a1, uint64_t a2)
{
  sub_265FEC410();
  result = sub_265FEC480();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_265FD4810(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void *a7)
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
    sub_265FD456C(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_265FD49A0(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_265FD4AE0(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = sub_265FEC410();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_265FCF0EC(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_265FEC420();

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
  sub_265FEC700();
  __break(1u);
}

id sub_265FD49A0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_265FEC500();
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

uint64_t sub_265FD4AE0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_265FEC510();
  v7 = result;
  if (*(v5 + 16))
  {
    v26 = v3;
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
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = sub_265FEC410();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
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

        v4 = v26;
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

  return result;
}

uint64_t sub_265FD4CEC(uint64_t a1)
{
  v2 = type metadata accessor for _HostingContext();
  v15[3] = v2;
  v3 = sub_265FD4070(&qword_2800552F8, &unk_265FEF6A8);
  v15[4] = v3;
  v15[0] = a1;

  v4 = sub_265FDBC1C();
  if (v4)
  {
    v5 = v4;
    v6 = *__swift_project_boxed_opaque_existential_1(v15, v2);
    v14[3] = v2;
    v14[4] = v3;
    v14[0] = v6;
    v7 = __swift_project_boxed_opaque_existential_1(v14, v2);
    v13 = &v13;
    v8 = *(v2 - 8);
    v9 = *(v8 + 64);
    MEMORY[0x28223BE20](v7);
    v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
    (*(v8 + 16))(v14 - v10 + 16);
    v11 = swift_beginAccess();
    MEMORY[0x28223BE20](v11);

    sub_265FEC300();
    swift_endAccess();

    (*(v8 + 8))(v14 - v10 + 16, v2);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  return __swift_destroy_boxed_opaque_existential_0(v15);
}

unint64_t sub_265FD4EE0()
{
  result = qword_280055300;
  if (!qword_280055300)
  {
    sub_265FCF0EC(255, &qword_280054BD0, 0x277D0AAC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280055300);
  }

  return result;
}

uint64_t sub_265FD4F48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280055820, qword_265FF0670);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t ConnectionContext.createLocalScene(identifier:specification:configureParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = [objc_opt_self() localIdentity];
  v15 = (*(a7 + 8))(a1, a2, a3, v14, a4, a5, a6, a7);

  return v15;
}

uint64_t sub_265FD5110(uint64_t *a1)
{
  swift_getKeyPath();
  sub_265FBFC04();
  sub_265FEBF40();
}

uint64_t sub_265FD517C(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_265FBFC04();
  sub_265FEBF30();
}

uint64_t sub_265FD5214()
{
  v0 = sub_265FEC060();
  __swift_allocate_value_buffer(v0, qword_280055350);
  __swift_project_value_buffer(v0, qword_280055350);
  return sub_265FEC050();
}

void sub_265FD5298()
{
  v1 = [*(*(v0 + 56) + OBJC_IVAR____TtC13ShellSceneKit14SceneWorkspace_fbWorkspace) allScenes];
  sub_265FC20E0();
  v2 = sub_265FEC1F0();

  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    while (v3 >= 1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x266775AE0](0, v2);
      }

      else
      {
        v4 = *(v2 + 32);
      }

      v5 = v4;

      sub_265FD6FEC(0, 0);
      v6 = swift_allocObject();
      *(v6 + 16) = sub_265FD6FDC;
      *(v6 + 24) = v0;
      v20 = sub_265FD5000;
      v21 = v6;
      v7 = MEMORY[0x277D85DD0];
      aBlock = MEMORY[0x277D85DD0];
      v17 = 1107296256;
      v18 = sub_265FBCE10;
      v19 = &block_descriptor_33;
      v8 = _Block_copy(&aBlock);

      [v5 updateSettingsWithBlock_];

      _Block_release(v8);
      LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

      if ((v5 & 1) == 0)
      {
        v9 = v3 - 1;
        if (v3 == 1)
        {
LABEL_15:

          v15 = sub_265FD6FDC;
          goto LABEL_19;
        }

        v10 = 5;
        while (1)
        {
          v11 = (v2 & 0xC000000000000001) != 0 ? MEMORY[0x266775AE0](v10 - 4, v2) : *(v2 + 8 * v10);
          v12 = v11;

          sub_265FD6FEC(sub_265FD6FDC, v0);
          v13 = swift_allocObject();
          *(v13 + 16) = sub_265FD6FDC;
          *(v13 + 24) = v0;
          v20 = sub_265FD5000;
          v21 = v13;
          aBlock = v7;
          v17 = 1107296256;
          v18 = sub_265FBCE10;
          v19 = &block_descriptor_33;
          v14 = _Block_copy(&aBlock);

          [v12 updateSettingsWithBlock_];

          _Block_release(v14);
          LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

          if (v12)
          {
            break;
          }

          ++v10;
          if (!--v9)
          {
            goto LABEL_15;
          }
        }
      }

      __break(1u);
LABEL_17:
      v3 = sub_265FEC4A0();
      if (!v3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    v15 = 0;
    v0 = 0;
LABEL_19:
    sub_265FD6FEC(v15, v0);
  }
}

uint64_t sub_265FD55F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265FD5688(a1);
    (*(a5 + 120))(a1, a2, a3);
  }

  return result;
}

void sub_265FD5688(void *a1)
{
  v2 = v1;
  type metadata accessor for TransformSceneExtension();
  [a1 addExtension_];
  type metadata accessor for ProfileActivationSceneExtension();
  [a1 addExtension_];
  type metadata accessor for BacklightSupportSceneExtension();
  [a1 addExtension_];
  swift_beginAccess();
  sub_265FD6E58((v1 + 8), v16);
  v4 = v17;
  sub_265FD6FFC(v16, &qword_280055368, &unk_265FF03D0);
  if (v4)
  {
    type metadata accessor for SceneLevelExtension();
    [a1 addExtension_];
    v5 = v1[11];
    if (v5)
    {
      __swift_project_boxed_opaque_existential_1(v1 + 8, v5);
      sub_265FD3CD8(a1);
    }
  }

  v6 = v1[2];
  v7 = v2[3];
  sub_265FD6E58((v2 + 8), v16);
  v8 = v17 != 0;
  sub_265FC23C0(v6, v7);
  sub_265FD6FFC(v16, &qword_280055368, &unk_265FF03D0);
  v9 = type metadata accessor for ProfileActivation();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtC13ShellSceneKit17ProfileActivation_identifier];
  *v11 = v6;
  v11[1] = v7;
  v10[OBJC_IVAR____TtC13ShellSceneKit17ProfileActivation_inControl] = v8;
  v15.receiver = v10;
  v15.super_class = v9;
  v12 = objc_msgSendSuper2(&v15, sel_init);
  v13 = sub_265FC5F38();
  if (v13)
  {
    v14 = v13;
    sub_265FE80B0(v12);
  }
}

uint64_t sub_265FD5848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  sub_265FEC250();
  v3[12] = sub_265FEC240();
  v5 = sub_265FEC230();
  v3[13] = v5;
  v3[14] = v4;

  return MEMORY[0x2822009F8](sub_265FD58E0, v5, v4);
}

uint64_t sub_265FD58E0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0[11] + 104);
    v0[5] = _s5StateCMa();
    v0[6] = &off_2877AF170;
    v0[2] = v2;

    v7 = (v3 + *v3);
    v4 = swift_task_alloc();
    v0[16] = v4;
    *v4 = v0;
    v4[1] = sub_265FD5A68;

    return v7(v0 + 2);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_265FD5A68()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = v2[13];
    v4 = v2[14];
    v5 = sub_265FD5BF0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 2);
    v3 = v2[13];
    v4 = v2[14];
    v5 = sub_265FD5B84;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_265FD5B84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_265FD5BF0()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (qword_2800547F0 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = sub_265FEC060();
  __swift_project_value_buffer(v2, qword_280055350);
  v3 = v1;
  v4 = sub_265FEC040();
  v5 = sub_265FEC380();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[17];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_265FBB000, v4, v5, "onConnect task unhandled error: %@", v8, 0xCu);
    sub_265FD6FFC(v9, &unk_280055370, &qword_265FEEF40);
    MEMORY[0x2667764A0](v9, -1, -1);
    MEMORY[0x2667764A0](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_265FD5DB8()
{
  sub_265FC23C8(*(v0 + 16), *(v0 + 24));

  sub_265FD6FFC(v0 + 64, &qword_280055368, &unk_265FF03D0);

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t sub_265FD5E48()
{
  v1 = [*(v0[7] + OBJC_IVAR____TtC13ShellSceneKit14SceneWorkspace_fbWorkspace) allScenes];
  sub_265FC20E0();
  v2 = sub_265FEC1F0();

  if (v2 >> 62)
  {
LABEL_19:
    v3 = sub_265FEC4A0();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      type metadata accessor for SceneLevelExtension();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      type metadata accessor for ProfileActivationSceneExtension();
      v31 = swift_getObjCClassFromMetadata();
      type metadata accessor for ProfileActivationSceneExtension.HostComponent();
      v5 = swift_getObjCClassFromMetadata();
      v6 = 0;
      v32 = v2 & 0xC000000000000001;
      v29 = v0[2];
      v30 = v5;
      v28 = v0[3];
      v24 = v2 & 0xFFFFFFFFFFFFFF8;
      v23 = v0;
      v26 = v3;
      v27 = v2;
      v25 = ObjCClassFromMetadata;
      while (1)
      {
        if (v32)
        {
          v7 = MEMORY[0x266775AE0](v6, v2);
        }

        else
        {
          if (v6 >= *(v24 + 16))
          {
            goto LABEL_18;
          }

          v7 = *(v2 + 8 * v6 + 32);
        }

        v0 = v7;
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        [v7 removeExtension_];
        v9 = type metadata accessor for ProfileActivation();
        v10 = objc_allocWithZone(v9);
        v11 = &v10[OBJC_IVAR____TtC13ShellSceneKit17ProfileActivation_identifier];
        *v11 = v29;
        v11[1] = v28;
        v10[OBJC_IVAR____TtC13ShellSceneKit17ProfileActivation_inControl] = 0;
        sub_265FC23C0(v29, v28);
        v38.receiver = v10;
        v38.super_class = v9;
        v12 = objc_msgSendSuper2(&v38, sel_init);
        v13 = [v0 componentForExtension:v31 ofClass:v30];
        if (v13 && (*&aBlock = v13, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280054F30, &unk_265FF03E0), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280054F40, &qword_265FEE6F8), swift_dynamicCast(), (v14 = v37) != 0))
        {
          v15 = *&v37[OBJC_IVAR____TtCC13ShellSceneKit31ProfileActivationSceneExtension13HostComponent_scene];
          if (!v15)
          {
            result = sub_265FEC5E0();
            __break(1u);
            return result;
          }

          v16 = swift_allocObject();
          *(v16 + 16) = v12;
          v17 = swift_allocObject();
          *(v17 + 16) = sub_265FD7090;
          *(v17 + 24) = v16;
          v35 = sub_265FD5000;
          v36 = v17;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          *&v34 = sub_265FBCE10;
          *(&v34 + 1) = &block_descriptor_26;
          v18 = _Block_copy(&aBlock);
          v19 = v15;
          v20 = v12;

          [v19 updateSettingsWithBlock_];

          _Block_release(v18);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          v3 = v26;
          v2 = v27;
          ObjCClassFromMetadata = v25;
          if (isEscapingClosureAtFileLocation)
          {
            __break(1u);
LABEL_16:

            v0 = v23;
            goto LABEL_21;
          }
        }

        else
        {
        }

        ++v6;
        if (v8 == v3)
        {
          goto LABEL_16;
        }
      }
    }
  }

LABEL_21:
  v35 = 0;
  aBlock = 0u;
  v34 = 0u;
  swift_beginAccess();
  sub_265FD6F6C(&aBlock, (v0 + 8));
  return swift_endAccess();
}

id sub_265FD6298()
{
  if (v0[6])
  {

    sub_265FEC280();
  }

  isEscapingClosureAtFileLocation = v0[7];
  v2 = OBJC_IVAR____TtC13ShellSceneKit14SceneWorkspace_fbWorkspace;
  v3 = [*(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC13ShellSceneKit14SceneWorkspace_fbWorkspace) allScenes];
  sub_265FC20E0();
  v4 = sub_265FEC1F0();

  if (v4 >> 62)
  {
LABEL_24:
    v5 = sub_265FEC4A0();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = v5;
  if (v5)
  {
    v22 = v2;
    v23 = isEscapingClosureAtFileLocation;
    type metadata accessor for ProfileActivationSceneExtension();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    type metadata accessor for ProfileActivationSceneExtension.HostComponent();
    v6 = swift_getObjCClassFromMetadata();
    v7 = 0;
    v31 = v4 & 0xC000000000000001;
    v24 = v4 & 0xFFFFFFFFFFFFFF8;
    v28 = v0[2];
    v29 = v6;
    v27 = v0[3];
    v2 = v26;
    v25 = v4;
    while (1)
    {
      if (v31)
      {
        v8 = MEMORY[0x266775AE0](v7, v4);
      }

      else
      {
        if (v7 >= *(v24 + 16))
        {
          goto LABEL_23;
        }

        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v11 = type metadata accessor for ProfileActivation();
      v12 = objc_allocWithZone(v11);
      v13 = &v12[OBJC_IVAR____TtC13ShellSceneKit17ProfileActivation_identifier];
      *v13 = v28;
      v13[1] = v27;
      v12[OBJC_IVAR____TtC13ShellSceneKit17ProfileActivation_inControl] = 0;
      sub_265FC23C0(v28, v27);
      v34.receiver = v12;
      v34.super_class = v11;
      v0 = objc_msgSendSuper2(&v34, sel_init);
      v14 = [v9 componentForExtension:ObjCClassFromMetadata ofClass:v29];
      if (v14 && (aBlock[0] = v14, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280054F30, &unk_265FF03E0), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280054F40, &qword_265FEE6F8), swift_dynamicCast(), (v15 = v33) != 0))
      {
        v16 = *&v33[OBJC_IVAR____TtCC13ShellSceneKit31ProfileActivationSceneExtension13HostComponent_scene];
        if (!v16)
        {
          result = sub_265FEC5E0();
          __break(1u);
          return result;
        }

        v17 = swift_allocObject();
        *(v17 + 16) = v0;
        v18 = swift_allocObject();
        *(v18 + 16) = sub_265FD6F64;
        *(v18 + 24) = v17;
        aBlock[4] = sub_265FD4FB4;
        aBlock[5] = v18;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_265FBCE10;
        aBlock[3] = &block_descriptor_15;
        v19 = _Block_copy(aBlock);
        v20 = v16;
        v0 = v0;

        [v20 updateSettingsWithBlock_];

        _Block_release(v19);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        v4 = v25;
        v2 = v26;
        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
LABEL_19:

          v2 = v22;
          isEscapingClosureAtFileLocation = v23;
          return [*(isEscapingClosureAtFileLocation + v2) invalidate];
        }
      }

      else
      {
      }

      [v9 invalidate];

      ++v7;
      if (v10 == v2)
      {
        goto LABEL_19;
      }
    }
  }

  return [*(isEscapingClosureAtFileLocation + v2) invalidate];
}

id sub_265FD66E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v5 = sub_265FEC2B0();
  v12[2] = v12;
  v6 = *(v4 + 56);
  MEMORY[0x28223BE20](v5);
  v7 = *&v6[OBJC_IVAR____TtC13ShellSceneKit14SceneWorkspace_fbWorkspace];
  v8 = sub_265FEC0D0();
  v9 = [v7 sceneWithIdentifier_];

  KeyPath = swift_getKeyPath();
  if (v9)
  {
    v13 = v6;
    sub_265FBFC04();
    sub_265FEBF40();
  }

  else
  {
    MEMORY[0x28223BE20](KeyPath);
    v12[3] = v6;
    sub_265FC20E0();
    sub_265FBFC04();
    sub_265FEBF30();

    v9 = v13;
  }

  sub_265FD5688(v9);
  return v9;
}

id sub_265FD68EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14[1] = a4;
  v7 = sub_265FEC2B0();
  v14[2] = v14;
  v8 = *(v6 + 56);
  MEMORY[0x28223BE20](v7);
  v9 = *&v8[OBJC_IVAR____TtC13ShellSceneKit14SceneWorkspace_fbWorkspace];
  v10 = sub_265FEC0D0();
  v11 = [v9 sceneWithIdentifier_];

  KeyPath = swift_getKeyPath();
  if (v11)
  {
    v15 = v8;
    sub_265FBFC04();
    sub_265FEBF40();
  }

  else
  {
    MEMORY[0x28223BE20](KeyPath);
    v14[3] = v8;
    sub_265FC20E0();
    sub_265FBFC04();
    sub_265FEBF30();

    v11 = v15;
  }

  sub_265FD5688(v11);
  return v11;
}

uint64_t sub_265FD6AF0(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  a2();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_265FD6EC8;
  *(v6 + 24) = a4;
  v9[4] = sub_265FBFC6C;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_265FC25BC;
  v9[3] = &block_descriptor_1;
  v7 = _Block_copy(v9);

  [a1 updateSettingsWithBlock_];
  _Block_release(v7);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

id sub_265FD6C84(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  sub_265FEC2B0();
  v4 = *(v3 + 56);
  swift_getKeyPath();
  sub_265FBFC04();
  sub_265FEBF40();

  v5 = *(v4 + OBJC_IVAR____TtC13ShellSceneKit14SceneWorkspace_fbWorkspace);
  v6 = sub_265FEC0D0();
  v7 = [v5 sceneWithIdentifier_];

  return v7;
}

uint64_t sub_265FD6D74()
{
  v1 = *v0;
  sub_265FEC2B0();
  v2 = [*(*(v1 + 56) + OBJC_IVAR____TtC13ShellSceneKit14SceneWorkspace_fbWorkspace) allScenes];
  sub_265FC20E0();
  v3 = sub_265FEC1F0();

  return v3;
}

uint64_t sub_265FD6E58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055368, &unk_265FF03D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_265FD6EC8(void *a1)
{
  [a1 setDisplayConfiguration_];
  [*(v1 + 40) bounds];

  return [a1 setFrame_];
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_265FD6F6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055368, &unk_265FF03D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_265FD6FEC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_265FD6FFC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t Display.RefreshRateCriteria.description.getter(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2 == 2)
  {
    strcpy(v8, "refreshRate: ");
    HIWORD(v8[1]) = -4864;
    v3 = sub_265FEC2C0();
  }

  else
  {
    sub_265FEC550();

    strcpy(v8, "refreshRate: ");
    HIWORD(v8[1]) = -4864;
    v5 = sub_265FEC2C0();
    MEMORY[0x2667756D0](v5);

    MEMORY[0x2667756D0](0xD000000000000015, 0x8000000265FF17F0);
    if (v2)
    {
      v3 = 1702195828;
    }

    else
    {
      v3 = 0x65736C6166;
    }

    if (v2)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }

    v4 = v6;
  }

  MEMORY[0x2667756D0](v3, v4);

  return v8[0];
}

uint64_t Display.RefreshRateCriteria.init(_:allowFrameDoubling:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = a3;
  *(a2 + 8) = result;
  return result;
}

uint64_t static Display.RefreshRateCriteria.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a1 + 8);
    v3 = *(a2 + 8);
    if (v2 == 2)
    {
      if (v3 == 2)
      {
        return 1;
      }
    }

    else if (v3 != 2 && ((v3 ^ v2) & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_265FD720C(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a1 + 8);
    v3 = *(a2 + 8);
    if (v2 == 2)
    {
      if (v3 == 2)
      {
        return 1;
      }
    }

    else if (v3 != 2 && ((v3 ^ v2) & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

double sub_265FD7274@<D0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  *(a2 + 8) = 2;
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s19RefreshRateCriteriaVwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t _s19RefreshRateCriteriaVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

id sub_265FD7354()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  v1 = [v0 buildConfigurationWithError_];
  v2 = v4[0];
  if (v4[0])
  {
    swift_willThrow();
    v2;
  }

  return v1;
}

id FBScene.context.getter()
{
  result = sub_265FC5F74();
  if (result)
  {
    v1 = result;
    v2 = sub_265FDCDE4();

    if ((v2 & 0x100000000) != 0)
    {
      return 0;
    }

    else
    {
      return [objc_opt_self() contextWithId_];
    }
  }

  return result;
}

id static DefaultDisplayTransformer.defaultRegistry.getter()
{
  if (qword_28156BE28 != -1)
  {
    swift_once();
  }

  v1 = qword_28156BE30;

  return v1;
}

id DefaultDisplayTransformer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DefaultDisplayTransformer.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t DefaultDisplayTransformer.transform(_:)(void *a1)
{
  if (qword_28156BE28 != -1)
  {
    swift_once();
  }

  type metadata accessor for DefaultDisplayTransformerRegistry();
  swift_dynamicCastClassUnconditional();
  return sub_265FD75EC(a1);
}

uint64_t sub_265FD75EC(void *a1)
{
  v8 = MEMORY[0x277D84FA0];
  v9 = MEMORY[0x277D84FA0];
  v3 = [a1 identity];
  v4 = *(v1 + OBJC_IVAR____TtC13ShellSceneKitP33_EE17DF9A05593657B985954F049B576633DefaultDisplayTransformerRegistry_lockState);
  os_unfair_lock_lock((v4 + 24));
  sub_265FD7C2C((v4 + 16), a1, v3, &v8, &v9);
  os_unfair_lock_unlock((v4 + 24));
  sub_265FD40B0(v7, a1);

  v5 = v9;

  return v5;
}

id sub_265FD77A8()
{
  result = [objc_allocWithZone(type metadata accessor for DefaultDisplayTransformerRegistry()) init];
  qword_28156BE30 = result;
  return result;
}

id sub_265FD7834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a1;
  v7 = objc_allocWithZone(MEMORY[0x277CF0CE8]);

  swift_unknownObjectRetain();
  v8 = sub_265FEC0D0();
  v9 = sub_265FEC0D0();
  aBlock[4] = sub_265FD83CC;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_265FD82FC;
  aBlock[3] = &block_descriptor_2;
  v10 = _Block_copy(aBlock);
  v11 = [v7 initWithIdentifier:v8 forReason:v9 invalidationBlock:v10];

  _Block_release(v10);

  v12 = *(v3 + OBJC_IVAR____TtC13ShellSceneKitP33_EE17DF9A05593657B985954F049B576633DefaultDisplayTransformerRegistry_lockState);
  os_unfair_lock_lock((v12 + 24));
  sub_265FD83EC((v12 + 16));
  os_unfair_lock_unlock((v12 + 24));
  return v11;
}

void sub_265FD7A0C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC13ShellSceneKitP33_EE17DF9A05593657B985954F049B576633DefaultDisplayTransformerRegistry_lockState);
    v4 = Strong;

    MEMORY[0x28223BE20](v5);
    os_unfair_lock_lock((v3 + 24));
    sub_265FD845C((v3 + 16));
    os_unfair_lock_unlock((v3 + 24));
  }

  v6 = [objc_opt_self() sharedInstance];
  [v6 updateTransformsWithCompletion_];
}

id sub_265FD7B0C(id *a1, uint64_t a2)
{
  v3 = *a1;
  if (![*a1 containsObject_])
  {
    return [v3 addObject_];
  }

  sub_265FD8408();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 2;
  return swift_willThrow();
}

uint64_t sub_265FD7C2C(id *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v9 = [*a1 allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055460, &qword_265FEF8F8);
  v10 = sub_265FEC1F0();

  v57 = v10;
  if (v10 >> 62)
  {
    goto LABEL_44;
  }

  result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
  }

LABEL_3:
  v12 = 0;
  v13 = v10 & 0xC000000000000001;
  v50 = v10 + 32;
  v51 = v10 & 0xFFFFFFFFFFFFFF8;
  v53 = a5;
  v54 = v6;
  v52 = a4;
  v55 = v10 & 0xC000000000000001;
  v56 = result;
  while (1)
  {
    if (v13)
    {
      v14 = v12;
      v15 = MEMORY[0x266775AE0](v12++, v10);
      if (__OFADD__(v14, 1))
      {
        goto LABEL_43;
      }

      goto LABEL_10;
    }

    if (v12 >= *(v51 + 16))
    {
      break;
    }

    v15 = swift_unknownObjectRetain();
    if (__OFADD__(v12++, 1))
    {
      goto LABEL_43;
    }

LABEL_10:
    v17 = [v15 transformDisplayConfiguration_];
    sub_265FCF0EC(0, &qword_28156BE10, 0x277D0ACE0);
    sub_265FD8364();
    v18 = sub_265FEC2E0();

    if ((v18 & 0xC000000000000001) != 0)
    {
      sub_265FEC490();
      sub_265FEC2F0();
      v18 = v63;
      v19 = v64;
      v20 = v65;
      v21 = v66;
      v22 = v67;
    }

    else
    {
      v21 = 0;
      v23 = -1 << *(v18 + 32);
      v19 = v18 + 56;
      v24 = ~v23;
      v25 = -v23;
      if (v25 < 64)
      {
        v26 = ~(-1 << v25);
      }

      else
      {
        v26 = -1;
      }

      v22 = v26 & *(v18 + 56);
      v20 = v24;
    }

    v27 = (v20 + 64) >> 6;
    v59 = v27;
    v60 = v19;
    if (v18 < 0)
    {
LABEL_17:
      if (!sub_265FEC4C0())
      {
        goto LABEL_37;
      }

      swift_dynamicCast();
      v28 = v68;
      v29 = v21;
      v30 = v22;
      if (!v68)
      {
        goto LABEL_37;
      }

      goto LABEL_25;
    }

    while (1)
    {
      v31 = v21;
      v32 = v22;
      v29 = v21;
      if (!v22)
      {
        while (1)
        {
          v29 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            break;
          }

          if (v29 >= v27)
          {
            goto LABEL_37;
          }

          v32 = *(v19 + 8 * v29);
          ++v31;
          if (v32)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        result = sub_265FEC4A0();
        v10 = v57;
        if (!result)
        {
        }

        goto LABEL_3;
      }

LABEL_24:
      v30 = (v32 - 1) & v32;
      v28 = *(*(v18 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v32)))));
      if (!v28)
      {
        break;
      }

LABEL_25:
      v61 = v30;
      v62 = v28;
      v33 = [v28 identity];
      sub_265FCF0EC(0, &qword_280055468, 0x277D82BB8);
      v34 = [v33 rootIdentity];
      v35 = sub_265FEC420();

      if ((v35 & 1) == 0)
      {

        v48 = 0;
        goto LABEL_41;
      }

      v36 = *a4;
      if ((*a4 & 0xC000000000000001) != 0)
      {

        v37 = v18;
        v38 = v33;
        v39 = sub_265FEC4D0();

        v18 = v37;

        if (v39)
        {

          v48 = 1;
LABEL_41:
          sub_265FD8408();
          swift_allocError();
          *v49 = v62;
          *(v49 + 8) = v48;
          swift_willThrow();

          swift_unknownObjectRelease();
          return sub_265FCF430(v18);
        }
      }

      else if (*(v36 + 16))
      {
        sub_265FCF0EC(0, &unk_280055180, 0x277D0ACF0);

        v40 = sub_265FEC410();
        v41 = -1 << *(v36 + 32);
        v42 = v40 & ~v41;
        if ((*(v36 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
        {
          v43 = ~v41;
          while (1)
          {
            v44 = *(*(v36 + 48) + 8 * v42);
            v45 = sub_265FEC420();

            if (v45)
            {
              break;
            }

            v42 = (v42 + 1) & v43;
            if (((*(v36 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
            {
              goto LABEL_34;
            }
          }

          v48 = 1;
          goto LABEL_41;
        }

LABEL_34:

        a5 = v53;
        v6 = v54;
        a4 = v52;
      }

      v46 = v33;
      sub_265FD40D4(&v68, v46);

      v47 = v62;
      sub_265FD40B0(&v68, v47);

      v21 = v29;
      v19 = v60;
      v22 = v61;
      v27 = v59;
      if (v18 < 0)
      {
        goto LABEL_17;
      }
    }

LABEL_37:
    sub_265FCF430(v18);
    swift_unknownObjectRelease();
    v13 = v55;
    result = v56;
    v10 = v57;
    if (v12 == v56)
    {
    }
  }

  __break(1u);
  return result;
}

void sub_265FD82FC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

unint64_t sub_265FD8364()
{
  result = qword_28156BE00;
  if (!qword_28156BE00)
  {
    sub_265FCF0EC(255, &qword_28156BE10, 0x277D0ACE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156BE00);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_265FD8408()
{
  result = qword_280055458;
  if (!qword_280055458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280055458);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13ShellSceneKit33DefaultDisplayTransformerRegistry33_EE17DF9A05593657B985954F049B5766LLC0G5ErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_265FD84B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_265FD84F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_265FD853C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

void sub_265FD85EC(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v3 = *a2;
  if (*a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v3 <= 0x7FFFFFFF)
  {
    *a3 = v3;
    return;
  }

  __break(1u);
}

uint64_t sub_265FD863C(void *a1, unsigned int *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

unint64_t sub_265FD8694()
{
  result = qword_280054858;
  if (!qword_280054858)
  {
    type metadata accessor for DisplayPriority(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280054858);
  }

  return result;
}

uint64_t sub_265FD873C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_265FD88B8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 5391443;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 4672584;
    }

    else
    {
      v4 = 0x79626C6F64;
    }

    if (v3 == 2)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x3031524448;
    }

    else
    {
      v4 = 5391443;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE300000000000000;
  v8 = 4672584;
  if (a2 != 2)
  {
    v8 = 0x79626C6F64;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x3031524448;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_265FEC6C0();
  }

  return v11 & 1;
}

uint64_t sub_265FD89D0()
{
  sub_265FEC780();
  sub_265FEC130();

  return sub_265FEC7B0();
}

uint64_t sub_265FD8A78(uint64_t a1)
{
  sub_265FEC130();
}

uint64_t sub_265FD8B0C(uint64_t a1)
{
  sub_265FEC780();
  sub_265FEC130();

  return sub_265FEC7B0();
}

unint64_t sub_265FD8BB0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_265FD8EBC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_265FD8BE0(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 5391443;
  v4 = 0xE300000000000000;
  v5 = 4672584;
  if (*v1 != 2)
  {
    v5 = 0x79626C6F64;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x3031524448;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t Display.HDRMode.description.getter()
{
  v1 = 5391443;
  v2 = 4672584;
  if (*v0 != 2)
  {
    v2 = 0x79626C6F64;
  }

  if (*v0)
  {
    v1 = 0x3031524448;
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

uint64_t static Display.HDRMode.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = 5391443;
  v3 = *a1;
  v4 = 0xE300000000000000;
  v5 = 0xE300000000000000;
  v6 = 4672584;
  if (v3 != 2)
  {
    v6 = 0x79626C6F64;
    v5 = 0xE500000000000000;
  }

  v7 = 0x3031524448;
  if (*a1)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v7 = 5391443;
  }

  if (*a1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v3 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  v10 = 0xE300000000000000;
  v11 = 0xE300000000000000;
  v12 = 4672584;
  if (*a2 != 2)
  {
    v12 = 0x79626C6F64;
    v11 = 0xE500000000000000;
  }

  if (*a2)
  {
    v2 = 0x3031524448;
    v10 = 0xE500000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v2;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v10;
  }

  else
  {
    v14 = v11;
  }

  if (v8 == v13 && v9 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_265FEC6C0();
  }

  return v15 & 1;
}

uint64_t sub_265FD8DE4()
{
  v1 = 5391443;
  v2 = 4672584;
  if (*v0 != 2)
  {
    v2 = 0x79626C6F64;
  }

  if (*v0)
  {
    v1 = 0x3031524448;
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

unint64_t sub_265FD8E68()
{
  result = qword_280055500;
  if (!qword_280055500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280055500);
  }

  return result;
}

unint64_t sub_265FD8EBC(uint64_t a1, uint64_t a2)
{
  v2 = sub_265FEC640();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

id SSKDisplayProfile.init(configuration:)(__int128 *a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = [v1 initWithAnyConfiguration_];
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_265FD8FC8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_265FEBF00();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + OBJC_IVAR___SSKDisplayProfile_configuration + 16);
  v31 = *(v1 + OBJC_IVAR___SSKDisplayProfile_configuration);
  v32 = v7;
  v33 = *(v1 + OBJC_IVAR___SSKDisplayProfile_configuration + 32);
  v34 = v7;
  v35 = *(v1 + OBJC_IVAR___SSKDisplayProfile_configuration + 32);
  v8 = *(&v7 + 1);
  if (*(&v7 + 1))
  {
    v9 = v34;
    sub_265FDB864(&v31, v30);
    v10 = 1;
  }

  else
  {
    sub_265FDB864(&v31, v30);
    sub_265FEBEF0();
    v11 = sub_265FEBEE0();
    v13 = v12;
    (*(v4 + 8))(v6, v3);
    v15 = sub_265FDACAC(6, v11, v13, v14);
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v9 = MEMORY[0x2667756A0](v15, v17, v19, v21);
    v8 = v22;

    v10 = *(&v34 + 1) != 0;
  }

  v23 = v10 & v35 | 0x8000;
  v30[0] = 1;
  v29[16] = 1;
  v29[8] = 1;
  v24 = swift_allocObject();
  v25 = v32;
  *(v24 + 16) = v31;
  *(v24 + 32) = v25;
  *(v24 + 48) = v33;
  v26 = swift_allocObject();
  v26[2] = &unk_265FEFCB8;
  v26[3] = 0;
  v26[4] = &unk_265FEFCA8;
  v26[5] = v24;
  *a1 = v9;
  *(a1 + 8) = v8;
  *(a1 + 16) = v23;
  *(a1 + 18) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 513;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1025;
  *(a1 + 88) = 0;
  *(a1 + 96) = 771;
  *(a1 + 104) = &unk_265FEFCB0;
  *(a1 + 112) = v26;
  v27 = swift_allocObject();
  v27[2] = nullsub_1;
  v27[3] = 0;
  v27[4] = sub_265FD9658;
  v27[5] = 0;
  *(a1 + 120) = sub_265FDBA74;
  *(a1 + 128) = v27;
  return sub_265FDBA80(&v34, v30);
}

uint64_t sub_265FD927C(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  sub_265FEC250();
  v2[14] = sub_265FEC240();
  v4 = sub_265FEC230();

  return MEMORY[0x2822009F8](sub_265FD9314, v4, v3);
}

uint64_t sub_265FD9314()
{
  v1 = v0 + 16;
  v2 = *(v0 + 104);
  v3 = *(v0 + 96);

  v4 = *(v2 + 8);
  v5 = *(v4 + 64);
  v28 = v4 + 64;
  v6 = -1;
  v7 = -1 << *(v4 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v5;
  v27 = (63 - v7) >> 6;

  v10 = 0;
  v29 = result;
  while (v8)
  {
LABEL_9:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v33 = *(*(result + 56) + ((v10 << 9) | (8 * v12)));
    v13 = *(v33 + 16);
    if (v13)
    {
      v30 = v8;
      v31 = v10;

      v14 = 32;
      do
      {
        v38 = v13;
        v15 = v32[12];
        v16 = *(v33 + v14);
        v17 = *(v33 + v14 + 16);
        *(v1 + 32) = *(v33 + v14 + 32);
        *v1 = v16;
        *(v1 + 16) = v17;
        v18 = v32[6];
        v36 = v32[2];
        v37 = v32[4];
        v35 = v32[3];
        v19 = v3;
        v21 = *(v3 + 24);
        v20 = *(v3 + 32);
        __swift_project_boxed_opaque_existential_1(v15, v21);
        v22 = swift_task_alloc();
        *(v22 + 16) = v1;
        v34 = *(v20 + 8);
        sub_265FDBAE4(v1, (v32 + 7));
        v23 = v18;
        v24 = v20;
        v3 = v19;
        v25 = v34(v36, v35, v37, v23, sub_265FDBADC, v22, v21, v24);

        [v25 activate_];

        sub_265FDBB40(v1);
        v14 += 40;
        v13 = v38 - 1;
      }

      while (v38 != 1);

      result = v29;
      v8 = v30;
      v10 = v31;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    if (v11 >= v27)
    {
      break;
    }

    v8 = *(v28 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  v26 = v32[1];

  return v26();
}

uint64_t sub_265FD9570(void *a1, uint64_t a2)
{
  [a1 setClientSettings_];
  v5[4] = sub_265FD8F14;
  v5[5] = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_265FC25BC;
  v5[3] = &block_descriptor_29;
  v3 = _Block_copy(v5);

  [a1 updateSettingsWithBlock_];
  _Block_release(v3);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t SSKDisplayProfile.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t static SSKDisplayProfile.sceneHostingProfile(with:builder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(SSKDisplayProfile);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v10[4] = sub_265FBFC6C;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_265FBEFF4;
  v10[3] = &block_descriptor_3;
  v8 = _Block_copy(v10);

  [v6 initWithDelegate:a1 builder:v8];
  _Block_release(v8);

  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if ((v8 & 1) == 0)
  {
    return swift_dynamicCastUnknownClassUnconditional();
  }

  __break(1u);
  return result;
}

void *SSKDisplayProfile.appendDescription(toFormatter:)(uint64_t a1)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v3 = result;
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = v1;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_265FDB514;
    *(v5 + 24) = v4;
    v9[4] = sub_265FDB51C;
    v9[5] = v5;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_265FD9D04;
    v9[3] = &block_descriptor_9;
    v6 = _Block_copy(v9);
    swift_unknownObjectRetain_n();
    v7 = v1;

    [v3 appendProem:v7 block:v6];
    swift_unknownObjectRelease();
    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_265FD9BC8(void *a1, id a2)
{
  v3 = [a2 delegate];
  v4 = sub_265FEC0D0();

  swift_unknownObjectRelease();
  sub_265FD8FC8(v7);
  v5 = sub_265FEC6F0();
  v6 = sub_265FEC0D0();

  swift_unknownObjectRelease();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id SSKDisplayProfile.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_265FDA070(uint64_t a1, void *a2)
{
  v5 = sub_265FEBF00();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + OBJC_IVAR____TtC13ShellSceneKitP33_A1DCD04D86D5AECADE6EA65E0805B71C26DisplayProfileConfigurator_configuration;
  *(v2 + OBJC_IVAR____TtC13ShellSceneKitP33_A1DCD04D86D5AECADE6EA65E0805B71C26DisplayProfileConfigurator_configuration) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055608, &qword_265FEFC40);
  inited = swift_initStackObject();
  v30 = xmmword_265FEE990;
  *(inited + 16) = xmmword_265FEE990;
  *(inited + 32) = 0x746C7561666564;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055610, &qword_265FEFC48);
  v11 = swift_allocObject();
  *(v11 + 16) = v30;
  sub_265FEBEF0();
  v12 = sub_265FEBEE0();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  v16 = sub_265FDACAC(6, v12, v14, v15);
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = MEMORY[0x2667756A0](v16, v18, v20, v22);
  v25 = v24;

  v26 = [objc_opt_self() localIdentity];
  *(v11 + 32) = v23;
  *(v11 + 40) = v25;
  *(v11 + 48) = a2;
  *(v11 + 56) = 0;
  *(v11 + 64) = v26;
  *(inited + 56) = v11;
  v27 = a2;
  v28 = sub_265FDB340(inited);
  swift_setDeallocating();
  sub_265FDB588(inited + 32);
  *(v9 + 8) = v28;
}

uint64_t sub_265FDA36C(char a1)
{
  v3 = sub_265FEBF00();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + OBJC_IVAR____TtC13ShellSceneKitP33_A1DCD04D86D5AECADE6EA65E0805B71C26DisplayProfileConfigurator_configuration;
  v8 = *(v1 + OBJC_IVAR____TtC13ShellSceneKitP33_A1DCD04D86D5AECADE6EA65E0805B71C26DisplayProfileConfigurator_configuration + 24);
  if (v8)
  {
    v9 = *(v7 + 16);
    v10 = v8;
  }

  else
  {
    sub_265FEBEF0();
    v11 = sub_265FEBEE0();
    v13 = v12;
    (*(v4 + 8))(v6, v3);
    v15 = sub_265FDACAC(6, v11, v13, v14);
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v9 = MEMORY[0x2667756A0](v15, v17, v19, v21);
    v10 = v22;
  }

  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = a1 & 1;
}

unint64_t sub_265FDA594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_265FEC780();
  sub_265FEC130();
  v6 = sub_265FEC7B0();

  return sub_265FDA774(a1, a2, a3, v6);
}

unint64_t sub_265FDA61C(uint64_t a1)
{
  v2 = sub_265FEC410();

  return sub_265FDA838(a1, v2);
}

unint64_t sub_265FDA660(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x266775CE0](*(v1 + 40), a1, 4);

  return sub_265FDA90C(v2, v3);
}

unint64_t sub_265FDA6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  sub_265FEC780();
  if ((v3 & 0x8000) != 0)
  {
    MEMORY[0x266775D10](1);
    sub_265FEC130();
    sub_265FEC7A0();
    sub_265FEC7A0();
  }

  else
  {
    MEMORY[0x266775D10](0);
    sub_265FEC130();
  }

  v6 = sub_265FEC7B0();

  return sub_265FDA978(a1, a2, v3, v6);
}

unint64_t sub_265FDA774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    do
    {
      v10 = (*(v4 + 48) + 24 * v6);
      if (*v10 == a1 && v10[1] == a2)
      {
        break;
      }

      if (sub_265FEC6C0())
      {
        break;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_265FDA838(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_265FCF0EC(0, &unk_280055180, 0x277D0ACF0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_265FEC420();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_265FDA90C(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_265FDA978(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = (v12 + 24 * v7);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(v13 + 8);
      if (v16 < 0)
      {
        if ((a3 & 0x8000) != 0)
        {
          v18 = v14 == a1 && v15 == a2;
          if (v18 || (sub_265FEC6C0()) && ((a3 ^ v16) & 1) == 0 && (((a3 ^ v16) >> 8) & 1) == 0)
          {
            return v7;
          }
        }
      }

      else if ((a3 & 0x8000) == 0)
      {
        v17 = v14 == a1 && v15 == a2;
        if (v17 || (sub_265FEC6C0() & 1) != 0)
        {
          return v7;
        }
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_265FDAA90(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055190, &qword_265FEEF60);
  v4 = sub_265FEC620();
  LODWORD(v5) = *(a1 + 32);
  v17 = *(a1 + 40);
  result = sub_265FDA660(v5);
  v7 = v17;
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    v16 = v1;
    return v4;
  }

  v9 = (a1 + 64);
  while (1)
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v4[6] + 4 * result) = v5;
    *(v4[7] + 16 * result) = v7;
    v10 = v4[2];
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (v11)
    {
      break;
    }

    v4[2] = v12;
    v1 = *(&v7 + 1);
    if (!--v2)
    {
      goto LABEL_8;
    }

    v13 = (v9 + 24);
    v5 = *(v9 - 2);
    v18 = *v9;

    v14 = v1;
    result = sub_265FDA660(v5);
    v9 = v13;
    v7 = v18;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_265FDABBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055640, &unk_265FEFC90);
    v3 = sub_265FEC620();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_265FDA61C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 4 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

uint64_t sub_265FDACAC(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_265FEC140();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

void *sub_265FDAD48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800551E8, &qword_265FEEFF0);
  v3 = sub_265FEC620();
  LODWORD(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_265FDA660(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 4 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 2);
    v15 = *v10;

    v8 = sub_265FDA660(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_265FDAE58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800551D8, &unk_265FEEFE0);
  v3 = sub_265FEC620();
  v4 = *(a1 + 64);
  v5 = *(a1 + 96);
  *&v23[48] = *(a1 + 80);
  *&v23[64] = v5;
  *&v23[80] = *(a1 + 112);
  v6 = *(a1 + 48);
  *v23 = *(a1 + 32);
  *&v23[16] = v6;
  *&v23[32] = v4;
  v7 = *v23;
  result = sub_265FDA660(*v23);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_265FDB7F4(v23, v22);
    return v3;
  }

  v10 = a1 + 120;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v7;
    v11 = (v3[7] + 80 * result);
    *v11 = *&v23[8];
    v12 = *&v23[24];
    v13 = *&v23[40];
    v14 = *&v23[56];
    *(v11 + 58) = *&v23[66];
    v11[2] = v13;
    v11[3] = v14;
    v11[1] = v12;
    v15 = v3[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v3[2] = v17;
    if (!--v1)
    {
      goto LABEL_8;
    }

    sub_265FDB7F4(v23, v22);
    v18 = *(v10 + 32);
    v19 = *(v10 + 64);
    *&v23[48] = *(v10 + 48);
    *&v23[64] = v19;
    *&v23[80] = *(v10 + 80);
    v20 = *(v10 + 16);
    *v23 = *v10;
    *&v23[16] = v20;
    *&v23[32] = v18;
    v7 = *v23;
    result = sub_265FDA660(*v23);
    v10 += 88;
    if (v21)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_265FDAFE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800551E0, &unk_265FEFC70);
  v3 = sub_265FEC620();
  LODWORD(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  result = sub_265FDA660(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 56);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 2);
    v13 = *v8;
    v14 = v5;
    result = sub_265FDA660(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_265FDB0E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800551C8, &unk_265FEEFD0);
    v3 = sub_265FEC620();

    for (i = (a1 + 56); ; i = (i + 40))
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 4);
      v14 = *i;
      sub_265FC23C0(v5, v6);
      swift_unknownObjectRetain();
      result = sub_265FDA6A8(v5, v6, v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = v3[6] + 24 * result;
      *v10 = v5;
      *(v10 + 8) = v6;
      *(v10 + 16) = v7;
      *(v3[7] + 16 * result) = v14;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_265FDB21C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800551D0, &unk_265FEFC60);
    v3 = sub_265FEC620();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 4);
      v8 = *i;
      sub_265FC23C0(v5, v6);

      result = sub_265FDA6A8(v5, v6, v7);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 24 * result;
      *v11 = v5;
      *(v11 + 8) = v6;
      *(v11 + 16) = v7;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_265FDB340(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280055620, &qword_265FEFC58);
    v3 = sub_265FEC620();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_265FDA594(v5, v6, v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 24 * result);
      *v11 = v5;
      v11[1] = v6;
      v11[2] = v8;
      *(v3[7] + 8 * result) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t _sSo17SSKDisplayProfileC13ShellSceneKitE020mirroringMainDisplayB04withABXDSo0aB8Delegate_p_tFZ_0()
{
  sub_265FDB340(MEMORY[0x277D84F90]);
  [objc_allocWithZone(SSKDisplayProfile) initWithAnyConfiguration_];
  swift_unknownObjectRelease();
  return swift_dynamicCastUnknownClassUnconditional();
}

uint64_t sub_265FDB588(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055618, &qword_265FEFC50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265FDB5F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_265FDB664(uint64_t a1, char *a2, uint64_t a3)
{
  *&a2[OBJC_IVAR___SSKDisplayProfile_deactivationReasonsWhenActive] = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v5 = [objc_allocWithZone(type metadata accessor for DisplayProfileConfigurator()) init];
  (*(a3 + 16))(a3, v5);
  v7 = *&v5[OBJC_IVAR____TtC13ShellSceneKitP33_A1DCD04D86D5AECADE6EA65E0805B71C26DisplayProfileConfigurator_configuration];
  v6 = *&v5[OBJC_IVAR____TtC13ShellSceneKitP33_A1DCD04D86D5AECADE6EA65E0805B71C26DisplayProfileConfigurator_configuration + 8];
  v9 = *&v5[OBJC_IVAR____TtC13ShellSceneKitP33_A1DCD04D86D5AECADE6EA65E0805B71C26DisplayProfileConfigurator_configuration + 16];
  v8 = *&v5[OBJC_IVAR____TtC13ShellSceneKitP33_A1DCD04D86D5AECADE6EA65E0805B71C26DisplayProfileConfigurator_configuration + 24];
  v10 = v5[OBJC_IVAR____TtC13ShellSceneKitP33_A1DCD04D86D5AECADE6EA65E0805B71C26DisplayProfileConfigurator_configuration + 32];
  v11 = v5[OBJC_IVAR____TtC13ShellSceneKitP33_A1DCD04D86D5AECADE6EA65E0805B71C26DisplayProfileConfigurator_configuration + 33];

  v12 = &a2[OBJC_IVAR___SSKDisplayProfile_configuration];
  *v12 = v7;
  *(v12 + 1) = v6;
  *(v12 + 2) = v9;
  *(v12 + 3) = v8;
  v12[32] = v10;
  v12[33] = v11;
  v14.receiver = a2;
  v14.super_class = SSKDisplayProfile;
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t sub_265FDB788(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_getObjectType();

  return sub_265FDB64C(a1, v3);
}

uint64_t sub_265FDB7F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280055630, &unk_265FEFC80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265FDB8C0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_265FC66D0;

  return sub_265FD927C(a1, v1 + 16);
}

uint64_t sub_265FDB958(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_265FC658C;

  return sub_265FDC2FC(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_17Tm(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 24));
  a1(*(v2 + 40));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

void FBScene.transform.getter(__int128 *a2@<X8>)
{
  v3 = sub_265FDBC1C();
  if (v3)
  {
    v4 = v3;
    sub_265FE9890(v11);
    v9 = v11[1];
    v10 = v11[0];
    v8 = v11[2];

    v6 = v8;
    v5 = v9;
    v7 = v10;
  }

  else
  {
    v5 = xmmword_265FEF5E0;
    v7 = xmmword_265FEF5F0;
    v6 = 0uLL;
  }

  *a2 = v7;
  a2[1] = v5;
  a2[2] = v6;
}

id sub_265FDBC1C()
{
  type metadata accessor for TransformSceneExtension();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for TransformSceneExtension.HostComponent();
  result = [v0 componentForExtension:ObjCClassFromMetadata ofClass:swift_getObjCClassFromMetadata()];
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280054F30, &unk_265FF03E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280055310, &qword_265FEF6D8);
    swift_dynamicCast();
    return v3;
  }

  return result;
}

void sub_265FDBCCC(__int128 *a1@<X8>)
{
  v2 = sub_265FDBC1C();
  if (v2)
  {
    v3 = v2;
    sub_265FE9890(v10);
    v8 = v10[1];
    v9 = v10[0];
    v7 = v10[2];

    v5 = v7;
    v4 = v8;
    v6 = v9;
  }

  else
  {
    v4 = xmmword_265FEF5E0;
    v6 = xmmword_265FEF5F0;
    v5 = 0uLL;
  }

  *a1 = v6;
  a1[1] = v4;
  a1[2] = v5;
}

void sub_265FDBD48(_OWORD *a1)
{
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  v4[2] = a1[2];
  v2 = sub_265FDBC1C();
  if (v2)
  {
    v3 = v2;
    sub_265FE9A48(v4);
  }
}

void FBScene.transform.setter(_OWORD *a1)
{
  v2 = sub_265FDBC1C();
  if (v2)
  {
    v3 = v2;
    sub_265FE9A48(a1);
  }
}

uint64_t (*FBScene.transform.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xC8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 192) = v1;
  v5 = sub_265FDBC1C();
  if (v5)
  {
    v6 = v5;
    sub_265FE9890(v4 + 6);
    v12 = v4[7];
    v13 = v4[6];
    v11 = v4[8];

    v8 = v11;
    v7 = v12;
    v9 = v13;
  }

  else
  {
    v7 = xmmword_265FEF5E0;
    v9 = xmmword_265FEF5F0;
    v8 = 0uLL;
  }

  v4[9] = v9;
  v4[10] = v7;
  v4[11] = v8;
  return sub_265FDBEF0;
}

void sub_265FDBEF0(_OWORD **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[10];
    *v2 = v2[9];
    v2[1] = v3;
    v2[2] = v2[11];
    v4 = sub_265FDBC1C();
    if (!v4)
    {
      goto LABEL_7;
    }

    v5 = v4;
    v6 = v2;
  }

  else
  {
    v6 = v2 + 3;
    v7 = v2[10];
    v2[3] = v2[9];
    v2[4] = v7;
    v2[5] = v2[11];
    v8 = sub_265FDBC1C();
    if (!v8)
    {
      goto LABEL_7;
    }

    v5 = v8;
  }

  sub_265FE9A48(v6);

LABEL_7:

  free(v2);
}

double ManagedProfile.init(identifier:isMainLike:supportsSecureRendering:isActive:preferences:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, void (*a6)(__int128 *)@<X5>, uint64_t a7@<X8>)
{
  *(a7 + 104) = &unk_265FEFCB8;
  *(a7 + 112) = 0;
  *(a7 + 120) = nullsub_1;
  *(a7 + 128) = 0;
  *a7 = a1;
  *(a7 + 8) = a2;
  if (a4)
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  *(a7 + 16) = v8 & 0xFFFE | a3 & 1 | 0x8000;
  *(a7 + 18) = a5;
  *&v12 = 0;
  WORD4(v12) = 513;
  v13 = 0uLL;
  LOBYTE(v14) = 1;
  *(&v14 + 1) = 0;
  *v15 = 0;
  *&v15[8] = 1025;
  *&v15[16] = 0;
  *&v15[24] = 771;
  a6(&v12);
  v9 = v12;
  *(a7 + 40) = v13;
  v10 = *v15;
  *(a7 + 56) = v14;
  *(a7 + 72) = v10;
  result = *&v15[10];
  *(a7 + 82) = *&v15[10];
  *(a7 + 24) = v9;
  return result;
}

uint64_t ManagedProfile.onConnect(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 80);
  v8 = *(v3 + 112);
  v26[0] = *(v3 + 96);
  v26[1] = v8;
  v9 = *(v3 + 16);
  v10 = *(v3 + 48);
  v22 = *(v3 + 32);
  v11 = v22;
  v23 = v10;
  v12 = *(v3 + 48);
  v13 = *(v3 + 80);
  v24 = *(v3 + 64);
  v14 = v24;
  v25 = v13;
  v15 = *(v3 + 16);
  v21[0] = *v3;
  v16 = v21[0];
  v21[1] = v15;
  v17 = *(v3 + 112);
  *(a3 + 96) = v26[0];
  *(a3 + 112) = v17;
  *(a3 + 32) = v11;
  *(a3 + 48) = v12;
  *(a3 + 64) = v14;
  *(a3 + 80) = v7;
  v27 = *(v3 + 128);
  *(a3 + 128) = *(v3 + 128);
  *a3 = v16;
  *(a3 + 16) = v9;
  v18 = swift_allocObject();
  *(v18 + 16) = *(v26 + 8);
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;
  *(a3 + 104) = &unk_265FEFCB0;
  *(a3 + 112) = v18;
  sub_265FC7634(v21, v20);
}

uint64_t ManagedProfile.onSceneRequest(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 80);
  v8 = *(v3 + 112);
  v25 = *(v3 + 96);
  v9 = v25;
  *v26 = v8;
  v10 = *(v3 + 16);
  v11 = *(v3 + 48);
  v21 = *(v3 + 32);
  v12 = v21;
  v22 = v11;
  v13 = *(v3 + 80);
  v14 = *(v3 + 48);
  v23 = *(v3 + 64);
  v24 = v13;
  v15 = *(v3 + 16);
  v20[0] = *v3;
  v16 = v20[0];
  v20[1] = v15;
  *(a3 + 64) = v23;
  *(a3 + 80) = v7;
  *(a3 + 96) = v9;
  *a3 = v16;
  *(a3 + 16) = v10;
  *&v26[16] = *(v3 + 128);
  *(a3 + 112) = *(v3 + 112);
  *(a3 + 32) = v12;
  *(a3 + 48) = v14;
  v17 = swift_allocObject();
  *(v17 + 16) = *&v26[8];
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;
  *(a3 + 120) = sub_265FDC8C8;
  *(a3 + 128) = v17;
  sub_265FC7634(v20, v19);
}

double ManagedProfile.init(identity:isActive:preferences:)@<D0>(uint64_t a1@<X0>, char a2@<W1>, void (*a3)(__int128 *)@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 16);
  *(a4 + 104) = &unk_265FEFCB8;
  *(a4 + 112) = 0;
  *(a4 + 120) = nullsub_1;
  *(a4 + 128) = 0;
  *a4 = *a1;
  *(a4 + 16) = v5;
  *(a4 + 18) = a2;
  *&v9 = 0;
  WORD4(v9) = 513;
  v10 = 0uLL;
  LOBYTE(v11) = 1;
  *(&v11 + 1) = 0;
  *v12 = 0;
  *&v12[8] = 1025;
  *&v12[16] = 0;
  *&v12[24] = 771;
  a3(&v9);
  v6 = v9;
  *(a4 + 40) = v10;
  v7 = *v12;
  *(a4 + 56) = v11;
  *(a4 + 72) = v7;
  result = *&v12[10];
  *(a4 + 82) = *&v12[10];
  *(a4 + 24) = v6;
  return result;
}

uint64_t sub_265FDC2FC(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  v5[5] = v7;
  *v7 = v5;
  v7[1] = sub_265FDC3F8;

  return v9(a1);
}

uint64_t sub_265FDC3F8()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = v3[1];

    return v4();
  }

  else
  {
    v8 = (v2[3] + *v2[3]);
    v6 = swift_task_alloc();
    v2[6] = v6;
    *v6 = v3;
    v6[1] = sub_265FDC5CC;
    v7 = v2[2];

    return v8(v7);
  }
}

uint64_t sub_265FDC5CC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_265FDC6C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_265FC66D0;

  return sub_265FDC2FC(a1, v4, v5, v7, v6);
}

uint64_t sub_265FDC77C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 80);
  v8 = *(v3 + 112);
  v26[0] = *(v3 + 96);
  v26[1] = v8;
  v9 = *(v3 + 16);
  v10 = *(v3 + 48);
  v22 = *(v3 + 32);
  v11 = v22;
  v23 = v10;
  v12 = *(v3 + 48);
  v13 = *(v3 + 80);
  v24 = *(v3 + 64);
  v14 = v24;
  v25 = v13;
  v15 = *(v3 + 16);
  v21[0] = *v3;
  v16 = v21[0];
  v21[1] = v15;
  v17 = *(v3 + 112);
  *(a3 + 96) = v26[0];
  *(a3 + 112) = v17;
  *(a3 + 32) = v11;
  *(a3 + 48) = v12;
  *(a3 + 64) = v14;
  *(a3 + 80) = v7;
  v27 = *(v3 + 128);
  *(a3 + 128) = *(v3 + 128);
  *a3 = v16;
  *(a3 + 16) = v9;
  v18 = swift_allocObject();
  *(v18 + 16) = *(v26 + 8);
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;
  *(a3 + 104) = &unk_265FEFDB8;
  *(a3 + 112) = v18;
  sub_265FC7634(v21, v20);
}

uint64_t sub_265FDC8CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 80);
  v8 = *(v3 + 112);
  v25 = *(v3 + 96);
  v9 = v25;
  *v26 = v8;
  v10 = *(v3 + 16);
  v11 = *(v3 + 48);
  v21 = *(v3 + 32);
  v12 = v21;
  v22 = v11;
  v13 = *(v3 + 80);
  v14 = *(v3 + 48);
  v23 = *(v3 + 64);
  v24 = v13;
  v15 = *(v3 + 16);
  v20[0] = *v3;
  v16 = v20[0];
  v20[1] = v15;
  *(a3 + 64) = v23;
  *(a3 + 80) = v7;
  *(a3 + 96) = v9;
  *a3 = v16;
  *(a3 + 16) = v10;
  *&v26[16] = *(v3 + 128);
  *(a3 + 112) = *(v3 + 112);
  *(a3 + 32) = v12;
  *(a3 + 48) = v14;
  v17 = swift_allocObject();
  *(v17 + 16) = *&v26[8];
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;
  *(a3 + 120) = sub_265FDCB38;
  *(a3 + 128) = v17;
  sub_265FC7634(v20, v19);
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_265FDC9DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_265FDCA24(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_265FDCA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 32);
  (*(v3 + 16))();
  return v7(a1, a2, a3);
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

__n128 ManagedProfile.Preferences.displayPreferences.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 58) = *(v1 + 58);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

__n128 ManagedProfile.Preferences.displayPreferences.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v2;
  *(v1 + 58) = *(a1 + 58);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

uint64_t static ManagedProfile.Preferences.== infix(_:_:)(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v10[0] = v2;
  *(v10 + 10) = *(a1 + 58);
  v3 = a1[1];
  v9[0] = *a1;
  v9[1] = v3;
  v4 = a2[3];
  v7[2] = a2[2];
  v8[0] = v4;
  *(v8 + 10) = *(a2 + 58);
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  return _s13ShellSceneKit7DisplayV11PreferencesV2eeoiySbAE_AEtFZ_0(v9, v7) & 1;
}

uint64_t sub_265FDCBF0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v10[0] = v2;
  *(v10 + 10) = *(a1 + 58);
  v3 = a1[1];
  v9[0] = *a1;
  v9[1] = v3;
  v4 = a2[3];
  v7[2] = a2[2];
  v8[0] = v4;
  *(v8 + 10) = *(a2 + 58);
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  return _s13ShellSceneKit7DisplayV11PreferencesV2eeoiySbAE_AEtFZ_0(v9, v7) & 1;
}

id sub_265FDCC64()
{
  if (![v0 isValid])
  {
    goto LABEL_9;
  }

  v1 = [v0 clientScene];
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = v1;
  v3 = [v1 settings];

  v4 = swift_dynamicCastObjCProtocolConditional();
  if (!v4)
  {

LABEL_9:
    result = sub_265FEC5E0();
    __break(1u);
    return result;
  }

  v5 = [v4 contextIdValue];

  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [objc_opt_self() contextWithId_];

  return v7;
}

unint64_t sub_265FDCDE4()
{
  v1 = [v0 hostScene];
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = v1;
  v3 = [v1 settings];

  v4 = swift_dynamicCastObjCProtocolConditional();
  if (!v4)
  {

LABEL_9:
    result = sub_265FEC5E0();
    __break(1u);
    return result;
  }

  v5 = [v4 contextIdValue];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 unsignedIntValue];

    v8 = v7;
  }

  else
  {

    v8 = 0;
  }

  return v8 | ((v6 == 0) << 32);
}

uint64_t sub_265FDCF5C(uint64_t a1)
{
  v3 = [v1 hostScene];
  if (v3)
  {
    v4 = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 20) = BYTE4(a1) & 1;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_265FD4FD4;
    *(v6 + 24) = v5;
    aBlock[4] = sub_265FBFC6C;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_265FBCE10;
    aBlock[3] = &block_descriptor_4;
    v7 = _Block_copy(aBlock);

    [v4 updateSettingsWithBlock_];

    _Block_release(v7);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if ((v4 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  result = sub_265FEC5E0();
  __break(1u);
  return result;
}

id sub_265FDD16C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055800, &unk_265FF0510);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_265FEE990;
  *(v4 + 32) = a3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280055830, &qword_265FEFEA0);
  v5 = sub_265FEC1E0();

  return v5;
}

void sub_265FDD208(void *a1, uint64_t a2)
{
  v4 = swift_dynamicCastObjCProtocolConditional();
  if (v4)
  {
    v5 = v4;
    if ((a2 & 0x100000000) != 0)
    {
      v9 = a1;
      v8 = 0;
    }

    else
    {
      v6 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      v7 = a1;
      v8 = [v6 initWithUnsignedInt_];
    }

    [v5 setContextIdValue_];
  }

  else
  {
    sub_265FEC5E0();
    __break(1u);
  }
}

id sub_265FDD300(void *a1, uint64_t a2, uint64_t a3)
{
  v6.receiver = a1;
  v6.super_class = swift_getObjectType();
  swift_unknownObjectRetain();
  v4 = objc_msgSendSuper2(&v6, sel_initWithScene_, a3);
  swift_unknownObjectRelease();
  if (v4)
  {
  }

  return v4;
}

id sub_265FDD388(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t SceneRequest.init(sceneIdentifier:specification:initialClientSettings:clientIdentity:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t SceneRequest.sceneIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SceneRequest.sceneIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void *SceneRequest.initialClientSettings.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t SceneRequest.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_265FEC130();
  sub_265FEC430();
  sub_265FEC7A0();
  if (v2)
  {
    v3 = v2;
    sub_265FEC430();
  }

  return sub_265FEC430();
}

uint64_t SceneRequest.hashValue.getter()
{
  v1 = *(v0 + 24);
  sub_265FEC780();
  sub_265FEC130();
  sub_265FEC430();
  sub_265FEC7A0();
  if (v1)
  {
    v2 = v1;
    sub_265FEC430();
  }

  sub_265FEC430();
  return sub_265FEC7B0();
}

uint64_t sub_265FDD77C()
{
  v1 = *(v0 + 24);
  sub_265FEC780();
  sub_265FEC130();
  sub_265FEC430();
  sub_265FEC7A0();
  if (v1)
  {
    v2 = v1;
    sub_265FEC430();
  }

  sub_265FEC430();
  return sub_265FEC7B0();
}

uint64_t sub_265FDD828(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_265FEC130();
  sub_265FEC430();
  sub_265FEC7A0();
  if (v2)
  {
    v3 = v2;
    sub_265FEC430();
  }

  return sub_265FEC430();
}

uint64_t sub_265FDD8B4(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_265FEC780();
  sub_265FEC130();
  sub_265FEC430();
  sub_265FEC7A0();
  if (v2)
  {
    v3 = v2;
    sub_265FEC430();
  }

  sub_265FEC430();
  return sub_265FEC7B0();
}

uint64_t _s13ShellSceneKit0B7RequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[3];
  v3 = a2[3];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_265FEC6C0() & 1) != 0)
  {
    sub_265FCF0EC(0, &qword_280055468, 0x277D82BB8);
    if (sub_265FEC420())
    {
      if (v2)
      {
        if (v3)
        {
          sub_265FCF0EC(0, &qword_280055650, 0x277D0ADB0);
          v5 = v3;
          v6 = v2;
          v7 = sub_265FEC420();

          if (v7)
          {
            return sub_265FEC420() & 1;
          }
        }
      }

      else if (!v3)
      {
        return sub_265FEC420() & 1;
      }
    }
  }

  return 0;
}

unint64_t sub_265FDDA78()
{
  result = qword_280055648;
  if (!qword_280055648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280055648);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_265FDDAE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_265FDDB28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void static HostingGroup.default.getter(void *a1@<X8>)
{
  *a1 = 0x746C7561666564;
  a1[1] = 0xE700000000000000;
  a1[2] = 0;
}

uint64_t HostingGroup.id.getter()
{
  v1 = *v0;

  return v1;
}

ShellSceneKit::HostingGroup __swiftcall HostingGroup.init(_:)(Swift::String a1)
{
  *v1 = a1;
  v1[1]._countAndFlagsBits = 0;
  result.id = a1;
  return result;
}

uint64_t static HostingGroup.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_265FEC6C0();
  }
}

uint64_t sub_265FDDC30()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_265FDDC64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_265FEC6C0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000265FF1D50 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_265FEC6C0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_265FDDD58(uint64_t a1)
{
  v2 = sub_265FDDF64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265FDDD94(uint64_t a1)
{
  v2 = sub_265FDDF64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HostingGroup.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055658, "HE");
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v9[0] = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265FDDF64();
  sub_265FEC7D0();
  v11 = 0;
  v7 = v9[1];
  sub_265FEC670();
  if (!v7)
  {
    v10 = 1;
    sub_265FEC680();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_265FDDF64()
{
  result = qword_280055660;
  if (!qword_280055660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280055660);
  }

  return result;
}

uint64_t HostingGroup.hashValue.getter()
{
  sub_265FEC780();
  sub_265FEC130();
  return sub_265FEC7B0();
}

uint64_t HostingGroup.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055668, &qword_265FEFFC0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265FDDF64();
  sub_265FEC7C0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v17 = 0;
  v9 = sub_265FEC650();
  v11 = v10;
  v12 = v9;
  v16 = 1;
  v13 = sub_265FEC660();
  (*(v6 + 8))(v8, v5);
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_265FDE210()
{
  sub_265FEC780();
  sub_265FEC130();
  return sub_265FEC7B0();
}

uint64_t sub_265FDE264(uint64_t a1)
{
  sub_265FEC780();
  sub_265FEC130();
  return sub_265FEC7B0();
}

uint64_t sub_265FDE2AC(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_265FEC6C0();
  }
}

uint64_t HostingGroup.description.getter()
{
  MEMORY[0x2667756D0](*v0, v0[1]);
  MEMORY[0x2667756D0](93, 0xE100000000000000);
  return 0x3A70756F72675BLL;
}

unint64_t sub_265FDE33C()
{
  result = qword_28156BE38;
  if (!qword_28156BE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156BE38);
  }

  return result;
}

uint64_t sub_265FDE390()
{
  MEMORY[0x2667756D0](*v0, v0[1]);
  MEMORY[0x2667756D0](93, 0xE100000000000000);
  return 0x3A70756F72675BLL;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_265FDE400(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_265FDE448(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for HostingGroup.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HostingGroup.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_265FDE5F8()
{
  result = qword_280055670;
  if (!qword_280055670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280055670);
  }

  return result;
}

unint64_t sub_265FDE650()
{
  result = qword_280055678;
  if (!qword_280055678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280055678);
  }

  return result;
}

unint64_t sub_265FDE6A8()
{
  result = qword_280055680;
  if (!qword_280055680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280055680);
  }

  return result;
}

BOOL sub_265FDE6FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  if (a4)
  {
    return v7 < v6;
  }

  else
  {
    return v6 < v7;
  }
}

uint64_t sub_265FDE778@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a2;
  v9 = sub_265FEBF00();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_allocWithZone(type metadata accessor for FBSHardwareSource());
  v14 = a1;
  v15 = sub_265FC9D84(v14);
  *(a5 + 48) = 0;
  *(a5 + 52) = 0;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4;
  *(a5 + 32) = nullsub_1;
  *(a5 + 40) = 0;
  v44 = 0;
  v45 = 0xE000000000000000;

  sub_265FEC550();

  v44 = 0xD00000000000002FLL;
  v45 = 0x8000000265FF1170;
  sub_265FEBEF0();
  v16 = sub_265FEBEE0();
  v18 = v17;
  (*(v10 + 8))(v12, v9);
  v20 = sub_265FDACAC(6, v16, v18, v19);
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = MEMORY[0x2667756A0](v20, v22, v24, v26);
  v29 = v28;

  MEMORY[0x2667756D0](v27, v29);

  v30 = objc_allocWithZone(MEMORY[0x277D0AAE8]);
  v31 = sub_265FEC0D0();

  v32 = [v30 initWithIdentifier_];

  *(a5 + 24) = v32;
  v33 = objc_allocWithZone(type metadata accessor for SceneWorkspace(0));
  v34 = sub_265FBEA38(v32);
  swift_getKeyPath();
  v41 = v34;
  v42 = nullsub_1;
  v43 = 0;
  v44 = v34;
  sub_265FE7AF8(&qword_280054B00, type metadata accessor for SceneWorkspace, &unk_265FEE120);
  sub_265FEBF30();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280055040, &qword_265FEEB58);
  v35 = swift_allocObject();
  sub_265FE5AA8(v15, v34, v40, v35);
  v37 = v36;

  *a5 = v37;
  return result;
}

uint64_t sub_265FDEAB0(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055218, &qword_265FEF000);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v167[-v9];
  v222 = a1;
  if (a3)
  {
    v11 = [*(a1 + 16) displayId];
    swift_beginAccess();
    if (!*(*(v4 + 72) + 16))
    {
      return swift_endAccess();
    }

    sub_265FDA660(v11);
    if ((v12 & 1) == 0)
    {
      return swift_endAccess();
    }

    swift_endAccess();
  }

  v176 = v10;
  v13 = &v200;
  v14 = *(v4 + 16);
  sub_265FCA7C0(a1, &v204);

  v190 = a1;
  v231[4] = v208;
  v231[5] = v209[0];
  v231[6] = v209[1];
  v232 = v210;
  v231[0] = v204;
  v231[1] = v205;
  v231[2] = v206;
  v231[3] = v207;
  v15 = *(a1 + 24);
  v212 = MEMORY[0x277D84F90];
  MEMORY[0x28223BE20](v16);
  *&v167[-32] = &v212;
  *&v167[-24] = v4;
  v165 = v231;
  v166 = &v222;
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v19 = v190;
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = a2;
  v185 = v15;

  v188 = a2;
  sub_265FEBF10();

  v20 = v190;
  v21 = v212;
  swift_beginAccess();

  sub_265FE079C(&v200, &v204, v21, v20);
  swift_endAccess();
  v220 = v201[1];
  v221[0] = v201[2];
  *(v221 + 10) = *(&v201[2] + 10);
  v218 = v200;
  v219 = v201[0];
  v227 = v208;
  v228[0] = v209[0];
  *(v228 + 10) = *(v209 + 10);
  v223 = v204;
  v224 = v205;
  v225 = v206;
  v226 = v207;
  v201[2] = v221[0];
  *(&v201[2] + 10) = *(v221 + 10);
  sub_265FD0968(&v204);
  if (v211 == 1)
  {
    sub_265FD6FFC(&v204, &unk_280054BE0, &qword_265FF0390);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 1;
    LOBYTE(v229[0]) = 1;
    LOBYTE(v193) = 1;
    LOBYTE(v197) = 1;
    v29 = 1;
    v30 = 1;
    v31 = 3;
    v32 = 4;
    v33 = 2;
    v34 = 3;
  }

  else
  {
    v22 = *(&v205 + 1);
    v182 = v206;
    v216 = *(&v206 + 2);
    v217 = WORD3(v206);
    v183 = v207;
    v184 = *(&v206 + 1);
    v179 = BYTE1(v206);
    v180 = BYTE8(v207);
    v215[0] = *(&v207 + 9);
    *(v215 + 3) = HIDWORD(v207);
    v36 = *(&v208 + 1);
    v181 = v208;
    v30 = LOBYTE(v209[0]);
    v32 = BYTE1(v209[0]);
    v214 = WORD3(v209[0]);
    v213 = *(v209 + 2);
    v37 = *(&v209[0] + 1);
    v38 = LOBYTE(v209[1]);
    v39 = v21;
    v40 = BYTE1(v209[1]);
    sub_265FC2504(&v204);
    v34 = v40;
    v21 = v39;
    v31 = v38;
    v27 = v37;
    v33 = v179;
    v29 = v180;
    v26 = v36;
    v25 = v181;
    v13 = &v200;
    v28 = v182;
    v24 = v183;
    v23 = v184;
  }

  v175 = v22;
  *&v204 = v22;
  v182 = v28;
  BYTE8(v204) = v28;
  v179 = v33;
  BYTE9(v204) = v33;
  *(&v204 + 10) = v216;
  HIWORD(v204) = v217;
  v183 = v24;
  v184 = v23;
  *&v205 = v23;
  *(&v205 + 1) = v24;
  LOBYTE(v206) = v29;
  *(&v206 + 1) = v215[0];
  DWORD1(v206) = *(v215 + 3);
  v181 = v25;
  *(&v206 + 1) = v25;
  v173 = v27;
  v174 = v26;
  *&v207 = v26;
  v171 = v31;
  v172 = v30;
  BYTE8(v207) = v30;
  v169 = v34;
  v170 = v32;
  BYTE9(v207) = v32;
  *(&v207 + 10) = v213;
  HIWORD(v207) = v214;
  *&v208 = v27;
  BYTE8(v208) = v31;
  BYTE9(v208) = v34;
  v177 = sub_265FC41FC(&v204);
  v168 = sub_265FC44C4(v177);
  v178 = v21;
  v180 = v29;
  if (v168)
  {
    sub_265FC4F54();
  }

  else
  {
    sub_265FC5158();
  }

  v41 = LOWORD(v228[0]);
  if ((~LOWORD(v228[0]) & 0xFEFE) != 0)
  {
    v42 = v227;
    swift_beginAccess();
    v13 = *(*(v4 + 88) + 16);
    sub_265FC23C0(v42, *(&v42 + 1));
    if (v13 && (sub_265FDA6A8(v42, *(&v42 + 1), v41), (v43 & 1) != 0))
    {
      swift_endAccess();
      swift_unknownObjectRetain();
      sub_265FD5E48();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_endAccess();
    }

    swift_beginAccess();
    v44 = *(v4 + 96);
    if (*(v44 + 16) && (v45 = sub_265FDA6A8(v42, *(&v42 + 1), v41), (v46 & 1) != 0))
    {
      v47 = *(*(v44 + 56) + 8 * v45);
      swift_endAccess();

      sub_265FD2458(v42, *(&v42 + 1), v41);
      sub_265FD3158(0);
      v13 = *(v47 + 24);
      *(v47 + 24) = 0;
    }

    else
    {
      swift_endAccess();
      sub_265FD2458(v42, *(&v42 + 1), v41);
    }
  }

  v48 = *(&v226 + 1);
  v233 = *(&v226 + 1);
  v192 = *(*(&v226 + 1) + 16);
  if (v192)
  {
    v234 = v226;
    sub_265FE7B6C(&v234, &v204, &qword_2800556D8, &qword_265FF0398);
    sub_265FE7B6C(&v233, &v204, &qword_2800556E0, &qword_265FF03A0);
    v30 = 0;
    v49 = (v48 + 48);
    *&v191 = v48;
    while (v30 < *(v48 + 16))
    {
      v51 = *(v49 - 2);
      v50 = *(v49 - 1);
      v52 = *v49;
      swift_beginAccess();
      sub_265FC23C0(v51, v50);
      v53 = sub_265FDA6A8(v51, v50, v52);
      if (v54)
      {
        v55 = v53;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v57 = *(v4 + 88);
        *&v200 = v57;
        *(v4 + 88) = 0x8000000000000000;
        v13 = v4;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_265FCE130();
          v57 = v200;
        }

        sub_265FC23C8(*(*(v57 + 48) + 24 * v55), *(*(v57 + 48) + 24 * v55 + 8));
        sub_265FCD780(v55, v57);
        *(v4 + 88) = v57;
        swift_endAccess();
        sub_265FD6298();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_endAccess();
      }

      swift_beginAccess();
      v58 = sub_265FDA6A8(v51, v50, v52);
      if (v59)
      {
        v60 = v58;
        v61 = swift_isUniquelyReferenced_nonNull_native();
        v62 = *(v4 + 96);
        *&v200 = v62;
        *(v4 + 96) = 0x8000000000000000;
        v13 = v4;
        if (!v61)
        {
          sub_265FCDFB4();
          v62 = v200;
        }

        sub_265FC23C8(*(*(v62 + 48) + 24 * v60), *(*(v62 + 48) + 24 * v60 + 8));
        sub_265FCD524(v60, v62);
        *(v4 + 96) = v62;
        swift_endAccess();
        sub_265FC23C8(v51, v50);
        sub_265FD2BE8();
      }

      else
      {
        swift_endAccess();
        sub_265FC23C8(v51, v50);
      }

      ++v30;
      v49 += 12;
      v48 = v191;
      if (v192 == v30)
      {
        sub_265FD6FFC(&v234, &qword_2800556D8, &qword_265FF0398);
        sub_265FD6FFC(&v233, &qword_2800556E0, &qword_265FF03A0);
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

LABEL_36:
  v235 = *(&v223 + 1);
  v189 = *(&v223 + 1);
  v236[0] = v223;
  v63 = *(*(&v223 + 1) + 16);
  sub_265FE7B6C(v236, &v204, &qword_2800556D8, &qword_265FF0398);
  sub_265FE7B6C(&v235, &v204, &qword_2800556E0, &qword_265FF03A0);
  v192 = v4;
  v187 = v63;
  if (v63)
  {
    v64 = 0;
    v13 = (v189 + 48);
    v186 = MEMORY[0x277D84F90] >> 62;
    do
    {
      if (v64 >= *(v189 + 16))
      {
        goto LABEL_90;
      }

      v66 = *(v13 - 2);
      v65 = *(v13 - 1);
      v67 = *v13;
      v69 = *(&v218 + 1);
      v68 = v218;
      v30 = v219;
      v70 = *(*(&v218 + 1) + 16);
      if (v218)
      {
        sub_265FC23C0(*(v13 - 2), *(v13 - 1));

        v71 = sub_265FC0994(v66, v65, v67, v69 + 32, v70, (v68 + 16), v68 + 32);
        v73 = v72;

        if (v73)
        {
          goto LABEL_95;
        }
      }

      else
      {
        v71 = sub_265FE46EC(*(v13 - 2), *(v13 - 1), *v13, *(&v218 + 1) + 32, *(*(&v218 + 1) + 16));
        v68 = v74;
        sub_265FC23C0(v66, v65);
        if (v68)
        {
LABEL_95:
          *&v204 = 0;
          *(&v204 + 1) = 0xE000000000000000;
          sub_265FEC550();

          *&v200 = 0xD000000000000026;
          *(&v200 + 1) = 0x8000000265FF1EC0;
          *&v204 = v66;
          *(&v204 + 1) = v65;
          LOWORD(v205) = v67;
          v159 = Profile.DisplayIdentity.description.getter();
          MEMORY[0x2667756D0](v159);

          LODWORD(v166) = 0;
          i = 211;
          goto LABEL_96;
        }
      }

      v75 = v192;
      if ((v71 & 0x8000000000000000) != 0)
      {
        goto LABEL_91;
      }

      if (v71 >= *(v30 + 16))
      {
        goto LABEL_92;
      }

      sub_265FC24A8(v30 + 144 * v71 + 32, &v200);
      sub_265FC23C8(v66, v65);
      v209[1] = v201[5];
      v210 = v202;
      v211 = v203;
      v206 = v201[1];
      v207 = v201[2];
      v208 = v201[3];
      v209[0] = v201[4];
      v204 = v200;
      v205 = v201[0];
      v197 = v200;
      v198 = v201[0];
      v195 = *(&v201[2] + 8);
      v196[0] = *(&v201[3] + 8);
      *(v196 + 10) = *(&v201[4] + 2);
      v193 = *(v201 + 8);
      v194 = *(&v201[1] + 8);
      sub_265FC23C0(v200, *(&v200 + 1));
      v76 = sub_265FD0584(&v197, &v193);
      sub_265FC23C8(v197, *(&v197 + 1));
      sub_265FE7B6C(&v209[1] + 8, &v193, &qword_280054F70, &qword_265FEE9F0);
      if (!*(&v194 + 1))
      {
        sub_265FD6FFC(&v193, &qword_280054F70, &qword_265FEE9F0);
        LODWORD(v166) = 0;
        v165 = 73;
        goto LABEL_97;
      }

      sub_265FBD900(&v193, &v197);
      v77 = __swift_project_boxed_opaque_existential_1(&v197, v199);
      v229[0] = *v77;
      v78 = *(v77 + 4);
      v80 = *(v77 + 1);
      v79 = *(v77 + 2);
      v229[3] = *(v77 + 3);
      v229[4] = v78;
      v229[1] = v80;
      v229[2] = v79;
      v82 = *(v77 + 6);
      v81 = *(v77 + 7);
      v83 = *(v77 + 5);
      v230 = v77[16];
      v229[6] = v82;
      v229[7] = v81;
      v229[5] = v83;
      _s5StateCMa();
      swift_allocObject();
      v84 = v190;

      sub_265FC7634(v229, &v193);
      *&v191 = v76;
      v85 = sub_265FE27A4(v229, v84, v191);
      __swift_destroy_boxed_opaque_existential_0(&v197);
      v86 = v204;
      v87 = v205;
      swift_beginAccess();
      sub_265FC23C0(v86, *(&v86 + 1));

      v88 = swift_isUniquelyReferenced_nonNull_native();
      *&v197 = *(v75 + 88);
      *(v75 + 88) = 0x8000000000000000;
      sub_265FE612C(v85, v86, *(&v86 + 1), v87, v88, &v197);
      sub_265FC23C8(v86, *(&v86 + 1));
      *(v75 + 88) = v197;
      swift_endAccess();
      v89 = v204;
      v90 = v205;
      type metadata accessor for _HostingContext();
      v30 = swift_allocObject();
      if (v186 && sub_265FEC4A0())
      {
        sub_265FC23C0(v89, *(&v89 + 1));
        sub_265FE62D8(MEMORY[0x277D84F90]);
      }

      else
      {
        sub_265FC23C0(v89, *(&v89 + 1));
        v91 = MEMORY[0x277D84FA0];
      }

      ++v64;
      *(v30 + 16) = v91;
      *(v30 + 24) = 0;
      v4 = v192;
      swift_beginAccess();
      v92 = swift_isUniquelyReferenced_nonNull_native();
      *&v197 = *(v4 + 96);
      *(v4 + 96) = 0x8000000000000000;
      sub_265FCEA00(v30, v89, *(&v89 + 1), v90, v92);
      sub_265FC23C8(v89, *(&v89 + 1));
      *(v4 + 96) = v197;
      swift_endAccess();

      sub_265FC2504(&v204);
      v13 += 3;
    }

    while (v187 != v64);
  }

  sub_265FD6FFC(v236, &qword_2800556D8, &qword_265FF0398);
  sub_265FD6FFC(&v235, &qword_2800556E0, &qword_265FF03A0);
  v30 = *(v190 + 16);
  v13 = &unk_279BC1000;
  v93 = [v30 displayId];
  swift_beginAccess();
  v94 = *(v4 + 64);
  if (*(v94 + 16) && (v95 = sub_265FDA660(v93), (v96 & 1) != 0))
  {
    v97 = *(*(v94 + 56) + 8 * v95);
    swift_endAccess();
    swift_retain_n();
    sub_265FEC280();
  }

  else
  {
    swift_endAccess();
    v97 = 0;
  }

  v195 = v220;
  v196[0] = v221[0];
  *(v196 + 10) = *(v221 + 10);
  v193 = v218;
  v194 = v219;
  sub_265FD0968(&v200);
  if (v203 != 1)
  {
    v187 = v30;
    v209[1] = v201[5];
    v210 = v202;
    v211 = v203;
    v206 = v201[1];
    v207 = v201[2];
    v208 = v201[3];
    v209[0] = v201[4];
    v204 = v200;
    v205 = v201[0];
    v110 = SWORD4(v228[1]);
    v30 = *(&v200 + 1);
    v68 = v200;
    v111 = SLOWORD(v201[0]);
    if ((~SWORD4(v228[1]) & 0xFFFFFEFE) == 0)
    {
      goto LABEL_84;
    }

    v112 = *(&v228[0] + 1);
    v113 = *&v228[1];
    if ((~v111 & 0xFFFFFEFE) == 0)
    {
      sub_265FD246C(*(&v228[0] + 1), *&v228[1], SWORD4(v228[1]));
      sub_265FC23C0(v68, v30);
      sub_265FD246C(v112, v113, v110);
      sub_265FC23C8(v112, v113);
      sub_265FD2458(v112, v113, v110);
LABEL_103:
      sub_265FD2458(v68, v30, v111);
      *&v200 = 0;
      *(&v200 + 1) = 0xE000000000000000;
      sub_265FEC550();
      v193 = v200;
      v68 = 0xD00000000000001CLL;
      MEMORY[0x2667756D0](0xD00000000000001CLL, 0x8000000265FF1F90);
      *&v200 = v112;
      *(&v200 + 1) = v113;
      LOWORD(v201[0]) = v110;
      sub_265FC23C0(v112, v113);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800556E8, &qword_265FF03B8);
      v163 = sub_265FEC100();
      MEMORY[0x2667756D0](v163);

      MEMORY[0x2667756D0](0xD000000000000022, 0x8000000265FF1FB0);
      v200 = v204;
      LOWORD(v201[0]) = v205;
      v164 = Profile.DisplayIdentity.description.getter();
      MEMORY[0x2667756D0](v164);

      LODWORD(v166) = 0;
      i = 230;
      goto LABEL_96;
    }

    if (SWORD4(v228[1]) < 0)
    {
      if ((v111 & 0x80000000) != 0)
      {
        if (*(v228 + 8) == v200)
        {
          sub_265FD246C(*(&v228[0] + 1), *&v228[1], SWORD4(v228[1]));
          sub_265FC23C0(v112, v113);
          sub_265FD246C(v112, v113, v110);
          sub_265FD2458(v112, v113, v111);
          if (((v110 ^ v111) & 1) == 0 && (((v110 ^ v111) >> 8) & 1) == 0)
          {
            goto LABEL_83;
          }
        }

        else
        {
          v123 = sub_265FEC6C0();
          sub_265FD246C(v112, v113, v110);
          sub_265FC23C0(v68, v30);
          sub_265FD246C(v112, v113, v110);
          sub_265FD2458(v68, v30, v111);
          if ((v123 & 1) != 0 && ((v110 ^ v111) & 1) == 0 && (((v110 ^ v111) >> 8) & 1) == 0)
          {
            goto LABEL_83;
          }
        }

        goto LABEL_102;
      }
    }

    else if ((v111 & 0x80000000) == 0)
    {
      if (*(v228 + 8) == v200)
      {
        sub_265FD246C(*(&v228[0] + 1), *&v228[1], SWORD4(v228[1]));
        sub_265FC23C0(v112, v113);
        sub_265FD246C(v112, v113, v110);
        sub_265FD2458(v112, v113, v111);
LABEL_83:
        sub_265FC23C8(v112, v113);
        sub_265FD2458(v112, v113, v110);
LABEL_84:
        v124 = v192;
        swift_beginAccess();
        v125 = *(v124 + 88);
        if (!*(v125 + 16))
        {
          goto LABEL_98;
        }

        v126 = sub_265FDA6A8(v68, v30, v111);
        if ((v127 & 1) == 0)
        {
          goto LABEL_98;
        }

        v189 = v97;
        v191 = *(*(v125 + 56) + 16 * v126);
        swift_endAccess();
        v128 = v205;
        v129 = v192;
        swift_beginAccess();
        v130 = *(v129 + 96);
        v131 = *(v130 + 16);
        v186 = v191;
        swift_unknownObjectRetain();
        if (v131)
        {
          v132 = sub_265FDA6A8(v68, v30, v128);
          if (v133)
          {
            v134 = *(*(v130 + 56) + 8 * v132);
            swift_endAccess();
            v135 = sub_265FEC270();
            v136 = v176;
            (*(*(v135 - 8) + 56))(v176, 1, 1, v135);
            sub_265FC24A8(&v204, &v200);
            v137 = swift_allocObject();
            v138 = v227;
            *(v137 + 384) = v228[0];
            *(v137 + 394) = *(v228 + 10);
            v139 = v202;
            *(v137 + 160) = v201[5];
            *(v137 + 176) = v139;
            *(v137 + 192) = v203;
            v140 = v201[2];
            *(v137 + 96) = v201[1];
            *(v137 + 112) = v140;
            v141 = v201[4];
            *(v137 + 128) = v201[3];
            *(v137 + 144) = v141;
            v142 = v201[0];
            *(v137 + 64) = v200;
            *(v137 + 80) = v142;
            v143 = v225;
            *(v137 + 352) = v226;
            *(v137 + 368) = v138;
            v144 = v223;
            v145 = v224;
            *(v137 + 288) = v191;
            *(v137 + 304) = v144;
            v146 = v188;
            *(v137 + 16) = v188;
            *(v137 + 24) = v168;
            v147 = v177;
            *(v137 + 32) = v190;
            *(v137 + 40) = v147;
            *(v137 + 48) = v129;
            *(v137 + 56) = v134;
            *(v137 + 208) = v175;
            *(v137 + 216) = v182;
            *(v137 + 217) = v179;
            *(v137 + 218) = v216;
            *(v137 + 222) = v217;
            v148 = v183;
            *(v137 + 224) = v184;
            *(v137 + 232) = v148;
            *(v137 + 240) = v180;
            *(v137 + 241) = v215[0];
            *(v137 + 244) = *(v215 + 3);
            v149 = v174;
            *(v137 + 248) = v181;
            *(v137 + 256) = v149;
            *(v137 + 264) = v172;
            *(v137 + 265) = v170;
            v150 = v213;
            *(v137 + 270) = v214;
            *(v137 + 266) = v150;
            *(v137 + 272) = v173;
            *(v137 + 280) = v171;
            *(v137 + 281) = v169;
            *(v137 + 320) = v145;
            *(v137 + 336) = v143;
            v151 = v185;
            *(v137 + 416) = v185;
            swift_retain_n();
            v152 = v151;

            v153 = v146;
            swift_unknownObjectRetain();
            v154 = v147;

            sub_265FD24B0(&v223, &v200);
            v155 = sub_265FEC290();
            sub_265FD6FFC(v136, &qword_280055218, &qword_265FEF000);
            v156 = v129;
            v157 = [v187 displayId];
            swift_beginAccess();

            v158 = swift_isUniquelyReferenced_nonNull_native();
            *&v193 = *(v156 + 64);
            *(v156 + 64) = 0x8000000000000000;
            sub_265FCEB98(v155, v157, v158);
            *(v156 + 64) = v193;
            swift_endAccess();
            sub_265FE798C(v231);
            sub_265FD2480(&v218);

            sub_265FD24E8(&v223);

            swift_unknownObjectRelease();
            sub_265FC2504(&v204);
          }
        }

        swift_endAccess();
        *&v200 = 0;
        *(&v200 + 1) = 0xE000000000000000;
        sub_265FEC550();

        *&v193 = 0xD000000000000029;
        *(&v193 + 1) = 0x8000000265FF1F60;
        *&v200 = v68;
        *(&v200 + 1) = v30;
        LOWORD(v201[0]) = v128;
        v162 = Profile.DisplayIdentity.description.getter();
        MEMORY[0x2667756D0](v162);

        LODWORD(v166) = 0;
        for (i = 238; ; i = 234)
        {
LABEL_96:
          v165 = i;
LABEL_97:
          sub_265FEC5E0();
          __break(1u);
LABEL_98:
          swift_endAccess();
          *&v200 = 0;
          *(&v200 + 1) = 0xE000000000000000;
          sub_265FEC550();

          *&v193 = 0xD000000000000024;
          *(&v193 + 1) = 0x8000000265FF1F30;
          *&v200 = v68;
          *(&v200 + 1) = v30;
          LOWORD(v201[0]) = v205;
          v161 = Profile.DisplayIdentity.description.getter();
          MEMORY[0x2667756D0](v161);

          LODWORD(v166) = 0;
        }
      }

      v122 = sub_265FEC6C0();
      sub_265FD246C(v112, v113, v110);
      sub_265FC23C0(v68, v30);
      sub_265FD246C(v112, v113, v110);
      sub_265FD2458(v68, v30, v111);
      if (v122)
      {
        goto LABEL_83;
      }

      goto LABEL_102;
    }

    sub_265FD246C(*(&v228[0] + 1), *&v228[1], SWORD4(v228[1]));
    sub_265FC23C0(v68, v30);
    sub_265FD246C(v112, v113, v110);
    sub_265FD2458(v68, v30, v111);
LABEL_102:
    sub_265FC23C8(v112, v113);
    LODWORD(v111) = v110;
    v30 = v113;
    v68 = v112;
    goto LABEL_103;
  }

  sub_265FD6FFC(&v200, &unk_280054BE0, &qword_265FF0390);
  if (qword_2800547D0 != -1)
  {
LABEL_93:
    swift_once();
  }

  v98 = sub_265FEC060();
  v99 = __swift_project_value_buffer(v98, qword_280055050);

  v100 = sub_265FEC040();
  v101 = sub_265FEC390();
  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    *&v191 = v99;
    v103 = v102;
    v104 = swift_slowAlloc();
    *&v204 = v104;
    *v103 = 136315138;
    LODWORD(v200) = [v30 v13[144]];
    v105 = sub_265FEC6B0();
    v106 = v30;
    v108 = v107;

    v109 = sub_265FEB534(v105, v108, &v204);
    v30 = v106;
    v13 = &unk_279BC1000;

    *(v103 + 4) = v109;
    _os_log_impl(&dword_265FBB000, v100, v101, "No profile currently driving hardware %s", v103, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v104);
    MEMORY[0x2667764A0](v104, -1, -1);
    MEMORY[0x2667764A0](v103, -1, -1);
  }

  else
  {
  }

  v114 = [v30 v13[144]];
  swift_beginAccess();
  v115 = sub_265FE47CC(v114);
  swift_endAccess();
  if (v115)
  {
    v116 = v115;
    v117 = sub_265FEC040();
    v118 = sub_265FEC390();

    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      *v119 = 138412290;
      *(v119 + 4) = v116;
      *v120 = v115;
      v121 = v116;
      _os_log_impl(&dword_265FBB000, v117, v118, "Removing binder from lookup: %@", v119, 0xCu);
      sub_265FD6FFC(v120, &unk_280055370, &qword_265FEEF40);
      MEMORY[0x2667764A0](v120, -1, -1);
      MEMORY[0x2667764A0](v119, -1, -1);
    }

    [v116 invalidate];
    sub_265FE798C(v231);
  }

  else
  {
    sub_265FE798C(v231);
  }

  sub_265FD2480(&v218);
  sub_265FD24E8(&v223);
}

double sub_265FE04A0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_265FDA660(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v14 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_265FCE2C0();
      v9 = v14;
    }

    v10 = (*(v9 + 56) + 80 * v7);
    v11 = v10[3];
    a2[2] = v10[2];
    a2[3] = v11;
    *(a2 + 58) = *(v10 + 58);
    v12 = v10[1];
    *a2 = *v10;
    a2[1] = v12;
    sub_265FCD9DC(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *(a2 + 58) = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}