_OWORD *sub_24884FE18(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24884F6E0(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_248850264();
      v11 = v19;
      goto LABEL_8;
    }

    sub_24884F9F8(v16, a4 & 1);
    v11 = sub_24884F6E0(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_2488A5ABC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_24884F64C(a1, v22);
  }

  else
  {
    sub_24884FF68(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_24884FF68(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_24884F64C(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_24884FFD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_24885004C(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a3 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    do
    {
      v10 = (*(v4 + 48) + 16 * v6);
      if (*v10 == a1 && v10[1] == a2)
      {
        break;
      }

      if (sub_2488A5A8C())
      {
        break;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

void *sub_248850104()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1340, &qword_2488A6FB8);
  v2 = *v0;
  v3 = sub_2488A5A5C();
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
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
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

void *sub_248850264()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB1880, &qword_2488A7568);
  v2 = *v0;
  v3 = sub_2488A5A5C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_24885055C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_24884F64C(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_248850408(uint64_t a1)
{
  v2 = sub_2488A521C();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_2488A4E1C();
}

unint64_t sub_2488504D0@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = *a1;
  v5 = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x24C1DB410](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_24885055C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2488505D8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_248850610@<Q0>(uint64_t a1@<X8>)
{

  sub_2488424F8(v5);
  v2 = v5[5];
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v2;
  *(a1 + 96) = v5[6];
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = result;
  return result;
}

unint64_t sub_248850668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EEB11D8;
  if (!qword_27EEB11D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB11D8);
  }

  return result;
}

unint64_t sub_2488506EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EEB1208;
  if (!qword_27EEB1208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1208);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LabelColor(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LabelColor(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of DSFolderIconCustomizationApplicator.applyFolderIconConfig(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_248850A44;

  return v9(a1, a2, a3);
}

uint64_t sub_248850A44()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t dispatch thunk of DSFolderIconCustomizationApplicator.fetchFolderIconConfig()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_248850C50;

  return v7(a1, a2);
}

uint64_t sub_248850C50(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_248850D90(uint64_t a1)
{
  result = sub_2488A4A6C();
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

uint64_t sub_2488512F8(uint64_t a1)
{
  result = sub_2488A4A6C();
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

uint64_t get_enum_tag_for_layout_string_So16UIViewControllerCSgSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_248851428(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_248851470(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_248851540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EEB1330;
  if (!qword_27EEB1330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1330);
  }

  return result;
}

uint64_t sub_248851594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2488515F8(uint64_t a1)
{
  v2 = type metadata accessor for SymbolMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_248851654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EEB1338;
  if (!qword_27EEB1338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1338);
  }

  return result;
}

uint64_t sub_2488516B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_248851738(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_248844A38(v1);
}

void sub_248851768()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 96);
  *(v2 + 96) = v1;
  v4 = v1;
  sub_2488451E0(v3);
}

void sub_2488517F4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_24884433C(v1);
}

void sub_248851854()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 72);
  *(v1 + 72) = v2;
  v4 = v2;
}

uint64_t sub_2488518DC()
{
  *(*(v0 + 16) + 64) = *(v0 + 24);
}

uint64_t sub_248851918()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
}

void sub_24885197C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 72) = v2;
}

unint64_t sub_2488519D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EEB13A8;
  if (!qword_27EEB13A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB13A8);
  }

  return result;
}

uint64_t sub_248851A24@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2488A4E4C();
  *a1 = result;
  return result;
}

unint64_t sub_248851AA0()
{
  result = qword_27EEB13C0;
  if (!qword_27EEB13C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1388, &qword_2488A7120);
    sub_248851B58();
    sub_24883E5F8(&qword_27EEB13E0, &qword_27EEB13B8, &qword_2488A7178, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB13C0);
  }

  return result;
}

unint64_t sub_248851B58()
{
  result = qword_27EEB13C8;
  if (!qword_27EEB13C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB13B0, &qword_2488A7170);
    swift_getOpaqueTypeConformance2();
    sub_24883E5F8(&qword_27EEB13D0, &qword_27EEB13D8, &qword_2488A71B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB13C8);
  }

  return result;
}

unint64_t sub_248851C48()
{
  result = qword_27EEB13F0;
  if (!qword_27EEB13F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB13E8, &qword_2488A71B8);
    v3 = sub_24883E5F8(&qword_27EEB13F8, &qword_27EEB1400, &qword_2488A71C0, MEMORY[0x277CDD938]);
    sub_248851D00(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB13F0);
  }

  return result;
}

unint64_t sub_248851D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EEB1408;
  if (!qword_27EEB1408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1408);
  }

  return result;
}

uint64_t sub_248851D54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2488A4E6C();
  *a1 = result;
  return result;
}

unint64_t sub_248851DA8()
{
  result = qword_27EEB1428;
  if (!qword_27EEB1428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1378, &qword_2488A7110);
    sub_248851E60();
    sub_24883E5F8(&qword_27EEB1458, &qword_27EEB1460, &qword_2488A7210, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1428);
  }

  return result;
}

unint64_t sub_248851E60()
{
  result = qword_27EEB1430;
  if (!qword_27EEB1430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1420, &qword_2488A71D8);
    sub_248851EEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1430);
  }

  return result;
}

unint64_t sub_248851EEC()
{
  result = qword_27EEB1438;
  if (!qword_27EEB1438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1410, &qword_2488A71C8);
    sub_24883E5F8(&qword_27EEB1440, &qword_27EEB1448, &qword_2488A7208, MEMORY[0x277CDF118]);
    sub_24883E5F8(&qword_27EEB1450, &qword_27EEB1418, &qword_2488A71D0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1438);
  }

  return result;
}

void sub_248851FD4(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_248852028()
{
  result = qword_27EEB1490;
  if (!qword_27EEB1490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1480, &qword_2488A7230);
    sub_2488520B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1490);
  }

  return result;
}

unint64_t sub_2488520B4()
{
  result = qword_27EEB1498;
  if (!qword_27EEB1498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB14A0, &qword_2488A7238);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB14A8, &qword_2488A7240);
    sub_24883E5F8(&qword_27EEB14B0, &qword_27EEB14A8, &qword_2488A7240, MEMORY[0x277CE1138]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1498);
  }

  return result;
}

uint64_t sub_2488521B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2488A4EAC();
  *a1 = result & 1;
  return result;
}

unint64_t sub_248852238()
{
  result = qword_27EEB1538;
  if (!qword_27EEB1538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1508, &qword_2488A7298);
    sub_2488522C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1538);
  }

  return result;
}

unint64_t sub_2488522C4()
{
  result = qword_27EEB1540;
  if (!qword_27EEB1540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1530, &qword_2488A72E0);
    sub_24885237C();
    sub_24883E5F8(&qword_27EEB1560, &qword_27EEB1568, &qword_2488A72F0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1540);
  }

  return result;
}

unint64_t sub_24885237C()
{
  result = qword_27EEB1548;
  if (!qword_27EEB1548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1550, &qword_2488A72E8);
    sub_24883E5F8(&qword_27EEB1528, &qword_27EEB1500, &qword_2488A7290, MEMORY[0x277CDF028]);
    sub_2488516B0(&qword_27EEB1558, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1548);
  }

  return result;
}

unint64_t sub_248852474()
{
  result = qword_27EEB1598;
  if (!qword_27EEB1598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB14E8, &qword_2488A7278);
    sub_248852500();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1598);
  }

  return result;
}

unint64_t sub_248852500()
{
  result = qword_27EEB15A0;
  if (!qword_27EEB15A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB14E0, &qword_2488A7270);
    sub_24883E5F8(&qword_27EEB1588, &qword_27EEB14D8, &qword_2488A7268, MEMORY[0x277CDF028]);
    sub_2488516B0(&qword_27EEB1558, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB15A0);
  }

  return result;
}

unint64_t sub_2488525F0()
{
  result = qword_27EEB15F8;
  if (!qword_27EEB15F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB15E8, &qword_2488A7340);
    sub_24885269C();
    sub_24885302C(&qword_27EEB1620, &qword_27EEB1628, &qword_2488A7358, MEMORY[0x277CE1078]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB15F8);
  }

  return result;
}

unint64_t sub_24885269C()
{
  result = qword_27EEB1600;
  if (!qword_27EEB1600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1608, &qword_2488A7348);
    sub_248852748(&qword_27EEB1610, &qword_27EEB1618, &qword_2488A7350, MEMORY[0x277CDFC60]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1600);
  }

  return result;
}

uint64_t sub_248852748(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_2488527B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24885282C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_248850A44;

  return sub_248848618(a1, v4, v5, v1 + 32);
}

uint64_t sub_2488528DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_248853F2C;

  return sub_24884A05C(a1, v4, v5, v1 + 32);
}

unint64_t sub_248852994()
{
  result = qword_27EEB1698;
  if (!qword_27EEB1698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1690, &qword_2488A73D8);
    sub_248852A50();
    sub_2488516B0(&qword_27EEB1558, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1698);
  }

  return result;
}

unint64_t sub_248852A50()
{
  result = qword_27EEB16A0;
  if (!qword_27EEB16A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB16A8, &qword_2488A73E0);
    sub_248852ADC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB16A0);
  }

  return result;
}

unint64_t sub_248852ADC()
{
  result = qword_27EEB16B0;
  if (!qword_27EEB16B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB16B8, &qword_2488A73E8);
    sub_24883E5F8(&qword_27EEB16C0, &qword_27EEB16C8, &qword_2488A73F0, MEMORY[0x277CDF170]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB16B0);
  }

  return result;
}

unint64_t sub_248852BA0()
{
  result = qword_27EEB16F0;
  if (!qword_27EEB16F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB16E8, &qword_2488A7400);
    sub_248852C24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB16F0);
  }

  return result;
}

unint64_t sub_248852C24()
{
  result = qword_27EEB16F8;
  if (!qword_27EEB16F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1700, &qword_2488A7408);
    sub_248852CBC();
    sub_2488530D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB16F8);
  }

  return result;
}

unint64_t sub_248852CBC()
{
  result = qword_27EEB1708;
  if (!qword_27EEB1708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1710, &qword_2488A7410);
    sub_248852D48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1708);
  }

  return result;
}

unint64_t sub_248852D48()
{
  result = qword_27EEB1718;
  if (!qword_27EEB1718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1720, &qword_2488A7418);
    sub_248852DD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1718);
  }

  return result;
}

unint64_t sub_248852DD4()
{
  result = qword_27EEB1728;
  if (!qword_27EEB1728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1730, &qword_2488A7420);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1738, &qword_2488A7428);
    sub_248852EC8();
    swift_getOpaqueTypeConformance2();
    sub_24883E5F8(&qword_27EEB1778, &qword_27EEB1780, &unk_2488A7E30, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1728);
  }

  return result;
}

unint64_t sub_248852EC8()
{
  result = qword_27EEB1740;
  if (!qword_27EEB1740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1738, &qword_2488A7428);
    sub_248852F80();
    sub_24883E5F8(&qword_27EEB1768, &qword_27EEB1770, &unk_2488A7440, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1740);
  }

  return result;
}

unint64_t sub_248852F80()
{
  result = qword_27EEB1748;
  if (!qword_27EEB1748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1750, &qword_2488A7430);
    sub_24885302C(&qword_27EEB1758, &qword_27EEB1760, &qword_2488A7438, MEMORY[0x277CE0BC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1748);
  }

  return result;
}

uint64_t sub_24885302C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_2488516B0(&qword_27EEB1558, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2488530D4()
{
  result = qword_27EEB1788;
  if (!qword_27EEB1788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1790, &qword_2488A7450);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1798, &unk_2488A7458);
    sub_24883E5F8(&qword_27EEB17A0, &qword_27EEB1798, &unk_2488A7458, MEMORY[0x277CE1148]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1788);
  }

  return result;
}

uint64_t sub_2488531C8()
{
  v1 = sub_2488A4DAC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  v5 = *(v0 + 48);
  if (v5 != 1)
  {
  }

  v6 = (v3 + 128) & ~v3;

  sub_248851FD4(*(v0 + 104), *(v0 + 112));
  (*(v2 + 8))(v0 + v6, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + v4, v3 | 7);
}

uint64_t sub_2488532FC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2488533E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_195Tm()
{

  v1 = *(v0 + 64);
  if (v1 != 1)
  {
  }

  sub_248851FD4(*(v0 + 120), *(v0 + 128));

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_2488534E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24885354C()
{
  v1 = type metadata accessor for SymbolMetadata(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);

  v4 = *(v0 + 48);
  if (v4 != 1)
  {
  }

  v5 = (v2 + 128) & ~v2;

  sub_248851FD4(*(v0 + 104), *(v0 + 112));

  v6 = *(v1 + 20);
  v7 = sub_2488A497C();
  (*(*(v7 - 8) + 8))(v0 + v5 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v5 + v3, v2 | 7);
}

uint64_t sub_2488536AC(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 128) & ~*(v3 + 80));

  return a2(v2 + 16, v4);
}

uint64_t objectdestroy_175Tm()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 64);
  if (v1 != 1)
  {
  }

  sub_248851FD4(*(v0 + 120), *(v0 + 128));

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_2488537B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_248853F2C;

  return sub_24884A05C(a1, v4, v5, v1 + 32);
}

unint64_t sub_248853868()
{
  result = qword_27EEB1808;
  if (!qword_27EEB1808)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1800, &qword_2488A7510);
    sub_248851D00(v1, v2, v3);
    sub_24883E5F8(&qword_27EEB1810, &qword_27EEB1818, &qword_2488A7518, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1808);
  }

  return result;
}

uint64_t objectdestroyTm()
{

  v1 = *(v0 + 48);
  if (v1 != 1)
  {
  }

  sub_248851FD4(*(v0 + 104), *(v0 + 112));

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

unint64_t sub_2488539A4()
{
  result = qword_27EEB1840;
  if (!qword_27EEB1840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EEB1830, &qword_2488A7530);
    sub_248853A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1840);
  }

  return result;
}

unint64_t sub_248853A30()
{
  result = qword_27EEB1848;
  if (!qword_27EEB1848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EEB1850, &qword_2488A7538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1848);
  }

  return result;
}

uint64_t sub_248853AB4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_248853AEC(id result)
{
  if (*(v1 + 16))
  {
    return [result setTintColor_];
  }

  return result;
}

uint64_t sub_248853B04()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_248853B64(uint64_t a1)
{
  v4 = *(v1 + 24);
  v11 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v13 = *(v1 + 64);
  v8 = *(v1 + 56);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_248853F2C;

  return sub_248845A70(a1, v11, v4, v5, v6, v7, v8, v13);
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_248853D24()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 80);
  *(v1 + 80) = v2;
  v4 = v2;
}

uint64_t sub_248853D5C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_248853DD4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248853E0C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_248853E4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_248853F2C;

  return sub_248844D44(a1, v4, v5, v6);
}

uint64_t DSLightweightTagInfo.__allocating_init(name:colorLabel:favorite:)(uint64_t a1, uint64_t a2, Swift::Int a3, char a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  LabelColor.init(rawValue:)(a3);
  *(v8 + 32) = v10;
  *(v8 + 33) = a4;
  return v8;
}

uint64_t sub_248854060()
{
  v1 = *v0;
  sub_2488A5ADC();
  MEMORY[0x24C1DB500](qword_2488A7A10[v1]);
  return sub_2488A5AFC();
}

uint64_t sub_2488540E8(uint64_t a1)
{
  v2 = *v1;
  sub_2488A5ADC();
  MEMORY[0x24C1DB500](qword_2488A7A10[v2]);
  return sub_2488A5AFC();
}

uint64_t sub_248854134@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24885AFAC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_248854238(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t sub_248854298(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_24885433C()
{
  v1 = *(v0 + 32);
  if (v1 == 7)
  {
    return 0;
  }

  else
  {
    return v1 + 1;
  }
}

uint64_t DSLightweightTagInfo.init(name:colorLabel:favorite:)(uint64_t a1, uint64_t a2, Swift::Int rawValue, char a4)
{
  *(v4 + 32) = 7;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  LabelColor.init(rawValue:)(rawValue);
  *(v4 + 32) = v7;
  *(v4 + 33) = a4;
  return v4;
}

uint64_t sub_24885439C(uint64_t a1)
{
  swift_beginAccess();

  sub_2488A574C();
}

uint64_t static DSLightweightTagInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  if (v4 == *(a2 + 16) && v5 == *(a2 + 24))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2488A5A8C();
  }

  return v7 & 1;
}

uint64_t sub_248854494()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_2488544E0()
{
  sub_2488A59EC();

  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  MEMORY[0x24C1DB190](v1, v2);

  MEMORY[0x24C1DB190](0x3A726F6C6F63202CLL, 0xE900000000000020);
  if (*(v0 + 32) == 7)
  {
    v3 = 1701736270;
    v4 = 0xE400000000000000;
  }

  else
  {
    v3 = LabelColor.debugDescription.getter();
    v4 = v5;
  }

  MEMORY[0x24C1DB190](v3, v4);

  MEMORY[0x24C1DB190](0x7469726F76616620, 0xEB00000000203A65);
  if (*(v0 + 33))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + 33))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x24C1DB190](v6, v7);

  MEMORY[0x24C1DB190](41, 0xE100000000000000);
  return 0x666E49676154574CLL;
}

uint64_t DSLightweightTagInfo.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2488546B0()
{
  sub_2488A5ADC();
  swift_beginAccess();

  sub_2488A574C();

  return sub_2488A5AFC();
}

uint64_t sub_248854720@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a1 = *(v3 + 16);
  a1[1] = v4;
}

uint64_t sub_248854790()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

uint64_t sub_2488547E0()
{
  sub_2488A5ADC();
  swift_beginAccess();

  sub_2488A574C();

  return sub_2488A5AFC();
}

uint64_t sub_248854854(uint64_t a1)
{
  swift_beginAccess();

  sub_2488A574C();
}

uint64_t sub_2488548C0(uint64_t a1)
{
  sub_2488A5ADC();
  swift_beginAccess();

  sub_2488A574C();

  return sub_2488A5AFC();
}

uint64_t sub_248854930(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  swift_beginAccess();
  if (v4 == *(v3 + 16) && v5 == *(v3 + 24))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2488A5A8C();
  }

  return v7 & 1;
}

uint64_t static DSLightweightTagInfo.transferRepresentation.getter()
{
  v0 = sub_2488A4ABC();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2488A4A9C();
  v3 = type metadata accessor for DSLightweightTagInfo();
  v5 = sub_24885AD6C(&qword_27EEB18F0, v4, type metadata accessor for DSLightweightTagInfo, &protocol conformance descriptor for DSLightweightTagInfo);
  return MEMORY[0x24C1DA490](v2, &unk_2488A75C0, 0, &unk_2488A75C8, 0, v3, v5);
}

uint64_t sub_248854AB4(uint64_t *a1)
{
  v3 = sub_2488A571C();
  v1[5] = v3;
  v1[6] = *(v3 - 8);
  v4 = swift_task_alloc();
  v5 = *a1;
  v1[7] = v4;
  v1[8] = v5;

  return MEMORY[0x2822009F8](sub_248854B78, 0, 0);
}

uint64_t sub_248854B78()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];
  swift_beginAccess();

  sub_2488A570C();
  v4 = sub_2488A56EC();
  v6 = v5;

  (*(v3 + 8))(v1, v2);
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  if (v6 >> 60 == 15)
  {
    v8 = 0xC000000000000000;
  }

  else
  {
    v8 = v6;
  }

  v9 = v0[1];

  return v9(v7, v8);
}

uint64_t sub_248854C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_2488A571C();
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_248854D08, 0, 0);
}

uint64_t sub_248854D08(uint64_t a1)
{
  sub_2488A570C();
  v2 = sub_2488A56FC();
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v6 = v1[2];
    type metadata accessor for DSLightweightTagInfo();
    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    *(v7 + 24) = v5;
    *(v7 + 32) = 7;
    *v6 = v7;
  }

  else
  {
    v9 = v1[4];
    v10 = v1[3];
    v11 = sub_2488A5A2C();
    swift_allocError();
    v13 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1948, &unk_2488A7880);
    v13[3] = MEMORY[0x277CC9318];
    *v13 = v10;
    v13[1] = v9;
    sub_24885ACE0(v10, v9);
    sub_2488A5A1C();
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D841A8], v11);
    swift_willThrow();
  }

  v8 = v1[1];

  return v8();
}

uint64_t sub_248854F60(uint64_t a1, uint64_t a2)
{
  v3 = sub_2488A4ABC();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2488A4A9C();
  v6 = type metadata accessor for DSLightweightTagInfo();
  return MEMORY[0x24C1DA490](v5, &unk_2488A75C0, 0, &unk_2488A75C8, 0, v6, a2);
}

uint64_t sub_248855024@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_2488551C0()
{
  swift_getKeyPath();
  sub_24885AD6C(&qword_27EEB1350, 255, type metadata accessor for TagModel, &unk_2488A77A0);
  sub_2488A4A2C();

  swift_beginAccess();
}

uint64_t sub_24885527C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24885AD6C(&qword_27EEB1350, 255, type metadata accessor for TagModel, &unk_2488A77A0);
  sub_2488A4A2C();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_248855340(unint64_t a1)
{
  swift_beginAccess();

  v4 = sub_24884F334(v3, a1);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24885AD6C(&qword_27EEB1350, 255, type metadata accessor for TagModel, &unk_2488A77A0);
    sub_2488A4A1C();
  }
}

uint64_t sub_24885548C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
}

uint64_t sub_2488554F4()
{
  swift_getKeyPath();
  sub_24885AD6C(&qword_27EEB1350, 255, type metadata accessor for TagModel, &unk_2488A77A0);
  sub_2488A4A2C();

  swift_beginAccess();
}

uint64_t sub_2488555B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24885AD6C(&qword_27EEB1350, 255, type metadata accessor for TagModel, &unk_2488A77A0);
  sub_2488A4A2C();

  swift_beginAccess();
  *a2 = *(v3 + 32);
}

uint64_t sub_248855674(unint64_t a1)
{
  swift_beginAccess();

  v4 = sub_24884F334(v3, a1);

  if (v4)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24885AD6C(&qword_27EEB1350, 255, type metadata accessor for TagModel, &unk_2488A77A0);
    sub_2488A4A1C();
  }
}

uint64_t sub_2488557C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 32) = a2;
}

uint64_t sub_248855828()
{
  swift_getKeyPath();
  sub_24885AD6C(&qword_27EEB1350, 255, type metadata accessor for TagModel, &unk_2488A77A0);
  sub_2488A4A2C();

  swift_beginAccess();
}

uint64_t sub_2488558E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24885AD6C(&qword_27EEB1350, 255, type metadata accessor for TagModel, &unk_2488A77A0);
  sub_2488A4A2C();

  swift_beginAccess();
  *a2 = *(v3 + 40);
}

uint64_t sub_2488559D4(unint64_t a1)
{
  swift_beginAccess();

  v4 = sub_24884F334(v3, a1);

  if (v4)
  {
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24885AD6C(&qword_27EEB1350, 255, type metadata accessor for TagModel, &unk_2488A77A0);
    sub_2488A4A1C();
  }
}

uint64_t sub_248855B20(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 40) = a2;
}

uint64_t sub_248855B88()
{
  swift_getKeyPath();
  sub_24885AD6C(&qword_27EEB1350, 255, type metadata accessor for TagModel, &unk_2488A77A0);
  sub_2488A4A2C();

  swift_beginAccess();
}

uint64_t sub_248855C44@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24885AD6C(&qword_27EEB1350, 255, type metadata accessor for TagModel, &unk_2488A77A0);
  sub_2488A4A2C();

  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_248855D08(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  v4 = a1 & 0xC000000000000001;
  if ((v3 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v5 = *(v1 + 48);
    }

    else
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    if (v4)
    {

      v6 = sub_2488A598C();
      goto LABEL_14;
    }

    v8 = v5;
    v9 = a1;
LABEL_13:
    v6 = sub_248859ED8(v8, v9);
LABEL_14:
    v10 = v6;

    if (v10)
    {
LABEL_15:
      *(v1 + 48) = a1;
    }

LABEL_39:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24885AD6C(&qword_27EEB1350, 255, type metadata accessor for TagModel, &unk_2488A77A0);
    sub_2488A4A1C();
  }

  if (v4)
  {
    if (a1 < 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = v7;
    v9 = v3;
    goto LABEL_13;
  }

  if (v3 == a1)
  {
    goto LABEL_15;
  }

  if (*(v3 + 16) != *(a1 + 16))
  {
    goto LABEL_39;
  }

  v12 = 1 << *(v3 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v3 + 56);
  v28 = (v12 + 63) >> 6;
  v15 = a1 + 56;

  v16 = 0;
  v29 = v1;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v30 = (v14 - 1) & v14;
LABEL_30:
    v20 = *(*(v3 + 48) + 8 * (v17 | (v16 << 6)));
    sub_2488A5ADC();
    swift_beginAccess();

    sub_2488A574C();

    v21 = sub_2488A5AFC();
    v22 = -1 << *(a1 + 32);
    v23 = v21 & ~v22;
    v1 = v29;
    if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
    {
LABEL_38:

      goto LABEL_39;
    }

    v24 = ~v22;
    while (1)
    {
      v25 = *(*(a1 + 48) + 8 * v23);
      swift_beginAccess();
      v26 = *(v25 + 16) == *(v20 + 16) && *(v25 + 24) == *(v20 + 24);
      if (v26 || (sub_2488A5A8C() & 1) != 0)
      {
        break;
      }

      v23 = (v23 + 1) & v24;
      if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    v14 = v30;
  }

  v18 = v16;
  while (1)
  {
    v16 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v16 >= v28)
    {

      goto LABEL_15;
    }

    v19 = *(v3 + 56 + 8 * v16);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v30 = (v19 - 1) & v19;
      goto LABEL_30;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24885609C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 48) = a2;
}

void *sub_248856104(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v3[5] = MEMORY[0x277D84F90];
  v6 = MEMORY[0x277D84FA0];
  v3[3] = 0;
  v3[6] = v6;
  v76 = v3 + 6;
  v7 = OBJC_IVAR____TtC17DesktopServicesUI8TagModel___observationRegistrar;
  sub_2488A4A5C();
  v3[2] = a1;
  v3[4] = a1;
  v8 = v3 + 4;
  swift_bridgeObjectRetain_n();
  v9 = sub_248859FDC(a1);

  if (a2 >> 62)
  {
LABEL_95:
    v10 = sub_2488A596C();
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_3:
      v69 = v8;
      v11 = 0;
      v74 = a2 & 0xC000000000000001;
      v70 = a2 + 32;
      v71 = a2 & 0xFFFFFFFFFFFFFF8;
      v72 = a2;
      v8 = v9;
      v12 = v9;
      v75 = v7;
      v73 = v10;
      while (1)
      {
        if (v74)
        {
          v14 = MEMORY[0x24C1DB410](v11, v72);
          v15 = __OFADD__(v11, 1);
          v16 = v11 + 1;
          if (v15)
          {
            goto LABEL_89;
          }
        }

        else
        {
          if (v11 >= *(v71 + 16))
          {
            goto LABEL_90;
          }

          v14 = *(v70 + 8 * v11);

          v15 = __OFADD__(v11, 1);
          v16 = v11 + 1;
          if (v15)
          {
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
            goto LABEL_95;
          }
        }

        v77 = v16;
        a2 = &unk_2488A77C0;
        swift_getKeyPath();
        v9 = sub_24885AD6C(&qword_27EEB1350, 255, type metadata accessor for TagModel, &unk_2488A77A0);

        sub_2488A4A2C();

        swift_getKeyPath();
        sub_2488A4A4C();

        swift_beginAccess();
        v7 = v3[6];
        if ((v7 & 0xC000000000000001) != 0)
        {
          if (v7 < 0)
          {
            v17 = v3[6];
          }

          else
          {
            v17 = v7 & 0xFFFFFFFFFFFFFF8;
          }

          v18 = sub_2488A597C();

          if (v18)
          {
            v9 = v8;

            type metadata accessor for DSLightweightTagInfo();
            swift_dynamicCast();
            goto LABEL_41;
          }

          v27 = sub_2488A596C();
          if (__OFADD__(v27, 1))
          {
            goto LABEL_91;
          }

          v28 = sub_248858E3C(v17, v27 + 1);
          v29 = *(v28 + 16);
          if (*(v28 + 24) <= v29)
          {
            sub_248859068(v29 + 1);
          }

          sub_2488592E8(v30, v28);
          *v76 = v28;
        }

        else
        {
          sub_2488A5ADC();
          swift_beginAccess();

          sub_2488A574C();

          v19 = sub_2488A5AFC();
          v20 = -1 << *(v7 + 32);
          a2 = v19 & ~v20;
          v9 = v8;
          if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
          {
            v21 = ~v20;
            while (1)
            {
              v22 = *(*(v7 + 48) + 8 * a2);
              swift_beginAccess();
              v23 = *(v22 + 16) == *(v14 + 16) && *(v22 + 24) == *(v14 + 24);
              if (v23 || (sub_2488A5A8C() & 1) != 0)
              {
                break;
              }

              a2 = (a2 + 1) & v21;
              if (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
              {
                goto LABEL_30;
              }
            }

LABEL_41:

            swift_endAccess();
            swift_getKeyPath();
            sub_2488A4A3C();

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1680, &qword_2488A73A8);
            v34 = swift_allocObject();
            *(v34 + 16) = xmmword_2488A68F0;
            sub_2488A59EC();

            swift_beginAccess();
            v35 = *(v14 + 16);
            a2 = *(v14 + 24);

            v36 = v35;
            v7 = v75;
            MEMORY[0x24C1DB190](v36, a2);

            *(v34 + 56) = MEMORY[0x277D837D0];
            *(v34 + 32) = 0xD00000000000001BLL;
            *(v34 + 40) = 0x80000002488AE760;
            sub_2488A5ACC();

            v8 = v9;
            if ((v12 & 0xC000000000000001) == 0)
            {
              goto LABEL_60;
            }

            goto LABEL_4;
          }

LABEL_30:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v78 = *v76;
          v7 = *v76;
          *v76 = 0x8000000000000000;
          v25 = *(v7 + 16);
          v26 = *(v7 + 24);

          if (v26 <= v25)
          {
            v37 = v25 + 1;
            if (isUniquelyReferenced_nonNull_native)
            {
              sub_248859068(v37);
            }

            else
            {
              sub_2488596BC(v37);
            }

            v8 = v9;
            v7 = v78;
            sub_2488A5ADC();

            sub_2488A574C();

            v38 = sub_2488A5AFC();
            v39 = -1 << *(v78 + 32);
            a2 = v38 & ~v39;
            if ((*(v78 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
            {
              v40 = ~v39;
              type metadata accessor for DSLightweightTagInfo();
              while (1)
              {
                v41 = *(*(v78 + 48) + 8 * a2);
                swift_beginAccess();
                v42 = *(v41 + 16) == *(v14 + 16) && *(v41 + 24) == *(v14 + 24);
                if (v42 || (sub_2488A5A8C() & 1) != 0)
                {
                  goto LABEL_102;
                }

                a2 = (a2 + 1) & v40;
                if (((*(v78 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
                {
                  goto LABEL_54;
                }
              }
            }
          }

          else
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_24885956C();
              v7 = v78;
            }

LABEL_54:
            v8 = v9;
          }

          *(v7 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << a2;
          *(*(v7 + 48) + 8 * a2) = v14;
          v43 = *(v7 + 16);
          v15 = __OFADD__(v43, 1);
          v44 = v43 + 1;
          if (v15)
          {
            goto LABEL_93;
          }

          *(v7 + 16) = v44;
          *v76 = v7;
        }

        swift_endAccess();
        swift_getKeyPath();
        v7 = v75;
        sub_2488A4A3C();

        swift_getKeyPath();

        sub_2488A4A2C();

        swift_getKeyPath();
        sub_2488A4A4C();

        v45 = swift_beginAccess();
        MEMORY[0x24C1DB240](v45);
        if (*((v3[5] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3[5] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2488A585C();
        }

        sub_2488A586C();
        swift_endAccess();
        a2 = swift_getKeyPath();
        sub_2488A4A3C();

        if ((v12 & 0xC000000000000001) == 0)
        {
LABEL_60:
          v9 = v8;
          sub_2488A5ADC();
          swift_beginAccess();

          sub_2488A574C();

          v46 = sub_2488A5AFC();
          v47 = -1 << *(v12 + 32);
          a2 = v46 & ~v47;
          if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
          {
            v48 = ~v47;
            while (1)
            {
              v49 = *(*(v12 + 48) + 8 * a2);
              swift_beginAccess();
              v50 = *(v49 + 16) == *(v14 + 16) && *(v49 + 24) == *(v14 + 24);
              if (v50 || (sub_2488A5A8C() & 1) != 0)
              {
                break;
              }

              a2 = (a2 + 1) & v48;
              if (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
              {
                goto LABEL_68;
              }
            }

            v8 = v9;
            goto LABEL_9;
          }

LABEL_68:
          v8 = v9;
          v51 = swift_isUniquelyReferenced_nonNull_native();
          v52 = *(v9 + 16);
          v53 = *(v9 + 24);

          if (v53 <= v52)
          {
            v54 = v52 + 1;
            if (v51)
            {
              sub_248859068(v54);
            }

            else
            {
              sub_2488596BC(v54);
            }

            v8 = v9;
            sub_2488A5ADC();

            sub_2488A574C();

            v55 = sub_2488A5AFC();
            v56 = v9 + 56;
            v57 = -1 << *(v9 + 32);
            a2 = v55 & ~v57;
            if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
            {
              v58 = ~v57;
              type metadata accessor for DSLightweightTagInfo();
              do
              {
                v9 = v8;
                v59 = *(v8[6] + 8 * a2);
                swift_beginAccess();
                v60 = *(v59 + 16) == *(v14 + 16) && *(v59 + 24) == *(v14 + 24);
                if (v60 || (sub_2488A5A8C() & 1) != 0)
                {
                  goto LABEL_103;
                }

                a2 = (a2 + 1) & v58;
                v8 = v9;
              }

              while (((*(v56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
            }
          }

          else if ((v51 & 1) == 0)
          {
            sub_24885956C();
            v8 = v9;
          }

          *(v8 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << a2;
          *(v8[6] + 8 * a2) = v14;
          v61 = v8[2];
          v15 = __OFADD__(v61, 1);
          v62 = v61 + 1;
          if (v15)
          {
            goto LABEL_94;
          }

          v8[2] = v62;

          goto LABEL_85;
        }

LABEL_4:
        if (v12 < 0)
        {
          v13 = v12;
        }

        else
        {
          v13 = v12 & 0xFFFFFFFFFFFFFF8;
        }

        swift_retain_n();

        v7 = sub_2488A597C();

        if (!v7)
        {
          v31 = sub_2488A596C();
          if (__OFADD__(v31, 1))
          {
            goto LABEL_92;
          }

          v8 = sub_248858E3C(v13, v31 + 1);
          v32 = v8[2];
          if (v8[3] <= v32)
          {
            sub_248859068(v32 + 1);
          }

          sub_2488592E8(v33, v8);

          v7 = v75;
LABEL_85:
          swift_getKeyPath();

          sub_2488A4A2C();

          swift_getKeyPath();
          sub_2488A4A4C();

          v63 = swift_beginAccess();
          MEMORY[0x24C1DB240](v63);
          if (*((v3[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_2488A585C();
          }

          sub_2488A586C();
          swift_endAccess();
          a2 = swift_getKeyPath();
          sub_2488A4A3C();

          v12 = v8;
          goto LABEL_9;
        }

        type metadata accessor for DSLightweightTagInfo();
        swift_dynamicCast();

        v7 = v75;
LABEL_9:
        v11 = v77;
        if (v77 == v73)
        {

          v8 = v69;
          goto LABEL_97;
        }
      }
    }
  }

LABEL_97:
  swift_getKeyPath();
  sub_24885AD6C(&qword_27EEB1350, 255, type metadata accessor for TagModel, &unk_2488A77A0);
  sub_2488A4A2C();

  swift_beginAccess();
  v64 = v3[6];
  swift_getKeyPath();
  swift_bridgeObjectRetain_n();
  sub_2488A4A2C();

  swift_getKeyPath();
  sub_2488A4A4C();

  swift_beginAccess();
  v65 = sub_248859914(v8, v64);

  v66 = v3[4];
  if (v66 >> 62)
  {
    v67 = sub_2488A596C();
    if (v67 >= v65)
    {
      goto LABEL_99;
    }
  }

  else
  {
    v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v67 >= v65)
    {
LABEL_99:
      sub_24885A5F4(v65, v67);
      swift_endAccess();
      swift_getKeyPath();
      sub_2488A4A3C();

      return v3;
    }
  }

  __break(1u);
LABEL_102:
  sub_2488A5AAC();
  __break(1u);
LABEL_103:
  result = sub_2488A5AAC();
  __break(1u);
  return result;
}

uint64_t sub_248856F94(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = v3;
  v68 = a2;
  v7 = sub_2488A4A0C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v61 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v11 = *(a1 + 16);
  v10 = *(a1 + 24);
  swift_getKeyPath();
  v12 = OBJC_IVAR____TtC17DesktopServicesUI8TagModel___observationRegistrar;
  v74 = v4;
  v13 = sub_24885AD6C(&qword_27EEB1350, 255, type metadata accessor for TagModel, &unk_2488A77A0);

  v67 = v12;
  v66 = v13;
  sub_2488A4A2C();

  swift_beginAccess();
  v14 = v4[2];
  v65 = a1;
  v63 = v7;
  v62 = v8;
  v64 = a3;
  if (v14 >> 62)
  {
    goto LABEL_109;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v15)
  {
    v16 = 0;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x24C1DB410](v16, v14);
        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_17:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          v15 = sub_2488A596C();
          goto LABEL_3;
        }

        v17 = *(v14 + 8 * v16 + 32);

        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_17;
        }
      }

      swift_beginAccess();
      v19 = *(v17 + 16) == v11 && *(v17 + 24) == v10;
      if (v19 || (sub_2488A5A8C() & 1) != 0)
      {

        v21 = v17;
        v20 = v67;
        goto LABEL_22;
      }

      ++v16;
    }

    while (v18 != v15);
  }

  swift_getKeyPath();
  v73 = v4;
  v20 = v67;
  sub_2488A4A2C();

  v73 = v4;
  swift_getKeyPath();
  sub_2488A4A4C();

  swift_beginAccess();
  v21 = v65;

  MEMORY[0x24C1DB240](v22);
  if (*((v4[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2488A585C();
  }

  sub_2488A586C();
  swift_endAccess();
  v73 = v4;
  swift_getKeyPath();
  sub_2488A4A3C();

LABEL_22:
  if (v68)
  {
    swift_getKeyPath();
    v73 = v4;

    sub_2488A4A2C();

    swift_beginAccess();
    v23 = v4[5];
    if (v23 >> 62)
    {
      if (sub_2488A596C() >= 1)
      {
LABEL_25:
        swift_getKeyPath();
        v73 = v4;

        sub_2488A4A2C();

        v73 = v4;
        swift_getKeyPath();
        sub_2488A4A4C();

        swift_beginAccess();
        v24 = sub_248858BDC(v72, v21);
        swift_endAccess();

        v73 = v4;
        swift_getKeyPath();
        sub_2488A4A3C();

        if ((v24 & 1) == 0)
        {
          swift_getKeyPath();
          v73 = v4;
          sub_2488A4A2C();

          v14 = v4[5];
          v11 = v14 & 0xFFFFFFFFFFFFFF8;
          if (!(v14 >> 62))
          {
            v10 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_46;
          }

LABEL_127:
          v10 = sub_2488A596C();
LABEL_46:
          v35 = v68;

          swift_beginAccess();
          v36 = 0;
          while (1)
          {
            if (v10 == v36)
            {
LABEL_91:
            }

            if ((v14 & 0xC000000000000001) != 0)
            {
              v37 = MEMORY[0x24C1DB410](v36, v14);
            }

            else
            {
              if (v36 >= *(v11 + 16))
              {
                goto LABEL_103;
              }

              v37 = *(v14 + 8 * v36 + 32);
            }

            swift_beginAccess();
            if (*(v37 + 16) == *(v35 + 16) && *(v37 + 24) == *(v35 + 24))
            {

              goto LABEL_64;
            }

            v39 = sub_2488A5A8C();

            if (v39)
            {
              break;
            }

            v34 = __OFADD__(v36++, 1);
            if (v34)
            {
              goto LABEL_105;
            }
          }

LABEL_64:
          swift_getKeyPath();
          v71[0] = v4;
          sub_2488A4A2C();

          v14 = v4[5];
          if (v14 >> 62)
          {
            v11 = sub_2488A596C();
          }

          else
          {
            v11 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          swift_beginAccess();
          v10 = 0;
          while (1)
          {
            if (v11 == v10)
            {
              goto LABEL_91;
            }

            if ((v14 & 0xC000000000000001) != 0)
            {
              v40 = MEMORY[0x24C1DB410](v10, v14);
            }

            else
            {
              if (v10 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_107;
              }

              v40 = *(v14 + 8 * v10 + 32);
            }

            swift_beginAccess();
            if (*(v40 + 16) == *(v21 + 16) && *(v40 + 24) == *(v21 + 24))
            {
              break;
            }

            v42 = sub_2488A5A8C();

            if (v42)
            {

              if (v36 != v10)
              {
                goto LABEL_95;
              }

LABEL_142:
            }

            v34 = __OFADD__(v10++, 1);
            if (v34)
            {
              goto LABEL_108;
            }
          }

          if (v36 == v10)
          {
            goto LABEL_142;
          }

LABEL_95:
          if (v10 >= v36 || (swift_getKeyPath(), v69[0] = v4, sub_2488A4A2C(), result = , !__OFADD__(v36, 1)))
          {
            v50 = v61;
            sub_2488A49FC();
            swift_getKeyPath();
            v69[0] = v4;
            sub_2488A4A2C();

            v69[0] = v4;
            swift_getKeyPath();
            sub_2488A4A4C();

            swift_beginAccess();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1120, &qword_2488A67A0);
            sub_24883E5F8(&qword_27EEB1928, &qword_27EEB1120, &qword_2488A67A0, MEMORY[0x277D83960]);
            sub_2488A569C();
            (*(v62 + 8))(v50, v63);
            swift_endAccess();
            v69[0] = v4;
            swift_getKeyPath();
            sub_2488A4A3C();

            goto LABEL_142;
          }

LABEL_154:
          __break(1u);
          return result;
        }

        swift_getKeyPath();
        v73 = v4;

        sub_2488A4A2C();

        v73 = v4;
        swift_getKeyPath();
        v14 = v4 + v20;
        sub_2488A4A4C();

        swift_beginAccess();
        v25 = sub_24885A8D4(v4 + 4, v21);

        v26 = v4[4];
        if (!(v26 >> 62))
        {
          v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v27 >= v25)
          {
LABEL_28:
            sub_24885A5F4(v25, v27);
            swift_endAccess();
            v73 = v4;
            swift_getKeyPath();
            sub_2488A4A3C();

            swift_getKeyPath();
            v73 = v4;
            sub_2488A4A2C();

            v14 = v4[5];
            v10 = v14 & 0xFFFFFFFFFFFFFF8;
            if (v14 >> 62)
            {
              v28 = sub_2488A596C();
            }

            else
            {
              v28 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v29 = v68;

            swift_beginAccess();
            v30 = 0;
            v11 = v14 & 0xC000000000000001;
            while (1)
            {
              if (v28 == v30)
              {
                goto LABEL_91;
              }

              if (v11)
              {
                v31 = MEMORY[0x24C1DB410](v30, v14);
              }

              else
              {
                if (v30 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_104;
                }

                v31 = *(v14 + 8 * v30 + 32);
              }

              swift_beginAccess();
              if (*(v31 + 16) == *(v29 + 16) && *(v31 + 24) == *(v29 + 24))
              {

                goto LABEL_81;
              }

              v33 = sub_2488A5A8C();

              if (v33)
              {
                break;
              }

              v34 = __OFADD__(v30++, 1);
              if (v34)
              {
                goto LABEL_106;
              }
            }

LABEL_81:
            swift_getKeyPath();
            v71[0] = v4;

            sub_2488A4A2C();

            v43 = v4[5];
            if (v43 >> 62)
            {
              v44 = sub_2488A596C();
              if (v44)
              {
LABEL_83:
                v45 = v44 - 1;
                if (__OFSUB__(v44, 1))
                {
                  __break(1u);
                }

                else if ((v43 & 0xC000000000000001) == 0)
                {
                  if ((v45 & 0x8000000000000000) != 0)
                  {
                    __break(1u);
                  }

                  else if (v45 < *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    v46 = *(v43 + 8 * v45 + 32);

                    goto LABEL_88;
                  }

                  __break(1u);
                  goto LABEL_148;
                }

                v46 = MEMORY[0x24C1DB410](v45, v43);

LABEL_88:
                v47 = *(v68 + 16);
                v48 = *(v68 + 24);
                swift_beginAccess();
                if (v47 == *(v46 + 16) && v48 == *(v46 + 24))
                {

                  goto LABEL_100;
                }

                v51 = sub_2488A5A8C();

                if (v51)
                {
LABEL_100:
                  swift_getKeyPath();
                  v70[0] = v4;

                  sub_2488A4A2C();

                  v70[0] = v4;
                  swift_getKeyPath();
                  sub_2488A4A4C();

                  v52 = swift_beginAccess();
                  MEMORY[0x24C1DB240](v52);
                  if (*((v4[5] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v4[5] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
LABEL_101:
                    sub_2488A586C();
                    swift_endAccess();
LABEL_141:
                    v70[0] = v4;
                    swift_getKeyPath();
                    sub_2488A4A3C();

                    goto LABEL_142;
                  }

LABEL_148:
                  sub_2488A585C();
                  goto LABEL_101;
                }

                goto LABEL_132;
              }
            }

            else
            {
              v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v44)
              {
                goto LABEL_83;
              }
            }

LABEL_132:
            if ((v64 & 1) == 0)
            {
              goto LABEL_138;
            }

            v34 = __OFADD__(v30++, 1);
            if (v34)
            {
              __break(1u);
              goto LABEL_150;
            }

            swift_getKeyPath();
            v70[0] = v4;

            sub_2488A4A2C();

            v70[0] = v4;
            swift_getKeyPath();
            sub_2488A4A4C();

            swift_beginAccess();
            v58 = v4[5];
            if (v58 >> 62)
            {
              goto LABEL_152;
            }

            result = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (result >= v30)
            {
              while (v30 < 0)
              {
                __break(1u);
LABEL_138:
                swift_getKeyPath();
                v70[0] = v4;

                sub_2488A4A2C();

                v70[0] = v4;
                swift_getKeyPath();
                sub_2488A4A4C();

                swift_beginAccess();
                v59 = v4[5];
                if (v59 >> 62)
                {
LABEL_150:
                  if (sub_2488A596C() >= v30)
                  {
                    break;
                  }
                }

                else if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v30)
                {
                  break;
                }

                __break(1u);
LABEL_152:
                result = sub_2488A596C();
                if (result < v30)
                {
                  goto LABEL_153;
                }
              }

              sub_24885A7E8(v30, v30, v21);
              swift_endAccess();

              goto LABEL_141;
            }

LABEL_153:
            __break(1u);
            goto LABEL_154;
          }

          goto LABEL_126;
        }

LABEL_125:
        v27 = sub_2488A596C();
        if (v27 >= v25)
        {
          goto LABEL_28;
        }

LABEL_126:
        __break(1u);
        goto LABEL_127;
      }
    }

    else if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_25;
    }
  }

  swift_getKeyPath();
  v73 = v4;

  sub_2488A4A2C();

  v73 = v4;
  swift_getKeyPath();
  sub_2488A4A4C();

  swift_beginAccess();
  v53 = sub_248858BDC(v72, v21);
  swift_endAccess();

  v73 = v4;
  swift_getKeyPath();
  sub_2488A4A3C();

  if ((v53 & 1) == 0)
  {
    swift_getKeyPath();
    v73 = v4;

    sub_2488A4A2C();

    v73 = v4;
    swift_getKeyPath();
    v14 = v4 + v20;
    sub_2488A4A4C();

    swift_beginAccess();
    v25 = sub_24885A8D4(v4 + 5, v21);

    v56 = v4[5];
    if (!(v56 >> 62))
    {
      v55 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v55 >= v25)
      {
        goto LABEL_118;
      }

      goto LABEL_124;
    }

LABEL_123:
    v55 = sub_2488A596C();
    if (v55 >= v25)
    {
      goto LABEL_118;
    }

LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  swift_getKeyPath();
  v73 = v4;

  sub_2488A4A2C();

  v73 = v4;
  swift_getKeyPath();
  v14 = v4 + v20;
  sub_2488A4A4C();

  swift_beginAccess();
  v25 = sub_24885A8D4(v4 + 4, v21);

  v54 = v4[4];
  if (!(v54 >> 62))
  {
    v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v55 >= v25)
    {
      goto LABEL_118;
    }

    goto LABEL_122;
  }

  v55 = sub_2488A596C();
  if (v55 < v25)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

LABEL_118:
  sub_24885A5F4(v25, v55);
  swift_endAccess();
  v73 = v4;
  swift_getKeyPath();
  sub_2488A4A3C();

  swift_getKeyPath();
  v73 = v4;

  sub_2488A4A2C();

  v73 = v4;
  swift_getKeyPath();
  sub_2488A4A4C();

  v57 = swift_beginAccess();
  MEMORY[0x24C1DB240](v57);
  if (*((v4[5] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4[5] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2488A585C();
  }

  sub_2488A586C();
  swift_endAccess();
  v73 = v4;
  swift_getKeyPath();
  sub_2488A4A3C();
}

uint64_t sub_2488583FC()
{
  swift_getKeyPath();
  sub_24885AD6C(&qword_27EEB1350, 255, type metadata accessor for TagModel, &unk_2488A77A0);
  sub_2488A4A2C();

  swift_getKeyPath();
  sub_2488A4A4C();

  swift_beginAccess();
  *(v0 + 48) = MEMORY[0x277D84FA0];

  swift_getKeyPath();
  sub_2488A4A3C();

  swift_getKeyPath();
  sub_2488A4A2C();

  swift_getKeyPath();
  sub_2488A4A4C();

  swift_beginAccess();
  *(v0 + 40) = MEMORY[0x277D84F90];

  swift_getKeyPath();
  sub_2488A4A3C();

  swift_getKeyPath();
  sub_2488A4A2C();

  swift_beginAccess();

  return sub_248855674(v1);
}

uint64_t sub_248858634()
{

  v1 = OBJC_IVAR____TtC17DesktopServicesUI8TagModel___observationRegistrar;
  v2 = sub_2488A4A6C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TagModel(uint64_t a1)
{
  result = qword_27EEB1908;
  if (!qword_27EEB1908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24885874C(uint64_t a1)
{
  result = sub_2488A4A6C();
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

uint64_t sub_2488588A8(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2488A596C();
  }

  return sub_2488A5A0C();
}

char *sub_24885890C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1938, &qword_2488A7870);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 56 * v8);
  }

  return v10;
}

char *sub_248858A30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1940, &qword_2488A7878);
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

uint64_t sub_248858B3C(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_2488A596C();
LABEL_9:
  result = sub_2488A5A0C();
  *v2 = result;
  return result;
}

uint64_t sub_248858BDC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_2488A597C();

    if (v8)
    {

      type metadata accessor for DSLightweightTagInfo();
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = sub_2488A596C();
    if (!__OFADD__(result, 1))
    {
      v18 = sub_248858E3C(v7, result + 1);
      v19 = *(v18 + 16);
      if (*(v18 + 24) <= v19)
      {
        sub_248859068(v19 + 1);
      }

      sub_2488592E8(v20, v18);

      *v3 = v18;
      goto LABEL_20;
    }

    __break(1u);
  }

  else
  {
    sub_2488A5ADC();
    swift_beginAccess();

    sub_2488A574C();

    v10 = sub_2488A5AFC();
    v11 = -1 << *(v6 + 32);
    v12 = v10 & ~v11;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
LABEL_15:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v2;

      sub_2488593B8(v17, v12, isUniquelyReferenced_nonNull_native);
      *v2 = v21;
LABEL_20:
      *a1 = a2;
      return 1;
    }

    v13 = ~v11;
    while (1)
    {
      v14 = *(*(v6 + 48) + 8 * v12);
      swift_beginAccess();
      v15 = *(v14 + 16) == *(a2 + 16) && *(v14 + 24) == *(a2 + 24);
      if (v15 || (sub_2488A5A8C() & 1) != 0)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    *a1 = *(*(v6 + 48) + 8 * v12);

    return 0;
  }

  return result;
}

uint64_t sub_248858E3C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1930, &qword_2488A7868);
    v2 = sub_2488A59DC();
    v15 = v2;
    sub_2488A595C();
    if (sub_2488A599C())
    {
      type metadata accessor for DSLightweightTagInfo();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_248859068(v9 + 1);
        }

        v2 = v15;
        sub_2488A5ADC();
        swift_beginAccess();

        sub_2488A574C();

        result = sub_2488A5AFC();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_2488A599C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_248859068(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1930, &qword_2488A7868);
  result = sub_2488A59CC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_2488A5ADC();
      swift_beginAccess();

      sub_2488A574C();

      result = sub_2488A5AFC();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_2488592E8(uint64_t a1, uint64_t a2)
{
  sub_2488A5ADC();
  swift_beginAccess();

  sub_2488A574C();

  sub_2488A5AFC();
  result = sub_2488A594C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_2488593B8(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_248859068(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_24885956C();
      goto LABEL_16;
    }

    sub_2488596BC(v6 + 1);
  }

  v8 = *v3;
  sub_2488A5ADC();
  swift_beginAccess();

  sub_2488A574C();

  result = sub_2488A5AFC();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    type metadata accessor for DSLightweightTagInfo();
    do
    {
      v11 = *(*(v8 + 48) + 8 * a2);
      swift_beginAccess();
      if (*(v11 + 16) == *(v5 + 16) && *(v11 + 24) == *(v5 + 24))
      {
        goto LABEL_19;
      }

      result = sub_2488A5A8C();
      if (result)
      {
        goto LABEL_19;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v5;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2488A5AAC();
  __break(1u);
  return result;
}

void *sub_24885956C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1930, &qword_2488A7868);
  v2 = *v0;
  v3 = sub_2488A59BC();
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

uint64_t sub_2488596BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1930, &qword_2488A7868);
  result = sub_2488A59CC();
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
      sub_2488A5ADC();
      swift_beginAccess();

      sub_2488A574C();

      result = sub_2488A5AFC();
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

unint64_t sub_248859914(unint64_t *a1, uint64_t a2)
{
  *(swift_allocObject() + 16) = a2;
  v33 = a1;
  v4 = *a1;
  *(swift_allocObject() + 16) = a2;
  v30 = v4 >> 62;
  v5 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
    goto LABEL_88;
  }

  v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v7 = a2 & 0xC000000000000001;
  v34 = a2 + 56;
  swift_bridgeObjectRetain_n();
  v8 = 0;
  v31 = v6;
  v32 = v5;
  while (v8 != v6)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x24C1DB410](v8, v4);
      if (!v7)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v8 >= *(v5 + 16))
      {
        goto LABEL_83;
      }

      v11 = *(v4 + 32 + 8 * v8);

      if (!v7)
      {
LABEL_10:
        if (*(a2 + 16))
        {
          sub_2488A5ADC();
          swift_beginAccess();

          sub_2488A574C();

          v12 = sub_2488A5AFC();
          v13 = -1 << *(a2 + 32);
          v14 = v12 & ~v13;
          if ((*(v34 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
          {
            v15 = ~v13;
            while (1)
            {
              v5 = *(*(a2 + 48) + 8 * v14);
              swift_beginAccess();
              v16 = *(v5 + 16) == *(v11 + 16) && *(v5 + 24) == *(v11 + 24);
              if (v16 || (sub_2488A5A8C() & 1) != 0)
              {
                break;
              }

              v14 = (v14 + 1) & v15;
              if (((*(v34 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
              {
                goto LABEL_19;
              }
            }

            v17 = v8 + 1;
            if (!__OFADD__(v8, 1))
            {
              goto LABEL_28;
            }

LABEL_75:
            __break(1u);
LABEL_76:
            v8 = sub_2488A596C();
            goto LABEL_77;
          }

LABEL_19:

          v6 = v31;
          v5 = v32;
        }

        else
        {
        }

        goto LABEL_5;
      }
    }

    v9 = sub_2488A59AC();

    if (v9)
    {

      v17 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_75;
      }

LABEL_28:
      if (v4 >> 62)
      {
        if (v17 == sub_2488A596C())
        {
          goto LABEL_77;
        }
      }

      else if (v17 == *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_77;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x24C1DB410](v17, v4);
        if (v7)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if ((v17 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          v6 = sub_2488A596C();
          goto LABEL_3;
        }

        if (v17 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_79;
        }

        v5 = *(v4 + 8 * v17 + 32);

        if (v7)
        {
LABEL_34:

          v18 = sub_2488A59AC();

          if ((v18 & 1) == 0)
          {
LABEL_49:
            if (v8 != v17)
            {
              goto LABEL_50;
            }

            goto LABEL_26;
          }

          goto LABEL_27;
        }
      }

      if (*(a2 + 16))
      {
        sub_2488A5ADC();
        swift_beginAccess();

        sub_2488A574C();

        v19 = sub_2488A5AFC();
        v20 = -1 << *(a2 + 32);
        v21 = v19 & ~v20;
        if (((*(v34 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
LABEL_48:

          v7 = a2 & 0xC000000000000001;
          goto LABEL_49;
        }

        v22 = ~v20;
        while (1)
        {
          v23 = *(*(a2 + 48) + 8 * v21);
          swift_beginAccess();
          v24 = *(v23 + 16) == *(v5 + 16) && *(v23 + 24) == *(v5 + 24);
          if (v24 || (sub_2488A5A8C() & 1) != 0)
          {
            break;
          }

          v21 = (v21 + 1) & v22;
          if (((*(v34 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        v7 = a2 & 0xC000000000000001;
      }

      else
      {

        if (v8 != v17)
        {
LABEL_50:
          if ((v4 & 0xC000000000000001) != 0)
          {
            v5 = MEMORY[0x24C1DB410](v8, v4);
            v25 = MEMORY[0x24C1DB410](v17, v4);
          }

          else
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_85;
            }

            v26 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v8 >= v26)
            {
              goto LABEL_86;
            }

            if (v17 >= v26)
            {
              goto LABEL_87;
            }

            v5 = *(v4 + 32 + 8 * v8);
            v25 = *(v4 + 32 + 8 * v17);
          }

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
          {
            v4 = sub_2488588A8(v4);
            v27 = (v4 >> 62) & 1;
          }

          else
          {
            LODWORD(v27) = 0;
          }

          v28 = v4 & 0xFFFFFFFFFFFFFF8;
          *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v25;

          if ((v4 & 0x8000000000000000) != 0 || v27)
          {
            v4 = sub_2488588A8(v4);
            v28 = v4 & 0xFFFFFFFFFFFFFF8;
            if ((v17 & 0x8000000000000000) != 0)
            {
LABEL_70:
              __break(1u);
              break;
            }
          }

          else if ((v17 & 0x8000000000000000) != 0)
          {
            goto LABEL_70;
          }

          if (v17 >= *(v28 + 16))
          {
            goto LABEL_82;
          }

          *(v28 + 8 * v17 + 32) = v5;

          *v33 = v4;
        }

LABEL_26:
        v10 = __OFADD__(v8++, 1);
        if (v10)
        {
          goto LABEL_81;
        }
      }

LABEL_27:
      v10 = __OFADD__(v17++, 1);
      if (v10)
      {
        goto LABEL_80;
      }

      goto LABEL_28;
    }

LABEL_5:
    v10 = __OFADD__(v8++, 1);
    if (v10)
    {
      goto LABEL_84;
    }
  }

  if (v30)
  {
    goto LABEL_76;
  }

  v8 = *(v5 + 16);
LABEL_77:

  return v8;
}

uint64_t sub_248859ED8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = sub_2488A596C();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v8 &= v8 - 1;
LABEL_12:

    v12 = sub_2488A59AC();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v5;
  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v11 = *(a2 + 56 + 8 * v5);
    ++v10;
    if (v11)
    {
      v8 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_248859FDC(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_57:
    v3 = sub_2488A596C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = type metadata accessor for DSLightweightTagInfo();
  v6 = sub_24885AD6C(&qword_27EEB1950, v5, type metadata accessor for DSLightweightTagInfo, &protocol conformance descriptor for DSLightweightTagInfo);
  v7 = MEMORY[0x24C1DB2F0](v3, v4, v6);
  if (v2)
  {
    v8 = sub_2488A596C();
    if (!v8)
    {
      return v7;
    }
  }

  else
  {
    v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return v7;
    }
  }

  v9 = 0;
  v10 = v1 & 0xC000000000000001;
  v34 = v1;
  v35 = v1 & 0xC000000000000001;
  v36 = v1 + 32;
  v37 = v1 & 0xFFFFFFFFFFFFFF8;
  while (2)
  {
    if (v7 < 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = v7 & 0xFFFFFFFFFFFFFF8;
    }

    v2 = v7 + 56;
    while (1)
    {
      if (v10)
      {
        v12 = MEMORY[0x24C1DB410](v9, v34);
        v13 = __OFADD__(v9++, 1);
        if (v13)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (v9 >= *(v37 + 16))
        {
          goto LABEL_55;
        }

        v12 = *(v36 + 8 * v9);

        v13 = __OFADD__(v9++, 1);
        if (v13)
        {
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }
      }

      if ((v7 & 0xC000000000000001) == 0)
      {
        break;
      }

      v14 = sub_2488A597C();

      if (!v14)
      {
        v29 = sub_2488A596C();
        if (!__OFADD__(v29, 1))
        {
          v30 = sub_248858E3C(v11, v29 + 1);
          v31 = v30[2];
          if (v30[3] <= v31)
          {
            sub_248859068(v31 + 1);
          }

          sub_2488A5ADC();
          swift_beginAccess();

          sub_2488A574C();

          sub_2488A5AFC();
          v32 = sub_2488A594C();
          *(v30 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << v32;
          *(v30[6] + 8 * v32) = v12;
          ++v30[2];

          v7 = v30;
          goto LABEL_47;
        }

        __break(1u);
LABEL_59:
        result = sub_2488A5AAC();
        __break(1u);
        return result;
      }

      swift_dynamicCast();

LABEL_13:
      if (v9 == v8)
      {
        return v7;
      }
    }

    sub_2488A5ADC();
    swift_beginAccess();

    sub_2488A574C();

    v15 = sub_2488A5AFC();
    v16 = ~(-1 << *(v7 + 32));
    for (i = v15 & v16; ((*(v2 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) != 0; i = (i + 1) & v16)
    {
      v1 = *(*(v7 + 48) + 8 * i);
      swift_beginAccess();
      v18 = *(v1 + 16) == *(v12 + 16) && *(v1 + 24) == *(v12 + 24);
      if (v18 || (sub_2488A5A8C() & 1) != 0)
      {

        v10 = v35;
        goto LABEL_13;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v2 = *(v7 + 16);
    v20 = *(v7 + 24);

    if (v20 <= v2)
    {
      v21 = v2 + 1;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_248859068(v21);
      }

      else
      {
        sub_2488596BC(v21);
      }

      sub_2488A5ADC();

      sub_2488A574C();

      v22 = sub_2488A5AFC();
      v2 = v7 + 56;
      v23 = -1 << *(v7 + 32);
      i = v22 & ~v23;
      if ((*(v7 + 56 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i))
      {
        v24 = ~v23;
        do
        {
          v25 = *(*(v7 + 48) + 8 * i);
          swift_beginAccess();
          v26 = *(v25 + 16) == *(v12 + 16) && *(v25 + 24) == *(v12 + 24);
          if (v26 || (sub_2488A5A8C() & 1) != 0)
          {
            goto LABEL_59;
          }

          i = (i + 1) & v24;
        }

        while (((*(v2 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) != 0);
      }
    }

    else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_24885956C();
    }

    *(v7 + ((i >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << i;
    *(*(v7 + 48) + 8 * i) = v12;
    v27 = *(v7 + 16);
    v13 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v13)
    {
      goto LABEL_56;
    }

    *(v7 + 16) = v28;

LABEL_47:
    v10 = v35;
    if (v9 != v8)
    {
      continue;
    }

    return v7;
  }
}

uint64_t sub_24885A4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for DSLightweightTagInfo();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_2488A596C();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_2488A596C();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_24885A5F4(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_2488A596C();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_2488A596C();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_248858B3C(result, 1);

  return sub_24885A4F8(v5, v3, 0);
}

uint64_t sub_24885A6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for DSLightweightTagInfo();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_2488A596C();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_2488A596C();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_24885A7E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_2488A596C();
  if (result < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v13 = sub_2488A596C();
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (v14)
  {
    goto LABEL_18;
  }

  sub_248858B3C(result, 1);

  return sub_24885A6CC(v7, v6, 1, v4);
}

unint64_t sub_24885A8D4(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a1 >> 62;
  v5 = (*a1 & 0xFFFFFFFFFFFFFF8);
  if (v4)
  {
    goto LABEL_67;
  }

  v6 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  swift_beginAccess();
  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      if (v4)
      {
        return sub_2488A596C();
      }

      else
      {
        return v5[2];
      }
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x24C1DB410](v7, v3);
    }

    else
    {
      if (v7 >= v5[2])
      {
        goto LABEL_63;
      }

      v8 = *(v3 + 8 * v7 + 32);
    }

    swift_beginAccess();
    if (*(v8 + 16) == *(a2 + 16) && *(v8 + 24) == *(a2 + 24))
    {
      break;
    }

    v10 = sub_2488A5A8C();

    if (v10)
    {
      goto LABEL_20;
    }

    v12 = __OFADD__(v7++, 1);
    if (v12)
    {
      goto LABEL_64;
    }
  }

LABEL_20:
  v13 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    v5 = a1;
    while (1)
    {
      if (v3 >> 62)
      {
        if (v13 == sub_2488A596C())
        {
          return v7;
        }
      }

      else if (v13 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return v7;
      }

      v4 = v3 & 0xC000000000000001;
      if ((v3 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x24C1DB410](v13, v3);
      }

      else
      {
        if ((v13 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          v6 = sub_2488A596C();
          goto LABEL_3;
        }

        if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_61;
        }

        v14 = *(v3 + 8 * v13 + 32);
      }

      swift_beginAccess();
      if (*(v14 + 16) == *(a2 + 16) && *(v14 + 24) == *(a2 + 24))
      {
      }

      else
      {
        v15 = sub_2488A5A8C();

        if ((v15 & 1) == 0)
        {
          if (v7 != v13)
          {
            if (v4)
            {
              v16 = MEMORY[0x24C1DB410](v7, v3);
              v17 = MEMORY[0x24C1DB410](v13, v3);
            }

            else
            {
              if ((v7 & 0x8000000000000000) != 0)
              {
                __break(1u);
LABEL_69:
                __break(1u);
LABEL_70:
                __break(1u);
                break;
              }

              v18 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v7 >= v18)
              {
                goto LABEL_69;
              }

              if (v13 >= v18)
              {
                goto LABEL_70;
              }

              v16 = *(v3 + 32 + 8 * v7);
              v17 = *(v3 + 32 + 8 * v13);
            }

            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
            {
              v3 = sub_2488588A8(v3);
              v19 = (v3 >> 62) & 1;
            }

            else
            {
              LODWORD(v19) = 0;
            }

            v4 = v3 & 0xFFFFFFFFFFFFFF8;
            *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v17;

            if ((v3 & 0x8000000000000000) != 0 || v19)
            {
              v3 = sub_2488588A8(v3);
              v4 = v3 & 0xFFFFFFFFFFFFFF8;
              if ((v13 & 0x8000000000000000) != 0)
              {
LABEL_57:
                __break(1u);
                return sub_2488A596C();
              }
            }

            else if ((v13 & 0x8000000000000000) != 0)
            {
              goto LABEL_57;
            }

            if (v13 >= *(v4 + 16))
            {
              goto LABEL_66;
            }

            *(v4 + 8 * v13 + 32) = v16;

            *a1 = v3;
          }

          v12 = __OFADD__(v7++, 1);
          if (v12)
          {
            goto LABEL_65;
          }
        }
      }

      v12 = __OFADD__(v13++, 1);
      if (v12)
      {
        goto LABEL_62;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24885ACE0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_24885AD34()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24885AD6C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FolderTintColor(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FolderTintColor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24885AF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EEB1968;
  if (!qword_27EEB1968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1968);
  }

  return result;
}

uint64_t sub_24885AFAC(unint64_t a1)
{
  if (a1 >= 8)
  {
    return 8;
  }

  else
  {
    return (0x403050102060700uLL >> (8 * a1));
  }
}

unint64_t sub_24885AFD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EEB1970;
  if (!qword_27EEB1970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1970);
  }

  return result;
}

uint64_t sub_24885B088(uint64_t a1)
{
  result = sub_2488A497C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2488A497C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2488A497C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24885B29C(uint64_t a1)
{
  sub_2488A497C();
  if (v1 <= 0x3F)
  {
    sub_24885B330(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24885B330(uint64_t a1)
{
  if (!qword_27EEB19A0)
  {
    type metadata accessor for SymbolMetadata(255);
    v1 = sub_2488A587C();
    if (!v2)
    {
      atomic_store(v1, &qword_27EEB19A0);
    }
  }
}

uint64_t sub_24885B388(uint64_t *a1, void *a2, __n128 a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (v3 || (sub_2488A5A8C() & 1) != 0)
  {

    JUMPOUT(0x24C1DA380);
  }

  return 0;
}

uint64_t sub_24885B410()
{
  sub_2488A5ADC();
  sub_2488A574C();
  return sub_2488A5AFC();
}

uint64_t sub_24885B460(uint64_t a1)
{
  sub_2488A5ADC();
  sub_2488A574C();
  return sub_2488A5AFC();
}

uint64_t sub_24885B4A0(uint64_t *a1, void *a2, uint64_t a3, __n128 a4)
{
  v7 = *a1 == *a2 && a1[1] == a2[1];
  if (!v7 && (sub_2488A5A8C() & 1) == 0 || (MEMORY[0x24C1DA380](a1 + *(a3 + 20), a2 + *(a3 + 20)) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 24);
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);

  return sub_24884F17C(v9, v10);
}

uint64_t sub_24885B5C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_248898170()
{
  sub_24883E438();
  result = sub_2488A590C();
  if (!result)
  {
    v1 = [objc_opt_self() mainBundle];

    return v1;
  }

  return result;
}

uint64_t sub_248898220@<X0>(uint64_t a1@<X0>, __int16 *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB19E0, &qword_2488A7C80);
  MEMORY[0x28223BE20](v4);
  v6 = &v54[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB19E8, &qword_2488A7C88);
  MEMORY[0x28223BE20](v7);
  v9 = &v54[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB19F0, &qword_2488A7C90);
  MEMORY[0x28223BE20](v10);
  v12 = &v54[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB19F8, &qword_2488A7C98);
  MEMORY[0x28223BE20](v13 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v54[-v15];
  v17 = *(a1 + 24);
  v18 = *(a1 + 8);
  v56 = v19;
  v57 = a2;
  if (v18)
  {
    if (v18 <= 3)
    {
      if (v18 == 1)
      {
        v20 = sub_2488A53BC();
      }

      else if (v18 == 2)
      {
        v20 = sub_2488A540C();
      }

      else
      {
        v20 = sub_2488A53AC();
      }
    }

    else if (v18 > 5)
    {
      if (v18 == 6)
      {
        v20 = sub_2488A53EC();
      }

      else
      {
        v20 = sub_2488A53CC();
      }
    }

    else if (v18 == 4)
    {
      v20 = sub_2488A53FC();
    }

    else
    {
      v20 = sub_2488A541C();
    }

    v35 = v20;
    v36 = sub_248898884(v18);
    sub_2488A4BBC();
    v37 = v59;
    v38 = v61;
    v39 = v62;
    v40 = v63;
    v41 = sub_2488A55FC();
    v43 = v42;
    v44 = sub_2488A516C();
    sub_2488A4B4C();
    v58 = 0;
    *v6 = v37 * 0.5;
    v6[1] = v37;
    *(v6 + 2) = v60;
    *(v6 + 3) = v38;
    *(v6 + 4) = v39;
    *(v6 + 5) = v40;
    *(v6 + 6) = v36;
    *(v6 + 28) = 256;
    *(v6 + 8) = v35;
    *(v6 + 36) = 256;
    *(v6 + 10) = v41;
    *(v6 + 11) = v43;
    *(v6 + 96) = v44;
    *(v6 + 13) = v45;
    *(v6 + 14) = v46;
    *(v6 + 15) = v47;
    *(v6 + 16) = v48;
    *(v6 + 136) = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1A00, &qword_2488A7CA0);
    sub_248898A00();
    sub_248898AB8();
    sub_2488A4FCC();
  }

  else
  {
    sub_2488A509C();
    *&v9[*(v7 + 56)] = 256;
    v55 = sub_2488A4FEC();
    sub_2488A4BBC();
    v21 = v59;
    v22 = v61;
    v23 = v62;
    v24 = v63;
    v25 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1A40, &qword_2488A7CC0) + 36);
    sub_248898B70(v9, v25);
    v26 = sub_2488A55FC();
    v28 = v27;
    sub_248898BE0(v9);
    v29 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1A48, &qword_2488A7CC8) + 36));
    *v29 = v26;
    v29[1] = v28;
    *v12 = v21 * 0.5;
    v12[1] = v21;
    *(v12 + 2) = v60;
    *(v12 + 3) = v22;
    *(v12 + 4) = v23;
    *(v12 + 5) = v24;
    *(v12 + 12) = v55;
    *(v12 + 26) = 256;
    LOBYTE(v23) = sub_2488A516C();
    sub_2488A4B4C();
    v30 = v12 + *(v10 + 36);
    *v30 = v23;
    *(v30 + 1) = v31;
    *(v30 + 2) = v32;
    *(v30 + 3) = v33;
    *(v30 + 4) = v34;
    v30[40] = 0;
    sub_2488527B8(v12, v6, &qword_27EEB19F0, &qword_2488A7C90);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1A00, &qword_2488A7CA0);
    sub_248898A00();
    sub_248898AB8();
    sub_2488A4FCC();
    sub_2488532FC(v12, &qword_27EEB19F0, &qword_2488A7C90);
  }

  if (v17 <= 0.0)
  {
    v49 = 2;
  }

  else
  {
    v49 = 256;
  }

  v50 = v56;
  sub_2488527B8(v16, v56, &qword_27EEB19F8, &qword_2488A7C98);
  v51 = v57;
  *v57 = v49;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1A38, &qword_2488A7CB8);
  sub_2488527B8(v50, v51 + *(v52 + 48), &qword_27EEB19F8, &qword_2488A7C98);
  sub_2488532FC(v16, &qword_27EEB19F8, &qword_2488A7C98);
  return sub_2488532FC(v50, &qword_27EEB19F8, &qword_2488A7C98);
}

uint64_t sub_248898770@<X0>(uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v22[0] = *v2;
  v22[1] = v4;
  v23 = *(v2 + 32);
  *a2 = sub_2488A55FC();
  a2[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB19C8, &qword_2488A7C68);
  sub_248898220(v22, (a2 + *(v6 + 44)));
  sub_2488A55FC();
  sub_2488A4BEC();
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB19D0, &qword_2488A7C70) + 36));
  *v7 = v19;
  v7[1] = v20;
  v7[2] = v21;
  v8 = sub_2488A516C();
  sub_2488A4B4C();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB19D8, &qword_2488A7C78);
  v18 = a2 + *(result + 36);
  *v18 = v8;
  *(v18 + 1) = v10;
  *(v18 + 2) = v12;
  *(v18 + 3) = v14;
  *(v18 + 4) = v16;
  v18[40] = 0;
  return result;
}

uint64_t sub_248898884(unsigned __int8 a1)
{
  v2 = sub_2488A558C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        sub_2488A53EC();
      }

      else
      {
        sub_2488A53CC();
      }
    }

    else if (a1 == 4)
    {
      sub_2488A53FC();
    }

    else
    {
      sub_2488A541C();
    }
  }

  else if (a1 > 1u)
  {
    if (a1 == 2)
    {
      sub_2488A540C();
    }

    else
    {
      sub_2488A53AC();
    }
  }

  else if (a1)
  {
    sub_2488A53BC();
  }

  else
  {
    sub_2488A537C();
  }

  sub_2488A53DC();
  sub_2488A557C();
  v6 = sub_2488A539C();

  (*(v3 + 8))(v5, v2);
  return v6;
}

unint64_t sub_248898A00()
{
  result = qword_27EEB1A08;
  if (!qword_27EEB1A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB19F0, &qword_2488A7C90);
    sub_24883E5F8(&qword_27EEB1A10, &qword_27EEB1A18, &qword_2488A7CA8, MEMORY[0x277CE0458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1A08);
  }

  return result;
}

unint64_t sub_248898AB8()
{
  result = qword_27EEB1A20;
  if (!qword_27EEB1A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1A00, &qword_2488A7CA0);
    sub_24883E5F8(&qword_27EEB1A28, &qword_27EEB1A30, &qword_2488A7CB0, MEMORY[0x277CE0458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1A20);
  }

  return result;
}

uint64_t sub_248898B70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB19E8, &qword_2488A7C88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_248898BE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB19E8, &qword_2488A7C88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_248898C4C()
{
  result = qword_27EEB1A50;
  if (!qword_27EEB1A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB19D8, &qword_2488A7C78);
    sub_248898CD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1A50);
  }

  return result;
}

unint64_t sub_248898CD8()
{
  result = qword_27EEB1A58;
  if (!qword_27EEB1A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB19D0, &qword_2488A7C70);
    sub_24883E5F8(&qword_27EEB1A60, &qword_27EEB1A68, &unk_2488A7CD0, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1A58);
  }

  return result;
}

uint64_t sub_248898DA4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for SymbolMetadata(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_248898E64(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SymbolMetadata(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SymbolView(uint64_t a1)
{
  result = qword_27EEB1A70;
  if (!qword_27EEB1A70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_248898F54(uint64_t a1)
{
  result = type metadata accessor for SymbolMetadata(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_248898FD8@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v135 = a2;
  v3 = sub_2488A495C();
  v119 = *(v3 - 8);
  v120 = v3;
  MEMORY[0x28223BE20](v3);
  v117 = &v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_2488A49EC();
  v118 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v114 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v116 = &v109 - v7;
  v126 = sub_2488A56BC();
  v115 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v113 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v139 = &v109 - v10;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1A90, &qword_2488A7D88);
  MEMORY[0x28223BE20](v130);
  v132 = &v109 - v11;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1A98, &qword_2488A7D90);
  MEMORY[0x28223BE20](v131);
  v112 = &v109 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1AA0, &qword_2488A7D98);
  MEMORY[0x28223BE20](v13 - 8);
  v134 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v133 = &v109 - v16;
  v17 = sub_2488A497C();
  v137 = *(v17 - 8);
  v138 = v17;
  MEMORY[0x28223BE20](v17);
  v111 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v136 = &v109 - v20;
  v141 = sub_2488A4F7C();
  v143 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v125 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v124 = &v109 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1AA8, &qword_2488A7DA0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v109 - v25;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1AB0, &qword_2488A7DA8);
  MEMORY[0x28223BE20](v123);
  v28 = (&v109 - v27);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1AB8, &qword_2488A7DB0);
  MEMORY[0x28223BE20](v144);
  v110 = &v109 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v109 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v109 - v34;
  MEMORY[0x28223BE20](v36);
  v140 = &v109 - v37;
  MEMORY[0x28223BE20](v38);
  v142 = &v109 - v39;
  v128 = sub_2488A500C();
  v127 = sub_2488A516C();
  sub_2488A4B4C();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  LOBYTE(v151[0]) = 0;
  v121 = *a1;
  v122 = a1;

  v48 = sub_2488A549C();
  v49 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1AC0, &qword_2488A7DB8) + 36));
  v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1AC8, &qword_2488A7DC0) + 28);
  v51 = *MEMORY[0x277CE1050];
  v52 = sub_2488A54AC();
  (*(*(v52 - 8) + 104))(v49 + v50, v51, v52);
  *v49 = swift_getKeyPath();
  *v28 = v48;
  v53 = sub_2488A51DC();
  (*(*(v53 - 8) + 56))(v26, 1, 1, v53);
  v54 = sub_2488A51FC();
  sub_2488532FC(v26, &qword_27EEB1AA8, &qword_2488A7DA0);
  KeyPath = swift_getKeyPath();
  v56 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1AD0, &qword_2488A7E28) + 36));
  *v56 = KeyPath;
  v56[1] = v54;
  *(v28 + *(v123 + 9)) = sub_2488A502C();
  sub_24889A120();
  sub_2488A533C();
  sub_2488532FC(v28, &qword_27EEB1AB0, &qword_2488A7DA8);
  v57 = v124;
  sub_2488A4F6C();
  sub_2488A4D7C();
  v58 = *(v143 + 8);
  v143 += 8;
  v124 = v58;
  (v58)(v57, v141);
  sub_2488532FC(v32, &qword_27EEB1AB8, &qword_2488A7DB0);
  v59 = type metadata accessor for SymbolView(0);
  v60 = v122;
  v61 = v122 + *(v59 + 24);
  v62 = type metadata accessor for SymbolMetadata(0);
  v63 = *(v137 + 16);
  v64 = &v61[*(v62 + 20)];
  v121 = v137 + 16;
  v109 = v63;
  v63(v136, v64, v138);
  v65 = sub_2488A524C();
  v67 = v66;
  LOBYTE(v54) = v68;
  sub_2488A4D6C();
  sub_24883E428(v65, v67, v54 & 1);

  v123 = v35;
  sub_2488532FC(v35, &qword_27EEB1AB8, &qword_2488A7DB0);
  v69 = *(v60 + 16);
  if (v69 == 1)
  {
    v70 = v125;
    sub_2488A4F5C();
    v71 = v141;
  }

  else
  {
    *&v151[0] = MEMORY[0x277D84F90];
    sub_24889A474(&qword_27EEB1AF8, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1B00, &qword_2488A7E40);
    sub_24883E5F8(&qword_27EEB1B08, &qword_27EEB1B00, &qword_2488A7E40, MEMORY[0x277D83970]);
    v70 = v125;
    v71 = v141;
    sub_2488A593C();
  }

  v72 = v142;
  v73 = v140;
  sub_2488A4D7C();
  (v124)(v70, v71);
  sub_2488532FC(v73, &qword_27EEB1AB8, &qword_2488A7DB0);
  if (v69)
  {
    v74 = sub_2488A501C();
    sub_2488A4BBC();
    v75 = v161;
    v76 = v162;
    v77 = v163;
    v78 = v164;
    v79 = v165;
    v80 = v166;
    v81 = sub_2488A55FC();
    v83 = v82;
    v84 = v123;
    sub_24889A348(v72, v123);
    v85 = v112;
    sub_24889A348(v84, v112);
    v86 = v85 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1B28, &qword_2488A7E50) + 48);
    *&v146 = v75 * 0.5;
    *(&v146 + 1) = v75;
    *&v147 = __PAIR64__(v77, v76);
    *(&v147 + 1) = v78;
    *&v148 = v79;
    *(&v148 + 1) = v80;
    LODWORD(v149) = v74;
    WORD2(v149) = 256;
    *(&v149 + 1) = v81;
    v150 = v83;
    *(v86 + 64) = v83;
    v87 = v147;
    *v86 = v146;
    *(v86 + 16) = v87;
    v88 = v149;
    *(v86 + 32) = v148;
    *(v86 + 48) = v88;
    v151[0] = v75 * 0.5;
    v151[1] = v75;
    v152 = v76;
    v153 = v77;
    v154 = v78;
    v155 = v79;
    v156 = v80;
    v157 = v74;
    v158 = 256;
    v159 = v81;
    v160 = v83;
    sub_2488527B8(&v146, &v145, &qword_27EEB1B30, &qword_2488A7E58);
    sub_2488532FC(v151, &qword_27EEB1B30, &qword_2488A7E58);
    sub_2488532FC(v84, &qword_27EEB1AB8, &qword_2488A7DB0);
    sub_2488527B8(v85, v132, &qword_27EEB1A98, &qword_2488A7D90);
    swift_storeEnumTagMultiPayload();
    sub_24883E5F8(&qword_27EEB1B10, &qword_27EEB1A98, &qword_2488A7D90, MEMORY[0x277CE14C0]);
    sub_24889A3B8();
    v89 = v133;
    sub_2488A4FCC();
    sub_2488532FC(v85, &qword_27EEB1A98, &qword_2488A7D90);
  }

  else
  {
    sub_2488A56AC();
    sub_24883E438();
    v90 = sub_2488A590C();
    if (!v90)
    {
      v90 = [objc_opt_self() mainBundle];
    }

    v91 = v90;
    v92 = v116;
    sub_2488A49DC();
    v93 = v115;
    (*(v115 + 16))(v113, v139, v126);
    v94 = v118;
    (*(v118 + 16))(v114, v92, v129);
    v95 = [v91 bundleURL];
    v96 = v117;
    sub_2488A49AC();

    (*(v119 + 104))(v96, *MEMORY[0x277CC9118], v120);
    v97 = v111;
    sub_2488A499C();

    (*(v94 + 8))(v92, v129);
    (*(v93 + 8))(v139, v126);
    v98 = v138;
    v109(v136, v97, v138);
    v99 = sub_2488A524C();
    v101 = v100;
    LOBYTE(v94) = v102;
    v103 = v110;
    sub_2488A4D5C();
    sub_24883E428(v99, v101, v94 & 1);

    (*(v137 + 8))(v97, v98);
    sub_24889A348(v103, v132);
    swift_storeEnumTagMultiPayload();
    sub_24883E5F8(&qword_27EEB1B10, &qword_27EEB1A98, &qword_2488A7D90, MEMORY[0x277CE14C0]);
    sub_24889A3B8();
    v89 = v133;
    sub_2488A4FCC();
    v104 = v103;
    v72 = v142;
    sub_2488532FC(v104, &qword_27EEB1AB8, &qword_2488A7DB0);
  }

  v105 = v134;
  sub_2488527B8(v89, v134, &qword_27EEB1AA0, &qword_2488A7D98);
  v106 = v135;
  *v135 = v128;
  *(v106 + 2) = 256;
  *(v106 + 8) = v127;
  *(v106 + 2) = v41;
  *(v106 + 3) = v43;
  *(v106 + 4) = v45;
  *(v106 + 5) = v47;
  *(v106 + 48) = 0;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1B20, &qword_2488A7E48);
  sub_2488527B8(v105, v106 + *(v107 + 48), &qword_27EEB1AA0, &qword_2488A7D98);
  sub_2488532FC(v89, &qword_27EEB1AA0, &qword_2488A7D98);
  sub_2488532FC(v72, &qword_27EEB1AB8, &qword_2488A7DB0);
  return sub_2488532FC(v105, &qword_27EEB1AA0, &qword_2488A7D98);
}

uint64_t sub_248899EF0@<X0>(uint64_t *a2@<X8>)
{
  *a2 = sub_2488A55FC();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1A80, &qword_2488A7D78);
  sub_248898FD8(v2, (a2 + *(v5 + 44)));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1A88, &qword_2488A7D80);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_248899F58@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_248899F80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2488A4E8C();
  *a1 = result;
  return result;
}

uint64_t sub_248899FFC(uint64_t a1)
{
  v2 = sub_2488A54AC();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_2488A4DFC();
}

uint64_t sub_24889A0C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2488A4E8C();
  *a1 = result;
  return result;
}

unint64_t sub_24889A120()
{
  result = qword_27EEB1AD8;
  if (!qword_27EEB1AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1AB0, &qword_2488A7DA8);
    sub_24889A1D8();
    sub_24883E5F8(&qword_27EEB1768, &qword_27EEB1770, &unk_2488A7440, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1AD8);
  }

  return result;
}

unint64_t sub_24889A1D8()
{
  result = qword_27EEB1AE0;
  if (!qword_27EEB1AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1AD0, &qword_2488A7E28);
    sub_24889A290();
    sub_24883E5F8(&qword_27EEB1778, &qword_27EEB1780, &unk_2488A7E30, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1AE0);
  }

  return result;
}

unint64_t sub_24889A290()
{
  result = qword_27EEB1AE8;
  if (!qword_27EEB1AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1AC0, &qword_2488A7DB8);
    sub_24883E5F8(&qword_27EEB1AF0, &qword_27EEB1AC8, &qword_2488A7DC0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1AE8);
  }

  return result;
}

uint64_t sub_24889A348(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1AB8, &qword_2488A7DB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24889A3B8()
{
  result = qword_27EEB1B18;
  if (!qword_27EEB1B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1AB8, &qword_2488A7DB0);
    sub_24889A120();
    sub_24889A474(&qword_27EEB1558, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1B18);
  }

  return result;
}

uint64_t sub_24889A474(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24889A4C0()
{
  result = qword_27EEB1B38;
  if (!qword_27EEB1B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1A88, &qword_2488A7D80);
    sub_24883E5F8(&qword_27EEB1B40, &qword_27EEB1B48, &qword_2488A7E60, MEMORY[0x277CE11A8]);
    sub_24883E5F8(&qword_27EEB1B50, &qword_27EEB1B58, &qword_2488A7E68, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1B38);
  }

  return result;
}

void sub_24889A5A4(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double **a4@<X8>, double a5@<D0>)
{
  v78 = a3;
  v84 = a5;
  v70 = a4;
  v74 = sub_2488A566C();
  MEMORY[0x28223BE20](v74);
  v73 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0.0;
  v9 = *(a2 + 16);
  v10 = *(v9 + 2);
  v72 = (v11 + 8);
  v12 = 1;
  v13 = 88;
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  v18 = 0.0;
  v76 = a2;
  v75 = a1;
  v71 = 88;
  while (2)
  {
    v19 = v13 + 56 * *&v8;
    v77 = v10;
    while (1)
    {
      v83 = v16;
      v82 = v17;
      v81 = v18;
      if (*&v8 < v10)
      {
        break;
      }

      v22 = *(a2 + 8);
      v24 = NAN;
      v25 = a2;
LABEL_17:
      v26 = *v25;
      v95[0] = INFINITY;
      if (v26 == 275)
      {
        sub_248839BF4(v95, v78, v85, v84 - v22, v24);
        v27 = v85[0];
        v28 = v85[1];
        v16 = v85[2];
        v17 = v85[3];
        v18 = v85[4];
        if (v12)
        {
          goto LABEL_3;
        }
      }

      else
      {
        v16 = 0.0;
        v18 = 1.0;
        v17 = 1.0;
        v28 = 0.0;
        v27 = 1.0;
        if (v12)
        {
LABEL_3:
          v20 = *a1;
          v14 = v27;
          if (v22 + v95[0] < *a1)
          {
            v20 = v22 + v95[0];
          }

          *a1 = v20;
          v15 = v28;
          goto LABEL_6;
        }
      }

      v29 = *&v8 - 1;
      if (__OFSUB__(*&v8, 1))
      {
        goto LABEL_32;
      }

      if ((v29 & 0x8000000000000000) != 0)
      {
        goto LABEL_33;
      }

      if (v29 >= *(v9 + 2))
      {
        goto LABEL_34;
      }

      v80 = v19;
      v30 = v73;
      sub_2488A565C();
      sub_2488A564C();
      v32 = v31;
      v33 = (*v72)(v30, v74);
      v79 = &v69;
      v85[0] = v14;
      v93 = v83;
      v94 = v15;
      v91 = v81;
      v92 = v82;
      v89 = v28;
      v90 = v27;
      v87 = v17;
      v88 = v16;
      v86 = v18;
      v82 = v8;
      v34 = MEMORY[0x277D839F8];
      v35 = *(MEMORY[0x277D839F8] - 8);
      v36 = v35[8];
      v37 = MEMORY[0x28223BE20](v33);
      v83 = *&v9;
      v38 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
      v39 = v35[2];
      v40 = v39(&v69 - v38, v85, v34, v37);
      v41 = MEMORY[0x28223BE20](v40);
      v39(&v69 - v38, &v90, v34, v41);
      v14 = *(&v69 - v38) + v32 * (*(&v69 - v38) - *(&v69 - v38));
      v42 = v35[1];
      v42(&v69 - v38, v34);
      v43 = (v42)(&v69 - v38, v34);
      v81 = COERCE_DOUBLE(&v69);
      v44 = MEMORY[0x28223BE20](v43);
      v45 = v39(&v69 - v38, &v94, v34, v44);
      v46 = MEMORY[0x28223BE20](v45);
      v39(&v69 - v38, &v89, v34, v46);
      v15 = *(&v69 - v38) + v32 * (*(&v69 - v38) - *(&v69 - v38));
      v42(&v69 - v38, v34);
      v47 = (v42)(&v69 - v38, v34);
      v81 = COERCE_DOUBLE(&v69);
      v48 = MEMORY[0x28223BE20](v47);
      v49 = v39(&v69 - v38, &v93, v34, v48);
      v50 = MEMORY[0x28223BE20](v49);
      v39(&v69 - v38, &v88, v34, v50);
      v16 = *(&v69 - v38) + v32 * (*(&v69 - v38) - *(&v69 - v38));
      v42(&v69 - v38, v34);
      v51 = (v42)(&v69 - v38, v34);
      v81 = COERCE_DOUBLE(&v69);
      v52 = MEMORY[0x28223BE20](v51);
      v53 = v39(&v69 - v38, &v92, v34, v52);
      v54 = MEMORY[0x28223BE20](v53);
      v39(&v69 - v38, &v87, v34, v54);
      v17 = *(&v69 - v38) + v32 * (*(&v69 - v38) - *(&v69 - v38));
      v42(&v69 - v38, v34);
      v55 = (v42)(&v69 - v38, v34);
      v56 = MEMORY[0x28223BE20](v55);
      v57 = (&v69 - v38);
      v58 = v39(&v69 - v38, &v91, v34, v56);
      v59 = MEMORY[0x28223BE20](v58);
      v60 = (&v69 - v38);
      *&v9 = v83;
      v39(v60, &v86, v34, v59);
      v10 = v77;
      a2 = v76;
      v18 = *v57 + v32 * (*v60 - *v57);
      v61 = v60;
      v13 = v71;
      v42(v61, v34);
      v62 = v34;
      v8 = v82;
      v42(v57, v62);
      v19 = v80;
      a1 = v75;
      *v75 = v84;
LABEL_6:
      v12 = 0;
      ++*&v8;
      v19 += 56;
      if (v10 < *&v8)
      {
        v66 = v70;
        v67 = v70[1];
        **v70 = v14;
        *v67 = v15;
        v68 = v66[3];
        *v66[2] = v16;
        *v68 = v17;
        *v66[4] = v18;
        sub_24889C7B8(v78);
        return;
      }
    }

    if ((*&v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      break;
    }

    if (*&v8 >= *(v9 + 2))
    {
      goto LABEL_31;
    }

    v21 = &v9[v19];
    v22 = *&v9[v19 - 24];
    if (v22 <= v84 && *&v9[v19 - 56] + *&v9[v19 - 48] > v84)
    {
      v24 = *(v21 - 5);
      v25 = v21 - 32;
      goto LABEL_17;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      *&v9 = COERCE_DOUBLE(sub_248858894(v9));
    }

    v63 = *(v9 + 2);
    if (v63 > *&v8)
    {
      v64 = v19;
      v65 = v63 - 1;
      memmove(&v9[v64 - 56], &v9[v64], 56 * (v63 - *&v8) - 56);
      *(v9 + 2) = v65;
      *(a2 + 16) = *&v9;
      --v10;
      continue;
    }

    break;
  }

  __break(1u);
}

void sub_24889AE44(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double **a4@<X8>, double a5@<D0>)
{
  v84 = a3;
  v91 = a5;
  v76 = a4;
  v80 = sub_2488A566C();
  MEMORY[0x28223BE20](v80);
  v79 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0.0;
  v9 = *(a2 + 16);
  v10 = *(v9 + 2);
  v78 = (v11 + 8);
  v12 = 1;
  v13 = 88;
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  v18 = 0.0;
  v19 = 0.0;
  v82 = a2;
  v81 = a1;
  v77 = 88;
  while (2)
  {
    v20 = v13 + 56 * *&v8;
    v83 = v10;
    while (1)
    {
      v90 = v15;
      v89 = v16;
      v88 = v17;
      v87 = v18;
      v86 = v19;
      if (*&v8 < v10)
      {
        break;
      }

      v23 = *(a2 + 8);
      v25 = NAN;
      v26 = a2;
LABEL_16:
      v27 = *v26;
      v104 = INFINITY;
      if (v27 == 277)
      {
        sub_24883AFB8(&v104, v84, v92, v91 - v23, v25);
        v28 = v92[0];
        v15 = v92[1];
        v16 = v92[2];
        v17 = v92[3];
        v18 = v92[4];
        v19 = v92[5];
        if (v12)
        {
          goto LABEL_3;
        }
      }

      else
      {
        v16 = 1.0;
        v19 = 0.0;
        v18 = 0.0;
        v17 = 0.0;
        v15 = 1.0;
        v28 = 1.0;
        if (v12)
        {
LABEL_3:
          v21 = *a1;
          v14 = v28;
          if (v23 + v104 < *a1)
          {
            v21 = v23 + v104;
          }

          goto LABEL_5;
        }
      }

      v29 = *&v8 - 1;
      if (__OFSUB__(*&v8, 1))
      {
        goto LABEL_31;
      }

      if ((v29 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      if (v29 >= *(v9 + 2))
      {
        goto LABEL_33;
      }

      v30 = v79;
      sub_2488A565C();
      sub_2488A564C();
      v32 = v31;
      v33 = (*v78)(v30, v80);
      v85 = &v75;
      v92[0] = v14;
      v102 = v89;
      v103 = v90;
      v100 = v87;
      v101 = v88;
      v98 = v28;
      v99 = v86;
      v96 = v16;
      v97 = v15;
      v94 = v18;
      v95 = v17;
      v93 = v19;
      v89 = v8;
      v34 = MEMORY[0x277D839F8];
      v35 = *(MEMORY[0x277D839F8] - 8);
      v36 = v35[8];
      v37 = MEMORY[0x28223BE20](v33);
      v90 = *&v9;
      v38 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
      v39 = v35[2];
      v40 = v39(&v75 - v38, v92, v34, v37);
      v41 = MEMORY[0x28223BE20](v40);
      v88 = *&v20;
      v39(&v75 - v38, &v98, v34, v41);
      v14 = *(&v75 - v38) + v32 * (*(&v75 - v38) - *(&v75 - v38));
      v42 = v35[1];
      v42(&v75 - v38, v34);
      v43 = (v42)(&v75 - v38, v34);
      v87 = COERCE_DOUBLE(&v75);
      v44 = MEMORY[0x28223BE20](v43);
      v45 = v39(&v75 - v38, &v103, v34, v44);
      v46 = MEMORY[0x28223BE20](v45);
      v39(&v75 - v38, &v97, v34, v46);
      v15 = *(&v75 - v38) + v32 * (*(&v75 - v38) - *(&v75 - v38));
      v42(&v75 - v38, v34);
      v47 = (v42)(&v75 - v38, v34);
      v87 = COERCE_DOUBLE(&v75);
      v48 = MEMORY[0x28223BE20](v47);
      v49 = v39(&v75 - v38, &v102, v34, v48);
      v50 = MEMORY[0x28223BE20](v49);
      v39(&v75 - v38, &v96, v34, v50);
      v16 = *(&v75 - v38) + v32 * (*(&v75 - v38) - *(&v75 - v38));
      v42(&v75 - v38, v34);
      v51 = (v42)(&v75 - v38, v34);
      v87 = COERCE_DOUBLE(&v75);
      v52 = MEMORY[0x28223BE20](v51);
      v53 = v39(&v75 - v38, &v101, v34, v52);
      v54 = MEMORY[0x28223BE20](v53);
      v39(&v75 - v38, &v95, v34, v54);
      v17 = *(&v75 - v38) + v32 * (*(&v75 - v38) - *(&v75 - v38));
      v42(&v75 - v38, v34);
      v55 = (v42)(&v75 - v38, v34);
      v87 = COERCE_DOUBLE(&v75);
      v56 = MEMORY[0x28223BE20](v55);
      v57 = v39(&v75 - v38, &v100, v34, v56);
      v58 = MEMORY[0x28223BE20](v57);
      v39(&v75 - v38, &v94, v34, v58);
      v18 = *(&v75 - v38) + v32 * (*(&v75 - v38) - *(&v75 - v38));
      v42(&v75 - v38, v34);
      v59 = (v42)(&v75 - v38, v34);
      v60 = MEMORY[0x28223BE20](v59);
      v61 = (&v75 - v38);
      v62 = v39(&v75 - v38, &v99, v34, v60);
      v63 = MEMORY[0x28223BE20](v62);
      v64 = (&v75 - v38);
      *&v9 = v90;
      v39(v64, &v93, v34, v63);
      v10 = v83;
      a2 = v82;
      v19 = *v61 + v32 * (*v64 - *v61);
      v65 = v64;
      v13 = v77;
      v42(v65, v34);
      v66 = v61;
      *&v20 = v88;
      v67 = v34;
      v8 = v89;
      v42(v66, v67);
      a1 = v81;
      v21 = v91;
LABEL_5:
      *a1 = v21;
      v12 = 0;
      ++*&v8;
      v20 += 56;
      if (v10 < *&v8)
      {
        v71 = v76;
        v72 = v76[1];
        **v76 = v14;
        *v72 = v15;
        v73 = v71[3];
        *v71[2] = v16;
        *v73 = v17;
        v74 = v71[5];
        *v71[4] = v18;
        *v74 = v19;
        sub_24889C7B8(v84);
        return;
      }
    }

    if ((*&v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      break;
    }

    if (*&v8 >= *(v9 + 2))
    {
      goto LABEL_30;
    }

    v22 = &v9[v20];
    v23 = *&v9[v20 - 24];
    if (v23 <= v91 && *&v9[v20 - 56] + *&v9[v20 - 48] > v91)
    {
      v25 = *(v22 - 5);
      v26 = v22 - 32;
      goto LABEL_16;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      *&v9 = COERCE_DOUBLE(sub_248858894(v9));
    }

    v68 = *(v9 + 2);
    if (v68 > *&v8)
    {
      v69 = v20;
      v70 = v68 - 1;
      memmove(&v9[v69 - 56], &v9[v69], 56 * (v68 - *&v8) - 56);
      *(v9 + 2) = v70;
      *(a2 + 16) = *&v9;
      --v10;
      continue;
    }

    break;
  }

  __break(1u);
}

void sub_24889B7EC(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double **a4@<X8>, double a5@<D0>)
{
  v113 = a3;
  v120 = a1;
  v126 = a5;
  v108 = a4;
  v111 = sub_2488A566C();
  MEMORY[0x28223BE20](v111);
  v110 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0.0;
  v8 = *(a2 + 16);
  v9 = *(v8 + 2);
  v109 = (v10 + 8);
  v11 = 2;
  v125 = 0.0;
  v124 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  v112 = a2;
  do
  {
    while (1)
    {
      if (*&v7 >= *&v9)
      {
        v21 = *(a2 + 8);
        v25 = NAN;
        v26 = a2;
        goto LABEL_19;
      }

      if ((*&v7 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if (*&v7 >= *(v8 + 2))
      {
        goto LABEL_30;
      }

      v20 = &v8[56 * *&v7];
      v21 = *(v20 + 8);
      if (v21 > v126 || *(v20 + 4) + *(v20 + 5) <= v126)
      {
        break;
      }

      v25 = *(v20 + 6);
      v26 = (v20 + 56);
LABEL_19:
      v121 = v13;
      v122 = v12;
      v123 = v15;
      v27 = *v26;
      v145 = INFINITY;
      if (v27 == 284)
      {
        sub_24883B904(&v145, v113, &v136, v126 - v21, v25);
        v28 = v136;
        v29 = v137;
        v12 = v138;
        v13 = v139;
        v30 = v140;
        v31 = v141;
        v32 = v142;
        v33 = v144;
        v34 = v143;
      }

      else
      {
        v34 = 0;
        v30 = 1.0;
        v33 = 0.0;
        v32 = 0.0;
        v31 = 0.0;
        v13 = 0.0;
        v12 = 1.0;
        v29 = 1.0;
        v28 = 1.0;
      }

      v35 = v34 & 1;
      if (v11 == 2)
      {
        v18 = v120;
        v19 = *v120;
        if (v21 + v145 < *v120)
        {
          v19 = v21 + v145;
        }
      }

      else
      {
        v36 = *&v7 - 1;
        if (__OFSUB__(*&v7, 1))
        {
          goto LABEL_31;
        }

        if ((v36 & 0x8000000000000000) != 0)
        {
          goto LABEL_32;
        }

        if (v36 >= *(v8 + 2))
        {
          goto LABEL_33;
        }

        v119 = v8;
        v116 = v13;
        v37 = v12;
        v38 = v29;
        v39 = v28;
        v114 = v30;
        v115 = v31;
        v117 = v32;
        v40 = v110;
        sub_2488A565C();
        sub_2488A564C();
        v42 = v41;
        v43 = (*v109)(v40, v111);
        v118 = &v107;
        v136 = v125;
        v137 = v124;
        v138 = v122;
        v139 = v121;
        v140 = v14;
        v141 = v123;
        v142 = v16;
        v143 = v11;
        v144 = v17;
        v127 = v39;
        v128 = v38;
        v129 = v37;
        v130 = v116;
        v131 = v114;
        v132 = v115;
        v44 = MEMORY[0x277D839F8];
        v133 = v117;
        v134[0] = v35;
        v135 = v33;
        v45 = *(MEMORY[0x277D839F8] - 8);
        v125 = v7;
        v46 = v45;
        v47 = *(v45 + 64);
        v48 = MEMORY[0x28223BE20](v43);
        v49 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
        v50 = *(v46 + 16);
        v51 = v50(&v107 - v49, &v136, v44, v48);
        v117 = COERCE_DOUBLE(&v107);
        v52 = MEMORY[0x28223BE20](v51);
        v50(&v107 - v49, &v127, v44, v52);
        v123 = *(&v107 - v49) + v42 * (*(&v107 - v49) - *(&v107 - v49));
        v124 = v9;
        v53 = *(v46 + 8);
        v53(&v107 - v49, v44);
        v54 = (v53)(&v107 - v49, v44);
        v118 = &v107;
        v55 = MEMORY[0x28223BE20](v54);
        v56 = v50(&v107 - v49, &v137, v44, v55);
        v117 = COERCE_DOUBLE(&v107);
        v57 = MEMORY[0x28223BE20](v56);
        v50(&v107 - v49, &v128, v44, v57);
        v29 = *(&v107 - v49) + v42 * (*(&v107 - v49) - *(&v107 - v49));
        v53(&v107 - v49, v44);
        v58 = (v53)(&v107 - v49, v44);
        v118 = &v107;
        v59 = MEMORY[0x28223BE20](v58);
        v60 = v50(&v107 - v49, &v138, v44, v59);
        v61 = MEMORY[0x28223BE20](v60);
        v50(&v107 - v49, &v129, v44, v61);
        v12 = *(&v107 - v49) + v42 * (*(&v107 - v49) - *(&v107 - v49));
        v53(&v107 - v49, v44);
        v62 = (v53)(&v107 - v49, v44);
        v118 = &v107;
        v63 = MEMORY[0x28223BE20](v62);
        v64 = v50(&v107 - v49, &v139, v44, v63);
        v65 = MEMORY[0x28223BE20](v64);
        v50(&v107 - v49, &v130, v44, v65);
        v13 = *(&v107 - v49) + v42 * (*(&v107 - v49) - *(&v107 - v49));
        v53(&v107 - v49, v44);
        v66 = (v53)(&v107 - v49, v44);
        v118 = &v107;
        v67 = MEMORY[0x28223BE20](v66);
        v68 = v50(&v107 - v49, &v140, v44, v67);
        v69 = MEMORY[0x28223BE20](v68);
        v50(&v107 - v49, &v131, v44, v69);
        v70 = *(&v107 - v49) + v42 * (*(&v107 - v49) - *(&v107 - v49));
        v53(&v107 - v49, v44);
        v71 = (v53)(&v107 - v49, v44);
        v118 = &v107;
        v72 = MEMORY[0x28223BE20](v71);
        v73 = v50(&v107 - v49, &v141, v44, v72);
        v74 = MEMORY[0x28223BE20](v73);
        v50(&v107 - v49, &v132, v44, v74);
        v75 = *(&v107 - v49) + v42 * (*(&v107 - v49) - *(&v107 - v49));
        v53(&v107 - v49, v44);
        v76 = (v53)(&v107 - v49, v44);
        v118 = &v107;
        v77 = MEMORY[0x28223BE20](v76);
        v121 = *&v49;
        v78 = v50(&v107 - v49, &v142, v44, v77);
        v122 = *&v50;
        v79 = MEMORY[0x28223BE20](v78);
        v50(&v107 - v49, &v133, v44, v79);
        v80 = *(&v107 - v49) + v42 * (*(&v107 - v49) - *(&v107 - v49));
        v116 = *&v53;
        v53(&v107 - v49, v44);
        v81 = (v53)(&v107 - v49, v44);
        v117 = COERCE_DOUBLE(&v107);
        v82 = MEMORY[0x277D839B0];
        v83 = *(MEMORY[0x277D839B0] - 8);
        v84 = v83[8];
        v85 = MEMORY[0x28223BE20](v81);
        v86 = (v84 + 15) & 0xFFFFFFFFFFFFFFF0;
        v87 = v83[2];
        v88 = v87(&v107 - v86, &v143, v82, v85);
        v115 = COERCE_DOUBLE(&v107);
        v89 = MEMORY[0x28223BE20](v88);
        v87(&v107 - v86, v134, v82, v89);
        LODWORD(v118) = *(&v107 - v86);
        v90 = v83[1];
        v90(&v107 - v86, v82);
        v91 = (v90)(&v107 - v86, v82);
        v92 = MEMORY[0x28223BE20](v91);
        v93 = v121;
        v94 = (&v107 - *&v121);
        v95 = MEMORY[0x277D839F8];
        v96 = v122;
        v97 = (*&v122)(&v107 - *&v121, &v144, MEMORY[0x277D839F8], v92);
        v98 = MEMORY[0x28223BE20](v97);
        v99 = (&v107 - *&v93);
        (*&v96)(v99, &v135, v95, v98);
        v33 = *v94 + v42 * (*v99 - *v94);
        v100 = v99;
        a2 = v112;
        v101 = v116;
        (*&v116)(v100, v95);
        (*&v101)(v94, v95);
        v32 = v80;
        v31 = v75;
        v30 = v70;
        v28 = v123;
        v9 = v124;
        v7 = v125;
        v8 = v119;
        v35 = v118;
        v19 = v126;
        v18 = v120;
      }

      *v18 = v19;
      ++*&v7;
      v125 = v28;
      v124 = v29;
      v14 = v30;
      v15 = v31;
      v16 = v32;
      v11 = v35;
      v17 = v33;
      if (*&v9 < *&v7)
      {
        goto LABEL_27;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_248858894(v8);
    }

    v23 = *(v8 + 2);
    if (*&v7 >= v23)
    {
      goto LABEL_34;
    }

    v24 = v23 - 1;
    memmove(&v8[56 * *&v7 + 32], &v8[56 * *&v7 + 88], 56 * (v23 - 1 - *&v7));
    *(v8 + 2) = v24;
    *(a2 + 16) = v8;
    --*&v9;
  }

  while (*&v9 >= *&v7);
LABEL_27:
  if (v11 != 2)
  {
    v102 = v108;
    v103 = v108[1];
    **v108 = v125;
    *v103 = v124;
    v104 = v102[3];
    *v102[2] = v12;
    *v104 = v13;
    v105 = v102[5];
    *v102[4] = v14;
    *v105 = v15;
    v106 = v102[7];
    *v102[6] = v16;
    *v106 = v11 & 1;
    *v102[8] = v17;
    sub_24889C7B8(v113);
    return;
  }

LABEL_35:
  __break(1u);
}

double sub_24889C5F0@<D0>(double *a1@<X0>, double *a2@<X8>, double a3@<D0>)
{
  result = *v3 + (*a1 - *v3) * a3;
  *a2 = result;
  return result;
}

uint64_t sub_24889C60C(uint64_t result, uint64_t a2, double a3)
{
  v3 = round((result - a2) * a3 + a2);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v3 < 9.22337204e18)
  {
    return v3;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_24889C670@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  result = sub_24889C60C(*a1, *v3, a3);
  *a2 = result;
  return result;
}

_BYTE *sub_24889C6A0@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X8>, double a3@<D0>)
{
  if (a3 >= 1.0)
  {
    v4 = result;
  }

  else
  {
    v4 = v3;
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_24889C6B8@<X0>(uint64_t *a2@<X8>)
{
  v4 = sub_2488A558C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2488A557C();
  v8 = sub_2488A539C();
  result = (*(v5 + 8))(v7, v4);
  *a2 = v8;
  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_24889C828(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24889C848(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 56) = v3;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_24889C8B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_24889C8FC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_24889C94C(uint64_t *a1, void *a2, uint64_t a3, double a4)
{
  v8 = sub_2488A4CBC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a3;
  v35 = a3;
  sub_2488A4C3C();
  v34 = *a1;

  sub_2488A4D3C();
  v12 = v38;
  v13 = v39;
  v40 = 0x3FF0000000000000;
  v41 = 0;
  v42 = 0;
  v43 = 0x3FF0000000000000;
  v44 = 0;
  v45 = 0;
  sub_2488A4D4C();
  sub_2488A4C6C();
  v31 = v37;
  v30 = v36;
  v32 = v12;
  v33 = v13;
  RBDrawingStateAddAffineTransformStyle();
  sub_2488A4C3C();
  sub_2488A4C6C();
  RBDrawingStateAddScaleStyle();
  sub_2488A4C3C();
  v26 = a2;
  v27 = a4;
  v28 = &v35;
  sub_2488A4D2C();
  sub_2488A4C3C();
  sub_2488A4CEC();
  v23 = a2;
  v24 = a4;
  v25 = &v35;
  sub_2488A4D2C();
  sub_2488A4C3C();
  *&v30 = v34;

  sub_2488A4C3C();
  v20 = a2;
  v21 = a4;
  v22 = &v35;
  sub_2488A4C4C();
  result = sub_2488A4C3C();
  if (qword_27EEB1010 == -1)
  {
    v15 = a2[17];
    if ((v15 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = swift_once();
  v15 = a2[17];
  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v15 < *(a2[23] + 16))
  {
    v16 = *(a2 + 9);
    sub_2488A4CAC();
    sub_2488A4D0C();
    (*(v9 + 8))(v11, v8);
    sub_2488A4C3C();
    v29 = v30;

    sub_2488A4C5C();
    sub_2488A2C24(v16, &v29, v19, v15, a2[21]);

    sub_2488A4C3C();
    v17 = sub_2488A4CEC();
    MEMORY[0x28223BE20](v17);
    *(&v18 - 4) = a2;
    *(&v18 - 3) = a4;
    *(&v18 - 2) = &v35;
    sub_2488A4D2C();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_24889CD88(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2488A4C3C();
  sub_2488A4C4C();
  if (*(a3 + 128))
  {
    v5 = sub_2488A4C3C();
    MEMORY[0x28223BE20](v5);
    sub_2488A4D2C();
  }

  v6 = sub_2488A4C3C();
  MEMORY[0x28223BE20](v6);
  return sub_2488A4D2C();
}

uint64_t sub_24889CEE0(uint64_t *a1, uint64_t a2, uint64_t a3, double a4)
{
  sub_2488A4C3C();

  sub_2488A4C5C();
  sub_2488A4C3C();
  sub_2488A4C6C();
  RBDrawingStateAddScaleStyle();
  sub_2488A4C3C();
  sub_2488A4CEC();
  sub_2488A4D2C();

  sub_2488A4C3C();
  return sub_2488A4D2C();
}

uint64_t sub_24889D048(uint64_t *a1, uint64_t a2, uint64_t a3, double a4)
{
  sub_2488A4C3C();
  sub_2488A4D2C();
  sub_2488A4C3C();

  sub_2488A4C5C();
  sub_2488A4C3C();
  sub_2488A4C6C();
  RBDrawingStateAddScaleStyle();
  sub_2488A4C3C();
  sub_2488A4CEC();
  sub_2488A4D2C();
}

uint64_t sub_24889D1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1678, &qword_2488A73A0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2488A29E8(a3, v25 - v10);
  v12 = sub_2488A58CC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2488A2A58(v11);
  }

  else
  {
    sub_2488A58BC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2488A588C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2488A572C() + 32;
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

      sub_2488A2A58(a3);

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

  sub_2488A2A58(a3);
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

uint64_t sub_24889D460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1678, &qword_2488A73A0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2488A29E8(a3, v25 - v10);
  v12 = sub_2488A58CC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2488A2A58(v11);
  }

  else
  {
    sub_2488A58BC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2488A588C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2488A572C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1C10, &qword_2488A82C0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_2488A2A58(a3);

      return v22;
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

  sub_2488A2A58(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1C10, &qword_2488A82C0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_24889D734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1678, &qword_2488A73A0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2488A29E8(a3, v25 - v10);
  v12 = sub_2488A58CC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2488A2A58(v11);
  }

  else
  {
    sub_2488A58BC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2488A588C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2488A572C() + 32;
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

      sub_2488A2A58(a3);

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

  sub_2488A2A58(a3);
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

void *TFolderAnimationOverlay.init(kind:completion:imageFetcher:contentsScale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  return sub_24889DB08(a1, a2, a3, a4, a5, a6, a7, a8, sub_2488A4940, &unk_285B4A7B8, sub_24889DA58);
}

{
  return sub_24889DB08(a1, a2, a3, a4, a5, a6, a7, a8, sub_2488A4940, &unk_285B4A808, sub_24889DC14);
}

{
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *a8 = sub_24889DD40;
  *(a8 + 8) = v16;
  *(a8 + 16) = 0;
  *(a8 + 24) = a2;
  *(a8 + 32) = a3;
  type metadata accessor for TFolderAnimationOverlay.RebarImageLoader();
  result = swift_allocObject();
  v18 = MEMORY[0x277D84F98];
  result[3] = a5;
  result[4] = v18;
  result[2] = a4;
  *(a8 + 48) = a7;
  *(a8 + 56) = result;
  *(a8 + 40) = a6;
  return result;
}

uint64_t sub_24889DA58()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v1();
  }

  return 7;
}

void *sub_24889DB08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *a9 = a10;
  *(a9 + 8) = v19;
  *(a9 + 16) = 0;
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  *(a9 + 24) = a12;
  *(a9 + 32) = v20;
  type metadata accessor for TFolderAnimationOverlay.RebarImageLoader();
  result = swift_allocObject();
  v22 = MEMORY[0x277D84F98];
  result[3] = a5;
  result[4] = v22;
  result[2] = a4;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = result;
  return result;
}

uint64_t objectdestroy_2Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24889DC14()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v1(1024.0);
  }

  return 7;
}

uint64_t sub_24889DD00(uint64_t a1)
{
  type metadata accessor for FolderAnimationModel(0);
  swift_allocObject();
  return sub_24889F1EC(a1);
}

uint64_t sub_24889DD60(double a1, double a2)
{
  v2 = a1 * a2;
  v3 = 1024.0;
  if (v2 <= 1024.0)
  {
    v3 = v2;
  }

  if (v3 <= *&qword_285B49C60)
  {
    return 0;
  }

  if (v3 <= *&qword_285B49C68)
  {
    return 1;
  }

  if (v3 <= *&qword_285B49C70)
  {
    return 2;
  }

  if (v3 <= *&qword_285B49C78)
  {
    return 3;
  }

  if (v3 <= *&qword_285B49C80)
  {
    return 4;
  }

  return 5;
}

uint64_t TFolderAnimationOverlay.body.getter()
{
  v1 = sub_2488A506C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v15[-v6];
  v8 = v0[1];
  v16 = *v0;
  v17 = v8;
  v9 = v0[3];
  v18 = v0[2];
  v19 = v9;
  type metadata accessor for FolderAnimationModel(0);
  sub_2488A0C98(&qword_27EEB1B60, type metadata accessor for FolderAnimationModel, &unk_2488A81E4);
  sub_2488A4BAC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2488A4B1C();

  sub_2488A505C();
  v10 = swift_allocObject();
  *(v10 + 16) = 0x4030000000000000;
  v11 = v17;
  *(v10 + 24) = v16;
  *(v10 + 40) = v11;
  v12 = v19;
  *(v10 + 56) = v18;
  *(v10 + 72) = v12;
  (*(v2 + 16))(v4, v7, v1);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_24889F1E0;
  *(v13 + 24) = v10;
  sub_2488A0C60(&v16, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1B70, &qword_2488A7F98);
  sub_2488A0C98(&qword_27EEB1B78, MEMORY[0x277CDE300], MEMORY[0x277CDE2F8]);
  sub_2488A0CE0();
  sub_2488A4BDC();
  return (*(v2 + 8))(v7, v1);
}

uint64_t type metadata accessor for FolderAnimationModel(uint64_t a1)
{
  result = qword_27EEB1BA8;
  if (!qword_27EEB1BA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24889E128()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2488A4B1C();

  return v1;
}

uint64_t sub_24889E19C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t (**a3)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>, double a4@<D0>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1BF0, &qword_2488A8230);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v18[-v11];
  (*(v9 + 16))(&v18[-v11], a1, v8, v10);
  v13 = (*(v9 + 80) + 88) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  v15 = a2[1];
  *(v14 + 24) = *a2;
  *(v14 + 40) = v15;
  v16 = a2[3];
  *(v14 + 56) = a2[2];
  *(v14 + 72) = v16;
  (*(v9 + 32))(v14 + v13, v12, v8);
  *a3 = sub_2488A1204;
  a3[1] = v14;
  return sub_2488A0C60(a2, v18);
}

uint64_t sub_24889E310@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v27[0] = a4;
  v27[1] = a1;
  v8 = sub_2488A4F2C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1BF0, &qword_2488A8230);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v27 - v15;
  (*(v13 + 16))(v27 - v15, a3, v12, v14);
  v17 = (*(v13 + 80) + 88) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  v19 = a2[1];
  *(v18 + 24) = *a2;
  *(v18 + 40) = v19;
  v20 = a2[3];
  *(v18 + 56) = a2[2];
  *(v18 + 72) = v20;
  (*(v13 + 32))(v18 + v17, v16, v12);
  (*(v9 + 104))(v11, *MEMORY[0x277CE00F0], v8);
  sub_2488A0C60(a2, v28);
  v21 = v27[0];
  sub_2488A552C();
  sub_2488A4BFC();
  sub_2488A4BFC();
  sub_2488A55FC();
  sub_2488A4BEC();
  v22 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1C00, &qword_2488A8240) + 36));
  v23 = v28[1];
  *v22 = v28[0];
  v22[1] = v23;
  v22[2] = v28[2];
  v24 = -a5;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1C08, &unk_2488A8248);
  v26 = (v21 + *(result + 36));
  *v26 = v24;
  v26[1] = v24;
  return result;
}

uint64_t sub_24889E5D8(uint64_t a1, uint64_t *a2, double a3, double a4, double a5)
{
  v10 = sub_2488A49CC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_2488A4C5C();
  v15 = (a2[5])(v14);
  type metadata accessor for FolderAnimationModel(0);
  sub_2488A0C98(&qword_27EEB1B60, type metadata accessor for FolderAnimationModel, &unk_2488A81E4);
  v16 = sub_2488A4BAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1BF0, &qword_2488A8230);
  sub_2488A4BCC();
  v17 = swift_allocObject();
  v18 = *(a2 + 1);
  v17[1] = *a2;
  v17[2] = v18;
  v19 = *(a2 + 3);
  v17[3] = *(a2 + 2);
  v17[4] = v19;
  v20 = a2[7];
  sub_2488A0C60(a2, v22);
  sub_2488A1860(a3 - (a5 + a5), a4 - (a5 + a5), v15, a1, v13, sub_2488A1484, v17, v20, v16);

  return (*(v11 + 8))(v13, v10);
}

void sub_24889E804(uint64_t a1, uint64_t a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1678, &qword_2488A73A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16[-v7];
  if (a1)
  {
    v9 = sub_2488A58CC();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    sub_2488A58AC();
    swift_retain_n();
    sub_2488A0C60(a2, v16);
    v10 = sub_2488A589C();
    v11 = swift_allocObject();
    v12 = MEMORY[0x277D85700];
    *(v11 + 16) = v10;
    *(v11 + 24) = v12;
    *(v11 + 32) = a1;
    v13 = *(a2 + 16);
    *(v11 + 40) = *a2;
    *(v11 + 56) = v13;
    v14 = *(a2 + 48);
    *(v11 + 72) = *(a2 + 32);
    *(v11 + 88) = v14;
    *(v11 + 104) = a3;
    sub_24889D1A0(0, 0, v8, &unk_2488A82E0, v11);
  }

  else
  {
    v15 = *(a2 + 24);
    if (v15)
    {
      v15(7, a3);
    }
  }
}

uint64_t sub_24889E994(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a1;
  *(v6 + 24) = a5;
  *(v6 + 32) = a6;
  sub_2488A58AC();
  *(v6 + 48) = sub_2488A589C();
  v8 = sub_2488A588C();

  return MEMORY[0x2822009F8](sub_24889EA30, v8, v7);
}

uint64_t sub_24889EA30()
{
  v1 = *(v0 + 4);

  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = v0[5];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2488A4B1C();

    v4 = v2(*(v0 + 2), v3);
  }

  else
  {
    v4 = 7;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 2) = v4;

  sub_2488A4B2C();
  v5 = *(v0 + 1);

  return v5();
}

uint64_t sub_24889EB5C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2488A4B1C();

  return v1;
}

uint64_t sub_24889EBD0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2488A5ADC();
  MEMORY[0x24C1DB500](v1);
  MEMORY[0x24C1DB500](v2);
  return sub_2488A5AFC();
}

uint64_t sub_24889EC2C()
{
  v1 = v0[1];
  MEMORY[0x24C1DB500](*v0);
  return MEMORY[0x24C1DB500](v1);
}

uint64_t sub_24889EC68(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_2488A5ADC();
  MEMORY[0x24C1DB500](v2);
  MEMORY[0x24C1DB500](v3);
  return sub_2488A5AFC();
}

void sub_24889ECEC(uint64_t a1, double a2)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = v2;
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  swift_beginAccess();
  if (*(v2[4] + 16))
  {
    sub_24884F660(a1, a2);
    if (v7)
    {

LABEL_9:
      swift_endAccess();

      return;
    }
  }

  v8 = v2[2];
  if (v8)
  {
    v9 = v2[3];

    sub_2488A11E0(v8, v9);
    v8(a1, sub_2488A11D4, v6, a2);
    sub_2488A11F0(v8, v9);
    v10 = sub_2488A547C();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = v4[4];
    v4[4] = 0x8000000000000000;
    sub_24884FCB0(v10, a1, a2, isUniquelyReferenced_nonNull_native);
    v4[4] = v12;
    goto LABEL_9;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_24889EEA8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = sub_2488A547C();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a2 + 32);
  *(a2 + 32) = 0x8000000000000000;
  sub_24884FCB0(v8, a3, a4, isUniquelyReferenced_nonNull_native);
  *(a2 + 32) = v11;
  return swift_endAccess();
}

uint64_t sub_24889EF48()
{
  sub_2488A11F0(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_24889EF8C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2488A4B1C();

  *a2 = v4;
  return result;
}

uint64_t sub_24889F00C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2488A4B2C();
}

uint64_t sub_24889F080@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2488A4B1C();

  *a2 = v4;
  return result;
}

uint64_t sub_24889F104(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2488A4B2C();
}

uint64_t sub_24889F17C()
{
  sub_24889F1D8(v0[3], v0[4]);
  if (v0[6])
  {
  }

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_24889F1EC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1BE8, &qword_2488A8228);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - v5;
  v7 = OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel__isPaused;
  v12 = 0;
  sub_2488A4B0C();
  (*(v4 + 32))(v1 + v7, v6, v3);
  v8 = v1 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_storage;
  *v8 = 0x7FF0000000000000;
  *(v8 + 8) = -1;
  v9 = MEMORY[0x277D84F90];
  *(v8 + 16) = 0;
  *(v8 + 24) = v9;
  *(v8 + 32) = -1;
  *(v8 + 40) = 0;
  *(v8 + 48) = v9;
  *(v8 + 56) = -1;
  *(v8 + 64) = 0;
  *(v8 + 72) = v9;
  *(v8 + 80) = -1;
  *(v8 + 88) = 0;
  *(v8 + 96) = v9;
  *(v8 + 104) = -1;
  *(v8 + 112) = 0;
  *(v8 + 120) = v9;
  *(v8 + 128) = -1;
  *(v8 + 136) = 0;
  *(v8 + 144) = v9;
  *(v8 + 152) = -1;
  *(v8 + 160) = 0;
  *(v8 + 168) = v9;
  *(v8 + 176) = -1;
  *(v8 + 184) = 0;
  *(v8 + 192) = v9;
  *(v8 + 200) = -1;
  *(v8 + 208) = 0;
  *(v8 + 216) = v9;
  *(v8 + 224) = 0;
  *(v8 + 232) = 0;
  *(v1 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_lastTime) = 0x7FF0000000000000;
  *(v1 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_mediaTime) = 0;
  swift_beginAccess();
  v11 = a1;
  type metadata accessor for FolderAnimationKind(0);
  sub_2488A4B0C();
  swift_endAccess();
  return v1;
}

uint64_t sub_24889F398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_2488A56CC();
  v5 = sub_2488A56CC();
  v6 = CFPreferencesCopyAppValue(v4, v5);

  if (v6)
  {
    v7 = CFGetTypeID(v6);
    if (v7 == CFBooleanGetTypeID())
    {
      type metadata accessor for CFBoolean(0);
      swift_unknownObjectRetain();
      v8 = swift_dynamicCastUnknownClassUnconditional();
      Value = CFBooleanGetValue(v8);

      swift_unknownObjectRelease();
      return Value != 0;
    }

    if (v7 == CFNumberGetTypeID() || v7 == CFStringGetTypeID())
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v12 = [v11 BOOLValue];
        swift_unknownObjectRelease_n();
        return v12;
      }

      swift_unknownObjectRelease_n();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return 2;
}

uint64_t sub_24889F4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 65) = a5;
  *(v5 + 40) = a1;
  *(v5 + 48) = a4;
  sub_2488A58AC();
  *(v5 + 56) = sub_2488A589C();
  v7 = sub_2488A588C();

  return MEMORY[0x2822009F8](sub_24889F588, v7, v6);
}

uint64_t sub_24889F588()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 65);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 64) = v2;
    sub_2488A4B2C();
  }

  **(v0 + 40) = Strong == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24889F65C()
{
  v1 = OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1BE0, &qword_2488A8220);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel__isPaused;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1BE8, &qword_2488A8228);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_storage + 208);
  v13[12] = *(v0 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_storage + 192);
  v14[0] = v5;
  *(v14 + 9) = *(v0 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_storage + 217);
  v6 = *(v0 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_storage + 144);
  v13[8] = *(v0 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_storage + 128);
  v13[9] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_storage + 176);
  v13[10] = *(v0 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_storage + 160);
  v13[11] = v7;
  v8 = *(v0 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_storage + 80);
  v13[4] = *(v0 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_storage + 64);
  v13[5] = v8;
  v9 = *(v0 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_storage + 112);
  v13[6] = *(v0 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_storage + 96);
  v13[7] = v9;
  v10 = *(v0 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_storage + 16);
  v13[0] = *(v0 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_storage);
  v13[1] = v10;
  v11 = *(v0 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_storage + 48);
  v13[2] = *(v0 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_storage + 32);
  v13[3] = v11;
  sub_2488A1148(v13);
  return swift_deallocClassInstance();
}

uint64_t sub_24889F7A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2488A4AFC();
  *a1 = result;
  return result;
}

uint64_t sub_24889F800(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24889F8F8;

  return v6(a1);
}

uint64_t sub_24889F8F8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_24889F9F0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_2488A57FC();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_248858A30(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_248858A30((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_2488A57DC();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_2488A575C();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_2488A575C();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_2488A57FC();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_248858A30(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_2488A57FC();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_248858A30(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_248858A30((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_2488A575C();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

unsigned __int8 *sub_24889FDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_2488A441C(a1, a2, a3);

  result = sub_2488A57EC();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_2488A0348(result, v7);
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2488A5A3C();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_2488A0348(uint64_t a1, unint64_t a2)
{
  v2 = sub_2488A57FC();
  v6 = sub_2488A03C8(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_2488A03C8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_2488A592C();
    if (!v9 || (v10 = v9, v11 = sub_2488A0520(v9, 0), v12 = sub_2488A0594(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_2488A573C();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_2488A573C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_2488A5A3C();
LABEL_4:

  return sub_2488A573C();
}

void *sub_2488A0520(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1C20, &qword_2488A82D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_2488A0594(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_2488A07B4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2488A57BC();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_2488A5A3C();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_2488A07B4(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_2488A578C();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}