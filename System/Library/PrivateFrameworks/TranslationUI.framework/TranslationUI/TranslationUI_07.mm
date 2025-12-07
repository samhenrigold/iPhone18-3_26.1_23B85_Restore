unint64_t sub_26F456734()
{
  result = qword_2806E0D60;
  if (!qword_2806E0D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0D60);
  }

  return result;
}

unint64_t sub_26F456788()
{
  result = qword_2806E0D80;
  if (!qword_2806E0D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0D10, &qword_26F4A9430);
    sub_26F456814();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0D80);
  }

  return result;
}

unint64_t sub_26F456814()
{
  result = qword_2806E0D88;
  if (!qword_2806E0D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0D08, &qword_26F4A9428);
    sub_26F4568A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0D88);
  }

  return result;
}

unint64_t sub_26F4568A0()
{
  result = qword_2806E0D90;
  if (!qword_2806E0D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0D00, &qword_26F4A9420);
    sub_26F45692C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0D90);
  }

  return result;
}

unint64_t sub_26F45692C()
{
  result = qword_2806E0D98;
  if (!qword_2806E0D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0CF8, &qword_26F4A9418);
    sub_26F4569E4();
    sub_26F3B18CC(&qword_2806E0DB8, &qword_2806E0DC0, &qword_26F4A94E0, MEMORY[0x277CE0800]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0D98);
  }

  return result;
}

unint64_t sub_26F4569E4()
{
  result = qword_2806E0DA0;
  if (!qword_2806E0DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0CF0, &qword_26F4A9410);
    sub_26F456A70();
    sub_26F456B64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0DA0);
  }

  return result;
}

unint64_t sub_26F456A70()
{
  result = qword_2806E0DA8;
  if (!qword_2806E0DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0CE8, &qword_26F4A9408);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0D30, &qword_26F4A9480);
    sub_26F456564();
    swift_getOpaqueTypeConformance2();
    sub_26F3B18CC(&qword_2806DF9E8, &qword_2806DF9F0, &unk_26F4A5E80, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0DA8);
  }

  return result;
}

unint64_t sub_26F456B64()
{
  result = qword_2806E0DB0;
  if (!qword_2806E0DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0DB0);
  }

  return result;
}

uint64_t sub_26F456BB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26F456C00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0C90, &qword_26F4AB5F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F456C70(double *a1, uint64_t a2, double a3, double a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8)
{
  v10 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v10 && (sub_26F4A0458() & 1) == 0)
  {
    return 0;
  }

  if (a1[2] != *(a2 + 16) || (sub_26F49ECE8() & 1) == 0 || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v11 = a1[5] == *(a2 + 40) && a1[6] == *(a2 + 48);
  if (!v11 || a1[7] != *(a2 + 56))
  {
    return 0;
  }

  v14 = *(a2 + 72);
  v15 = *(a1 + 72);
  if ((sub_26F49ECE8() & 1) == 0)
  {
    return 0;
  }

  if ((v14 ^ v15))
  {
    return 0;
  }

  if (a1[10] != *(a2 + 80))
  {
    return 0;
  }

  if (a1[11] != *(a2 + 88))
  {
    return 0;
  }

  if (a1[12] != *(a2 + 96))
  {
    return 0;
  }

  v16 = *(a2 + 112);
  v17 = *(a1 + 112);
  if (sub_26F49ECE8() & 1) == 0 || ((v16 ^ v17))
  {
    return 0;
  }

  v18 = *(type metadata accessor for TranslationOverlay.LockedMetrics(0) + 40);

  return MEMORY[0x28211DA98](a1 + v18, a2 + v18);
}

unint64_t sub_26F456DB8()
{
  result = qword_2806E0DE0;
  if (!qword_2806E0DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0DE0);
  }

  return result;
}

unint64_t sub_26F456E0C()
{
  result = qword_2806E0DE8;
  if (!qword_2806E0DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0DE8);
  }

  return result;
}

unint64_t sub_26F456EA0()
{
  result = qword_2806E0DF0;
  if (!qword_2806E0DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0CD8, &qword_26F4A93F8);
    sub_26F456F58();
    sub_26F3B18CC(&qword_2806E0E58, &qword_2806E0E60, qword_26F4A9598, MEMORY[0x277CE07C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0DF0);
  }

  return result;
}

unint64_t sub_26F456F58()
{
  result = qword_2806E0DF8;
  if (!qword_2806E0DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0CC0, &qword_26F4A93E0);
    sub_26F457010();
    sub_26F3B18CC(&qword_2806E0E48, &qword_2806E0E50, &qword_26F4A9590, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0DF8);
  }

  return result;
}

unint64_t sub_26F457010()
{
  result = qword_2806E0E00;
  if (!qword_2806E0E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0CB8, &qword_26F4A93D8);
    sub_26F4570C8();
    sub_26F3B18CC(&qword_2806E0E38, &qword_2806E0E40, &qword_26F4A9588, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0E00);
  }

  return result;
}

unint64_t sub_26F4570C8()
{
  result = qword_2806E0E08;
  if (!qword_2806E0E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0CB0, &qword_26F4A93D0);
    sub_26F457180();
    sub_26F3B18CC(&qword_2806E0E28, &qword_2806E0E30, &qword_26F4A9580, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0E08);
  }

  return result;
}

unint64_t sub_26F457180()
{
  result = qword_2806E0E10;
  if (!qword_2806E0E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0E18, &qword_26F4A9578);
    sub_26F457204();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0E10);
  }

  return result;
}

unint64_t sub_26F457204()
{
  result = qword_2806E0E20;
  if (!qword_2806E0E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0D20, &unk_26F4A9440);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0D10, &qword_26F4A9430);
    sub_26F456788();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0E20);
  }

  return result;
}

unint64_t sub_26F4572E8()
{
  result = qword_2806E0E90;
  if (!qword_2806E0E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0E78, &qword_26F4A96B8);
    sub_26F3B18CC(&qword_2806E0E98, &qword_2806E0E80, &qword_26F4A96C0, MEMORY[0x277CE04B0]);
    sub_26F3B18CC(&qword_2806DF560, &qword_2806DF568, &unk_26F4A45A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0E90);
  }

  return result;
}

unint64_t sub_26F4573CC()
{
  result = qword_2806E0EA0;
  if (!qword_2806E0EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0E68, &qword_26F4A96A8);
    sub_26F457484();
    sub_26F3B18CC(&qword_2806E0EB0, &qword_2806E0EB8, &qword_26F4A96D0, MEMORY[0x277CDFB08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0EA0);
  }

  return result;
}

unint64_t sub_26F457484()
{
  result = qword_2806E0EA8;
  if (!qword_2806E0EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0E88, &qword_26F4A96C8);
    sub_26F3B18CC(&qword_2806E0E98, &qword_2806E0E80, &qword_26F4A96C0, MEMORY[0x277CE04B0]);
    sub_26F3B18CC(&qword_2806DEC98, &qword_2806DECA0, &qword_26F4A3E80, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0EA8);
  }

  return result;
}

unint64_t sub_26F457568()
{
  result = qword_2806E0EC0;
  if (!qword_2806E0EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0EC8, &qword_26F4A9708);
    sub_26F4572E8();
    sub_26F4573CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0EC0);
  }

  return result;
}

uint64_t sub_26F4575FC(char a1, double a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0ED8, &qword_26F4A97E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0EE0, &qword_26F4A97E8);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0EE8, &qword_26F4A97F0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v28 - v12);
  if (a1)
  {
    v14 = *(sub_26F49E3A8() + 20);
    v15 = *MEMORY[0x277CE0118];
    v16 = sub_26F49E7C8();
    (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
    *v13 = a2;
    v13[1] = a2;
    v17 = sub_26F49F258();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0F20, &unk_26F4A9808);
    *(v13 + *(v18 + 52)) = v17;
    *(v13 + *(v18 + 56)) = 256;
    sub_26F49F238();
    v19 = sub_26F49F268();

    v20 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0F10, &qword_26F4A9800) + 36);
    *v20 = v19;
    *(v20 + 8) = xmmword_26F4A9710;
    *(v20 + 3) = 0x4014000000000000;
    sub_26F49F238();
    v21 = sub_26F49F268();

    v22 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0F00, &qword_26F4A97F8) + 36);
    *v22 = v21;
    *(v22 + 8) = xmmword_26F4A9720;
    *(v22 + 3) = 0x3FF0000000000000;
    v23 = *(v11 + 36);
    v24 = *MEMORY[0x277CE13F8];
    v25 = sub_26F49F608();
    (*(*(v25 - 8) + 104))(v13 + v23, v24, v25);
    sub_26F4581A8(v13, v10);
    swift_storeEnumTagMultiPayload();
    sub_26F457FD8();
    sub_26F3B18CC(&qword_2806E0F28, &qword_2806E0ED8, &qword_26F4A97E0, MEMORY[0x277CDF660]);
    sub_26F49E928();
    return sub_26F458218(v13);
  }

  else
  {
    type metadata accessor for TranslationOverlayShadowLayer();
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 24) = a2;
    sub_26F49E0B8();
    (*(v5 + 16))(v10, v7, v4);
    swift_storeEnumTagMultiPayload();
    sub_26F457FD8();
    sub_26F3B18CC(&qword_2806E0F28, &qword_2806E0ED8, &qword_26F4A97E0, MEMORY[0x277CDF660]);
    sub_26F49E928();
    return (*(v5 + 8))(v7, v4);
  }
}

void sub_26F457A5C(double a1)
{
  if (a1 > 0.0)
  {
    [v1 setCornerRadius_];
    v3 = *MEMORY[0x277CDA138];
    [v1 setCornerCurve_];
    v4 = OBJC_IVAR____TtC13TranslationUIP33_F1DE10BA1EA2E7A7FF1CDCD88519CF9529TranslationOverlayShadowLayer_sublayer;
    [*&v1[OBJC_IVAR____TtC13TranslationUIP33_F1DE10BA1EA2E7A7FF1CDCD88519CF9529TranslationOverlayShadowLayer_sublayer] setCornerRadius_];
    [*&v1[v4] setCornerCurve_];
  }

  [v1 setShadowPathIsBounds_];
  GenericGray = CGColorCreateGenericGray(0.0, 0.1);
  [v1 setShadowColor_];

  [v1 setShadowOffset_];
  [v1 setShadowRadius_];
  LODWORD(v6) = 1.0;
  [v1 setShadowOpacity_];
  v7 = OBJC_IVAR____TtC13TranslationUIP33_F1DE10BA1EA2E7A7FF1CDCD88519CF9529TranslationOverlayShadowLayer_sublayer;
  [*&v1[OBJC_IVAR____TtC13TranslationUIP33_F1DE10BA1EA2E7A7FF1CDCD88519CF9529TranslationOverlayShadowLayer_sublayer] setShadowPathIsBounds_];
  v8 = *&v1[v7];
  v9 = CGColorCreateGenericGray(0.0, 0.1);
  [v8 setShadowColor_];

  [*&v1[v7] setShadowOffset_];
  [*&v1[v7] setShadowRadius_];
  LODWORD(v10) = 1.0;
  [*&v1[v7] setShadowOpacity_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0730, &unk_26F4A7E80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_26F4A7E40;
  v12 = *&v1[v7];
  *(v11 + 32) = v12;
  sub_26F458280();
  v13 = v12;
  v14 = sub_26F49FAD8();

  [v1 setSublayers_];
}

unint64_t sub_26F457FD8()
{
  result = qword_2806E0EF0;
  if (!qword_2806E0EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0EE8, &qword_26F4A97F0);
    sub_26F458064();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0EF0);
  }

  return result;
}

unint64_t sub_26F458064()
{
  result = qword_2806E0EF8;
  if (!qword_2806E0EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0F00, &qword_26F4A97F8);
    sub_26F4580F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0EF8);
  }

  return result;
}

unint64_t sub_26F4580F0()
{
  result = qword_2806E0F08;
  if (!qword_2806E0F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0F10, &qword_26F4A9800);
    sub_26F3B18CC(&qword_2806E0F18, &qword_2806E0F20, &unk_26F4A9808, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0F08);
  }

  return result;
}

uint64_t sub_26F4581A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0EE8, &qword_26F4A97F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F458218(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0EE8, &qword_26F4A97F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26F458280()
{
  result = qword_2806E0B68;
  if (!qword_2806E0B68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2806E0B68);
  }

  return result;
}

unint64_t sub_26F4582CC()
{
  result = qword_2806E0F30;
  if (!qword_2806E0F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0F38, &qword_26F4A9818);
    sub_26F457FD8();
    sub_26F3B18CC(&qword_2806E0F28, &qword_2806E0ED8, &qword_26F4A97E0, MEMORY[0x277CDF660]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0F30);
  }

  return result;
}

uint64_t TranslationUIErrorCodes.description.getter()
{
  strcpy(v2, "error code: ");
  v0 = sub_26F4A0428();
  MEMORY[0x2743907E0](v0);

  return v2[0];
}

TranslationUI::TranslationUIErrorCodes_optional __swiftcall TranslationUIErrorCodes.init(rawValue:)(Swift::Int rawValue)
{
  v2 = rawValue - 1;
  if ((rawValue - 1) >= 0xC)
  {
    v2 = 12;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_26F458434()
{
  v1 = *v0;
  sub_26F4A0528();
  MEMORY[0x274391330](v1 + 1);
  return sub_26F4A0568();
}

uint64_t sub_26F4584AC(uint64_t a1)
{
  v2 = *v1;
  sub_26F4A0528();
  MEMORY[0x274391330](v2 + 1);
  return sub_26F4A0568();
}

uint64_t sub_26F458518()
{
  strcpy(v2, "error code: ");
  v0 = sub_26F4A0428();
  MEMORY[0x2743907E0](v0);

  return v2[0];
}

TranslationUI::TranslationUIErrorInfoKey_optional __swiftcall TranslationUIErrorInfoKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26F4A02A8();

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

  *v2 = v5;
  return result;
}

uint64_t sub_26F458638(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = "LTSourceLocaleIdentifier";
  }

  else
  {
    v2 = "";
  }

  v3 = v2 | 0x8000000000000000;
  if (*a2)
  {
    v4 = "LTSourceLocaleIdentifier";
  }

  else
  {
    v4 = "";
  }

  if (v3 == (v4 | 0x8000000000000000))
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_26F4A0458();
  }

  return v5 & 1;
}

uint64_t sub_26F4586DC()
{
  sub_26F4A0528();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

uint64_t sub_26F458754(uint64_t a1)
{
  sub_26F49F9A8();
}

uint64_t sub_26F4587B8(uint64_t a1)
{
  sub_26F4A0528();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

uint64_t sub_26F45882C@<X0>(char *a2@<X8>)
{
  v3 = sub_26F4A02A8();

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

void sub_26F45888C(void *a1@<X8>)
{
  if (*v1)
  {
    v2 = "LTSourceLocaleIdentifier";
  }

  else
  {
    v2 = "";
  }

  *a1 = 0xD000000000000018;
  a1[1] = v2 | 0x8000000000000000;
}

void sub_26F458904(id a1@<X0>, unint64_t *a2@<X8>)
{
  v167 = a2;
  v3 = sub_26F49DAE8();
  v4 = *(v3 - 8);
  v162 = v3;
  v163 = v4;
  MEMORY[0x28223BE20](v3);
  v161 = &v161 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0FA8, &qword_26F4A9B40);
  MEMORY[0x28223BE20](v6);
  v164 = &v161 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0FB0, &qword_26F4A9B48);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v161 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0FB8, &unk_26F4A9B50);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v161 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v161 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v161 - v18;
  v166 = sub_26F3BDADC(MEMORY[0x277D84F90]);
  if (qword_2806DE798 != -1)
  {
    swift_once();
  }

  v20 = sub_26F49DCA8();
  v21 = __swift_project_value_buffer(v20, qword_2806EA8D8);
  v22 = a1;
  v168 = v21;
  v23 = sub_26F49DC88();
  v24 = sub_26F49FDF8();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = a1;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    v28 = sub_26F49D7E8();
    *(v26 + 4) = v28;
    *v27 = v28;
    _os_log_impl(&dword_26F39E000, v23, v24, "Showing TranslationUIError for error: %@", v26, 0xCu);
    sub_26F3B6B4C(v27, &qword_2806DF258, &qword_26F4A6220);
    MEMORY[0x274391F70](v27, -1, -1);
    v29 = v26;
    a1 = v25;
    MEMORY[0x274391F70](v29, -1, -1);
  }

  v169 = sub_26F49D7E8();
  v30 = [v169 domain];
  v31 = sub_26F49F8C8();
  v33 = v32;

  if (v31 == 0xD000000000000017 && 0x800000026F4AE7E0 == v33 || (sub_26F4A0458() & 1) != 0)
  {

    *&v171[0] = a1;
    v34 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E02A0, &qword_26F4A9B60);
    if (swift_dynamicCast())
    {

      v35 = v172;
      v36 = BYTE1(v172);
      v37 = *(&v172 + 1);

      goto LABEL_68;
    }

    v38 = v169;
    v39 = v169;
    v40 = sub_26F49DC88();
    v41 = sub_26F49FDD8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *&v172 = v44;
      *v42 = 136446722;
      v45 = [v39 domain];
      v46 = a1;
      v47 = sub_26F49F8C8();
      v49 = v48;

      v50 = v47;
      a1 = v46;
      v51 = sub_26F3B38D0(v50, v49, &v172);

      *(v42 + 4) = v51;
      *(v42 + 12) = 2048;
      v52 = [v39 code];

      *(v42 + 14) = v52;
      *(v42 + 22) = 2112;
      *(v42 + 24) = v39;
      *v43 = v39;
      v53 = v39;
      v54 = "Trying to show a mismatched error domain domain: %{public}s code: %ld; error: %@";
LABEL_12:
      v55 = v41;
      v56 = v40;
      v57 = v42;
      v58 = 32;
LABEL_13:
      _os_log_impl(&dword_26F39E000, v56, v55, v54, v57, v58);
      sub_26F3B6B4C(v43, &qword_2806DF258, &qword_26F4A6220);
      v59 = v43;
      v38 = v169;
      MEMORY[0x274391F70](v59, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v44);
      v60 = v44;
LABEL_14:
      MEMORY[0x274391F70](v60, -1, -1);
      MEMORY[0x274391F70](v42, -1, -1);
LABEL_15:

LABEL_63:
      v35 = 11;
      goto LABEL_64;
    }

    goto LABEL_62;
  }

  v165 = a1;
  if (sub_26F49F8C8() == v31 && v61 == v33)
  {

    goto LABEL_20;
  }

  v62 = sub_26F4A0458();

  if ((v62 & 1) == 0)
  {
    if (sub_26F49F8C8() == v31 && v76 == v33)
    {
    }

    else
    {
      v77 = sub_26F4A0458();

      if ((v77 & 1) == 0)
      {
        if (sub_26F49F8C8() == v31 && v93 == v33)
        {

          a1 = v165;
        }

        else
        {
          v113 = sub_26F4A0458();

          a1 = v165;
          if ((v113 & 1) == 0)
          {
            v38 = v169;
            v152 = v169;
            v40 = sub_26F49DC88();
            v153 = sub_26F49FDD8();

            if (!os_log_type_enabled(v40, v153))
            {
              goto LABEL_15;
            }

            v42 = swift_slowAlloc();
            v43 = swift_slowAlloc();
            v44 = swift_slowAlloc();
            *&v172 = v44;
            *v42 = 136446466;
            v154 = [v152 domain];
            v155 = sub_26F49F8C8();
            v157 = v156;

            v158 = v155;
            a1 = v165;
            v159 = sub_26F3B38D0(v158, v157, &v172);

            *(v42 + 4) = v159;
            *(v42 + 12) = 2112;
            *(v42 + 14) = v152;
            *v43 = v152;
            v160 = v152;
            v54 = "Trying to show an unhandled error domain %{public}s; error: %@";
            v55 = v153;
            v56 = v40;
            v57 = v42;
            v58 = 22;
            goto LABEL_13;
          }
        }

        v38 = v169;
        if ([v169 code] != 561017449)
        {
          v39 = v38;
          v40 = sub_26F49DC88();
          v41 = sub_26F49FDD8();
          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            v43 = swift_slowAlloc();
            v44 = swift_slowAlloc();
            *&v172 = v44;
            *v42 = 136446722;
            v114 = [v39 domain];
            v115 = sub_26F49F8C8();
            v117 = v116;

            v118 = v115;
            a1 = v165;
            v119 = sub_26F3B38D0(v118, v117, &v172);

            *(v42 + 4) = v119;
            *(v42 + 12) = 2048;
            v120 = [v39 code];

            *(v42 + 14) = v120;
            *(v42 + 22) = 2112;
            *(v42 + 24) = v39;
            *v43 = v39;
            v121 = v39;
            v54 = "Trying to show an unhandled OS Status error: %{public}s code: %ld; error: %@";
            goto LABEL_12;
          }

LABEL_62:

          goto LABEL_63;
        }

        v35 = 8;
        goto LABEL_64;
      }
    }

    a1 = v165;
    *&v172 = v165;
    v78 = v165;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E02A0, &qword_26F4A9B60);
    v79 = sub_26F49DB08();
    v80 = swift_dynamicCast();
    v81 = *(*(v79 - 8) + 56);
    v82 = v162;
    if (v80)
    {
      v83 = *(v79 - 8);
      v81(v10, 0, 1, v79);
      sub_26F49DAF8();
      (*(v83 + 8))(v10, v79);
      v85 = v163;
      v84 = v164;
    }

    else
    {
      v81(v10, 1, 1, v79);
      sub_26F3B6B4C(v10, &qword_2806E0FB0, &qword_26F4A9B48);
      v85 = v163;
      (*(v163 + 56))(v19, 1, 1, v82);
      v84 = v164;
    }

    (*(v85 + 104))(v16, *MEMORY[0x277CC9AA8], v82);
    (*(v85 + 56))(v16, 0, 1, v82);
    v86 = *(v6 + 48);
    sub_26F45A8B4(v19, v84);
    sub_26F45A8B4(v16, v84 + v86);
    v87 = *(v85 + 48);
    if (v87(v84, 1, v82) == 1)
    {
      sub_26F3B6B4C(v16, &qword_2806E0FB8, &unk_26F4A9B50);
      v88 = v164;
      sub_26F3B6B4C(v19, &qword_2806E0FB8, &unk_26F4A9B50);
      v89 = v87(v88 + v86, 1, v82);
      v38 = v169;
      if (v89 == 1)
      {
        sub_26F3B6B4C(v88, &qword_2806E0FB8, &unk_26F4A9B50);
        v35 = 4;
        goto LABEL_64;
      }
    }

    else
    {
      sub_26F45A8B4(v84, v13);
      if (v87(v84 + v86, 1, v82) != 1)
      {
        v109 = v163;
        v110 = v161;
        (*(v163 + 32))(v161, v84 + v86, v82);
        sub_26F45A924(&qword_2806E0FC8, MEMORY[0x277CC9AB0], MEMORY[0x277CC9AB8]);
        v111 = sub_26F49F868();
        v112 = *(v109 + 8);
        v112(v110, v82);
        sub_26F3B6B4C(v16, &qword_2806E0FB8, &unk_26F4A9B50);
        sub_26F3B6B4C(v19, &qword_2806E0FB8, &unk_26F4A9B50);
        v112(v13, v82);
        sub_26F3B6B4C(v164, &qword_2806E0FB8, &unk_26F4A9B50);
        v38 = v169;
        if (v111)
        {
          v35 = 4;
          goto LABEL_64;
        }

LABEL_42:
        if ([v38 code] == -1009)
        {
          v90 = sub_26F3B21E4();
          if (v90 == 2)
          {
            v91 = [objc_allocWithZone(MEMORY[0x277CEC5D0]) init];
            v92 = [v91 airplaneMode];

            v90 = v92;
          }

          if (v90)
          {
            v35 = 5;
          }

          else
          {
            v35 = 6;
          }
        }

        else
        {
          v94 = v38;
          v95 = sub_26F49DC88();
          v96 = sub_26F49FDD8();
          if (os_log_type_enabled(v95, v96))
          {
            v97 = swift_slowAlloc();
            v98 = swift_slowAlloc();
            v99 = swift_slowAlloc();
            *&v172 = v99;
            *v97 = 136446722;
            v100 = [v94 domain];
            v101 = sub_26F49F8C8();
            v103 = v102;

            v104 = v101;
            a1 = v165;
            v105 = sub_26F3B38D0(v104, v103, &v172);

            *(v97 + 4) = v105;
            *(v97 + 12) = 2048;
            v106 = [v94 code];

            *(v97 + 14) = v106;
            *(v97 + 22) = 2112;
            *(v97 + 24) = v94;
            *v98 = v94;
            v107 = v94;
            _os_log_impl(&dword_26F39E000, v95, v96, "Trying to show an unhandled network error domain: %{public}s code: %ld; error: %@", v97, 0x20u);
            sub_26F3B6B4C(v98, &qword_2806DF258, &qword_26F4A6220);
            v108 = v98;
            v38 = v169;
            MEMORY[0x274391F70](v108, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v99);
            MEMORY[0x274391F70](v99, -1, -1);
            MEMORY[0x274391F70](v97, -1, -1);
          }

          else
          {
          }

          v35 = 7;
        }

        goto LABEL_64;
      }

      sub_26F3B6B4C(v16, &qword_2806E0FB8, &unk_26F4A9B50);
      v88 = v164;
      sub_26F3B6B4C(v19, &qword_2806E0FB8, &unk_26F4A9B50);
      (*(v163 + 8))(v13, v82);
      v38 = v169;
    }

    sub_26F3B6B4C(v88, &qword_2806E0FA8, &qword_26F4A9B40);
    goto LABEL_42;
  }

LABEL_20:

  v38 = v169;
  v63 = [v169 code];
  v35 = 3;
  if (v63 > 13)
  {
    a1 = v165;
    if (v63 == 14)
    {
      v35 = 9;
      goto LABEL_64;
    }

    if (v63 != 16)
    {
      goto LABEL_26;
    }
  }

  else
  {
    a1 = v165;
    if (v63 != 5)
    {
      if (v63 == 10)
      {
        v35 = 10;
        goto LABEL_64;
      }

LABEL_26:
      v39 = v38;
      v40 = sub_26F49DC88();
      v64 = sub_26F49FDD8();
      if (os_log_type_enabled(v40, v64))
      {
        v42 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        *&v172 = v66;
        *v42 = 136446722;
        v67 = [v39 domain];
        v68 = sub_26F49F8C8();
        v70 = v69;

        v71 = v68;
        a1 = v165;
        v72 = sub_26F3B38D0(v71, v70, &v172);

        *(v42 + 4) = v72;
        *(v42 + 12) = 2048;
        v73 = [v39 code];

        *(v42 + 14) = v73;
        *(v42 + 22) = 2112;
        *(v42 + 24) = v39;
        *v65 = v39;
        v74 = v39;
        _os_log_impl(&dword_26F39E000, v40, v64, "Got an unhandled error domain to show: %{public}s code: %ld; error: %@", v42, 0x20u);
        sub_26F3B6B4C(v65, &qword_2806DF258, &qword_26F4A6220);
        v75 = v65;
        v38 = v169;
        MEMORY[0x274391F70](v75, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v66);
        v60 = v66;
        goto LABEL_14;
      }

      goto LABEL_62;
    }
  }

LABEL_64:
  v122 = [v38 userInfo];
  v123 = sub_26F49F7F8();

  v124 = sub_26F49F8C8();
  v126 = v125;
  v173 = sub_26F45A868();
  *&v172 = v38;
  sub_26F3BE15C(&v172, v171);
  v127 = v38;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v170 = v123;
  sub_26F498178(v171, v124, v126, isUniquelyReferenced_nonNull_native);

  v37 = v170;
  v129 = v127;
  v130 = a1;
  v131 = v129;
  v132 = sub_26F49DC88();
  v133 = sub_26F49FDF8();

  if (os_log_type_enabled(v132, v133))
  {
    v134 = swift_slowAlloc();
    v169 = v37;
    v135 = v134;
    v136 = swift_slowAlloc();
    v137 = swift_slowAlloc();
    *&v171[0] = v137;
    *v135 = 136447234;
    v138 = [v131 domain];
    v139 = sub_26F49F8C8();
    v165 = a1;
    v140 = v139;
    v142 = v141;

    v143 = sub_26F3B38D0(v140, v142, v171);

    *(v135 + 4) = v143;
    *(v135 + 12) = 2048;
    v144 = [v131 code];

    *(v135 + 14) = v144;
    *(v135 + 22) = 2080;
    strcpy(&v172, "error code: ");
    BYTE13(v172) = 0;
    HIWORD(v172) = -5120;
    v170 = (v35 + 1);
    v145 = sub_26F4A0428();
    MEMORY[0x2743907E0](v145);

    v146 = sub_26F3B38D0(v172, *(&v172 + 1), v171);

    *(v135 + 24) = v146;
    *(v135 + 32) = 2112;
    *(v135 + 34) = v131;
    *v136 = v131;
    *(v135 + 42) = 2112;
    v147 = v131;
    v148 = v165;
    v149 = sub_26F49D7E8();
    *(v135 + 44) = v149;
    v136[1] = v149;
    _os_log_impl(&dword_26F39E000, v132, v133, "Showing error UI for bridged error domain %{public}s code %ld to %s; NSError: %@; input error: %@", v135, 0x34u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF258, &qword_26F4A6220);
    swift_arrayDestroy();
    MEMORY[0x274391F70](v136, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x274391F70](v137, -1, -1);
    v150 = v135;
    v37 = v169;
    MEMORY[0x274391F70](v150, -1, -1);
  }

  else
  {
  }

  v36 = v35;
LABEL_68:
  v151 = v167;
  *v167 = v35 | (v36 << 8);
  v151[1] = v37;
}

uint64_t sub_26F459CAC()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 8);
  v19 = 0;
  v20 = 0xE000000000000000;
  MEMORY[0x2743907E0](0xD000000000000017, 0x800000026F4AE7E0);
  MEMORY[0x2743907E0](45, 0xE100000000000000);
  strcpy(&v17, "error code: ");
  BYTE13(v17) = 0;
  HIWORD(v17) = -5120;
  *&v16[0] = v1 + 1;
  v3 = sub_26F4A0428();
  MEMORY[0x2743907E0](v3);

  MEMORY[0x2743907E0](v17, *(&v17 + 1));

  MEMORY[0x2743907E0](8250, 0xE200000000000000);
  v4 = sub_26F49F8C8();
  v6 = MEMORY[0x277D837D0];
  if (*(v2 + 16))
  {
    v7 = sub_26F45FD88(v4, v5);
    v9 = v8;

    if (v9)
    {
      sub_26F3B2DBC(*(v2 + 56) + 32 * v7, v16);
      sub_26F3BE15C(v16, &v17);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v18 = v6;
  *&v17 = 6369134;
  *(&v17 + 1) = 0xE300000000000000;
LABEL_6:
  sub_26F4A0228();
  __swift_destroy_boxed_opaque_existential_0(&v17);
  MEMORY[0x2743907E0](2128928, 0xE300000000000000);
  v10 = sub_26F49F8C8();
  if (!*(v2 + 16))
  {

    goto LABEL_10;
  }

  v12 = sub_26F45FD88(v10, v11);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
LABEL_10:
    v18 = v6;
    *&v17 = 6369134;
    *(&v17 + 1) = 0xE300000000000000;
    goto LABEL_11;
  }

  sub_26F3B2DBC(*(v2 + 56) + 32 * v12, v16);
  sub_26F3BE15C(v16, &v17);
LABEL_11:
  sub_26F4A0228();
  __swift_destroy_boxed_opaque_existential_0(&v17);
  MEMORY[0x2743907E0](41, 0xE100000000000000);
  return v19;
}

uint64_t sub_26F459F0C(uint64_t a1)
{
  v2 = sub_26F45AA2C();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26F459F48(uint64_t a1)
{
  v2 = sub_26F45AA2C();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t TranslationUIErrorView.body.getter()
{
  v1 = type metadata accessor for TranslationUnavailableView(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0F40, &qword_26F4A9830);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - v5;
  v7 = type metadata accessor for TranslationUnavailableViewPhone(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + *(type metadata accessor for TranslationUIErrorView(0) + 20)) == 1)
  {
    sub_26F45A334(v0, v9, type metadata accessor for TranslationUnavailableModel);
    sub_26F45A334(v9, v6, type metadata accessor for TranslationUnavailableViewPhone);
    swift_storeEnumTagMultiPayload();
    sub_26F45A924(&qword_2806E0F48, type metadata accessor for TranslationUnavailableViewPhone, &unk_26F4A9EA4);
    sub_26F45A924(&qword_2806E0F50, type metadata accessor for TranslationUnavailableView, &unk_26F4A9E54);
    sub_26F49E928();
    v10 = type metadata accessor for TranslationUnavailableViewPhone;
    v11 = v9;
  }

  else
  {
    sub_26F45A334(v0, v3, type metadata accessor for TranslationUnavailableModel);
    sub_26F45A334(v3, v6, type metadata accessor for TranslationUnavailableView);
    swift_storeEnumTagMultiPayload();
    sub_26F45A924(&qword_2806E0F48, type metadata accessor for TranslationUnavailableViewPhone, &unk_26F4A9EA4);
    sub_26F45A924(&qword_2806E0F50, type metadata accessor for TranslationUnavailableView, &unk_26F4A9E54);
    sub_26F49E928();
    v10 = type metadata accessor for TranslationUnavailableView;
    v11 = v3;
  }

  return sub_26F45A39C(v11, v10);
}

uint64_t type metadata accessor for TranslationUIErrorView(uint64_t a1)
{
  result = qword_2806E0F88;
  if (!qword_2806E0F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F45A334(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26F45A39C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_26F45A400()
{
  result = qword_2806E0F58;
  if (!qword_2806E0F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0F58);
  }

  return result;
}

unint64_t sub_26F45A488()
{
  result = qword_2806E0F70;
  if (!qword_2806E0F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0F70);
  }

  return result;
}

uint64_t sub_26F45A50C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t getEnumTagSinglePayload for TranslationUIErrorCodes(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TranslationUIErrorCodes(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26F45A708(uint64_t a1)
{
  result = type metadata accessor for TranslationUnavailableModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_26F45A77C()
{
  result = qword_2806E0F98;
  if (!qword_2806E0F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0FA0, &qword_26F4A9B38);
    sub_26F45A924(&qword_2806E0F48, type metadata accessor for TranslationUnavailableViewPhone, &unk_26F4A9EA4);
    sub_26F45A924(&qword_2806E0F50, type metadata accessor for TranslationUnavailableView, &unk_26F4A9E54);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0F98);
  }

  return result;
}

unint64_t sub_26F45A868()
{
  result = qword_2806E0FC0;
  if (!qword_2806E0FC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2806E0FC0);
  }

  return result;
}

uint64_t sub_26F45A8B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0FB8, &unk_26F4A9B50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F45A924(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26F45A980()
{
  result = qword_2806E0FD0;
  if (!qword_2806E0FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0FD0);
  }

  return result;
}

unint64_t sub_26F45A9D8()
{
  result = qword_2806E0FD8;
  if (!qword_2806E0FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0FD8);
  }

  return result;
}

unint64_t sub_26F45AA2C()
{
  result = qword_2806E0FE0;
  if (!qword_2806E0FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0FE0);
  }

  return result;
}

void sub_26F45AA88(char a1)
{
  v2 = 0xD000000000000042;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24[-v4];
  v6 = sub_26F49D878();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = "ion://com.apple.Settings";
  sub_26F49D868();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_26F3B6B4C(v5, &qword_2806DF2A0, &qword_26F4A7190);
    if (qword_280F66CB0 != -1)
    {
      swift_once();
    }

    v11 = sub_26F49DCA8();
    __swift_project_value_buffer(v11, qword_280F67ED0);
    v12 = sub_26F49DC88();
    v13 = sub_26F49FDE8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v25 = v15;
      *v14 = 136315138;
      if (a1)
      {
        if (a1 == 1)
        {
          v10 = "USE_BY_VOICEOVER_TITLE";
        }

        else
        {
          v2 = 0xD000000000000028;
          v10 = "NO_CAMERA_ACCESS_DETAIL";
        }
      }

      v16 = sub_26F3B38D0(v2, v10 | 0x8000000000000000, &v25);

      *(v14 + 4) = v16;
      _os_log_impl(&dword_26F39E000, v12, v13, "Failed to create URL for launching: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x274391F70](v15, -1, -1);
      MEMORY[0x274391F70](v14, -1, -1);
    }
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E10C0, &qword_26F4AA028);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26F4A3150;
    *(inited + 32) = sub_26F49F8C8();
    *(inited + 40) = v18;
    *(inited + 48) = 1;
    v19 = sub_26F3BE060(inited);
    swift_setDeallocating();
    sub_26F3B6B4C(inited + 32, &qword_2806E10C8, &unk_26F4AA030);
    v20 = [objc_opt_self() defaultWorkspace];
    if (v20)
    {
      v21 = v20;
      v22 = sub_26F49D828();
      sub_26F45EB40(v19);

      v23 = sub_26F49F7E8();

      [v21 openSensitiveURL:v22 withOptions:v23];

      (*(v7 + 8))(v9, v6);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_26F45AEC0@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = type metadata accessor for LocalePair(0);
  MEMORY[0x28223BE20](v61);
  v60 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26F49DAB8();
  v58 = *(v5 - 8);
  v59 = v5;
  MEMORY[0x28223BE20](v5);
  v56 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v57 = &v54 - v8;
  MEMORY[0x28223BE20](v9);
  v62 = &v54 - v10;
  v11 = type metadata accessor for TranslationUnavailableState(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = a1[1];
  v17 = *(a1 + 1);
  if (qword_280F66CB0 != -1)
  {
    swift_once();
  }

  v18 = sub_26F49DCA8();
  __swift_project_value_buffer(v18, qword_280F67ED0);

  v19 = sub_26F49DC88();
  v20 = sub_26F49FDB8();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v63 = v17;
    v55 = v22;
    *v21 = 138412290;
    sub_26F45A980();
    v23 = v14;
    v24 = v12;
    v25 = v11;
    v26 = a2;
    v27 = swift_allocError();
    *v28 = v15;
    *(v28 + 1) = v16;
    *(v28 + 8) = v63;

    v29 = sub_26F49D7E8();
    v30 = v27;
    a2 = v26;
    v11 = v25;
    v12 = v24;
    v14 = v23;

    *(v21 + 4) = v29;
    v31 = v55;
    *v55 = v29;
    _os_log_impl(&dword_26F39E000, v19, v20, "Create unavailable state for error %@", v21, 0xCu);
    sub_26F3B6B4C(v31, &qword_2806DF258, &qword_26F4A6220);
    v32 = v31;
    v17 = v63;
    MEMORY[0x274391F70](v32, -1, -1);
    MEMORY[0x274391F70](v21, -1, -1);
  }

  if (v16 > 3)
  {
    if (((1 << v16) & 0xF00) == 0)
    {
      if (((1 << v16) & 0xD0) != 0)
      {

        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E10B8, &qword_26F4AA020);
        (*(*(v33 - 8) + 56))(v14, 3, 4, v33);
        goto LABEL_11;
      }

      if (*(v17 + 16))
      {

        v37 = sub_26F45FD88(0xD000000000000018, 0x800000026F4AC580);
        if (v38)
        {
          sub_26F3B2DBC(*(v17 + 56) + 32 * v37, v65);

          swift_dynamicCast();
        }

        else
        {
        }
      }

      if (*(v17 + 16))
      {

        v39 = sub_26F45FD88(0xD000000000000018, 0x800000026F4AC5A0);
        if (v40)
        {
          sub_26F3B2DBC(*(v17 + 56) + 32 * v39, v65);

          if (swift_dynamicCast())
          {
            v41 = v64;
          }

          else
          {
            v41 = 0;
          }

LABEL_27:
          sub_26F49D978();
          if (!v41)
          {
            _sSo14NSUserDefaultsC13TranslationUIE016translationGroupB0ABvgZ_0();
            v43 = v42;
            v44 = sub_26F49F898();
            v45 = [v43 stringForKey_];

            if (!v45)
            {

              v52 = v56;
              _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
              sub_26F49D988();
              v47 = v58;
              v53 = v52;
              v46 = v59;
              (*(v58 + 8))(v53, v59);
              goto LABEL_31;
            }

            sub_26F49F8C8();
          }

          v47 = v58;
          v46 = v59;
LABEL_31:
          v48 = v57;
          sub_26F49D978();

          v49 = *(v47 + 32);
          v50 = v60;
          v49(v60, v62, v46);
          v49((v50 + *(v61 + 20)), v48, v46);
          sub_26F45E5A4(v50, v14, type metadata accessor for LocalePair);
          v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E10B8, &qword_26F4AA020);
          (*(*(v51 - 8) + 56))(v14, 0, 4, v51);
          goto LABEL_11;
        }
      }

      v41 = 0;
      goto LABEL_27;
    }

LABEL_10:

    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E10B8, &qword_26F4AA020);
    (*(*(v34 - 8) + 56))(v14, 4, 4, v34);
    goto LABEL_11;
  }

  if ((v16 - 1) < 2)
  {
    goto LABEL_10;
  }

  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E10B8, &qword_26F4AA020);
  if (v16)
  {
    (*(*(v36 - 8) + 56))(v14, 2, 4, v36);
  }

  else
  {
    (*(*(v36 - 8) + 56))(v14, 1, 4, v36);
  }

LABEL_11:
  sub_26F45E5A4(v14, a2, type metadata accessor for TranslationUnavailableState);
  return (*(v12 + 56))(a2, 0, 1, v11);
}

int *sub_26F45B69C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26F49DAB8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v79 - v8;
  v10 = type metadata accessor for LocalePair(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TranslationUnavailableState(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F45E53C(v1, v15, type metadata accessor for TranslationUnavailableState);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E10B8, &qword_26F4AA020);
  v17 = (*(*(v16 - 8) + 48))(v15, 4, v16);
  if (v17 <= 1)
  {
    if (!v17)
    {
      sub_26F45E5A4(v15, v12, type metadata accessor for LocalePair);
      _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
      v36 = sub_26F49D9F8();
      v37 = sub_26F49D9F8();
      v38 = [v36 lt:3 displayNameForContext:v37 inTargetLocale:?];

      v39 = 0x45474155474E414CLL;
      if (v38)
      {
        v79 = sub_26F49F8C8();
        v80 = v40;
      }

      else
      {
        v79 = 0x45474155474E414CLL;
        v80 = 0xE800000000000000;
      }

      v57 = *(v4 + 8);
      v57(v9, v3);
      _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
      v58 = sub_26F49D9F8();
      v59 = sub_26F49D9F8();
      v60 = [v58 lt:3 displayNameForContext:v59 inTargetLocale:?];

      if (v60)
      {
        v39 = sub_26F49F8C8();
        v62 = v61;
      }

      else
      {
        v62 = 0xE800000000000000;
      }

      v57(v6, v3);
      if (qword_2806DE7D8 != -1)
      {
        swift_once();
      }

      sub_26F49D7D8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF290, &unk_26F4A3BC0);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_26F4A3B80;
      v64 = MEMORY[0x277D837D0];
      *(v63 + 56) = MEMORY[0x277D837D0];
      v65 = sub_26F3CDADC();
      v66 = v80;
      *(v63 + 32) = v79;
      *(v63 + 40) = v66;
      *(v63 + 96) = v64;
      *(v63 + 104) = v65;
      *(v63 + 64) = v65;
      *(v63 + 72) = v39;
      *(v63 + 80) = v62;
      v80 = sub_26F49F8F8();
      v28 = v67;

      v18 = 0x800000026F4AE9C0;
      v68 = sub_26F49D7D8();
      v20 = v69;
      v70 = sub_26F49F898();
      v71 = SFLocalizableWAPIStringKeyForKey();

      sub_26F49F8C8();
      v35 = v68;
      v27 = v80;
      v32 = sub_26F49D7D8();
      v34 = v72;
      v31 = 0xD000000000000014;

      sub_26F49D958();
      sub_26F45EAD8(v12, type metadata accessor for LocalePair);
      goto LABEL_27;
    }

    if (qword_2806DE7D8 != -1)
    {
      swift_once();
    }

    v51 = sub_26F49D7D8();
    v20 = v52;
    v27 = sub_26F49D7D8();
    v28 = v53;
    v54 = sub_26F49F898();
    v55 = SFLocalizableWAPIStringKeyForKey();

    sub_26F49F8C8();
    v32 = sub_26F49D7D8();
    v34 = v56;
    v35 = v51;

    sub_26F49D958();
    v50 = sub_26F45C29C;
    v18 = 0xEB000000006C6C69;
    v31 = 0x662E6172656D6163;
  }

  else
  {
    if (v17 == 2)
    {
      if (qword_2806DE7D8 != -1)
      {
        swift_once();
      }

      v31 = 0x74616C736E617274;
      v41 = sub_26F49D7D8();
      v20 = v42;
      v27 = sub_26F49D7D8();
      v28 = v43;
      v44 = sub_26F49F898();
      v45 = SFLocalizableWAPIStringKeyForKey();

      sub_26F49F8C8();
      v32 = sub_26F49D7D8();
      v34 = v46;
      v35 = v41;

      sub_26F49D958();
      v47 = sub_26F45C2A4;
    }

    else
    {
      if (v17 == 3)
      {
        v18 = 0x800000026F4AE9C0;
        if (qword_2806DE7D8 != -1)
        {
          swift_once();
        }

        v80 = sub_26F49D7D8();
        v20 = v19;
        v81 = sub_26F49D7D8();
        v82 = v21;
        MEMORY[0x2743907E0](10, 0xE100000000000000);
        v22 = sub_26F49F898();
        v23 = SFLocalizableWAPIStringKeyForKey();

        sub_26F49F8C8();
        v24 = sub_26F49D7D8();
        v26 = v25;

        MEMORY[0x2743907E0](v24, v26);

        v27 = v81;
        v28 = v82;
        v29 = sub_26F49F898();
        v30 = SFLocalizableWAPIStringKeyForKey();

        sub_26F49F8C8();
        v31 = 0xD000000000000014;
        v32 = sub_26F49D7D8();
        v34 = v33;
        v35 = v80;

        sub_26F49D958();
LABEL_27:
        v50 = sub_26F45EB38;
        goto LABEL_28;
      }

      if (qword_2806DE7D8 != -1)
      {
        swift_once();
      }

      v31 = 0x74616C736E617274;
      v34 = 0xE000000000000000;
      v35 = sub_26F49D7D8();
      v20 = v48;
      v27 = sub_26F49D7D8();
      v28 = v49;
      sub_26F49D958();
      v32 = 0;
      v47 = CGPointMake;
    }

    v50 = v47;
    v18 = 0xE900000000000065;
  }

LABEL_28:
  result = type metadata accessor for TranslationUnavailableModel(0);
  v74 = (a1 + result[5]);
  *v74 = v31;
  v74[1] = v18;
  v75 = (a1 + result[6]);
  *v75 = v35;
  v75[1] = v20;
  v76 = (a1 + result[7]);
  *v76 = v27;
  v76[1] = v28;
  v77 = (a1 + result[8]);
  *v77 = v32;
  v77[1] = v34;
  v78 = (a1 + result[9]);
  *v78 = v50;
  v78[1] = 0;
  return result;
}

uint64_t sub_26F45C2B0()
{
  v1 = v0;
  sub_26F4A0178();

  v2 = type metadata accessor for TranslationUnavailableModel(0);
  MEMORY[0x2743907E0](*(v1 + v2[5]), *(v1 + v2[5] + 8));
  MEMORY[0x2743907E0](8285, 0xE200000000000000);
  MEMORY[0x2743907E0](*(v1 + v2[6]), *(v1 + v2[6] + 8));
  MEMORY[0x2743907E0](8250, 0xE200000000000000);
  MEMORY[0x2743907E0](*(v1 + v2[7]), *(v1 + v2[7] + 8));
  MEMORY[0x2743907E0](31520, 0xE200000000000000);
  MEMORY[0x2743907E0](*(v1 + v2[8]), *(v1 + v2[8] + 8));
  MEMORY[0x2743907E0](125, 0xE100000000000000);
  return 91;
}

uint64_t sub_26F45C3A8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26F49D968();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id sub_26F45C414()
{
  type metadata accessor for TranslationUnavailableResource();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_2806E0FE8 = result;
  return result;
}

id sub_26F45C47C(uint64_t a1)
{
  v13.receiver = v1;
  v13.super_class = type metadata accessor for SecureContentUnavailableViewController();
  v3 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, 0, 0);
  v4 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v5 = v3;
  v6 = [v4 initWithFrame_];
  [v5 setView_];

  result = [v5 view];
  if (result)
  {
    v8 = result;
    [result setTranslatesAutoresizingMaskIntoConstraints_];

    v9 = sub_26F49DD28();
    v12[3] = v9;
    v12[4] = MEMORY[0x277D74D18];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
    v11 = *(v9 - 8);
    (*(v11 + 16))(boxed_opaque_existential_1, a1, v9);
    sub_26F49FE08();

    (*(v11 + 8))(a1, v9);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id SecureContentUnavailableViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SecureContentUnavailableViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26F45C784(uint64_t a1)
{
  result = sub_26F49D968();
  if (v2 <= 0x3F)
  {
    result = sub_26F45C81C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_26F45C81C()
{
  result = qword_280F65640;
  if (!qword_280F65640)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280F65640);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_11Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslationUnavailableModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_12Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslationUnavailableModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_26F45C9D8(uint64_t a1)
{
  result = type metadata accessor for TranslationUnavailableModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_26F45CA8C()
{
  v1 = v0;
  v2 = type metadata accessor for TranslationUnavailableViewPhone(0);
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_26F49DD28();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  sub_26F49DCF8();
  v11 = type metadata accessor for TranslationUnavailableModel(0);
  v12 = sub_26F49F898();
  v13 = [objc_opt_self() _systemImageNamed_];

  sub_26F49DD08();

  sub_26F49DCE8();

  sub_26F49DCB8();
  v14 = (v1 + *(v11 + 32));
  v15 = *v14;
  v16 = v14[1];
  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {
    goto LABEL_6;
  }

  v28 = v4;

  v18 = sub_26F49DD18();
  sub_26F49FF78();
  v18(v30, 0);
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass_];
  v21 = sub_26F49F898();
  v22 = [objc_opt_self() colorNamed:v21 inBundle:v20 compatibleWithTraitCollection:0];

  if (v22)
  {
    v23 = sub_26F49DD18();
    sub_26F49FF68();
    v23(v30, 0);
    sub_26F45E45C();
    sub_26F45E53C(v1, &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TranslationUnavailableViewPhone);
    v24 = (*(v29 + 80) + 16) & ~*(v29 + 80);
    v25 = swift_allocObject();
    sub_26F45E5A4(&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for TranslationUnavailableViewPhone);
    sub_26F49FF58();
    v26 = sub_26F49DCD8();
    sub_26F49DCC8();
    v26(v30, 0);
    v4 = v28;
LABEL_6:
    (*(v5 + 16))(v7, v10, v4);
    v27 = objc_allocWithZone(type metadata accessor for SecureContentUnavailableViewController());
    sub_26F45C47C(v7);
    (*(v5 + 8))(v10, v4);
    return;
  }

  __break(1u);
}

uint64_t sub_26F45CF40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26F45CFA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26F45CF40(&qword_2806E1010, type metadata accessor for TranslationUnavailableViewPhone, &unk_26F4A9D7C);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_26F45D038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26F45CF40(&qword_2806E1010, type metadata accessor for TranslationUnavailableViewPhone, &unk_26F4A9D7C);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_26F45D0CC(uint64_t a1)
{
  sub_26F45CF40(&qword_2806E1010, type metadata accessor for TranslationUnavailableViewPhone, &unk_26F4A9D7C);
  sub_26F49EB98();
  __break(1u);
}

uint64_t sub_26F45D124@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v137 = a2;
  v3 = sub_26F49E9B8();
  v126 = *(v3 - 8);
  v127 = v3;
  MEMORY[0x28223BE20](v3);
  v125 = &v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1038, &qword_26F4A9F18);
  MEMORY[0x28223BE20](v123);
  v124 = &v120 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1040, &qword_26F4A9F20);
  v7 = *(v6 - 8);
  v135 = v6;
  v136 = v7;
  MEMORY[0x28223BE20](v6);
  v128 = &v120 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1048, &qword_26F4A9F28);
  MEMORY[0x28223BE20](v9 - 8);
  v155 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v150 = &v120 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0D28, &qword_26F4A9F30);
  MEMORY[0x28223BE20](v13 - 8);
  v156 = &v120 - v14;
  v142 = sub_26F49ED88();
  v157 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v16 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1050, &qword_26F4A9F38) - 8;
  MEMORY[0x28223BE20](v149);
  v154 = &v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v158 = &v120 - v19;
  v20 = sub_26F49F2C8();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for TranslationUnavailableModel(0);
  v130 = v24;
  v131 = a1;

  sub_26F49F2D8();
  (*(v21 + 104))(v23, *MEMORY[0x277CE0FE0], v20);
  v153 = sub_26F49F2F8();

  (*(v21 + 8))(v23, v20);
  sub_26F49F5A8();
  sub_26F49E0C8();
  LOBYTE(v171) = 1;
  *&v195[3] = *&v195[27];
  *&v195[11] = *&v195[35];
  *&v195[19] = *&v195[43];
  v152 = sub_26F49F288();
  KeyPath = swift_getKeyPath();
  v25 = (a1 + *(v24 + 24));
  v26 = v25[1];
  *&v171 = *v25;
  *(&v171 + 1) = v26;
  v129 = sub_26F3BDC0C();

  v27 = sub_26F49EED8();
  v147 = v29;
  v148 = v28;
  v31 = v30;
  v146 = swift_getKeyPath();
  LOBYTE(v21) = v31 & 1;
  LOBYTE(v171) = v31 & 1;
  v32 = *MEMORY[0x277CE0A80];
  v33 = v157;
  v34 = v157 + 104;
  v141 = *(v157 + 104);
  v35 = v142;
  v141(v16, v32, v142);
  v36 = sub_26F49ECD8();
  v37 = *(v36 - 8);
  v38 = *(v37 + 56);
  v139 = v37 + 56;
  v140 = v38;
  v39 = v156;
  v38(v156, 1, 1, v36);
  v40 = sub_26F49ED48();
  sub_26F3B6B4C(v39, &qword_2806E0D28, &qword_26F4A9F30);
  v41 = *(v33 + 8);
  v157 = v33 + 8;
  v138 = v41;
  v41(v16, v35);
  v42 = swift_getKeyPath();
  *&v171 = v27;
  *(&v171 + 1) = v148;
  LOBYTE(v172) = v21;
  *(&v172 + 1) = v147;
  LOWORD(v173) = 256;
  *(&v173 + 1) = v146;
  LOBYTE(v174) = 1;
  *(&v174 + 1) = v42;
  v175 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1058, &qword_26F4A9FD0);
  sub_26F45E208();
  v43 = v158;
  sub_26F49F0E8();
  v196[2] = v173;
  v196[3] = v174;
  v197 = v175;
  v196[0] = v171;
  v196[1] = v172;
  sub_26F3B6B4C(v196, &qword_2806E1058, &qword_26F4A9FD0);
  v44 = sub_26F49F278();
  v45 = swift_getKeyPath();
  v46 = (v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1078, &qword_26F4A9FE8) + 36));
  *v46 = v45;
  v46[1] = v44;
  LOBYTE(v44) = sub_26F49EC38();
  sub_26F49DF78();
  v47 = v43 + *(v149 + 44);
  *v47 = v44;
  *(v47 + 8) = v48;
  *(v47 + 16) = v49;
  *(v47 + 24) = v50;
  *(v47 + 32) = v51;
  *(v47 + 40) = 0;
  v53 = v130;
  v52 = v131;
  v54 = (v131 + *(v130 + 28));
  v55 = v54[1];
  *&v171 = *v54;
  *(&v171 + 1) = v55;

  v132 = sub_26F49EED8();
  v149 = v56;
  LOBYTE(v44) = v57;
  v134 = v58;
  v133 = swift_getKeyPath();
  LODWORD(v148) = v44 & 1;
  LOBYTE(v171) = v44 & 1;
  v59 = *MEMORY[0x277CE0A58];
  v60 = v142;
  v122 = v34;
  v141(v16, v59, v142);
  v61 = v156;
  v121 = v36;
  v140(v156, 1, 1, v36);
  v147 = sub_26F49ED48();
  sub_26F3B6B4C(v61, &qword_2806E0D28, &qword_26F4A9F30);
  v138(v16, v60);
  v146 = swift_getKeyPath();
  v145 = sub_26F49F288();
  v144 = swift_getKeyPath();
  v143 = sub_26F49EC38();
  sub_26F49DF78();
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v69 = v68;
  LOBYTE(v171) = 0;
  v70 = (v52 + *(v53 + 32));
  v72 = *v70;
  v71 = v70[1];
  v73 = HIBYTE(v71) & 0xF;
  if ((v71 & 0x2000000000000000) == 0)
  {
    v73 = v72 & 0xFFFFFFFFFFFFLL;
  }

  if (v73)
  {
    *&v171 = v72;
    *(&v171 + 1) = v71;

    v74 = v124;
    sub_26F49F3B8();
    v75 = swift_getKeyPath();
    v76 = v74 + *(v123 + 36);
    *v76 = v75;
    *(v76 + 8) = 1;
    v77 = v125;
    sub_26F49E9A8();
    sub_26F45E378();
    sub_26F45CF40(&qword_2806E1088, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
    v78 = v128;
    v79 = v127;
    sub_26F49EF48();
    (*(v126 + 8))(v77, v79);
    sub_26F3B6B4C(v74, &qword_2806E1038, &qword_26F4A9F18);
    v80 = v60;
    v141(v16, v59, v60);
    v81 = v156;
    v140(v156, 1, 1, v121);
    v82 = sub_26F49ED48();
    sub_26F3B6B4C(v81, &qword_2806E0D28, &qword_26F4A9F30);
    v138(v16, v80);
    v83 = swift_getKeyPath();
    v84 = (v78 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1090, &qword_26F4A9FF8) + 36));
    *v84 = v83;
    v84[1] = v82;
    type metadata accessor for _BundleObject();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v86 = [objc_opt_self() bundleForClass_];
    v87 = sub_26F49F298();
    v88 = swift_getKeyPath();
    v89 = (v78 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1098, &qword_26F4AA000) + 36));
    *v89 = v88;
    v89[1] = v87;
    LOBYTE(v87) = sub_26F49EC58();
    sub_26F49DF78();
    v90 = v135;
    v91 = v78 + *(v135 + 36);
    *v91 = v87;
    *(v91 + 8) = v92;
    *(v91 + 16) = v93;
    *(v91 + 24) = v94;
    *(v91 + 32) = v95;
    *(v91 + 40) = 0;
    v96 = v150;
    sub_26F3AA65C(v78, v150);
    v97 = 0;
    v98 = v90;
  }

  else
  {
    v97 = 1;
    v96 = v150;
    v98 = v135;
  }

  (*(v136 + 56))(v96, v97, 1, v98);
  v99 = v154;
  sub_26F3B8DD4(v158, v154, &qword_2806E1050, &qword_26F4A9F38);
  sub_26F3B8DD4(v96, v155, &qword_2806E1048, &qword_26F4A9F28);
  v159[0] = v153;
  v159[1] = 0;
  LOWORD(v160[0]) = 1;
  *(v160 + 2) = *v195;
  *(&v160[2] + 2) = *&v195[16];
  *(&v160[1] + 2) = *&v195[8];
  v100 = v152;
  *&v160[3] = *&v195[23];
  *(&v160[3] + 1) = KeyPath;
  v161 = v152;
  v101 = v160[0];
  v102 = v137;
  *v137 = v153;
  v102[1] = v101;
  v103 = v160[1];
  v104 = v160[2];
  v105 = v160[3];
  *(v102 + 10) = v100;
  v102[3] = v104;
  v102[4] = v105;
  v102[2] = v103;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E10A0, &qword_26F4AA008);
  sub_26F3B8DD4(v99, v102 + v106[12], &qword_2806E1050, &qword_26F4A9F38);
  v107 = v102 + v106[16];
  v108 = v132;
  *&v162 = v132;
  *(&v162 + 1) = v149;
  LOBYTE(v163) = v148;
  *(&v163 + 1) = v200[0];
  DWORD1(v163) = *(v200 + 3);
  v110 = v133;
  v109 = v134;
  *(&v163 + 1) = v134;
  LOWORD(v164) = 256;
  *(&v164 + 2) = v198;
  WORD3(v164) = v199;
  *(&v164 + 1) = v133;
  LOBYTE(v165) = 1;
  DWORD1(v165) = *&v193[3];
  *(&v165 + 1) = *v193;
  *(&v165 + 1) = v146;
  *&v166 = v147;
  *(&v166 + 1) = v144;
  *&v167 = v145;
  BYTE8(v167) = v143;
  *(&v167 + 9) = *v194;
  HIDWORD(v167) = *&v194[3];
  *&v168 = v63;
  *(&v168 + 1) = v65;
  *&v169 = v67;
  *(&v169 + 1) = v69;
  v170 = 0;
  v111 = v162;
  v112 = v163;
  v113 = v165;
  v114 = v166;
  *(v107 + 2) = v164;
  *(v107 + 3) = v113;
  *v107 = v111;
  *(v107 + 1) = v112;
  v115 = v167;
  v116 = v168;
  v117 = v169;
  v107[128] = 0;
  *(v107 + 6) = v116;
  *(v107 + 7) = v117;
  *(v107 + 4) = v114;
  *(v107 + 5) = v115;
  v118 = v155;
  sub_26F3B8DD4(v155, v102 + v106[20], &qword_2806E1048, &qword_26F4A9F28);
  sub_26F3B8DD4(v159, &v171, &qword_2806E10A8, &qword_26F4AA010);
  sub_26F3B8DD4(&v162, &v171, &qword_2806E10B0, &qword_26F4AA018);
  sub_26F3B6B4C(v150, &qword_2806E1048, &qword_26F4A9F28);
  sub_26F3B6B4C(v158, &qword_2806E1050, &qword_26F4A9F38);
  sub_26F3B6B4C(v118, &qword_2806E1048, &qword_26F4A9F28);
  *&v171 = v108;
  *(&v171 + 1) = v149;
  LOBYTE(v172) = v148;
  *(&v172 + 1) = v200[0];
  DWORD1(v172) = *(v200 + 3);
  *(&v172 + 1) = v109;
  LOWORD(v173) = 256;
  *(&v173 + 2) = v198;
  WORD3(v173) = v199;
  *(&v173 + 1) = v110;
  LOBYTE(v174) = 1;
  *(&v174 + 1) = *v193;
  DWORD1(v174) = *&v193[3];
  *(&v174 + 1) = v146;
  v175 = v147;
  v176 = v144;
  v177 = v145;
  v178 = v143;
  *&v179[3] = *&v194[3];
  *v179 = *v194;
  v180 = v63;
  v181 = v65;
  v182 = v67;
  v183 = v69;
  v184 = 0;
  sub_26F3B6B4C(&v171, &qword_2806E10B0, &qword_26F4AA018);
  sub_26F3B6B4C(v154, &qword_2806E1050, &qword_26F4A9F38);
  v185[0] = v153;
  v185[1] = 0;
  v186 = 1;
  v187 = 0;
  v188 = *v195;
  v189 = *&v195[8];
  *v190 = *&v195[16];
  *&v190[14] = *&v195[23];
  v191 = KeyPath;
  v192 = v152;
  return sub_26F3B6B4C(v185, &qword_2806E10A8, &qword_26F4AA010);
}

uint64_t sub_26F45E024@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_26F49E7F8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1018, &qword_26F4A9EF8);
  sub_26F45D124(v2, (a2 + *(v4 + 44)));
  sub_26F49F5A8();
  sub_26F49E3D8();
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1020, &qword_26F4A9F00) + 36));
  v5[4] = v31;
  v5[5] = v32;
  v5[6] = v33;
  *v5 = v27;
  v5[1] = v28;
  v5[2] = v29;
  v5[3] = v30;
  v6 = sub_26F49EC88();
  sub_26F49DF78();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1028, &qword_26F4A9F08) + 36);
  *v15 = v6;
  *(v15 + 8) = v8;
  *(v15 + 16) = v10;
  *(v15 + 24) = v12;
  *(v15 + 32) = v14;
  *(v15 + 40) = 0;
  v16 = sub_26F49EC48();
  sub_26F49DF78();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1030, &qword_26F4A9F10);
  v26 = a2 + *(result + 36);
  *v26 = v16;
  *(v26 + 8) = v18;
  *(v26 + 16) = v20;
  *(v26 + 24) = v22;
  *(v26 + 32) = v24;
  *(v26 + 40) = 0;
  return result;
}

uint64_t sub_26F45E1B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26F49E558();
  *a1 = result;
  return result;
}

unint64_t sub_26F45E208()
{
  result = qword_2806E1060;
  if (!qword_2806E1060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E1058, &qword_26F4A9FD0);
    sub_26F45E2C0();
    sub_26F3B18CC(&qword_2806DF210, &qword_2806DF218, &qword_26F4A4B40, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1060);
  }

  return result;
}

unint64_t sub_26F45E2C0()
{
  result = qword_2806E1068;
  if (!qword_2806E1068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E1070, &unk_26F4A9FD8);
    sub_26F3E35C8();
    sub_26F3B18CC(&qword_2806DF9E8, &qword_2806DF9F0, &unk_26F4A5E80, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1068);
  }

  return result;
}

unint64_t sub_26F45E378()
{
  result = qword_2806E1080;
  if (!qword_2806E1080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E1038, &qword_26F4A9F18);
    sub_26F3B18CC(&qword_2806DEB28, &qword_2806DEB20, &qword_26F4A9FF0, MEMORY[0x277CDF028]);
    sub_26F3B18CC(&qword_2806DF9E8, &qword_2806DF9F0, &unk_26F4A5E80, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1080);
  }

  return result;
}

unint64_t sub_26F45E45C()
{
  result = qword_2806DE810;
  if (!qword_2806DE810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2806DE810);
  }

  return result;
}

uint64_t sub_26F45E4A8()
{
  v1 = *(type metadata accessor for TranslationUnavailableViewPhone(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = type metadata accessor for TranslationUnavailableModel(0);
  return (*(v0 + *(v3 + 36) + v2))();
}

uint64_t sub_26F45E53C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26F45E5A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26F45E60C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslationUnavailableState(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1110, &unk_26F4AA090);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v11 = *(v10 + 56);
  sub_26F45E53C(a1, &v16 - v8, type metadata accessor for TranslationUnavailableState);
  sub_26F45E53C(a2, &v9[v11], type metadata accessor for TranslationUnavailableState);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E10B8, &qword_26F4AA020);
  v13 = *(*(v12 - 8) + 48);
  v14 = v13(v9, 4, v12);
  if (v14 <= 1)
  {
    if (v14)
    {
      if (v13(&v9[v11], 4, v12) != 1)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_26F45E53C(v9, v6, type metadata accessor for TranslationUnavailableState);
      if (v13(&v9[v11], 4, v12))
      {
        sub_26F45EAD8(v6, type metadata accessor for LocalePair);
        goto LABEL_12;
      }

      sub_26F45EAD8(&v9[v11], type metadata accessor for LocalePair);
      sub_26F45EAD8(v6, type metadata accessor for LocalePair);
    }
  }

  else
  {
    if (v14 != 2)
    {
      if (v14 == 3 && v13(&v9[v11], 4, v12) == 3)
      {
        goto LABEL_14;
      }

LABEL_12:
      sub_26F3B6B4C(v9, &qword_2806E1110, &unk_26F4AA090);
      return 0;
    }

    if (v13(&v9[v11], 4, v12) != 2)
    {
      goto LABEL_12;
    }
  }

LABEL_14:
  sub_26F45EAD8(v9, type metadata accessor for TranslationUnavailableState);
  return 1;
}

uint64_t sub_26F45E8CC(uint64_t a1)
{
  sub_26F45E924();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_26F45E924()
{
  if (!qword_2806E10E0)
  {
    v0 = type metadata accessor for LocalePair(0);
    if (!v1)
    {
      atomic_store(v0, &qword_2806E10E0);
    }
  }
}

uint64_t sub_26F45E99C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26F45EA20()
{
  result = qword_2806E10F8;
  if (!qword_2806E10F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E1020, &qword_26F4A9F00);
    sub_26F3B18CC(&qword_2806E1100, &qword_2806E1108, qword_26F4AA060, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E10F8);
  }

  return result;
}

uint64_t sub_26F45EAD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_26F45EB40(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED90, &qword_26F4AA100);
    v2 = sub_26F4A0288();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + 16 * (v12 | (v11 << 6)));
        v15 = *v13;
        v14 = v13[1];

        swift_dynamicCast();
        sub_26F3BE15C(&v22, v24);
        sub_26F3BE15C(v24, v25);
        sub_26F3BE15C(v25, &v23);
        v16 = sub_26F45FD88(v15, v14);
        if (v17)
        {
          v8 = (v2[6] + 16 * v16);
          *v8 = v15;
          v8[1] = v14;
          v9 = v16;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0(v10);
          sub_26F3BE15C(&v23, v10);
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
          v18 = (v2[6] + 16 * v16);
          *v18 = v15;
          v18[1] = v14;
          sub_26F3BE15C(&v23, (v2[7] + 32 * v16));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_26F45ED88()
{
  v0 = sub_26F49E1B8();
  __swift_allocate_value_buffer(v0, qword_2806EA940);
  __swift_project_value_buffer(v0, qword_2806EA940);
  return sub_26F49E1A8();
}

void sub_26F45EDEC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38[8] = *MEMORY[0x277D85DE8];
  v4 = sub_26F49D878();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2806DE798 != -1)
  {
    swift_once();
  }

  v8 = sub_26F49DCA8();
  __swift_project_value_buffer(v8, qword_2806EA8D8);
  (*(v5 + 16))(v7, a1, v4);
  v9 = sub_26F49DC88();
  v10 = sub_26F49FDB8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v35[1] = a2;
    v36 = a1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v38[0] = v13;
    *v12 = 136642819;
    sub_26F46058C(&qword_2806E1120, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v14 = sub_26F4A0428();
    v16 = v15;
    (*(v5 + 8))(v7, v4);
    v17 = sub_26F3B38D0(v14, v16, v38);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_26F39E000, v9, v10, "Opening URL with LaunchServices: %{sensitive}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x274391F70](v13, -1, -1);
    a1 = v36;
    MEMORY[0x274391F70](v12, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v37 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E10C0, &qword_26F4AA028);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26F4A3150;
  *(inited + 32) = sub_26F49F8C8();
  *(inited + 40) = v19;
  *(inited + 48) = 1;
  v20 = sub_26F3BE060(inited);
  swift_setDeallocating();
  sub_26F3B6B4C(inited + 32, &qword_2806E10C8, &unk_26F4AA030);
  v21 = [objc_opt_self() defaultWorkspace];
  if (v21)
  {
    v22 = v21;
    v23 = sub_26F49D828();
    sub_26F45EB40(v20);

    v24 = sub_26F49F7E8();

    v38[0] = 0;
    v25 = [v22 openSensitiveURL:v23 withOptions:v24 error:v38];

    if (v25)
    {
      v37 = 1;
      v26 = v38[0];
    }

    else
    {
      v27 = v38[0];
      v28 = sub_26F49D7F8();

      swift_willThrow();
      v29 = v28;
      v30 = sub_26F49DC88();
      v31 = sub_26F49FDD8();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *v32 = 138412290;
        v34 = sub_26F49D7E8();
        *(v32 + 4) = v34;
        *v33 = v34;
        _os_log_impl(&dword_26F39E000, v30, v31, "Failed to open URL with LaunchServices: %@", v32, 0xCu);
        sub_26F3B6B4C(v33, &qword_2806DF258, &qword_26F4A6220);
        MEMORY[0x274391F70](v33, -1, -1);
        MEMORY[0x274391F70](v32, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {

    v37 = 0;
  }

  sub_26F49E198();
  sub_26F45F308(&v37, a1);
}

void sub_26F45F308(_BYTE *a1, uint64_t a2)
{
  v4 = sub_26F49D878();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  if (*a1 == 1)
  {
    if (qword_2806DE798 != -1)
    {
      swift_once();
    }

    v11 = sub_26F49DCA8();
    __swift_project_value_buffer(v11, qword_2806EA8D8);
    (*(v5 + 16))(v10, a2, v4);
    v12 = sub_26F49DC88();
    v13 = sub_26F49FDB8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v30 = v15;
      *v14 = 136642819;
      sub_26F46058C(&qword_2806E1120, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v16 = sub_26F4A0428();
      v18 = v17;
      (*(v5 + 8))(v10, v4);
      v19 = sub_26F3B38D0(v16, v18, &v30);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_26F39E000, v12, v13, "Successfully opened URL with LaunchServices: %{sensitive}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x274391F70](v15, -1, -1);
      MEMORY[0x274391F70](v14, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v10, v4);
    }
  }

  else
  {
    if (qword_2806DE798 != -1)
    {
      swift_once();
    }

    v20 = sub_26F49DCA8();
    __swift_project_value_buffer(v20, qword_2806EA8D8);
    (*(v5 + 16))(v7, a2, v4);
    v21 = sub_26F49DC88();
    v22 = sub_26F49FDB8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v30 = v24;
      *v23 = 136642819;
      sub_26F46058C(&qword_2806E1120, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v25 = sub_26F4A0428();
      v27 = v26;
      (*(v5 + 8))(v7, v4);
      v28 = sub_26F3B38D0(v25, v27, &v30);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_26F39E000, v21, v22, "Failed to open URL with LaunchServices: %{sensitive}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x274391F70](v24, -1, -1);
      MEMORY[0x274391F70](v23, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }
  }
}

uint64_t sub_26F45F744@<X0>(uint64_t a1@<X8>)
{
  if (qword_2806DE7E0 != -1)
  {
    swift_once();
  }

  v2 = sub_26F49E1B8();
  v3 = __swift_project_value_buffer(v2, qword_2806EA940);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *EnvironmentValues.unlockAndOpenURL.getter()
{
  sub_26F45F834();

  return sub_26F49E688();
}

unint64_t sub_26F45F834()
{
  result = qword_2806E1118;
  if (!qword_2806E1118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1118);
  }

  return result;
}

uint64_t sub_26F45F888(uint64_t a1)
{
  v2 = sub_26F49E1B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  sub_26F45F834();
  sub_26F49E698();
  return (*(v3 + 8))(v9, v2);
}

uint64_t EnvironmentValues.unlockAndOpenURL.setter(uint64_t a1)
{
  v2 = sub_26F49E1B8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  sub_26F45F834();
  sub_26F49E698();
  return (*(v3 + 8))(a1, v2);
}

void (*EnvironmentValues.unlockAndOpenURL.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_26F49E1B8();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  v5[6] = sub_26F45F834();
  sub_26F49E688();
  return sub_26F45FC08;
}

void sub_26F45FC08(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 16) + 16);
  v4(*(*a1 + 32), v3[5], v3[1]);
  v5 = v3[5];
  v7 = v3[3];
  v6 = v3[4];
  v8 = v3[1];
  v9 = v3[2];
  if (a2)
  {
    v4(v3[3], v3[4], v3[1]);
    sub_26F49E698();
    v10 = *(v9 + 8);
    v10(v6, v8);
    v10(v5, v8);
  }

  else
  {
    sub_26F49E698();
    (*(v9 + 8))(v5, v8);
  }

  free(v5);
  free(v6);
  free(v7);

  free(v3);
}

unint64_t sub_26F45FD44(uint64_t a1)
{
  v2 = sub_26F4A00D8();

  return sub_26F45FFE0(a1, v2);
}

unint64_t sub_26F45FD88(uint64_t a1, uint64_t a2)
{
  sub_26F4A0528();
  sub_26F49F9A8();
  v4 = sub_26F4A0568();

  return sub_26F4600A8(a1, a2, v4);
}

unint64_t sub_26F45FE00(uint64_t a1)
{
  sub_26F49F8C8();
  sub_26F4A0528();
  sub_26F49F9A8();
  v2 = sub_26F4A0568();

  return sub_26F460160(a1, v2);
}

unint64_t sub_26F45FE94(uint64_t a1)
{
  sub_26F4A0528();
  sub_26F49D968();
  sub_26F46058C(&qword_280F663A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_26F49F828();
  v2 = sub_26F4A0568();

  return sub_26F460264(a1, v2);
}

unint64_t sub_26F45FF48(uint64_t a1)
{
  sub_26F49D968();
  sub_26F46058C(&qword_280F663A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = sub_26F49F818();

  return sub_26F4603CC(a1, v2);
}

unint64_t sub_26F45FFE0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_26F4605D4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x274390EE0](v9, a1);
      sub_26F3B2D68(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_26F4600A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_26F4A0458())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_26F460160(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_26F49F8C8();
      v8 = v7;
      if (v6 == sub_26F49F8C8() && v8 == v9)
      {
        break;
      }

      v11 = sub_26F4A0458();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_26F460264(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for TextModel(0);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_26F446844(*(v2 + 48) + v12 * v10, v8);
      if (sub_26F49D938())
      {
        v13 = *&v8[*(v5 + 20)];
        sub_26F4468A8(v8);
        if (v13 == *(a1 + *(v5 + 20)))
        {
          return v10;
        }
      }

      else
      {
        sub_26F4468A8(v8);
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_26F4603CC(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_26F49D968();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
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
      sub_26F46058C(&qword_2806E1128, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v16 = sub_26F49F868();
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

uint64_t sub_26F46058C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static URL.downloadLanguagesURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  sub_26F49D868();
  v5 = sub_26F49D878();
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v4, 1, v5);
  if (result != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  __break(1u);
  return result;
}

uint64_t static URL.translateSettingsURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  sub_26F49D868();
  v5 = sub_26F49D878();
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v4, 1, v5);
  if (result != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  __break(1u);
  return result;
}

uint64_t static URL.topLevelSettingsURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  sub_26F49D868();
  v5 = sub_26F49D878();
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v4, 1, v5);
  if (result != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  __break(1u);
  return result;
}

uint64_t static URL.translateAppURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_26F49D7C8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F49D7B8();
  sub_26F49D7A8();
  sub_26F49D798();
  v9 = sub_26F49D878();
  v10 = *(v9 - 8);
  result = (*(v10 + 48))(v4, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    return (*(v10 + 32))(a1, v4, v9);
  }

  return result;
}

uint64_t static URL.translateAppURL(with:)@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = sub_26F49D7C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F49D7B8();
  sub_26F49D7A8();

  sub_26F49D788();
  sub_26F49D798();
  v10 = sub_26F49D878();
  v11 = *(v10 - 8);
  result = (*(v11 + 48))(v5, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v7 + 8))(v9, v6);
    return (*(v11 + 32))(a2, v5, v10);
  }

  return result;
}

uint64_t static String.localizedSettingsAppName.getter()
{
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_26F49D7D8();

  return v2;
}

uint64_t NSUserDefaults.onDeviceOnly.getter()
{
  v1 = sub_26F49F898();
  v2 = [v0 BOOLForKey_];

  v3 = [objc_opt_self() sharedConnection];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 isOnDeviceOnlyTranslationForced];

    v2 |= v5;
  }

  return v2 & 1;
}

uint64_t NSUserDefaults.lastUsedLocaleIdentifier.getter()
{
  v1 = sub_26F49F898();
  v2 = [v0 stringForKey_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_26F49F8C8();

  return v3;
}

id NSUserDefaults.debugNetworkPathOverride.getter()
{
  v1 = sub_26F49F898();
  v2 = [v0 integerForKey_];

  return v2;
}

void static NSUserDefaults.ltuiRegisterDefaults()(uint64_t a1)
{
  _sSo14NSUserDefaultsC13TranslationUIE016translationGroupB0ABvgZ_0();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED10, &qword_26F4A2CB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26F4A3150;
  *(inited + 32) = 0xD00000000000001BLL;
  v4 = inited + 32;
  *(inited + 40) = 0x800000026F4AEAA0;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  sub_26F3BDADC(inited);
  swift_setDeallocating();
  sub_26F3B6B4C(v4, &qword_2806DED18, &qword_26F4A2CB8);
  v5 = sub_26F49F7E8();

  [v2 registerDefaults_];
}

void sub_26F461108(void **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_26F49F898();
  v5 = [v3 BOOLForKey_];

  v6 = [objc_opt_self() sharedConnection];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 isOnDeviceOnlyTranslationForced];

    v5 |= v8;
  }

  *a2 = v5 & 1;
}

void NSUserDefaults.onDeviceOnly.setter(char a1)
{
  v3 = sub_26F49F898();
  [v1 setBool:a1 & 1 forKey:v3];
}

void (*NSUserDefaults.onDeviceOnly.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = v1;
  *a1 = v2;
  v4 = sub_26F49F898();
  v5 = [v2 BOOLForKey_];

  v6 = [objc_opt_self() sharedConnection];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 isOnDeviceOnlyTranslationForced];

    v5 |= v8;
  }

  *(a1 + 8) = v5 & 1;
  return sub_26F461314;
}

id NSUserDefaults.firstUseConsent.getter()
{
  v1 = sub_26F49F898();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void NSUserDefaults.firstUseConsent.setter(char a1)
{
  v3 = sub_26F49F898();
  [v1 setBool:a1 & 1 forKey:v3];
}

void (*NSUserDefaults.firstUseConsent.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = sub_26F49F898();
  v4 = [v1 BOOLForKey_];

  *(a1 + 8) = v4;
  return sub_26F4614A4;
}

void sub_26F4614C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = sub_26F49F898();
  [v4 setBool:v5 forKey:v6];
}

void sub_26F461530(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_26F49F898();
  v5 = [v3 stringForKey_];

  if (v5)
  {
    v6 = sub_26F49F8C8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
}

void sub_26F4615C8(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = sub_26F49F898();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_26F49F898();
  [v2 setObject:v3 forKey:v4];
  swift_unknownObjectRelease();
}

void NSUserDefaults.lastUsedLocaleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_26F49F898();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_26F49F898();
  [v2 setObject:v3 forKey:v4];
  swift_unknownObjectRelease();
}

uint64_t (*NSUserDefaults.lastUsedLocaleIdentifier.modify(uint64_t *a1))()
{
  a1[2] = v1;
  v3 = sub_26F49F898();
  v4 = [v1 stringForKey_];

  if (v4)
  {
    v5 = sub_26F49F8C8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_26F4617B8;
}

uint64_t sub_26F4617B8(void *a1, char a2)
{
  v3 = a1[1];
  if (a2)
  {
    if (v3)
    {

      v4 = sub_26F49F898();
    }

    else
    {
      v4 = 0;
    }

    v6 = a1[2];
    v7 = sub_26F49F898();
    [v6 setObject:v4 forKey:v7];
  }

  else
  {
    if (v3)
    {
      v5 = sub_26F49F898();
    }

    else
    {
      v5 = 0;
    }

    v8 = a1[2];
    v7 = sub_26F49F898();
    [v8 setObject:v5 forKey:v7];
  }

  return swift_unknownObjectRelease();
}

id NSUserDefaults.genderDisambiguationEnabled.getter()
{
  v1 = sub_26F49F898();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_26F461934(unsigned __int8 *a1, void **a2)
{
  v2 = *a2;
  if (*a1 == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_26F49FB58();
  }

  v4 = sub_26F49F898();
  [v2 setObject:v3 forKey:v4];
  swift_unknownObjectRelease();
}

void NSUserDefaults.genderDisambiguationEnabled.setter(char a1)
{
  if (a1 == 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_26F49FB58();
  }

  v3 = sub_26F49F898();
  [v1 setObject:v2 forKey:v3];
  swift_unknownObjectRelease();
}

uint64_t (*NSUserDefaults.genderDisambiguationEnabled.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = sub_26F49F898();
  v4 = [v1 BOOLForKey_];

  *(a1 + 8) = v4;
  return sub_26F461AF0;
}

uint64_t sub_26F461AF0(uint64_t a1)
{
  if (*(a1 + 8) == 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_26F49FB58();
  }

  v3 = *a1;
  v4 = sub_26F49F898();
  [v3 setObject:v2 forKey:v4];

  return swift_unknownObjectRelease();
}

id NSUserDefaults.debugAPIShowLanguageStatus.getter()
{
  v1 = sub_26F49F898();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void NSUserDefaults.debugAPIShowLanguageStatus.setter(char a1)
{
  v3 = sub_26F49F898();
  [v1 setBool:a1 & 1 forKey:v3];
}

void (*NSUserDefaults.debugAPIShowLanguageStatus.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = sub_26F49F898();
  v4 = [v1 BOOLForKey_];

  *(a1 + 8) = v4;
  return sub_26F461CE8;
}

void sub_26F461CE8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = sub_26F49F898();
  [v1 setBool:v2 forKey:v3];
}

void NSUserDefaults.debugNetworkPathOverride.setter(uint64_t a1)
{
  v3 = sub_26F49F898();
  [v1 setInteger:a1 forKey:v3];
}

void (*NSUserDefaults.debugNetworkPathOverride.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = sub_26F49F898();
  v4 = [v1 integerForKey_];

  *a1 = v4;
  return sub_26F461E5C;
}

void sub_26F461E5C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = sub_26F49F898();
  [v1 setInteger:v2 forKey:v3];
}

void _sSo14NSUserDefaultsC13TranslationUIE016translationGroupB0ABvgZ_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = [objc_opt_self() defaultManager];
  v10 = sub_26F49F898();
  v11 = [v9 containerURLForSecurityApplicationGroupIdentifier_];

  if (v11)
  {
    sub_26F49D848();

    v12 = sub_26F49D878();
    (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
  }

  else
  {
    v12 = sub_26F49D878();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  }

  sub_26F42F7E8(v5, v8);
  v13 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) init];
  v14 = sub_26F49F898();
  sub_26F42ECE8(v8, v2);
  sub_26F49D878();
  v15 = *(v12 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v2, 1, v12) != 1)
  {
    v16 = sub_26F49D828();
    (*(v15 + 8))(v2, v12);
  }

  v17 = [v13 _initWithSuiteName_container_];

  if (v17)
  {
    sub_26F3B6B4C(v8, &qword_2806DF2A0, &qword_26F4A7190);
  }

  else
  {
    __break(1u);
  }
}

void keypath_setTm_0(unsigned __int8 *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = *a2;
  v8 = sub_26F49F898();
  [v7 setBool:v6 forKey:v8];
}

int *sub_26F462218()
{
  v71 = sub_26F49D968();
  v85 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v70 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v3 - 8);
  v86 = &v69 - v4;
  v5 = type metadata accessor for TextModel(0);
  v88 = *(v5 - 1);
  MEMORY[0x28223BE20](v5);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for VisualTranslationModel(0);
  v74 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v84 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v75 = &v69 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED80, &qword_26F4A3660);
  v79 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v72 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v83 = &v69 - v14;
  MEMORY[0x28223BE20](v15);
  v82 = &v69 - v16;
  swift_beginAccess();
  v73 = v0;
  v17 = *(v0 + 16);
  v20 = *(v17 + 64);
  v19 = v17 + 64;
  v18 = v20;
  v21 = 1 << *(*(v0 + 16) + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v24 = (v21 + 63) >> 6;
  v81 = *(v0 + 16);
  swift_bridgeObjectRetain_n();
  v25 = 0;
  v76 = MEMORY[0x277D84F90];
  v77 = v19;
  v78 = v24;
  if (v23)
  {
LABEL_11:
    while (1)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v28 = v82;
      sub_26F3B8DD4(*(v81 + 56) + *(v79 + 72) * (v27 | (v25 << 6)), v82, &qword_2806DED80, &qword_26F4A3660);
      v29 = v28;
      v30 = v83;
      sub_26F3B8DD4(v29, v83, &qword_2806DED80, &qword_26F4A3660);
      v31 = *(v30 + *(v80 + 28));
      v87 = *(v31 + 16);
      if (v87)
      {
        break;
      }

LABEL_26:
      sub_26F463744(v83, type metadata accessor for VisualTranslationModel);
      v45 = v72;
      sub_26F3BEFCC(v82, v72);
      sub_26F3BEF64(v45, v75, type metadata accessor for VisualTranslationModel);
      v46 = v76;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = sub_26F44650C(0, v46[2] + 1, 1, v46);
      }

      v19 = v77;
      v24 = v78;
      v48 = v46[2];
      v47 = v46[3];
      v1 = (v48 + 1);
      if (v48 >= v47 >> 1)
      {
        v46 = sub_26F44650C((v47 > 1), v48 + 1, 1, v46);
      }

      v46[2] = v1;
      v49 = (*(v74 + 80) + 32) & ~*(v74 + 80);
      v76 = v46;
      sub_26F3BEF64(v75, v46 + v49 + *(v74 + 72) * v48, type metadata accessor for VisualTranslationModel);
      if (!v23)
      {
        goto LABEL_6;
      }
    }

    v32 = 0;
    while (v32 < *(v31 + 16))
    {
      sub_26F448DA4(v31 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v32, v7, type metadata accessor for TextModel);
      if (*&v7[v5[11]] || ((v33 = &v7[v5[6]], v35 = *v33, v34 = *(v33 + 1), v36 = v35 & 0xFFFFFFFFFFFFLL, (v34 & 0x2000000000000000) != 0) ? (v37 = HIBYTE(v34) & 0xF) : (v37 = v36), !v37 || (v38 = v86, v1 = v5, sub_26F3B8DD4(&v7[v5[7]], v86, &qword_2806DEFD8, &qword_26F4A3670), v39 = sub_26F49DAB8(), v40 = (*(*(v39 - 8) + 48))(v38, 1, v39), sub_26F3B6B4C(v38, &qword_2806DEFD8, &qword_26F4A3670), v40 == 1) || (v41 = &v7[v5[8]], (v42 = *(v41 + 1)) == 0) || ((v43 = *v41 & 0xFFFFFFFFFFFFLL, (v42 & 0x2000000000000000) != 0) ? (v44 = HIBYTE(v42) & 0xF) : (v44 = v43), !v44)))
      {
        sub_26F463744(v7, type metadata accessor for TextModel);
        sub_26F463744(v83, type metadata accessor for VisualTranslationModel);
        sub_26F3B6B4C(v82, &qword_2806DED80, &qword_26F4A3660);
        v19 = v77;
        v24 = v78;
        if (v23)
        {
          goto LABEL_11;
        }

        goto LABEL_6;
      }

      ++v32;
      sub_26F463744(v7, type metadata accessor for TextModel);
      if (v87 == v32)
      {
        goto LABEL_26;
      }
    }

LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_6:
  v1 = v76;
  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_44;
    }

    if (v26 >= v24)
    {
      break;
    }

    v23 = *(v19 + 8 * v26);
    ++v25;
    if (v23)
    {
      v25 = v26;
      goto LABEL_11;
    }
  }

  v50 = *(v1 + 2);
  v51 = MEMORY[0x277D84F90];
  if (v50)
  {
    v89[0] = MEMORY[0x277D84F90];
    sub_26F403488(0, v50, 0);
    v51 = v89[0];
    v52 = v1 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
    v53 = *(v74 + 72);
    v54 = (v85 + 16);
    v55 = v71;
    v56 = v70;
    do
    {
      v57 = v84;
      sub_26F448DA4(v52, v84, type metadata accessor for VisualTranslationModel);
      (*v54)(v56, v57, v55);
      sub_26F463744(v57, type metadata accessor for VisualTranslationModel);
      v89[0] = v51;
      v59 = *(v51 + 16);
      v58 = *(v51 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_26F403488((v58 > 1), v59 + 1, 1);
        v51 = v89[0];
      }

      *(v51 + 16) = v59 + 1;
      (*(v85 + 32))(v51 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v59, v56, v55);
      v52 += v53;
      --v50;
    }

    while (v50);
    v1 = v76;
  }

  v60 = v73;
  v61 = sub_26F40452C(v51);

  swift_beginAccess();

  v63 = sub_26F4649F8(v62, v61);

  swift_bridgeObjectRelease_n();
  *(v60 + 24) = v63;

  if (qword_280F66CB0 != -1)
  {
LABEL_45:
    swift_once();
  }

  v64 = sub_26F49DCA8();
  __swift_project_value_buffer(v64, qword_280F67ED0);

  v65 = sub_26F49DC88();
  v66 = sub_26F49FDC8();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 134217984;
    *(v67 + 4) = *(v1 + 2);

    _os_log_impl(&dword_26F39E000, v65, v66, "Prune visual models: %ld", v67, 0xCu);
    MEMORY[0x274391F70](v67, -1, -1);
  }

  else
  {
  }

  return v1;
}

void *sub_26F462B94()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_26F49715C(*(v1 + 16), 0);
    v4 = *(type metadata accessor for TextModel(0) - 8);
    sub_26F4995BC(&v13, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, v1);
    v6 = v5;
    v7 = v13;

    sub_26F3C8E34(v7);
    if (v6 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x277D84F90];
LABEL_5:
  if (qword_280F66CB0 != -1)
  {
    swift_once();
  }

  v8 = sub_26F49DCA8();
  __swift_project_value_buffer(v8, qword_280F67ED0);

  v9 = sub_26F49DC88();
  v10 = sub_26F49FDC8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = v3[2];

    _os_log_impl(&dword_26F39E000, v9, v10, "Mux text models: %ld", v11, 0xCu);
    MEMORY[0x274391F70](v11, -1, -1);
  }

  else
  {
  }

  return v3;
}

uint64_t sub_26F462D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v90 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1130, &unk_26F4ABFF0);
  MEMORY[0x28223BE20](v5 - 8);
  v82 = v77 - v6;
  v7 = type metadata accessor for TextModel(0);
  v84 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for VisualTranslationModel(0);
  v89 = *(v10 - 1);
  MEMORY[0x28223BE20](v10);
  v83 = (v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED80, &qword_26F4A3660);
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v13 = v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v77 - v15;
  v88 = sub_26F49D968();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v81 = v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = (v77 - v19);
  MEMORY[0x28223BE20](v21);
  v23 = v77 - v22;
  swift_beginAccess();
  v24 = v2[3];
  if (!*(v24 + 16) || (v25 = sub_26F45FE94(a1), (v26 & 1) == 0))
  {
    swift_endAccess();
    return (*(v89 + 56))(v90, 1, 1, v10);
  }

  v78 = a1;
  v27 = *(v24 + 56);
  v80 = v23;
  v28 = v87;
  v29 = v27 + *(v87 + 72) * v25;
  v30 = *(v87 + 16);
  v31 = v88;
  v77[1] = v87 + 16;
  v79 = v30;
  v30(v20, v29, v88);
  v32 = v28;
  v33 = v80;
  (*(v32 + 32))(v80, v20, v31);
  swift_endAccess();
  swift_beginAccess();
  v34 = v3[2];
  if (!*(v34 + 16) || (v35 = sub_26F45FF48(v33), (v36 & 1) == 0))
  {
    swift_endAccess();
    (*(v87 + 8))(v33, v88);
    return (*(v89 + 56))(v90, 1, 1, v10);
  }

  sub_26F3B8DD4(*(v34 + 56) + *(v85 + 72) * v35, v13, &qword_2806DED80, &qword_26F4A3660);
  v37 = v16;
  sub_26F3BEFCC(v13, v16);
  swift_endAccess();
  v38 = *(v86 + 48);
  v39 = *(v16 + v38);
  v40 = __OFSUB__(v39, 1);
  v41 = v39 - 1;
  if (v40)
  {
    __break(1u);
LABEL_22:
    v33 = sub_26F4469BC(v33);
    goto LABEL_9;
  }

  v77[0] = v41;
  *(v16 + v38) = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0118, &qword_26F4ABEF0);
  v16 = *(v84 + 72);
  v34 = (*(v84 + 80) + 32) & ~*(v84 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_26F4A3150;
  v20 = type metadata accessor for TextModel;
  sub_26F448DA4(v78, v42 + v34, type metadata accessor for TextModel);
  v33 = *(v37 + v10[7]);
  v43 = *(v7 + 20);
  sub_26F448DA4(v42 + v34, v9, type metadata accessor for TextModel);

  v13 = *&v9[v43];
  if (v13 < 0 || v13 >= v33[2])
  {
    sub_26F463744(v9, type metadata accessor for TextModel);
    v7 = v79;
    goto LABEL_14;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = v79;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_9:
  if (v13 >= v33[2])
  {
    __break(1u);
LABEL_24:
    swift_once();
    goto LABEL_18;
  }

  sub_26F446A6C(v9, v33 + v34 + v13 * v16);
LABEL_14:
  v20 = v83;
  v16 = v88;
  (v7)(v83, v37, v88);
  v45 = v37 + v10[5];
  v46 = *(v45 + 128);
  v47 = *(v45 + 144);
  v48 = *(v45 + 96);
  v98 = *(v45 + 112);
  v99 = v46;
  v100 = v47;
  v101 = *(v45 + 160);
  v49 = *(v45 + 80);
  v95 = *(v45 + 64);
  v96 = v49;
  v97 = v48;
  v50 = *(v45 + 48);
  v93 = *(v45 + 32);
  v94 = v50;
  v51 = *v45;
  v92 = *(v45 + 16);
  v91 = v51;
  v52 = v10[6];
  v53 = sub_26F49D918();
  (*(*(v53 - 8) + 16))(v20 + v52, v37 + v52, v53);
  v54 = *(v37 + v10[8]);
  v55 = *(v37 + v10[9]);
  v56 = *(v37 + v10[10]);
  v57 = v20 + v10[5];
  v58 = v98;
  v59 = v100;
  *(v57 + 8) = v99;
  *(v57 + 9) = v59;
  *(v57 + 20) = v101;
  v60 = v96;
  *(v57 + 4) = v95;
  *(v57 + 5) = v60;
  *(v57 + 6) = v97;
  *(v57 + 7) = v58;
  v62 = v92;
  v61 = v93;
  *v57 = v91;
  *(v57 + 1) = v62;
  v63 = v94;
  *(v57 + 2) = v61;
  *(v57 + 3) = v63;
  *(v20 + v10[7]) = v33;
  *(v20 + v10[8]) = v54;
  *(v20 + v10[9]) = v55;
  *(v20 + v10[10]) = v56;
  *(v20 + v10[11]) = 0;
  if (v77[0] > 0)
  {
    v64 = v7;
    v65 = v81;
    v66 = v16;
    v67 = v77[0];
    v64(v81, v80, v66);
    v68 = v86;
    v69 = *(v86 + 48);
    v70 = v82;
    sub_26F448DA4(v20, v82, type metadata accessor for VisualTranslationModel);
    *(v70 + v69) = v67;
    (*(v85 + 56))(v70, 0, 1, v68);
    swift_beginAccess();
    sub_26F487E48(v70, v65);
    swift_endAccess();
    sub_26F463744(v20, type metadata accessor for VisualTranslationModel);
    sub_26F3B6B4C(v37, &qword_2806DED80, &qword_26F4A3660);
    (*(v87 + 8))(v80, v88);
    return (*(v89 + 56))(v90, 1, 1, v10);
  }

  v3 = v80;
  if (qword_280F66CB0 != -1)
  {
    goto LABEL_24;
  }

LABEL_18:
  v72 = sub_26F49DCA8();
  __swift_project_value_buffer(v72, qword_280F67ED0);
  v73 = sub_26F49DC88();
  v74 = sub_26F49FDC8();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    *v75 = 0;
    _os_log_impl(&dword_26F39E000, v73, v74, "Demuxed visual model", v75, 2u);
    MEMORY[0x274391F70](v75, -1, -1);
  }

  sub_26F3B6B4C(v37, &qword_2806DED80, &qword_26F4A3660);
  (*(v87 + 8))(v3, v16);
  v76 = v90;
  sub_26F3BEF64(v20, v90, type metadata accessor for VisualTranslationModel);
  return (*(v89 + 56))(v76, 0, 1, v10);
}

uint64_t sub_26F4636E0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_26F463744(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t *sub_26F4637A4(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_26F4644D4(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_26F463840(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v54 = sub_26F49D968();
  v8 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v53 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v47 = &v41 - v11;
  v12 = type metadata accessor for TextModel(0);
  v46 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v52 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v45 = &v41 - v15;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED70, &qword_26F4A2F70);
  result = sub_26F4A0288();
  v17 = result;
  if (a2 < 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = *a1;
  }

  v19 = 0;
  v43 = a4;
  v44 = v8 + 16;
  v51 = v8 + 32;
  v20 = result + 64;
  v42 = v8;
  while (v18)
  {
    v21 = __clz(__rbit64(v18));
    v48 = (v18 - 1) & v18;
LABEL_16:
    v24 = v21 | (v19 << 6);
    v25 = a4[6];
    v26 = v45;
    v50 = *(v46 + 72);
    sub_26F448DA4(v25 + v50 * v24, v45, type metadata accessor for TextModel);
    v27 = a4[7];
    v49 = *(v8 + 72);
    v28 = v27 + v49 * v24;
    v29 = v47;
    v30 = v54;
    (*(v8 + 16))(v47, v28, v54);
    sub_26F3BEF64(v26, v52, type metadata accessor for TextModel);
    v31 = *(v8 + 32);
    v31(v53, v29, v30);
    sub_26F4A0528();
    sub_26F464BB8(&qword_280F663A8, MEMORY[0x277CC9600]);
    sub_26F49F828();
    result = sub_26F4A0568();
    v32 = -1 << *(v17 + 32);
    v33 = result & ~v32;
    v34 = v33 >> 6;
    if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
    {
      v36 = 0;
      v37 = (63 - v32) >> 6;
      while (++v34 != v37 || (v36 & 1) == 0)
      {
        v38 = v34 == v37;
        if (v34 == v37)
        {
          v34 = 0;
        }

        v36 |= v38;
        v39 = *(v20 + 8 * v34);
        if (v39 != -1)
        {
          v35 = __clz(__rbit64(~v39)) + (v34 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v35 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v20 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
    sub_26F3BEF64(v52, *(v17 + 48) + v35 * v50, type metadata accessor for TextModel);
    result = (v31)(*(v17 + 56) + v35 * v49, v53, v54);
    ++*(v17 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v43;
    v8 = v42;
    v18 = v48;
    if (!a3)
    {
      return v17;
    }
  }

  v22 = v19;
  while (1)
  {
    v19 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v19 >= a2)
    {
      return v17;
    }

    v23 = a1[v19];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v48 = (v23 - 1) & v23;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_26F463CBC(uint64_t a1)
{
  v62 = type metadata accessor for TextModel(0);
  v79 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v4 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v61 - v6;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED80, &qword_26F4A3660);
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v72 = &v61 - v11;
  v85 = sub_26F49D968();
  v78 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v84 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v61 - v14;
  v16 = type metadata accessor for VisualTranslationModel(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x277D84F90];
  *(v1 + 16) = sub_26F3BE1E0(MEMORY[0x277D84F90]);
  v75 = (v1 + 16);
  v21 = sub_26F3BE3F4(v20);
  v63 = v1;
  *(v1 + 24) = v21;
  v22 = (v1 + 24);
  v70 = *(a1 + 16);
  if (!v70)
  {
    return v63;
  }

  v69 = *(v16 + 28);
  v68 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v23 = 0;
  v82 = (v78 + 16);
  v66 = (v78 + 8);
  v67 = *(v17 + 72);
  v76 = v78 + 40;
  v77 = v78 + 32;
  v65 = v9;
  v64 = v15;
  v80 = v19;
  while (1)
  {
    v74 = v23;
    sub_26F448DA4(v68 + v67 * v23, v19, type metadata accessor for VisualTranslationModel);
    v81 = *v82;
    v81(v15, v19, v85);
    v24 = v72;
    v25 = *(v73 + 48);
    sub_26F448DA4(v19, v72, type metadata accessor for VisualTranslationModel);
    v83 = *&v19[v69];
    *(v24 + v25) = *(v83 + 16);
    v26 = v75;
    swift_beginAccess();
    sub_26F3BEFCC(v24, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v86 = *v26;
    v28 = v86;
    *v26 = 0x8000000000000000;
    v30 = sub_26F45FF48(v15);
    v31 = v28[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_33;
    }

    v34 = v29;
    if (v28[3] >= v33)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26F3C7190();
      }
    }

    else
    {
      sub_26F3C59E8(v33, isUniquelyReferenced_nonNull_native);
      v35 = sub_26F45FF48(v15);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_36;
      }

      v30 = v35;
    }

    v19 = v80;
    v37 = v86;
    if (v34)
    {
      sub_26F464BFC(v9, v86[7] + *(v71 + 72) * v30);
    }

    else
    {
      v86[(v30 >> 6) + 8] |= 1 << v30;
      v81((v37[6] + *(v78 + 72) * v30), v15, v85);
      sub_26F3BEFCC(v9, v37[7] + *(v71 + 72) * v30);
      v38 = v37[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_34;
      }

      v37[2] = v40;
    }

    (*v66)(v15, v85);
    *v75 = v37;
    swift_endAccess();
    v41 = *(v83 + 16);
    if (v41)
    {
      break;
    }

LABEL_3:
    v23 = v74 + 1;
    sub_26F463744(v19, type metadata accessor for VisualTranslationModel);
    v9 = v65;
    v15 = v64;
    if (v23 == v70)
    {
      return v63;
    }
  }

  v42 = 0;
  v43 = v83 + ((*(v79 + 80) + 32) & ~*(v79 + 80));
  while (v42 < *(v83 + 16))
  {
    v44 = *(v79 + 72);
    sub_26F448DA4(v43 + v44 * v42, v7, type metadata accessor for TextModel);
    sub_26F448DA4(v7, v4, type metadata accessor for TextModel);
    swift_beginAccess();
    v81(v84, v19, v85);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v86 = *v22;
    v46 = v86;
    *v22 = 0x8000000000000000;
    v47 = sub_26F45FE94(v4);
    v49 = v46[2];
    v50 = (v48 & 1) == 0;
    v39 = __OFADD__(v49, v50);
    v51 = v49 + v50;
    if (v39)
    {
      goto LABEL_31;
    }

    v52 = v48;
    if (v46[3] < v51)
    {
      sub_26F3C5E64(v51, v45);
      v47 = sub_26F45FE94(v4);
      if ((v52 & 1) != (v53 & 1))
      {
        goto LABEL_35;
      }

LABEL_24:
      v54 = v86;
      if (v52)
      {
        goto LABEL_16;
      }

      goto LABEL_25;
    }

    if (v45)
    {
      goto LABEL_24;
    }

    v59 = v47;
    sub_26F3C74AC();
    v47 = v59;
    v54 = v86;
    if (v52)
    {
LABEL_16:
      (*(v78 + 40))(v54[7] + *(v78 + 72) * v47, v84, v85);
      sub_26F463744(v4, type metadata accessor for TextModel);
      goto LABEL_17;
    }

LABEL_25:
    v54[(v47 >> 6) + 8] |= 1 << v47;
    v55 = v54[6] + v47 * v44;
    v56 = v47;
    sub_26F448DA4(v4, v55, type metadata accessor for TextModel);
    (*(v78 + 32))(v54[7] + *(v78 + 72) * v56, v84, v85);
    sub_26F463744(v4, type metadata accessor for TextModel);
    v57 = v54[2];
    v39 = __OFADD__(v57, 1);
    v58 = v57 + 1;
    if (v39)
    {
      goto LABEL_32;
    }

    v54[2] = v58;
LABEL_17:
    ++v42;
    *v22 = v54;

    swift_endAccess();
    sub_26F463744(v7, type metadata accessor for TextModel);
    v19 = v80;
    if (v41 == v42)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  sub_26F4A04A8();
  __break(1u);
LABEL_36:
  result = sub_26F4A04A8();
  __break(1u);
  return result;
}

void sub_26F4644D4(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v41 = a2;
  v43 = a1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1138, &qword_26F4AA158);
  MEMORY[0x28223BE20](v49);
  v59 = &v40 - v6;
  v7 = sub_26F49D968();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v40 - v12;
  v14 = type metadata accessor for TextModel(0);
  v46 = *(v14 - 8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a3;
  v51 = 0;
  v17 = 0;
  v18 = *(a3 + 64);
  v42 = a3 + 64;
  v19 = 1 << *(a3 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  v57 = v8 + 16;
  v58 = a4;
  v47 = v13;
  v48 = v8;
  v55 = a4 + 7;
  v56 = (v8 + 8);
  v44 = v22;
  v45 = v16;
  while (v21)
  {
    v23 = __clz(__rbit64(v21));
    v53 = (v21 - 1) & v21;
LABEL_13:
    v54 = v17;
    v26 = v23 | (v17 << 6);
    v27 = v50;
    sub_26F448DA4(v50[6] + *(v46 + 72) * v26, v16, type metadata accessor for TextModel);
    v28 = v27[7];
    v29 = *(v48 + 72);
    v52 = v26;
    v30 = *(v48 + 16);
    v30(v13, v28 + v29 * v26, v7);
    v31 = v59;
    sub_26F448DA4(v16, v59, type metadata accessor for TextModel);
    v30((v31 + *(v49 + 48)), v13, v7);
    if (v58[2] && (v32 = v58, sub_26F464BB8(&qword_280F663A8, MEMORY[0x277CC9600]), v33 = sub_26F49F818(), v34 = -1 << *(v32 + 32), v35 = v33 & ~v34, ((*(v55 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) != 0))
    {
      v36 = ~v34;
      while (1)
      {
        v30(v10, v58[6] + v35 * v29, v7);
        sub_26F464BB8(&qword_2806E1128, MEMORY[0x277CC9610]);
        v37 = sub_26F49F868();
        v38 = *v56;
        (*v56)(v10, v7);
        if (v37)
        {
          break;
        }

        v35 = (v35 + 1) & v36;
        if (((*(v55 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      sub_26F3B6B4C(v59, &qword_2806E1138, &qword_26F4AA158);
      v13 = v47;
      v38(v47, v7);
      v16 = v45;
      sub_26F463744(v45, type metadata accessor for TextModel);
      v21 = v53;
      v17 = v54;
      v22 = v44;
    }

    else
    {
LABEL_18:
      sub_26F3B6B4C(v59, &qword_2806E1138, &qword_26F4AA158);
      v13 = v47;
      (*v56)(v47, v7);
      v16 = v45;
      sub_26F463744(v45, type metadata accessor for TextModel);
      v22 = v44;
      *(v43 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v52;
      v39 = __OFADD__(v51++, 1);
      v21 = v53;
      v17 = v54;
      if (v39)
      {
        __break(1u);
LABEL_21:
        sub_26F463840(v43, v41, v51, v50);
        return;
      }
    }
  }

  v24 = v17;
  while (1)
  {
    v17 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v17 >= v22)
    {
      goto LABEL_21;
    }

    v25 = *(v42 + 8 * v17);
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v53 = (v25 - 1) & v25;
      goto LABEL_13;
    }
  }

  __break(1u);
}

unint64_t *sub_26F4649F8(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v11 = sub_26F4637A4(v13, v7, a1, a2);
      MEMORY[0x274391F70](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      return v11;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  sub_26F4644D4((v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);
  v11 = v10;

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v11;
}

uint64_t sub_26F464BB8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_26F49D968();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26F464BFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED80, &qword_26F4A3660);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F464C78()
{
  sub_26F4A0528();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

uint64_t sub_26F464D48(uint64_t a1)
{
  sub_26F49F9A8();
}

uint64_t sub_26F464E04(uint64_t a1)
{
  sub_26F4A0528();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

unint64_t sub_26F464ED0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26F4672B8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26F464F00(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x7466654C706F74;
  v4 = 0xEA00000000007466;
  v5 = 0x654C6D6F74746F62;
  if (*v1 != 2)
  {
    v5 = 0x69526D6F74746F62;
    v4 = 0xEB00000000746867;
  }

  if (*v1)
  {
    v3 = 0x7468676952706F74;
    v2 = 0xE800000000000000;
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

uint64_t sub_26F464F8C()
{
  v1 = 0x7466654C706F74;
  v2 = 0x654C6D6F74746F62;
  if (*v0 != 2)
  {
    v2 = 0x69526D6F74746F62;
  }

  if (*v0)
  {
    v1 = 0x7468676952706F74;
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

unint64_t sub_26F465014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26F4672B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26F46503C(uint64_t a1)
{
  v2 = sub_26F4675FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F465078(uint64_t a1)
{
  v2 = sub_26F4675FC();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_26F4650B4()
{
  CGPointMake();
  v1 = v0;
  v3 = v2;
  CGPointMake();
  v13 = vabdd_f64(v1 * v4, v3 * v5) * 0.5;
  CGPointMake();
  v7 = v6;
  v9 = v8;
  CGPointMake();
  return v13 + vabdd_f64(v7 * v10, v9 * v11) * 0.5;
}

BOOL sub_26F465174()
{
  if (fabs(*v0) <= 1.0 && fabs(v0[1]) <= 1.0 || fabs(v0[2]) <= 1.0 && fabs(v0[3]) <= 1.0 || fabs(v0[4]) <= 1.0 && fabs(v0[5]) <= 1.0)
  {
    return 1;
  }

  v1 = fabs(v0[6]) <= 1.0;
  return fabs(v0[7]) <= 1.0 && v1;
}

void sub_26F465208(float64x2_t *a1@<X8>, float64x2_t a2@<Q0>, float64_t a3@<D1>)
{
  v5 = *v3;
  v4 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  __asm { FMOV            V6.2D, #1.0 }

  v13 = vmovn_s64(vmvnq_s8(vcgeq_f64(_Q6, vabsq_f64(*v3))));
  if (((v13.i32[0] | v13.i32[1]) & 1) == 0 || (v14 = vmovn_s64(vmvnq_s8(vcgeq_f64(_Q6, vabsq_f64(v4)))), ((v14.i32[0] | v14.i32[1]) & 1) == 0) || (v15 = vmovn_s64(vmvnq_s8(vcgeq_f64(_Q6, vabsq_f64(v7)))), ((v15.i32[0] | v15.i32[1]) & 1) == 0) || (v16 = vmovn_s64(vmvnq_s8(vcgeq_f64(_Q6, vabsq_f64(v6)))), ((v16.i32[0] | v16.i32[1]) & 1) == 0))
  {
    a2.f64[1] = a3;
    v4 = vmulq_f64(v4, a2);
    v5 = vmulq_f64(v5, a2);
    v6 = vmulq_f64(v6, a2);
    v7 = vmulq_f64(v7, a2);
  }

  *a1 = v5;
  a1[1] = v4;
  a1[2] = v7;
  a1[3] = v6;
}

uint64_t sub_26F4652B4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E11B0, &qword_26F4AA460);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F4675FC();
  sub_26F4A0598();
  v12 = *v3;
  v11 = 0;
  type metadata accessor for CGPoint(0);
  sub_26F467650(&qword_2806E11C0, type metadata accessor for CGPoint, MEMORY[0x277CBF2A8]);
  sub_26F4A03F8();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v12 = v3[1];
  v11 = 1;
  sub_26F4A03F8();
  v12 = v3[2];
  v11 = 2;
  sub_26F4A03F8();
  v12 = v3[3];
  v11 = 3;
  sub_26F4A03F8();
  return (*(v6 + 8))(v8, v5);
}

double sub_26F4654F8@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_26F467304(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

BOOL sub_26F465554(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_26F466C1C(v7, v8);
}

uint64_t sub_26F46571C()
{
  sub_26F4A0528();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

uint64_t sub_26F4657F4(uint64_t a1)
{
  sub_26F49F9A8();
}

uint64_t sub_26F4658B8(uint64_t a1)
{
  sub_26F4A0528();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

unint64_t sub_26F46598C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26F4675B0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26F4659BC(unint64_t *a1@<X8>)
{
  v2 = 0xED0000656C676E41;
  v3 = 0x656E696C65736162;
  v4 = 0xED00006D726F6673;
  v5 = 0x6E6172546A6F7270;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000012;
    v4 = 0x800000026F4AC610;
  }

  if (*v1)
  {
    v3 = 1684108657;
    v2 = 0xE400000000000000;
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

unint64_t sub_26F465A50()
{
  v1 = 0x656E696C65736162;
  v2 = 0x6E6172546A6F7270;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 1684108657;
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

unint64_t sub_26F465AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26F4675B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26F465B08(uint64_t a1)
{
  v2 = sub_26F466E14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F465B44(uint64_t a1)
{
  v2 = sub_26F466E14();

  return MEMORY[0x2821FE720](a1, v2);
}

void *PageBounds.init(topLeft:topRight:bottomLeft:bottomRight:radians:homography:homographySpace:)@<X0>(void *result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>, double a10@<D5>, double a11@<D6>, double a12@<D7>, double a13, double a14)
{
  v14 = result;
  v38 = a2 & 1;
  if (*(a3 + 48))
  {
    v24 = *MEMORY[0x277CD9DE8];
    v25 = *(MEMORY[0x277CD9DE8] + 16);
    v26 = *(MEMORY[0x277CD9DE8] + 32);
    v27 = *(MEMORY[0x277CD9DE8] + 48);
    v28 = *(MEMORY[0x277CD9DE8] + 64);
    v29 = *(MEMORY[0x277CD9DE8] + 80);
    v30 = 1.0;
    v31 = 1.0;
  }

  else
  {
    result = CATransform3DMakeWithSIMDFloat3x3();
    v31 = a13;
    v30 = a14;
    v24 = v32;
    v25 = v33;
    v26 = v34;
    v27 = v35;
    v28 = v36;
    v29 = v37;
  }

  *a4 = v14;
  *(a4 + 8) = v38;
  *(a4 + 16) = a5;
  *(a4 + 24) = a6;
  *(a4 + 32) = a7;
  *(a4 + 40) = a8;
  *(a4 + 48) = a9;
  *(a4 + 56) = a10;
  *(a4 + 64) = a11;
  *(a4 + 72) = a12;
  *(a4 + 80) = v24;
  *(a4 + 96) = v25;
  *(a4 + 104) = v26;
  *(a4 + 120) = v27;
  *(a4 + 128) = v28;
  *(a4 + 144) = v29;
  *(a4 + 152) = v31;
  *(a4 + 160) = v30;
  return result;
}

__n128 sub_26F465CC0@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 boundingQuad];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 originalBoundingQuad];
    if (v6)
    {
      v7 = v6;

      v5 = v7;
    }

    [v5 topLeft];
    v45 = v9;
    v46 = v8;
    [v5 topRight];
    v43 = v11;
    v44 = v10;
    [v5 bottomLeft];
    v41 = v13;
    v42 = v12;
    [v5 bottomRight];
    v15 = v14;
    v17 = v16;
    [a1 baselineAngle];
    v19 = v18;
    v20 = [a1 originalBoundingQuad];
    if (v20)
    {
      [a1 boundingQuadHomography];
      v37 = v21;
    }

    v22 = [a1 originalBoundingQuad];
    if (v22)
    {
      v23 = v22;
      [v22 normalizationSize];
      v25 = v24;
      v27 = v26;
    }

    else
    {
      v25 = *MEMORY[0x277CBF3A8];
      v27 = *(MEMORY[0x277CBF3A8] + 8);
    }

    v28 = -v19;
    if (v20)
    {
      CATransform3DMakeWithSIMDFloat3x3();
      v29 = v48;
      v39 = v49;
      v40 = v47;
      v30 = v50.n128_u64[0];
      v38 = v51;
      v31 = v52;
    }

    else
    {
      v29 = *(MEMORY[0x277CD9DE8] + 16);
      v39 = *(MEMORY[0x277CD9DE8] + 32);
      v40 = *MEMORY[0x277CD9DE8];
      v30 = *(MEMORY[0x277CD9DE8] + 48);
      v38 = *(MEMORY[0x277CD9DE8] + 64);
      v31 = *(MEMORY[0x277CD9DE8] + 80);
      v25 = 1.0;
      v27 = 1.0;
    }

    *&v47 = v28;
    BYTE8(v47) = 0;
    *&v48 = v46;
    *(&v48 + 1) = v45;
    *&v49 = v44;
    *(&v49 + 1) = v43;
    v50.n128_u64[0] = v42;
    v50.n128_u64[1] = v41;
    *&v51 = v15;
    *(&v51 + 1) = v17;
    v52 = v40;
    *v53 = v29;
    *&v53[8] = v39;
    v54 = v38;
    *&v53[24] = v30;
    *v55 = v31;
    *&v55[8] = v25;
    *&v55[16] = v27;
    sub_26F467728(&v47);
  }

  else
  {

    sub_26F467700(&v47);
  }

  v32 = *v55;
  *(a2 + 128) = v54;
  *(a2 + 144) = v32;
  *(a2 + 153) = *&v55[9];
  v33 = v52;
  *(a2 + 64) = v51;
  *(a2 + 80) = v33;
  v34 = *&v53[16];
  *(a2 + 96) = *v53;
  *(a2 + 112) = v34;
  v35 = v48;
  *a2 = v47;
  *(a2 + 16) = v35;
  result = v50;
  *(a2 + 32) = v49;
  *(a2 + 48) = result;
  return result;
}

double sub_26F465F88@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E11D8, &qword_26F4AA470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v58 - v5;
  v7 = sub_26F49F7B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  RecognizedItem.originalBounds.getter(v6);
  v11 = *(v8 + 48);
  if (v11(v6, 1, v7) == 1)
  {
    sub_26F49F7C8();
    if (v11(v6, 1, v7) != 1)
    {
      sub_26F467698(v6);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  RecognizedItem.homography.getter(v73);
  v59 = v73[0];
  v61 = *&v73[1];
  v60 = *&v73[2];
  v62 = *&v73[4];
  sub_26F49F778();
  v70 = v12;
  v69 = v13;
  sub_26F49F798();
  v68 = v14;
  v67 = v15;
  sub_26F49F738();
  v66 = v16;
  v65 = v17;
  sub_26F49F758();
  v64 = v18.n128_u64[0];
  v63 = v19;
  v20 = RecognizedItem.baselineAngle.getter(v18);
  LODWORD(v22) = v21;
  *&v24 = COERCE_DOUBLE(RecognizedItem.homographySize.getter(v23));
  v27 = *MEMORY[0x277CBF3A8];
  v28 = *(MEMORY[0x277CBF3A8] + 8);
  v72 = v22 & 1;
  v29 = v74;
  if (v74)
  {
    v30 = *(MEMORY[0x277CD9DE8] + 8);
    v62 = *MEMORY[0x277CD9DE8];
    v61 = v30;
    v60 = *(MEMORY[0x277CD9DE8] + 16);
    v31 = *(MEMORY[0x277CD9DE8] + 32);
    v32 = *(MEMORY[0x277CD9DE8] + 40);
    v33 = *(MEMORY[0x277CD9DE8] + 48);
    v34 = *(MEMORY[0x277CD9DE8] + 64);
    v35 = *(MEMORY[0x277CD9DE8] + 72);
    v36 = *(MEMORY[0x277CD9DE8] + 80);
  }

  else
  {
    v37 = v7;
    v38 = v24;
    LODWORD(v59) = v22;
    v22 = v20;
    v39 = a1;
    v40 = v8;
    v41 = v25;
    v42 = v26;
    v43 = v10;
    v44 = v74;
    CATransform3DMakeWithSIMDFloat3x3();
    v29 = v44;
    v10 = v43;
    v26 = v42;
    v25 = v41;
    v8 = v40;
    a1 = v39;
    v20 = v22;
    LOBYTE(v22) = v59;
    v24 = v38;
    v7 = v37;
    v62 = v71[0];
    v61 = v71[1];
    v60 = v71[2];
    v31 = v71[4];
    v32 = v71[5];
    v33 = v71[6];
    v34 = v71[8];
    v35 = v71[9];
    v36 = v71[10];
  }

  v45 = v25;
  if (v26)
  {
    v45 = v28;
  }

  v46 = *&v24;
  if (v26)
  {
    v46 = v27;
  }

  if (v29)
  {
    v47 = 1.0;
  }

  else
  {
    v47 = v46;
  }

  if (v29)
  {
    v48 = 1.0;
  }

  else
  {
    v48 = v45;
  }

  if (v22)
  {
    v49 = v20;
  }

  else
  {
    v49 = v20 ^ 0x8000000000000000;
  }

  v50 = sub_26F49F7D8();
  (*(*(v50 - 8) + 8))(a1, v50);
  (*(v8 + 8))(v10, v7);
  v51 = v72;
  *a2 = v49;
  *(a2 + 8) = v51;
  v52 = v69;
  *(a2 + 16) = v70;
  *(a2 + 24) = v52;
  v53 = v67;
  *(a2 + 32) = v68;
  *(a2 + 40) = v53;
  v54 = v65;
  *(a2 + 48) = v66;
  *(a2 + 56) = v54;
  v55 = v63;
  *(a2 + 64) = v64;
  *(a2 + 72) = v55;
  v56 = v61;
  *(a2 + 80) = v62;
  *(a2 + 88) = v56;
  result = v60;
  *(a2 + 96) = v60;
  *(a2 + 104) = v31;
  *(a2 + 112) = v32;
  *(a2 + 120) = v33;
  *(a2 + 128) = v34;
  *(a2 + 136) = v35;
  *(a2 + 144) = v36;
  *(a2 + 152) = v47;
  *(a2 + 160) = v48;
  return result;
}

double sub_26F466434(uint64_t a1, uint64_t a2, char a3, char a4)
{
  if (a4)
  {
    v8 = v4[6];
  }

  else
  {
    v8 = v4[2];
  }

  if (a4)
  {
    v9 = v4[7];
  }

  else
  {
    v9 = v4[3];
  }

  if (a4)
  {
    v10 = v4[2];
  }

  else
  {
    v10 = v4[4];
  }

  if (a4)
  {
    v11 = v4[3];
  }

  else
  {
    v11 = v4[5];
  }

  if (a4)
  {
    v12 = v4[8];
  }

  else
  {
    v12 = v4[6];
  }

  if (a4)
  {
    v13 = v4[9];
  }

  else
  {
    v13 = v4[7];
  }

  if (a4)
  {
    v14 = v4[4];
  }

  else
  {
    v14 = v4[8];
  }

  if (a4)
  {
    v15 = v4[5];
  }

  else
  {
    v15 = v4[9];
  }

  v32 = v8;
  v33 = v9;
  v34 = v10;
  v35 = v11;
  v36 = v12;
  v37 = v13;
  v38 = v14;
  v39 = v15;
  if (sub_26F465174())
  {
    if (a3)
    {
      if (qword_280F66CB0 != -1)
      {
        swift_once();
      }

      v17 = sub_26F49DCA8();
      __swift_project_value_buffer(v17, qword_280F67ED0);
      v18 = sub_26F49DC88();
      v19 = sub_26F49FDD8();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_26F39E000, v18, v19, "Bounding box request with nil fit results in a normalized rect", v20, 2u);
        MEMORY[0x274391F70](v20, -1, -1);
      }
    }

    else
    {
      *&v16.f64[0] = a1;
      sub_26F465208(&v25, v16, *&a2);
      v9 = v25.f64[1];
      v8 = v25.f64[0];
      v10 = v26;
      v11 = v27;
      v12 = v28;
      v13 = v29;
      v14 = v30;
      v15 = v31;
    }
  }

  v21 = [objc_allocWithZone(MEMORY[0x277D78578]) initWithTopLeft:v8 topRight:v9 bottomLeft:v10 bottomRight:{v11, v12, v13, v14, v15}];
  [v21 minimumBoundingRectWithoutRotation];
  v23 = v22;

  return v23;
}

uint64_t PageBounds.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1140, &qword_26F4AA160);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - v6;
  v8 = *v2;
  v9 = *(v2 + 8);
  v10 = v2[19];
  v11 = v2[20];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F466E14();
  sub_26F4A0598();
  *&v19 = v8;
  BYTE8(v19) = v9;
  v24 = 0;
  sub_26F466E68();
  v12 = v18[1];
  sub_26F4A0388();
  if (!v12)
  {
    v13 = *(v2 + 2);
    v19 = *(v2 + 1);
    v20 = v13;
    v14 = *(v2 + 4);
    v21 = *(v2 + 3);
    v22 = v14;
    v24 = 1;
    sub_26F466EBC();
    sub_26F4A03F8();
    v15 = *(v2 + 8);
    v21 = *(v2 + 7);
    v22 = v15;
    v23 = v2[18];
    v16 = *(v2 + 6);
    v19 = *(v2 + 5);
    v20 = v16;
    v24 = 2;
    sub_26F466F10();
    sub_26F4A03F8();
    *&v19 = v10;
    *(&v19 + 1) = v11;
    v24 = 3;
    type metadata accessor for CGSize(0);
    sub_26F467650(&qword_2806E1168, type metadata accessor for CGSize, MEMORY[0x277CBF288]);
    sub_26F4A03F8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t PageBounds.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1170, &qword_26F4AA168);
  v5 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v7 = &v17 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F466E14();
  sub_26F4A0588();
  if (!v2)
  {
    v8 = v5;
    LOBYTE(v27) = 0;
    sub_26F466F64();
    v9 = v38;
    sub_26F4A02E8();
    v10 = v21;
    v37 = BYTE8(v21);
    v26 = 1;
    sub_26F466FB8();
    sub_26F4A0348();
    v17 = v10;
    *&v36[7] = v27;
    *&v36[23] = v28;
    *&v36[39] = v29;
    *&v36[55] = v30;
    v20 = 2;
    sub_26F46700C();
    sub_26F4A0348();
    v33 = v23;
    v34 = v24;
    v35 = v25;
    v31 = v21;
    v32 = v22;
    type metadata accessor for CGSize(0);
    v18 = 3;
    sub_26F467650(&qword_2806E1190, type metadata accessor for CGSize, MEMORY[0x277CBF2A0]);
    sub_26F4A0348();
    (*(v8 + 8))(v7, v9);
    v12 = *v36;
    *(a2 + 25) = *&v36[16];
    v13 = *&v36[48];
    *(a2 + 41) = *&v36[32];
    v14 = v37;
    *a2 = v17;
    *(a2 + 8) = v14;
    *(a2 + 57) = v13;
    *(a2 + 72) = *&v36[63];
    *(a2 + 9) = v12;
    *(a2 + 144) = v35;
    v15 = v34;
    *(a2 + 112) = v33;
    *(a2 + 128) = v15;
    v16 = v32;
    *(a2 + 80) = v31;
    *(a2 + 96) = v16;
    *(a2 + 152) = v19;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

BOOL _s13TranslationUI10PageBoundsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2.f64[0] = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 40);
  v6 = *(a1 + 24);
  v7 = *(a1 + 56);
  v8 = *(a1 + 72);
  v9 = *(a1 + 128);
  v27[2] = *(a1 + 112);
  v27[3] = v9;
  v28 = *(a1 + 144);
  v10 = *(a1 + 96);
  v27[0] = *(a1 + 80);
  v27[1] = v10;
  v12 = *(a1 + 152);
  v11 = *(a1 + 160);
  v13.f64[0] = *a2;
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);
  v16 = *(a2 + 40);
  v17 = *(a2 + 24);
  v18 = *(a2 + 56);
  v19 = *(a2 + 72);
  v20 = *(a2 + 128);
  v29[2] = *(a2 + 112);
  v29[3] = v20;
  v30 = *(a2 + 144);
  v21 = *(a2 + 96);
  v29[0] = *(a2 + 80);
  v29[1] = v21;
  v23 = *(a2 + 152);
  v22 = *(a2 + 160);
  result = 0;
  if ((v3 & 1) == 0)
  {
    if (v14)
    {
      return result;
    }

    v2.f64[1] = v4;
    v13.f64[1] = v15;
    if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(v2, v13), vceqq_f64(v6, v17)), vuzp1q_s32(vceqq_f64(v5, v16), vceqq_f64(v7, v18))))) & 1) == 0)
    {
      return result;
    }

    goto LABEL_14;
  }

  if (v4 != v15)
  {
    v14 = 0;
  }

  if (v14 == 1 && v6.f64[0] == v17.f64[0])
  {
    v25 = vmovn_s32(vuzp1q_s32(vceqq_f64(v6, v17), vceqq_f64(v5, v16)));
    if (v25.i8[2] & 1) != 0 && v5.f64[0] == v16.f64[0] && (v25.i8[6])
    {
      v26 = vmovn_s64(vceqq_f64(v7, v18));
      if (v26.i8[0] & 1) != 0 && (v26.i8[4])
      {
LABEL_14:
        if (v8 == v19)
        {
          if (MEMORY[0x27438F620](v27, v29))
          {
            return v11 == v22 && v12 == v23;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_26F466E14()
{
  result = qword_2806E1148;
  if (!qword_2806E1148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1148);
  }

  return result;
}

unint64_t sub_26F466E68()
{
  result = qword_2806E1150;
  if (!qword_2806E1150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1150);
  }

  return result;
}

unint64_t sub_26F466EBC()
{
  result = qword_2806E1158;
  if (!qword_2806E1158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1158);
  }

  return result;
}

unint64_t sub_26F466F10()
{
  result = qword_2806E1160;
  if (!qword_2806E1160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1160);
  }

  return result;
}

unint64_t sub_26F466F64()
{
  result = qword_2806E1178;
  if (!qword_2806E1178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1178);
  }

  return result;
}

unint64_t sub_26F466FB8()
{
  result = qword_2806E1180;
  if (!qword_2806E1180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1180);
  }

  return result;
}

unint64_t sub_26F46700C()
{
  result = qword_2806E1188;
  if (!qword_2806E1188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1188);
  }

  return result;
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_26F46709C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 168))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26F4670BC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
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

  *(result + 168) = v3;
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

uint64_t sub_26F467134(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26F467154(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
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

  *(result + 64) = v3;
  return result;
}

unint64_t sub_26F4671B4()
{
  result = qword_2806E1198;
  if (!qword_2806E1198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1198);
  }

  return result;
}

unint64_t sub_26F46720C()
{
  result = qword_2806E11A0;
  if (!qword_2806E11A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E11A0);
  }

  return result;
}

unint64_t sub_26F467264()
{
  result = qword_2806E11A8;
  if (!qword_2806E11A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E11A8);
  }

  return result;
}

unint64_t sub_26F4672B8(uint64_t a1, uint64_t a2)
{
  v2 = sub_26F4A02A8();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26F467304@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E11C8, &qword_26F4AA468);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F4675FC();
  sub_26F4A0588();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  type metadata accessor for CGPoint(0);
  v20 = 0;
  sub_26F467650(&qword_2806E11D0, type metadata accessor for CGPoint, MEMORY[0x277CBF2B8]);
  sub_26F4A0348();
  v9 = v18;
  v10 = v19;
  v20 = 1;
  sub_26F4A0348();
  v11 = v18;
  v12 = v19;
  v20 = 2;
  sub_26F4A0348();
  v13 = v18;
  v14 = v19;
  v20 = 3;
  sub_26F4A0348();
  (*(v6 + 8))(v8, v5);
  v15 = v18;
  v16 = v19;
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v9;
  a2[1] = v10;
  a2[2] = v11;
  a2[3] = v12;
  a2[4] = v13;
  a2[5] = v14;
  a2[6] = v15;
  a2[7] = v16;
  return result;
}

unint64_t sub_26F4675B0(uint64_t a1, uint64_t a2)
{
  v2 = sub_26F4A02A8();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_26F4675FC()
{
  result = qword_2806E11B8;
  if (!qword_2806E11B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E11B8);
  }

  return result;
}

uint64_t sub_26F467650(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26F467698(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E11D8, &qword_26F4AA470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_26F467700(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 168) = 1;
  return result;
}

unint64_t sub_26F467744()
{
  result = qword_2806E11E0;
  if (!qword_2806E11E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E11E0);
  }

  return result;
}

unint64_t sub_26F46779C()
{
  result = qword_2806E11E8;
  if (!qword_2806E11E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E11E8);
  }

  return result;
}

unint64_t sub_26F4677F4()
{
  result = qword_2806E11F0;
  if (!qword_2806E11F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E11F0);
  }

  return result;
}

uint64_t VisualTranslationErrorViewModel.__allocating_init()()
{
  v0 = swift_allocObject();
  VisualTranslationErrorViewModel.init()();
  return v0;
}

uint64_t VisualTranslationErrorViewModel.init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E11F8, &qword_26F4AA5C0);
  v31 = *(v0 - 8);
  v32 = v0;
  MEMORY[0x28223BE20](v0);
  v30 = &v27 - v1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1200, &qword_26F4AA5C8);
  MEMORY[0x28223BE20](v28);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1208, &qword_26F4AA5D0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  v11 = sub_26F49EA88();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v27 - v16);
  v18 = OBJC_IVAR____TtC13TranslationUI31VisualTranslationErrorViewModel__popoverAttachmentAnchor;
  sub_26F49F658();
  *v17 = v19;
  v17[1] = v20;
  (*(v12 + 104))(v17, *MEMORY[0x277CDE250], v11);
  (*(v12 + 16))(v14, v17, v11);
  sub_26F49DD68();
  (*(v12 + 8))(v17, v11);
  v21 = v29;
  (*(v8 + 32))(v29 + v18, v10, v7);
  v22 = OBJC_IVAR____TtC13TranslationUI31VisualTranslationErrorViewModel__errorModel;
  v23 = type metadata accessor for TranslationUnavailableModel(0);
  v24 = *(*(v23 - 8) + 56);
  v24(v6, 1, 1, v23);
  sub_26F467C74(v6, v3);
  v25 = v30;
  sub_26F49DD68();
  sub_26F3B6B4C(v6, &qword_2806E1200, &qword_26F4AA5C8);
  (*(v31 + 32))(v21 + v22, v25, v32);
  v24((v21 + OBJC_IVAR____TtC13TranslationUI31VisualTranslationErrorViewModel__lastErrorModel), 1, 1, v23);
  return v21;
}

uint64_t sub_26F467C74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1200, &qword_26F4AA5C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F467CE4(unint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1248, &unk_26F4AA780);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v40[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1200, &qword_26F4AA5C8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v40[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v40[-v11];
  MEMORY[0x28223BE20](v13);
  v15 = &v40[-v14];
  v16 = a1[1];
  if (v16)
  {
    v17 = *a1;
    if (qword_280F66CB0 != -1)
    {
      swift_once();
    }

    v18 = sub_26F49DCA8();
    __swift_project_value_buffer(v18, qword_280F67ED0);

    v19 = sub_26F49DC88();
    v20 = sub_26F49FDF8();

    v21 = (v17 >> 8);
    if (os_log_type_enabled(v19, v20))
    {
      v22 = swift_slowAlloc();
      v44 = v2;
      v23 = v22;
      v24 = swift_slowAlloc();
      v43 = v9;
      v41 = v20;
      v25 = v24;
      *v23 = 138412290;
      sub_26F45A980();
      v26 = swift_allocError();
      v42 = v6;
      v27 = v17 >> 8;
      v21 = v26;
      *v28 = v17;
      *(v28 + 8) = v16;

      v29 = v15;
      v30 = v17;
      v17 = sub_26F49D7E8();
      v31 = v21;
      LOBYTE(v21) = v27;
      v6 = v42;

      *(v23 + 4) = v17;
      *v25 = v17;
      LOBYTE(v17) = v30;
      v15 = v29;
      _os_log_impl(&dword_26F39E000, v19, v41, "Setting UI to show error: %@", v23, 0xCu);
      sub_26F3B6B4C(v25, &qword_2806DF258, &qword_26F4A6220);
      v9 = v43;
      MEMORY[0x274391F70](v25, -1, -1);
      v32 = v23;
      v2 = v44;
      MEMORY[0x274391F70](v32, -1, -1);
    }

    v45[0] = v17;
    v45[1] = v21;
    v46 = v16;

    sub_26F45AEC0(v45, v6);
    v33 = type metadata accessor for TranslationUnavailableState(0);
    if ((*(*(v33 - 8) + 48))(v6, 1, v33) == 1)
    {
      sub_26F3B6B4C(v6, &qword_2806E1248, &unk_26F4AA780);
      v34 = 1;
    }

    else
    {
      sub_26F45B69C(v15);
      sub_26F46A230(v6, type metadata accessor for TranslationUnavailableState);
      v34 = 0;
    }

    v37 = type metadata accessor for TranslationUnavailableModel(0);
    (*(*(v37 - 8) + 56))(v15, v34, 1, v37);
    sub_26F467C74(v15, v12);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26F467C74(v12, v9);

    sub_26F49DDB8();
    sub_26F3B6B4C(v12, &qword_2806E1200, &qword_26F4AA5C8);
    sub_26F46A1C0(v15, v12);
  }

  else
  {
    v35 = type metadata accessor for TranslationUnavailableModel(0);
    v36 = *(*(v35 - 8) + 56);
    v36(v12, 1, 1, v35);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26F467C74(v12, v9);

    sub_26F49DDB8();
    sub_26F3B6B4C(v12, &qword_2806E1200, &qword_26F4AA5C8);
    v36(v12, 1, 1, v35);
  }

  v38 = OBJC_IVAR____TtC13TranslationUI31VisualTranslationErrorViewModel__lastErrorModel;
  swift_beginAccess();
  sub_26F46915C(v12, v2 + v38);
  return swift_endAccess();
}

uint64_t sub_26F468204(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1200, &qword_26F4AA5C8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v15[-1] - v7;
  if (a1)
  {
    v9 = a1;
    sub_26F458904(a1, v16);
    v15[0] = v16[0];
    v15[1] = v16[1];
    sub_26F467CE4(v15);
  }

  else
  {
    v11 = type metadata accessor for TranslationUnavailableModel(0);
    v12 = *(*(v11 - 8) + 56);
    v12(v8, 1, 1, v11);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26F467C74(v8, v5);

    sub_26F49DDB8();
    sub_26F3B6B4C(v8, &qword_2806E1200, &qword_26F4AA5C8);
    v12(v8, 1, 1, v11);
    v13 = OBJC_IVAR____TtC13TranslationUI31VisualTranslationErrorViewModel__lastErrorModel;
    swift_beginAccess();
    sub_26F46915C(v8, v1 + v13);
    return swift_endAccess();
  }
}

uint64_t sub_26F4683D8(unsigned __int8 *a1)
{
  v2[0] = *a1 | (*a1 << 8);
  v2[1] = sub_26F3BDADC(MEMORY[0x277D84F90]);
  sub_26F467CE4(v2);
}

uint64_t sub_26F46843C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1200, &qword_26F4AA5C8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TranslationUnavailableModel(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 1, 1, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F467C74(v6, v3);

  sub_26F49DDB8();
  sub_26F3B6B4C(v6, &qword_2806E1200, &qword_26F4AA5C8);
  v8(v6, 1, 1, v7);
  v9 = OBJC_IVAR____TtC13TranslationUI31VisualTranslationErrorViewModel__lastErrorModel;
  swift_beginAccess();
  sub_26F46915C(v6, v0 + v9);
  return swift_endAccess();
}

uint64_t sub_26F4685E0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v9 = v8;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1200, &qword_26F4AA5C8);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v65[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v23 = &v65[-v22];
  MEMORY[0x28223BE20](v24);
  v26 = &v65[-v25];
  v27 = type metadata accessor for TranslationUnavailableModel(0);
  v72 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v29 = &v65[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = sub_26F49EA88();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v65[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v34);
  v36 = &v65[-v35];
  v74.origin.x = a5;
  v74.origin.y = a6;
  v74.size.width = a7;
  v74.size.height = a8;
  if (CGRectGetWidth(v74) <= 0.0 || (v75.origin.x = a5, v75.origin.y = a6, v75.size.width = a7, v75.size.height = a8, CGRectGetHeight(v75) <= 0.0))
  {
    if (qword_280F66CB0 != -1)
    {
      swift_once();
    }

    v58 = sub_26F49DCA8();
    __swift_project_value_buffer(v58, qword_280F67ED0);
    v59 = sub_26F49DC88();
    v60 = sub_26F49FDD8();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_26F39E000, v59, v60, "Presentation anchor content size contain a zero value, fallback to .bottomLeading", v61, 2u);
      MEMORY[0x274391F70](v61, -1, -1);
    }

    sub_26F49F658();
    *v36 = v62;
    *(v36 + 1) = v63;
    (*(v31 + 104))(v36, *MEMORY[0x277CDE250], v30);
    swift_getKeyPath();
    swift_getKeyPath();
    (*(v31 + 16))(v33, v36, v30);

    sub_26F49DDB8();
    return (*(v31 + 8))(v36, v30);
  }

  else
  {
    if (qword_280F66CB0 != -1)
    {
      swift_once();
    }

    v70 = v29;
    v71 = v27;
    v37 = sub_26F49DCA8();
    __swift_project_value_buffer(v37, qword_280F67ED0);
    v38 = sub_26F49DC88();
    v39 = sub_26F49FDB8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v69 = v23;
      v41 = v40;
      v67 = swift_slowAlloc();
      v73[0] = v67;
      *v41 = 136446466;
      v42 = sub_26F49FEE8();
      v68 = v20;
      v44 = sub_26F3B38D0(v42, v43, v73);
      v66 = v39;
      v45 = v44;

      *(v41 + 4) = v45;
      *(v41 + 12) = 2082;
      v46 = sub_26F49FEE8();
      v48 = sub_26F3B38D0(v46, v47, v73);

      *(v41 + 14) = v48;
      v20 = v68;
      _os_log_impl(&dword_26F39E000, v38, v66, "Presentation anchor %{public}s in %{public}s", v41, 0x16u);
      v49 = v67;
      swift_arrayDestroy();
      MEMORY[0x274391F70](v49, -1, -1);
      v50 = v41;
      v23 = v69;
      MEMORY[0x274391F70](v50, -1, -1);
    }

    v76.origin.x = a1;
    v76.origin.y = a2;
    v76.size.width = a3;
    v76.size.height = a4;
    MidX = CGRectGetMidX(v76);
    v77.origin.x = a5;
    v77.origin.y = a6;
    v77.size.width = a7;
    v77.size.height = a8;
    v52 = MidX / CGRectGetWidth(v77);
    v78.origin.x = a5;
    v78.origin.y = a6;
    v78.size.width = a7;
    v78.size.height = a8;
    Height = CGRectGetHeight(v78);
    *v36 = v52;
    v36[1] = a2 / Height;
    (*(v31 + 104))(v36, *MEMORY[0x277CDE250], v30);
    swift_getKeyPath();
    swift_getKeyPath();
    (*(v31 + 16))(v33, v36, v30);

    sub_26F49DDB8();
    (*(v31 + 8))(v36, v30);
    v54 = OBJC_IVAR____TtC13TranslationUI31VisualTranslationErrorViewModel__lastErrorModel;
    swift_beginAccess();
    sub_26F467C74(v9 + v54, v26);
    v55 = v71;
    v56 = v72;
    if ((*(v72 + 48))(v26, 1, v71) == 1)
    {
      return sub_26F3B6B4C(v26, &qword_2806E1200, &qword_26F4AA5C8);
    }

    else
    {
      v64 = v70;
      sub_26F4699C4(v26, v70);
      sub_26F469A28(v64, v23);
      (*(v56 + 56))(v23, 0, 1, v55);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_26F467C74(v23, v20);

      sub_26F49DDB8();
      sub_26F3B6B4C(v23, &qword_2806E1200, &qword_26F4AA5C8);
      return sub_26F46A230(v64, type metadata accessor for TranslationUnavailableModel);
    }
  }
}

uint64_t VisualTranslationErrorViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC13TranslationUI31VisualTranslationErrorViewModel__popoverAttachmentAnchor;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1208, &qword_26F4AA5D0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13TranslationUI31VisualTranslationErrorViewModel__errorModel;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E11F8, &qword_26F4AA5C0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_26F3B6B4C(v0 + OBJC_IVAR____TtC13TranslationUI31VisualTranslationErrorViewModel__lastErrorModel, &qword_2806E1200, &qword_26F4AA5C8);
  return v0;
}

uint64_t VisualTranslationErrorViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC13TranslationUI31VisualTranslationErrorViewModel__popoverAttachmentAnchor;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1208, &qword_26F4AA5D0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13TranslationUI31VisualTranslationErrorViewModel__errorModel;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E11F8, &qword_26F4AA5C0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_26F3B6B4C(v0 + OBJC_IVAR____TtC13TranslationUI31VisualTranslationErrorViewModel__lastErrorModel, &qword_2806E1200, &qword_26F4AA5C8);

  return swift_deallocClassInstance();
}

uint64_t sub_26F468F18@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for VisualTranslationErrorViewModel(0);
  result = sub_26F49DD48();
  *a2 = result;
  return result;
}

uint64_t View.errorHandler(viewModel:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for VisualTranslationErrorViewModel(0);
  sub_26F46A178(&qword_2806E1210, type metadata accessor for VisualTranslationErrorViewModel, &protocol conformance descriptor for VisualTranslationErrorViewModel);

  v7[0] = sub_26F49E288();
  v7[1] = v5;
  MEMORY[0x27438FF50](v7, a2, &type metadata for VisualTranslationErrorModifier, a3);
}

uint64_t sub_26F46903C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1200, &qword_26F4AA5C8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  sub_26F467C74(a1, &v10 - v7);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F467C74(v8, v5);

  sub_26F49DDB8();
  return sub_26F3B6B4C(v8, &qword_2806E1200, &qword_26F4AA5C8);
}

uint64_t sub_26F46915C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1200, &qword_26F4AA5C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F4691CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TranslationUnavailableModel(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranslationUIErrorView(0);
  MEMORY[0x28223BE20](v7);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE850, &qword_26F4A1DD8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v21 - v12;
  sub_26F469A28(a1, v6);
  sub_26F469A28(v6, v9);
  v14 = [objc_opt_self() currentDevice];
  v15 = [v14 userInterfaceIdiom];

  sub_26F46A230(v6, type metadata accessor for TranslationUnavailableModel);
  v9[*(v7 + 20)] = v15 == 0;
  v16 = sub_26F46A178(&qword_2806DE858, type metadata accessor for TranslationUIErrorView, &protocol conformance descriptor for TranslationUIErrorView);
  sub_26F49F088();
  sub_26F46A230(v9, type metadata accessor for TranslationUIErrorView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1228, &qword_26F4AA770);
  sub_26F49E7B8();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_26F4A3B80;
  sub_26F49E7A8();
  sub_26F49E798();
  sub_26F469E58(v17);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v21[0] = v7;
  v21[1] = v16;
  swift_getOpaqueTypeConformance2();
  sub_26F49F098();

  (*(v11 + 8))(v13, v10);
  v18 = sub_26F49E328();
  LOBYTE(v10) = sub_26F49EC48();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE830, &qword_26F4A1DD0);
  v20 = a2 + *(result + 36);
  *v20 = v18;
  *(v20 + 8) = v10;
  return result;
}

uint64_t sub_26F469574(uint64_t a1, __n128 a2)
{
  v10[0] = a1;
  v2 = sub_26F49EA88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1220, &unk_26F4AA760);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v10 - v7;
  type metadata accessor for VisualTranslationErrorViewModel(0);
  sub_26F46A178(&qword_2806E1210, type metadata accessor for VisualTranslationErrorViewModel, &protocol conformance descriptor for VisualTranslationErrorViewModel);
  sub_26F49E298();
  swift_getKeyPath();
  sub_26F49E2A8();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE828, &qword_26F4A1DC8);
  type metadata accessor for TranslationUnavailableModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE830, &qword_26F4A1DD0);
  sub_26F3B0F3C();
  sub_26F46A178(&qword_2806DE840, type metadata accessor for TranslationUnavailableModel, &unk_26F4A9E1C);
  sub_26F3B0FE8();
  sub_26F49EF68();
  (*(v3 + 8))(v5, v2);
  return sub_26F3B6B4C(v8, &qword_2806E1220, &unk_26F4AA760);
}

uint64_t sub_26F469854(uint64_t a1, uint64_t *a2, __n128 a3)
{
  v4 = sub_26F49EA88();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  v12 = *(v5 + 16);
  v12(&v14 - v10, a1, v4, v9);
  swift_getKeyPath();
  swift_getKeyPath();
  (v12)(v7, v11, v4);

  sub_26F49DDB8();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_26F4699C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslationUnavailableModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F469A28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslationUnavailableModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for VisualTranslationErrorViewModel(uint64_t a1)
{
  result = qword_280F66190;
  if (!qword_280F66190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26F469AE0(uint64_t a1)
{
  sub_26F469D74(319, &qword_280F65788, MEMORY[0x277CDE258], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    sub_26F469D10(319);
    if (v2 <= 0x3F)
    {
      sub_26F469D74(319, qword_280F65FD8, type metadata accessor for TranslationUnavailableModel, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_26F469D10(uint64_t a1)
{
  if (!qword_280F65790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E1200, &qword_26F4AA5C8);
    v1 = sub_26F49DDC8();
    if (!v2)
    {
      atomic_store(v1, &qword_280F65790);
    }
  }
}

void sub_26F469D74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_26F469DD8()
{
  result = qword_2806E1218;
  if (!qword_2806E1218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1218);
  }

  return result;
}

uint64_t sub_26F469E58(uint64_t a1)
{
  v2 = sub_26F49E7B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1230, &qword_26F4AA778);
    v9 = sub_26F4A0138();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_26F46A178(&qword_2806E1238, MEMORY[0x277CDDE90], MEMORY[0x277CDDE98]);
      v16 = sub_26F49F818();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_26F46A178(&qword_2806E1240, MEMORY[0x277CDDE90], MEMORY[0x277CDDEA0]);
          v23 = sub_26F49F868();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_26F46A178(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26F46A1C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1200, &qword_26F4AA5C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F46A230(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26F46A290()
{
  v1 = *v0;
  v2 = 0x7478655472636FLL;
  v3 = 0x74786554746C78;
  if (v1 != 5)
  {
    v3 = 0x69666E6F43746C78;
  }

  v4 = 0x6C61636F4C64696CLL;
  if (v1 != 3)
  {
    v4 = 0x6C61636F4C746C78;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x69666E6F4372636FLL;
  if (v1 != 1)
  {
    v5 = 0x786F4272636FLL;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_26F46A388@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26F46BE44(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26F46A3B0(uint64_t a1)
{
  v2 = sub_26F46AA38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F46A3EC(uint64_t a1)
{
  v2 = sub_26F46AA38();

  return MEMORY[0x2821FE720](a1, v2);
}

void TextDiagnosticsModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1268, &qword_26F4AA7A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F46AA38();
  sub_26F4A0598();
  LOBYTE(v28) = 0;
  sub_26F4A0398();
  if (!v2)
  {
    if (*(v3 + 16) > 0.0)
    {
      LOBYTE(v28) = 1;
      sub_26F4A03C8();
    }

    v10 = *(v3 + 24);
    v9 = *(v3 + 32);
    v12 = *(v3 + 40);
    v11 = *(v3 + 48);
    v32.origin.x = 0.0;
    v32.origin.y = 0.0;
    v32.size.width = 0.0;
    v32.size.height = 0.0;
    v31.origin.x = v10;
    v31.origin.y = v9;
    v31.size.width = v12;
    v31.size.height = v11;
    if (!CGRectEqualToRect(v31, v32))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1278, &qword_26F4AA7A8);
      inited = swift_initStackObject();
      *(inited + 32) = 120;
      *(inited + 16) = xmmword_26F4AA790;
      *(inited + 40) = 0xE100000000000000;
      *(inited + 48) = v10;
      *(inited + 56) = 121;
      *(inited + 64) = 0xE100000000000000;
      *(inited + 72) = v9;
      *(inited + 80) = 0x6874646977;
      *(inited + 88) = 0xE500000000000000;
      *(inited + 96) = v12;
      *(inited + 104) = 0x746867696568;
      *(inited + 112) = 0xE600000000000000;
      *(inited + 120) = v11;
      v14 = sub_26F3BE610(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1280, &qword_26F4AA7B0);
      swift_arrayDestroy();
      v28 = v14;
      LOBYTE(v26) = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1288, &unk_26F4AA7B8);
      sub_26F46BA8C();
      sub_26F4A03F8();
    }

    v15 = type metadata accessor for TextDiagnosticsModel(0);
    if (qword_2806DE7E8 != -1)
    {
      swift_once();
    }

    v16 = sub_26F49DAB8();
    __swift_project_value_buffer(v16, qword_2806E1250);
    sub_26F46BC14(qword_2806E07F0, MEMORY[0x277CC9788], MEMORY[0x277CC97A0]);
    if ((sub_26F49F868() & 1) == 0)
    {
      v28 = sub_26F49D988();
      v29 = v17;
      v26 = 45;
      v27 = 0xE100000000000000;
      v24 = 95;
      v25 = 0xE100000000000000;
      sub_26F3BDC0C();
      sub_26F49FFF8();

      LOBYTE(v28) = 3;
      sub_26F4A0398();
    }

    v18 = (v3 + *(v15 + 36));
    v19 = *v18;
    v20 = v18[1];
    v21 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v21 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      v23 = v19;
      v28 = sub_26F49D988();
      v29 = v22;
      v26 = 45;
      v27 = 0xE100000000000000;
      v24 = 95;
      v25 = 0xE100000000000000;
      sub_26F3BDC0C();
      sub_26F49FFF8();
      v30 = v15;

      LOBYTE(v28) = 4;
      sub_26F4A0398();

      LOBYTE(v28) = 6;
      sub_26F4A03C8();
      LOBYTE(v28) = 5;
      sub_26F4A0398();
    }
  }

  (*(v6 + 8))(v8, v5);
}

unint64_t sub_26F46AA38()
{
  result = qword_2806E1270;
  if (!qword_2806E1270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1270);
  }

  return result;
}

uint64_t TextDiagnosticsModel.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v3 - 8);
  v66 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v68 = &v64 - v6;
  v7 = sub_26F49DAB8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v64 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v71 = &v64 - v11;
  v12 = type metadata accessor for TextModel(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v64 - v17;
  v19 = type metadata accessor for VisualTranslationModel(0);
  v20 = *(a1 + *(v19 + 28));
  v21 = *(v20 + 16);
  v67 = a1;
  v70 = v13;
  v69 = v12;
  if (v21)
  {
    v22 = *(v12 + 40);
    v23 = v13;
    v24 = v20 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v25 = *(v23 + 72);
    v26 = 0.0;
    do
    {
      sub_26F446844(v24, v18);
      v27 = *&v18[v22];
      sub_26F463744(v18, type metadata accessor for TextModel);
      v26 = v26 + v27;
      v24 += v25;
      --v21;
    }

    while (v21);
    v28 = v26 / *(v20 + 16);
    a1 = v67;
    v13 = v70;
    v12 = v69;
  }

  else
  {
    v28 = NAN;
  }

  v29 = v65;
  *(v65 + 16) = v28;
  v30 = (a1 + *(v19 + 20));
  v31 = v30[9];
  v80 = v30[8];
  v81 = v31;
  v82 = *(v30 + 20);
  v32 = v30[5];
  v76 = v30[4];
  v77 = v32;
  v33 = v30[7];
  v78 = v30[6];
  v79 = v33;
  v34 = v30[1];
  v72 = *v30;
  v35 = v30[2];
  v75 = v30[3];
  v73 = v34;
  v74 = v35;
  *(v29 + 24) = sub_26F466434(0, 0, 1, 0);
  *(v29 + 32) = v36;
  *(v29 + 40) = v37;
  *(v29 + 48) = v38;
  *v29 = Array<A>.sourceParagraph.getter(v20);
  *(v29 + 8) = v39;
  if (*(v20 + 16))
  {
    v40 = v68;
    sub_26F3E718C(v20 + *(v12 + 28) + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v68);
    v41 = *(v8 + 48);
    if (v41(v40, 1, v7) != 1)
    {
      (*(v8 + 32))(v71, v40, v7);
      goto LABEL_14;
    }
  }

  else
  {
    (*(v8 + 56))(v68, 1, 1, v7);
  }

  if (qword_2806DE7E8 != -1)
  {
    swift_once();
  }

  v42 = __swift_project_value_buffer(v7, qword_2806E1250);
  (*(v8 + 16))(v71, v42, v7);
  v41 = *(v8 + 48);
  v43 = v68;
  if (v41(v68, 1, v7) != 1)
  {
    sub_26F3EDA38(v43);
  }

LABEL_14:
  v44 = type metadata accessor for TextDiagnosticsModel(0);
  v45 = *(v8 + 32);
  v45(v29 + v44[7], v71, v7);
  if (*(v20 + 16))
  {
    v46 = v66;
    (*(v8 + 16))(v66, v20 + *(v69 + 36) + ((*(v70 + 80) + 32) & ~*(v70 + 80)), v7);
    (*(v8 + 56))(v46, 0, 1, v7);
    v47 = v64;
    v45(v64, v46, v7);
  }

  else
  {
    (*(v8 + 56))(v66, 1, 1, v7);
    if (qword_2806DE7E8 != -1)
    {
      swift_once();
    }

    v48 = __swift_project_value_buffer(v7, qword_2806E1250);
    v49 = *(v8 + 16);
    v47 = v64;
    v49(v64, v48, v7);
    v50 = v66;
    if (v41(v66, 1, v7) != 1)
    {
      sub_26F3EDA38(v50);
    }
  }

  v45(v29 + v44[8], v47, v7);
  v51 = Array<A>.targetParagraph.getter(v20);
  v52 = (v29 + v44[9]);
  *v52 = v51;
  v52[1] = v53;
  v54 = *(v20 + 16);
  if (v54)
  {
    v55 = v67;
    v56 = *(v69 + 40);
    v57 = v20 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
    v58 = *(v70 + 72);
    v59 = 0.0;
    do
    {
      sub_26F446844(v57, v15);
      v60 = *&v15[v56];
      sub_26F463744(v15, type metadata accessor for TextModel);
      v59 = v59 + v60;
      v57 += v58;
      --v54;
    }

    while (v54);
    v61 = v59 / *(v20 + 16);
    v62 = v55;
  }

  else
  {
    v61 = NAN;
    v62 = v67;
  }

  result = sub_26F463744(v62, type metadata accessor for VisualTranslationModel);
  *(v29 + v44[10]) = v61;
  return result;
}

float TextDiagnosticsModel.init(textModel:)@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - v5;
  v7 = sub_26F49DAB8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TextModel(0);
  v12 = (a1 + v11[6]);
  v13 = v12[1];
  *a2 = *v12;
  *(a2 + 8) = v13;
  *(a2 + 16) = 0;
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  sub_26F3E718C(a1 + v11[7], v6);
  v14 = *(v8 + 48);
  if (v14(v6, 1, v7) == 1)
  {
    v26 = v10;
    v15 = qword_2806DE7E8;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v7, qword_2806E1250);
    v10 = v26;
    (*(v8 + 16))(v26, v16, v7);
    if (v14(v6, 1, v7) != 1)
    {
      sub_26F3EDA38(v6);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  v17 = type metadata accessor for TextDiagnosticsModel(0);
  (*(v8 + 32))(a2 + v17[7], v10, v7);
  (*(v8 + 16))(a2 + v17[8], a1 + v11[9], v7);
  v18 = (a1 + v11[8]);
  v19 = v18[1];
  if (v19)
  {
    v20 = *v18;
    v21 = v19;
  }

  else
  {
    v20 = 0;
    v21 = 0xE000000000000000;
  }

  v22 = (a2 + v17[9]);
  *v22 = v20;
  v22[1] = v21;
  v23 = *(a1 + v11[10]);

  sub_26F463744(a1, type metadata accessor for TextModel);
  result = v23;
  *(a2 + v17[10]) = result;
  return result;
}

void TextDiagnosticsModel.init(ocrModel:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 topCandidates_];
  sub_26F46BB64();
  v5 = sub_26F49FAF8();

  if (v5 >> 62)
  {
    if (sub_26F4A00A8())
    {
      goto LABEL_3;
    }

LABEL_8:

    v9 = 0;
    v11 = 0xE000000000000000;
    goto LABEL_9;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x274390F80](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v6 = *(v5 + 32);
  }

  v7 = v6;

  v8 = [v7 string];

  v9 = sub_26F49F8C8();
  v11 = v10;

LABEL_9:
  *a2 = v9;
  *(a2 + 8) = v11;
  [a1 confidence];
  *(a2 + 16) = v12;
  [a1 boundingBox];
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;
  *(a2 + 40) = v15;
  *(a2 + 48) = v16;
  if (qword_2806DE7E8 != -1)
  {
    swift_once();
  }

  v17 = sub_26F49DAB8();
  v18 = __swift_project_value_buffer(v17, qword_2806E1250);
  v19 = type metadata accessor for TextDiagnosticsModel(0);
  v20 = *(*(v17 - 8) + 16);
  v20(a2 + v19[7], v18, v17);
  v20(a2 + v19[8], v18, v17);

  v21 = (a2 + v19[9]);
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  *(a2 + v19[10]) = 0;
}

uint64_t sub_26F46B6B4()
{
  v0 = sub_26F49DAB8();
  __swift_allocate_value_buffer(v0, qword_2806E1250);
  __swift_project_value_buffer(v0, qword_2806E1250);
  return sub_26F49D978();
}

uint64_t TextDiagnosticsModel.string.getter()
{
  v1 = TextDiagnosticsModel.json.getter();
  MEMORY[0x2743907E0](10, 0xE100000000000000);
  return v1;
}

uint64_t TextDiagnosticsModel.json.getter()
{
  v0 = sub_26F49F918();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_26F49D6E8();
  MEMORY[0x28223BE20](v1);
  sub_26F49D728();
  swift_allocObject();
  sub_26F49D718();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E12A0, &qword_26F4AA7C8);
  *(swift_allocObject() + 16) = xmmword_26F4A3B80;
  sub_26F49D6C8();
  sub_26F49D6D8();
  sub_26F46BC14(&qword_2806E12A8, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E12B0, &qword_26F4AA7D0);
  sub_26F46BBB0();
  sub_26F4A0058();
  sub_26F49D6F8();
  type metadata accessor for TextDiagnosticsModel(0);
  sub_26F46BC14(&qword_2806E12C0, type metadata accessor for TextDiagnosticsModel, &protocol conformance descriptor for TextDiagnosticsModel);
  v2 = sub_26F49D708();
  v4 = v3;
  sub_26F49F908();
  v5 = sub_26F49F8E8();
  if (v6)
  {
    v7 = v5;
    sub_26F3C8F70(v2, v4);
  }

  else
  {
    sub_26F3C8F70(v2, v4);

    return 0;
  }

  return v7;
}

unint64_t sub_26F46BA8C()
{
  result = qword_2806E1290;
  if (!qword_2806E1290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E1288, &unk_26F4AA7B8);
    sub_26F466E68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1290);
  }

  return result;
}

uint64_t type metadata accessor for TextDiagnosticsModel(uint64_t a1)
{
  result = qword_2806E12C8;
  if (!qword_2806E12C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_26F46BB64()
{
  result = qword_2806E1298;
  if (!qword_2806E1298)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2806E1298);
  }

  return result;
}

unint64_t sub_26F46BBB0()
{
  result = qword_2806E12B8;
  if (!qword_2806E12B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E12B0, &qword_26F4AA7D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E12B8);
  }

  return result;
}

uint64_t sub_26F46BC14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_26F46BC84(uint64_t a1)
{
  type metadata accessor for CGRect(319);
  if (v1 <= 0x3F)
  {
    sub_26F49DAB8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_26F46BD40()
{
  result = qword_2806E12D8;
  if (!qword_2806E12D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E12D8);
  }

  return result;
}

unint64_t sub_26F46BD98()
{
  result = qword_2806E12E0;
  if (!qword_2806E12E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E12E0);
  }

  return result;
}

unint64_t sub_26F46BDF0()
{
  result = qword_2806E12E8;
  if (!qword_2806E12E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E12E8);
  }

  return result;
}

uint64_t sub_26F46BE44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7478655472636FLL && a2 == 0xE700000000000000;
  if (v4 || (sub_26F4A0458() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69666E6F4372636FLL && a2 == 0xED000065636E6564 || (sub_26F4A0458() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x786F4272636FLL && a2 == 0xE600000000000000 || (sub_26F4A0458() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C61636F4C64696CLL && a2 == 0xE900000000000065 || (sub_26F4A0458() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C61636F4C746C78 && a2 == 0xE900000000000065 || (sub_26F4A0458() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74786554746C78 && a2 == 0xE700000000000000 || (sub_26F4A0458() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x69666E6F43746C78 && a2 == 0xED000065636E6564)
  {

    return 6;
  }

  else
  {
    v6 = sub_26F4A0458();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

double sub_26F46C0A0(uint64_t a1, unsigned __int8 a2)
{
  sub_26F49F9A8();

  return result;
}

uint64_t sub_26F46C1F4(uint64_t a1, unsigned __int8 a2)
{
  sub_26F4A0528();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

uint64_t sub_26F46C35C(uint64_t a1, unsigned __int8 a2)
{
  sub_26F4A0528();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

uint64_t sub_26F46C4B4(uint64_t a1, unsigned __int8 a2)
{
  sub_26F4A0528();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

uint64_t sub_26F46C610(uint64_t a1, unsigned __int8 a2)
{
  sub_26F4A0528();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

void sub_26F46C73C(id a1, void (*a2)(id *, id *), uint64_t a3, unint64_t a4)
{
  v13 = a1;
  if (a4 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; a1 = v10)
  {
    for (j = 0; ; ++j)
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        a1 = MEMORY[0x274390F80](j, a4, a3);
      }

      else
      {
        if (j >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        a1 = *(a4 + 8 * j + 32);
      }

      v8 = a1;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v12 = a1;
      a2(&v13, &v12);

      if (v4)
      {

        return;
      }

      if (v9 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v10 = a1;
    i = sub_26F4A00A8();
  }
}

void sub_26F46C864(uint64_t a1, void (*a2)(uint64_t *, unint64_t), __n128 a3, __n128 a4, uint64_t a5, uint64_t a6)
{
  v9 = 0;
  v12 = a1;
  v10 = *(a6 + 16);
  while (v10 != v9)
  {
    v11 = *(sub_26F49F7D8() - 8);
    a2(&v12, a6 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9++);
    if (v6)
    {

      return;
    }
  }
}

uint64_t VisualTranslationModel.updating(paragraphs:useIndex:allowFuzzy:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v84 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v8 - 8);
  v86 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v87 = &v74 - v11;
  v93 = type metadata accessor for TextModel(0);
  v12 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v77 = &v74 - v16;
  MEMORY[0x28223BE20](v17);
  v78 = &v74 - v18;
  MEMORY[0x28223BE20](v19);
  v89 = &v74 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v74 - v22;
  v24 = type metadata accessor for VisualTranslationModel(0);
  v25 = *(v24 + 28);
  v75 = v4;
  v76 = a4;
  v26 = *(v4 + v25);
  v27 = *(a1 + 16);
  v74 = v24;
  if (a2)
  {
    if (v27)
    {
      v28 = *(v93 + 20);
      v29 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v30 = a1 + v29;
      v31 = *(v12 + 72);

      while (1)
      {
        sub_26F448DA4(v30, v23, type metadata accessor for TextModel);
        v32 = *&v23[v28];
        if ((v32 & 0x8000000000000000) != 0 || v32 >= v26[2])
        {
          sub_26F475CB0(v23, type metadata accessor for TextModel);
        }

        else
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_26F4469BC(v26);
            v26 = result;
          }

          if (v32 >= v26[2])
          {
            __break(1u);
            goto LABEL_42;
          }

          sub_26F446A6C(v23, v26 + v29 + v32 * v31);
        }

        v30 += v31;
        if (!--v27)
        {
          goto LABEL_40;
        }
      }
    }

LABEL_39:

LABEL_40:
    v53 = sub_26F49D968();
    v55 = v75;
    v54 = v76;
    (*(*(v53 - 8) + 16))(v76, v75, v53);
    v56 = v74;
    v57 = (v55 + v74[5]);
    v58 = v57[9];
    v102 = v57[8];
    v103 = v58;
    v104 = *(v57 + 20);
    v59 = v57[5];
    v98 = v57[4];
    v99 = v59;
    v60 = v57[7];
    v100 = v57[6];
    v101 = v60;
    v61 = v57[3];
    v96 = v57[2];
    v97 = v61;
    v62 = v57[1];
    v94 = *v57;
    v95 = v62;
    v63 = v74[6];
    v64 = sub_26F49D918();
    result = (*(*(v64 - 8) + 16))(v54 + v63, v55 + v63, v64);
    v65 = *(v55 + v56[8]);
    v66 = *(v55 + v56[9]);
    v67 = *(v55 + v56[10]);
    v68 = v54 + v56[5];
    v69 = v103;
    *(v68 + 128) = v102;
    *(v68 + 144) = v69;
    *(v68 + 160) = v104;
    v70 = v99;
    *(v68 + 64) = v98;
    *(v68 + 80) = v70;
    v71 = v101;
    *(v68 + 96) = v100;
    *(v68 + 112) = v71;
    v72 = v95;
    *v68 = v94;
    *(v68 + 16) = v72;
    v73 = v97;
    *(v68 + 32) = v96;
    *(v68 + 48) = v73;
    *(v54 + v56[7]) = v26;
    *(v54 + v56[8]) = v65;
    *(v54 + v56[9]) = v66;
    *(v54 + v56[10]) = v67;
    *(v54 + v56[11]) = 0;
    return result;
  }

  if (!v27)
  {
    goto LABEL_39;
  }

  v79 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v80 = a1 + v79;
  v88 = *(v12 + 72);

  v34 = 0;
  v35 = v93;
  v85 = v14;
  v36 = v89;
  v81 = v27;
  while (2)
  {
    sub_26F448DA4(v80 + v88 * v34, v36, type metadata accessor for TextModel);
    v38 = v26[2];
    if (!v38)
    {
LABEL_15:
      v37 = v81;
      goto LABEL_16;
    }

    v82 = v34;
    v83 = v26;
    v39 = v26 + v79;
    v40 = v87;
    while (1)
    {
      v90 = v38;
      sub_26F448DA4(v39, v14, type metadata accessor for TextModel);
      v41 = *(v35 + 28);
      sub_26F3E718C(&v14[v41], v40);
      v42 = sub_26F49DAB8();
      v43 = *(v42 - 8);
      v91 = *(v43 + 48);
      v92 = v91(v40, 1, v42);
      if (v92 == 1)
      {
        sub_26F3B6B4C(v40, &qword_2806DEFD8, &qword_26F4A3670);
        v45 = 0;
        v46 = v86;
        v47 = v89;
        goto LABEL_29;
      }

      sub_26F49D988();
      (*(v43 + 8))(v40, v42);
      sub_26F4A0578();
      sub_26F49F9A8();

      sub_26F49D988();
      sub_26F49F9A8();

      if (v84)
      {
        sub_26F4475B4(*&v14[*(v93 + 24)], *&v14[*(v93 + 24) + 8], &v14[v41]);
        if (!v44)
        {
          sub_26F4A0548();
          v46 = v86;
          v47 = v89;
          goto LABEL_28;
        }
      }

      else
      {
      }

      v46 = v86;
      v47 = v89;
      sub_26F4A0548();
      sub_26F49F9A8();

LABEL_28:
      v112 = v96;
      v113 = v97;
      v114 = v98;
      v110 = v94;
      v111 = v95;
      v45 = sub_26F4A0558();
      v40 = v87;
      v35 = v93;
LABEL_29:
      sub_26F3E718C(v47 + *(v35 + 28), v46);
      if (v91(v46, 1, v42) != 1)
      {
        break;
      }

      sub_26F3B6B4C(v46, &qword_2806DEFD8, &qword_26F4A3670);
      v14 = v85;
      if (v92 == 1)
      {
        goto LABEL_34;
      }

LABEL_20:
      sub_26F475CB0(v14, type metadata accessor for TextModel);
      v39 += v88;
      v38 = v90 - 1;
      if (v90 == 1)
      {
        v34 = v82;
        v26 = v83;
        goto LABEL_15;
      }
    }

    sub_26F49D988();
    (*(v43 + 8))(v46, v42);
    sub_26F4A0578();
    sub_26F49F9A8();

    sub_26F49D988();
    sub_26F49F9A8();

    sub_26F4A0548();
    v40 = v87;
    sub_26F49F9A8();
    v107 = v96;
    v108 = v97;
    v109 = v98;
    v105 = v94;
    v106 = v95;
    v48 = sub_26F4A0558();
    v35 = v93;
    v14 = v85;
    if (v92 == 1 || v45 != v48)
    {
      goto LABEL_20;
    }

LABEL_34:
    v49 = v77;
    sub_26F476988(v14, v77, type metadata accessor for TextModel);
    v50 = v49;
    v51 = v78;
    sub_26F476988(v50, v78, type metadata accessor for TextModel);
    v52 = *(v51 + *(v35 + 20));
    v26 = v83;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_26F4469BC(v26);
    }

    v37 = v81;
    result = sub_26F475CB0(v78, type metadata accessor for TextModel);
    v34 = v82;
    if ((v52 & 0x8000000000000000) != 0)
    {
LABEL_42:
      __break(1u);
    }

    else if (v52 < v26[2])
    {
      sub_26F446A08(v89, v26 + v79 + v52 * v88);
      v35 = v93;
LABEL_16:
      v36 = v89;
      sub_26F475CB0(v89, type metadata accessor for TextModel);
      if (++v34 == v37)
      {
        goto LABEL_40;
      }

      continue;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_26F46D23C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v23 - v2;
  v4 = type metadata accessor for TextModel(0);
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for VisualTranslationModel(0);
  v9 = *(v0 + *(result + 28));
  v10 = *(v9 + 16);
  if (!v10)
  {
    return 1;
  }

  v11 = 0;
  while (v11 < *(v9 + 16))
  {
    sub_26F448DA4(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v7, type metadata accessor for TextModel);
    if (*&v7[v4[11]] || ((v12 = &v7[v4[6]], v14 = *v12, v13 = *(v12 + 1), v15 = v14 & 0xFFFFFFFFFFFFLL, (v13 & 0x2000000000000000) != 0) ? (v16 = HIBYTE(v13) & 0xF) : (v16 = v15), !v16 || (sub_26F3E718C(&v7[v4[7]], v3), v17 = sub_26F49DAB8(), v18 = (*(*(v17 - 8) + 48))(v3, 1, v17), sub_26F3B6B4C(v3, &qword_2806DEFD8, &qword_26F4A3670), v18 == 1) || (v19 = &v7[v4[8]], (v20 = *(v19 + 1)) == 0) || ((v21 = *v19 & 0xFFFFFFFFFFFFLL, (v20 & 0x2000000000000000) != 0) ? (v22 = HIBYTE(v20) & 0xF) : (v22 = v21), !v22)))
    {
      sub_26F475CB0(v7, type metadata accessor for TextModel);
      return 0;
    }

    ++v11;
    result = sub_26F475CB0(v7, type metadata accessor for TextModel);
    if (v10 == v11)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t VisualTranslationModel.update(paragraph:useIndex:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0118, &qword_26F4ABEF0);
  v6 = *(type metadata accessor for TextModel(0) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_26F4A3150;
  sub_26F448DA4(a1, v8 + v7, type metadata accessor for TextModel);
  VisualTranslationModel.updating(paragraphs:useIndex:allowFuzzy:)(v8, a2, 0, a3);
  swift_setDeallocating();
  sub_26F475CB0(v8 + v7, type metadata accessor for TextModel);

  return swift_deallocClassInstance();
}

uint64_t sub_26F46D5F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000016;
  }

  else
  {
    v3 = 0x76726573624F6F6ELL;
  }

  if (v2)
  {
    v4 = 0xEE00736E6F697461;
  }

  else
  {
    v4 = 0x800000026F4AC640;
  }

  if (*a2)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0x76726573624F6F6ELL;
  }

  if (*a2)
  {
    v6 = 0x800000026F4AC640;
  }

  else
  {
    v6 = 0xEE00736E6F697461;
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

uint64_t sub_26F46D6AC()
{
  sub_26F4A0528();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

double sub_26F46D740(uint64_t a1)
{
  sub_26F49F9A8();

  return result;
}

uint64_t sub_26F46D7C0(uint64_t a1)
{
  sub_26F4A0528();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

void sub_26F46D850(char *a2@<X8>)
{
  v3 = sub_26F4A02A8();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_26F46D8B0(unint64_t *a1@<X8>)
{
  v2 = 0x800000026F4AC640;
  v3 = 0x76726573624F6F6ELL;
  if (*v1)
  {
    v3 = 0xD000000000000016;
  }

  else
  {
    v2 = 0xEE00736E6F697461;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_26F46D900()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x76726573624F6F6ELL;
  }
}

uint64_t VisualTranslationResult.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_uuid;
  v4 = sub_26F49D968();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VisualTranslationResult.string.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_string);

  return v1;
}

uint64_t sub_26F46DC20()
{
  v1 = sub_26F49DAB8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v37 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0550, &unk_26F4A75B0);
  MEMORY[0x28223BE20](v4);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  v16 = *(v0 + *(type metadata accessor for VisualTranslationModel(0) + 28));
  v17 = *(v16 + 16);
  v38 = v16;
  if (v17)
  {
    v18 = type metadata accessor for TextModel(0);
    v19 = v18 - 8;
    v20 = v16 + ((*(*(v18 - 8) + 80) + 32) & ~*(*(v18 - 8) + 80));
    sub_26F3E718C(v20 + *(v18 + 28), v15);
    (*(v2 + 16))(v12, v20 + *(v19 + 44), v1);
    (*(v2 + 56))(v12, 0, 1, v1);
  }

  else
  {
    v21 = *(v2 + 56);
    v21(v15, 1, 1, v1);
    v21(v12, 1, 1, v1);
  }

  v22 = *(v4 + 48);
  sub_26F3E718C(v15, v6);
  sub_26F3E718C(v12, &v6[v22]);
  v23 = *(v2 + 48);
  if (v23(v6, 1, v1) == 1)
  {
    sub_26F3B6B4C(v12, &qword_2806DEFD8, &qword_26F4A3670);
    sub_26F3B6B4C(v15, &qword_2806DEFD8, &qword_26F4A3670);
    if (v23(&v6[v22], 1, v1) == 1)
    {
      sub_26F3B6B4C(v6, &qword_2806DEFD8, &qword_26F4A3670);
LABEL_15:
      v31 = 1;
      return v31 & 1;
    }

    goto LABEL_9;
  }

  sub_26F3E718C(v6, v9);
  if (v23(&v6[v22], 1, v1) == 1)
  {
    sub_26F3B6B4C(v12, &qword_2806DEFD8, &qword_26F4A3670);
    sub_26F3B6B4C(v15, &qword_2806DEFD8, &qword_26F4A3670);
    (*(v2 + 8))(v9, v1);
LABEL_9:
    sub_26F3B6B4C(v6, &qword_2806E0550, &unk_26F4A75B0);
    v24 = v38;
    goto LABEL_10;
  }

  v32 = &v6[v22];
  v33 = v37;
  (*(v2 + 32))(v37, v32, v1);
  sub_26F4749EC(qword_2806E07F0, MEMORY[0x277CC9788], MEMORY[0x277CC97A0]);
  v34 = sub_26F49F868();
  v35 = *(v2 + 8);
  v35(v33, v1);
  sub_26F3B6B4C(v12, &qword_2806DEFD8, &qword_26F4A3670);
  sub_26F3B6B4C(v15, &qword_2806DEFD8, &qword_26F4A3670);
  v35(v9, v1);
  sub_26F3B6B4C(v6, &qword_2806DEFD8, &qword_26F4A3670);
  v24 = v38;
  if (v34)
  {
    goto LABEL_15;
  }

LABEL_10:
  Array<A>.sourceParagraph.getter(v24);
  v25 = sub_26F49F948();
  v27 = v26;

  Array<A>.targetParagraph.getter(v24);
  v28 = sub_26F49F948();
  v30 = v29;

  if (v25 == v28 && v27 == v30)
  {

    goto LABEL_15;
  }

  v31 = sub_26F4A0458();

  return v31 & 1;
}

id VisualTranslationResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_26F46E214()
{
  v1 = *v0;
  v2 = 1684632949;
  v3 = 0x654C6D6F74746F62;
  if (v1 != 5)
  {
    v3 = 0x69526D6F74746F62;
  }

  v4 = 0x7466654C706F74;
  if (v1 != 3)
  {
    v4 = 0x7468676952706F74;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x676E69727473;
  if (v1 != 1)
  {
    v5 = 0x6874737361507369;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_26F46E2FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26F474B84(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26F46E324(uint64_t a1)
{
  v2 = sub_26F474998();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F46E360(uint64_t a1)
{
  v2 = sub_26F474998();

  return MEMORY[0x2821FE720](a1, v2);
}

id VisualTranslationResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t VisualTranslationResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E12F0, &qword_26F4AA940);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F474998();
  sub_26F4A0598();
  LOBYTE(v12) = 0;
  sub_26F49D968();
  sub_26F4749EC(&qword_2806DEE68, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_26F4A03F8();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_26F4A0398();
    LOBYTE(v12) = 2;
    sub_26F4A03A8();
    v12 = *(v3 + OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_topLeft);
    v11 = 3;
    type metadata accessor for CGPoint(0);
    sub_26F4749EC(&qword_2806E11C0, type metadata accessor for CGPoint, MEMORY[0x277CBF2A8]);
    sub_26F4A03F8();
    v12 = *(v3 + OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_topRight);
    v11 = 4;
    sub_26F4A03F8();
    v12 = *(v3 + OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_bottomLeft);
    v11 = 5;
    sub_26F4A03F8();
    v12 = *(v3 + OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_bottomRight);
    v11 = 6;
    sub_26F4A03F8();
  }

  return (*(v6 + 8))(v8, v5);
}

void *VisualTranslationResult.init(from:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_26F49D968();
  v21 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1300, &qword_26F4AA948);
  v6 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v8 = v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F474998();
  v23 = v8;
  sub_26F4A0588();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v18 = v24;
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v6;
    v20 = a1;
    v10 = v21;
    LOBYTE(v27) = 0;
    sub_26F4749EC(&qword_2806DEE78, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    v11 = v22;
    sub_26F4A0348();
    v13 = *(v10 + 32);
    v14 = v24;
    v13(v24 + OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_uuid, v5, v3);
    LOBYTE(v27) = 1;
    v15 = sub_26F4A02F8();
    v16 = &v14[OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_string];
    *v16 = v15;
    v16[1] = v17;
    LOBYTE(v27) = 2;
    v14[OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_isPassthrough] = sub_26F4A0308() & 1;
    type metadata accessor for CGPoint(0);
    v28 = 3;
    v19[1] = sub_26F4749EC(&qword_2806E11D0, type metadata accessor for CGPoint, MEMORY[0x277CBF2B8]);
    sub_26F4A0348();
    *&v14[OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_topLeft] = v27;
    v28 = 4;
    sub_26F4A0348();
    *&v14[OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_topRight] = v27;
    v28 = 5;
    sub_26F4A0348();
    *&v14[OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_bottomLeft] = v27;
    v28 = 6;
    sub_26F4A0348();
    *&v14[OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_bottomRight] = v27;
    v26.receiver = v14;
    v26.super_class = ObjectType;
    v18 = objc_msgSendSuper2(&v26, sel_init);
    (*(v9 + 8))(v23, v11);
    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  return v18;
}

void *sub_26F46ED18@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = VisualTranslationResult.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_26F46EDAC(uint64_t a1)
{
  v2 = sub_26F474B30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F46EDE8(uint64_t a1)
{
  v2 = sub_26F474B30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26F46EE24()
{
  v1 = 0x676E696461656CLL;
  if (*v0 != 1)
  {
    v1 = 0x676E696C69617274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265746E6563;
  }
}

uint64_t sub_26F46EE7C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26F474DDC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26F46EEB0(uint64_t a1)
{
  v2 = sub_26F474A34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F46EEEC(uint64_t a1)
{
  v2 = sub_26F474A34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26F46EF28(uint64_t a1)
{
  v2 = sub_26F474ADC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F46EF64(uint64_t a1)
{
  v2 = sub_26F474ADC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26F46EFA0(uint64_t a1)
{
  v2 = sub_26F474A88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F46EFDC(uint64_t a1)
{
  v2 = sub_26F474A88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VisualTranslationTextAlignment.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1308, &qword_26F4AA950);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1310, &qword_26F4AA958);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1318, &qword_26F4AA960);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1320, &qword_26F4AA968);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F474A34();
  sub_26F4A0598();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_26F474ADC();
      v9 = v21;
      sub_26F4A0368();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_26F474A88();
      v9 = v24;
      sub_26F4A0368();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_26F474B30();
    sub_26F4A0368();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t VisualTranslationTextAlignment.hashValue.getter()
{
  v1 = *v0;
  sub_26F4A0528();
  MEMORY[0x274391330](v1);
  return sub_26F4A0568();
}

uint64_t VisualTranslationTextAlignment.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1348, &qword_26F4AA970);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  v41 = &v32 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1350, &qword_26F4AA978);
  v35 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1358, &qword_26F4AA980);
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1360, &qword_26F4AA988);
  v42 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F474A34();
  v13 = v43;
  sub_26F4A0588();
  if (v13)
  {
    goto LABEL_10;
  }

  v33 = v7;
  v34 = 0;
  v14 = v40;
  v15 = v41;
  v43 = a1;
  v16 = v12;
  v17 = sub_26F4A0358();
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = *(v17 + 32);
    if (v18 == 1 && v19 != 3)
    {
      if (*(v17 + 32))
      {
        v40 = v17;
        v26 = v42;
        if (v19 == 1)
        {
          v45 = 1;
          sub_26F474ADC();
          v27 = v34;
          sub_26F4A02B8();
          v28 = v39;
          if (v27)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v35 + 8))(v6, v38);
          (*(v26 + 8))(v16, v10);
        }

        else
        {
          v46 = 2;
          sub_26F474A88();
          v31 = v34;
          sub_26F4A02B8();
          v28 = v39;
          if (v31)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v36 + 8))(v15, v37);
          (*(v26 + 8))(v16, v10);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v44 = 0;
        sub_26F474B30();
        v29 = v34;
        sub_26F4A02B8();
        v30 = v42;
        if (v29)
        {
          (*(v42 + 8))(v12, v10);
          goto LABEL_9;
        }

        (*(v14 + 8))(v9, v33);
        (*(v30 + 8))(v12, v10);
        swift_unknownObjectRelease();
        v28 = v39;
      }

      *v28 = v19;
      v24 = v43;
      return __swift_destroy_boxed_opaque_existential_0(v24);
    }
  }

  v21 = sub_26F4A01A8();
  swift_allocError();
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1368, &unk_26F4AA990);
  *v23 = &type metadata for VisualTranslationTextAlignment;
  sub_26F4A02C8();
  sub_26F4A0198();
  (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D84160], v21);
  swift_willThrow();
  (*(v42 + 8))(v12, v10);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v43;
LABEL_10:
  v24 = a1;
  return __swift_destroy_boxed_opaque_existential_0(v24);
}

uint64_t VisualTranslationModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26F49D968();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

__n128 VisualTranslationModel.bounds.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for VisualTranslationModel(0) + 20);
  v4 = *(v3 + 144);
  *(a1 + 128) = *(v3 + 128);
  *(a1 + 144) = v4;
  *(a1 + 160) = *(v3 + 160);
  v5 = *(v3 + 80);
  *(a1 + 64) = *(v3 + 64);
  *(a1 + 80) = v5;
  v6 = *(v3 + 112);
  *(a1 + 96) = *(v3 + 96);
  *(a1 + 112) = v6;
  v7 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v7;
  result = *(v3 + 48);
  *(a1 + 32) = *(v3 + 32);
  *(a1 + 48) = result;
  return result;
}

uint64_t VisualTranslationModel.boundsTimestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VisualTranslationModel(0) + 24);
  v4 = sub_26F49D918();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double VisualTranslationModel.paragraphs.getter()
{
  type metadata accessor for VisualTranslationModel(0);

  return result;
}

uint64_t VisualTranslationModel.textAlignment.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VisualTranslationModel(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

unint64_t sub_26F46FC28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26F474EF0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26F46FC58(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xED0000746E656D6ELL;
  v6 = 0x67696C4174786574;
  if (v2 != 6)
  {
    v6 = 0xD00000000000001BLL;
    v5 = 0x800000026F4AC6C0;
  }

  v7 = 0xED000073656E694CLL;
  v8 = 0x664F7265626D756ELL;
  if (v2 != 4)
  {
    v8 = 0xD000000000000015;
    v7 = 0x800000026F4AC690;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEF706D617473656DLL;
  v10 = 0x695473646E756F62;
  if (v2 != 2)
  {
    v10 = 0x7061726761726170;
    v9 = 0xEA00000000007368;
  }

  if (*v1)
  {
    v4 = 0x73646E756F62;
    v3 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_26F46FD7C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x67696C4174786574;
  if (v1 != 6)
  {
    v3 = 0xD00000000000001BLL;
  }

  v4 = 0x664F7265626D756ELL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000015;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x695473646E756F62;
  if (v1 != 2)
  {
    v5 = 0x7061726761726170;
  }

  if (*v0)
  {
    v2 = 0x73646E756F62;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_26F46FE9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26F474EF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26F46FED0(uint64_t a1)
{
  v2 = sub_26F475D10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F46FF0C(uint64_t a1)
{
  v2 = sub_26F475D10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VisualTranslationModel.init(id:bounds:boundsTimestamp:paragraphs:numberOfLines:displayAsVerticalText:textAlignment:significantTranscriptChange:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char *a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v17 = *a7;
  v18 = sub_26F49D968();
  (*(*(v18 - 8) + 32))(a9, a1, v18);
  v19 = type metadata accessor for VisualTranslationModel(0);
  v20 = a9 + v19[5];
  v21 = *(a2 + 144);
  *(v20 + 128) = *(a2 + 128);
  *(v20 + 144) = v21;
  *(v20 + 160) = *(a2 + 160);
  v22 = *(a2 + 80);
  *(v20 + 64) = *(a2 + 64);
  *(v20 + 80) = v22;
  v23 = *(a2 + 112);
  *(v20 + 96) = *(a2 + 96);
  *(v20 + 112) = v23;
  v24 = *(a2 + 16);
  *v20 = *a2;
  *(v20 + 16) = v24;
  v25 = *(a2 + 48);
  *(v20 + 32) = *(a2 + 32);
  *(v20 + 48) = v25;
  v26 = v19[6];
  v27 = sub_26F49D918();
  result = (*(*(v27 - 8) + 32))(a9 + v26, a3, v27);
  *(a9 + v19[7]) = a4;
  *(a9 + v19[8]) = a5;
  *(a9 + v19[9]) = a6;
  *(a9 + v19[10]) = v17;
  *(a9 + v19[11]) = a8;
  return result;
}

__n128 VisualTranslationModel.init(id:string:bounds:boundsTimestamp:numberOfLines:displayAsVerticalText:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v61 = a7;
  v60 = a6;
  v59 = a5;
  v56 = a3;
  v55 = a2;
  v52 = a1;
  v54 = a8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v52 - v11;
  v13 = type metadata accessor for TextModel(0);
  v14 = (v13 - 8);
  v57 = *(v13 - 8);
  v58 = v57;
  MEMORY[0x28223BE20](v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a4[9];
  v70 = a4[8];
  v71 = v17;
  v72 = *(a4 + 20);
  v18 = a4[5];
  v66 = a4[4];
  v67 = v18;
  v19 = a4[7];
  v68 = a4[6];
  v69 = v19;
  v20 = a4[1];
  v62 = *a4;
  v63 = v20;
  v21 = a4[3];
  v64 = a4[2];
  v65 = v21;
  v22 = sub_26F49D968();
  v53 = *(v22 - 8);
  v23 = *(v53 + 16);
  v24 = a1;
  v25 = v22;
  v23(v16, v24);
  v26 = sub_26F49DAB8();
  v27 = *(*(v26 - 8) + 56);
  v27(v12, 1, 1, v26);
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v28 = v14[9];
  v27(&v16[v28], 1, 1, v26);
  v29 = &v16[v14[10]];
  v30 = v14[13];
  v31 = v14[14];
  *&v16[v14[7]] = 0;
  v32 = &v16[v14[8]];
  v33 = v56;
  *v32 = v55;
  v32[1] = v33;
  sub_26F3D27D4(v12, &v16[v28]);
  *v29 = 0;
  *(v29 + 1) = 0;
  *&v16[v14[12]] = 0;
  *&v16[v30] = 0;
  *&v16[v31] = 1;
  v34 = v54;
  v35 = v52;
  v36 = v25;
  (v23)(v54, v52, v25);
  v37 = type metadata accessor for VisualTranslationModel(0);
  v38 = v37[6];
  v39 = sub_26F49D918();
  v40 = *(v39 - 8);
  v41 = v34 + v38;
  v42 = v34;
  v43 = v59;
  (*(v40 + 16))(v41, v59, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0118, &qword_26F4ABEF0);
  v44 = (*(v58 + 80) + 32) & ~*(v58 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_26F4A3150;
  sub_26F448DA4(v16, v45 + v44, type metadata accessor for TextModel);
  (*(v40 + 8))(v43, v39);
  (*(v53 + 8))(v35, v36);
  sub_26F475CB0(v16, type metadata accessor for TextModel);
  v46 = v42 + v37[5];
  v47 = v71;
  *(v46 + 128) = v70;
  *(v46 + 144) = v47;
  *(v46 + 160) = v72;
  v48 = v67;
  *(v46 + 64) = v66;
  *(v46 + 80) = v48;
  v49 = v69;
  *(v46 + 96) = v68;
  *(v46 + 112) = v49;
  v50 = v63;
  *v46 = v62;
  *(v46 + 16) = v50;
  result = v65;
  *(v46 + 32) = v64;
  *(v46 + 48) = result;
  *(v42 + v37[7]) = v45;
  *(v42 + v37[8]) = v60;
  *(v42 + v37[9]) = v61;
  *(v42 + v37[10]) = 3;
  *(v42 + v37[11]) = 0;
  return result;
}