uint64_t sub_21C76475C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C7647D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF44B0, &unk_21CBA9AC0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21C76488C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF44B0, &unk_21CBA9AC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C764938()
{
  type metadata accessor for PMOnboardingView(255);
  sub_21C8B6F98();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C764990(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDEC7B8, &unk_21CBABBE0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_21C764B20(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDEC7B8, &unk_21CBABBE0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_21C764D34()
{
  v1 = type metadata accessor for PMAppRecentlyDeletedAccountsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;

  v6 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21CB823B4();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21CB82A34();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21CB83834();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v5 + v10, 1, v11))
    {
      (*(v12 + 8))(v5 + v10, v11);
    }
  }

  else
  {
  }

  sub_21C7025C4(*(v5 + v1[9]), *(v5 + v1[9] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C764FC0()
{
  v1 = type metadata accessor for PMAppRecentlyDeletedAccountsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21CB823B4();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21CB82A34();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21CB83834();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v5 + v10, 1, v11))
    {
      (*(v12 + 8))(v5 + v10, v11);
    }
  }

  else
  {
  }

  sub_21C7025C4(*(v5 + v1[9]), *(v5 + v1[9] + 8));

  return MEMORY[0x2821FE8E8](v0, v4 + v3 + 1, v2 | 7);
}

uint64_t sub_21C765240()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C7654B0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21C76564C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for PMAppSourceListModel.Source(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5) && swift_getEnumCaseMultiPayload() <= 1)
  {
    v6 = sub_21CB85C44();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C765868(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA0, &qword_21CBAE130);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA8, &qword_21CBAE138);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[7]);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEACB0, &qword_21CBA0360);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[8];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_21C765A54(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA0, &qword_21CBAE130);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA8, &qword_21CBAE138);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEACB0, &qword_21CBA0360);
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + a4[8];

    return v18(v19, a2, a2, v17);
  }

  return result;
}

uint64_t sub_21C765C44()
{
  v1 = type metadata accessor for PMAppRootNavigationView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA0, &qword_21CBAE130);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v0 + v3 + v1[5];

  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA8, &qword_21CBAE138) + 32);
  v9 = sub_21CB83AD4();
  (*(*(v9 - 8) + 8))(v7 + v8, v9);

  v10 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21CB83834();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v5 + v10, 1, v11))
    {
      (*(v12 + 8))(v5 + v10, v11);
    }
  }

  else
  {
  }

  v13 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEADD0, &qword_21CBA6F70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_21CB81FE4();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C765F50()
{
  v1 = type metadata accessor for PMAppRootNavigationView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA0, &qword_21CBAE130);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v0 + v3 + v1[5];

  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA8, &qword_21CBAE138) + 32);
  v9 = sub_21CB83AD4();
  (*(*(v9 - 8) + 8))(v7 + v8, v9);

  v10 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21CB83834();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v5 + v10, 1, v11))
    {
      (*(v12 + 8))(v5 + v10, v11);
    }
  }

  else
  {
  }

  v13 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEADD0, &qword_21CBA6F70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_21CB81FE4();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_21C7662C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21CB82E64();
  *a1 = result & 1;
  return result;
}

double sub_21C7662F0@<D0>(_OWORD *a1@<X8>)
{
  sub_21C726188();
  sub_21CB82F94();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_21C766370()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21C7663EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21C7664F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21C7666D4()
{
  v1 = (type metadata accessor for PMAppSecurityRecommendationsList(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CB83834();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C7668A0()
{
  v1 = (type metadata accessor for PMAppSecurityRecommendationsList(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CB83834();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_21C766A78()
{
  v1 = (type metadata accessor for PMAppSecurityRecommendationsList(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CB83834();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  else
  {
  }

  v10 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v10 + 32, v2 | 7);
}

uint64_t sub_21C766C58()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0390, &qword_21CBAEBA8);
  type metadata accessor for PMAppSecurityRecommendationsModel(255);
  sub_21C8EFFC4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C766D1C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF44B0, &unk_21CBA9AC0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_21C766DD8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF44B0, &unk_21CBA9AC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C766E88(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF44B0, &unk_21CBA9AC0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_21C766F44(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF44B0, &unk_21CBA9AC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C766FF8()
{

  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_21C76712C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C7672BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_21C9020E4(v1, v2);
}

uint64_t sub_21C76732C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C767364()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21C767400(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PMImageBadgeModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_21CB83744();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0CD8, &qword_21CBB0020);
  sub_21CB828F4();
  sub_21CB828F4();
  sub_21CB828F4();
  sub_21CB828F4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21CB825B4();
  swift_getWitnessTable();
  sub_21CB82AD4();
  sub_21CB828F4();
  sub_21CB834A4();
  swift_getWitnessTable();
  sub_21C6EADEC(&qword_27CDF0CE0, &qword_27CDF0CD8, &qword_21CBB0020, MEMORY[0x277CE03E8]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21C76768C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DA0, &qword_21CBB01F8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_21C7677CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DA0, &qword_21CBB01F8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_21C767910@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21CB82C34();
  *a1 = result;
  return result;
}

uint64_t sub_21C767AB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1100, &qword_21CBB0A20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C767B28()
{

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_21C767BA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEA0, &qword_21CBADCC8);
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

uint64_t sub_21C767C20(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEA0, &qword_21CBADCC8);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21C767CEC()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21C767D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMAccount(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 8);
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

uint64_t sub_21C767E04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PMAccount(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = a2;
  }

  return result;
}

uint64_t sub_21C767ED0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1380, &unk_21CBB10F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C767F40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1380, &unk_21CBB10F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C767FD0@<X0>(void *a1@<X8>)
{
  sub_21C7D37FC();
  result = sub_21CB82F94();
  *a1 = v3;
  return result;
}

uint64_t sub_21C768024@<X0>(_BYTE *a1@<X8>)
{
  sub_21C7D38A8();
  result = sub_21CB82F94();
  *a1 = v3;
  return result;
}

uint64_t sub_21C7680E0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5A0, &unk_21CBA5080);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_21C76821C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5A0, &unk_21CBA5080);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21C768484()
{
  v1 = type metadata accessor for PMCombinedAccountDetailsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  sub_21C79C1F4(*(v5 + 48), *(v5 + 56), *(v5 + 64));
  sub_21C940E04(*(v5 + 72), *(v5 + 80));
  sub_21C7025C4(*(v5 + 88), *(v5 + 96));
  v6 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21CB82834();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  sub_21C7025C4(*(v5 + v1[11]), *(v5 + v1[11] + 8));
  v8 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21CB83834();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }
  }

  else
  {
  }

  v11 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_21C7025C4(*(v5 + v1[13]), *(v5 + v1[13] + 8));

  return MEMORY[0x2821FE8E8](v0, v12 + 8, v2 | 7);
}

uint64_t sub_21C7688E8(id *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *a1;
  v5 = *a1;
  return sub_21C87ED30(v4, v3);
}

uint64_t sub_21C7689A4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C7689DC()
{
  v1 = type metadata accessor for PMCombinedAccountDetailsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;

  sub_21C79C1F4(*(v5 + 48), *(v5 + 56), *(v5 + 64));
  sub_21C940E04(*(v5 + 72), *(v5 + 80));
  sub_21C7025C4(*(v5 + 88), *(v5 + 96));
  v6 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21CB82834();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  sub_21C7025C4(*(v5 + v1[11]), *(v5 + v1[11] + 8));
  v8 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21CB83834();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }
  }

  else
  {
  }

  sub_21C7025C4(*(v5 + v1[13]), *(v5 + v1[13] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C768C40()
{
  v1 = type metadata accessor for PMCombinedAccountDetailsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  sub_21C79C1F4(*(v5 + 48), *(v5 + 56), *(v5 + 64));
  sub_21C940E04(*(v5 + 72), *(v5 + 80));
  sub_21C7025C4(*(v5 + 88), *(v5 + 96));
  v6 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21CB82834();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  sub_21C7025C4(*(v5 + v1[11]), *(v5 + v1[11] + 8));
  v8 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21CB83834();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }
  }

  else
  {
  }

  sub_21C7025C4(*(v5 + v1[13]), *(v5 + v1[13] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

id sub_21C768EE0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21C95C78C();
  *a1 = result;
  return result;
}

void sub_21C768F0C(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 16);
  *(*a2 + 16) = *a1;
  v4 = v2;

  sub_21C942960(v3);
}

uint64_t sub_21C768F50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21C95C884();
  *a1 = result;
  return result;
}

uint64_t sub_21C768F7C(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 24) = *a1;
}

uint64_t sub_21C768FE4()
{
  v1 = type metadata accessor for PMCombinedAccountDetailsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  sub_21C79C1F4(*(v5 + 48), *(v5 + 56), *(v5 + 64));
  sub_21C940E04(*(v5 + 72), *(v5 + 80));
  sub_21C7025C4(*(v5 + 88), *(v5 + 96));
  v6 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21CB82834();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  sub_21C7025C4(*(v5 + v1[11]), *(v5 + v1[11] + 8));
  v8 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21CB83834();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }
  }

  else
  {
  }

  v11 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_21C7025C4(*(v5 + v1[13]), *(v5 + v1[13] + 8));

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v2 | 7);
}

uint64_t sub_21C769264@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21CB82E94();
  *a1 = result;
  return result;
}

uint64_t sub_21C7693E4()
{
  v1 = (type metadata accessor for PMConfigureCredentialProviderExtensionView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21CB823B4();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C769500()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21C76954C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_21C769608(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C7696BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5A8, &qword_21CBA43E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_21C769784(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5A8, &qword_21CBA43E0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_21C769858(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1EC8, &qword_21CBB2AB8);
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

uint64_t sub_21C7698D0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1EC8, &qword_21CBB2AB8);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21C769A38()
{
  swift_unknownObjectRelease();

  sub_21C70AC30(*(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 89, 7);
}

uint64_t sub_21C769AA4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1F10, &qword_21CBB2C48);
  sub_21C94B05C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C769B68()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21C769BB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB85C44();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21C769C1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB85C44();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21C769C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMSharingGroup(0);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_21C769D54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PMSharingGroup(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_21C769E40()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21C769E9C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_21C769F58(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C76A010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_21C76A0D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C76A29C()
{
  v1 = (type metadata accessor for PMAppAccountDetailsWindowView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2538, &qword_21CBB40E8);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2518, &qword_21CBB40D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21CB832B4();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C76A3FC@<X0>(_BYTE *a1@<X8>)
{
  sub_21C7D79CC();
  result = sub_21CB82F94();
  *a1 = v3;
  return result;
}

uint64_t sub_21C76A4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2538, &qword_21CBB40E8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2560, &unk_21CBC34F0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21C76A5A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2538, &qword_21CBB40E8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2560, &unk_21CBC34F0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21C76A6C0()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_21C76A728(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2618, &qword_21CBB4300);
  swift_getTupleTypeMetadata3();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84E14();

  return swift_getWitnessTable();
}

uint64_t sub_21C76A8D8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C76A928()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2740, &qword_21CBB4848);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2760, &qword_21CBB4858);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2738, &qword_21CBB4840);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2730, &qword_21CBB4838);
  sub_21CB829D4();
  sub_21C6EADEC(&qword_27CDF2758, &qword_27CDF2730, &qword_21CBB4838, MEMORY[0x277CDE580]);
  sub_21C9630D4(&qword_27CDED1A0, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2768, &qword_21CBB4860);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDA80, &unk_21CBA81E0);
  sub_21C6EADEC(&qword_27CDF2770, &qword_27CDEDA80, &unk_21CBA81E0, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C76AB54()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C76AB90()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C76ABD0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = v4 + *(v2 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, AssociatedTypeWitness);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_21C76AD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for PMFocusedCopyMenu(0, v5, *(v4 + 24), a4) - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(v6 + 64);
  (*(*(v5 - 8) + 8))(v4 + v8, v5);

  return MEMORY[0x2821FE8E8](v4, v8 + v9, v7 | 7);
}

uint64_t sub_21C76AE10(void *a1)
{
  swift_getAssociatedTypeWitness();
  sub_21CB85864();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEEBA0, &qword_21CBABC80);
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_21CB85004();
  sub_21C735EA0();
  return swift_getWitnessTable();
}

uint64_t sub_21C76AF20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CB823B4();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_21C76AFE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21CB823B4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_21C76B0E4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C76B11C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C76B198(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for PMSharingGroup(0);
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
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_21C76B324(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for PMSharingGroup(0);
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
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_21C76B4BC()
{
  v1 = *(type metadata accessor for PMSharingGroup(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_21CB85C44();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C76B5D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMSharingGroup(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_21C76B704(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PMSharingGroup(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_21C76BBC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1FA8, &unk_21CBB9290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C76BC40()
{
  v1 = (type metadata accessor for PMEditGroupView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  v6 = sub_21CB85C44();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  type metadata accessor for PMSharingGroup(0);

  sub_21C70AC30(*(v5 + v1[8]), *(v5 + v1[8] + 8));

  v7 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CB83834();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C76BE64()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C76BEFC()
{
  v1 = (type metadata accessor for PMEditGroupView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  v6 = sub_21CB85C44();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  type metadata accessor for PMSharingGroup(0);

  sub_21C70AC30(*(v5 + v1[8]), *(v5 + v1[8] + 8));

  v7 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CB83834();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 17, v2 | 7);
}

uint64_t sub_21C76C138()
{
  v1 = (type metadata accessor for PMEditGroupView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  v6 = sub_21CB85C44();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  type metadata accessor for PMSharingGroup(0);

  sub_21C70AC30(*(v5 + v1[8]), *(v5 + v1[8] + 8));

  v7 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CB83834();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_21C76C374()
{
  v1 = (type metadata accessor for PMEditGroupView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  v6 = sub_21CB85C44();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  type metadata accessor for PMSharingGroup(0);

  sub_21C70AC30(*(v5 + v1[8]), *(v5 + v1[8] + 8));

  v7 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CB83834();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_21C76C5C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21CB82E74();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21C76C5F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21CB82E84();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21C76C668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CB81884();
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

uint64_t sub_21C76C728(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21CB81884();
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

uint64_t sub_21C76C7F4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4600, &qword_21CBB5D00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = sub_21CB817E4();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = sub_21CB81A04();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = sub_21CB81744();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v16 = sub_21CB817C4();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  v18 = *(a1 + a3[13]);
  if (v18 >= 0xFFFFFFFF)
  {
    LODWORD(v18) = -1;
  }

  return (v18 + 1);
}

uint64_t sub_21C76C9E4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4600, &qword_21CBB5D00);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_21CB817E4();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_21CB81A04();
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        v17 = sub_21CB81744();
        if (*(*(v17 - 8) + 84) == a3)
        {
          v10 = v17;
          v14 = *(v17 - 8);
          v15 = a4[7];
        }

        else
        {
          result = sub_21CB817C4();
          if (*(*(result - 8) + 84) != a3)
          {
            *(a1 + a4[13]) = (a2 - 1);
            return result;
          }

          v10 = result;
          v14 = *(result - 8);
          v15 = a4[8];
        }
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21C76CC18()
{
  v1 = type metadata accessor for PMCredentialPickerHeaderContentView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_21CB81864();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = v1[5];
  v9 = sub_21CB817E4();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  v10 = v1[6];
  v11 = sub_21CB81A04();
  (*(*(v11 - 8) + 8))(v5 + v10, v11);
  v12 = v1[7];
  v13 = sub_21CB81744();
  (*(*(v13 - 8) + 8))(v5 + v12, v13);
  v14 = v1[8];
  v15 = sub_21CB817C4();
  (*(*(v15 - 8) + 8))(v5 + v14, v15);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

double sub_21C76CF7C@<D0>(_OWORD *a1@<X8>)
{
  sub_21C72C1CC();
  sub_21CB82F94();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_21C76CFE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2DD0, &qword_21CBB6438);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21C76D058(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2DD0, &qword_21CBB6438);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21C76D100()
{
  v1 = (type metadata accessor for PMEditableWebsite(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_21CB80E34();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  if (*(v0 + v3 + v1[8] + 8) >= 2uLL)
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C76D20C()
{
  v1 = (type metadata accessor for PMEditableWebsite(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_21CB80E34();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  if (*(v0 + v3 + v1[8] + 8) >= 2uLL)
  {
  }

  v6 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_21C79C1F4(*(v0 + v6 + 40), *(v0 + v6 + 48), *(v0 + v6 + 56));

  return MEMORY[0x2821FE8E8](v0, v6 + 57, v2 | 7);
}

void sub_21C76D358()
{
  sub_21C8F0690();

  JUMPOUT(0x21CF131E0);
}

uint64_t sub_21C76D3B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2F58, &qword_21CBB6A68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C76D420(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2F58, &qword_21CBB6A68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C76D49C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_21C76D558(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C76D608()
{
  v1 = (type metadata accessor for PMOtpauthQRCodeScannerView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21CB823B4();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C76D728()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_21C76D778()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C76D804()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF30E0, &qword_21CBB7128);
  sub_21C98FC48();
  sub_21C71F3FC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C76D894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CB818C4();
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

uint64_t sub_21C76D9F0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for PMSharingGroup(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21C76DA9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PMSharingGroup(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C76DB40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3178, &qword_21CBB7260);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3180, &qword_21CBB7268);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21C76DC48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3178, &qword_21CBB7260);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3180, &qword_21CBB7268);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21C76DD5C()
{
  v1 = type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters(0);
  v2 = *(v1 - 8);
  v19 = *(v2 + 80);
  v3 = (v19 + 16) & ~v19;
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = type metadata accessor for PMRemoveGroupMemberConfirmationAlert(0);
  v17 = *(*(v15 - 8) + 80);
  v18 = *(*(v15 - 8) + 64);
  v16 = (v4 + v17 + 112) & ~v17;

  v5 = v0 + v3 + *(v1 + 24);
  v6 = sub_21CB85C44();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  type metadata accessor for PMSharingGroup(0);

  v8 = v0 + v3 + *(v1 + 28);
  if (*(v8 + 40))
  {
  }

  v9 = v0 + v16;
  if (!(*(v2 + 48))(v0 + v16, 1, v1))
  {

    v7(v9 + *(v1 + 24), v6);

    v10 = v9 + *(v1 + 28);
    if (*(v10 + 40))
    {
    }
  }

  v11 = *(v15 + 20);
  v12 = sub_21CB823B4();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v9 + v11, 1, v12))
  {
    (*(v13 + 8))(v9 + v11, v12);
  }

  return MEMORY[0x2821FE8E8](v0, v16 + v18, v19 | v17 | 7);
}

uint64_t sub_21C76E148()
{
  v1 = type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters(0);
  v2 = *(v1 - 8);
  v20 = *(v2 + 80);
  v3 = (v20 + 32) & ~v20;
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = type metadata accessor for PMRemoveGroupMemberConfirmationAlert(0);
  v5 = *(v16 - 8);
  v18 = (v4 + *(v5 + 80) + 112) & ~*(v5 + 80);
  v19 = *(v5 + 80);
  v17 = *(v5 + 64);
  swift_unknownObjectRelease();

  v6 = v0 + v3 + *(v1 + 24);
  v7 = sub_21CB85C44();
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);
  type metadata accessor for PMSharingGroup(0);

  v9 = v0 + v3 + *(v1 + 28);
  if (*(v9 + 40))
  {
  }

  v10 = v0 + v18;
  if (!(*(v2 + 48))(v0 + v18, 1, v1))
  {

    v8(v10 + *(v1 + 24), v7);

    v11 = v10 + *(v1 + 28);
    if (*(v11 + 40))
    {
    }
  }

  v12 = *(v16 + 20);
  v13 = sub_21CB823B4();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v10 + v12, 1, v13))
  {
    (*(v14 + 8))(v10 + v12, v13);
  }

  return MEMORY[0x2821FE8E8](v0, v18 + v17, v20 | v19 | 7);
}

uint64_t sub_21C76E540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMGeneratedPassword.ID(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for PMGeneratedPassword.Storage(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21C76E630(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PMGeneratedPassword.ID(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for PMGeneratedPassword.Storage(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21C76E72C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21CB80DD4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21C76E7D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21CB80DD4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C76E87C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_21C76E8C8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_21C995058(v1);
}

uint64_t sub_21C76E934()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21C76E988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBD00, &unk_21CBA20F0);
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

uint64_t sub_21C76EA54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBD00, &unk_21CBA20F0);
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

uint64_t sub_21C76EB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMGeneratedPassword(0);
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

uint64_t sub_21C76EBE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PMGeneratedPassword(0);
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

uint64_t sub_21C76EC98()
{
  v1 = type metadata accessor for PMGeneratedPasswordCell(0);
  v20 = *(*(v1 - 8) + 80);
  v2 = (v20 + 16) & ~v20;
  v3 = *(*(v1 - 8) + 64);
  v4 = type metadata accessor for PMGeneratedPassword(0);
  v18 = *(*(v4 - 8) + 80);
  v19 = *(*(v4 - 8) + 64);
  v17 = (v2 + v3 + v18) & ~v18;
  v21 = v0;
  v5 = v0 + v2;

  v6 = type metadata accessor for PMGeneratedPassword.ID(0);
  v7 = *(v6 + 24);
  v8 = sub_21CB80DD4();
  v9 = *(*(v8 - 8) + 8);
  v9(v5 + v7, v8);
  v10 = (v5 + *(v4 + 20));
  type metadata accessor for PMGeneratedPassword.Storage(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30);
    v9(v10 + *(v12 + 64), v8);
  }

  sub_21C7025C4(*(v5 + *(v1 + 36)), *(v5 + *(v1 + 36) + 8));

  v9(v21 + v17 + *(v6 + 24), v8);
  v13 = (v21 + v17 + *(v4 + 20));
  v14 = swift_getEnumCaseMultiPayload();

  if (v14 == 1)
  {

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30);
    v9(v13 + *(v15 + 64), v8);
  }

  return MEMORY[0x2821FE8E8](v21, v17 + v19, v20 | v18 | 7);
}

uint64_t sub_21C76EFA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMGeneratedPassword(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21C76F014(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMGeneratedPassword(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21C76F084()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3398, &qword_21CBB7910);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1748, &qword_21CBBDF70);
  type metadata accessor for PMGeneratedPassword(255);
  sub_21C99C624();
  sub_21C71F3FC();
  sub_21C6EADEC(&qword_27CDF1750, &qword_27CDF1748, &qword_21CBBDF70, MEMORY[0x277CE14C0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C76F188()
{
  v1 = *(type metadata accessor for PMGeneratedPasswordMenu(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);

  v5 = *(type metadata accessor for PMGeneratedPassword.ID(0) + 24);
  v6 = sub_21CB80DD4();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3 + v5, v6);
  v8 = (v0 + v3 + *(type metadata accessor for PMGeneratedPassword(0) + 20));
  type metadata accessor for PMGeneratedPassword.Storage(0);
  LODWORD(v5) = swift_getEnumCaseMultiPayload();

  if (v5 == 1)
  {

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30);
    v7(v8 + *(v9 + 64), v6);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C76F358(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3530, &qword_21CBB7C10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3538, &qword_21CBB7C18);
  sub_21CB831E4();
  sub_21CB828F4();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84F04();
  sub_21CB84B94();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3520, qword_21CBB7BA8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21C99FB6C();
  swift_getOpaqueTypeMetadata2();
  sub_21CB82834();
  swift_getOpaqueTypeConformance2();
  sub_21C99FC44();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C76F57C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_21C76F64C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21C76F7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
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

uint64_t sub_21C76F880(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
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

uint64_t sub_21C76F948(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3710, &qword_21CBB7F78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C76F9B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3710, &qword_21CBB7F78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C76FA44(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5A0, &unk_21CBA5080);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21C76FB00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5A0, &unk_21CBA5080);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C76FBB4@<X0>(_BYTE *a1@<X8>)
{
  sub_21C741570();
  result = sub_21CB82F94();
  *a1 = v3;
  return result;
}

uint64_t sub_21C76FC70()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3888, &qword_21CBB82C8);
  sub_21C9A81F8();
  sub_21C9A825C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C76FCE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMSharingGroup(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21C76FD54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMSharingGroup(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21C76FDC4()
{
  v1 = *(type metadata accessor for PMGroupAccountsView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_21CB85C44();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for PMSharingGroup(0);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C76FEE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMSharingGroup(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_21C770000(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PMSharingGroup(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21C770170(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3908, &qword_21CBB8630);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C7701E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3910, &qword_21CBB8638);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C77029C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for PMAccount(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21C770348(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PMAccount(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C7703F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3A38, &qword_21CBB8A28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C770464(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3A38, &qword_21CBB8A28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C7704CC()
{
  v1 = v0;
  v2 = type metadata accessor for PMAppAccountDetailsCredentialSecurityView(0);
  v3 = *(*(v2 - 8) + 80);
  v47 = *(*(v2 - 8) + 64);
  v48 = (v3 + 16) & ~v3;
  v4 = v0 + v48;

  v46 = v2;
  v5 = v0 + v48 + *(v2 + 24);

  v6 = type metadata accessor for PMAccount(0);
  v7 = v5 + v6[5];
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v9 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v10 = *(v9 + 28);
    v11 = sub_21CB85B74();
    (*(*(v11 - 8) + 8))(v7 + v10, v11);

    v12 = *(v9 + 36);
    v13 = sub_21CB85C44();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v7 + v12, 1, v13))
    {
      (*(v14 + 8))(v7 + v12, v13);
    }
  }

  else
  {

    v15 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v16 = v15[7];
    v17 = sub_21CB85C04();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v7 + v16, 1, v17))
    {
      (*(v18 + 8))(v7 + v16, v17);
    }

    v19 = v15[8];
    v20 = sub_21CB85BB4();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(v7 + v19, 1, v20))
    {
      (*(v21 + 8))(v7 + v19, v20);
    }

    v22 = v15[9];
    v23 = sub_21CB85C44();
    v24 = *(v23 - 8);
    if (!(*(v24 + 48))(v7 + v22, 1, v23))
    {
      (*(v24 + 8))(v7 + v22, v23);
    }
  }

  v25 = (v5 + v6[6]);
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v44 = v3;
    v45 = v1;

    v26 = type metadata accessor for PMAccount.MockData(0);
    v27 = v26[8];
    v28 = sub_21CB80DD4();
    v29 = *(v28 - 8);
    v30 = *(v29 + 48);
    if (!v30(v25 + v27, 1, v28))
    {
      (*(v29 + 8))(v25 + v27, v28);
    }

    v31 = v26[12];
    if (!v30(v25 + v31, 1, v28))
    {
      (*(v29 + 8))(v25 + v31, v28);
    }

    v32 = v26[15];
    v33 = sub_21CB85BB4();
    v34 = *(v33 - 8);
    v1 = v45;
    if (!(*(v34 + 48))(v25 + v32, 1, v33))
    {
      (*(v34 + 8))(v25 + v32, v33);
    }

    v35 = v26[16];
    v36 = sub_21CB85C04();
    v37 = *(v36 - 8);
    v3 = v44;
    if (!(*(v37 + 48))(v25 + v35, 1, v36))
    {
      (*(v37 + 8))(v25 + v35, v36);
    }

    v38 = v26[18];
    v39 = sub_21CB85C44();
    v40 = *(v39 - 8);
    if (!(*(v40 + 48))(v25 + v38, 1, v39))
    {
      (*(v40 + 8))(v25 + v38, v39);
    }
  }

  else
  {
  }

  v41 = v5 + v6[7];
  if (*(v41 + 8))
  {
  }

  v42 = v4 + *(v46 + 28);
  if (*(v42 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v1, v48 + v47, v3 | 7);
}

uint64_t sub_21C770BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMAccount(0);
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

uint64_t sub_21C770C68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PMAccount(0);
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

uint64_t sub_21C770D70()
{
  v1 = v0;
  v2 = *(type metadata accessor for PMCredentialSecurityButton(0) - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v44 = *(v2 + 64);
  v5 = v0 + v4;

  v6 = type metadata accessor for PMAccount(0);
  v7 = v0 + v4 + v6[5];
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v9 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v10 = *(v9 + 28);
    v11 = sub_21CB85B74();
    (*(*(v11 - 8) + 8))(v7 + v10, v11);

    v12 = *(v9 + 36);
    v13 = sub_21CB85C44();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v7 + v12, 1, v13))
    {
      (*(v14 + 8))(v7 + v12, v13);
    }
  }

  else
  {

    v15 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v16 = v15[7];
    v17 = sub_21CB85C04();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v7 + v16, 1, v17))
    {
      (*(v18 + 8))(v7 + v16, v17);
    }

    v19 = v15[8];
    v20 = sub_21CB85BB4();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(v7 + v19, 1, v20))
    {
      (*(v21 + 8))(v7 + v19, v20);
    }

    v22 = v15[9];
    v23 = sub_21CB85C44();
    v24 = *(v23 - 8);
    if (!(*(v24 + 48))(v7 + v22, 1, v23))
    {
      (*(v24 + 8))(v7 + v22, v23);
    }
  }

  v25 = (v5 + v6[6]);
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v43 = v1;

    v26 = type metadata accessor for PMAccount.MockData(0);
    v27 = v26[8];
    v28 = sub_21CB80DD4();
    v29 = *(v28 - 8);
    v30 = *(v29 + 48);
    if (!v30(v25 + v27, 1, v28))
    {
      (*(v29 + 8))(v25 + v27, v28);
    }

    v31 = v26[12];
    if (!v30(v25 + v31, 1, v28))
    {
      (*(v29 + 8))(v25 + v31, v28);
    }

    v32 = v26[15];
    v33 = sub_21CB85BB4();
    v34 = *(v33 - 8);
    v4 = (v3 + 16) & ~v3;
    v1 = v43;
    if (!(*(v34 + 48))(v25 + v32, 1, v33))
    {
      (*(v34 + 8))(v25 + v32, v33);
    }

    v35 = v26[16];
    v36 = sub_21CB85C04();
    v37 = *(v36 - 8);
    if (!(*(v37 + 48))(v25 + v35, 1, v36))
    {
      (*(v37 + 8))(v25 + v35, v36);
    }

    v38 = v26[18];
    v39 = sub_21CB85C44();
    v40 = *(v39 - 8);
    if (!(*(v40 + 48))(v25 + v38, 1, v39))
    {
      (*(v40 + 8))(v25 + v38, v39);
    }
  }

  else
  {
  }

  v41 = v5 + v6[7];
  if (*(v41 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v1, v4 + v44, v3 | 7);
}

uint64_t sub_21C771418(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for PMSharingGroup(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_21C771588(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for PMSharingGroup(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7] + 8) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21C77172C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMSharingGroup(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_21C771860(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PMSharingGroup(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_21C771A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMSharingGroup(0);
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

uint64_t sub_21C771B24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PMSharingGroup(0);
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

uint64_t sub_21C771BE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3DD8, &qword_21CBB9650);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C771C58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1FA8, &unk_21CBB9290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C771CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CB85C44();
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

uint64_t sub_21C771D90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21CB85C44();
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

uint64_t sub_21C771E58(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3E48, &unk_21CBB9800);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED978, &qword_21CBA7DE8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_21C771F94(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3E48, &unk_21CBB9800);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED978, &qword_21CBA7DE8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21C7720E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1870, &qword_21CBB21E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C77215C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C7721B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB85C44();
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

uint64_t sub_21C772220(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_21CB85C44();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21C7722FC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C772334()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C77242C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_21C7724E8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C7725E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF40B0, &qword_21CBB9E00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C772658()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C77269C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4038, &qword_21CBB9D98);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4078, &qword_21CBB9DD0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4030, &qword_21CBB9D90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4028, &qword_21CBB9D88);
  sub_21C9CD690();
  sub_21C71F3FC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4080, &qword_21CBB9DD8);
  sub_21C6EADEC(&qword_27CDF4088, &qword_27CDF4080, &qword_21CBB9DD8, MEMORY[0x277CDDF68]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C772844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMWiFiNetwork(0);
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF44B0, &unk_21CBA9AC0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_21C772980(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PMWiFiNetwork(0);
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF44B0, &unk_21CBA9AC0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_21C772AC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF41E8, &qword_21CBBA0D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C772B60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21CB82DE4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21C772BB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF41F0, &qword_21CBBA0E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C772C24(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 254)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF44B0, &unk_21CBA9AC0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[7];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_21C772D70(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 254)
  {
    *(a1 + a4[6]) = a2 + 1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF44B0, &unk_21CBA9AC0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_21C772EC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4260, &qword_21CBBA3F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C772F30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4260, &qword_21CBBA3F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C772FA0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4260, &qword_21CBBA3F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4288, &qword_21CBBA458);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4290, &qword_21CBBA460);
  sub_21C9D12F4();
  sub_21C9D13BC();
  sub_21C830EB0();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C7730A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMSharingGroup(0);
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

uint64_t sub_21C773160(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PMSharingGroup(0);
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

uint64_t sub_21C773330(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4308, &qword_21CBBA538);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C7733A0()
{
  v1 = (type metadata accessor for PMGroupInvitationView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();
  v5 = sub_21CB85C44();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for PMSharingGroup(0);

  sub_21C7025C4(*(v0 + v3 + v1[12]), *(v0 + v3 + v1[12] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C773574()
{
  v1 = sub_21CB85C44();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_21C77365C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_21C7736B4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C7736EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CB81884();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF44B0, &unk_21CBA9AC0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_21C77381C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21CB81884();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF44B0, &unk_21CBA9AC0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_21C773954(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4500, &qword_21CBBACE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C7739BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21CB82E94();
  *a1 = result;
  return result;
}

uint64_t sub_21C773A18(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF44B0, &unk_21CBA9AC0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21C773AD4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF44B0, &unk_21CBA9AC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C773B98(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for PMEmptyStateDetailView.Source(0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4658, &unk_21CBBAEF0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_21C773CC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for PMEmptyStateDetailView.Source(0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4658, &unk_21CBBAEF0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21C773DF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB85C44();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 7)
  {
    return v5 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21C773E64(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 6);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_21CB85C44();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21C773EEC@<X0>(uint64_t a1@<X8>)
{
  result = sub_21CB82F34();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_21C773F50()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4698, &qword_21CBBAF88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF14D0, &qword_21CBB1720);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4690, &qword_21CBBAF80);
  type metadata accessor for PMSharingGroup(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE910, &qword_21CBAA7C8);
  sub_21C6EADEC(&qword_27CDF46B8, &qword_27CDF4690, &qword_21CBBAF80, MEMORY[0x277CDE158]);
  sub_21C706530(&qword_27CDEDBC8, type metadata accessor for PMSharingGroup, &unk_21CBCAC0C);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE918, &qword_21CBAA7D0);
  sub_21CB83994();
  sub_21C6EADEC(&qword_27CDEE920, &qword_27CDEE918, &qword_21CBAA7D0, MEMORY[0x277CDDA18]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_21C941AD8();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C774180@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  if (v5)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    result = 0;
  }

  else
  {
    result = sub_21C9675F0(v4, v5);
  }

  *a3 = result & 1;
  return result;
}

uint64_t sub_21C7741D8(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
  }

  return result;
}

uint64_t sub_21C77424C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  if (v3)
  {
    if (v4 && (sub_21C9675F0(v3, v4) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

__n128 sub_21C774294(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_21C7742C8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4718, &unk_21CBBB300);
  sub_21C9E68CC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C77432C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C774364()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21C7743D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CB80E34();
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

uint64_t sub_21C774498(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21CB80E34();
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

uint64_t sub_21C7745D0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_21C9E7EEC(v1, v2);
}

uint64_t sub_21C7746B0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C7746EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3178, &qword_21CBB7260);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_21C774828(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3178, &qword_21CBB7260);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21C774964()
{
  v1 = type metadata accessor for PMGroupMemberDetailView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3 + *(v1 + 32);
  v6 = type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {

    v7 = v5 + *(v6 + 24);
    v8 = sub_21CB85C44();
    (*(*(v8 - 8) + 8))(v7, v8);
    type metadata accessor for PMSharingGroup(0);

    v9 = v5 + *(v6 + 28);
    if (*(v9 + 40))
    {
    }
  }

  v10 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21CB823B4();
    (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C774C24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4858, &qword_21CBBB950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C774C94()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF47D8, &qword_21CBBB8F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF47D0, &qword_21CBBB8E8);
  sub_21C9F4E1C();
  sub_21C71F3FC();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C774DCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF48F8, &qword_21CBBBC58);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21C774E44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF48F8, &qword_21CBBBC58);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21C774EC4()
{

  sub_21C7025C4(*(v0 + 88), *(v0 + 96));

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

uint64_t sub_21C774F60(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF44B0, &unk_21CBA9AC0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4A48, &qword_21CBBC058);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[10];

  return v16(v17, a2, v15);
}

uint64_t sub_21C775144(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF44B0, &unk_21CBA9AC0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4A48, &qword_21CBBC058);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[10];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_21C77534C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4A98, &qword_21CBBC130);
  type metadata accessor for PMGlobalAnimationNamespaceContainer(255);
  sub_21CA057DC();
  sub_21CA054BC(&qword_27CDEADC8, type metadata accessor for PMGlobalAnimationNamespaceContainer, &unk_21CBA8E84);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C77546C(void *a1)
{
  sub_21CB828F4();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1180, &qword_21CBB0A70);
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4C90, &unk_21CBBC650);
  sub_21CB828F4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v1 = MEMORY[0x277CE04A0];
  sub_21C6EADEC(&qword_27CDF1178, &qword_27CDF1180, &qword_21CBB0A70, MEMORY[0x277CE04A0]);
  swift_getWitnessTable();
  sub_21C6EADEC(&qword_27CDF4C98, &qword_27CDF4C90, &unk_21CBBC650, v1);
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C775688()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21C7756D4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3178, &qword_21CBB7260);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 76);

    return v9(v10, a2, v8);
  }
}

void *sub_21C775790(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3178, &qword_21CBB7260);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 76);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C775844(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4E70, &qword_21CBBCAB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C7758B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4E70, &qword_21CBBCAB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C775924(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4E50, &qword_21CBBCA98);
  sub_21CB85074();
  sub_21CB828F4();
  sub_21C6EADEC(&qword_27CDF4E58, &qword_27CDF4E50, &qword_21CBBCA98, MEMORY[0x277CE14C0]);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21C775A48(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_21C775B04(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C775BB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21C7C9AD8();
  *a1 = result;
  return result;
}

uint64_t sub_21C775C0C()
{
  v1 = v0;
  v2 = (type metadata accessor for PMAppAccountsCollectionView(0) - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*v2 + 64);
  v6 = type metadata accessor for PMAccount(0);
  v7 = *(*(v6 - 1) + 80);
  v51 = *(*(v6 - 1) + 64);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = v1 + v4;

  v10 = v2[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21CB83834();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v9 + v10, 1, v11))
    {
      (*(v12 + 8))(v9 + v10, v11);
    }
  }

  else
  {
  }

  v13 = v1 + v8;

  v14 = v1 + v8 + v6[5];
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v16 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v17 = *(v16 + 28);
    v18 = sub_21CB85B74();
    (*(*(v18 - 8) + 8))(v14 + v17, v18);

    v19 = *(v16 + 36);
    v20 = sub_21CB85C44();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v14 + v19, 1, v20))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v50 = v7;
  v38 = v8;

  v39 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v40 = v39[7];
  v41 = sub_21CB85C04();
  v42 = *(v41 - 8);
  if (!(*(v42 + 48))(v14 + v40, 1, v41))
  {
    (*(v42 + 8))(v14 + v40, v41);
  }

  v43 = v39[8];
  v44 = sub_21CB85BB4();
  v45 = *(v44 - 8);
  if (!(*(v45 + 48))(v14 + v43, 1, v44))
  {
    (*(v45 + 8))(v14 + v43, v44);
  }

  v19 = v39[9];
  v20 = sub_21CB85C44();
  v21 = *(v20 - 8);
  v8 = v38;
  v7 = v50;
  if (!(*(v21 + 48))(v14 + v19, 1, v20))
  {
LABEL_7:
    (*(v21 + 8))(v14 + v19, v20);
  }

LABEL_8:
  v22 = (v13 + v6[6]);
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = v8;
    v49 = v3;

    v23 = type metadata accessor for PMAccount.MockData(0);
    v24 = v23[8];
    v25 = sub_21CB80DD4();
    v26 = *(v25 - 8);
    v27 = *(v26 + 48);
    if (!v27(v22 + v24, 1, v25))
    {
      (*(v26 + 8))(v22 + v24, v25);
    }

    v28 = v23[12];
    if (!v27(v22 + v28, 1, v25))
    {
      (*(v26 + 8))(v22 + v28, v25);
    }

    v29 = v23[15];
    v30 = sub_21CB85BB4();
    v31 = *(v30 - 8);
    if (!(*(v31 + 48))(v22 + v29, 1, v30))
    {
      (*(v31 + 8))(v22 + v29, v30);
    }

    v32 = v23[16];
    v33 = sub_21CB85C04();
    v34 = *(v33 - 8);
    v3 = v49;
    if (!(*(v34 + 48))(v22 + v32, 1, v33))
    {
      (*(v34 + 8))(v22 + v32, v33);
    }

    v35 = v23[18];
    v36 = sub_21CB85C44();
    v37 = *(v36 - 8);
    v8 = v48;
    if (!(*(v37 + 48))(v22 + v35, 1, v36))
    {
      (*(v37 + 8))(v22 + v35, v36);
    }
  }

  else
  {
  }

  v46 = v13 + v6[7];
  if (*(v46 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v1, v8 + v51, v3 | v7 | 7);
}

uint64_t sub_21C7763DC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDEC7B8, &unk_21CBABBE0);
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
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_21C776570(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDEC7B8, &unk_21CBABBE0);
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
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_21C77678C(uint64_t *a1, uint64_t a2, char *a3)
{
  v3 = *a3;
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  sub_21C968B34(*a1, v5, v6);
  return sub_21C87EB50(v4, v5, v6, v3);
}

uint64_t sub_21C776830()
{
  v1 = type metadata accessor for PMWiFiList(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CB82A34();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  sub_21C7025C4(*(v5 + v1[6]), *(v5 + v1[6] + 8));
  v9 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_21CB83834();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v5 + v9, 1, v10))
    {
      (*(v11 + 8))(v5 + v9, v10);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_21C776A7C()
{
  v1 = type metadata accessor for PMWiFiList(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CB82A34();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  sub_21C7025C4(*(v5 + v1[6]), *(v5 + v1[6] + 8));
  v9 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_21CB83834();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v5 + v9, 1, v10))
    {
      (*(v11 + 8))(v5 + v9, v10);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C776D00()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF51E0, &qword_21CBBD4B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21C776D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMSharingGroup(0);
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

uint64_t sub_21C776E58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PMSharingGroup(0);
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

uint64_t sub_21C776F1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5210, &unk_21CBBD520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C776FA4()
{

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_21C777010()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5310, &unk_21CBBD9B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBE40, &unk_21CBA8200);
  sub_21C6EADEC(&qword_27CDF5318, &qword_27CDF5310, &unk_21CBBD9B0, MEMORY[0x277CE04B0]);
  sub_21C71F3FC();
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C777138()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C777170()
{
  v1 = (type metadata accessor for PMInboundOTPAuthURLContext(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = sub_21CB80BE4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v3, v5);
  v8 = v1[7];
  if (!(*(v6 + 48))(v0 + v3 + v8, 1, v5))
  {
    v7(v0 + v3 + v8, v5);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_21C7772CC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_21C777324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5390, &unk_21CBBDC30);
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

uint64_t sub_21C7773EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5390, &unk_21CBBDC30);
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

uint64_t sub_21C7774C0()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_21C777540()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_21C7775C8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5A0, &unk_21CBA5080);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5490, &unk_21CBBE090);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_21C777744(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5A0, &unk_21CBA5080);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5490, &unk_21CBBE090);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8] + 8) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21C7778BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21CB82F14();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21C777948(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5520, &qword_21CBBE1C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C7779EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  sub_21C968B34(*a1, v2, v3);
  return sub_21C9685CC(v1, v2, v3);
}

double sub_21C777A3C@<D0>(_OWORD *a1@<X8>)
{
  sub_21C7D7AC0();
  sub_21CB82F94();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_21C777A90@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21CB82F14();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21C777B00()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C777B38()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF54B0, &qword_21CBBE108);
  type metadata accessor for PMWiFiDetailsModel(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF54B8, &qword_21CBBE110);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF54C0, &qword_21CBBE118);
  sub_21C6EADEC(&qword_27CDF54C8, &qword_27CDF54B8, &qword_21CBBE110, &unk_21CBA2240);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF54D0, &qword_21CBBE120);
  sub_21CA2B5D0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C777CA4()
{

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_21C777D10()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF55B0, &qword_21CBBE4B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBE48, &qword_21CBA3780);
  sub_21C6EADEC(&qword_27CDF55B8, &qword_27CDF55B0, &qword_21CBBE4B8, MEMORY[0x277CE04B0]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBE40, &unk_21CBA8200);
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C777E64()
{

  sub_21C7025C4(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_21C777EF0(uint64_t *a1)
{
  sub_21CB83B74();
  sub_21CB828F4();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5890, &qword_21CBBEE50);
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84E14();

  return swift_getWitnessTable();
}

uint64_t sub_21C777FD4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF58F0, &unk_21CBBEEC0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_21C778090(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF58F0, &unk_21CBBEEC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C778144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CB82A04();
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

uint64_t sub_21C778200(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21CB82A04();
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

uint64_t sub_21C7782B8()
{
  v1 = *(type metadata accessor for PMKeyboardShortcutActionViewModifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_21CB82A04();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C7783A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5950, &qword_21CBBEFC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C778450(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB9A0, &qword_21CBA2788);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF44B0, &unk_21CBA9AC0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[8];

  return v16(v17, a2, v15);
}

uint64_t sub_21C778634(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB9A0, &qword_21CBA2788);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF44B0, &unk_21CBA9AC0);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_21C77881C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5A28, &qword_21CBBF0B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C77888C()
{
  v1 = v0;
  v2 = type metadata accessor for PMLargeTypeView(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = v0 + v4;

  v7 = v0 + v4 + v2[5];
  v8 = type metadata accessor for PMLargeTypeView.Icon(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    goto LABEL_32;
  }

  v61 = v5;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    v59 = v0;

    v10 = type metadata accessor for PMWiFiNetwork(0);
    v11 = v10[7];
    v12 = sub_21CB80DD4();
    v13 = *(v12 - 8);
    v14 = *(v13 + 48);
    if (!v14(v7 + v11, 1, v12))
    {
      (*(v13 + 8))(v7 + v11, v12);
    }

    v15 = v10[8];
    if (!v14(v7 + v15, 1, v12))
    {
      (*(v13 + 8))(v7 + v15, v12);
    }

    v16 = (v7 + v10[14]);
    v1 = v59;
    v5 = v61;
    v4 = (v3 + 16) & ~v3;
    goto LABEL_31;
  }

  v17 = type metadata accessor for PMAccount(0);
  v18 = v7 + v17[5];
  type metadata accessor for PMAccount.UniqueID(0);
  v19 = swift_getEnumCaseMultiPayload();

  v58 = v17;
  if (v19 == 1)
  {

    v20 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v21 = *(v20 + 28);
    v22 = sub_21CB85B74();
    (*(*(v22 - 8) + 8))(v18 + v21, v22);

    v23 = *(v20 + 36);
    v24 = sub_21CB85C44();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v18 + v23, 1, v24))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v41 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v42 = v41[7];
  v43 = sub_21CB85C04();
  v44 = *(v43 - 8);
  if (!(*(v44 + 48))(v18 + v42, 1, v43))
  {
    (*(v44 + 8))(v18 + v42, v43);
  }

  v45 = v41[8];
  v46 = sub_21CB85BB4();
  v47 = *(v46 - 8);
  if (!(*(v47 + 48))(v18 + v45, 1, v46))
  {
    (*(v47 + 8))(v18 + v45, v46);
  }

  v23 = v41[9];
  v24 = sub_21CB85C44();
  v25 = *(v24 - 8);
  v17 = v58;
  if (!(*(v25 + 48))(v18 + v23, 1, v24))
  {
LABEL_10:
    (*(v25 + 8))(v18 + v23, v24);
  }

LABEL_11:
  v26 = (v7 + v17[6]);
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v60 = v1;

    v27 = type metadata accessor for PMAccount.MockData(0);
    v28 = v27[8];
    v29 = sub_21CB80DD4();
    v57 = *(v29 - 8);
    v30 = *(v57 + 48);
    if (!v30(v26 + v28, 1, v29))
    {
      (*(v57 + 8))(v26 + v28, v29);
    }

    v31 = v27[12];
    if (!v30(v26 + v31, 1, v29))
    {
      (*(v57 + 8))(v26 + v31, v29);
    }

    v32 = v27[15];
    v33 = sub_21CB85BB4();
    v34 = *(v33 - 8);
    v1 = v60;
    if (!(*(v34 + 48))(v26 + v32, 1, v33))
    {
      (*(v34 + 8))(v26 + v32, v33);
    }

    v35 = v27[16];
    v36 = sub_21CB85C04();
    v37 = *(v36 - 8);
    if (!(*(v37 + 48))(v26 + v35, 1, v36))
    {
      (*(v37 + 8))(v26 + v35, v36);
    }

    v38 = v27[18];
    v39 = sub_21CB85C44();
    v40 = *(v39 - 8);
    v17 = v58;
    if (!(*(v40 + 48))(v26 + v38, 1, v39))
    {
      (*(v40 + 8))(v26 + v38, v39);
    }
  }

  else
  {
  }

  v48 = v7 + v17[7];
  v5 = v61;
  v4 = (v3 + 16) & ~v3;
  if (*(v48 + 8))
  {

    v16 = (v48 + 24);
LABEL_31:
  }

LABEL_32:
  v49 = v2[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v50 = sub_21CB823B4();
    (*(*(v50 - 8) + 8))(v6 + v49, v50);
  }

  else
  {
  }

  v51 = v2[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v52 = sub_21CB83834();
    v53 = *(v52 - 8);
    if (!(*(v53 + 48))(v6 + v51, 1, v52))
    {
      (*(v53 + 8))(v6 + v51, v52);
    }
  }

  else
  {
  }

  v54 = v2[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v55 = sub_21CB82054();
    (*(*(v55 - 8) + 8))(v6 + v54, v55);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v1, ((v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_21C779200()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C7792FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C779364()
{
  v1 = sub_21CB85B74();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21C779438()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21C7794C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5EF0, &qword_21CBBFDC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C779534()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C77956C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_21C7795DC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C779614()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21C7796B0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C7796E8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21C779780()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

void sub_21C779804(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_21CA42518(v1);
}

uint64_t sub_21C77983C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF60C8, &unk_21CBC02A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21C779944(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF60C8, &unk_21CBC02A0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21C779A5C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C779B54()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_21C779BB8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21C779BF8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C779C30()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C779C68()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C77A190()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C77A1D0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6508, &qword_21CBC13A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6510, &qword_21CBC13B0);
  sub_21CA50524();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C77A270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
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

    return (v10 + 1);
  }
}

uint64_t sub_21C77A338(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21C77A52C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C77A594()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6638, &qword_21CBC15E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6630, &qword_21CBC15D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6628, &qword_21CBC15D0);
  sub_21CA56834();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C77A68C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMSharingGroup(0);
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

uint64_t sub_21C77A6F8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for PMSharingGroup(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21C77A780()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_21C77A814(unint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  sub_21CA58594(v1, v2);
}

uint64_t sub_21C77A8D8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBD00, &unk_21CBA20F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF68C0, &qword_21CBC1F78);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC7B0, &unk_21CBC1F80);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[8];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[9] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_21C77AA54(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBD00, &unk_21CBA20F0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF68C0, &qword_21CBC1F78);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC7B0, &unk_21CBC1F80);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[9] + 8) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[8];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21C77ABCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMAccount(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21C77ACC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PMAccount(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21C77ADD4()
{
  v1 = type metadata accessor for PMMoveAccountToGroupAlert(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v141 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  v5 = *(v141 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v140 = v0;
  v8 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21CB82484();
    (*(*(v9 - 8) + 8))(v0 + v3, v9);
  }

  else
  {
  }

  v10 = v3 + v4 + v6;
  v11 = v8 + *(v1 + 20);

  v12 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF68C0, &qword_21CBC1F78) + 32);
  v136 = v7;
  v137 = v2;
  if ((*(v5 + 48))(v12, 1, v141))
  {
    goto LABEL_32;
  }

  v138 = v10;
  v134 = v6;

  v13 = type metadata accessor for PMAccount(0);
  v14 = v12 + v13[5];
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  v132 = v13;
  if (EnumCaseMultiPayload != 1)
  {

    v38 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v39 = v38[7];
    v40 = sub_21CB85C04();
    v41 = *(v40 - 8);
    if (!(*(v41 + 48))(v14 + v39, 1, v40))
    {
      (*(v41 + 8))(v14 + v39, v40);
    }

    v42 = v38[8];
    v43 = sub_21CB85BB4();
    v44 = *(v43 - 8);
    if (!(*(v44 + 48))(v14 + v42, 1, v43))
    {
      (*(v44 + 8))(v14 + v42, v43);
    }

    v19 = v38[9];
    v20 = sub_21CB85C44();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v14 + v19, 1, v20))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v16 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v17 = *(v16 + 28);
  v18 = sub_21CB85B74();
  (*(*(v18 - 8) + 8))(v14 + v17, v18);

  v19 = *(v16 + 36);
  v20 = sub_21CB85C44();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(v14 + v19, 1, v20))
  {
LABEL_7:
    (*(v21 + 8))(v14 + v19, v20);
  }

LABEL_8:
  v22 = (v12 + v13[6]);
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v23 = type metadata accessor for PMAccount.MockData(0);
    v24 = v23[8];
    v25 = sub_21CB80DD4();
    v26 = *(v25 - 8);
    v27 = *(v26 + 48);
    if (!v27(v22 + v24, 1, v25))
    {
      (*(v26 + 8))(v22 + v24, v25);
    }

    v28 = v23[12];
    if (!v27(v22 + v28, 1, v25))
    {
      (*(v26 + 8))(v22 + v28, v25);
    }

    v29 = v23[15];
    v30 = sub_21CB85BB4();
    v31 = *(v30 - 8);
    v13 = v132;
    if (!(*(v31 + 48))(v22 + v29, 1, v30))
    {
      (*(v31 + 8))(v22 + v29, v30);
    }

    v32 = v23[16];
    v33 = sub_21CB85C04();
    v34 = *(v33 - 8);
    if (!(*(v34 + 48))(v22 + v32, 1, v33))
    {
      (*(v34 + 8))(v22 + v32, v33);
    }

    v35 = v23[18];
    v36 = sub_21CB85C44();
    v37 = *(v36 - 8);
    if (!(*(v37 + 48))(v22 + v35, 1, v36))
    {
      (*(v37 + 8))(v22 + v35, v36);
    }
  }

  else
  {
  }

  v45 = v12 + v13[7];
  if (*(v45 + 8))
  {
  }

  v46 = v12 + *(v141 + 20);
  v47 = type metadata accessor for PMSharingGroup(0);
  v48 = *(*(v47 - 8) + 48);
  v10 = v138;
  if (!v48(v46, 1, v47))
  {
    v49 = sub_21CB85C44();
    (*(*(v49 - 8) + 8))(v46, v49);
  }

  v50 = v12 + *(v141 + 24);
  v51 = v48(v50, 1, v47);
  v2 = v137;
  v6 = v134;
  if (!v51)
  {
    v52 = sub_21CB85C44();
    (*(*(v52 - 8) + 8))(v50, v52);
  }

LABEL_32:
  v53 = v10 & ~v6;

  v54 = v8 + *(v1 + 32);
  v55 = type metadata accessor for PMAccount(0);
  v139 = v53;
  if ((*(*(v55 - 1) + 48))(v54, 1, v55))
  {
    goto LABEL_56;
  }

  v135 = v6;

  v56 = v54 + v55[5];
  type metadata accessor for PMAccount.UniqueID(0);
  v57 = swift_getEnumCaseMultiPayload();

  if (v57 != 1)
  {
    v80 = v55;
    v81 = v2;

    v82 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v83 = v82[7];
    v84 = sub_21CB85C04();
    v85 = *(v84 - 8);
    if (!(*(v85 + 48))(v56 + v83, 1, v84))
    {
      (*(v85 + 8))(v56 + v83, v84);
    }

    v86 = v82[8];
    v87 = sub_21CB85BB4();
    v88 = *(v87 - 8);
    if (!(*(v88 + 48))(v56 + v86, 1, v87))
    {
      (*(v88 + 8))(v56 + v86, v87);
    }

    v61 = v82[9];
    v62 = sub_21CB85C44();
    v63 = *(v62 - 8);
    v2 = v81;
    v55 = v80;
    v7 = v136;
    if ((*(v63 + 48))(v56 + v61, 1, v62))
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v58 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v59 = *(v58 + 28);
  v60 = sub_21CB85B74();
  (*(*(v60 - 8) + 8))(v56 + v59, v60);

  v61 = *(v58 + 36);
  v62 = sub_21CB85C44();
  v63 = *(v62 - 8);
  if (!(*(v63 + 48))(v56 + v61, 1, v62))
  {
LABEL_35:
    (*(v63 + 8))(v56 + v61, v62);
  }

LABEL_36:
  v64 = (v54 + v55[6]);
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v133 = v55;

    v65 = type metadata accessor for PMAccount.MockData(0);
    v66 = v65[8];
    v67 = sub_21CB80DD4();
    v68 = *(v67 - 8);
    v69 = *(v68 + 48);
    if (!v69(v64 + v66, 1, v67))
    {
      (*(v68 + 8))(v64 + v66, v67);
    }

    v70 = v65[12];
    if (!v69(v64 + v70, 1, v67))
    {
      (*(v68 + 8))(v64 + v70, v67);
    }

    v71 = v65[15];
    v72 = sub_21CB85BB4();
    v73 = *(v72 - 8);
    v7 = v136;
    if (!(*(v73 + 48))(v64 + v71, 1, v72))
    {
      (*(v73 + 8))(v64 + v71, v72);
    }

    v74 = v65[16];
    v75 = sub_21CB85C04();
    v76 = *(v75 - 8);
    v55 = v133;
    if (!(*(v76 + 48))(v64 + v74, 1, v75))
    {
      (*(v76 + 8))(v64 + v74, v75);
    }

    v77 = v65[18];
    v78 = sub_21CB85C44();
    v79 = *(v78 - 8);
    v2 = v137;
    if (!(*(v79 + 48))(v64 + v77, 1, v78))
    {
      (*(v79 + 8))(v64 + v77, v78);
    }
  }

  else
  {
  }

  v89 = v54 + v55[7];
  v6 = v135;
  v53 = v139;
  if (*(v89 + 8))
  {
  }

LABEL_56:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC7B0, &unk_21CBC1F80);

  v90 = v140 + v53;

  v91 = v140 + v53 + v55[5];
  type metadata accessor for PMAccount.UniqueID(0);
  v92 = swift_getEnumCaseMultiPayload();

  if (v92 == 1)
  {

    v93 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v94 = *(v93 + 28);
    v95 = sub_21CB85B74();
    (*(*(v95 - 8) + 8))(v91 + v94, v95);

    v96 = *(v93 + 36);
    v97 = sub_21CB85C44();
    v98 = *(v97 - 8);
    if ((*(v98 + 48))(v91 + v96, 1, v97))
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  v117 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v118 = v117[7];
  v119 = sub_21CB85C04();
  v120 = *(v119 - 8);
  if (!(*(v120 + 48))(v91 + v118, 1, v119))
  {
    (*(v120 + 8))(v91 + v118, v119);
  }

  v121 = v117[8];
  v122 = sub_21CB85BB4();
  v123 = *(v122 - 8);
  if (!(*(v123 + 48))(v91 + v121, 1, v122))
  {
    (*(v123 + 8))(v91 + v121, v122);
  }

  v96 = v117[9];
  v97 = sub_21CB85C44();
  v98 = *(v97 - 8);
  if (!(*(v98 + 48))(v91 + v96, 1, v97))
  {
LABEL_58:
    (*(v98 + 8))(v91 + v96, v97);
  }

LABEL_59:
  v99 = (v90 + v55[6]);
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v100 = v55;
    v101 = v6;

    v102 = type metadata accessor for PMAccount.MockData(0);
    v103 = v102[8];
    v104 = sub_21CB80DD4();
    v105 = *(v104 - 8);
    v106 = *(v105 + 48);
    if (!v106(v99 + v103, 1, v104))
    {
      (*(v105 + 8))(v99 + v103, v104);
    }

    v107 = v102[12];
    if (!v106(v99 + v107, 1, v104))
    {
      (*(v105 + 8))(v99 + v107, v104);
    }

    v108 = v102[15];
    v109 = sub_21CB85BB4();
    v110 = *(v109 - 8);
    if (!(*(v110 + 48))(v99 + v108, 1, v109))
    {
      (*(v110 + 8))(v99 + v108, v109);
    }

    v111 = v102[16];
    v112 = sub_21CB85C04();
    v113 = *(v112 - 8);
    v6 = v101;
    v55 = v100;
    if (!(*(v113 + 48))(v99 + v111, 1, v112))
    {
      (*(v113 + 8))(v99 + v111, v112);
    }

    v114 = v102[18];
    v115 = sub_21CB85C44();
    v116 = *(v115 - 8);
    v7 = v136;
    v2 = v137;
    if (!(*(v116 + 48))(v99 + v114, 1, v115))
    {
      (*(v116 + 8))(v99 + v114, v115);
    }
  }

  else
  {
  }

  v124 = v90 + v55[7];
  if (*(v124 + 8))
  {
  }

  v125 = v90 + *(v141 + 20);
  v126 = type metadata accessor for PMSharingGroup(0);
  v127 = *(*(v126 - 8) + 48);
  if (!v127(v125, 1, v126))
  {
    v128 = sub_21CB85C44();
    (*(*(v128 - 8) + 8))(v125, v128);
  }

  v129 = v90 + *(v141 + 24);
  if (!v127(v129, 1, v126))
  {
    v130 = sub_21CB85C44();
    (*(*(v130 - 8) + 8))(v129, v130);
  }

  return MEMORY[0x2821FE8E8](v140, v139 + v7, v2 | v6 | 7);
}

uint64_t sub_21C77C410()
{
  v1 = type metadata accessor for PMMoveAccountToGroupAlert(0);
  v136 = *(*(v1 - 8) + 80);
  v2 = (v136 + 32) & ~v136;
  v3 = *(*(v1 - 8) + 64);
  v4 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v3 + v6;
  v8 = *(v5 + 64);
  swift_unknownObjectRelease();
  v140 = v0;
  v9 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_21CB82484();
    (*(*(v10 - 8) + 8))(v0 + v2, v10);
  }

  else
  {
  }

  v11 = v2 + v7;
  v12 = v9 + *(v1 + 20);

  v13 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF68C0, &qword_21CBC1F78) + 32);
  v137 = v4;
  if ((*(v5 + 48))(v13, 1, v4))
  {
    goto LABEL_32;
  }

  v138 = v11;
  v134 = v6;

  v14 = type metadata accessor for PMAccount(0);
  v15 = v13 + v14[5];
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload != 1)
  {

    v39 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v40 = v39[7];
    v41 = sub_21CB85C04();
    v42 = *(v41 - 8);
    if (!(*(v42 + 48))(v15 + v40, 1, v41))
    {
      (*(v42 + 8))(v15 + v40, v41);
    }

    v43 = v39[8];
    v44 = sub_21CB85BB4();
    v45 = *(v44 - 8);
    if (!(*(v45 + 48))(v15 + v43, 1, v44))
    {
      (*(v45 + 8))(v15 + v43, v44);
    }

    v20 = v39[9];
    v21 = sub_21CB85C44();
    v22 = *(v21 - 8);
    v4 = v137;
    if ((*(v22 + 48))(v15 + v20, 1, v21))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v17 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v18 = *(v17 + 28);
  v19 = sub_21CB85B74();
  (*(*(v19 - 8) + 8))(v15 + v18, v19);

  v20 = *(v17 + 36);
  v21 = sub_21CB85C44();
  v22 = *(v21 - 8);
  if (!(*(v22 + 48))(v15 + v20, 1, v21))
  {
LABEL_7:
    (*(v22 + 8))(v15 + v20, v21);
  }

LABEL_8:
  v23 = (v13 + v14[6]);
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v129 = v8;
    v131 = v14;

    v24 = type metadata accessor for PMAccount.MockData(0);
    v25 = v24[8];
    v26 = sub_21CB80DD4();
    v27 = *(v26 - 8);
    v28 = *(v27 + 48);
    if (!v28(v23 + v25, 1, v26))
    {
      (*(v27 + 8))(v23 + v25, v26);
    }

    v29 = v24[12];
    if (!v28(v23 + v29, 1, v26))
    {
      (*(v27 + 8))(v23 + v29, v26);
    }

    v30 = v24[15];
    v31 = sub_21CB85BB4();
    v32 = *(v31 - 8);
    v14 = v131;
    if (!(*(v32 + 48))(v23 + v30, 1, v31))
    {
      (*(v32 + 8))(v23 + v30, v31);
    }

    v33 = v24[16];
    v34 = sub_21CB85C04();
    v35 = *(v34 - 8);
    v8 = v129;
    if (!(*(v35 + 48))(v23 + v33, 1, v34))
    {
      (*(v35 + 8))(v23 + v33, v34);
    }

    v36 = v24[18];
    v37 = sub_21CB85C44();
    v38 = *(v37 - 8);
    v4 = v137;
    if (!(*(v38 + 48))(v23 + v36, 1, v37))
    {
      (*(v38 + 8))(v23 + v36, v37);
    }
  }

  else
  {
  }

  v46 = v13 + v14[7];
  if (*(v46 + 8))
  {
  }

  v47 = v13 + *(v4 + 20);
  v48 = type metadata accessor for PMSharingGroup(0);
  v49 = *(*(v48 - 8) + 48);
  if (!v49(v47, 1, v48))
  {
    v50 = sub_21CB85C44();
    (*(*(v50 - 8) + 8))(v47, v50);
  }

  v51 = v13 + *(v4 + 24);
  v52 = v49(v51, 1, v48);
  v6 = v134;
  v11 = v138;
  if (!v52)
  {
    v53 = sub_21CB85C44();
    (*(*(v53 - 8) + 8))(v51, v53);
  }

LABEL_32:
  v54 = v11 & ~v6;

  v55 = v9 + *(v1 + 32);
  v56 = type metadata accessor for PMAccount(0);
  v139 = v54;
  if ((*(*(v56 - 1) + 48))(v55, 1, v56))
  {
    goto LABEL_56;
  }

  v135 = v6;

  v57 = v55 + v56[5];
  type metadata accessor for PMAccount.UniqueID(0);
  v58 = swift_getEnumCaseMultiPayload();

  if (v58 != 1)
  {

    v81 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v82 = v81[7];
    v83 = sub_21CB85C04();
    v84 = *(v83 - 8);
    if (!(*(v84 + 48))(v57 + v82, 1, v83))
    {
      (*(v84 + 8))(v57 + v82, v83);
    }

    v85 = v81[8];
    v86 = sub_21CB85BB4();
    v87 = *(v86 - 8);
    if (!(*(v87 + 48))(v57 + v85, 1, v86))
    {
      (*(v87 + 8))(v57 + v85, v86);
    }

    v62 = v81[9];
    v63 = sub_21CB85C44();
    v64 = *(v63 - 8);
    v4 = v137;
    if ((*(v64 + 48))(v57 + v62, 1, v63))
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v59 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v60 = *(v59 + 28);
  v61 = sub_21CB85B74();
  (*(*(v61 - 8) + 8))(v57 + v60, v61);

  v62 = *(v59 + 36);
  v63 = sub_21CB85C44();
  v64 = *(v63 - 8);
  if (!(*(v64 + 48))(v57 + v62, 1, v63))
  {
LABEL_35:
    (*(v64 + 8))(v57 + v62, v63);
  }

LABEL_36:
  v65 = (v55 + v56[6]);
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v130 = v8;
    v132 = v56;

    v66 = type metadata accessor for PMAccount.MockData(0);
    v67 = v66[8];
    v68 = sub_21CB80DD4();
    v69 = *(v68 - 8);
    v70 = *(v69 + 48);
    if (!v70(v65 + v67, 1, v68))
    {
      (*(v69 + 8))(v65 + v67, v68);
    }

    v71 = v66[12];
    if (!v70(v65 + v71, 1, v68))
    {
      (*(v69 + 8))(v65 + v71, v68);
    }

    v72 = v66[15];
    v73 = sub_21CB85BB4();
    v74 = *(v73 - 8);
    if (!(*(v74 + 48))(v65 + v72, 1, v73))
    {
      (*(v74 + 8))(v65 + v72, v73);
    }

    v75 = v66[16];
    v76 = sub_21CB85C04();
    v77 = *(v76 - 8);
    v8 = v130;
    v56 = v132;
    if (!(*(v77 + 48))(v65 + v75, 1, v76))
    {
      (*(v77 + 8))(v65 + v75, v76);
    }

    v78 = v66[18];
    v79 = sub_21CB85C44();
    v80 = *(v79 - 8);
    v4 = v137;
    if (!(*(v80 + 48))(v65 + v78, 1, v79))
    {
      (*(v80 + 8))(v65 + v78, v79);
    }
  }

  else
  {
  }

  v88 = v55 + v56[7];
  v6 = v135;
  v54 = v139;
  if (*(v88 + 8))
  {
  }

LABEL_56:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC7B0, &unk_21CBC1F80);

  v89 = v140 + v54;

  v90 = v140 + v54 + v56[5];
  type metadata accessor for PMAccount.UniqueID(0);
  v91 = swift_getEnumCaseMultiPayload();

  if (v91 == 1)
  {

    v92 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v93 = *(v92 + 28);
    v94 = sub_21CB85B74();
    (*(*(v94 - 8) + 8))(v90 + v93, v94);

    v95 = *(v92 + 36);
    v96 = sub_21CB85C44();
    v97 = *(v96 - 8);
    if ((*(v97 + 48))(v90 + v95, 1, v96))
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  v114 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v115 = v114[7];
  v116 = sub_21CB85C04();
  v117 = *(v116 - 8);
  if (!(*(v117 + 48))(v90 + v115, 1, v116))
  {
    (*(v117 + 8))(v90 + v115, v116);
  }

  v118 = v114[8];
  v119 = sub_21CB85BB4();
  v120 = *(v119 - 8);
  if (!(*(v120 + 48))(v90 + v118, 1, v119))
  {
    (*(v120 + 8))(v90 + v118, v119);
  }

  v95 = v114[9];
  v96 = sub_21CB85C44();
  v97 = *(v96 - 8);
  if (!(*(v97 + 48))(v90 + v95, 1, v96))
  {
LABEL_58:
    (*(v97 + 8))(v90 + v95, v96);
  }

LABEL_59:
  v98 = (v89 + v56[6]);
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v133 = v56;

    v99 = type metadata accessor for PMAccount.MockData(0);
    v100 = v99[8];
    v101 = sub_21CB80DD4();
    v102 = *(v101 - 8);
    v103 = *(v102 + 48);
    if (!v103(v98 + v100, 1, v101))
    {
      (*(v102 + 8))(v98 + v100, v101);
    }

    v104 = v99[12];
    if (!v103(v98 + v104, 1, v101))
    {
      (*(v102 + 8))(v98 + v104, v101);
    }

    v105 = v99[15];
    v106 = sub_21CB85BB4();
    v107 = *(v106 - 8);
    if (!(*(v107 + 48))(v98 + v105, 1, v106))
    {
      (*(v107 + 8))(v98 + v105, v106);
    }

    v108 = v99[16];
    v109 = sub_21CB85C04();
    v110 = *(v109 - 8);
    v56 = v133;
    if (!(*(v110 + 48))(v98 + v108, 1, v109))
    {
      (*(v110 + 8))(v98 + v108, v109);
    }

    v111 = v99[18];
    v112 = sub_21CB85C44();
    v113 = *(v112 - 8);
    v4 = v137;
    if (!(*(v113 + 48))(v98 + v111, 1, v112))
    {
      (*(v113 + 8))(v98 + v111, v112);
    }
  }

  else
  {
  }

  v121 = v89 + v56[7];
  if (*(v121 + 8))
  {
  }

  v122 = v89 + *(v4 + 20);
  v123 = type metadata accessor for PMSharingGroup(0);
  v124 = *(*(v123 - 8) + 48);
  if (!v124(v122, 1, v123))
  {
    v125 = sub_21CB85C44();
    (*(*(v125 - 8) + 8))(v122, v125);
  }

  v126 = v89 + *(v4 + 24);
  if (!v124(v126, 1, v123))
  {
    v127 = sub_21CB85C44();
    (*(*(v127 - 8) + 8))(v126, v127);
  }

  return MEMORY[0x2821FE8E8](v140, v139 + v8, v136 | v6 | 7);
}

uint64_t sub_21C77DAF4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for PMAccount(0);
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
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7D8, &qword_21CBB1F30);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[10];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7E0, &qword_21CBA25C0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[11];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_21C77DC84(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for PMAccount(0);
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
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7D8, &qword_21CBB1F30);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[10];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7E0, &qword_21CBA25C0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[11];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_21C77DE14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB700, &unk_21CBA24F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21C77DF1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB700, &unk_21CBA24F0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21C77E030(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
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

uint64_t sub_21C77E0A8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21C77E148()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF69D0, &qword_21CBC2368);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_21C77E20C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  if (*(v0 + v4))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_21C77E2C4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6C0, &qword_21CBA2490) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB750, &unk_21CBC26A0);
  (*(*(v6 - 8) + 8))(v5, v6);

  if (*(v0 + v4))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_21C77E40C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C77E4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6B90, &unk_21CBC2920);
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

uint64_t sub_21C77E570(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6B90, &unk_21CBC2920);
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

double sub_21C77E644(id *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  sub_21C7FB8AC(*a1, v2, v3);
  return sub_21CA74024(v1, v2, v3);
}

uint64_t sub_21C77E694()
{
  v1 = *(type metadata accessor for PMMultipleAccountsDetailsView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6B90, &unk_21CBC2920);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C77E79C()
{
  v1 = *(type metadata accessor for PMMultipleAccountsDetailsView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = v3 + *(v1 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090) - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6B90, &unk_21CBC2920);
  (*(*(v9 - 8) + 8))(v0 + v3, v9);

  v10 = sub_21CB85C44();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v7, 1, v10))
  {
    (*(v11 + 8))(v0 + v7, v10);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v7 + 1, v2 | v6 | 7);
}

uint64_t sub_21C77E98C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
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

uint64_t sub_21C77EA58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
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

uint64_t sub_21C77EB7C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6CD8, &qword_21CBC2CA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6CD0, &qword_21CBC2C98);
  sub_21CB829D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6CC8, &qword_21CBC2C90);
  sub_21C6EADEC(&qword_27CDF6CF0, &qword_27CDF6CC8, &qword_21CBC2C90, MEMORY[0x277CDE580]);
  swift_getOpaqueTypeConformance2();
  sub_21C706180(&qword_27CDED1A0, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
  swift_getOpaqueTypeConformance2();
  sub_21C71F3FC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C77ED04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMAccount(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for PMSharingGroup(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21C77EDF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PMAccount(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for PMSharingGroup(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21C77EEF0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for PMNewGroupFlow.MoveAccountsConfiguration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[6] + 24);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[7];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6D60, &unk_21CBC2FE8);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[9];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[10];

  return v18(v19, a2, v17);
}

uint64_t sub_21C77F0D4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for PMNewGroupFlow.MoveAccountsConfiguration(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 24) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[7];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6D60, &unk_21CBC2FE8);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[10];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_21C77F2B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount(0);
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

uint64_t sub_21C77F324(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for PMAccount(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21C77F3A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6DA0, &qword_21CBC3120);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C77F428()
{
  v1 = v0;
  v2 = type metadata accessor for PMNewGroupFlow(0);
  v128 = *(*(v2 - 1) + 80);
  v3 = (v128 + 16) & ~v128;
  v4 = *(*(v2 - 1) + 64);
  v5 = type metadata accessor for MoveAccountFailureAlertData(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = v4 + v7;
  v129 = *(v6 + 64);
  v9 = v1 + v3;
  v10 = type metadata accessor for PMAccount(0);
  v130 = v1;
  v131 = v5;
  if ((*(*(v10 - 1) + 48))(v1 + v3, 1, v10))
  {
    goto LABEL_25;
  }

  v121 = v4 + v7;

  v11 = v9 + v10[5];
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  v123 = v10;
  if (EnumCaseMultiPayload != 1)
  {
    v35 = v7;

    v36 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v37 = v36[7];
    v38 = sub_21CB85C04();
    v39 = *(v38 - 8);
    if (!(*(v39 + 48))(v11 + v37, 1, v38))
    {
      (*(v39 + 8))(v11 + v37, v38);
    }

    v40 = v36[8];
    v41 = sub_21CB85BB4();
    v42 = *(v41 - 8);
    if (!(*(v42 + 48))(v11 + v40, 1, v41))
    {
      (*(v42 + 8))(v11 + v40, v41);
    }

    v16 = v36[9];
    v17 = sub_21CB85C44();
    v18 = *(v17 - 8);
    v7 = v35;
    v10 = v123;
    if ((*(v18 + 48))(v11 + v16, 1, v17))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v13 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v14 = *(v13 + 28);
  v15 = sub_21CB85B74();
  (*(*(v15 - 8) + 8))(v11 + v14, v15);

  v16 = *(v13 + 36);
  v17 = sub_21CB85C44();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v11 + v16, 1, v17))
  {
LABEL_4:
    (*(v18 + 8))(v11 + v16, v17);
  }

LABEL_5:
  v19 = (v9 + v10[6]);
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v125 = v7;

    v20 = type metadata accessor for PMAccount.MockData(0);
    v21 = v20[8];
    v22 = sub_21CB80DD4();
    v23 = *(v22 - 8);
    v24 = *(v23 + 48);
    if (!v24(v19 + v21, 1, v22))
    {
      (*(v23 + 8))(v19 + v21, v22);
    }

    v25 = v20[12];
    if (!v24(v19 + v25, 1, v22))
    {
      (*(v23 + 8))(v19 + v25, v22);
    }

    v26 = v20[15];
    v27 = sub_21CB85BB4();
    v28 = *(v27 - 8);
    v5 = v131;
    if (!(*(v28 + 48))(v19 + v26, 1, v27))
    {
      (*(v28 + 8))(v19 + v26, v27);
    }

    v29 = v20[16];
    v30 = sub_21CB85C04();
    v31 = *(v30 - 8);
    v10 = v123;
    if (!(*(v31 + 48))(v19 + v29, 1, v30))
    {
      (*(v31 + 8))(v19 + v29, v30);
    }

    v32 = v20[18];
    v33 = sub_21CB85C44();
    v34 = *(v33 - 8);
    v7 = v125;
    if (!(*(v34 + 48))(v19 + v32, 1, v33))
    {
      (*(v34 + 8))(v19 + v32, v33);
    }
  }

  else
  {
  }

  v43 = v9 + v10[7];
  v1 = v130;
  v8 = v121;
  v3 = (v128 + 16) & ~v128;
  if (*(v43 + 8))
  {
  }

LABEL_25:
  v44 = v3 + v8;

  __swift_destroy_boxed_opaque_existential_0((v9 + v2[6]));
  v45 = v9 + v2[7];
  v46 = sub_21CB82644();
  (*(*(v46 - 8) + 8))(v45, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0);

  v47 = v9 + v2[9];
  if ((*(v6 + 48))(v47, 1, v5))
  {
    goto LABEL_50;
  }

  v122 = v44;
  v126 = v7;

  v48 = v47 + v10[5];
  type metadata accessor for PMAccount.UniqueID(0);
  v49 = swift_getEnumCaseMultiPayload();

  if (v49 != 1)
  {

    v72 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v73 = v72[7];
    v74 = sub_21CB85C04();
    v75 = *(v74 - 8);
    if (!(*(v75 + 48))(v48 + v73, 1, v74))
    {
      (*(v75 + 8))(v48 + v73, v74);
    }

    v76 = v72[8];
    v77 = sub_21CB85BB4();
    v78 = *(v77 - 8);
    if (!(*(v78 + 48))(v48 + v76, 1, v77))
    {
      (*(v78 + 8))(v48 + v76, v77);
    }

    v53 = v72[9];
    v54 = sub_21CB85C44();
    v55 = *(v54 - 8);
    if ((*(v55 + 48))(v48 + v53, 1, v54))
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v50 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v51 = *(v50 + 28);
  v52 = sub_21CB85B74();
  (*(*(v52 - 8) + 8))(v48 + v51, v52);

  v53 = *(v50 + 36);
  v54 = sub_21CB85C44();
  v55 = *(v54 - 8);
  if (!(*(v55 + 48))(v48 + v53, 1, v54))
  {
LABEL_28:
    (*(v55 + 8))(v48 + v53, v54);
  }

LABEL_29:
  v56 = (v47 + v10[6]);
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v124 = v10;

    v57 = type metadata accessor for PMAccount.MockData(0);
    v58 = v57[8];
    v59 = sub_21CB80DD4();
    v60 = *(v59 - 8);
    v61 = *(v60 + 48);
    if (!v61(v56 + v58, 1, v59))
    {
      (*(v60 + 8))(v56 + v58, v59);
    }

    v62 = v57[12];
    if (!v61(v56 + v62, 1, v59))
    {
      (*(v60 + 8))(v56 + v62, v59);
    }

    v63 = v57[15];
    v64 = sub_21CB85BB4();
    v65 = *(v64 - 8);
    v5 = v131;
    if (!(*(v65 + 48))(v56 + v63, 1, v64))
    {
      (*(v65 + 8))(v56 + v63, v64);
    }

    v66 = v57[16];
    v67 = sub_21CB85C04();
    v68 = *(v67 - 8);
    v10 = v124;
    if (!(*(v68 + 48))(v56 + v66, 1, v67))
    {
      (*(v68 + 8))(v56 + v66, v67);
    }

    v69 = v57[18];
    v70 = sub_21CB85C44();
    v71 = *(v70 - 8);
    if (!(*(v71 + 48))(v56 + v69, 1, v70))
    {
      (*(v71 + 8))(v56 + v69, v70);
    }
  }

  else
  {
  }

  v79 = v47 + v10[7];
  if (*(v79 + 8))
  {
  }

  v80 = v47 + *(v5 + 20);
  v81 = sub_21CB85C44();
  (*(*(v81 - 8) + 8))(v80, v81);
  type metadata accessor for PMSharingGroup(0);

  v7 = v126;
  v1 = v130;
  v44 = v122;
LABEL_50:
  v82 = v44 & ~v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6D60, &unk_21CBC2FE8);

  v83 = v2[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v84 = sub_21CB823B4();
    (*(*(v84 - 8) + 8))(v9 + v83, v84);
  }

  else
  {
  }

  sub_21C7025C4(*(v9 + v2[14]), *(v9 + v2[14] + 8));

  v85 = v1 + v82;

  v86 = v1 + v82 + v10[5];
  type metadata accessor for PMAccount.UniqueID(0);
  v87 = swift_getEnumCaseMultiPayload();

  if (v87 == 1)
  {

    v88 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v89 = *(v88 + 28);
    v90 = sub_21CB85B74();
    (*(*(v90 - 8) + 8))(v86 + v89, v90);

    v91 = *(v88 + 36);
    v92 = sub_21CB85C44();
    v93 = *(v92 - 8);
    if ((*(v93 + 48))(v86 + v91, 1, v92))
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  v110 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v111 = v110[7];
  v112 = sub_21CB85C04();
  v113 = *(v112 - 8);
  if (!(*(v113 + 48))(v86 + v111, 1, v112))
  {
    (*(v113 + 8))(v86 + v111, v112);
  }

  v114 = v110[8];
  v115 = sub_21CB85BB4();
  v116 = *(v115 - 8);
  if (!(*(v116 + 48))(v86 + v114, 1, v115))
  {
    (*(v116 + 8))(v86 + v114, v115);
  }

  v91 = v110[9];
  v92 = sub_21CB85C44();
  v93 = *(v92 - 8);
  if (!(*(v93 + 48))(v86 + v91, 1, v92))
  {
LABEL_55:
    (*(v93 + 8))(v86 + v91, v92);
  }

LABEL_56:
  v94 = (v85 + v10[6]);
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v127 = v82;

    v95 = type metadata accessor for PMAccount.MockData(0);
    v96 = v95[8];
    v97 = sub_21CB80DD4();
    v98 = *(v97 - 8);
    v99 = *(v98 + 48);
    if (!v99(v94 + v96, 1, v97))
    {
      (*(v98 + 8))(v94 + v96, v97);
    }

    v100 = v95[12];
    if (!v99(v94 + v100, 1, v97))
    {
      (*(v98 + 8))(v94 + v100, v97);
    }

    v101 = v95[15];
    v102 = sub_21CB85BB4();
    v103 = *(v102 - 8);
    if (!(*(v103 + 48))(v94 + v101, 1, v102))
    {
      (*(v103 + 8))(v94 + v101, v102);
    }

    v104 = v95[16];
    v105 = sub_21CB85C04();
    v106 = *(v105 - 8);
    v82 = v127;
    if (!(*(v106 + 48))(v94 + v104, 1, v105))
    {
      (*(v106 + 8))(v94 + v104, v105);
    }

    v107 = v95[18];
    v108 = sub_21CB85C44();
    v109 = *(v108 - 8);
    v1 = v130;
    if (!(*(v109 + 48))(v94 + v107, 1, v108))
    {
      (*(v109 + 8))(v94 + v107, v108);
    }
  }

  else
  {
  }

  v117 = v85 + v10[7];
  if (*(v117 + 8))
  {
  }

  v118 = v85 + *(v131 + 20);
  v119 = sub_21CB85C44();
  (*(*(v119 - 8) + 8))(v118, v119);
  type metadata accessor for PMSharingGroup(0);

  return MEMORY[0x2821FE8E8](v1, v82 + v129, v128 | v7 | 7);
}

uint64_t sub_21C780938()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21C780978()
{
  v1 = v0;
  v2 = *(type metadata accessor for PMCreateGroupView.Action(0) - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for PMNewGroupFlow(0);
  v95 = *(*(v6 - 1) + 80);
  v7 = (v4 + v5 + v95) & ~v95;
  v8 = *(*(v6 - 1) + 64);
  swift_unknownObjectRelease();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1EC8, &qword_21CBB2AB8);
  if (!(*(*(v9 - 8) + 48))(v1 + v4, 1, v9))
  {
    v10 = sub_21CB85C44();
    (*(*(v10 - 8) + 8))(v1 + v4, v10);
    type metadata accessor for PMSharingGroup(0);
  }

  v11 = v1 + v7;
  v12 = type metadata accessor for PMAccount(0);
  if (!(*(*(v12 - 1) + 48))(v1 + v7, 1, v12))
  {

    v93 = v12;
    v13 = v11 + v12[5];
    type metadata accessor for PMAccount.UniqueID(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

    v91 = v3;
    if (EnumCaseMultiPayload == 1)
    {

      v15 = type metadata accessor for PMAccount.SIWAUniqueID(0);
      v16 = *(v15 + 28);
      v17 = sub_21CB85B74();
      (*(*(v17 - 8) + 8))(v13 + v16, v17);

      v18 = *(v15 + 36);
      v19 = sub_21CB85C44();
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(v13 + v18, 1, v19))
      {
LABEL_7:
        v21 = (v11 + v93[6]);
        type metadata accessor for PMAccount.Storage(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v89 = v7;

          v22 = type metadata accessor for PMAccount.MockData(0);
          v23 = v22[8];
          v24 = sub_21CB80DD4();
          v25 = *(v24 - 8);
          v26 = *(v25 + 48);
          if (!v26(v21 + v23, 1, v24))
          {
            (*(v25 + 8))(v21 + v23, v24);
          }

          v27 = v22[12];
          if (!v26(v21 + v27, 1, v24))
          {
            (*(v25 + 8))(v21 + v27, v24);
          }

          v28 = v22[15];
          v29 = sub_21CB85BB4();
          v30 = *(v29 - 8);
          if (!(*(v30 + 48))(v21 + v28, 1, v29))
          {
            (*(v30 + 8))(v21 + v28, v29);
          }

          v31 = v22[16];
          v32 = sub_21CB85C04();
          v33 = *(v32 - 8);
          v7 = v89;
          if (!(*(v33 + 48))(v21 + v31, 1, v32))
          {
            (*(v33 + 8))(v21 + v31, v32);
          }

          v34 = v22[18];
          v35 = sub_21CB85C44();
          v36 = *(v35 - 8);
          v3 = v91;
          if (!(*(v36 + 48))(v21 + v34, 1, v35))
          {
            (*(v36 + 8))(v21 + v34, v35);
          }
        }

        else
        {
        }

        v12 = v93;
        v44 = v11 + v93[7];
        if (*(v44 + 8))
        {
        }

        goto LABEL_27;
      }
    }

    else
    {

      v37 = type metadata accessor for PMAccount.CombinedUniqueID(0);
      v38 = v37[7];
      v39 = sub_21CB85C04();
      v40 = *(v39 - 8);
      if (!(*(v40 + 48))(v13 + v38, 1, v39))
      {
        (*(v40 + 8))(v13 + v38, v39);
      }

      v41 = v37[8];
      v42 = sub_21CB85BB4();
      v43 = *(v42 - 8);
      if (!(*(v43 + 48))(v13 + v41, 1, v42))
      {
        (*(v43 + 8))(v13 + v41, v42);
      }

      v18 = v37[9];
      v19 = sub_21CB85C44();
      v20 = *(v19 - 8);
      v3 = v91;
      if ((*(v20 + 48))(v13 + v18, 1, v19))
      {
        goto LABEL_7;
      }
    }

    (*(v20 + 8))(v13 + v18, v19);
    goto LABEL_7;
  }

LABEL_27:

  __swift_destroy_boxed_opaque_existential_0((v11 + v6[6]));
  v45 = v11 + v6[7];
  v46 = sub_21CB82644();
  (*(*(v46 - 8) + 8))(v45, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0);

  v47 = v11 + v6[9];
  v48 = type metadata accessor for MoveAccountFailureAlertData(0);
  if ((*(*(v48 - 8) + 48))(v47, 1, v48))
  {
    goto LABEL_52;
  }

  v87 = v48;
  v90 = v7;
  v92 = v3;

  v49 = v47 + v12[5];
  type metadata accessor for PMAccount.UniqueID(0);
  v50 = swift_getEnumCaseMultiPayload();

  v94 = v12;
  if (v50 != 1)
  {
    v73 = v8;

    v74 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v75 = v74[7];
    v76 = sub_21CB85C04();
    v77 = *(v76 - 8);
    if (!(*(v77 + 48))(v49 + v75, 1, v76))
    {
      (*(v77 + 8))(v49 + v75, v76);
    }

    v78 = v74[8];
    v79 = sub_21CB85BB4();
    v80 = *(v79 - 8);
    if (!(*(v80 + 48))(v49 + v78, 1, v79))
    {
      (*(v80 + 8))(v49 + v78, v79);
    }

    v54 = v74[9];
    v55 = sub_21CB85C44();
    v56 = *(v55 - 8);
    v8 = v73;
    v12 = v94;
    if ((*(v56 + 48))(v49 + v54, 1, v55))
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v51 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v52 = *(v51 + 28);
  v53 = sub_21CB85B74();
  (*(*(v53 - 8) + 8))(v49 + v52, v53);

  v54 = *(v51 + 36);
  v55 = sub_21CB85C44();
  v56 = *(v55 - 8);
  if (!(*(v56 + 48))(v49 + v54, 1, v55))
  {
LABEL_30:
    (*(v56 + 8))(v49 + v54, v55);
  }

LABEL_31:
  v57 = (v47 + v12[6]);
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v88 = v8;

    v58 = type metadata accessor for PMAccount.MockData(0);
    v59 = v58[8];
    v60 = sub_21CB80DD4();
    v61 = *(v60 - 8);
    v62 = *(v61 + 48);
    if (!v62(v57 + v59, 1, v60))
    {
      (*(v61 + 8))(v57 + v59, v60);
    }

    v63 = v58[12];
    if (!v62(v57 + v63, 1, v60))
    {
      (*(v61 + 8))(v57 + v63, v60);
    }

    v64 = v58[15];
    v65 = sub_21CB85BB4();
    v66 = *(v65 - 8);
    if (!(*(v66 + 48))(v57 + v64, 1, v65))
    {
      (*(v66 + 8))(v57 + v64, v65);
    }

    v67 = v58[16];
    v68 = sub_21CB85C04();
    v69 = *(v68 - 8);
    v12 = v94;
    if (!(*(v69 + 48))(v57 + v67, 1, v68))
    {
      (*(v69 + 8))(v57 + v67, v68);
    }

    v70 = v58[18];
    v71 = sub_21CB85C44();
    v72 = *(v71 - 8);
    v8 = v88;
    if (!(*(v72 + 48))(v57 + v70, 1, v71))
    {
      (*(v72 + 8))(v57 + v70, v71);
    }
  }

  else
  {
  }

  v81 = v47 + v12[7];
  if (*(v81 + 8))
  {
  }

  v82 = v47 + *(v87 + 20);
  v83 = sub_21CB85C44();
  (*(*(v83 - 8) + 8))(v82, v83);
  type metadata accessor for PMSharingGroup(0);

  v7 = v90;
  v3 = v92;
LABEL_52:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6D60, &unk_21CBC2FE8);

  v84 = v6[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v85 = sub_21CB823B4();
    (*(*(v85 - 8) + 8))(v11 + v84, v85);
  }

  else
  {
  }

  sub_21C7025C4(*(v11 + v6[14]), *(v11 + v6[14] + 8));

  return MEMORY[0x2821FE8E8](v1, v7 + v8, v3 | v95 | 7);
}

uint64_t sub_21C781960()
{
  v1 = v0;
  v2 = type metadata accessor for PMNewGroupFlow(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 32) & ~v3;
  v97 = *(*(v2 - 1) + 64);
  v5 = type metadata accessor for PMSharingGroup(0);
  v96 = *(*(v5 - 8) + 80);
  v6 = *(*(v5 - 8) + 64);
  swift_unknownObjectRelease();
  v7 = v1 + v4;
  v8 = type metadata accessor for PMAccount(0);
  if ((*(*(v8 - 1) + 48))(v1 + v4, 1, v8))
  {
    goto LABEL_25;
  }

  v94 = v3;

  v9 = v7 + v8[5];
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  v92 = v8;
  if (EnumCaseMultiPayload != 1)
  {
    v33 = (v3 + 32) & ~v3;

    v34 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v35 = v34[7];
    v36 = sub_21CB85C04();
    v37 = *(v36 - 8);
    if (!(*(v37 + 48))(v9 + v35, 1, v36))
    {
      (*(v37 + 8))(v9 + v35, v36);
    }

    v38 = v34[8];
    v39 = sub_21CB85BB4();
    v40 = *(v39 - 8);
    if (!(*(v40 + 48))(v9 + v38, 1, v39))
    {
      (*(v40 + 8))(v9 + v38, v39);
    }

    v14 = v34[9];
    v15 = sub_21CB85C44();
    v16 = *(v15 - 8);
    v4 = v33;
    v8 = v92;
    if ((*(v16 + 48))(v9 + v14, 1, v15))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v11 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v12 = *(v11 + 28);
  v13 = sub_21CB85B74();
  (*(*(v13 - 8) + 8))(v9 + v12, v13);

  v14 = *(v11 + 36);
  v15 = sub_21CB85C44();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v9 + v14, 1, v15))
  {
LABEL_4:
    (*(v16 + 8))(v9 + v14, v15);
  }

LABEL_5:
  v17 = (v7 + v8[6]);
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v88 = v4;
    v90 = v6;

    v18 = type metadata accessor for PMAccount.MockData(0);
    v19 = v18[8];
    v20 = sub_21CB80DD4();
    v21 = *(v20 - 8);
    v22 = *(v21 + 48);
    if (!v22(v17 + v19, 1, v20))
    {
      (*(v21 + 8))(v17 + v19, v20);
    }

    v23 = v18[12];
    if (!v22(v17 + v23, 1, v20))
    {
      (*(v21 + 8))(v17 + v23, v20);
    }

    v24 = v18[15];
    v25 = sub_21CB85BB4();
    v26 = *(v25 - 8);
    if (!(*(v26 + 48))(v17 + v24, 1, v25))
    {
      (*(v26 + 8))(v17 + v24, v25);
    }

    v27 = v18[16];
    v28 = sub_21CB85C04();
    v29 = *(v28 - 8);
    v6 = v90;
    v8 = v92;
    if (!(*(v29 + 48))(v17 + v27, 1, v28))
    {
      (*(v29 + 8))(v17 + v27, v28);
    }

    v30 = v18[18];
    v31 = sub_21CB85C44();
    v32 = *(v31 - 8);
    v4 = v88;
    if (!(*(v32 + 48))(v17 + v30, 1, v31))
    {
      (*(v32 + 8))(v17 + v30, v31);
    }
  }

  else
  {
  }

  v41 = v7 + v8[7];
  v3 = v94;
  if (*(v41 + 8))
  {
  }

LABEL_25:

  __swift_destroy_boxed_opaque_existential_0((v7 + v2[6]));
  v42 = v7 + v2[7];
  v43 = sub_21CB82644();
  (*(*(v43 - 8) + 8))(v42, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0);

  v44 = v7 + v2[9];
  v45 = type metadata accessor for MoveAccountFailureAlertData(0);
  if ((*(*(v45 - 8) + 48))(v44, 1, v45))
  {
    goto LABEL_50;
  }

  v87 = v45;
  v89 = v4;
  v95 = v3;
  v91 = v6;

  v46 = v44 + v8[5];
  type metadata accessor for PMAccount.UniqueID(0);
  v47 = swift_getEnumCaseMultiPayload();

  v93 = v8;
  if (v47 != 1)
  {
    v70 = v1;

    v71 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v72 = v71[7];
    v73 = sub_21CB85C04();
    v74 = *(v73 - 8);
    if (!(*(v74 + 48))(v46 + v72, 1, v73))
    {
      (*(v74 + 8))(v46 + v72, v73);
    }

    v75 = v71[8];
    v76 = sub_21CB85BB4();
    v77 = *(v76 - 8);
    if (!(*(v77 + 48))(v46 + v75, 1, v76))
    {
      (*(v77 + 8))(v46 + v75, v76);
    }

    v51 = v71[9];
    v52 = sub_21CB85C44();
    v53 = *(v52 - 8);
    v1 = v70;
    v8 = v93;
    if ((*(v53 + 48))(v46 + v51, 1, v52))
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v48 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v49 = *(v48 + 28);
  v50 = sub_21CB85B74();
  (*(*(v50 - 8) + 8))(v46 + v49, v50);

  v51 = *(v48 + 36);
  v52 = sub_21CB85C44();
  v53 = *(v52 - 8);
  if (!(*(v53 + 48))(v46 + v51, 1, v52))
  {
LABEL_28:
    (*(v53 + 8))(v46 + v51, v52);
  }

LABEL_29:
  v54 = (v44 + v8[6]);
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v86 = v1;

    v55 = type metadata accessor for PMAccount.MockData(0);
    v56 = v55[8];
    v57 = sub_21CB80DD4();
    v58 = *(v57 - 8);
    v59 = *(v58 + 48);
    if (!v59(v54 + v56, 1, v57))
    {
      (*(v58 + 8))(v54 + v56, v57);
    }

    v60 = v55[12];
    if (!v59(v54 + v60, 1, v57))
    {
      (*(v58 + 8))(v54 + v60, v57);
    }

    v61 = v55[15];
    v62 = sub_21CB85BB4();
    v63 = *(v62 - 8);
    v8 = v93;
    if (!(*(v63 + 48))(v54 + v61, 1, v62))
    {
      (*(v63 + 8))(v54 + v61, v62);
    }

    v64 = v55[16];
    v65 = sub_21CB85C04();
    v66 = *(v65 - 8);
    if (!(*(v66 + 48))(v54 + v64, 1, v65))
    {
      (*(v66 + 8))(v54 + v64, v65);
    }

    v67 = v55[18];
    v68 = sub_21CB85C44();
    v69 = *(v68 - 8);
    v1 = v86;
    if (!(*(v69 + 48))(v54 + v67, 1, v68))
    {
      (*(v69 + 8))(v54 + v67, v68);
    }
  }

  else
  {
  }

  v78 = v44 + v8[7];
  if (*(v78 + 8))
  {
  }

  v79 = v44 + *(v87 + 20);
  v80 = sub_21CB85C44();
  (*(*(v80 - 8) + 8))(v79, v80);

  v4 = v89;
  v6 = v91;
  v3 = v95;
LABEL_50:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6D60, &unk_21CBC2FE8);

  v81 = v2[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v82 = sub_21CB823B4();
    (*(*(v82 - 8) + 8))(v7 + v81, v82);
  }

  else
  {
  }

  v83 = (v4 + v97 + v96) & ~v96;

  sub_21C7025C4(*(v7 + v2[14]), *(v7 + v2[14] + 8));

  v84 = sub_21CB85C44();
  (*(*(v84 - 8) + 8))(v1 + v83, v84);

  return MEMORY[0x2821FE8E8](v1, v83 + v6, v3 | v96 | 7);
}

uint64_t sub_21C782904()
{
  v1 = (type metadata accessor for PMWiFiDetailsWindowView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6E90, &qword_21CBC33F8);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2518, &qword_21CBB40D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21CB832B4();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C782A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6E90, &qword_21CBC33F8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2560, &unk_21CBC34F0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21C782B90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6E90, &qword_21CBC33F8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2560, &unk_21CBC34F0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21C782CA8(ValueMetadata **a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6F40, &qword_21CBC3598);
  sub_21C6EADEC(&qword_27CDF6F48, &qword_27CDF6F40, &qword_21CBC3598, MEMORY[0x277CE1198]);
  sub_21CB84CC4();
  swift_getWitnessTable();
  sub_21CA878A4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C782E08()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C782E70()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C782EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMSharingGroup(0);
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

uint64_t sub_21C782F74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PMSharingGroup(0);
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

uint64_t sub_21C783038()
{
  type metadata accessor for PMOnboardingView(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7000, &qword_21CBC3B08);
  sub_21CA8D258(&qword_27CDEE360, type metadata accessor for PMOnboardingView, &unk_21CBB3918);
  type metadata accessor for PMSendGroupInviteMessageSheet(255);
  sub_21CB83994();
  sub_21CA8D258(&qword_27CDF7008, type metadata accessor for PMSendGroupInviteMessageSheet, &unk_21CBCA388);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C783178(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21CB811C4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_21C783224(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21CB811C4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C7832C8(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = sub_21CB811C4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21C783374(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_21CB811C4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s17PasswordManagerUI25PMOfflineMigrationPayloadV13OTPParametersV9AlgorithmOwst_0(uint64_t result, int a2, int a3)
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

uint64_t sub_21C783448(uint64_t a1)
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

uint64_t sub_21C783464(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_21C783494@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_21C7834B4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_21C7834FC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7140, &qword_21CBC4398);
  sub_21CA90EA0();
  sub_21CA90F04();
  return swift_getOpaqueTypeConformance2();
}

id sub_21C783580@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21CA92140(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21C7835C8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C783600(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5A0, &unk_21CBA5080);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21C7836BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5A0, &unk_21CBA5080);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C783774()
{
  type metadata accessor for PMAdapativeStackLabeledContentStyle(255);
  sub_21C853458();
  sub_21CAA5114();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C783868()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_21C7838FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21C783974(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21C7839F0()
{
  v1 = *(type metadata accessor for PMDebugSettingsView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_21CB823B4();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C783B4C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
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
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_21C783CE0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
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
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_21C783EB4()
{
  v1 = type metadata accessor for PMExportAccountSelectionView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CB823B4();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  sub_21CAB0D98(*(v5 + v1[6]), *(v5 + v1[6] + 8));
  v9 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_21CB83834();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v5 + v9, 1, v10))
    {
      (*(v11 + 8))(v5 + v9, v10);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C7841F8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  if (*(v0 + 16))
  {
  }

  v5 = type metadata accessor for PMSharingGroup(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {
    v6 = sub_21CB85C44();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C78435C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = type metadata accessor for PMSharingGroup(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {
    v6 = sub_21CB85C44();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C784538()
{
  v1 = type metadata accessor for PMAccount(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 72) & ~v2;
  v40 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();

  v4 = v0 + v3;

  v5 = v0 + v3 + v1[5];
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v7 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v8 = *(v7 + 28);
    v9 = sub_21CB85B74();
    (*(*(v9 - 8) + 8))(&v5[v8], v9);

    v10 = *(v7 + 36);
    v11 = sub_21CB85C44();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(&v5[v10], 1, v11))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v29 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v30 = v29[7];
  v31 = sub_21CB85C04();
  v32 = *(v31 - 8);
  if (!(*(v32 + 48))(&v5[v30], 1, v31))
  {
    (*(v32 + 8))(&v5[v30], v31);
  }

  v33 = v29[8];
  v34 = sub_21CB85BB4();
  v35 = *(v34 - 8);
  if (!(*(v35 + 48))(&v5[v33], 1, v34))
  {
    (*(v35 + 8))(&v5[v33], v34);
  }

  v10 = v29[9];
  v11 = sub_21CB85C44();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(&v5[v10], 1, v11))
  {
LABEL_3:
    (*(v12 + 8))(&v5[v10], v11);
  }

LABEL_4:
  v13 = &v4[v1[6]];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v38 = (v2 + 72) & ~v2;
    v39 = v2;

    v14 = type metadata accessor for PMAccount.MockData(0);
    v15 = v14[8];
    v16 = sub_21CB80DD4();
    v17 = *(v16 - 8);
    v18 = *(v17 + 48);
    if (!v18(v13 + v15, 1, v16))
    {
      (*(v17 + 8))(v13 + v15, v16);
    }

    v19 = v14[12];
    if (!v18(v13 + v19, 1, v16))
    {
      (*(v17 + 8))(v13 + v19, v16);
    }

    v20 = v14[15];
    v21 = sub_21CB85BB4();
    v22 = *(v21 - 8);
    v3 = v38;
    if (!(*(v22 + 48))(v13 + v20, 1, v21))
    {
      (*(v22 + 8))(v13 + v20, v21);
    }

    v23 = v14[16];
    v24 = sub_21CB85C04();
    v25 = *(v24 - 8);
    v2 = v39;
    if (!(*(v25 + 48))(v13 + v23, 1, v24))
    {
      (*(v25 + 8))(v13 + v23, v24);
    }

    v26 = v14[18];
    v27 = sub_21CB85C44();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(v13 + v26, 1, v27))
    {
      (*(v28 + 8))(v13 + v26, v27);
    }
  }

  else
  {
  }

  v36 = &v4[v1[7]];
  if (*(v36 + 1))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v40, v2 | 7);
}