uint64_t sub_1E48B2308(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E48B2328(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

BOOL sub_1E48B23BC(void *a1, uint64_t *a2)
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

uint64_t sub_1E48B2428@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E4997EEC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E48B245C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E48B2494()
{
  v1 = sub_1E4996F4C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1E48B256C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E48B258C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1E48B25BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1E48B25FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EDF8, &qword_1E499AFD8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E48B266C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E48B26AC()
{
  v1 = sub_1E4996A4C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1E48B2790()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

id sub_1E48B2840()
{
  v0 = sub_1E48CBCF4();

  return v0;
}

uint64_t sub_1E48B28B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 168, 7);
}

uint64_t sub_1E48B2914()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);

  return MEMORY[0x1EEE6BDD0](v0, 136, 7);
}

uint64_t sub_1E48B2974()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E48B29B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1E48B2AB4(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F688, &qword_1E499C148);
  sub_1E499733C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F690, &unk_1E499C150);
  sub_1E499733C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F680, &qword_1E499C0F0);
  sub_1E499733C();
  swift_getTupleTypeMetadata2();
  sub_1E4997D5C();
  swift_getWitnessTable();
  sub_1E4997BBC();

  return swift_getWitnessTable();
}

uint64_t sub_1E48B2BC8()
{
  MEMORY[0x1E691CF80](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E48B2C00()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E48B2C68()
{
  MEMORY[0x1E691CF80](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E48B2CA0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E48B2CF0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E4996F4C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E48B2D9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E4996F4C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E48B2E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4996F4C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 40) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_1E48B2F18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E4996F4C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 40) + 8) = a2;
  }

  return result;
}

uint64_t sub_1E48B3188()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E48B31C0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E48B320C(uint64_t a1)
{
  v1 = *(a1 + 112);
  v7[6] = *(a1 + 96);
  v7[7] = v1;
  v7[8] = *(a1 + 128);
  v8 = *(a1 + 144);
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v3 = *(a1 + 80);
  v7[4] = *(a1 + 64);
  v7[5] = v3;
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v4;
  sub_1E48CCDD4(v7, v6);
  return sub_1E48DDAE4(v7);
}

uint64_t sub_1E48B3328(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = *(a1 + 24);

  return sub_1E48E3E54(v1, v2, v3, v4);
}

uint64_t sub_1E48B33B8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 192, 7);
}

uint64_t sub_1E48B3420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4996D8C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1E48B34EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E4996D8C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

void sub_1E48B35C4(uint64_t a1, uint64_t *a2)
{
  sub_1E48F36FC();
  sub_1E4996B4C();
  __break(1u);
}

void sub_1E48B3678(uint64_t a1, uint64_t *a2)
{
  sub_1E48F37AC();
  sub_1E4996B6C();
  __break(1u);
}

uint64_t sub_1E48B36EC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E48B3724()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1E48B3774()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E48B37C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SolarPosition(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8A0, &unk_1E499D7B0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1E48B38C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SolarPosition(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8A0, &unk_1E499D7B0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1E48B39CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SolarCycle(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E48B3A38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SolarCycle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E48B3AA8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E48B3AE8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E48B3B40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SolarEvent(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E48B3BAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SolarEvent(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E48B3C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4996D8C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 4)
    {
      return v10 - 3;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1E48B3CD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E4996D8C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 3;
  }

  return result;
}

uint64_t sub_1E48B3E8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E499751C();
  *a1 = result;
  return result;
}

uint64_t sub_1E48B3F88()
{
  sub_1E4911984(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1E48B3FEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FF78, &qword_1E49A0900);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E48B40FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E48B4148()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E48B4188()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E48B41D0()
{
  v1 = (type metadata accessor for TimeString(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[11];
  v6 = sub_1E4996F4C();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[12];
  v8 = sub_1E4996D8C();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E48B4314()
{
  MEMORY[0x1E691CF80](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E48B434C()
{
  v1 = sub_1E4996F4C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1E48B4634()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E48B466C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E48B46AC()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1E48B46F4()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);

  return MEMORY[0x1EEE6BDD0](v0, 136, 7);
}

uint64_t sub_1E48B4798()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1E48B4A74(uint64_t a1, uint64_t *a2)
{
  sub_1E48C1684();
  sub_1E4996B6C();
  __break(1u);
}

double sub_1E48B4CD0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1E4926CD8(v1, v2);
}

uint64_t sub_1E48B4D10()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E48B4D48()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E48B4DE0()
{

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1E48B4E18()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E48B4E58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF804C0, &qword_1E49A2678);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E48B4ED0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E48B4F10()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E48B4F6C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1E48B4FD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4996D8C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E48B5044(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4996D8C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E48B50B4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E4996F4C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E4996D8C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1E48B51D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1E4996F4C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E4996D8C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1E48B52FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1E4996F4C();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1E48B5374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1E4996F4C();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1E48B53F8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E48B5458()
{
  v1 = (type metadata accessor for TimeString(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = (type metadata accessor for TextClockDescriptor(0) - 8);
  v6 = *(*v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v16 = *(*v5 + 64);
  v8 = v2 | v6;
  swift_unknownObjectRelease();

  v9 = v0 + v3;

  v10 = v1[11];
  v11 = sub_1E4996F4C();
  v12 = *(*(v11 - 8) + 8);
  v12(v9 + v10, v11);
  v13 = v1[12];
  v14 = sub_1E4996D8C();
  (*(*(v14 - 8) + 8))(v9 + v13, v14);
  v12(v0 + v5[7] + v7, v11);

  return MEMORY[0x1EEE6BDD0](v0, v7 + v16, v8 | 7);
}

uint64_t sub_1E48B563C()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1E48B5684()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E48B56CC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E48B5714()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = sub_1E4996D8C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E48B5858()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E48B5890()
{
  MEMORY[0x1E691CF80](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E48B58C8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E48B5908()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1E48B5994()
{

  return MEMORY[0x1EEE6BDD0](v0, 26, 7);
}

uint64_t sub_1E48B59CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E48B5A18()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF80CF0, &qword_1E49A4368);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF80CF8, &qword_1E49A4370);
  sub_1E494E2C0();
  sub_1E494E488();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E48B5AA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E499751C();
  *a1 = result;
  return result;
}

uint64_t sub_1E48B5BBC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

double sub_1E48B5BF8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1E494F830(v1, v2);
}

uint64_t sub_1E48B5CC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4996D8C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E48B5D30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4996D8C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E48B5DA0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E48B5DD8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E48B5E10()
{
  MEMORY[0x1E691CF80](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E48B5E48()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E48B5EA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E49974FC();
  *a1 = result;
  return result;
}

uint64_t sub_1E48B5F30@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1E691AD50]();
  *a1 = result;
  return result;
}

uint64_t sub_1E48B5F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ColorProviderPoint.Sample(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1E4996DBC();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 32);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1E48B6078(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ColorProviderPoint.Sample(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1E4996DBC();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 32);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1E48B6174(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E4996DBC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E48B6220(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E4996DBC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E48B62C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF810E0, &unk_1E49A5160);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1E48B6390(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF810E0, &unk_1E49A5160);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E48B64AC()
{
  v1 = type metadata accessor for ColorProviderGraph(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3 + *(v1 + 24);
  v6 = type metadata accessor for ColorProviderPoint(0);
  if (!(*(*(v6 - 1) + 48))(v5, 1, v6))
  {

    v7 = type metadata accessor for ColorProviderPoint.Sample(0);
    v8 = *(v7 + 28);
    v16 = v4;
    v9 = sub_1E4996DBC();
    v17 = v0;
    v10 = *(*(v9 - 8) + 8);
    v10(v5 + v8, v9);
    v11 = v5 + v6[5];

    v10(v11 + *(v7 + 28), v9);
    v12 = v5 + v6[6];

    v13 = *(v7 + 28);
    v3 = (v2 + 16) & ~v2;
    v10(v12 + v13, v9);
    v14 = v9;
    v4 = v16;
    v10(v5 + v6[8], v14);
    v0 = v17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF810E0, &unk_1E49A5160);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E48B66DC()
{
  v1 = (type metadata accessor for ColorProviderPoint(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v11 = *(*v1 + 64);

  v4 = type metadata accessor for ColorProviderPoint.Sample(0);
  v5 = *(v4 + 28);
  v6 = sub_1E4996DBC();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3 + v5, v6);
  v8 = v0 + v3 + v1[7];

  v7(v8 + *(v4 + 28), v6);
  v9 = v0 + v3 + v1[8];

  v7(v9 + *(v4 + 28), v6);
  v7(v0 + v3 + v1[10], v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v11, v2 | 7);
}

uint64_t sub_1E48B68A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4996DBC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1E4996D8C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1E48B69B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E4996DBC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1E4996D8C();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1E48B6ABC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E48B6AF8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E48B6B30()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E48B6B7C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E48B6BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8A0, &unk_1E499D7B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 5)
    {
      return v10 - 4;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1E48B6C90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8A0, &unk_1E499D7B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 4;
  }

  return result;
}

uint64_t sub_1E48B6D54(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for LocationAccuracy(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1E48B6E00(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LocationAccuracy(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E48B6EA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF813E0, &unk_1E49A57F0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E48B6F1C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF813E0, &unk_1E49A57F0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1E48B6FA8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E48B6FF4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E48B7090()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E48B70CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1E48B7164(uint64_t a1, uint64_t *a2)
{
  sub_1E498FC10();
  sub_1E4996B5C();
  __break(1u);
}

uint64_t sub_1E48B71EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E48B723C()
{
  MEMORY[0x1E691CF80](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E48B7274()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E48B72B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E48B7300()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E48B7338()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E48B7378()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E48B73C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E48B73F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E48B7448(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

double RadiusForRectAtAngleWithInset(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7)
{
  v12 = a6;
  v13 = fmodf(v12, 6.2832);
  v14 = v13;
  if (v13 < 0.0)
  {
    do
    {
      v14 = v14 + 6.28318531;
    }

    while (v14 < 0.0);
  }

  v15 = 1.57079633;
  if (v14 >= 1.57079633)
  {
    v16 = 3.14159265;
    if (v14 >= 3.14159265)
    {
      if (v14 < 4.71238898)
      {
        v14 = v14 + -3.14159265;
        goto LABEL_9;
      }

      v16 = 6.28318531;
    }

    v14 = v16 - v14;
  }

LABEL_9:
  v35.origin.x = a1;
  v35.origin.y = a2;
  v35.size.width = a3;
  v35.size.height = a4;
  Height = CGRectGetHeight(v35);
  v36.size.height = a4;
  v18 = Height + a7 * -2.0;
  v36.origin.x = a1;
  v36.origin.y = a2;
  v36.size.width = a3;
  v19 = CGRectGetWidth(v36) + a7 * -2.0;
  v20 = fmax((a5 - a7) * 1.52866, 0.0);
  v21 = v19 * 0.5;
  if (atan2(-(v20 - v18 * 0.5), v19 * 0.5) >= v14)
  {
    v22 = tan(v14) * v21;
LABEL_13:
    v23 = v22 * v22 + v21 * v21;
    return sqrt(v23);
  }

  v22 = v18 * 0.5;
  if (atan2(v22, v19 * 0.5 - v20) < v14)
  {
    v21 = v22 / tan(v14);
    goto LABEL_13;
  }

  v24 = 0;
  v33 = v22 - v20;
  v25 = 0.0;
  do
  {
    v26 = __sincos_stret((v25 + v15) * 0.5);
    v27 = v21 - v20 + v20 * pow(v26.__cosval, 0.622409222);
    v28 = v33 + v20 * pow(v26.__sinval, 0.622409222);
    v29 = v14 - atan2(v28, v27);
    if (v29 > 0.0)
    {
      v30 = (v25 + v15) * 0.5;
    }

    else
    {
      v30 = v25;
    }

    if (v29 < 0.0)
    {
      v15 = (v25 + v15) * 0.5;
    }

    else
    {
      v25 = v30;
    }

    if (fabs(v29) <= 0.01)
    {
      break;
    }
  }

  while (v24++ < 0x63);
  v23 = v28 * v28 + v27 * v27;
  return sqrt(v23);
}

uint64_t sub_1E48B81A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC50, &qword_1E49A4BF0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v21 = &v20 - v2;
  v3 = type metadata accessor for TextClockDescriptor(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E4996F4C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TimeString(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v7 + 56);
  v20(v0 + OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeZone, 1, 1, v6, v12);
  (*(v11 + 56))(v0 + OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__previousTimeString, 1, 1, v10);
  if (qword_1ECF7EB40 != -1)
  {
    swift_once();
  }

  sub_1E4996F3C();
  v15 = (*(v7 + 16))(&v5[*(v3 + 20)], v9, v6);
  *v5 = 0;
  MEMORY[0x1EEE9AC00](v15);
  *(&v20 - 2) = v5;
  *(&v20 - 1) = v16;
  sub_1E4939498(sub_1E48BF0E4, (&v20 - 4), v14);
  (*(v7 + 8))(v9, v6);
  sub_1E48C1504(v5, type metadata accessor for TextClockDescriptor);
  sub_1E48BF0EC(v14, v0 + OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeString);
  v17 = (v0 + OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel_contentChanged);
  *v17 = 0;
  v17[1] = 0;
  *(v0 + OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeStringObserver) = 0;
  sub_1E4996FFC();
  v18 = v21;
  sub_1E4996F3C();
  (v20)(v18, 0, 1, v6);
  sub_1E48B9930(v18);
  return v0;
}

uint64_t sub_1E48B8534(void *a1)
{
  v3 = type metadata accessor for TimeString(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeString;
  swift_beginAccess();
  sub_1E48C148C(v1 + v6, v5, type metadata accessor for TimeString);
  v7 = sub_1E48BF990(v5, a1);
  sub_1E48C1504(v5, type metadata accessor for TimeString);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1E48BFE7C(&qword_1ECF7EC58, type metadata accessor for RollingClockViewModel, &unk_1E499A2B8);
    sub_1E4996FBC();
  }

  else
  {
    sub_1E48C148C(a1, v5, type metadata accessor for TimeString);
    swift_beginAccess();
    sub_1E48BFAAC(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_1E48C1504(a1, type metadata accessor for TimeString);
}

uint64_t sub_1E48B8744()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v34 = &v31 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC50, &qword_1E49A4BF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v31 - v5;
  v7 = sub_1E4996F4C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v33 = &v31 - v11;
  swift_getKeyPath();
  v35 = v0;
  sub_1E48BFE7C(&qword_1ECF7EC58, type metadata accessor for RollingClockViewModel, &unk_1E499A2B8);
  sub_1E4996FCC();

  v12 = OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeStringObserver;
  if (*(v0 + OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeStringObserver) && (, sub_1E49981DC(), , *(v0 + v12)))
  {
    KeyPath = swift_getKeyPath();
    v31 = &v31;
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v31 - 2) = v0;
    *(&v31 - 1) = 0;
    v35 = v0;
    sub_1E4996FBC();
  }

  else
  {
    *(v0 + v12) = 0;
  }

  swift_getKeyPath();
  v35 = v0;
  sub_1E4996FCC();

  v14 = OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeZone;
  swift_beginAccess();
  sub_1E48C12D0(v1 + v14, v6, &qword_1ECF7EC50, &qword_1E49A4BF0);
  v15 = v8;
  v16 = *(v8 + 48);
  v17 = v7;
  if (v16(v6, 1, v7) == 1)
  {
    v18 = v33;
    sub_1E4996F3C();
    if (v16(v6, 1, v17) != 1)
    {
      sub_1E48C1338(v6, &qword_1ECF7EC50, &qword_1E49A4BF0);
    }
  }

  else
  {
    v18 = v33;
    (*(v8 + 32))(v33, v6, v17);
  }

  v19 = sub_1E499816C();
  (*(*(v19 - 8) + 56))(v34, 1, 1, v19);
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = *(v8 + 16);
  v22 = v32;
  v21(v32, v18, v17);
  sub_1E499814C();

  v23 = sub_1E499813C();
  v24 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v25 = v18;
  v26 = v17;
  v27 = swift_allocObject();
  v28 = MEMORY[0x1E69E85E0];
  *(v27 + 16) = v23;
  *(v27 + 24) = v28;
  (*(v15 + 32))(v27 + v24, v22, v26);
  *(v27 + ((v9 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = v20;

  v29 = sub_1E498DD1C(0, 0, v34, &unk_1E499A368, v27);
  sub_1E48B9F0C(v29);
  return (*(v15 + 8))(v25, v26);
}

uint64_t sub_1E48B8C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v6 = type metadata accessor for TimeString(0);
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815D0, &unk_1E499A370);
  v5[19] = swift_task_alloc();
  v5[20] = type metadata accessor for TextClockDescriptor(0);
  v5[21] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC68, &unk_1E49A0DE0);
  v5[22] = v7;
  v5[23] = *(v7 - 8);
  v5[24] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC70, &qword_1E499A380);
  v5[25] = v8;
  v5[26] = *(v8 - 8);
  v5[27] = swift_task_alloc();
  v5[28] = sub_1E499814C();
  v5[29] = sub_1E499813C();
  v10 = sub_1E499811C();
  v5[30] = v10;
  v5[31] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1E48B8EB0, v10, v9);
}

uint64_t sub_1E48B8EB0()
{
  if (qword_1ECF7EB40 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[12];
  v6 = qword_1ECF80790;
  v7 = *(v0[20] + 20);
  v8 = sub_1E4996F4C();
  (*(*(v8 - 8) + 16))(v4 + v7, v5, v8);
  *v4 = 0.0;
  v9 = swift_task_alloc();
  *(v9 + 16) = v6;
  *(v9 + 24) = v4;
  sub_1E491780C(v4, sub_1E48BFE74, v9, v1);

  sub_1E48C1504(v4, type metadata accessor for TextClockDescriptor);
  sub_1E499819C();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v0[32] = 0;
  v10 = sub_1E499813C();
  v0[33] = v10;
  v11 = swift_task_alloc();
  v0[34] = v11;
  *v11 = v0;
  v11[1] = sub_1E48B90C0;
  v12 = v0[25];
  v13 = v0[19];
  v14 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v13, v10, v14, v12);
}

uint64_t sub_1E48B90C0()
{
  v1 = *v0;

  v2 = *(v1 + 248);
  v3 = *(v1 + 240);

  return MEMORY[0x1EEE6DFA0](sub_1E48B9204, v3, v2);
}

uint64_t sub_1E48B9204()
{
  v1 = v0[19];
  if ((*(v0[15] + 48))(v1, 1, v0[14]) == 1)
  {
    (*(v0[26] + 8))(v0[27], v0[25]);

LABEL_23:

    v21 = v0[1];

    return v21();
  }

  sub_1E48BF0EC(v1, v0[18]);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v18 = v0[26];
    v17 = v0[27];
    v19 = v0[25];
    v20 = v0[18];

    sub_1E48C1504(v20, type metadata accessor for TimeString);
    (*(v18 + 8))(v17, v19);
    goto LABEL_23;
  }

  v3 = Strong;
  v4 = v0[17];
  v5 = v0[16];
  sub_1E48C148C(v0[18], v4, type metadata accessor for TimeString);
  v6 = OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeString;
  swift_beginAccess();
  sub_1E48C148C(v3 + v6, v5, type metadata accessor for TimeString);
  v7 = *v5 == *v4 && v5[1] == v4[1];
  if (!v7 && (sub_1E499884C() & 1) == 0)
  {
    v8 = v0[16];
    v9 = v0[17];
LABEL_27:
    v16 = v0[32];
    v23 = v0[18];
    sub_1E48C1504(v8, type metadata accessor for TimeString);
    swift_getKeyPath();
    v24 = swift_task_alloc();
    *(v24 + 16) = v3;
    *(v24 + 24) = v9;
    v0[11] = v3;
    sub_1E48BFE7C(&qword_1ECF7EC58, type metadata accessor for RollingClockViewModel, &unk_1E499A2B8);
    sub_1E4996FBC();

    sub_1E48C1504(v23, type metadata accessor for TimeString);

    goto LABEL_28;
  }

  v8 = v0[16];
  v9 = v0[17];
  if (v8[2] != v9[2] || v8[3] != v9[3])
  {
    v10 = sub_1E499884C();
    v8 = v0[16];
    v9 = v0[17];
    if ((v10 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  if (v8[4] != v9[4] || v8[5] != v9[5])
  {
    goto LABEL_27;
  }

  if (v8[6] != v9[6] || v8[7] != v9[7])
  {
    v11 = sub_1E499884C();
    v8 = v0[16];
    v9 = v0[17];
    if ((v11 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  if (v8[8] != v9[8])
  {
    goto LABEL_27;
  }

  if (v8[9] != v9[9])
  {
    goto LABEL_27;
  }

  v12 = *(v0[14] + 36);
  v13 = MEMORY[0x1E691A740](v8 + v12, v9 + v12);
  v8 = v0[16];
  v9 = v0[17];
  if ((v13 & 1) == 0)
  {
    goto LABEL_27;
  }

  v14 = sub_1E4996D2C();
  v8 = v0[16];
  v9 = v0[17];
  if ((v14 & 1) == 0)
  {
    goto LABEL_27;
  }

  v15 = v0[18];
  sub_1E48C1504(v8, type metadata accessor for TimeString);
  sub_1E48C1504(v15, type metadata accessor for TimeString);
  swift_beginAccess();
  sub_1E48BFB2C(v9, v3 + v6);
  swift_endAccess();

  v16 = v0[32];
LABEL_28:
  sub_1E48C1504(v0[17], type metadata accessor for TimeString);
  v0[32] = v16;
  v25 = sub_1E499813C();
  v0[33] = v25;
  v26 = swift_task_alloc();
  v0[34] = v26;
  *v26 = v0;
  v26[1] = sub_1E48B90C0;
  v27 = v0[25];
  v28 = v0[19];
  v29 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v28, v25, v29, v27);
}

uint64_t sub_1E48B96D4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1E48BFE7C(&qword_1ECF7EC58, type metadata accessor for RollingClockViewModel, &unk_1E499A2B8);
  sub_1E4996FCC();

  v3 = OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeZone;
  swift_beginAccess();
  return sub_1E48C12D0(v5 + v3, a1, &qword_1ECF7EC50, &qword_1E49A4BF0);
}

uint64_t sub_1E48B97AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E48BFE7C(&qword_1ECF7EC58, type metadata accessor for RollingClockViewModel, &unk_1E499A2B8);
  sub_1E4996FCC();

  v4 = OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeZone;
  swift_beginAccess();
  return sub_1E48C12D0(v3 + v4, a2, &qword_1ECF7EC50, &qword_1E49A4BF0);
}

uint64_t sub_1E48B9884(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC50, &qword_1E49A4BF0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1E48C12D0(a1, &v6 - v3, &qword_1ECF7EC50, &qword_1E49A4BF0);
  return sub_1E48B9930(v4);
}

uint64_t sub_1E48B9930(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC50, &qword_1E49A4BF0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeZone;
  swift_beginAccess();
  sub_1E48C12D0(v1 + v6, v5, &qword_1ECF7EC50, &qword_1E49A4BF0);
  v7 = sub_1E48BF670(v5, a1);
  sub_1E48C1338(v5, &qword_1ECF7EC50, &qword_1E49A4BF0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1E48BFE7C(&qword_1ECF7EC58, type metadata accessor for RollingClockViewModel, &unk_1E499A2B8);
    sub_1E4996FBC();
  }

  else
  {
    sub_1E48C12D0(a1, v5, &qword_1ECF7EC50, &qword_1E49A4BF0);
    swift_beginAccess();
    sub_1E48BFB90(v5, v1 + v6);
    swift_endAccess();
    sub_1E48B8744();
    sub_1E48C1338(v5, &qword_1ECF7EC50, &qword_1E49A4BF0);
  }

  return sub_1E48C1338(a1, &qword_1ECF7EC50, &qword_1E49A4BF0);
}

uint64_t sub_1E48B9B44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC50, &qword_1E49A4BF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1E48C12D0(a2, &v9 - v5, &qword_1ECF7EC50, &qword_1E49A4BF0);
  v7 = OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeZone;
  swift_beginAccess();
  sub_1E48BFB90(v6, a1 + v7);
  swift_endAccess();
  sub_1E48B8744();
  return sub_1E48C1338(v6, &qword_1ECF7EC50, &qword_1E49A4BF0);
}

uint64_t sub_1E48B9C38@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1E48BFE7C(&qword_1ECF7EC58, type metadata accessor for RollingClockViewModel, &unk_1E499A2B8);
  sub_1E4996FCC();

  v3 = OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeString;
  swift_beginAccess();
  return sub_1E48C148C(v5 + v3, a1, type metadata accessor for TimeString);
}

uint64_t sub_1E48B9D14(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeString;
  swift_beginAccess();
  sub_1E48BFB2C(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1E48B9D80()
{
  swift_getKeyPath();
  sub_1E48BFE7C(&qword_1ECF7EC58, type metadata accessor for RollingClockViewModel, &unk_1E499A2B8);
  sub_1E4996FCC();
}

uint64_t sub_1E48B9E2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E48BFE7C(&qword_1ECF7EC58, type metadata accessor for RollingClockViewModel, &unk_1E499A2B8);
  sub_1E4996FCC();

  *a2 = *(v3 + OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeStringObserver);
}

uint64_t sub_1E48B9F0C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeStringObserver;
  if (!*(v1 + OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeStringObserver))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E48BFE7C(&qword_1ECF7EC58, type metadata accessor for RollingClockViewModel, &unk_1E499A2B8);
    sub_1E4996FBC();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = sub_1E49981CC();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_1E48BA09C()
{
  sub_1E48C1338(v0 + OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeZone, &qword_1ECF7EC50, &qword_1E49A4BF0);
  sub_1E48C1338(v0 + OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__previousTimeString, &qword_1ECF815D0, &unk_1E499A370);
  sub_1E48C1504(v0 + OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeString, type metadata accessor for TimeString);
  sub_1E48BFEC4(*(v0 + OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel_contentChanged), *(v0 + OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel_contentChanged + 8));

  v1 = OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel___observationRegistrar;
  v2 = sub_1E499700C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RollingClockViewModel(uint64_t a1)
{
  result = qword_1ECF7EBB0;
  if (!qword_1ECF7EBB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E48BA214(uint64_t a1)
{
  sub_1E48BA3A0(319, &qword_1ECF7EBC0, MEMORY[0x1E6969BC0]);
  if (v1 <= 0x3F)
  {
    sub_1E48BA3A0(319, &qword_1ECF7EBC8, type metadata accessor for TimeString);
    if (v2 <= 0x3F)
    {
      type metadata accessor for TimeString(319);
      if (v3 <= 0x3F)
      {
        sub_1E499700C();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1E48BA3A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E49984BC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E48BA444(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E48BA464(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1E48BA4C8()
{
  v1 = *v0;
  sub_1E499892C();
  MEMORY[0x1E691C150](v1);
  return sub_1E499896C();
}

uint64_t sub_1E48BA510(uint64_t a1)
{
  v2 = *v1;
  sub_1E499892C();
  MEMORY[0x1E691C150](v2);
  return sub_1E499896C();
}

uint64_t sub_1E48BA578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EFC0, &qword_1E499B0F8);
  MEMORY[0x1EEE9AC00](v83);
  v84 = &v59[-v3];
  v70 = sub_1E499777C();
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v59[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EE50, &qword_1E499B000);
  MEMORY[0x1EEE9AC00](v68);
  v73 = &v59[-v5];
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EE40, &qword_1E499AFF8);
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v59[-v6];
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EFC8, &qword_1E499B100);
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v59[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v81 = &v59[-v9];
  v77 = sub_1E499745C();
  v80 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v11 = &v59[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EE30, &qword_1E499AFF0);
  MEMORY[0x1EEE9AC00](v12);
  v74 = &v59[-v13];
  v14 = sub_1E4996A4C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v59[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v59[-v19];
  v21 = *(a1 + 73);
  sub_1E48BAEAC(&v59[-v19]);
  v22 = swift_allocObject();
  v23 = v22;
  v24 = *(a1 + 48);
  v22[3] = *(a1 + 32);
  v22[4] = v24;
  *(v22 + 74) = *(a1 + 58);
  v25 = *(a1 + 16);
  v22[1] = *a1;
  v22[2] = v25;
  v82 = v12;
  if (v21 != 3)
  {
    (*(v15 + 16))(v17, v20, v14);
    v39 = v14;
    v40 = (*(v15 + 80) + 40) & ~*(v15 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = v21;
    *(v41 + 24) = sub_1E48C13FC;
    *(v41 + 32) = v23;
    (*(v15 + 32))(v41 + v40, v17, v39);
    v42 = v84;
    *v84 = sub_1E48C1404;
    v42[1] = v41;
    swift_storeEnumTagMultiPayload();
    sub_1E48C05E0(a1, v86);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EE90, &qword_1E499B020);
    sub_1E48C09C4();
    sub_1E48C1B44(&qword_1ECF7EE88, &qword_1ECF7EE90, &qword_1E499B020, MEMORY[0x1E697E378]);
    sub_1E499772C();
    return (*(v15 + 8))(v20, v39);
  }

  v65 = v22;
  v75 = v20;
  v67 = v15;
  v76 = v14;
  sub_1E48C05E0(a1, v86);
  sub_1E48BAEAC(v17);
  v63 = sub_1E49978CC();
  v62 = v26;
  v60 = v27;
  v64 = v28;
  v29 = sub_1E48DAD54(v11, *(a1 + 64), *(a1 + 72));
  v30 = v80;
  v31 = v81;
  *v81 = v29;
  v32 = v31 + *(v78 + 48);
  v33 = *(v30 + 16);
  v66 = v11;
  v34 = v77;
  v33(v32, v11);
  v35 = v79;
  sub_1E48C12D0(v31, v79, &qword_1ECF7EFC8, &qword_1E499B100);
  v36 = *v35;
  v61 = v29;

  v37 = sub_1E499743C();
  v38 = sub_1E499744C();
  if (v37)
  {
    if ((v38 & ~v37) == 0)
    {
      goto LABEL_9;
    }
  }

  else if (!v38)
  {
    v37 = 0;
    goto LABEL_9;
  }

  v37 |= v38;
LABEL_9:
  v78 = *(v78 + 48);
  v44 = v69;
  (v33)(v69, v32, v34);
  v45 = v70;
  *(v44 + *(v70 + 20)) = v36;
  *(v44 + *(v45 + 24)) = v37;
  v46 = v73;
  sub_1E48C148C(v44, &v73[*(v68 + 36)], MEMORY[0x1E6980738]);
  v47 = v63;
  v48 = v62;
  *v46 = v63;
  *(v46 + 8) = v48;
  v49 = v60 & 1;
  *(v46 + 16) = v60 & 1;
  *(v46 + 24) = v64;
  sub_1E48C14F4(v47, v48, v49);

  sub_1E48C1504(v44, MEMORY[0x1E6980738]);
  v50 = *(v80 + 8);
  v50(v79 + v78, v34);
  KeyPath = swift_getKeyPath();
  v52 = v72;
  v53 = &v72[*(v71 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EE70, &qword_1E499B010);
  sub_1E49973CC();

  sub_1E48C1564(v47, v48, v49);

  sub_1E48C1338(v81, &qword_1ECF7EFC8, &qword_1E499B100);
  v50(v66, v77);
  *v53 = KeyPath;
  sub_1E48C15C8(v46, v52, &qword_1ECF7EE50, &qword_1E499B000);
  v54 = v74;
  sub_1E48C15C8(v52, v74, &qword_1ECF7EE40, &qword_1E499AFF8);
  v55 = sub_1E4997D3C();
  v56 = &v54[*(v82 + 36)];
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EE80, &qword_1E499B018);
  v58 = v67;
  (*(v67 + 16))(v56 + *(v57 + 36), v75, v76);
  *v56 = v55;
  sub_1E48C12D0(v54, v84, &qword_1ECF7EE30, &qword_1E499AFF0);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EE90, &qword_1E499B020);
  sub_1E48C09C4();
  sub_1E48C1B44(&qword_1ECF7EE88, &qword_1ECF7EE90, &qword_1E499B020, MEMORY[0x1E697E378]);
  sub_1E499772C();

  (*(v58 + 8))(v75, v76);
  return sub_1E48C1338(v54, &qword_1ECF7EE30, &qword_1E499AFF0);
}

uint64_t sub_1E48BAEAC@<X0>(uint64_t a1@<X8>)
{
  v80 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v71 = v66 - v3;
  v74 = sub_1E499708C();
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v72 = v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F010, &qword_1E499B178);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v77 = v66 - v6;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F018, &unk_1E499B180);
  v76 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v69 = v66 - v7;
  v8 = sub_1E4996ABC();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = type metadata accessor for TimeString(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E4996A4C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v75 = v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v81 = v66 - v16;
  v17 = sub_1E48BBFE4();
  v18 = *v1;
  v79 = v1;
  v19 = *(v1 + 8);
  v21 = sub_1E4961780(v18, v19, v20);
  swift_getKeyPath();
  if (v17)
  {
    v82[0] = v21;
    v22 = sub_1E48BFE7C(&qword_1ECF7EC58, type metadata accessor for RollingClockViewModel, &unk_1E499A2B8);
    v70 = v12;
    v23 = v22;
    v24 = v19;
    sub_1E4996FCC();

    v25 = OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeString;
    swift_beginAccess();
    sub_1E48C148C(v21 + v25, v11, type metadata accessor for TimeString);

    sub_1E48C1504(v11, type metadata accessor for TimeString);
    sub_1E4996AAC();
    v68 = v13;
    v26 = v81;
    sub_1E4996A5C();
    v67 = v24;
    v28 = sub_1E4961780(v18, v24, v27);
    swift_getKeyPath();
    v82[0] = v28;
    v66[1] = v23;
    sub_1E4996FCC();

    v29 = OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeString;
    swift_beginAccess();
    sub_1E48C148C(v28 + v29, v11, type metadata accessor for TimeString);

    sub_1E48C1504(v11, type metadata accessor for TimeString);
    v30 = v68;
    v31 = v70;
    (*(v68 + 16))(v75, v26, v70);
    sub_1E48BFE7C(&qword_1ECF7F028, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
    v32 = v77;
    sub_1E49982DC();
    v13 = v30;
    if ((*(v76 + 48))(v32, 1, v78) == 1)
    {
      v78 = v18;
      sub_1E48C1338(v32, &qword_1ECF7F010, &qword_1E499B178);
      v33 = v79;
      if (qword_1EE2BB450 != -1)
      {
        swift_once();
      }

      v34 = qword_1EE2BB458;
      v35 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
      swift_beginAccess();
      v36 = v71;
      sub_1E48C12D0(v34 + v35, v71, &qword_1ECF7F008, &qword_1E499B170);
      v37 = v73;
      v38 = *(v73 + 48);
      v39 = v74;
      if (v38(v36, 1, v74) == 1)
      {
        v40 = v72;
        sub_1E4904BF4(v72);
        v41 = v40;
        if (v38(v36, 1, v39) != 1)
        {
          sub_1E48C1338(v36, &qword_1ECF7F008, &qword_1E499B170);
        }
      }

      else
      {
        v41 = v72;
        (*(v37 + 32))(v72, v36, v39);
      }

      sub_1E48C05E0(v33, v82);
      v50 = sub_1E499706C();
      v51 = sub_1E499830C();
      sub_1E48C1180(v33);
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v84 = v53;
        v54.n128_u64[0] = 136315394;
        *v52 = 136315394;
        v55 = sub_1E4961780(v78, v67, v54);
        swift_getKeyPath();
        v82[0] = v55;
        sub_1E4996FCC();
        v31 = v70;

        v56 = OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeString;
        swift_beginAccess();
        sub_1E48C148C(v55 + v56, v11, type metadata accessor for TimeString);

        sub_1E48C1504(v11, type metadata accessor for TimeString);
        v57 = sub_1E49984AC();
        v59 = sub_1E48CA094(v57, v58, &v84);

        *(v52 + 4) = v59;
        *(v52 + 12) = 2080;
        v43 = v81;
        swift_beginAccess();
        sub_1E48BFE7C(&qword_1ECF7F030, MEMORY[0x1E6968848], MEMORY[0x1E6968870]);
        v60 = sub_1E49987FC();
        v62 = sub_1E48CA094(v60, v61, &v84);

        *(v52 + 14) = v62;
        _os_log_impl(&dword_1E48B0000, v50, v51, "Cannot format time designator. Range of designator in NSAttributedString provided by CLKTimeFormatter is unknown when converted to AttributedString. \nRange: '%s' \nAttributedString '%s'.", v52, 0x16u);
        swift_arrayDestroy();
        v13 = v68;
        MEMORY[0x1E691CED0](v53, -1, -1);
        MEMORY[0x1E691CED0](v52, -1, -1);

        (*(v73 + 8))(v72, v74);
      }

      else
      {

        (*(v37 + 8))(v41, v39);
        v43 = v81;
        v31 = v70;
      }
    }

    else
    {
      v44 = v69;
      sub_1E48C15C8(v32, v69, &qword_1ECF7F018, &unk_1E499B180);
      v33 = v79;
      v45 = *(v79 + 16);
      v46 = sub_1E499782C();
      sub_1E48C1B44(&qword_1ECF7F038, &qword_1ECF7F018, &unk_1E499B180, MEMORY[0x1E69E66D8]);
      v43 = v81;
      v47 = sub_1E4996A7C();
      v84 = v46;
      sub_1E48C1630();
      sub_1E4996ACC();
      v47(v82, 0);
      if (!*(v33 + 48))
      {
        v48 = *(v33 + 32);
        if (v48)
        {
          swift_retain_n();
          v49 = sub_1E4996A7C();
          v84 = v48;
          sub_1E48C1684();
          sub_1E4996ACC();
          v49(v82, 0);
        }
      }

      sub_1E48C1338(v44, &qword_1ECF7F018, &unk_1E499B180);
    }
  }

  else
  {
    v82[0] = v21;
    sub_1E48BFE7C(&qword_1ECF7EC58, type metadata accessor for RollingClockViewModel, &unk_1E499A2B8);
    sub_1E4996FCC();

    v42 = OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeString;
    swift_beginAccess();
    sub_1E48C148C(v21 + v42, v11, type metadata accessor for TimeString);

    sub_1E48C1504(v11, type metadata accessor for TimeString);
    sub_1E4996AAC();
    v43 = v81;
    sub_1E4996A5C();
    v33 = v79;
    v31 = v12;
  }

  v63 = *(v33 + 56);
  swift_beginAccess();
  v83 = v63;
  sub_1E48C1574();
  v64 = v63;
  sub_1E4996A6C();
  swift_endAccess();
  (*(v13 + 16))(v80, v43, v31);
  return (*(v13 + 8))(v43, v31);
}

uint64_t sub_1E48BBB68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v54 = sub_1E499777C();
  MEMORY[0x1EEE9AC00](v54);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EE50, &qword_1E499B000);
  MEMORY[0x1EEE9AC00](v52);
  v48 = &v44 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EFC8, &qword_1E499B100);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v44 - v10);
  v12 = sub_1E499745C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E4996A4C();
  MEMORY[0x1EEE9AC00](v16 - 8);
  sub_1E48BAEAC(&v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_1E49978CC();
  v49 = v19;
  v50 = v18;
  v46 = v20;
  v51 = v21;
  v22 = sub_1E48DAD54(v15, *(a1 + 64), *(a1 + 72));
  *v11 = v22;
  v23 = v6;
  v24 = *(v6 + 48);
  v55 = v15;
  KeyPath = v13;
  v25 = *(v13 + 16);
  v26 = v15;
  v27 = v12;
  v25(v11 + v24, v26, v12);
  sub_1E48C12D0(v11, v8, &qword_1ECF7EFC8, &qword_1E499B100);
  v53 = v8;
  v28 = *v8;
  v47 = v22;

  v29 = sub_1E499743C();
  v30 = sub_1E499744C();
  if (v29)
  {
    if ((v30 & ~v29) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (!v30)
  {
    v29 = 0;
    goto LABEL_7;
  }

  v29 |= v30;
LABEL_7:
  v45 = *(v23 + 48);
  v31 = v27;
  v25(v4, v11 + v24, v27);
  v32 = v54;
  *&v4[*(v54 + 5)] = v28;
  *&v4[*(v32 + 24)] = v29;
  v33 = v48;
  sub_1E48C148C(v4, &v48[*(v52 + 36)], MEMORY[0x1E6980738]);
  v34 = v50;
  v35 = v51;
  v54 = v11;
  v36 = v49;
  *v33 = v50;
  *(v33 + 8) = v36;
  v37 = v46;
  v38 = v46 & 1;
  *(v33 + 16) = v46 & 1;
  *(v33 + 24) = v35;
  sub_1E48C14F4(v34, v36, v37 & 1);

  sub_1E48C1504(v4, MEMORY[0x1E6980738]);
  v39 = *(KeyPath + 8);
  v39(&v53[v45], v31);
  KeyPath = swift_getKeyPath();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EE40, &qword_1E499AFF8);
  v41 = v57;
  v42 = (v57 + *(v40 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EE70, &qword_1E499B010);
  sub_1E49973CC();

  sub_1E48C1564(v34, v36, v38);

  sub_1E48C1338(v54, &qword_1ECF7EFC8, &qword_1E499B100);
  v39(v55, v31);
  *v42 = KeyPath;
  return sub_1E48C15C8(v33, v41, &qword_1ECF7EE50, &qword_1E499B000);
}

BOOL sub_1E48BBFE4()
{
  v21[0] = sub_1E4996D8C();
  v1 = *(v21[0] - 8);
  MEMORY[0x1EEE9AC00](v21[0]);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E4996F4C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TimeString(0);
  v9 = v8 - 8;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E4961780(*v0, *(v0 + 8), v10);
  swift_getKeyPath();
  v21[1] = v13;
  sub_1E48BFE7C(&qword_1ECF7EC58, type metadata accessor for RollingClockViewModel, &unk_1E499A2B8);
  sub_1E4996FCC();

  v14 = OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeString;
  swift_beginAccess();
  sub_1E48C148C(v13 + v14, v12, type metadata accessor for TimeString);

  (*(v5 + 16))(v7, &v12[*(v9 + 44)], v4);
  sub_1E48C1504(v12, type metadata accessor for TimeString);
  sub_1E4996D7C();
  v15 = sub_1E4996EFC();
  v16 = *(v1 + 8);
  v17 = v21[0];
  v16(v3, v21[0]);
  v18 = *(v5 + 8);
  v18(v7, v4);
  sub_1E4996F3C();
  sub_1E4996D7C();
  v19 = sub_1E4996EFC();
  v16(v3, v17);
  v18(v7, v4);
  return v15 != v19;
}

uint64_t sub_1E48BC2F8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v13 = v1[2];
  v14[0] = v3;
  *(v14 + 10) = *(v1 + 58);
  v4 = v1[1];
  v12[0] = *v1;
  v12[1] = v4;
  v5 = *(&v4 + 1);
  v6 = v13;
  v7 = v3;
  sub_1E48C05E0(v12, &v11);
  sub_1E48BC704(v5, v6, *(&v6 + 1), v7, v12, a1);
  v8 = sub_1E4997D3C();
  v9 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7ED70, &qword_1E499AF50) + 36);
  *v9 = v8;
  *(v9 + 8) = v5;
  *(v9 + 16) = v6;
  *(v9 + 32) = v7;
  return sub_1E48C0618(v5, v6, *(&v6 + 1), v7);
}

double sub_1E48BC3C0@<D0>(uint64_t a1@<X1>, void (*a2)(__n128)@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v7 = a1;
  *a5 = sub_1E4997CEC();
  a5[1] = v9;
  v10 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EFD0, &qword_1E499B138) + 44);
  *v10 = sub_1E49975AC();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EFD8, &qword_1E499B140);
  sub_1E48BC550(v7, a2, &v10[*(v11 + 44)]);
  v12 = sub_1E4997D3C();
  v13 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EFE0, &qword_1E499B148) + 36)];
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EE80, &qword_1E499B018) + 36);
  v15 = sub_1E4996A4C();
  (*(*(v15 - 8) + 16))(v13 + v14, a4, v15);
  *v13 = v12;
  sub_1E499729C();
  sub_1E499729C();
  sub_1E4997CEC();
  sub_1E499722C();
  v16 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EFE8, &qword_1E499B150) + 36));
  *v16 = v18;
  v16[1] = v19;
  result = *&v20;
  v16[2] = v20;
  return result;
}

uint64_t sub_1E48BC550@<X0>(unsigned __int8 a1@<W0>, void (*a2)(__n128)@<X1>, uint64_t a3@<X8>)
{
  v6 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EFF0, &qword_1E499B158);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  a2(v12);
  *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EFF8, &qword_1E499B160) + 36)] = 257;
  *&v14[*(v8 + 44)] = 0x3FF0000000000000;
  sub_1E48C12D0(v14, v10, &qword_1ECF7EFF0, &qword_1E499B158);
  *a3 = 0;
  *(a3 + 8) = (v6 - 1) < 2;
  *(a3 + 9) = (v6 - 1) > 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F000, &qword_1E499B168);
  sub_1E48C12D0(v10, a3 + *(v15 + 48), &qword_1ECF7EFF0, &qword_1E499B158);
  v16 = a3 + *(v15 + 64);
  *v16 = 0;
  *(v16 + 8) = (a1 & 0xFD) == 0;
  *(v16 + 9) = (a1 & 0xFD) != 0;
  sub_1E48C1338(v14, &qword_1ECF7EFF0, &qword_1E499B158);
  return sub_1E48C1338(v10, &qword_1ECF7EFF0, &qword_1E499B158);
}

uint64_t sub_1E48BC704@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, _OWORD *a5@<X4>, uint64_t a6@<X8>)
{
  v106 = a4;
  *(&v99 + 1) = a3;
  *&v99 = a2;
  v107 = a1;
  v105 = a6;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7ED78, &qword_1E499AF58);
  MEMORY[0x1EEE9AC00](v95);
  v97 = (&v78 - v7);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7ED80, &qword_1E499AF60);
  MEMORY[0x1EEE9AC00](v86);
  v88 = (&v78 - v8);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7ED88, &qword_1E499AF68);
  MEMORY[0x1EEE9AC00](v96);
  v89 = &v78 - v9;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7ED90, &qword_1E499AF70);
  MEMORY[0x1EEE9AC00](v104);
  v98 = &v78 - v10;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7ED98, &qword_1E499AF78);
  MEMORY[0x1EEE9AC00](v87);
  v12 = &v78 - v11;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EDA0, &qword_1E499AF80);
  MEMORY[0x1EEE9AC00](v84);
  v80 = &v78 - v13;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EDA8, &qword_1E499AF88);
  MEMORY[0x1EEE9AC00](v82);
  v83 = &v78 - v14;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EDB0, &qword_1E499AF90);
  MEMORY[0x1EEE9AC00](v93);
  v85 = &v78 - v15;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EDB8, &qword_1E499AF98);
  MEMORY[0x1EEE9AC00](v81);
  v79 = &v78 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EDC0, &qword_1E499AFA0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v78 - v18;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EDC8, &qword_1E499AFA8);
  MEMORY[0x1EEE9AC00](v100);
  v102 = &v78 - v20;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EDD0, &qword_1E499AFB0);
  MEMORY[0x1EEE9AC00](v90);
  v92 = &v78 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EDD8, &qword_1E499AFB8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v78 - v23;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EDE0, &qword_1E499AFC0);
  MEMORY[0x1EEE9AC00](v91);
  v26 = &v78 - v25;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EDE8, &qword_1E499AFC8);
  MEMORY[0x1EEE9AC00](v101);
  v94 = &v78 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EDF0, &qword_1E499AFD0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v78 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EDF8, &qword_1E499AFD8);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v103 = &v78 - v32;
  v33 = swift_allocObject();
  v34 = a5[3];
  v33[3] = a5[2];
  v33[4] = v34;
  *(v33 + 74) = *(a5 + 58);
  v36 = *a5;
  v35 = a5[1];
  v108 = a5;
  v33[1] = v36;
  v33[2] = v35;
  if (v106 > 1u)
  {
    if (v106 == 2)
    {
      v50 = swift_allocObject();
      *(v50 + 2) = sub_1E48C073C;
      *(v50 + 3) = v33;
      v51 = v107;
      v52 = v99;
      *(v50 + 4) = v107;
      *(v50 + 5) = v52;
      v53 = v88;
      *v88 = sub_1E48C11B0;
      v53[1] = v50;
      swift_storeEnumTagMultiPayload();
      v42 = v108;
      sub_1E48C05E0(v108, v111);
      sub_1E48C0618(v51, v52, *(&v99 + 1), 2u);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EEB0, &qword_1E499B030);
      sub_1E48C0854();
      v54 = MEMORY[0x1E697E378];
      sub_1E48C1B44(&qword_1ECF7EEA8, &qword_1ECF7EEB0, &qword_1E499B030, MEMORY[0x1E697E378]);
      v55 = v89;
      sub_1E499772C();
      sub_1E48C12D0(v55, v97, &qword_1ECF7ED88, &qword_1E499AF68);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EE00, &qword_1E499AFE0);
      sub_1E48C0754();
      sub_1E48C1B44(&qword_1ECF7EEB8, &qword_1ECF7EE00, &qword_1E499AFE0, v54);
      v43 = v98;
      sub_1E499772C();
      sub_1E48C1338(v55, &qword_1ECF7ED88, &qword_1E499AF68);
    }

    else
    {
      v37 = v107;
      if (v106 != 3)
      {
        if (!(*(&v99 + 1) | v99 | v107))
        {
          v72 = v108;
          sub_1E48C05E0(v108, v111);
          sub_1E48BA578(v72, v19);
          sub_1E4997CDC();
          sub_1E48C12D0(v19, v24, &qword_1ECF7EDC0, &qword_1E499AFA0);
          swift_storeEnumTagMultiPayload();
          sub_1E48C0D5C();
          sub_1E48C0E14();
          sub_1E499772C();
          sub_1E48C12D0(v26, v92, &qword_1ECF7EDE0, &qword_1E499AFC0);
          swift_storeEnumTagMultiPayload();
          sub_1E48C0CD0();
          sub_1E48C0ECC();
          v73 = v94;
          sub_1E499772C();
          sub_1E48C1338(v26, &qword_1ECF7EDE0, &qword_1E499AFC0);
          sub_1E48C12D0(v73, v102, &qword_1ECF7EDE8, &qword_1E499AFC8);
          swift_storeEnumTagMultiPayload();
          sub_1E48C0C44();
          sub_1E48C10C8();
          v49 = v103;
          sub_1E499772C();
          sub_1E48C1338(v73, &qword_1ECF7EDE8, &qword_1E499AFC8);
          v74 = v19;
          v42 = v72;
          sub_1E48C1338(v74, &qword_1ECF7EDC0, &qword_1E499AFA0);
          goto LABEL_19;
        }

        if (v107 != 1 || v99 != 0)
        {
          v42 = v108;
          sub_1E48C05E0(v108, v111);
          v75 = v80;
          sub_1E48BA578(v42, v80);
          v109 = xmmword_1E499A120;
          v110 = 0;
          *v111 = xmmword_1E499A130;
          *&v111[16] = xmmword_1E499A140;
          *&v111[32] = xmmword_1E499A150;
          v112 = xmmword_1E499A160;
          v113 = xmmword_1E499A170;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EF48, &qword_1E499B060);
          sub_1E48C11C0();
          sub_1E499794C();
          sub_1E48C12D0(v75, v83, &qword_1ECF7EDA0, &qword_1E499AF80);
          swift_storeEnumTagMultiPayload();
          sub_1E48C0F58();
          sub_1E48C1010();
          v76 = v85;
          sub_1E499772C();
          sub_1E48C12D0(v76, v92, &qword_1ECF7EDB0, &qword_1E499AF90);
          swift_storeEnumTagMultiPayload();
          sub_1E48C0CD0();
          sub_1E48C0ECC();
          v77 = v94;
          sub_1E499772C();
          sub_1E48C1338(v76, &qword_1ECF7EDB0, &qword_1E499AF90);
          sub_1E48C12D0(v77, v102, &qword_1ECF7EDE8, &qword_1E499AFC8);
          swift_storeEnumTagMultiPayload();
          sub_1E48C0C44();
          sub_1E48C10C8();
          v49 = v103;
          sub_1E499772C();
          sub_1E48C1338(v77, &qword_1ECF7EDE8, &qword_1E499AFC8);
          sub_1E48C1338(v75, &qword_1ECF7EDA0, &qword_1E499AF80);
          goto LABEL_19;
        }

        v42 = v108;
        sub_1E48C05E0(v108, v111);
        v59 = v79;
        sub_1E48BA578(v42, v79);
        v56 = &qword_1E499AF98;
        sub_1E48C12D0(v59, v83, &qword_1ECF7EDB8, &qword_1E499AF98);
        swift_storeEnumTagMultiPayload();
        sub_1E48C0F58();
        sub_1E48C1010();
        v60 = v85;
        sub_1E499772C();
        sub_1E48C12D0(v60, v92, &qword_1ECF7EDB0, &qword_1E499AF90);
        swift_storeEnumTagMultiPayload();
        sub_1E48C0CD0();
        sub_1E48C0ECC();
        v61 = v94;
        sub_1E499772C();
        sub_1E48C1338(v60, &qword_1ECF7EDB0, &qword_1E499AF90);
        sub_1E48C12D0(v61, v102, &qword_1ECF7EDE8, &qword_1E499AFC8);
        swift_storeEnumTagMultiPayload();
        sub_1E48C0C44();
        sub_1E48C10C8();
        v49 = v103;
        sub_1E499772C();
        sub_1E48C1338(v61, &qword_1ECF7EDE8, &qword_1E499AFC8);
        v57 = v59;
        v58 = &qword_1ECF7EDB8;
        goto LABEL_9;
      }

      v38 = swift_allocObject();
      *(v38 + 2) = sub_1E48C073C;
      *(v38 + 3) = v33;
      v39 = v99;
      *(v38 + 4) = v37;
      *(v38 + 5) = v39;
      v40 = *(&v99 + 1);
      *(v38 + 6) = *(&v99 + 1);
      v41 = v97;
      *v97 = sub_1E48C0744;
      v41[1] = v38;
      swift_storeEnumTagMultiPayload();
      v42 = v108;
      sub_1E48C05E0(v108, v111);
      sub_1E48C0618(v37, v39, v40, 3u);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EE00, &qword_1E499AFE0);
      sub_1E48C0754();
      sub_1E48C1B44(&qword_1ECF7EEB8, &qword_1ECF7EE00, &qword_1E499AFE0, MEMORY[0x1E697E378]);
      v43 = v98;
      sub_1E499772C();
    }

    v56 = &qword_1E499AF70;
    sub_1E48C12D0(v43, v102, &qword_1ECF7ED90, &qword_1E499AF70);
    swift_storeEnumTagMultiPayload();
    sub_1E48C0C44();
    sub_1E48C10C8();
    v49 = v103;
    sub_1E499772C();

    v57 = v43;
    v58 = &qword_1ECF7ED90;
LABEL_9:
    sub_1E48C1338(v57, v58, v56);
    goto LABEL_19;
  }

  if (!v106)
  {
    v44 = v108;
    sub_1E48C05E0(v108, v111);
    sub_1E48BA578(v44, v30);
    KeyPath = swift_getKeyPath();
    v46 = &v30[*(v28 + 36)];
    v47 = v107;
    *v46 = KeyPath;
    v46[1] = v47;
    sub_1E48C12D0(v30, v24, &qword_1ECF7EDF0, &qword_1E499AFD0);
    swift_storeEnumTagMultiPayload();
    sub_1E48C0D5C();
    sub_1E48C0E14();

    sub_1E499772C();
    sub_1E48C12D0(v26, v92, &qword_1ECF7EDE0, &qword_1E499AFC0);
    swift_storeEnumTagMultiPayload();
    sub_1E48C0CD0();
    sub_1E48C0ECC();
    v48 = v94;
    sub_1E499772C();
    sub_1E48C1338(v26, &qword_1ECF7EDE0, &qword_1E499AFC0);
    sub_1E48C12D0(v48, v102, &qword_1ECF7EDE8, &qword_1E499AFC8);
    swift_storeEnumTagMultiPayload();
    sub_1E48C0C44();
    sub_1E48C10C8();
    v49 = v103;
    sub_1E499772C();
    sub_1E48C1338(v48, &qword_1ECF7EDE8, &qword_1E499AFC8);
    v42 = v108;
    sub_1E48C1338(v30, &qword_1ECF7EDF0, &qword_1E499AFD0);
LABEL_19:
    sub_1E48B25FC(v49, v105);

    return sub_1E48C1180(v42);
  }

  v62 = v108;
  sub_1E48C05E0(v108, v111);
  sub_1E48BA578(v62, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EF40, &qword_1E49A4B50);
  result = swift_allocObject();
  *(result + 16) = xmmword_1E499A180;
  v64 = *(v107 + 2);
  if (v64)
  {
    v65 = result;

    result = sub_1E4997CAC();
    v65[4] = result;
    v65[5] = v66;
    if (v64 != 1)
    {

      v65[6] = sub_1E4997CAC();
      v65[7] = v67;
      sub_1E4997D8C();
      sub_1E4997D9C();
      sub_1E4997CBC();
      sub_1E49972FC();
      v68 = &v12[*(v87 + 36)];
      *v68 = *v111;
      *(v68 + 8) = *&v111[8];
      *(v68 + 24) = *&v111[24];
      sub_1E48C12D0(v12, v88, &qword_1ECF7ED98, &qword_1E499AF78);
      swift_storeEnumTagMultiPayload();
      v107 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EEB0, &qword_1E499B030);
      sub_1E48C0854();
      v69 = MEMORY[0x1E697E378];
      sub_1E48C1B44(&qword_1ECF7EEA8, &qword_1ECF7EEB0, &qword_1E499B030, MEMORY[0x1E697E378]);
      v70 = v89;
      sub_1E499772C();
      sub_1E48C12D0(v70, v97, &qword_1ECF7ED88, &qword_1E499AF68);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EE00, &qword_1E499AFE0);
      sub_1E48C0754();
      sub_1E48C1B44(&qword_1ECF7EEB8, &qword_1ECF7EE00, &qword_1E499AFE0, v69);
      v71 = v98;
      sub_1E499772C();
      sub_1E48C1338(v70, &qword_1ECF7ED88, &qword_1E499AF68);
      sub_1E48C12D0(v71, v102, &qword_1ECF7ED90, &qword_1E499AF70);
      swift_storeEnumTagMultiPayload();
      sub_1E48C0C44();
      sub_1E48C10C8();
      v49 = v103;
      sub_1E499772C();
      sub_1E48C1338(v71, &qword_1ECF7ED90, &qword_1E499AF70);
      sub_1E48C1338(v107, &qword_1ECF7ED98, &qword_1E499AF78);
      v42 = v108;
      goto LABEL_19;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_1E48BDC88@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a4@<X8>)
{
  *&v35 = a2;
  *&v36 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EF68, &qword_1E499B0A0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EF70, &qword_1E499B0A8);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v35 - v18;
  sub_1E499729C();
  sub_1E499729C();
  *a4 = sub_1E4997CEC();
  a4[1] = v20;
  v37 = a4;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EF78, &qword_1E499B0B0);
  v22 = a4 + *(v21 + 44);
  (v36)(v21);
  *&v19[*(v14 + 44)] = 0x3FF0000000000000;

  MEMORY[0x1E691B4E0](v23);
  sub_1E499730C();
  v24 = v39;
  sub_1E4997CEC();
  sub_1E499722C();
  *&v38[7] = v42;
  *&v38[23] = v43;
  *&v38[39] = v44;
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EF80, &qword_1E499B0B8) + 36);
  v26 = *MEMORY[0x1E6981DB0];
  v27 = sub_1E4997D4C();
  v28 = *(*(v27 - 8) + 104);
  v36 = v40;
  v35 = v41;
  v28(&v12[v25], v26, v27);
  *v12 = v24;
  *(v12 + 24) = v35;
  *(v12 + 8) = v36;
  *(v12 + 5) = 0x403E000000000000;
  v12[48] = 0;
  v29 = *&v38[16];
  *(v12 + 49) = *v38;
  *(v12 + 65) = v29;
  *(v12 + 81) = *&v38[32];
  *(v12 + 12) = *&v38[47];
  *&v12[*(v7 + 44)] = 0xBFF0000000000000;
  sub_1E48C12D0(v19, v16, &qword_1ECF7EF70, &qword_1E499B0A8);
  sub_1E48C12D0(v12, v9, &qword_1ECF7EF68, &qword_1E499B0A0);
  sub_1E48C12D0(v16, v22, &qword_1ECF7EF70, &qword_1E499B0A8);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EF88, &qword_1E499B0C0);
  sub_1E48C12D0(v9, &v22[*(v30 + 48)], &qword_1ECF7EF68, &qword_1E499B0A0);
  sub_1E48C1338(v12, &qword_1ECF7EF68, &qword_1E499B0A0);
  sub_1E48C1338(v19, &qword_1ECF7EF70, &qword_1E499B0A8);
  sub_1E48C1338(v9, &qword_1ECF7EF68, &qword_1E499B0A0);
  sub_1E48C1338(v16, &qword_1ECF7EF70, &qword_1E499B0A8);
  sub_1E499729C();
  sub_1E499729C();
  sub_1E4997CEC();
  sub_1E499722C();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EF90, &qword_1E499B0C8);
  v32 = (v37 + *(v31 + 36));
  v33 = v46;
  *v32 = v45;
  v32[1] = v33;
  result = v47[0];
  v32[2] = *v47;
  return result;
}

double sub_1E48BE0D4@<D0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a6@<X8>, double a7@<D0>)
{
  v48[1] = a4;
  v48[0] = a3;
  v49 = sub_1E4997AEC();
  v11 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v13 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EF98, &qword_1E499B0D0);
  MEMORY[0x1EEE9AC00](v52);
  v53 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v48 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EF70, &qword_1E499B0A8);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v50 = v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v48 - v22;
  sub_1E499729C();
  v54 = a1;
  sub_1E499729C();
  *a6 = sub_1E4997CEC();
  a6[1] = v24;
  v25 = a6;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EFA0, &qword_1E499B0D8);
  v27 = *(v26 + 44);
  a2(v26, v28);
  *&v23[*(v19 + 44)] = 0x3FF0000000000000;
  v29 = qword_1ECF7EB48;

  if (v29 != -1)
  {
    swift_once();
  }

  v51 = v25;
  v30 = v25 + v27;
  v31 = qword_1ECF819A8;
  sub_1E4997B3C();
  v32 = v49;
  (*(v11 + 104))(v13, *MEMORY[0x1E6981630], v49);
  v33 = sub_1E4997B2C();

  (*(v11 + 8))(v13, v32);
  sub_1E4997CEC();
  sub_1E499722C();
  LOBYTE(v59) = 1;
  *&v55[6] = v56;
  *&v55[22] = v57;
  *&v55[38] = v58;
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EFA8, &qword_1E499B0E0) + 36);
  v35 = *MEMORY[0x1E6981DB0];
  v36 = sub_1E4997D4C();
  (*(*(v36 - 8) + 104))(&v17[v34], v35, v36);
  *v17 = v33;
  *(v17 + 1) = 0;
  *(v17 + 8) = 257;
  v37 = *&v55[16];
  *(v17 + 18) = *v55;
  *(v17 + 34) = v37;
  *(v17 + 50) = *&v55[32];
  *(v17 + 8) = *&v55[46];
  sub_1E4997DAC();
  v38 = &v17[*(v52 + 36)];
  *v38 = a7;
  *(v38 + 1) = v39;
  *(v38 + 2) = v40;
  v41 = v50;
  sub_1E48C12D0(v23, v50, &qword_1ECF7EF70, &qword_1E499B0A8);
  v42 = v53;
  sub_1E48C12D0(v17, v53, &qword_1ECF7EF98, &qword_1E499B0D0);
  sub_1E48C12D0(v41, v30, &qword_1ECF7EF70, &qword_1E499B0A8);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EFB0, &qword_1E499B0E8);
  sub_1E48C12D0(v42, v30 + *(v43 + 48), &qword_1ECF7EF98, &qword_1E499B0D0);
  sub_1E48C1338(v17, &qword_1ECF7EF98, &qword_1E499B0D0);
  sub_1E48C1338(v23, &qword_1ECF7EF70, &qword_1E499B0A8);
  sub_1E48C1338(v42, &qword_1ECF7EF98, &qword_1E499B0D0);
  sub_1E48C1338(v41, &qword_1ECF7EF70, &qword_1E499B0A8);
  sub_1E499729C();
  sub_1E499729C();
  sub_1E4997CEC();
  sub_1E499722C();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EFB8, &qword_1E499B0F0);
  v45 = (v51 + *(v44 + 36));
  v46 = v60;
  *v45 = v59;
  v45[1] = v46;
  result = v61[0];
  v45[2] = *v61;
  return result;
}

__n128 sub_1E48BE658@<Q0>(_OWORD *a1@<X8>)
{
  sub_1E4997CEC();
  sub_1E499736C();
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v10;
  *a1 = v4;
  a1[1] = v5;
  result = v7;
  a1[2] = v6;
  a1[3] = v7;
  return result;
}

id sub_1E48BE720()
{
  v0 = objc_allocWithZone(MEMORY[0x1E698E818]);

  return [v0 init];
}

uint64_t sub_1E48BE7B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E48C1E5C();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1E48BE814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E48C1E5C();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1E48BE878(uint64_t a1)
{
  sub_1E48C1E5C();
  sub_1E49976FC();
  __break(1u);
}

uint64_t sub_1E48BE8C4(uint64_t a1)
{
  v2 = sub_1E49973DC();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1E49974EC();
}

uint64_t sub_1E48BE994(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x1E691A840](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1E48BE9E8(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x1E691A850](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return v3 & 1;
}

uint64_t sub_1E48BEA68(uint64_t a1, id *a2)
{
  result = sub_1E4997ECC();
  *a2 = 0;
  return result;
}

uint64_t sub_1E48BEAE0(uint64_t a1, id *a2)
{
  v3 = sub_1E4997EDC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1E48BEB60@<X0>(uint64_t *a2@<X8>)
{
  sub_1E4997EEC();
  v3 = sub_1E4997EAC();

  *a2 = v3;
  return result;
}

uint64_t sub_1E48BEBC4(uint64_t a1)
{
  sub_1E48BFE7C(&qword_1ECF7F098, type metadata accessor for AttributeName, &unk_1E499AEB8);
  sub_1E48BFE7C(&qword_1ECF7F0A0, type metadata accessor for AttributeName, &unk_1E499A8A0);

  return sub_1E499872C();
}

void *sub_1E48BEC80@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

double sub_1E48BEC90@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1E48BEC9C(uint64_t a1)
{
  sub_1E48BFE7C(&qword_1ECF7F070, type metadata accessor for Weight, &unk_1E499AB6C);
  sub_1E48BFE7C(&qword_1ECF7F078, type metadata accessor for Weight, &unk_1E499AB0C);
  sub_1E48C16D8();
  return sub_1E499872C();
}

uint64_t sub_1E48BED64(uint64_t a1)
{
  sub_1E48BFE7C(&qword_1ECF7F0A8, type metadata accessor for FeatureKey, &unk_1E499A7A8);
  sub_1E48BFE7C(&qword_1ECF7F0B0, type metadata accessor for FeatureKey, &unk_1E499A748);

  return sub_1E499872C();
}

uint64_t sub_1E48BEE20(uint64_t a1)
{
  sub_1E48BFE7C(&qword_1ECF7F060, type metadata accessor for Key, &unk_1E499AE74);
  sub_1E48BFE7C(&qword_1ECF7F068, type metadata accessor for Key, &unk_1E499AC70);

  return sub_1E499872C();
}

uint64_t sub_1E48BEEDC(uint64_t a1)
{
  sub_1E48BFE7C(&qword_1ECF7F088, type metadata accessor for TraitKey, &unk_1E499AA14);
  sub_1E48BFE7C(&qword_1ECF7F090, type metadata accessor for TraitKey, &unk_1E499A9B4);

  return sub_1E499872C();
}

uint64_t sub_1E48BEF98@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1E4997EAC();

  *a2 = v3;
  return result;
}

uint64_t sub_1E48BEFE0(uint64_t a1)
{
  sub_1E48BFE7C(&qword_1ECF7F050, type metadata accessor for Name, &unk_1E499ADE4);
  sub_1E48BFE7C(&qword_1ECF7F058, type metadata accessor for Name, &unk_1E499AD84);

  return sub_1E499872C();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1E48BF0EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeString(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E48BF170()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x1E691C170](*&v1);
}

uint64_t sub_1E48BF1AC(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return MEMORY[0x1EEE6B628](a1, *&v2);
}

uint64_t sub_1E48BF1C4()
{
  v0 = sub_1E4997EEC();
  v1 = MEMORY[0x1E691B830](v0);

  return v1;
}

uint64_t sub_1E48BF200(uint64_t a1)
{
  sub_1E4997EEC();
  sub_1E4997F5C();
}

uint64_t sub_1E48BF254(uint64_t a1)
{
  sub_1E4997EEC();
  sub_1E499892C();
  sub_1E4997F5C();
  v1 = sub_1E499896C();

  return v1;
}

uint64_t sub_1E48BF2DC(void *a1, uint64_t *a2)
{
  v2 = sub_1E4997EEC();
  v4 = v3;
  if (v2 == sub_1E4997EEC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1E499884C();
  }

  return v7 & 1;
}

uint64_t sub_1E48BF364@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E499749C();
  *a1 = result;
  return result;
}

uint64_t sub_1E48BF3BC(uint64_t a1, unint64_t a2, unint64_t a3, unsigned __int8 a4, uint64_t a5, unint64_t a6, unint64_t a7, char a8, __n128 a9, __n128 a10)
{
  if (a4 <= 1u)
  {
    if (a4)
    {
      if (a8 != 1)
      {
        goto LABEL_48;
      }

      v20 = *(a1 + 16);
      if (v20 != *(a5 + 16))
      {
        goto LABEL_48;
      }

      if (v20 && a1 != a5)
      {
        v21 = a1 + 32;
        v22 = a5 + 32;
        do
        {
          v21 += 8;
          v22 += 8;

          v23 = sub_1E49979FC();

          if ((v23 & 1) == 0)
          {
            break;
          }

          --v20;
        }

        while (v20);
        return v23 & 1;
      }

      goto LABEL_46;
    }

    if (a8)
    {
      goto LABEL_48;
    }

    v10 = a2;
    v11 = a6;
    if ((sub_1E49979FC() & 1) == 0)
    {
      goto LABEL_48;
    }

    if (v10)
    {
      if (!v11)
      {
        goto LABEL_48;
      }

      v12 = sub_1E49979FC();

      if ((v12 & 1) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_46;
    }

    if (!v11)
    {
      goto LABEL_46;
    }

    goto LABEL_48;
  }

  if (a4 != 2)
  {
    if (a4 == 3)
    {
      if (a8 == 3 && (a1 == a5 && a2 == a6 || (sub_1E499884C() & 1) != 0))
      {
        goto LABEL_23;
      }

      goto LABEL_48;
    }

    if (!(a3 | a2 | a1))
    {
      if (a8 != 4 || a7 | a6 | a5)
      {
        goto LABEL_48;
      }

      goto LABEL_46;
    }

    if (a1 != 1 || a3 | a2)
    {
      if (a8 != 4 || a5 != 2)
      {
        goto LABEL_48;
      }
    }

    else if (a8 != 4 || a5 != 1)
    {
      goto LABEL_48;
    }

    if (!(a7 | a6))
    {
LABEL_46:
      v23 = 1;
      return v23 & 1;
    }

LABEL_48:
    v23 = 0;
    return v23 & 1;
  }

  if (a8 != 2)
  {
    goto LABEL_48;
  }

  v13 = *(a1 + 16);
  if (v13 != *(a5 + 16))
  {
    goto LABEL_48;
  }

  if (v13 && a1 != a5)
  {
    v14 = a1 + 32;
    v15 = a5 + 32;
    do
    {
      v16 = a2;
      v17 = a6;

      v18 = sub_1E49979FC();

      if ((v18 & 1) == 0)
      {
        goto LABEL_48;
      }

      v14 += 8;
      v15 += 8;
      --v13;
      a6 = v17;
      a2 = v16;
    }

    while (v13);
  }

LABEL_23:

  return sub_1E49979CC();
}

uint64_t sub_1E48BF670(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4996F4C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC50, &qword_1E49A4BF0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC78, &qword_1E499A388);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1E48C12D0(a1, &v21 - v12, &qword_1ECF7EC50, &qword_1E49A4BF0);
  sub_1E48C12D0(a2, &v13[v15], &qword_1ECF7EC50, &qword_1E49A4BF0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1E48C12D0(v13, v10, &qword_1ECF7EC50, &qword_1E49A4BF0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1E48BFE7C(&qword_1ECF7EC80, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD8]);
      v18 = sub_1E4997E9C();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1E48C1338(v13, &qword_1ECF7EC50, &qword_1E49A4BF0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1E48C1338(v13, &qword_1ECF7EC78, &qword_1E499A388);
    v17 = 1;
    return v17 & 1;
  }

  sub_1E48C1338(v13, &qword_1ECF7EC50, &qword_1E49A4BF0);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1E48BF990(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1E499884C() & 1) == 0)
  {
    goto LABEL_20;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1E499884C() & 1) == 0)
  {
    goto LABEL_20;
  }

  v6 = 1;
  if (a1[4] == a2[4] && a1[5] == a2[5])
  {
    if ((a1[6] != a2[6] || a1[7] != a2[7]) && (sub_1E499884C() & 1) == 0)
    {
      goto LABEL_20;
    }

    v6 = 1;
    if (a1[8] == a2[8] && a1[9] == a2[9])
    {
      v7 = type metadata accessor for TimeString(0);
      if (MEMORY[0x1E691A740](a1 + *(v7 + 36), a2 + *(v7 + 36)))
      {
        v6 = sub_1E4996D2C() ^ 1;
        return v6 & 1;
      }

LABEL_20:
      v6 = 1;
    }
  }

  return v6 & 1;
}

uint64_t sub_1E48BFAAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeString(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E48BFB2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeString(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E48BFB90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC50, &qword_1E49A4BF0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E48BFC1C(uint64_t a1)
{
  v4 = *(sub_1E4996F4C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E48BFD3C;

  return sub_1E48B8C68(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E48BFD3C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E48BFE30()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeStringObserver) = *(v0 + 24);
}

uint64_t sub_1E48BFE7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E48BFEC4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11ClockPoster07RollingA0V5StyleO(uint64_t a1)
{
  if ((*(a1 + 24) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 24) & 7;
  }
}

__n128 __swift_memcpy74_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1E48BFFE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 74))
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

uint64_t sub_1E48C0028(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1E48C0618(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 != 2 && a4 != 3)
    {
      return v4;
    }

    goto LABEL_7;
  }

  if (a4)
  {
    if (a4 != 1)
    {
      return v4;
    }

LABEL_7:
  }
}

uint64_t sub_1E48C06B0(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 == 2)
    {
LABEL_4:
    }

    if (a4 == 3)
    {
    }
  }

  else if (a4)
  {
    if (a4 == 1)
    {
      goto LABEL_4;
    }
  }

  else
  {
  }

  return v5;
}

unint64_t sub_1E48C0754()
{
  result = qword_1ECF7EE08;
  if (!qword_1ECF7EE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7ED88, &qword_1E499AF68);
    sub_1E48C0854();
    sub_1E48C1B44(&qword_1ECF7EEA8, &qword_1ECF7EEB0, &qword_1E499B030, MEMORY[0x1E697E378]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7EE08);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1E48C0854()
{
  result = qword_1ECF7EE10;
  if (!qword_1ECF7EE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7ED98, &qword_1E499AF78);
    sub_1E48C090C();
    sub_1E48C1B44(&qword_1ECF7EE98, &qword_1ECF7EEA0, &qword_1E499B028, MEMORY[0x1E697E8E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7EE10);
  }

  return result;
}

unint64_t sub_1E48C090C()
{
  result = qword_1ECF7EE18;
  if (!qword_1ECF7EE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7EE20, &qword_1E499AFE8);
    sub_1E48C09C4();
    sub_1E48C1B44(&qword_1ECF7EE88, &qword_1ECF7EE90, &qword_1E499B020, MEMORY[0x1E697E378]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7EE18);
  }

  return result;
}

unint64_t sub_1E48C09C4()
{
  result = qword_1ECF7EE28;
  if (!qword_1ECF7EE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7EE30, &qword_1E499AFF0);
    sub_1E48C0A7C();
    sub_1E48C1B44(&qword_1ECF7EE78, &qword_1ECF7EE80, &qword_1E499B018, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7EE28);
  }

  return result;
}

unint64_t sub_1E48C0A7C()
{
  result = qword_1ECF7EE38;
  if (!qword_1ECF7EE38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7EE40, &qword_1E499AFF8);
    sub_1E48C0B34();
    sub_1E48C1B44(&qword_1ECF7EE68, &qword_1ECF7EE70, &qword_1E499B010, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7EE38);
  }

  return result;
}

unint64_t sub_1E48C0B34()
{
  result = qword_1ECF7EE48;
  if (!qword_1ECF7EE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7EE50, &qword_1E499B000);
    sub_1E48C0BC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7EE48);
  }

  return result;
}

unint64_t sub_1E48C0BC0()
{
  result = qword_1ECF7EE58;
  if (!qword_1ECF7EE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7EE60, &qword_1E499B008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7EE58);
  }

  return result;
}

unint64_t sub_1E48C0C44()
{
  result = qword_1ECF7EEC0;
  if (!qword_1ECF7EEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7EDE8, &qword_1E499AFC8);
    sub_1E48C0CD0();
    sub_1E48C0ECC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7EEC0);
  }

  return result;
}

unint64_t sub_1E48C0CD0()
{
  result = qword_1ECF7EEC8;
  if (!qword_1ECF7EEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7EDE0, &qword_1E499AFC0);
    sub_1E48C0D5C();
    sub_1E48C0E14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7EEC8);
  }

  return result;
}

unint64_t sub_1E48C0D5C()
{
  result = qword_1ECF7EED0;
  if (!qword_1ECF7EED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7EDF0, &qword_1E499AFD0);
    sub_1E48C090C();
    sub_1E48C1B44(&qword_1ECF7EED8, &qword_1ECF7EEE0, &qword_1E499B038, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7EED0);
  }

  return result;
}

unint64_t sub_1E48C0E14()
{
  result = qword_1ECF7EEE8;
  if (!qword_1ECF7EEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7EDC0, &qword_1E499AFA0);
    sub_1E48C090C();
    sub_1E48C1B44(&qword_1ECF7EEF0, &qword_1ECF7EEF8, &qword_1E499B040, MEMORY[0x1E697E8E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7EEE8);
  }

  return result;
}

unint64_t sub_1E48C0ECC()
{
  result = qword_1ECF7EF00;
  if (!qword_1ECF7EF00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7EDB0, &qword_1E499AF90);
    sub_1E48C0F58();
    sub_1E48C1010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7EF00);
  }

  return result;
}

unint64_t sub_1E48C0F58()
{
  result = qword_1ECF7EF08;
  if (!qword_1ECF7EF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7EDB8, &qword_1E499AF98);
    sub_1E48C090C();
    sub_1E48C1B44(&qword_1ECF7EF10, &qword_1ECF7EF18, &qword_1E499B048, MEMORY[0x1E697E8E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7EF08);
  }

  return result;
}

unint64_t sub_1E48C1010()
{
  result = qword_1ECF7EF20;
  if (!qword_1ECF7EF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7EDA0, &qword_1E499AF80);
    sub_1E48C090C();
    sub_1E48C1B44(&qword_1ECF7EF28, &qword_1ECF7EF30, &unk_1E499B050, MEMORY[0x1E697E8C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7EF20);
  }

  return result;
}

unint64_t sub_1E48C10C8()
{
  result = qword_1ECF7EF38;
  if (!qword_1ECF7EF38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7ED90, &qword_1E499AF70);
    sub_1E48C0754();
    sub_1E48C1B44(&qword_1ECF7EEB8, &qword_1ECF7EE00, &qword_1E499AFE0, MEMORY[0x1E697E378]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7EF38);
  }

  return result;
}

unint64_t sub_1E48C11C0()
{
  result = qword_1ECF7EF50;
  if (!qword_1ECF7EF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7EF48, &qword_1E499B060);
    sub_1E48C124C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7EF50);
  }

  return result;
}

unint64_t sub_1E48C124C()
{
  result = qword_1ECF7EF58;
  if (!qword_1ECF7EF58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7EF60, &qword_1E499B068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7EF58);
  }

  return result;
}

uint64_t sub_1E48C12D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E48C1338(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroy_120Tm()
{

  sub_1E48C06B0(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 90, 7);
}

double sub_1E48C1404@<D0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_1E4996A4C() - 8);
  v4 = *(v1 + 24);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_1E48BC3C0(v5, v4, v6, a1);
}

uint64_t sub_1E48C148C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E48C14F4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1E48C1504(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E48C1564(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1E48C1574()
{
  result = qword_1ECF7F020;
  if (!qword_1ECF7F020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F020);
  }

  return result;
}

uint64_t sub_1E48C15C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1E48C1630()
{
  result = qword_1ECF7F040;
  if (!qword_1ECF7F040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F040);
  }

  return result;
}

unint64_t sub_1E48C1684()
{
  result = qword_1ECF7F048;
  if (!qword_1ECF7F048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F048);
  }

  return result;
}

unint64_t sub_1E48C16D8()
{
  result = qword_1ECF7F080;
  if (!qword_1ECF7F080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F080);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RollingClock.Layout(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 3;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 3;
  v9 = v7 - 3;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RollingClock.Layout(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1E48C189C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1E48C18B0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1E48C18E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 25))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 24);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E48C192C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E48C1974(uint64_t result, unsigned int a2)
{
  v2 = a2 - 4;
  if (a2 >= 4)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 4;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

void sub_1E48C19B4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_1E48C1A00()
{
  result = qword_1ECF7F0C0;
  if (!qword_1ECF7F0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7ED70, &qword_1E499AF50);
    sub_1E48C1AB8();
    sub_1E48C1B44(&qword_1ECF7F0D0, &qword_1ECF7F0D8, qword_1E499B280, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F0C0);
  }

  return result;
}

unint64_t sub_1E48C1AB8()
{
  result = qword_1ECF7F0C8;
  if (!qword_1ECF7F0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7EDF8, &qword_1E499AFD8);
    sub_1E48C0C44();
    sub_1E48C10C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F0C8);
  }

  return result;
}

uint64_t sub_1E48C1B44(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t getEnumTagSinglePayload for RollingClock.Layout.Alignment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RollingClock.Layout.Alignment(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E48C1D14()
{
  result = qword_1ECF7F0E0;
  if (!qword_1ECF7F0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F0E8, qword_1E499B360);
    sub_1E48C1DA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F0E0);
  }

  return result;
}

unint64_t sub_1E48C1DA0()
{
  result = qword_1ECF7F0F0;
  if (!qword_1ECF7F0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F0F0);
  }

  return result;
}

unint64_t sub_1E48C1DF8()
{
  result = qword_1ECF7F0F8;
  if (!qword_1ECF7F0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F0F8);
  }

  return result;
}

unint64_t sub_1E48C1E5C()
{
  result = qword_1ECF7F100;
  if (!qword_1ECF7F100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F100);
  }

  return result;
}

id sub_1E48C1F40()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F108, &unk_1E49A18C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1E499B4C0;
  *(v0 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.662745098 green:0.462745098 blue:0.847058824 alpha:1.0];
  *(v0 + 40) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.952941176 green:0.337254902 blue:0.576470588 alpha:1.0];
  v1 = objc_opt_self();
  *(v0 + 48) = [v1 systemOrangeColor];
  *(v0 + 56) = [v1 systemYellowColor];
  *(v0 + 64) = [v1 systemGreenColor];
  *(v0 + 72) = [v1 systemBlueColor];
  *(v0 + 80) = [v1 systemIndigoColor];
  *(v0 + 88) = [v1 systemPurpleColor];
  result = [v1 systemPinkColor];
  *(v0 + 96) = result;
  qword_1ECF818F8 = v0;
  return result;
}

void sub_1E48C2170(void *a1, uint64_t a2, uint64_t a3, const char **a4, char a5)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for ClockFaceViewController();
  v8 = *a4;
  v9 = v10.receiver;
  objc_msgSendSuper2(&v10, v8, a3);
  v9[OBJC_IVAR____TtC11ClockPoster23ClockFaceViewController_canAnimateRedMode] = a5;
}

void sub_1E48C21E0(char a1)
{
  v3 = sub_1E499709C();
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = *(v1 + OBJC_IVAR____TtC11ClockPoster23ClockFaceViewController_hostView);
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xA8))(&v29, v4);
  v6 = *(v1 + OBJC_IVAR____TtC11ClockPoster23ClockFaceViewController_canAnimateRedMode);
  if (v29 == 2)
  {
    v14 = v5;
    v8 = v14;
    if (v6)
    {
      v15 = [v14 window];
      if (v15)
      {

        v16 = [v8 superview];
        if (v16)
        {

          v11 = objc_opt_self();
          v17 = swift_allocObject();
          *(v17 + 16) = v8;
          *(v17 + 24) = a1 & 1;
          v27 = sub_1E48C2958;
          v28 = v17;
          aBlock = MEMORY[0x1E69E9820];
          v24 = 1107296256;
          v13 = &block_descriptor;
          goto LABEL_11;
        }
      }
    }

    type metadata accessor for RedModeCustomColorTrait();
    sub_1E499843C();
    v20 = &qword_1ECF7F128;
    v21 = type metadata accessor for RedModeCustomColorTrait;
    v22 = &unk_1E499CBC8;
LABEL_16:
    sub_1E48C297C(v20, v21, v22);
    sub_1E49970AC();
    sub_1E499844C();
    goto LABEL_17;
  }

  if (v29 == 1)
  {
    v7 = v5;
    v8 = v7;
    if (v6)
    {
      v9 = [v7 window];
      if (v9)
      {

        v10 = [v8 superview];
        if (v10)
        {

          v11 = objc_opt_self();
          v12 = swift_allocObject();
          *(v12 + 16) = v8;
          *(v12 + 24) = a1 & 1;
          v27 = sub_1E48C29C4;
          v28 = v12;
          aBlock = MEMORY[0x1E69E9820];
          v24 = 1107296256;
          v13 = &block_descriptor_14;
LABEL_11:
          v25 = sub_1E4913064;
          v26 = v13;
          v18 = _Block_copy(&aBlock);
          v8 = v8;

          [v11 transitionWithView:v8 duration:5242882 options:v18 animations:0 completion:1.2];
          _Block_release(v18);
LABEL_17:

          return;
        }
      }
    }

    type metadata accessor for RedModeTrait();
    sub_1E499843C();
    v20 = &qword_1ECF7F130;
    v21 = type metadata accessor for RedModeTrait;
    v22 = &unk_1E499CC20;
    goto LABEL_16;
  }

  if (a1)
  {
    v19 = sel_amui_applyRedModeFilterAnimated_withCompletion_;
  }

  else
  {
    v19 = sel_amui_clearRedModeFilterAnimated_withCompletion_;
  }

  [v5 v19];
}

uint64_t (*sub_1E48C25CC(uint64_t a1))(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11ClockPoster23ClockFaceViewController_isDisplayStyleRedMode;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_1E48C2600;
}

uint64_t sub_1E48C2600(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  result = *(a1 + 16);
  v4 = *(v2 + v1);
  *(v2 + v1) = result;
  if (result != v4)
  {
    return (*((*MEMORY[0x1E69E7D40] & *v2) + 0x88))();
  }

  return result;
}

id sub_1E48C2714(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ClockFaceViewController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1E48C277C(uint64_t result)
{
  v2 = *v1;
  v3 = *(v2 + OBJC_IVAR____TtC11ClockPoster23ClockFaceViewController_isDisplayStyleRedMode);
  v4 = result & 1;
  *(v2 + OBJC_IVAR____TtC11ClockPoster23ClockFaceViewController_isDisplayStyleRedMode) = result;
  if (v3 != (result & 1))
  {
    sub_1E48C21E0(result & 1);
    *(*(v2 + OBJC_IVAR____TtC11ClockPoster29AnalogClockFaceViewController_clockFace) + OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_redMode) = v4;
    sub_1E494B0D8();
  }
}

uint64_t (*sub_1E48C27E0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1E48C25CC(v2);
  return sub_1E48C29DC;
}

uint64_t sub_1E48C2854(char a1)
{
  result = a1 & 1;
  v4 = *v1;
  v5 = *(v4 + OBJC_IVAR____TtC11ClockPoster23ClockFaceViewController_isDisplayStyleRedMode);
  *(v4 + OBJC_IVAR____TtC11ClockPoster23ClockFaceViewController_isDisplayStyleRedMode) = a1;
  if (v5 != result)
  {
    return sub_1E4961114(result);
  }

  return result;
}

uint64_t (*sub_1E48C2898(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1E48C25CC(v2);
  return sub_1E48C290C;
}

void sub_1E48C2910(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E48C297C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E48C29F4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E48C2A14(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t CLLocationCoordinate2D.hash(into:)(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1E691C170](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x1E691C170](*&v3);
}

uint64_t CLLocationCoordinate2D.hashValue.getter(double a1, double a2)
{
  sub_1E499892C();
  if (a1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = a1;
  }

  MEMORY[0x1E691C170](*&v4);
  if (a2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = a2;
  }

  MEMORY[0x1E691C170](*&v5);
  return sub_1E499896C();
}

uint64_t sub_1E48C2B54()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E499892C();
  CLLocationCoordinate2D.hash(into:)(v1, v2);
  return sub_1E499896C();
}

uint64_t sub_1E48C2BB0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1E499892C();
  CLLocationCoordinate2D.hash(into:)(v2, v3);
  return sub_1E499896C();
}

unint64_t sub_1E48C2C04()
{
  result = qword_1ECF7F138[0];
  if (!qword_1ECF7F138[0])
  {
    type metadata accessor for CLLocationCoordinate2D(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF7F138);
  }

  return result;
}

uint64_t sub_1E48C2C5C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1E48C2CFC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t Atomic.__allocating_init(wrappedValue:)(uint64_t a1)
{
  v2 = swift_allocObject();
  Atomic.init(wrappedValue:)(a1);
  return v2;
}

char *Atomic.init(wrappedValue:)(uint64_t a1)
{
  v3 = *v1;
  type metadata accessor for CPUnfairLock();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v1 + 2) = v4;
  (*(*(*(v3 + 80) - 8) + 32))(&v1[*(v3 + 96)], a1);
  return v1;
}

uint64_t sub_1E48C2EA8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  os_unfair_lock_lock(v3 + 4);
  sub_1E48C2C5C(a1);
  os_unfair_lock_unlock(v3 + 4);
  return swift_endAccess();
}

uint64_t sub_1E48C2F10(uint64_t a1)
{
  v3 = *v1;
  sub_1E48C33B8(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void (*sub_1E48C2F8C(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  sub_1E48C2EA8(v9);
  return sub_1E48C30A0;
}

void sub_1E48C30A0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_1E48C33B8(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    sub_1E48C33B8(*(*a1 + 32));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

char *Atomic.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  return v0;
}

uint64_t Atomic.__deallocating_deinit()
{
  Atomic.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E48C3264(uint64_t (*a1)(void), uint64_t a2)
{
  if ([objc_opt_self() isMainThread])
  {
    return a1();
  }

  sub_1E48C3658();
  v5 = sub_1E499839C();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[4] = sub_1E48C36A4;
  v8[5] = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1E496F580;
  v8[3] = &block_descriptor_0;
  v7 = _Block_copy(v8);

  dispatch_sync(v5, v7);

  _Block_release(v7);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E48C33B8(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - v5;
  v7 = v1[2];
  swift_beginAccess();
  os_unfair_lock_lock(v7 + 4);
  swift_endAccess();
  (*(v4 + 16))(v6, a1, v3);
  sub_1E48C2CFC(v6);
  swift_beginAccess();
  os_unfair_lock_unlock(v7 + 4);
  return swift_endAccess();
}

uint64_t sub_1E48C34DC(uint64_t a1)
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

unint64_t sub_1E48C3658()
{
  result = qword_1ECF809E0;
  if (!qword_1ECF809E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF809E0);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1E48C36F4()
{
  [v0 pointSize];
  [v0 pointSize];
  if (v1 >= 0.0)
  {
    [v0 pointSize];
    v2 = 26.0;
    v4 = 0.76;
    if (v6 <= 26.0)
    {
      v3 = 1.0;
    }

    else
    {
      v3 = 0.76;
    }

    if (v6 <= 26.0)
    {
      v5 = 0.0;
    }

    else
    {
      v5 = 26.0;
    }

    [v0 pointSize];
    if (v7 >= 26.0)
    {
      [v0 pointSize];
      v2 = 98.0;
      v4 = 0.45;
      if (v8 > 98.0)
      {
        v3 = 0.45;
        v5 = 98.0;
      }

      [v0 pointSize];
      if (v9 >= 98.0)
      {
        [v0 pointSize];
        v2 = 200.0;
        v4 = 0.25;
        if (v10 > 200.0)
        {
          v3 = 0.25;
          v5 = 200.0;
        }

        [v0 pointSize];
      }
    }
  }

  else
  {
    v2 = 0.0;
    v3 = 1.0;
    v4 = 1.0;
    v5 = 0.0;
  }

  [v0 pointSize];
  v12 = v3 + (v4 - v3) * ((v11 - v5) / (v2 - v5));
  [v0 pointSize];
  v14 = floor(v13 * v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F1C0, &qword_1E499B680);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1E499B670;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F1C8, &qword_1E499B688);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E499A180;
  v17 = *MEMORY[0x1E69DDCF0];
  *(inited + 32) = *MEMORY[0x1E69DDCF0];
  v18 = *MEMORY[0x1E69DDCE8];
  *(inited + 40) = 38;
  *(inited + 48) = v18;
  *(inited + 56) = 1;
  v19 = v17;
  v20 = v18;
  v21 = sub_1E4949148(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F1D0, &qword_1E499B690);
  swift_arrayDestroy();
  *(v15 + 32) = v21;
  v22 = [v0 fontDescriptor];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F1D8, &qword_1E499B698);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1E499B670;
  v24 = *MEMORY[0x1E69DB8B0];
  *(v23 + 32) = *MEMORY[0x1E69DB8B0];
  *(v23 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F1E0, &qword_1E499B6A0);
  *(v23 + 40) = v15;
  v25 = v24;
  sub_1E4949234(v23);
  swift_setDeallocating();
  sub_1E48C1338(v23 + 32, &qword_1ECF7F1E8, &qword_1E49A3DF0);
  type metadata accessor for AttributeName(0);
  sub_1E48C3FBC();
  v26 = sub_1E4997E2C();

  v27 = [objc_opt_self() fontWithDescriptor:v22 size:v14];
  return v27;
}

uint64_t sub_1E48C3A60(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F208, &qword_1E499B6C0);
    v1 = sub_1E499871C();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v24 = *(*(a1 + 56) + v11);
    v13 = v12;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F210, &qword_1E499B6C8);
    swift_dynamicCast();
    sub_1E48C42DC(&v25[8], v23);
    sub_1E48C42DC(v23, v25);
    sub_1E4997EEC();
    sub_1E499892C();
    sub_1E4997F5C();
    v14 = sub_1E499896C();

    v15 = -1 << *(v1 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v6 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v6 + 8 * v17);
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~*(v6 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v13;
    result = sub_1E48C42DC(v25, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1E48C3D14(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F218, &qword_1E49A3E50);
    v1 = sub_1E499871C();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v26 = *(*(a1 + 56) + v11);
    v13 = v26;
    type metadata accessor for CTFont(0);
    v14 = v12;
    v15 = v13;
    swift_dynamicCast();
    sub_1E48C42DC(&v27[8], v25);
    sub_1E48C42DC(v25, v27);
    sub_1E4997EEC();
    sub_1E499892C();
    sub_1E4997F5C();
    v16 = sub_1E499896C();

    v17 = -1 << *(v1 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v6 + 8 * (v18 >> 6))) == 0)
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
        v23 = *(v6 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v6 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v14;
    result = sub_1E48C42DC(v27, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1E48C3FBC()
{
  result = qword_1ECF7F098;
  if (!qword_1ECF7F098)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F098);
  }

  return result;
}

CTFontRef sub_1E48C4014(unsigned __int8 a1, uint64_t a2, char a3, CGFloat a4)
{
  v7 = sub_1E4997EAC();

  v8 = CTFontCreateWithNameAndOptions(v7, a4, 0, 0x400uLL);

  if (a3)
  {
    return v8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F1F0, &qword_1E499B6A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E499B670;
  *(inited + 32) = TextToFourCharCode();
  *(inited + 40) = a2;
  v11 = sub_1E494935C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F1F8, &qword_1E499B6B0);
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_1E499B670;
  sub_1E4997EEC();
  v13 = sub_1E4997EAC();

  *(v12 + 32) = v13;
  *(v12 + 40) = v11;
  v14 = sub_1E494943C(v12);
  swift_setDeallocating();
  sub_1E48C1338(v12 + 32, &qword_1ECF7F200, &qword_1E499B6B8);
  v15 = [(__CTFont *)v8 fontDescriptor];
  sub_1E48C3A60(v14);

  type metadata accessor for AttributeName(0);
  sub_1E48C3FBC();
  v16 = sub_1E4997E2C();

  v17 = [v15 fontDescriptorByAddingAttributes_];

  v18 = [objc_opt_self() fontWithDescriptor:v17 size:a4];
  return v18;
}

_OWORD *sub_1E48C42DC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1E48C42EC(char *a1, char *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 ^ v2 ^ 1;
  v5 = v3 >= 0;
  if (v3 < 0)
  {
    v6 = v3 ^ v2 ^ 1;
  }

  else
  {
    v6 = 0;
  }

  if (!v5)
  {
    v4 = 0;
  }

  if (v2 >= 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  return v7 & 1;
}

uint64_t sub_1E48C4318()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F220, &unk_1E499B6E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1E499B6D0;
  *(v0 + 32) = 0;
  sub_1E4997A6C();
  v1 = sub_1E4997A8C();

  *(v0 + 40) = v1;
  *(v0 + 48) = 0x3FA999999999999ALL;
  *(v0 + 56) = sub_1E4997A6C();
  *(v0 + 64) = 0x3FC999999999999ALL;
  *(v0 + 72) = sub_1E4997A6C();
  *(v0 + 80) = 0x3FE3333333333333;
  sub_1E4997A6C();
  v2 = sub_1E4997A8C();

  *(v0 + 88) = v2;
  return v0;
}

uint64_t getEnumTagSinglePayload for WorldConstants.Pins.SelectionState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7F)
  {
    goto LABEL_17;
  }

  if (a2 + 129 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 129) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 129;
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

      return (*a1 | (v4 << 8)) - 129;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 129;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x7E | (*a1 >> 7)) ^ 0x7F;
  if (v6 >= 0x7E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for WorldConstants.Pins.SelectionState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 129 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 129) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7F)
  {
    v4 = 0;
  }

  if (a2 > 0x7E)
  {
    v5 = ((a2 - 127) >> 8) + 1;
    *result = a2 - 127;
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
    *result = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1E48C45BC@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 8);
  v6 = *(v5 + 8);
  swift_unknownObjectRetain();
  v6(ObjectType, v5);
  result = swift_unknownObjectRelease();
  *(a1 + 97) = *(v1 + 16);
  return result;
}

uint64_t sub_1E48C4664()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  result = 0;
  if (v2)
  {
    v4 = v1 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_1E48C46E4()
{
  v1 = *(v0 + 16);
  if (v1 <= 1)
  {
    if (*(v0 + 16))
    {

      return sub_1E48D4D14();
    }

    else
    {

      return sub_1E48D5058();
    }
  }

  else if (v1 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F228, &qword_1E499B760);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1E499B670;
    sub_1E49347A0(v3 + 32);
    return v3;
  }

  else if (v1 == 3)
  {

    return sub_1E48D57B4();
  }

  else
  {

    return sub_1E48D5B04();
  }
}

uint64_t sub_1E48C47CC(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 8);
  v5 = *(v4 + 8);
  swift_unknownObjectRetain();
  v5(ObjectType, v4);
  return swift_unknownObjectRelease();
}

uint64_t sub_1E48C4860()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 8);
  v4 = *(v3 + 8);
  swift_unknownObjectRetain();
  v4(ObjectType, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_1E48C48FC(uint64_t a1)
{
  sub_1E48C5010();
  swift_beginAccess();
  v3 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F230, &qword_1E499B768);
  if (swift_dynamicCastClass())
  {
    v4 = qword_1ECF7EAD8;
    swift_unknownObjectRetain();
    if (v4 != -1)
    {
      swift_once();
    }

    sub_1E48C83B4(a1, v14);
    sub_1E48C9F14(v14, v13);
    sub_1E48C9F14(v13, v12);

    sub_1E491AEE0(v12);
    swift_unknownObjectRelease();

    sub_1E48C8360(a1);
    sub_1E48C9F70(v13);
    return sub_1E48C9F70(v14);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F238, &qword_1E499B770);
    if (swift_dynamicCastClass())
    {
      v6 = qword_1ECF7EAD8;
      swift_unknownObjectRetain();
      if (v6 != -1)
      {
        swift_once();
      }

      sub_1E48C89BC(a1, v14);
      sub_1E48C9E64(v14, v13);
      sub_1E48C9E64(v13, v12);

      sub_1E49273D4(v12);
      swift_unknownObjectRelease();

      sub_1E48C8360(a1);
      sub_1E48C9EC0(v13);
      return sub_1E48C9EC0(v14);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F240, &qword_1E499B778);
      if (swift_dynamicCastClass())
      {
        v7 = qword_1ECF7EAD8;
        swift_unknownObjectRetain();
        if (v7 != -1)
        {
          swift_once();
        }

        sub_1E48C8FCC(a1, v14);
        sub_1E48C9DB4(v14, v13);
        sub_1E48C9DB4(v13, v12);

        sub_1E48DD828(v12);
        swift_unknownObjectRelease();

        sub_1E48C8360(a1);
        sub_1E48C9E10(v13);
        return sub_1E48C9E10(v14);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F248, &unk_1E499B780);
        if (swift_dynamicCastClass())
        {
          v8 = qword_1ECF7EAD8;
          swift_unknownObjectRetain();
          if (v8 != -1)
          {
            swift_once();
          }

          sub_1E48C9608(a1, v14);
          sub_1E48C9C40(v14, v13);
          sub_1E48C9C40(v13, v12);

          sub_1E494FBC4(v12);
          swift_unknownObjectRelease();

          sub_1E48C8360(a1);
          sub_1E48C9D60(v13);
          return sub_1E48C9D60(v14);
        }

        else
        {
          ObjectType = swift_getObjectType();
          sub_1E48C8304(a1, v14);
          v10 = *(v3 + 8);
          v11 = *(v10 + 16);
          swift_unknownObjectRetain();
          v11(v14, ObjectType, v10);
          swift_unknownObjectRelease();
          return sub_1E48C8360(a1);
        }
      }
    }
  }
}

void (*sub_1E48C4CE0(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xF0uLL);
  }

  *a1 = v3;
  *(v3 + 232) = v1;
  swift_beginAccess();
  v4 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 8);
  v7 = *(v6 + 8);
  swift_unknownObjectRetain();
  v7(ObjectType, v6);
  swift_unknownObjectRelease();
  return sub_1E48C4DBC;
}

void sub_1E48C4DBC(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1E48C8304(*a1, v2 + 104);
    sub_1E48C48FC(v2 + 104);
    sub_1E48C8360(v2);
  }

  else
  {
    sub_1E48C48FC(*a1);
  }

  free(v2);
}

uint64_t sub_1E48C4E24()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 32);
  swift_unknownObjectRetain();
  v4 = v3(ObjectType, v1);
  swift_unknownObjectRelease();
  return v4;
}

void sub_1E48C4EB4()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 32);
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 32);
  swift_unknownObjectRetain();
  v5 = v4(ObjectType, v2);
  swift_unknownObjectRelease();
  v6 = [v5 view];

  if (v6)
  {
    [v6 removeFromSuperview];

    v7 = *(v1 + 32);
    v8 = swift_getObjectType();
    v9 = *(v7 + 32);
    swift_unknownObjectRetain();
    v10 = v9(v8, v7);
    swift_unknownObjectRelease();
    [v10 removeFromParentViewController];

    if (qword_1ECF7EB40 != -1)
    {
      swift_once();
    }

    sub_1E493C6E8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E48C5010()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F230, &qword_1E499B768);
  if (swift_dynamicCastClass())
  {
    v1 = qword_1ECF7EAD8;
    swift_unknownObjectRetain();
    if (v1 != -1)
    {
      swift_once();
    }

    v2 = qword_1ECF81908;

    sub_1E491B630(v29);

    v3 = *(v0 + 32);
    v4 = *(v0 + 16);
    ObjectType = swift_getObjectType();
    v6 = *(v3 + 8);
    v7 = *(v6 + 8);
    swift_unknownObjectRetain();
    v7(v30, ObjectType, v6);
    swift_unknownObjectRelease();
    sub_1E48CA874(v29, v4, v30, v2);
    swift_unknownObjectRelease();
    sub_1E48C8360(v30);
    sub_1E48C9F70(v29);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F238, &qword_1E499B770);
  if (swift_dynamicCastClass())
  {
    v8 = qword_1ECF7EAD8;
    swift_unknownObjectRetain();
    if (v8 != -1)
    {
      swift_once();
    }

    v9 = qword_1ECF81908;
    v10 = sub_1E48CD118(&qword_1ECF7F258, 255, type metadata accessor for DigitalClockViewModel, &unk_1E49A1E40);
    v11 = *(v10 + 40);
    v12 = type metadata accessor for DigitalClockViewModel(0);

    v11(v29, v12, v10);

    v13 = *(v0 + 32);
    v14 = *(v0 + 16);
    v15 = swift_getObjectType();
    v16 = *(v13 + 8);
    v17 = *(v16 + 8);
    swift_unknownObjectRetain();
    v17(v30, v15, v16);
    swift_unknownObjectRelease();
    sub_1E48CAF40(v29, v14, v30, v9);
    swift_unknownObjectRelease();
    sub_1E48C8360(v30);
    sub_1E48C9EC0(v29);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F240, &qword_1E499B778);
  result = swift_dynamicCastClass();
  if (result)
  {
    v19 = qword_1ECF7EAD8;
    swift_unknownObjectRetain();
    if (v19 != -1)
    {
      swift_once();
    }

    v20 = qword_1ECF81908;
    v21 = sub_1E48CD118(&qword_1ECF7F250, 255, type metadata accessor for WorldViewModel, &unk_1E499D488);
    v22 = *(v21 + 40);
    v23 = type metadata accessor for WorldViewModel(0);

    v22(v29, v23, v21);

    v24 = *(v0 + 32);
    v25 = *(v0 + 16);
    v26 = swift_getObjectType();
    v27 = *(v24 + 8);
    v28 = *(v27 + 8);
    swift_unknownObjectRetain();
    v28(v30, v26, v27);
    swift_unknownObjectRelease();
    sub_1E48CB60C(v29, v25, v30, v20, &type metadata for WorldViewModelContext, sub_1E48CD370, &unk_1F5E83AA0, sub_1E48C9DB4);
    swift_unknownObjectRelease();
    sub_1E48C8360(v30);
    return sub_1E48C9E10(v29);
  }

  return result;
}

uint64_t ClockFaceController.__allocating_init(with:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ClockFaceController.init(with:)(a1);
  return v2;
}

void ClockFaceController.init(with:)(uint64_t a1)
{
  *(v1 + 16) = *(a1 + 97);
  v3 = sub_1E48CC348(a1);
  v5 = v4;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 32);
  swift_unknownObjectRetain();
  v8 = v7(ObjectType, v5);
  swift_unknownObjectRelease();
  v9 = [v8 view];

  if (v9)
  {
    strcpy(v20, "clock-poster-");
    HIWORD(v20[1]) = -4864;
    v10 = 0xE700000000000000;
    v11 = 0x6C617469676964;
    v12 = *(a1 + 97);
    v13 = 0xE500000000000000;
    v14 = 0x646C726F77;
    v15 = 0xE500000000000000;
    v16 = 0x72616C6F73;
    if (v12 != 3)
    {
      v16 = 2036427888;
      v15 = 0xE400000000000000;
    }

    if (v12 != 2)
    {
      v14 = v16;
      v13 = v15;
    }

    if (*(a1 + 97))
    {
      v11 = 0x676F6C616E61;
      v10 = 0xE600000000000000;
    }

    if (*(a1 + 97) <= 1u)
    {
      v17 = v11;
    }

    else
    {
      v17 = v14;
    }

    if (*(a1 + 97) <= 1u)
    {
      v18 = v10;
    }

    else
    {
      v18 = v13;
    }

    MEMORY[0x1E691B7A0](v17, v18);

    v19 = sub_1E4997EAC();

    [v9 setAccessibilityIdentifier_];

    sub_1E48CC924(a1);
  }

  else
  {
    __break(1u);
  }
}

void sub_1E48C5648(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v34 - v7;
  v9 = sub_1E499708C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_beginAccess();
    v13 = *(v3 + 32);
    ObjectType = swift_getObjectType();
    v15 = *(v13 + 32);
    v16 = a1;
    swift_unknownObjectRetain();
    v17 = v15(ObjectType, v13);
    swift_unknownObjectRelease();
    [v16 bs:v17 addChildViewController:a2 withSuperview:?];

LABEL_13:
    return;
  }

  if (qword_1EE2BB450 != -1)
  {
    swift_once();
  }

  v18 = qword_1EE2BB458;
  v19 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_rendering_private;
  swift_beginAccess();
  sub_1E48CC978(v18 + v19, v8);
  v20 = *(v10 + 48);
  if (v20(v8, 1, v9) == 1)
  {
    sub_1E4904BF4(v12);
    if (v20(v8, 1, v9) != 1)
    {
      sub_1E48C1338(v8, &qword_1ECF7F008, &qword_1E499B170);
    }
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  v21 = sub_1E499706C();
  v22 = sub_1E499830C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v35 = a2;
    v36[0] = v24;
    v25 = v24;
    *v23 = 136446210;
    v26 = sub_1E48C6114(v24, type metadata accessor for ClockFaceController);
    v28 = sub_1E48CA094(v26, v27, v36);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_1E48B0000, v21, v22, "[%{public}s]: No parent view controller provided", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    v29 = v25;
    a2 = v35;
    MEMORY[0x1E691CED0](v29, -1, -1);
    MEMORY[0x1E691CED0](v23, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  swift_beginAccess();
  v30 = *(v3 + 32);
  v31 = swift_getObjectType();
  v32 = *(v30 + 32);
  swift_unknownObjectRetain();
  v33 = v32(v31, v30);
  swift_unknownObjectRelease();
  v17 = [v33 view];

  if (v17)
  {
    [a2 addSubview_];
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_1E48C5A68@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  ObjectType = swift_getObjectType();
  result = (*(*(v4 + 24) + 8))(ObjectType);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1E48C5AE4(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  ObjectType = swift_getObjectType();
  (*(*(v5 + 24) + 16))(v2, ObjectType);
  *(v3 + 24) = v4;
  *(v3 + 32) = v5;
  return swift_endAccess();
}

uint64_t sub_1E48C5B70()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  ObjectType = swift_getObjectType();
  return (*(*(v1 + 24) + 8))(ObjectType) & 1;
}

uint64_t sub_1E48C5BD8(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 24);
  v5 = *(v2 + 32);
  ObjectType = swift_getObjectType();
  (*(*(v5 + 24) + 16))(a1, ObjectType);
  *(v2 + 24) = v4;
  *(v2 + 32) = v5;
  return swift_endAccess();
}

void (*sub_1E48C5C68(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  swift_beginAccess();
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  *(v4 + 24) = v5;
  *(v4 + 64) = (*(*(v6 + 24) + 8))(ObjectType) & 1;
  return sub_1E48C5D28;
}

void sub_1E48C5D28(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  v3 = *(*a1 + 56);
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  ObjectType = swift_getObjectType();
  v1[6] = v4;
  (*(*(v5 + 24) + 16))(v2, ObjectType);
  *(v3 + 24) = v1[6];
  *(v3 + 32) = v5;
  swift_endAccess();

  free(v1);
}

uint64_t sub_1E48C5DCC()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  ObjectType = swift_getObjectType();
  return (*(*(v1 + 24) + 32))(ObjectType);
}

uint64_t ClockFaceController.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1E48C5E98()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  return (*(*(v2 + 24) + 8))(ObjectType) & 1;
}

uint64_t sub_1E48C5F04(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  ObjectType = swift_getObjectType();
  (*(*(v5 + 24) + 16))(a1, ObjectType);
  *(v3 + 24) = v4;
  *(v3 + 32) = v5;
  return swift_endAccess();
}

void (*sub_1E48C5F90(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1E48C5C68(v2);
  return sub_1E48C2910;
}

uint64_t sub_1E48C6004()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  return (*(*(v2 + 24) + 32))(ObjectType);
}

uint64_t sub_1E48C607C(uint64_t a1)
{
  swift_getWitnessTable();

  return CustomStringConvertibleViaMirror.description.getter(a1);
}

uint64_t sub_1E48C6114(uint64_t a1, uint64_t (*a2)(uint64_t, __n128))
{
  v5 = sub_1E499899C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a2(a1, v7);
  v17 = v2;

  sub_1E499897C();
  sub_1E499898C();
  (*(v6 + 8))(v9, v5);
  v10 = sub_1E499868C();

  v17 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F270, &qword_1E499B8A0);
  sub_1E48C1B44(&qword_1ECF7F278, &qword_1ECF7F270, &qword_1E499B8A0, MEMORY[0x1E69E6310]);
  v11 = sub_1E4997E8C();
  v13 = v12;

  v17 = 60;
  v18 = 0xE100000000000000;
  v14 = sub_1E4998A4C();
  MEMORY[0x1E691B7A0](v14);

  MEMORY[0x1E691B7A0](0x20200A5B20, 0xE500000000000000);
  MEMORY[0x1E691B7A0](v11, v13);

  MEMORY[0x1E691B7A0](4087050, 0xE300000000000000);
  return v17;
}

uint64_t sub_1E48C63A0(float a1)
{
  v2 = sub_1E499899C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &type metadata for FixedColorChannel;
  *&v13 = a1;
  sub_1E499897C();
  sub_1E499898C();
  (*(v3 + 8))(v5, v2);
  v6 = sub_1E499868C();

  v13 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F270, &qword_1E499B8A0);
  sub_1E48C1B44(&qword_1ECF7F278, &qword_1ECF7F270, &qword_1E499B8A0, MEMORY[0x1E69E6310]);
  v7 = sub_1E4997E8C();
  v9 = v8;

  v13 = 60;
  v14 = 0xE100000000000000;
  v10 = sub_1E4998A4C();
  MEMORY[0x1E691B7A0](v10);

  MEMORY[0x1E691B7A0](0x20200A5B20, 0xE500000000000000);
  MEMORY[0x1E691B7A0](v7, v9);

  MEMORY[0x1E691B7A0](4087050, 0xE300000000000000);
  return v13;
}

uint64_t sub_1E48C6618(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = sub_1E499899C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1;
  v17 = swift_allocObject();
  a3(v3, v17 + 16);
  sub_1E499897C();
  sub_1E499898C();
  (*(v7 + 8))(v9, v6);
  v10 = sub_1E499868C();

  v17 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F270, &qword_1E499B8A0);
  sub_1E48C1B44(&qword_1ECF7F278, &qword_1ECF7F270, &qword_1E499B8A0, MEMORY[0x1E69E6310]);
  v11 = sub_1E4997E8C();
  v13 = v12;

  v17 = 60;
  v18 = 0xE100000000000000;
  v14 = sub_1E4998A4C();
  MEMORY[0x1E691B7A0](v14);

  MEMORY[0x1E691B7A0](0x20200A5B20, 0xE500000000000000);
  MEMORY[0x1E691B7A0](v11, v13);

  MEMORY[0x1E691B7A0](4087050, 0xE300000000000000);
  return v17;
}

uint64_t sub_1E48C68B8()
{
  v1 = sub_1E499899C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &type metadata for DigitalClockContext;
  v12 = swift_allocObject();
  sub_1E48C9E64(v0, v12 + 16);
  sub_1E499897C();
  sub_1E499898C();
  (*(v2 + 8))(v4, v1);
  v5 = sub_1E499868C();

  v12 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F270, &qword_1E499B8A0);
  sub_1E48C1B44(&qword_1ECF7F278, &qword_1ECF7F270, &qword_1E499B8A0, MEMORY[0x1E69E6310]);
  v6 = sub_1E4997E8C();
  v8 = v7;

  v12 = 60;
  v13 = 0xE100000000000000;
  v9 = sub_1E4998A4C();
  MEMORY[0x1E691B7A0](v9);

  MEMORY[0x1E691B7A0](0x20200A5B20, 0xE500000000000000);
  MEMORY[0x1E691B7A0](v6, v8);

  MEMORY[0x1E691B7A0](4087050, 0xE300000000000000);
  return v12;
}

uint64_t sub_1E48C6B1C(char a1)
{
  v2 = sub_1E499899C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &type metadata for ClockTimeInterval;
  LOBYTE(v13) = a1;
  sub_1E499897C();
  sub_1E499898C();
  (*(v3 + 8))(v5, v2);
  v6 = sub_1E499868C();

  v13 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F270, &qword_1E499B8A0);
  sub_1E48C1B44(&qword_1ECF7F278, &qword_1ECF7F270, &qword_1E499B8A0, MEMORY[0x1E69E6310]);
  v7 = sub_1E4997E8C();
  v9 = v8;

  v13 = 60;
  v14 = 0xE100000000000000;
  v10 = sub_1E4998A4C();
  MEMORY[0x1E691B7A0](v10);

  MEMORY[0x1E691B7A0](0x20200A5B20, 0xE500000000000000);
  MEMORY[0x1E691B7A0](v7, v9);

  MEMORY[0x1E691B7A0](4087050, 0xE300000000000000);
  return v13;
}

uint64_t sub_1E48C6D6C()
{
  v1 = sub_1E499899C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &type metadata for ClockPosterConfiguration;
  v12 = swift_allocObject();
  sub_1E48CCF0C(v0, v12 + 16);
  sub_1E499897C();
  sub_1E499898C();
  (*(v2 + 8))(v4, v1);
  v5 = sub_1E499868C();

  v12 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F270, &qword_1E499B8A0);
  sub_1E48C1B44(&qword_1ECF7F278, &qword_1ECF7F270, &qword_1E499B8A0, MEMORY[0x1E69E6310]);
  v6 = sub_1E4997E8C();
  v8 = v7;

  v12 = 60;
  v13 = 0xE100000000000000;
  v9 = sub_1E4998A4C();
  MEMORY[0x1E691B7A0](v9);

  MEMORY[0x1E691B7A0](0x20200A5B20, 0xE500000000000000);
  MEMORY[0x1E691B7A0](v6, v8);

  MEMORY[0x1E691B7A0](4087050, 0xE300000000000000);
  return v12;
}

uint64_t sub_1E48C6FFC(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v5 = sub_1E499899C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[3] = (a1)(0, v7);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v18);
  sub_1E48CCD6C(v2, boxed_opaque_existential_0, a2);
  sub_1E499897C();
  sub_1E499898C();
  (*(v6 + 8))(v9, v5);
  v11 = sub_1E499868C();

  v18[0] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F270, &qword_1E499B8A0);
  sub_1E48C1B44(&qword_1ECF7F278, &qword_1ECF7F270, &qword_1E499B8A0, MEMORY[0x1E69E6310]);
  v12 = sub_1E4997E8C();
  v14 = v13;

  v18[0] = 60;
  v18[1] = 0xE100000000000000;
  v15 = sub_1E4998A4C();
  MEMORY[0x1E691B7A0](v15);

  MEMORY[0x1E691B7A0](0x20200A5B20, 0xE500000000000000);
  MEMORY[0x1E691B7A0](v12, v14);

  MEMORY[0x1E691B7A0](4087050, 0xE300000000000000);
  return v18[0];
}

uint64_t sub_1E48C72E4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = sub_1E499899C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1;
  v17 = swift_allocObject();
  a3(v3, v17 + 16);
  sub_1E499897C();
  sub_1E499898C();
  (*(v7 + 8))(v9, v6);
  v10 = sub_1E499868C();

  v17 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F270, &qword_1E499B8A0);
  sub_1E48C1B44(&qword_1ECF7F278, &qword_1ECF7F270, &qword_1E499B8A0, MEMORY[0x1E69E6310]);
  v11 = sub_1E4997E8C();
  v13 = v12;

  v17 = 60;
  v18 = 0xE100000000000000;
  v14 = sub_1E4998A4C();
  MEMORY[0x1E691B7A0](v14);

  MEMORY[0x1E691B7A0](0x20200A5B20, 0xE500000000000000);
  MEMORY[0x1E691B7A0](v11, v13);

  MEMORY[0x1E691B7A0](4087050, 0xE300000000000000);
  return v17;
}

uint64_t sub_1E48C7558(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_1E499899C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = &type metadata for LocationSource.Source;
  v17 = a1;
  v18 = a2;
  v19 = a3 & 1;
  sub_1E48CCD00(a1, a2);
  sub_1E499897C();
  sub_1E499898C();
  (*(v7 + 8))(v9, v6);
  v10 = sub_1E499868C();

  v17 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F270, &qword_1E499B8A0);
  sub_1E48C1B44(&qword_1ECF7F278, &qword_1ECF7F270, &qword_1E499B8A0, MEMORY[0x1E69E6310]);
  v11 = sub_1E4997E8C();
  v13 = v12;

  v17 = 60;
  v18 = 0xE100000000000000;
  v14 = sub_1E4998A4C();
  MEMORY[0x1E691B7A0](v14);

  MEMORY[0x1E691B7A0](0x20200A5B20, 0xE500000000000000);
  MEMORY[0x1E691B7A0](v11, v13);

  MEMORY[0x1E691B7A0](4087050, 0xE300000000000000);
  return v17;
}

uint64_t sub_1E48C77C4()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1E499899C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v2;
  v14 = v1;

  sub_1E499897C();
  sub_1E499898C();
  (*(v4 + 8))(v6, v3);
  v7 = sub_1E499868C();

  v14 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F270, &qword_1E499B8A0);
  sub_1E48C1B44(&qword_1ECF7F278, &qword_1ECF7F270, &qword_1E499B8A0, MEMORY[0x1E69E6310]);
  v8 = sub_1E4997E8C();
  v10 = v9;

  v14 = 60;
  v15 = 0xE100000000000000;
  v11 = sub_1E4998A4C();
  MEMORY[0x1E691B7A0](v11);

  MEMORY[0x1E691B7A0](0x20200A5B20, 0xE500000000000000);
  MEMORY[0x1E691B7A0](v8, v10);

  MEMORY[0x1E691B7A0](4087050, 0xE300000000000000);
  return v14;
}

uint64_t sub_1E48C7A84(double a1, double a2, double a3, double a4)
{
  v8 = sub_1E499899C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = &type metadata for WorldMap.DotFillSpec;
  v12 = swift_allocObject();
  v20 = v12;
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  sub_1E499897C();
  sub_1E499898C();
  (*(v9 + 8))(v11, v8);
  v13 = sub_1E499868C();

  v20 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F270, &qword_1E499B8A0);
  sub_1E48C1B44(&qword_1ECF7F278, &qword_1ECF7F270, &qword_1E499B8A0, MEMORY[0x1E69E6310]);
  v14 = sub_1E4997E8C();
  v16 = v15;

  v20 = 60;
  v21 = 0xE100000000000000;
  v17 = sub_1E4998A4C();
  MEMORY[0x1E691B7A0](v17);

  MEMORY[0x1E691B7A0](0x20200A5B20, 0xE500000000000000);
  MEMORY[0x1E691B7A0](v14, v16);

  MEMORY[0x1E691B7A0](4087050, 0xE300000000000000);
  return v20;
}

uint64_t sub_1E48C7D04()
{
  v1 = sub_1E499899C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 112);
  v22[6] = *(v0 + 96);
  v22[7] = v5;
  v22[8] = *(v0 + 128);
  v23 = *(v0 + 144);
  v6 = *(v0 + 48);
  v22[2] = *(v0 + 32);
  v22[3] = v6;
  v7 = *(v0 + 80);
  v22[4] = *(v0 + 64);
  v22[5] = v7;
  v8 = *(v0 + 16);
  v22[0] = *v0;
  v22[1] = v8;
  v21[22] = &type metadata for WorldMap;
  v9 = swift_allocObject();
  v21[19] = v9;
  v10 = *(v0 + 112);
  *(v9 + 112) = *(v0 + 96);
  *(v9 + 128) = v10;
  *(v9 + 144) = *(v0 + 128);
  *(v9 + 160) = *(v0 + 144);
  v11 = *(v0 + 48);
  *(v9 + 48) = *(v0 + 32);
  *(v9 + 64) = v11;
  v12 = *(v0 + 80);
  *(v9 + 80) = *(v0 + 64);
  *(v9 + 96) = v12;
  v13 = *(v0 + 16);
  *(v9 + 16) = *v0;
  *(v9 + 32) = v13;
  sub_1E48CCDD4(v22, v21);
  sub_1E499897C();
  sub_1E499898C();
  (*(v2 + 8))(v4, v1);
  v14 = sub_1E499868C();

  v21[0] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F270, &qword_1E499B8A0);
  sub_1E48C1B44(&qword_1ECF7F278, &qword_1ECF7F270, &qword_1E499B8A0, MEMORY[0x1E69E6310]);
  v15 = sub_1E4997E8C();
  v17 = v16;

  v21[0] = 60;
  v21[1] = 0xE100000000000000;
  v18 = sub_1E4998A4C();
  MEMORY[0x1E691B7A0](v18);

  MEMORY[0x1E691B7A0](0x20200A5B20, 0xE500000000000000);
  MEMORY[0x1E691B7A0](v15, v17);

  MEMORY[0x1E691B7A0](4087050, 0xE300000000000000);
  return v21[0];
}

uint64_t ClockFaceController.shouldRecieveTapEvents.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (v2)
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v7 = 0;
  }

  else
  {
    v4 = v2;
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 8);
    swift_unknownObjectRetain();
    v7 = v6(ObjectType, v4);
    swift_unknownObjectRelease();
  }

  return v7 & 1;
}

Swift::Void __swiftcall ClockFaceController.didReceive(tapAt:)(CGPoint tapAt)
{
  y = tapAt.y;
  x = tapAt.x;
  swift_beginAccess();
  v4 = *(v1 + 24);
  swift_getObjectType();
  v5 = swift_conformsToProtocol2();
  if (v5)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = v5;
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 16);
    swift_unknownObjectRetain();
    v9(ObjectType, v7, x, y);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1E48C8174()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (v2)
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v7 = 0;
  }

  else
  {
    v4 = v2;
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 8);
    swift_unknownObjectRetain();
    v7 = v6(ObjectType, v4);
    swift_unknownObjectRelease();
  }

  return v7 & 1;
}

uint64_t sub_1E48C8238(double a1, double a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = result;
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 16);
    swift_unknownObjectRetain();
    v10(ObjectType, v8, a1, a2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E48C83B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v43[-v7];
  v46 = sub_1E499708C();
  v9 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v11 = &v43[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v2 + 16);
  v13 = *(v12 + 16);
  swift_beginAccess();

  os_unfair_lock_lock(v13 + 4);
  swift_endAccess();
  swift_beginAccess();
  v15 = *(v12 + 16);
  v14 = *(v12 + 24);
  swift_beginAccess();

  os_unfair_lock_unlock(v15 + 4);
  swift_endAccess();

  if (*(v14 + 16) && (v16 = sub_1E4948258(3), (v17 & 1) != 0) && (v18 = *(*(v14 + 56) + 8 * v16), , , *(v18 + 16)) && (v19 = sub_1E49481EC(a1), (v20 & 1) != 0))
  {
    sub_1E48CD210(*(v18 + 56) + 40 * v19, v57);

    sub_1E48CD210(v57, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F330, &qword_1E499B8C8);
    if (swift_dynamicCast())
    {
      result = __swift_destroy_boxed_opaque_existential_0Tm(v57);
      v22 = v54;
      *(a2 + 64) = v53;
      *(a2 + 80) = v22;
      *(a2 + 96) = v55;
      *(a2 + 112) = v56;
      v23 = v50;
      *a2 = v49;
      *(a2 + 16) = v23;
      v24 = v52;
      *(a2 + 32) = v51;
      *(a2 + 48) = v24;
      return result;
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v56 = 0;
    v55 = 0xFFuLL;
    sub_1E48C1338(&v49, &qword_1ECF7F338, &qword_1E499B8D0);
    if (qword_1EE2BB450 != -1)
    {
      swift_once();
    }

    v25 = qword_1EE2BB458;
    v26 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
    swift_beginAccess();
    sub_1E48CC978(v25 + v26, v8);
    v27 = v9;
    v28 = *(v9 + 48);
    v29 = v46;
    v45 = v28;
    if (v28(v8, 1, v46) == 1)
    {
      sub_1E4904BF4(v11);
      v30 = v29;
      if (v45(v8, 1, v29) != 1)
      {
        sub_1E48C1338(v8, &qword_1ECF7F008, &qword_1E499B170);
      }
    }

    else
    {
      (*(v27 + 32))(v11, v8, v29);
      v30 = v29;
    }

    sub_1E48C8304(a1, &v49);
    sub_1E48CD210(v57, v48);
    v31 = sub_1E499706C();
    v32 = sub_1E499830C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v47[0] = v45;
      *v33 = 136446722;
      *(v33 + 4) = sub_1E48CA094(0x72616C6F73, 0xE500000000000000, v47);
      *(v33 + 12) = 2082;
      v44 = v32;
      v34 = sub_1E48C6618(&type metadata for ClockFaceLook, &unk_1F5E83B18, sub_1E48C8304);
      v36 = v35;
      sub_1E48C8360(&v49);
      v37 = sub_1E48CA094(v34, v36, v47);

      *(v33 + 14) = v37;
      *(v33 + 22) = 2080;
      __swift_project_boxed_opaque_existential_1(v48, v48[3]);
      v38 = sub_1E49987FC();
      v40 = v39;
      __swift_destroy_boxed_opaque_existential_0Tm(v48);
      v41 = sub_1E48CA094(v38, v40, v47);

      *(v33 + 24) = v41;
      _os_log_impl(&dword_1E48B0000, v31, v44, "Known context type for look. Kind=%{public}s, Look=%{public}s unknown context: %s", v33, 0x20u);
      v42 = v45;
      swift_arrayDestroy();
      MEMORY[0x1E691CED0](v42, -1, -1);
      MEMORY[0x1E691CED0](v33, -1, -1);

      (*(v27 + 8))(v11, v46);
      __swift_destroy_boxed_opaque_existential_0Tm(v57);
    }

    else
    {

      sub_1E48C8360(&v49);
      (*(v27 + 8))(v11, v30);
      __swift_destroy_boxed_opaque_existential_0Tm(v57);
      __swift_destroy_boxed_opaque_existential_0Tm(v48);
    }
  }

  else
  {
  }

  sub_1E48C8304(a1, &v49);
  sub_1E4918ECC(&v49, a2);
  sub_1E48C9F14(a2, &v49);
  sub_1E48CA874(&v49, 3, a1, v3);
  return sub_1E48C9F70(&v49);
}

uint64_t sub_1E48C89BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v42[-v7];
  v9 = sub_1E499708C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v42[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(v2 + 16);
  v14 = *(v13 + 16);
  swift_beginAccess();

  os_unfair_lock_lock(v14 + 4);
  swift_endAccess();
  swift_beginAccess();
  v16 = *(v13 + 16);
  v15 = *(v13 + 24);
  swift_beginAccess();

  os_unfair_lock_unlock(v16 + 4);
  swift_endAccess();

  if (*(v15 + 16) && (v17 = sub_1E4948258(0), (v18 & 1) != 0) && (v19 = *(*(v15 + 56) + 8 * v17), , , *(v19 + 16)) && (v20 = sub_1E49481EC(a1), (v21 & 1) != 0))
  {
    sub_1E48CD210(*(v19 + 56) + 40 * v20, v54);

    sub_1E48CD210(v54, v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F330, &qword_1E499B8C8);
    if (swift_dynamicCast())
    {
      result = __swift_destroy_boxed_opaque_existential_0Tm(v54);
      v23 = v52;
      *(a2 + 64) = v51;
      *(a2 + 80) = v23;
      *(a2 + 96) = v53;
      v25 = v48;
      v24 = v49;
      *a2 = v47;
      *(a2 + 16) = v25;
      v26 = v50;
      *(a2 + 32) = v24;
      *(a2 + 48) = v26;
      return result;
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    v47 = 0u;
    v53 = xmmword_1E499B740;
    sub_1E48C1338(&v47, &qword_1ECF7F340, &qword_1E499B8D8);
    if (qword_1EE2BB450 != -1)
    {
      swift_once();
    }

    v27 = qword_1EE2BB458;
    v28 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
    swift_beginAccess();
    sub_1E48CC978(v27 + v28, v8);
    v29 = *(v10 + 48);
    if (v29(v8, 1, v9) == 1)
    {
      sub_1E4904BF4(v12);
      if (v29(v8, 1, v9) != 1)
      {
        sub_1E48C1338(v8, &qword_1ECF7F008, &qword_1E499B170);
      }
    }

    else
    {
      (*(v10 + 32))(v12, v8, v9);
    }

    sub_1E48C8304(a1, &v47);
    sub_1E48CD210(v54, v46);
    v30 = sub_1E499706C();
    v31 = sub_1E499830C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = v44;
      *v32 = 136446722;
      *(v32 + 4) = sub_1E48CA094(0x6C617469676964, 0xE700000000000000, &v45);
      *(v32 + 12) = 2082;
      v43 = v31;
      v33 = sub_1E48C6618(&type metadata for ClockFaceLook, &unk_1F5E83B18, sub_1E48C8304);
      v35 = v34;
      sub_1E48C8360(&v47);
      v36 = sub_1E48CA094(v33, v35, &v45);

      *(v32 + 14) = v36;
      *(v32 + 22) = 2080;
      __swift_project_boxed_opaque_existential_1(v46, v46[3]);
      v37 = sub_1E49987FC();
      v39 = v38;
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      v40 = sub_1E48CA094(v37, v39, &v45);

      *(v32 + 24) = v40;
      _os_log_impl(&dword_1E48B0000, v30, v43, "Known context type for look. Kind=%{public}s, Look=%{public}s unknown context: %s", v32, 0x20u);
      v41 = v44;
      swift_arrayDestroy();
      MEMORY[0x1E691CED0](v41, -1, -1);
      MEMORY[0x1E691CED0](v32, -1, -1);

      (*(v10 + 8))(v12, v9);
      __swift_destroy_boxed_opaque_existential_0Tm(v54);
    }

    else
    {

      sub_1E48C8360(&v47);
      (*(v10 + 8))(v12, v9);
      __swift_destroy_boxed_opaque_existential_0Tm(v54);
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
    }
  }

  else
  {
  }

  sub_1E48C8304(a1, a2);
  *(a2 + 104) = 0;
  sub_1E48C9E64(a2, &v47);
  sub_1E48CAF40(&v47, 0, a1, v3);
  return sub_1E48C9EC0(&v47);
}

uint64_t sub_1E48C8FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v42[-v7];
  v9 = sub_1E499708C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v42[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(v2 + 16);
  v14 = *(v13 + 16);
  swift_beginAccess();

  os_unfair_lock_lock(v14 + 4);
  swift_endAccess();
  swift_beginAccess();
  v16 = *(v13 + 16);
  v15 = *(v13 + 24);
  swift_beginAccess();

  os_unfair_lock_unlock(v16 + 4);
  swift_endAccess();

  if (*(v15 + 16) && (v17 = sub_1E4948258(2), (v18 & 1) != 0) && (v19 = *(*(v15 + 56) + 8 * v17), , , *(v19 + 16)) && (v20 = sub_1E49481EC(a1), (v21 & 1) != 0))
  {
    sub_1E48CD210(*(v19 + 56) + 40 * v20, v54);

    sub_1E48CD210(v54, v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F330, &qword_1E499B8C8);
    if (swift_dynamicCast())
    {
      result = __swift_destroy_boxed_opaque_existential_0Tm(v54);
      v23 = v52;
      *(a2 + 64) = v51;
      *(a2 + 80) = v23;
      *(a2 + 96) = v53;
      v25 = v48;
      v24 = v49;
      *a2 = v47;
      *(a2 + 16) = v25;
      v26 = v50;
      *(a2 + 32) = v24;
      *(a2 + 48) = v26;
      return result;
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    v47 = 0u;
    v53 = -1;
    sub_1E48C1338(&v47, &qword_1ECF7F348, &qword_1E499B8E0);
    if (qword_1EE2BB450 != -1)
    {
      swift_once();
    }

    v27 = qword_1EE2BB458;
    v28 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
    swift_beginAccess();
    sub_1E48CC978(v27 + v28, v8);
    v29 = *(v10 + 48);
    if (v29(v8, 1, v9) == 1)
    {
      sub_1E4904BF4(v12);
      if (v29(v8, 1, v9) != 1)
      {
        sub_1E48C1338(v8, &qword_1ECF7F008, &qword_1E499B170);
      }
    }

    else
    {
      (*(v10 + 32))(v12, v8, v9);
    }

    sub_1E48C8304(a1, &v47);
    sub_1E48CD210(v54, v46);
    v30 = sub_1E499706C();
    v31 = sub_1E499830C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = v44;
      *v32 = 136446722;
      *(v32 + 4) = sub_1E48CA094(0x646C726F77, 0xE500000000000000, &v45);
      *(v32 + 12) = 2082;
      v43 = v31;
      v33 = sub_1E48C6618(&type metadata for ClockFaceLook, &unk_1F5E83B18, sub_1E48C8304);
      v35 = v34;
      sub_1E48C8360(&v47);
      v36 = sub_1E48CA094(v33, v35, &v45);

      *(v32 + 14) = v36;
      *(v32 + 22) = 2080;
      __swift_project_boxed_opaque_existential_1(v46, v46[3]);
      v37 = sub_1E49987FC();
      v39 = v38;
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      v40 = sub_1E48CA094(v37, v39, &v45);

      *(v32 + 24) = v40;
      _os_log_impl(&dword_1E48B0000, v30, v43, "Known context type for look. Kind=%{public}s, Look=%{public}s unknown context: %s", v32, 0x20u);
      v41 = v44;
      swift_arrayDestroy();
      MEMORY[0x1E691CED0](v41, -1, -1);
      MEMORY[0x1E691CED0](v32, -1, -1);

      (*(v10 + 8))(v12, v9);
      __swift_destroy_boxed_opaque_existential_0Tm(v54);
    }

    else
    {

      sub_1E48C8360(&v47);
      (*(v10 + 8))(v12, v9);
      __swift_destroy_boxed_opaque_existential_0Tm(v54);
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
    }
  }

  else
  {
  }

  sub_1E48C8304(a1, a2);
  sub_1E48C9DB4(a2, &v47);
  sub_1E48CB60C(&v47, 2, a1, v3, &type metadata for WorldViewModelContext, sub_1E48CD370, &unk_1F5E83AA0, sub_1E48C9DB4);
  return sub_1E48C9E10(&v47);
}

uint64_t sub_1E48C9608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v42[-v7];
  v9 = sub_1E499708C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v42[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(v2 + 16);
  v14 = *(v13 + 16);
  swift_beginAccess();

  os_unfair_lock_lock(v14 + 4);
  swift_endAccess();
  swift_beginAccess();
  v16 = *(v13 + 16);
  v15 = *(v13 + 24);
  swift_beginAccess();

  os_unfair_lock_unlock(v16 + 4);
  swift_endAccess();

  if (*(v15 + 16) && (v17 = sub_1E4948258(4), (v18 & 1) != 0) && (v19 = *(*(v15 + 56) + 8 * v17), , , *(v19 + 16)) && (v20 = sub_1E49481EC(a1), (v21 & 1) != 0))
  {
    sub_1E48CD210(*(v19 + 56) + 40 * v20, v54);

    sub_1E48CD210(v54, v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F330, &qword_1E499B8C8);
    if (swift_dynamicCast())
    {
      result = __swift_destroy_boxed_opaque_existential_0Tm(v54);
      v23 = v52;
      *(a2 + 64) = v51;
      *(a2 + 80) = v23;
      *(a2 + 96) = v53;
      v25 = v48;
      v24 = v49;
      *a2 = v47;
      *(a2 + 16) = v25;
      v26 = v50;
      *(a2 + 32) = v24;
      *(a2 + 48) = v26;
      return result;
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    v47 = 0u;
    v53 = -1;
    sub_1E48C1338(&v47, &qword_1ECF7F350, &qword_1E499B8E8);
    if (qword_1EE2BB450 != -1)
    {
      swift_once();
    }

    v27 = qword_1EE2BB458;
    v28 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
    swift_beginAccess();
    sub_1E48CC978(v27 + v28, v8);
    v29 = *(v10 + 48);
    if (v29(v8, 1, v9) == 1)
    {
      sub_1E4904BF4(v12);
      if (v29(v8, 1, v9) != 1)
      {
        sub_1E48C1338(v8, &qword_1ECF7F008, &qword_1E499B170);
      }
    }

    else
    {
      (*(v10 + 32))(v12, v8, v9);
    }

    sub_1E48C8304(a1, &v47);
    sub_1E48CD210(v54, v46);
    v30 = sub_1E499706C();
    v31 = sub_1E499830C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = v44;
      *v32 = 136446722;
      *(v32 + 4) = sub_1E48CA094(2036427888, 0xE400000000000000, &v45);
      *(v32 + 12) = 2082;
      v43 = v31;
      v33 = sub_1E48C6618(&type metadata for ClockFaceLook, &unk_1F5E83B18, sub_1E48C8304);
      v35 = v34;
      sub_1E48C8360(&v47);
      v36 = sub_1E48CA094(v33, v35, &v45);

      *(v32 + 14) = v36;
      *(v32 + 22) = 2080;
      __swift_project_boxed_opaque_existential_1(v46, v46[3]);
      v37 = sub_1E49987FC();
      v39 = v38;
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      v40 = sub_1E48CA094(v37, v39, &v45);

      *(v32 + 24) = v40;
      _os_log_impl(&dword_1E48B0000, v30, v43, "Known context type for look. Kind=%{public}s, Look=%{public}s unknown context: %s", v32, 0x20u);
      v41 = v44;
      swift_arrayDestroy();
      MEMORY[0x1E691CED0](v41, -1, -1);
      MEMORY[0x1E691CED0](v32, -1, -1);

      (*(v10 + 8))(v12, v9);
      __swift_destroy_boxed_opaque_existential_0Tm(v54);
    }

    else
    {

      sub_1E48C8360(&v47);
      (*(v10 + 8))(v12, v9);
      __swift_destroy_boxed_opaque_existential_0Tm(v54);
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
    }
  }

  else
  {
  }

  sub_1E48C8304(a1, a2);
  sub_1E48C9C40(a2, &v47);
  sub_1E48CB60C(&v47, 4, a1, v3, &type metadata for PlayViewModelContext, sub_1E48CD408, &unk_1F5E83AC8, sub_1E48C9C40);
  return sub_1E48C9D60(&v47);
}

uint64_t (*sub_1E48C9C9C(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1E48CA5D8(v4, a2);
  return sub_1E48C9D14;
}

void sub_1E48C9D14(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1E48C9FC4(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1E48CA038(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1E48CA094(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_1E48CA094(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  sub_1E48CA160(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1E48CCF68(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

void sub_1E48CA160(uint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          *(__dst + v9) = 0;
          *a1 = __dst;
          return;
        }
      }
    }

LABEL_8:
    sub_1E48CA26C(a5, a6);
    *a1 = v8;
    return;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    v7 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    v7 = sub_1E49985DC();
    a6 = v11;
    if (!v7)
    {
      __break(1u);
      return;
    }
  }

  *a1 = v7;
  if ((a6 & 0x8000000000000000) == 0)
  {
    swift_unknownObjectRetain();
  }
}

void *sub_1E48CA26C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1E48CA2B8(a1, a2);
  sub_1E48CA3E8(&unk_1F5E825B0);
  return v3;
}

void *sub_1E48CA2B8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1E495E37C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1E49985DC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1E4997FAC();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1E495E37C(v10, 0);
        result = sub_1E499858C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1E48CA3E8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1E48CA4D4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1E48CA4D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F280, &qword_1E499B8A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_1E48CA5C8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void (*sub_1E48CA5D8(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1E48CA840(v5);
  v5[9] = sub_1E48CA6DC((v5 + 4), a2, isUniquelyReferenced_nonNull_native);
  return sub_1E48CA67C;
}

void sub_1E48CA67C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

unint64_t (*sub_1E48CA6DC(uint64_t a1, uint64_t a2, char a3))(unint64_t result)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = sub_1E4948258(a2);
  *(a1 + 25) = v10 & 1;
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1E4987DBC();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1E498274C(v14, a3 & 1);
    v9 = sub_1E4948258(a2);
    if ((v15 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    result = sub_1E499887C();
    __break(1u);
    return result;
  }

LABEL_8:
  *(a1 + 16) = v9;
  if (v15)
  {
    v19 = *(*(*v4 + 56) + 8 * v9);
  }

  else
  {
    v19 = 0;
  }

  *a1 = v19;
  return sub_1E48CA7F8;
}

unint64_t sub_1E48CA7F8(unint64_t result)
{
  v1 = *result;
  if (*result)
  {
    v2 = **(result + 8);
    if (*(result + 25))
    {
      *(v2[7] + 8 * *(result + 16)) = v1;
    }

    else
    {
      return sub_1E49874B8(*(result + 16), *(result + 24), v1, v2);
    }
  }

  else if (*(result + 25))
  {
    return sub_1E4984F08(*(result + 16), **(result + 8));
  }

  return result;
}

uint64_t (*sub_1E48CA840(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1E48CA868;
}

uint64_t sub_1E48CA874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v38 = sub_1E499708C();
  MEMORY[0x1EEE9AC00](v38);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43[3] = &type metadata for SolarContext;
  v43[4] = sub_1E48CD1BC();
  v43[0] = swift_allocObject();
  sub_1E48C9F14(a1, v43[0] + 16);
  v11 = *(a4 + 16);
  v12 = *(v11 + 16);
  swift_beginAccess();

  os_unfair_lock_lock(v12 + 4);
  swift_endAccess();
  swift_beginAccess();
  v14 = *(v11 + 16);
  v13 = *(v11 + 24);
  swift_beginAccess();

  os_unfair_lock_unlock(v14 + 4);
  swift_endAccess();

  v15 = *(v13 + 16);
  v37[1] = v10;
  if (!v15)
  {

    goto LABEL_5;
  }

  sub_1E4948258(a2);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
LABEL_5:
    v18 = *(a4 + 16);
    v19 = *(v18 + 16);
    swift_beginAccess();

    os_unfair_lock_lock(v19 + 4);
    swift_endAccess();
    swift_beginAccess();
    v21 = *(v18 + 16);
    v20 = *(v18 + 24);
    swift_beginAccess();

    os_unfair_lock_unlock(v21 + 4);
    swift_endAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40[0] = v20;
    sub_1E4986350(MEMORY[0x1E69E7CC8], a2, isUniquelyReferenced_nonNull_native);
    v23 = v40[0];
    v24 = *(v18 + 16);
    swift_beginAccess();
    os_unfair_lock_lock(v24 + 4);
    swift_endAccess();
    *(v18 + 24) = v23;

    v25 = *(v18 + 16);
    swift_beginAccess();
    os_unfair_lock_unlock(v25 + 4);
    swift_endAccess();
  }

  v26 = sub_1E48EE7F8(v42);
  v27 = sub_1E48C9C9C(v41, a2);
  if (*v28)
  {
    sub_1E48C8304(a3, v40);
    sub_1E48CD210(v43, v39);
    sub_1E496F86C(v39, v40);
  }

  (v27)(v41, 0);
  (v26)(v42, 0);
  sub_1E4996B3C();
  swift_allocObject();
  sub_1E4996B2C();
  sub_1E4996B0C();
  sub_1E48EE450();
  v40[0] = v29;
  sub_1E48CD274();
  v30 = sub_1E4996B1C();
  v32 = v31;

  v33 = [objc_opt_self() standardUserDefaults];
  v34 = sub_1E4996B7C();

  v35 = sub_1E4997EAC();

  [v33 setObject:v34 forKey:v35];

  sub_1E48CD2C8(v30, v32);
  return __swift_destroy_boxed_opaque_existential_0Tm(v43);
}

uint64_t sub_1E48CAF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v38 = sub_1E499708C();
  MEMORY[0x1EEE9AC00](v38);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43[3] = &type metadata for DigitalClockContext;
  v43[4] = sub_1E48CD31C();
  v43[0] = swift_allocObject();
  sub_1E48C9E64(a1, v43[0] + 16);
  v11 = *(a4 + 16);
  v12 = *(v11 + 16);
  swift_beginAccess();

  os_unfair_lock_lock(v12 + 4);
  swift_endAccess();
  swift_beginAccess();
  v14 = *(v11 + 16);
  v13 = *(v11 + 24);
  swift_beginAccess();

  os_unfair_lock_unlock(v14 + 4);
  swift_endAccess();

  v15 = *(v13 + 16);
  v37[1] = v10;
  if (!v15)
  {

    goto LABEL_5;
  }

  sub_1E4948258(a2);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
LABEL_5:
    v18 = *(a4 + 16);
    v19 = *(v18 + 16);
    swift_beginAccess();

    os_unfair_lock_lock(v19 + 4);
    swift_endAccess();
    swift_beginAccess();
    v21 = *(v18 + 16);
    v20 = *(v18 + 24);
    swift_beginAccess();

    os_unfair_lock_unlock(v21 + 4);
    swift_endAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40[0] = v20;
    sub_1E4986350(MEMORY[0x1E69E7CC8], a2, isUniquelyReferenced_nonNull_native);
    v23 = v40[0];
    v24 = *(v18 + 16);
    swift_beginAccess();
    os_unfair_lock_lock(v24 + 4);
    swift_endAccess();
    *(v18 + 24) = v23;

    v25 = *(v18 + 16);
    swift_beginAccess();
    os_unfair_lock_unlock(v25 + 4);
    swift_endAccess();
  }

  v26 = sub_1E48EE7F8(v42);
  v27 = sub_1E48C9C9C(v41, a2);
  if (*v28)
  {
    sub_1E48C8304(a3, v40);
    sub_1E48CD210(v43, v39);
    sub_1E496F86C(v39, v40);
  }

  (v27)(v41, 0);
  (v26)(v42, 0);
  sub_1E4996B3C();
  swift_allocObject();
  sub_1E4996B2C();
  sub_1E4996B0C();
  sub_1E48EE450();
  v40[0] = v29;
  sub_1E48CD274();
  v30 = sub_1E4996B1C();
  v32 = v31;

  v33 = [objc_opt_self() standardUserDefaults];
  v34 = sub_1E4996B7C();

  v35 = sub_1E4997EAC();

  [v33 setObject:v34 forKey:v35];

  sub_1E48CD2C8(v30, v32);
  return __swift_destroy_boxed_opaque_existential_0Tm(v43);
}

uint64_t sub_1E48CB60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(__n128), uint64_t a7, void (*a8)(uint64_t, uint64_t))
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = sub_1E499708C();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v46[3] = a5;
  v46[4] = a6(v16);
  v46[0] = swift_allocObject();
  a8(a1, v46[0] + 16);
  v17 = *(a4 + 16);
  v18 = *(v17 + 16);
  swift_beginAccess();

  os_unfair_lock_lock(v18 + 4);
  swift_endAccess();
  swift_beginAccess();
  v20 = *(v17 + 16);
  v19 = *(v17 + 24);
  swift_beginAccess();

  os_unfair_lock_unlock(v20 + 4);
  swift_endAccess();

  if (!*(v19 + 16))
  {

    goto LABEL_5;
  }

  sub_1E4948258(a2);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
LABEL_5:
    v23 = *(a4 + 16);
    v24 = *(v23 + 16);
    swift_beginAccess();

    os_unfair_lock_lock(v24 + 4);
    swift_endAccess();
    swift_beginAccess();
    v26 = *(v23 + 16);
    v25 = *(v23 + 24);
    swift_beginAccess();

    os_unfair_lock_unlock(v26 + 4);
    swift_endAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43[0] = v25;
    sub_1E4986350(MEMORY[0x1E69E7CC8], a2, isUniquelyReferenced_nonNull_native);
    v28 = *(v23 + 16);
    swift_beginAccess();
    os_unfair_lock_lock(v28 + 4);
    swift_endAccess();
    *(v23 + 24) = v25;

    v29 = *(v23 + 16);
    swift_beginAccess();
    os_unfair_lock_unlock(v29 + 4);
    swift_endAccess();
  }

  v30 = sub_1E48EE7F8(v45);
  v31 = sub_1E48C9C9C(v44, a2);
  if (*v32)
  {
    sub_1E48C8304(a3, v43);
    sub_1E48CD210(v46, v42);
    sub_1E496F86C(v42, v43);
  }

  (v31)(v44, 0);
  (v30)(v45, 0);
  sub_1E4996B3C();
  swift_allocObject();
  sub_1E4996B2C();
  sub_1E4996B0C();
  sub_1E48EE450();
  v43[0] = v33;
  sub_1E48CD274();
  v34 = sub_1E4996B1C();
  v36 = v35;

  v37 = [objc_opt_self() standardUserDefaults];
  v38 = sub_1E4996B7C();

  v39 = sub_1E4997EAC();

  [v37 setObject:v38 forKey:v39];

  sub_1E48CD2C8(v34, v36);
  return __swift_destroy_boxed_opaque_existential_0Tm(v46);
}

id sub_1E48CBCFC(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F2C8, &qword_1E499B8B0);
  MEMORY[0x1EEE9AC00](v7);
  LOBYTE(v16) = a2 & 1;
  *(v4 + qword_1ECF81820) = 0;
  *(v4 + qword_1ECF81828) = 0;
  v8 = type metadata accessor for DigitalClockViewModel(0);
  v9 = sub_1E48CD070();
  v10 = sub_1E48CD118(&qword_1ECF7F2D8, 255, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
  sub_1E499793C();
  swift_getOpaqueTypeConformance2();
  v15 = sub_1E4997C3C();
  v11 = sub_1E499765C();
  result = [v11 view];
  if (result)
  {
    v13 = result;

    v14 = [objc_opt_self() clearColor];
    [v13 setBackgroundColor_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1E48CBF04(uint64_t a1, char a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F2E0, &qword_1E499B8B8);
  MEMORY[0x1EEE9AC00](v6);
  *(v5 + qword_1ECF81820) = 0;
  *(v5 + qword_1ECF81828) = 0;
  type metadata accessor for SolarViewModel(0);
  sub_1E48CD0C4();
  sub_1E48CD118(&qword_1ECF7F2F0, 255, type metadata accessor for SolarViewModel, &unk_1E49A10B0);
  sub_1E499793C();
  swift_getOpaqueTypeConformance2();
  sub_1E4997C3C();
  v7 = sub_1E499765C();
  result = [v7 view];
  if (result)
  {
    v9 = result;

    v10 = [objc_opt_self() clearColor];
    [v9 setBackgroundColor_];

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1E48CC118(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F2F8, &qword_1E499B8C0);
  MEMORY[0x1EEE9AC00](v4);
  *(v2 + qword_1ECF81820) = 0;
  *(v2 + qword_1ECF81828) = 0;
  type metadata accessor for WorldClockFace(0);
  v5 = type metadata accessor for WorldViewModel(0);
  v6 = sub_1E48CD118(&qword_1ECF7F300, 255, type metadata accessor for WorldClockFace, &unk_1E49A03C4);
  v7 = sub_1E48CD118(&qword_1ECF7F308, 255, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E499793C();
  swift_getOpaqueTypeConformance2();
  v12 = sub_1E4997C3C();
  v8 = sub_1E499765C();
  result = [v8 view];
  if (result)
  {
    v10 = result;
    v11 = [objc_opt_self() clearColor];
    [v10 setBackgroundColor_];

    sub_1E48CD160(a1);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1E48CC348(uint64_t a1)
{
  v2 = type metadata accessor for WorldClockFace(0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECF7EAD8 != -1)
  {
    v38 = v3;
    swift_once();
    v3 = v38;
  }

  v6 = *(a1 + 97);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v26 = v3;
      sub_1E48C8FCC(a1, v45);
      sub_1E48C9DB4(v45, v44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F240, &qword_1E499B778);
      v7 = swift_allocObject();
      sub_1E48C9DB4(v44, &v40);
      type metadata accessor for WorldViewModel(0);
      swift_allocObject();
      v27 = sub_1E48DC558(&v40);
      *(v7 + 16) = v27;
      v28 = sub_1E48CD118(&qword_1ECF7F290, 255, type metadata accessor for WorldClockFace, &unk_1E49A0414);
      v29 = *(v28 + 32);

      v29(v26, v28);
      v30 = objc_allocWithZone(type metadata accessor for ClockHostingController(0));
      v31 = sub_1E48CC118(v5, v27);

      *(v7 + 24) = v31;
      result = [v31 view];
      if (result)
      {
        v32 = result;
        [result setClipsToBounds_];

        sub_1E48C9E10(v44);
        sub_1E48C9E10(v45);
        v17 = &unk_1ECF7F298;
        v18 = &qword_1ECF7F240;
        v19 = &qword_1E499B778;
        goto LABEL_13;
      }

      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (v6 == 3)
    {
      sub_1E48C83B4(a1, v45);
      sub_1E48C9F14(v45, v44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F230, &qword_1E499B768);
      v7 = swift_allocObject();
      sub_1E48C9F14(v44, &v40);
      type metadata accessor for SolarViewModel(0);
      swift_allocObject();
      v8 = sub_1E491A1A4(&v40);
      *(v7 + 16) = v8;
      v9 = sub_1E48CCFC8();
      (*(v9 + 32))(&v40);
      v10 = v40;
      v11 = v41;
      v12 = v42;
      v13 = v43;
      objc_allocWithZone(type metadata accessor for ClockHostingController(0));

      v14 = sub_1E48CBF04(v10, v11, v13, v8, v12);

      *(v7 + 24) = v14;
      result = [v14 view];
      if (result)
      {
        v16 = result;
        [result setClipsToBounds_];

        sub_1E48C9F70(v44);
        sub_1E48C9F70(v45);
        v17 = &unk_1ECF7F2A8;
        v18 = &qword_1ECF7F230;
        v19 = &qword_1E499B768;
LABEL_13:
        sub_1E48C1B44(v17, v18, v19, &unk_1E49A61B8);
        return v7;
      }

      goto LABEL_19;
    }

    sub_1E48C8304(a1, v45);
    v33 = objc_allocWithZone(type metadata accessor for PlayClockFaceViewController());
    v7 = sub_1E495F3AC(v45);
    v34 = &unk_1ECF7F288;
    v35 = type metadata accessor for PlayClockFaceViewController;
    v36 = &unk_1E49A4DD8;
LABEL_16:
    sub_1E48CD118(v34, 255, v35, v36);
    return v7;
  }

  if (*(a1 + 97))
  {
    sub_1E48C8304(a1, v45);
    v37 = objc_allocWithZone(type metadata accessor for AnalogClockFaceViewController());
    v7 = sub_1E48D76E8(v45);
    v34 = &unk_1ECF7F2C0;
    v35 = type metadata accessor for AnalogClockFaceViewController;
    v36 = &unk_1E499CA6C;
    goto LABEL_16;
  }

  sub_1E48C89BC(a1, v45);
  sub_1E48C9E64(v45, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F238, &qword_1E499B770);
  v7 = swift_allocObject();
  sub_1E48C9E64(v44, &v40);
  type metadata accessor for DigitalClockViewModel(0);
  swift_allocObject();
  v20 = sub_1E4925D6C(&v40);
  *(v7 + 16) = v20;
  v21 = sub_1E48CD01C();
  (*(v21 + 32))(&v40);
  v22 = v40;
  v23 = v41;
  objc_allocWithZone(type metadata accessor for ClockHostingController(0));

  v24 = sub_1E48CBCFC(v22, v23, v20);

  *(v7 + 24) = v24;
  result = [v24 view];
  if (result)
  {
    v25 = result;
    [result setClipsToBounds_];

    sub_1E48C9EC0(v44);
    sub_1E48C9EC0(v45);
    v17 = &unk_1ECF7F2B8;
    v18 = &qword_1ECF7F238;
    v19 = &qword_1E499B770;
    goto LABEL_13;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1E48CC978(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E48CC9E8(uint64_t a1, uint64_t a2)
{
  result = sub_1E48CD118(&qword_1ECF7F260, a2, type metadata accessor for ClockFaceController, &protocol conformance descriptor for ClockFaceController);
  *(a1 + 8) = result;
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1E48CCD6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
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

uint64_t objectdestroy_8Tm(uint64_t a1)
{
  v3 = *(v1 + 112);
  if (v3 == 2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));
    __swift_destroy_boxed_opaque_existential_0Tm((v1 + 56));
  }

  else if (v3 == 1)
  {
  }

  else
  {
    if (*(v1 + 112))
    {
      goto LABEL_8;
    }

    __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));
  }

LABEL_8:

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1E48CCF68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1E48CCFC8()
{
  result = qword_1ECF7F2A0;
  if (!qword_1ECF7F2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F2A0);
  }

  return result;
}

unint64_t sub_1E48CD01C()
{
  result = qword_1ECF7F2B0;
  if (!qword_1ECF7F2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F2B0);
  }

  return result;
}

unint64_t sub_1E48CD070()
{
  result = qword_1ECF7F2D0;
  if (!qword_1ECF7F2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F2D0);
  }

  return result;
}

unint64_t sub_1E48CD0C4()
{
  result = qword_1ECF7F2E8;
  if (!qword_1ECF7F2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F2E8);
  }

  return result;
}

uint64_t sub_1E48CD118(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1E48CD160(uint64_t a1)
{
  v2 = type metadata accessor for WorldClockFace(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E48CD1BC()
{
  result = qword_1ECF7F310;
  if (!qword_1ECF7F310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F310);
  }

  return result;
}

uint64_t sub_1E48CD210(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1E48CD274()
{
  result = qword_1ECF7F318;
  if (!qword_1ECF7F318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F318);
  }

  return result;
}

uint64_t sub_1E48CD2C8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_1E48CD31C()
{
  result = qword_1ECF7F320;
  if (!qword_1ECF7F320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F320);
  }

  return result;
}

unint64_t sub_1E48CD370()
{
  result = qword_1ECF7F328;
  if (!qword_1ECF7F328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F328);
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

unint64_t sub_1E48CD408()
{
  result = qword_1ECF7F358;
  if (!qword_1ECF7F358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F358);
  }

  return result;
}

id sub_1E48CD4C0(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC11ClockPoster31AlarmComplicationCurvedTextView_pathProvider];
  *v9 = 0x4036000000000000;
  v9[8] = 0;
  v10 = OBJC_IVAR____TtC11ClockPoster31AlarmComplicationCurvedTextView_timeFormatter;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E695B570]) init];
  v11 = OBJC_IVAR____TtC11ClockPoster31AlarmComplicationCurvedTextView_alarmIconLayer;
  *&v4[v11] = sub_1E48CDBF4();
  v12 = OBJC_IVAR____TtC11ClockPoster31AlarmComplicationCurvedTextView_alarmTextLayer;
  *&v4[v12] = sub_1E48CDF3C();
  v16.receiver = v4;
  v16.super_class = type metadata accessor for AlarmComplicationCurvedTextView();
  v13 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = [v13 effectiveUserInterfaceLayoutDirection] == 1;
  *(v13 + OBJC_IVAR____TtC11ClockPoster31AlarmComplicationCurvedTextView_pathProvider + 8) = v14;

  return v13;
}

void sub_1E48CD6A8()
{
  v25.receiver = v0;
  v25.super_class = type metadata accessor for AlarmComplicationCurvedTextView();
  objc_msgSendSuper2(&v25, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC11ClockPoster31AlarmComplicationCurvedTextView_alarmIconLayer];
  v2 = [v1 superlayer];
  if (!v2)
  {
    v3 = [v0 layer];
    [v3 addSublayer_];
    v2 = v3;
  }

  v4 = *&v0[OBJC_IVAR____TtC11ClockPoster31AlarmComplicationCurvedTextView_alarmTextLayer];
  v5 = [v4 superlayer];
  if (!v5)
  {
    v6 = [v0 layer];
    [v6 addSublayer_];
    v5 = v6;
  }

  v7 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.152941176 blue:0.0 alpha:1.0];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = 0x4069800000000000;
  v9 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v23 = sub_1E48CE188;
  v24 = v8;
  v19 = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1E4923F24;
  v22 = &block_descriptor_1;
  v10 = _Block_copy(&v19);
  v11 = [v9 initWithDynamicProvider_];
  _Block_release(v10);

  v12 = [v11 CGColor];

  [v1 setBackgroundColor_];
  v13 = [objc_opt_self() whiteColor];
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = 0x4063200000000000;
  v15 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v23 = sub_1E48CE240;
  v24 = v14;
  v19 = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1E4923F24;
  v22 = &block_descriptor_11;
  v16 = _Block_copy(&v19);
  v17 = [v15 initWithDynamicProvider_];
  _Block_release(v16);

  v18 = [v17 CGColor];

  [v4 setFillColor_];
}

void sub_1E48CDA28(const CGPath *a1)
{
  v2 = v1;
  v4 = [*(v1 + OBJC_IVAR____TtC11ClockPoster31AlarmComplicationCurvedTextView_timeFormatter) timeAndDesignatorText];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1E4997EEC();
    v8 = v7;

    MEMORY[0x1E691B7A0](v6, v8);

    if (qword_1ECF7EB08 != -1)
    {
      swift_once();
    }

    sub_1E48C3D14(qword_1ECF81938);
    v9 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v10 = sub_1E4997EAC();

    type metadata accessor for Key(0);
    sub_1E48CE130();
    v11 = sub_1E4997E2C();

    v12 = [v9 initWithString:v10 attributes:v11];

    v13 = *(v2 + OBJC_IVAR____TtC11ClockPoster31AlarmComplicationCurvedTextView_alarmTextLayer);
    v14 = sub_1E48FA7EC(v12, a1, *(v2 + OBJC_IVAR____TtC11ClockPoster31AlarmComplicationCurvedTextView_alarmIconLayer), *(v2 + OBJC_IVAR____TtC11ClockPoster31AlarmComplicationCurvedTextView_pathProvider + 8), *(v2 + OBJC_IVAR____TtC11ClockPoster31AlarmComplicationCurvedTextView_pathProvider));
    [v13 setPath_];
  }

  else
  {
    __break(1u);
  }
}

id sub_1E48CDBF4()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  v1 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  if (qword_1ECF7EB00 != -1)
  {
    swift_once();
  }

  v2 = [objc_opt_self() configurationWithFont:qword_1ECF81930 scale:1];
  v3 = sub_1E4997EAC();
  v4 = [objc_opt_self() systemImageNamed:v3 withConfiguration:v2];

  if (v4)
  {
    *&v5 = COERCE_DOUBLE(sub_1E499845C());
    if ((v6 & 1) == 0)
    {
      v7 = *&v5;
      [v4 size];
      v9 = v8;
      v11 = v10;
      [v1 setBounds_];
      v12 = [v4 CGImage];
      [v1 setContents_];

      [v1 setAnchorPoint_];
      [v1 setPosition_];
      [v1 setContentsGravity_];
      [v0 setBounds_];
      [v0 setMask_];
      [v0 setAnchorPoint_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F380, &qword_1E499B948);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E499B670;
      *(inited + 32) = 0x726F66736E617274;
      *(inited + 40) = 0xE90000000000006DLL;
      *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
      sub_1E4949258(inited);
      swift_setDeallocating();
      sub_1E48CE1AC(inited + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F390, &qword_1E499B958);
      v14 = sub_1E4997E2C();

      [v0 setActions_];

      return v0;
    }
  }

  return v0;
}

id sub_1E48CDF3C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F380, &qword_1E499B948);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E499B670;
  *(inited + 32) = 0x726F66736E617274;
  *(inited + 40) = 0xE90000000000006DLL;
  v2 = objc_allocWithZone(MEMORY[0x1E695DFB0]);
  v3 = v0;
  *(inited + 48) = [v2 init];
  sub_1E4949258(inited);
  swift_setDeallocating();
  sub_1E48CE1AC(inited + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F390, &qword_1E499B958);
  v4 = sub_1E4997E2C();

  [v3 setActions_];

  return v3;
}

id sub_1E48CE07C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlarmComplicationCurvedTextView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1E48CE130()
{
  result = qword_1ECF7F060;
  if (!qword_1ECF7F060)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F060);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E48CE1AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F388, &qword_1E499B950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1E48CE260(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1E48CE2BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double sub_1E48CE338@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  GEOLocationCoordinate2DMake();
  UISizeRoundToScale();
  v8 = (result + result - a2) * 0.5;
  *a1 = 0x3FE0000000000000;
  *(a1 + 8) = 0;
  *(a1 + 16) = result + result;
  *(a1 + 24) = v7 + v7;
  v9 = (v7 + v7 - a3) * 0.5;
  *(a1 + 32) = result;
  *(a1 + 40) = v7;
  *(a1 + 48) = v9;
  *(a1 + 56) = v8;
  *(a1 + 64) = v9;
  *(a1 + 72) = v8;
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1E48CE3F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}