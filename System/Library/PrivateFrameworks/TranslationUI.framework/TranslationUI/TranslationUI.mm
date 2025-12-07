uint64_t sub_26F3A0888()
{
  MEMORY[0x274392020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_26F3A08C0()
{

  return swift_deallocObject();
}

uint64_t sub_26F3A0920(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_26F49EAF8();

    return sub_26F49E308();
  }

  else
  {
    sub_26F49E3B8();
    swift_getWitnessTable();
    sub_26F49E9F8();
    sub_26F49E308();
    sub_26F49FFC8();
    swift_getWitnessTable();
    sub_26F49E3B8();
    swift_getWitnessTable();
    sub_26F49E9F8();
    return sub_26F49E308();
  }
}

uint64_t sub_26F3A0A84(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_26F49EAF8();
    sub_26F49E308();
  }

  else
  {
    sub_26F49E3B8();
    swift_getWitnessTable();
    sub_26F49E9F8();
    sub_26F49E308();
    sub_26F49FFC8();
    swift_getWitnessTable();
    sub_26F49E3B8();
    swift_getWitnessTable();
    sub_26F49E9F8();
    sub_26F49E308();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_26F3A0DD0(uint64_t a1, int a2)
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

uint64_t sub_26F3A0DF0(uint64_t result, int a2, int a3)
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

uint64_t sub_26F3A0E68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26F3B158C();
  *a1 = result;
  return result;
}

uint64_t sub_26F3A0E94(void *a1, void *a2)
{
  *(*a2 + OBJC_IVAR____TtC13TranslationUI25AirplaneModeConfiguration____lazy_storage___isEnabled) = *a1;
}

uint64_t sub_26F3A0F30()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

id sub_26F3A0F68@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

uint64_t sub_26F3A0FCC(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DE988, &qword_26F4A2480);
  sub_26F49E308();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DE990, &qword_26F4A2488);
  sub_26F49E308();
  sub_26F49E308();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DE9A0, &qword_26F4A2498);
  swift_getTupleTypeMetadata2();
  sub_26F49F638();
  swift_getWitnessTable();
  sub_26F49F428();
  sub_26F49E308();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_26F49DFA8();
  sub_26F49E308();
  sub_26F49E308();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DE9A8, &qword_26F4A24A0);
  sub_26F49E308();
  sub_26F49F3D8();
  sub_26F49E308();
  sub_26F49E308();
  sub_26F49E308();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DE998, &qword_26F4A2490);
  sub_26F49E308();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v1 = MEMORY[0x277CE0328];
  sub_26F3B18CC(&qword_280F65738, &qword_2806DE988, &qword_26F4A2480, MEMORY[0x277CE0328]);
  swift_getWitnessTable();
  sub_26F3B18CC(&qword_2806DE9B0, &qword_2806DE990, &qword_26F4A2488, MEMORY[0x277CE07C8]);
  swift_getWitnessTable();
  sub_26F3B18CC(&qword_2806DE9B8, &qword_2806DE998, &qword_26F4A2490, v1);
  swift_getWitnessTable();
  sub_26F49E3E8();
  sub_26F49E308();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_26F3B18CC(qword_2806DE9C0, &qword_2806DE9A8, &qword_26F4A24A0, MEMORY[0x277CDE2D0]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_26F3A142C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEAB0, &unk_26F4A25B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_26F3A14E8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEAB0, &unk_26F4A25B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26F3A159C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26F49E608();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26F3A1654()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DEC10, &qword_26F4A2888);
  sub_26F3B9B7C();
  sub_26F3B9BE0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26F3A16CC(void *a1)
{
  sub_26F49E308();
  sub_26F3BA0C0();
  return swift_getWitnessTable();
}

uint64_t sub_26F3A1734(void *a1)
{
  sub_26F49E308();
  sub_26F3BAF80();
  return swift_getWitnessTable();
}

uint64_t sub_26F3A17B8()
{

  return swift_deallocObject();
}

uint64_t sub_26F3A17F0()
{

  return swift_deallocObject();
}

uint64_t sub_26F3A1830()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DEB20, &qword_26F4A9FF0);
  sub_26F3BF764();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26F3A189C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDA0, &qword_26F4A3050);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_26F49DAB8();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_26F3A19CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDA0, &qword_26F4A3050);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_26F49DAB8();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_26F3A1B20@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_excludedTypes;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_26F3A1B80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_renderMode;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_26F3A1C5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26F49D968();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26F3A1CC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26F49D968();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_26F3A1D38()
{
  MEMORY[0x274392020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_26F3A1D70()
{

  return swift_deallocObject();
}

uint64_t sub_26F3A1DB0()
{

  return swift_deallocObject();
}

uint64_t sub_26F3A1E04@<X0>(uint64_t a1@<X8>)
{
  result = sub_26F49E628();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_26F3A1E74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26F49E588();
  *a1 = result;
  return result;
}

uint64_t sub_26F3A1ECC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF1D0, &qword_26F4A39D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F3A1F3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF1D0, &qword_26F4A39D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F3A1FF4()
{
  v1 = sub_26F49D878();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_26F3A2088()
{
  v1 = sub_26F49D878();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_26F3A214C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_26F3A219C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26F49E588();
  *a1 = result;
  return result;
}

uint64_t sub_26F3A2220()
{

  return swift_deallocObject();
}

uint64_t sub_26F3A2260()
{
  v1 = type metadata accessor for ExpandingText(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  if (*(v2 + 24))
  {
  }

  v3 = v1[6];
  v4 = sub_26F49DAB8();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  if (*(v2 + v1[7]))
  {
  }

  j__swift_release(*(v2 + v1[12]));
  v6 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF3B0, &unk_26F4A8280);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_26F49E2E8();
    (*(*(v7 - 8) + 8))(v2 + v6, v7);
  }

  else
  {
  }

  v8 = v1[14];
  v9 = sub_26F49EE58();
  (*(*(v9 - 8) + 8))(v2 + v8, v9);

  return swift_deallocObject();
}

uint64_t sub_26F3A24DC(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF438, &qword_26F4A3FB0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[13];
    goto LABEL_9;
  }

  v14 = sub_26F49EE58();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[14];

  return v15(v16, a2, v14);
}

uint64_t sub_26F3A2660(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF438, &qword_26F4A3FB0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[13];
    goto LABEL_7;
  }

  v14 = sub_26F49EE58();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[14];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_26F3A27E4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF3D0, &qword_26F4A3F40);
  sub_26F3D2D08();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26F3A2864(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF4D8, &unk_26F4A8370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F3A28D4()
{
  v1 = type metadata accessor for ExpandingText(0);
  v2 = (*(*(v1 - 1) + 80) + 33) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;

  if (*(v0 + v2 + 24))
  {
  }

  v4 = v1[6];
  v5 = sub_26F49DAB8();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v3 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  if (*(v3 + v1[7]))
  {
  }

  j__swift_release(*(v3 + v1[12]));
  v7 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF3B0, &unk_26F4A8280);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_26F49E2E8();
    (*(*(v8 - 8) + 8))(v3 + v7, v8);
  }

  else
  {
  }

  v9 = v1[14];
  v10 = sub_26F49EE58();
  (*(*(v10 - 8) + 8))(v3 + v9, v10);

  return swift_deallocObject();
}

uint64_t sub_26F3A2B98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26F49E648();
  *a1 = result;
  return result;
}

uint64_t sub_26F3A2BF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEAB0, &unk_26F4A25B0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26F3A2C68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEAB0, &unk_26F4A25B0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_26F3A2CE8()
{
  v1 = *(type metadata accessor for GenderDisambiguationLearnMoreView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEB30, &qword_26F4A2660);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_26F49E148();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26F3A2DF0()
{

  return swift_deallocObject();
}

uint64_t sub_26F3A2E30(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DE988, &qword_26F4A2480);
  sub_26F49E308();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DE990, &qword_26F4A2488);
  sub_26F49E308();
  sub_26F3B18CC(&qword_280F65738, &qword_2806DE988, &qword_26F4A2480, MEMORY[0x277CE0328]);
  swift_getWitnessTable();
  sub_26F3B18CC(&qword_2806DE9B0, &qword_2806DE990, &qword_26F4A2488, MEMORY[0x277CE07C8]);
  return swift_getWitnessTable();
}

uint64_t sub_26F3A2F60()
{

  return swift_deallocObject();
}

uint64_t sub_26F3A2FDC()
{

  return swift_deallocObject();
}

uint64_t sub_26F3A304C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26F49E468();
  *a1 = result;
  return result;
}

uint64_t sub_26F3A30E0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF6F8, &unk_26F4A4AF0);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 24)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_26F3A3194(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF6F8, &unk_26F4A4AF0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26F3A3294(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF7F0, &unk_26F4A4D20);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF7C0, &qword_26F4A4C48);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[10];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[11]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_26F3A33B4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF7F0, &unk_26F4A4D20);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF7C0, &qword_26F4A4C48);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[11]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[10];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_26F3A34D0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF788, &qword_26F4A4BF0);
  sub_26F3E1190();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26F3A3534(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_26F49F528();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26F3A35E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_26F49F528();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26F3A3684(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_26F49DAB8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26F3A3730(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_26F49DAB8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26F3A37D8()
{
  v1 = (type metadata accessor for LanguageDownloadButton(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[8];
  v4 = sub_26F49F528();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  if (*(v2 + v1[9]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26F3A38F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26F49E608();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26F3A396C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF9A8, &qword_26F4A5058);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F3A39FC()
{

  return swift_deallocObject();
}

uint64_t sub_26F3A3AC8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB70, &qword_26F4A5238);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB88, &unk_26F4A6E80);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_26F3A3C04(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB70, &qword_26F4A5238);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB88, &unk_26F4A6E80);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_26F3A3D8C()
{
  v1 = type metadata accessor for LanguageMenu(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v12 = *(*(v1 - 8) + 64);
  v4 = sub_26F49DAB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);

  v7 = v0 + v3 + *(v1 + 20);

  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB70, &qword_26F4A5238) + 32);
  if (!(*(v5 + 48))(v7 + v8, 1, v4))
  {
    (*(v5 + 8))(v7 + v8, v4);
  }

  v9 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB68, &unk_26F4A6DB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_26F49E1B8();
    (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  }

  else
  {
  }

  (*(v5 + 8))(v0 + ((v3 + v12 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_26F3A3FD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26F49DAB8();
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

uint64_t sub_26F3A4044(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_26F49DAB8();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

void *sub_26F3A40C8@<X0>(void *a1@<X8>)
{
  sub_26F3EA5CC();
  result = sub_26F49E688();
  *a1 = v3;
  return result;
}

uint64_t sub_26F3A4164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC30, &qword_26F4A53F8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_26F49DAB8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_26F3A427C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC30, &qword_26F4A53F8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_26F49DAB8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_26F3A4390()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFC38, &qword_26F4A5400);
  sub_26F3B18CC(&qword_2806DFC58, &qword_2806DFC38, &qword_26F4A5400, MEMORY[0x277CDE5B0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26F3A4474@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26F49E4A8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26F3A44E0()
{
  v1 = (type metadata accessor for LanguagePicker(0) - 8);
  v2 = (*(*v1 + 80) + 80) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC30, &qword_26F4A53F8) + 32);
  v4 = sub_26F49DAB8();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2 + v3, v4);

  v5(v0 + v2 + v1[8], v4);

  sub_26F3E1E08(*(v0 + v2 + v1[11]), *(v0 + v2 + v1[11] + 8));

  return swift_deallocObject();
}

uint64_t sub_26F3A4660()
{
  v1 = (type metadata accessor for LanguagePicker(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC30, &qword_26F4A53F8) + 32);
  v5 = sub_26F49DAB8();
  v6 = *(*(v5 - 8) + 8);
  v6(v3 + v4, v5);

  v6(v3 + v1[8], v5);

  sub_26F3E1E08(*(v3 + v1[11]), *(v3 + v1[11] + 8));

  return swift_deallocObject();
}

uint64_t sub_26F3A490C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEAB0, &unk_26F4A25B0);
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

uint64_t sub_26F3A49D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEAB0, &unk_26F4A25B0);
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

uint64_t sub_26F3A4AB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFF00, &qword_26F4A5D68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F3A4B48()
{
  v1 = type metadata accessor for LanguageSelectionView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEB30, &qword_26F4A2660);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_26F49E148();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  if (*(v3 + v1[8]))
  {
  }

  if (*(v3 + v1[10]))
  {
  }

  if (*(v3 + v1[11]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26F3A4D10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFF68, &qword_26F4A5E48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F3A4DA8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0028, &qword_26F4A5F50);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_26F3A4E3C()
{

  return swift_deallocObject();
}

uint64_t sub_26F3A4ED8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_26F3A4F30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D0, &unk_26F4A61E8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_26F3A5008()
{
  v1 = (type metadata accessor for LocalePair(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00F0, &qword_26F4A6228);
  v5 = *(v4 - 8);
  v6 = (v3 + v2 + *(v5 + 80) + 1) & ~*(v5 + 80);
  swift_unknownObjectRelease();
  v7 = v0 + v2;
  v8 = sub_26F49DAB8();
  v9 = *(*(v8 - 8) + 8);
  v9(v7, v8);
  v9(v7 + v1[7], v8);
  (*(v5 + 8))(v0 + v6, v4);

  return swift_deallocObject();
}

uint64_t sub_26F3A51B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D0, &unk_26F4A61E8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_26F3A5298(uint64_t a1, uint64_t a2)
{
  v4 = sub_26F49DAB8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26F3A5304(uint64_t a1, uint64_t a2)
{
  v4 = sub_26F49DAB8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_26F3A5374(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0178, &qword_26F4A66D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F3A53E8()
{

  return swift_deallocObject();
}

uint64_t sub_26F3A5420(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01A0, &qword_26F4A6778);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F3A5490(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01A0, &qword_26F4A6778);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F3A5510()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_26F3A554C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_26F3A5630()
{

  return swift_deallocObject();
}

uint64_t sub_26F3A5668()
{
  MEMORY[0x274392020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_26F3A56A0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_26F3A56E8()
{

  return swift_deallocObject();
}

uint64_t sub_26F3A5790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB70, &qword_26F4A5238);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB88, &unk_26F4A6E80);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 36);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 44) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_26F3A58B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB70, &qword_26F4A5238);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB88, &unk_26F4A6E80);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 44) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 36);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_26F3A5A24(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_26F49DAB8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB70, &qword_26F4A5238);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 254)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 > 1)
    {
      return (v14 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF7F0, &unk_26F4A4D20);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_26F3A5BAC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_26F49DAB8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB70, &qword_26F4A5238);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 254)
  {
    *(a1 + a4[6] + 8) = -a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF7F0, &unk_26F4A4D20);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_26F3A5D38()
{
  v1 = type metadata accessor for LanguageListButton(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = sub_26F49DAB8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v2, v3);
  v6 = v2 + v1[5];

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB70, &qword_26F4A5238) + 32);
  if (!(*(v4 + 48))(v6 + v7, 1, v3))
  {
    v5(v6 + v7, v3);
  }

  sub_26F3E1E08(*(v2 + v1[6]), *(v2 + v1[6] + 8));
  v8 = v2 + v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF740, &qword_26F4A4BA0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF820, &qword_26F4A4D48) + 32);
    v11 = sub_26F49E378();
    (*(*(v11 - 8) + 8))(v8 + v10, v11);
  }

  return swift_deallocObject();
}

uint64_t sub_26F3A5F6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26F49D988();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26F3A60D4()
{
  MEMORY[0x274392020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_26F3A610C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_26F3A6168(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_26F3A627C()
{
  type metadata accessor for LanguagesView(255);
  sub_26F41FE6C(&qword_2806E0510, type metadata accessor for LanguagesView, &protocol conformance descriptor for LanguagesView);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26F3A630C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDA0, &qword_26F4A3050);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_26F3A6430(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDA0, &qword_26F4A3050);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_26F3A6550()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0518, &unk_26F4A7490);
  sub_26F3B18CC(&qword_2806E0530, &qword_2806E0518, &unk_26F4A7490, MEMORY[0x277CDE5B0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26F3A65F0()
{
  v1 = *(type metadata accessor for LanguageOption(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for LIDOrLanguagePicker(0);
  v5 = (v2 + v3 + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  swift_unknownObjectRelease();
  v6 = sub_26F49DAB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v0 + v2, 2, v6))
  {
    (*(v7 + 8))(v0 + v2, v6);
  }

  v9 = v0 + v5;

  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDA0, &qword_26F4A3050) + 32);
  if (!v8(v9 + v10, 2, v6))
  {
    (*(v7 + 8))(v9 + v10, v6);
  }

  v11 = *(v4 + 24);
  if (!v8(v9 + v11, 1, v6))
  {
    (*(v7 + 8))(v9 + v11, v6);
  }

  sub_26F3E1E08(*(v9 + *(v4 + 36)), *(v9 + *(v4 + 36) + 8));

  return swift_deallocObject();
}

uint64_t sub_26F3A6858()
{
  v1 = type metadata accessor for LIDOrLanguagePicker(0);
  v14 = *(*(v1 - 8) + 80);
  v2 = (v14 + 32) & ~v14;
  v3 = *(*(v1 - 8) + 64);
  v4 = *(*(type metadata accessor for LanguageOption(0) - 8) + 80);
  v5 = v2 + v3 + v4;
  swift_unknownObjectRelease();
  v6 = v0 + v2;

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDA0, &qword_26F4A3050) + 32);
  v8 = sub_26F49DAB8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(v6 + v7, 2, v8))
  {
    (*(v9 + 8))(v6 + v7, v8);
  }

  v11 = v5 & ~v4;

  v12 = *(v1 + 24);
  if (!v10(v6 + v12, 1, v8))
  {
    (*(v9 + 8))(v6 + v12, v8);
  }

  sub_26F3E1E08(*(v6 + *(v1 + 36)), *(v6 + *(v1 + 36) + 8));
  if (!v10(v0 + v11, 2, v8))
  {
    (*(v9 + 8))(v0 + v11, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_26F3A6ADC()
{

  return swift_deallocObject();
}

uint64_t sub_26F3A6B14()
{

  return swift_deallocObject();
}

uint64_t sub_26F3A6B64()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E05D0, &qword_26F4A79B8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (type metadata accessor for Signpost(0) - 8);
  v6 = (v4 + *(*v5 + 80) + 8) & ~*(*v5 + 80);
  (*(v2 + 8))(v0 + v3, v1);

  v7 = sub_26F49DC28();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = v5[7];
  v9 = sub_26F49DBF8();
  (*(*(v9 - 8) + 8))(v0 + v6 + v8, v9);

  return swift_deallocObject();
}

uint64_t sub_26F3A6D38()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E05E0, &qword_26F4A79C0);
  sub_26F3B18CC(&qword_2806E05F0, &qword_2806E05E0, &qword_26F4A79C0, MEMORY[0x277CDF028]);
  sub_26F42AFB0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26F3A6DFC()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26F3A6E3C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0660, &qword_26F4A7B38);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0650, &qword_26F4A7B28);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0658, &qword_26F4A7B30);
  sub_26F49E358();
  sub_26F3B18CC(&qword_2806E06B0, &qword_2806E0658, &qword_26F4A7B30, MEMORY[0x277CDF028]);
  sub_26F42C2E8(&qword_2806DF160, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  swift_getOpaqueTypeConformance2();
  sub_26F3B18CC(&qword_2806E06C0, &qword_2806E0650, &qword_26F4A7B28, MEMORY[0x277D84470]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26F3A6FE0()
{

  return swift_deallocObject();
}

uint64_t sub_26F3A7078()
{

  return swift_deallocObject();
}

uint64_t sub_26F3A70B0()
{
  MEMORY[0x274392020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_26F3A70E8()
{
  v1 = (type metadata accessor for SharedTranslations.Translation(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  v5 = sub_26F49DAB8();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v6(v4 + v1[7], v5);

  return swift_deallocObject();
}

id sub_26F3A722C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemOperationQueue;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_26F3A7298@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemURL;
  swift_beginAccess();
  return sub_26F42ECE8(v3 + v4, a2);
}

uint64_t sub_26F3A72F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_translations;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_26F3A7360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26F49DAB8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_26F3A7420(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26F49DAB8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26F3A74DC()
{

  return swift_deallocObject();
}

uint64_t sub_26F3A7514()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E07D8, &qword_26F4A80F8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_26F3A75BC()
{

  return swift_deallocObject();
}

uint64_t sub_26F3A7620(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  sub_26F49E308();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF9F0, &unk_26F4A5E80);
  sub_26F49E308();
  v6[10] = v1;
  v6[11] = MEMORY[0x277CDFC48];
  v6[8] = swift_getWitnessTable();
  v6[9] = sub_26F436628();
  swift_getWitnessTable();
  sub_26F49F428();
  v3 = sub_26F49E308();
  v4 = sub_26F49E308();
  v6[6] = swift_getWitnessTable();
  v6[7] = MEMORY[0x277CDF918];
  v6[4] = v2;
  v6[5] = MEMORY[0x277CDF918];
  v6[0] = v3;
  v6[1] = v4;
  v6[2] = swift_getWitnessTable();
  v6[3] = swift_getWitnessTable();
  type metadata accessor for BottomPanelContainer(255, v6);
  return swift_getWitnessTable();
}

uint64_t sub_26F3A77AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26F49DC28();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_26F49DBF8();
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

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_26F3A78C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_26F49DC28();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_26F49DBF8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_26F3A7A14()
{
  v1 = type metadata accessor for SimpleExpandingText(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  if (*(v2 + 24))
  {
  }

  v3 = v1[6];
  v4 = sub_26F49DAB8();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  if (*(v2 + v1[7]))
  {
  }

  j__swift_release(*(v2 + v1[11]));
  v6 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF3B0, &unk_26F4A8280);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_26F49E2E8();
    (*(*(v7 - 8) + 8))(v2 + v6, v7);
  }

  else
  {
  }

  v8 = v1[13];
  v9 = sub_26F49EE58();
  (*(*(v9 - 8) + 8))(v2 + v8, v9);

  return swift_deallocObject();
}

uint64_t sub_26F3A7C80(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF438, &qword_26F4A3FB0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[12];
    goto LABEL_9;
  }

  v14 = sub_26F49EE58();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[13];

  return v15(v16, a2, v14);
}

uint64_t sub_26F3A7E04(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF438, &qword_26F4A3FB0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[12];
    goto LABEL_7;
  }

  v14 = sub_26F49EE58();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[13];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_26F3A7F94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF4D8, &unk_26F4A8370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F3A7FFC()
{
  v1 = type metadata accessor for SimpleExpandingText(0);
  v2 = (*(*(v1 - 1) + 80) + 33) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;

  if (*(v0 + v2 + 24))
  {
  }

  v4 = v1[6];
  v5 = sub_26F49DAB8();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v3 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  if (*(v3 + v1[7]))
  {
  }

  j__swift_release(*(v3 + v1[11]));
  v7 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF3B0, &unk_26F4A8280);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_26F49E2E8();
    (*(*(v8 - 8) + 8))(v3 + v7, v8);
  }

  else
  {
  }

  v9 = v1[13];
  v10 = sub_26F49EE58();
  (*(*(v10 - 8) + 8))(v3 + v9, v10);

  return swift_deallocObject();
}

uint64_t sub_26F3A8284()
{

  return swift_deallocObject();
}

uint64_t sub_26F3A82CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E08E8, &unk_26F4A84F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
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

uint64_t sub_26F3A83A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E08E8, &unk_26F4A84F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

id sub_26F3A8464()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75D28]);

  return [v0 initWithNibName:0 bundle:0];
}

uint64_t sub_26F3A84D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E08E8, &unk_26F4A84F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 24));
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

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0958, &unk_26F4A8630);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_26F3A8618(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E08E8, &unk_26F4A84F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0958, &unk_26F4A8630);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_26F3A8754(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0958, &unk_26F4A8630);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26F3A8810(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0958, &unk_26F4A8630);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26F3A88C8()
{
  v1 = type metadata accessor for SystemWideSheetView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E08E8, &unk_26F4A84F0) + 32);
  v4 = type metadata accessor for VisualTranslationModel(0);
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    v5 = sub_26F49D968();
    (*(*(v5 - 8) + 8))(v3, v5);
    v6 = *(v4 + 24);
    v7 = sub_26F49D918();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  if (*(v2 + *(v1 + 24)))
  {
  }

  v8 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0910, &qword_26F4A85E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_26F49DFD8();
    (*(*(v9 - 8) + 8))(v2 + v8, v9);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26F3A8AF8()
{
  v1 = type metadata accessor for SystemWideConsentView(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  if (*(v0 + v2 + 56))
  {
  }

  v3 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0910, &qword_26F4A85E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_26F49DFD8();
    (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26F3A8C38()
{
  v1 = (type metadata accessor for Signpost(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = v2 + *(*v1 + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A10, &unk_26F4A8A20);
  v5 = *(v4 - 8);
  v6 = (v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = v0 + v2;
  v8 = sub_26F49DC28();
  (*(*(v8 - 8) + 8))(v0 + v2, v8);
  v9 = v1[7];
  v10 = sub_26F49DBF8();
  (*(*(v10 - 8) + 8))(v7 + v9, v10);

  (*(v5 + 8))(v0 + v6, v4);

  return swift_deallocObject();
}

uint64_t sub_26F3A8E10()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A18, &unk_26F4A8A30);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_26F3A8EE8()
{
  v1 = type metadata accessor for TextModel(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v11 = *(*(v1 - 1) + 64);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A18, &unk_26F4A8A30);
  v3 = *(v12 - 8);
  v4 = *(v3 + 80);
  swift_unknownObjectRelease();
  v5 = v0 + v2;
  v6 = sub_26F49D968();
  (*(*(v6 - 8) + 8))(v0 + v2, v6);

  v7 = v1[7];
  v8 = sub_26F49DAB8();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v2 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  (*(v9 + 8))(v5 + v1[9], v8);

  (*(v3 + 8))(v0 + ((v2 + v11 + v4) & ~v4), v12);

  return swift_deallocObject();
}

uint64_t sub_26F3A9154()
{

  return swift_deallocObject();
}

uint64_t sub_26F3A91D4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_26F49D968();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v15 = sub_26F49DAB8();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_26F3A9358(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_26F49D968();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = sub_26F49DAB8();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_26F3A94DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A18, &unk_26F4A8A30);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_26F3A95D8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A18, &unk_26F4A8A30);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for TextModel(0);
  v6 = (v4 + *(*(v5 - 1) + 80) + 8) & ~*(*(v5 - 1) + 80);

  (*(v2 + 8))(v0 + v3, v1);

  v7 = v0 + v6;
  v8 = sub_26F49D968();
  (*(*(v8 - 8) + 8))(v0 + v6, v8);

  v9 = v5[7];
  v10 = sub_26F49DAB8();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v6 + v9, 1, v10))
  {
    (*(v11 + 8))(v7 + v9, v10);
  }

  (*(v11 + 8))(v7 + v5[9], v10);

  return swift_deallocObject();
}

uint64_t sub_26F3A982C()
{
  v1 = type metadata accessor for TextModel(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;
  v4 = sub_26F49D968();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  v5 = v1[7];
  v6 = sub_26F49DAB8();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v2 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  (*(v7 + 8))(v3 + v1[9], v6);

  return swift_deallocObject();
}

uint64_t sub_26F3A9A08()
{
  sub_26F3E1E08(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_26F3A9A4C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_26F49EE58();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[11];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0C58, &qword_26F4A9290);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[13];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0C60, &qword_26F4A9298);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[14];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0C68, &unk_26F4A92A0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[16];

  return v16(v17, a2, v15);
}

uint64_t sub_26F3A9C24(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = sub_26F49EE58();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[11];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0C58, &qword_26F4A9290);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[13];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0C60, &qword_26F4A9298);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[14];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0C68, &unk_26F4A92A0);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[16];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_26F3A9DFC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_26F49D918();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26F3A9EA8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_26F49D918();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26F3A9F60()
{
  v1 = type metadata accessor for TranslationOverlay(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[11];
  v4 = sub_26F49EE58();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  sub_26F3E1E08(*(v2 + v1[12]), *(v2 + v1[12] + 8));
  v5 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0CC8, &qword_26F4A93E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_26F49E2C8();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0CD0, &qword_26F4A93F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_26F49E338();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v2 + v7, 1, v8))
    {
      (*(v9 + 8))(v2 + v7, v8);
    }
  }

  else
  {
  }

  sub_26F3E1E08(*(v2 + v1[15]), *(v2 + v1[15] + 8));
  v10 = v2 + v1[16];

  v11 = *(type metadata accessor for TranslationOverlay.LockedMetrics(0) + 40);
  v12 = sub_26F49D918();
  (*(*(v12 - 8) + 8))(v10 + v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0C68, &unk_26F4A92A0);

  return swift_deallocObject();
}

uint64_t sub_26F3AA250(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0E68, &qword_26F4A96A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F3AA2E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TranslationUnavailableModel(0);
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

uint64_t sub_26F3AA3AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TranslationUnavailableModel(0);
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

uint64_t sub_26F3AA470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26F49D968();
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

uint64_t sub_26F3AA530(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26F49D968();
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

uint64_t sub_26F3AA600@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26F49E558();
  *a1 = result;
  return result;
}

uint64_t sub_26F3AA65C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1040, &qword_26F4A9F20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F3AA6CC()
{
  v1 = *(type metadata accessor for TranslationUnavailableViewPhone(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_26F49D968();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  type metadata accessor for TranslationUnavailableModel(0);

  return swift_deallocObject();
}

uint64_t sub_26F3AA800(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E10B8, &qword_26F4AA020);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 5)
  {
    return v5 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26F3AA878(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 4);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E10B8, &qword_26F4AA020);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

void sub_26F3AA9BC(void **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_26F49F898();
  LOBYTE(v3) = [v3 BOOLForKey_];

  *a2 = v3;
}

void sub_26F3AAA5C(void **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_26F49F898();
  LOBYTE(v3) = [v3 BOOLForKey_];

  *a2 = v3;
}

void sub_26F3AAACC(void **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_26F49F898();
  LOBYTE(v3) = [v3 BOOLForKey_];

  *a2 = v3;
}

void sub_26F3AAB38(unsigned __int8 *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_26F49F898();
  [v3 setBool:v2 forKey:v4];
}

void sub_26F3AABB0(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_26F49F898();
  v5 = [v3 integerForKey_];

  *a2 = v5;
}

void sub_26F3AAC1C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_26F49F898();
  [v3 setInteger:v2 forKey:v4];
}

uint64_t sub_26F3AACF4(void *a1)
{
  sub_26F49E308();
  sub_26F469DD8();
  return swift_getWitnessTable();
}

uint64_t sub_26F3AAD58()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DE828, &qword_26F4A1DC8);
  type metadata accessor for TranslationUnavailableModel(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DE830, &qword_26F4A1DD0);
  sub_26F3B0F3C();
  sub_26F46A178(&qword_2806DE840, type metadata accessor for TranslationUnavailableModel, &unk_26F4A9E1C);
  sub_26F3B0FE8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26F3AAE38(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_26F49DAB8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26F3AAEE4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_26F49DAB8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26F3AAF88@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_26F3AAFC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26F49D968();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_26F49D918();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_26F3AB0D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_26F49D968();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_26F49D918();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

void *sub_26F3AB1E0@<X0>(_BYTE *a1@<X8>)
{
  sub_26F456E0C();
  result = sub_26F49E688();
  *a1 = v3;
  return result;
}

uint64_t sub_26F3AB27C()
{
  v1 = type metadata accessor for VisualTranslationOverlay(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 16))
  {
  }

  v3 = v2 + *(v1 + 32);
  v4 = type metadata accessor for VisualTranslationModel(0);
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    v5 = sub_26F49D968();
    (*(*(v5 - 8) + 8))(v3, v5);
    v6 = *(v4 + 24);
    v7 = sub_26F49D918();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1488, &qword_26F4AB390);

  sub_26F3E1E08(*(v2 + *(v1 + 36)), *(v2 + *(v1 + 36) + 8));

  return swift_deallocObject();
}

uint64_t sub_26F3AB454@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26F49E578();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26F3AB484(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1488, &qword_26F4AB390);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_26F3AB540(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1488, &qword_26F4AB390);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26F3AB5F4()
{
  v1 = sub_26F49E178();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for VisualTranslationOverlay(0);
  v6 = (v3 + v4 + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  (*(v2 + 8))(v0 + v3, v1);
  v7 = v0 + v6;

  if (*(v0 + v6 + 16))
  {
  }

  v8 = v7 + *(v5 + 32);
  v9 = type metadata accessor for VisualTranslationModel(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v10 = sub_26F49D968();
    (*(*(v10 - 8) + 8))(v8, v10);
    v11 = *(v9 + 24);
    v12 = sub_26F49D918();
    (*(*(v12 - 8) + 8))(v8 + v11, v12);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1488, &qword_26F4AB390);

  sub_26F3E1E08(*(v7 + *(v5 + 36)), *(v7 + *(v5 + 36) + 8));

  return swift_deallocObject();
}

uint64_t sub_26F3AB8DC()
{
  v1 = type metadata accessor for VisualTranslationOverlay(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = type metadata accessor for VisualTranslationModel(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;

  if (*(v0 + v2 + 16))
  {
  }

  v8 = v7 + *(v1 + 32);
  if (!(*(v5 + 48))(v8, 1, v4))
  {
    v9 = sub_26F49D968();
    (*(*(v9 - 8) + 8))(v8, v9);
    v10 = *(v4 + 24);
    v11 = sub_26F49D918();
    (*(*(v11 - 8) + 8))(v8 + v10, v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1488, &qword_26F4AB390);

  sub_26F3E1E08(*(v7 + *(v1 + 36)), *(v7 + *(v1 + 36) + 8));
  v12 = v0 + ((((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + v6 + 32) & ~v6);
  v13 = sub_26F49D968();
  (*(*(v13 - 8) + 8))(v12, v13);
  v14 = *(v4 + 24);
  v15 = sub_26F49D918();
  (*(*(v15 - 8) + 8))(v12 + v14, v15);

  return swift_deallocObject();
}

uint64_t sub_26F3ABBF8()
{
  v1 = type metadata accessor for VisualTranslationOverlay(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = type metadata accessor for VisualTranslationModel(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;

  if (*(v0 + v2 + 16))
  {
  }

  v8 = v7 + *(v1 + 32);
  if (!(*(v5 + 48))(v8, 1, v4))
  {
    v9 = sub_26F49D968();
    (*(*(v9 - 8) + 8))(v8, v9);
    v10 = *(v4 + 24);
    v11 = sub_26F49D918();
    (*(*(v11 - 8) + 8))(v8 + v10, v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1488, &qword_26F4AB390);

  sub_26F3E1E08(*(v7 + *(v1 + 36)), *(v7 + *(v1 + 36) + 8));
  v12 = v0 + ((v2 + v3 + v6) & ~v6);
  v13 = sub_26F49D968();
  (*(*(v13 - 8) + 8))(v12, v13);
  v14 = *(v4 + 24);
  v15 = sub_26F49D918();
  (*(*(v15 - 8) + 8))(v12 + v14, v15);

  return swift_deallocObject();
}

uint64_t sub_26F3ABEA4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_26F3ABEEC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(v1 + 64) + v2 + v3) & ~v2;
  swift_unknownObjectRelease();

  v5 = sub_26F49DAB8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (!v7(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  if (!v7(v0 + v4, 1, v5))
  {
    (*(v6 + 8))(v0 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_26F3AC088()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_26F3AC0C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1600, &qword_26F4AB7D0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 9) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_26F3AC1B0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_26F3AC1E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1600, &qword_26F4AB7D0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_26F49D968();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 9) & ~*(v6 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_26F3AC380()
{
  MEMORY[0x274392020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_26F3AC3B8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 48) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = v3 + v5 + 7;
  swift_unknownObjectRelease();

  v7 = sub_26F49DAB8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v0 + v4, 1, v7))
  {
    (*(v8 + 8))(v0 + v4, v7);
  }

  if (!v9(v0 + v5, 1, v7))
  {
    (*(v8 + 8))(v0 + v5, v7);
  }

  if (*(v0 + (v6 & 0xFFFFFFFFFFFFFFF8)))
  {
  }

  return swift_deallocObject();
}

void *sub_26F3AC568@<X0>(_BYTE *a1@<X8>)
{
  sub_26F456DB8();
  result = sub_26F49E688();
  *a1 = v3;
  return result;
}

uint64_t sub_26F3AC604()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

double sub_26F3AC728@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_zoomScale;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_26F3AC780(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_zoomScale;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_26F3AC7E0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_26F3AC89C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26F3AC94C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_26F3AC98C()
{
  v1 = type metadata accessor for VisualTranslationObservable.SavedTranslationRequest(0);
  v2 = (*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2;

  v4 = *(v1 + 20);
  v5 = sub_26F49DAB8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (!v7(v0 + v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  v8 = *(v1 + 24);
  if (!v7(v3 + v8, 1, v5))
  {
    (*(v6 + 8))(v3 + v8, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_26F3ACB1C()
{

  return swift_deallocObject();
}

uint64_t sub_26F3ACB60()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_26F3ACBA8()
{
  v1 = (type metadata accessor for VisualTranslationModel(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  v4 = sub_26F49D968();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = v1[8];
  v6 = sub_26F49D918();
  (*(*(v6 - 8) + 8))(v3 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_26F3ACCE8()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1750, &qword_26F4ABFA8) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  v3 = sub_26F49D968();
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2, v3);
  v5 = v0 + v2 + v1[14];
  v4(v5, v3);
  v6 = *(type metadata accessor for VisualTranslationModel(0) + 24);
  v7 = sub_26F49D918();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return swift_deallocObject();
}

uint64_t sub_26F3ACE98(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26F3ACF68(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t _LTOSLogVisualTranslation(uint64_t a1, uint64_t a2)
{
  if (_LTOSLogVisualTranslation_onceToken != -1)
  {
    _LTOSLogVisualTranslation_cold_1();
  }

  return _LTOSLogVisualTranslation_log;
}

id _LTSettingsLocalizedString(void *a1)
{
  v1 = MEMORY[0x277CCA8D8];
  v2 = a1;
  v3 = [v1 bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:v2 value:&stru_287F82B50 table:0];

  return v4;
}

void sub_26F3AEF20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

UIMenu_optional __swiftcall _LTDisambiguableSentence.menu(forLinkIndex:)(Swift::UInt forLinkIndex)
{
  v5 = [v1 selectedTargetPhrase];
  if (!v5)
  {
    goto LABEL_113;
  }

  v7 = v5;
  v8 = [v5 links];
  sub_26F3B0C24(0, &qword_2806DEE40, 0x277CE1AF0);
  v9 = sub_26F49FAF8();

  if (v9 >> 62)
  {
    goto LABEL_65;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_26F4A00A8())
  {

    if (i <= 0 || i <= forLinkIndex)
    {

      v5 = 0;
      goto LABEL_113;
    }

    v83 = MEMORY[0x277D84F90];
    v84 = MEMORY[0x277D84F90];
    v11 = [v80 menuConfigurationsForLinkIndex_];
    sub_26F3B0C24(0, &qword_2806DE808, 0x277CE1AD8);
    v12 = sub_26F49FAF8();

    if (v12 >> 62)
    {
      forLinkIndex = sub_26F4A00A8();
    }

    else
    {
      forLinkIndex = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v73 = v7;
    if (forLinkIndex)
    {
      sub_26F3B0C24(0, &qword_2806DE810, 0x277D750C8);
      v3 = 0;
      v79 = v12 & 0xC000000000000001;
      v74 = v12 & 0xFFFFFFFFFFFFFF8;
      v75 = MEMORY[0x277D84F90];
      v76 = MEMORY[0x277D84F90];
      v78 = v12;
      v77 = forLinkIndex;
      while (1)
      {
        if (v79)
        {
          v13 = MEMORY[0x274390F80](v3, v12);
        }

        else
        {
          if (v3 >= *(v74 + 16))
          {
            goto LABEL_64;
          }

          v13 = *(v12 + 8 * v3 + 32);
        }

        v14 = v13;
        v15 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v16 = [v13 menuDescription];
        sub_26F49F8C8();

        v17 = [v14 targetPreview];
        sub_26F49F8C8();

        v18 = swift_allocObject();
        v2 = v80;
        swift_unknownObjectWeakInit();
        v19 = swift_allocObject();
        *(v19 + 16) = v18;
        *(v19 + 24) = v14;
        v7 = v14;
        v20 = sub_26F49FF58();
        [v20 setState_];
        v21 = [v7 type];
        if (v21 == 1)
        {
          v23 = v20;
          MEMORY[0x2743908C0]();
          if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_26F49FB18();
          }

          sub_26F49FB38();

          v76 = v83;
          v12 = v78;
        }

        else if (v21)
        {
          v12 = v78;
          if (qword_2806DE780 != -1)
          {
            swift_once();
          }

          v24 = sub_26F49DCA8();
          __swift_project_value_buffer(v24, qword_2806EA890);
          v25 = sub_26F49DC88();
          v26 = sub_26F49FDE8();
          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            *v27 = 0;
            _os_log_impl(&dword_26F39E000, v25, v26, "Unknown edge type; ignoring", v27, 2u);
            MEMORY[0x274391F70](v27, -1, -1);
          }
        }

        else
        {
          v22 = v20;
          MEMORY[0x2743908C0]();
          v12 = v78;
          if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_26F49FB18();
          }

          sub_26F49FB38();

          v75 = v84;
        }

        forLinkIndex = v77;
        ++v3;
        if (v15 == v77)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
      goto LABEL_62;
    }

    v75 = MEMORY[0x277D84F90];
    v76 = MEMORY[0x277D84F90];
LABEL_31:

    v28 = v76;
    v29 = (v76 >> 62);
    if (v76 >> 62)
    {
      break;
    }

    forLinkIndex = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!forLinkIndex)
    {
      goto LABEL_68;
    }

LABEL_33:
    if ((v76 & 0xC000000000000001) == 0)
    {
      if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v30 = *(v76 + 32);
        goto LABEL_36;
      }

      __break(1u);
LABEL_111:
      sub_26F49FB18();
LABEL_94:
      sub_26F49FB38();
      v64 = v81;
      v65 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v28)
      {
        goto LABEL_97;
      }

LABEL_95:
      v66 = *(v65 + 16);
      goto LABEL_98;
    }

    v30 = MEMORY[0x274390F80](0, v76);
LABEL_36:
    v31 = v30;
    v2 = [v30 subtitle];

    if (v2)
    {
      v7 = sub_26F49F8C8();
      v33 = v32;
    }

    else
    {
      v7 = 0;
      v33 = 0;
    }

    v34 = 0;
    v3 = v76 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v76 & 0xC000000000000001) != 0)
      {
        v35 = MEMORY[0x274390F80](v34, v76);
      }

      else
      {
        if (v34 >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_63;
        }

        v35 = *(v76 + 8 * v34 + 32);
      }

      v36 = v35;
      v2 = (v34 + 1);
      if (__OFADD__(v34, 1))
      {
        break;
      }

      v37 = [v35 subtitle];
      if (v37)
      {
        v80 = v36;
        v38 = v37;
        v39 = sub_26F49F8C8();
        v41 = v40;

        if (!v33)
        {
          goto LABEL_60;
        }

        if (v39 == v7 && v33 == v41)
        {
        }

        else
        {
          v43 = sub_26F4A0458();

          if ((v43 & 1) == 0)
          {
            goto LABEL_60;
          }
        }
      }

      else
      {
        if (v33)
        {
          v80 = v36;
LABEL_60:

          goto LABEL_85;
        }
      }

      ++v34;
      if (v2 == forLinkIndex)
      {
        v44 = MEMORY[0x277D84F90];
        v28 = v76;
        v29 = (v76 >> 62);
        goto LABEL_69;
      }
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    ;
  }

  forLinkIndex = sub_26F4A00A8();
  if (forLinkIndex)
  {
    goto LABEL_33;
  }

LABEL_68:
  v44 = MEMORY[0x277D84F90];
LABEL_69:

  if (qword_2806DE780 != -1)
  {
    swift_once();
  }

  v45 = sub_26F49DCA8();
  __swift_project_value_buffer(v45, qword_2806EA890);
  v46 = sub_26F49DC88();
  v47 = sub_26F49FDB8();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_26F39E000, v46, v47, "Removing gender previews from menu since they're all the same", v48, 2u);
    MEMORY[0x274391F70](v48, -1, -1);
  }

  if (v29)
  {
    v49 = sub_26F4A00A8();
    if (!v49)
    {
      goto LABEL_83;
    }

LABEL_75:
    v82 = v44;
    v5 = sub_26F4A01F8();
    if (v49 < 0)
    {
      __break(1u);
      goto LABEL_113;
    }

    v50 = 0;
    do
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v51 = MEMORY[0x274390F80](v50, v28);
      }

      else
      {
        v51 = *(v28 + 8 * v50 + 32);
      }

      ++v50;
      [v51 setSubtitle_];
      sub_26F4A01D8();
      sub_26F4A0208();
      sub_26F4A0218();
      sub_26F4A01E8();
    }

    while (v49 != v50);

    v80 = 0;
    v52 = v82;
  }

  else
  {
    v49 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v49)
    {
      goto LABEL_75;
    }

LABEL_83:

    v80 = 0;
    v52 = MEMORY[0x277D84F90];
  }

  v76 = v52;
LABEL_85:
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v54 = objc_opt_self();
  v55 = [v54 bundleForClass_];
  sub_26F49D7D8();

  v56 = [v54 bundleForClass_];
  sub_26F49D7D8();

  if (v75 >> 62)
  {
    sub_26F3B0C24(0, &qword_2806DE818, 0x277D75720);

    sub_26F4A0248();
  }

  else
  {

    sub_26F4A0468();
    sub_26F3B0C24(0, &qword_2806DE818, 0x277D75720);
  }

  sub_26F3B0C24(0, &qword_2806DE820, 0x277D75710);
  v57 = sub_26F49FEF8();
  v28 = v76 >> 62;
  if (v76 >> 62)
  {
    sub_26F3B0C24(0, &qword_2806DE818, 0x277D75720);

    v58 = sub_26F4A0248();
  }

  else
  {

    sub_26F4A0468();
    sub_26F3B0C24(0, &qword_2806DE818, 0x277D75720);
    v58 = v76;
  }

  v71 = v58;
  v59 = sub_26F49FEF8();
  v29 = v57;
  v60 = sub_26F49F898();
  [v29 setAccessibilityIdentifier_];

  v12 = v59;
  v61 = sub_26F49F898();
  [v12 setAccessibilityIdentifier_];

  v81 = MEMORY[0x277D84F90];
  if (v75 >> 62)
  {
    v62 = sub_26F4A00A8();
  }

  else
  {
    v62 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = v73;
  v3 = v76;

  if (v62 >= 1)
  {
    v63 = v29;
    MEMORY[0x2743908C0]();
    if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_94;
    }

    goto LABEL_111;
  }

  v64 = MEMORY[0x277D84F90];
  v65 = v76 & 0xFFFFFFFFFFFFFF8;
  if (!v28)
  {
    goto LABEL_95;
  }

LABEL_97:
  v66 = sub_26F4A00A8();
LABEL_98:

  if (v66 >= 1)
  {
    v67 = v12;
    MEMORY[0x2743908C0]();
    if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_26F49FB18();
    }

    sub_26F49FB38();
    v64 = v81;
  }

  if (v64 >> 62)
  {
    sub_26F3B0C24(0, &qword_2806DE818, 0x277D75720);

    v68 = sub_26F4A0248();
  }

  else
  {

    sub_26F4A0468();
    sub_26F3B0C24(0, &qword_2806DE818, 0x277D75720);
    v68 = v64;
  }

  v72 = v68;
  v69 = sub_26F49FEF8();
  v70 = sub_26F49F898();
  [v69 setAccessibilityIdentifier_];

  v5 = v69;
LABEL_113:
  result.value.super.super.isa = v5;
  result.is_nil = v6;
  return result;
}

void sub_26F3B0704(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong setSelectedPhraseIndex_];
  }
}

uint64_t sub_26F3B077C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
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

uint64_t sub_26F3B0820()
{
  v0 = sub_26F49F8C8();
  v1 = MEMORY[0x274390850](v0);

  return v1;
}

uint64_t sub_26F3B085C(uint64_t a1)
{
  sub_26F49F8C8();
  sub_26F49F9A8();
}

uint64_t sub_26F3B08B0(uint64_t a1)
{
  sub_26F49F8C8();
  sub_26F4A0528();
  sub_26F49F9A8();
  v1 = sub_26F4A0568();

  return v1;
}

uint64_t sub_26F3B092C(uint64_t a1, id *a2)
{
  result = sub_26F49F8A8();
  *a2 = 0;
  return result;
}

uint64_t sub_26F3B09A4(uint64_t a1, id *a2)
{
  v3 = sub_26F49F8B8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_26F3B0A24@<X0>(uint64_t *a2@<X8>)
{
  sub_26F49F8C8();
  v3 = sub_26F49F898();

  *a2 = v3;
  return result;
}

BOOL sub_26F3B0AD4(_DWORD *a1, int *a2)
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

_DWORD *sub_26F3B0B04@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_26F3B0B30@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

_DWORD *sub_26F3B0C08@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_26F3B0C24(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_26F3B0C6C(void *a1, uint64_t *a2)
{
  v2 = sub_26F49F8C8();
  v4 = v3;
  if (v2 == sub_26F49F8C8() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_26F4A0458();
  }

  return v7 & 1;
}

void *sub_26F3B0CF4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_26F3B0D04@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_26F3B0EAC(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_26F3B0D44@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_26F49F898();

  *a2 = v3;
  return result;
}

uint64_t sub_26F3B0D8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26F49F8C8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26F3B0DB8(uint64_t a1)
{
  v2 = sub_26F3B1118(&qword_2806DE8E8, type metadata accessor for Key, &unk_26F4A20C4);
  v3 = sub_26F3B1118(&qword_2806DE8F0, type metadata accessor for Key, &unk_26F4A2064);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_26F3B0E74(uint64_t a1)
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

uint64_t sub_26F3B0EAC(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_26F3B0EE4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
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

unint64_t sub_26F3B0F3C()
{
  result = qword_2806DE838;
  if (!qword_2806DE838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DE828, &qword_26F4A1DC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DE838);
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

unint64_t sub_26F3B0FE8()
{
  result = qword_2806DE848;
  if (!qword_2806DE848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DE830, &qword_26F4A1DD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DE850, &qword_26F4A1DD8);
    type metadata accessor for TranslationUIErrorView(255);
    sub_26F3B1118(&qword_2806DE858, type metadata accessor for TranslationUIErrorView, &protocol conformance descriptor for TranslationUIErrorView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DE848);
  }

  return result;
}

uint64_t sub_26F3B1118(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26F3B11D4(uint64_t a1, int a2)
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

uint64_t sub_26F3B11F4(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_26F3B12A4(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_26F3B1520(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  return v3;
}

uint64_t sub_26F3B158C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE8F8, &qword_26F4A2300);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE900, &qword_26F4A2308);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  v13 = OBJC_IVAR____TtC13TranslationUI25AirplaneModeConfiguration____lazy_storage___isEnabled;
  if (*(v0 + OBJC_IVAR____TtC13TranslationUI25AirplaneModeConfiguration____lazy_storage___isEnabled))
  {
    v14 = *(v0 + OBJC_IVAR____TtC13TranslationUI25AirplaneModeConfiguration____lazy_storage___isEnabled);
  }

  else
  {
    v20 = v9;
    v21 = v10;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE908, &qword_26F4A2310);
    v15 = v0;
    sub_26F49DD78();
    swift_endAccess();
    swift_beginAccess();
    sub_26F49DD78();
    swift_endAccess();
    sub_26F3B18CC(&qword_280F65798, &qword_2806DE8F8, &qword_26F4A2300, MEMORY[0x277CBCEC8]);
    sub_26F49DDF8();
    v16 = *(v2 + 8);
    v16(v4, v1);
    v16(v7, v1);
    sub_26F3B18CC(&qword_280F657B0, &qword_2806DE900, &qword_26F4A2308, MEMORY[0x277CBCC08]);
    v17 = v20;
    v14 = sub_26F49DDD8();
    (*(v21 + 8))(v12, v17);
    *(v15 + v13) = v14;
  }

  return v14;
}

uint64_t sub_26F3B18CC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t (*sub_26F3B192C(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_26F3B158C();
  return sub_26F3B1974;
}

id AirplaneModeConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

NSObject *AirplaneModeConfiguration.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE908, &qword_26F4A2310);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - v3;
  v5 = OBJC_IVAR____TtC13TranslationUI25AirplaneModeConfiguration___enabled;
  v21 = 0;
  sub_26F49DD68();
  v6 = *(v2 + 32);
  v6(&v0[v5], v4, v1);
  v7 = OBJC_IVAR____TtC13TranslationUI25AirplaneModeConfiguration___reachable;
  v21 = 0;
  sub_26F49DD68();
  v6(&v0[v7], v4, v1);
  *&v0[OBJC_IVAR____TtC13TranslationUI25AirplaneModeConfiguration____lazy_storage___isEnabled] = 0;
  v8 = [objc_allocWithZone(MEMORY[0x277CEC5D0]) init];
  *&v0[OBJC_IVAR____TtC13TranslationUI25AirplaneModeConfiguration_radiosPreferences] = v8;
  LOBYTE(v4) = [v8 airplaneMode];
  swift_beginAccess();
  (*(v2 + 8))(&v0[v5], v1);
  v20 = v4;
  sub_26F49DD68();
  swift_endAccess();
  *&v0[OBJC_IVAR____TtC13TranslationUI25AirplaneModeConfiguration_reachability] = SCNetworkReachabilityCreateWithName(0, "apple.com");
  v9 = type metadata accessor for AirplaneModeConfiguration(0);
  v19.receiver = v0;
  v19.super_class = v9;
  v10 = objc_msgSendSuper2(&v19, sel_init);
  v11 = *&v10[OBJC_IVAR____TtC13TranslationUI25AirplaneModeConfiguration_radiosPreferences];
  v12 = v10;
  [v11 setDelegate_];
  if (qword_280F657C0 != -1)
  {
    swift_once();
  }

  v13 = sub_26F49DCA8();
  __swift_project_value_buffer(v13, qword_280F67DF8);
  v14 = v12;
  v15 = sub_26F49DC88();
  v16 = sub_26F49FDF8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67109120;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26F49DDA8();

    *(v17 + 4) = v21;

    _os_log_impl(&dword_26F39E000, v15, v16, "AirplaneModeConfiguration: Airplane mode enabled: %{BOOL}d", v17, 8u);
    MEMORY[0x274391F70](v17, -1, -1);
  }

  else
  {

    v15 = v14;
  }

  sub_26F3B1F0C();
  return v14;
}

id AirplaneModeConfiguration.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR____TtC13TranslationUI25AirplaneModeConfiguration_reachability];
  if (v1)
  {
    v2 = v1;
    SCNetworkReachabilitySetCallback(v2, 0, 0);
    SCNetworkReachabilitySetDispatchQueue(v2, 0);
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for AirplaneModeConfiguration(0);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_26F3B1F0C()
{
  v8 = *MEMORY[0x277D85DE8];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  v1 = *&v0[OBJC_IVAR____TtC13TranslationUI25AirplaneModeConfiguration_reachability];
  if (context.version)
  {
    if (!v1)
    {
      return;
    }

    flags = 0;
    v2 = v1;
    SCNetworkReachabilityGetFlags(v2, &flags);
    v3 = flags & 2;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26F49DDA8();

    if (LOBYTE(context.version) != v3 >> 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(context.version) = v3 >> 1;
      v4 = v0;
      sub_26F49DDB8();
    }

    context.info = v0;
    memset(&context.retain, 0, 24);
    context.version = 0;
    SCNetworkReachabilitySetCallback(v2, sub_26F3B20EC, &context);
    sub_26F3B2E18();
    v5 = sub_26F49FE58();
    SCNetworkReachabilitySetDispatchQueue(v2, v5);
  }

  else
  {
    if (!v1)
    {
      return;
    }

    v2 = v1;
    SCNetworkReachabilitySetCallback(v2, 0, 0);
    SCNetworkReachabilitySetDispatchQueue(v2, 0);
  }
}

void sub_26F3B20EC(uint64_t a1, char a2, void *a3)
{
  if (a3)
  {
    v3 = a3;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26F49DDB8();
  }
}

uint64_t static AirplaneModeConfiguration.isAirplaneModeEnabled.getter()
{
  v0 = sub_26F3B2224(sub_26F3B2ABC, MEMORY[0x277D839B0]);
  if (v0 == 2)
  {
    v1 = [objc_allocWithZone(MEMORY[0x277CEC5D0]) init];
    v2 = [v1 airplaneMode];

    v0 = v2;
  }

  return v0 & 1;
}

uint64_t sub_26F3B2224(uint64_t (*a1)(void), uint64_t a2)
{
  if (qword_280F65AD8 != -1)
  {
    v14 = a1;
    swift_once();
    a1 = v14;
  }

  if (byte_2806EA860 != 1)
  {
    return 2;
  }

  v2 = a1();
  if (v2 == 2)
  {
    return 2;
  }

  v4 = v2;
  if (qword_280F657C0 != -1)
  {
    swift_once();
  }

  v5 = sub_26F49DCA8();
  __swift_project_value_buffer(v5, qword_280F67DF8);
  v6 = sub_26F49DC88();
  v7 = sub_26F49FDB8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    v10 = v4;
    v11 = sub_26F49F938();
    v13 = sub_26F3B38D0(v11, v12, &v15);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_26F39E000, v6, v7, "Network path fixture preempt %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x274391F70](v9, -1, -1);
    MEMORY[0x274391F70](v8, -1, -1);

    return v10;
  }

  else
  {

    return v4;
  }
}

void sub_26F3B2404(char *a1@<X8>)
{
  if (qword_280F65AD8 != -1)
  {
    swift_once();
  }

  if (byte_2806EA860 == 1)
  {
    sub_26F42A1D0(&v12);
    v2 = v12;
    if (v12 != 5)
    {
      if (qword_280F657C0 != -1)
      {
        swift_once();
      }

      v3 = sub_26F49DCA8();
      __swift_project_value_buffer(v3, qword_280F67DF8);
      v4 = sub_26F49DC88();
      v5 = sub_26F49FDB8();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v11 = v7;
        *v6 = 136315138;
        v8 = sub_26F49F938();
        v10 = sub_26F3B38D0(v8, v9, &v11);

        *(v6 + 4) = v10;
        _os_log_impl(&dword_26F39E000, v4, v5, "Network path fixture preempt %s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v7);
        MEMORY[0x274391F70](v7, -1, -1);
        MEMORY[0x274391F70](v6, -1, -1);
      }
    }
  }

  else
  {
    v2 = 5;
  }

  *a1 = v2;
}

Swift::Void __swiftcall AirplaneModeConfiguration.airplaneModeChanged()()
{
  if (qword_280F657C0 != -1)
  {
    swift_once();
  }

  v1 = sub_26F49DCA8();
  __swift_project_value_buffer(v1, qword_280F67DF8);
  v2 = v0;
  v3 = sub_26F49DC88();
  v4 = sub_26F49FDB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = [*(&v2->isa + OBJC_IVAR____TtC13TranslationUI25AirplaneModeConfiguration_radiosPreferences) airplaneMode];

    _os_log_impl(&dword_26F39E000, v3, v4, "Airplane mode changed; is in Airplane mode: %{BOOL,public}d", v5, 8u);
    MEMORY[0x274391F70](v5, -1, -1);
  }

  else
  {

    v3 = v2;
  }

  [*(&v2->isa + OBJC_IVAR____TtC13TranslationUI25AirplaneModeConfiguration_radiosPreferences) airplaneMode];
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v2;
  sub_26F49DDB8();
  sub_26F3B1F0C();
}

uint64_t sub_26F3B2784@<X0>(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  *a4 = v6;
  return result;
}

uint64_t sub_26F3B2800(char *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;
  return sub_26F49DDB8();
}

uint64_t type metadata accessor for AirplaneModeConfiguration(uint64_t a1)
{
  result = qword_280F65898;
  if (!qword_280F65898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26F3B28C0(uint64_t a1)
{
  sub_26F3B2A20();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_26F3B2A20()
{
  if (!qword_280F663B8)
  {
    v0 = sub_26F49DDC8();
    if (!v1)
    {
      atomic_store(v0, &qword_280F663B8);
    }
  }
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

uint64_t sub_26F3B2ABC()
{
  v0 = sub_26F49F958();
  v1 = getenv((v0 + 32));

  if (v1)
  {
    v2 = sub_26F49F9F8();
    v4 = sub_26F3CBEC4(v2, v3);

    if (v4)
    {
      sub_26F4A00F8();
      if (*(v4 + 16) && (v5 = sub_26F45FD44(v17), (v6 & 1) != 0))
      {
        sub_26F3B2DBC(*(v4 + 56) + 32 * v5, v18);
        sub_26F3B2D68(v17);

        if (swift_dynamicCast())
        {
          v7 = 16;
          if (qword_280F657C0 != -1)
          {
            swift_once();
          }

          v8 = sub_26F49DCA8();
          __swift_project_value_buffer(v8, qword_280F67DF8);
          v9 = sub_26F49DC88();
          v10 = sub_26F49FDB8();
          if (os_log_type_enabled(v9, v10))
          {
            v11 = swift_slowAlloc();
            *v11 = 67109120;
            *(v11 + 4) = 16;
            _os_log_impl(&dword_26F39E000, v9, v10, "Airplane mode fixture found %{BOOL}d", v11, 8u);
            MEMORY[0x274391F70](v11, -1, -1);
          }

          return v7;
        }
      }

      else
      {

        sub_26F3B2D68(v17);
      }
    }
  }

  if (qword_280F657C0 != -1)
  {
    swift_once();
  }

  v12 = sub_26F49DCA8();
  __swift_project_value_buffer(v12, qword_280F67DF8);
  v13 = sub_26F49DC88();
  v14 = sub_26F49FDB8();
  if (os_log_type_enabled(v13, v14))
  {
    v7 = 2;
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_26F39E000, v13, v14, "Airplane mode fixture not found", v15, 2u);
    MEMORY[0x274391F70](v15, -1, -1);
  }

  else
  {

    return 2;
  }

  return v7;
}

uint64_t sub_26F3B2DBC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_26F3B2E18()
{
  result = qword_280F65680;
  if (!qword_280F65680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F65680);
  }

  return result;
}

void sub_26F3B2E64(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  v5 = v2;
}

void *sub_26F3B2EBC()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_26F3B2F00(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t AudioAccessoryAssetDownLoadService.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = [objc_allocWithZone(MEMORY[0x277CEF7D8]) init];
  *(v0 + 16) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_allocObject();
    swift_weakInit();
    v7[4] = sub_26F3B3300;
    v7[5] = v3;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_26F3B3308;
    v7[3] = &block_descriptor;
    v4 = _Block_copy(v7);
    v5 = v2;

    [v5 setInterruptionHandler_];
    _Block_release(v4);
  }

  return v0;
}

uint64_t AudioAccessoryAssetDownLoadService.init()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CEF7D8]) init];
  *(v0 + 16) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_allocObject();
    swift_weakInit();
    v7[4] = sub_26F3B3F88;
    v7[5] = v3;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_26F3B3308;
    v7[3] = &block_descriptor_5;
    v4 = _Block_copy(v7);
    v5 = v2;

    [v5 setInterruptionHandler_];
    _Block_release(v4);
  }

  return v0;
}

void sub_26F3B31D0(uint64_t a1)
{
  if (qword_280F66C10 != -1)
  {
    swift_once();
  }

  v1 = sub_26F49DCA8();
  __swift_project_value_buffer(v1, qword_280F67EB8);
  v2 = sub_26F49DC88();
  v3 = sub_26F49FDD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26F39E000, v2, v3, "AudioAccessoryAssetDownLoadService:  interruptionHandler called invalidating manager instance!", v4, 2u);
    MEMORY[0x274391F70](v4, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    v7 = *(v6 + 16);
    *(v6 + 16) = 0;
  }
}

uint64_t sub_26F3B3308(uint64_t a1)
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

void sub_26F3B3364(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_280F66C10 != -1)
  {
    swift_once();
  }

  v10 = sub_26F49DCA8();
  __swift_project_value_buffer(v10, qword_280F67EB8);

  v11 = sub_26F49DC88();
  v12 = sub_26F49FDD8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    aBlock[0] = v27;
    *v13 = 136315650;
    *(v13 + 4) = sub_26F3B38D0(0xD000000000000034, 0x800000026F4AC980, aBlock);
    *(v13 + 12) = 2080;
    v14 = MEMORY[0x274390900](a1, MEMORY[0x277D837D0]);
    v16 = v5;
    v17 = a4;
    v18 = a2;
    v19 = a3;
    v20 = sub_26F3B38D0(v14, v15, aBlock);

    *(v13 + 14) = v20;
    a3 = v19;
    a2 = v18;
    a4 = v17;
    v5 = v16;
    *(v13 + 22) = 1024;
    *(v13 + 24) = a2 & 1;
    _os_log_impl(&dword_26F39E000, v11, v12, "%s started downloading assets identifiers: %s useCellular: %{BOOL}d", v13, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x274391F70](v27, -1, -1);
    MEMORY[0x274391F70](v13, -1, -1);
  }

  swift_beginAccess();
  v21 = *(v5 + 16);
  if (v21)
  {
    v22 = *(v5 + 16);
  }

  else
  {
    v22 = [objc_allocWithZone(MEMORY[0x277CEF7D8]) init];
    v21 = 0;
  }

  v23 = v21;
  v24 = sub_26F49FAD8();
  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26F3B3644;
  aBlock[3] = &block_descriptor_8;
  v25 = _Block_copy(aBlock);

  [v22 downloadTranslationAssets:v24 useCellular:a2 & 1 completion:v25];
  _Block_release(v25);

  v26 = *(v5 + 16);
  *(v5 + 16) = v22;
}

void sub_26F3B3644(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_26F3B36B0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_280F66C10 != -1)
  {
    swift_once();
  }

  v6 = sub_26F49DCA8();
  __swift_project_value_buffer(v6, qword_280F67EB8);

  v7 = sub_26F49DC88();
  v8 = sub_26F49FDF8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_26F3B38D0(a1, a2, v15);
    _os_log_impl(&dword_26F39E000, v7, v8, "AudioAccessoryAssetDownLoadService attempting to show download languages notification for btAddress: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x274391F70](v10, -1, -1);
    MEMORY[0x274391F70](v9, -1, -1);
  }

  swift_beginAccess();
  v11 = *(v3 + 16);
  if (v11)
  {
    v12 = *(v3 + 16);
  }

  else
  {
    v12 = [objc_allocWithZone(MEMORY[0x277CEF7D8]) init];
    v11 = 0;
  }

  v13 = v11;
  v14 = sub_26F49F898();
  [v12 showDownloadLanguagesNotification_];
}

uint64_t AudioAccessoryAssetDownLoadService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_26F3B38D0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26F3B3AA0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_26F3B2DBC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_26F3B3AA0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26F3B3BAC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_26F4A01B8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_26F3B3BAC(uint64_t a1, unint64_t a2)
{
  v3 = sub_26F3B3BF8(a1, a2);
  sub_26F3B3D28(&unk_287F7C9C8);
  return v3;
}

void *sub_26F3B3BF8(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_26F3B3E14(v5, 0);
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

  result = sub_26F4A01B8();
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
        v10 = sub_26F49FA08();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26F3B3E14(v10, 0);
        result = sub_26F4A0148();
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

uint64_t sub_26F3B3D28(uint64_t result)
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

  result = sub_26F3B3E88(result, v11, 1, v3);
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

void *sub_26F3B3E14(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE980, &qword_26F4A2478);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26F3B3E88(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE980, &qword_26F4A2478);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

double sub_26F3B3F94(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEAA0, &qword_26F4A2550);
  sub_26F49F348();
  return v2;
}

double sub_26F3B3FF4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEAA0, &qword_26F4A2550);
  sub_26F49F368();
  return v2;
}

double sub_26F3B4058(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEAA0, &qword_26F4A2550);
  sub_26F49F348();
  return v2;
}

double sub_26F3B40B8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEAA0, &qword_26F4A2550);
  sub_26F49F368();
  return v2;
}

double sub_26F3B411C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEAA0, &qword_26F4A2550);
  sub_26F49F348();
  return v2;
}

double sub_26F3B417C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEAA0, &qword_26F4A2550);
  sub_26F49F368();
  return v2;
}

uint64_t BottomPanelContainer.init(content:panel:)@<X0>(uint64_t (*a1)(void *)@<X0>, void (*a3)(uint64_t)@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v12 = type metadata accessor for BottomPanelContainer(0, &v22);
  v13 = (a9 + v12[14]);
  v26 = 0;
  sub_26F49F338();
  v14 = v23;
  *v13 = v22;
  v13[1] = v14;
  v15 = (a9 + v12[15]);
  v26 = 0;
  sub_26F49F338();
  v16 = v23;
  *v15 = v22;
  v15[1] = v16;
  v17 = (a9 + v12[16]);
  v26 = 0;
  v18 = sub_26F49F338();
  v19 = v23;
  *v17 = v22;
  v17[1] = v19;
  v20 = a1(v18);
  a3(v20);
}

uint64_t BottomPanelContainer.body.getter@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v69 = a2;
  v66 = a1[3];
  v64 = a1[5];
  v58 = sub_26F49F3D8();
  v56 = sub_26F49E308();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DE988, &qword_26F4A2480);
  sub_26F49E308();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DE990, &qword_26F4A2488);
  v59 = sub_26F49E308();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DE998, &qword_26F4A2490);
  v3 = sub_26F49E308();
  v68 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v67 = &v47 - v4;
  v60 = a1[2];
  sub_26F49E308();
  sub_26F49E308();
  sub_26F49E308();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DE9A0, &qword_26F4A2498);
  swift_getTupleTypeMetadata2();
  sub_26F49F638();
  swift_getWitnessTable();
  sub_26F49F428();
  sub_26F49E308();
  WitnessTable = swift_getWitnessTable();
  v6 = MEMORY[0x277CDFC60];
  v92 = WitnessTable;
  v93 = MEMORY[0x277CDFC60];
  v55 = swift_getWitnessTable();
  v7 = sub_26F49DFA8();
  v62 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - v8;
  v61 = sub_26F49E308();
  v57 = sub_26F49E308();
  v63 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v53 = &v47 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DE9A8, &qword_26F4A24A0);
  v51 = sub_26F49E308();
  v65 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v54 = &v47 - v11;
  v90 = swift_getWitnessTable();
  v91 = v6;
  v12 = swift_getWitnessTable();
  v13 = MEMORY[0x277CE0328];
  v50 = sub_26F3B18CC(&qword_280F65738, &qword_2806DE988, &qword_26F4A2480, MEMORY[0x277CE0328]);
  v88 = v12;
  v89 = v50;
  v14 = swift_getWitnessTable();
  v48 = sub_26F3B18CC(&qword_2806DE9B0, &qword_2806DE990, &qword_26F4A2488, MEMORY[0x277CE07C8]);
  v86 = v14;
  v87 = v48;
  v15 = swift_getWitnessTable();
  v16 = sub_26F3B18CC(&qword_2806DE9B8, &qword_2806DE998, &qword_26F4A2490, v13);
  v84 = v15;
  v85 = v16;
  v52 = v3;
  v56 = swift_getWitnessTable();
  v59 = sub_26F49E3E8();
  v17 = sub_26F49E308();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v49 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v58 = &v47 - v21;
  v47 = a1;
  *&v22 = a1[4];
  *(&v22 + 1) = v64;
  *&v23 = v60;
  *(&v23 + 1) = v66;
  v71 = v23;
  v72 = v22;
  v73 = v70;
  sub_26F49EC28();
  v24 = v9;
  sub_26F49DFB8();
  v25 = sub_26F3B417C(a1);
  v27 = v26;
  v29 = v28;
  v30 = v25;
  v31 = swift_getWitnessTable();
  v32 = v53;
  View.bindGeometry(to:reader:)(v27, v29, sub_26F3B6C64, 0, v31, v53, v30);

  (*(v62 + 8))(v24, v7);
  v82 = 0x72666C6C6F726373;
  v83 = 0xEB00000000656D61;
  v80 = v31;
  v81 = v50;
  v78 = swift_getWitnessTable();
  v79 = v48;
  v33 = v57;
  v34 = swift_getWitnessTable();
  v35 = v54;
  sub_26F49EFE8();
  (*(v63 + 8))(v32, v33);
  v36 = v67;
  sub_26F3B5998(v47, v67);
  sub_26F49F598();
  v37 = sub_26F3B18CC(qword_2806DE9C0, &qword_2806DE9A8, &qword_26F4A24A0, MEMORY[0x277CDE2D0]);
  v76 = v34;
  v77 = v37;
  v38 = v51;
  v39 = swift_getWitnessTable();
  v40 = v49;
  v41 = v52;
  sub_26F49F128();
  (*(v68 + 8))(v36, v41);
  (*(v65 + 8))(v35, v38);
  v42 = swift_getWitnessTable();
  v74 = v39;
  v75 = v42;
  swift_getWitnessTable();
  v43 = *(v18 + 16);
  v44 = v58;
  v43(v58, v40, v17);
  v45 = *(v18 + 8);
  v45(v40, v17);
  v43(v69, v44, v17);
  return (v45)(v44, v17);
}

uint64_t sub_26F3B4D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v29 = a1;
  v30 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DE988, &qword_26F4A2480);
  sub_26F49E308();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DE990, &qword_26F4A2488);
  sub_26F49E308();
  sub_26F49E308();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DE9A0, &qword_26F4A2498);
  swift_getTupleTypeMetadata2();
  sub_26F49F638();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_26F49F428();
  v28 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &WitnessTable - v11;
  v13 = sub_26F49E308();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v26 = &WitnessTable - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v27 = &WitnessTable - v17;
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v35 = v29;
  sub_26F49E7F8();
  sub_26F49F418();
  v38[0] = a2;
  v38[1] = a3;
  v38[2] = a4;
  v38[3] = a5;
  v18 = type metadata accessor for BottomPanelContainer(0, v38);
  sub_26F3B411C(v18);
  sub_26F49F5A8();
  v24 = swift_getWitnessTable();
  v19 = v26;
  sub_26F49F108();
  (*(v28 + 8))(v12, v10);
  v36 = v24;
  v37 = MEMORY[0x277CDFC60];
  swift_getWitnessTable();
  v20 = *(v14 + 16);
  v21 = v27;
  v20(v27, v19, v13);
  v22 = *(v14 + 8);
  v22(v19, v13);
  v20(v30, v21, v13);
  return (v22)(v21, v13);
}

uint64_t sub_26F3B5108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v46 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DE988, &qword_26F4A2480);
  sub_26F49E308();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DE990, &qword_26F4A2488);
  v11 = sub_26F49E308();
  v45 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  v14 = sub_26F49E308();
  v47 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v43 = &v38 - v18;
  v51 = a2;
  v52 = a3;
  v53 = a4;
  v54 = a5;
  v44 = type metadata accessor for BottomPanelContainer(0, &v51);
  v42 = a1;
  v19 = sub_26F3B40B8(v44);
  View.bindGeometry(to:reader:)(v20, v21, sub_26F3B564C, 0, a4, v13, v19);

  sub_26F49F5A8();
  v22 = sub_26F3B18CC(&qword_280F65738, &qword_2806DE988, &qword_26F4A2480, MEMORY[0x277CE0328]);
  v58[6] = a4;
  v58[7] = v22;
  WitnessTable = swift_getWitnessTable();
  v24 = sub_26F3B18CC(&qword_2806DE9B0, &qword_2806DE990, &qword_26F4A2488, MEMORY[0x277CE07C8]);
  v58[4] = WitnessTable;
  v58[5] = v24;
  v37 = swift_getWitnessTable();
  sub_26F49F108();
  v45[1](v13, v11);
  v58[2] = v37;
  v58[3] = MEMORY[0x277CDFC60];
  v25 = v14;
  v41 = swift_getWitnessTable();
  v26 = v47;
  v40 = *(v47 + 16);
  v27 = v43;
  v39 = v16;
  v40(v43, v16, v14);
  v28 = *(v26 + 8);
  v47 = v26 + 8;
  v45 = v28;
  (v28)(v16, v14);
  v38 = sub_26F49F248();
  sub_26F3B3F94(v44);
  sub_26F49F5A8();
  sub_26F49E0C8();
  v29 = v58[8];
  LOBYTE(a3) = v59;
  v30 = v60;
  LOBYTE(a2) = v61;
  v32 = v62;
  v31 = v63;
  v33 = v39;
  v40(v39, v27, v25);
  v51 = v38;
  v52 = v29;
  LOBYTE(v53) = a3;
  v54 = v30;
  v55 = a2;
  v56 = v32;
  v57 = v31;
  v34 = v33;
  v58[0] = v33;
  v58[1] = &v51;

  v50[0] = v25;
  v50[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE9A0, &qword_26F4A2498);
  v48 = v41;
  v49 = sub_26F3B6BDC();
  sub_26F3B5790(v58, 2uLL, v50);

  v35 = v45;
  (v45)(v27, v25);

  return (v35)(v34, v25);
}

void sub_26F3B564C()
{
  v0 = sub_26F49E948();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[0] = 0x72666C6C6F726373;
  v12[1] = 0xEB00000000656D61;
  sub_26F49EA58();
  sub_26F49E168();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  (*(v1 + 8))(v3, v0);
  v13.origin.x = v5;
  v13.origin.y = v7;
  v13.size.width = v9;
  v13.size.height = v11;
  CGRectGetMaxY(v13);
}

uint64_t sub_26F3B5790(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_26F49F648();
}

uint64_t sub_26F3B5998@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEA50, &qword_26F4A2528);
  MEMORY[0x28223BE20](v41);
  v40 = (&v34 - v4);
  v5 = a1[3];
  v6 = a1[5];
  v7 = sub_26F49F3D8();
  v35 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  v10 = sub_26F49E308();
  v36 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DE988, &qword_26F4A2480);
  v37 = sub_26F49E308();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DE990, &qword_26F4A2488);
  v13 = sub_26F49E308();
  v14 = *(v13 - 8);
  v38 = v13;
  v39 = v14;
  MEMORY[0x28223BE20](v13);
  v43 = &v34 - v15;
  *&v16 = a1[2];
  *(&v16 + 1) = v5;
  *&v17 = a1[4];
  *(&v17 + 1) = v6;
  v44 = v16;
  v45 = v17;
  v46 = v2;
  sub_26F49E6D8();
  sub_26F49F3C8();
  sub_26F49F5A8();
  WitnessTable = swift_getWitnessTable();
  sub_26F49F108();
  (*(v35 + 8))(v9, v7);
  v18 = sub_26F3B3FF4(a1);
  v20 = v19;
  v22 = v21;
  v23 = v18;
  v51 = WitnessTable;
  v52 = MEMORY[0x277CDFC60];
  v24 = swift_getWitnessTable();
  View.bindGeometry(to:reader:)(v20, v22, sub_26F3B6C64, 0, v24, v43, v23);

  (*(v36 + 8))(v12, v10);
  v25 = v40;
  sub_26F3B61A4(v40);
  sub_26F3B5F18(a1);
  *(v25 + *(v41 + 36)) = v26;
  sub_26F49F5A8();
  v27 = sub_26F3B18CC(&qword_280F65738, &qword_2806DE988, &qword_26F4A2480, MEMORY[0x277CE0328]);
  v49 = v24;
  v50 = v27;
  v28 = swift_getWitnessTable();
  v29 = sub_26F3B18CC(&qword_2806DE9B0, &qword_2806DE990, &qword_26F4A2488, MEMORY[0x277CE07C8]);
  v47 = v28;
  v48 = v29;
  v30 = v38;
  swift_getWitnessTable();
  sub_26F3B68E0();
  v31 = v43;
  sub_26F49EF28();
  sub_26F3B6B4C(v25, &qword_2806DEA50, &qword_26F4A2528);
  return (*(v39 + 8))(v31, v30);
}

void sub_26F3B5F18(uint64_t a1)
{
  sub_26F3B411C(a1);
  sub_26F3B3F94(a1);
  sub_26F3B4058(a1);
}

uint64_t sub_26F3B5F7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = v9;
  v16[1] = v10;
  v16[2] = v11;
  v16[3] = v12;
  v13 = type metadata accessor for BottomPanelContainer(0, v16);
  v14 = *(v6 + 16);
  v14(v8, a1 + *(v13 + 52), a2);
  v14(a3, v8, a2);
  return (*(v6 + 8))(v8, a2);
}

void sub_26F3B6098()
{
  v0 = sub_26F49E938();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F49EA48();
  sub_26F49E168();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  (*(v1 + 8))(v3, v0);
  v13.origin.x = v5;
  v13.origin.y = v7;
  v13.size.width = v9;
  v13.size.height = v11;
  CGRectGetHeight(v13);
}

uint64_t sub_26F3B61A4@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_26F49F248();
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEA78, &qword_26F4A2538) + 36);
  sub_26F49F558();
  v5 = sub_26F49EC48();
  v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEA88, &qword_26F4A2540) + 36)] = v5;
  *a2 = v3;
  v6 = [objc_opt_self() separatorColor];
  sub_26F49F218();
  v7 = sub_26F49F268();

  LODWORD(v4) = sub_26F49EA08();
  sub_26F49F5A8();
  sub_26F49E0C8();
  v8 = sub_26F49F588();
  v10 = v9;
  *&v19 = v7;
  WORD4(v19) = 256;
  HIDWORD(v19) = v4;
  v20 = v16;
  v21 = v17;
  v22 = v18;
  *&v23 = v8;
  *(&v23 + 1) = v9;
  v11 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEA68, &qword_26F4A2530) + 36));
  v12 = v18;
  v11[2] = v17;
  v11[3] = v12;
  v11[4] = v23;
  v13 = v20;
  *v11 = v19;
  v11[1] = v13;
  v24 = v7;
  v25 = 256;
  v26 = v4;
  v28 = v17;
  v29 = v18;
  v27 = v16;
  v30 = v8;
  v31 = v10;
  sub_26F3B6ADC(&v19, &v15);
  return sub_26F3B6B4C(&v24, &qword_2806DEA98, &qword_26F4A2548);
}

void sub_26F3B6354(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_26F3B6878();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26F3B6400(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (v10 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = *(*(v6 - 8) + 64) + 7;
  if (v10 >= a2)
  {
    goto LABEL_29;
  }

  v13 = ((((((v12 + (v11 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = a2 - v10;
  v15 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = v14 + 1;
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

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v21 = v19 - 1;
    if (v15)
    {
      v21 = 0;
      v22 = *a1;
    }

    else
    {
      v22 = 0;
    }

    return v10 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = *(a1 + v13);
    if (v19)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v5 == v10)
  {
    return (*(v4 + 48))(a1);
  }

  v23 = (a1 + v11) & ~v9;
  if (v8 == v10)
  {
    return (*(v7 + 48))(v23, v8, v6);
  }

  v24 = *(((v12 + v23) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v24 >= 0xFFFFFFFF)
  {
    LODWORD(v24) = -1;
  }

  v25 = v24 - 1;
  if (v25 < 0)
  {
    v25 = -1;
  }

  return (v25 + 1);
}

unsigned int *sub_26F3B65EC(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  v13 = v9 + v10;
  v14 = (v9 + v10) & ~v10;
  v15 = v11 + 7;
  v16 = ((((((v11 + 7 + v14) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 >= a3)
  {
    v20 = 0;
    v21 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v17 = a3 - v12;
    if (((((((v11 + 7 + v14) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v18 = v17 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_19:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *(result + v16) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_35;
        }

        *(result + v16) = 0;
      }

      else if (v20)
      {
        *(result + v16) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return result;
      }

LABEL_35:
      if (v6 == v12)
      {
        v25 = *(v5 + 56);

        return v25();
      }

      else
      {
        result = ((result + v13) & ~v10);
        if (v8 == v12)
        {
          v26 = *(v7 + 56);

          return v26(result);
        }

        else
        {
          v27 = ((result + v15) & 0xFFFFFFFFFFFFFFF8);
          if (a2 > 0x7FFFFFFE)
          {
            *v27 = a2 - 0x7FFFFFFF;
            v27[1] = 0;
          }

          else
          {
            v27[1] = a2;
          }
        }
      }

      return result;
    }
  }

  if (v16)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  if (v16)
  {
    v23 = ~v12 + a2;
    v24 = result;
    bzero(result, v16);
    result = v24;
    *v24 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *(result + v16) = v22;
    }

    else
    {
      *(result + v16) = v22;
    }
  }

  else if (v20)
  {
    *(result + v16) = v22;
  }

  return result;
}

void sub_26F3B6878()
{
  if (!qword_2806DEA48)
  {
    v0 = sub_26F49F378();
    if (!v1)
    {
      atomic_store(v0, &qword_2806DEA48);
    }
  }
}

unint64_t sub_26F3B68E0()
{
  result = qword_2806DEA58;
  if (!qword_2806DEA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DEA50, &qword_26F4A2528);
    sub_26F3B696C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DEA58);
  }

  return result;
}

unint64_t sub_26F3B696C()
{
  result = qword_2806DEA60;
  if (!qword_2806DEA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DEA68, &qword_26F4A2530);
    sub_26F3B6A24();
    sub_26F3B18CC(&qword_2806DEA90, &qword_2806DEA98, &qword_26F4A2548, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DEA60);
  }

  return result;
}

unint64_t sub_26F3B6A24()
{
  result = qword_2806DEA70;
  if (!qword_2806DEA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DEA78, &qword_26F4A2538);
    sub_26F3B18CC(&qword_2806DEA80, &qword_2806DEA88, &qword_26F4A2540, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DEA70);
  }

  return result;
}

uint64_t sub_26F3B6ADC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEA98, &qword_26F4A2548);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F3B6B4C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_26F3B6BDC()
{
  result = qword_2806DEAA8;
  if (!qword_2806DEAA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DE9A0, &qword_26F4A2498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DEAA8);
  }

  return result;
}

uint64_t type metadata accessor for CameraPreviewDebugView(uint64_t a1)
{
  result = qword_2806DEAB8;
  if (!qword_2806DEAB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26F3B6D10(uint64_t a1)
{
  sub_26F3B6DCC(319, &qword_2806DEAC8, MEMORY[0x277D839F8]);
  if (v1 <= 0x3F)
  {
    sub_26F3B6DCC(319, &qword_2806DEAD0, MEMORY[0x277D839B0]);
    if (v2 <= 0x3F)
    {
      sub_26F3B6E18(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26F3B6DCC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_26F49DF38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26F3B6E18(uint64_t a1)
{
  if (!qword_280F65760)
  {
    sub_26F49E148();
    v1 = sub_26F49DFE8();
    if (!v2)
    {
      atomic_store(v1, &qword_280F65760);
    }
  }
}

uint64_t sub_26F3B6E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_26F49E6A8();
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEAE8, &qword_26F4A2638);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEAE0, &qword_26F4A2630);
  v11 = *(v10 - 8);
  v24 = v10;
  v25 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  v30 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEB10, &unk_26F4A2650);
  sub_26F3B18CC(&qword_2806DEB18, &qword_2806DEB10, &unk_26F4A2650, MEMORY[0x277CE14C0]);
  sub_26F49ED98();
  v29 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEAF0, &qword_26F4A2640);
  v15 = sub_26F3B18CC(&qword_2806DEAF8, &qword_2806DEAE8, &qword_26F4A2638, MEMORY[0x277CDE580]);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DEB00, &qword_26F4A2648);
  v17 = sub_26F3B18CC(&qword_2806DEB08, &qword_2806DEB00, &qword_26F4A2648, MEMORY[0x277CDDB60]);
  v31 = v16;
  v32 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26F49F148();
  (*(v7 + 8))(v9, v6);
  v20 = v26;
  v19 = v27;
  (*(v26 + 104))(v5, *MEMORY[0x277CDDDC0], v27);
  v31 = v6;
  v32 = v14;
  v33 = v15;
  v34 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v21 = v24;
  sub_26F49F058();
  (*(v20 + 8))(v5, v19);
  return (*(v25 + 8))(v13, v21);
}

uint64_t sub_26F3B7298@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v42 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEB38, &qword_26F4A2668);
  v47 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v46 = &v32 - v5;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEB40, &qword_26F4A2670);
  v44 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v45 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEB48, &qword_26F4A2678);
  v38 = *(v43 - 8);
  v10 = v38;
  MEMORY[0x28223BE20](v43);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  v50 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEB50, &qword_26F4A2680);
  v16 = MEMORY[0x277CE14C0];
  sub_26F3B18CC(&qword_2806DEB58, &qword_2806DEB50, &qword_26F4A2680, MEMORY[0x277CE14C0]);
  v37 = v15;
  sub_26F49F4F8();
  v49 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEB60, &qword_26F4A2688);
  sub_26F3B18CC(&qword_2806DEB68, &qword_2806DEB60, &qword_26F4A2688, v16);
  v35 = v9;
  sub_26F49F4F8();
  v48 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEB70, &qword_26F4A2690);
  sub_26F3B18CC(&qword_2806DEB78, &qword_2806DEB70, &qword_26F4A2690, MEMORY[0x277CDF028]);
  v17 = v46;
  sub_26F49F4F8();
  v32 = *(v10 + 16);
  v36 = v12;
  v18 = v43;
  v32(v12, v15, v43);
  v34 = *(v44 + 16);
  v19 = v45;
  v20 = v39;
  v34(v45, v9, v39);
  v33 = *(v47 + 16);
  v21 = v40;
  v22 = v17;
  v23 = v41;
  v33(v40, v22, v41);
  v24 = v42;
  v32(v42, v12, v18);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEB80, &qword_26F4A2698);
  v34(&v24[*(v25 + 48)], v19, v20);
  v26 = v21;
  v33(&v24[*(v25 + 64)], v21, v23);
  v27 = *(v47 + 8);
  v27(v46, v23);
  v28 = *(v44 + 8);
  v28(v35, v20);
  v29 = *(v38 + 8);
  v30 = v43;
  v29(v37, v43);
  v27(v26, v23);
  v28(v45, v20);
  return (v29)(v36, v30);
}

uint64_t sub_26F3B7808@<X0>(char *a2@<X8>)
{
  v29 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEBB8, &qword_26F4A26C0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v28 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEBC0, &qword_26F4A26C8);
  v8 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  sub_26F49DF28();
  v27 = v13;
  sub_26F49F408();
  sub_26F49DF28();
  sub_26F49F408();
  sub_26F49DF08();
  v14 = v30;
  KeyPath = swift_getKeyPath();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  v17 = &v7[*(v3 + 44)];
  *v17 = KeyPath;
  v17[1] = sub_26F3B8DBC;
  v17[2] = v16;
  v18 = *(v8 + 16);
  v19 = v26;
  v18(v10, v13, v26);
  v20 = v28;
  sub_26F3B8DD4(v7, v28, &qword_2806DEBB8, &qword_26F4A26C0);
  v21 = v29;
  v18(v29, v10, v19);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEBC8, &qword_26F4A2700);
  sub_26F3B8DD4(v20, &v21[*(v22 + 48)], &qword_2806DEBB8, &qword_26F4A26C0);
  sub_26F3B8E3C(v7);
  v23 = *(v8 + 8);
  v23(v27, v19);
  sub_26F3B8E3C(v20);
  return (v23)(v10, v19);
}

double sub_26F3B7B3C@<D0>(uint64_t a1@<X8>)
{
  result = 1.7745885e248;
  *a1 = xmmword_26F4A2570;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  return result;
}

void sub_26F3B7B5C(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000010;
  *(a1 + 8) = 0x800000026F4ACAF0;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
}

uint64_t sub_26F3B7B8C@<X0>(uint64_t *a2@<X8>)
{
  v28 = a2;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEBA0, &qword_26F4A26B0);
  v2 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - v5;
  v7 = sub_26F49E758();
  MEMORY[0x28223BE20](v7 - 8);
  sub_26F49E748();
  sub_26F49E738();
  sub_26F49E718();
  sub_26F49E738();
  sub_26F49DF08();
  sub_26F49E708();
  sub_26F49E738();
  sub_26F49E718();
  sub_26F49E738();
  sub_26F49E778();
  v8 = sub_26F49EEC8();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_26F49DF28();
  v29 = xmmword_26F4A2580;
  sub_26F3B8CEC();
  v25 = v6;
  sub_26F49F3F8();
  v15 = *(v2 + 16);
  v16 = v26;
  v17 = v6;
  v18 = v27;
  v15(v26, v17, v27);
  v19 = v28;
  *v28 = v8;
  v19[1] = v10;
  v20 = v12 & 1;
  *(v19 + 16) = v12 & 1;
  v19[3] = v14;
  v21 = v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEBB0, &qword_26F4A26B8);
  v15(v21 + *(v22 + 48), v16, v18);
  sub_26F3B0EE4(v8, v10, v20);
  v23 = *(v2 + 8);

  v23(v25, v18);
  v23(v16, v18);
  sub_26F3B8D40(v8, v10, v20);
}

uint64_t sub_26F3B7F10(uint64_t a1)
{
  v2 = type metadata accessor for CameraPreviewDebugView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEB88, &qword_26F4A26A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  sub_26F49DF48();
  v8 = sub_26F49DF68();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  sub_26F3B89B4(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_26F3B8A18(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEB90, &qword_26F4A26A8);
  sub_26F3B8C64();
  return sub_26F49F388();
}

uint64_t sub_26F3B80E8(uint64_t *a1)
{
  sub_26F49DF18();
  sub_26F49DF18();
  return sub_26F49DF18();
}

__n128 sub_26F3B815C@<Q0>(uint64_t a2@<X8>)
{
  sub_26F49F5A8();
  sub_26F49E3D8();
  *a2 = xmmword_26F4A2590;
  *(a2 + 16) = 0;
  *(a2 + 24) = MEMORY[0x277D84F90];
  *(a2 + 96) = v8;
  *(a2 + 112) = v9;
  *(a2 + 128) = v10;
  *(a2 + 32) = v4;
  *(a2 + 48) = v5;
  result = v7;
  *(a2 + 64) = v6;
  *(a2 + 80) = v7;
  return result;
}

uint64_t sub_26F3B8214(uint64_t a1)
{
  v2 = sub_26F49E998();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEB00, &qword_26F4A2648);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_26F49E968();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEB20, &qword_26F4A9FF0);
  sub_26F3B18CC(&qword_2806DEB28, &qword_2806DEB20, &qword_26F4A9FF0, MEMORY[0x277CDF028]);
  sub_26F49E3C8();
  v7 = sub_26F3B18CC(&qword_2806DEB08, &qword_2806DEB00, &qword_26F4A2648, MEMORY[0x277CDDB60]);
  MEMORY[0x27438F7E0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26F3B8400(uint64_t a1)
{
  v2 = type metadata accessor for CameraPreviewDebugView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_26F3B89B4(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_26F3B8A18(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return sub_26F49F398();
}

uint64_t sub_26F3B852C(uint64_t a1)
{
  v16 = sub_26F49E678();
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEB30, &qword_26F4A2660);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = sub_26F49E148();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CameraPreviewDebugView(0);
  sub_26F3B8DD4(a1 + *(v12 + 28), v7, &qword_2806DEB30, &qword_26F4A2660);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_26F49FDE8();
    v13 = sub_26F49EC18();
    sub_26F49DBC8();

    sub_26F49E668();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_26F49E138();
  return (*(v9 + 8))(v11, v8);
}

double sub_26F3B87B4@<D0>(uint64_t a1@<X8>)
{
  *&result = 1701736260;
  *a1 = xmmword_26F4A25A0;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_26F3B87D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEAD8, &qword_26F4A2628);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DEAE0, &qword_26F4A2630);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DEAE8, &qword_26F4A2638);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DEAF0, &qword_26F4A2640);
  sub_26F3B18CC(&qword_2806DEAF8, &qword_2806DEAE8, &qword_26F4A2638, MEMORY[0x277CDE580]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DEB00, &qword_26F4A2648);
  sub_26F3B18CC(&qword_2806DEB08, &qword_2806DEB00, &qword_26F4A2648, MEMORY[0x277CDDB60]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_26F49E278();
}

uint64_t sub_26F3B89B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CameraPreviewDebugView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F3B8A18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CameraPreviewDebugView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for CameraPreviewDebugView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEB30, &qword_26F4A2660);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_26F49E148();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26F3B8BF0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CameraPreviewDebugView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_26F3B8C64()
{
  result = qword_2806DEB98;
  if (!qword_2806DEB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DEB90, &qword_26F4A26A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DEB98);
  }

  return result;
}

unint64_t sub_26F3B8CEC()
{
  result = qword_2806DEBA8;
  if (!qword_2806DEBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DEBA8);
  }

  return result;
}

uint64_t sub_26F3B8D40(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_26F3B8D50@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26F49E608();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26F3B8DD4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26F3B8E3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEBB8, &qword_26F4A26C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CloseButton.init(action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_26F3ACE98(0, 0);
  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t CloseButton.makeUIView(context:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEBE0, &qword_26F4A2710);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  sub_26F3B0C24(0, &qword_2806DEBE8, 0x277D75220);
  sub_26F3B0C24(0, &qword_2806DE810, 0x277D750C8);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_26F49FF58();
  return sub_26F49FF88();
}

uint64_t sub_26F3B9094()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEBE0, &qword_26F4A2710);
  sub_26F49EB28();
  v1 = *(v4 + 16);
  v0 = *(v4 + 24);
  if (v1)
  {
    v2 = sub_26F3ACF68(*(v4 + 16), *(v4 + 24));
    v1(v2);
  }

  return sub_26F3ACE98(v1, v0);
}

uint64_t CloseButton.makeCoordinator()()
{
  v1 = *v0;
  v2 = v0[1];
  type metadata accessor for CloseButton.Coordinator();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_26F3ACF68(v1, v2);
  return v3;
}

uint64_t CloseButton.Coordinator.__deallocating_deinit()
{
  sub_26F3ACE98(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

unint64_t sub_26F3B91EC()
{
  result = qword_2806DEBF0;
  if (!qword_2806DEBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DEBF0);
  }

  return result;
}

uint64_t sub_26F3B9240(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEBE0, &qword_26F4A2710);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  sub_26F3B0C24(0, &qword_2806DEBE8, 0x277D75220);
  sub_26F3B0C24(0, &qword_2806DE810, 0x277D750C8);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_26F49FF58();
  return sub_26F49FF88();
}

uint64_t sub_26F3B93F8@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  type metadata accessor for CloseButton.Coordinator();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = v5;

  return sub_26F3ACF68(v4, v3);
}

uint64_t sub_26F3B94A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26F3B9684();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_26F3B950C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26F3B9684();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_26F3B9570(uint64_t a1)
{
  sub_26F3B9684();
  sub_26F49E908();
  __break(1u);
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26F3B95B0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_26F3B960C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_26F3B9684()
{
  result = qword_2806DEBF8;
  if (!qword_2806DEBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DEBF8);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEBE0, &qword_26F4A2710);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_26F3B976C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEBE0, &qword_26F4A2710);

  return sub_26F3B9094();
}

id sub_26F3B98B8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ActionModel();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t CloseButtonModifier.init(position:enabled:action:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 16) = *a1;
  *(a5 + 17) = a2;
  *a5 = [objc_allocWithZone(type metadata accessor for ActionModel()) init];
  *(a5 + 8) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEC00, &qword_26F4A2880);
  sub_26F49F348();
  v8 = &v10[OBJC_IVAR____TtC13TranslationUIP33_1A302F1D41F983AACAEA0A320F7AE9EC11ActionModel_action];
  *v8 = a3;
  *(v8 + 1) = a4;
}

void sub_26F3B99D0(void *a1)
{
  v2 = *v1;
  if (v1[1] == 1)
  {
    v3 = a1;
    v4 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:24 target:*(v1 + 1) action:sel_performActionWithSender_];
    a1 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = &selRef_setRightBarButtonItem_;
  if (!v2)
  {
    v5 = &selRef_setLeftBarButtonItem_;
  }

  v6 = v4;
  [a1 *v5];
}

void CloseButtonModifier.body(content:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEC00, &qword_26F4A2880);
  sub_26F49F348();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEC10, &qword_26F4A2888);
  sub_26F3B9B7C();
  sub_26F3B9BE0();
  sub_26F49F0A8();
}

unint64_t sub_26F3B9B7C()
{
  result = qword_2806DEC18;
  if (!qword_2806DEC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DEC10, &qword_26F4A2888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DEC18);
  }

  return result;
}

unint64_t sub_26F3B9BE0()
{
  result = qword_2806DEC20;
  if (!qword_2806DEC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DEC20);
  }

  return result;
}

uint64_t CloseButtonPosition.hashValue.getter()
{
  v1 = *v0;
  sub_26F4A0528();
  MEMORY[0x274391330](v1);
  return sub_26F4A0568();
}

uint64_t _s13TranslationUI25DisambiguationResultModelC12TextLocationO9hashValueSivg_0()
{
  v1 = *v0;
  sub_26F4A0528();
  MEMORY[0x274391330](v1);
  return sub_26F4A0568();
}

uint64_t sub_26F3B9CF4(uint64_t a1)
{
  v2 = *v1;
  sub_26F4A0528();
  MEMORY[0x274391330](v2);
  return sub_26F4A0568();
}

uint64_t View.closeButton(position:enabled:action:)(char *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  v12 = [objc_allocWithZone(type metadata accessor for ActionModel()) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEC00, &qword_26F4A2880);
  sub_26F49F348();
  v13 = v19;
  v14 = &v19[OBJC_IVAR____TtC13TranslationUIP33_1A302F1D41F983AACAEA0A320F7AE9EC11ActionModel_action];
  *v14 = a3;
  *(v14 + 1) = a4;

  v16[0] = v12;
  v16[1] = 0;
  v17 = v11;
  v18 = a2;
  MEMORY[0x27438FF50](v16, a5, &type metadata for CloseButtonModifier, a6);
}

unint64_t sub_26F3B9E64()
{
  result = qword_2806DEC28;
  if (!qword_2806DEC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DEC28);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_26F3B9ECC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_26F3B9F14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CloseButtonPosition(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CloseButtonPosition(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26F3BA0C0()
{
  result = qword_2806DEC30;
  if (!qword_2806DEC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DEC30);
  }

  return result;
}

uint64_t sub_26F3BA114(uint64_t a1, int a2)
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

uint64_t sub_26F3BA15C(uint64_t result, int a2, int a3)
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

uint64_t static Color.sourceTextColor.getter()
{
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return sub_26F49F298();
}

uint64_t static Color.broadcastTintColor.getter()
{
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return sub_26F49F298();
}

uint64_t sub_26F3BA2C4()
{
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_26F49F298();
  v2 = sub_26F49F268();

  return v2;
}

uint64_t sub_26F3BA360()
{
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return sub_26F49F298();
}

uint64_t sub_26F3BA404(SEL *a1)
{
  v1 = [objc_opt_self() *a1];

  return sub_26F49F218();
}

uint64_t static Color.disabledCardButtonFillColor.getter()
{
  v0 = [objc_opt_self() systemGroupedBackgroundColor];
  sub_26F49F218();
  v1 = sub_26F49F268();

  return v1;
}

uint64_t sub_26F3BA4CC()
{
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_26F49F298();
  v2 = sub_26F49F268();

  return v2;
}

void static UIColor.sourceTextColor.getter()
{
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_26F49F898();
  v3 = [objc_opt_self() colorNamed:v2 inBundle:v1 compatibleWithTraitCollection:0];

  if (!v3)
  {
    __break(1u);
  }
}

void static UIColor.translateAccentColor.getter()
{
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_26F49F898();
  v3 = [objc_opt_self() colorNamed:v2 inBundle:v1 compatibleWithTraitCollection:0];

  if (!v3)
  {
    __break(1u);
  }
}

void static UIColor.broadcastTintColor.getter()
{
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_26F49F898();
  v3 = [objc_opt_self() colorNamed:v2 inBundle:v1 compatibleWithTraitCollection:0];

  if (!v3)
  {
    __break(1u);
  }
}

uint64_t static UIColor.sourceLinkColor.getter()
{
  sub_26F3BA7F4();
  v0 = [objc_opt_self() secondaryLabelColor];
  sub_26F49F218();
  return sub_26F49FF08();
}

unint64_t sub_26F3BA7F4()
{
  result = qword_280F65648;
  if (!qword_280F65648)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F65648);
  }

  return result;
}

uint64_t sub_26F3BA858()
{
  sub_26F3BA7F4();
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_26F49F298();
  sub_26F49F268();

  return sub_26F49FF08();
}

uint64_t static UIColor.targetTextColor.getter()
{
  sub_26F3BA7F4();
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_26F49F298();
  return sub_26F49FF08();
}

id static UIColor.appBackgroundColor.getter()
{
  v0 = [objc_opt_self() systemGroupedBackgroundColor];

  return v0;
}

uint64_t sub_26F3BA9F8()
{
  sub_26F3BA7F4();
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_26F49F298();
  sub_26F49F268();

  return sub_26F49FF08();
}

__n128 ContainerStyle.body(content:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEC38, &qword_26F4A2A60);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v23 - v6;
  v8 = sub_26F49EC48();
  sub_26F49DF78();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEC40, &qword_26F4A2A68);
  (*(*(v17 - 8) + 16))(v7, a1, v17);
  v18 = &v7[*(v5 + 44)];
  *v18 = v8;
  *(v18 + 1) = v10;
  *(v18 + 2) = v12;
  *(v18 + 3) = v14;
  *(v18 + 4) = v16;
  v18[40] = 0;
  sub_26F49F5A8();
  sub_26F49E3D8();
  sub_26F3BAC6C(v7, a2);
  v19 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEC48, &qword_26F4A2A70) + 36);
  v20 = v23[5];
  *(v19 + 64) = v23[4];
  *(v19 + 80) = v20;
  *(v19 + 96) = v23[6];
  v21 = v23[1];
  *v19 = v23[0];
  *(v19 + 16) = v21;
  result = v23[3];
  *(v19 + 32) = v23[2];
  *(v19 + 48) = result;
  return result;
}

uint64_t sub_26F3BAC6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEC38, &qword_26F4A2A60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for ContainerStyle(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ContainerStyle(_WORD *result, int a2, int a3)
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

unint64_t sub_26F3BAE04()
{
  result = qword_2806DEC50;
  if (!qword_2806DEC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DEC48, &qword_26F4A2A70);
    sub_26F3BAE90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DEC50);
  }

  return result;
}

unint64_t sub_26F3BAE90()
{
  result = qword_2806DEC58;
  if (!qword_2806DEC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DEC38, &qword_26F4A2A60);
    sub_26F3BAF1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DEC58);
  }

  return result;
}

unint64_t sub_26F3BAF1C()
{
  result = qword_2806DEC60;
  if (!qword_2806DEC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DEC40, &qword_26F4A2A68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DEC60);
  }

  return result;
}

unint64_t sub_26F3BAF80()
{
  result = qword_2806DEC68;
  if (!qword_2806DEC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DEC68);
  }

  return result;
}

uint64_t sub_26F3BAFD4@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DECA8, &qword_26F4A2C20);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v40 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DECB0, &qword_26F4A2C28);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DECB8, &qword_26F4A2C30);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DECC0, &qword_26F4A2C38);
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  sub_26F49EAD8();
  v18 = &v6[*(v4 + 44)];
  *v18 = 0;
  *(v18 + 4) = 1;
  LOBYTE(v4) = sub_26F49EC48();
  sub_26F49DF78();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_26F3BBAEC(v6, v10, &qword_2806DECA8, &qword_26F4A2C20);
  v27 = &v10[*(v8 + 44)];
  *v27 = v4;
  *(v27 + 1) = v20;
  *(v27 + 2) = v22;
  *(v27 + 3) = v24;
  *(v27 + 4) = v26;
  v27[40] = 0;
  sub_26F49F5A8();
  sub_26F49E0C8();
  sub_26F3BBAEC(v10, v14, &qword_2806DECB0, &qword_26F4A2C28);
  KeyPath = 0;
  v29 = 0;
  v30 = 0;
  v31 = &v14[*(v12 + 44)];
  v32 = v43;
  *v31 = v42;
  *(v31 + 1) = v32;
  *(v31 + 2) = v44;
  if (a1)
  {
    v29 = sub_26F49F258();
    KeyPath = swift_getKeyPath();
    if (sub_26F49EAE8())
    {
      v30 = 0x3FE3333333333333;
    }

    else
    {
      v30 = 0x3FF0000000000000;
    }
  }

  v33 = sub_26F49F5A8();
  v35 = v34;
  sub_26F3BBAEC(v14, v17, &qword_2806DECB8, &qword_26F4A2C30);
  v36 = &v17[*(v15 + 36)];
  *v36 = KeyPath;
  v36[1] = v29;
  v36[2] = v30;
  v36[3] = v33;
  v36[4] = v35;
  if (a1 & 1 | ((sub_26F49EAE8() & 1) == 0))
  {
    v37 = 1.0;
  }

  else
  {
    v37 = 0.6;
  }

  v38 = v41;
  sub_26F3BBAEC(v17, v41, &qword_2806DECC0, &qword_26F4A2C38);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DECC8, &qword_26F4A2C40);
  *(v38 + *(result + 36)) = v37;
  return result;
}

uint64_t ConversationButton.init(action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_26F3ACE98(0, 0);
  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t ConversationButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEC70, &qword_26F4A2AE0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-v5];
  v8 = *v1;
  v7 = v1[1];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  sub_26F3ACF68(v8, v7);
  sub_26F49F398();
  v12[15] = 1;
  sub_26F3B18CC(&qword_2806DEC78, &qword_2806DEC70, &qword_26F4A2AE0, MEMORY[0x277CDF028]);
  sub_26F3BB688();
  sub_26F49EF58();
  (*(v4 + 8))(v6, v3);
  v10 = sub_26F49F228();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEC88, &qword_26F4A2AE8);
  *(a1 + *(result + 36)) = v10;
  return result;
}

uint64_t sub_26F3BB550@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_26F49F2C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F49F2B8();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v6 = sub_26F49F2F8();

  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  return result;
}

unint64_t sub_26F3BB688()
{
  result = qword_2806DEC80;
  if (!qword_2806DEC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DEC80);
  }

  return result;
}

uint64_t sub_26F3BB6F8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEC70, &qword_26F4A2AE0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-v5];
  v8 = *v1;
  v7 = v1[1];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  sub_26F3ACF68(v8, v7);
  sub_26F49F398();
  v12[15] = 1;
  sub_26F3B18CC(&qword_2806DEC78, &qword_2806DEC70, &qword_26F4A2AE0, MEMORY[0x277CDF028]);
  sub_26F3BB688();
  sub_26F49EF58();
  (*(v4 + 8))(v6, v3);
  v10 = sub_26F49F228();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEC88, &qword_26F4A2AE8);
  *(a1 + *(result + 36)) = v10;
  return result;
}

unint64_t sub_26F3BB8E4()
{
  result = qword_2806DEC90;
  if (!qword_2806DEC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DEC88, &qword_26F4A2AE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DEC70, &qword_26F4A2AE0);
    sub_26F3B18CC(&qword_2806DEC78, &qword_2806DEC70, &qword_26F4A2AE0, MEMORY[0x277CDF028]);
    sub_26F3BB688();
    swift_getOpaqueTypeConformance2();
    sub_26F3B18CC(&qword_2806DEC98, &qword_2806DECA0, &qword_26F4A3E80, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DEC90);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TranslateButtonStyle(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_26F3BBAEC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroyTm_1()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26F3BBB94()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

unint64_t sub_26F3BBBC4()
{
  result = qword_2806DECD0;
  if (!qword_2806DECD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DECC8, &qword_26F4A2C40);
    sub_26F3BBC50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DECD0);
  }

  return result;
}

unint64_t sub_26F3BBC50()
{
  result = qword_2806DECD8;
  if (!qword_2806DECD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DECC0, &qword_26F4A2C38);
    sub_26F3BBD08();
    sub_26F3B18CC(&qword_2806DED00, &qword_2806DED08, &qword_26F4A2C78, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DECD8);
  }

  return result;
}

unint64_t sub_26F3BBD08()
{
  result = qword_2806DECE0;
  if (!qword_2806DECE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DECB8, &qword_26F4A2C30);
    sub_26F3BBD94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DECE0);
  }

  return result;
}

unint64_t sub_26F3BBD94()
{
  result = qword_2806DECE8;
  if (!qword_2806DECE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DECB0, &qword_26F4A2C28);
    sub_26F3BBE20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DECE8);
  }

  return result;
}

unint64_t sub_26F3BBE20()
{
  result = qword_2806DECF0;
  if (!qword_2806DECF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DECA8, &qword_26F4A2C20);
    sub_26F3BBEAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DECF0);
  }

  return result;
}

unint64_t sub_26F3BBEAC()
{
  result = qword_2806DECF8;
  if (!qword_2806DECF8)
  {
    sub_26F49EAC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DECF8);
  }

  return result;
}

unint64_t CoreAnalyticsLogger.Event.rawValue.getter()
{
  if (*v0)
  {
    return 0xD00000000000001DLL;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_26F3BBF50(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD00000000000001DLL;
  }

  else
  {
    v3 = 0xD000000000000016;
  }

  if (v2)
  {
    v4 = "connected";
  }

  else
  {
    v4 = "didOfferDisambiguation";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD00000000000001DLL;
  }

  else
  {
    v6 = 0xD000000000000016;
  }

  if (*a2)
  {
    v7 = "didOfferDisambiguation";
  }

  else
  {
    v7 = "connected";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26F4A0458();
  }

  return v9 & 1;
}

uint64_t sub_26F3BBFFC()
{
  sub_26F4A0528();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

uint64_t sub_26F3BC07C(uint64_t a1)
{
  sub_26F49F9A8();
}

uint64_t sub_26F3BC0E8(uint64_t a1)
{
  sub_26F4A0528();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

void sub_26F3BC170(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000001DLL;
  }

  else
  {
    v2 = 0xD000000000000016;
  }

  if (*v1)
  {
    v3 = "didOfferDisambiguation";
  }

  else
  {
    v3 = "connected";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t static CoreAnalyticsLogger.shared.getter()
{
  v0 = type metadata accessor for CoreAnalyticsLogger();

  return MEMORY[0x2821FEAF0](v0, &unk_2806DE7F8);
}

uint64_t sub_26F3BC204(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  if (qword_2806DE778 != -1)
  {
    swift_once();
  }

  v4 = sub_26F49DCA8();
  __swift_project_value_buffer(v4, qword_2806EA878);
  swift_bridgeObjectRetain_n();
  v5 = sub_26F49DC88();
  v6 = sub_26F49FDC8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136446723;
    v20 = v8;
    sub_26F4A0178();

    v18 = 0xD000000000000016;
    v19 = 0x800000026F4ACCD0;
    if (v3)
    {
      v9 = 0xD00000000000001DLL;
    }

    else
    {
      v9 = 0xD000000000000016;
    }

    if (v3)
    {
      v10 = "didOfferDisambiguation";
    }

    else
    {
      v10 = "connected";
    }

    MEMORY[0x2743907E0](v9, v10 | 0x8000000000000000);

    v11 = sub_26F3B38D0(v18, v19, &v20);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2081;
    v12 = sub_26F49F808();
    v14 = sub_26F3B38D0(v12, v13, &v20);

    *(v7 + 14) = v14;
    *(v7 + 22) = 2050;
    v15 = *(a2 + 16);

    *(v7 + 24) = v15;

    _os_log_impl(&dword_26F39E000, v5, v6, "Sending event %{public}s with payload: %{private}s; number of keys: %{public}ld", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x274391F70](v8, -1, -1);
    MEMORY[0x274391F70](v7, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  LOBYTE(v18) = v3;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;

  sub_26F3BC4C0(&v18, sub_26F3BF03C, v16);
}

void sub_26F3BC4C0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v24 = *v3;
  v6 = *a1;
  if (qword_2806DE778 != -1)
  {
    swift_once();
  }

  v7 = sub_26F49DCA8();
  __swift_project_value_buffer(v7, qword_2806EA878);
  v8 = sub_26F49DC88();
  v9 = sub_26F49FDC8();
  if (os_log_type_enabled(v8, v9))
  {
    v23 = a3;
    v10 = swift_slowAlloc();
    v22 = a2;
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136446210;
    sub_26F4A0178();

    aBlock = 0xD000000000000016;
    v27 = 0x800000026F4ACCD0;
    if (v6)
    {
      v12 = 0xD00000000000001DLL;
    }

    else
    {
      v12 = 0xD000000000000016;
    }

    if (v6)
    {
      v13 = "didOfferDisambiguation";
    }

    else
    {
      v13 = "connected";
    }

    v14 = v13 | 0x8000000000000000;
    MEMORY[0x2743907E0](v12, v13 | 0x8000000000000000);

    v15 = sub_26F3B38D0(aBlock, v27, &v25);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_26F39E000, v8, v9, "Got request to lazily log event %{public}s with a payload provider", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    v16 = v11;
    a2 = v22;
    MEMORY[0x274391F70](v16, -1, -1);
    v17 = v10;
    a3 = v23;
    MEMORY[0x274391F70](v17, -1, -1);
  }

  else
  {

    if (v6)
    {
      v12 = 0xD00000000000001DLL;
    }

    else
    {
      v12 = 0xD000000000000016;
    }

    if (v6)
    {
      v18 = "didOfferDisambiguation";
    }

    else
    {
      v18 = "connected";
    }

    v14 = v18 | 0x8000000000000000;
  }

  aBlock = 0;
  v27 = 0xE000000000000000;
  sub_26F4A0178();

  aBlock = 0xD000000000000016;
  v27 = 0x800000026F4ACCD0;
  MEMORY[0x2743907E0](v12, v14);

  v19 = sub_26F49F898();

  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  *(v20 + 32) = v6;
  *(v20 + 40) = v24;
  v30 = sub_26F3BE16C;
  v31 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_26F3BCAB0;
  v29 = &block_descriptor_0;
  v21 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v21);
}

void *sub_26F3BC81C(uint64_t (*a1)(void), uint64_t a2, char a3)
{
  v4 = a1();
  v5 = sub_26F3BE930(v4);

  if (qword_2806DE778 != -1)
  {
    swift_once();
  }

  v6 = sub_26F49DCA8();
  __swift_project_value_buffer(v6, qword_2806EA878);
  swift_bridgeObjectRetain_n();
  v7 = sub_26F49DC88();
  v8 = sub_26F49FDC8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 136446723;
    v19 = v10;
    sub_26F4A0178();

    if (a3)
    {
      v11 = 0xD00000000000001DLL;
    }

    else
    {
      v11 = 0xD000000000000016;
    }

    if (a3)
    {
      v12 = "didOfferDisambiguation";
    }

    else
    {
      v12 = "connected";
    }

    MEMORY[0x2743907E0](v11, v12 | 0x8000000000000000);

    v13 = sub_26F3B38D0(0xD000000000000016, 0x800000026F4ACCD0, &v19);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2081;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED50, &qword_26F4A2F48);
    v14 = sub_26F49F938();
    v16 = sub_26F3B38D0(v14, v15, &v19);

    *(v9 + 14) = v16;
    *(v9 + 22) = 2050;
    if (v5)
    {
      v17 = v5[2];
    }

    else
    {
      v17 = 0;
    }

    *(v9 + 24) = v17;

    _os_log_impl(&dword_26F39E000, v7, v8, "Sending event %{public}s with payload: %{private}s; number of keys: %{public}ld", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x274391F70](v10, -1, -1);
    MEMORY[0x274391F70](v9, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  return v5;
}

id sub_26F3BCAB0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_26F3BE194();
    v4 = sub_26F49F7E8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_26F3BCB48@<X0>(char *a4@<X8>)
{
  v5 = sub_26F4A02A8();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a4 = v7;
  return result;
}

uint64_t CoreAnalyticsLogger.CardType.rawValue.getter()
{
  if (*v0)
  {
    return 0x657474696D6D6F63;
  }

  else
  {
    return 0x65736F706D6F63;
  }
}

uint64_t sub_26F3BCBE8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x657474696D6D6F63;
  }

  else
  {
    v3 = 0x65736F706D6F63;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE900000000000064;
  }

  if (*a2)
  {
    v5 = 0x657474696D6D6F63;
  }

  else
  {
    v5 = 0x65736F706D6F63;
  }

  if (*a2)
  {
    v6 = 0xE900000000000064;
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
    v8 = sub_26F4A0458();
  }

  return v8 & 1;
}

uint64_t sub_26F3BCC94()
{
  sub_26F4A0528();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

uint64_t sub_26F3BCD1C(uint64_t a1)
{
  sub_26F49F9A8();
}

uint64_t sub_26F3BCD90(uint64_t a1)
{
  sub_26F4A0528();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

uint64_t sub_26F3BCE20@<X0>(char *a3@<X8>)
{
  v4 = sub_26F4A02A8();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_26F3BCE7C(uint64_t *a1@<X8>)
{
  v2 = 0x65736F706D6F63;
  if (*v1)
  {
    v2 = 0x657474696D6D6F63;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000064;
  }

  *a1 = v2;
  a1[1] = v3;
}

TranslationUI::CoreAnalyticsLogger::InteractionLocation_optional __swiftcall CoreAnalyticsLogger.InteractionLocation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26F4A02A8();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t CoreAnalyticsLogger.InteractionLocation.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7463416B63697571;
  v3 = 0xD000000000000015;
  if (v1 != 5)
  {
    v3 = 0x657469726F766166;
  }

  v4 = 0x61546172656D6163;
  if (v1 != 3)
  {
    v4 = 0x61737265766E6F63;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x74616C736E617274;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_26F3BD048(uint64_t a1)
{
  sub_26F49F9A8();
}

void sub_26F3BD1A4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB000000006E6F69;
  v4 = 0x7463416B63697571;
  v5 = 0x800000026F4AC300;
  v6 = 0xD000000000000015;
  if (v2 != 5)
  {
    v6 = 0x657469726F766166;
    v5 = 0xEC00000062615473;
  }

  v7 = 0xE900000000000062;
  v8 = 0x61546172656D6163;
  if (v2 != 3)
  {
    v8 = 0x61737265766E6F63;
    v7 = 0xEF6261546E6F6974;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v2 != 1)
  {
    v4 = 0x74616C736E617274;
    v3 = 0xEE006261546E6F69;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x800000026F4AC2B0;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_26F3BD2BC(unsigned __int8 *a1, char a2, char a3, char a4)
{
  v7 = *a1;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED10, &qword_26F4A2CB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26F4A2CA0;
  *(inited + 32) = 0x6570795464726163;
  v9 = MEMORY[0x277D837D0];
  v10 = 0x65736F706D6F63;
  if (v7)
  {
    v10 = 0x657474696D6D6F63;
  }

  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = v10;
  v11 = 0xE700000000000000;
  if (v7)
  {
    v11 = 0xE900000000000064;
  }

  *(inited + 56) = v11;
  *(inited + 72) = v9;
  *(inited + 80) = 0xD000000000000013;
  *(inited + 88) = 0x800000026F4ACC50;
  strcpy((inited + 96), "translationTab");
  *(inited + 111) = -18;
  *(inited + 120) = v9;
  *(inited + 128) = 0x65646E6547736168;
  v12 = MEMORY[0x277D839B0];
  *(inited + 136) = 0xE900000000000072;
  *(inited + 144) = a2;
  *(inited + 168) = v12;
  *(inited + 176) = 0x696E61654D736168;
  *(inited + 184) = 0xEA0000000000676ELL;
  *(inited + 192) = a3;
  *(inited + 216) = v12;
  *(inited + 224) = 0xD000000000000022;
  *(inited + 232) = 0x800000026F4ACC70;
  *(inited + 264) = v12;
  *(inited + 240) = a4;
  v13 = sub_26F3BDADC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED18, &qword_26F4A2CB8);
  swift_arrayDestroy();
  sub_26F3BC204(&v15, v13);
}

uint64_t sub_26F3BD498(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, void *a4)
{
  v49 = a4;
  v6 = 0xE900000000000062;
  v7 = 0xD000000000000011;
  v8 = sub_26F49DAB8();
  v47 = *(v8 - 8);
  v48 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v44 = &v43 - v12;
  v13 = *a1;
  v14 = *a2;
  v56[0] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED10, &qword_26F4A2CB0);
  inited = swift_initStackObject();
  v16 = inited;
  *(inited + 16) = xmmword_26F4A2CA0;
  *(inited + 32) = 0x6570795464726163;
  v45 = inited + 32;
  v17 = MEMORY[0x277D837D0];
  v18 = 0x65736F706D6F63;
  if (v13)
  {
    v18 = 0x657474696D6D6F63;
  }

  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = v18;
  v19 = 0xE700000000000000;
  if (v13)
  {
    v19 = 0xE900000000000064;
  }

  *(inited + 56) = v19;
  *(inited + 72) = v17;
  strcpy((inited + 80), "selectedType");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  v20 = _LTDisambiguationTypeDescription();
  v21 = sub_26F49F8C8();
  v23 = v22;

  *(v16 + 96) = v21;
  *(v16 + 104) = v23;
  v24 = v17;
  *(v16 + 120) = v17;
  *(v16 + 128) = 0xD000000000000013;
  *(v16 + 136) = 0x800000026F4ACC50;
  v46 = v10;
  if (v14 <= 2)
  {
    if (v14)
    {
      v25 = v44;
      if (v14 == 1)
      {
        v6 = 0xEB000000006E6F69;
        v7 = 0x7463416B63697571;
      }

      else
      {
        v6 = 0xEE006261546E6F69;
        v7 = 0x74616C736E617274;
      }
    }

    else
    {
      v6 = 0x800000026F4AC2B0;
      v25 = v44;
    }
  }

  else if (v14 > 4)
  {
    v25 = v44;
    if (v14 == 5)
    {
      v6 = 0x800000026F4AC300;
      v7 = 0xD000000000000015;
    }

    else
    {
      v6 = 0xEC00000062615473;
      v7 = 0x657469726F766166;
    }
  }

  else
  {
    v25 = v44;
    if (v14 == 3)
    {
      v7 = 0x61546172656D6163;
    }

    else
    {
      v6 = 0xEF6261546E6F6974;
      v7 = 0x61737265766E6F63;
    }
  }

  *(v16 + 144) = v7;
  *(v16 + 152) = v6;
  v26 = v24;
  *(v16 + 168) = v24;
  strcpy((v16 + 176), "sourceLocale");
  *(v16 + 189) = 0;
  *(v16 + 190) = -5120;
  v27 = [v49 sourceLocale];
  sub_26F49DA18();

  v54 = sub_26F49D988();
  v55 = v28;
  v52 = 45;
  v53 = 0xE100000000000000;
  v50 = 95;
  v51 = 0xE100000000000000;
  sub_26F3BDC0C();
  v29 = sub_26F49FFF8();
  v31 = v30;
  v32 = *(v47 + 8);
  v33 = v25;
  v34 = v48;
  v32(v33, v48);

  *(v16 + 192) = v29;
  *(v16 + 200) = v31;
  *(v16 + 216) = v26;
  strcpy((v16 + 224), "targetLocale");
  *(v16 + 237) = 0;
  *(v16 + 238) = -5120;
  v35 = [v49 targetLocale];
  v36 = v46;
  sub_26F49DA18();

  v54 = sub_26F49D988();
  v55 = v37;
  v52 = 45;
  v53 = 0xE100000000000000;
  v50 = 95;
  v51 = 0xE100000000000000;
  v38 = sub_26F49FFF8();
  v40 = v39;
  v32(v36, v34);

  *(v16 + 264) = v26;
  *(v16 + 240) = v38;
  *(v16 + 248) = v40;
  v41 = sub_26F3BDADC(v16);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED18, &qword_26F4A2CB8);
  swift_arrayDestroy();
  sub_26F3BC204(v56, v41);
}

unint64_t sub_26F3BD9D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED58, &qword_26F4A2F50);
    v3 = sub_26F4A0288();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_26F45FD88(v5, v6);
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

unint64_t sub_26F3BDADC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED90, &qword_26F4AA100);
    v3 = sub_26F4A0288();
    v4 = a1 + 32;

    while (1)
    {
      sub_26F3B8DD4(v4, &v13, &qword_2806DED18, &qword_26F4A2CB8);
      v5 = v13;
      v6 = v14;
      result = sub_26F45FD88(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_26F3BE15C(&v15, (v3[7] + 32 * result));
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