uint64_t sub_26D203658(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_26D22D1D4();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_26D203708()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A08, &qword_26D230E30);
  v2 = *v0;
  v3 = sub_26D22E824();
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

char *sub_26D203870()
{
  v1 = v0;
  v35 = sub_26D22D1D4();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0C50, &qword_26D230E38);
  v3 = *v0;
  v4 = sub_26D22E824();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id sub_26D203AF0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0BC0, &qword_26D230D98);
  v2 = *v0;
  v3 = sub_26D22E824();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

unint64_t sub_26D203C5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A18, &unk_26D234350);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0C50, &qword_26D230E38);
    v7 = sub_26D22E844();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_26D1D7738(v9, v5, &qword_2804E0A18, &unk_26D234350);
      v11 = *v5;
      v12 = v5[1];
      result = sub_26D1BDEEC(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_26D22D1D4();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_26D203E48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0BC0, &qword_26D230D98);
    v3 = sub_26D22E844();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_26D1BDEEC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
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

uint64_t sub_26D203F60(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 240)
  {
    v4 = *a1;
    if (v4 >= 0x10)
    {
      return v4 - 15;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0E90, &unk_26D231850);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_26D204028(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 240)
  {
    *result = a2 + 15;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0E90, &unk_26D231850);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_26D2040D4(uint64_t a1)
{
  sub_26D204150(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_26D204150(uint64_t a1)
{
  if (!qword_2804E1428)
  {
    sub_26D22E2E4();
    v1 = sub_26D22E654();
    if (!v2)
    {
      atomic_store(v1, &qword_2804E1428);
    }
  }
}

uint64_t sub_26D2041A8()
{
  sub_26D22E9E4();
  sub_26D22E454();
  return sub_26D22EA04();
}

uint64_t sub_26D20422C(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();
  return sub_26D22EA04();
}

uint64_t sub_26D204288@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_26D22E854();

  *a2 = v3 != 0;
  return result;
}

void sub_26D20431C(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_children;
  swift_beginAccess();
  v19 = a2;
  v20 = a1;
  v5 = *&a1[v4];
  if (v5 >> 62)
  {
LABEL_27:
    v6 = sub_26D22E814();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = v5 & 0xC000000000000001;

  v8 = 0;
  while (v6 != v8)
  {
    if (v7)
    {
      v9 = MEMORY[0x26D6B6F50](v8, v5);
    }

    else
    {
      if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v9 = *(v5 + 8 * v8 + 32);
    }

    v10 = v9;

    v11 = sub_26D22E854();

    if (!v11)
    {
      v6 = v8;
      break;
    }

    if (__OFADD__(v8++, 1))
    {
      goto LABEL_26;
    }
  }

  if (!(v5 >> 62))
  {
    if (v6 != *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

LABEL_23:

    sub_26D1B7F48();
    swift_allocError();
    *v17 = 0xD00000000000001CLL;
    *(v17 + 8) = 0x800000026D23BE60;
    *(v17 + 16) = 0;
    *(v17 + 24) = 1;
    swift_willThrow();

    return;
  }

  if (v6 == sub_26D22E814())
  {
    goto LABEL_23;
  }

LABEL_16:
  if (v7)
  {
    v13 = MEMORY[0x26D6B6F50](v6, v5);
  }

  else
  {
    if (v6 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_30;
    }

    v13 = *(v5 + 32 + 8 * v6);
  }

  v6 = v13;

  v14 = sub_26D22E854();

  if (v14)
  {
LABEL_30:

    __break(1u);
    return;
  }

  sub_26D1B7480();

  if (!v18)
  {
    v15 = *MEMORY[0x277CF22C8];
    v16 = sub_26D22D4E4();
    (*(*(v16 - 8) + 104))(v19, v15, v16);
  }
}

uint64_t sub_26D2045F0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x61642D70756F7267;
  }

  else
  {
    v3 = 25705;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xEA00000000006174;
  }

  if (*a2)
  {
    v5 = 0x61642D70756F7267;
  }

  else
  {
    v5 = 25705;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006174;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26D22E964();
  }

  return v8 & 1;
}

uint64_t sub_26D204690()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D20470C(uint64_t a1)
{
  sub_26D22E454();
}

uint64_t sub_26D204774(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D2047EC@<X0>(char *a2@<X8>)
{
  v3 = sub_26D22E854();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_26D20484C(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 0x61642D70756F7267;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006174;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_26D2048C4()
{
  result = qword_2804E1430;
  if (!qword_2804E1430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1430);
  }

  return result;
}

unint64_t sub_26D20491C()
{
  result = qword_2804E1438;
  if (!qword_2804E1438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1438);
  }

  return result;
}

uint64_t sub_26D204970(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6D617473656D6974;
  }

  else
  {
    v3 = 0x7069636974726170;
  }

  if (v2)
  {
    v4 = 0xEB00000000746E61;
  }

  else
  {
    v4 = 0xE900000000000070;
  }

  if (*a2)
  {
    v5 = 0x6D617473656D6974;
  }

  else
  {
    v5 = 0x7069636974726170;
  }

  if (*a2)
  {
    v6 = 0xE900000000000070;
  }

  else
  {
    v6 = 0xEB00000000746E61;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26D22E964();
  }

  return v8 & 1;
}

uint64_t sub_26D204A24()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D204AB4(uint64_t a1)
{
  sub_26D22E454();
}

uint64_t sub_26D204B30(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

void sub_26D204BC8(uint64_t *a1@<X8>)
{
  v2 = 0x7069636974726170;
  if (*v1)
  {
    v2 = 0x6D617473656D6974;
  }

  v3 = 0xEB00000000746E61;
  if (*v1)
  {
    v3 = 0xE900000000000070;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_26D204C14(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = sub_26D22CE34();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v32 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  KeyPath = swift_getKeyPath();
  v15 = a1;
  v16 = sub_26D1BAA78(KeyPath, v15);

  v17 = sub_26D1DE7E0(0, v16);
  if (v2)
  {

    goto LABEL_3;
  }

  v18 = v17;
  v34 = v5;
  v35 = v8;
  v32 = v11;
  v33 = v13;
  if (!v17)
  {

    sub_26D1B7F48();
    swift_allocError();
    v21 = xmmword_26D234570;
LABEL_8:
    *v20 = v21;
    *(v20 + 16) = 0;
    *(v20 + 24) = 1;
    swift_willThrow();
    goto LABEL_3;
  }

  v19 = &v17[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
  swift_beginAccess();
  if (!*(v19 + 1))
  {

    sub_26D1B7F48();
    swift_allocError();
    v22 = MEMORY[0x277D837D0];
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    *v23 = v22;
    *(v23 + 24) = 5;
    swift_willThrow();

    goto LABEL_3;
  }

  v24 = sub_26D1DE7E0(1, v16);

  if (!v24)
  {

    sub_26D1B7F48();
    swift_allocError();
    v21 = xmmword_26D234560;
    goto LABEL_8;
  }

  v25 = &v24[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
  swift_beginAccess();
  v26 = v25[1];
  if (v26)
  {
    v27 = *v25;

    v28 = v35;
    sub_26D1BCF54(v27, v26, v35);

    v30 = *(v34 + 32);
    v31 = v32;
    v30(v32, v28, v4);
    v30(v33, v31, v4);
    sub_26D22D3D4();
  }

  else
  {

    sub_26D1B7F48();
    swift_allocError();
    *(v29 + 8) = 0;
    *(v29 + 16) = 0;
    *v29 = v4;
    *(v29 + 24) = 5;
    swift_willThrow();
  }

LABEL_3:
}

uint64_t sub_26D204FD8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x2D7463656A627573;
  }

  else
  {
    v3 = 0x7463656A627573;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xEB00000000747865;
  }

  if (*a2)
  {
    v5 = 0x2D7463656A627573;
  }

  else
  {
    v5 = 0x7463656A627573;
  }

  if (*a2)
  {
    v6 = 0xEB00000000747865;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26D22E964();
  }

  return v8 & 1;
}

uint64_t sub_26D205088()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D205114(uint64_t a1)
{
  sub_26D22E454();
}

uint64_t sub_26D20518C(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

void sub_26D205220(uint64_t *a1@<X8>)
{
  v2 = 0x7463656A627573;
  if (*v1)
  {
    v2 = 0x2D7463656A627573;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000747865;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_26D205268(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_26D22D3C4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26D1E05C0(a1, a2);
  if (!v3)
  {
    v12 = v11;
    if (v11)
    {
      v14 = *&v11[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
      v13 = *&v11[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
      v15 = v14 == 0x6465727265666572 && v13 == 0xE800000000000000;
      if (v15 || (sub_26D22E964() & 1) != 0)
      {
        KeyPath = swift_getKeyPath();
        v17 = v12;
        v18 = sub_26D1BAA50(KeyPath, v17);

        v19 = sub_26D1E522C(v18);

        if (v19)
        {
          swift_beginAccess();
        }

        sub_26D22D3B4();

        (*(v8 + 32))(a3, v10, v7);
        (*(v8 + 56))(a3, 0, 1, v7);
      }

      else
      {
        sub_26D1B7F48();
        swift_allocError();
        *v20 = v14;
        *(v20 + 8) = v13;
        *(v20 + 16) = 0;
        *(v20 + 24) = 0;
        swift_willThrow();
      }
    }

    else
    {
      (*(v8 + 56))(a3, 1, 1, v7);
    }
  }
}

void sub_26D205528(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v5 = 0xEB00000000747865;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*(a2 + 16) && ((a1 & 1) == 0 ? (v7 = 0x7463656A627573) : (v7 = 0x2D7463656A627573), (v8 = sub_26D1BDEEC(v7, v5), (v9 & 1) != 0) && (v10 = *(*(a2 + 56) + 8 * v8), *(v10 + 16))))
  {
    v11 = *(v10 + 32);

    v13 = *&v11[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v12 = *&v11[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
    v14 = v13 == 0x2D7463656A627573 && v12 == 0xEB00000000747865;
    if (v14 || (sub_26D22E964() & 1) != 0)
    {
      sub_26D204C14(v11, a3);
      if (!v3)
      {
        v15 = sub_26D22D3E4();
        (*(*(v15 - 8) + 56))(a3, 0, 1, v15);
      }
    }

    else
    {
      sub_26D1B7F48();
      swift_allocError();
      *v17 = v13;
      *(v17 + 8) = v12;
      *(v17 + 16) = 0;
      *(v17 + 24) = 0;
      swift_willThrow();
    }
  }

  else
  {

    v16 = sub_26D22D3E4();
    (*(*(v16 - 8) + 56))(a3, 1, 1, v16);
  }
}

uint64_t sub_26D20571C()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D2057F8(uint64_t a1)
{
  sub_26D22E454();
}

uint64_t sub_26D2058C0(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

unint64_t sub_26D205998@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26D2088C0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26D2059C8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x797469746E65;
  v5 = 0xE600000000000000;
  v6 = 0x737574617473;
  v7 = 0x800000026D23A210;
  v8 = 0xD000000000000014;
  if (v2 != 3)
  {
    v8 = 0x6574617473;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6465727265666572;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

void sub_26D205A60(void *a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1440, &qword_26D234620);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v84 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v81 = &v74 - v6;
  v7 = sub_26D22D414();
  v8 = *(v7 - 8);
  v82 = v7;
  v83 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1468, &qword_26D234668);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v74 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1470, &qword_26D234670);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v74 - v15;
  v17 = sub_26D22D494();
  v85 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1478, &qword_26D234678);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v74 - v21;
  KeyPath = swift_getKeyPath();
  v24 = a1;
  v25 = sub_26D1BACD0(KeyPath, v24);

  v26 = v89;
  v27 = sub_26D1C578C(0, 0, v24);
  if (v26)
  {

    return;
  }

  v78 = v19;
  v79 = v22;
  v29 = v85;
  v89 = v24;
  v30 = v27;
  v77 = v13;
  v80 = v28;
  v31 = sub_26D1E05C0(2u, v25);
  v32 = v31;
  v76 = 0;
  if (!v31)
  {
    v38 = v79;
    (*(v29 + 56))(v79, 1, 1, v17);
LABEL_9:
    v39 = v10;
    goto LABEL_11;
  }

  v75 = v30;
  v33 = &v31[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
  swift_beginAccess();
  v34 = v33[1];
  if (!v34)
  {

    v38 = v79;
    (*(v29 + 56))(v79, 1, 1, v17);
    v30 = v75;
    goto LABEL_9;
  }

  v35 = *v33;

  v36 = sub_26D208504(v35, v34);
  if (v36 != 9)
  {
    v40 = v36;
    v39 = v10;

    v41 = **(&unk_279D955F8 + v40);
    v42 = v78;
    (*(v29 + 104))(v78, v41, v17);
    v38 = v79;
    (*(v29 + 32))(v79, v42, v17);
    (*(v29 + 56))(v38, 0, 1, v17);
    v30 = v75;
LABEL_11:
    v43 = v76;
    sub_26D205268(1u, v25, v16);
    if (v43)
    {
      sub_26D1B950C(v38, &qword_2804E1478, &qword_26D234678);

      v44 = v89;

LABEL_13:

      return;
    }

    v85 = v16;
    v45 = sub_26D1E05C0(3u, v25);
    v76 = 0;
    v46 = v45;
    v75 = v30;

    if (v46)
    {
      v47 = &v46[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
      swift_beginAccess();
      v48 = v47[1];
      v49 = v84;
      v50 = v77;
      if (v48)
      {
        v51 = *v47;

        v52 = sub_26D208550(v51, v48);
        if (v52 == 4)
        {

          sub_26D1B950C(v85, &qword_2804E1470, &qword_26D234670);
          sub_26D1B950C(v79, &qword_2804E1478, &qword_26D234678);
          sub_26D1B7F48();
          swift_allocError();
          *v53 = 0xD000000000000023;
          *(v53 + 8) = 0x800000026D23BE80;
          *(v53 + 16) = 0;
          *(v53 + 24) = 1;
          swift_willThrow();

          goto LABEL_29;
        }

        v57 = v52;

        v56 = v83;
        v58 = v39;
        v59 = v39;
        v60 = v82;
        (*(v83 + 104))(v58, **(&unk_279D95640 + v57), v82);
        (*(v56 + 32))(v50, v59, v60);
        v55 = v60;
        v54 = 0;
LABEL_22:
        (*(v56 + 56))(v50, v54, 1, v55);
        v61 = *&v89[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes];
        if (*(v61 + 16))
        {

          v62 = sub_26D1BDEEC(0x6574617473, 0xE500000000000000);
          if (v63)
          {
            v64 = (*(v61 + 56) + 16 * v62);
            v66 = *v64;
            v65 = v64[1];

            v67 = sub_26D22D434();
            v87 = v66;
            v88 = v65;
            sub_26D2082A8();
            swift_bridgeObjectRetain_n();
            sub_26D22E554();
            v68 = *(v67 - 8);
            if ((*(v68 + 48))(v49, 1, v67) == 1)
            {

              sub_26D1B950C(v50, &qword_2804E1468, &qword_26D234668);
              sub_26D1B950C(v85, &qword_2804E1470, &qword_26D234670);
              sub_26D1B950C(v79, &qword_2804E1478, &qword_26D234678);
              sub_26D1B950C(v49, &qword_2804E1440, &qword_26D234620);
              sub_26D1B7F48();
              swift_allocError();
              *v69 = v66;
              *(v69 + 8) = v65;
              *(v69 + 16) = 0;
              *(v69 + 24) = 3;
              swift_willThrow();
              v70 = v89;

              goto LABEL_13;
            }

            swift_bridgeObjectRelease_n();
            v73 = v81;
            (*(v68 + 32))(v81, v49, v67);
            (*(v68 + 56))(v73, 0, 1, v67);
LABEL_28:
            sub_26D22D484();
            goto LABEL_29;
          }
        }

        v71 = sub_26D22D434();
        (*(*(v71 - 8) + 56))(v81, 1, 1, v71);
        goto LABEL_28;
      }

      v54 = 1;
    }

    else
    {
      v54 = 1;
      v49 = v84;
      v50 = v77;
    }

    v55 = v82;
    v56 = v83;
    goto LABEL_22;
  }

  sub_26D1B7F48();
  swift_allocError();
  *v37 = 0xD000000000000021;
  *(v37 + 8) = 0x800000026D23BEB0;
  *(v37 + 16) = 0;
  *(v37 + 24) = 1;
  swift_willThrow();

LABEL_29:
  v72 = v89;
}

uint64_t sub_26D206424(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6574617473;
  }

  else
  {
    v3 = 0x746E696F70646E65;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x6574617473;
  }

  else
  {
    v5 = 0x746E696F70646E65;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26D22E964();
  }

  return v8 & 1;
}

uint64_t sub_26D2064C8()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D206548(uint64_t a1)
{
  sub_26D22E454();
}

uint64_t sub_26D2065B4(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

void sub_26D20663C(uint64_t *a1@<X8>)
{
  v2 = 0x746E696F70646E65;
  if (*v1)
  {
    v2 = 0x6574617473;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26D206678(char a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1440, &qword_26D234620);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v58 - v9;
  v11 = sub_26D22D464();
  v12 = *(v11 - 8);
  v66 = v11;
  v67 = v12;
  MEMORY[0x28223BE20](v11);
  v70 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  if (!*(a2 + 16) || ((a1 & 1) == 0 ? (v15 = 0x6574617473) : (v15 = 1919251317), v16 = sub_26D1BDEEC(v15, v14), (v17 & 1) == 0))
  {

    return 0;
  }

  v18 = *(*(a2 + 56) + 8 * v16);

  v19 = *(v18 + 16);
  if (!v19)
  {

    return MEMORY[0x277D84F90];
  }

  v59 = v8;
  v73 = MEMORY[0x277D84F90];
  result = sub_26D1E4718(0, v19, 0);
  v21 = 0;
  v22 = v73;
  v62 = v18;
  v63 = v18 + 32;
  v60 = v67 + 32;
  v61 = v19;
  v65 = v10;
  while (v21 < *(v18 + 16))
  {
    v23 = *(v63 + 8 * v21);
    v24 = &v23[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v25 = *&v23[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name] == 1919251317 && *&v23[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8] == 0xE400000000000000;
    if (!v25 && (sub_26D22E964() & 1) == 0)
    {
      v52 = v23;

      v54 = *v24;
      v53 = *(v24 + 1);
      sub_26D1B7F48();
      swift_allocError();
      *v55 = v54;
      *(v55 + 8) = v53;
      *(v55 + 16) = 0;
      *(v55 + 24) = 0;
      swift_willThrow();

      return v22;
    }

    v69 = v21;
    KeyPath = swift_getKeyPath();
    v27 = OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_children;
    v28 = v23;
    swift_beginAccess();
    v29 = *&v23[v27];
    if (v29 >> 62)
    {
      v30 = sub_26D22E814();
      v68 = v28;
      if (!v30)
      {
LABEL_27:
        v35 = v28;
        v34 = MEMORY[0x277D84F90];
        goto LABEL_28;
      }
    }

    else
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v68 = v28;
      if (!v30)
      {
        goto LABEL_27;
      }
    }

    v71 = MEMORY[0x277D84F90];
    v31 = v28;

    result = sub_26D22E7D4();
    if (v30 < 0)
    {
      goto LABEL_46;
    }

    v64 = v22;
    v32 = 0;
    do
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D6B6F50](v32, v29);
      }

      else
      {
        v33 = *(v29 + 8 * v32 + 32);
      }

      ++v32;
      sub_26D22E7B4();
      sub_26D22E7E4();
      sub_26D22E7F4();
      sub_26D22E7C4();
    }

    while (v30 != v32);

    v34 = v71;
    v22 = v64;
    v28 = v68;
LABEL_28:

    v36 = sub_26D208300(v34, KeyPath);

    sub_26D206DCC(0, v36);
    v18 = v62;
    if (v2)
    {

      return v22;
    }

    v37 = *&v28[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes];
    v38 = v65;
    if (!*(v37 + 16))
    {
      goto LABEL_34;
    }

    v39 = sub_26D1BDEEC(0x6574617473, 0xE500000000000000);
    if ((v40 & 1) == 0)
    {

LABEL_34:
      v48 = sub_26D22D434();
      (*(*(v48 - 8) + 56))(v38, 1, 1, v48);
      goto LABEL_35;
    }

    v41 = (*(v37 + 56) + 16 * v39);
    v42 = *v41;
    v43 = v41[1];

    v44 = sub_26D22D434();
    v71 = v42;
    v72 = v43;
    sub_26D2082A8();
    swift_bridgeObjectRetain_n();
    v45 = v59;
    sub_26D22E554();
    v46 = *(v44 - 8);
    if ((*(v46 + 48))(v45, 1, v44) == 1)
    {

      sub_26D1B950C(v45, &qword_2804E1440, &qword_26D234620);
      sub_26D1B7F48();
      swift_allocError();
      *v56 = v42;
      *(v56 + 8) = v43;
      *(v56 + 16) = 0;
      *(v56 + 24) = 3;
      swift_willThrow();

      v57 = v68;

      return v22;
    }

    swift_bridgeObjectRelease_n();
    v47 = v65;
    (*(v46 + 32))(v65, v45, v44);
    (*(v46 + 56))(v47, 0, 1, v44);
    v28 = v68;
LABEL_35:
    sub_26D22D454();

    v73 = v22;
    v50 = *(v22 + 16);
    v49 = *(v22 + 24);
    if (v50 >= v49 >> 1)
    {
      sub_26D1E4718((v49 > 1), v50 + 1, 1);
      v22 = v73;
    }

    v51 = v70;
    v21 = v69 + 1;
    *(v22 + 16) = v50 + 1;
    result = (*(v67 + 32))(v22 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v50, v51, v66);
    if (v21 == v61)
    {

      return v22;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

void *sub_26D206DCC(char a1, uint64_t a2)
{
  v28 = sub_26D22D4A4();
  v5 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE800000000000000;
  }

  if (!*(a2 + 16) || ((a1 & 1) == 0 ? (v9 = 0x746E696F70646E65) : (v9 = 0x6574617473), v10 = sub_26D1BDEEC(v9, v8), (v11 & 1) == 0))
  {

    return 0;
  }

  v12 = *(*(a2 + 56) + 8 * v10);

  v13 = *(v12 + 16);
  if (!v13)
  {

    return MEMORY[0x277D84F90];
  }

  v29 = MEMORY[0x277D84F90];
  result = sub_26D1E475C(0, v13, 0);
  v15 = 0;
  v16 = v29;
  v27 = v5 + 32;
  while (v15 < *(v12 + 16))
  {
    v17 = *(v12 + 8 * v15 + 32);
    v18 = &v17[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v19 = *&v17[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name] == 0x746E696F70646E65 && *&v17[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8] == 0xE800000000000000;
    if (!v19 && (sub_26D22E964() & 1) == 0)
    {
      v23 = v17;

      v25 = *v18;
      v24 = *(v18 + 1);
      sub_26D1B7F48();
      swift_allocError();
      *v26 = v25;
      *(v26 + 8) = v24;
      *(v26 + 16) = 0;
      *(v26 + 24) = 0;
      swift_willThrow();

      return v16;
    }

    v20 = v17;
    sub_26D205A60(v20, v7);
    if (v2)
    {

      return v16;
    }

    v29 = v16;
    v22 = *(v16 + 16);
    v21 = *(v16 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_26D1E475C((v21 > 1), v22 + 1, 1);
      v16 = v29;
    }

    ++v15;
    *(v16 + 16) = v22 + 1;
    result = (*(v5 + 32))(v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v22, v7, v28);
    if (v13 == v15)
    {

      return v16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26D2070D0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1919251317;
  }

  else
  {
    v3 = 0x6574617473;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1919251317;
  }

  else
  {
    v5 = 0x6574617473;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26D22E964();
  }

  return v8 & 1;
}

uint64_t sub_26D20716C()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D2071E4(uint64_t a1)
{
  sub_26D22E454();
}

uint64_t sub_26D207248(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

void sub_26D2072C8(uint64_t *a1@<X8>)
{
  v2 = 1919251317;
  if (!*v1)
  {
    v2 = 0x6574617473;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_26D2072FC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1440, &qword_26D234620);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v24 - v9;
  KeyPath = swift_getKeyPath();
  v12 = a1;
  v13 = sub_26D1BAAA0(KeyPath, v12);

  v14 = *&v12[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes];
  if (!*(v14 + 16))
  {
    goto LABEL_6;
  }

  v15 = sub_26D1BDEEC(0x6574617473, 0xE500000000000000);
  if ((v16 & 1) == 0)
  {

LABEL_6:
    v23 = sub_26D22D434();
    (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
    goto LABEL_7;
  }

  v24[3] = a2;
  v17 = (*(v14 + 56) + 16 * v15);
  v18 = *v17;
  v19 = v17[1];

  v20 = sub_26D22D434();
  v24[0] = v18;
  v24[1] = v19;
  sub_26D2082A8();
  swift_bridgeObjectRetain_n();
  sub_26D22E554();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v8, 1, v20) == 1)
  {

    sub_26D1B950C(v8, &qword_2804E1440, &qword_26D234620);
    sub_26D1B7F48();
    swift_allocError();
    *v22 = v18;
    *(v22 + 8) = v19;
    *(v22 + 16) = 0;
    *(v22 + 24) = 3;
    swift_willThrow();

    return;
  }

  swift_bridgeObjectRelease_n();
  (*(v21 + 32))(v10, v8, v20);
  (*(v21 + 56))(v10, 0, 1, v20);
LABEL_7:
  sub_26D206678(1, v13);
  if (v2)
  {
    sub_26D1B950C(v10, &qword_2804E1440, &qword_26D234620);
  }

  else
  {

    sub_26D22D444();
  }
}

uint64_t sub_26D20764C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x7372657375;
  v3 = *a1;
  v4 = 0x6574617473;
  if (v3 == 1)
  {
    v4 = 0x7372657375;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0xD000000000000016;
  }

  if (v3)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0x800000026D23A190;
  }

  if (*a2 != 1)
  {
    v2 = 0x6574617473;
  }

  if (*a2)
  {
    v7 = v2;
  }

  else
  {
    v7 = 0xD000000000000016;
  }

  if (*a2)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0x800000026D23A190;
  }

  if (v5 == v7 && v6 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26D22E964();
  }

  return v9 & 1;
}

uint64_t sub_26D20773C()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D2077DC(uint64_t a1)
{
  sub_26D22E454();
}

uint64_t sub_26D207868(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

unint64_t sub_26D207904@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26D208874(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26D207934(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7372657375;
  if (v2 != 1)
  {
    v4 = 0x6574617473;
    v3 = 0xE500000000000000;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000016;
  }

  if (v5)
  {
    v3 = 0x800000026D23A190;
  }

  *a1 = v6;
  a1[1] = v3;
}

void sub_26D207990(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1440, &qword_26D234620);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v59 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1448, &qword_26D234628);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v59 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1450, &qword_26D234630);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v59 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1458, &qword_26D234638);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v59 - v17;
  KeyPath = swift_getKeyPath();
  v20 = a1;
  v21 = sub_26D1BAD20(KeyPath, v20);

  v22 = sub_26D1E0770(0, v21);
  if (v2)
  {
    goto LABEL_2;
  }

  v23 = v22;
  v62 = v7;
  v63 = v9;
  v64 = v12;
  v65 = v18;
  if (v22)
  {
    v25 = *&v22[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v24 = *&v22[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
    if ((v25 != 0xD000000000000016 || 0x800000026D23A190 != v24) && (sub_26D22E964() & 1) == 0)
    {
      sub_26D1B7F48();
      swift_allocError();
      *v35 = v25;
      *(v35 + 8) = v24;
      *(v35 + 16) = 0;
      *(v35 + 24) = 0;
      swift_willThrow();

      return;
    }

    v26 = swift_getKeyPath();
    v27 = v23;
    v28 = sub_26D1BACF8(v26, v27);

    v29 = sub_26D1E06C0(0, v28);
    v32 = v29;
    if (v29)
    {
      v33 = &v29[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
      swift_beginAccess();
      v34 = *(v33 + 1);
      v60 = *v33;
      v61 = v34;
    }

    else
    {
      v60 = 0;
      v61 = 0;
    }

    sub_26D205528(1, v28, v15);

    v42 = v65;
    sub_26D22D3F4();

    v57 = sub_26D22D404();
    (*(*(v57 - 8) + 56))(v42, 0, 1, v57);
  }

  else
  {
    v30 = sub_26D22D404();
    (*(*(v30 - 8) + 56))(v65, 1, 1, v30);
  }

  v31 = sub_26D1E0770(1, v21);
  if (v31)
  {
    v37 = *&v31[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v36 = *&v31[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
    if (v37 != 0x7372657375 || v36 != 0xE500000000000000)
    {
      v38 = v31;
      v39 = sub_26D22E964();
      v31 = v38;
      v40 = v65;
      if ((v39 & 1) == 0)
      {
        sub_26D1B7F48();
        swift_allocError();
        *v58 = v37;
        *(v58 + 8) = v36;
        *(v58 + 16) = 0;
        *(v58 + 24) = 0;
        swift_willThrow();

        sub_26D1B950C(v40, &qword_2804E1458, &qword_26D234638);
LABEL_2:

LABEL_3:

        return;
      }
    }

    v41 = v64;
    sub_26D2072FC(v31, v64);
    v43 = 0;
  }

  else
  {
    v43 = 1;
    v41 = v64;
  }

  v44 = sub_26D22D474();
  (*(*(v44 - 8) + 56))(v41, v43, 1, v44);

  v45 = *&v20[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes];
  v46 = v63;
  if (!*(v45 + 16))
  {
    goto LABEL_27;
  }

  v47 = sub_26D1BDEEC(0x6574617473, 0xE500000000000000);
  if ((v48 & 1) == 0)
  {

LABEL_27:
    v56 = sub_26D22D434();
    (*(*(v56 - 8) + 56))(v46, 1, 1, v56);
LABEL_28:
    sub_26D22D424();
    goto LABEL_3;
  }

  v49 = (*(v45 + 56) + 16 * v47);
  v51 = *v49;
  v50 = v49[1];

  v52 = sub_26D22D434();
  v66 = v51;
  v67 = v50;
  sub_26D2082A8();
  swift_bridgeObjectRetain_n();
  v53 = v62;
  sub_26D22E554();
  v54 = *(v52 - 8);
  if ((*(v54 + 48))(v53, 1, v52) != 1)
  {
    swift_bridgeObjectRelease_n();
    (*(v54 + 32))(v46, v53, v52);
    (*(v54 + 56))(v46, 0, 1, v52);
    goto LABEL_28;
  }

  sub_26D1B950C(v64, &qword_2804E1448, &qword_26D234628);
  sub_26D1B950C(v65, &qword_2804E1458, &qword_26D234638);
  sub_26D1B950C(v53, &qword_2804E1440, &qword_26D234620);
  sub_26D1B7F48();
  swift_allocError();
  *v55 = v51;
  *(v55 + 8) = v50;
  *(v55 + 16) = 0;
  *(v55 + 24) = 3;
  swift_willThrow();
}

uint64_t sub_26D2081AC()
{
  sub_26D22E9E4();
  sub_26D22E454();
  return sub_26D22EA04();
}

uint64_t sub_26D208200(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();
  return sub_26D22EA04();
}

uint64_t sub_26D208244@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_26D22E854();

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_26D2082A8()
{
  result = qword_2804E1460;
  if (!qword_2804E1460)
  {
    sub_26D22D434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1460);
  }

  return result;
}

void *sub_26D208300(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277D84F98];
  v24 = MEMORY[0x277D84F98];
  v3 = *(a1 + 16);
  if (!v3)
  {
    return v2;
  }

  for (i = (a1 + 32); ; ++i)
  {
    v7 = *i;
    swift_getAtKeyPath();

    v9 = sub_26D1BDEEC(v22, v23);
    v10 = v2[2];
    v11 = (v8 & 1) == 0;
    v12 = v10 + v11;
    if (__OFADD__(v10, v11))
    {
      break;
    }

    v13 = v8;
    if (v2[3] < v12)
    {
      sub_26D1E324C(v12, 1);
      v2 = v24;
      v14 = sub_26D1BDEEC(v22, v23);
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_17;
      }

      v9 = v14;
    }

    if (v13)
    {

      v6 = v2[7] + 8 * v9;
      MEMORY[0x26D6B6D60](v5);
      if (*(*v6 + 16) >= *(*v6 + 24) >> 1)
      {
        sub_26D22E5A4();
      }

      sub_26D22E5B4();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1480, qword_26D234680);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_26D22F360;
      *(v16 + 32) = v7;
      v2[(v9 >> 6) + 8] |= 1 << v9;
      v17 = (v2[6] + 16 * v9);
      *v17 = v22;
      v17[1] = v23;
      *(v2[7] + 8 * v9) = v16;
      v18 = v2[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_16;
      }

      v2[2] = v20;
    }

    if (!--v3)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:

  result = sub_26D22E984();
  __break(1u);
  return result;
}

unint64_t sub_26D208504(uint64_t a1, uint64_t a2)
{
  v2 = sub_26D22E854();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_26D208550(uint64_t a1, uint64_t a2)
{
  v2 = sub_26D22E854();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_26D208610()
{
  result = qword_2804E1488;
  if (!qword_2804E1488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1488);
  }

  return result;
}

unint64_t sub_26D208668()
{
  result = qword_2804E1490;
  if (!qword_2804E1490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1490);
  }

  return result;
}

unint64_t sub_26D2086C0()
{
  result = qword_2804E1498;
  if (!qword_2804E1498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1498);
  }

  return result;
}

unint64_t sub_26D208718()
{
  result = qword_2804E14A0;
  if (!qword_2804E14A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E14A0);
  }

  return result;
}

unint64_t sub_26D208770()
{
  result = qword_2804E14A8;
  if (!qword_2804E14A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E14A8);
  }

  return result;
}

unint64_t sub_26D2087C8()
{
  result = qword_2804E14B0;
  if (!qword_2804E14B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E14B0);
  }

  return result;
}

unint64_t sub_26D208820()
{
  result = qword_2804E14B8;
  if (!qword_2804E14B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E14B8);
  }

  return result;
}

unint64_t sub_26D208874(uint64_t a1, uint64_t a2)
{
  v2 = sub_26D22E854();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_26D2088C0(uint64_t a1, uint64_t a2)
{
  v2 = sub_26D22E854();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_26D208960()
{
  result = qword_2804E14C0;
  if (!qword_2804E14C0)
  {
    sub_26D22D554();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E14C0);
  }

  return result;
}

unint64_t sub_26D208A34()
{
  result = qword_2804E14C8;
  if (!qword_2804E14C8)
  {
    sub_26D22D204();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E14C8);
  }

  return result;
}

uint64_t sub_26D208AB4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_26D22CB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D22CB74();
  sub_26D22CB64();
  MEMORY[0x26D6B5330](7824750, 0xE300000000000000);
  sub_26D208E18();
  sub_26D22CB34();
  sub_26D22CB44();
  v9 = sub_26D22CCE4();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    sub_26D1B950C(v4, &qword_2804E0890, &qword_26D230770);
    sub_26D20B834();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    return (*(v10 + 32))(a1, v4, v9);
  }
}

uint64_t sub_26D208D04(unsigned __int8 a1)
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

char *sub_26D208E18()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E14D8, &qword_26D234D10);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v331 = &v295 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v330 = &v295 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v329 = &v295 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v326 = &v295 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v323 = &v295 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v320 = &v295 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v319 = &v295 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v295 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v295 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v295 - v23;
  v25 = sub_26D22CB14();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v298 = &v295 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v297 = &v295 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v314 = &v295 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v313 = &v295 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v350 = &v295 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v312 = &v295 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v349 = &v295 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v348 = &v295 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v311 = &v295 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v347 = &v295 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v328 = &v295 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v327 = &v295 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v346 = &v295 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v310 = &v295 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v345 = &v295 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v344 = &v295 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v309 = &v295 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v343 = &v295 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v342 = &v295 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v308 = &v295 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v341 = &v295 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v340 = &v295 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v307 = &v295 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v339 = &v295 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v325 = &v295 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v324 = &v295 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v351 = &v295 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v306 = &v295 - v82;
  v83 = MEMORY[0x28223BE20](v81);
  v338 = &v295 - v84;
  v85 = MEMORY[0x28223BE20](v83);
  v337 = &v295 - v86;
  v87 = MEMORY[0x28223BE20](v85);
  v305 = &v295 - v88;
  v89 = MEMORY[0x28223BE20](v87);
  v336 = &v295 - v90;
  v91 = MEMORY[0x28223BE20](v89);
  v335 = &v295 - v92;
  v93 = MEMORY[0x28223BE20](v91);
  v304 = &v295 - v94;
  v95 = MEMORY[0x28223BE20](v93);
  v334 = &v295 - v96;
  v97 = MEMORY[0x28223BE20](v95);
  v322 = &v295 - v98;
  v99 = MEMORY[0x28223BE20](v97);
  v321 = &v295 - v100;
  v101 = MEMORY[0x28223BE20](v99);
  v333 = &v295 - v102;
  v103 = MEMORY[0x28223BE20](v101);
  v303 = &v295 - v104;
  v105 = MEMORY[0x28223BE20](v103);
  v332 = &v295 - v106;
  v107 = MEMORY[0x28223BE20](v105);
  v302 = &v295 - v108;
  v109 = MEMORY[0x28223BE20](v107);
  v301 = &v295 - v110;
  v111 = MEMORY[0x28223BE20](v109);
  v300 = &v295 - v112;
  v113 = MEMORY[0x28223BE20](v111);
  v299 = &v295 - v114;
  v115 = MEMORY[0x28223BE20](v113);
  v318 = &v295 - v116;
  v117 = MEMORY[0x28223BE20](v115);
  v317 = &v295 - v118;
  v119 = MEMORY[0x28223BE20](v117);
  v316 = &v295 - v120;
  v121 = MEMORY[0x28223BE20](v119);
  v315 = &v295 - v122;
  v123 = MEMORY[0x28223BE20](v121);
  v125 = &v295 - v124;
  MEMORY[0x28223BE20](v123);
  v127 = &v295 - v126;
  v355 = v26;
  v356 = MEMORY[0x277D84F90];
  v128 = *(v1 + 24);
  v352 = v1;
  if (!v128)
  {
    v353 = *(v26 + 56);
    v353(v24, 1, 1, v25);
LABEL_5:
    sub_26D1B950C(v24, &qword_2804E14D8, &qword_26D234D10);
    v129 = *(v1 + 48);
    if (!v129)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v26 = v355;
  sub_26D22CB04();
  v353 = *(v26 + 56);
  v353(v24, 0, 1, v25);

  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    v1 = v352;
    goto LABEL_5;
  }

  v354 = *(v26 + 32);
  v354(v127, v24, v25);
  (*(v26 + 16))(v125, v127, v25);
  v152 = sub_26D22B99C(0, 1, 1, MEMORY[0x277D84F90]);
  v154 = *(v152 + 2);
  v153 = *(v152 + 3);
  v296 = v19;
  if (v154 >= v153 >> 1)
  {
    v152 = sub_26D22B99C((v153 > 1), v154 + 1, 1, v152);
  }

  v155 = v355;
  v156 = v355 + 8;
  (*(v355 + 8))(v127, v25);
  *(v152 + 2) = v154 + 1;
  v157 = &v152[((*(v156 + 72) + 32) & ~*(v156 + 72)) + *(v156 + 64) * v154];
  v26 = v155;
  v354(v157, v125, v25);
  v356 = v152;
  v1 = v352;
  v19 = v296;
  v129 = *(v352 + 48);
  if (v129)
  {
LABEL_6:
    v131 = *(v1 + 56);
    v130 = *(v1 + 64);
    v357 = *(v1 + 32);
    v358 = v129;
    v359 = v131;
    v360 = v130;
    v132 = sub_26D20B888();
    sub_26D223D54(v132);
  }

LABEL_7:
  v133 = *(v1 + 88);

  sub_26D20CF48(v133, v22);

  v354 = *(v26 + 48);
  if (v354(v22, 1, v25) == 1)
  {
    sub_26D1B950C(v22, &qword_2804E14D8, &qword_26D234D10);
  }

  else
  {
    v134 = *(v26 + 32);
    v135 = v315;
    v134(v315, v22, v25);
    (*(v26 + 16))(v316, v135, v25);
    v136 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v136 = sub_26D22B99C(0, *(v136 + 2) + 1, 1, v136);
    }

    v138 = *(v136 + 2);
    v137 = *(v136 + 3);
    if (v138 >= v137 >> 1)
    {
      v136 = sub_26D22B99C((v137 > 1), v138 + 1, 1, v136);
    }

    (*(v26 + 8))(v315, v25);
    *(v136 + 2) = v138 + 1;
    v134(&v136[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v138], v316, v25);
    v356 = v136;
    v1 = v352;
  }

  v139 = *(v1 + 112);

  sub_26D20D13C(v139, v19);

  if (v354(v19, 1, v25) == 1)
  {
    sub_26D1B950C(v19, &qword_2804E14D8, &qword_26D234D10);
    if (*(v1 + 144))
    {
      goto LABEL_16;
    }

LABEL_28:
    v140 = v319;
    v353(v319, 1, 1, v25);
    goto LABEL_29;
  }

  v147 = *(v26 + 32);
  v148 = v317;
  v147(v317, v19, v25);
  (*(v26 + 16))(v318, v148, v25);
  v149 = v356;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v149 = sub_26D22B99C(0, *(v149 + 2) + 1, 1, v149);
  }

  v151 = *(v149 + 2);
  v150 = *(v149 + 3);
  if (v151 >= v150 >> 1)
  {
    v149 = sub_26D22B99C((v150 > 1), v151 + 1, 1, v149);
  }

  (*(v26 + 8))(v317, v25);
  *(v149 + 2) = v151 + 1;
  v147(&v149[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v151], v318, v25);
  v356 = v149;
  if (!*(v1 + 144))
  {
    goto LABEL_28;
  }

LABEL_16:

  v140 = v319;
  sub_26D22CB04();
  v353(v140, 0, 1, v25);

  if (v354(v140, 1, v25) != 1)
  {
    v141 = *(v26 + 32);
    v142 = v299;
    v141(v299, v140, v25);
    (*(v26 + 16))(v300, v142, v25);
    v143 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v143 = sub_26D22B99C(0, *(v143 + 2) + 1, 1, v143);
    }

    v145 = *(v143 + 2);
    v144 = *(v143 + 3);
    if (v145 >= v144 >> 1)
    {
      v143 = sub_26D22B99C((v144 > 1), v145 + 1, 1, v143);
    }

    (*(v26 + 8))(v299, v25);
    *(v143 + 2) = v145 + 1;
    v141(&v143[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v145], v300, v25);
    v356 = v143;
    if (!*(v1 + 176))
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

LABEL_29:
  sub_26D1B950C(v140, &qword_2804E14D8, &qword_26D234D10);
  if (!*(v1 + 176))
  {
LABEL_22:
    v146 = v320;
    v353(v320, 1, 1, v25);
LABEL_31:
    sub_26D1B950C(v146, &qword_2804E14D8, &qword_26D234D10);
    goto LABEL_41;
  }

LABEL_30:

  v146 = v320;
  sub_26D22CB04();
  v353(v146, 0, 1, v25);

  if (v354(v146, 1, v25) == 1)
  {
    goto LABEL_31;
  }

  v158 = *(v26 + 32);
  v159 = v301;
  v158(v301, v146, v25);
  (*(v26 + 16))(v302, v159, v25);
  v160 = v356;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v160 = sub_26D22B99C(0, *(v160 + 2) + 1, 1, v160);
  }

  v162 = *(v160 + 2);
  v161 = *(v160 + 3);
  if (v162 >= v161 >> 1)
  {
    v160 = sub_26D22B99C((v161 > 1), v162 + 1, 1, v160);
  }

  (*(v26 + 8))(v301, v25);
  *(v160 + 2) = v162 + 1;
  v158(&v160[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v162], v302, v25);
  v356 = v160;
LABEL_41:

  sub_26D20DA6C(v163);
  if (v164)
  {
    v165 = v303;
    sub_26D22CB04();

    v166 = *(v26 + 32);
    v167 = v332;
    v166(v332, v165, v25);
    (*(v26 + 16))(v333, v167, v25);
    v168 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v168 = sub_26D22B99C(0, *(v168 + 2) + 1, 1, v168);
    }

    v170 = *(v168 + 2);
    v169 = *(v168 + 3);
    if (v170 >= v169 >> 1)
    {
      v168 = sub_26D22B99C((v169 > 1), v170 + 1, 1, v168);
    }

    (*(v26 + 8))(v332, v25);
    *(v168 + 2) = v170 + 1;
    v166(&v168[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v170], v333, v25);
    v356 = v168;
  }

  else
  {
  }

  v171 = type metadata accessor for TapToRadarDraft(0);
  v172 = v323;
  sub_26D20D294(v323);
  if (v354(v172, 1, v25) == 1)
  {
    sub_26D1B950C(v172, &qword_2804E14D8, &qword_26D234D10);
  }

  else
  {
    v173 = *(v26 + 32);
    v174 = v321;
    v173(v321, v172, v25);
    (*(v26 + 16))(v322, v174, v25);
    v175 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v175 = sub_26D22B99C(0, *(v175 + 2) + 1, 1, v175);
    }

    v177 = *(v175 + 2);
    v176 = *(v175 + 3);
    if (v177 >= v176 >> 1)
    {
      v175 = sub_26D22B99C((v176 > 1), v177 + 1, 1, v175);
    }

    (*(v26 + 8))(v321, v25);
    *(v175 + 2) = v177 + 1;
    v173(&v175[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v177], v322, v25);
    v356 = v175;
    v1 = v352;
  }

  sub_26D20D858(v178);
  if (v179)
  {
    v180 = v304;
    sub_26D22CB04();

    v181 = *(v26 + 32);
    v182 = v334;
    v181(v334, v180, v25);
    (*(v26 + 16))(v335, v182, v25);
    v183 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v183 = sub_26D22B99C(0, *(v183 + 2) + 1, 1, v183);
    }

    v185 = *(v183 + 2);
    v184 = *(v183 + 3);
    if (v185 >= v184 >> 1)
    {
      v183 = sub_26D22B99C((v184 > 1), v185 + 1, 1, v183);
    }

    (*(v26 + 8))(v334, v25);
    *(v183 + 2) = v185 + 1;
    v181(&v183[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v185], v335, v25);
    v356 = v183;
    v1 = v352;
  }

  else
  {
  }

  sub_26D20D858(v186);
  if (v187)
  {
    v188 = v305;
    sub_26D22CB04();

    v189 = *(v26 + 32);
    v190 = v336;
    v189(v336, v188, v25);
    (*(v26 + 16))(v337, v190, v25);
    v191 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v191 = sub_26D22B99C(0, *(v191 + 2) + 1, 1, v191);
    }

    v193 = *(v191 + 2);
    v192 = *(v191 + 3);
    if (v193 >= v192 >> 1)
    {
      v191 = sub_26D22B99C((v192 > 1), v193 + 1, 1, v191);
    }

    (*(v26 + 8))(v336, v25);
    *(v191 + 2) = v193 + 1;
    v189(&v191[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v193], v337, v25);
    v356 = v191;
    v1 = v352;
  }

  else
  {
  }

  sub_26D20D728(v194);
  if (v195)
  {
    v196 = v306;
    sub_26D22CB04();

    v197 = *(v26 + 32);
    v198 = v338;
    v197(v338, v196, v25);
    (*(v26 + 16))(v351, v198, v25);
    v199 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v199 = sub_26D22B99C(0, *(v199 + 2) + 1, 1, v199);
    }

    v201 = *(v199 + 2);
    v200 = *(v199 + 3);
    if (v201 >= v200 >> 1)
    {
      v199 = sub_26D22B99C((v200 > 1), v201 + 1, 1, v199);
    }

    (*(v26 + 8))(v338, v25);
    *(v199 + 2) = v201 + 1;
    v197(&v199[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v201], v351, v25);
    v356 = v199;
    v1 = v352;
  }

  else
  {
  }

  v202 = v326;
  sub_26D22CB04();

  v351 = (v26 + 56);
  v353(v202, 0, 1, v25);

  if (v354(v202, 1, v25) == 1)
  {
    sub_26D1B950C(v202, &qword_2804E14D8, &qword_26D234D10);
  }

  else
  {
    v203 = *(v26 + 32);
    v204 = v324;
    v203(v324, v202, v25);
    (*(v26 + 16))(v325, v204, v25);
    v205 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v205 = sub_26D22B99C(0, *(v205 + 2) + 1, 1, v205);
    }

    v207 = *(v205 + 2);
    v206 = *(v205 + 3);
    if (v207 >= v206 >> 1)
    {
      v205 = sub_26D22B99C((v206 > 1), v207 + 1, 1, v205);
    }

    v208 = v355 + 8;
    (*(v355 + 8))(v324, v25);
    *(v205 + 2) = v207 + 1;
    v203(&v205[((*(v208 + 72) + 32) & ~*(v208 + 72)) + *(v208 + 64) * v207], v325, v25);
    v356 = v205;
  }

  sub_26D20D728(v209);
  if (v210)
  {
    v211 = v307;
    sub_26D22CB04();

    v212 = v355;
    v213 = *(v355 + 32);
    v214 = v339;
    v213(v339, v211, v25);
    (*(v212 + 16))(v340, v214, v25);
    v215 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v215 = sub_26D22B99C(0, *(v215 + 2) + 1, 1, v215);
    }

    v217 = *(v215 + 2);
    v216 = *(v215 + 3);
    if (v217 >= v216 >> 1)
    {
      v215 = sub_26D22B99C((v216 > 1), v217 + 1, 1, v215);
    }

    v218 = v355 + 8;
    (*(v355 + 8))(v339, v25);
    *(v215 + 2) = v217 + 1;
    v213(&v215[((*(v218 + 72) + 32) & ~*(v218 + 72)) + *(v218 + 64) * v217], v340, v25);
    v356 = v215;
  }

  else
  {
  }

  sub_26D20D550(v219);
  if (v220)
  {
    v221 = v308;
    sub_26D22CB04();

    v222 = v355;
    v223 = *(v355 + 32);
    v224 = v341;
    v223(v341, v221, v25);
    (*(v222 + 16))(v342, v224, v25);
    v225 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v225 = sub_26D22B99C(0, *(v225 + 2) + 1, 1, v225);
    }

    v227 = *(v225 + 2);
    v226 = *(v225 + 3);
    if (v227 >= v226 >> 1)
    {
      v225 = sub_26D22B99C((v226 > 1), v227 + 1, 1, v225);
    }

    v228 = v355 + 8;
    (*(v355 + 8))(v341, v25);
    *(v225 + 2) = v227 + 1;
    v223(&v225[((*(v228 + 72) + 32) & ~*(v228 + 72)) + *(v228 + 64) * v227], v342, v25);
    v356 = v225;
  }

  else
  {
  }

  sub_26D20D728(v229);
  if (v230)
  {
    v231 = v309;
    sub_26D22CB04();

    v232 = v355;
    v233 = *(v355 + 32);
    v234 = v343;
    v233(v343, v231, v25);
    (*(v232 + 16))(v344, v234, v25);
    v235 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v235 = sub_26D22B99C(0, *(v235 + 2) + 1, 1, v235);
    }

    v237 = *(v235 + 2);
    v236 = *(v235 + 3);
    if (v237 >= v236 >> 1)
    {
      v235 = sub_26D22B99C((v236 > 1), v237 + 1, 1, v235);
    }

    v238 = v355 + 8;
    (*(v355 + 8))(v343, v25);
    *(v235 + 2) = v237 + 1;
    v233(&v235[((*(v238 + 72) + 32) & ~*(v238 + 72)) + *(v238 + 64) * v237], v344, v25);
    v356 = v235;
  }

  else
  {
  }

  v239 = *(v1 + v171[19] + 16);

  sub_26D20C3A0(v239);
  if (v240)
  {
    v241 = v310;
    sub_26D22CB04();

    v242 = v355;
    v243 = *(v355 + 32);
    v244 = v345;
    v243(v345, v241, v25);
    (*(v242 + 16))(v346, v244, v25);
    v245 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v245 = sub_26D22B99C(0, *(v245 + 2) + 1, 1, v245);
    }

    v247 = *(v245 + 2);
    v246 = *(v245 + 3);
    if (v247 >= v246 >> 1)
    {
      v245 = sub_26D22B99C((v246 > 1), v247 + 1, 1, v245);
    }

    v248 = v355 + 8;
    (*(v355 + 8))(v345, v25);
    *(v245 + 2) = v247 + 1;
    v243(&v245[((*(v248 + 72) + 32) & ~*(v248 + 72)) + *(v248 + 64) * v247], v346, v25);
    v356 = v245;
  }

  else
  {
  }

  v249 = v329;
  sub_26D22CB04();

  v353(v249, 0, 1, v25);
  v250 = v249;

  if (v354(v249, 1, v25) == 1)
  {
    sub_26D1B950C(v249, &qword_2804E14D8, &qword_26D234D10);
  }

  else
  {
    v251 = v355;
    v252 = *(v355 + 32);
    v253 = v327;
    v252(v327, v250, v25);
    (*(v251 + 16))(v328, v253, v25);
    v254 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v254 = sub_26D22B99C(0, *(v254 + 2) + 1, 1, v254);
    }

    v256 = *(v254 + 2);
    v255 = *(v254 + 3);
    if (v256 >= v255 >> 1)
    {
      v254 = sub_26D22B99C((v255 > 1), v256 + 1, 1, v254);
    }

    v257 = v355 + 8;
    (*(v355 + 8))(v327, v25);
    *(v254 + 2) = v256 + 1;
    v252(&v254[((*(v257 + 72) + 32) & ~*(v257 + 72)) + *(v257 + 64) * v256], v328, v25);
    v356 = v254;
  }

  v258 = *(v1 + v171[21] + 16);

  sub_26D20CA58(v258);
  if (v259)
  {
    v260 = v311;
    sub_26D22CB04();

    v261 = v355;
    v262 = *(v355 + 32);
    v263 = v347;
    v262(v347, v260, v25);
    (*(v261 + 16))(v348, v263, v25);
    v264 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v264 = sub_26D22B99C(0, *(v264 + 2) + 1, 1, v264);
    }

    v266 = *(v264 + 2);
    v265 = *(v264 + 3);
    if (v266 >= v265 >> 1)
    {
      v264 = sub_26D22B99C((v265 > 1), v266 + 1, 1, v264);
    }

    v267 = v355 + 8;
    (*(v355 + 8))(v347, v25);
    *(v264 + 2) = v266 + 1;
    v262(&v264[((*(v267 + 72) + 32) & ~*(v267 + 72)) + *(v267 + 64) * v266], v348, v25);
    v356 = v264;
  }

  else
  {
  }

  sub_26D20D728(v268);
  if (v269)
  {
    v270 = v312;
    sub_26D22CB04();

    v271 = v355;
    v272 = *(v355 + 32);
    v273 = v349;
    v272(v349, v270, v25);
    (*(v271 + 16))(v350, v273, v25);
    v274 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v274 = sub_26D22B99C(0, *(v274 + 2) + 1, 1, v274);
    }

    v276 = *(v274 + 2);
    v275 = *(v274 + 3);
    if (v276 >= v275 >> 1)
    {
      v274 = sub_26D22B99C((v275 > 1), v276 + 1, 1, v274);
    }

    v277 = v355 + 8;
    (*(v355 + 8))(v349, v25);
    *(v274 + 2) = v276 + 1;
    v272(&v274[((*(v277 + 72) + 32) & ~*(v277 + 72)) + *(v277 + 64) * v276], v350, v25);
    v356 = v274;
  }

  else
  {
  }

  if (!*(v1 + v171[23] + 24))
  {
    v278 = v330;
    v353(v330, 1, 1, v25);
    v280 = v355;
    goto LABEL_140;
  }

  v278 = v330;
  sub_26D22CB04();
  v353(v278, 0, 1, v25);

  v279 = v354(v278, 1, v25);
  v280 = v355;
  if (v279 == 1)
  {
LABEL_140:
    sub_26D1B950C(v278, &qword_2804E14D8, &qword_26D234D10);
    goto LABEL_141;
  }

  v281 = *(v355 + 32);
  v282 = v313;
  v281(v313, v278, v25);
  (*(v280 + 16))(v314, v282, v25);
  v283 = v356;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v283 = sub_26D22B99C(0, *(v283 + 2) + 1, 1, v283);
  }

  v285 = *(v283 + 2);
  v284 = *(v283 + 3);
  if (v285 >= v284 >> 1)
  {
    v283 = sub_26D22B99C((v284 > 1), v285 + 1, 1, v283);
  }

  v280 = v355;
  v286 = v355 + 8;
  (*(v355 + 8))(v313, v25);
  *(v283 + 2) = v285 + 1;
  v281(&v283[((*(v286 + 72) + 32) & ~*(v286 + 72)) + *(v286 + 64) * v285], v314, v25);
  v356 = v283;
LABEL_141:
  if (!*(v352 + v171[24] + 24))
  {
    v287 = v331;
    v353(v331, 1, 1, v25);
    goto LABEL_149;
  }

  v287 = v331;
  sub_26D22CB04();
  v353(v287, 0, 1, v25);

  if (v354(v287, 1, v25) == 1)
  {
LABEL_149:
    sub_26D1B950C(v287, &qword_2804E14D8, &qword_26D234D10);
    return v356;
  }

  v288 = *(v280 + 32);
  v289 = v297;
  v288(v297, v287, v25);
  v290 = v298;
  (*(v280 + 16))(v298, v289, v25);
  v291 = v356;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v291 = sub_26D22B99C(0, *(v291 + 2) + 1, 1, v291);
  }

  v293 = *(v291 + 2);
  v292 = *(v291 + 3);
  if (v293 >= v292 >> 1)
  {
    v291 = sub_26D22B99C((v292 > 1), v293 + 1, 1, v291);
  }

  (*(v280 + 8))(v289, v25);
  *(v291 + 2) = v293 + 1;
  v288(&v291[((*(v280 + 80) + 32) & ~*(v280 + 80)) + *(v280 + 72) * v293], v290, v25);
  return v291;
}

unint64_t sub_26D20B834()
{
  result = qword_2804E14D0;
  if (!qword_2804E14D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E14D0);
  }

  return result;
}

uint64_t sub_26D20B888()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E14E0, &qword_26D234D18);
  sub_26D22CB14();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26D234C40;
  sub_26D22E954();
  sub_26D22CB04();

  sub_26D22CB04();
  sub_26D22CB04();
  return v0;
}

uint64_t sub_26D20BA04()
{
  v1 = *v0;
  sub_26D22E9E4();
  MEMORY[0x26D6B71D0](v1);
  sub_26D22E454();
  sub_26D22E454();
  return sub_26D22EA04();
}

uint64_t sub_26D20BA84(uint64_t a1)
{
  MEMORY[0x26D6B71D0](*v1);
  sub_26D22E454();

  return sub_26D22E454();
}

uint64_t sub_26D20BAF4(uint64_t a1)
{
  v2 = *v1;
  sub_26D22E9E4();
  MEMORY[0x26D6B71D0](v2);
  sub_26D22E454();
  sub_26D22E454();
  return sub_26D22EA04();
}

uint64_t sub_26D20BB70(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_26D22E964() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_26D22E964();
}

unint64_t sub_26D20BC24(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x2065727574616546;
    v6 = 0x6D65636E61686E45;
    if (a1 != 8)
    {
      v6 = 1802723668;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x2073756F69726553;
    if (a1 != 5)
    {
      v7 = 0x754220726568744FLL;
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
    v1 = 0x7974697275636553;
    v2 = 0x7265776F50;
    v3 = 0x616D726F66726550;
    if (a1 != 3)
    {
      v3 = 0x69626173552F4955;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000014;
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

uint64_t sub_26D20BD88(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_26D20BC24(*a1);
  v5 = v4;
  if (v3 == sub_26D20BC24(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26D22E964();
  }

  return v8 & 1;
}

uint64_t sub_26D20BE10()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D20BC24(v1);
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D20BE74(uint64_t a1)
{
  sub_26D20BC24(*v1);
  sub_26D22E454();
}

uint64_t sub_26D20BEC8(uint64_t a1)
{
  v2 = *v1;
  sub_26D22E9E4();
  sub_26D20BC24(v2);
  sub_26D22E454();

  return sub_26D22EA04();
}

unint64_t sub_26D20BF28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26D20F3C8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_26D20BF58@<X0>(unint64_t *a1@<X8>)
{
  result = sub_26D20BC24(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26D20BF98(uint64_t a1)
{
  sub_26D22E454();
}

unint64_t sub_26D20C09C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26D20F460(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26D20C0CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x737961776C41;
  v5 = 0xE600000000000000;
  v6 = 0x656C62616E55;
  v7 = 0xEC00000079725420;
  v8 = 0x74276E6469442049;
  if (v2 != 4)
  {
    v8 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000073;
  v10 = 0x656D6974656D6F53;
  if (v2 != 1)
  {
    v10 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_26D20C1B0(uint64_t a1)
{
  sub_26D22E454();
}

unint64_t sub_26D20C2AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26D20F37C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26D20C2DC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656E6F685069;
  v5 = 0xE300000000000000;
  v6 = 6512973;
  if (v2 != 5)
  {
    v6 = 0x6E6F69736956;
    v5 = 0xE600000000000000;
  }

  v7 = 0x5654656C707041;
  if (v2 != 3)
  {
    v7 = 0x646F50656D6F48;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  v8 = 0xE400000000000000;
  v9 = 1684099177;
  if (v2 != 1)
  {
    v9 = 0x6863746157;
    v8 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_26D20C3A0(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (a1)
    {
      v2 = sub_26D22B890(0, 1, 1, MEMORY[0x277D84F90]);
      v4 = *(v2 + 2);
      v3 = *(v2 + 3);
      if (v4 >= v3 >> 1)
      {
        v2 = sub_26D22B890((v3 > 1), v4 + 1, 1, v2);
      }

      *(v2 + 2) = v4 + 1;
      v5 = &v2[16 * v4];
      *(v5 + 4) = 0x79616C50726941;
      *(v5 + 5) = 0xE700000000000000;
      if ((v1 & 2) == 0)
      {
LABEL_14:
        if ((v1 & 4) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_26D22B890(0, *(v2 + 2) + 1, 1, v2);
          }

          v10 = *(v2 + 2);
          v9 = *(v2 + 3);
          if (v10 >= v9 >> 1)
          {
            v2 = sub_26D22B890((v9 > 1), v10 + 1, 1, v2);
          }

          *(v2 + 2) = v10 + 1;
          v11 = &v2[16 * v10];
          strcpy(v11 + 32, "MediaSystems");
          v11[45] = 0;
          *(v11 + 23) = -5120;
        }

        if ((v1 & 8) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_26D22B890(0, *(v2 + 2) + 1, 1, v2);
          }

          v13 = *(v2 + 2);
          v12 = *(v2 + 3);
          if (v13 >= v12 >> 1)
          {
            v2 = sub_26D22B890((v12 > 1), v13 + 1, 1, v2);
          }

          *(v2 + 2) = v13 + 1;
          v14 = &v2[16 * v13];
          *(v14 + 4) = 0x616C506572616853;
          *(v14 + 5) = 0xE900000000000079;
          if ((v1 & 0x10) == 0)
          {
LABEL_22:
            if ((v1 & 0x20) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_36;
          }
        }

        else if ((v1 & 0x10) == 0)
        {
          goto LABEL_22;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_26D22B890(0, *(v2 + 2) + 1, 1, v2);
        }

        v16 = *(v2 + 2);
        v15 = *(v2 + 3);
        if (v16 >= v15 >> 1)
        {
          v2 = sub_26D22B890((v15 > 1), v16 + 1, 1, v2);
        }

        *(v2 + 2) = v16 + 1;
        v17 = &v2[16 * v16];
        *(v17 + 4) = 0x79627261654ELL;
        *(v17 + 5) = 0xE600000000000000;
        if ((v1 & 0x20) == 0)
        {
LABEL_23:
          if ((v1 & 0x40) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_41;
        }

LABEL_36:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_26D22B890(0, *(v2 + 2) + 1, 1, v2);
        }

        v19 = *(v2 + 2);
        v18 = *(v2 + 3);
        if (v19 >= v18 >> 1)
        {
          v2 = sub_26D22B890((v18 > 1), v19 + 1, 1, v2);
        }

        *(v2 + 2) = v19 + 1;
        v20 = &v2[16 * v19];
        *(v20 + 4) = 0x657463656E6E6F43;
        *(v20 + 5) = 0xE900000000000064;
        if ((v1 & 0x40) == 0)
        {
LABEL_24:
          if ((v1 & 0x80) == 0)
          {
LABEL_51:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E14E8, &unk_26D234D20);
            sub_26D20DC10();
            v1 = sub_26D22E394();

            return v1;
          }

LABEL_46:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_26D22B890(0, *(v2 + 2) + 1, 1, v2);
          }

          v25 = *(v2 + 2);
          v24 = *(v2 + 3);
          if (v25 >= v24 >> 1)
          {
            v2 = sub_26D22B890((v24 > 1), v25 + 1, 1, v2);
          }

          *(v2 + 2) = v25 + 1;
          v26 = &v2[16 * v25];
          *(v26 + 4) = 0xD000000000000016;
          *(v26 + 5) = 0x800000026D23BF00;
          goto LABEL_51;
        }

LABEL_41:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_26D22B890(0, *(v2 + 2) + 1, 1, v2);
        }

        v22 = *(v2 + 2);
        v21 = *(v2 + 3);
        if (v22 >= v21 >> 1)
        {
          v2 = sub_26D22B890((v21 > 1), v22 + 1, 1, v2);
        }

        *(v2 + 2) = v22 + 1;
        v23 = &v2[16 * v22];
        *(v23 + 4) = 0x61656854656D6F48;
        *(v23 + 5) = 0xEB00000000726574;
        if ((v1 & 0x80) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
      if ((a1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_26D22B890(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_26D22B890((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x4874694B656D6F48;
    *(v8 + 5) = 0xEB00000000656D6FLL;
    goto LABEL_14;
  }

  return v1;
}

BOOL sub_26D20C8B4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_26D20C8E4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_26D20C910@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_26D20C9FC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_26D20CA18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_26D20F4AC(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_26D20CA58(unsigned __int8 a1)
{
  if (!a1)
  {

    return 0;
  }

  v2 = sub_26D22E964();

  if (v2)
  {
    return 0;
  }

  if (a1 > 3u)
  {
    if (a1 == 4)
    {
      return 0xD000000000000010;
    }

    else if (a1 == 5)
    {
      return 0xD000000000000010;
    }

    else
    {
      return 0xD00000000000001CLL;
    }
  }

  else if (a1 == 1)
  {
    return 48;
  }

  else if (a1 == 2)
  {
    return 12589;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_26D20CC28(uint64_t a1)
{
  sub_26D22E454();
}

unint64_t sub_26D20CD2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26D20F414(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26D20CD5C(void *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE300000000000000;
    v9 = 0xE100000000000000;
    v10 = 48;
    if (v2 != 1)
    {
      v10 = 12589;
      v9 = 0xE200000000000000;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v10;
    }

    else
    {
      v12 = 7105633;
    }

    if (!v11)
    {
      v8 = v9;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xD000000000000010;
    v4 = 0x800000026D239F60;
    if (v2 != 5)
    {
      v3 = 0xD00000000000001CLL;
      v4 = 0x800000026D239F80;
    }

    v5 = 0x800000026D239F20;
    if (v2 != 3)
    {
      v5 = 0x800000026D239F40;
    }

    if (*v1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v3;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    *a1 = v6;
    a1[1] = v7;
  }
}

uint64_t sub_26D20CE2C()
{
  v1 = *v0;
  sub_26D22E9E4();
  MEMORY[0x26D6B71D0](v1);
  return sub_26D22EA04();
}

uint64_t sub_26D20CEA0(uint64_t a1)
{
  v2 = *v1;
  sub_26D22E9E4();
  MEMORY[0x26D6B71D0](v2);
  return sub_26D22EA04();
}

unint64_t sub_26D20CEE4()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000002DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000028;
  }
}

uint64_t sub_26D20CF48@<X0>(unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  if (a3 > 9u)
  {
    v5 = 1;
  }

  else
  {
    sub_26D22CB04();

    v5 = 0;
  }

  v6 = sub_26D22CB14();
  v7 = *(*(v6 - 8) + 56);

  return v7(a4, v5, 1, v6);
}

uint64_t sub_26D20D13C@<X0>(unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  if (a3 > 5u)
  {
    v5 = 1;
  }

  else
  {
    sub_26D22CB04();

    v5 = 0;
  }

  v6 = sub_26D22CB14();
  v7 = *(*(v6 - 8) + 56);

  return v7(a4, v5, 1, v6);
}

uint64_t sub_26D20D294@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0490, &qword_26D231F50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_26D22CE34();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0498, &qword_26D234D30);
  sub_26D20DC74(v2 + *(v11 + 36), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_26D1B950C(v6, &qword_2804E0490, &qword_26D231F50);
    v12 = 1;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v13 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v14 = sub_26D22E3B4();
    [v13 setDateFormat_];

    [v13 setDoesRelativeDateFormatting_];
    v15 = sub_26D22CDF4();
    v16 = [v13 stringFromDate_];

    sub_26D22E3C4();
    (*(v8 + 8))(v10, v7);
    sub_26D22CB04();

    v12 = 0;
  }

  v17 = sub_26D22CB14();
  return (*(*(v17 - 8) + 56))(a1, v12, 1, v17);
}

uint64_t sub_26D20D550(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v5 = *v2++;
    v4 = v5;
    v6 = v5 == 5;
    v7 = 6512973;
    if (v5 != 5)
    {
      v7 = 0x6E6F69736956;
    }

    v8 = 0xE300000000000000;
    if (!v6)
    {
      v8 = 0xE600000000000000;
    }

    v9 = 0x5654656C707041;
    if (v4 != 3)
    {
      v9 = 0x646F50656D6F48;
    }

    if (v4 <= 4)
    {
      v7 = v9;
      v8 = 0xE700000000000000;
    }

    v10 = 1684099177;
    if (v4 != 1)
    {
      v10 = 0x6863746157;
    }

    v11 = 0xE400000000000000;
    if (v4 != 1)
    {
      v11 = 0xE500000000000000;
    }

    if (!v4)
    {
      v10 = 0x656E6F685069;
      v11 = 0xE600000000000000;
    }

    if (v4 <= 2)
    {
      v12 = v10;
    }

    else
    {
      v12 = v7;
    }

    if (v4 <= 2)
    {
      v13 = v11;
    }

    else
    {
      v13 = v8;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_26D22B890(0, *(v3 + 2) + 1, 1, v3);
    }

    v15 = *(v3 + 2);
    v14 = *(v3 + 3);
    if (v15 >= v14 >> 1)
    {
      v3 = sub_26D22B890((v14 > 1), v15 + 1, 1, v3);
    }

    *(v3 + 2) = v15 + 1;
    v16 = &v3[16 * v15];
    *(v16 + 4) = v12;
    *(v16 + 5) = v13;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E14E8, &unk_26D234D20);
  sub_26D20DC10();
  v17 = sub_26D22E394();

  return v17;
}

uint64_t sub_26D20D728(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 40);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v5 = *(v2 - 1);
    v4 = *v2;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_26D22B890(0, *(v3 + 2) + 1, 1, v3);
    }

    v7 = *(v3 + 2);
    v6 = *(v3 + 3);
    if (v7 >= v6 >> 1)
    {
      v3 = sub_26D22B890((v6 > 1), v7 + 1, 1, v3);
    }

    *(v3 + 2) = v7 + 1;
    v8 = &v3[16 * v7];
    *(v8 + 4) = v5;
    *(v8 + 5) = v4;
    v2 += 2;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E14E8, &unk_26D234D20);
  sub_26D20DC10();
  v9 = sub_26D22E394();

  return v9;
}

uint64_t sub_26D20D858(uint64_t a1)
{
  v23 = sub_26D22CCE4();
  MEMORY[0x28223BE20](v23);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  if (!v5)
  {
    return 0;
  }

  v7 = *(v2 + 16);
  v6 = v2 + 16;
  v8 = a1 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
  v21 = *(v6 + 56);
  v22 = v7;
  v9 = (v6 - 8);
  v10 = MEMORY[0x277D84F90];
  do
  {
    v11 = v23;
    v12 = v6;
    v22(v4, v8, v23);
    v13 = sub_26D22CCA4();
    v15 = v14;
    (*v9)(v4, v11);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_26D22B890(0, *(v10 + 2) + 1, 1, v10);
    }

    v17 = *(v10 + 2);
    v16 = *(v10 + 3);
    if (v17 >= v16 >> 1)
    {
      v10 = sub_26D22B890((v16 > 1), v17 + 1, 1, v10);
    }

    *(v10 + 2) = v17 + 1;
    v18 = &v10[16 * v17];
    *(v18 + 4) = v13;
    *(v18 + 5) = v15;
    v8 += v21;
    --v5;
    v6 = v12;
  }

  while (v5);
  v24 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E14E8, &unk_26D234D20);
  sub_26D20DC10();
  v19 = sub_26D22E394();

  return v19;
}

uint64_t sub_26D20DA6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = a1 + 32;
  v3 = MEMORY[0x277D84F90];
  do
  {
    v2 += 8;
    v4 = sub_26D22E954();
    v6 = v5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_26D22B890(0, *(v3 + 2) + 1, 1, v3);
    }

    v8 = *(v3 + 2);
    v7 = *(v3 + 3);
    if (v8 >= v7 >> 1)
    {
      v3 = sub_26D22B890((v7 > 1), v8 + 1, 1, v3);
    }

    *(v3 + 2) = v8 + 1;
    v9 = &v3[16 * v8];
    *(v9 + 4) = v4;
    *(v9 + 5) = v6;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E14E8, &unk_26D234D20);
  sub_26D20DC10();
  v10 = sub_26D22E394();

  return v10;
}

uint64_t type metadata accessor for TapToRadarDraft(uint64_t a1)
{
  result = qword_2804E1578;
  if (!qword_2804E1578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_26D20DC10()
{
  result = qword_2804E14F0[0];
  if (!qword_2804E14F0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804E14E8, &unk_26D234D20);
    result = swift_getWitnessTable();
    atomic_store(result, qword_2804E14F0);
  }

  return result;
}

uint64_t sub_26D20DC74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0490, &qword_26D231F50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26D20DCF4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26D20DD74(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_26D20DEF8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
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
          v13 = v17;
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

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_26D20E174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0498, &qword_26D234D30);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26D20E244(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0498, &qword_26D234D30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_26D20E2F4(uint64_t a1)
{
  sub_26D20E718(319, &qword_2804E1588, &qword_2804E0EE8, qword_26D231B80, sub_26D20E64C);
  if (v1 <= 0x3F)
  {
    sub_26D20E6C8();
    if (v2 <= 0x3F)
    {
      sub_26D20E718(319, &qword_2804E15A0, &qword_2804E15A8, "\u038B", sub_26D20E788);
      if (v3 <= 0x3F)
      {
        sub_26D20E718(319, &qword_2804E15B8, &qword_2804E15C0, "\u038B", sub_26D20E804);
        if (v4 <= 0x3F)
        {
          sub_26D20E718(319, &qword_2804E15D0, &qword_2804E15D8, "\u038B", sub_26D20E880);
          if (v5 <= 0x3F)
          {
            sub_26D20E718(319, &qword_2804E15E8, &qword_2804E0490, &qword_26D231F50, sub_26D20E8FC);
            if (v6 <= 0x3F)
            {
              sub_26D20E718(319, &qword_2804E15F8, &qword_2804E1600, &qword_26D234D98, sub_26D20E978);
              if (v7 <= 0x3F)
              {
                sub_26D20E718(319, &qword_2804E1610, &qword_2804E14E8, &unk_26D234D20, sub_26D20E9F4);
                if (v8 <= 0x3F)
                {
                  sub_26D20EAEC(319, &qword_2804E1620, MEMORY[0x277D839B0], &off_287E9DC78);
                  if (v9 <= 0x3F)
                  {
                    sub_26D20E718(319, &qword_2804E1628, &qword_2804E1630, &qword_26D234DA0, sub_26D20EA70);
                    if (v10 <= 0x3F)
                    {
                      sub_26D20EAEC(319, &qword_2804E1640, &type metadata for TapToRadarDraft.RemoteDeviceSelections, &off_287E9E0B0);
                      if (v11 <= 0x3F)
                      {
                        sub_26D20EAEC(319, &qword_2804E1648, &type metadata for TapToRadarDraft.AutoDiagnostics, &off_287E9E0A0);
                        if (v12 <= 0x3F)
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
        }
      }
    }
  }
}

unint64_t sub_26D20E64C()
{
  result = qword_2804E1590;
  if (!qword_2804E1590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804E0EE8, qword_26D231B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1590);
  }

  return result;
}

void sub_26D20E6C8()
{
  if (!qword_2804E1598)
  {
    v0 = sub_26D22E654();
    if (!v1)
    {
      atomic_store(v0, &qword_2804E1598);
    }
  }
}

void sub_26D20E718(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5();
    v11 = type metadata accessor for URLParameter(a1, v8, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_26D20E788()
{
  result = qword_2804E15B0;
  if (!qword_2804E15B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804E15A8, "\u038B");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E15B0);
  }

  return result;
}

unint64_t sub_26D20E804()
{
  result = qword_2804E15C8;
  if (!qword_2804E15C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804E15C0, "\u038B");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E15C8);
  }

  return result;
}

unint64_t sub_26D20E880()
{
  result = qword_2804E15E0;
  if (!qword_2804E15E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804E15D8, "\u038B");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E15E0);
  }

  return result;
}

unint64_t sub_26D20E8FC()
{
  result = qword_2804E15F0;
  if (!qword_2804E15F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804E0490, &qword_26D231F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E15F0);
  }

  return result;
}

unint64_t sub_26D20E978()
{
  result = qword_2804E1608;
  if (!qword_2804E1608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804E1600, &qword_26D234D98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1608);
  }

  return result;
}

unint64_t sub_26D20E9F4()
{
  result = qword_2804E1618;
  if (!qword_2804E1618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804E14E8, &unk_26D234D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1618);
  }

  return result;
}

unint64_t sub_26D20EA70()
{
  result = qword_2804E1638;
  if (!qword_2804E1638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804E1630, &qword_26D234DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1638);
  }

  return result;
}

void sub_26D20EAEC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for URLParameter(0, a3, a4, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t _s21DecodingConfigurationV10CodingKeysOwet_1(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s21DecodingConfigurationV10CodingKeysOwst_1(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TapToRadarDraft.Reproducibility(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.Reproducibility(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TapToRadarDraft.Classification(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.Classification(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
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

uint64_t sub_26D20EF68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_26D20EFB0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_26D20F00C()
{
  result = qword_2804E1650;
  if (!qword_2804E1650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1650);
  }

  return result;
}

unint64_t sub_26D20F064()
{
  result = qword_2804E1658;
  if (!qword_2804E1658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1658);
  }

  return result;
}

unint64_t sub_26D20F0BC()
{
  result = qword_2804E1660;
  if (!qword_2804E1660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1660);
  }

  return result;
}

unint64_t sub_26D20F114()
{
  result = qword_2804E1668;
  if (!qword_2804E1668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1668);
  }

  return result;
}

unint64_t sub_26D20F168()
{
  result = qword_2804E1670;
  if (!qword_2804E1670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1670);
  }

  return result;
}

unint64_t sub_26D20F1C0()
{
  result = qword_2804E1678;
  if (!qword_2804E1678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1678);
  }

  return result;
}

unint64_t sub_26D20F21C()
{
  result = qword_2804E1680;
  if (!qword_2804E1680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1680);
  }

  return result;
}

unint64_t sub_26D20F274()
{
  result = qword_2804E1688;
  if (!qword_2804E1688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1688);
  }

  return result;
}

unint64_t sub_26D20F2CC()
{
  result = qword_2804E1690;
  if (!qword_2804E1690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1690);
  }

  return result;
}

unint64_t sub_26D20F328()
{
  result = qword_2804E1698;
  if (!qword_2804E1698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1698);
  }

  return result;
}

unint64_t sub_26D20F37C(uint64_t a1, uint64_t a2)
{
  v2 = sub_26D22E854();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_26D20F3C8(uint64_t a1, uint64_t a2)
{
  v2 = sub_26D22E854();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_26D20F414(uint64_t a1, uint64_t a2)
{
  v2 = sub_26D22E854();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_26D20F460(uint64_t a1, uint64_t a2)
{
  v2 = sub_26D22E854();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26D20F4AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_26D20F4F4(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1DB0, &qword_26D238510);
  if (swift_dynamicCast())
  {
    sub_26D220F70(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_26D22CC34();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_26D1B950C(__src, &qword_2804E1DB8, &unk_26D238518);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_26D22E7A4();
  }

  sub_26D21D5E4(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_26D220E68(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v34[2] = v39;
  v10 = sub_26D21D6AC(sub_26D220F08, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_26D22CD34();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_26D21D568(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_26D22E4B4();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_26D22E4E4();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_26D22E7A4();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_26D21D568(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_26D22E4C4();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_26D22CD44();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_26D22CD44();
    sub_26D1BE640(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_26D1BE640(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_26D1BCB48(*&__src[0], *(&__src[0] + 1));

  sub_26D1BCB9C(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_26D20FA14(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E16E0, &qword_26D235488);
  result = sub_26D22E8A4();
  if (!v1)
  {
    if (!v4)
    {
LABEL_7:
      v6 = sub_26D22E794();
      swift_allocError();
      v8 = v7;
      sub_26D22E894();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1358, &qword_26D233C08);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26D22F360;
      *(inited + 56) = &_s21DecodingConfigurationV10CodingKeysON_42;
      *(inited + 64) = sub_26D2124CC();
      *(inited + 32) = a1;
      sub_26D223EA4(inited);
      sub_26D22E784();
      (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D84168], v6);
      return swift_willThrow();
    }

    v5 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v5 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v5)
    {

      goto LABEL_7;
    }
  }

  return result;
}

uint64_t sub_26D20FB98(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  MEMORY[0x28223BE20](v4 - 8);
  v33 = v27 - v5;
  v6 = sub_26D22CCE4();
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26D22CAD4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26D20FA14(a1);
  if (!v2)
  {
    v27[0] = v8;
    v27[1] = v1;
    v28 = a1;
    v29 = 0;
    v31 = v13;
    v32 = v14;
    sub_26D22CAB4();
    sub_26D1B1F48();
    a1 = sub_26D22E6B4();
    v16 = v15;
    (*(v10 + 8))(v12, v9);

    v17 = v33;
    sub_26D22CCD4();
    v18 = v30;
    if ((*(v30 + 48))(v17, 1, v6) == 1)
    {

      sub_26D1B950C(v17, &qword_2804E0890, &qword_26D230770);
      v19 = sub_26D22E794();
      swift_allocError();
      v21 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E16E0, &qword_26D235488);
      v22 = sub_26D22E894();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1358, &qword_26D233C08);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26D22F360;
      *(inited + 56) = &_s21DecodingConfigurationV10CodingKeysON_42;
      *(inited + 64) = sub_26D2124CC();
      *(inited + 32) = v28;
      v31 = v22;
      sub_26D223EA4(inited);
      sub_26D22E784();
      (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84168], v19);
      swift_willThrow();
    }

    else
    {
      v25 = v27[0];
      (*(v18 + 32))(v27[0], v17, v6);
      sub_26D22CCC4();
      if (v26)
      {
      }

      else
      {
        v31 = 0x2F2F3A7370747468;
        v32 = 0xE800000000000000;
        MEMORY[0x26D6B6C70](a1, v16);

        a1 = v31;
      }

      (*(v18 + 8))(v25, v6);
    }
  }

  return a1;
}

uint64_t sub_26D20FF9C@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, char *a6@<X8>)
{
  v61 = a5;
  v60 = a4;
  v66 = a2;
  v8 = v6;
  v64 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v59 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v63 = &v54 - v13;
  v14 = sub_26D22CCE4();
  v65 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v54 - v18;
  v20 = sub_26D22CAD4();
  v62 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v67) = a1 & 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(v66, a3);
  v24 = v69;
  result = sub_26D22E8A4();
  if (!v24)
  {
    v58 = v20;
    v66 = v23;
    v55 = v17;
    v56 = a1 & 1;
    v57 = v19;
    v27 = v14;
    v69 = 0;
    if (v26)
    {
      v28 = HIBYTE(v26) & 0xF;
      if ((v26 & 0x2000000000000000) == 0)
      {
        v28 = result & 0xFFFFFFFFFFFFLL;
      }

      if (v28)
      {
        v54 = v8;
        v67 = result;
        v68 = v26;
        sub_26D22CAB4();
        sub_26D1B1F48();
        v29 = sub_26D22E6B4();
        v31 = v30;
        (*(v62 + 8))(v22, v58);

        v32 = v63;
        sub_26D22CCD4();
        v33 = v65;
        v34 = *(v65 + 48);
        if (v34(v32, 1, v27) == 1)
        {

          sub_26D1B950C(v32, &qword_2804E0890, &qword_26D230770);
          v35 = sub_26D22E794();
          swift_allocError();
          v37 = v36;
          v38 = sub_26D22E894();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1358, &qword_26D233C08);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_26D22F360;
          *(inited + 56) = v60;
          *(inited + 64) = v61();
          *(inited + 32) = v56;
          v67 = v38;
          sub_26D223EA4(inited);
          sub_26D22E784();
          (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84168], v35);
          return swift_willThrow();
        }

        v62 = v29;
        v43 = *(v33 + 32);
        v44 = v57;
        v43(v57, v32, v27);
        sub_26D22CCC4();
        v41 = v27;
        if (v45)
        {

          v46 = v64;
          v43(v64, v44, v27);
        }

        else
        {
          v63 = (v33 + 32);
          v67 = 0x2F2F3A7370747468;
          v68 = 0xE800000000000000;
          MEMORY[0x26D6B6C70](v62, v31);

          v47 = v59;
          sub_26D22CCD4();

          if (v34(v47, 1, v27) == 1)
          {
            sub_26D1B950C(v47, &qword_2804E0890, &qword_26D230770);
            v48 = sub_26D22E794();
            swift_allocError();
            v50 = v49;
            v51 = sub_26D22E894();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1358, &qword_26D233C08);
            v52 = swift_initStackObject();
            *(v52 + 16) = xmmword_26D22F360;
            *(v52 + 56) = v60;
            *(v52 + 64) = v61();
            *(v52 + 32) = v56;
            v67 = v51;
            sub_26D223EA4(v52);
            sub_26D22E784();
            (*(*(v48 - 8) + 104))(v50, *MEMORY[0x277D84168], v48);
            swift_willThrow();
            return (*(v65 + 8))(v57, v27);
          }

          (*(v65 + 8))(v57, v27);
          v53 = v55;
          v43(v55, v47, v41);
          v46 = v64;
          v43(v64, v53, v41);
        }

        v42 = v46;
        v40 = 0;
        return (*(v65 + 56))(v42, v40, 1, v41);
      }
    }

    v40 = 1;
    v41 = v14;
    v42 = v64;
    return (*(v65 + 56))(v42, v40, 1, v41);
  }

  return result;
}

uint64_t sub_26D210708@<X0>(int a1@<W0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, char *a6@<X8>)
{
  v62 = a5;
  v61 = a4;
  v67 = a3;
  v65 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v60 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v64 = &v55 - v12;
  v13 = sub_26D22CCE4();
  v66 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v55 - v17;
  v19 = sub_26D22CAD4();
  v63 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  LOBYTE(v68) = a1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, v67);
  v24 = v70;
  result = sub_26D22E8A4();
  if (!v24)
  {
    v59 = v19;
    v67 = v23;
    v56 = v16;
    v58 = v18;
    v57 = v22;
    v27 = v13;
    v70 = 0;
    if (v26)
    {
      v28 = HIBYTE(v26) & 0xF;
      if ((v26 & 0x2000000000000000) == 0)
      {
        v28 = result & 0xFFFFFFFFFFFFLL;
      }

      if (v28)
      {
        v55 = v6;
        v68 = result;
        v69 = v26;
        sub_26D22CAB4();
        sub_26D1B1F48();
        v29 = sub_26D22E6B4();
        v31 = v30;
        (*(v63 + 8))(v21, v59);

        v32 = v64;
        sub_26D22CCD4();
        v33 = v66;
        v34 = *(v66 + 48);
        if (v34(v32, 1, v27) == 1)
        {

          sub_26D1B950C(v32, &qword_2804E0890, &qword_26D230770);
          v35 = sub_26D22E794();
          swift_allocError();
          v37 = v36;
          v38 = sub_26D22E894();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1358, &qword_26D233C08);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_26D22F360;
          *(inited + 56) = v61;
          *(inited + 64) = v62();
          *(inited + 32) = v57;
          v68 = v38;
          sub_26D223EA4(inited);
          sub_26D22E784();
          (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84168], v35);
          return swift_willThrow();
        }

        v63 = v29;
        v42 = *(v33 + 32);
        v43 = v58;
        v42(v58, v32, v27);
        sub_26D22CCC4();
        if (v44)
        {

          v45 = v65;
          v46 = v65;
          v47 = v43;
        }

        else
        {
          v68 = 0x2F2F3A7370747468;
          v69 = 0xE800000000000000;
          MEMORY[0x26D6B6C70](v63, v31);

          v48 = v60;
          sub_26D22CCD4();

          if (v34(v48, 1, v27) == 1)
          {
            sub_26D1B950C(v48, &qword_2804E0890, &qword_26D230770);
            v49 = sub_26D22E794();
            swift_allocError();
            v51 = v50;
            v52 = sub_26D22E894();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1358, &qword_26D233C08);
            v53 = swift_initStackObject();
            *(v53 + 16) = xmmword_26D22F360;
            *(v53 + 56) = v61;
            *(v53 + 64) = v62();
            *(v53 + 32) = v57;
            v68 = v52;
            sub_26D223EA4(v53);
            sub_26D22E784();
            (*(*(v49 - 8) + 104))(v51, *MEMORY[0x277D84168], v49);
            swift_willThrow();
            return (*(v66 + 8))(v58, v27);
          }

          (*(v66 + 8))(v58, v27);
          v54 = v56;
          v42(v56, v48, v27);
          v45 = v65;
          v46 = v65;
          v47 = v54;
        }

        v42(v46, v47, v27);
        v41 = v45;
        v40 = 0;
        return (*(v66 + 56))(v41, v40, 1, v27);
      }
    }

    v40 = 1;
    v41 = v65;
    return (*(v66 + 56))(v41, v40, 1, v27);
  }

  return result;
}

uint64_t sub_26D210E9C@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_26D22E854();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_26D210F04(uint64_t a1)
{
  v2 = sub_26D2111F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D210F40(uint64_t a1)
{
  v2 = sub_26D2111F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.Postback.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_26D22E044();
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E16A0, &qword_26D235460);
  v25 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D2111F4();
  sub_26D22EA24();
  if (!v2)
  {
    v22 = v6;
    v10 = sub_26D22E8D4();
    v20 = v4;
    v21 = v7;
    v11 = v10;
    v13 = v12;

    v14 = sub_26D20F4F4(v11, v13);
    v16 = v15;
    sub_26D22CD74();
    sub_26D1BCB9C(v14, v16);
    v17 = v22;
    sub_26D22E034();
    (*(v25 + 8))(v9, v21);
    (*(v23 + 32))(v24, v17, v20);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_26D2111F4()
{
  result = qword_2804E16A8;
  if (!qword_2804E16A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E16A8);
  }

  return result;
}

uint64_t sub_26D211260(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6B63616274736F70;
  }

  else
  {
    v3 = 0x5479616C70736964;
  }

  if (v2)
  {
    v4 = 0xEB00000000747865;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6B63616274736F70;
  }

  else
  {
    v5 = 0x5479616C70736964;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xEB00000000747865;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26D22E964();
  }

  return v8 & 1;
}

uint64_t sub_26D211310()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D21139C(uint64_t a1)
{
  sub_26D22E454();
}

uint64_t sub_26D211414(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

void sub_26D2114A8(uint64_t *a1@<X8>)
{
  v2 = 0x5479616C70736964;
  if (*v1)
  {
    v2 = 0x6B63616274736F70;
  }

  v3 = 0xEB00000000747865;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26D2114F0()
{
  if (*v0)
  {
    return 0x6B63616274736F70;
  }

  else
  {
    return 0x5479616C70736964;
  }
}

uint64_t sub_26D211550(uint64_t a1)
{
  v2 = sub_26D2118EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D21158C(uint64_t a1)
{
  v2 = sub_26D2118EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.SuggestionCommon.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E16B0, &qword_26D235468);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_26D22DD14();
  v17 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E16B8, &qword_26D235470);
  v7 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D2118EC();
  v10 = v20;
  sub_26D22EA24();
  if (!v10)
  {
    v11 = v7;
    v20 = v6;
    v16 = v4;
    v12 = v18;
    v13 = v19;
    v22 = 0;
    v15 = sub_26D22E8D4();
    sub_26D22E044();
    v21 = 1;
    sub_26D21E550(&qword_2804E16C8, MEMORY[0x277CF2EE8], &protocol conformance descriptor for Chatbot.Postback);
    sub_26D22E874();
    sub_26D22DD04();
    (*(v11 + 8))(v9, v13);
    (*(v17 + 32))(v12, v20, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_26D2118EC()
{
  result = qword_2804E16C0;
  if (!qword_2804E16C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E16C0);
  }

  return result;
}

uint64_t Chatbot.Reply.init(from:configuration:)(void *a1)
{
  v3 = sub_26D22DD14();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D1FB6E0(a1, v8);
  Chatbot.SuggestionCommon.init(from:configuration:)(v8, v5);
  if (!v1)
  {
    sub_26D22DF24();
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26D211A24(void *a1)
{
  v3 = sub_26D22DD14();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D1FB6E0(a1, v8);
  Chatbot.SuggestionCommon.init(from:configuration:)(v8, v5);
  if (!v1)
  {
    sub_26D22DF24();
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26D211AFC()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D211BC4(uint64_t a1)
{
  sub_26D22E454();
}

uint64_t sub_26D211C78(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

unint64_t sub_26D211D3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26D220CE4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26D211D6C(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7107189;
  v4 = 0xE800000000000000;
  v5 = 0x65646F4D77656976;
  if (*v1 != 2)
  {
    v5 = 0x6574656D61726170;
    v4 = 0xEA00000000007372;
  }

  if (*v1)
  {
    v3 = 0x746163696C707061;
    v2 = 0xEB000000006E6F69;
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

uint64_t sub_26D211DF0()
{
  v1 = 7107189;
  v2 = 0x65646F4D77656976;
  if (*v0 != 2)
  {
    v2 = 0x6574656D61726170;
  }

  if (*v0)
  {
    v1 = 0x746163696C707061;
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

unint64_t sub_26D211E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26D220CE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26D211EA8(uint64_t a1)
{
  v2 = sub_26D2124CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D211EE4(uint64_t a1)
{
  v2 = sub_26D2124CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.URLAction.OpenURL.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E16D0, &qword_26D235478);
  MEMORY[0x28223BE20](v3 - 8);
  v37 = &v30 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E16D8, &qword_26D235480);
  MEMORY[0x28223BE20](v5 - 8);
  v39 = &v30 - v6;
  v40 = sub_26D22E194();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26D22E1C4();
  v36 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E16E0, &qword_26D235488);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - v14;
  v16 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_26D2124CC();
  v17 = v42;
  sub_26D22EA24();
  if (!v17)
  {
    v35 = v11;
    v42 = v8;
    v18 = v13;
    v19 = v40;
    v20 = v41;
    v21 = v15;
    v33 = sub_26D20FB98(0);
    v34 = v22;
    v46 = 1;
    sub_26D21E550(&qword_2804E16F0, MEMORY[0x277CF2FF0], MEMORY[0x277CF2FF8]);
    v23 = v39;
    v24 = v19;
    sub_26D22E8C4();
    v32 = v21;
    v26 = v38;
    v31 = *(v38 + 48);
    if (v31(v23, 1, v19) == 1)
    {
      (*(v26 + 104))(v42, *MEMORY[0x277CF2FE0], v19);
      v27 = v20;
      if (v31(v23, 1, v24) != 1)
      {
        sub_26D1B950C(v23, &qword_2804E16D8, &qword_26D235480);
      }
    }

    else
    {
      (*(v26 + 32))(v42, v23, v19);
      v27 = v20;
    }

    sub_26D22E1B4();
    v45 = 2;
    sub_26D21E550(&qword_2804E16F8, MEMORY[0x277CF3018], MEMORY[0x277CF3020]);
    v28 = v32;
    sub_26D22E8C4();
    v44 = 3;
    sub_26D22E8A4();
    v29 = v35;
    sub_26D22E1A4();
    (*(v18 + 8))(v28, v12);
    (*(v36 + 32))(v27, v29, v9);
  }

  return __swift_destroy_boxed_opaque_existential_1(v43);
}

unint64_t sub_26D2124CC()
{
  result = qword_2804E16E8;
  if (!qword_2804E16E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E16E8);
  }

  return result;
}

uint64_t sub_26D2125C0@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_26D22E854();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_26D212628(uint64_t a1)
{
  v2 = sub_26D212A54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D212664(uint64_t a1)
{
  v2 = sub_26D212A54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.URLAction.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_26D22E1D4();
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1700, &qword_26D235490);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = a1[3];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_26D212A54();
  sub_26D22EA24();
  if (!v2)
  {
    v13 = v22;
    v12 = v23;
    v21 = v8;
    v14 = v7;
    if (sub_26D22E924())
    {
      sub_26D22E1C4();
      sub_26D21E550(&qword_2804E1710, MEMORY[0x277CF3028], &protocol conformance descriptor for Chatbot.URLAction.OpenURL);
      sub_26D22E884();
      (*(v21 + 8))(v10, v7);
      (*(v13 + 104))(v6, *MEMORY[0x277CF3030], v4);
      (*(v13 + 32))(v12, v6, v4);
    }

    else
    {
      v15 = sub_26D22E794();
      swift_allocError();
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1158, &qword_26D232138);
      *v17 = v4;
      sub_26D22E894();
      v24 = 0;
      v25 = 0xE000000000000000;
      sub_26D22E744();

      v24 = 0xD000000000000011;
      v25 = 0x800000026D23BFC0;
      v18 = MEMORY[0x26D6B6D70](&unk_287E99908, &_s21DecodingConfigurationV10CodingKeysON_41);
      MEMORY[0x26D6B6C70](v18);

      sub_26D22E784();
      (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D84170], v15);
      swift_willThrow();
      (*(v21 + 8))(v10, v14);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v26);
}

unint64_t sub_26D212A54()
{
  result = qword_2804E1708;
  if (!qword_2804E1708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1708);
  }

  return result;
}

uint64_t sub_26D212AE8(uint64_t a1)
{
  v2 = sub_26D212E58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D212B24(uint64_t a1)
{
  v2 = sub_26D212E58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.DialerAction.DialPhoneNumber.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_26D22DB84();
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1718, &qword_26D235498);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - v11;
  v13 = a1[3];
  v24 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_26D212E58();
  v14 = v23;
  sub_26D22EA24();
  if (!v14)
  {
    v23 = v8;
    v20 = v6;
    v15 = v22;
    v25 = 0;
    sub_26D22E8D4();
    v19 = v16;
    sub_26D20FF9C(1, &qword_2804E1718, &qword_26D235498, &_s21DecodingConfigurationV10CodingKeysON_40, sub_26D212E58, v5);
    v17 = v23;
    sub_26D22DB74();
    (*(v10 + 8))(v12, v9);
    (*(v21 + 32))(v15, v17, v20);
  }

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

unint64_t sub_26D212E58()
{
  result = qword_2804E1720;
  if (!qword_2804E1720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1720);
  }

  return result;
}

uint64_t sub_26D212EC4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x7463656A627573;
  if (v2 != 1)
  {
    v4 = 0x6B6361626C6C6166;
    v3 = 0xEB000000006C7255;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6D754E656E6F6870;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEB00000000726562;
  }

  v7 = 0xE700000000000000;
  v8 = 0x7463656A627573;
  if (*a2 != 1)
  {
    v8 = 0x6B6361626C6C6166;
    v7 = 0xEB000000006C7255;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6D754E656E6F6870;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEB00000000726562;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26D22E964();
  }

  return v11 & 1;
}

uint64_t sub_26D212FDC()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D213090(uint64_t a1)
{
  sub_26D22E454();
}

uint64_t sub_26D213130(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

unint64_t sub_26D2131E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26D220B68(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26D213210(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000726562;
  v4 = 0xE700000000000000;
  v5 = 0x7463656A627573;
  if (v2 != 1)
  {
    v5 = 0x6B6361626C6C6166;
    v4 = 0xEB000000006C7255;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6D754E656E6F6870;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_26D213280()
{
  v1 = 0x7463656A627573;
  if (*v0 != 1)
  {
    v1 = 0x6B6361626C6C6166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D754E656E6F6870;
  }
}

unint64_t sub_26D2132EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26D220B68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26D213324(uint64_t a1)
{
  v2 = sub_26D2136E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D213360(uint64_t a1)
{
  v2 = sub_26D2136E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.DialerAction.DialEnrichedCall.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v18 - v4;
  v6 = sub_26D22DBA4();
  v19 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1728, &qword_26D2354A0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v18 - v11;
  v13 = a1[3];
  v22 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_26D2136E8();
  v14 = v21;
  sub_26D22EA24();
  if (!v14)
  {
    v21 = v6;
    v15 = v20;
    v24 = 0;
    sub_26D22E8D4();
    v18[1] = v16;
    v23 = 1;
    v18[0] = sub_26D22E8A4();
    sub_26D210708(2, &qword_2804E1728, &qword_26D2354A0, &_s21DecodingConfigurationV10CodingKeysON_39, sub_26D2136E8, v5);
    sub_26D22DB94();
    (*(v10 + 8))(v12, v9);
    (*(v19 + 32))(v15, v8, v21);
  }

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

unint64_t sub_26D2136E8()
{
  result = qword_2804E1730;
  if (!qword_2804E1730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1730);
  }

  return result;
}

uint64_t sub_26D213758(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6B6361626C6C6166;
  }

  else
  {
    v3 = 0x6D754E656E6F6870;
  }

  if (v2)
  {
    v4 = 0xEB00000000726562;
  }

  else
  {
    v4 = 0xEB000000006C7255;
  }

  if (*a2)
  {
    v5 = 0x6B6361626C6C6166;
  }

  else
  {
    v5 = 0x6D754E656E6F6870;
  }

  if (*a2)
  {
    v6 = 0xEB000000006C7255;
  }

  else
  {
    v6 = 0xEB00000000726562;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26D22E964();
  }

  return v8 & 1;
}

uint64_t sub_26D213814()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D2138A8(uint64_t a1)
{
  sub_26D22E454();
}

uint64_t sub_26D21392C(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

void sub_26D2139C8(uint64_t *a1@<X8>)
{
  v2 = 0x6D754E656E6F6870;
  if (*v1)
  {
    v2 = 0x6B6361626C6C6166;
  }

  v3 = 0xEB00000000726562;
  if (*v1)
  {
    v3 = 0xEB000000006C7255;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26D213A18()
{
  if (*v0)
  {
    return 0x6B6361626C6C6166;
  }

  else
  {
    return 0x6D754E656E6F6870;
  }
}

uint64_t sub_26D213A80(uint64_t a1)
{
  v2 = sub_26D213DF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D213ABC(uint64_t a1)
{
  v2 = sub_26D213DF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.DialerAction.DialVideoCall.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_26D22DB64();
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1738, &qword_26D2354A8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - v11;
  v13 = a1[3];
  v24 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_26D213DF0();
  v14 = v23;
  sub_26D22EA24();
  if (!v14)
  {
    v23 = v8;
    v20 = v6;
    v15 = v22;
    v25 = 0;
    sub_26D22E8D4();
    v19 = v16;
    sub_26D20FF9C(1, &qword_2804E1738, &qword_26D2354A8, &_s21DecodingConfigurationV10CodingKeysON_38, sub_26D213DF0, v5);
    v17 = v23;
    sub_26D22DB54();
    (*(v10 + 8))(v12, v9);
    (*(v21 + 32))(v15, v17, v20);
  }

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

unint64_t sub_26D213DF0()
{
  result = qword_2804E1740;
  if (!qword_2804E1740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1740);
  }

  return result;
}

uint64_t sub_26D213E5C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000010;
  v4 = 0x800000026D23A6B0;
  if (v2 == 1)
  {
    v5 = 0x800000026D23A6B0;
  }

  else
  {
    v3 = 0x656469566C616964;
    v5 = 0xED00006C6C61436FLL;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6E6F68506C616964;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEF7265626D754E65;
  }

  v8 = 0xD000000000000010;
  if (*a2 != 1)
  {
    v8 = 0x656469566C616964;
    v4 = 0xED00006C6C61436FLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E6F68506C616964;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEF7265626D754E65;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26D22E964();
  }

  return v11 & 1;
}

uint64_t sub_26D213F78()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D214038(uint64_t a1)
{
  sub_26D22E454();
}

uint64_t sub_26D2140E4(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

unint64_t sub_26D2141A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26D220B1C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26D2141D0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF7265626D754E65;
  v4 = 0x800000026D23A6B0;
  v5 = 0xD000000000000010;
  if (v2 != 1)
  {
    v5 = 0x656469566C616964;
    v4 = 0xED00006C6C61436FLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E6F68506C616964;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_26D21424C()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x656469566C616964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F68506C616964;
  }
}

unint64_t sub_26D2142C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26D220B1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26D2142FC(uint64_t a1)
{
  v2 = sub_26D214944();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D214338(uint64_t a1)
{
  v2 = sub_26D214944();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.DialerAction.init(from:configuration:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1748, &qword_26D2354B0);
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v42 - v4;
  v6 = sub_26D22DBB4();
  v45 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v42 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v42 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v42 - v16;
  v18 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_26D214944();
  v52 = v5;
  v19 = v48;
  sub_26D22EA24();
  if (!v19)
  {
    v42 = v9;
    v43 = v12;
    v21 = v15;
    v48 = v17;
    v22 = v45;
    v23 = v46;
    LOBYTE(v50) = 0;
    v24 = v47;
    if (sub_26D22E924())
    {
      sub_26D22DB84();
      LOBYTE(v50) = 0;
      sub_26D21E550(&qword_2804E1768, MEMORY[0x277CF2B68], &protocol conformance descriptor for Chatbot.DialerAction.DialPhoneNumber);
      v25 = v21;
      v26 = v52;
      sub_26D22E884();
      (*(v23 + 8))(v26, v24);
      v27 = MEMORY[0x277CF2B40];
    }

    else
    {
      LOBYTE(v50) = 1;
      v28 = v23;
      if ((sub_26D22E924() & 1) == 0)
      {
        LOBYTE(v50) = 2;
        v34 = sub_26D22E924();
        v31 = v44;
        if ((v34 & 1) == 0)
        {
          v37 = sub_26D22E794();
          swift_allocError();
          v39 = v38;
          v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1158, &qword_26D232138) + 48);
          *v39 = v6;
          v40 = v52;
          sub_26D22E894();
          v50 = 0;
          v51 = 0xE000000000000000;
          sub_26D22E744();

          v50 = 0xD000000000000011;
          v51 = 0x800000026D23BFC0;
          v41 = MEMORY[0x26D6B6D70](&unk_287E99930, &_s21DecodingConfigurationV10CodingKeysON_37);
          MEMORY[0x26D6B6C70](v41);

          sub_26D22E784();
          (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84170], v37);
          swift_willThrow();
          (*(v28 + 8))(v40, v24);
          return __swift_destroy_boxed_opaque_existential_1(v49);
        }

        sub_26D22DB64();
        LOBYTE(v50) = 2;
        sub_26D21E550(&qword_2804E1758, MEMORY[0x277CF2B60], &protocol conformance descriptor for Chatbot.DialerAction.DialVideoCall);
        v35 = v42;
        v36 = v52;
        sub_26D22E884();
        (*(v28 + 8))(v36, v24);
        v27 = MEMORY[0x277CF2B80];
        v25 = v35;
        goto LABEL_10;
      }

      sub_26D22DBA4();
      LOBYTE(v50) = 1;
      sub_26D21E550(&qword_2804E1760, MEMORY[0x277CF2B70], &protocol conformance descriptor for Chatbot.DialerAction.DialEnrichedCall);
      v29 = v43;
      v30 = v52;
      sub_26D22E884();
      (*(v23 + 8))(v30, v24);
      v27 = MEMORY[0x277CF2B50];
      v25 = v29;
    }

    v31 = v44;
LABEL_10:
    (*(v22 + 104))(v25, *v27, v6);
    v32 = *(v22 + 32);
    v33 = v48;
    v32(v48, v25, v6);
    v32(v31, v33, v6);
  }

  return __swift_destroy_boxed_opaque_existential_1(v49);
}

unint64_t sub_26D214944()
{
  result = qword_2804E1750;
  if (!qword_2804E1750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1750);
  }

  return result;
}

uint64_t sub_26D214A24@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_26D22E854();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_26D214A8C(uint64_t a1)
{
  v2 = sub_26D214D20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D214AC8(uint64_t a1)
{
  v2 = sub_26D214D20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.MapAction.Location.Query.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v3 = sub_26D22E134();
  v14 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1770, &qword_26D2354B8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D214D20();
  v10 = v15;
  sub_26D22EA24();
  if (!v10)
  {
    v11 = v14;
    v15 = v3;
    sub_26D22E8D4();
    sub_26D22E124();
    (*(v7 + 8))(v9, v6);
    (*(v11 + 32))(v13, v5, v15);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_26D214D20()
{
  result = qword_2804E1778;
  if (!qword_2804E1778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1778);
  }

  return result;
}

uint64_t sub_26D214D8C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x64757469676E6F6CLL;
  }

  else
  {
    v3 = 0x656475746974616CLL;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  if (*a2)
  {
    v5 = 0x64757469676E6F6CLL;
  }

  else
  {
    v5 = 0x656475746974616CLL;
  }

  if (*a2)
  {
    v6 = 0xE900000000000065;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26D22E964();
  }

  return v8 & 1;
}

uint64_t sub_26D214E38()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D214EC0(uint64_t a1)
{
  sub_26D22E454();
}

uint64_t sub_26D214F34(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

void sub_26D214FC4(uint64_t *a1@<X8>)
{
  v2 = 0x656475746974616CLL;
  if (*v1)
  {
    v2 = 0x64757469676E6F6CLL;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26D215008()
{
  if (*v0)
  {
    return 0x64757469676E6F6CLL;
  }

  else
  {
    return 0x656475746974616CLL;
  }
}

uint64_t sub_26D215064(uint64_t a1)
{
  v2 = sub_26D21544C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D2150A0(uint64_t a1)
{
  v2 = sub_26D21544C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.MapAction.Location.Coordinates.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = sub_26D22E104();
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1780, &qword_26D2354C0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = a1[3];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_26D21544C();
  sub_26D22EA24();
  if (!v2)
  {
    v26 = v6;
    v27 = v8;
    v12 = v29;
    LOBYTE(v31) = 0;
    v13 = sub_26D22E8D4();
    v15 = v14;
    LOBYTE(v31) = 0;
    v16 = sub_26D22E8D4();
    if (v15 && v17 && (v25 = v16, v18 = v17, v31 = 0, v19 = sub_26D21DC54(v13, v15, &v31), , v19))
    {
      v31 = 0;
      v20 = sub_26D21DC54(v25, v18, &v31);

      if (v20)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    LOBYTE(v31) = 0;
    sub_26D22E8F4();
    LOBYTE(v31) = 1;
    sub_26D22E8F4();
LABEL_10:
    v23 = v26;
    v22 = v27;
    sub_26D22E0F4();
    (*(v22 + 8))(v10, v7);
    (*(v28 + 32))(v12, v23, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(v30);
}

unint64_t sub_26D21544C()
{
  result = qword_2804E1788;
  if (!qword_2804E1788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1788);
  }

  return result;
}

uint64_t sub_26D2154C4@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_26D22E854();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_26D21552C(uint64_t a1)
{
  v2 = sub_26D21DD4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D215568(uint64_t a1)
{
  v2 = sub_26D21DD4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.MapAction.Location.Method.init(from:configuration:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v27 = a2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1790, &qword_26D2354C8);
  v26 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v4 = &v25 - v3;
  v5 = sub_26D22E144();
  v25 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v25 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D21DD4C();
  v28 = v4;
  v15 = v31;
  sub_26D22EA24();
  if (v15)
  {
    v16 = a1;
  }

  else
  {
    v31 = v13;
    v18 = v25;
    v19 = v27;
    v20 = sub_26D22E924();
    v21 = (v26 + 8);
    v16 = v14;
    if (v20)
    {
      sub_26D1FB6E0(v14, v30);
      Chatbot.MapAction.Location.Query.init(from:configuration:)(v30, v11);
      (*v21)(v28, v29);
      v22 = MEMORY[0x277CF2FB0];
    }

    else
    {
      sub_26D1FB6E0(v14, v30);
      Chatbot.MapAction.Location.Coordinates.init(from:configuration:)(v30, v8);
      (*v21)(v28, v29);
      v22 = MEMORY[0x277CF2FA8];
      v11 = v8;
    }

    (*(v18 + 104))(v11, *v22, v5);
    v23 = *(v18 + 32);
    v24 = v31;
    v23(v31, v11, v5);
    v23(v19, v24, v5);
  }

  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t sub_26D215918@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_26D22E854();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_26D215980(uint64_t a1)
{
  v2 = sub_26D21DDA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D2159BC(uint64_t a1)
{
  v2 = sub_26D21DDA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.MapAction.Location.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_26D22E144();
  v20 = *(v4 - 8);
  v21 = v4;
  MEMORY[0x28223BE20](v4);
  v23 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26D22E154();
  v17 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E17A0, &qword_26D2354D0);
  v19 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D21DDA0();
  sub_26D22EA24();
  if (!v2)
  {
    v12 = v19;
    v15 = v6;
    v16 = v8;
    sub_26D1FB6E0(a1, v22);
    Chatbot.MapAction.Location.Method.init(from:configuration:)(v22, v23);
    sub_26D22E8A4();
    v14 = v16;
    sub_26D22E114();
    (*(v12 + 8))(v11, v9);
    (*(v17 + 32))(v18, v14, v15);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26D215D18(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6B6361626C6C6166;
  }

  else
  {
    v3 = 0x6E6F697461636F6CLL;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEB000000006C7255;
  }

  if (*a2)
  {
    v5 = 0x6B6361626C6C6166;
  }

  else
  {
    v5 = 0x6E6F697461636F6CLL;
  }

  if (*a2)
  {
    v6 = 0xEB000000006C7255;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26D22E964();
  }

  return v8 & 1;
}

uint64_t sub_26D215DC8()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D215E54(uint64_t a1)
{
  sub_26D22E454();
}

uint64_t sub_26D215ECC(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

void sub_26D215F60(uint64_t *a1@<X8>)
{
  v2 = 0x6E6F697461636F6CLL;
  if (*v1)
  {
    v2 = 0x6B6361626C6C6166;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEB000000006C7255;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26D215FA8()
{
  if (*v0)
  {
    return 0x6B6361626C6C6166;
  }

  else
  {
    return 0x6E6F697461636F6CLL;
  }
}

uint64_t sub_26D216008(uint64_t a1)
{
  v2 = sub_26D21DDF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D216044(uint64_t a1)
{
  v2 = sub_26D21DDF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.MapAction.ShowLocation.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  MEMORY[0x28223BE20](v4 - 8);
  v24 = &v19 - v5;
  v27 = sub_26D22E154();
  v23 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v25 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26D22E0E4();
  v22 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E17B0, &qword_26D2354D8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - v12;
  v14 = a1[3];
  v28 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_26D21DDF4();
  sub_26D22EA24();
  if (!v2)
  {
    v20 = v9;
    v21 = v11;
    v15 = v24;
    v19 = v7;
    v16 = v26;
    v29 = 0;
    sub_26D21E550(&qword_2804E17C0, MEMORY[0x277CF2FC0], &protocol conformance descriptor for Chatbot.MapAction.Location);
    sub_26D22E884();
    sub_26D20FF9C(1, &qword_2804E17B0, &qword_26D2354D8, &_s21DecodingConfigurationV10CodingKeysON_32, sub_26D21DDF4, v15);
    v18 = v20;
    sub_26D22E0D4();
    (*(v21 + 8))(v13, v10);
    (*(v22 + 32))(v16, v18, v19);
  }

  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t sub_26D216458(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v3 = 0x61636F4C776F6873;
  }

  if (v2)
  {
    v4 = 0xEC0000006E6F6974;
  }

  else
  {
    v4 = 0x800000026D23AB30;
  }

  if (*a2)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0x61636F4C776F6873;
  }

  if (*a2)
  {
    v6 = 0x800000026D23AB30;
  }

  else
  {
    v6 = 0xEC0000006E6F6974;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26D22E964();
  }

  return v8 & 1;
}

uint64_t sub_26D21650C()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D21659C(uint64_t a1)
{
  sub_26D22E454();
}

uint64_t sub_26D216618(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

void sub_26D2166B0(unint64_t *a1@<X8>)
{
  v2 = 0x800000026D23AB30;
  v3 = 0x61636F4C776F6873;
  if (*v1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v2 = 0xEC0000006E6F6974;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_26D2166FC()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x61636F4C776F6873;
  }
}

uint64_t sub_26D216760(uint64_t a1)
{
  v2 = sub_26D21DE48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D21679C(uint64_t a1)
{
  v2 = sub_26D21DE48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.MapAction.init(from:configuration:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v30 = a2;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E17C8, &qword_26D2354E0);
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v5 = &v26 - v4;
  v6 = sub_26D22E164();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  v13 = a1[3];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_26D21DE48();
  sub_26D22EA24();
  if (!v2)
  {
    v27 = v12;
    v28 = v7;
    v15 = v29;
    v14 = v30;
    LOBYTE(v32) = 0;
    v16 = v31;
    if (sub_26D22E924())
    {
      sub_26D22E0E4();
      LOBYTE(v32) = 0;
      sub_26D21E550(&qword_2804E17D8, MEMORY[0x277CF2F78], &protocol conformance descriptor for Chatbot.MapAction.ShowLocation);
      sub_26D22E884();
      (*(v15 + 8))(v5, v16);
      v17 = v28;
      (*(v28 + 104))(v10, *MEMORY[0x277CF2F88], v6);
      v18 = *(v17 + 32);
      v19 = v27;
      v18(v27, v10, v6);
    }

    else
    {
      LOBYTE(v32) = 1;
      if ((sub_26D22E924() & 1) == 0)
      {
        v21 = sub_26D22E794();
        swift_allocError();
        v23 = v22;
        v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1158, &qword_26D232138) + 48);
        *v23 = v6;
        sub_26D22E894();
        v32 = 0;
        v33 = 0xE000000000000000;
        sub_26D22E744();

        v32 = 0xD000000000000011;
        v33 = 0x800000026D23BFC0;
        v24 = MEMORY[0x26D6B6D70](&unk_287E99A00, &_s21DecodingConfigurationV10CodingKeysON_31);
        MEMORY[0x26D6B6C70](v24);

        sub_26D22E784();
        (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D84170], v21);
        swift_willThrow();
        (*(v15 + 8))(v5, v16);
        return __swift_destroy_boxed_opaque_existential_1(v34);
      }

      (*(v15 + 8))(v5, v16);
      v19 = v27;
      v20 = v28;
      (*(v28 + 104))(v27, *MEMORY[0x277CF2F98], v6);
      v18 = *(v20 + 32);
    }

    v18(v14, v19, v6);
  }

  return __swift_destroy_boxed_opaque_existential_1(v34);
}

uint64_t sub_26D216C60()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D216D54(uint64_t a1)
{
  sub_26D22E454();
}

uint64_t sub_26D216E34(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

unint64_t sub_26D216F24@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26D220BB4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26D216F54(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0x6D69547472617473;
  v5 = 0xE500000000000000;
  v6 = 0x656C746974;
  v7 = 0xEB000000006E6F69;
  v8 = 0x7470697263736564;
  if (v2 != 3)
  {
    v8 = 0x6B6361626C6C6166;
    v7 = 0xEB000000006C7255;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656D6954646E65;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_26D217004()
{
  v1 = *v0;
  v2 = 0x6D69547472617473;
  v3 = 0x656C746974;
  v4 = 0x7470697263736564;
  if (v1 != 3)
  {
    v4 = 0x6B6361626C6C6166;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656D6954646E65;
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

unint64_t sub_26D2170B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26D220BB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26D2170E8(uint64_t a1)
{
  v2 = sub_26D21DE9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D217124(uint64_t a1)
{
  v2 = sub_26D21DE9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.CalendarAction.CreateEvent.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  MEMORY[0x28223BE20](v3 - 8);
  v27 = v22 - v4;
  v32 = sub_26D22CE34();
  v28 = *(v32 - 8);
  v5 = MEMORY[0x28223BE20](v32);
  MEMORY[0x28223BE20](v5);
  v29 = v22 - v6;
  v7 = sub_26D22DC54();
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E17E0, &qword_26D2354E8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v22 - v12;
  v14 = a1[3];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_26D21DE9C();
  v31 = v13;
  v15 = v33;
  sub_26D22EA24();
  if (!v15)
  {
    v33 = v9;
    v25 = v7;
    v16 = v11;
    v17 = v30;
    v38 = 0;
    sub_26D21E550(&qword_2804E1140, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v18 = v31;
    sub_26D22E914();
    v37 = 1;
    sub_26D22E914();
    v36 = 2;
    v24 = sub_26D22E8D4();
    v35 = 3;
    v22[0] = sub_26D22E8A4();
    v22[1] = v20;
    v23 = v10;
    sub_26D210708(4, &qword_2804E17E0, &qword_26D2354E8, &_s21DecodingConfigurationV10CodingKeysON_30, sub_26D21DE9C, v27);
    v21 = v33;
    sub_26D22DC44();
    (*(v16 + 8))(v18, v23);
    (*(v26 + 32))(v17, v21, v25);
  }

  return __swift_destroy_boxed_opaque_existential_1(v34);
}

uint64_t sub_26D217698()
{
  sub_26D22E9E4();
  sub_26D22E454();
  return sub_26D22EA04();
}

uint64_t sub_26D21770C(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();
  return sub_26D22EA04();
}

uint64_t sub_26D2177A8@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_26D22E854();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_26D217810(uint64_t a1)
{
  v2 = sub_26D21DEF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D21784C(uint64_t a1)
{
  v2 = sub_26D21DEF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.CalendarAction.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_26D22DC64();
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E17F0, &qword_26D2354F0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = a1[3];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_26D21DEF0();
  sub_26D22EA24();
  if (!v2)
  {
    v13 = v22;
    v12 = v23;
    v21 = v8;
    v14 = v7;
    if (sub_26D22E924())
    {
      sub_26D22DC54();
      sub_26D21E550(&qword_2804E1800, MEMORY[0x277CF2C18], &protocol conformance descriptor for Chatbot.CalendarAction.CreateEvent);
      sub_26D22E884();
      (*(v21 + 8))(v10, v7);
      (*(v13 + 104))(v6, *MEMORY[0x277CF2C20], v4);
      (*(v13 + 32))(v12, v6, v4);
    }

    else
    {
      v15 = sub_26D22E794();
      swift_allocError();
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1158, &qword_26D232138);
      *v17 = v4;
      sub_26D22E894();
      v24 = 0;
      v25 = 0xE000000000000000;
      sub_26D22E744();

      v24 = 0xD000000000000011;
      v25 = 0x800000026D23BFC0;
      v18 = MEMORY[0x26D6B6D70](&unk_287E99A60, &_s21DecodingConfigurationV10CodingKeysON_29);
      MEMORY[0x26D6B6C70](v18);

      sub_26D22E784();
      (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D84170], v15);
      swift_willThrow();
      (*(v21 + 8))(v10, v14);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v26);
}

uint64_t sub_26D217C54(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1954047348;
  }

  else
  {
    v3 = 0x6D754E656E6F6870;
  }

  if (v2)
  {
    v4 = 0xEB00000000726562;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1954047348;
  }

  else
  {
    v5 = 0x6D754E656E6F6870;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xEB00000000726562;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26D22E964();
  }

  return v8 & 1;
}

uint64_t sub_26D217CFC()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D217D80(uint64_t a1)
{
  sub_26D22E454();
}

uint64_t sub_26D217DF0(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

void sub_26D217E7C(uint64_t *a1@<X8>)
{
  v2 = 1954047348;
  if (!*v1)
  {
    v2 = 0x6D754E656E6F6870;
  }

  v3 = 0xEB00000000726562;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26D217EBC()
{
  if (*v0)
  {
    return 1954047348;
  }

  else
  {
    return 0x6D754E656E6F6870;
  }
}

uint64_t sub_26D217F14(uint64_t a1)
{
  v2 = sub_26D21DF44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D217F50(uint64_t a1)
{
  v2 = sub_26D21DF44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.ComposeAction.ComposeTextMessage.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = sub_26D22DBD4();
  v15 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1808, &qword_26D2354F8);
  v7 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D21DF44();
  sub_26D22EA24();
  if (!v2)
  {
    v10 = v7;
    v14 = v4;
    v11 = v16;
    v12 = v17;
    v19 = 0;
    sub_26D22E8D4();
    v18 = 1;
    sub_26D22E8D4();
    sub_26D22DBC4();
    (*(v10 + 8))(v9, v12);
    (*(v15 + 32))(v11, v6, v14);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26D218228(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1701869940;
  }

  else
  {
    v3 = 0x6D754E656E6F6870;
  }

  if (v2)
  {
    v4 = 0xEB00000000726562;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1701869940;
  }

  else
  {
    v5 = 0x6D754E656E6F6870;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xEB00000000726562;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26D22E964();
  }

  return v8 & 1;
}

uint64_t sub_26D2182D0()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D218354(uint64_t a1)
{
  sub_26D22E454();
}

uint64_t sub_26D2183C4(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

void sub_26D218450(uint64_t *a1@<X8>)
{
  v2 = 1701869940;
  if (!*v1)
  {
    v2 = 0x6D754E656E6F6870;
  }

  v3 = 0xEB00000000726562;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26D218490()
{
  if (*v0)
  {
    return 1701869940;
  }

  else
  {
    return 0x6D754E656E6F6870;
  }
}

uint64_t sub_26D2184E8(uint64_t a1)
{
  v2 = sub_26D21DF98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D218524(uint64_t a1)
{
  v2 = sub_26D21DF98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.ComposeAction.ComposeRecordingMessage.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_26D22DBF4();
  MEMORY[0x28223BE20](v3);
  v4 = sub_26D22DC04();
  v15 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1818, &qword_26D235500);
  v7 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v9 = &v14 - v8;
  v10 = a1[3];
  v19 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_26D21DF98();
  v11 = v18;
  sub_26D22EA24();
  if (!v11)
  {
    v18 = v4;
    v12 = v16;
    v21 = 0;
    v14 = sub_26D22E8D4();
    v20 = 1;
    sub_26D21E550(&qword_2804E1828, MEMORY[0x277CF2BD0], MEMORY[0x277CF2BD8]);
    sub_26D22E914();
    sub_26D22DBE4();
    (*(v7 + 8))(v9, v17);
    (*(v15 + 32))(v12, v6, v18);
  }

  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_26D218894(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  if (v2)
  {
    v4 = "honeNumber";
  }

  else
  {
    v4 = "composeTextMessage";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000017;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (*a2)
  {
    v7 = "composeTextMessage";
  }

  else
  {
    v7 = "honeNumber";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26D22E964();
  }

  return v9 & 1;
}

uint64_t sub_26D218944()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D2189C8(uint64_t a1)
{
  sub_26D22E454();
}

uint64_t sub_26D218A38(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

void sub_26D218AC4(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000017;
  }

  else
  {
    v2 = 0xD000000000000012;
  }

  if (*v1)
  {
    v3 = "composeTextMessage";
  }

  else
  {
    v3 = "honeNumber";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_26D218B08()
{
  if (*v0)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_26D218B64(uint64_t a1)
{
  v2 = sub_26D21DFEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D218BA0(uint64_t a1)
{
  v2 = sub_26D21DFEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.ComposeAction.init(from:configuration:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1830, &qword_26D235508);
  v4 = *(v3 - 8);
  v34 = v3;
  v35 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - v5;
  v7 = sub_26D22DC14();
  v32 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v31 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - v14;
  v16 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_26D21DFEC();
  v17 = v6;
  v18 = v36;
  sub_26D22EA24();
  if (!v18)
  {
    v31 = v10;
    v20 = v13;
    v36 = v15;
    v22 = v33;
    v21 = v34;
    LOBYTE(v37) = 0;
    if (sub_26D22E924())
    {
      sub_26D22DBD4();
      LOBYTE(v37) = 0;
      sub_26D21E550(&qword_2804E1848, MEMORY[0x277CF2BB8], &protocol conformance descriptor for Chatbot.ComposeAction.ComposeTextMessage);
      sub_26D22E884();
      (*(v35 + 8))(v17, v21);
      v23 = MEMORY[0x277CF2BE8];
    }

    else
    {
      LOBYTE(v37) = 1;
      if ((sub_26D22E924() & 1) == 0)
      {
        v27 = sub_26D22E794();
        swift_allocError();
        v29 = v28;
        v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1158, &qword_26D232138) + 48);
        *v29 = v7;
        sub_26D22E894();
        v37 = 0;
        v38 = 0xE000000000000000;
        sub_26D22E744();

        v37 = 0xD000000000000011;
        v38 = 0x800000026D23BFC0;
        v30 = MEMORY[0x26D6B6D70](&unk_287E99A88, &_s21DecodingConfigurationV10CodingKeysON_26);
        MEMORY[0x26D6B6C70](v30);

        sub_26D22E784();
        (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84170], v27);
        swift_willThrow();
        (*(v35 + 8))(v17, v21);
        return __swift_destroy_boxed_opaque_existential_1(v39);
      }

      sub_26D22DC04();
      LOBYTE(v37) = 1;
      sub_26D21E550(&qword_2804E1840, MEMORY[0x277CF2BE0], &protocol conformance descriptor for Chatbot.ComposeAction.ComposeRecordingMessage);
      v20 = v31;
      sub_26D22E884();
      (*(v35 + 8))(v17, v21);
      v23 = MEMORY[0x277CF2BF8];
    }

    v24 = v32;
    (*(v32 + 104))(v20, *v23, v7);
    v25 = *(v24 + 32);
    v26 = v36;
    v25(v36, v20, v7);
    v25(v22, v26, v7);
  }

  return __swift_destroy_boxed_opaque_existential_1(v39);
}

uint64_t sub_26D2190D8()
{
  sub_26D22E9E4();
  sub_26D22E454();
  return sub_26D22EA04();
}

uint64_t sub_26D21914C(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();
  return sub_26D22EA04();
}

uint64_t sub_26D2191E8@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_26D22E854();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_26D219250(uint64_t a1)
{
  v2 = sub_26D21E040();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D21928C(uint64_t a1)
{
  v2 = sub_26D21E040();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.DeviceAction.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1850, &qword_26D235510);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D21E040();
  sub_26D22EA24();
  if (!v2)
  {
    if (sub_26D22E924())
    {
      (*(v6 + 8))(v8, v5);
      v9 = *MEMORY[0x277CF2B28];
      v10 = sub_26D22DB44();
      (*(*(v10 - 8) + 104))(a2, v9, v10);
    }

    else
    {
      v11 = sub_26D22E794();
      swift_allocError();
      v13 = v12;
      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1158, &qword_26D232138) + 48);
      *v13 = sub_26D22DB44();
      v16[1] = sub_26D22E894();
      v17 = 0;
      v18 = 0xE000000000000000;
      sub_26D22E744();

      v17 = 0xD000000000000011;
      v18 = 0x800000026D23BFC0;
      v14 = MEMORY[0x26D6B6D70](&unk_287E99AE8, &_s21DecodingConfigurationV10CodingKeysON_25);
      MEMORY[0x26D6B6C70](v14);

      sub_26D22E784();
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D84170], v11);
      swift_willThrow();
      (*(v6 + 8))(v8, v5);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26D2195A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD00000000000001CLL;
  }

  else
  {
    v3 = 0xD000000000000014;
  }

  if (v2)
  {
    v4 = "dTime";
  }

  else
  {
    v4 = "disableAnonymization";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD00000000000001CLL;
  }

  else
  {
    v6 = 0xD000000000000014;
  }

  if (*a2)
  {
    v7 = "disableAnonymization";
  }

  else
  {
    v7 = "dTime";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26D22E964();
  }

  return v9 & 1;
}

uint64_t sub_26D219650()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D2196D0(uint64_t a1)
{
  sub_26D22E454();
}

uint64_t sub_26D21973C(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

void sub_26D2197C4(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000001CLL;
  }

  else
  {
    v2 = 0xD000000000000014;
  }

  if (*v1)
  {
    v3 = "disableAnonymization";
  }

  else
  {
    v3 = "dTime";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_26D219804()
{
  if (*v0)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_26D21985C(uint64_t a1)
{
  v2 = sub_26D21E094();

  return MEMORY[0x2821FE718](a1, v2);
}