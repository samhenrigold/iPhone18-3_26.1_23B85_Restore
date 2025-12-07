uint64_t sub_1CFBB9424@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFC9E438();
  *a1 = result;
  return result;
}

uint64_t sub_1CFBB9480@<X0>(uint64_t *a1@<X8>)
{
  sub_1CFBB8DA4();
  result = sub_1CFC9F1A8();
  *a1 = result;
  return result;
}

uint64_t sub_1CFBB94B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1CFBB9528(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1CFC9C448();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0B8, &unk_1CFCA49D0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1CFBB9654(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1CFBB45F4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1CFBB9698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_1CFC9E858();
  v4 = *(v3 - 8);
  v20 = v3;
  v21 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CFC9EB58();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE3B0, &qword_1CFCA42A8);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - v13;
  (*(v8 + 16))(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7, v12);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  (*(v8 + 32))(v16 + v15, &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v23 = v19;
  v24 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE3B8, &qword_1CFCA42B0);
  sub_1CFC0750C();
  sub_1CFC9F298();
  sub_1CFC9E848();
  sub_1CFBA57C0(&qword_1EE04D1D8, &qword_1EC4EE3B0, &qword_1CFCA42A8, MEMORY[0x1E697D680]);
  sub_1CFC06190(&qword_1EE04FFF0, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
  v17 = v20;
  sub_1CFC9EEC8();
  (*(v21 + 8))(v6, v17);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1CFBB99E0()
{
  v1 = sub_1CFC9EB58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1CFBB9AC4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4ED868, &unk_1CFCA4230);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EE3A8, &qword_1CFCA4270);
  sub_1CFBB9B54();
  sub_1CFC071C0();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1CFBB9B54()
{
  result = qword_1EE04D4D8;
  if (!qword_1EE04D4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4ED868, &unk_1CFCA4230);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4ED080, &unk_1CFCA1E20);
    type metadata accessor for RecentsCircleButtonStyle(255);
    sub_1CFBA57C0(&qword_1EE04D1B8, &unk_1EC4ED080, &unk_1CFCA1E20, MEMORY[0x1E697D680]);
    sub_1CFC06190(&unk_1EE04F608, type metadata accessor for RecentsCircleButtonStyle, &unk_1CFCA40AC);
    swift_getOpaqueTypeConformance2();
    sub_1CFC06190(&qword_1EE04FFC8, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D4D8);
  }

  return result;
}

unint64_t sub_1CFBB9CD0()
{
  result = qword_1EE04D488;
  if (!qword_1EE04D488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EE3C8, &unk_1CFCA42C0);
    sub_1CFBB7460();
    sub_1CFBA57C0(&qword_1EE04FFD0, &qword_1EC4EE3D0, &unk_1CFCA5DD0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D488);
  }

  return result;
}

unint64_t sub_1CFBB9DA4(uint64_t a1)
{
  sub_1CFC9CF08();
  sub_1CFBB9E3C(&qword_1EE04D670, MEMORY[0x1E6995AA8], MEMORY[0x1E6995AB0]);
  v2 = sub_1CFC9F6B8();

  return sub_1CFBB9E84(a1, v2);
}

uint64_t sub_1CFBB9E3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1CFBB9E84(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1CFC9CF08();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_1CFBB9E3C(&qword_1EE04D668, MEMORY[0x1E6995AA8], MEMORY[0x1E6995AB8]);
      v16 = sub_1CFC9F6F8();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

id sub_1CFBBA044(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1CFC9C138();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9C0D8();
  v10 = *&a1[*a4];
  v11 = a1;
  v12 = v10(v9);
  (*(v7 + 8))(v9, v6);

  return v12;
}

char *sub_1CFBBA174(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
    swift_beginAccess();
    v6 = *&v4[v5];

    v7 = sub_1CFC9C128();
    if ((v7 & 0x8000000000000000) != 0 || v7 >= *(v6 + 16))
    {

      return 0;
    }

    else
    {
      v8 = *(v6 + 16 * v7 + 40);
      swift_unknownObjectRetain();

      result = [v4 collectionView];
      if (result)
      {
        v9 = result;
        ObjectType = swift_getObjectType();
        v11 = (*(v8 + 152))(a1, v9, ObjectType, v8);
        swift_unknownObjectRelease();

        return v11;
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_1CFBBA2A8(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_1CFC9E9C8();

    return sub_1CFC9E1C8();
  }

  else
  {
    sub_1CFC9E238();
    swift_getWitnessTable();
    sub_1CFC9E8C8();
    sub_1CFC9E1C8();
    sub_1CFC9FEB8();
    swift_getWitnessTable();
    sub_1CFC9E238();
    swift_getWitnessTable();
    sub_1CFC9E8C8();
    return sub_1CFC9E1C8();
  }
}

uint64_t sub_1CFBBA40C(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_1CFC9E9C8();
    sub_1CFC9E1C8();
  }

  else
  {
    sub_1CFC9E238();
    swift_getWitnessTable();
    sub_1CFC9E8C8();
    sub_1CFC9E1C8();
    sub_1CFC9FEB8();
    swift_getWitnessTable();
    sub_1CFC9E238();
    swift_getWitnessTable();
    sub_1CFC9E8C8();
    sub_1CFC9E1C8();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void *sub_1CFBBA60C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_1CFBBA658(void *a1, uint64_t *a2)
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

uint64_t sub_1CFBBA6B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFC9F768();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1CFBBA810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CFC9C448();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
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

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0B8, &unk_1CFCA49D0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1CFBBA94C(uint64_t a1, int a2)
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

uint64_t sub_1CFBBA96C(uint64_t result, int a2, int a3)
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

uint64_t sub_1CFBBA9A8()
{
  v1 = sub_1CFC9C138();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1CFBBAA6C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBBAAA4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBBAADC(uint64_t a1)
{
  result = sub_1CFBCE284(qword_1EE04F018, type metadata accessor for FavoriteSectionController, &unk_1CFCA8D9C);
  *(a1 + 8) = result;
  return result;
}

double sub_1CFBBAB38(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1CFC48AB8(v1, v2);
}

uint64_t sub_1CFBBAB78()
{
  MEMORY[0x1D3873340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBBABB0()
{
  v1 = sub_1CFC9C918();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v3 | 7);
}

uint64_t sub_1CFBBACB8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFBBACF0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CFBBAD44()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFBBAD84()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1CFBBADE8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBBAE48()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFBBAE88()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CFBBAF3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED888, &qword_1CFCA2A28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFBBB008()
{
  MEMORY[0x1D3873340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBBB04C()
{
  MEMORY[0x1D3873340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBBB088()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFBBB0C4()
{
  v1 = sub_1CFC9BF28();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1CFBBB1A4()
{
  v1 = sub_1CFC9BF28();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1CFBBB22C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CFC9E3D8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1CFBBB284()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CFBBB2F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1CFBBB408(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1CFBF2758(v1);
}

void sub_1CFBBB444(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1CFBF32C4(v1);
}

uint64_t sub_1CFBBB4A0(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB20, &qword_1CFCA2F88);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB28, &qword_1CFCA2F90);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDBB0, &qword_1CFCA3228);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_1CFBBB630(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB20, &qword_1CFCA2F88);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB28, &qword_1CFCA2F90);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDBB0, &qword_1CFCA3228);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1CFBBB854()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFBBB89C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBBB914()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBBB94C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CFBBB9A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBBB9DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFBBBA14()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBBBA4C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void *sub_1CFBBBAC4@<X0>(void *a1@<X8>)
{
  sub_1CFBB5868();
  result = sub_1CFC9E4F8();
  *a1 = v3;
  return result;
}

uint64_t sub_1CFBBBB18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CFBB5A28();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1CFBBBBC0(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_1CFBBBBCC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE338, &qword_1CFCA4000);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_1CFC9C448();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_1CFBBBCE0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE338, &qword_1CFCA4000);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    result = sub_1CFC9C448();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_1CFBBBDF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CFC9C448();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EEDA0, &qword_1CFCA4020);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1CFBBBF24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1CFC9C448();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EEDA0, &qword_1CFCA4020);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1CFBBC058(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE360, &unk_1CFCA5700);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE368, &unk_1CFCA4040);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1CFBBC178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE370, &qword_1CFCA4088);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1CFBBC22C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE370, &qword_1CFCA4088);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CFBBC2E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFC9E368();
  *a1 = result;
  return result;
}

uint64_t sub_1CFBBC360@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFC9E2F8();
  *a1 = result;
  return result;
}

uint64_t sub_1CFBBC3BC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EE3B0, &qword_1CFCA42A8);
  sub_1CFC9E858();
  sub_1CFBA57C0(&qword_1EE04D1D8, &qword_1EC4EE3B0, &qword_1CFCA42A8, MEMORY[0x1E697D680]);
  sub_1CFC06190(&qword_1EE04FFF0, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1CFBBC4E4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBBC51C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 32);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1CFBBC56C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 32) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1CFBBC5C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_1CFBBC634@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFC09F64();
  *a1 = result;
  return result;
}

double sub_1CFBBC660(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 56) = *a1;

  return result;
}

uint64_t sub_1CFBBC6AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_items;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1CFBBC70C()
{

  return MEMORY[0x1EEE6BDD0](v0, 26, 7);
}

uint64_t sub_1CFBBC744()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFBBC78C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFBBC7E4()
{
  v1 = sub_1CFC9C448();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1CFBBC8B0()
{

  sub_1CFC0DC38(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1CFBBC8F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CFBBC92C()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CFBBC96C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE530, &qword_1CFCA4678) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  v4 = (v2 + 56) & ~v2;
  v5 = sub_1CFC9C008();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  type metadata accessor for LegacyMailbox(0);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v3, v2 | 7);
}

uint64_t sub_1CFBBCAB0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBBCAE8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1CFBBCB44(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1CFBBCBAC()
{
  v1 = sub_1CFC9C448();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1CFC9C488();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1CFBBCCFC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1CFBBCD64(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1CFC1DF78(v1);
}

void sub_1CFBBCF8C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1CFC1EED0(v1);
}

uint64_t sub_1CFBBD02C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

double sub_1CFBBD24C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1CFC2BBC0(v1, v2);
}

uint64_t sub_1CFBBD2B8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE9E0, &unk_1CFCA56D0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

void *sub_1CFBBD374(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE9E0, &unk_1CFCA56D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CFBBD424()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EE8D0, &qword_1CFCA55D8);
  sub_1CFC34828();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1CFBBD49C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE9E0, &unk_1CFCA56D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1CFC9C608();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE360, &unk_1CFCA5700);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1CFBBD628(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE9E0, &unk_1CFCA56D0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_1CFC9C608();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE360, &unk_1CFCA5700);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[9];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1CFBBD7B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CFC9C608();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1CFBBD870(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1CFC9C608();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1CFBBD950()
{
  v1 = type metadata accessor for FavoriteListCell(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE890, &qword_1CFCA5598);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAF8, &qword_1CFCA2F60);
    if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
    {

      v7 = *(v6 + 32);
      v8 = sub_1CFC9F448();
      (*(*(v8 - 8) + 8))(v5 + v7, v8);
    }
  }

  else
  {
  }

  v9 = *(v1 + 20);
  v10 = sub_1CFC9C608();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);

  v11 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE3A0, &qword_1CFCA5830);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1CFC9D848();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1CFBBDBA4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFBBDBE0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBBDC18()
{
  v1 = sub_1CFC9D848();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for FavoritesList(0);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v18 = *(*(v6 - 8) + 64);
  v19 = sub_1CFC9C608();
  v9 = *(v19 - 8);
  v10 = *(v9 + 80);
  v17 = *(v9 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v8 + 24))
  {
  }

  v11 = v0 + v8 + *(v6 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE890, &qword_1CFCA5598);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAF8, &qword_1CFCA2F60);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {

      v13 = *(v12 + 32);
      v14 = sub_1CFC9F448();
      (*(*(v14 - 8) + 8))(v11 + v13, v14);
    }
  }

  else
  {
  }

  v15 = (v8 + v18 + v10) & ~v10;
  (*(v9 + 8))(v0 + v15, v19);

  return MEMORY[0x1EEE6BDD0](v0, v15 + v17, v3 | v7 | v10 | 7);
}

uint64_t sub_1CFBBDEEC()
{
  v1 = sub_1CFC9C608();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1CFBBDFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE360, &unk_1CFCA5700);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1CFBBE080(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE360, &unk_1CFCA5700);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1CFBBE144(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for IntervenableWrapperView.Wrapped(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1CFC06888();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1CFBBE2A4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBBE2DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CFC9C008();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1CFBBE3A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1CFC9C008();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1CFBBE464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LegacyMailbox(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEC80, &qword_1CFCA5BB8);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1CFBBE594(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LegacyMailbox(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEC80, &qword_1CFCA5BB8);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1CFBBE6C4()
{
  v1 = (type metadata accessor for LegacyMailboxCellView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_1CFC9C008();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for LegacyMailbox(0);

  v6 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE5E0, &qword_1CFCA5C40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1CFC9DE68();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1CFBBE87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EEDA0, &qword_1CFCA4020);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1CFBBE944(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EEDA0, &qword_1CFCA4020);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1CFBBEA08()
{
  v1 = *(type metadata accessor for LayoutTipView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE3F8, &qword_1CFCA43B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1CFC9E158();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1CFBBEB3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEE40, &qword_1CFCA5D78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFBBEC78@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFC9E4B8();
  *a1 = result;
  return result;
}

uint64_t sub_1CFBBECD0()
{
  v1 = *(type metadata accessor for LayoutTipView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE3F8, &qword_1CFCA43B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1CFC9E158();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1CFBBEE18()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFBBEEBC()
{
  MEMORY[0x1D3873340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBBEEF4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EEDD0, &qword_1CFCA5D38);
  sub_1CFBA57C0(&qword_1EC4EEE28, &qword_1EC4EEDD0, &qword_1CFCA5D38, MEMORY[0x1E697BE60]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1CFBBEFC4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBBF01C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 200, 7);
}

uint64_t sub_1CFBBF0B4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 208, 7);
}

uint64_t sub_1CFBBF244@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CFC9E418();
  *a1 = result;
  return result;
}

uint64_t sub_1CFBBF2A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFC9D4A8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1CFBBF398()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBBF3D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CFC9C608();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1CFBBF494(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1CFC9C608();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1CFBBF5C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE360, &unk_1CFCA5700);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1CFBBF638(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE360, &unk_1CFCA5700);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1CFBBF6B4()
{
  sub_1CFC9CF88();
  sub_1CFBB0D7C(&unk_1EE04D650, MEMORY[0x1E6995B10], MEMORY[0x1E6995B08]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1CFBBF740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE360, &unk_1CFCA5700);
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
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1CFBBF804(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE360, &unk_1CFCA5700);
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

uint64_t sub_1CFBBF8C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CFC9CC38();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1CFBBF920@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CFC9E478();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1CFBBF9A4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF520, &qword_1CFCA6FD8);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF528, &unk_1CFCA6FE0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_1CFBBFAC4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF520, &qword_1CFCA6FD8);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF528, &unk_1CFCA6FE0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_1CFBBFBE4()
{
  v1 = (type metadata accessor for VoicemailDetailContainerView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  sub_1CFC07CFC(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[7];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF520, &qword_1CFCA6FD8);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF528, &unk_1CFCA6FE0);
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1CFBBFE88()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF6A8, &qword_1CFCA75A0);
  sub_1CFC55178();
  sub_1CFC55230();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1CFBBFF00()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF6C0, &qword_1CFCA75B0);
  sub_1CFC9E668();
  sub_1CFBA57C0(&qword_1EE04D2B8, &qword_1EC4EF6C0, &qword_1CFCA75B0, MEMORY[0x1E697FDF8]);
  sub_1CFC55814(&qword_1EE04D360, MEMORY[0x1E697C540], MEMORY[0x1E697C538]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1CFBBFFF0@<X0>(uint64_t a1@<X8>)
{
  result = sub_1CFC9E498();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1CFBC00CC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CFBC0108()
{
  v1 = sub_1CFC9CF08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1CFBC01A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CFBC01E4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CFBC0234()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CFBC027C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFBC02C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1CFBC0300()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CFBC03C8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF528, &unk_1CFCA6FE0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1CFBC0484(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF528, &unk_1CFCA6FE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CFBC0560()
{
  v1 = (type metadata accessor for VoicemailCustomBannerView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v1[7];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF528, &unk_1CFCA6FE0);
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 16, v2 | 7);
}

uint64_t sub_1CFBC067C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBC06CC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBC0714@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFC9C518();
  *a1 = result;
  return result;
}

uint64_t sub_1CFBC0740@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFC9C508();
  *a1 = result;
  return result;
}

uint64_t sub_1CFBC076C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFC9C528();
  *a1 = result;
  return result;
}

uint64_t sub_1CFBC0798()
{
  MEMORY[0x1D3873340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBC07D4()
{
  v1 = sub_1CFC9C448();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1CFBC090C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFBC0944()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CFBC098C()
{
  v1 = sub_1CFC9C448();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1CFC9C138();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1CFBC0ADC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CFBC0B1C()
{
  v1 = sub_1CFC9C448();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1CFBC0BF8()
{
  v1 = sub_1CFC9C138();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1CFC9C448();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1CFBC0DA0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CFC9E3F8();
  *a1 = result;
  return result;
}

uint64_t sub_1CFBC0EB8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

double sub_1CFBC0F34(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1CFC85EFC(v1, v2);
}

uint64_t sub_1CFBC0F74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0088, &qword_1CFCA9258);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFBC0FEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0080, &qword_1CFCA9250);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1CFBC105C(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t sub_1CFBC106C@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1CFBC1104()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBC113C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFBC1180()
{
  v1 = sub_1CFC9C448();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1CFBC1244()
{
  v1 = sub_1CFC9C448();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1CFBC1348(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0150, &qword_1CFCA9590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFBC13B0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CFBC13F0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F0140, &qword_1CFCA9580);
  sub_1CFC9E858();
  sub_1CFBA57C0(&qword_1EE04D1C8, &qword_1EC4F0140, &qword_1CFCA9580, MEMORY[0x1E697D680]);
  sub_1CFC90228(&qword_1EE04FFF0, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1CFBC14D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFBC1520()
{
  MEMORY[0x1D3873340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBC1558()
{

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1CFBC15C8()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 136, 7);
}

uint64_t sub_1CFBC16A4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBC16DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBC1714(void *a1)
{
  sub_1CFC9E1C8();
  sub_1CFC2F564();
  return swift_getWitnessTable();
}

uint64_t sub_1CFBC1780()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBC17B8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBC17F0()
{
  MEMORY[0x1D3873340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBC1828()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F02C8, &qword_1CFCA9A80);
  sub_1CFBA57C0(&qword_1EC4F02D0, &qword_1EC4F02C8, &qword_1CFCA9A80, MEMORY[0x1E697FDF8]);
  sub_1CFC987D0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1CFBC18DC()
{
  MEMORY[0x1D3873340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBC1914()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CFBC1960()
{

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1CFBC1A34(uint64_t a1)
{
  if (qword_1EC4ECFE0 != -1)
  {
    swift_once();
  }

  if (byte_1EC4ECFE8 == 1 && (sub_1CFC9C368(), v1))
  {

    return 0;
  }

  else
  {
    sub_1CFC9C398();
    if (v3)
    {

      type metadata accessor for BundleClass();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v5 = [objc_opt_self() bundleForClass_];
      v6 = sub_1CFC9BE28();

      return v6;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1CFBC1B7C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0D0, &unk_1CFCA1FE0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0B8, &unk_1CFCA49D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v23 - v10;
  v12 = sub_1CFC9C5A8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for RecentsCellState(0);
  sub_1CFBC2F40(v1 + *(v16 + 24), v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1CFBC2FB0(v11, &qword_1EC4ED0B8, &unk_1CFCA49D0);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    if (sub_1CFC9C578())
    {
      sub_1CFC9C588();
      (*(v13 + 8))(v15, v12);
      v17 = sub_1CFC9BFB8();
      v18 = *(v17 - 8);
      if ((*(v18 + 48))(v8, 1, v17) != 1)
      {
        return (*(v18 + 32))(a1, v8, v17);
      }

      sub_1CFBC2FB0(v8, &qword_1EC4ED0D0, &unk_1CFCA1FE0);
    }

    else
    {
      (*(v13 + 8))(v15, v12);
    }
  }

  sub_1CFC9C3A8();
  v19 = sub_1CFC9BFB8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  if (v21(v5, 1, v19) != 1)
  {
    return (*(v20 + 32))(a1, v5, v19);
  }

  sub_1CFC9BF98();
  result = (v21)(v5, 1, v19);
  if (result != 1)
  {
    return sub_1CFBC2FB0(v5, &qword_1EC4ED0D0, &unk_1CFCA1FE0);
  }

  return result;
}

uint64_t sub_1CFBC1F1C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0B8, &unk_1CFCA49D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for RecentsCellState(0);
  sub_1CFBC2F40(v1 + *(v5 + 24), v4);
  v6 = sub_1CFC9C5A8();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_1CFBC2FB0(v4, &qword_1EC4ED0B8, &unk_1CFCA49D0);
  }

  else
  {
    v8 = sub_1CFC9C598();
    (*(v7 + 8))(v4, v6);
    if (v8)
    {
      return sub_1CFC9F0F8();
    }
  }

  v10 = [objc_opt_self() shared];
  v11 = [v10 current];

  if (v11)
  {
    return sub_1CFC9F188();
  }

  v12 = sub_1CFC9C408();
  if (!v12)
  {
    return sub_1CFC9F188();
  }

  return sub_1CFC9F178();
}

uint64_t sub_1CFBC20B0()
{
  v0 = sub_1CFC9D1F8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1CFC9D1E8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CFC9D218();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x1E69A12B8], v0, v10);
  sub_1CFC9D1D8();
  sub_1CFC9D208();
  (*(v5 + 8))(v7, v4);
  result = (*(v9 + 8))(v12, v8);
  byte_1EC4ECFE8 = 1;
  return result;
}

uint64_t sub_1CFBC22EC(uint64_t a1)
{
  if (qword_1EC4ECFE0 != -1)
  {
    swift_once();
  }

  if (byte_1EC4ECFE8 != 1 || (sub_1CFC9C368(), !v1))
  {
    sub_1CFC9C398();
    if (!v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1CFBC2388(uint64_t a1)
{
  v2 = sub_1CFBB74B4(&unk_1EE04F9A8, type metadata accessor for RecentsCellState, &unk_1CFCA1F8C);

  return MEMORY[0x1EEDF6B60](a1, v2);
}

uint64_t sub_1CFBC243C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  (*(*(v15 - 8) + 16))(a8, v8, v15);
  v16 = a8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(a6, a7) + 36);
  *v16 = a1;
  *(v16 + 8) = a2;
  *(v16 + 16) = a3;
}

uint64_t sub_1CFBC24F8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1CFC9F278();
  v2 = *MEMORY[0x1E697C8C0];
  v3 = sub_1CFC9E9B8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1CFBC2574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5 != 4)
  {
    MEMORY[0x1D3871160](a5, a2, a3, a4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED058, &qword_1CFCA1E08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED060, &unk_1CFCA1E10);
  sub_1CFBC2ABC();
  sub_1CFBC2D38();
  return sub_1CFC9EEF8();
}

uint64_t sub_1CFBC26F8(uint64_t a1, id *a2)
{
  v3 = sub_1CFC9F758();
  *a2 = 0;
  return v3 & 1;
}

void sub_1CFBC2778(uint64_t *a2@<X8>)
{
  sub_1CFC9F768();
  v3 = sub_1CFC9F728();

  *a2 = v3;
}

uint64_t sub_1CFBC27BC()
{
  v0 = sub_1CFC9F768();
  v1 = MEMORY[0x1D3871D60](v0);

  return v1;
}

double sub_1CFBC27F8(uint64_t a1)
{
  sub_1CFC9F768();
  sub_1CFC9F7C8();

  return result;
}

uint64_t sub_1CFBC284C(uint64_t a1)
{
  sub_1CFC9F768();
  sub_1CFCA0338();
  sub_1CFC9F7C8();
  v1 = sub_1CFCA0378();

  return v1;
}

uint64_t sub_1CFBC28C0(void *a1, uint64_t *a2)
{
  v2 = sub_1CFC9F768();
  v4 = v3;
  if (v2 == sub_1CFC9F768() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1CFCA02B8();
  }

  return v7 & 1;
}

void sub_1CFBC2970(uint64_t *a2@<X8>)
{
  v3 = sub_1CFC9F728();

  *a2 = v3;
}

uint64_t sub_1CFBC29B8(uint64_t a1)
{
  v2 = sub_1CFBB74B4(&qword_1EC4ED1F8, type metadata accessor for Key, &unk_1CFCA21E4);
  v3 = sub_1CFBB74B4(&unk_1EC4ED200, type metadata accessor for Key, &unk_1CFCA2138);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
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

unint64_t sub_1CFBC2ABC()
{
  result = qword_1EC4ED068;
  if (!qword_1EC4ED068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4ED058, &qword_1CFCA1E08);
    sub_1CFBC2BC0();
    sub_1CFBB74B4(&qword_1EE04FFC8, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4ED068);
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

unint64_t sub_1CFBC2BC0()
{
  result = qword_1EC4ED070;
  if (!qword_1EC4ED070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4ED078, &unk_1CFCA3730);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4ED080, &unk_1CFCA1E20);
    sub_1CFC9E858();
    sub_1CFBA57C0(&qword_1EE04D1B8, &unk_1EC4ED080, &unk_1CFCA1E20, MEMORY[0x1E697D680]);
    sub_1CFBB74B4(&qword_1EE04FFF0, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
    swift_getOpaqueTypeConformance2();
    sub_1CFBA57C0(&qword_1EE04FFE0, &unk_1EC4ED090, &qword_1CFCA3F50, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4ED070);
  }

  return result;
}

unint64_t sub_1CFBC2D38()
{
  result = qword_1EC4ED0A0;
  if (!qword_1EC4ED0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4ED060, &unk_1CFCA1E10);
    sub_1CFBC2DC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4ED0A0);
  }

  return result;
}

unint64_t sub_1CFBC2DC4()
{
  result = qword_1EC4ED0A8;
  if (!qword_1EC4ED0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4ED0A8);
  }

  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for VoicemailDetailControlsView.CustomContainerWidth(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for VoicemailDetailControlsView.CustomContainerWidth(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_1CFBC2ED4(uint64_t a1)
{
  if (!qword_1EE04D6A8)
  {
    sub_1CFC9C5A8();
    v1 = sub_1CFC9FEB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE04D6A8);
    }
  }
}

uint64_t sub_1CFBC2F40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0B8, &unk_1CFCA49D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFBC2FB0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1CFBC314C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

void *sub_1CFBC31CC()
{
  v1 = v0;
  v2 = sub_1CFC9C138();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 collectionView];
  if (result)
  {
    v8 = result;
    v9 = [result indexPathsForSelectedItems];

    if (v9)
    {
      v10 = sub_1CFC9F8A8();

      v11 = *(v10 + 16);
      if (v11)
      {
        v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
        v26[1] = v10;
        v13 = v10 + v12;
        v28 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_items;
        swift_beginAccess();
        v14 = v3 + 16;
        v15 = *(v3 + 16);
        v16 = *(v3 + 72);
        v17 = (v14 - 8);
        v26[2] = v14;
        v27 = MEMORY[0x1E69E7CC0];
        v15(v6, v13, v2);
        while (1)
        {
          v18 = *&v1[v28];

          v19 = sub_1CFC9C128();
          if ((v19 & 0x8000000000000000) != 0 || v19 >= *(v18 + 16))
          {
            break;
          }

          v20 = v1;
          v21 = *(v18 + 8 * v19 + 32);

          v22 = sub_1CFC9C118();
          if ((v22 & 0x8000000000000000) != 0 || v22 >= *(v21 + 16))
          {

            v1 = v20;
            goto LABEL_6;
          }

          sub_1CFBB94B0(v21 + 40 * v22 + 32, v29);

          (*v17)(v6, v2);
          sub_1CFBAD070(v29, v30);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v23 = v27;
          }

          else
          {
            v23 = sub_1CFC7AFC8(0, v27[2] + 1, 1, v27);
          }

          v25 = v23[2];
          v24 = v23[3];
          if (v25 >= v24 >> 1)
          {
            v23 = sub_1CFC7AFC8((v24 > 1), v25 + 1, 1, v23);
          }

          v23[2] = v25 + 1;
          v27 = v23;
          sub_1CFBAD070(v30, &v23[5 * v25 + 4]);
          v1 = v20;
LABEL_7:
          v13 += v16;
          if (!--v11)
          {

            return v27;
          }

          v15(v6, v13, v2);
        }

LABEL_6:
        (*v17)(v6, v2);
        goto LABEL_7;
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_1CFBC3504(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v6 = Strong;
  v7 = sub_1CFBAF1C8(a2);

  return v7;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

char *sub_1CFBC35E4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
    swift_beginAccess();
    v6 = *&v4[v5];

    v7 = sub_1CFC9C128();
    if ((v7 & 0x8000000000000000) != 0 || v7 >= *(v6 + 16))
    {

      return 0;
    }

    else
    {
      v8 = *(v6 + 16 * v7 + 40);
      swift_unknownObjectRetain();

      result = [v4 collectionView];
      if (result)
      {
        v9 = result;
        ObjectType = swift_getObjectType();
        v11 = (*(v8 + 160))(a1, v9, ObjectType, v8);
        swift_unknownObjectRelease();

        return v11;
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_1CFBC3718()
{
  sub_1CFCA0338();
  sub_1CFCA0068();
  MEMORY[0x1D3872880](*(v0 + 40));
  return sub_1CFCA0378();
}

uint64_t sub_1CFBC3794(uint64_t a1)
{
  sub_1CFCA0338();
  sub_1CFCA0068();
  MEMORY[0x1D3872880](*(v1 + 40));
  return sub_1CFCA0378();
}

double sub_1CFBC3820@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
  swift_beginAccess();
  v5 = *(a1 + v4);

  v6 = sub_1CFC9C128();
  if ((v6 & 0x8000000000000000) != 0 || v6 >= *(v5 + 16))
  {
    goto LABEL_10;
  }

  v7 = *(v5 + 16 * v6 + 40);
  swift_unknownObjectRetain();

  v8 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_items;
  swift_beginAccess();
  v9 = *(a1 + v8);

  v10 = sub_1CFC9C128();
  if ((v10 & 0x8000000000000000) != 0 || v10 >= *(v9 + 16))
  {
    swift_unknownObjectRelease();
LABEL_10:

    goto LABEL_11;
  }

  v11 = *(v9 + 8 * v10 + 32);

  v12 = sub_1CFC9C118();
  if ((v12 & 0x8000000000000000) == 0 && v12 < *(v11 + 16))
  {
    sub_1CFBB94B0(v11 + 40 * v12 + 32, &v18);

    sub_1CFBAD070(&v18, v20);
    v13 = v21;
    v14 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    sub_1CFC55874(v13, v14);
    ObjectType = swift_getObjectType();
    (*(v7 + 40))(&v18, ObjectType, v7);
    __swift_project_boxed_opaque_existential_1(&v18, v19);
    v16 = sub_1CFC9F6D8();
    swift_unknownObjectRelease();
    *(a2 + 40) = v16;
    __swift_destroy_boxed_opaque_existential_1Tm(&v18);
    sub_1CFBB94B0(v20, a2 + 48);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    return result;
  }

  swift_unknownObjectRelease();
LABEL_11:
  *(a2 + 80) = 0;
  result = 0.0;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  return result;
}

void sub_1CFBC3A34(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v117 = a4;
  v123 = a3;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED5D8, &qword_1CFCA24C0);
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v118 = v108 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED5E0, &qword_1CFCA24C8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v116 = v108 - v7;
  v130 = sub_1CFC9C138();
  v124 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v125 = v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v126 = v108 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v129 = v108 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v115 = v108 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v122 = v108 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED408, &qword_1CFCA22E0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v114 = v108 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v127 = v108 - v23;
  v24 = sub_1CFC9D8C8();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1CFC9D888();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = v108 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = swift_projectBox();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v111 = v32;
  v121 = v19;
  if (qword_1EE04D9A0 != -1)
  {
    goto LABEL_75;
  }

  while (1)
  {
    v33 = sub_1CFC9D8B8();
    __swift_project_value_buffer(v33, qword_1EE04D9B0);
    v34 = sub_1CFC9D8A8();
    sub_1CFC9D8D8();
    v35 = sub_1CFC9FC48();
    if (sub_1CFC9FEA8())
    {

      sub_1CFC9D908();

      if ((*(v25 + 88))(v27, v24) == *MEMORY[0x1E69E93E8])
      {
        v36 = "[Error] Interval already ended";
      }

      else
      {
        (*(v25 + 8))(v27, v24);
        v36 = "";
      }

      v37 = swift_slowAlloc();
      *v37 = 0;
      v38 = sub_1CFC9D868();
      _os_signpost_emit_with_name_impl(&dword_1CFB9F000, v34, v35, v38, "SectionnedCollectionViewController loading", v36, v37, 2u);
      MEMORY[0x1D3873280](v37, -1, -1);
    }

    (*(v29 + 8))(v31, v28);
    v31 = Strong;
    v39 = [Strong traitCollection];
    v40 = [v39 splitViewControllerLayoutEnvironment];

    v41 = &_swift_FORCE_LOAD___swiftCoreImage___CallsAppUI;
    v42 = 0x1E83CC000;
    if (v40 != 1)
    {
      break;
    }

    v43 = v31;
    v44 = [v43 collectionView];
    if (!v44)
    {
      goto LABEL_79;
    }

    v45 = v44;
    v46 = [v44 indexPathsForSelectedItems];

    v24 = v130;
    v48 = v124;
    v47 = v125;
    v49 = v127;
    v112 = v43;
    v50 = &_swift_FORCE_LOAD___swiftCoreImage___CallsAppUI;
    if (v46)
    {
      v51 = sub_1CFC9F8A8();

      v27 = v51;
    }

    else
    {
      v27 = MEMORY[0x1E69E7CC0];
    }

    v52 = v121;
    v53 = *(v48 + 56);
    v53(v49, 1, 1, v24);
    v110 = *(v27 + 16);
    if (v110)
    {
      goto LABEL_48;
    }

    v108[0] = v53;
    v108[1] = v48 + 56;
    v108[2] = v27;
    v54 = v123;
    v25 = v48;
    if (v123)
    {
      v27 = *(v123 + 16);
      if (v27)
      {
        v55 = (*(v48 + 80) + 32) & ~*(v48 + 80);
        v113 = *(v48 + 16);
        v113(v129, v123 + v55, v24);
        if (v27 != 1)
        {
          v59 = *(v124 + 72);
          v60 = (v124 + 8);
          v109 = (v124 + 32);
          v28 = v59;
          v61 = v54 + v59 + v55;
          v29 = 1;
          do
          {
            v25 = v27;
            v27 = v126;
            v113(v126, v61, v24);
            v31 = (v29 + 1);
            if (__OFADD__(v29, 1))
            {
              goto LABEL_74;
            }

            v62 = sub_1CFC9C118();
            v63 = v129;
            v64 = sub_1CFC9C118();
            v65 = *v60;
            if (v62 >= v64)
            {
              v24 = v130;
              v65(v27, v130);
            }

            else
            {
              v24 = v130;
              v65(v63, v130);
              (*v109)(v63, v27, v24);
            }

            ++v29;
            v61 += v28;
            v27 = v25;
          }

          while (v31 != v25);
        }

        v25 = v124;
        v27 = *(v124 + 32);
        v56 = v115;
        (v27)(v115, v129, v24);
        (v27)(v122, v56, v24);
        v57 = v116;
        sub_1CFBA29FC(v117, v116, &qword_1EC4ED5E0, &qword_1CFCA24C8);
        v58 = v119;
        v31 = v120;
        if ((*(v119 + 48))(v57, 1, v120) == 1)
        {
          sub_1CFBC2FB0(v57, &qword_1EC4ED5E0, &qword_1CFCA24C8);
          goto LABEL_29;
        }

        v66 = sub_1CFC9DB18();
        (*(v58 + 8))(v57, v31);
        v67 = sub_1CFC9C128();
        if ((v67 & 0x8000000000000000) != 0 || v67 >= *(v66 + 16))
        {

LABEL_29:
          v68 = 0;
          v69 = 1;
        }

        else
        {
          v68 = *(v66 + 8 * v67 + 32);

          v69 = 0;
        }

        v70 = v111;
        swift_beginAccess();
        v71 = v118;
        (*(v58 + 16))(v118, v70, v31);
        v72 = sub_1CFC9DB18();
        (*(v58 + 8))(v71, v31);
        v73 = v122;
        v74 = sub_1CFC9C128();
        if ((v74 & 0x8000000000000000) != 0)
        {

          if (v69)
          {
            goto LABEL_36;
          }
        }

        else if (v74 >= *(v72 + 16))
        {

          if (v69)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v31 = *(v72 + 8 * v74 + 32);

          if (v68 == v31)
          {
            v75 = v69;
          }

          else
          {
            v75 = 1;
          }

          if ((v75 & 1) == 0)
          {
LABEL_36:
            v76 = v127;
            sub_1CFBC2FB0(v127, &unk_1EC4ED408, &qword_1CFCA22E0);
            v77 = v130;
            (v27)(v76, v73, v130);
            v24 = v77;
            (v108[0])(v76, 0, 1, v77);
            v49 = v76;
LABEL_46:
            v47 = v125;
            goto LABEL_47;
          }
        }

        (*(v25 + 8))(v73, v130);
      }
    }

    v78 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
    v79 = v112;
    swift_beginAccess();
    v80 = *&v79[v78];
    v28 = *(v80 + 16);

    if (!v28)
    {
LABEL_44:

      v24 = v130;
      v47 = v125;
      v49 = v127;
LABEL_47:
      v31 = Strong;
      v50 = &_swift_FORCE_LOAD___swiftCoreImage___CallsAppUI;
      v52 = v121;
      v48 = v25;
LABEL_48:
      sub_1CFBA29FC(v49, v52, &unk_1EC4ED408, &qword_1CFCA22E0);
      if ((*(v48 + 48))(v52, 1, v24) == 1)
      {
        v85 = v112;

        v86 = sub_1CFBC2FB0(v52, &unk_1EC4ED408, &qword_1CFCA22E0);
        v42 = v50;
LABEL_58:
        v41 = &_swift_FORCE_LOAD___swiftCoreImage___CallsAppUI;
        if (!v110)
        {
          (*((*MEMORY[0x1E69E7D40] & *v85) + 0x1E8))(v86);
        }
      }

      else
      {
        (*(v48 + 32))(v47, v52, v24);
        v85 = v112;
        v87 = [v112 collectionView];
        if (!v87)
        {
          goto LABEL_80;
        }

        v88 = v87;
        v42 = v50;
        v89 = [v87 v50[188]];

        if (sub_1CFC9C128() >= v89)
        {
          goto LABEL_57;
        }

        v90 = [v85 collectionView];
        if (!v90)
        {
          goto LABEL_81;
        }

        v91 = v90;
        v92 = [v90 numberOfItemsInSection_];

        if (sub_1CFC9C118() >= v92)
        {
LABEL_57:

          v86 = (*(v48 + 8))(v47, v130);
          goto LABEL_58;
        }

        v93 = v85;
        v94 = [v85 collectionView];
        v95 = v130;
        if (!v94)
        {
          goto LABEL_82;
        }

        v96 = v94;
        v97 = sub_1CFC9C0C8();
        [v96 selectItemAtIndexPath:v97 animated:0 scrollPosition:0];

        v98 = [v93 collectionView];
        if (!v98)
        {
          goto LABEL_83;
        }

        v99 = sub_1CFC9C0C8();
        [v93 collectionView:v98 didSelectItemAtIndexPath:v99];

        (*(v48 + 8))(v47, v95);
        v41 = &_swift_FORCE_LOAD___swiftCoreImage___CallsAppUI;
      }

      sub_1CFBC2FB0(v127, &unk_1EC4ED408, &qword_1CFCA22E0);
      break;
    }

    v24 = 0;
    v29 = v80 + 40;
    while (v24 < *(v80 + 16))
    {
      v81 = *v29;
      ObjectType = swift_getObjectType();
      v31 = (v81 + 24);
      v83 = *(v81 + 24);
      swift_unknownObjectRetain();
      v27 = v83(ObjectType, v81);
      swift_unknownObjectRelease();
      if (v27)
      {

        v84 = v114;
        MEMORY[0x1D386E640](0, v24);
        v49 = v127;
        sub_1CFBC2FB0(v127, &unk_1EC4ED408, &qword_1CFCA22E0);
        v24 = v130;
        (v108[0])(v84, 0, 1, v130);
        sub_1CFBCCE88(v84, v49, &unk_1EC4ED408, &qword_1CFCA22E0);
        goto LABEL_46;
      }

      ++v24;
      v29 += 16;
      if (v28 == v24)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    swift_once();
  }

  v100 = v31;
  v101 = [v100 v41[146]];
  if (v101)
  {
    v102 = v101;
    v103 = [v101 *(v42 + 1504)];

    if ((v103 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      if (!v103)
      {
LABEL_69:

        return;
      }

      v104 = 0;
      while (1)
      {
        v105 = [v100 v41[146]];
        if (!v105)
        {
          break;
        }

        v106 = v105;
        v107 = [v105 numberOfItemsInSection_];

        if (v107 > 0)
        {
          v131 = v104;

          sub_1CFC9DCC8();
        }

        if (v103 == ++v104)
        {
          goto LABEL_69;
        }
      }
    }

    __break(1u);
  }

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
}

void sub_1CFBC4920(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_hasAlreadyLoadedCollection] = 1;
  }
}

uint64_t sub_1CFBC497C(int a1, int a2)
{
  v4 = v2;
  v78 = a2;
  v6 = sub_1CFC9C138();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v77 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v74 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v74 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED408, &qword_1CFCA22E0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v76 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = MEMORY[0x1EEE9AC00](v17).n128_u64[0];
  v79 = &v74 - v19;
  result = [v2 collectionView];
  if (!result)
  {
    goto LABEL_51;
  }

  v21 = result;
  v22 = [result indexPathsForSelectedItems];

  v84 = v7;
  v75 = v6;
  v85 = a1;
  if (!v22)
  {
    goto LABEL_7;
  }

  v3 = sub_1CFC9F8A8();

  v23 = *(v3 + 2);
  if (!v23)
  {

LABEL_7:
    (*(v7 + 56))(v79, 1, 1, v6);
    goto LABEL_8;
  }

  v74 = v4;
  v24 = *(v7 + 16);
  v82 = &v3[(*(v7 + 80) + 32) & ~*(v7 + 80)];
  v83 = v24;
  (v24)(v14);
  if (v23 != 1)
  {
    v80 = (v84 + 32);
    v81 = v84 + 8;
    v58 = 1;
    while (v58 < *(v3 + 2))
    {
      v59 = v23;
      v60 = v84;
      v83(v11, &v82[*(v84 + 72) * v58], v6);
      v61 = sub_1CFC9C118();
      v62 = sub_1CFC9C118();
      v63 = *(v60 + 8);
      if (v61 >= v62)
      {
        v63(v11, v6);
      }

      else
      {
        v63(v14, v6);
        (*v80)(v14, v11, v6);
      }

      v23 = v59;
      if (v59 == ++v58)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_48;
  }

LABEL_5:

  v25 = v84;
  v26 = v6;
  v27 = v79;
  (*(v84 + 32))(v79, v14, v26);
  (*(v25 + 56))(v27, 0, 1, v26);
  v4 = v74;
LABEL_8:
  v28 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
  swift_beginAccess();
  v11 = v4;
  v23 = *&v4[v28];
  v29 = v23[2];

  if (v29)
  {
    v30 = 0;
    v31 = v23 + 5;
    while (v30 < v23[2])
    {
      ++v30;
      v32 = *v31;
      ObjectType = swift_getObjectType();
      v3 = (v32 + 80);
      v34 = *(v32 + 80);
      swift_unknownObjectRetain();
      v34(v85 & 1, ObjectType, v32);
      swift_unknownObjectRelease();
      v31 += 2;
      if (v29 == v30)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_12:

  v35 = type metadata accessor for SectionnedCollectionViewController();
  v36 = v11;
  v87.receiver = v11;
  v87.super_class = v35;
  v37 = v85;
  objc_msgSendSuper2(&v87, sel_setEditing_animated_, v85 & 1, v78 & 1);
  sub_1CFC90748();
  v38 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_editButtonItems;
  swift_beginAccess();
  v39 = *&v11[v38];
  v40 = *(v39 + 16);
  if (!v40)
  {
    v49 = v79;
    return sub_1CFBC2FB0(v49, &unk_1EC4ED408, &qword_1CFCA22E0);
  }

  if (v37)
  {
    v86 = MEMORY[0x1E69E7CC0];

    sub_1CFCA0168();
    v41 = 144;
    do
    {
      v42 = *(v39 + v41);
      sub_1CFCA0138();
      sub_1CFCA0178();
      sub_1CFCA0188();
      sub_1CFCA0148();
      v41 += 120;
      --v40;
    }

    while (v40);

    sub_1CFBA2D80(0, &unk_1EE04D0D0, 0x1E69DC708);
    v43 = sub_1CFC9F898();

    v3 = &_swift_FORCE_LOAD___swiftCoreImage___CallsAppUI;
    [v11 setToolbarItems_];

    type metadata accessor for SystemItem(0);
    sub_1CFC9CD28();
    v44 = v86;
    v45 = [v11 toolbarItems];
    if (!v45)
    {
      [v11 setToolbarItems_];
      v49 = v79;
      goto LABEL_42;
    }

    v46 = v45;
    v47 = sub_1CFC9F8A8();

    v86 = v47;
    v23 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:v44 target:0 action:0];
    if (!(v47 >> 62))
    {
      result = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result < 1)
      {
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      goto LABEL_19;
    }

LABEL_49:
    result = sub_1CFC9FFD8();
    if (result < 1)
    {
      goto LABEL_50;
    }

LABEL_19:
    v36 = v11;
    sub_1CFBB510C(1, 1, v23, &unk_1EE04D0D0, 0x1E69DC708);

    if (v86)
    {
      v48 = sub_1CFC9F898();
    }

    else
    {
      v48 = 0;
    }

    v49 = v79;
    [v11 *(v3 + 169)];

LABEL_42:
    v70 = [v36 navigationController];
    if (v70)
    {
      v71 = v70;
      [v70 setToolbarHidden:0 animated:1];
    }

    v72 = [v36 tabBarController];
    if (v72)
    {
      v73 = v72;
      [v72 setTabBarHidden:1 animated:1];
    }

    return sub_1CFBC2FB0(v49, &unk_1EC4ED408, &qword_1CFCA22E0);
  }

  v50 = [v11 navigationController];
  v49 = v79;
  if (v50)
  {
    v51 = v50;
    [v50 setToolbarHidden:1 animated:1];
  }

  v52 = [v11 tabBarController];
  v53 = v84;
  v54 = v76;
  v55 = v77;
  if (v52)
  {
    v56 = v52;
    [v52 setTabBarHidden:0 animated:1];
  }

  sub_1CFBA29FC(v49, v54, &unk_1EC4ED408, &qword_1CFCA22E0);
  v57 = v75;
  if ((*(v53 + 48))(v54, 1, v75) == 1)
  {
    sub_1CFBC2FB0(v49, &unk_1EC4ED408, &qword_1CFCA22E0);
    v49 = v54;
    return sub_1CFBC2FB0(v49, &unk_1EC4ED408, &qword_1CFCA22E0);
  }

  (*(v53 + 32))(v55, v54, v57);
  v64 = [v11 traitCollection];
  v65 = [v64 splitViewControllerLayoutEnvironment];

  if (v65 != 1)
  {
LABEL_38:
    (*(v53 + 8))(v55, v57);
    return sub_1CFBC2FB0(v49, &unk_1EC4ED408, &qword_1CFCA22E0);
  }

  result = [v11 collectionView];
  if (!result)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v66 = result;
  v67 = sub_1CFC9C0C8();
  [v66 selectItemAtIndexPath:v67 animated:0 scrollPosition:0];

  result = [v11 collectionView];
  if (result)
  {
    v68 = result;
    v69 = sub_1CFC9C0C8();
    [v11 collectionView:v68 didSelectItemAtIndexPath:v69];

    goto LABEL_38;
  }

LABEL_53:
  __break(1u);
  return result;
}

char *sub_1CFBC53A0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1CFC9C088();
  v38 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED528, &qword_1CFCA2440);
  MEMORY[0x1EEE9AC00](v40);
  v9 = &v36 - v8;
  v10 = sub_1CFC9C0A8();
  v37 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  v39 = a1;
  v16 = sub_1CFBA48FC(a1, a2);
  if (v17)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v19 = v16;
  SectionnedCollectionViewController.selectedRows(in:)(v39, a2, v15);
  v20 = *(v37 + 16);
  v36 = v15;
  v20(v12, v15, v10);
  v21 = MEMORY[0x1E6969B50];
  sub_1CFBA5194(&unk_1EE04D6E0, MEMORY[0x1E6969B50], MEMORY[0x1E6969B78]);
  sub_1CFC9F858();
  v39 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_items;
  v40 = v2;
  swift_beginAccess();
  sub_1CFBA5194(&qword_1EE04D6D8, v21, MEMORY[0x1E6969B88]);
  v22 = v38 + 8;
  v38 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1CFC9FA48();
    sub_1CFBA5194(&qword_1EE04D6F0, MEMORY[0x1E6969B18], MEMORY[0x1E6969B28]);
    v23 = sub_1CFC9F6F8();
    (*v22)(v7, v5);
    if (v23)
    {
      sub_1CFBC2FB0(v9, &unk_1EC4ED528, &qword_1CFCA2440);
      (*(v37 + 8))(v36, v10);
      return v38;
    }

    v24 = sub_1CFC9FA88();
    v26 = *v25;
    v24(v43, 0);
    result = sub_1CFC9FA58();
    if ((v19 & 0x8000000000000000) != 0)
    {
      break;
    }

    v27 = *(v40 + v39);
    if (v19 >= *(v27 + 16))
    {
      goto LABEL_17;
    }

    if ((v26 & 0x8000000000000000) == 0)
    {
      v28 = *(v27 + 8 * v19 + 32);
      if (v26 < *(v28 + 16))
      {
        v29 = v28 + 40 * v26;
        v30 = *(v29 + 56);
        v31 = __swift_project_boxed_opaque_existential_1((v29 + 32), v30);
        v42 = v30;
        boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v41);
        (*(*(v30 - 8) + 16))(boxed_opaque_existential_0Tm, v31, v30);
        sub_1CFBCC9AC(&v41, v43);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v33 = v38;
        }

        else
        {
          v33 = sub_1CFC7B110(0, *(v38 + 2) + 1, 1, v38);
        }

        v35 = *(v33 + 2);
        v34 = *(v33 + 3);
        if (v35 >= v34 >> 1)
        {
          v33 = sub_1CFC7B110((v34 > 1), v35 + 1, 1, v33);
        }

        *(v33 + 2) = v35 + 1;
        v38 = v33;
        sub_1CFBCC9AC(v43, &v33[32 * v35 + 32]);
      }
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

id sub_1CFBC5874(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for SectionnedCollectionViewController();
  objc_msgSendSuper2(&v4, sel_viewWillDisappear_, a1 & 1);
  result = [v1 setEditing:0 animated:a1 & 1];
  *(v1 + OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_isVisible) = 0;
  return result;
}

void sub_1CFBC5960(uint64_t a1, uint64_t a2)
{
  v60 = sub_1CFC9C138();
  v62 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v57 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v54 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v54 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v54 - v10;
  v11 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
  swift_beginAccess();
  v58 = v2;
  v12 = *&v2[v11];
  v13 = *(v12 + 16);
  v65 = v12;

  v64 = v13;
  if (v13)
  {
    v14 = 0;
    v63 = a2 + 40;
    v15 = (v65 + 40);
    while (1)
    {
      if (v14 >= *(v65 + 16))
      {
        __break(1u);
        goto LABEL_33;
      }

      v16 = *v15;
      ObjectType = swift_getObjectType();
      v18 = *(v16 + 40);
      swift_unknownObjectRetain();
      v18(v67, ObjectType, v16);
      __swift_project_boxed_opaque_existential_1(v67, v67[3]);
      v19 = sub_1CFC9F6D8();
      v20 = swift_getObjectType();
      (*(a2 + 40))(v66, v20, a2);
      __swift_project_boxed_opaque_existential_1(v66, v66[3]);
      v21 = sub_1CFC9F6D8();
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm(v66);
      __swift_destroy_boxed_opaque_existential_1Tm(v67);
      if (v19 == v21)
      {
        break;
      }

      ++v14;
      v15 += 2;
      if (v64 == v14)
      {
        goto LABEL_6;
      }
    }

    v22 = v58;
    v23 = [v58 collectionView];
    if (!v23)
    {
      goto LABEL_34;
    }

    v24 = v23;
    v25 = [v23 numberOfItemsInSection_];

    v26 = v57;
    if (v25 < 1)
    {
      return;
    }

    v27 = [v22 collectionView];
    if (!v27)
    {
      goto LABEL_35;
    }

    v28 = v27;
    v29 = [v27 indexPathsForSelectedItems];

    v30 = v60;
    if (v29)
    {
      v31 = sub_1CFC9F8A8();

      v32 = *(v31 + 16);
      if (v32)
      {
        v33 = 0;
        v56 = (v62 + 8);
        v65 = v62 + 32;
        v34 = MEMORY[0x1E69E7CC0];
        v35 = v59;
        v63 = v62 + 16;
        v64 = v32;
        while (v33 < *(v31 + 16))
        {
          v36 = (*(v62 + 80) + 32) & ~*(v62 + 80);
          v37 = *(v62 + 72);
          (*(v62 + 16))(v35, v31 + v36 + v37 * v33, v30);
          if (sub_1CFC9C128() == v14)
          {
            v38 = v30;
            v39 = *v65;
            (*v65)(v61, v35, v38);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v67[0] = v34;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1CFBCA940(0, *(v34 + 16) + 1, 1);
              v34 = v67[0];
            }

            v42 = *(v34 + 16);
            v41 = *(v34 + 24);
            if (v42 >= v41 >> 1)
            {
              sub_1CFBCA940((v41 > 1), v42 + 1, 1);
              v34 = v67[0];
            }

            *(v34 + 16) = v42 + 1;
            v43 = v60;
            v39((v34 + v36 + v42 * v37), v61, v60);
            v30 = v43;
            v35 = v59;
            v32 = v64;
          }

          else
          {
            (*v56)(v35, v30);
          }

          if (v32 == ++v33)
          {
            goto LABEL_25;
          }
        }

LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v34 = MEMORY[0x1E69E7CC0];
LABEL_25:

      if (*(v34 + 16))
      {
        v45 = v62;
        v46 = v55;
        (*(v62 + 16))(v55, v34 + ((*(v45 + 80) + 32) & ~*(v45 + 80)), v30);

        v47 = sub_1CFC9C118();
        (*(v45 + 8))(v46, v60);
        v44 = v47;
      }

      else
      {

        v44 = 0;
      }

      v22 = v58;
      v26 = v57;
    }

    else
    {
      v44 = 0;
    }

    MEMORY[0x1D386E640](v44, v14);
    v48 = [v22 collectionView];
    if (!v48)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v49 = v48;
    v50 = sub_1CFC9C0C8();
    [v49 selectItemAtIndexPath:v50 animated:0 scrollPosition:0];

    v51 = [v22 collectionView];
    if (v51)
    {
      v52 = v51;
      v53 = sub_1CFC9C0C8();
      [v22 collectionView:v52 didSelectItemAtIndexPath:v53];

      (*(v62 + 8))(v26, v60);
      return;
    }

LABEL_37:
    __break(1u);
  }

  else
  {
LABEL_6:
  }
}

void sub_1CFBC5F74(int a1)
{
  v2 = v1;
  HIDWORD(v17) = a1;
  v3 = sub_1CFC9C138();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v2;
  v8 = [v2 collectionView];
  if (!v8)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v9 = v8;
  v10 = [v8 indexPathsForSelectedItems];

  if (v10)
  {
    v11 = sub_1CFC9F8A8();

    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = 0;
      while (v13 < *(v11 + 16))
      {
        (*(v4 + 16))(v7, v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13, v3);
        v14 = [v18 collectionView];
        if (!v14)
        {
          goto LABEL_11;
        }

        v15 = v14;
        ++v13;
        v16 = sub_1CFC9C0C8();
        [v15 deselectItemAtIndexPath:v16 animated:BYTE4(v17) & 1];

        (*(v4 + 8))(v7, v3);
        if (v12 == v13)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

LABEL_8:
  }
}

id SectionnedCollectionViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

id SectionnedCollectionViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1CFC9F728();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

Swift::Void __swiftcall SectionnedCollectionViewController.sectionItemsDidChange(animateDifferences:)(Swift::Bool animateDifferences)
{
  if (*(v1 + OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_isVisible) == 1)
  {
    sub_1CFBA8154(0, 0, animateDifferences);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_shouldUpdateOnAppear) = 1;
  }
}

id SectionnedCollectionViewController.visibleIndexPaths()()
{
  result = [v0 collectionView];
  if (result)
  {
    v2 = result;
    v3 = [result indexPathsForVisibleItems];

    sub_1CFC9C138();
    v4 = sub_1CFC9F8A8();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1CFBC6460()
{
  result = [v0 collectionView];
  if (result)
  {
    v2 = result;
    v3 = [result indexPathsForVisibleItems];

    sub_1CFC9C138();
    v4 = sub_1CFC9F8A8();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *SectionnedCollectionViewController.collectionView(_:didBeginMultipleSelectionInteractionAt:)()
{
  v3 = MEMORY[0x1E69E6370];
  LOBYTE(v2) = 2;
  result = sub_1CFC9CD28();
  if (v4 == 1)
  {
    return [v0 setEditing:1 animated:{1, sub_1CFBCCF04, 0, sub_1CFBCCF04, 0, sub_1CFBCCF04, 0, v2, v3}];
  }

  return result;
}

void SectionnedCollectionViewController.collectionView(_:didSelectItemAt:)()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1E8))();
  if ([v0 isEditing])
  {

    sub_1CFC90748();
  }
}

uint64_t SectionnedCollectionViewController.collectionView(_:performPrimaryActionForItemAt:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1CFC9C138();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CFC9C128();
  v11 = sub_1CFC9C118();
  v12 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_items;
  result = swift_beginAccess();
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = *(v3 + v12);
  if (v10 >= *(v14 + 16))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = *(v14 + 8 * v10 + 32);
  if (v11 >= *(v15 + 16))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1CFBB94B0(v15 + 40 * v11 + 32, v29);
  v16 = sub_1CFC9C0C8();
  v17 = [a1 cellForItemAtIndexPath_];

  if (!v17)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  v18 = sub_1CFC9C128();
  v19 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
  result = swift_beginAccess();
  if ((v18 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  v20 = *(v3 + v19);
  if (v18 < *(v20 + 16))
  {
    v28 = *(v20 + 16 * v18 + 40);
    ObjectType = swift_getObjectType();
    v22 = v30;
    v27[0] = ObjectType;
    v27[1] = v31;
    v23 = __swift_project_boxed_opaque_existential_1(v29, v30);
    (*(v7 + 16))(v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
    v24 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = a1;
    (*(v7 + 32))(v25 + v24, v9, v6);
    swift_unknownObjectRetain();
    v26 = a1;
    SectionController.anyPerformPrimaryAction<A>(for:cell:deselect:)(v23, v17, sub_1CFBCB450, v25, v27[0], v22, v28);

    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

LABEL_15:
  __break(1u);
  return result;
}

UIContextMenuConfiguration_optional __swiftcall SectionnedCollectionViewController.collectionView(_:contextMenuConfigurationForItemsAt:point:)(UICollectionView *_, Swift::OpaquePointer contextMenuConfigurationForItemsAt, CGPoint point)
{
  v3 = sub_1CFBCBA2C(contextMenuConfigurationForItemsAt._rawValue);
  result.value.super.isa = v3;
  result.is_nil = v4;
  return result;
}

uint64_t sub_1CFBC6FF8(uint64_t a1, uint64_t a2)
{
  sub_1CFBA2D80(0, &unk_1EE04CF40, 0x1E69DCC60);

  return sub_1CFC9FD68();
}

void sub_1CFBC7230(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
    v3 = Strong;
    swift_beginAccess();
    v4 = *&v3[v2];

    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = (v4 + 40);
      while (v6 < *(v4 + 16))
      {
        ++v6;
        v8 = *v7;
        ObjectType = swift_getObjectType();
        v10 = *(v8 + 192);
        swift_unknownObjectRetain();
        v10(ObjectType, v8);
        swift_unknownObjectRelease();
        v7 += 2;
        if (v5 == v6)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_6:
    }
  }
}

uint64_t SectionnedCollectionViewController.collectionView(_:dragPreviewParametersForItemAt:)(void *a1)
{
  v3 = sub_1CFC9C128();
  v4 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
  result = swift_beginAccess();
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = *(v1 + v4);
  if (v3 >= *(v6 + 16))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v7 = *(v6 + 16 * v3 + 32);
  swift_getObjectType();
  v8 = swift_conformsToProtocol2();
  if (v8)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = v8;
    swift_unknownObjectRetain();
    v11 = sub_1CFC9C0C8();
    v12 = [a1 cellForItemAtIndexPath_];

    if (v12)
    {
      ObjectType = swift_getObjectType();
      v14 = (*(v10 + 24))(v12, ObjectType, v10);
      swift_unknownObjectRelease();

      return v14;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

id SectionnedCollectionViewController.collectionView(_:dropPreviewParametersForItemAt:)(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_1CFC9C0C8();
  v6 = [v3 collectionView:a1 dragPreviewParametersForItemAtIndexPath:v5];

  return v6;
}

id sub_1CFBC7C90(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1CFBC7CC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1CFBA2D80(0, &qword_1EE04D0E0, 0x1E69DCC78);
  v3 = sub_1CFC9F8A8();

  v4 = v2(v3);

  return v4;
}

uint64_t sub_1CFBC7D58(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1CFCA0328();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1CFBC8AE0(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1CFBC7E38(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1CFCA0338();
  sub_1CFC9F7C8();
  v8 = sub_1CFCA0378();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1CFCA02B8() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1CFBC8C00(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1CFBC7F88(uint64_t *a1, void *a2)
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

    v8 = a2;

    v9 = sub_1CFC9FFE8();

    if (v9)
    {

      sub_1CFBA2D80(0, &qword_1EC4ED538, 0x1E69D8B80);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1CFC9FFD8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1CFBC81C0(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1CFBC8834(v20 + 1);
    }

    v18 = v8;
    sub_1CFBC8A5C(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1CFBA2D80(0, &qword_1EC4ED538, 0x1E69D8B80);
  v11 = sub_1CFC9FDD8();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1CFBC8D80(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1CFC9FDE8();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1CFBC81C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED540, &qword_1CFCA2448);
    v2 = sub_1CFCA00A8();
    v15 = v2;
    sub_1CFC9FF98();
    if (sub_1CFCA0018())
    {
      sub_1CFBA2D80(0, &qword_1EC4ED538, 0x1E69D8B80);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1CFBC8834(v9 + 1);
        }

        v2 = v15;
        result = sub_1CFC9FDD8();
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

      while (sub_1CFCA0018());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1CFBC83B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED628, &qword_1CFCA2508);
  result = sub_1CFCA0098();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
      result = sub_1CFCA0328();
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

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1CFBC85D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EFE00, &unk_1CFCA8350);
  result = sub_1CFCA0098();
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1CFCA0338();
      sub_1CFC9F7C8();
      result = sub_1CFCA0378();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1CFBC8834(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED540, &qword_1CFCA2448);
  result = sub_1CFCA0098();
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
      result = sub_1CFC9FDD8();
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

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1CFBC8A5C(uint64_t a1, uint64_t a2)
{
  sub_1CFC9FDD8();
  result = sub_1CFC9FF78();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1CFBC8AE0(uint64_t result, unint64_t a2, char a3)
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
    sub_1CFBC83B0(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1CFBC8EF0();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1CFBC92DC(v5 + 1);
  }

  v8 = *v3;
  result = sub_1CFCA0328();
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
  result = sub_1CFCA02F8();
  __break(1u);
  return result;
}

uint64_t sub_1CFBC8C00(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_1CFBC85D4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1CFBC9030();
      goto LABEL_16;
    }

    sub_1CFBC94CC(v8 + 1);
  }

  v10 = *v4;
  sub_1CFCA0338();
  sub_1CFC9F7C8();
  result = sub_1CFCA0378();
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

      result = sub_1CFCA02B8();
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
  result = sub_1CFCA02F8();
  __break(1u);
  return result;
}

void sub_1CFBC8D80(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1CFBC8834(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1CFBC918C();
      goto LABEL_12;
    }

    sub_1CFBC9704(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_1CFC9FDD8();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1CFBA2D80(0, &qword_1EC4ED538, 0x1E69D8B80);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1CFC9FDE8();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
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
  sub_1CFCA02F8();
  __break(1u);
}

void *sub_1CFBC8EF0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED628, &qword_1CFCA2508);
  v2 = *v0;
  v3 = sub_1CFCA0088();
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

void *sub_1CFBC9030()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EFE00, &unk_1CFCA8350);
  v2 = *v0;
  v3 = sub_1CFCA0088();
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

id sub_1CFBC918C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED540, &qword_1CFCA2448);
  v2 = *v0;
  v3 = sub_1CFCA0088();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
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

uint64_t sub_1CFBC92DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED628, &qword_1CFCA2508);
  result = sub_1CFCA0098();
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
      result = sub_1CFCA0328();
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

uint64_t sub_1CFBC94CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EFE00, &unk_1CFCA8350);
  result = sub_1CFCA0098();
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
      sub_1CFCA0338();

      sub_1CFC9F7C8();
      result = sub_1CFCA0378();
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

uint64_t sub_1CFBC9704(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED540, &qword_1CFCA2448);
  result = sub_1CFCA0098();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
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
      result = sub_1CFC9FDD8();
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

        v2 = v24;
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

void *sub_1CFBC9918(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED598, &unk_1CFCA2490);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED5A0, &qword_1CFCA87C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CFBC9A60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED610, &qword_1CFCA24F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CFBC9B80(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED560, &qword_1CFCA2460);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1CFBC9C84(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED568, &qword_1CFCA2468);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED570, &unk_1CFCA2470) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED570, &unk_1CFCA2470) - 8);
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

char *sub_1CFBC9E74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED0E0, &qword_1CFCA1FF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CFBC9F80(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED648, &qword_1CFCA2528);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1CFBCA084(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED640, &qword_1CFCA2520);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1CFBCA188(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED590, &qword_1CFCA2488);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1CFBCA298(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v6 >= 1)
  {
    v10 = result;
    v11 = *(a3 + 16);
    if (result < (v11 - v6) / 2)
    {
      result = MEMORY[0x1D386F820](*a4 & 0x3FLL);
      if (result / 3 > v10)
      {
        if (v10 < 0)
        {
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

        if (v11 < v10)
        {
LABEL_68:
          __break(1u);
          goto LABEL_69;
        }

        if (v10)
        {

          v12 = 0;
          while (1)
          {
            sub_1CFBCCD6C(a3 + 32 + 48 * v12, v48);
            sub_1CFCA0338();
            sub_1CFCA0068();
            MEMORY[0x1D3872880](v49);
            result = sub_1CFCA0378();
            v13 = 1 << *a4;
            v14 = __OFSUB__(v13, 1);
            v15 = v13 - 1;
            if (v14)
            {
              break;
            }

            *&v42 = a4;
            *(&v42 + 1) = a5;
            *&v44 = v15 & result;
            *(&v44 + 1) = sub_1CFC9D288();
            *&v46 = v16;
            *(&v46 + 1) = v17;
            if (*(&v44 + 1))
            {
              while (1)
              {
                v50 = v42;
                v51 = v44;
                v52 = v46;
                v53 = 0;
                v18 = sub_1CFC9D2B8();
                if ((v19 & 1) == 0 && v18 == v12)
                {
                  break;
                }

                sub_1CFC9D2D8();
              }
            }

            result = v12 + v6;
            if (__OFADD__(v12, v6))
            {
              goto LABEL_58;
            }

            ++v12;
            sub_1CFC9D2C8();
            sub_1CFBCCDA4(v48);
            if (v12 == v10)
            {

              goto LABEL_18;
            }
          }

          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        goto LABEL_18;
      }

      *&v50 = a4;
      *(&v50 + 1) = a5;
      *&v51 = 0;
      *(&v51 + 1) = sub_1CFC9D288();
      *&v52 = v34;
      *(&v52 + 1) = v35;
      v53 = 0;
      v36 = sub_1CFC9D2B8();
      if ((v37 & 1) != 0 || v36 >= v10)
      {
LABEL_45:
        result = sub_1CFC9D2D8();
LABEL_18:
        v20 = a4[1];
        if (__OFSUB__(v20 >> 6, v6))
        {
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        v21 = 1 << *a4;
        v14 = __OFSUB__(v21, 1);
        v22 = v21 - 1;
        if (v14)
        {
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

        v23 = (v22 & (((v20 >> 6) - v6) >> 63)) + (v20 >> 6) - v6;
        if (v23 < v22)
        {
          v22 = 0;
        }

        a4[1] = a4[1] & 0x3FLL | ((v23 - v22) << 6);
        return result;
      }

      if (!__OFADD__(v36, v6))
      {
        sub_1CFC9D2C8();
        goto LABEL_45;
      }

      __break(1u);
LABEL_51:
      *&v50 = a4;
      *(&v50 + 1) = a5;
      *&v51 = 0;
      *(&v51 + 1) = sub_1CFC9D288();
      *&v52 = v38;
      *(&v52 + 1) = v39;
      v53 = 0;
      v40 = sub_1CFC9D2B8();
      if ((v41 & 1) == 0 && v40 >= v5)
      {
        v14 = __OFSUB__(v40, v6);
        result = v40 - v6;
        if (v14)
        {
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        sub_1CFC9D2C8();
      }

      return sub_1CFC9D2D8();
    }

    v5 = a2;
    v24 = v11 - a2;
    if (__OFSUB__(v11, a2))
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    result = MEMORY[0x1D386F820](*a4 & 0x3FLL);
    if (v24 >= result / 3)
    {
      goto LABEL_51;
    }

    if (v11 < v5)
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    if (v5 < 0)
    {
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    if (v11 != v5)
    {
      if (v11 <= v5)
      {
LABEL_71:
        __break(1u);
        return result;
      }

      v25 = a3 + 32;

      while (1)
      {
        sub_1CFBCCD6C(v25 + 48 * v5, v48);
        sub_1CFCA0338();
        sub_1CFCA0068();
        MEMORY[0x1D3872880](v49);
        result = sub_1CFCA0378();
        v26 = 1 << *a4;
        v14 = __OFSUB__(v26, 1);
        v27 = v26 - 1;
        if (v14)
        {
          goto LABEL_60;
        }

        *&v43 = a4;
        *(&v43 + 1) = a5;
        *&v45 = v27 & result;
        *(&v45 + 1) = sub_1CFC9D288();
        *&v47 = v28;
        *(&v47 + 1) = v29;
        if (*(&v45 + 1))
        {
          while (1)
          {
            v50 = v43;
            v51 = v45;
            v52 = v47;
            v53 = 0;
            v30 = sub_1CFC9D2B8();
            if ((v31 & 1) == 0 && v30 == v5)
            {
              break;
            }

            sub_1CFC9D2D8();
          }
        }

        v32 = v5 + 1;
        v33 = __OFADD__(v5, 1);
        result = v5 - v6;
        if (__OFSUB__(v5, v6))
        {
          goto LABEL_61;
        }

        sub_1CFC9D2C8();
        result = sub_1CFBCCDA4(v48);
        if (v33)
        {
          goto LABEL_62;
        }

        ++v5;
        if (v32 == v11)
        {
        }
      }
    }
  }

  return result;
}

uint64_t sub_1CFBCA6FC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x1D386F850](v6, a2);
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = MEMORY[0x1D386F860](v8, a4);
    sub_1CFBCA77C(a1, (v10 + 16), v10 + 32);
    return v10;
  }

  return result;
}

uint64_t sub_1CFBCA7CC(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = result;
      v7 = 0;
      while (1)
      {
        sub_1CFBCCD6C(v6 + 48 * v7, v9);
        sub_1CFCA0338();
        sub_1CFCA0068();
        MEMORY[0x1D3872880](v10);
        result = sub_1CFCA0378();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v8 = sub_1CFC9D288();
        sub_1CFBCCDA4(v9);
        if (v8)
        {
          while (1)
          {
            sub_1CFC9D2D8();
          }
        }

        result = sub_1CFC9D2C8();
        if (++v7 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void *sub_1CFBCA900(void *a1, int64_t a2, char a3)
{
  result = sub_1CFBC9918(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1CFBCA920(char *a1, int64_t a2, char a3)
{
  result = sub_1CFBC9A60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1CFBCA940(void *a1, int64_t a2, char a3)
{
  result = sub_1CFBA5CC0(a1, a2, a3, *v3, &qword_1EC4ED620, &qword_1CFCA2500, MEMORY[0x1E6969C28]);
  *v3 = result;
  return result;
}

void *sub_1CFBCA984(void *a1, int64_t a2, char a3)
{
  result = sub_1CFBA5CC0(a1, a2, a3, *v3, &qword_1EC4ED578, &qword_1CFCA4B00, type metadata accessor for VoicemailsSectionController.Item);
  *v3 = result;
  return result;
}

char *sub_1CFBCA9C8(char *a1, int64_t a2, char a3)
{
  result = sub_1CFBC9B80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1CFBCA9E8(void *a1, int64_t a2, char a3)
{
  result = sub_1CFBC9C84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1CFBCAA08(void *a1, int64_t a2, char a3)
{
  result = sub_1CFBA5CC0(a1, a2, a3, *v3, &qword_1EC4ED508, &qword_1CFCA2428, MEMORY[0x1E6995D28]);
  *v3 = result;
  return result;
}

char *sub_1CFBCAA4C(char *a1, int64_t a2, char a3)
{
  result = sub_1CFBC9E74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1CFBCAA6C(char *a1, int64_t a2, char a3)
{
  result = sub_1CFBC9F80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1CFBCAA8C(char *a1, int64_t a2, char a3)
{
  result = sub_1CFBCA084(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1CFBCAAAC(void *a1, int64_t a2, char a3)
{
  result = sub_1CFBA5CC0(a1, a2, a3, *v3, &unk_1EC4ED580, &qword_1CFCA2480, MEMORY[0x1E697B5B0]);
  *v3 = result;
  return result;
}

char *sub_1CFBCAAF0(char *a1, int64_t a2, char a3)
{
  result = sub_1CFBCA188(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1CFBCAB10(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  sub_1CFCA0338();
  sub_1CFCA0068();
  v9 = *(a1 + 40);
  MEMORY[0x1D3872880](v9);
  result = sub_1CFCA0378();
  v11 = 1 << *a4;
  v12 = __OFSUB__(v11, 1);
  v13 = v11 - 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *&v26 = a4;
    *(&v26 + 1) = a5;
    *&v27 = v13 & result;
    *(&v27 + 1) = sub_1CFC9D288();
    *&v28 = v14;
    *(&v28 + 1) = v15;
    v29 = 0;
    v16 = sub_1CFC9D2B8();
    if ((v17 & 1) == 0)
    {
      do
      {
        sub_1CFBCCD6C(a2 + 48 * v16, v20);
        if (MEMORY[0x1D3872590](v20, a1))
        {
          v19 = v21;
          sub_1CFBCCDA4(v20);
          if (v19 == v9)
          {
            return v16;
          }
        }

        else
        {
          sub_1CFBCCDA4(v20);
        }

        sub_1CFC9D2D8();
        v22 = v26;
        v23 = v27;
        v24 = v28;
        v25 = v29;
        v16 = sub_1CFC9D2B8();
      }

      while ((v18 & 1) == 0);
    }

    return v16;
  }

  return result;
}

unint64_t sub_1CFBCAC68(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_1CFBB4684(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_1CFBCAD3C(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_1CFBCAD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = sub_1CFC9D9F8();
  v11 = *(result - 8);
  v12 = *(v11 + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = result;
  v25 = a4;
  v15 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v16 = v15 + v12 * a1;
  result = swift_arrayDestroy();
  v17 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v12 * a3;
  if (v17)
  {
    v19 = *(v9 + 16);
    if (!__OFSUB__(v19, a2))
    {
      result = v16 + v18;
      v20 = v15 + v12 * a2;
      if (v16 + v18 < v20 || result >= v20 + (v19 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v20)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v22 = *(v9 + 16);
      v23 = __OFADD__(v22, v17);
      v24 = v22 + v17;
      if (!v23)
      {
        *(v9 + 16) = v24;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_1CFBC2FB0(v25, &qword_1EC4ED4F8, &qword_1CFCA2418);
  }

  if (v18 < 1)
  {
    return sub_1CFBC2FB0(v25, &qword_1EC4ED4F8, &qword_1CFCA2418);
  }

  result = (*(v11 + 16))(v16, v25, v14);
  if (v12 >= v18)
  {
    return sub_1CFBC2FB0(v25, &qword_1EC4ED4F8, &qword_1CFCA2418);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1CFBCAED8(uint64_t result, char a2, uint64_t *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  for (i = result + 32; ; i += 88)
  {
    sub_1CFBA29FC(i, v31, &qword_1EC4ED618, &qword_1CFCA24F8);
    v28 = v31[0];
    v29 = v31[1];
    v30 = v31[2];
    sub_1CFBAD070(v32, v27);
    v10 = *a3;
    v11 = sub_1CFC94ADC(&v28);
    v13 = *(v10 + 16);
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      break;
    }

    v17 = v12;
    if (*(v10 + 24) < v16)
    {
      sub_1CFC7BFA4(v16, a2 & 1);
      v11 = sub_1CFC94ADC(&v28);
      if ((v17 & 1) != (v18 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      if (v17)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (a2)
    {
      goto LABEL_10;
    }

    v25 = v11;
    sub_1CFC7B8BC();
    v11 = v25;
    if (v17)
    {
LABEL_3:
      v7 = *a3;
      v8 = 40 * v11;
      sub_1CFBB94B0(*(*a3 + 56) + 40 * v11, v26);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      sub_1CFBCCDA4(&v28);
      v9 = *(v7 + 56);
      __swift_destroy_boxed_opaque_existential_1Tm((v9 + v8));
      result = sub_1CFBAD070(v26, v9 + v8);
      goto LABEL_4;
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = (v19[6] + 48 * v11);
    v21 = v28;
    v22 = v30;
    v20[1] = v29;
    v20[2] = v22;
    *v20 = v21;
    result = sub_1CFBAD070(v27, v19[7] + 40 * v11);
    v23 = v19[2];
    v15 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v15)
    {
      goto LABEL_17;
    }

    v19[2] = v24;
LABEL_4:
    a2 = 1;
    if (!--v3)
    {
      return result;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1CFCA0308();
  __break(1u);
  return result;
}

void sub_1CFBCB0D0()
{
  *(v0 + OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_viewAppeared) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_isVisible) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_editButtonItems) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_items) = v1;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_hasAlreadyLoadedCollection) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_shouldUpdateOnAppear) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_configuredSectionHashes) = MEMORY[0x1E69E7CD0];
  v2 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_finishedSectionReload;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED3D8, &qword_1CFCA22D0);
  swift_allocObject();
  *(v0 + v2) = sub_1CFC9DCD8();
  *(v0 + OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_diffableDataSource) = 0;
  v3 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_loadedDebounce;
  sub_1CFBA2D80(0, &qword_1EE04FF80, 0x1E69E9610);
  sub_1CFC9FC28();
  sub_1CFC9D508();
  swift_allocObject();
  *(v0 + v3) = sub_1CFC9D4E8();
  sub_1CFCA01D8();
  __break(1u);
}

uint64_t sub_1CFBCB248(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1CFC9C128();
  v4 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
  result = swift_beginAccess();
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *&v2[v4];
  if (v3 >= *(v6 + 16))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = *(v6 + 16 * v3 + 40);
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 32);
  swift_unknownObjectRetain();
  LOBYTE(v7) = v9(ObjectType, v7);
  swift_unknownObjectRelease();
  if ((v7 & 1) == 0)
  {
    v18 = 0;
    return v18 & 1;
  }

  if (![v2 isEditing])
  {
    v18 = 1;
    return v18 & 1;
  }

  v10 = sub_1CFC9C128();
  v11 = sub_1CFC9C0F8();
  v12 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_items;
  result = swift_beginAccess();
  if ((v10 & 0x8000000000000000) != 0)
  {
    goto LABEL_15;
  }

  v13 = *&v2[v12];
  if (v10 >= *(v13 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = *(v13 + 8 * v10 + 32);
  if (v11 < *(v14 + 16))
  {
    sub_1CFBB94B0(v14 + 40 * v11 + 32, v20);
    v15 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_editButtonItems;
    v16 = swift_beginAccess();
    v17 = *&v2[v15];
    MEMORY[0x1EEE9AC00](v16);
    v19[2] = v20;

    v18 = sub_1CFBB3B98(sub_1CFBCCCF8, v19, v17);

    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    return v18 & 1;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_1CFBCB450(char a1)
{
  sub_1CFC9C138();
  v3 = *(v1 + 16);
  v4 = sub_1CFC9C0C8();
  [v3 deselectItemAtIndexPath:v4 animated:a1 & 1];
}

unint64_t sub_1CFBCB4F4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED548, &qword_1CFCA2450);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1CFBCB5C4(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1CFBA74A0(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1CFBCB4F4(v6, a2, 0);
  *v2 = v4;
  return result;
}

void sub_1CFBCB684()
{
  v1 = sub_1CFC9F638();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CFC9F658();
  v5 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFBA2D80(0, &qword_1EE04FF80, 0x1E69E9610);
  v8 = sub_1CFC9FC28();
  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  aBlock[4] = sub_1CFBCCC38;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CFC56F38;
  aBlock[3] = &block_descriptor_51;
  v10 = _Block_copy(aBlock);
  v11 = v0;

  sub_1CFC9F648();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1CFBA5194(&qword_1EE04D130, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED5B0, &unk_1CFCA24A0);
  sub_1CFBCCC94();
  sub_1CFC9FF58();
  MEMORY[0x1D3872170](0, v7, v4, v10);
  _Block_release(v10);

  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v13);
  if ([v11 isEditing])
  {
    sub_1CFC90748();
  }
}

double sub_1CFBCB968(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
  swift_beginAccess();
  v4 = *(v1 + v3);

  v5 = sub_1CFC9C128();
  if ((v5 & 0x8000000000000000) != 0 || v5 >= *(v4 + 16))
  {
  }

  else
  {
    v6 = *(v4 + 16 * v5 + 40);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    (*(v6 + 200))(a1, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  return result;
}

id sub_1CFBCBA2C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1CFC9C138();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (!v9)
  {
    return 0;
  }

  (*(v5 + 16))(v8, a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4, v6);
  v10 = MEMORY[0x1E69E7CC0];
  v42 = MEMORY[0x1E69E7CC0];
  if (v9 != 1)
  {
LABEL_12:
    v29 = sub_1CFC90E04(a1);
    if (v29)
    {
      v30 = v29;
      MEMORY[0x1D3871DC0]();
      if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1CFC9F8C8();
      }

      sub_1CFC9F8F8();

      v10 = v42;
    }

    if (v10 >> 62)
    {
      if (sub_1CFC9FFD8())
      {
        goto LABEL_18;
      }
    }

    else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_18:
      v31 = swift_allocObject();
      *(v31 + 16) = v10;
      v32 = objc_opt_self();
      v40 = sub_1CFBCCC30;
      v41 = v31;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1CFBC7CC8;
      v39 = &block_descriptor_45;
      v33 = _Block_copy(aBlock);

      v34 = [v32 configurationWithIdentifier:0 previewProvider:0 actionProvider:v33];

      _Block_release(v33);
      (*(v5 + 8))(v8, v4);
      return v34;
    }

    (*(v5 + 8))(v8, v4);

    return 0;
  }

  v11 = sub_1CFC9C128();
  v12 = sub_1CFC9C118();
  v13 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_items;
  result = swift_beginAccess();
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v15 = *(v2 + v13);
  if (v11 >= *(v15 + 16))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v16 = *(v15 + 8 * v11 + 32);
  if (v12 >= *(v16 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_1CFBB94B0(v16 + 40 * v12 + 32, aBlock);
  v17 = sub_1CFC9C128();
  v18 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
  result = swift_beginAccess();
  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v19 = *(v2 + v18);
  if (v17 < *(v19 + 16))
  {
    v36 = *(v19 + 16 * v17 + 40);
    v20 = v5;
    v21 = v4;
    ObjectType = swift_getObjectType();
    v37 = v2;
    v23 = v8;
    v24 = v39;
    v25 = __swift_project_boxed_opaque_existential_1(aBlock, v39);
    swift_unknownObjectRetain();
    v26 = ObjectType;
    v4 = v21;
    v5 = v20;
    v27 = v24;
    v8 = v23;
    v28 = SectionController.anyContextMenu<A>(for:at:)(v25, v23, v26, v27, v36);
    swift_unknownObjectRelease();
    if (v28)
    {
      v10 = v28;
    }

    v42 = v10;
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    goto LABEL_12;
  }

LABEL_27:
  __break(1u);
  return result;
}

id sub_1CFBCBE38(void *a1, __n128 a2)
{
  v4 = sub_1CFC9C0C8();
  v5 = [a1 cellForItemAtIndexPath_];

  if (v5)
  {
    v6 = v5;
    v7 = [v6 window];
    if (v7)
    {

      v8 = sub_1CFC9C0C8();
      v9 = [v2 collectionView:a1 dragPreviewParametersForItemAtIndexPath:v8];

      if (v9)
      {
        v10 = [objc_allocWithZone(MEMORY[0x1E69DD070]) initWithView:v6 parameters:v9];

        return v10;
      }
    }
  }

  return 0;
}

void sub_1CFBCBF3C(void *a1)
{
  if (a1)
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13[4] = sub_1CFBCCC28;
    v13[5] = v3;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_1CFC56F38;
    v13[3] = &block_descriptor;
    v4 = _Block_copy(v13);
    swift_unknownObjectRetain();

    [a1 addCompletion_];
    _Block_release(v4);
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
    swift_beginAccess();
    v6 = *(v1 + v5);
    v7 = *(v6 + 16);

    if (v7)
    {
      v8 = 0;
      v9 = (v6 + 40);
      while (v8 < *(v6 + 16))
      {
        ++v8;
        v10 = *v9;
        ObjectType = swift_getObjectType();
        v12 = *(v10 + 192);
        swift_unknownObjectRetain();
        v12(ObjectType, v10);
        swift_unknownObjectRelease();
        v9 += 2;
        if (v7 == v8)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:
    }
  }
}

uint64_t sub_1CFBCC0E8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1CFC9C128();
  v4 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
  result = swift_beginAccess();
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v6 = *(v1 + v4);
  if (v3 >= *(v6 + 16))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *(v6 + 16 * v3 + 32);
  swift_getObjectType();
  v8 = swift_conformsToProtocol2();
  if (v8)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v10 = v8;
  swift_unknownObjectRetain();
  v11 = sub_1CFC9C128();
  v12 = sub_1CFC9C0F8();
  v13 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_items;
  result = swift_beginAccess();
  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_17;
  }

  v14 = *(v2 + v13);
  if (v11 >= *(v14 + 16))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = *(v14 + 8 * v11 + 32);
  if (v12 >= *(v15 + 16))
  {
LABEL_20:
    __break(1u);
    return result;
  }

  sub_1CFBB94B0(v15 + 40 * v12 + 32, v21);
  ObjectType = swift_getObjectType();
  v17 = v22;
  v18 = v23;
  v19 = __swift_project_boxed_opaque_existential_1(v21, v22);
  v20 = SectionDragDelegate.dragItems<A>(for:)(v19, ObjectType, v17, v10, v18);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  return v20;
}

id sub_1CFBCC278(void *a1)
{
  v2 = v1;
  v4 = sub_1CFC9C138();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v11 = &v23 - v10;
  result = [a1 destinationIndexPath];
  if (!result)
  {
    return result;
  }

  v13 = result;
  sub_1CFC9C0D8();

  (*(v5 + 32))(v11, v7, v4);
  v14 = sub_1CFC9C128();
  v15 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
  result = swift_beginAccess();
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v16 = *(v2 + v15);
  if (v14 >= *(v16 + 16))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v17 = *(v16 + 16 * v14 + 32);
  swift_getObjectType();
  v18 = swift_conformsToProtocol2();
  if (v18)
  {
    v19 = v17 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (!v19)
  {
    v20 = v18;
    ObjectType = swift_getObjectType();
    v22 = *(v20 + 16);
    swift_unknownObjectRetain();
    v22(a1, ObjectType, v20);
    swift_unknownObjectRelease();
  }

  return (*(v5 + 8))(v11, v4);
}

id sub_1CFBCC478(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED408, &qword_1CFCA22E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_1CFC9C138();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFBA29FC(a2, v8, &unk_1EC4ED408, &qword_1CFCA22E0);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    (*(v10 + 32))(v12, v8, v9);
    v13 = sub_1CFC9C128();
    v14 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
    result = swift_beginAccess();
    if ((v13 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v16 = *(v3 + v14);
      if (v13 < *(v16 + 16))
      {
        v17 = *(v16 + 16 * v13 + 32);
        swift_getObjectType();
        v18 = swift_conformsToProtocol2();
        if (v18)
        {
          v19 = v17 == 0;
        }

        else
        {
          v19 = 1;
        }

        if (!v19)
        {
          v20 = v18;
          ObjectType = swift_getObjectType();
          v22 = *(v20 + 24);
          swift_unknownObjectRetain();
          v23 = v22(a1, v12, ObjectType, v20);
          swift_unknownObjectRelease();
          (*(v10 + 8))(v12, v9);
          return v23;
        }

        (*(v10 + 8))(v12, v9);
        return [objc_allocWithZone(MEMORY[0x1E69DC838]) initWithDropOperation_];
      }
    }

    __break(1u);
    return result;
  }

  sub_1CFBC2FB0(v8, &unk_1EC4ED408, &qword_1CFCA22E0);
  return [objc_allocWithZone(MEMORY[0x1E69DC838]) initWithDropOperation_];
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

uint64_t sub_1CFBCC760(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1CFBCC7A8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_1CFBCC808()
{
  result = qword_1EE04D990;
  if (!qword_1EE04D990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D990);
  }

  return result;
}

unint64_t sub_1CFBCC888(unint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = sub_1CFBCCAB0(v8, a2, 0, a4);
  *v4 = v6;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

_OWORD *sub_1CFBCC9AC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1CFBCC9BC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED550, &qword_1CFCA2458);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v12 = a4;
    v12[1] = a5;
    result = swift_unknownObjectRetain();
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_1CFBCCAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1CFBCCC94()
{
  result = qword_1EE04D110;
  if (!qword_1EE04D110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4ED5B0, &unk_1CFCA24A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D110);
  }

  return result;
}

unint64_t sub_1CFBCCD18()
{
  result = qword_1EE04D998;
  if (!qword_1EE04D998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D998);
  }

  return result;
}

void sub_1CFBCCDD4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED5E0, &qword_1CFCA24C8) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1CFBC3A34(v3, v4, v5, v0 + v2, v6);
}

uint64_t sub_1CFBCCE88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1CFBCCF24(uint64_t a1)
{
  v2 = type metadata accessor for FavoriteSectionController.Item(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CFC9C608();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  sub_1CFBAAD9C(a1, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1CFBCE130(v4);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    v13 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
    v14 = [objc_allocWithZone(MEMORY[0x1E69DC990]) initWithItemProvider_];

    (*(v6 + 16))(v8, v11, v5);
    [v14 setLocalObject_];
    swift_unknownObjectRelease();

    v15 = sub_1CFC9C5D8();
    v16 = [v15 entryIdentifier];

    v17 = sub_1CFC9F768();
    v19 = v18;

    sub_1CFC48AB8(v17, v19);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1CFCA2540;
    *(v20 + 32) = v14;
    (*(v6 + 8))(v11, v5);
    return v20;
  }
}

void sub_1CFBCD1DC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED6C0, &unk_1CFCA25F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v47 - v4;
  v6 = sub_1CFC9C608();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CFC9C138();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  *&v17 = MEMORY[0x1EEE9AC00](v16).n128_u64[0];
  v19 = &v47 - v18;
  v20 = [a1 destinationIndexPath];
  if (v20)
  {
    v51 = v7;
    v21 = v20;
    sub_1CFC9C0D8();

    (*(v10 + 32))(v19, v15, v9);
    v22 = [a1 items];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED6C8, &qword_1CFCA2600);
    v23 = sub_1CFC9F8A8();

    if (v23 >> 62)
    {
      if (sub_1CFC9FFD8())
      {
        goto LABEL_4;
      }
    }

    else if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if ((v23 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x1D3872640](0, v23);
      }

      else
      {
        if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v24 = *(v23 + 32);
        swift_unknownObjectRetain();
      }

      v25 = [v24 dragItem];
      swift_unknownObjectRelease();
      if (![v25 localObject])
      {
        (*(v10 + 8))(v19, v9);

        return;
      }

      sub_1CFC9FF18();
      swift_unknownObjectRelease();
      sub_1CFBCC9AC(v53, v54);
      sub_1CFBB4598(v54, v53);
      if ((swift_dynamicCast() & 1) == 0)
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v54);
        (*(v10 + 8))(v19, v9);
        (*(v51 + 56))(v5, 1, 1, v6);
        sub_1CFBCE21C(v5);
        return;
      }

      v50 = v25;
      v47 = v12;
      v26 = v51;
      (*(v51 + 56))(v5, 0, 1, v6);
      v27 = v6;
      v28 = v52;
      (*(v26 + 32))(v52, v5, v27);
      v49 = v1;
      v29 = sub_1CFC9C718();
      v48 = sub_1CFBCD7D8(v28, v29);
      v31 = v30;

      if (v31)
      {

        (*(v26 + 8))(v28, v27);
      }

      else
      {
        v32 = v27;
        if ((*(v49 + 96) & 1) == 0 && (*(v49 + 40) & 1) == 0)
        {
          v37 = sub_1CFC9C118();
          sub_1CFC832C4(v37);
          if ((v39 & 1) == 0 && v37 == v38)
          {
            v40 = sub_1CFC9C128();
            v41 = v47;
            MEMORY[0x1D386E640](v48, v40);
            v42 = sub_1CFC9C0C8();
            v43 = *(v10 + 8);
            v43(v41, v9);
            v44 = a1;
            v45 = v50;
            v46 = [v44 dropItem:v50 toItemAtIndexPath:v42];
            swift_unknownObjectRelease();

            (*(v51 + 8))(v52, v32);
            __swift_destroy_boxed_opaque_existential_1Tm(v54);
            v43(v19, v9);
            return;
          }
        }

        sub_1CFC9C0F8();
        sub_1CFC9C6C8();
        v33 = sub_1CFC9C0C8();
        v34 = a1;
        v35 = v50;
        v36 = [v34 dropItem:v50 toItemAtIndexPath:v33];
        swift_unknownObjectRelease();

        sub_1CFBCD8F8();
        (*(v51 + 8))(v52, v32);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      goto LABEL_22;
    }

LABEL_22:
    (*(v10 + 8))(v19, v9);
  }
}

uint64_t sub_1CFBCD7D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(sub_1CFC9C608() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_1CFBCE284(&unk_1EC4ED6D0, MEMORY[0x1E6993700], MEMORY[0x1E6993710]);
  v7 = 0;
  while ((sub_1CFC9F6F8() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

void sub_1CFBCD8F8()
{
  v1 = (*(v0 + 104) + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__draggingItemEntryId);
  if (v1[1])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFBCE284(&qword_1EE04F8D0, type metadata accessor for FavoriteCellConfig, &unk_1CFCA69F8);

    sub_1CFC9C148();
  }

  else
  {
    *v1 = 0;
    v1[1] = 0;
  }
}

void sub_1CFBCDA94()
{
  v1 = (*(v0 + 104) + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__draggingItemEntryId);
  if (v1[1])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFBCE284(&qword_1EE04F8D0, type metadata accessor for FavoriteCellConfig, &unk_1CFCA69F8);

    sub_1CFC9C148();
  }

  else
  {
    *v1 = 0;
    v1[1] = 0;
  }
}

id sub_1CFBCDBC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SimultaneousGestureRecognizerDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CFBCDBFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFBCE284(&qword_1EE04F8D0, type metadata accessor for FavoriteCellConfig, &unk_1CFCA69F8);
  sub_1CFC9C158();

  v4 = *(v3 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__draggingItemEntryId + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__draggingItemEntryId);
  a2[1] = v4;
}

double sub_1CFBCDCB4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1CFC48AB8(v1, v2);
}

id sub_1CFBCDD18()
{
  v1 = v0;
  v2 = sub_1CFC9CE08();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v41 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41 - v13;
  v15 = *(v1 + OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_tileWidth);
  v16 = objc_opt_self();
  v17 = [v16 currentDevice];
  v18 = [v17 userInterfaceIdiom];

  if (v18 || *(v1 + OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_itemsPerRow) > 3)
  {
    sub_1CFC9CDF8();
  }

  else
  {
    sub_1CFC9CDB8();
  }

  sub_1CFC9CDD8();
  v20 = v19;
  v21 = *(v3 + 8);
  v21(v14, v2);
  v22 = [v16 currentDevice];
  v23 = [v22 userInterfaceIdiom];

  if (v23 || *(v1 + OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_itemsPerRow) > 3)
  {
    sub_1CFC9CDF8();
  }

  else
  {
    sub_1CFC9CDB8();
  }

  sub_1CFC9CDC8();
  v25 = v24;
  v21(v11, v2);
  v26 = [v16 currentDevice];
  v27 = [v26 userInterfaceIdiom];

  if (v27 || *(v1 + OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_itemsPerRow) > 3)
  {
    sub_1CFC9CDF8();
  }

  else
  {
    sub_1CFC9CDB8();
  }

  sub_1CFC9CDE8();
  v29 = v28;
  v21(v8, v2);
  v30 = [objc_allocWithZone(MEMORY[0x1E69DC9A0]) init];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v31 clearColor];
  [v32 setBackgroundColor_];

  v34 = [v16 currentDevice];
  v35 = [v34 userInterfaceIdiom];

  if (v35 || *(v1 + OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_itemsPerRow) > 3)
  {
    sub_1CFC9CDF8();
  }

  else
  {
    sub_1CFC9CDB8();
  }

  v36 = v15 - (v20 + v20);
  sub_1CFC9CDD8();
  v38 = v37;
  v21(v5, v2);
  v39 = [objc_opt_self() bezierPathWithRoundedRect:v38 cornerRadius:{0.0, v36, v36 * v25, v36 * v29}];
  [v32 setShadowPath_];

  return v32;
}

uint64_t sub_1CFBCE130(uint64_t a1)
{
  v2 = type metadata accessor for FavoriteSectionController.Item(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1CFBCE18C(__n128 a1)
{
  if (*(v1 + 96) & 1) != 0 || (*(v1 + 40) & 1) != 0 || (v5 = sub_1CFC9C118(), sub_1CFC832C4(v5), (v7) || v5 != v6)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  v3 = objc_allocWithZone(MEMORY[0x1E69DC838]);

  return [v3 initWithDropOperation:3 intent:v2];
}

uint64_t sub_1CFBCE21C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED6C0, &unk_1CFCA25F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFBCE284(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1CFBCE2E8(void *a1, void *a2, char *a3, void *a4)
{
  v5 = v4;
  v46 = a4;
  v47 = a2;
  v44 = a3;
  v7 = sub_1CFC9D938();
  v45 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CFC9C918();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v41 - v15;
  v17 = sub_1CFC9C9A8();
  result = 0;
  if (v17)
  {
    sub_1CFC9C938();
    (*(v11 + 104))(v13, *MEMORY[0x1E6993758], v10);
    sub_1CFBD4988(&unk_1EC4ED750, MEMORY[0x1E6993760], MEMORY[0x1E6993768]);
    v19 = sub_1CFC9F6F8();
    v42 = *(v11 + 8);
    v43 = v11 + 8;
    v42(v13, v10);
    if (v19)
    {
      v20 = v42;
      sub_1CFC9C6A8();
      sub_1CFC9C698();
      v21 = sub_1CFC9D918();
      v22 = sub_1CFC9FAB8();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_1CFB9F000, v21, v22, "CallReportingViewModel: not a valid spam flow", v23, 2u);
        MEMORY[0x1D3873280](v23, -1, -1);
      }

      (*(v45 + 8))(v9, v7);
      v20(v16, v10);
      return 0;
    }

    else
    {
      v45 = swift_allocObject();
      v41[1] = v5;
      swift_unknownObjectWeakInit();
      v24 = swift_allocObject();
      swift_unknownObjectWeakInit();
      (*(v11 + 16))(v13, v16, v10);
      v25 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v26 = (v12 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
      v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
      v44 = v16;
      v28 = swift_allocObject();
      *(v28 + 16) = v45;
      *(v28 + 24) = v24;
      (*(v11 + 32))(v28 + v25, v13, v10);
      *(v28 + v26) = a1;
      v29 = v46;
      v30 = v47;
      *(v28 + v27) = v47;
      *(v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8)) = v29;
      v52 = sub_1CFBD2DF8;
      v53 = v28;
      aBlock = MEMORY[0x1E69E9820];
      v49 = 1107296256;
      v50 = sub_1CFC1A29C;
      v51 = &block_descriptor_0;
      v31 = _Block_copy(&aBlock);
      v32 = objc_opt_self();

      v33 = a1;
      v34 = v30;
      v35 = v29;
      v36 = [v32 contextualActionWithStyle:0 title:0 handler:v31];
      _Block_release(v31);

      v37 = [objc_opt_self() orangeColor];
      [v36 setBackgroundColor_];

      v38 = sub_1CFC9C958();
      [v36 setImage_];

      v52 = sub_1CFBD0268;
      v53 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v49 = 1107296256;
      v50 = sub_1CFC1A370;
      v51 = &block_descriptor_15;
      v39 = _Block_copy(&aBlock);
      v40 = v36;
      [v40 setAccessibilityIdentifierBlock_];
      _Block_release(v39);

      v42(v44, v10);
      return v40;
    }
  }

  return result;
}

void sub_1CFBCE894(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, uint64_t a10)
{
  v63 = a8;
  v64 = a4;
  v65 = a3;
  v60 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v66 = &v57 - v12;
  v13 = sub_1CFC9D938();
  v61 = *(v13 - 8);
  v62 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v59 = &v57 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v57 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v57 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v57 - v25;
  v27 = sub_1CFC9C918();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v57 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v32 = Strong;
    swift_beginAccess();
    v33 = swift_unknownObjectWeakLoadStrong();
    if (v33)
    {
      v34 = v33;
      v58 = a9;
      (*(v28 + 16))(v30, a7, v27);
      v35 = (*(v28 + 88))(v30, v27);
      if (v35 == *MEMORY[0x1E6993738])
      {
        sub_1CFC9C6A8();
        sub_1CFC9C698();
        v36 = sub_1CFC9D918();
        v37 = sub_1CFC9FAF8();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&dword_1CFB9F000, v36, v37, "CallReportingViewModel: we are showing the native spam reporting and blocking for facetime", v38, 2u);
          MEMORY[0x1D3873280](v38, -1, -1);
        }

        (*(v61 + 8))(v26, v62);
        sub_1CFBCF050(v63, v58, v34);
      }

      else if (v35 == *MEMORY[0x1E6993728])
      {
        sub_1CFC9C6A8();
        sub_1CFC9C698();
        v39 = sub_1CFC9D918();
        v40 = sub_1CFC9FAF8();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&dword_1CFB9F000, v39, v40, "CallReportingViewModel: we are showing the carrier reporting and blocking option", v41, 2u);
          MEMORY[0x1D3873280](v41, -1, -1);
        }

        (*(v61 + 8))(v23, v62);
        sub_1CFBCF4D0(v63, v58, v34, v60);
      }

      else if (v35 == *MEMORY[0x1E6993740])
      {
        sub_1CFC9C6A8();
        sub_1CFC9C698();
        v42 = sub_1CFC9D918();
        v43 = sub_1CFC9FAF8();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_1CFB9F000, v42, v43, "CallReportingViewModel: we are showing the third party reporting and blocking option", v44, 2u);
          MEMORY[0x1D3873280](v44, -1, -1);
        }

        (*(v61 + 8))(v20, v62);
        sub_1CFBD3020(v63, v34, a10);
      }

      else if (v35 == *MEMORY[0x1E6993730])
      {
        sub_1CFBCFB68(v63, v58, v34);
      }

      else if (v35 == *MEMORY[0x1E6993748])
      {
        sub_1CFBCFE98(v63, v58, v34);
      }

      else if (v35 == *MEMORY[0x1E6993750])
      {
        sub_1CFBD39CC(v63, v34);
      }

      else
      {
        v45 = *MEMORY[0x1E6993758];
        v46 = v35;
        sub_1CFC9C6A8();
        if (v46 == v45)
        {
          v47 = v59;
          sub_1CFC9C698();
          v48 = sub_1CFC9D918();
          v49 = sub_1CFC9FAF8();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            *v50 = 0;
            _os_log_impl(&dword_1CFB9F000, v48, v49, "CallReportingViewModel: we are showing none flow", v50, 2u);
            MEMORY[0x1D3873280](v50, -1, -1);
          }

          (*(v61 + 8))(v47, v62);
        }

        else
        {
          sub_1CFC9C698();
          v51 = sub_1CFC9D918();
          v52 = sub_1CFC9FAF8();
          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            *v53 = 0;
            _os_log_impl(&dword_1CFB9F000, v51, v52, "CallReportingViewModel: we are showing unknown/unsupported flow", v53, 2u);
            MEMORY[0x1D3873280](v53, -1, -1);
          }

          (*(v61 + 8))(v15, v62);
          (*(v28 + 8))(v30, v27);
        }
      }

      v65(1);
      if (qword_1EC4ECFF8 != -1)
      {
        swift_once();
      }

      v54 = sub_1CFC9F998();
      v55 = v66;
      (*(*(v54 - 8) + 56))(v66, 1, 1, v54);
      v56 = swift_allocObject();
      *(v56 + 16) = 0;
      *(v56 + 24) = 0;
      sub_1CFBDC030(0, 0, v55, &unk_1CFCA2660, v56);
    }
  }
}

void sub_1CFBCF050(void *a1, uint64_t a2, void *a3)
{
  sub_1CFC9C9C8();
  v4 = sub_1CFC9F728();

  v25 = [objc_opt_self() alertControllerWithTitle:v4 message:0 preferredStyle:0];

  sub_1CFC9C9D8();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v6 = sub_1CFC9F728();

  v30 = sub_1CFBD3FBC;
  v31 = v5;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1CFBDBE60;
  v29 = &block_descriptor_23;
  v7 = _Block_copy(&aBlock);

  v8 = objc_opt_self();
  v24 = [v8 actionWithTitle:v6 style:1 handler:{v7, &v28}];
  _Block_release(v7);

  v9 = sub_1CFC9FC78();
  sub_1CFC9C8E8();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v9;
  v11[4] = a3;

  v12 = a3;
  v13 = sub_1CFC9F728();

  v30 = sub_1CFBD3FC4;
  v31 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1CFBDBE60;
  v29 = &block_descriptor_30;
  v14 = _Block_copy(&aBlock);

  v15 = [v8 actionWithTitle:v13 style:2 handler:v14];
  _Block_release(v14);

  sub_1CFC9C8F8();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = v9;
  v17[4] = a1;
  v17[5] = v12;
  v18 = v12;

  v19 = a1;
  v20 = sub_1CFC9F728();

  v30 = sub_1CFBD3FD0;
  v31 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1CFBDBE60;
  v29 = &block_descriptor_37;
  v21 = _Block_copy(&aBlock);

  v22 = [v8 actionWithTitle:v20 style:2 handler:v21];
  _Block_release(v21);

  [v25 addAction_];
  [v25 addAction_];
  [v25 addAction_];
  [v18 presentViewController:v25 animated:1 completion:0];
}

void sub_1CFBCF4D0(void *a1, void *a2, void *a3, uint64_t a4)
{
  v43 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v46 = &v43 - v8;
  sub_1CFC9C8D8();
  sub_1CFC9C9F8();

  v9 = sub_1CFC9F728();

  v10 = [objc_opt_self() alertControllerWithTitle:v9 message:0 preferredStyle:0];
  v44 = v10;

  sub_1CFC9C8E8();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a1;
  v12[4] = v11;
  v12[5] = a3;
  v45 = a2;
  v13 = a1;

  v14 = a3;
  v15 = sub_1CFC9F728();

  v51 = sub_1CFBD40A4;
  v52 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v48 = 1107296256;
  v49 = sub_1CFBDBE60;
  v50 = &block_descriptor_53;
  v16 = _Block_copy(&aBlock);

  v17 = objc_opt_self();
  v18 = [v17 actionWithTitle:v15 style:2 handler:v16];
  _Block_release(v16);

  [v10 addAction_];
  sub_1CFC9C8F8();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v21 = v45;
  v20[2] = v45;
  v20[3] = v13;
  v20[4] = v19;
  v20[5] = v14;
  v22 = v21;
  v23 = v13;
  v45 = v14;

  v24 = sub_1CFC9F728();

  v51 = sub_1CFBD4100;
  v52 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v48 = 1107296256;
  v49 = sub_1CFBDBE60;
  v50 = &block_descriptor_60;
  v25 = _Block_copy(&aBlock);

  v26 = [v17 actionWithTitle:v24 style:2 handler:v25];
  _Block_release(v25);

  v27 = v44;
  [v44 addAction_];

  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v29 = [objc_opt_self() bundleForClass_];
  sub_1CFC9BE28();

  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  *(v31 + 24) = v23;
  v32 = v23;

  v33 = sub_1CFC9F728();

  v51 = sub_1CFBD410C;
  v52 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v48 = 1107296256;
  v49 = sub_1CFBDBE60;
  v50 = &block_descriptor_67;
  v34 = _Block_copy(&aBlock);

  v35 = [v17 actionWithTitle:v33 style:1 handler:v34];
  _Block_release(v34);

  [v27 addAction_];
  v36 = v27;
  v37 = [v36 popoverPresentationController];
  if (v37)
  {
    v38 = v37;
    [v37 setPermittedArrowDirections_];
  }

  v39 = [v36 popoverPresentationController];

  if (v39)
  {
    [v39 setSourceView_];
  }

  [v45 presentViewController:v36 animated:1 completion:0];
  if (qword_1EC4ECFF8 != -1)
  {
    swift_once();
  }

  v40 = sub_1CFC9F998();
  v41 = v46;
  (*(*(v40 - 8) + 56))(v46, 1, 1, v40);
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *(v42 + 24) = 0;
  sub_1CFBDC030(0, 0, v41, &unk_1CFCA2678, v42);
}

void sub_1CFBCFB68(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1CFC9C968();
  v4 = sub_1CFC9F728();

  v5 = [objc_opt_self() alertControllerWithTitle:v4 message:0 preferredStyle:0];

  sub_1CFC9C9D8();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v7 = sub_1CFC9F728();

  v22 = sub_1CFBD41F0;
  v23 = v6;
  aBlock = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_1CFBDBE60;
  v21 = &block_descriptor_97;
  v8 = _Block_copy(&aBlock);

  v9 = objc_opt_self();
  v17 = [v9 actionWithTitle:v7 style:1 handler:v8];
  _Block_release(v8);

  v10 = sub_1CFC9FC78();
  sub_1CFC9C978();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = v10;
  v12[4] = a3;

  v13 = a3;
  v14 = sub_1CFC9F728();

  v22 = sub_1CFBD41F8;
  v23 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_1CFBDBE60;
  v21 = &block_descriptor_104;
  v15 = _Block_copy(&aBlock);

  v16 = [v9 actionWithTitle:v14 style:2 handler:v15];
  _Block_release(v15);

  [v5 addAction_];
  [v5 addAction_];
  [v13 presentViewController:v5 animated:1 completion:0];
}

void sub_1CFBCFE98(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1CFC9C968();
  v4 = sub_1CFC9F728();

  v5 = [objc_opt_self() alertControllerWithTitle:v4 message:0 preferredStyle:0];

  sub_1CFC9C9D8();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v7 = sub_1CFC9F728();

  v27 = sub_1CFBD4410;
  v28 = v6;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1CFBDBE60;
  v26 = &block_descriptor_113;
  v8 = _Block_copy(&aBlock);

  v9 = objc_opt_self();
  v22 = [v9 actionWithTitle:v7 style:1 handler:v8];
  _Block_release(v8);

  v10 = sub_1CFC9FC68();
  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  aBlock = MEMORY[0x1E69E7CC0];
  v13 = *(v10 + 16);
  while (1)
  {
    if (v13 == v11)
    {

      sub_1CFC9C9B8();
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v17 = swift_allocObject();
      v17[2] = v16;
      v17[3] = v12;
      v17[4] = a3;

      v18 = a3;
      v19 = sub_1CFC9F728();

      v27 = sub_1CFBD4460;
      v28 = v17;
      aBlock = MEMORY[0x1E69E9820];
      v24 = 1107296256;
      v25 = sub_1CFBDBE60;
      v26 = &block_descriptor_120;
      v20 = _Block_copy(&aBlock);

      v21 = [v9 actionWithTitle:v19 style:2 handler:v20];
      _Block_release(v20);

      [v5 addAction_];
      [v5 addAction_];
      [v18 presentViewController:v5 animated:1 completion:0];

      return;
    }

    if (v11 >= *(v10 + 16))
    {
      break;
    }

    v14 = *(v10 + 8 * v11++ + 32);
    if (v14)
    {
      v15 = v14;
      MEMORY[0x1D3871DC0]();
      if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1CFC9F8C8();
      }

      sub_1CFC9F8F8();
      v12 = aBlock;
    }
  }

  __break(1u);
}

void sub_1CFBD0288(uint64_t a1, uint64_t a2)
{
  v2 = sub_1CFC9D938();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9C6A8();
  sub_1CFC9C698();
  v6 = sub_1CFC9D918();
  v7 = sub_1CFC9FAF8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1CFBB531C(0xD000000000000027, 0x80000001CFCAA600, v13);
    _os_log_impl(&dword_1CFB9F000, v6, v7, "CallReportingViewModel: in %s, user did tap on cancel", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1D3873280](v9, -1, -1);
    MEMORY[0x1D3873280](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_1CFBD0470(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_1CFC9D938();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    sub_1CFC9C6A8();
    sub_1CFC9C698();
    v15 = sub_1CFC9D918();
    v16 = sub_1CFC9FAF8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v27 = a4;
      v18 = v17;
      v19 = swift_slowAlloc();
      v28 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1CFBB531C(0xD000000000000027, 0x80000001CFCAA600, &v28);
      _os_log_impl(&dword_1CFB9F000, v15, v16, "CallReportingViewModel: in %s, user did tap on block all", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1D3873280](v19, -1, -1);
      v20 = v18;
      a4 = v27;
      MEMORY[0x1D3873280](v20, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    MEMORY[0x1D386EF60](a3);
    if (qword_1EC4ECFF8 != -1)
    {
      swift_once();
    }

    v21 = qword_1EC4F2A18;
    v22 = sub_1CFC9F998();
    (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = v21;
    v23[5] = a3;
    v23[6] = a4;
    v24 = v21;

    v25 = a4;
    sub_1CFBDC030(0, 0, v8, &unk_1CFCA26C8, v23);
  }
}

void sub_1CFBD078C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1CFC9D938();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9C6A8();
  sub_1CFC9C698();
  v6 = sub_1CFC9D918();
  v7 = sub_1CFC9FAF8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1CFBB531C(0xD000000000000039, 0x80000001CFCAA550, v13);
    _os_log_impl(&dword_1CFB9F000, v6, v7, "CallReportingViewModel: in %s, user did tap on cancel", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1D3873280](v9, -1, -1);
    MEMORY[0x1D3873280](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_1CFBD0974(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_1CFC9D938();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    sub_1CFC9C6A8();
    sub_1CFC9C698();
    v15 = sub_1CFC9D918();
    v16 = sub_1CFC9FAF8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v27 = a4;
      v18 = v17;
      v19 = swift_slowAlloc();
      v28 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1CFBB531C(0xD000000000000039, 0x80000001CFCAA550, &v28);
      _os_log_impl(&dword_1CFB9F000, v15, v16, "CallReportingViewModel: in %s, user did tap on block", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1D3873280](v19, -1, -1);
      v20 = v18;
      a4 = v27;
      MEMORY[0x1D3873280](v20, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    MEMORY[0x1D386EF60](a3);
    if (qword_1EC4ECFF8 != -1)
    {
      swift_once();
    }

    v21 = qword_1EC4F2A18;
    v22 = sub_1CFC9F998();
    (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = v21;
    v23[5] = a3;
    v23[6] = a4;
    v24 = v21;

    v25 = a4;
    sub_1CFBDC030(0, 0, v8, &unk_1CFCA2670, v23);
  }
}