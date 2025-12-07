uint64_t sub_242C401C8(char *a1, uint64_t a2)
{
  sub_242C4A58C();
  MEMORY[0x245D241C0](0xD000000000000021, 0x8000000242C4E380);
  sub_242C4A5CC();
  sub_242C39FF4(8, 0xD00000000000009ALL, 0x8000000242C4E2E0, 2036625250, 0xE400000000000000, 89, 0, 0xE000000000000000);

  sub_242C4A33C();
  sub_242C49FFC();
}

uint64_t sub_242C402FC(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9FD8, &qword_242C4C368);
  sub_242C4A2BC();
  sub_242C4A2AC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9FD0, &qword_242C4C360);
  return sub_242C4A2BC();
}

uint64_t sub_242C403E4(uint64_t *a1, uint64_t a2)
{
  sub_242C4A58C();
  MEMORY[0x245D241C0](0xD000000000000021, 0x8000000242C4E380);
  sub_242C4A5CC();
  MEMORY[0x245D241C0](46, 0xE100000000000000);
  sub_242C39FF4(8, 0xD00000000000009ALL, 0x8000000242C4E2E0, 2036625250, 0xE400000000000000, 97, 0, 0xE000000000000000);

  sub_242C4A33C();
  sub_242C49FFC();
}

uint64_t sub_242C40528(uint64_t a1, uint64_t a2, uint64_t a3)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9FD0, &qword_242C4C360);
  return sub_242C4A2BC();
}

uint64_t sub_242C40594(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v38 = MEMORY[0x277D84F98];
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_11;
  }

  do
  {
LABEL_7:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v9 >= v6)
    {

      return v1;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
  }

  while (!v5);
  v39 = v1;
  v8 = v9;
  while (1)
  {
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v8 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_242C3DA14(*(a1 + 56) + 32 * v11, v37, &qword_27ECEA078, &qword_242C4C9A8);
    *&v36 = v14;
    *(&v36 + 1) = v13;
    v33 = v36;
    v34 = v37[0];
    v35 = v37[1];
    sub_242C3DA14(&v34, &v27, &qword_27ECEA078, &qword_242C4C9A8);
    if (!v28)
    {

      sub_242C3DBF0(&v33, &qword_27ECEA080, &qword_242C4C9B0);
      result = sub_242C3DBF0(&v27, &qword_27ECEA078, &qword_242C4C9A8);
      v1 = v39;
      if (!v5)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }

    sub_242C3A5AC(&v27, v32);
    v30 = v33;
    v31[0] = v34;
    v31[1] = v35;
    sub_242C3A5AC(v32, v29);
    v1 = v39;
    v15 = *(v39 + 16);
    if (*(v39 + 24) <= v15)
    {

      sub_242C38D64(v15 + 1, 1);
      v1 = v38;
    }

    else
    {
    }

    v16 = v30;
    sub_242C4A6FC();
    sub_242C4A48C();
    result = sub_242C4A72C();
    v17 = v1 + 64;
    v18 = -1 << *(v1 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v1 + 64 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v1 + 64 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v1 + 48) + 16 * v21) = v16;
    sub_242C3A5AC(v29, (*(v1 + 56) + 32 * v21));
    ++*(v1 + 16);
    result = sub_242C3DBF0(v31, &qword_27ECEA078, &qword_242C4C9A8);
    if (!v5)
    {
      goto LABEL_7;
    }

LABEL_11:
    v39 = v1;
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v17 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_26;
    }
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_242C409AC(uint64_t a1)
{
  v2 = sub_242C49F9C();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_242C4A06C();
}

uint64_t sub_242C40AD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_242C40B20()
{
  result = qword_27ECE9FF0;
  if (!qword_27ECE9FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE9FC0, &qword_242C4C350);
    sub_242C4A40C();
    sub_242C40AD0(&qword_27ECE9FE8, MEMORY[0x277D63E70], MEMORY[0x277D63E68]);
    swift_getOpaqueTypeConformance2();
    sub_242C40C0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9FF0);
  }

  return result;
}

unint64_t sub_242C40C0C()
{
  result = qword_27ECE9FF8;
  if (!qword_27ECE9FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9FF8);
  }

  return result;
}

unint64_t sub_242C40C60()
{
  result = qword_27ECEA000;
  if (!qword_27ECEA000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA000);
  }

  return result;
}

unint64_t sub_242C40CB4()
{
  result = qword_27ECEA008;
  if (!qword_27ECEA008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA008);
  }

  return result;
}

unint64_t sub_242C40D08()
{
  result = qword_27ECEA010;
  if (!qword_27ECEA010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA010);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  sub_242C3FC5C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 240, 7);
}

unint64_t sub_242C40E04()
{
  result = qword_27ECEA018;
  if (!qword_27ECEA018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA018);
  }

  return result;
}

unint64_t sub_242C40E58()
{
  result = qword_27ECEA020;
  if (!qword_27ECEA020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA020);
  }

  return result;
}

unint64_t sub_242C40EAC()
{
  result = qword_27ECEA028;
  if (!qword_27ECEA028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA028);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CarCommandsToggleSnippetUpdateValue(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_242C40FD8(uint64_t a1, int a2)
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

uint64_t sub_242C41020(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_242C410A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_242C410F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
      *(result + 224) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

uint64_t sub_242C4118C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_242C411D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_242C4124C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_242C41294(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_242C41314(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_242C41364(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_242C413F4()
{
  result = qword_27ECEA030;
  if (!qword_27ECEA030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA030);
  }

  return result;
}

unint64_t sub_242C4144C()
{
  result = qword_27ECEA038;
  if (!qword_27ECEA038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA038);
  }

  return result;
}

unint64_t sub_242C414A4()
{
  result = qword_27ECEA040;
  if (!qword_27ECEA040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA040);
  }

  return result;
}

unint64_t sub_242C414FC()
{
  result = qword_27ECEA048;
  if (!qword_27ECEA048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA048);
  }

  return result;
}

unint64_t sub_242C41554()
{
  result = qword_27ECEA050;
  if (!qword_27ECEA050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA050);
  }

  return result;
}

unint64_t sub_242C415AC()
{
  result = qword_27ECEA058;
  if (!qword_27ECEA058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA058);
  }

  return result;
}

unint64_t sub_242C41640(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA060, &qword_242C4C990);
    v3 = sub_242C4A60C();
    v4 = a1 + 32;

    while (1)
    {
      sub_242C3DA14(v4, v13, &qword_27ECE9F68, &unk_242C4C9C0);
      result = sub_242C38A0C(v13);
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
      result = sub_242C3A5AC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_242C4177C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA088, &qword_242C4C9B8);
    v3 = sub_242C4A60C();
    v4 = a1 + 32;

    while (1)
    {
      sub_242C3DA14(v4, &v15, &qword_27ECEA070, &qword_242C4C9A0);
      v5 = v15;
      v6 = v16;
      result = sub_242C38A50(v15, v16);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_242C418E0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000015;
    v6 = 0xD000000000000011;
    if (a1 != 8)
    {
      v6 = 0xD000000000000015;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    if (a1 <= 6u)
    {
      return 0xD000000000000018;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x616D7269666E6F63;
    v2 = 0x746174536B636F6CLL;
    v3 = 0xD000000000000012;
    if (a1 == 3)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x68636E7550707061;
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

uint64_t sub_242C41A50(uint64_t a1)
{
  v2 = sub_242C433C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C41A8C(uint64_t a1)
{
  v2 = sub_242C433C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242C41AC8(uint64_t a1)
{
  v2 = sub_242C43610();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C41B04(uint64_t a1)
{
  v2 = sub_242C43610();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242C41B40(uint64_t a1)
{
  v2 = sub_242C434C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C41B7C(uint64_t a1)
{
  v2 = sub_242C434C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242C41BB8(uint64_t a1)
{
  v2 = sub_242C43370();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C41BF4(uint64_t a1)
{
  v2 = sub_242C43370();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242C41C30(uint64_t a1)
{
  v2 = sub_242C43514();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C41C6C(uint64_t a1)
{
  v2 = sub_242C43514();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242C41CB0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242C45DA4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242C41CE4(uint64_t a1)
{
  v2 = sub_242C432B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C41D20(uint64_t a1)
{
  v2 = sub_242C432B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242C41D5C(uint64_t a1)
{
  v2 = sub_242C43664();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C41D98(uint64_t a1)
{
  v2 = sub_242C43664();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242C41DD4(uint64_t a1)
{
  v2 = sub_242C435BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C41E10(uint64_t a1)
{
  v2 = sub_242C435BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242C41E4C(uint64_t a1)
{
  v2 = sub_242C43418();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C41E88(uint64_t a1)
{
  v2 = sub_242C43418();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242C41EC4(uint64_t a1)
{
  v2 = sub_242C43568();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C41F00(uint64_t a1)
{
  v2 = sub_242C43568();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242C41F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_242C4A6DC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_242C41FBC(uint64_t a1)
{
  v2 = sub_242C4346C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C41FF8(uint64_t a1)
{
  v2 = sub_242C4346C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CarCommandsSnippetsPluginModel.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA090, &qword_242C4C9D0);
  v97 = *(v2 - 8);
  v98 = v2;
  MEMORY[0x28223BE20](v2);
  v96 = &v58 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA098, &qword_242C4C9D8);
  v94 = *(v4 - 8);
  v95 = v4;
  MEMORY[0x28223BE20](v4);
  v93 = &v58 - v5;
  v99 = type metadata accessor for CarCommandsDisambiguationSnippetModel(0);
  v6 = MEMORY[0x28223BE20](v99);
  v92 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v91 = &v58 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA0A0, &qword_242C4C9E0);
  v89 = *(v9 - 8);
  v90 = v9;
  MEMORY[0x28223BE20](v9);
  v88 = &v58 - v10;
  v86 = type metadata accessor for CarCommandsGaugeSnippetModel(0);
  MEMORY[0x28223BE20](v86);
  v87 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA0A8, &qword_242C4C9E8);
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = &v58 - v12;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA0B0, &qword_242C4C9F0);
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = &v58 - v13;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA0B8, &qword_242C4C9F8);
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = &v58 - v14;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA0C0, &qword_242C4CA00);
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v74 = &v58 - v15;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA0C8, &qword_242C4CA08);
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v70 = &v58 - v16;
  v100 = type metadata accessor for CarCommandsToggleSnippetModel(0);
  v17 = MEMORY[0x28223BE20](v100);
  v71 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v69 = &v58 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v68 = &v58 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v67 = &v58 - v24;
  MEMORY[0x28223BE20](v23);
  v66 = &v58 - v25;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA0D0, &qword_242C4CA10);
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = &v58 - v26;
  v61 = type metadata accessor for CarCommandsAppPunchoutSnippetModel(0);
  MEMORY[0x28223BE20](v61);
  v62 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA0D8, &qword_242C4CA18);
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v29 = &v58 - v28;
  v30 = type metadata accessor for CarCommandsConfirmationSnippetModel(0);
  MEMORY[0x28223BE20](v30);
  v32 = &v58 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for CarCommandsSnippetsPluginModel(0);
  MEMORY[0x28223BE20](v33);
  v35 = &v58 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA0E0, &qword_242C4CA20);
  v103 = *(v36 - 8);
  v104 = v36;
  MEMORY[0x28223BE20](v36);
  v38 = &v58 - v37;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C432B8();
  v102 = v38;
  sub_242C4A74C();
  sub_242C4330C(v101, v35);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v40 = v87;
        sub_242C44DC4(v35, v87, type metadata accessor for CarCommandsGaugeSnippetModel);
        v107[21] = 7;
        sub_242C43418();
        v52 = v88;
        v42 = v104;
        v43 = v102;
        sub_242C4A67C();
        sub_242C44EBC(&qword_27ECE9B40, type metadata accessor for CarCommandsGaugeSnippetModel, &protocol conformance descriptor for CarCommandsGaugeSnippetModel);
        v53 = v90;
        sub_242C4A6AC();
        (*(v89 + 8))(v52, v53);
        v54 = type metadata accessor for CarCommandsGaugeSnippetModel;
      }

      else
      {
        if (EnumCaseMultiPayload == 8)
        {
          v40 = v91;
          sub_242C44DC4(v35, v91, type metadata accessor for CarCommandsDisambiguationSnippetModel);
          v107[22] = 8;
          sub_242C433C4();
          v46 = v93;
          v42 = v104;
          v43 = v102;
          sub_242C4A67C();
          sub_242C44EBC(&qword_27ECE9B50, type metadata accessor for CarCommandsDisambiguationSnippetModel, &protocol conformance descriptor for CarCommandsDisambiguationSnippetModel);
          v47 = v95;
          sub_242C4A6AC();
          v48 = v94;
        }

        else
        {
          v40 = v92;
          sub_242C44DC4(v35, v92, type metadata accessor for CarCommandsDisambiguationSnippetModel);
          v107[23] = 9;
          sub_242C43370();
          v46 = v96;
          v42 = v104;
          v43 = v102;
          sub_242C4A67C();
          sub_242C44EBC(&qword_27ECE9B50, type metadata accessor for CarCommandsDisambiguationSnippetModel, &protocol conformance descriptor for CarCommandsDisambiguationSnippetModel);
          v47 = v98;
          sub_242C4A6AC();
          v48 = v97;
        }

        (*(v48 + 8))(v46, v47);
        v54 = type metadata accessor for CarCommandsDisambiguationSnippetModel;
      }

      goto LABEL_22;
    }

    if (EnumCaseMultiPayload == 5)
    {
      v40 = v69;
      sub_242C44DC4(v35, v69, type metadata accessor for CarCommandsToggleSnippetModel);
      v107[19] = 5;
      sub_242C434C0();
      v41 = v80;
      v42 = v104;
      v43 = v102;
      sub_242C4A67C();
      sub_242C44EBC(&qword_27ECE9B30, type metadata accessor for CarCommandsToggleSnippetModel, &protocol conformance descriptor for CarCommandsToggleSnippetModel);
      v44 = v82;
      sub_242C4A6AC();
      v45 = &v109;
    }

    else
    {
      v40 = v71;
      sub_242C44DC4(v35, v71, type metadata accessor for CarCommandsToggleSnippetModel);
      v107[20] = 6;
      sub_242C4346C();
      v41 = v83;
      v42 = v104;
      v43 = v102;
      sub_242C4A67C();
      sub_242C44EBC(&qword_27ECE9B30, type metadata accessor for CarCommandsToggleSnippetModel, &protocol conformance descriptor for CarCommandsToggleSnippetModel);
      v44 = v85;
      sub_242C4A6AC();
      v45 = &v110;
    }

    goto LABEL_21;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v40 = v66;
      sub_242C44DC4(v35, v66, type metadata accessor for CarCommandsToggleSnippetModel);
      v107[16] = 2;
      sub_242C435BC();
      v41 = v70;
      v42 = v104;
      v43 = v102;
      sub_242C4A67C();
      sub_242C44EBC(&qword_27ECE9B30, type metadata accessor for CarCommandsToggleSnippetModel, &protocol conformance descriptor for CarCommandsToggleSnippetModel);
      v44 = v73;
      sub_242C4A6AC();
      v45 = &v104;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v40 = v67;
      sub_242C44DC4(v35, v67, type metadata accessor for CarCommandsToggleSnippetModel);
      v107[17] = 3;
      sub_242C43568();
      v41 = v74;
      v42 = v104;
      v43 = v102;
      sub_242C4A67C();
      sub_242C44EBC(&qword_27ECE9B30, type metadata accessor for CarCommandsToggleSnippetModel, &protocol conformance descriptor for CarCommandsToggleSnippetModel);
      v44 = v76;
      sub_242C4A6AC();
      v45 = v107;
    }

    else
    {
      v40 = v68;
      sub_242C44DC4(v35, v68, type metadata accessor for CarCommandsToggleSnippetModel);
      v107[18] = 4;
      sub_242C43514();
      v41 = v77;
      v42 = v104;
      v43 = v102;
      sub_242C4A67C();
      sub_242C44EBC(&qword_27ECE9B30, type metadata accessor for CarCommandsToggleSnippetModel, &protocol conformance descriptor for CarCommandsToggleSnippetModel);
      v44 = v79;
      sub_242C4A6AC();
      v45 = &v108;
    }

LABEL_21:
    (*(*(v45 - 32) + 8))(v41, v44);
    v54 = type metadata accessor for CarCommandsToggleSnippetModel;
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload)
  {
    v40 = v62;
    sub_242C44DC4(v35, v62, type metadata accessor for CarCommandsAppPunchoutSnippetModel);
    v106 = 1;
    sub_242C43610();
    v55 = v63;
    v42 = v104;
    v43 = v102;
    sub_242C4A67C();
    sub_242C44EBC(&qword_27ECE9B20, type metadata accessor for CarCommandsAppPunchoutSnippetModel, &protocol conformance descriptor for CarCommandsAppPunchoutSnippetModel);
    v56 = v65;
    sub_242C4A6AC();
    (*(v64 + 8))(v55, v56);
    v54 = type metadata accessor for CarCommandsAppPunchoutSnippetModel;
LABEL_22:
    v50 = v54;
    v51 = v40;
    goto LABEL_23;
  }

  sub_242C44DC4(v35, v32, type metadata accessor for CarCommandsConfirmationSnippetModel);
  v105 = 0;
  sub_242C43664();
  v42 = v104;
  v43 = v102;
  sub_242C4A67C();
  sub_242C44EBC(&qword_27ECE9B10, type metadata accessor for CarCommandsConfirmationSnippetModel, &protocol conformance descriptor for CarCommandsConfirmationSnippetModel);
  v49 = v60;
  sub_242C4A6AC();
  (*(v59 + 8))(v29, v49);
  v50 = type metadata accessor for CarCommandsConfirmationSnippetModel;
  v51 = v32;
LABEL_23:
  sub_242C436B8(v51, v50);
  return (*(v103 + 8))(v43, v42);
}

uint64_t type metadata accessor for CarCommandsSnippetsPluginModel(uint64_t a1)
{
  result = qword_27ECEA1B0;
  if (!qword_27ECEA1B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_242C432B8()
{
  result = qword_27ECEA0E8;
  if (!qword_27ECEA0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA0E8);
  }

  return result;
}

uint64_t sub_242C4330C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsSnippetsPluginModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_242C43370()
{
  result = qword_27ECEA0F0;
  if (!qword_27ECEA0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA0F0);
  }

  return result;
}

unint64_t sub_242C433C4()
{
  result = qword_27ECEA0F8;
  if (!qword_27ECEA0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA0F8);
  }

  return result;
}

unint64_t sub_242C43418()
{
  result = qword_27ECEA100;
  if (!qword_27ECEA100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA100);
  }

  return result;
}

unint64_t sub_242C4346C()
{
  result = qword_27ECEA108;
  if (!qword_27ECEA108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA108);
  }

  return result;
}

unint64_t sub_242C434C0()
{
  result = qword_27ECEA110;
  if (!qword_27ECEA110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA110);
  }

  return result;
}

unint64_t sub_242C43514()
{
  result = qword_27ECEA118;
  if (!qword_27ECEA118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA118);
  }

  return result;
}

unint64_t sub_242C43568()
{
  result = qword_27ECEA120;
  if (!qword_27ECEA120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA120);
  }

  return result;
}

unint64_t sub_242C435BC()
{
  result = qword_27ECEA128;
  if (!qword_27ECEA128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA128);
  }

  return result;
}

unint64_t sub_242C43610()
{
  result = qword_27ECEA130;
  if (!qword_27ECEA130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA130);
  }

  return result;
}

unint64_t sub_242C43664()
{
  result = qword_27ECEA138;
  if (!qword_27ECEA138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA138);
  }

  return result;
}

uint64_t sub_242C436B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t CarCommandsSnippetsPluginModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v146 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA140, &qword_242C4CA28);
  v138 = *(v3 - 8);
  v139 = v3;
  MEMORY[0x28223BE20](v3);
  v145 = &v109 - v4;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA148, &qword_242C4CA30);
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v144 = &v109 - v5;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA150, &qword_242C4CA38);
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v143 = &v109 - v6;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA158, &qword_242C4CA40);
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v142 = &v109 - v7;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA160, &qword_242C4CA48);
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v152 = &v109 - v8;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA168, &qword_242C4CA50);
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v151 = &v109 - v9;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA170, &qword_242C4CA58);
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v140 = &v109 - v10;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA178, &qword_242C4CA60);
  v125 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v141 = &v109 - v11;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA180, &qword_242C4CA68);
  v123 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v150 = &v109 - v12;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA188, &qword_242C4CA70);
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v148 = &v109 - v13;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA190, &qword_242C4CA78);
  v153 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v15 = &v109 - v14;
  v147 = type metadata accessor for CarCommandsSnippetsPluginModel(0);
  v16 = MEMORY[0x28223BE20](v147);
  v119 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v118 = &v109 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v117 = &v109 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v116 = &v109 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v115 = &v109 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v114 = &v109 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v109 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v109 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v109 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v109 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = &v109 - v40;
  v42 = a1[3];
  v156 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v42);
  sub_242C432B8();
  v154 = v15;
  v43 = v155;
  sub_242C4A73C();
  if (!v43)
  {
    v109 = v36;
    v110 = v33;
    v111 = v30;
    v112 = v39;
    v44 = v148;
    v46 = v150;
    v45 = v151;
    v47 = v152;
    v113 = v41;
    v155 = 0;
    v48 = v149;
    v49 = sub_242C4A66C();
    if (*(v49 + 16) != 1 || (v50 = *(v49 + 32), v50 == 10))
    {
      v57 = sub_242C4A5AC();
      swift_allocError();
      v59 = v58;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA198, &qword_242C4CA80);
      *v59 = v147;
      v60 = v154;
      sub_242C4A62C();
      sub_242C4A59C();
      (*(*(v57 - 8) + 104))(v59, *MEMORY[0x277D84160], v57);
      swift_willThrow();
      (*(v153 + 8))(v60, v48);
      goto LABEL_11;
    }

    if (*(v49 + 32) <= 4u)
    {
      if (*(v49 + 32) <= 1u)
      {
        v63 = v146;
        if (*(v49 + 32))
        {
          v158 = 1;
          sub_242C43610();
          v93 = v46;
          v95 = v154;
          v94 = v155;
          sub_242C4A61C();
          if (v94)
          {
            (*(v153 + 8))(v95, v48);
            goto LABEL_11;
          }

          type metadata accessor for CarCommandsAppPunchoutSnippetModel(0);
          sub_242C44EBC(&qword_27ECE9B18, type metadata accessor for CarCommandsAppPunchoutSnippetModel, &protocol conformance descriptor for CarCommandsAppPunchoutSnippetModel);
          v102 = v109;
          v103 = v122;
          sub_242C4A65C();
          v104 = v153;
          (*(v123 + 8))(v93, v103);
          (*(v104 + 8))(v95, v48);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v108 = v102;
        }

        else
        {
          v157 = 0;
          sub_242C43664();
          v70 = v48;
          v72 = v154;
          v71 = v155;
          sub_242C4A61C();
          if (v71)
          {
            (*(v153 + 8))(v72, v48);
            goto LABEL_11;
          }

          type metadata accessor for CarCommandsConfirmationSnippetModel(0);
          sub_242C44EBC(&qword_27ECE9B08, type metadata accessor for CarCommandsConfirmationSnippetModel, &protocol conformance descriptor for CarCommandsConfirmationSnippetModel);
          v100 = v112;
          v101 = v121;
          sub_242C4A65C();
          (*(v120 + 8))(v44, v101);
          (*(v153 + 8))(v72, v70);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v108 = v100;
        }
      }

      else
      {
        v152 = v49;
        v51 = v153;
        if (v50 != 2)
        {
          v52 = v48;
          if (v50 == 3)
          {
            v160 = 3;
            sub_242C43568();
            v53 = v140;
            v54 = v154;
            v55 = v155;
            sub_242C4A61C();
            v56 = v113;
            if (v55)
            {
              (*(v51 + 8))(v54, v52);
              swift_unknownObjectRelease();
              return __swift_destroy_boxed_opaque_existential_1(v156);
            }

            type metadata accessor for CarCommandsToggleSnippetModel(0);
            sub_242C44EBC(&qword_27ECE9B28, type metadata accessor for CarCommandsToggleSnippetModel, &protocol conformance descriptor for CarCommandsToggleSnippetModel);
            v90 = v111;
            v97 = v127;
            sub_242C4A65C();
            (*(v126 + 8))(v53, v97);
            (*(v51 + 8))(v154, v52);
            swift_unknownObjectRelease();
            goto LABEL_43;
          }

          v161 = 4;
          sub_242C43514();
          v87 = v45;
          v89 = v154;
          v88 = v155;
          sub_242C4A61C();
          v56 = v113;
          if (!v88)
          {
            type metadata accessor for CarCommandsToggleSnippetModel(0);
            sub_242C44EBC(&qword_27ECE9B28, type metadata accessor for CarCommandsToggleSnippetModel, &protocol conformance descriptor for CarCommandsToggleSnippetModel);
            v90 = v114;
            v91 = v129;
            sub_242C4A65C();
            (*(v128 + 8))(v87, v91);
            (*(v51 + 8))(v89, v52);
            swift_unknownObjectRelease();
LABEL_43:
            swift_storeEnumTagMultiPayload();
            v108 = v90;
            v63 = v146;
            goto LABEL_46;
          }

          (*(v51 + 8))(v89, v52);
LABEL_11:
          swift_unknownObjectRelease();
          return __swift_destroy_boxed_opaque_existential_1(v156);
        }

        v159 = 2;
        sub_242C435BC();
        v80 = v154;
        v79 = v155;
        sub_242C4A61C();
        if (v79)
        {
          (*(v51 + 8))(v80, v48);
          goto LABEL_11;
        }

        type metadata accessor for CarCommandsToggleSnippetModel(0);
        sub_242C44EBC(&qword_27ECE9B28, type metadata accessor for CarCommandsToggleSnippetModel, &protocol conformance descriptor for CarCommandsToggleSnippetModel);
        v81 = v110;
        v82 = v124;
        v83 = v141;
        sub_242C4A65C();
        (*(v125 + 8))(v83, v82);
        (*(v51 + 8))(v80, v48);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v108 = v81;
        v63 = v146;
      }

      v56 = v113;
      goto LABEL_46;
    }

    v62 = v48;
    if (*(v49 + 32) > 6u)
    {
      v63 = v146;
      v64 = v153;
      v65 = v154;
      if (v50 == 7)
      {
        v164 = 7;
        sub_242C43418();
        v84 = v155;
        sub_242C4A61C();
        if (!v84)
        {
          type metadata accessor for CarCommandsGaugeSnippetModel(0);
          sub_242C44EBC(&qword_27ECE9B38, type metadata accessor for CarCommandsGaugeSnippetModel, &protocol conformance descriptor for CarCommandsGaugeSnippetModel);
          v67 = v117;
          v85 = v135;
          v86 = v143;
          sub_242C4A65C();
          (*(v134 + 8))(v86, v85);
          (*(v64 + 8))(v65, v62);
          swift_unknownObjectRelease();
          goto LABEL_44;
        }
      }

      else if (v50 == 8)
      {
        v165 = 8;
        sub_242C433C4();
        v66 = v155;
        sub_242C4A61C();
        if (!v66)
        {
          type metadata accessor for CarCommandsDisambiguationSnippetModel(0);
          sub_242C44EBC(&qword_27ECE9B48, type metadata accessor for CarCommandsDisambiguationSnippetModel, &protocol conformance descriptor for CarCommandsDisambiguationSnippetModel);
          v67 = v118;
          v68 = v137;
          v69 = v144;
          sub_242C4A65C();
          (*(v136 + 8))(v69, v68);
          (*(v64 + 8))(v65, v62);
          swift_unknownObjectRelease();
LABEL_44:
          swift_storeEnumTagMultiPayload();
          v108 = v67;
          v56 = v113;
          goto LABEL_46;
        }
      }

      else
      {
        v166 = 9;
        sub_242C43370();
        v92 = v155;
        sub_242C4A61C();
        if (!v92)
        {
          type metadata accessor for CarCommandsDisambiguationSnippetModel(0);
          sub_242C44EBC(&qword_27ECE9B48, type metadata accessor for CarCommandsDisambiguationSnippetModel, &protocol conformance descriptor for CarCommandsDisambiguationSnippetModel);
          v67 = v119;
          v98 = v139;
          v99 = v145;
          sub_242C4A65C();
          (*(v138 + 8))(v99, v98);
          (*(v64 + 8))(v65, v62);
          swift_unknownObjectRelease();
          goto LABEL_44;
        }
      }

      (*(v64 + 8))(v65, v48);
      goto LABEL_11;
    }

    v74 = v153;
    v73 = v154;
    if (v50 == 5)
    {
      v162 = 5;
      sub_242C434C0();
      v75 = v47;
      v76 = v155;
      sub_242C4A61C();
      if (!v76)
      {
        type metadata accessor for CarCommandsToggleSnippetModel(0);
        sub_242C44EBC(&qword_27ECE9B28, type metadata accessor for CarCommandsToggleSnippetModel, &protocol conformance descriptor for CarCommandsToggleSnippetModel);
        v77 = v115;
        v78 = v131;
        sub_242C4A65C();
        (*(v130 + 8))(v75, v78);
        (*(v74 + 8))(v73, v62);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v108 = v77;
        v56 = v113;
        v63 = v146;
LABEL_46:
        sub_242C44DC4(v108, v56, type metadata accessor for CarCommandsSnippetsPluginModel);
        sub_242C44DC4(v56, v63, type metadata accessor for CarCommandsSnippetsPluginModel);
        return __swift_destroy_boxed_opaque_existential_1(v156);
      }
    }

    else
    {
      v163 = 6;
      sub_242C4346C();
      v96 = v155;
      sub_242C4A61C();
      if (!v96)
      {
        type metadata accessor for CarCommandsToggleSnippetModel(0);
        sub_242C44EBC(&qword_27ECE9B28, type metadata accessor for CarCommandsToggleSnippetModel, &protocol conformance descriptor for CarCommandsToggleSnippetModel);
        v105 = v116;
        v106 = v133;
        v107 = v142;
        sub_242C4A65C();
        (*(v132 + 8))(v107, v106);
        (*(v74 + 8))(v73, v62);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v108 = v105;
        v56 = v113;
        v63 = v146;
        goto LABEL_46;
      }
    }

    (*(v74 + 8))(v73, v62);
    goto LABEL_11;
  }

  return __swift_destroy_boxed_opaque_existential_1(v156);
}

uint64_t sub_242C44DC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_242C44EBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_242C44FA4(uint64_t a1)
{
  result = type metadata accessor for CarCommandsConfirmationSnippetModel(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CarCommandsAppPunchoutSnippetModel(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for CarCommandsToggleSnippetModel(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for CarCommandsGaugeSnippetModel(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for CarCommandsDisambiguationSnippetModel(319);
          if (v6 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CarCommandsSnippetsPluginModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CarCommandsSnippetsPluginModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_242C45250()
{
  result = qword_27ECEA1C0;
  if (!qword_27ECEA1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA1C0);
  }

  return result;
}

unint64_t sub_242C452A8()
{
  result = qword_27ECEA1C8;
  if (!qword_27ECEA1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA1C8);
  }

  return result;
}

unint64_t sub_242C45300()
{
  result = qword_27ECEA1D0;
  if (!qword_27ECEA1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA1D0);
  }

  return result;
}

unint64_t sub_242C45358()
{
  result = qword_27ECEA1D8;
  if (!qword_27ECEA1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA1D8);
  }

  return result;
}

unint64_t sub_242C453B0()
{
  result = qword_27ECEA1E0;
  if (!qword_27ECEA1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA1E0);
  }

  return result;
}

unint64_t sub_242C45408()
{
  result = qword_27ECEA1E8;
  if (!qword_27ECEA1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA1E8);
  }

  return result;
}

unint64_t sub_242C45460()
{
  result = qword_27ECEA1F0;
  if (!qword_27ECEA1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA1F0);
  }

  return result;
}

unint64_t sub_242C454B8()
{
  result = qword_27ECEA1F8;
  if (!qword_27ECEA1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA1F8);
  }

  return result;
}

unint64_t sub_242C45510()
{
  result = qword_27ECEA200;
  if (!qword_27ECEA200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA200);
  }

  return result;
}

unint64_t sub_242C45568()
{
  result = qword_27ECEA208;
  if (!qword_27ECEA208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA208);
  }

  return result;
}

unint64_t sub_242C455C0()
{
  result = qword_27ECEA210;
  if (!qword_27ECEA210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA210);
  }

  return result;
}

unint64_t sub_242C45618()
{
  result = qword_27ECEA218;
  if (!qword_27ECEA218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA218);
  }

  return result;
}

unint64_t sub_242C45670()
{
  result = qword_27ECEA220;
  if (!qword_27ECEA220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA220);
  }

  return result;
}

unint64_t sub_242C456C8()
{
  result = qword_27ECEA228;
  if (!qword_27ECEA228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA228);
  }

  return result;
}

unint64_t sub_242C45720()
{
  result = qword_27ECEA230;
  if (!qword_27ECEA230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA230);
  }

  return result;
}

unint64_t sub_242C45778()
{
  result = qword_27ECEA238;
  if (!qword_27ECEA238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA238);
  }

  return result;
}

unint64_t sub_242C457D0()
{
  result = qword_27ECEA240;
  if (!qword_27ECEA240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA240);
  }

  return result;
}

unint64_t sub_242C45828()
{
  result = qword_27ECEA248;
  if (!qword_27ECEA248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA248);
  }

  return result;
}

unint64_t sub_242C45880()
{
  result = qword_27ECEA250;
  if (!qword_27ECEA250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA250);
  }

  return result;
}

unint64_t sub_242C458D8()
{
  result = qword_27ECEA258;
  if (!qword_27ECEA258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA258);
  }

  return result;
}

unint64_t sub_242C45930()
{
  result = qword_27ECEA260;
  if (!qword_27ECEA260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA260);
  }

  return result;
}

unint64_t sub_242C45988()
{
  result = qword_27ECEA268;
  if (!qword_27ECEA268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA268);
  }

  return result;
}

unint64_t sub_242C459E0()
{
  result = qword_27ECEA270;
  if (!qword_27ECEA270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA270);
  }

  return result;
}

unint64_t sub_242C45A38()
{
  result = qword_27ECEA278;
  if (!qword_27ECEA278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA278);
  }

  return result;
}

unint64_t sub_242C45A90()
{
  result = qword_27ECEA280;
  if (!qword_27ECEA280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA280);
  }

  return result;
}

unint64_t sub_242C45AE8()
{
  result = qword_27ECEA288;
  if (!qword_27ECEA288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA288);
  }

  return result;
}

unint64_t sub_242C45B40()
{
  result = qword_27ECEA290;
  if (!qword_27ECEA290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA290);
  }

  return result;
}

unint64_t sub_242C45B98()
{
  result = qword_27ECEA298;
  if (!qword_27ECEA298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA298);
  }

  return result;
}

unint64_t sub_242C45BF0()
{
  result = qword_27ECEA2A0;
  if (!qword_27ECEA2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA2A0);
  }

  return result;
}

unint64_t sub_242C45C48()
{
  result = qword_27ECEA2A8;
  if (!qword_27ECEA2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA2A8);
  }

  return result;
}

unint64_t sub_242C45CA0()
{
  result = qword_27ECEA2B0;
  if (!qword_27ECEA2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA2B0);
  }

  return result;
}

unint64_t sub_242C45CF8()
{
  result = qword_27ECEA2B8;
  if (!qword_27ECEA2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA2B8);
  }

  return result;
}

unint64_t sub_242C45D50()
{
  result = qword_27ECEA2C0;
  if (!qword_27ECEA2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA2C0);
  }

  return result;
}

uint64_t sub_242C45DA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x616D7269666E6F63 && a2 == 0xEC0000006E6F6974;
  if (v4 || (sub_242C4A6DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x68636E7550707061 && a2 == 0xEB0000000074756FLL || (sub_242C4A6DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746174536B636F6CLL && a2 == 0xEF6C65646F4D7375 || (sub_242C4A6DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242C4E440 == a2 || (sub_242C4A6DC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242C4E460 == a2 || (sub_242C4A6DC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000242C4E480 == a2 || (sub_242C4A6DC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000242C4E4A0 == a2 || (sub_242C4A6DC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000242C4E4C0 == a2 || (sub_242C4A6DC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242C4E4E0 == a2 || (sub_242C4A6DC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000242C4E500 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_242C4A6DC();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

Swift::String __swiftcall SnippetModel.responseViewId()()
{
  v0 = sub_242C4A5DC();
  __break(1u);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t CarCommandsGaugeSnippet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA2C8, &qword_242C4D840);
  MEMORY[0x28223BE20](v31);
  v3 = (&v30 - v2);
  v4 = sub_242C4A40C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA2D0, &qword_242C4D848);
  v32 = *(v8 - 8);
  v33 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  v11 = *(v1 + 80);
  v12 = *(v1 + 96);
  v13 = *(v1 + 48);
  v51 = *(v1 + 64);
  v52 = v11;
  v53 = v12;
  v14 = *(v1 + 16);
  v48[0] = *v1;
  v48[1] = v14;
  v15 = *(v1 + 16);
  v49 = *(v1 + 32);
  v50 = v13;
  v54 = *(v1 + 112);
  v56 = v15;
  v16 = MEMORY[0x277D837D0];
  v17 = MEMORY[0x277D63F80];
  v46 = MEMORY[0x277D837D0];
  v47 = MEMORY[0x277D63F80];
  v45 = v15;
  if (!*(&v49 + 1))
  {
    goto LABEL_6;
  }

  v18 = HIBYTE(*(&v49 + 1)) & 0xFLL;
  if ((*(&v49 + 1) & 0x2000000000000000) == 0)
  {
    v18 = v49 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    *(&v43 + 1) = MEMORY[0x277D837D0];
    v44 = MEMORY[0x277D63F80];
    v42 = v49;
  }

  else
  {
LABEL_6:
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
  }

  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v55 = *v1;
  v37 = v16;
  v38 = v17;
  v36 = v55;
  sub_242C3FCA0(&v56, v35);
  sub_242C3FCA0(&v55, v35);
  *v3 = sub_242C4A32C();
  v3[1] = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA2D8, &unk_242C4D850);
  sub_242C46544(v48, v3 + *(v20 + 44));
  sub_242C3B974(&qword_27ECEA2E0, &qword_27ECEA2C8, &qword_242C4D840, MEMORY[0x277CE11A8]);
  v21 = sub_242C4A14C();
  sub_242C2C188(v3);
  v35[3] = MEMORY[0x277CE11C8];
  v35[4] = MEMORY[0x277D63A60];
  v35[0] = v21;
  sub_242C4A3FC();
  sub_242C46D64(&qword_27ECE9FE8, MEMORY[0x277D63E70], MEMORY[0x277D63E68]);
  sub_242C4A1DC();
  (*(v5 + 8))(v7, v4);
  v23 = *(&v52 + 1);
  v22 = v53;
  sub_242C4A44C();
  sub_242C46D64(&qword_27ECE99B0, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);

  v24 = sub_242C4A01C();
  v26 = v25;
  v27 = v34;
  (*(v32 + 32))(v34, v10, v33);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9FC0, &qword_242C4C350);
  v29 = (v27 + *(result + 36));
  *v29 = v24;
  v29[1] = v26;
  v29[2] = v23;
  v29[3] = v22;
  return result;
}

uint64_t sub_242C46544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_242C4A10C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA2E8, &unk_242C4D928);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  LODWORD(v33) = *(a1 + 48);
  v38[0] = 0x3F80000000000000;
  v31 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9D68, &qword_242C4BD40);
  sub_242C3B134();
  sub_242C46D10();
  sub_242C4A22C();
  sub_242C4A0FC();
  sub_242C3B974(&qword_27ECEA2F8, &qword_27ECEA2E8, &unk_242C4D928, MEMORY[0x277CDEFC8]);
  sub_242C46D64(&qword_27ECEA300, MEMORY[0x277CDE540], MEMORY[0x277CDE538]);
  v11 = v30;
  sub_242C4A1AC();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  v12 = sub_242C4A1FC();
  KeyPath = swift_getKeyPath();
  v14 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA308, &qword_242C4D968) + 36));
  *v14 = KeyPath;
  v14[1] = v12;
  v15 = sub_242C4A32C();
  v17 = v16;
  v18 = *(a1 + 64);
  if (v18)
  {

    v19 = sub_242C4A23C();
    sub_242C4A34C();
    v21 = v20;
    v23 = v22;
    v24 = 0x3FE51EB851EB851FLL;
    v18 = 0xC044000000000000;
  }

  else
  {
    v19 = 0;
    v24 = 0;
    v21 = 0;
    v23 = 0;
  }

  v33 = v19;
  *&v34 = v18;
  *(&v34 + 1) = v24;
  *&v35 = v24;
  *(&v35 + 1) = v21;
  *&v36 = v23;
  *(&v36 + 1) = v15;
  v37 = v17;
  v25 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA310, &qword_242C4D970) + 36);
  v26 = v36;
  *(v25 + 32) = v35;
  *(v25 + 48) = v26;
  *(v25 + 64) = v37;
  v27 = v34;
  *v25 = v33;
  *(v25 + 16) = v27;
  v38[0] = v19;
  v38[1] = 0;
  v38[2] = v18;
  v38[3] = v24;
  v38[4] = v24;
  v38[5] = v21;
  v38[6] = v23;
  v38[7] = v15;
  v38[8] = v17;
  sub_242C46E04(&v33, v32);
  return sub_242C3DBF0(v38, &qword_27ECEA318, &unk_242C4D978);
}

double sub_242C46914@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_242C4A24C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9C80, &qword_242C4B870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20[-v8];

  sub_242C4A23C();
  v10 = *MEMORY[0x277CE1020];
  v11 = sub_242C4A26C();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v9, v10, v11);
  (*(v12 + 56))(v9, 0, 1, v11);
  sub_242C4A25C();

  sub_242C3DBF0(v9, &qword_27ECE9C80, &qword_242C4B870);
  v13 = sub_242C4A1EC();
  v14 = sub_242C4A21C();
  (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
  v15 = sub_242C4A27C();
  (*(v4 + 8))(v6, v3);
  KeyPath = swift_getKeyPath();

  sub_242C4A32C();
  sub_242C49FEC();
  v20[8] = 1;
  sub_242C4A32C();
  sub_242C49FEC();
  LOBYTE(v6) = sub_242C4A12C();

  v17 = v25;
  *(a2 + 40) = v24;
  *(a2 + 56) = v17;
  *(a2 + 72) = v26;
  v18 = v22;
  *(a2 + 88) = v21;
  *a2 = v15;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = KeyPath;
  *(a2 + 32) = v14;
  *(a2 + 104) = v18;
  result = *&v23;
  *(a2 + 120) = v23;
  *(a2 + 136) = v13;
  *(a2 + 144) = v6;
  *(a2 + 145) = 256;
  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_242C46C54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_242C46C9C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_242C46D10()
{
  result = qword_27ECEA2F0;
  if (!qword_27ECEA2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA2F0);
  }

  return result;
}

uint64_t sub_242C46D64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_242C46DAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_242C4A07C();
  *a1 = result;
  return result;
}

uint64_t sub_242C46E04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA318, &unk_242C4D978);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CarCommandsAppPunchoutSnippet.init(model:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_242C4A44C();
  sub_242C47A9C(&qword_27ECE99B0, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
  a2[4] = sub_242C4A01C();
  a2[5] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  sub_242C49F1C();
  *a2 = v6;
  a2[1] = v7;
  type metadata accessor for CarCommandsAppPunchoutSnippetModel(0);
  sub_242C49F1C();
  result = sub_242C46F50(a1);
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t sub_242C46F50(uint64_t a1)
{
  v2 = type metadata accessor for CarCommandsAppPunchoutSnippetModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CarCommandsAppPunchoutSnippet.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA320, &qword_242C4D9B8);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-v3];
  v5 = v0[1];
  v10[0] = *v0;
  v10[1] = v5;
  v10[2] = v0[2];
  v6 = swift_allocObject();
  v7 = v0[1];
  v6[1] = *v0;
  v6[2] = v7;
  v6[3] = v0[2];
  sub_242C4728C(v10, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA328, &qword_242C4D9C0);
  sub_242C3B974(&qword_27ECEA330, &qword_27ECEA328, &qword_242C4D9C0, MEMORY[0x277CDF028]);
  sub_242C4A37C();
  sub_242C3B974(&qword_27ECEA338, &qword_27ECEA320, &qword_242C4D9B8, MEMORY[0x277D63B90]);
  sub_242C4A1DC();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_242C47188(_OWORD *a1)
{
  v2 = swift_allocObject();
  v3 = a1[1];
  v2[1] = *a1;
  v2[2] = v3;
  v2[3] = a1[2];
  sub_242C4728C(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA340, &qword_242C4DA70);
  sub_242C3B974(&qword_27ECEA348, &qword_27ECEA340, &qword_242C4DA70, MEMORY[0x277CDEFF0]);
  return sub_242C4A2DC();
}

uint64_t sub_242C472E0(void *a1)
{
  v2 = sub_242C49E9C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[4];
  if (v6)
  {
    v7 = v6;

    sub_242C49E8C();
    sub_242C4A41C();

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    sub_242C4A44C();
    sub_242C47A9C(&qword_27ECE99B0, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    result = sub_242C4A00C();
    __break(1u);
  }

  return result;
}

uint64_t sub_242C4744C@<X0>(uint64_t a2@<X8>)
{
  sub_242C3A334();

  result = sub_242C4A13C();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_242C474B8@<X0>(uint64_t *a2@<X8>)
{
  v19 = a2;
  v2 = sub_242C49EAC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_242C49EEC();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_242C4A35C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA350, &qword_242C4DA78);
  v11 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v13 = &v18 - v12;
  sub_242C49EDC();
  sub_242C4A36C();
  (*(v3 + 104))(v5, *MEMORY[0x277D62BD0], v2);
  v14 = sub_242C47A9C(&qword_27ECEA358, MEMORY[0x277D63B20], MEMORY[0x277D63B08]);
  sub_242C4A15C();
  (*(v3 + 8))(v5, v2);
  (*(v8 + 8))(v10, v7);
  v20 = v7;
  v21 = v14;
  swift_getOpaqueTypeConformance2();
  v15 = v18;
  v16 = sub_242C4A14C();
  result = (*(v11 + 8))(v13, v15);
  *v19 = v16;
  return result;
}

uint64_t sub_242C477D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA320, &qword_242C4D9B8);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-v3];
  v5 = v0[1];
  v10[0] = *v0;
  v10[1] = v5;
  v10[2] = v0[2];
  v6 = swift_allocObject();
  v7 = v0[1];
  v6[1] = *v0;
  v6[2] = v7;
  v6[3] = v0[2];
  sub_242C4728C(v10, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA328, &qword_242C4D9C0);
  sub_242C3B974(&qword_27ECEA330, &qword_27ECEA328, &qword_242C4D9C0, MEMORY[0x277CDF028]);
  sub_242C4A37C();
  sub_242C3B974(&qword_27ECEA338, &qword_27ECEA320, &qword_242C4D9B8, MEMORY[0x277D63B90]);
  sub_242C4A1DC();
  return (*(v2 + 8))(v4, v1);
}

uint64_t objectdestroyTm_2()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_242C47A9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_242C47B30@<X0>(uint64_t *a1@<X8>)
{
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_242C47B7C(uint64_t a1)
{
  v148 = a1;
  v144 = type metadata accessor for CarNameDisambiguationSnippet(0);
  MEMORY[0x28223BE20](v144);
  v141 = &v100 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA368, &qword_242C4DAE8);
  v143 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v142 = &v100 - v2;
  v139 = type metadata accessor for AppDisambiguationSnippet(0);
  MEMORY[0x28223BE20](v139);
  v136 = &v100 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA370, &qword_242C4DAF0);
  v138 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v137 = &v100 - v4;
  v5 = type metadata accessor for CarCommandsDisambiguationSnippetModel(0);
  MEMORY[0x28223BE20](v5 - 8);
  v146 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for PowerLevelSnippet(0);
  MEMORY[0x28223BE20](v134);
  v131 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA378, &qword_242C4DAF8);
  v133 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v132 = &v100 - v8;
  v9 = type metadata accessor for CarCommandsGaugeSnippetModel(0);
  MEMORY[0x28223BE20](v9 - 8);
  v130 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for VisibleSignalStatusSnippet(0);
  MEMORY[0x28223BE20](v128);
  v125 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA380, &qword_242C4DB00);
  v127 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v126 = &v100 - v12;
  v123 = type metadata accessor for AudibleSignalStatusSnippet(0);
  MEMORY[0x28223BE20](v123);
  v120 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA388, &qword_242C4DB08);
  v122 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v121 = &v100 - v14;
  v118 = type metadata accessor for ClimateStatusSnippet(0);
  MEMORY[0x28223BE20](v118);
  v115 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA390, &qword_242C4DB10);
  v117 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v116 = &v100 - v16;
  v113 = type metadata accessor for TrunkStatusSnippet(0);
  MEMORY[0x28223BE20](v113);
  v110 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA398, &qword_242C4DB18);
  v112 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v111 = &v100 - v18;
  v105 = type metadata accessor for LockStatusSnippet(0);
  MEMORY[0x28223BE20](v105);
  v101 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA3A0, &qword_242C4DB20);
  v104 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v102 = &v100 - v20;
  v21 = type metadata accessor for CarCommandsToggleSnippetModel(0);
  MEMORY[0x28223BE20](v21 - 8);
  v147 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA3A8, &qword_242C4DB28);
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v107 = &v100 - v23;
  v24 = type metadata accessor for CarCommandsAppPunchoutSnippetModel(0);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v100 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v103 = &v100 - v28;
  v29 = type metadata accessor for CarCommandsConfirmationSnippet(0);
  MEMORY[0x28223BE20](v29);
  v31 = &v100 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA3B0, &unk_242C4DB30);
  v100 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v34 = &v100 - v33;
  v35 = type metadata accessor for CarCommandsConfirmationSnippetModel(0);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = &v100 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for CarCommandsSnippetsPluginModel(0);
  MEMORY[0x28223BE20](v38);
  v40 = &v100 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242C49478(v148, v40, type metadata accessor for CarCommandsSnippetsPluginModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      v42 = v147;
      if (EnumCaseMultiPayload == 5)
      {
        sub_242C49410(v40, v147, type metadata accessor for CarCommandsToggleSnippetModel);
        v61 = v120;
        sub_242C49478(v42, v120, type metadata accessor for CarCommandsToggleSnippetModel);
        v62 = sub_242C494E0(&qword_27ECEA3D8, type metadata accessor for AudibleSignalStatusSnippet, &protocol conformance descriptor for AudibleSignalStatusSnippet);
        v45 = v121;
        v63 = v123;
        sub_242C4A17C();
        sub_242C49528(v61, type metadata accessor for AudibleSignalStatusSnippet);
        v149 = v63;
        v150 = v62;
        swift_getOpaqueTypeConformance2();
        v47 = v124;
        v48 = sub_242C4A14C();
        v49 = &v154;
      }

      else
      {
        sub_242C49410(v40, v147, type metadata accessor for CarCommandsToggleSnippetModel);
        v96 = v125;
        sub_242C49478(v42, v125, type metadata accessor for CarCommandsToggleSnippetModel);
        v97 = sub_242C494E0(&qword_27ECEA3D0, type metadata accessor for VisibleSignalStatusSnippet, &protocol conformance descriptor for VisibleSignalStatusSnippet);
        v45 = v126;
        v98 = v128;
        sub_242C4A17C();
        sub_242C49528(v96, type metadata accessor for VisibleSignalStatusSnippet);
        v149 = v98;
        v150 = v97;
        swift_getOpaqueTypeConformance2();
        v47 = v129;
        v48 = sub_242C4A14C();
        v49 = &v155;
      }

      goto LABEL_21;
    }

    if (EnumCaseMultiPayload != 7)
    {
      v42 = v146;
      if (EnumCaseMultiPayload == 8)
      {
        sub_242C49410(v40, v146, type metadata accessor for CarCommandsDisambiguationSnippetModel);
        v50 = v136;
        sub_242C49478(v42, v136, type metadata accessor for CarCommandsDisambiguationSnippetModel);
        v51 = sub_242C494E0(&qword_27ECEA3C0, type metadata accessor for AppDisambiguationSnippet, &protocol conformance descriptor for AppDisambiguationSnippet);
        v52 = v137;
        v53 = v139;
        sub_242C4A17C();
        sub_242C49528(v50, type metadata accessor for AppDisambiguationSnippet);
        v149 = v53;
        v150 = v51;
        swift_getOpaqueTypeConformance2();
        v54 = v140;
        v48 = sub_242C4A14C();
        v55 = v138;
      }

      else
      {
        sub_242C49410(v40, v146, type metadata accessor for CarCommandsDisambiguationSnippetModel);
        v79 = v141;
        sub_242C49478(v42, v141, type metadata accessor for CarCommandsDisambiguationSnippetModel);
        v80 = sub_242C494E0(&qword_27ECEA3B8, type metadata accessor for CarNameDisambiguationSnippet, &protocol conformance descriptor for CarNameDisambiguationSnippet);
        v52 = v142;
        v81 = v144;
        sub_242C4A17C();
        sub_242C49528(v79, type metadata accessor for CarNameDisambiguationSnippet);
        v149 = v81;
        v150 = v80;
        swift_getOpaqueTypeConformance2();
        v54 = v145;
        v48 = sub_242C4A14C();
        v55 = v143;
      }

      (*(v55 + 8))(v52, v54);
      v82 = type metadata accessor for CarCommandsDisambiguationSnippetModel;
      goto LABEL_22;
    }

    v70 = v130;
    sub_242C49410(v40, v130, type metadata accessor for CarCommandsGaugeSnippetModel);
    v71 = v131;
    sub_242C49478(v70, v131, type metadata accessor for CarCommandsGaugeSnippetModel);
    v72 = sub_242C494E0(&qword_27ECEA3C8, type metadata accessor for PowerLevelSnippet, &protocol conformance descriptor for PowerLevelSnippet);
    v73 = v132;
    v74 = v134;
    sub_242C4A17C();
    sub_242C49528(v71, type metadata accessor for PowerLevelSnippet);
    v149 = v74;
    v150 = v72;
    swift_getOpaqueTypeConformance2();
    v75 = v135;
    v48 = sub_242C4A14C();
    (*(v133 + 8))(v73, v75);
    v59 = type metadata accessor for CarCommandsGaugeSnippetModel;
    v60 = v70;
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v83 = v40;
      v84 = v103;
      sub_242C49410(v83, v103, type metadata accessor for CarCommandsAppPunchoutSnippetModel);
      sub_242C49478(v84, v27, type metadata accessor for CarCommandsAppPunchoutSnippetModel);
      sub_242C4A44C();
      sub_242C494E0(&qword_27ECE99B0, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
      v85 = sub_242C4A01C();
      v87 = v86;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
      sub_242C49F1C();
      v88 = v149;
      v89 = v150;
      sub_242C49F1C();
      sub_242C49528(v27, type metadata accessor for CarCommandsAppPunchoutSnippetModel);
      v90 = v149;
      v91 = v150;
      v149 = v88;
      v150 = v89;
      v151 = v90;
      v152 = v91;
      v153 = v85;
      v154 = v87;
      v92 = sub_242C493BC();
      v93 = v107;
      sub_242C4A17C();
      v94 = v153;

      v149 = &type metadata for CarCommandsAppPunchoutSnippet;
      v150 = v92;
      swift_getOpaqueTypeConformance2();
      v95 = v109;
      v48 = sub_242C4A14C();
      (*(v108 + 8))(v93, v95);
      v60 = v84;
      v59 = type metadata accessor for CarCommandsAppPunchoutSnippetModel;
    }

    else
    {
      sub_242C49410(v40, v37, type metadata accessor for CarCommandsConfirmationSnippetModel);
      sub_242C49478(v37, v31, type metadata accessor for CarCommandsConfirmationSnippetModel);
      v56 = &v31[*(v29 + 20)];
      sub_242C4A44C();
      sub_242C494E0(&qword_27ECE99B0, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
      *v56 = sub_242C4A01C();
      v56[1] = v57;
      v58 = sub_242C494E0(&qword_27ECEA400, type metadata accessor for CarCommandsConfirmationSnippet, &protocol conformance descriptor for CarCommandsConfirmationSnippet);
      sub_242C4A17C();
      sub_242C49528(v31, type metadata accessor for CarCommandsConfirmationSnippet);
      v149 = v29;
      v150 = v58;
      swift_getOpaqueTypeConformance2();
      v48 = sub_242C4A14C();
      (*(v100 + 8))(v34, v32);
      v59 = type metadata accessor for CarCommandsConfirmationSnippetModel;
      v60 = v37;
    }
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      v42 = v147;
      if (EnumCaseMultiPayload == 3)
      {
        sub_242C49410(v40, v147, type metadata accessor for CarCommandsToggleSnippetModel);
        v43 = v110;
        sub_242C49478(v42, v110, type metadata accessor for CarCommandsToggleSnippetModel);
        v44 = sub_242C494E0(&qword_27ECEA3E8, type metadata accessor for TrunkStatusSnippet, &protocol conformance descriptor for TrunkStatusSnippet);
        v45 = v111;
        v46 = v113;
        sub_242C4A17C();
        sub_242C49528(v43, type metadata accessor for TrunkStatusSnippet);
        v149 = v46;
        v150 = v44;
        swift_getOpaqueTypeConformance2();
        v47 = v114;
        v48 = sub_242C4A14C();
        v49 = &v144;
      }

      else
      {
        sub_242C49410(v40, v147, type metadata accessor for CarCommandsToggleSnippetModel);
        v76 = v115;
        sub_242C49478(v42, v115, type metadata accessor for CarCommandsToggleSnippetModel);
        v77 = sub_242C494E0(&qword_27ECEA3E0, type metadata accessor for ClimateStatusSnippet, "AZ\\?\bL");
        v45 = v116;
        v78 = v118;
        sub_242C4A17C();
        sub_242C49528(v76, type metadata accessor for ClimateStatusSnippet);
        v149 = v78;
        v150 = v77;
        swift_getOpaqueTypeConformance2();
        v47 = v119;
        v48 = sub_242C4A14C();
        v49 = &v149;
      }

LABEL_21:
      ((*(v49 - 32))->Description)(v45, v47);
      v82 = type metadata accessor for CarCommandsToggleSnippetModel;
LABEL_22:
      v59 = v82;
      v60 = v42;
      goto LABEL_23;
    }

    v64 = v147;
    sub_242C49410(v40, v147, type metadata accessor for CarCommandsToggleSnippetModel);
    v65 = v101;
    sub_242C49478(v64, v101, type metadata accessor for CarCommandsToggleSnippetModel);
    v66 = sub_242C494E0(&qword_27ECEA3F0, type metadata accessor for LockStatusSnippet, &protocol conformance descriptor for LockStatusSnippet);
    v67 = v102;
    v68 = v105;
    sub_242C4A17C();
    sub_242C49528(v65, type metadata accessor for LockStatusSnippet);
    v149 = v68;
    v150 = v66;
    swift_getOpaqueTypeConformance2();
    v69 = v106;
    v48 = sub_242C4A14C();
    (*(v104 + 8))(v67, v69);
    v59 = type metadata accessor for CarCommandsToggleSnippetModel;
    v60 = v64;
  }

LABEL_23:
  sub_242C49528(v60, v59);
  return v48;
}

unint64_t sub_242C493BC()
{
  result = qword_27ECEA3F8;
  if (!qword_27ECEA3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA3F8);
  }

  return result;
}

uint64_t sub_242C49410(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_242C49478(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_242C494E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_242C49528(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_242C49594(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_242C495DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_242C49648(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_242C49E9C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_242C4A58C();
  MEMORY[0x245D241C0](0xD000000000000036, 0x8000000242C4E690);

  MEMORY[0x245D241C0](a3, a4);
  sub_242C39FF4(8, 0xD00000000000009BLL, 0x8000000242C4E5F0, 0x6E6F632879646F62, 0xEE00293A746E6574, 14, v13, v14);

  if (a1)
  {
    v11 = a1;
    sub_242C49E8C();
    sub_242C4A41C();

    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    sub_242C4A44C();
    sub_242C2C7A0();
    result = sub_242C4A00C();
    __break(1u);
  }

  return result;
}

uint64_t sub_242C49854(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA408, &qword_242C4DBE8);
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - v4;
  v7 = *v1;
  v6 = *(v1 + 8);
  v9 = *(v1 + 16);
  v8 = *(v1 + 24);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA410, &unk_242C4DBF0);
  (*(*(v10 - 8) + 16))(v5, a1, v10);
  v5[*(v3 + 36)] = 0;
  v11 = swift_allocObject();
  v11[2] = v7;
  v11[3] = v6;
  v11[4] = v9;
  v11[5] = v8;
  sub_242C499C0();
  v12 = v7;

  sub_242C4A1BC();

  return sub_242C49AA4(v5);
}

unint64_t sub_242C499C0()
{
  result = qword_27ECEA418;
  if (!qword_27ECEA418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECEA408, &qword_242C4DBE8);
    sub_242C3B974(&qword_27ECEA420, &qword_27ECEA410, &unk_242C4DBF0, MEMORY[0x277CE04B0]);
    sub_242C3B974(&qword_27ECE9F08, &qword_27ECE9F10, &qword_242C4C0B8, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA418);
  }

  return result;
}

uint64_t sub_242C49AA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA408, &qword_242C4DBE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_242C49B14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsGaugeSnippetModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PowerLevelSnippet.body.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  sub_242C49F1C();
  type metadata accessor for CarCommandsGaugeSnippetModel(0);
  sub_242C49F1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  sub_242C49F1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A68, &qword_242C4AD80);
  sub_242C49F1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
  sub_242C49F1C();
  if (v6)
  {
    v2 = 0x6C69662E746C6F62;
  }

  else
  {
    v2 = 0;
  }

  if (v6)
  {
    v3 = 0xE90000000000006CLL;
  }

  else
  {
    v3 = 0;
  }

  sub_242C49F1C();
  sub_242C4A44C();
  sub_242C2C7A0();
  result = sub_242C4A01C();
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v6;
  *(a1 + 56) = v2;
  *(a1 + 64) = v3;
  *(a1 + 72) = 0x6C6C69662E726163;
  *(a1 + 80) = 0xE800000000000000;
  *(a1 + 88) = v6;
  *(a1 + 96) = v7;
  *(a1 + 104) = result;
  *(a1 + 112) = v5;
  return result;
}

uint64_t type metadata accessor for PowerLevelSnippet(uint64_t a1)
{
  result = qword_27ECEA428;
  if (!qword_27ECEA428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_242C49DBC(uint64_t a1)
{
  result = type metadata accessor for CarCommandsGaugeSnippetModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_242C49E28()
{
  result = qword_27ECEA438;
  if (!qword_27ECEA438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEA438);
  }

  return result;
}