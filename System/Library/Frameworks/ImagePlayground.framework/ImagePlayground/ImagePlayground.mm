uint64_t sub_1D2A190B0(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_1D2AC67E4();

    return sub_1D2AC65C4();
  }

  else
  {
    sub_1D2AC65F4();
    swift_getWitnessTable();
    sub_1D2AC67A4();
    sub_1D2AC65C4();
    sub_1D2AC6FB4();
    swift_getWitnessTable();
    sub_1D2AC65F4();
    swift_getWitnessTable();
    sub_1D2AC67A4();
    return sub_1D2AC65C4();
  }
}

uint64_t sub_1D2A19214(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_1D2AC67E4();
    sub_1D2AC65C4();
  }

  else
  {
    sub_1D2AC65F4();
    swift_getWitnessTable();
    sub_1D2AC67A4();
    sub_1D2AC65C4();
    sub_1D2AC6FB4();
    swift_getWitnessTable();
    sub_1D2AC65F4();
    swift_getWitnessTable();
    sub_1D2AC67A4();
    sub_1D2AC65C4();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1D2A19414(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_1D2AC65B4();
  }

  else
  {
    sub_1D2AC6574();
  }

  return sub_1D2AC65C4();
}

uint64_t sub_1D2A1947C(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_1D2AC65B4();
    sub_1D2AC65C4();
    sub_1D2A202C4();
  }

  else
  {
    sub_1D2AC6574();
    sub_1D2AC65C4();
    sub_1D2A20500(&qword_1EC7036E8, MEMORY[0x1E697C028], MEMORY[0x1E697C010]);
  }

  return swift_getWitnessTable();
}

uint64_t sub_1D2A19570(uint64_t a1, int a2)
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

uint64_t getEnumTagSinglePayload for Rational(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Rational(uint64_t result, int a2, int a3)
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

void *sub_1D2A195D8@<X0>(void *a1@<X8>)
{
  sub_1D2A21C28();
  result = sub_1D2AC6694();
  *a1 = v3;
  return result;
}

double sub_1D2A1962C@<D0>(_OWORD *a1@<X8>)
{
  sub_1D2A21C7C();
  sub_1D2AC6694();
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

double sub_1D2A196D8@<D0>(uint64_t a1@<X8>)
{
  sub_1D2A21D78();
  sub_1D2AC6694();
  *a1 = v3;
  result = *&v4;
  *(a1 + 8) = v4;
  return result;
}

void *sub_1D2A19784@<X0>(void *a1@<X8>)
{
  sub_1D2A21DCC();
  result = sub_1D2AC6694();
  *a1 = v3;
  return result;
}

uint64_t sub_1D2A19818(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D2A19838(uint64_t *a1)
{
  type metadata accessor for ImageGenerationViewModifier(255);
  sub_1D2AC65C4();
  sub_1D2A2D3A8(&qword_1EC703960, type metadata accessor for ImageGenerationViewModifier, &unk_1D2AC996C);
  return swift_getWitnessTable();
}

uint64_t sub_1D2A198D4(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703900, &qword_1D2AC9708);
  sub_1D2AC65C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703968, &qword_1D2AC9778);
  sub_1D2AC65C4();
  v1 = MEMORY[0x1E6980A18];
  sub_1D2A2DB64(&qword_1EC703908, &qword_1EC703900, &qword_1D2AC9708, MEMORY[0x1E6980A18]);
  swift_getWitnessTable();
  sub_1D2A2DB64(&qword_1EC703970, &qword_1EC703968, &qword_1D2AC9778, v1);
  return swift_getWitnessTable();
}

uint64_t sub_1D2A19A84(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7039C8, &unk_1D2AC9900);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D2A19B40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7039C8, &unk_1D2AC9900);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D2A19C58()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D2A19C98(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D2A19D04(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_1D2A19D24()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D2A19D84()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D2A19DBC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D2A19DF4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7039C8, &unk_1D2AC9900) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = sub_1D2AC5EF4();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1D2A19F38()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703AD8, &qword_1D2AC9CB8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703AD0, &qword_1D2AC9CB0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703AC8, &qword_1D2AC9CA8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703AC0, &qword_1D2AC9CA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703AB8, &qword_1D2AC9C98);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7039F8, &qword_1D2AC9930);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703AB0, &qword_1D2AC9C90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703AE0, &qword_1D2AC9CC8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703AE8, &qword_1D2AC9CD0);
  sub_1D2A2DB64(&qword_1EC703AF0, &qword_1EC703AE0, &qword_1D2AC9CC8, MEMORY[0x1E697FDF8]);
  sub_1D2A2DBAC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1D2A2C660();
  swift_getOpaqueTypeConformance2();
  sub_1D2A2C6E4();
  swift_getOpaqueTypeConformance2();
  sub_1D2A2D2A0();
  swift_getOpaqueTypeConformance2();
  sub_1D2A2D3F0();
  swift_getOpaqueTypeConformance2();
  sub_1D2A2D4F8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D2A1A27C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1D2A1A2B8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1D2A55158(v1);
}

uint64_t sub_1D2A1A304()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D2A1A394()
{
  MEMORY[0x1D38A8510](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D2A1A3CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D2A1A404()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D2A1A508@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1D2A1A5CC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_sceneIdentifier;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1D2A1A620@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_privateDelegate;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_1D2A1A69C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_sourceImageIsSketch;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1D2A1A6F0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_localizedCreateButtonTitle);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

__n128 sub_1D2A1A79C@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_previewAspectRatio;
  swift_beginAccess();
  *a2 = *v3;
  result = *(v3 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1D2A1A7F8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 1);
  sub_1D2A36CC8(&v1);
}

__n128 sub_1D2A1A8BC@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_responsibleAuditToken;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

uint64_t sub_1D2A1A95C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC704510, &qword_1D2ACA260);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[6]);
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

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703BF0, &qword_1D2ACA268);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[7];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_1D2A1AAA8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC704510, &qword_1D2ACA260);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + a4[6]) = a2;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703BF0, &qword_1D2ACA268);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1D2A1AC00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703C40, &qword_1D2ACA388);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2A1ACB0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D2AC6634();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D2A1AD08@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D2AC6654();
  *a1 = result;
  return result;
}

uint64_t sub_1D2A1AD70()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1D2A1AF3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImagePlaygroundConcept.ImageGenerationPromptElementEnum(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D2A1AFA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImagePlaygroundConcept.ImageGenerationPromptElementEnum(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

__n128 sub_1D2A1B018@<Q0>(uint64_t a1@<X8>)
{
  ImagePlaygroundStyle.representationInfo.getter(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v4[4];
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

__n128 sub_1D2A1B064(__n128 *a1, _OWORD *a2)
{
  v3 = a1[3];
  v12 = a1[2];
  v13 = v3;
  v14 = a1[4];
  v4 = a1[1];
  v10 = *a1;
  v11 = v4;
  v5 = a2[4];
  v15[2] = a2[3];
  v15[3] = v5;
  v15[4] = a2[5];
  v6 = a2[2];
  v15[0] = a2[1];
  v15[1] = v6;
  sub_1D2A50254(&v10, &v9);
  sub_1D2A2E61C(v15, &qword_1EC704270, &qword_1D2ACABD0);
  v7 = v13;
  a2[3] = v12;
  a2[4] = v7;
  a2[5] = v14;
  result = v11;
  a2[1] = v10;
  a2[2] = result;
  return result;
}

uint64_t sub_1D2A1B108()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 44, 7);
}

uint64_t sub_1D2A1B148()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D2A1B180()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D2A1B1B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC704310, &qword_1D2ACB258);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 3) & 0xFFFFFFFFFFFFFFFCLL;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 4, v3 | 7);
}

uint64_t sub_1D2A1B298(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC704398, &unk_1D2ACB430);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D2A1B354(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC704398, &unk_1D2ACB430);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D2A1B404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D2AC62D4();
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

    return (v10 + 1);
  }
}

uint64_t sub_1D2A1B4C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D2AC62D4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D2A1B5BC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D2A1B604()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1D2A1B644()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D2A1B67C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D2A1B6BC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1D2A1B700(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1D2A54C50(v1);
}

uint64_t sub_1D2A1B730()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D2A1B768()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D2A1B7AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D2A1B7F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D2A1B83C()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_1D2A47944(*(v0 + 16), v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D2A1B884()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1D2A1B914()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D2A1B94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC704510, &qword_1D2ACA260);
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

uint64_t sub_1D2A1BA14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC704510, &qword_1D2ACA260);
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

uint64_t sub_1D2A1BADC()
{
  v1 = type metadata accessor for GenerativePlaygroundRemoteView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  v6 = type metadata accessor for _AppExtensionHostView.Configuration(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    v7 = sub_1D2AC62D4();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC704510, &qword_1D2ACA260);

  if (*(v5 + *(v1 + 28)))
  {
  }

  if (*(v5 + *(v1 + 32) + 8))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D2A1BC84()
{
  v1 = type metadata accessor for GenerativePlaygroundRemoteView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for _AppExtensionHostView.Configuration(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    v7 = sub_1D2AC62D4();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC704510, &qword_1D2ACA260);

  if (*(v5 + *(v1 + 28)))
  {
  }

  if (*(v5 + *(v1 + 32) + 8))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D2A1BE24()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7036F0, &qword_1D2ACB8A0);
  sub_1D2A61168();
  return swift_getOpaqueTypeConformance2();
}

id sub_1D2A1BEFC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 baseImage];
  *a2 = result;
  return result;
}

id sub_1D2A1BF4C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sketchImage];
  *a2 = result;
  return result;
}

id sub_1D2A1BF9C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sketchMask];
  *a2 = result;
  return result;
}

id sub_1D2A1BFEC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 baseImageRatio];
  *a2 = v4;
  return result;
}

id sub_1D2A1C034@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sketchComplexityMeasure];
  *a2 = v4;
  return result;
}

id sub_1D2A1C07C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 generateCaptionFromImage];
  *a2 = result;
  return result;
}

id sub_1D2A1C0C4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sanitizationCategory];
  *a2 = result;
  return result;
}

id sub_1D2A1C10C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 drawOnImageAssignmentOptions];
  *a2 = result;
  return result;
}

uint64_t sub_1D2A1C154@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1D2A1C1C0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D2A1C26C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D2A1C310(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2AC5F94();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D2A1C37C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1D2AC5F94();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D2A1C418(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D2A1C4C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D2A1C568(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2AC5F94();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D2A1C5D4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1D2AC5F94();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D2A1C658(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D2A1C704(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D2A1C7A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2AC5F94();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D2A1C814(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1D2AC5F94();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D2A1C898(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for GenerationRecipe_V1.Prompt.Entity.Kind(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D2A1C944(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GenerationRecipe_V1.Prompt.Entity.Kind(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D2A1C9E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2AC5F94();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D2A1CA54(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1D2AC5F94();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D2A1CAD8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for GenerationRecipe_V5.Prompt.Entity.Kind(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D2A1CB84(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GenerationRecipe_V5.Prompt.Entity.Kind(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D2A1CC28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2AC5F94();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D2A1CC94(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1D2AC5F94();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D2A1CD18(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for GenerationRecipe_V3.Prompt.Entity.Kind(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D2A1CDC4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GenerationRecipe_V3.Prompt.Entity.Kind(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D2A1CE68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2AC5F94();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D2A1CED4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1D2AC5F94();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D2A1CF5C()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7065A8, &qword_1D2ADA818);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D2A1CFD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D2AC62C4();
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

uint64_t sub_1D2A1D090(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D2AC62C4();
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

uint64_t sub_1D2A1D148()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D2A1D180()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706608, &qword_1D2ADA9C8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D2A1D284(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for GenerationRecipe_V2.Prompt.Entity.Kind(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D2A1D330(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GenerationRecipe_V2.Prompt.Entity.Kind(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D2A1D3D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2AC5F94();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D2A1D440(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1D2AC5F94();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

Swift::Void __swiftcall ImageXPCWrapper.encode(with:)(NSCoder with)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClassUnconditional();
  v3 = *(v1 + OBJC_IVAR___GPImageXPCWrapper_surface);
  v4 = sub_1D2AC6BF4();
  [v2 encodeObject:v3 forKey:v4];
}

id ImageXPCWrapper.init(coder:)(void *a1)
{
  v2 = v1;
  pixelBufferOut[1] = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  sub_1D2A20764(0, &qword_1EC703668, 0x1E696CDE8);
  v5 = sub_1D2AC6F74();
  if (v5)
  {
    v6 = OBJC_IVAR___GPImageXPCWrapper_surface;
    *&v1[OBJC_IVAR___GPImageXPCWrapper_surface] = v5;
    pixelBufferOut[0] = 0;
    v7 = v5;
    if (CVPixelBufferCreateWithIOSurface(0, v7, 0, pixelBufferOut) || (v10 = pixelBufferOut[0]) == 0)
    {

      v8 = *&v2[v6];
    }

    else
    {
      *&v2[OBJC_IVAR___GPImageXPCWrapper_pixelBuffer] = pixelBufferOut[0];
      imageOut = 0;
      v11 = v10;
      v12 = VTCreateCGImageFromCVPixelBuffer(v11, 0, &imageOut);
      if (v12 == sub_1D2AC63E4())
      {
        v13 = imageOut;
        if (imageOut)
        {
          *&v2[OBJC_IVAR___GPImageXPCWrapper_image] = imageOut;
          v16.receiver = v2;
          v16.super_class = ObjectType;
          v14 = v13;
          v15 = objc_msgSendSuper2(&v16, sel_init);

          return v15;
        }
      }

      v8 = *&v2[OBJC_IVAR___GPImageXPCWrapper_pixelBuffer];
    }
  }

  else
  {
  }

  swift_deallocPartialClassInstance();
  return 0;
}

IOSurfaceRef ImageXPCWrapper.__allocating_init(image:orientation:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = objc_allocWithZone(v2);
  v7 = ImageXPCWrapper.init(_:orientation:)(a1, a2);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

IOSurfaceRef ImageXPCWrapper.init(image:orientation:)(void *a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjectType());
  v5 = ImageXPCWrapper.init(_:orientation:)(a1, a2);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

IOSurfaceRef ImageXPCWrapper.init(_:orientation:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  ObjectType = swift_getObjectType();
  CGImageRef.toPixelBuffer(orientation:maximumDimension:)(v4, 2048.0, 0, v14);
  v7 = v14[0];
  if (!*&v14[0])
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  v8 = v14[1];
  *&v3[OBJC_IVAR___GPImageXPCWrapper_pixelBuffer] = v14[0];
  v9 = *&v7;
  result = CVPixelBufferGetIOSurface(v9);
  if (result)
  {
    v11 = result;

    *&v3[OBJC_IVAR___GPImageXPCWrapper_surface] = v11;
    *&v3[OBJC_IVAR___GPImageXPCWrapper_image] = v8;
    v13.receiver = v3;
    v13.super_class = ObjectType;
    v12 = objc_msgSendSuper2(&v13, sel_init);

    return v12;
  }

  __break(1u);
  return result;
}

__CVBuffer *ImageXPCWrapper.init(pixelBuffer:)(__CVBuffer *a1)
{
  imageOut[1] = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  IOSurface = CVPixelBufferGetIOSurface(a1);
  if (!IOSurface)
  {
    __break(1u);
  }

  v5 = IOSurface;

  v6 = OBJC_IVAR___GPImageXPCWrapper_surface;
  *&v1[OBJC_IVAR___GPImageXPCWrapper_surface] = v5;
  v7 = OBJC_IVAR___GPImageXPCWrapper_pixelBuffer;
  *&v1[OBJC_IVAR___GPImageXPCWrapper_pixelBuffer] = a1;
  imageOut[0] = 0;
  v8 = a1;
  v9 = VTCreateCGImageFromCVPixelBuffer(v8, 0, imageOut);
  if (imageOut[0])
  {
    v10 = v9;
    v11 = imageOut[0];
    if (v10 == sub_1D2AC63E4())
    {
      *&v1[OBJC_IVAR___GPImageXPCWrapper_image] = v11;

      v14.receiver = v1;
      v14.super_class = ObjectType;
      v12 = [(__CVBuffer *)&v14 init];

      return v12;
    }
  }

  swift_deallocPartialClassInstance();
  return 0;
}

id ImageXPCWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ImageXPCWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D2A1F764(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1D2AC60F4();
}

uint64_t sub_1D2A1F7D8(uint64_t a1, id *a2)
{
  result = sub_1D2AC6C04();
  *a2 = 0;
  return result;
}

uint64_t sub_1D2A1F850(uint64_t a1, id *a2)
{
  v3 = sub_1D2AC6C14();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1D2A1F8D0@<X0>(uint64_t *a1@<X8>)
{
  sub_1D2AC6C24();
  v2 = sub_1D2AC6BF4();

  *a1 = v2;
  return result;
}

uint64_t sub_1D2A1F914()
{
  v0 = sub_1D2AC6C24();
  v1 = MEMORY[0x1D38A7130](v0);

  return v1;
}

uint64_t sub_1D2A1F950(uint64_t a1)
{
  sub_1D2AC6C24();
  sub_1D2AC6C74();
}

uint64_t sub_1D2A1F9A4(uint64_t a1)
{
  sub_1D2AC6C24();
  sub_1D2AC7444();
  sub_1D2AC6C74();
  v1 = sub_1D2AC7484();

  return v1;
}

uint64_t sub_1D2A1FA2C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1D2AC60F4();
}

uint64_t sub_1D2A1FA98(void *a1, uint64_t *a2)
{
  v2 = sub_1D2AC6C24();
  v4 = v3;
  if (v2 == sub_1D2AC6C24() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1D2AC7354();
  }

  return v7 & 1;
}

_DWORD *sub_1D2A1FB20@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1D2A1FBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D2AC7444();
  swift_getWitnessTable();
  sub_1D2AC6104();
  return sub_1D2AC7484();
}

uint64_t sub_1D2A1FC5C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1D2AC6BF4();

  *a2 = v3;
  return result;
}

uint64_t sub_1D2A1FCA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D2AC6C24();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D2A1FCD0(uint64_t a1)
{
  v2 = sub_1D2A20500(&qword_1EC703800, type metadata accessor for CIContextOption, &unk_1D2AC94D4);
  v3 = sub_1D2A20500(&qword_1EC703808, type metadata accessor for CIContextOption, &unk_1D2AC937C);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D2A1FDAC()
{
  v1 = *(v0 + 16);
  v2 = [v1 CGImage];
  v3 = [v1 imageOrientation] - 1;
  if (v3 > 6)
  {
    v4 = 1;
    v5 = *(v0 + 16);
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v4 = dword_1D2AC9594[v3];
    v5 = *(v0 + 16);
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  objc_allocWithZone(type metadata accessor for ImageXPCWrapper());
  v6 = v2;
  v2 = ImageXPCWrapper.init(_:orientation:)(v6, v4);
  v7 = v2;

  if (!v2)
  {
    goto LABEL_8;
  }

  v5 = v7;
LABEL_7:

LABEL_8:
  v8 = *(v0 + 8);

  return v8(v2);
}

uint64_t sub_1D2A1FED8()
{
  v1 = sub_1D2AC5EA4();
  v2 = CGImageSourceCreateWithURL(v1, 0);

  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7037E8, &qword_1D2AC9520);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D2AC9060;
    v4 = *MEMORY[0x1E696E100];
    *(inited + 32) = *MEMORY[0x1E696E100];
    v5 = MEMORY[0x1E69E6530];
    *(inited + 40) = 2048;
    v6 = *MEMORY[0x1E696DFE8];
    *(inited + 64) = v5;
    *(inited + 72) = v6;
    v7 = MEMORY[0x1E69E6370];
    v8 = MEMORY[0x1E696E000];
    *(inited + 80) = 1;
    v9 = *v8;
    *(inited + 104) = v7;
    *(inited + 112) = v9;
    *(inited + 144) = v7;
    *(inited + 120) = 1;
    v10 = v4;
    v11 = v6;
    v12 = v9;
    sub_1D2A485EC(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7037F0, &qword_1D2AC9528);
    swift_arrayDestroy();
    PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(v2);
    type metadata accessor for CFString(0);
    sub_1D2A20500(&qword_1EC7037D0, type metadata accessor for CFString, &unk_1D2AC9490);
    v14 = sub_1D2AC6B94();

    ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v2, PrimaryImageIndex, v14);

    if (ThumbnailAtIndex)
    {
      v16 = CGImageSourceCopyPropertiesAtIndex(v2, PrimaryImageIndex, 0);
      if (v16)
      {
        v17 = v16;
        if ([(__CFDictionary *)v16 __swift_objectForKeyedSubscript:*MEMORY[0x1E696DE78]])
        {
          sub_1D2AC6FF4();
          swift_unknownObjectRelease();
          sub_1D2A206F8((v0 + 200), (v0 + 168));
          sub_1D2A20708(v0 + 168, v0 + 232);
          sub_1D2A20764(0, &qword_1EC7037F8, 0x1E696AD98);
          if (swift_dynamicCast())
          {
            v18 = *(v0 + 264);
            v19 = [v18 unsignedIntValue];

            __swift_destroy_boxed_opaque_existential_0((v0 + 168));
            goto LABEL_12;
          }

          __swift_destroy_boxed_opaque_existential_0((v0 + 168));
        }

        v19 = 1;
LABEL_12:
        v26 = *(v0 + 272);
        v27 = objc_allocWithZone(type metadata accessor for ImageXPCWrapper());
        v28 = ImageXPCWrapper.init(_:orientation:)(ThumbnailAtIndex, v19);

        v29 = sub_1D2AC5EF4();
        (*(*(v29 - 8) + 8))(v26, v29);
        v30 = v28;
        if (v28)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      v24 = *(v0 + 272);
      v25 = sub_1D2AC5EF4();
      (*(*(v25 - 8) + 8))(v24, v25);
    }

    else
    {
      v22 = *(v0 + 272);
      v23 = sub_1D2AC5EF4();
      (*(*(v23 - 8) + 8))(v22, v23);
    }
  }

  else
  {
    v20 = *(v0 + 272);
    v21 = sub_1D2AC5EF4();
    (*(*(v21 - 8) + 8))(v20, v21);
  }

LABEL_13:
  v30 = 0;
LABEL_14:
  v31 = *(v0 + 8);

  return v31(v30);
}

unint64_t sub_1D2A202C4()
{
  result = qword_1EC7036E0;
  if (!qword_1EC7036E0)
  {
    sub_1D2AC65B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7036E0);
  }

  return result;
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

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D2A20444(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D2A20500(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_OWORD *sub_1D2A206F8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1D2A20708(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1D2A20764(uint64_t a1, unint64_t *a2, void *a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_1D2A20840(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t View.imagePlaygroundSheet(isPresented:concepts:sourceImage:onCompletion:onCancellation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v31 = a3;
  v34 = a9;
  v35 = a12;
  v32 = a6;
  v33 = a11;
  v18 = type metadata accessor for ImageGenerationViewModifier(0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v19 + 60);
  v23 = sub_1D2AC5EF4();
  (*(*(v23 - 8) + 56))(&v21[v22], 1, 1, v23);
  LOBYTE(v36) = 0;
  sub_1D2AC6A14();
  v24 = *(&v37 + 1);
  v21[24] = v37;
  *(v21 + 4) = v24;
  v36 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7038F0, &qword_1D2AC95E0);
  sub_1D2AC6A14();
  *(v21 + 40) = v37;
  *(v21 + 7) = swift_getKeyPath();
  v21[64] = 0;
  KeyPath = swift_getKeyPath();
  LOBYTE(v37) = 0;
  *(v21 + 9) = KeyPath;
  v21[168] = 0;
  *(v21 + 22) = swift_getKeyPath();
  v21[184] = 0;
  *(v21 + 24) = swift_getKeyPath();
  *(v21 + 25) = 0;
  *(v21 + 26) = 0;
  *(v21 + 27) = 0;
  *(v21 + 112) = 0;
  v26 = swift_getKeyPath();
  *(v21 + 30) = 0;
  *(v21 + 31) = 0;
  *(v21 + 29) = v26;
  v21[256] = 0;
  *(v21 + 33) = swift_getKeyPath();
  v21[272] = 0;
  *(v21 + 35) = swift_getKeyPath();
  v21[288] = 0;
  *v21 = a1;
  *(v21 + 1) = a2;
  v21[16] = v31;
  *(v21 + 37) = a4;
  *&v21[v18[16]] = a5;
  v21[v18[17]] = 0;
  v27 = &v21[v18[18]];
  *v27 = v32;
  v27[1] = a7;
  v28 = &v21[v18[19]];
  *v28 = a8;
  *(v28 + 1) = a10;

  sub_1D2A19818(a8, a10);
  MEMORY[0x1D38A6E20](v21, v33, v18, v35);
  return sub_1D2A2E044(v21, type metadata accessor for ImageGenerationViewModifier);
}

uint64_t View.imagePlaygroundSheet(isPresented:concepts:sourceImageURL:onCompletion:onCancellation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v34 = a7;
  v35 = a8;
  v33 = a6;
  v32 = a3;
  v37 = a9;
  v38 = a12;
  v36 = a11;
  v16 = type metadata accessor for ImageGenerationViewModifier(0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v17 + 60);
  v21 = sub_1D2AC5EF4();
  v22 = *(v21 - 8);
  (*(v22 + 16))(&v19[v20], a5, v21);
  (*(v22 + 56))(&v19[v20], 0, 1, v21);
  LOBYTE(v39) = 0;
  sub_1D2AC6A14();
  v23 = *(&v40 + 1);
  v19[24] = v40;
  *(v19 + 4) = v23;
  v39 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7038F0, &qword_1D2AC95E0);
  sub_1D2AC6A14();
  *(v19 + 40) = v40;
  *(v19 + 7) = swift_getKeyPath();
  v19[64] = 0;
  KeyPath = swift_getKeyPath();
  LOBYTE(v40) = 0;
  *(v19 + 9) = KeyPath;
  v19[168] = 0;
  *(v19 + 22) = swift_getKeyPath();
  v19[184] = 0;
  *(v19 + 24) = swift_getKeyPath();
  *(v19 + 25) = 0;
  *(v19 + 26) = 0;
  *(v19 + 27) = 0;
  *(v19 + 112) = 0;
  v25 = swift_getKeyPath();
  *(v19 + 30) = 0;
  *(v19 + 31) = 0;
  *(v19 + 29) = v25;
  v19[256] = 0;
  *(v19 + 33) = swift_getKeyPath();
  v19[272] = 0;
  *(v19 + 35) = swift_getKeyPath();
  v19[288] = 0;
  *v19 = a1;
  *(v19 + 1) = a2;
  v19[16] = v32;
  *(v19 + 37) = a4;
  *&v19[v16[16]] = 0;
  v19[v16[17]] = 0;
  v26 = &v19[v16[18]];
  v27 = v34;
  *v26 = v33;
  v26[1] = v27;
  v28 = &v19[v16[19]];
  v29 = v35;
  *v28 = v35;
  v28[1] = a10;

  sub_1D2A19818(v29, a10);
  MEMORY[0x1D38A6E20](v19, v36, v16, v38);
  return sub_1D2A2E044(v19, type metadata accessor for ImageGenerationViewModifier);
}

uint64_t View.imagePlaygroundSheet(isPresented:concept:sourceImageURL:onCompletion:onCancellation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7038F8, &qword_1D2AC9700);
  v19 = *(type metadata accessor for ImagePlaygroundConcept(0) - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1D2AC95B0;
  v22 = (v21 + v20);
  *v22 = a4;
  v22[1] = a5;
  type metadata accessor for ImagePlaygroundConcept.ImageGenerationPromptElementEnum(0);
  swift_storeEnumTagMultiPayload();

  View.imagePlaygroundSheet(isPresented:concepts:sourceImageURL:onCompletion:onCancellation:)(a1, a2, a3, v21, a6, a7, a8, a10, a9, a11, a12, a13);
}

uint64_t View.imagePlaygroundSheet(isPresented:concept:sourceImage:onCompletion:onCancellation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7038F8, &qword_1D2AC9700);
  v19 = *(type metadata accessor for ImagePlaygroundConcept(0) - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1D2AC95B0;
  v22 = (v21 + v20);
  *v22 = a4;
  v22[1] = a5;
  type metadata accessor for ImagePlaygroundConcept.ImageGenerationPromptElementEnum(0);
  swift_storeEnumTagMultiPayload();

  View.imagePlaygroundSheet(isPresented:concepts:sourceImage:onCompletion:onCancellation:)(a1, a2, a3, v21, a6, a7, a8, a10, a9, a11, a12, a13);
}

uint64_t View.imagePlaygroundGenerationStyle(_:in:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703900, &qword_1D2AC9708);
  v7 = sub_1D2AC65C4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v16 - v9;
  swift_getKeyPath();
  *&v17 = a2;
  sub_1D2AC6934();

  swift_getKeyPath();
  v11 = a1[3];
  v19 = a1[2];
  v20 = v11;
  v12 = a1[5];
  v21 = a1[4];
  v22 = v12;
  v13 = a1[1];
  v17 = *a1;
  v18 = v13;
  v14 = sub_1D2A2DB64(&qword_1EC703908, &qword_1EC703900, &qword_1D2AC9708, MEMORY[0x1E6980A18]);
  v16[0] = a4;
  v16[1] = v14;
  swift_getWitnessTable();
  sub_1D2AC6934();

  return (*(v8 + 8))(v10, v7);
}

uint64_t EnvironmentValues.imagePlaygroundAllowedGenerationStyles.getter()
{
  sub_1D2A21C28();
  sub_1D2AC6694();
  return v1;
}

void *sub_1D2A21304@<X0>(void *a1@<X8>)
{
  sub_1D2A21C28();
  result = sub_1D2AC6694();
  *a1 = v3;
  return result;
}

uint64_t sub_1D2A21354(uint64_t *a1)
{
  sub_1D2A21C28();

  return sub_1D2AC66A4();
}

void *EnvironmentValues.imagePlaygroundSelectedGenerationStyle.getter()
{
  sub_1D2A21C7C();

  return sub_1D2AC6694();
}

double sub_1D2A213FC@<D0>(_OWORD *a1@<X8>)
{
  sub_1D2A21C7C();
  sub_1D2AC6694();
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D2A2145C(_OWORD *a1)
{
  v1 = a1[3];
  v2 = a1[1];
  v10 = a1[2];
  v11 = v1;
  v3 = a1[3];
  v4 = a1[5];
  v12 = a1[4];
  v13 = v4;
  v5 = a1[1];
  v9[0] = *a1;
  v9[1] = v5;
  v8[8] = v10;
  v8[9] = v3;
  v6 = a1[5];
  v8[10] = v12;
  v8[11] = v6;
  v8[6] = v9[0];
  v8[7] = v2;
  sub_1D2A2D244(v9, v8);
  sub_1D2A21C7C();
  return sub_1D2AC66A4();
}

void *EnvironmentValues.imagePlaygroundPersonalizationPolicy.getter()
{
  sub_1D2A21CD0();

  return sub_1D2AC6694();
}

uint64_t View.imagePlaygroundResponsibleAuditToken(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_1D2AC6934();
}

double EnvironmentValues.imagePlaygroundResponsibleAuditToken.getter@<D0>(uint64_t a1@<X8>)
{
  sub_1D2A21D24();
  sub_1D2AC6694();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

double sub_1D2A21660@<D0>(uint64_t a1@<X8>)
{
  sub_1D2A21D24();
  sub_1D2AC6694();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t View.imagePlaygroundPreviewAspectRatio(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1D2AC6934();
}

void *EnvironmentValues.imagePlaygroundPreviewAspectRatio.getter()
{
  sub_1D2A21D78();

  return sub_1D2AC6694();
}

double sub_1D2A217E0@<D0>(uint64_t a1@<X8>)
{
  sub_1D2A21D78();
  sub_1D2AC6694();
  *a1 = v3;
  result = *&v4;
  *(a1 + 8) = v4;
  return result;
}

uint64_t View.imagePlaygroundPreGeneratedImage(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1D2AC6934();
}

uint64_t EnvironmentValues.imagePlaygroundPreGeneratedImage.getter()
{
  sub_1D2A21DCC();
  sub_1D2AC6694();
  return v1;
}

void *sub_1D2A21984@<X0>(void *a1@<X8>)
{
  sub_1D2A21DCC();
  result = sub_1D2AC6694();
  *a1 = v3;
  return result;
}

uint64_t sub_1D2A219D4(id *a1)
{
  v1 = *a1;
  sub_1D2A21DCC();
  v2 = v1;
  return sub_1D2AC66A4();
}

uint64_t sub_1D2A21A3C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_1D2AC6934();
}

void *EnvironmentValues.imagePlaygroundImageImportPolicy.getter()
{
  sub_1D2A21E20();

  return sub_1D2AC6694();
}

void *keypath_get_6Tm@<X0>(uint64_t (*a1)(void)@<X3>, _BYTE *a3@<X8>)
{
  a1();
  result = sub_1D2AC6694();
  *a3 = v5;
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

unint64_t sub_1D2A21C28()
{
  result = qword_1EC703910;
  if (!qword_1EC703910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703910);
  }

  return result;
}

unint64_t sub_1D2A21C7C()
{
  result = qword_1EC703918;
  if (!qword_1EC703918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703918);
  }

  return result;
}

unint64_t sub_1D2A21CD0()
{
  result = qword_1EC703920;
  if (!qword_1EC703920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703920);
  }

  return result;
}

unint64_t sub_1D2A21D24()
{
  result = qword_1EC703928;
  if (!qword_1EC703928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703928);
  }

  return result;
}

unint64_t sub_1D2A21D78()
{
  result = qword_1EC703930;
  if (!qword_1EC703930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703930);
  }

  return result;
}

unint64_t sub_1D2A21DCC()
{
  result = qword_1EC703938;
  if (!qword_1EC703938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703938);
  }

  return result;
}

unint64_t sub_1D2A21E20()
{
  result = qword_1EC703940;
  if (!qword_1EC703940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703940);
  }

  return result;
}

uint64_t View.imagePlaygroundSheet(isPresented:concepts:sourceImage:sceneIdentifier:onCompletion:onCancellation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned __int8 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v35 = a7;
  v36 = a9;
  v34 = a3;
  v37 = a12;
  v38 = a13;
  v19 = type metadata accessor for ImageGenerationViewModifier(0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *a6;
  v23 = *(v20 + 60);
  v24 = sub_1D2AC5EF4();
  (*(*(v24 - 8) + 56))(&v22[v23], 1, 1, v24);
  LOBYTE(v39) = 0;
  sub_1D2AC6A14();
  v25 = *(&v40 + 1);
  v22[24] = v40;
  *(v22 + 4) = v25;
  v39 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7038F0, &qword_1D2AC95E0);
  sub_1D2AC6A14();
  *(v22 + 40) = v40;
  *(v22 + 7) = swift_getKeyPath();
  v22[64] = 0;
  KeyPath = swift_getKeyPath();
  LOBYTE(v40) = 0;
  *(v22 + 9) = KeyPath;
  v22[168] = 0;
  *(v22 + 22) = swift_getKeyPath();
  v22[184] = 0;
  *(v22 + 24) = swift_getKeyPath();
  *(v22 + 25) = 0;
  *(v22 + 26) = 0;
  *(v22 + 27) = 0;
  *(v22 + 112) = 0;
  v27 = swift_getKeyPath();
  *(v22 + 30) = 0;
  *(v22 + 31) = 0;
  *(v22 + 29) = v27;
  v22[256] = 0;
  *(v22 + 33) = swift_getKeyPath();
  v22[272] = 0;
  *(v22 + 35) = swift_getKeyPath();
  v22[288] = 0;
  *v22 = a1;
  *(v22 + 1) = a2;
  v28 = v33;
  v22[16] = v34;
  *(v22 + 37) = a4;
  *&v22[v19[16]] = a5;
  v22[v19[17]] = v28;
  v29 = &v22[v19[18]];
  *v29 = v35;
  v29[1] = a8;
  v30 = &v22[v19[19]];
  *v30 = a10;
  *(v30 + 1) = a11;

  sub_1D2A19818(a10, a11);
  MEMORY[0x1D38A6E20](v22, v37, v19, v38);
  return sub_1D2A2E044(v22, type metadata accessor for ImageGenerationViewModifier);
}

uint64_t View.imagePlaygroundSheet(isPresented:concepts:sourceImageURL:sceneIdentifier:onCompletion:onCancellation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned __int8 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v38 = a7;
  v39 = a8;
  v36 = a3;
  v40 = a9;
  v41 = a12;
  v42 = a13;
  v37 = a11;
  v18 = type metadata accessor for ImageGenerationViewModifier(0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *a6;
  v22 = *(v19 + 60);
  v23 = sub_1D2AC5EF4();
  v24 = *(v23 - 8);
  (*(v24 + 16))(&v21[v22], a5, v23);
  (*(v24 + 56))(&v21[v22], 0, 1, v23);
  LOBYTE(v43) = 0;
  sub_1D2AC6A14();
  v25 = *(&v44 + 1);
  v21[24] = v44;
  *(v21 + 4) = v25;
  v43 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7038F0, &qword_1D2AC95E0);
  sub_1D2AC6A14();
  *(v21 + 40) = v44;
  *(v21 + 7) = swift_getKeyPath();
  v21[64] = 0;
  KeyPath = swift_getKeyPath();
  LOBYTE(v44) = 0;
  *(v21 + 9) = KeyPath;
  v21[168] = 0;
  *(v21 + 22) = swift_getKeyPath();
  v21[184] = 0;
  *(v21 + 24) = swift_getKeyPath();
  *(v21 + 25) = 0;
  *(v21 + 26) = 0;
  *(v21 + 27) = 0;
  *(v21 + 112) = 0;
  v27 = swift_getKeyPath();
  *(v21 + 30) = 0;
  *(v21 + 31) = 0;
  *(v21 + 29) = v27;
  v21[256] = 0;
  *(v21 + 33) = swift_getKeyPath();
  v21[272] = 0;
  *(v21 + 35) = swift_getKeyPath();
  v21[288] = 0;
  *v21 = a1;
  *(v21 + 1) = a2;
  v28 = v35;
  v21[16] = v36;
  *(v21 + 37) = a4;
  *&v21[v18[16]] = 0;
  v21[v18[17]] = v28;
  v29 = &v21[v18[18]];
  v30 = v39;
  *v29 = v38;
  v29[1] = v30;
  v31 = &v21[v18[19]];
  v32 = v37;
  *v31 = a10;
  *(v31 + 1) = v32;

  sub_1D2A19818(a10, v32);
  MEMORY[0x1D38A6E20](v21, v41, v18, v42);
  return sub_1D2A2E044(v21, type metadata accessor for ImageGenerationViewModifier);
}

uint64_t sub_1D2A223E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[39] = a6;
  v7[40] = a7;
  v7[37] = a4;
  v7[38] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7039C8, &unk_1D2AC9900);
  v7[41] = swift_task_alloc();
  v8 = sub_1D2AC5EF4();
  v7[42] = v8;
  v7[43] = *(v8 - 8);
  v7[44] = swift_task_alloc();
  v7[45] = swift_task_alloc();
  sub_1D2AC6DA4();
  v7[46] = sub_1D2AC6D94();
  v10 = sub_1D2AC6D44();
  v7[47] = v10;
  v7[48] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D2A2251C, v10, v9);
}

uint64_t sub_1D2A2251C()
{
  v1 = v0[37];
  if (v1)
  {
    v2 = v0[38];
    v3 = v1;

    v4 = objc_allocWithZone(type metadata accessor for ImageXPCWrapper());
    v5 = ImageXPCWrapper.init(_:orientation:)(v3, 1);
    swift_beginAccess();
    v6 = *(v2 + 16);
    *(v2 + 16) = v5;

    goto LABEL_5;
  }

  v7 = v0[42];
  v8 = v0[43];
  v9 = v0[41];
  sub_1D2A2E5B4(v0[39], v9, &qword_1EC7039C8, &unk_1D2AC9900);
  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    v10 = v0[41];

    sub_1D2A2E61C(v10, &qword_1EC7039C8, &unk_1D2AC9900);
LABEL_5:
    v11 = v0[40];
    v12 = v0[38];
    swift_beginAccess();
    v13 = *(v12 + 16);
    v14 = *(v11 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_sourceImage);
    *(v11 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_sourceImage) = v13;
    v15 = v13;

    v16 = swift_allocObject();
    *(v16 + 16) = v13;
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = sub_1D2A575E8;
    v18[4] = 0;
    v18[5] = sub_1D2A2E554;
    v18[6] = v16;
    swift_getKeyPath();
    v0[32] = v11;
    sub_1D2A2D3A8(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);
    v19 = v15;

    sub_1D2AC6094();

    v20 = *(v11 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
    if (v20)
    {
      v0[6] = sub_1D2A575E8;
      v0[7] = 0;
      v0[2] = MEMORY[0x1E69E9820];
      v0[3] = 1107296256;
      v0[4] = sub_1D2A44320;
      v0[5] = &block_descriptor_306;
      v21 = _Block_copy(v0 + 2);
      v22 = v20;

      v23 = [v22 remoteObjectProxyWithErrorHandler_];
      _Block_release(v21);

      sub_1D2AC6FF4();
      swift_unknownObjectRelease();
      sub_1D2A206F8(v0 + 6, v0 + 4);
      sub_1D2A206F8(v0 + 4, v0 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
      swift_dynamicCast();
      v24 = v0[33];
      if (v24)
      {
        [v0[33] setSourceImage_];

LABEL_18:

        v45 = v0[1];

        return v45();
      }
    }

    else
    {
      sub_1D2A2DF64();
      v25 = swift_allocError();
      if (qword_1EC7035A0 != -1)
      {
        swift_once();
      }

      v26 = sub_1D2AC63B4();
      __swift_project_value_buffer(v26, qword_1EC7040C0);
      v27 = v25;
      v28 = sub_1D2AC6394();
      v29 = sub_1D2AC6EB4();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = v19;
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *v31 = 138412290;
        v33 = v25;
        v34 = _swift_stdlib_bridgeErrorToNSError();
        *(v31 + 4) = v34;
        *v32 = v34;
        _os_log_impl(&dword_1D2A17000, v28, v29, "Could not send source image to remote view: %@. May not be an error if the connection is not established yet, will retry.", v31, 0xCu);
        sub_1D2A2E61C(v32, &unk_1EC704400, &unk_1D2ADA9A0);
        MEMORY[0x1D38A8460](v32, -1, -1);
        v35 = v31;
        v19 = v30;
        MEMORY[0x1D38A8460](v35, -1, -1);
      }
    }

    v53 = v19;
    v36 = v0[40];
    v37 = swift_allocObject();
    *(v37 + 16) = sub_1D2A2E6B4;
    *(v37 + 24) = v18;
    swift_getKeyPath();
    v0[34] = v36;

    sub_1D2AC6094();

    v0[35] = v36;
    swift_getKeyPath();
    sub_1D2AC60B4();

    v38 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
    swift_beginAccess();
    v39 = *(v36 + v38);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v36 + v38) = v39;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v39 = sub_1D2A4486C(0, v39[2] + 1, 1, v39);
      *(v36 + v38) = v39;
    }

    v42 = v39[2];
    v41 = v39[3];
    if (v42 >= v41 >> 1)
    {
      v39 = sub_1D2A4486C((v41 > 1), v42 + 1, 1, v39);
    }

    v43 = v0[40];
    v39[2] = v42 + 1;
    v44 = &v39[2 * v42];
    v44[4] = sub_1D2A2E724;
    v44[5] = v37;
    *(v36 + v38) = v39;
    swift_endAccess();
    v0[36] = v43;
    swift_getKeyPath();
    sub_1D2AC60A4();

    goto LABEL_18;
  }

  v47 = v0[44];
  v48 = v0[45];
  v49 = v0[42];
  v50 = v0[43];
  (*(v50 + 32))(v48, v0[41], v49);
  (*(v50 + 16))(v47, v48, v49);
  v51 = swift_task_alloc();
  v0[49] = v51;
  *v51 = v0;
  v51[1] = sub_1D2A22CE4;
  v52 = v0[44];

  return sub_1D2A1FEB8(v52);
}

uint64_t sub_1D2A22CE4(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 400) = a1;

  v3 = *(v2 + 384);
  v4 = *(v2 + 376);

  return MEMORY[0x1EEE6DFA0](sub_1D2A22E0C, v4, v3);
}

uint64_t sub_1D2A22E0C()
{
  v1 = v0[50];
  v2 = v0[45];
  v3 = v0[42];
  v4 = v0[43];
  v5 = v0[38];

  (*(v4 + 8))(v2, v3);
  swift_beginAccess();
  v6 = *(v5 + 16);
  *(v5 + 16) = v1;

  v7 = v0[40];
  v8 = v0[38];
  swift_beginAccess();
  v9 = *(v8 + 16);
  v10 = *(v7 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_sourceImage);
  *(v7 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_sourceImage) = v9;
  v11 = v9;

  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = sub_1D2A575E8;
  v14[4] = 0;
  v14[5] = sub_1D2A2E554;
  v14[6] = v12;
  swift_getKeyPath();
  v0[32] = v7;
  sub_1D2A2D3A8(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);
  v15 = v11;

  sub_1D2AC6094();

  v16 = *(v7 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  if (v16)
  {
    v0[6] = sub_1D2A575E8;
    v0[7] = 0;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1D2A44320;
    v0[5] = &block_descriptor_306;
    v17 = _Block_copy(v0 + 2);
    v18 = v16;

    v19 = [v18 remoteObjectProxyWithErrorHandler_];
    _Block_release(v17);

    sub_1D2AC6FF4();
    swift_unknownObjectRelease();
    sub_1D2A206F8(v0 + 6, v0 + 4);
    sub_1D2A206F8(v0 + 4, v0 + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
    swift_dynamicCast();
    v20 = v0[33];
    if (v20)
    {
      [v0[33] setSourceImage_];

      goto LABEL_14;
    }
  }

  else
  {
    sub_1D2A2DF64();
    v21 = swift_allocError();
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v22 = sub_1D2AC63B4();
    __swift_project_value_buffer(v22, qword_1EC7040C0);
    v23 = v21;
    v24 = sub_1D2AC6394();
    v25 = sub_1D2AC6EB4();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = v15;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = v21;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v30;
      *v28 = v30;
      _os_log_impl(&dword_1D2A17000, v24, v25, "Could not send source image to remote view: %@. May not be an error if the connection is not established yet, will retry.", v27, 0xCu);
      sub_1D2A2E61C(v28, &unk_1EC704400, &unk_1D2ADA9A0);
      MEMORY[0x1D38A8460](v28, -1, -1);
      v31 = v27;
      v15 = v26;
      MEMORY[0x1D38A8460](v31, -1, -1);
    }
  }

  v43 = v15;
  v32 = v0[40];
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1D2A2E6B4;
  *(v33 + 24) = v14;
  swift_getKeyPath();
  v0[34] = v32;

  sub_1D2AC6094();

  v0[35] = v32;
  swift_getKeyPath();
  sub_1D2AC60B4();

  v34 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
  swift_beginAccess();
  v35 = *(v32 + v34);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v32 + v34) = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = sub_1D2A4486C(0, v35[2] + 1, 1, v35);
    *(v32 + v34) = v35;
  }

  v38 = v35[2];
  v37 = v35[3];
  if (v38 >= v37 >> 1)
  {
    v35 = sub_1D2A4486C((v37 > 1), v38 + 1, 1, v35);
  }

  v39 = v0[40];
  v35[2] = v38 + 1;
  v40 = &v35[2 * v38];
  v40[4] = sub_1D2A2E724;
  v40[5] = v33;
  *(v32 + v34) = v35;
  swift_endAccess();
  v0[36] = v39;
  swift_getKeyPath();
  sub_1D2AC60A4();

LABEL_14:

  v41 = v0[1];

  return v41();
}

uint64_t sub_1D2A2347C(uint64_t a1)
{
  v2 = type metadata accessor for ImageGenerationViewModifier(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ImageGenerationHostCoordinator(0);
  swift_allocObject();

  v7 = sub_1D2A29BC0(v6);
  v15 = type metadata accessor for ImageGenerationViewModifier;
  sub_1D2A2DFDC(v1, v5, type metadata accessor for ImageGenerationViewModifier);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_1D2A2D860(v5, v9 + v8);
  swift_getKeyPath();
  v19 = v7;
  v20 = sub_1D2A2E3C0;
  v21 = v9;
  v13[1] = OBJC_IVAR____TtC15ImagePlaygroundP33_DDFA1C1AEB2E9C3EBDF6D3A43C77EE2230ImageGenerationHostCoordinator___observationRegistrar;
  *&v23 = v7;
  sub_1D2A2D3A8(&qword_1EC703A98, type metadata accessor for ImageGenerationHostCoordinator, &unk_1D2AC9950);
  sub_1D2AC6084();

  v10 = v14;
  sub_1D2A2DFDC(v14, v5, v15);
  v11 = swift_allocObject();
  sub_1D2A2D860(v5, v11 + v8);
  swift_getKeyPath();
  v16 = v7;
  v17 = sub_1D2A2E498;
  v18 = v11;
  *&v23 = v7;
  sub_1D2AC6084();

  v23 = *(v10 + 40);
  v22 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B10, qword_1D2AC9CE0);
  return sub_1D2AC6A34();
}

uint64_t sub_1D2A23754(uint64_t *a1)
{
  v1 = (a1 + *(type metadata accessor for ImageGenerationViewModifier(0) + 76));
  if (*v1)
  {
    (*v1)();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7043E0, &qword_1D2AC9CC0);
  return sub_1D2AC6A94();
}

uint64_t sub_1D2A237D8(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ImageGenerationViewModifier(0);
  (*(a2 + *(v4 + 72)))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7043E0, &qword_1D2AC9CC0);
  return sub_1D2AC6A94();
}

uint64_t sub_1D2A23864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v125 = a1;
  v112 = a2;
  v122 = sub_1D2AC6684();
  v124 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v123 = &v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ImageGenerationViewModifier(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v98 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v92 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703AB0, &qword_1D2AC9C90);
  v12 = *(v11 - 8);
  v102 = v11;
  v103 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v113 = &v92 - v13;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703AB8, &qword_1D2AC9C98);
  v105 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v114 = &v92 - v14;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703AC0, &qword_1D2AC9CA0);
  v106 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v116 = &v92 - v15;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703AC8, &qword_1D2AC9CA8);
  v107 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  *&v118 = &v92 - v16;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703AD0, &qword_1D2AC9CB0);
  v108 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v120 = &v92 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703AD8, &qword_1D2AC9CB8);
  v110 = *(v18 - 8);
  v111 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v109 = &v92 - v19;
  v20 = *(v2 + 8);
  v104 = *v2;
  v101 = v20;
  v100 = *(v2 + 16);
  *&v151 = v104;
  *(&v151 + 1) = v20;
  LOBYTE(v152) = v100;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7043E0, &qword_1D2AC9CC0);
  sub_1D2AC6AA4();
  v94 = v128;
  v95 = v129;
  v96 = v2;
  v97 = type metadata accessor for ImageGenerationViewModifier;
  v126 = v10;
  sub_1D2A2DFDC(v2, v10, type metadata accessor for ImageGenerationViewModifier);
  v21 = *(v5 + 80);
  v22 = (v21 + 16) & ~v21;
  v127 = v8;
  v23 = swift_allocObject();
  sub_1D2A2D860(v10, v23 + v22);
  v24 = v98;
  sub_1D2A2DFDC(v2, v98, type metadata accessor for ImageGenerationViewModifier);
  v25 = swift_allocObject();
  sub_1D2A2D860(v24, v25 + v22);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703AE0, &qword_1D2AC9CC8);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703AE8, &qword_1D2AC9CD0);
  *&v91 = sub_1D2A2DB64(&qword_1EC703AF0, &qword_1EC703AE0, &qword_1D2AC9CC8, MEMORY[0x1E697FDF8]);
  *(&v91 + 1) = sub_1D2A2DBAC();
  sub_1D2AC69C4();

  *&v151 = v104;
  *(&v151 + 1) = v101;
  LOBYTE(v152) = v100;
  MEMORY[0x1D38A6EC0](&v128, v99);
  v26 = v96;
  v27 = v126;
  sub_1D2A2DFDC(v96, v126, v97);
  v28 = v102;
  v125 = v21;
  v29 = v26;
  v30 = swift_allocObject();
  v104 = v22;
  sub_1D2A2D860(v27, v30 + v22);
  *&v151 = v93;
  *(&v151 + 1) = v98;
  v152 = v91;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = MEMORY[0x1E69E6388];
  v33 = v113;
  sub_1D2AC69F4();
  v34 = v123;

  (*(v103 + 8))(v33, v28);
  v35 = *(v26 + 56);
  v36 = v124;
  if (*(v26 + 64) == 1)
  {
    v158[0] = *(v26 + 56);
  }

  else
  {

    sub_1D2AC6EA4();
    v37 = v32;
    v38 = sub_1D2AC6884();
    sub_1D2AC6324();

    v32 = v37;
    sub_1D2AC6674();
    swift_getAtKeyPath();
    sub_1D2A2D6F4(v35, 0);
    (*(v36 + 8))(v34, v122);
    v35 = v158[0];
  }

  *&v128 = v35;
  v39 = v126;
  sub_1D2A2DFDC(v29, v126, type metadata accessor for ImageGenerationViewModifier);
  v40 = v104;
  v41 = swift_allocObject();
  sub_1D2A2D860(v39, v41 + v40);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7039F8, &qword_1D2AC9930);
  *&v151 = v28;
  *(&v151 + 1) = MEMORY[0x1E69E6370];
  *&v152 = OpaqueTypeConformance2;
  *(&v152 + 1) = v32;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = sub_1D2A2C660();
  v45 = v115;
  v46 = v114;
  sub_1D2AC69F4();

  (*(v105 + 8))(v46, v45);
  v157 = *(v29 + 168);
  v47 = *(v29 + 120);
  v48 = *(v29 + 152);
  v155 = *(v29 + 136);
  v156 = v48;
  v49 = *(v29 + 88);
  v151 = *(v29 + 72);
  v152 = v49;
  v153 = *(v29 + 104);
  v154 = v47;
  if (v157)
  {
    v50 = *(v29 + 120);
    v147 = *(v29 + 104);
    v148 = v50;
    v51 = *(v29 + 152);
    v149 = *(v29 + 136);
    v150 = v51;
    v52 = *(v29 + 88);
    v145 = *(v29 + 72);
    v146 = v52;
    v134 = *(v29 + 168);
    v132 = v149;
    v133 = v51;
    v128 = v145;
    v129 = v52;
    v130 = v147;
    v131 = v50;
    sub_1D2A2D244(&v128, &v139);
    v53 = v124;
  }

  else
  {

    sub_1D2AC6EA4();
    v54 = sub_1D2AC6884();
    sub_1D2AC6324();

    v55 = v123;
    sub_1D2AC6674();
    swift_getAtKeyPath();
    sub_1D2A2E61C(&v151, &qword_1EC703B08, &qword_1D2AC9CD8);
    v53 = v124;
    (*(v124 + 8))(v55, v122);
  }

  v141 = v147;
  v142 = v148;
  v143 = v149;
  v144 = v150;
  v139 = v145;
  v140 = v146;
  v56 = v126;
  sub_1D2A2DFDC(v29, v126, type metadata accessor for ImageGenerationViewModifier);
  v57 = swift_allocObject();
  sub_1D2A2D860(v56, v57 + v40);
  *&v128 = v115;
  *(&v128 + 1) = v42;
  *&v129 = v43;
  *(&v129 + 1) = v44;
  v58 = swift_getOpaqueTypeConformance2();
  v59 = sub_1D2A2C6E4();
  v60 = v117;
  v61 = v116;
  sub_1D2AC69F4();

  v130 = v141;
  v131 = v142;
  v132 = v143;
  v133 = v144;
  v128 = v139;
  v129 = v140;
  sub_1D2A2DDA8(&v128);
  (*(v106 + 8))(v61, v60);
  v62 = *(v29 + 176);
  if (*(v29 + 184) == 1)
  {
    LOBYTE(v137) = *(v29 + 176);
  }

  else
  {

    sub_1D2AC6EA4();
    v63 = sub_1D2AC6884();
    sub_1D2AC6324();

    v64 = v123;
    sub_1D2AC6674();
    swift_getAtKeyPath();
    sub_1D2A19D04(v62, 0);
    (*(v53 + 8))(v64, v122);
    LOBYTE(v62) = v137;
  }

  LOBYTE(v135) = v62;
  v65 = v126;
  sub_1D2A2DFDC(v29, v126, type metadata accessor for ImageGenerationViewModifier);
  v66 = swift_allocObject();
  sub_1D2A2D860(v65, v66 + v40);
  *&v139 = v117;
  *(&v139 + 1) = &type metadata for ImagePlaygroundStyle;
  *&v140 = v58;
  *(&v140 + 1) = v59;
  v67 = swift_getOpaqueTypeConformance2();
  v68 = sub_1D2A2D2A0();
  v69 = v119;
  v70 = v118;
  sub_1D2AC69F4();

  (*(v107 + 8))(v70, v69);
  v71 = *(v29 + 232);
  v72 = *(v29 + 240);
  if (*(v29 + 256) == 1)
  {
    v137 = *(v29 + 232);
    v138 = v72;
    v73 = v71;
  }

  else
  {
    v118 = *(v29 + 240);

    sub_1D2AC6EA4();
    v74 = sub_1D2AC6884();
    sub_1D2AC6324();

    v75 = v123;
    sub_1D2AC6674();
    swift_getAtKeyPath();
    sub_1D2A2D848(v71, v118, *(&v118 + 1), 0);
    (*(v124 + 8))(v75, v122);
    v73 = v137;
    v72 = v138;
  }

  v135 = v73;
  v136 = v72;
  v76 = v126;
  sub_1D2A2DFDC(v29, v126, type metadata accessor for ImageGenerationViewModifier);
  v77 = swift_allocObject();
  v78 = v40;
  sub_1D2A2D860(v76, v77 + v40);
  *&v139 = v119;
  *(&v139 + 1) = &type metadata for ImagePlaygroundPersonalizationPolicy;
  *&v140 = v67;
  *(&v140 + 1) = v68;
  v79 = swift_getOpaqueTypeConformance2();
  v80 = sub_1D2A2D3F0();
  v81 = v109;
  v82 = v120;
  v83 = v121;
  sub_1D2AC69F4();

  (*(v108 + 8))(v82, v83);
  v84 = *(v29 + 280);
  if (*(v29 + 288) == 1)
  {
    LOBYTE(v137) = *(v29 + 280);
  }

  else
  {

    sub_1D2AC6EA4();
    v85 = sub_1D2AC6884();
    sub_1D2AC6324();

    v86 = v123;
    sub_1D2AC6674();
    swift_getAtKeyPath();
    sub_1D2A19D04(v84, 0);
    (*(v124 + 8))(v86, v122);
    LOBYTE(v84) = v137;
  }

  LOBYTE(v135) = v84;
  v87 = v126;
  sub_1D2A2DFDC(v29, v126, type metadata accessor for ImageGenerationViewModifier);
  v88 = swift_allocObject();
  sub_1D2A2D860(v87, v88 + v78);
  *&v139 = v121;
  *(&v139 + 1) = &type metadata for ImagePlaygroundAspectRatio;
  *&v140 = v79;
  *(&v140 + 1) = v80;
  swift_getOpaqueTypeConformance2();
  sub_1D2A2D4F8();
  v89 = v111;
  sub_1D2AC69F4();

  return (*(v110 + 8))(v81, v89);
}

uint64_t sub_1D2A24948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7043C0, &qword_1D2ACA0B0);
  v4 = MEMORY[0x1EEE9AC00](v36);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - v7;
  v9 = type metadata accessor for GPImageEditionView(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B38, &qword_1D2AC9D80);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v37 = &v25 - v14;
  v38 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B10, qword_1D2AC9CE0);
  sub_1D2AC6A24();
  if (v40)
  {
    v33 = v13;
    v34 = v12;
    v15 = *(v40 + 16);
    v29 = *(a1 + *(type metadata accessor for ImageGenerationViewModifier(0) + 68));
    v32 = *(a1 + 24);
    v31 = *(a1 + 32);
    LOBYTE(v40) = v32;
    v41 = v31;

    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B40, &qword_1D2AC9D88);
    sub_1D2AC6A44();
    v26 = *(&v38 + 1);
    v27 = v38;
    v28 = v39;
    v16 = type metadata accessor for _AppExtensionHostView.Configuration(0);
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    v35 = a2;
    sub_1D2A2E5B4(v8, v6, &unk_1EC7043C0, &qword_1D2ACA0B0);
    sub_1D2AC6A14();
    sub_1D2A2E61C(v8, &unk_1EC7043C0, &qword_1D2ACA0B0);
    v17 = &v11[v9[9]];
    v18 = &v11[v9[10]];
    *&v11[v9[6]] = v15;
    type metadata accessor for GPImageEditionView.ViewModel(0);
    sub_1D2A2D3A8(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel, &unk_1D2ACA2D8);

    sub_1D2AC6AD4();
    v11[v9[8]] = v29;
    *v11 = 0;
    *v17 = 0;
    v17[1] = 0;
    v19 = v26;
    *v18 = v27;
    *(v18 + 1) = v19;
    v18[16] = v28;
    sub_1D2A20764(0, &qword_1EC703B48, 0x1E69DCF38);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

    v21 = [ObjCClassFromMetadata appearance];
    [v21 _setUseGlass_];

    v13 = v33;

    v12 = v34;

    LOBYTE(v38) = v32;
    *(&v38 + 1) = v31;
    sub_1D2AC6A24();
    sub_1D2A2D3A8(&qword_1EC703B00, type metadata accessor for GPImageEditionView, &unk_1D2ACA288);
    v22 = v37;
    a2 = v35;
    sub_1D2AC6984();

    sub_1D2A2E044(v11, type metadata accessor for GPImageEditionView);
    (*(v13 + 32))(a2, v22, v12);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  return (*(v13 + 56))(a2, v23, 1, v12);
}

void sub_1D2A24E1C(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = type metadata accessor for ImagePlaygroundConcept(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v306 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7039C8, &unk_1D2AC9900);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v306 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7044B0, &qword_1D2ACA040);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v306 - v15;
  v17 = sub_1D2AC6684();
  v321 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v320 = &v306 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2 == 1)
  {
    v307 = v6;
    v314 = *(a3 + 296);
    v19 = type metadata accessor for ImageGenerationViewModifier(0);
    v309 = *(a3 + *(v19 + 64));
    v21 = *(a3 + 192);
    v20 = *(a3 + 208);
    v22 = *(a3 + 224);
    v23 = *(a3 + 225);
    v312 = v16;
    v313 = v13;
    v311 = v11;
    if (v23 != 1)
    {
      v24 = v21;
      v318 = v21;
      v319 = v20;

      sub_1D2AC6EA4();
      v25 = sub_1D2AC6884();
      sub_1D2AC6324();

      v26 = v320;
      sub_1D2AC6674();
      swift_getAtKeyPath();
      sub_1D2A2D83C(v24, *(&v318 + 1), v319, *(&v319 + 1), v22, 0);
      (*(v321 + 8))(v26, v17);
      v21 = v352;
      v20 = v353;
      LOBYTE(v22) = v354;
    }

    v318 = v21;
    v319 = v20;
    v27 = *(a3 + 56);
    if (*(a3 + 64) == 1)
    {
      v359 = *(a3 + 56);
    }

    else
    {

      sub_1D2AC6EA4();
      v28 = sub_1D2AC6884();
      sub_1D2AC6324();

      v29 = v320;
      sub_1D2AC6674();
      swift_getAtKeyPath();
      sub_1D2A2D6F4(v27, 0);
      (*(v321 + 8))(v29, v17);
      v27 = v359;
    }

    v358 = *(a3 + 168);
    v30 = *(a3 + 120);
    v31 = *(a3 + 152);
    v356 = *(a3 + 136);
    v357 = v31;
    v32 = *(a3 + 88);
    v352 = *(a3 + 72);
    v353 = v32;
    v354 = *(a3 + 104);
    v355 = v30;
    v316 = v27;
    if (v358)
    {
      v33 = *(a3 + 120);
      v348 = *(a3 + 104);
      v349 = v33;
      v34 = *(a3 + 152);
      v350 = *(a3 + 136);
      v351 = v34;
      v35 = *(a3 + 88);
      v346 = *(a3 + 72);
      v347 = v35;
      v328 = *(a3 + 168);
      v326 = v350;
      v327 = v34;
      v322 = v346;
      v323 = v35;
      v324 = v348;
      v325 = v33;
      sub_1D2A2D244(&v322, &v340);
    }

    else
    {

      sub_1D2AC6EA4();
      v36 = sub_1D2AC6884();
      sub_1D2AC6324();

      v27 = v316;
      v37 = v320;
      sub_1D2AC6674();
      swift_getAtKeyPath();
      sub_1D2A2E61C(&v352, &qword_1EC703B08, &qword_1D2AC9CD8);
      (*(v321 + 8))(v37, v17);
    }

    v310 = v10;
    v317 = v17;
    v308 = *(v19 + 60);
    v322 = v346;
    v323 = v347;
    v324 = v348;
    v325 = v349;
    v326 = v350;
    v327 = v351;
    type metadata accessor for GPHostSideConnectionManager(0);
    swift_allocObject();
    v38 = sub_1D2A5FB60(0, 0, 0, 0);
    v39 = v38 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_responsibleAuditToken;
    v40 = v319;
    *v39 = v318;
    *(v39 + 16) = v40;
    *(v39 + 32) = v22 & 1;
    *(v38 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_allowedGenerationStyles) = v27;

    v41 = *(v27 + 2);
    p_ivars = &ImagePlaygroundViewController.ivars;
    v315 = a3;
    if (!v41)
    {

      goto LABEL_26;
    }

    v43 = swift_allocObject();
    *(v43 + 16) = v27;
    v44 = swift_allocObject();
    swift_weakInit();
    v45 = swift_allocObject();
    v45[2] = v44;
    v45[3] = sub_1D2A571CC;
    v45[4] = 0;
    v45[5] = sub_1D2A2DFD4;
    v306 = v45;
    v45[6] = v43;
    swift_getKeyPath();
    *&v340 = v38;
    v46 = sub_1D2A2D3A8(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);
    swift_bridgeObjectRetain_n();
    *&v318 = v43;

    *&v319 = v46;
    sub_1D2AC6094();

    v47 = *(v38 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
    if (v47)
    {
      *&v342 = sub_1D2A571CC;
      *(&v342 + 1) = 0;
      *&v340 = MEMORY[0x1E69E9820];
      *(&v340 + 1) = 1107296256;
      *&v341 = sub_1D2A44320;
      *(&v341 + 1) = &block_descriptor_181;
      v48 = _Block_copy(&v340);
      v49 = v47;

      v50 = [v49 remoteObjectProxyWithErrorHandler_];
      _Block_release(v48);

      sub_1D2AC6FF4();
      swift_unknownObjectRelease();
      sub_1D2A206F8(&v334, v339);
      sub_1D2A206F8(v339, &v340);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
      swift_dynamicCast();
      v51 = v334;
      if (v334)
      {
        sub_1D2A571EC(v334, v316);

LABEL_25:
        p_ivars = &ImagePlaygroundViewController.ivars;
LABEL_26:
        v69 = (v38 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle);
        v70 = *(v38 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 16);
        v339[0] = *(v38 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle);
        v339[1] = v70;
        v71 = *(v38 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 80);
        v73 = *(v38 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 32);
        v72 = *(v38 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 48);
        v339[4] = *(v38 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 64);
        v339[5] = v71;
        v339[2] = v73;
        v339[3] = v72;
        memmove((v38 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle), &v322, 0x60uLL);
        sub_1D2A2D244(&v322, &v334);
        sub_1D2A2E61C(v339, &qword_1EC7044F0, &unk_1D2AC9D50);
        v74 = v69[1];
        v340 = *v69;
        v341 = v74;
        v75 = v69[5];
        v77 = v69[2];
        v76 = v69[3];
        v344 = v69[4];
        v345 = v75;
        v342 = v77;
        v343 = v76;
        v78 = *(&v340 + 1);
        if (!*(&v340 + 1))
        {
          goto LABEL_41;
        }

        v79 = v340;
        v80 = v69[4];
        v362 = v69[3];
        v363 = v80;
        v364 = v69[5];
        v81 = v69[2];
        v360 = v69[1];
        v361 = v81;
        v82 = swift_allocObject();
        v306 = v79;
        *(v82 + 16) = v79;
        *(v82 + 24) = v78;
        v83 = v363;
        *(v82 + 64) = v362;
        *(v82 + 80) = v83;
        *(v82 + 96) = v364;
        v84 = v361;
        *(v82 + 32) = v360;
        *(v82 + 48) = v84;
        v85 = swift_allocObject();
        swift_weakInit();
        v86 = swift_allocObject();
        v86[2] = v85;
        v86[3] = sub_1D2A57398;
        v86[4] = 0;
        v86[5] = sub_1D2A2E6B0;
        v86[6] = v82;
        swift_getKeyPath();
        v87 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager___observationRegistrar;
        v329 = v38;
        sub_1D2A2E5B4(&v340, &v334, &qword_1EC7044F0, &unk_1D2AC9D50);
        sub_1D2A2E5B4(&v340, &v334, &qword_1EC7044F0, &unk_1D2AC9D50);
        v88 = sub_1D2A2D3A8(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);

        *&v319 = v87;
        *&v318 = v88;
        sub_1D2AC6094();

        v89 = *(v38 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
        if (v89)
        {
          v337 = sub_1D2A57398;
          v338 = 0;
          *&v334 = MEMORY[0x1E69E9820];
          *(&v334 + 1) = 1107296256;
          v335 = sub_1D2A44320;
          v336 = &block_descriptor_283;
          v90 = _Block_copy(&v334);
          v91 = v89;

          v92 = [v91 remoteObjectProxyWithErrorHandler_];
          _Block_release(v90);

          sub_1D2AC6FF4();
          swift_unknownObjectRelease();
          sub_1D2A206F8(v332, v333);
          sub_1D2A206F8(v333, &v334);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
          swift_dynamicCast();
          v93 = *&v332[0];
          if (*&v332[0])
          {
            v94 = sub_1D2AC6BF4();
            [v93 setSelectedGenerationStyle_];

LABEL_40:
            sub_1D2A2E61C(&v340, &qword_1EC7044F0, &unk_1D2AC9D50);
            a3 = v315;
            p_ivars = (&ImagePlaygroundViewController + 48);
LABEL_41:
            v111 = v314;
            v112 = *(v314 + 16);
            v113 = MEMORY[0x1E69E7CC0];
            if (v112)
            {
              *&v334 = MEMORY[0x1E69E7CC0];
              sub_1D2AC7104();
              v114 = v111 + ((*(v307 + 80) + 32) & ~*(v307 + 80));
              v115 = *(v307 + 72);
              do
              {
                sub_1D2A2DFDC(v114, v8, type metadata accessor for ImagePlaygroundConcept);
                sub_1D2A49C68(0);
                sub_1D2A2E044(v8, type metadata accessor for ImagePlaygroundConcept);
                sub_1D2AC70E4();
                sub_1D2AC7114();
                sub_1D2AC7124();
                sub_1D2AC70F4();
                v114 += v115;
                --v112;
              }

              while (v112);
              v113 = v334;
              p_ivars = &ImagePlaygroundViewController.ivars;
            }

            v116 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_promptElements;
            *(v38 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_promptElements) = v113;

            v117 = *(v38 + v116);
            v118 = swift_allocObject();
            *(v118 + 16) = v117;
            v119 = swift_allocObject();
            swift_weakInit();
            v120 = swift_allocObject();
            v120[2] = v119;
            v120[3] = sub_1D2A575AC;
            v120[4] = 0;
            v120[5] = sub_1D2A2E0A4;
            v120[6] = v118;
            swift_getKeyPath();
            v121 = p_ivars[475];
            *&v334 = v38;
            v122 = sub_1D2A2D3A8(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);
            v307 = v117;
            swift_bridgeObjectRetain_n();

            *&v319 = v121;
            *&v318 = v122;
            sub_1D2AC6094();

            v314 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection;
            v123 = *(v38 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
            if (v123)
            {
              v337 = sub_1D2A575AC;
              v338 = 0;
              *&v334 = MEMORY[0x1E69E9820];
              *(&v334 + 1) = 1107296256;
              v335 = sub_1D2A44320;
              v336 = &block_descriptor_196;
              v124 = _Block_copy(&v334);
              v125 = v123;

              v126 = [v125 remoteObjectProxyWithErrorHandler_];
              _Block_release(v124);

              sub_1D2AC6FF4();
              swift_unknownObjectRelease();
              sub_1D2A206F8(v332, v333);
              sub_1D2A206F8(v333, &v334);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
              swift_dynamicCast();
              v127 = *&v332[0];
              if (*&v332[0])
              {
                sub_1D2A20764(0, &qword_1EC703B30, &off_1E84033C0);
                v128 = sub_1D2AC6D24();
                [v127 setPromptElements_];

                v129 = swift_allocObject();
                *(v129 + 16) = 0;
                v130 = v309;
                if (!v309)
                {
                  v309 = 0;
                  goto LABEL_62;
                }

                goto LABEL_60;
              }
            }

            else
            {
              sub_1D2A2DF64();
              v131 = swift_allocError();
              if (qword_1EC7035A0 != -1)
              {
                swift_once();
              }

              v132 = sub_1D2AC63B4();
              __swift_project_value_buffer(v132, qword_1EC7040C0);
              v133 = v131;
              v134 = sub_1D2AC6394();
              v135 = sub_1D2AC6EB4();

              if (os_log_type_enabled(v134, v135))
              {
                v136 = swift_slowAlloc();
                v137 = swift_slowAlloc();
                *v136 = 138412290;
                v138 = v131;
                v139 = _swift_stdlib_bridgeErrorToNSError();
                *(v136 + 4) = v139;
                *v137 = v139;
                _os_log_impl(&dword_1D2A17000, v134, v135, "Could not send prompt elements to remote view: %@. May not be an error if the connection is not established yet, will retry.", v136, 0xCu);
                sub_1D2A2E61C(v137, &unk_1EC704400, &unk_1D2ADA9A0);
                MEMORY[0x1D38A8460](v137, -1, -1);
                MEMORY[0x1D38A8460](v136, -1, -1);
              }
            }

            v140 = swift_allocObject();
            *(v140 + 16) = sub_1D2A2E6B4;
            *(v140 + 24) = v120;
            swift_getKeyPath();
            *&v334 = v38;

            sub_1D2AC6094();

            *&v334 = v38;
            swift_getKeyPath();
            sub_1D2AC60B4();

            v141 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
            swift_beginAccess();
            v142 = *(v38 + v141);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v38 + v141) = v142;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v142 = sub_1D2A4486C(0, v142[2] + 1, 1, v142);
              *(v38 + v141) = v142;
            }

            v145 = v142[2];
            v144 = v142[3];
            if (v145 >= v144 >> 1)
            {
              v142 = sub_1D2A4486C((v144 > 1), v145 + 1, 1, v142);
            }

            v142[2] = v145 + 1;
            v146 = &v142[2 * v145];
            v146[4] = sub_1D2A2E724;
            v146[5] = v140;
            *(v38 + v141) = v142;
            swift_endAccess();
            *&v334 = v38;
            swift_getKeyPath();
            sub_1D2AC60A4();

            v129 = swift_allocObject();
            *(v129 + 16) = 0;
            v130 = v309;
            if (!v309)
            {
              v309 = 0;
              a3 = v315;
LABEL_62:
              v147 = sub_1D2AC6DD4();
              v148 = v312;
              (*(*(v147 - 8) + 56))(v312, 1, 1, v147);
              v149 = v313;
              sub_1D2A2E5B4(a3 + v308, v313, &qword_1EC7039C8, &unk_1D2AC9900);
              sub_1D2AC6DA4();

              v150 = sub_1D2AC6D94();
              v151 = (*(v310 + 80) + 48) & ~*(v310 + 80);
              v152 = (v311 + v151 + 7) & 0xFFFFFFFFFFFFFFF8;
              v153 = swift_allocObject();
              v154 = MEMORY[0x1E69E85E0];
              v153[2] = v150;
              v153[3] = v154;
              v155 = v309;
              v153[4] = v309;
              v153[5] = v129;
              sub_1D2A2E0AC(v149, v153 + v151);
              *(v153 + v152) = v38;
              v156 = v155;
              sub_1D2A2F088(0, 0, v148, &unk_1D2AC9D68, v153);

              sub_1D2A2DDA8(&v322);

              sub_1D2A2347C(v38);
              v157 = *(a3 + 176);
              if (*(a3 + 184))
              {
                v158 = *(a3 + 176);
                LOBYTE(v334) = *(a3 + 176);
                v159 = v317;
              }

              else
              {

                sub_1D2AC6EA4();
                v160 = sub_1D2AC6884();
                sub_1D2AC6324();

                v161 = v320;
                sub_1D2AC6674();
                swift_getAtKeyPath();
                sub_1D2A19D04(v157, 0);
                v159 = v317;
                (*(v321 + 8))(v161, v317);
                v158 = v334;
              }

              v162 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_personalizationPolicy;
              v163 = *(v38 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_personalizationPolicy);
              if (v158 == 3)
              {
                if (v163 == 3)
                {
                  goto LABEL_87;
                }
              }

              else if (v163 != 3 && v158 == v163)
              {
                goto LABEL_87;
              }

              v164 = *(a3 + 176);
              if (*(a3 + 184) == 1)
              {
                v165 = *(a3 + 176);
                LOBYTE(v329) = *(a3 + 176);
              }

              else
              {

                sub_1D2AC6EA4();
                v166 = sub_1D2AC6884();
                sub_1D2AC6324();

                v167 = v320;
                sub_1D2AC6674();
                swift_getAtKeyPath();
                sub_1D2A19D04(v164, 0);
                (*(v321 + 8))(v167, v159);
                v165 = v329;
              }

              *(v38 + v162) = v165;
              if (v165 != 3)
              {
                v168 = swift_allocObject();
                *(v168 + 16) = v165;
                v169 = swift_allocObject();
                swift_weakInit();
                v170 = swift_allocObject();
                v170[2] = v169;
                v170[3] = sub_1D2A57580;
                v170[4] = 0;
                v170[5] = sub_1D2A2E72C;
                v170[6] = v168;
                swift_getKeyPath();
                *&v334 = v38;

                sub_1D2AC6094();

                v171 = *(v38 + v314);
                if (v171)
                {
                  v337 = sub_1D2A57580;
                  v338 = 0;
                  *&v334 = MEMORY[0x1E69E9820];
                  *(&v334 + 1) = 1107296256;
                  v335 = sub_1D2A44320;
                  v336 = &block_descriptor_266;
                  v172 = _Block_copy(&v334);
                  v173 = v171;

                  v174 = [v173 remoteObjectProxyWithErrorHandler_];
                  _Block_release(v172);

                  sub_1D2AC6FF4();
                  swift_unknownObjectRelease();
                  sub_1D2A206F8(v332, v333);
                  sub_1D2A206F8(v333, &v334);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
                  swift_dynamicCast();
                  v175 = *&v332[0];
                  v159 = v317;
                  if (*&v332[0])
                  {
                    v176 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
                    [v175 setPersonalizationPolicy_];

                    goto LABEL_87;
                  }
                }

                else
                {
                  sub_1D2A2DF64();
                  v177 = swift_allocError();
                  if (qword_1EC7035A0 != -1)
                  {
                    swift_once();
                  }

                  v178 = sub_1D2AC63B4();
                  __swift_project_value_buffer(v178, qword_1EC7040C0);
                  v179 = v177;
                  v180 = sub_1D2AC6394();
                  v181 = sub_1D2AC6EB4();

                  if (os_log_type_enabled(v180, v181))
                  {
                    v182 = swift_slowAlloc();
                    v183 = swift_slowAlloc();
                    *v182 = 138412290;
                    v184 = v177;
                    v185 = _swift_stdlib_bridgeErrorToNSError();
                    *(v182 + 4) = v185;
                    *v183 = v185;
                    _os_log_impl(&dword_1D2A17000, v180, v181, "Could not send personalization policy to remote view: %@. May not be an error if the connection is not established yet, will retry.", v182, 0xCu);
                    sub_1D2A2E61C(v183, &unk_1EC704400, &unk_1D2ADA9A0);
                    MEMORY[0x1D38A8460](v183, -1, -1);
                    MEMORY[0x1D38A8460](v182, -1, -1);
                  }
                }

                v316 = v168;
                v186 = swift_allocObject();
                *(v186 + 16) = sub_1D2A2E6B4;
                *(v186 + 24) = v170;
                swift_getKeyPath();
                *&v334 = v38;

                sub_1D2AC6094();

                *&v334 = v38;
                swift_getKeyPath();
                sub_1D2AC60B4();

                v187 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
                swift_beginAccess();
                v188 = *(v38 + v187);
                v189 = swift_isUniquelyReferenced_nonNull_native();
                *(v38 + v187) = v188;
                if ((v189 & 1) == 0)
                {
                  v188 = sub_1D2A4486C(0, v188[2] + 1, 1, v188);
                  *(v38 + v187) = v188;
                }

                v191 = v188[2];
                v190 = v188[3];
                if (v191 >= v190 >> 1)
                {
                  v188 = sub_1D2A4486C((v190 > 1), v191 + 1, 1, v188);
                }

                v188[2] = v191 + 1;
                v192 = &v188[2 * v191];
                v192[4] = sub_1D2A2E724;
                v192[5] = v186;
                *(v38 + v187) = v188;
                swift_endAccess();
                *&v334 = v38;
                swift_getKeyPath();
                sub_1D2AC60A4();

                v159 = v317;
              }

LABEL_87:
              v194 = *(a3 + 232);
              v193 = *(a3 + 240);
              v195 = *(a3 + 248);
              if (*(a3 + 256) == 1)
              {
                *&v334 = *(a3 + 232);
                *(&v334 + 1) = v193;
                v335 = v195;
              }

              else
              {

                sub_1D2AC6EA4();
                v196 = sub_1D2AC6884();
                sub_1D2AC6324();

                v197 = v320;
                sub_1D2AC6674();
                swift_getAtKeyPath();
                sub_1D2A2D848(v194, v193, v195, 0);
                (*(v321 + 8))(v197, v159);
                v193 = *(&v334 + 1);
                v195 = v335;
              }

              v198 = v38 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_previewAspectRatio;
              if ((*(v38 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_previewAspectRatio + 24) & 1) != 0 || *&v334 != *v198 || v193 != *(v198 + 8) || v195 != *(v198 + 16))
              {
                v200 = *(a3 + 232);
                v199 = *(a3 + 240);
                v201 = *(a3 + 248);
                if (*(a3 + 256) == 1)
                {
                  v329 = *(a3 + 232);
                  v330 = v199;
                  v331 = v201;
                }

                else
                {

                  sub_1D2AC6EA4();
                  v202 = sub_1D2AC6884();
                  sub_1D2AC6324();

                  v203 = v320;
                  sub_1D2AC6674();
                  swift_getAtKeyPath();
                  sub_1D2A2D848(v200, v199, v201, 0);
                  (*(v321 + 8))(v203, v159);
                  v200 = v329;
                  v199 = v330;
                  v201 = v331;
                }

                *v198 = v200;
                *(v198 + 8) = v199;
                *(v198 + 16) = v201;
                *(v198 + 24) = 0;
                v204 = swift_allocObject();
                *(v204 + 2) = v200;
                *(v204 + 3) = v199;
                *(v204 + 4) = v201;
                v205 = swift_allocObject();
                swift_weakInit();
                v206 = swift_allocObject();
                v206[2] = v205;
                v206[3] = sub_1D2A576E0;
                v206[4] = 0;
                v206[5] = sub_1D2A2E6C0;
                v206[6] = v204;
                swift_getKeyPath();
                *&v334 = v38;

                sub_1D2AC6094();

                v207 = *(v38 + v314);
                if (v207)
                {
                  v337 = sub_1D2A576E0;
                  v338 = 0;
                  *&v334 = MEMORY[0x1E69E9820];
                  *(&v334 + 1) = 1107296256;
                  v335 = sub_1D2A44320;
                  v336 = &block_descriptor_250;
                  v208 = _Block_copy(&v334);
                  v209 = v207;

                  v210 = [v209 remoteObjectProxyWithErrorHandler_];
                  _Block_release(v208);

                  sub_1D2AC6FF4();
                  swift_unknownObjectRelease();
                  sub_1D2A206F8(v332, v333);
                  sub_1D2A206F8(v333, &v334);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
                  swift_dynamicCast();
                  v211 = *&v332[0];
                  v159 = v317;
                  if (*&v332[0])
                  {
                    sub_1D2A20764(0, &qword_1EC7037F8, 0x1E696AD98);
                    v212 = sub_1D2AC6F84();
                    [v211 setPreviewAspectRatio_];

                    goto LABEL_110;
                  }
                }

                else
                {
                  sub_1D2A2DF64();
                  v213 = swift_allocError();
                  if (qword_1EC7035A0 != -1)
                  {
                    swift_once();
                  }

                  v214 = sub_1D2AC63B4();
                  __swift_project_value_buffer(v214, qword_1EC7040C0);
                  v215 = v213;
                  v216 = sub_1D2AC6394();
                  v217 = sub_1D2AC6EB4();

                  if (os_log_type_enabled(v216, v217))
                  {
                    v218 = swift_slowAlloc();
                    v219 = swift_slowAlloc();
                    *v218 = 138412290;
                    v220 = v213;
                    v221 = _swift_stdlib_bridgeErrorToNSError();
                    *(v218 + 4) = v221;
                    *v219 = v221;
                    _os_log_impl(&dword_1D2A17000, v216, v217, "Could not send display aspect ratio to remote view: %@. May not be an error if the connection is not established yet, will retry.", v218, 0xCu);
                    sub_1D2A2E61C(v219, &unk_1EC704400, &unk_1D2ADA9A0);
                    MEMORY[0x1D38A8460](v219, -1, -1);
                    MEMORY[0x1D38A8460](v218, -1, -1);
                  }
                }

                v316 = v204;
                v222 = swift_allocObject();
                *(v222 + 16) = sub_1D2A2E6B4;
                *(v222 + 24) = v206;
                swift_getKeyPath();
                *&v334 = v38;

                sub_1D2AC6094();

                *&v334 = v38;
                swift_getKeyPath();
                sub_1D2AC60B4();

                v223 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
                swift_beginAccess();
                v224 = *(v38 + v223);
                v225 = swift_isUniquelyReferenced_nonNull_native();
                *(v38 + v223) = v224;
                if ((v225 & 1) == 0)
                {
                  v224 = sub_1D2A4486C(0, v224[2] + 1, 1, v224);
                  *(v38 + v223) = v224;
                }

                v227 = v224[2];
                v226 = v224[3];
                if (v227 >= v226 >> 1)
                {
                  v224 = sub_1D2A4486C((v226 > 1), v227 + 1, 1, v224);
                }

                v224[2] = v227 + 1;
                v228 = &v224[2 * v227];
                v228[4] = sub_1D2A2E724;
                v228[5] = v222;
                *(v38 + v223) = v224;
                swift_endAccess();
                *&v334 = v38;
                swift_getKeyPath();
                sub_1D2AC60A4();

                v159 = v317;
              }

LABEL_110:
              v229 = *(a3 + 264);
              if (*(a3 + 272) == 1)
              {
                v230 = v229;
                if (!v229)
                {
LABEL_133:
                  v271 = *(a3 + 280);
                  if (*(a3 + 288) == 1)
                  {
                    v272 = *(a3 + 280);
                    LOBYTE(v334) = *(a3 + 280);
                  }

                  else
                  {

                    sub_1D2AC6EA4();
                    v273 = sub_1D2AC6884();
                    sub_1D2AC6324();

                    v274 = v320;
                    sub_1D2AC6674();
                    swift_getAtKeyPath();
                    sub_1D2A19D04(v271, 0);
                    (*(v321 + 8))(v274, v159);
                    v272 = v334;
                  }

                  v275 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_imageImportPolicy;
                  v276 = *(v38 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_imageImportPolicy);
                  if (v272 == 3)
                  {
                    if (v276 == 3)
                    {
LABEL_159:

                      return;
                    }
                  }

                  else if (v276 != 3 && v272 == v276)
                  {
                    goto LABEL_159;
                  }

                  v277 = *(a3 + 280);
                  if (*(a3 + 288) == 1)
                  {
                    v278 = *(a3 + 280);
                    LOBYTE(v329) = *(a3 + 280);
                  }

                  else
                  {

                    sub_1D2AC6EA4();
                    v279 = sub_1D2AC6884();
                    sub_1D2AC6324();

                    v280 = v320;
                    sub_1D2AC6674();
                    swift_getAtKeyPath();
                    sub_1D2A19D04(v277, 0);
                    (*(v321 + 8))(v280, v159);
                    v278 = v329;
                  }

                  *(v38 + v275) = v278;
                  if (v278 != 3)
                  {
                    v281 = swift_allocObject();
                    *(v281 + 16) = v278;
                    v282 = swift_allocObject();
                    swift_weakInit();
                    v283 = swift_allocObject();
                    v283[2] = v282;
                    v283[3] = sub_1D2A577B4;
                    v283[4] = 0;
                    v283[5] = sub_1D2A2E728;
                    v283[6] = v281;
                    swift_getKeyPath();
                    *&v334 = v38;

                    sub_1D2AC6094();

                    v284 = *(v38 + v314);
                    if (v284)
                    {
                      v337 = sub_1D2A577B4;
                      v338 = 0;
                      *&v334 = MEMORY[0x1E69E9820];
                      *(&v334 + 1) = 1107296256;
                      v335 = sub_1D2A44320;
                      v336 = &block_descriptor_219;
                      v285 = _Block_copy(&v334);
                      v286 = v284;

                      v287 = [v286 remoteObjectProxyWithErrorHandler_];
                      _Block_release(v285);

                      sub_1D2AC6FF4();
                      swift_unknownObjectRelease();
                      sub_1D2A206F8(v332, v333);
                      sub_1D2A206F8(v333, &v334);
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
                      swift_dynamicCast();
                      v288 = *&v332[0];
                      if (*&v332[0])
                      {
                        v289 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
                        [v288 setImageImportPolicy_];

                        return;
                      }
                    }

                    else
                    {
                      sub_1D2A2DF64();
                      v290 = swift_allocError();
                      if (qword_1EC7035A0 != -1)
                      {
                        swift_once();
                      }

                      v291 = sub_1D2AC63B4();
                      __swift_project_value_buffer(v291, qword_1EC7040C0);
                      v292 = v290;
                      v293 = sub_1D2AC6394();
                      v294 = sub_1D2AC6EB4();

                      if (os_log_type_enabled(v293, v294))
                      {
                        v295 = swift_slowAlloc();
                        v296 = swift_slowAlloc();
                        *v295 = 138412290;
                        v297 = v290;
                        v298 = _swift_stdlib_bridgeErrorToNSError();
                        *(v295 + 4) = v298;
                        *v296 = v298;
                        _os_log_impl(&dword_1D2A17000, v293, v294, "Could not send image import policy to remote view: %@. May not be an error if the connection is not established yet, will retry.", v295, 0xCu);
                        sub_1D2A2E61C(v296, &unk_1EC704400, &unk_1D2ADA9A0);
                        MEMORY[0x1D38A8460](v296, -1, -1);
                        MEMORY[0x1D38A8460](v295, -1, -1);
                      }
                    }

                    v299 = swift_allocObject();
                    *(v299 + 16) = sub_1D2A2E6B4;
                    *(v299 + 24) = v283;
                    swift_getKeyPath();
                    *&v334 = v38;

                    sub_1D2AC6094();

                    *&v334 = v38;
                    swift_getKeyPath();
                    sub_1D2AC60B4();

                    v300 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
                    swift_beginAccess();
                    v301 = *(v38 + v300);
                    v302 = swift_isUniquelyReferenced_nonNull_native();
                    *(v38 + v300) = v301;
                    if ((v302 & 1) == 0)
                    {
                      v301 = sub_1D2A4486C(0, v301[2] + 1, 1, v301);
                      *(v38 + v300) = v301;
                    }

                    v304 = v301[2];
                    v303 = v301[3];
                    if (v304 >= v303 >> 1)
                    {
                      v301 = sub_1D2A4486C((v303 > 1), v304 + 1, 1, v301);
                    }

                    v301[2] = v304 + 1;
                    v305 = &v301[2 * v304];
                    v305[4] = sub_1D2A2E724;
                    v305[5] = v299;
                    *(v38 + v300) = v301;
                    swift_endAccess();
                    *&v334 = v38;
                    swift_getKeyPath();
                    sub_1D2AC60A4();
                  }

                  goto LABEL_159;
                }
              }

              else
              {

                sub_1D2AC6EA4();
                v231 = sub_1D2AC6884();
                sub_1D2AC6324();

                v232 = v320;
                sub_1D2AC6674();
                swift_getAtKeyPath();
                sub_1D2A2D854(v229, 0);
                (*(v321 + 8))(v232, v159);
                v229 = v334;
                if (!v334)
                {
                  goto LABEL_133;
                }
              }

              v233 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_pregeneratedImage;
              v234 = *(v38 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_pregeneratedImage);
              if (v234)
              {
                v235 = *(v234 + OBJC_IVAR___GPImageXPCWrapper_image);
                type metadata accessor for CGImage(0);
                sub_1D2A2D3A8(&qword_1EC703B20, type metadata accessor for CGImage, &unk_1D2AC92DC);
                v236 = v235;
                v237 = v229;
                v238 = sub_1D2AC60F4();

                if (v238)
                {

                  goto LABEL_133;
                }
              }

              v239 = objc_allocWithZone(type metadata accessor for ImageXPCWrapper());
              v240 = v229;
              v241 = ImageXPCWrapper.init(_:orientation:)(v240, 1);
              v242 = *(v38 + v233);
              *(v38 + v233) = v241;
              v243 = v241;

              if (!v241)
              {

                goto LABEL_133;
              }

              v244 = swift_allocObject();
              *(v244 + 16) = v243;
              v245 = swift_allocObject();
              swift_weakInit();
              v246 = swift_allocObject();
              v246[2] = v245;
              v246[3] = sub_1D2A57784;
              v246[4] = 0;
              v246[5] = sub_1D2A2E354;
              v246[6] = v244;
              swift_getKeyPath();
              *&v334 = v38;
              v316 = v243;

              sub_1D2AC6094();

              v247 = *(v38 + v314);
              if (v247)
              {
                v337 = sub_1D2A57784;
                v338 = 0;
                *&v334 = MEMORY[0x1E69E9820];
                *(&v334 + 1) = 1107296256;
                v335 = sub_1D2A44320;
                v336 = &block_descriptor_234;
                v248 = _Block_copy(&v334);
                v249 = v247;

                v250 = [v249 remoteObjectProxyWithErrorHandler_];
                _Block_release(v248);

                sub_1D2AC6FF4();
                swift_unknownObjectRelease();
                sub_1D2A206F8(v332, v333);
                sub_1D2A206F8(v333, &v334);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
                swift_dynamicCast();
                v251 = *&v332[0];
                if (*&v332[0])
                {
                  v252 = v316;
                  [*&v332[0] setPreGeneratedImage_];

LABEL_132:
                  v159 = v317;
                  goto LABEL_133;
                }
              }

              else
              {
                sub_1D2A2DF64();
                v253 = swift_allocError();
                if (qword_1EC7035A0 != -1)
                {
                  swift_once();
                }

                v254 = sub_1D2AC63B4();
                __swift_project_value_buffer(v254, qword_1EC7040C0);
                v255 = v253;
                v256 = sub_1D2AC6394();
                v257 = sub_1D2AC6EB4();

                if (os_log_type_enabled(v256, v257))
                {
                  v258 = swift_slowAlloc();
                  v259 = swift_slowAlloc();
                  *v258 = 138412290;
                  v260 = v253;
                  v261 = _swift_stdlib_bridgeErrorToNSError();
                  *(v258 + 4) = v261;
                  *v259 = v261;
                  _os_log_impl(&dword_1D2A17000, v256, v257, "Could not send pregenerated image to remote view: %@. May not be an error if the connection is not established yet, will retry.", v258, 0xCu);
                  sub_1D2A2E61C(v259, &unk_1EC704400, &unk_1D2ADA9A0);
                  MEMORY[0x1D38A8460](v259, -1, -1);
                  MEMORY[0x1D38A8460](v258, -1, -1);
                }
              }

              v313 = v240;
              v262 = swift_allocObject();
              *(v262 + 16) = sub_1D2A2E6B4;
              *(v262 + 24) = v246;
              swift_getKeyPath();
              *&v334 = v38;

              sub_1D2AC6094();

              *&v334 = v38;
              swift_getKeyPath();
              sub_1D2AC60B4();

              v263 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
              swift_beginAccess();
              v264 = *(v38 + v263);
              v265 = swift_isUniquelyReferenced_nonNull_native();
              *(v38 + v263) = v264;
              if ((v265 & 1) == 0)
              {
                v264 = sub_1D2A4486C(0, v264[2] + 1, 1, v264);
                *(v38 + v263) = v264;
              }

              v267 = v264[2];
              v266 = v264[3];
              v268 = v313;
              if (v267 >= v266 >> 1)
              {
                v264 = sub_1D2A4486C((v266 > 1), v267 + 1, 1, v264);
              }

              v264[2] = v267 + 1;
              v269 = &v264[2 * v267];
              v269[4] = sub_1D2A2E724;
              v269[5] = v262;
              *(v38 + v263) = v264;
              swift_endAccess();
              *&v334 = v38;
              swift_getKeyPath();
              sub_1D2AC60A4();
              v270 = v316;

              a3 = v315;
              goto LABEL_132;
            }

            a3 = v315;
LABEL_60:
            *&v334 = v130;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B28, &unk_1D2AC9D70);
            swift_allocObject();
            swift_retain_n();
            MEMORY[0x1D38A6980](&v334);
            v309 = sub_1D2AC6534();

            goto LABEL_62;
          }
        }

        else
        {
          sub_1D2A2DF64();
          v95 = swift_allocError();
          if (qword_1EC7035A0 != -1)
          {
            swift_once();
          }

          v96 = sub_1D2AC63B4();
          __swift_project_value_buffer(v96, qword_1EC7040C0);
          v97 = v95;
          v98 = sub_1D2AC6394();
          v99 = sub_1D2AC6EB4();

          if (os_log_type_enabled(v98, v99))
          {
            v100 = swift_slowAlloc();
            v101 = swift_slowAlloc();
            *v100 = 138412290;
            v102 = v95;
            v103 = _swift_stdlib_bridgeErrorToNSError();
            *(v100 + 4) = v103;
            *v101 = v103;
            _os_log_impl(&dword_1D2A17000, v98, v99, "Could not send selected generation style to remote view: %@. May not be an error if the connection is not established yet, will retry.", v100, 0xCu);
            sub_1D2A2E61C(v101, &unk_1EC704400, &unk_1D2ADA9A0);
            MEMORY[0x1D38A8460](v101, -1, -1);
            MEMORY[0x1D38A8460](v100, -1, -1);
          }
        }

        v104 = swift_allocObject();
        *(v104 + 16) = sub_1D2A2E6B4;
        *(v104 + 24) = v86;
        swift_getKeyPath();
        *&v334 = v38;
        v306 = v86;

        sub_1D2AC6094();

        *&v334 = v38;
        swift_getKeyPath();
        sub_1D2AC60B4();

        v105 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
        swift_beginAccess();
        v106 = *(v38 + v105);
        v107 = swift_isUniquelyReferenced_nonNull_native();
        *(v38 + v105) = v106;
        if ((v107 & 1) == 0)
        {
          v106 = sub_1D2A4486C(0, v106[2] + 1, 1, v106);
          *(v38 + v105) = v106;
        }

        v109 = v106[2];
        v108 = v106[3];
        if (v109 >= v108 >> 1)
        {
          v106 = sub_1D2A4486C((v108 > 1), v109 + 1, 1, v106);
        }

        v106[2] = v109 + 1;
        v110 = &v106[2 * v109];
        v110[4] = sub_1D2A2E724;
        v110[5] = v104;
        *(v38 + v105) = v106;
        swift_endAccess();
        *&v334 = v38;
        swift_getKeyPath();
        sub_1D2AC60A4();

        goto LABEL_40;
      }
    }

    else
    {
      sub_1D2A2DF64();
      v52 = swift_allocError();
      if (qword_1EC7035A0 != -1)
      {
        swift_once();
      }

      v53 = sub_1D2AC63B4();
      __swift_project_value_buffer(v53, qword_1EC7040C0);
      v54 = v52;
      v55 = sub_1D2AC6394();
      v56 = sub_1D2AC6EB4();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *v57 = 138412290;
        v59 = v52;
        v60 = _swift_stdlib_bridgeErrorToNSError();
        *(v57 + 4) = v60;
        *v58 = v60;
        _os_log_impl(&dword_1D2A17000, v55, v56, "Could not send allowed generation styles to remote view: %@. May not be an error if the connection is not established yet, will retry.", v57, 0xCu);
        sub_1D2A2E61C(v58, &unk_1EC704400, &unk_1D2ADA9A0);
        MEMORY[0x1D38A8460](v58, -1, -1);
        MEMORY[0x1D38A8460](v57, -1, -1);
      }
    }

    v61 = swift_allocObject();
    v62 = v306;
    *(v61 + 16) = sub_1D2A2E6B4;
    *(v61 + 24) = v62;
    swift_getKeyPath();
    *&v340 = v38;

    sub_1D2AC6094();

    *&v340 = v38;
    swift_getKeyPath();
    sub_1D2AC60B4();

    v63 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
    swift_beginAccess();
    v64 = *(v38 + v63);
    v65 = swift_isUniquelyReferenced_nonNull_native();
    *(v38 + v63) = v64;
    if ((v65 & 1) == 0)
    {
      v64 = sub_1D2A4486C(0, v64[2] + 1, 1, v64);
      *(v38 + v63) = v64;
    }

    v67 = v64[2];
    v66 = v64[3];
    if (v67 >= v66 >> 1)
    {
      v64 = sub_1D2A4486C((v66 > 1), v67 + 1, 1, v64);
    }

    v64[2] = v67 + 1;
    v68 = &v64[2 * v67];
    v68[4] = sub_1D2A2E724;
    v68[5] = v61;
    *(v38 + v63) = v64;
    swift_endAccess();
    *&v340 = v38;
    swift_getKeyPath();
    sub_1D2AC60A4();

    a3 = v315;
    goto LABEL_25;
  }
}

void *sub_1D2A2824C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B10, qword_1D2AC9CE0);
  result = sub_1D2AC6A24();
  if (v5)
  {

    sub_1D2A56C24(v3);
  }

  return result;
}

void *sub_1D2A282D4(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v3 = a2[3];
  __src[2] = a2[2];
  __src[3] = v3;
  v4 = a2[5];
  __src[4] = a2[4];
  __src[5] = v4;
  v5 = a2[1];
  __src[0] = *a2;
  __src[1] = v5;
  v56[0] = *(a3 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B10, qword_1D2AC9CE0);
  result = sub_1D2AC6A24();
  if (*&v55[0])
  {
    v7 = *(*&v55[0] + 16);

    v8 = (v7 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle);
    v9 = *(v7 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 16);
    v55[0] = *(v7 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle);
    v55[1] = v9;
    v10 = *(v7 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 80);
    v12 = *(v7 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 32);
    v11 = *(v7 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 48);
    v55[4] = *(v7 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 64);
    v55[5] = v10;
    v55[2] = v12;
    v55[3] = v11;
    memmove((v7 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle), __src, 0x60uLL);
    sub_1D2A2D244(__src, &aBlock);
    sub_1D2A2E61C(v55, &qword_1EC7044F0, &unk_1D2AC9D50);
    v13 = v8[1];
    v56[0] = *v8;
    v56[1] = v13;
    v14 = v8[5];
    v16 = v8[2];
    v15 = v8[3];
    v56[4] = v8[4];
    v56[5] = v14;
    v56[2] = v16;
    v56[3] = v15;
    v17 = *(&v56[0] + 1);
    if (!*(&v56[0] + 1))
    {
    }

    v18 = *&v56[0];
    v19 = v8[4];
    v59 = v8[3];
    v60 = v19;
    v61 = v8[5];
    v20 = v8[2];
    v57 = v8[1];
    v58 = v20;
    v21 = swift_allocObject();
    *(v21 + 16) = v18;
    *(v21 + 24) = v17;
    v22 = v60;
    *(v21 + 64) = v59;
    *(v21 + 80) = v22;
    *(v21 + 96) = v61;
    v23 = v58;
    *(v21 + 32) = v57;
    *(v21 + 48) = v23;
    v24 = swift_allocObject();
    swift_weakInit();
    v25 = swift_allocObject();
    v25[2] = v24;
    v25[3] = sub_1D2A57398;
    v25[4] = 0;
    v25[5] = sub_1D2A2DFCC;
    v25[6] = v21;
    swift_getKeyPath();
    sub_1D2A2E5B4(v56, &aBlock, &qword_1EC7044F0, &unk_1D2AC9D50);
    sub_1D2A2E5B4(v56, &aBlock, &qword_1EC7044F0, &unk_1D2AC9D50);
    sub_1D2A2D3A8(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);

    sub_1D2AC6094();

    v26 = *(v7 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
    if (v26)
    {
      v53 = sub_1D2A57398;
      v54 = 0;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v51 = sub_1D2A44320;
      v52 = &block_descriptor_166;
      v27 = _Block_copy(&aBlock);
      v28 = v26;

      v29 = [v28 remoteObjectProxyWithErrorHandler_];
      _Block_release(v27);

      sub_1D2AC6FF4();
      swift_unknownObjectRelease();
      sub_1D2A206F8(&v48, v49);
      sub_1D2A206F8(v49, &aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
      swift_dynamicCast();
      v30 = v48;
      if (v48)
      {
        v31 = sub_1D2AC6BF4();
        [v30 setSelectedGenerationStyle_];

        return sub_1D2A2E61C(v56, &qword_1EC7044F0, &unk_1D2AC9D50);
      }
    }

    else
    {
      sub_1D2A2DF64();
      v32 = swift_allocError();
      if (qword_1EC7035A0 != -1)
      {
        swift_once();
      }

      v33 = sub_1D2AC63B4();
      __swift_project_value_buffer(v33, qword_1EC7040C0);
      v34 = v32;
      v35 = sub_1D2AC6394();
      v36 = sub_1D2AC6EB4();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *v37 = 138412290;
        v39 = v32;
        v40 = _swift_stdlib_bridgeErrorToNSError();
        *(v37 + 4) = v40;
        *v38 = v40;
        _os_log_impl(&dword_1D2A17000, v35, v36, "Could not send selected generation style to remote view: %@. May not be an error if the connection is not established yet, will retry.", v37, 0xCu);
        sub_1D2A2E61C(v38, &unk_1EC704400, &unk_1D2ADA9A0);
        MEMORY[0x1D38A8460](v38, -1, -1);
        MEMORY[0x1D38A8460](v37, -1, -1);
      }
    }

    v41 = swift_allocObject();
    *(v41 + 16) = sub_1D2A2E6B4;
    *(v41 + 24) = v25;
    swift_getKeyPath();
    *&aBlock = v7;

    sub_1D2AC6094();

    *&aBlock = v7;
    swift_getKeyPath();
    sub_1D2AC60B4();

    v42 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
    swift_beginAccess();
    v43 = *(v7 + v42);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v7 + v42) = v43;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v43 = sub_1D2A4486C(0, v43[2] + 1, 1, v43);
      *(v7 + v42) = v43;
    }

    v46 = v43[2];
    v45 = v43[3];
    if (v46 >= v45 >> 1)
    {
      v43 = sub_1D2A4486C((v45 > 1), v46 + 1, 1, v43);
    }

    v43[2] = v46 + 1;
    v47 = &v43[2 * v46];
    v47[4] = sub_1D2A2E724;
    v47[5] = v41;
    *(v7 + v42) = v43;
    swift_endAccess();
    *&aBlock = v7;
    swift_getKeyPath();
    sub_1D2AC60A4();

    return sub_1D2A2E61C(v56, &qword_1EC7044F0, &unk_1D2AC9D50);
  }

  return result;
}

void sub_1D2A289C8(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  v30 = *(a3 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B10, qword_1D2AC9CE0);
  sub_1D2AC6A24();
  if (*&v36[0])
  {
    v4 = *(*&v36[0] + 16);

    *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_personalizationPolicy) = v3;
    if (v3 != 3)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v3;
      v6 = swift_allocObject();
      swift_weakInit();
      v7 = swift_allocObject();
      v7[2] = v6;
      v7[3] = sub_1D2A57580;
      v7[4] = 0;
      v7[5] = sub_1D2A2DFC4;
      v7[6] = v5;
      swift_getKeyPath();
      *&v30 = v4;
      sub_1D2A2D3A8(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);

      sub_1D2AC6094();

      v8 = *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
      if (v8)
      {
        v33 = sub_1D2A57580;
        v34 = 0;
        *&v30 = MEMORY[0x1E69E9820];
        *(&v30 + 1) = 1107296256;
        v31 = sub_1D2A44320;
        v32 = &block_descriptor_151;
        v9 = _Block_copy(&v30);
        v10 = v8;

        v11 = [v10 remoteObjectProxyWithErrorHandler_];
        _Block_release(v9);

        sub_1D2AC6FF4();
        swift_unknownObjectRelease();
        sub_1D2A206F8(&v35, v36);
        sub_1D2A206F8(v36, &v30);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
        swift_dynamicCast();
        v12 = v35;
        if (v35)
        {
          v13 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
          [v12 setPersonalizationPolicy_];

          return;
        }
      }

      else
      {
        sub_1D2A2DF64();
        v14 = swift_allocError();
        if (qword_1EC7035A0 != -1)
        {
          swift_once();
        }

        v15 = sub_1D2AC63B4();
        __swift_project_value_buffer(v15, qword_1EC7040C0);
        v16 = v14;
        v17 = sub_1D2AC6394();
        v18 = sub_1D2AC6EB4();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          *v19 = 138412290;
          v21 = v14;
          v22 = _swift_stdlib_bridgeErrorToNSError();
          *(v19 + 4) = v22;
          *v20 = v22;
          _os_log_impl(&dword_1D2A17000, v17, v18, "Could not send personalization policy to remote view: %@. May not be an error if the connection is not established yet, will retry.", v19, 0xCu);
          sub_1D2A2E61C(v20, &unk_1EC704400, &unk_1D2ADA9A0);
          MEMORY[0x1D38A8460](v20, -1, -1);
          MEMORY[0x1D38A8460](v19, -1, -1);
        }
      }

      v23 = swift_allocObject();
      *(v23 + 16) = sub_1D2A2E6B4;
      *(v23 + 24) = v7;
      swift_getKeyPath();
      *&v30 = v4;

      sub_1D2AC6094();

      *&v30 = v4;
      swift_getKeyPath();
      sub_1D2AC60B4();

      v24 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
      swift_beginAccess();
      v25 = *(v4 + v24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + v24) = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_1D2A4486C(0, v25[2] + 1, 1, v25);
        *(v4 + v24) = v25;
      }

      v28 = v25[2];
      v27 = v25[3];
      if (v28 >= v27 >> 1)
      {
        v25 = sub_1D2A4486C((v27 > 1), v28 + 1, 1, v25);
      }

      v25[2] = v28 + 1;
      v29 = &v25[2 * v28];
      v29[4] = sub_1D2A2E724;
      v29[5] = v23;
      *(v4 + v24) = v25;
      swift_endAccess();
      *&v30 = v4;
      swift_getKeyPath();
      sub_1D2AC60A4();
    }
  }
}

void sub_1D2A28FB0(uint64_t a1, double *a2, uint64_t a3)
{
  v4 = *a2;
  v3 = *(a2 + 1);
  v5 = *(a2 + 2);
  v33 = *(a3 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B10, qword_1D2AC9CE0);
  sub_1D2AC6A24();
  if (*&v39[0])
  {
    v6 = *(*&v39[0] + 16);

    v7 = v6 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_previewAspectRatio;
    *v7 = v4;
    *(v7 + 8) = v3;
    *(v7 + 16) = v5;
    *(v7 + 24) = 0;
    v8 = swift_allocObject();
    v8[2] = v4;
    v8[3] = v3;
    v8[4] = v5;
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = sub_1D2A576E0;
    v10[4] = 0;
    v10[5] = sub_1D2A2DFB8;
    v10[6] = v8;
    swift_getKeyPath();
    *&v33 = v6;
    sub_1D2A2D3A8(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);

    sub_1D2AC6094();

    v11 = *(v6 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
    if (v11)
    {
      v36 = sub_1D2A576E0;
      v37 = 0;
      *&v33 = MEMORY[0x1E69E9820];
      *(&v33 + 1) = 1107296256;
      v34 = sub_1D2A44320;
      v35 = &block_descriptor_136;
      v12 = _Block_copy(&v33);
      v13 = v11;

      v14 = [v13 remoteObjectProxyWithErrorHandler_];
      _Block_release(v12);

      sub_1D2AC6FF4();
      swift_unknownObjectRelease();
      sub_1D2A206F8(&v38, v39);
      sub_1D2A206F8(v39, &v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
      swift_dynamicCast();
      v15 = v38;
      if (v38)
      {
        sub_1D2A20764(0, &qword_1EC7037F8, 0x1E696AD98);
        v16 = sub_1D2AC6F84();
        [v15 setPreviewAspectRatio_];

        return;
      }
    }

    else
    {
      sub_1D2A2DF64();
      v17 = swift_allocError();
      if (qword_1EC7035A0 != -1)
      {
        swift_once();
      }

      v18 = sub_1D2AC63B4();
      __swift_project_value_buffer(v18, qword_1EC7040C0);
      v19 = v17;
      v20 = sub_1D2AC6394();
      v21 = sub_1D2AC6EB4();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138412290;
        v24 = v17;
        v25 = _swift_stdlib_bridgeErrorToNSError();
        *(v22 + 4) = v25;
        *v23 = v25;
        _os_log_impl(&dword_1D2A17000, v20, v21, "Could not send display aspect ratio to remote view: %@. May not be an error if the connection is not established yet, will retry.", v22, 0xCu);
        sub_1D2A2E61C(v23, &unk_1EC704400, &unk_1D2ADA9A0);
        MEMORY[0x1D38A8460](v23, -1, -1);
        MEMORY[0x1D38A8460](v22, -1, -1);
      }
    }

    v26 = swift_allocObject();
    *(v26 + 16) = sub_1D2A2E6B4;
    *(v26 + 24) = v10;
    swift_getKeyPath();
    *&v33 = v6;

    sub_1D2AC6094();

    *&v33 = v6;
    swift_getKeyPath();
    sub_1D2AC60B4();

    v27 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
    swift_beginAccess();
    v28 = *(v6 + v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + v27) = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v28 = sub_1D2A4486C(0, v28[2] + 1, 1, v28);
      *(v6 + v27) = v28;
    }

    v31 = v28[2];
    v30 = v28[3];
    if (v31 >= v30 >> 1)
    {
      v28 = sub_1D2A4486C((v30 > 1), v31 + 1, 1, v28);
    }

    v28[2] = v31 + 1;
    v32 = &v28[2 * v31];
    v32[4] = sub_1D2A2E724;
    v32[5] = v26;
    *(v6 + v27) = v28;
    swift_endAccess();
    *&v33 = v6;
    swift_getKeyPath();
    sub_1D2AC60A4();
  }
}

void sub_1D2A295B0(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  v30 = *(a3 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B10, qword_1D2AC9CE0);
  sub_1D2AC6A24();
  if (*&v36[0])
  {
    v4 = *(*&v36[0] + 16);

    *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_imageImportPolicy) = v3;
    if (v3 != 3)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v3;
      v6 = swift_allocObject();
      swift_weakInit();
      v7 = swift_allocObject();
      v7[2] = v6;
      v7[3] = sub_1D2A577B4;
      v7[4] = 0;
      v7[5] = sub_1D2A2DF40;
      v7[6] = v5;
      swift_getKeyPath();
      *&v30 = v4;
      sub_1D2A2D3A8(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);

      sub_1D2AC6094();

      v8 = *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
      if (v8)
      {
        v33 = sub_1D2A577B4;
        v34 = 0;
        *&v30 = MEMORY[0x1E69E9820];
        *(&v30 + 1) = 1107296256;
        v31 = sub_1D2A44320;
        v32 = &block_descriptor;
        v9 = _Block_copy(&v30);
        v10 = v8;

        v11 = [v10 remoteObjectProxyWithErrorHandler_];
        _Block_release(v9);

        sub_1D2AC6FF4();
        swift_unknownObjectRelease();
        sub_1D2A206F8(&v35, v36);
        sub_1D2A206F8(v36, &v30);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
        swift_dynamicCast();
        v12 = v35;
        if (v35)
        {
          v13 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
          [v12 setImageImportPolicy_];

          return;
        }
      }

      else
      {
        sub_1D2A2DF64();
        v14 = swift_allocError();
        if (qword_1EC7035A0 != -1)
        {
          swift_once();
        }

        v15 = sub_1D2AC63B4();
        __swift_project_value_buffer(v15, qword_1EC7040C0);
        v16 = v14;
        v17 = sub_1D2AC6394();
        v18 = sub_1D2AC6EB4();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          *v19 = 138412290;
          v21 = v14;
          v22 = _swift_stdlib_bridgeErrorToNSError();
          *(v19 + 4) = v22;
          *v20 = v22;
          _os_log_impl(&dword_1D2A17000, v17, v18, "Could not send image import policy to remote view: %@. May not be an error if the connection is not established yet, will retry.", v19, 0xCu);
          sub_1D2A2E61C(v20, &unk_1EC704400, &unk_1D2ADA9A0);
          MEMORY[0x1D38A8460](v20, -1, -1);
          MEMORY[0x1D38A8460](v19, -1, -1);
        }
      }

      v23 = swift_allocObject();
      *(v23 + 16) = sub_1D2A2DF48;
      *(v23 + 24) = v7;
      swift_getKeyPath();
      *&v30 = v4;

      sub_1D2AC6094();

      *&v30 = v4;
      swift_getKeyPath();
      sub_1D2AC60B4();

      v24 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
      swift_beginAccess();
      v25 = *(v4 + v24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + v24) = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_1D2A4486C(0, v25[2] + 1, 1, v25);
        *(v4 + v24) = v25;
      }

      v28 = v25[2];
      v27 = v25[3];
      if (v28 >= v27 >> 1)
      {
        v25 = sub_1D2A4486C((v27 > 1), v28 + 1, 1, v25);
      }

      v25[2] = v28 + 1;
      v29 = &v25[2 * v28];
      v29[4] = sub_1D2A2E724;
      v29[5] = v23;
      *(v4 + v24) = v25;
      swift_endAccess();
      *&v30 = v4;
      swift_getKeyPath();
      sub_1D2AC60A4();
    }
  }
}

uint64_t sub_1D2A29BC0(uint64_t a1)
{
  v2 = v1;
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 56) = MEMORY[0x1E69E7CC0];
  sub_1D2AC60C4();
  type metadata accessor for GPImageEditionView.ViewModel(0);
  swift_allocObject();

  *(v1 + 64) = sub_1D2A3FC84(v4, 1);
  *(v1 + 16) = a1;
  v5 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_exportedObject;
  *(*(a1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_exportedObject) + 40) = &off_1F4DFA218;
  swift_unknownObjectWeakAssign();
  *(*(a1 + v5) + 24) = &off_1F4DFA1E0;
  swift_unknownObjectWeakAssign();
  return v2;
}

uint64_t sub_1D2A29C88(uint64_t a1)
{

  v4 = sub_1D2A6A1F4(v3, a1);

  if (v4)
  {
    *(v1 + 56) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2A2D3A8(&qword_1EC703A98, type metadata accessor for ImageGenerationHostCoordinator, &unk_1D2AC9950);
    sub_1D2AC6084();
  }
}

uint64_t sub_1D2A29DDC()
{
  swift_getKeyPath();
  v3 = v0;
  sub_1D2A2D3A8(&qword_1EC703A98, type metadata accessor for ImageGenerationHostCoordinator, &unk_1D2AC9950);
  sub_1D2AC6094();

  v1 = *(v0 + 24);
  sub_1D2A19818(v1, *(v3 + 32));
  return v1;
}

uint64_t sub_1D2A29E90@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2A2D3A8(&qword_1EC703A98, type metadata accessor for ImageGenerationHostCoordinator, &unk_1D2AC9950);
  sub_1D2AC6094();

  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1D2A2D66C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1D2A19818(v4, v5);
}

uint64_t sub_1D2A29F7C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1D2A2D644;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1D2A19818(v2, v3);
  sub_1D2A2D3A8(&qword_1EC703A98, type metadata accessor for ImageGenerationHostCoordinator, &unk_1D2AC9950);
  sub_1D2AC6084();
  sub_1D2A19C98(v5, v4);
}

uint64_t sub_1D2A2A0D8()
{
  swift_getKeyPath();
  v3 = v0;
  sub_1D2A2D3A8(&qword_1EC703A98, type metadata accessor for ImageGenerationHostCoordinator, &unk_1D2AC9950);
  sub_1D2AC6094();

  v1 = *(v0 + 40);
  sub_1D2A19818(v1, *(v3 + 48));
  return v1;
}

uint64_t sub_1D2A2A18C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2A2D3A8(&qword_1EC703A98, type metadata accessor for ImageGenerationHostCoordinator, &unk_1D2AC9950);
  sub_1D2AC6094();

  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1D2A2D5EC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1D2A19818(v4, v5);
}

uint64_t sub_1D2A2A278(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1D2A2D5C4;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1D2A19818(v2, v3);
  sub_1D2A2D3A8(&qword_1EC703A98, type metadata accessor for ImageGenerationHostCoordinator, &unk_1D2AC9950);
  sub_1D2AC6084();
  sub_1D2A19C98(v5, v4);
}

uint64_t sub_1D2A2A3D4()
{
  swift_getKeyPath();
  sub_1D2A2D3A8(&qword_1EC703A98, type metadata accessor for ImageGenerationHostCoordinator, &unk_1D2AC9950);
  sub_1D2AC6094();
}

uint64_t sub_1D2A2A478@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2A2D3A8(&qword_1EC703A98, type metadata accessor for ImageGenerationHostCoordinator, &unk_1D2AC9950);
  sub_1D2AC6094();

  *a2 = *(v3 + 56);
}

uint64_t sub_1D2A2A524(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7039C8, &unk_1D2AC9900);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v11 = sub_1D2AC5EF4();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
    goto LABEL_9;
  }

  result = sub_1D2AC7024();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1D38A74D0](0, a1);
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(a1 + 32);
LABEL_6:
    v7 = v6;
    v8 = [v6 imageURLWrapper];

    v9 = [v8 url];
    sub_1D2AC5EC4();

    v10 = sub_1D2AC5EF4();
    (*(*(v10 - 8) + 56))(v4, 0, 1, v10);
LABEL_9:
    sub_1D2A2A6D4(v4);
    return sub_1D2A2E61C(v4, &qword_1EC7039C8, &unk_1D2AC9900);
  }

  __break(1u);
  return result;
}

void sub_1D2A2A6D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7039C8, &unk_1D2AC9900);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v37 - v3;
  v5 = sub_1D2AC5EF4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v37 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v37 - v14;
  sub_1D2A2E5B4(a1, v4, &qword_1EC7039C8, &unk_1D2AC9900);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1D2A2E61C(v4, &qword_1EC7039C8, &unk_1D2AC9900);
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v16 = sub_1D2AC63B4();
    __swift_project_value_buffer(v16, qword_1EC7040C0);
    v17 = sub_1D2AC6394();
    v18 = sub_1D2AC6E94();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1D2A17000, v17, v18, "No Assets", v19, 2u);
      MEMORY[0x1D38A8460](v19, -1, -1);
    }
  }

  else
  {
    (*(v6 + 32))(v15, v4, v5);
    v20 = sub_1D2AC5ED4();
    sub_1D2A2F3B0(v13);
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    LODWORD(v39) = v20;
    v21 = sub_1D2AC63B4();
    __swift_project_value_buffer(v21, qword_1EC7040C0);
    (*(v6 + 16))(v10, v13, v5);
    v22 = sub_1D2AC6394();
    v23 = v6;
    v24 = sub_1D2AC6E74();
    if (os_log_type_enabled(v22, v24))
    {
      v25 = swift_slowAlloc();
      v37 = v25;
      v38 = swift_slowAlloc();
      v41 = v38;
      *v25 = 136315138;
      sub_1D2A2D3A8(&qword_1EC703AA0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v26 = sub_1D2AC7324();
      v28 = v27;
      v29 = *(v23 + 8);
      v29(v10, v5);
      v30 = sub_1D2ABAFCC(v26, v28, &v41);

      v31 = v37;
      *(v37 + 1) = v30;
      v32 = v31;
      _os_log_impl(&dword_1D2A17000, v22, v24, "Copied generated image to app sandbox at %s", v31, 0xCu);
      v33 = v38;
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x1D38A8460](v33, -1, -1);
      MEMORY[0x1D38A8460](v32, -1, -1);
    }

    else
    {

      v29 = *(v23 + 8);
      v29(v10, v5);
    }

    v34 = v40;
    swift_getKeyPath();
    v41 = v34;
    sub_1D2A2D3A8(&qword_1EC703A98, type metadata accessor for ImageGenerationHostCoordinator, &unk_1D2AC9950);
    sub_1D2AC6094();

    v35 = *(v34 + 24);
    if (v35)
    {
      v36 = *(v34 + 32);

      v35(v13);
      sub_1D2A19C98(v35, v36);
    }

    if (v39)
    {
      sub_1D2AC5EB4();
    }

    v29(v13, v5);
    v29(v15, v5);
  }
}

uint64_t sub_1D2A2AF1C(uint64_t result)
{
  v2 = *(v1 + 64);
  if (*(v2 + 24) == (result & 1))
  {
    *(v2 + 24) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2A2D3A8(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel, &unk_1D2ACA2D8);
    sub_1D2AC6084();
  }

  return result;
}

uint64_t sub_1D2A2B030(uint64_t result)
{
  v2 = *(v1 + 64);
  if (*(v2 + 26) == (result & 1))
  {
    *(v2 + 26) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2A2D3A8(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel, &unk_1D2ACA2D8);
    sub_1D2AC6084();
  }

  return result;
}

uint64_t sub_1D2A2B144(uint64_t result)
{
  v2 = *(v1 + 64);
  if (*(v2 + 27) == (result & 1))
  {
    *(v2 + 27) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2A2D3A8(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel, &unk_1D2ACA2D8);
    sub_1D2AC6084();
  }

  return result;
}

uint64_t sub_1D2A2B258(unint64_t a1)
{
  v2 = v1;
  v27 = sub_1D2AC5EF4();
  v4 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = sub_1D2AC7024();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v28 = MEMORY[0x1E69E7CC0];
    result = sub_1D2A2C9C8(0, v9 & ~(v9 >> 63), 0);
    if (v9 < 0)
    {
      __break(1u);
      return result;
    }

    v24 = a1 >> 62;
    v25 = v2;
    v12 = 0;
    v10 = v28;
    v13 = a1;
    v26 = a1 & 0xC000000000000001;
    do
    {
      v14 = v9;
      if (v26)
      {
        v15 = MEMORY[0x1D38A74D0](v12);
      }

      else
      {
        v15 = *(v13 + 8 * v12 + 32);
      }

      v16 = v15;
      v17 = [v15 imageURLWrapper];
      v18 = [v17 url];

      sub_1D2AC5EC4();
      v28 = v10;
      v20 = *(v10 + 16);
      v19 = *(v10 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1D2A2C9C8((v19 > 1), v20 + 1, 1);
        v10 = v28;
      }

      ++v12;
      *(v10 + 16) = v20 + 1;
      (*(v4 + 32))(v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v20, v7, v27);
      v9 = v14;
      v13 = a1;
    }

    while (v14 != v12);
    v8 = v24;
    v2 = v25;
  }

  sub_1D2A29C88(v10);
  v21 = *(v2 + 64);
  if (v8)
  {
    result = sub_1D2AC7024();
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((*(v21 + 25) ^ (result != 0)))
  {
    v22 = result != 0;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v24 - 2) = v21;
    *(&v24 - 8) = v22;
    v28 = v21;
    sub_1D2A2D3A8(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel, &unk_1D2ACA2D8);
    sub_1D2AC6084();
  }

  else
  {
    *(v21 + 25) = result != 0;
  }

  return result;
}

uint64_t sub_1D2A2B5A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7039C8, &unk_1D2AC9900);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13 - v2;
  swift_getKeyPath();
  v14 = v0;
  sub_1D2A2D3A8(&qword_1EC703A98, type metadata accessor for ImageGenerationHostCoordinator, &unk_1D2AC9950);
  sub_1D2AC6094();

  if (*(v0[7] + 16))
  {
    swift_getKeyPath();
    v14 = v0;
    sub_1D2AC6094();

    v4 = v0[7];
    v5 = *(v4 + 16);
    v6 = sub_1D2AC5EF4();
    v7 = *(v6 - 8);
    if (v5)
    {
      (*(*(v6 - 8) + 16))(v3, v4 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
      v8 = 0;
    }

    else
    {
      v8 = 1;
    }

    (*(v7 + 56))(v3, v8, 1, v6);
    sub_1D2A2A6D4(v3);
    return sub_1D2A2E61C(v3, &qword_1EC7039C8, &unk_1D2AC9900);
  }

  else
  {
    swift_getKeyPath();
    v14 = v0;
    sub_1D2AC6094();

    v10 = v0[5];
    if (v10)
    {
      v11 = v0[6];

      v10(v12);
      return sub_1D2A19C98(v10, v11);
    }
  }

  return result;
}

uint64_t sub_1D2A2B7EC()
{

  sub_1D2A19C98(v0[3], v0[4]);
  sub_1D2A19C98(v0[5], v0[6]);

  v1 = OBJC_IVAR____TtC15ImagePlaygroundP33_DDFA1C1AEB2E9C3EBDF6D3A43C77EE2230ImageGenerationHostCoordinator___observationRegistrar;
  v2 = sub_1D2AC60D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1D2A2B8B4()
{
  swift_getKeyPath();
  sub_1D2A2D3A8(&qword_1EC703A98, type metadata accessor for ImageGenerationHostCoordinator, &unk_1D2AC9950);
  sub_1D2AC6094();

  v2 = *(v0 + 40);
  if (v2)
  {
    v3 = *(v0 + 48);

    v2(v4);
    return sub_1D2A19C98(v2, v3);
  }

  return result;
}

_OWORD *sub_1D2A2B990@<X0>(uint64_t *a1@<X8>)
{
  result = _s15ImagePlayground0aB5StyleV3allSayACGvgZ_0();
  *a1 = result;
  return result;
}

uint64_t sub_1D2A2B9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D2A2C660();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t _s15ImagePlayground0aB5StyleV015defaultSelectedC0ACvgZ_0@<X0>(__int128 *a1@<X8>)
{
  if (qword_1EE089358 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_1EE089390;
  v9[2] = xmmword_1EE089380;
  v9[3] = unk_1EE089390;
  v2 = xmmword_1EE0893A0;
  v3 = unk_1EE0893B0;
  v9[4] = xmmword_1EE0893A0;
  v9[5] = unk_1EE0893B0;
  v4 = xmmword_1EE089360;
  v5 = xmmword_1EE089370;
  v9[0] = xmmword_1EE089360;
  v9[1] = xmmword_1EE089370;
  a1[2] = xmmword_1EE089380;
  a1[3] = v1;
  a1[4] = v2;
  a1[5] = v3;
  *a1 = v4;
  a1[1] = v5;
  return sub_1D2A2D244(v9, &v8);
}

uint64_t sub_1D2A2BAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D2A2C6E4();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1D2A2BB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D2A2D2A0();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

double sub_1D2A2BB78@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

uint64_t sub_1D2A2BB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D2A2D2F4();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

double sub_1D2A2BBF0@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EE089688 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  *a1 = qword_1EE089690;
  result = dbl_1EE089698[0];
  *(a1 + 8) = *dbl_1EE089698;
  return result;
}

uint64_t sub_1D2A2BC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D2A2D3F0();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t (*EnvironmentValues.imagePlaygroundPreviewAspectRatio.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 56) = sub_1D2A21D78();
  sub_1D2AC6694();
  return sub_1D2A2BD54;
}

void sub_1D2A2BD54(void **a1)
{
  v1 = *a1;
  v1[3] = **a1;
  *(v1 + 2) = *(v1 + 1);
  sub_1D2AC66A4();

  free(v1);
}

uint64_t sub_1D2A2BDD8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2A2BE10(uint64_t a1)
{
  result = sub_1D2AC60D4();
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

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVy15ImagePlayground0jK21PersonalizationPolicyOGGAaBHPxAaBHD1__AjA0cI0HPyHCHCTm(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_1D2AC65C4();
  sub_1D2A2DB64(a4, a2, a3, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable();
}

void sub_1D2A2C010(uint64_t a1)
{
  sub_1D2A2C470(319, &qword_1EC7039E0, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  if (v1 <= 0x3F)
  {
    sub_1D2A2C470(319, &qword_1EE088408, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    if (v2 <= 0x3F)
    {
      sub_1D2A2C510(319, &qword_1EC7039E8, &qword_1EC7038F0, &qword_1D2AC95E0, MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        sub_1D2A2C510(319, &qword_1EC7039F0, &qword_1EC7039F8, &qword_1D2AC9930, MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1D2A2C470(319, &qword_1EC703A00, &type metadata for ImagePlaygroundStyle, MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_1D2A2C470(319, &qword_1EC703A08, &type metadata for ImagePlaygroundPersonalizationPolicy, MEMORY[0x1E697DCC0]);
            if (v6 <= 0x3F)
            {
              sub_1D2A2C510(319, &qword_1EC703A10, &qword_1EC703A18, &qword_1D2AC9938, MEMORY[0x1E697DCC0]);
              if (v7 <= 0x3F)
              {
                sub_1D2A2C470(319, &qword_1EC703A20, &type metadata for ImagePlaygroundAspectRatio, MEMORY[0x1E697DCC0]);
                if (v8 <= 0x3F)
                {
                  sub_1D2A2C510(319, &qword_1EC703A28, &qword_1EC703A30, &unk_1D2AC9940, MEMORY[0x1E697DCC0]);
                  if (v9 <= 0x3F)
                  {
                    sub_1D2A2C470(319, &qword_1EC703A38, &type metadata for ImagePlaygroundImageImportPolicy, MEMORY[0x1E697DCC0]);
                    if (v10 <= 0x3F)
                    {
                      sub_1D2A2C40C(319, &qword_1EC703A40, type metadata accessor for ImagePlaygroundConcept, MEMORY[0x1E69E62F8]);
                      if (v11 <= 0x3F)
                      {
                        sub_1D2A2C40C(319, &qword_1EE0887F0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
                        if (v12 <= 0x3F)
                        {
                          sub_1D2A2C470(319, &qword_1EC703A48, MEMORY[0x1E6981748], MEMORY[0x1E69E6720]);
                          if (v13 <= 0x3F)
                          {
                            sub_1D2A2C4C0();
                            if (v14 <= 0x3F)
                            {
                              sub_1D2A2C510(319, &unk_1EE088848, &unk_1EC7043D0, &unk_1D2ACB460, MEMORY[0x1E69E6720]);
                              if (v15 <= 0x3F)
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
    }
  }
}

void sub_1D2A2C40C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D2A2C470(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1D2A2C4C0()
{
  result = qword_1EC703A50;
  if (!qword_1EC703A50)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EC703A50);
  }

  return result;
}

void sub_1D2A2C510(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D2A2C598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D2A2D444();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1D2A2C5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D2A2D4F8();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_1D2A2C660()
{
  result = qword_1EC703A58;
  if (!qword_1EC703A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7039F8, &qword_1D2AC9930);
    sub_1D2A2C6E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703A58);
  }

  return result;
}

unint64_t sub_1D2A2C6E4()
{
  result = qword_1EE089348;
  if (!qword_1EE089348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE089348);
  }

  return result;
}

uint64_t sub_1D2A2C738@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2A2D3A8(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel, &unk_1D2ACA2D8);
  sub_1D2AC6094();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_1D2A2C808@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2A2D3A8(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel, &unk_1D2ACA2D8);
  sub_1D2AC6094();

  *a2 = *(v3 + 25);
  return result;
}

uint64_t sub_1D2A2C8D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2A2D3A8(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel, &unk_1D2ACA2D8);
  sub_1D2AC6094();

  *a2 = *(v3 + 27);
  return result;
}

char *sub_1D2A2C9A8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D2A2CD14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D2A2C9C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D2A2CF48(a1, a2, a3, *v3, &qword_1EC703AA8, &qword_1D2AC9C88, MEMORY[0x1E6968FB0]);
  *v3 = result;
  return result;
}

char *sub_1D2A2CA0C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D2A2CE20(a1, a2, a3, *v3, &qword_1EC703BB8, &qword_1D2AC9DF8, &type metadata for GenerationRecipe_V2.Ingredient);
  *v3 = result;
  return result;
}

void *sub_1D2A2CA44(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D2A2CF48(a1, a2, a3, *v3, &qword_1EC703BB0, &qword_1D2AC9DF0, type metadata accessor for GenerationRecipe_V2.Prompt.Entity);
  *v3 = result;
  return result;
}

char *sub_1D2A2CA88(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D2A2CE20(a1, a2, a3, *v3, &qword_1EC703BA8, &qword_1D2AC9DE8, &type metadata for GenerationRecipe_V3.Ingredient);
  *v3 = result;
  return result;
}

void *sub_1D2A2CAC0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D2A2CF48(a1, a2, a3, *v3, &qword_1EC703BA0, &qword_1D2AC9DE0, type metadata accessor for GenerationRecipe_V3.Prompt.Entity);
  *v3 = result;
  return result;
}

char *sub_1D2A2CB04(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D2A2CE20(a1, a2, a3, *v3, &qword_1EC703B98, &qword_1D2AC9DD8, &type metadata for GenerationRecipe_V4.Ingredient);
  *v3 = result;
  return result;
}

void *sub_1D2A2CB3C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D2A2CF48(a1, a2, a3, *v3, &qword_1EC703B90, &qword_1D2AC9DD0, type metadata accessor for GenerationRecipe_V4.Prompt.Entity);
  *v3 = result;
  return result;
}

char *sub_1D2A2CB80(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D2A2CE20(a1, a2, a3, *v3, &qword_1EC703B80, &qword_1D2AC9DC0, &type metadata for GenerationRecipe_V5.Ingredient);
  *v3 = result;
  return result;
}

char *sub_1D2A2CBB8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D2A2CE20(a1, a2, a3, *v3, &qword_1EC703B70, &qword_1D2AC9DB0, &type metadata for GenerationRecipe_V6.Ingredient);
  *v3 = result;
  return result;
}

char *sub_1D2A2CBF0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D2A2CE20(a1, a2, a3, *v3, &qword_1EC703B60, &qword_1D2AC9DA0, &type metadata for GenerationRecipe_V7.Ingredient);
  *v3 = result;
  return result;
}

void *sub_1D2A2CC28(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D2A2CF48(a1, a2, a3, *v3, &qword_1EC703B88, &qword_1D2AC9DC8, type metadata accessor for GenerationRecipe_V5.Prompt.Entity);
  *v3 = result;
  return result;
}

void *sub_1D2A2CC6C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D2A2CF48(a1, a2, a3, *v3, &qword_1EC703B78, &qword_1D2AC9DB8, type metadata accessor for GenerationRecipe_V6.Prompt.Entity);
  *v3 = result;
  return result;
}

void *sub_1D2A2CCB0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D2A2CF48(a1, a2, a3, *v3, &qword_1EC703B68, &qword_1D2AC9DA8, type metadata accessor for GenerationRecipe_V7.Prompt.Entity);
  *v3 = result;
  return result;
}

char *sub_1D2A2CCF4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D2A2D124(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D2A2CD14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B50, &qword_1D2AC9D90);
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

char *sub_1D2A2CE20(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 88);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[88 * v11])
    {
      memmove(v15, v16, 88 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1D2A2CF48(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1D2A2D124(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B58, &qword_1D2AC9D98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1D2A2D2A0()
{
  result = qword_1EC703A60;
  if (!qword_1EC703A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703A60);
  }

  return result;
}

unint64_t sub_1D2A2D2F4()
{
  result = qword_1EC703A68;
  if (!qword_1EC703A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703A18, &qword_1D2AC9938);
    sub_1D2A2D3A8(&qword_1EC703A70, type metadata accessor for audit_token_t, MEMORY[0x1E69E7F10]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703A68);
  }

  return result;
}

uint64_t sub_1D2A2D3A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D2A2D3F0()
{
  result = qword_1EC703A78;
  if (!qword_1EC703A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703A78);
  }

  return result;
}

unint64_t sub_1D2A2D444()
{
  result = qword_1EC703A80;
  if (!qword_1EC703A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703A30, &unk_1D2AC9940);
    sub_1D2A2D3A8(&qword_1EC7037B0, type metadata accessor for CGImage, &unk_1D2AC926C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703A80);
  }

  return result;
}

unint64_t sub_1D2A2D4F8()
{
  result = qword_1EC703A88;
  if (!qword_1EC703A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703A88);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1D2A2D694()
{
  *(*(v0 + 16) + 56) = *(v0 + 24);
}

uint64_t sub_1D2A2D6F4(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void sub_1D2A2D700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a13)
  {

    sub_1D2A2D7CC(a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  }

  else
  {
  }
}

void sub_1D2A2D7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
  }
}

uint64_t sub_1D2A2D83C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
  }

  return v6;
}

uint64_t sub_1D2A2D848(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return v4;
}

void sub_1D2A2D854(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1D2A2D860(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageGenerationViewModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_79Tm()
{
  v1 = type metadata accessor for ImageGenerationViewModifier(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  sub_1D2A2D6F4(*(v5 + 56), *(v5 + 64));
  sub_1D2A2D700(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120), *(v5 + 128), *(v5 + 136), *(v5 + 144), *(v5 + 152), *(v5 + 160), *(v5 + 168));
  sub_1D2A19D04(*(v5 + 176), *(v5 + 184));
  sub_1D2A2D83C(*(v5 + 192), *(v5 + 200), *(v5 + 208), *(v5 + 216), *(v5 + 224), *(v5 + 225));
  sub_1D2A2D848(*(v5 + 232), *(v5 + 240), *(v5 + 248), *(v5 + 256));
  sub_1D2A2D854(*(v5 + 264), *(v5 + 272));
  sub_1D2A19D04(*(v5 + 280), *(v5 + 288));

  v6 = *(v1 + 60);
  v7 = sub_1D2AC5EF4();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  if (*(v5 + *(v1 + 76)))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D2A2DAF4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ImageGenerationViewModifier(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1D2A24948(v4, a1);
}

uint64_t sub_1D2A2DB64(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_1D2A2DBAC()
{
  result = qword_1EC703AF8;
  if (!qword_1EC703AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703AE8, &qword_1D2AC9CD0);
    type metadata accessor for GPImageEditionView(255);
    sub_1D2A2D3A8(&qword_1EC703B00, type metadata accessor for GPImageEditionView, &unk_1D2ACA288);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703AF8);
  }

  return result;
}

void *sub_1D2A2DCA8(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for ImageGenerationViewModifier(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1D2A2824C(a1, a2, v6);
}

void *sub_1D2A2DD28(uint64_t a1, _OWORD *a2)
{
  v5 = *(type metadata accessor for ImageGenerationViewModifier(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1D2A282D4(a1, a2, v6);
}

void sub_1D2A2DE14(uint64_t a1, double *a2)
{
  v5 = *(type metadata accessor for ImageGenerationViewModifier(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1D2A28FB0(a1, a2, v6);
}

uint64_t sub_1D2A2DEAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for ImageGenerationViewModifier(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D2A2DF64()
{
  result = qword_1EC7044E0;
  if (!qword_1EC7044E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7044E0);
  }

  return result;
}

uint64_t sub_1D2A2DFDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2A2E044(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D2A2E0AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7039C8, &unk_1D2AC9900);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2A2E11C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7039C8, &unk_1D2AC9900) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1D2A2E260;

  return sub_1D2A223E0(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_1D2A2E260()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroy_157Tm()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1D2A2E3D8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ImageGenerationViewModifier(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1D2A2E44C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  *(v2 + 40) = v1;
  *(v2 + 48) = v3;
  sub_1D2A19818(v1, v3);
  return sub_1D2A19C98(v4, v5);
}

uint64_t sub_1D2A2E498(uint64_t a1)
{
  v3 = *(type metadata accessor for ImageGenerationViewModifier(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1D2A237D8(a1, v4);
}

uint64_t sub_1D2A2E508()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  *(v2 + 24) = v1;
  *(v2 + 32) = v3;
  sub_1D2A19818(v1, v3);
  return sub_1D2A19C98(v4, v5);
}

uint64_t objectdestroy_112Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D2A2E5B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D2A2E61C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t ImagePlaygroundScene.Tab.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1D2A2E758()
{
  v1 = *v0;
  sub_1D2AC7444();
  MEMORY[0x1D38A7890](v1);
  return sub_1D2AC7484();
}

uint64_t sub_1D2A2E7CC(uint64_t a1)
{
  v2 = *v1;
  sub_1D2AC7444();
  MEMORY[0x1D38A7890](v2);
  return sub_1D2AC7484();
}

unint64_t *sub_1D2A2E810@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

unint64_t ImagePlaygroundScene.Identifier.displayName.getter()
{
  v1 = *v0;
  v2 = 0x726F74696445;
  v3 = 0x2B20726F74696445;
  v4 = 0x282072656B636950;
  if (v1 != 3)
  {
    v4 = 0x72656B636950;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000017;
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

unint64_t sub_1D2A2E90C()
{
  v1 = *v0;
  v2 = 0x726F74696465;
  v3 = 0xD00000000000001FLL;
  v4 = 0xD000000000000015;
  if (v1 == 3)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD00000000000001ELL;
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

ImagePlayground::ImagePlaygroundScene::Identifier_optional __swiftcall ImagePlaygroundScene.Identifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D2AC71D4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1D2A2EA10()
{
  result = qword_1EC703BC0;
  if (!qword_1EC703BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703BC0);
  }

  return result;
}

unint64_t sub_1D2A2EA80()
{
  result = qword_1EC703BC8;
  if (!qword_1EC703BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703BC8);
  }

  return result;
}

uint64_t sub_1D2A2EAD4()
{
  sub_1D2AC7444();
  sub_1D2AC6C74();

  return sub_1D2AC7484();
}

uint64_t sub_1D2A2EBC0(uint64_t a1)
{
  sub_1D2AC6C74();
}

uint64_t sub_1D2A2EC98(uint64_t a1)
{
  sub_1D2AC7444();
  sub_1D2AC6C74();

  return sub_1D2AC7484();
}

void sub_1D2A2ED8C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x726F74696465;
  v5 = 0x80000001D2ADD560;
  v6 = 0xD00000000000001FLL;
  v7 = 0x80000001D2ADD580;
  v8 = 0xD000000000000015;
  if (v2 == 3)
  {
    v8 = 0xD000000000000014;
  }

  else
  {
    v7 = 0x80000001D2ADD5A0;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD00000000000001ELL;
    v3 = 0x80000001D2ADD540;
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

uint64_t getEnumTagSinglePayload for ImagePlaygroundScene(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ImagePlaygroundScene(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ImagePlaygroundScene.Identifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ImagePlaygroundScene.Identifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D2A2F088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7044B0, &qword_1D2ACA040);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1D2A2E5B4(a3, v25 - v10, &qword_1EC7044B0, &qword_1D2ACA040);
  v12 = sub_1D2AC6DD4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D2A2E61C(v11, &qword_1EC7044B0, &qword_1D2ACA040);
  }

  else
  {
    sub_1D2AC6DC4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D2AC6D44();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D2AC6C54() + 32;
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

      sub_1D2A2E61C(a3, &qword_1EC7044B0, &qword_1D2ACA040);

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

  sub_1D2A2E61C(a3, &qword_1EC7044B0, &qword_1D2ACA040);
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

uint64_t sub_1D2A2F3B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v109 = a1;
  v129 = *MEMORY[0x1E69E9840];
  v108 = sub_1D2AC5CE4();
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v106 = &v101 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D2AC5E74();
  v113 = *(v4 - 8);
  v114 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v111 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7039C8, &unk_1D2AC9900);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v112 = &v101 - v7;
  v117 = sub_1D2AC6434();
  MEMORY[0x1EEE9AC00](v117);
  v116 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D2AC5EF4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v124 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v110 = &v101 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v101 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703BF8, &qword_1D2ACA350);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v121 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v101 - v20;
  v22 = sub_1D2AC6494();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v119 = &v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v115 = &v101 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v120 = &v101 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v123 = &v101 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v101 - v32;
  v125 = v10;
  v126 = v2;
  v34 = *(v10 + 16);
  v34(v16, v2, v9);
  v122 = v16;
  sub_1D2AC6404();
  v35 = *(v23 + 48);
  if (v35(v21, 1, v22) != 1)
  {
    v105 = v9;
    v103 = *(v23 + 32);
    v103(v33, v21, v22);
    v36 = sub_1D2AC6454();
    if (!v37)
    {
      (*(v23 + 8))(v33, v22);
      v9 = v105;
      goto LABEL_13;
    }

    v102 = v33;
    v124 = v22;
    v104 = v23;
    v127 = v36;
    v128 = v37;

    MEMORY[0x1D38A7100](0x5858585858582DLL, 0xE700000000000000);

    v38 = v123;
    MEMORY[0x1D38A68E0](v127, v128);
    v39 = sub_1D2AC6474();
    sub_1D2AC5E84();
    sub_1D2AC6484();
    v40 = sub_1D2AC6474();
    v41 = v40 - v39;
    if (__OFSUB__(v40, v39))
    {
      __break(1u);
    }

    else
    {
      v21 = v122;
      sub_1D2AC5E94();
      v42 = v121;
      sub_1D2AC6404();
      v43 = v124;
      if (v35(v42, 1, v124) != 1)
      {
        v71 = v120;
        v103(v120, v42, v43);
        v72 = v104;
        v73 = v115;
        v122 = *(v104 + 16);
        (v122)(v115, v38, v43);
        sub_1D2AC6414();
        sub_1D2A44DA4(&qword_1EC703C08, MEMORY[0x1E69E8368], MEMORY[0x1E69E8370]);
        v74 = sub_1D2AC6464();
        MEMORY[0x1EEE9AC00](v74);
        *(&v101 - 2) = v41;
        v75 = v118;
        v76 = v119;
        sub_1D2AC6424();
        if (v75)
        {
          v77 = *(v72 + 8);
          v77(v71, v43);
          v77(v123, v43);
          return (v77)(v102, v43);
        }

        (v122)(v73, v76, v43);
        v78 = v111;
        (*(v113 + 104))(v111, *MEMORY[0x1E6968F68], v114);
        v79 = v112;
        sub_1D2A3D5DC(v73, v78, v112);
        v80 = v125;
        v81 = v105;
        if ((*(v125 + 48))(v79, 1, v105) == 1)
        {
          sub_1D2A2E61C(v79, &qword_1EC7039C8, &unk_1D2AC9900);
          sub_1D2A46178();
          swift_allocError();
          swift_willThrow();
          v56 = *(v104 + 8);
          v56(v76, v43);
          v82 = v71;
        }

        else
        {
          v83 = *(v80 + 32);
          v84 = v110;
          v83(v110, v79, v81);
          v85 = [objc_opt_self() defaultManager];
          v86 = sub_1D2AC5EA4();
          v87 = sub_1D2AC5EA4();
          v127 = 0;
          v88 = [v85 copyItemAtURL:v86 toURL:v87 error:&v127];

          if (v88)
          {
            v89 = *(v104 + 8);
            v90 = v127;
            v91 = v124;
            v89(v119, v124);
            v89(v120, v91);
            v89(v123, v91);
            v89(v102, v91);
            return (v83)(v109, v84, v81);
          }

          v92 = v127;
          v93 = sub_1D2AC5E64();

          swift_willThrow();
          v94 = v93;
          v95 = v106;
          sub_1D2AC5CD4();
          sub_1D2A44DA4(&qword_1EC703C10, MEMORY[0x1E6967E70], MEMORY[0x1E6967E68]);
          v96 = v108;
          v97 = sub_1D2AC5DE4();

          (*(v107 + 8))(v95, v96);
          if (v97)
          {

            sub_1D2A2F3B0(v109);
            v98 = v104;
            v99 = v102;
            v100 = v123;
            (*(v125 + 8))(v84, v105);
            v56 = *(v98 + 8);
            v43 = v124;
            v56(v119, v124);
            v56(v120, v43);
            v56(v100, v43);
            v58 = v99;
            return (v56)(v58, v43);
          }

          (*(v125 + 8))(v84, v105);
          v56 = *(v104 + 8);
          v43 = v124;
          v56(v119, v124);
          v82 = v120;
        }

        v56(v82, v43);
        v57 = v123;
LABEL_10:
        v56(v57, v43);
        v58 = v102;
        return (v56)(v58, v43);
      }

      sub_1D2A2E61C(v42, &qword_1EC703BF8, &qword_1D2ACA350);
      if (qword_1EC7035A0 == -1)
      {
LABEL_7:
        v44 = sub_1D2AC63B4();
        __swift_project_value_buffer(v44, qword_1EC7040C0);
        v45 = sub_1D2AC6394();
        v46 = sub_1D2AC6E94();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v127 = v48;
          *v47 = 136315138;
          sub_1D2AC5E94();
          sub_1D2A44DA4(&qword_1EC703AA0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
          v49 = v105;
          v50 = sub_1D2AC7324();
          v52 = v51;
          (*(v125 + 8))(v21, v49);
          v53 = sub_1D2ABAFCC(v50, v52, &v127);

          *(v47 + 4) = v53;
          _os_log_impl(&dword_1D2A17000, v45, v46, "Could not convert %s to FilePath", v47, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v48);
          MEMORY[0x1D38A8460](v48, -1, -1);
          v54 = v47;
          v38 = v123;
          MEMORY[0x1D38A8460](v54, -1, -1);
        }

        v55 = v104;
        sub_1D2A46178();
        swift_allocError();
        swift_willThrow();
        v56 = *(v55 + 8);
        v57 = v38;
        v43 = v124;
        goto LABEL_10;
      }
    }

    swift_once();
    goto LABEL_7;
  }

  sub_1D2A2E61C(v21, &qword_1EC703BF8, &qword_1D2ACA350);
LABEL_13:
  v60 = v124;
  if (qword_1EC7035A0 != -1)
  {
    swift_once();
  }

  v61 = sub_1D2AC63B4();
  __swift_project_value_buffer(v61, qword_1EC7040C0);
  v34(v60, v126, v9);
  v62 = sub_1D2AC6394();
  v63 = sub_1D2AC6E94();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = v9;
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v127 = v66;
    *v65 = 136315138;
    sub_1D2A44DA4(&qword_1EC703AA0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v67 = sub_1D2AC7324();
    v69 = v68;
    (*(v125 + 8))(v60, v64);
    v70 = sub_1D2ABAFCC(v67, v69, &v127);

    *(v65 + 4) = v70;
    _os_log_impl(&dword_1D2A17000, v62, v63, "Could not convert %s to FilePath", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v66);
    MEMORY[0x1D38A8460](v66, -1, -1);
    MEMORY[0x1D38A8460](v65, -1, -1);
  }

  else
  {

    (*(v125 + 8))(v60, v9);
  }

  sub_1D2A46178();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_1D2A30294(uint64_t result)
{
  if (*(v1 + 24) == (result & 1))
  {
    *(v1 + 24) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel, &unk_1D2ACA2D8);
    sub_1D2AC6084();
  }

  return result;
}

uint64_t sub_1D2A303A4(uint64_t result)
{
  if (*(v1 + 26) == (result & 1))
  {
    *(v1 + 26) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel, &unk_1D2ACA2D8);
    sub_1D2AC6084();
  }

  return result;
}

uint64_t sub_1D2A304B4(uint64_t result)
{
  if (*(v1 + 27) == (result & 1))
  {
    *(v1 + 27) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel, &unk_1D2ACA2D8);
    sub_1D2AC6084();
  }

  return result;
}

uint64_t sub_1D2A305C4(uint64_t result)
{
  if (*(v1 + 25) == (result & 1))
  {
    *(v1 + 25) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel, &unk_1D2ACA2D8);
    sub_1D2AC6084();
  }

  return result;
}

void sub_1D2A306D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager);
  v2 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_allowedGenerationStyles;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (*(v3 + 16))
  {
    *(v1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_allowedGenerationStyles) = v3;

    if (*(v3 + 16))
    {
      v4 = swift_allocObject();
      *(v4 + 16) = v3;
      v5 = swift_allocObject();
      swift_weakInit();
      v6 = swift_allocObject();
      v6[2] = v5;
      v6[3] = sub_1D2A571CC;
      v6[4] = 0;
      v6[5] = sub_1D2A2DFD4;
      v6[6] = v4;
      swift_getKeyPath();
      *&aBlock = v1;
      sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);
      swift_bridgeObjectRetain_n();

      sub_1D2AC6094();

      v7 = *(v1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
      if (v7)
      {
        v31 = sub_1D2A571CC;
        v32 = 0;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        v29 = sub_1D2A44320;
        v30 = &block_descriptor_526;
        v8 = _Block_copy(&aBlock);
        v9 = v7;

        v10 = [v9 remoteObjectProxyWithErrorHandler_];
        _Block_release(v8);

        sub_1D2AC6FF4();
        swift_unknownObjectRelease();
        sub_1D2A206F8(&v33, v34);
        sub_1D2A206F8(v34, &aBlock);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
        swift_dynamicCast();
        v11 = v33;
        if (v33)
        {
          sub_1D2A571EC(v33, v3);

          swift_bridgeObjectRelease_n();

          return;
        }
      }

      else
      {
        sub_1D2A2DF64();
        v12 = swift_allocError();
        if (qword_1EC7035A0 != -1)
        {
          swift_once();
        }

        v13 = sub_1D2AC63B4();
        __swift_project_value_buffer(v13, qword_1EC7040C0);
        v14 = v12;
        v15 = sub_1D2AC6394();
        v16 = sub_1D2AC6EB4();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          *v17 = 138412290;
          v19 = v12;
          v20 = _swift_stdlib_bridgeErrorToNSError();
          *(v17 + 4) = v20;
          *v18 = v20;
          _os_log_impl(&dword_1D2A17000, v15, v16, "Could not send allowed generation styles to remote view: %@. May not be an error if the connection is not established yet, will retry.", v17, 0xCu);
          sub_1D2A2E61C(v18, &unk_1EC704400, &unk_1D2ADA9A0);
          MEMORY[0x1D38A8460](v18, -1, -1);
          MEMORY[0x1D38A8460](v17, -1, -1);
        }
      }

      v21 = swift_allocObject();
      *(v21 + 16) = sub_1D2A2E6B4;
      *(v21 + 24) = v6;
      swift_getKeyPath();
      *&aBlock = v1;

      sub_1D2AC6094();

      *&aBlock = v1;
      swift_getKeyPath();
      sub_1D2AC60B4();

      v22 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
      swift_beginAccess();
      v23 = *(v1 + v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v22) = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v23 = sub_1D2A4486C(0, v23[2] + 1, 1, v23);
        *(v1 + v22) = v23;
      }

      v26 = v23[2];
      v25 = v23[3];
      if (v26 >= v25 >> 1)
      {
        v23 = sub_1D2A4486C((v25 > 1), v26 + 1, 1, v23);
      }

      v23[2] = v26 + 1;
      v27 = &v23[2 * v26];
      v27[4] = sub_1D2A47D3C;
      v27[5] = v21;
      *(v1 + v22) = v23;
      swift_endAccess();
      *&aBlock = v1;
      swift_getKeyPath();
      sub_1D2AC60A4();

      swift_bridgeObjectRelease_n();
    }
  }
}

uint64_t (*sub_1D2A30CEC(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D2A30D50;
}

uint64_t sub_1D2A30D68@<X0>(void *a1@<X0>, __int128 *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_selectedGenerationStyle);
  swift_beginAccess();
  v4 = *v3;
  v14[1] = v3[1];
  v14[0] = v4;
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[5];
  v14[4] = v3[4];
  v14[5] = v7;
  v14[2] = v5;
  v14[3] = v6;
  v8 = v3[1];
  *a2 = *v3;
  a2[1] = v8;
  v9 = v3[2];
  v10 = v3[3];
  v11 = v3[5];
  a2[4] = v3[4];
  a2[5] = v11;
  a2[2] = v9;
  a2[3] = v10;
  return sub_1D2A2D244(v14, v13);
}

uint64_t sub_1D2A30E00(__int128 *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[4];
  v4 = a1[5];
  v20 = a1[3];
  v21 = v3;
  v22 = v4;
  v5 = a1[1];
  v17 = *a1;
  v6 = (*a2 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_selectedGenerationStyle);
  v18 = v5;
  v19 = v2;
  swift_beginAccess();
  v7 = v6[1];
  v23[0] = *v6;
  v23[1] = v7;
  v8 = v6[2];
  v9 = v6[3];
  v10 = v6[5];
  v23[4] = v6[4];
  v23[5] = v10;
  v23[2] = v8;
  v23[3] = v9;
  v11 = v22;
  v13 = v19;
  v12 = v20;
  v6[4] = v21;
  v6[5] = v11;
  v6[2] = v13;
  v6[3] = v12;
  v14 = v18;
  *v6 = v17;
  v6[1] = v14;
  sub_1D2A2D244(&v17, v16);
  sub_1D2A2DDA8(v23);
  return sub_1D2A30EBC();
}

uint64_t sub_1D2A30EBC()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager);
  v2 = (v0 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_selectedGenerationStyle);
  swift_beginAccess();
  v3 = v2[1];
  v60[0] = *v2;
  v60[1] = v3;
  v4 = v2[5];
  v60[4] = v2[4];
  v60[5] = v4;
  v5 = v2[3];
  v60[2] = v2[2];
  v60[3] = v5;
  v6 = (v1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle);
  v7 = *(v1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 16);
  v61[0] = *(v1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle);
  v61[1] = v7;
  v8 = *(v1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 80);
  v10 = *(v1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 32);
  v9 = *(v1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 48);
  v61[4] = *(v1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 64);
  v61[5] = v8;
  v61[2] = v10;
  v61[3] = v9;
  memmove((v1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle), v2, 0x60uLL);
  sub_1D2A2D244(v60, v62);
  sub_1D2A2D244(v60, v62);
  sub_1D2A2E61C(v61, &qword_1EC7044F0, &unk_1D2AC9D50);
  v11 = v6[1];
  v62[0] = *v6;
  v62[1] = v11;
  v12 = v6[5];
  v14 = v6[2];
  v13 = v6[3];
  v62[4] = v6[4];
  v62[5] = v12;
  v62[2] = v14;
  v62[3] = v13;
  v15 = *(&v62[0] + 1);
  if (!*(&v62[0] + 1))
  {
    return sub_1D2A2DDA8(v60);
  }

  v16 = *&v62[0];
  v17 = v6[4];
  v57 = v6[3];
  v58 = v17;
  v59 = v6[5];
  v18 = v6[2];
  v55 = v6[1];
  v56 = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = v15;
  v20 = v58;
  *(v19 + 64) = v57;
  *(v19 + 80) = v20;
  *(v19 + 96) = v59;
  v21 = v56;
  *(v19 + 32) = v55;
  *(v19 + 48) = v21;
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = sub_1D2A57398;
  v23[4] = 0;
  v23[5] = sub_1D2A2DFCC;
  v23[6] = v19;
  swift_getKeyPath();
  v52 = v1;
  sub_1D2A2E5B4(v62, &aBlock, &qword_1EC7044F0, &unk_1D2AC9D50);
  sub_1D2A2E5B4(v62, &aBlock, &qword_1EC7044F0, &unk_1D2AC9D50);
  sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);

  sub_1D2AC6094();

  v24 = *(v1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  if (!v24)
  {
    sub_1D2A2DF64();
    v31 = swift_allocError();
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v32 = sub_1D2AC63B4();
    __swift_project_value_buffer(v32, qword_1EC7040C0);
    v33 = v31;
    v34 = sub_1D2AC6394();
    v35 = sub_1D2AC6EB4();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      v38 = v31;
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 4) = v39;
      *v37 = v39;
      _os_log_impl(&dword_1D2A17000, v34, v35, "Could not send selected generation style to remote view: %@. May not be an error if the connection is not established yet, will retry.", v36, 0xCu);
      sub_1D2A2E61C(v37, &unk_1EC704400, &unk_1D2ADA9A0);
      MEMORY[0x1D38A8460](v37, -1, -1);
      MEMORY[0x1D38A8460](v36, -1, -1);
    }

    goto LABEL_11;
  }

  v50 = sub_1D2A57398;
  v51 = 0;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v48 = sub_1D2A44320;
  v49 = &block_descriptor_511;
  v25 = _Block_copy(&aBlock);
  v26 = v24;

  v27 = [v26 remoteObjectProxyWithErrorHandler_];
  _Block_release(v25);

  sub_1D2AC6FF4();
  swift_unknownObjectRelease();
  sub_1D2A206F8(&v53, v54);
  sub_1D2A206F8(v54, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
  swift_dynamicCast();
  v28 = v53;
  if (!v53)
  {
LABEL_11:
    v40 = swift_allocObject();
    *(v40 + 16) = sub_1D2A2E6B4;
    *(v40 + 24) = v23;
    swift_getKeyPath();
    *&aBlock = v1;

    sub_1D2AC6094();

    *&aBlock = v1;
    swift_getKeyPath();
    sub_1D2AC60B4();

    v41 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
    swift_beginAccess();
    v42 = *(v1 + v41);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v41) = v42;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v42 = sub_1D2A4486C(0, v42[2] + 1, 1, v42);
      *(v1 + v41) = v42;
    }

    v45 = v42[2];
    v44 = v42[3];
    if (v45 >= v44 >> 1)
    {
      v42 = sub_1D2A4486C((v44 > 1), v45 + 1, 1, v42);
    }

    v42[2] = v45 + 1;
    v46 = &v42[2 * v45];
    v46[4] = sub_1D2A47D3C;
    v46[5] = v40;
    *(v1 + v41) = v42;
    swift_endAccess();
    *&aBlock = v1;
    swift_getKeyPath();
    sub_1D2AC60A4();

    goto LABEL_16;
  }

  v29 = sub_1D2AC6BF4();
  [v28 setSelectedGenerationStyle_];

LABEL_16:
  sub_1D2A2DDA8(v60);

  return sub_1D2A2E61C(v62, &qword_1EC7044F0, &unk_1D2AC9D50);
}

uint64_t sub_1D2A31590@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_selectedGenerationStyle);
  swift_beginAccess();
  v4 = v3[2];
  v6 = v3[4];
  v7 = v3[5];
  v13 = v3[3];
  v5 = v13;
  v14 = v6;
  v15 = v7;
  v9 = v3[1];
  v12[0] = *v3;
  v8 = v12[0];
  v12[1] = v9;
  v12[2] = v4;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  *a1 = v8;
  a1[1] = v9;
  return sub_1D2A2D244(v12, v11);
}

uint64_t sub_1D2A31618(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_selectedGenerationStyle);
  swift_beginAccess();
  v4 = v3[3];
  v11[2] = v3[2];
  v11[3] = v4;
  v5 = v3[5];
  v11[4] = v3[4];
  v11[5] = v5;
  v6 = v3[1];
  v11[0] = *v3;
  v11[1] = v6;
  v7 = a1[3];
  v3[2] = a1[2];
  v3[3] = v7;
  v8 = a1[5];
  v3[4] = a1[4];
  v3[5] = v8;
  v9 = a1[1];
  *v3 = *a1;
  v3[1] = v9;
  sub_1D2A2DDA8(v11);
  return sub_1D2A30EBC();
}

uint64_t (*sub_1D2A316A4(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D2A31708;
}

uint64_t sub_1D2A31720@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_personalizationPolicy;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

void sub_1D2A31774(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_personalizationPolicy;
  swift_beginAccess();
  *(v1 + v3) = v2;
  v4 = *(v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager);
  *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_personalizationPolicy) = v2;
  if (v2 != 3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = sub_1D2A57580;
    v7[4] = 0;
    v7[5] = sub_1D2A2DFC4;
    v7[6] = v5;
    swift_getKeyPath();
    *&aBlock = v4;
    sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);

    sub_1D2AC6094();

    v8 = *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
    if (v8)
    {
      v33 = sub_1D2A57580;
      v34 = 0;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v31 = sub_1D2A44320;
      v32 = &block_descriptor_0;
      v9 = _Block_copy(&aBlock);
      v10 = v8;

      v11 = [v10 remoteObjectProxyWithErrorHandler_];
      _Block_release(v9);

      sub_1D2AC6FF4();
      swift_unknownObjectRelease();
      sub_1D2A206F8(&v35, v36);
      sub_1D2A206F8(v36, &aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
      swift_dynamicCast();
      v12 = v35;
      if (v35)
      {
        v13 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        [v12 setPersonalizationPolicy_];

        return;
      }
    }

    else
    {
      sub_1D2A2DF64();
      v14 = swift_allocError();
      if (qword_1EC7035A0 != -1)
      {
        swift_once();
      }

      v15 = sub_1D2AC63B4();
      __swift_project_value_buffer(v15, qword_1EC7040C0);
      v16 = v14;
      v17 = sub_1D2AC6394();
      v18 = sub_1D2AC6EB4();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138412290;
        v21 = v14;
        v22 = _swift_stdlib_bridgeErrorToNSError();
        *(v19 + 4) = v22;
        *v20 = v22;
        _os_log_impl(&dword_1D2A17000, v17, v18, "Could not send personalization policy to remote view: %@. May not be an error if the connection is not established yet, will retry.", v19, 0xCu);
        sub_1D2A2E61C(v20, &unk_1EC704400, &unk_1D2ADA9A0);
        MEMORY[0x1D38A8460](v20, -1, -1);
        MEMORY[0x1D38A8460](v19, -1, -1);
      }
    }

    v23 = swift_allocObject();
    *(v23 + 16) = sub_1D2A2DF48;
    *(v23 + 24) = v7;
    swift_getKeyPath();
    *&aBlock = v4;

    sub_1D2AC6094();

    *&aBlock = v4;
    swift_getKeyPath();
    sub_1D2AC60B4();

    v24 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
    swift_beginAccess();
    v25 = *(v4 + v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + v24) = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = sub_1D2A4486C(0, v25[2] + 1, 1, v25);
      *(v4 + v24) = v25;
    }

    v28 = v25[2];
    v27 = v25[3];
    if (v28 >= v27 >> 1)
    {
      v25 = sub_1D2A4486C((v27 > 1), v28 + 1, 1, v25);
    }

    v25[2] = v28 + 1;
    v29 = &v25[2 * v28];
    v29[4] = sub_1D2A44534;
    v29[5] = v23;
    *(v4 + v24) = v25;
    swift_endAccess();
    *&aBlock = v4;
    swift_getKeyPath();
    sub_1D2AC60A4();
  }
}

uint64_t (*sub_1D2A31D2C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_personalizationPolicy;
  *(v3 + 112) = v1;
  *(v3 + 120) = v4;
  swift_beginAccess();
  return sub_1D2A31DB4;
}

void sub_1D2A31DB4(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[14];
    v5 = *(v4 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager);
    v6 = *(v4 + v3[15]);
    *(v5 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_personalizationPolicy) = v6;
    if (v6 != 3)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      v8 = swift_allocObject();
      swift_weakInit();
      v9 = swift_allocObject();
      v9[2] = v8;
      v9[3] = sub_1D2A57580;
      v9[4] = 0;
      v9[5] = sub_1D2A2E72C;
      v9[6] = v7;
      swift_getKeyPath();
      *v3 = v5;
      sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);

      sub_1D2AC6094();

      v10 = *(v5 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
      if (v10)
      {
        v3[4] = sub_1D2A57580;
        v3[5] = 0;
        *v3 = MEMORY[0x1E69E9820];
        v3[1] = 1107296256;
        v3[2] = sub_1D2A44320;
        v3[3] = &block_descriptor_25;
        v11 = _Block_copy(v3);
        v12 = v10;

        v13 = [v12 remoteObjectProxyWithErrorHandler_];
        _Block_release(v11);

        sub_1D2AC6FF4();
        swift_unknownObjectRelease();
        sub_1D2A206F8(v3 + 5, v3 + 3);
        sub_1D2A206F8(v3 + 3, v3);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
        swift_dynamicCast();
        v14 = v3[10];
        if (v14)
        {
          v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
          [v14 setPersonalizationPolicy_];

LABEL_16:

          goto LABEL_17;
        }
      }

      else
      {
        sub_1D2A2DF64();
        v16 = swift_allocError();
        if (qword_1EC7035A0 != -1)
        {
          swift_once();
        }

        v17 = sub_1D2AC63B4();
        __swift_project_value_buffer(v17, qword_1EC7040C0);
        v18 = v16;
        v19 = sub_1D2AC6394();
        v20 = sub_1D2AC6EB4();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          *v21 = 138412290;
          v23 = v16;
          v24 = _swift_stdlib_bridgeErrorToNSError();
          *(v21 + 4) = v24;
          *v22 = v24;
          _os_log_impl(&dword_1D2A17000, v19, v20, "Could not send personalization policy to remote view: %@. May not be an error if the connection is not established yet, will retry.", v21, 0xCu);
          sub_1D2A2E61C(v22, &unk_1EC704400, &unk_1D2ADA9A0);
          MEMORY[0x1D38A8460](v22, -1, -1);
          MEMORY[0x1D38A8460](v21, -1, -1);
        }
      }

      v25 = swift_allocObject();
      *(v25 + 16) = sub_1D2A2E6B4;
      *(v25 + 24) = v9;
      swift_getKeyPath();
      *v3 = v5;

      sub_1D2AC6094();

      *v3 = v5;
      swift_getKeyPath();
      sub_1D2AC60B4();

      v26 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
      swift_beginAccess();
      v27 = *(v5 + v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v5 + v26) = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = sub_1D2A4486C(0, v27[2] + 1, 1, v27);
        *(v5 + v26) = v27;
      }

      v30 = v27[2];
      v29 = v27[3];
      if (v30 >= v29 >> 1)
      {
        v27 = sub_1D2A4486C((v29 > 1), v30 + 1, 1, v27);
      }

      v27[2] = v30 + 1;
      v31 = &v27[2 * v30];
      v31[4] = sub_1D2A47D3C;
      v31[5] = v25;
      *(v5 + v26) = v27;
      swift_endAccess();
      *v3 = v5;
      swift_getKeyPath();
      sub_1D2AC60A4();

      goto LABEL_16;
    }
  }

LABEL_17:

  free(v3);
}

void *sub_1D2A323E0()
{
  v1 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_sourceImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1D2A3246C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7044B0, &qword_1D2ACA040);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v38 - v2;
  v4 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_sourceImage;
  swift_beginAccess();
  v5 = *&v0[v4];
  if (v5)
  {
    v6 = sub_1D2AC6DD4();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    sub_1D2AC6DA4();
    v7 = v5;
    v8 = v0;
    v9 = sub_1D2AC6D94();
    v10 = swift_allocObject();
    v11 = MEMORY[0x1E69E85E0];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v8;
    v10[5] = v7;
    sub_1D2A2F088(0, 0, v3, &unk_1D2ACA5B8, v10);

    return;
  }

  v12 = *&v0[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager];
  v13 = *(v12 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_sourceImage);
  *(v12 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_sourceImage) = 0;

  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = sub_1D2A575E8;
  v16[4] = 0;
  v16[5] = sub_1D2A2E554;
  v16[6] = v14;
  swift_getKeyPath();
  *&aBlock = v12;
  sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);

  sub_1D2AC6094();

  v17 = *(v12 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  if (v17)
  {
    v42 = sub_1D2A575E8;
    v43 = 0;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v40 = sub_1D2A44320;
    v41 = &block_descriptor_459;
    v18 = _Block_copy(&aBlock);
    v19 = v17;

    v20 = [v19 remoteObjectProxyWithErrorHandler_];
    _Block_release(v18);

    sub_1D2AC6FF4();
    swift_unknownObjectRelease();
    sub_1D2A206F8(&v44, v45);
    sub_1D2A206F8(v45, &aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
    swift_dynamicCast();
    v21 = v44;
    if (v44)
    {
      [v44 setSourceImage_];

      return;
    }
  }

  else
  {
    sub_1D2A2DF64();
    v22 = swift_allocError();
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v23 = sub_1D2AC63B4();
    __swift_project_value_buffer(v23, qword_1EC7040C0);
    v24 = v22;
    v25 = sub_1D2AC6394();
    v26 = sub_1D2AC6EB4();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = v22;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v30;
      *v28 = v30;
      _os_log_impl(&dword_1D2A17000, v25, v26, "Could not send source image to remote view: %@. May not be an error if the connection is not established yet, will retry.", v27, 0xCu);
      sub_1D2A2E61C(v28, &unk_1EC704400, &unk_1D2ADA9A0);
      MEMORY[0x1D38A8460](v28, -1, -1);
      MEMORY[0x1D38A8460](v27, -1, -1);
    }
  }

  v31 = swift_allocObject();
  *(v31 + 16) = sub_1D2A2E6B4;
  *(v31 + 24) = v16;
  swift_getKeyPath();
  *&aBlock = v12;

  sub_1D2AC6094();

  *&aBlock = v12;
  swift_getKeyPath();
  sub_1D2AC60B4();

  v32 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
  swift_beginAccess();
  v33 = *(v12 + v32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v12 + v32) = v33;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v33 = sub_1D2A4486C(0, v33[2] + 1, 1, v33);
    *(v12 + v32) = v33;
  }

  v36 = v33[2];
  v35 = v33[3];
  if (v36 >= v35 >> 1)
  {
    v33 = sub_1D2A4486C((v35 > 1), v36 + 1, 1, v33);
  }

  v33[2] = v36 + 1;
  v37 = &v33[2 * v36];
  v37[4] = sub_1D2A47D3C;
  v37[5] = v31;
  *(v12 + v32) = v33;
  swift_endAccess();
  *&aBlock = v12;
  swift_getKeyPath();
  sub_1D2AC60A4();
}

uint64_t sub_1D2A32B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[54] = a4;
  v5[55] = sub_1D2AC6DA4();
  v5[56] = sub_1D2AC6D94();
  v7 = swift_task_alloc();
  v5[57] = v7;
  *v7 = v5;
  v7[1] = sub_1D2A32BC0;

  return sub_1D2A470E4(a5);
}

uint64_t sub_1D2A32BC0(uint64_t a1)
{
  *(*v1 + 464) = a1;

  v3 = sub_1D2AC6D44();

  return MEMORY[0x1EEE6DFA0](sub_1D2A32D04, v3, v2);
}

uint64_t sub_1D2A32D04()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 432);

  v3 = *(v2 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager);
  v4 = *(v3 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_sourceImage);
  if (v1)
  {
    v5 = *(v0 + 464);
    *(v3 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_sourceImage) = v5;
    v6 = v5;

    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = sub_1D2A575E8;
    v9[4] = 0;
    v9[5] = sub_1D2A47D54;
    v9[6] = v7;
    swift_getKeyPath();
    *(v0 + 392) = v3;
    sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);
    v10 = v6;

    sub_1D2AC6094();

    v11 = *(v3 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
    if (v11)
    {
      *(v0 + 96) = sub_1D2A575E8;
      *(v0 + 104) = 0;
      *(v0 + 64) = MEMORY[0x1E69E9820];
      *(v0 + 72) = 1107296256;
      *(v0 + 80) = sub_1D2A44320;
      *(v0 + 88) = &block_descriptor_496;
      v12 = _Block_copy((v0 + 64));
      v13 = v11;

      v14 = [v13 remoteObjectProxyWithErrorHandler_];
      _Block_release(v12);

      sub_1D2AC6FF4();
      swift_unknownObjectRelease();
      sub_1D2A206F8((v0 + 240), (v0 + 208));
      sub_1D2A206F8((v0 + 208), (v0 + 272));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
      swift_dynamicCast();
      v15 = *(v0 + 400);
      if (v15)
      {
        [*(v0 + 400) setSourceImage_];

LABEL_18:

        goto LABEL_30;
      }
    }

    else
    {
      sub_1D2A2DF64();
      v24 = swift_allocError();
      if (qword_1EC7035A0 != -1)
      {
        swift_once();
      }

      v25 = sub_1D2AC63B4();
      __swift_project_value_buffer(v25, qword_1EC7040C0);
      v26 = v24;
      v27 = sub_1D2AC6394();
      v28 = sub_1D2AC6EB4();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = 138412290;
        v31 = v24;
        v32 = _swift_stdlib_bridgeErrorToNSError();
        *(v29 + 4) = v32;
        *v30 = v32;
        _os_log_impl(&dword_1D2A17000, v27, v28, "Could not send source image to remote view: %@. May not be an error if the connection is not established yet, will retry.", v29, 0xCu);
        sub_1D2A2E61C(v30, &unk_1EC704400, &unk_1D2ADA9A0);
        MEMORY[0x1D38A8460](v30, -1, -1);
        MEMORY[0x1D38A8460](v29, -1, -1);
      }
    }

    v33 = swift_allocObject();
    *(v33 + 16) = sub_1D2A2E6B4;
    *(v33 + 24) = v9;
    swift_getKeyPath();
    *(v0 + 408) = v3;

    sub_1D2AC6094();

    *(v0 + 416) = v3;
    swift_getKeyPath();
    sub_1D2AC60B4();

    v34 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
    swift_beginAccess();
    v35 = *(v3 + v34);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v34) = v35;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v35 = sub_1D2A4486C(0, v35[2] + 1, 1, v35);
      *(v3 + v34) = v35;
    }

    v38 = v35[2];
    v37 = v35[3];
    if (v38 >= v37 >> 1)
    {
      v35 = sub_1D2A4486C((v37 > 1), v38 + 1, 1, v35);
    }

    v35[2] = v38 + 1;
    v39 = &v35[2 * v38];
    v39[4] = sub_1D2A47D3C;
    v39[5] = v33;
    *(v3 + v34) = v35;
    swift_endAccess();
    *(v0 + 424) = v3;
    swift_getKeyPath();
    sub_1D2AC60A4();

    goto LABEL_18;
  }

  *(v3 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_sourceImage) = 0;

  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = sub_1D2A575E8;
  v18[4] = 0;
  v18[5] = sub_1D2A47D54;
  v18[6] = v16;
  swift_getKeyPath();
  *(v0 + 352) = v3;
  sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);

  sub_1D2AC6094();

  v19 = *(v3 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  if (!v19)
  {
    sub_1D2A2DF64();
    v40 = swift_allocError();
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v41 = sub_1D2AC63B4();
    __swift_project_value_buffer(v41, qword_1EC7040C0);
    v42 = v40;
    v43 = sub_1D2AC6394();
    v44 = sub_1D2AC6EB4();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138412290;
      v47 = v40;
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 4) = v48;
      *v46 = v48;
      _os_log_impl(&dword_1D2A17000, v43, v44, "Could not send source image to remote view: %@. May not be an error if the connection is not established yet, will retry.", v45, 0xCu);
      sub_1D2A2E61C(v46, &unk_1EC704400, &unk_1D2ADA9A0);
      MEMORY[0x1D38A8460](v46, -1, -1);
      MEMORY[0x1D38A8460](v45, -1, -1);
    }

    goto LABEL_24;
  }

  *(v0 + 48) = sub_1D2A575E8;
  *(v0 + 56) = 0;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1D2A44320;
  *(v0 + 40) = &block_descriptor_479;
  v20 = _Block_copy((v0 + 16));
  v21 = v19;

  v22 = [v21 remoteObjectProxyWithErrorHandler_];
  _Block_release(v20);

  sub_1D2AC6FF4();
  swift_unknownObjectRelease();
  sub_1D2A206F8((v0 + 144), (v0 + 112));
  sub_1D2A206F8((v0 + 112), (v0 + 176));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
  swift_dynamicCast();
  v23 = *(v0 + 360);
  if (!v23)
  {
LABEL_24:
    v49 = swift_allocObject();
    *(v49 + 16) = sub_1D2A2E6B4;
    *(v49 + 24) = v18;
    swift_getKeyPath();
    *(v0 + 368) = v3;

    sub_1D2AC6094();

    *(v0 + 376) = v3;
    swift_getKeyPath();
    sub_1D2AC60B4();

    v50 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
    swift_beginAccess();
    v51 = *(v3 + v50);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v50) = v51;
    if ((v52 & 1) == 0)
    {
      v51 = sub_1D2A4486C(0, v51[2] + 1, 1, v51);
      *(v3 + v50) = v51;
    }

    v54 = v51[2];
    v53 = v51[3];
    if (v54 >= v53 >> 1)
    {
      v51 = sub_1D2A4486C((v53 > 1), v54 + 1, 1, v51);
    }

    v51[2] = v54 + 1;
    v55 = &v51[2 * v54];
    v55[4] = sub_1D2A47D3C;
    v55[5] = v49;
    *(v3 + v50) = v51;
    swift_endAccess();
    *(v0 + 384) = v3;
    swift_getKeyPath();
    sub_1D2AC60A4();

    goto LABEL_29;
  }

  [*(v0 + 360) setSourceImage_];

LABEL_29:

LABEL_30:
  v56 = *(v0 + 8);

  return v56();
}

uint64_t (*sub_1D2A33834(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D2A33898;
}

uint64_t sub_1D2A339B0(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1D2A33A10(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1D2A33AA8;
}

void sub_1D2A33AA8(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1D2A33B28@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_sceneIdentifier;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_1D2A33B7C(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_sceneIdentifier;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1D2A33D38(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_privateDelegate;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_1D2A33D90(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_privateDelegate;
  swift_beginAccess();
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1D2A33F5C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_resultingAssets;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1D2A33FB4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_resultingAssets;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_1D2A340C4()
{
  v1 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_sourceImageIsSketch;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D2A3415C(char a1)
{
  v3 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_sourceImageIsSketch;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D2A3429C()
{
  v1 = (v0 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_localizedCreateButtonTitle);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1D2A34370(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_localizedCreateButtonTitle);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1D2A343D0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_localizedCreateButtonTitle);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1D2A344E4()
{
  v1 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_isLoadingRecipe;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1D2A345FC(char a1)
{
  v3 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_isLoadingRecipe;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = *(v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager);
  *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_isLoadingRecipe) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = sub_1D2A57618;
  v7[4] = 0;
  v7[5] = sub_1D2A44CAC;
  v7[6] = v5;
  swift_getKeyPath();
  *&aBlock = v4;
  sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);

  sub_1D2AC6094();

  v8 = *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  if (v8)
  {
    v32 = sub_1D2A57618;
    v33 = 0;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v30 = sub_1D2A44320;
    v31 = &block_descriptor_40;
    v9 = _Block_copy(&aBlock);
    v10 = v8;

    v11 = [v10 remoteObjectProxyWithErrorHandler_];
    _Block_release(v9);

    sub_1D2AC6FF4();
    swift_unknownObjectRelease();
    sub_1D2A206F8(&v34, v35);
    sub_1D2A206F8(v35, &aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
    swift_dynamicCast();
    v12 = v34;
    if (v34)
    {
      [v34 setIsLoadingRecipe_];

      return;
    }
  }

  else
  {
    sub_1D2A2DF64();
    v13 = swift_allocError();
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v14 = sub_1D2AC63B4();
    __swift_project_value_buffer(v14, qword_1EC7040C0);
    v15 = v13;
    v16 = sub_1D2AC6394();
    v17 = sub_1D2AC6EB4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = v13;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_1D2A17000, v16, v17, "Could not send isLoadingRecipe to remote view: %@. May not be an error if the connection is not established yet, will retry.", v18, 0xCu);
      sub_1D2A2E61C(v19, &unk_1EC704400, &unk_1D2ADA9A0);
      MEMORY[0x1D38A8460](v19, -1, -1);
      MEMORY[0x1D38A8460](v18, -1, -1);
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = sub_1D2A2E6B4;
  *(v22 + 24) = v7;
  swift_getKeyPath();
  *&aBlock = v4;

  sub_1D2AC6094();

  *&aBlock = v4;
  swift_getKeyPath();
  sub_1D2AC60B4();

  v23 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
  swift_beginAccess();
  v24 = *(v4 + v23);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + v23) = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = sub_1D2A4486C(0, v24[2] + 1, 1, v24);
    *(v4 + v23) = v24;
  }

  v27 = v24[2];
  v26 = v24[3];
  if (v27 >= v26 >> 1)
  {
    v24 = sub_1D2A4486C((v26 > 1), v27 + 1, 1, v24);
  }

  v24[2] = v27 + 1;
  v28 = &v24[2 * v27];
  v28[4] = sub_1D2A47D3C;
  v28[5] = v22;
  *(v4 + v23) = v24;
  swift_endAccess();
  *&aBlock = v4;
  swift_getKeyPath();
  sub_1D2AC60A4();
}