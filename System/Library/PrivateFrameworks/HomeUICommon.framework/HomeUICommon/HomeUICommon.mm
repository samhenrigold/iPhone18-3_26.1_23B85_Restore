uint64_t sub_254574F68@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_254574FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25459A1B0();
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

uint64_t sub_254575078(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25459A1B0();
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

uint64_t sub_254575140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604DA0, &unk_25459C910);
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

uint64_t sub_254575208(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604DA0, &unk_25459C910);
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

uint64_t sub_2545752D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604EA8, &qword_25459CA48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_254575338()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F604EA8, &qword_25459CA48);
  sub_25457AF98();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25457539C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25459A370();
  *a1 = result;
  return result;
}

uint64_t sub_2545753F0()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_254575448()
{
  MEMORY[0x259C11450](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_254575480()
{
  v1 = sub_25459A1B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_254575578()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_254575754@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25459A390();
  *a1 = result & 1;
  return result;
}

uint64_t sub_254575784()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2545757BC()
{

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_2545757F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 24);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6050A8, &qword_25459CD20);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 20);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6050F8, &unk_25459CE70);
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 24);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t sub_254575934(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 24) = a2 + 1;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6050A8, &qword_25459CD20);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6050F8, &unk_25459CE70);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_254575A6C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F6050A0, &qword_25459CD18);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F605098, &qword_25459CD10);
  sub_25459A2D0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F605090, &qword_25459CD08);
  v0 = sub_254587400();
  sub_2545874B8(v0, v1, v2);
  swift_getOpaqueTypeConformance2();
  sub_254588B04(&qword_27F6050D8, MEMORY[0x277CDD6C8], MEMORY[0x277CDD6D0]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

void sub_254575BC4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_254583FC8(v1);
}

uint64_t sub_254575BF8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v6 = v1;
  v7 = v2;
  return sub_254583A84(v5);
}

void sub_254575C70(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_254584758(v1);
}

uint64_t sub_254576004()
{
  v1 = type metadata accessor for MicaIconView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605320, &qword_25459D430);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_25459A2E0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v5 + *(v1 + 20);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605348, &qword_25459D450);
  (*(*(v9 - 8) + 8))(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605350, &qword_25459D458);

  v10 = v5 + *(v1 + 24);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v2 | 7);
}

uint64_t sub_2545761BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605380, &unk_25459D4D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605350, &qword_25459D458);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_2545762E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605380, &unk_25459D4D0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605350, &qword_25459D458);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_254576408()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F605340, &qword_25459D448);
  v3 = sub_254591258();
  sub_2545913D4(v3, v0, v1);
  return swift_getOpaqueTypeConformance2();
}

void sub_2545764DC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_25458F9E4(v1);
}

void sub_254576510(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_25458F2E0(v1);
}

void sub_254576570(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_254590044(v1);
}

uint64_t sub_2545765A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_25458ED00(v1, v2);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2545766B4(uint64_t a1, int a2)
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

uint64_t sub_2545766D4(uint64_t result, int a2, int a3)
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

void sub_254576724(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_254576770(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t sub_2545767D0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_25457681C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

void *ScheduleRuleList.__allocating_init(rules:)(uint64_t a1)
{
  result = swift_allocObject();
  result[4] = a1;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = result;
    type metadata accessor for ScheduleRuleDisplayInfo(0);
    v3 = sub_254576A68();
    result = v4;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  result[2] = v3;
  result[3] = v5;
  return result;
}

void *ScheduleRuleList.init(rules:)(uint64_t a1)
{
  v1[4] = a1;
  if (*(a1 + 16))
  {
    type metadata accessor for ScheduleRuleDisplayInfo(0);
    v2 = sub_254576A68();
  }

  else
  {
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  v1[2] = v2;
  v1[3] = v3;
  return v1;
}

uint64_t type metadata accessor for ScheduleRuleDisplayInfo(uint64_t a1)
{
  result = qword_27F604D68;
  if (!qword_27F604D68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254576A68()
{
  v0 = sub_25459A730();
  v1 = HFLocalizedString();

  v2 = sub_25459A740();
  return v2;
}

uint64_t ScheduleRuleList.deinit()
{

  return v0;
}

uint64_t ScheduleRuleList.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_254576B7C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ScheduleRuleList();
  result = sub_25459A2A0();
  *a2 = result;
  return result;
}

uint64_t ScheduleRuleDisplayInfo.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25459A1B0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ScheduleRuleDisplayInfo.id.setter(uint64_t a1)
{
  v3 = sub_25459A1B0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ScheduleRuleDisplayInfo.type.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ScheduleRuleDisplayInfo(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t ScheduleRuleDisplayInfo.primaryText.getter()
{
  v1 = *(v0 + *(type metadata accessor for ScheduleRuleDisplayInfo(0) + 24));

  return v1;
}

uint64_t ScheduleRuleDisplayInfo.secondaryText.getter()
{
  v1 = *(v0 + *(type metadata accessor for ScheduleRuleDisplayInfo(0) + 28));

  return v1;
}

int *ScheduleRuleDisplayInfo.init(id:type:primaryText:secondaryText:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a2;
  v14 = sub_25459A1B0();
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  result = type metadata accessor for ScheduleRuleDisplayInfo(0);
  *(a7 + result[5]) = v13;
  v16 = (a7 + result[6]);
  *v16 = a3;
  v16[1] = a4;
  v17 = (a7 + result[7]);
  *v17 = a5;
  v17[1] = a6;
  return result;
}

uint64_t ScheduleRuleDisplayInfo.ScheduleType.hashValue.getter()
{
  v1 = *v0;
  sub_25459ABB0();
  MEMORY[0x259C109D0](v1);
  return sub_25459ABE0();
}

uint64_t sub_254576EB0()
{
  v1 = *v0;
  sub_25459ABB0();
  MEMORY[0x259C109D0](v1);
  return sub_25459ABE0();
}

uint64_t sub_254576F24(uint64_t a1)
{
  v2 = *v1;
  sub_25459ABB0();
  MEMORY[0x259C109D0](v2);
  return sub_25459ABE0();
}

uint64_t ScheduleRuleDisplayInfo.hash(into:)(uint64_t a1)
{
  sub_25459A1B0();
  sub_2545775B0(&qword_27F604D50, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25459A710();
  v2 = type metadata accessor for ScheduleRuleDisplayInfo(0);
  MEMORY[0x259C109D0](*(v1 + *(v2 + 20)));
  sub_25459A760();
  if (!*(v1 + *(v2 + 28) + 8))
  {
    return sub_25459ABD0();
  }

  sub_25459ABD0();

  return sub_25459A760();
}

uint64_t ScheduleRuleDisplayInfo.hashValue.getter()
{
  sub_25459ABB0();
  sub_25459A1B0();
  sub_2545775B0(&qword_27F604D50, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25459A710();
  v1 = type metadata accessor for ScheduleRuleDisplayInfo(0);
  MEMORY[0x259C109D0](*(v0 + *(v1 + 20)));
  sub_25459A760();
  if (*(v0 + *(v1 + 28) + 8))
  {
    sub_25459ABD0();
    sub_25459A760();
  }

  else
  {
    sub_25459ABD0();
  }

  return sub_25459ABE0();
}

uint64_t sub_254577174@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25459A1B0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2545771E0(uint64_t a1, int *a2)
{
  sub_25459A1B0();
  sub_2545775B0(&qword_27F604D50, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25459A710();
  MEMORY[0x259C109D0](*(v2 + a2[5]));
  sub_25459A760();
  if (!*(v2 + a2[7] + 8))
  {
    return sub_25459ABD0();
  }

  sub_25459ABD0();

  return sub_25459A760();
}

uint64_t sub_2545772E8(uint64_t a1, int *a2)
{
  sub_25459ABB0();
  sub_25459A1B0();
  sub_2545775B0(&qword_27F604D50, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25459A710();
  MEMORY[0x259C109D0](*(v2 + a2[5]));
  sub_25459A760();
  if (*(v2 + a2[7] + 8))
  {
    sub_25459ABD0();
    sub_25459A760();
  }

  else
  {
    sub_25459ABD0();
  }

  return sub_25459ABE0();
}

uint64_t _s12HomeUICommon23ScheduleRuleDisplayInfoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_25459A180())
  {
    v4 = type metadata accessor for ScheduleRuleDisplayInfo(0);
    if (*(a1 + v4[5]) == *(a2 + v4[5]))
    {
      v5 = v4[6];
      v7 = *(a1 + v5);
      v6 = *(a1 + v5 + 8);
      v8 = (a2 + v5);
      v9 = v7 == *v8 && v6 == v8[1];
      if (v9 || (v10 = v4, v11 = sub_25459AB70(), v4 = v10, (v11 & 1) != 0))
      {
        v12 = v4[7];
        v13 = (a1 + v12);
        v14 = *(a1 + v12 + 8);
        v15 = (a2 + v12);
        v16 = v15[1];
        if (v14)
        {
          if (v16)
          {
            v17 = *v13 == *v15 && v14 == v16;
            if (v17 || (sub_25459AB70() & 1) != 0)
            {
              return 1;
            }
          }
        }

        else if (!v16)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

unint64_t sub_2545774CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F604D58;
  if (!qword_27F604D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F604D58);
  }

  return result;
}

uint64_t sub_2545775B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2545776DC(uint64_t a1)
{
  sub_25459A1B0();
  if (v1 <= 0x3F)
  {
    sub_254577778();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_254577778()
{
  if (!qword_27F604D78)
  {
    v0 = sub_25459A9A0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F604D78);
    }
  }
}

uint64_t getEnumTagSinglePayload for ScheduleRuleDisplayInfo.ScheduleType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ScheduleRuleDisplayInfo.ScheduleType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t SwiftUICanary.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_25459A3E0();
  result = sub_25459A5B0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_2545779F0@<X0>(uint64_t a1@<X8>)
{
  sub_25459A3E0();
  result = sub_25459A5B0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for SwiftUICanary(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SwiftUICanary(_WORD *result, int a2, int a3)
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

HomeUICommon::IconViewStyling_optional __swiftcall IconViewStyling.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_254577B84@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t IconViewWrapper.init(iconDescriptor:iconSize:styling:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  return result;
}

uint64_t IconViewWrapper.iconDescriptor.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *v1 = a1;
  return result;
}

id IconViewWrapper.makeUIView(context:)()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(HUIconView) initWithFrame_];
  [v2 updateWithIconDescriptor:v1 displayStyle:1 animated:0];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 whiteColor];
  [v4 setTintColor_];

  return v4;
}

id IconViewWrapper.updateUIView(_:context:)(id a1)
{
  v3 = *v1;
  v4 = v1[1];
  if (!*v1)
  {
    [a1 setVibrancyEffect_];
    v17 = 1;
    goto LABEL_15;
  }

  v5 = *(v1 + 16);
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    swift_unknownObjectRetain();
    v8 = [v7 state];
    v9 = sub_25459A740();
    v11 = v10;
    if (v9 == sub_25459A740() && v11 == v12)
    {

      if (v5)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v14 = sub_25459AB70();

      if (v14 & v5)
      {
LABEL_8:
        v15 = [objc_opt_self() whiteColor];
        v16 = [objc_opt_self() colorEffectMonochromeTint:v15 blendingAmount:1.0 brightnessAdjustment:0.45];

        [a1 setVibrancyEffect_];
        swift_unknownObjectRelease();

        v17 = 2;
        goto LABEL_13;
      }
    }

    swift_unknownObjectRelease();
  }

  [a1 setVibrancyEffect_];
  v17 = 1;
LABEL_13:
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    [v18 isSystemImage];
  }

LABEL_15:
  [a1 setContentMode_];
  [a1 setIconSize_];

  return [a1 updateWithIconDescriptor:v3 displayStyle:v17 animated:0];
}

double IconViewWrapper.sizeThatFits(_:uiView:context:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (*(v4 + 16) == 1 && *v4 != 0)
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8 && (a2 & 1) == 0 && (a4 & 1) == 0)
    {
      CGSizeMake();
    }
  }

  return result;
}

id sub_254578028()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(HUIconView) initWithFrame_];
  [v2 updateWithIconDescriptor:v1 displayStyle:1 animated:0];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 whiteColor];
  [v4 setTintColor_];

  return v4;
}

double sub_2545780F4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (*(v4 + 16) == 1 && *v4 != 0)
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8 && (a2 & 1) == 0 && (a4 & 1) == 0)
    {
      CGSizeMake();
    }
  }

  return result;
}

uint64_t sub_2545781B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_254578594(a1, a2, a3);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_25457821C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_254578594(a1, a2, a3);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_254578280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_254578594(a1, a2, a3);
  sub_25459A490();
  __break(1u);
}

unint64_t sub_2545782AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F604D80;
  if (!qword_27F604D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F604D80);
  }

  return result;
}

unint64_t sub_254578304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F604D88;
  if (!qword_27F604D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F604D88);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IconViewStyling(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for IconViewStyling(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2545784D4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
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

uint64_t sub_254578530(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_254578594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F604D90;
  if (!qword_27F604D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F604D90);
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

uint64_t type metadata accessor for ScheduleRuleAccessListCell(uint64_t a1)
{
  result = qword_27F604DA8;
  if (!qword_27F604DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2545786A4(uint64_t a1)
{
  sub_254578730(319);
  if (v1 <= 0x3F)
  {
    sub_254578788();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_254578730(uint64_t a1)
{
  if (!qword_27F604DB8)
  {
    type metadata accessor for ScheduleRuleDisplayInfo(255);
    v1 = sub_25459A9A0();
    if (!v2)
    {
      atomic_store(v1, &qword_27F604DB8);
    }
  }
}

unint64_t sub_254578788()
{
  result = qword_27F604DC0;
  if (!qword_27F604DC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F604DC0);
  }

  return result;
}

uint64_t sub_2545787F0()
{
  v0 = sub_25459A290();
  __swift_allocate_value_buffer(v0, qword_27F606328);
  __swift_project_value_buffer(v0, qword_27F606328);
  return sub_25459A250();
}

uint64_t sub_25457883C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604DC8, &qword_25459C990);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22 - v4;
  *v5 = sub_25459A3D0();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604DD0, &qword_25459C998);
  sub_254578A50(v1, &v5[*(v6 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604DD8, &qword_25459C9A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25459C900;
  v8 = sub_25459A530();
  *(inited + 32) = v8;
  v9 = sub_25459A540();
  *(inited + 33) = v9;
  v10 = sub_25459A560();
  sub_25459A560();
  if (sub_25459A560() != v8)
  {
    v10 = sub_25459A560();
  }

  sub_25459A560();
  if (sub_25459A560() != v9)
  {
    v10 = sub_25459A560();
  }

  if (qword_27F604B90 != -1)
  {
    swift_once();
  }

  v11 = sub_25459A290();
  __swift_project_value_buffer(v11, qword_27F606328);
  sub_25459A270();
  sub_25459A2B0();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_254579DA0(v5, a1, &qword_27F604DC8, &qword_25459C990);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604DE0, &qword_25459C9A8);
  v21 = a1 + *(result + 36);
  *v21 = v10;
  *(v21 + 8) = v13;
  *(v21 + 16) = v15;
  *(v21 + 24) = v17;
  *(v21 + 32) = v19;
  *(v21 + 40) = 0;
  return result;
}

uint64_t sub_254578A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604DE8, &qword_25459C9B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v38 - v4;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604DF0, &qword_25459C9B8);
  v6 = MEMORY[0x28223BE20](v39);
  v38 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v38 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604DF8, &qword_25459C9C0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - v17;
  sub_25459A8A0();
  v40 = sub_25459A890();
  sub_25459A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = sub_25459A660();
  v20 = *(a1 + *(type metadata accessor for ScheduleRuleAccessListCell(0) + 20));
  v42 = v19;
  v43 = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604E00, &qword_25459C9C8);
  sub_254579A30();
  sub_25459A600();

  *v5 = sub_25459A3C0();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604E20, &qword_25459C9D8);
  sub_254578EE0(a1, &v5[*(v21 + 44)]);
  v22 = sub_25459A550();
  v23 = sub_25459A560();
  sub_25459A560();
  if (sub_25459A560() != v22)
  {
    v23 = sub_25459A560();
  }

  if (qword_27F604B90 != -1)
  {
    swift_once();
  }

  v24 = sub_25459A290();
  __swift_project_value_buffer(v24, qword_27F606328);
  sub_25459A260();
  sub_25459A2B0();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_254579DA0(v5, v10, &qword_27F604DE8, &qword_25459C9B0);
  v33 = &v10[*(v39 + 36)];
  *v33 = v23;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  sub_254579DA0(v10, v12, &qword_27F604DF0, &qword_25459C9B8);
  sub_254579BF8(v18, v16, &qword_27F604DF8, &qword_25459C9C0);
  v34 = v38;
  sub_254579BF8(v12, v38, &qword_27F604DF0, &qword_25459C9B8);
  v35 = v41;
  sub_254579BF8(v16, v41, &qword_27F604DF8, &qword_25459C9C0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604E28, &qword_25459C9E0);
  sub_254579BF8(v34, v35 + *(v36 + 48), &qword_27F604DF0, &qword_25459C9B8);
  sub_254579D40(v12, &qword_27F604DF0, &qword_25459C9B8);
  sub_254579D40(v18, &qword_27F604DF8, &qword_25459C9C0);
  sub_254579D40(v34, &qword_27F604DF0, &qword_25459C9B8);
  sub_254579D40(v16, &qword_27F604DF8, &qword_25459C9C0);
}

uint64_t sub_254578EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604E30, &qword_25459C9E8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  sub_25459A8A0();
  sub_25459A890();
  sub_25459A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v9 = sub_25459A3F0();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604E38, &qword_25459C9F0);
  sub_2545790A0(a1, &v9[*(v10 + 44)]);
  sub_254579BF8(v9, v7, &qword_27F604E30, &qword_25459C9E8);
  sub_254579BF8(v7, a2, &qword_27F604E30, &qword_25459C9E8);
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604E40, &qword_25459C9F8) + 48);
  *v11 = 0;
  *(v11 + 8) = 1;
  sub_254579D40(v9, &qword_27F604E30, &qword_25459C9E8);
  sub_254579D40(v7, &qword_27F604E30, &qword_25459C9E8);
}

uint64_t sub_2545790A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604E48, &qword_25459CA00);
  v4 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v79 = &v70 - v5;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604E50, &qword_25459CA08);
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v74 = &v70 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604E58, &unk_25459CA10);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v78 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v70 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604E60, &qword_25459CAA0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v77 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v82 = &v70 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604DA0, &unk_25459C910);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v70 - v17;
  v19 = type metadata accessor for ScheduleRuleDisplayInfo(0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v80 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604E68, &qword_25459CA20);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v70 - v23;
  sub_25459A8A0();
  v81 = sub_25459A890();
  sub_25459A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_254579BF8(a1, v18, &qword_27F604DA0, &unk_25459C910);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_254579D40(v18, &qword_27F604DA0, &unk_25459C910);
    v25 = 1;
  }

  else
  {
    v73 = a2;
    v72 = v4;
    v26 = v80;
    v27 = sub_254579B30(v18, v80);
    v28 = (v26 + *(v19 + 24));
    v29 = v28[1];
    *&v90 = *v28;
    *(&v90 + 1) = v29;
    sub_254579B94(v27, v30, v31);

    v32 = sub_25459A5C0();
    v34 = v33;
    *&v90 = v32;
    *(&v90 + 1) = v33;
    v36 = v35 & 1;
    LOBYTE(v91) = v35 & 1;
    *(&v91 + 1) = v37;
    sub_25459A600();
    sub_254579BE8(v32, v34, v36);

    v38 = (v26 + *(v19 + 28));
    v39 = v38[1];
    v71 = v24;
    if (v39)
    {
      v70 = v11;
      *&v90 = *v38;
      *(&v90 + 1) = v39;

      v40 = sub_25459A5C0();
      v42 = v41;
      v44 = v43;
      sub_25459A570();
      v45 = sub_25459A5A0();
      v47 = v46;
      v49 = v48;

      sub_254579BE8(v40, v42, v44 & 1);

      LODWORD(v90) = sub_25459A510();
      v50 = sub_25459A590();
      v52 = v51;
      v54 = v53;
      v56 = v55;
      sub_254579BE8(v45, v47, v49 & 1);

      v57 = sub_25459A530();
      if (qword_27F604B90 != -1)
      {
        swift_once();
      }

      v58 = sub_25459A290();
      __swift_project_value_buffer(v58, qword_27F606328);
      sub_25459A280();
      sub_25459A2B0();
      v89 = v54 & 1;
      v88 = 0;
      *&v84 = v50;
      *(&v84 + 1) = v52;
      LOBYTE(v85) = v54 & 1;
      *(&v85 + 1) = v56;
      LOBYTE(v86) = v57;
      *(&v86 + 1) = v59;
      *v87 = v60;
      *&v87[8] = v61;
      *&v87[16] = v62;
      v87[24] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604E80, &unk_25459CA30);
      sub_254579CBC();
      v63 = v74;
      sub_25459A600();
      v92 = v86;
      *v93 = *v87;
      *&v93[9] = *&v87[9];
      v90 = v84;
      v91 = v85;
      sub_254579D40(&v90, &qword_27F604E80, &unk_25459CA30);
      v11 = v70;
      sub_254579DA0(v63, v70, &qword_27F604E50, &qword_25459CA08);
      (*(v75 + 56))(v11, 0, 1, v76);
    }

    else
    {
      (*(v75 + 56))(v11, 1, 1, v76);
    }

    v4 = v72;
    v64 = v82;
    v65 = v77;
    sub_254579BF8(v82, v77, &qword_27F604E60, &qword_25459CAA0);
    v66 = v78;
    sub_254579BF8(v11, v78, &qword_27F604E58, &unk_25459CA10);
    v67 = v79;
    sub_254579BF8(v65, v79, &qword_27F604E60, &qword_25459CAA0);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604E78, &qword_25459CA28);
    sub_254579BF8(v66, v67 + *(v68 + 48), &qword_27F604E58, &unk_25459CA10);
    sub_254579D40(v11, &qword_27F604E58, &unk_25459CA10);
    sub_254579D40(v64, &qword_27F604E60, &qword_25459CAA0);
    sub_254579C60(v80);
    sub_254579D40(v66, &qword_27F604E58, &unk_25459CA10);
    sub_254579D40(v65, &qword_27F604E60, &qword_25459CAA0);
    v24 = v71;
    sub_254579DA0(v67, v71, &qword_27F604E48, &qword_25459CA00);
    v25 = 0;
    a2 = v73;
  }

  (*(v4 + 56))(v24, v25, 1, v83);
  sub_254579DA0(v24, a2, &qword_27F604E68, &qword_25459CA20);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_254579A30()
{
  result = qword_27F604E08;
  if (!qword_27F604E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F604E00, &qword_25459C9C8);
    sub_254579EC0(&qword_27F604E10, &qword_27F604E18, &qword_25459C9D0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F604E08);
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

uint64_t sub_254579B30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduleRuleDisplayInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_254579B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F604E70;
  if (!qword_27F604E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F604E70);
  }

  return result;
}

uint64_t sub_254579BE8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_254579BF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_254579C60(uint64_t a1)
{
  v2 = type metadata accessor for ScheduleRuleDisplayInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_254579CBC()
{
  result = qword_27F604E88;
  if (!qword_27F604E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F604E80, &unk_25459CA30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F604E88);
  }

  return result;
}

uint64_t sub_254579D40(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_254579DA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_254579E08()
{
  result = qword_27F604E90;
  if (!qword_27F604E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F604DE0, &qword_25459C9A8);
    sub_254579EC0(&qword_27F604E98, &qword_27F604DC8, &qword_25459C990, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F604E90);
  }

  return result;
}

uint64_t sub_254579EC0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t ScheduleAccessList.body.getter@<X0>(uint64_t a1@<X8>)
{
  v20[1] = a1;
  v2 = sub_25459A500();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604EA0, &qword_25459CA40);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604EA8, &qword_25459CA48);
  MEMORY[0x28223BE20](v10);
  v12 = v20 - v11;
  v13 = v1[1];
  v21 = *v1;
  v22 = v13;
  v14 = v1[3];
  v23 = v1[2];
  v24 = v14;
  v20[4] = &v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604EB0, &qword_25459CA50);
  sub_25457A868();
  sub_25459A580();
  sub_25459A4F0();
  sub_254579EC0(&qword_27F604F98, &qword_27F604EA0, &qword_25459CA40, MEMORY[0x277CDE5A0]);
  sub_25459A640();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  v15 = *(&v22 + 1);
  v16 = sub_25459A6B0();
  v17 = &v12[*(v10 + 36)];
  *v17 = v15;
  *(v17 + 1) = v16;
  *(v17 + 2) = v18;
  sub_25457AF98();

  sub_25459A610();
  return sub_2545752D0(v12);
}

uint64_t sub_25457A1D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604F28, &qword_25459CA88);
  MEMORY[0x28223BE20](v30);
  v29 = &v27 - v3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604F18, &qword_25459CA80);
  v31 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v5 = &v27 - v4;
  v6 = type metadata accessor for ScheduleRuleDisplayInfo(0);
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604FB8, "\bK");
  MEMORY[0x28223BE20](v33);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604EE8, &qword_25459CA68);
  v27 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604ED8, &qword_25459CA60);
  MEMORY[0x28223BE20](v32);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604EB0, &qword_25459CA50);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v27 - v17;
  sub_25459A8A0();
  v34 = sub_25459A890();
  sub_25459A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = *(*(a1 + 8) + 32);
  if (*(v19 + 16))
  {
    v20 = sub_25457BDA0(v19 + ((*(v28 + 80) + 32) & ~*(v28 + 80)), v8);
    MEMORY[0x28223BE20](v20);
    *(&v27 - 2) = v19;
    *(&v27 - 1) = a1;
    sub_25457B6AC(a1, v8, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604F68, &qword_25459CAA8);
    sub_25457ABDC();
    sub_25457AE2C();
    sub_25459A690();
    v21 = v31;
    v22 = v35;
    (*(v31 + 16))(v10, v5, v35);
    swift_storeEnumTagMultiPayload();
    sub_25457A978();
    sub_25457AB44();
    sub_25459A4D0();
    (*(v21 + 8))(v5, v22);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604EC8, &qword_25459CA58);
    (*(*(v23 - 8) + 56))(v18, 0, 1, v23);
    sub_254579C60(v8);
  }

  else
  {
    if (*(a1 + 40))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604EF8, &qword_25459CA70);
      sub_25457AA8C();
      sub_25459A6A0();
      v24 = v27;
      (*(v27 + 32))(v15, v13, v11);
      (*(v24 + 56))(v15, 0, 1, v11);
    }

    else
    {
      (*(v27 + 56))(v15, 1, 1, v11);
    }

    sub_254579BF8(v15, v10, &qword_27F604ED8, &qword_25459CA60);
    swift_storeEnumTagMultiPayload();
    sub_25457A978();
    sub_25457AB44();
    sub_25459A4D0();
    sub_254579D40(v15, &qword_27F604ED8, &qword_25459CA60);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604EC8, &qword_25459CA58);
    (*(*(v25 - 8) + 56))(v18, 0, 1, v25);
  }

  sub_254579DA0(v18, v36, &qword_27F604EB0, &qword_25459CA50);
}

unint64_t sub_25457A868()
{
  result = qword_27F604EB8;
  if (!qword_27F604EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F604EB0, &qword_25459CA50);
    sub_25457A8EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F604EB8);
  }

  return result;
}

unint64_t sub_25457A8EC()
{
  result = qword_27F604EC0;
  if (!qword_27F604EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F604EC8, &qword_25459CA58);
    sub_25457A978();
    sub_25457AB44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F604EC0);
  }

  return result;
}

unint64_t sub_25457A978()
{
  result = qword_27F604ED0;
  if (!qword_27F604ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F604ED8, &qword_25459CA60);
    sub_25457A9FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F604ED0);
  }

  return result;
}

unint64_t sub_25457A9FC()
{
  result = qword_27F604EE0;
  if (!qword_27F604EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F604EE8, &qword_25459CA68);
    sub_25457AA8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F604EE0);
  }

  return result;
}

unint64_t sub_25457AA8C()
{
  result = qword_27F604EF0;
  if (!qword_27F604EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F604EF8, &qword_25459CA70);
    sub_254579EC0(&qword_27F604F00, &qword_27F604F08, &qword_25459CA78, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F604EF0);
  }

  return result;
}

unint64_t sub_25457AB44()
{
  result = qword_27F604F10;
  if (!qword_27F604F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F604F18, &qword_25459CA80);
    sub_25457ABDC();
    sub_25457AE2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F604F10);
  }

  return result;
}

unint64_t sub_25457ABDC()
{
  result = qword_27F604F20;
  if (!qword_27F604F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F604F28, &qword_25459CA88);
    sub_25457AC68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F604F20);
  }

  return result;
}

unint64_t sub_25457AC68()
{
  result = qword_27F604F30;
  if (!qword_27F604F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F604F38, &qword_25459CA90);
    sub_25457ACEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F604F30);
  }

  return result;
}

unint64_t sub_25457ACEC()
{
  result = qword_27F604F40;
  if (!qword_27F604F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F604F48, &qword_25459CA98);
    sub_25457AD70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F604F40);
  }

  return result;
}

unint64_t sub_25457AD70()
{
  result = qword_27F604F50;
  if (!qword_27F604F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F604E60, &qword_25459CAA0);
    sub_25457BE4C(&qword_27F604F58, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F604F50);
  }

  return result;
}

unint64_t sub_25457AE2C()
{
  result = qword_27F604F60;
  if (!qword_27F604F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F604F68, &qword_25459CAA8);
    sub_25457AEB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F604F60);
  }

  return result;
}

unint64_t sub_25457AEB0()
{
  result = qword_27F604F70;
  if (!qword_27F604F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F604F78, &qword_25459CAB0);
    sub_25457BE4C(&qword_27F604F80, type metadata accessor for ScheduleRuleAccessListCell, &unk_25459C93C);
    sub_254579EC0(&qword_27F604F88, &qword_27F604F90, &qword_25459CAB8, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F604F70);
  }

  return result;
}

unint64_t sub_25457AF98()
{
  result = qword_27F604FA0;
  if (!qword_27F604FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F604EA8, &qword_25459CA48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F604EA0, &qword_25459CA40);
    sub_25459A500();
    sub_254579EC0(&qword_27F604F98, &qword_27F604EA0, &qword_25459CA40, MEMORY[0x277CDE5A0]);
    swift_getOpaqueTypeConformance2();
    sub_254579EC0(&qword_27F604FA8, &qword_27F604FB0, &qword_25459CAC0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F604FA0);
  }

  return result;
}

uint64_t sub_25457B0FC@<X0>(uint64_t a1@<X8>)
{
  sub_25459A8A0();
  sub_25459A890();
  sub_25459A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_25459A730();
  v3 = HFLocalizedString();

  sub_25459A740();
  sub_254579B94(v4, v5, v6);
  v7 = sub_25459A5C0();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  KeyPath = swift_getKeyPath();

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  return result;
}

uint64_t sub_25457B238(uint64_t a1, _OWORD *a2)
{
  sub_25459A8A0();
  sub_25459A890();
  sub_25459A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = a1;
  v4 = swift_allocObject();
  v5 = a2[1];
  v4[1] = *a2;
  v4[2] = v5;
  v6 = a2[3];
  v4[3] = a2[2];
  v4[4] = v6;

  sub_25457BE14(a2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604FD0, &qword_25459CBC0);
  sub_25459A1B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604F78, &qword_25459CAB0);
  sub_254579EC0(&qword_27F604FD8, &qword_27F604FD0, &qword_25459CBC0, MEMORY[0x277D83980]);
  sub_25457AEB0();
  sub_25457BE4C(&qword_27F604FE0, type metadata accessor for ScheduleRuleDisplayInfo, &protocol conformance descriptor for ScheduleRuleDisplayInfo);
  sub_25459A680();
}

uint64_t sub_25457B408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ScheduleRuleAccessListCell(0);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604F78, &qword_25459CAB0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  sub_25459A8A0();
  sub_25459A890();
  sub_25459A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25457BDA0(a1, v8);
  v12 = type metadata accessor for ScheduleRuleDisplayInfo(0);
  (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
  *&v8[*(v6 + 20)] = *(a2 + 16);
  v13 = *(v6 + 24);
  v14 = objc_allocWithZone(MEMORY[0x277CCA968]);

  v15 = [v14 init];
  [v15 setDateStyle_];
  [v15 setTimeStyle_];
  [v15 setFormattingContext_];
  *&v8[v13] = v15;
  if (*(a2 + 32))
  {
    v16 = *(a2 + 32);
  }

  else
  {
    v17 = [objc_opt_self() tertiarySystemFillColor];
    v16 = sub_25459A650();
  }

  v20[1] = v16;

  v18 = sub_25459A670();
  sub_25457BE94(v8, v11);
  *&v11[*(v9 + 36)] = v18;
  sub_254579DA0(v11, a3, &qword_27F604F78, &qword_25459CAB0);
}

uint64_t sub_25457B6AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a3;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604FC0, &qword_25459CBB0);
  MEMORY[0x28223BE20](v57);
  v6 = &v56 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604E60, &qword_25459CAA0);
  MEMORY[0x28223BE20](v7);
  v9 = &v56 - v8;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604F38, &qword_25459CA90);
  MEMORY[0x28223BE20](v60);
  v11 = &v56 - v10;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604FC8, &qword_25459CBB8);
  MEMORY[0x28223BE20](v58);
  v13 = &v56 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604F28, &qword_25459CA88);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v56 - v15;
  sub_25459A8A0();
  v59 = sub_25459A890();
  sub_25459A880();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v20 = *(a1 + 56);
  if (!v20)
  {
    goto LABEL_8;
  }

  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = *(a1 + 48) & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {
LABEL_8:
    v25 = *(a2 + *(type metadata accessor for ScheduleRuleDisplayInfo(0) + 20));
    if (v25 == 1)
    {
      v39 = [objc_opt_self() localizedStringFromScheduleType_];
      v56 = v7;
      v40 = v39;
      v41 = sub_25459A740();
      v43 = v42;

      v62 = v41;
      v63 = v43;
      sub_254579B94(v44, v45, v46);
      v47 = sub_25459A5C0();
      v49 = v48;
      v62 = v47;
      v63 = v48;
      v51 = v50 & 1;
      v64 = v50 & 1;
      v65 = v52;
      sub_25459A600();
      sub_254579BE8(v47, v49, v51);

      sub_254579BF8(v9, v6, &qword_27F604E60, &qword_25459CAA0);
    }

    else
    {
      if (v25 != 2)
      {
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604F48, &qword_25459CA98);
        (*(*(v54 - 8) + 56))(v11, 1, 1, v54);
        goto LABEL_14;
      }

      v26 = [objc_opt_self() localizedStringFromScheduleType_];
      v27 = sub_25459A740();
      v29 = v28;

      v62 = v27;
      v63 = v29;
      sub_254579B94(v30, v31, v32);
      v33 = sub_25459A5C0();
      v35 = v34;
      v62 = v33;
      v63 = v34;
      v56 = v7;
      v37 = v36 & 1;
      v64 = v36 & 1;
      v65 = v38;
      sub_25459A600();
      sub_254579BE8(v33, v35, v37);

      sub_254579BF8(v9, v6, &qword_27F604E60, &qword_25459CAA0);
    }

    swift_storeEnumTagMultiPayload();
    sub_25457AD70();
    sub_25459A4D0();
    sub_254579D40(v9, &qword_27F604E60, &qword_25459CAA0);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F604F48, &qword_25459CA98);
    (*(*(v53 - 8) + 56))(v11, 0, 1, v53);
LABEL_14:
    sub_254579BF8(v11, v13, &qword_27F604F38, &qword_25459CA90);
    swift_storeEnumTagMultiPayload();
    sub_25457AC68();
    sub_25459A4D0();
    sub_254579D40(v11, &qword_27F604F38, &qword_25459CA90);
    goto LABEL_15;
  }

  v62 = *(a1 + 48);
  v63 = v20;
  sub_254579B94(isCurrentExecutor, v18, v19);

  *v13 = sub_25459A5C0();
  *(v13 + 1) = v22;
  v13[16] = v23 & 1;
  *(v13 + 3) = v24;
  swift_storeEnumTagMultiPayload();
  sub_25457AC68();
  sub_25459A4D0();
LABEL_15:
  sub_254579DA0(v16, v61, &qword_27F604F28, &qword_25459CA88);
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

uint64_t sub_25457BCF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_25457BD40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25457BDA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduleRuleDisplayInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25457BE4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25457BE94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduleRuleAccessListCell(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id HUScheduleAccessViewController.init(guestAccessSchedule:tintColor:shouldDisplayAlwaysAllowedSchedule:scheduleBackgroundColor:listRowBackgroundColor:)(void *a1, void *a2, char a3, void *a4, void *a5)
{
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithGuestAccessSchedule:a1 tintColor:a2 shouldDisplayAlwaysAllowedSchedule:a3 & 1 scheduleBackgroundColor:a4 listRowBackgroundColor:a5];

  return v9;
}

char *HUScheduleAccessViewController.init(guestAccessSchedule:tintColor:shouldDisplayAlwaysAllowedSchedule:scheduleBackgroundColor:listRowBackgroundColor:)(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v6 = v5;
  v9 = a3;
  v12 = &v6[OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 2) = 0u;
  *(v12 + 3) = 0u;
  *&v6[OBJC_IVAR___HUScheduleAccessViewController_hostingController] = 0;
  *&v6[OBJC_IVAR___HUScheduleAccessViewController_task] = 0;
  type metadata accessor for HUScheduleAccessViewController(a1);
  v40 = a1;
  v13 = sub_25457C2CC(a1, v9);
  v39 = a5;
  if (a5)
  {
    v14 = a5;
    a5 = sub_25459A650();
  }

  type metadata accessor for ScheduleRuleList();
  swift_allocObject();
  ScheduleRuleList.init(rules:)(v13);
  v38 = a2;
  v15 = sub_25459A650();
  v37 = a4;
  v16 = sub_25459A650();

  v17 = sub_25459A730();
  v18 = a5;
  v19 = HFLocalizedString();

  v20 = sub_25459A740();
  v22 = v21;

  sub_254581F58(&qword_27F605000, type metadata accessor for ScheduleRuleList, &protocol conformance descriptor for ScheduleRuleList);
  v23 = sub_25459A320();
  v24 = *(v12 + 1);
  v47[0] = *v12;
  v47[1] = v24;
  v25 = *(v12 + 3);
  v47[2] = *(v12 + 2);
  v47[3] = v25;
  *v12 = v23;
  *(v12 + 1) = v26;
  *(v12 + 2) = v15;
  *(v12 + 3) = v16;
  *(v12 + 4) = v18;
  v12[40] = 0;
  *(v12 + 6) = v20;
  *(v12 + 7) = v22;
  sub_254579D40(v47, &qword_27F605008, &qword_25459CC10);
  v46.receiver = v6;
  v46.super_class = HUScheduleAccessViewController;
  v27 = objc_msgSendSuper2(&v46, sel_initWithNibName_bundle_, 0, 0);
  v28 = *&v27[OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList + 48];
  v30 = *&v27[OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList];
  v29 = *&v27[OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList + 16];
  v48[2] = *&v27[OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList + 32];
  v48[3] = v28;
  v48[0] = v30;
  v48[1] = v29;
  v31 = *&v27[OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList + 32];
  v49 = *&v27[OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList + 16];
  v50 = v31;
  v51 = *&v27[OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList + 48];
  if (*(&v30 + 1))
  {
    v42 = v30;
    v43 = v49;
    v44 = v50;
    v45 = v51;
    v32 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605010, &qword_25459CC18));
    sub_254579BF8(v48, v41, &qword_27F605008, &qword_25459CC10);
    sub_254579BF8(v48, v41, &qword_27F605008, &qword_25459CC10);
    v33 = v27;
    v34 = sub_25459A400();
    v35 = *&v33[OBJC_IVAR___HUScheduleAccessViewController_hostingController];
    *&v33[OBJC_IVAR___HUScheduleAccessViewController_hostingController] = v34;

    sub_25457D260();

    sub_254579D40(v48, &qword_27F605008, &qword_25459CC10);
  }

  else
  {
  }

  return v27;
}

void *sub_25457C2CC(void *a1, int a2)
{
  v4 = type metadata accessor for ScheduleRuleDisplayInfo(0);
  v162 = *(v4 - 8);
  v163 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v147 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v160 = &v147 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v147 - v10;
  v12 = sub_25459A220();
  v158 = *(v12 - 1);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v147 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v147 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v20 = MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v20);
  v24 = &v147 - v23;
  if (!a1)
  {
    if (qword_27F604B98 != -1)
    {
      swift_once();
    }

    v156 = v12;
    v57 = qword_27F606340;
    sub_25459A230();
    v67 = sub_25459A210();
    v68 = sub_25459A950();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v161 = v57;
      v70 = v69;
      v71 = swift_slowAlloc();
      v164 = v71;
      *v70 = 136315394;
      v72 = sub_25459ABF0();
      v74 = sub_254581894(v72, v73, &v164);

      *(v70 + 4) = v74;
      v75 = v158;
      *(v70 + 12) = 2080;
      *(v70 + 14) = sub_254581894(0xD000000000000049, 0x800000025459EE60, &v164);
      _os_log_impl(&dword_254573000, v67, v68, "%s%s There is no schedule to get ruleDisplayInfos from.", v70, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C11390](v71, -1, -1);
      v76 = v70;
      v57 = v161;
      MEMORY[0x259C11390](v76, -1, -1);

      v77 = v75;
    }

    else
    {

      v77 = v158;
    }

    v12 = *(v77 + 8);
    (v12)(v18, v156);
    if (a2)
    {
      v105 = [objc_opt_self() localizedStringFromScheduleType_];
      v106 = sub_25459A740();
      v108 = v107;

      sub_25459A1A0();
      v109 = v163;
      v7[*(v163 + 20)] = 0;
      v110 = &v7[*(v109 + 24)];
      *v110 = v106;
      v110[1] = v108;
      v111 = &v7[*(v109 + 28)];
      *v111 = 0;
      *(v111 + 1) = 0;
      v54 = sub_254581634(0, 1, 1, MEMORY[0x277D84F90]);
      v78 = v54[2];
      v82 = v54[3];
      v81 = (v78 + 1);
      if (v78 < v82 >> 1)
      {
LABEL_36:
        v54[2] = v81;
        sub_254579B30(v7, v54 + ((*(v162 + 80) + 32) & ~*(v162 + 80)) + *(v162 + 72) * v78);
        v112 = v57;
        sub_25459A230();
        v113 = sub_25459A210();
        v114 = sub_25459A950();
        if (os_log_type_enabled(v113, v114))
        {
          v115 = swift_slowAlloc();
          v116 = swift_slowAlloc();
          v164 = v116;
          *v115 = 136315650;
          v117 = sub_25459ABF0();
          v119 = sub_254581894(v117, v118, &v164);

          *(v115 + 4) = v119;
          *(v115 + 12) = 2080;
          *(v115 + 14) = sub_254581894(0xD000000000000049, 0x800000025459EE60, &v164);
          *(v115 + 22) = 2080;

          v121 = MEMORY[0x259C10600](v120, v163);
          v123 = v122;

          v124 = sub_254581894(v121, v123, &v164);

          *(v115 + 24) = v124;
          _os_log_impl(&dword_254573000, v113, v114, "%s%s Adding always allowed info. List of displayInfos to be presented {%s}", v115, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x259C11390](v116, -1, -1);
          MEMORY[0x259C11390](v115, -1, -1);
        }

        (v12)(v15, v156);
        return v54;
      }

LABEL_51:
      v54 = sub_254581634((v82 > 1), v81, 1, v54);
      goto LABEL_36;
    }

    return MEMORY[0x277D84F90];
  }

  v149 = v22;
  v150 = v11;
  v153 = v21;
  v151 = a2;
  v25 = objc_opt_self();
  v152 = a1;
  v26 = a1;
  v27 = [v25 scheduleBuilderFromHomeAccessSchedule_];
  v15 = objc_opt_self();
  v28 = [v27 rules];
  v29 = sub_254582148(0, &qword_27F605060, 0x277D14A18);
  sub_254582190();
  v30 = sub_25459A900();

  v31 = sub_2545821F8(v30);

  sub_254581438(v31);

  v32 = sub_25459A7D0();

  v159 = v15;
  v33 = [v15 sortedScheduleRules_];

  v148 = v29;
  v161 = sub_25459A7E0();

  if (qword_27F604B98 != -1)
  {
    swift_once();
  }

  v34 = qword_27F606340;
  sub_25459A230();
  v35 = v26;
  v36 = v27;
  v37 = sub_25459A210();
  v38 = sub_25459A950();

  v39 = os_log_type_enabled(v37, v38);
  v154 = v35;
  v155 = v36;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v147 = v34;
    v42 = v41;
    v43 = swift_slowAlloc();
    v156 = v12;
    v44 = v43;
    v164 = v43;
    *v40 = 136315906;
    v45 = sub_25459ABF0();
    v15 = sub_254581894(v45, v46, &v164);

    *(v40 + 4) = v15;
    *(v40 + 12) = 2080;
    *(v40 + 14) = sub_254581894(0xD000000000000049, 0x800000025459EE60, &v164);
    *(v40 + 22) = 2112;
    *(v40 + 24) = v36;
    *(v40 + 32) = 2112;
    *(v40 + 34) = v35;
    v47 = v152;
    *v42 = v36;
    v42[1] = v47;
    v48 = v35;
    v49 = v36;
    _os_log_impl(&dword_254573000, v37, v38, "%s%s Constructed builder {%@} from unwrapped schedule {%@}", v40, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605020, &qword_25459CC38);
    swift_arrayDestroy();
    v50 = v42;
    v34 = v147;
    MEMORY[0x259C11390](v50, -1, -1);
    swift_arrayDestroy();
    v51 = v44;
    v12 = v156;
    MEMORY[0x259C11390](v51, -1, -1);
    MEMORY[0x259C11390](v40, -1, -1);
  }

  v52 = *(v158 + 8);
  (v52)(v24, v12);
  v53 = v161;
  v54 = (v161 >> 62);
  if (v161 >> 62)
  {
    if (sub_25459A9E0())
    {
      goto LABEL_8;
    }
  }

  else if (*((v161 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_8:
    v55 = v34;
    v56 = v153;
    sub_25459A230();

    v57 = sub_25459A210();
    v7 = sub_25459A950();
    v58 = v53;

    if (os_log_type_enabled(v57, v7))
    {
      v59 = swift_slowAlloc();
      v156 = v52;
      v60 = v59;
      v61 = swift_slowAlloc();
      v164 = v61;
      *v60 = 136315650;
      v62 = sub_25459ABF0();
      v64 = sub_254581894(v62, v63, &v164);

      *(v60 + 4) = v64;
      *(v60 + 12) = 2080;
      *(v60 + 14) = sub_254581894(0xD000000000000049, 0x800000025459EE60, &v164);
      *(v60 + 22) = 2080;
      v65 = MEMORY[0x259C10600](v53, v148);
      v15 = sub_254581894(v65, v66, &v164);

      *(v60 + 24) = v15;
      _os_log_impl(&dword_254573000, v57, v7, "%s%s Mapping rules to ruleDisplayInfos {%s}", v60, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x259C11390](v61, -1, -1);
      MEMORY[0x259C11390](v60, -1, -1);

      (v156)(v56, v12);
    }

    else
    {

      (v52)(v56, v12);
    }

    v78 = v155;
    if (v54)
    {
      v79 = sub_25459A9E0();
      v80 = v154;
      if (v79)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v79 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v80 = v154;
      if (v79)
      {
LABEL_17:
        v164 = MEMORY[0x277D84F90];
        v81 = &v164;
        sub_2545822A8(0, v79 & ~(v79 >> 63), 0);
        if ((v79 & 0x8000000000000000) == 0)
        {
          v54 = v164;
          v83 = sub_25459A8A0();
          v84 = 0;
          v85 = v58;
          v156 = (v58 & 0xC000000000000001);
          v157 = v83;
          v158 = v79;
          do
          {
            if (v156)
            {
              v86 = MEMORY[0x259C10840](v84, v85);
            }

            else
            {
              v86 = *(v85 + 8 * v84 + 32);
            }

            v87 = v86;
            sub_25459A890();
            sub_25459A880();
            if ((swift_task_isCurrentExecutor() & 1) == 0)
            {
              swift_task_reportUnexpectedExecutor();
            }

            if ([v87 isYearDayRule])
            {
              v88 = 1;
            }

            else
            {
              v88 = 2;
            }

            v89 = v159;
            v90 = [v159 localizedMainStringForRule_];
            v91 = sub_25459A740();
            v93 = v92;

            v94 = [v89 localizedDetailedStringForRule_];
            v95 = sub_25459A740();
            v97 = v96;

            v98 = v160;
            sub_25459A1A0();

            v99 = v98;
            v100 = v163;
            v98[*(v163 + 20)] = v88;
            v101 = &v98[*(v100 + 24)];
            *v101 = v91;
            v101[1] = v93;
            v102 = &v98[*(v100 + 28)];
            *v102 = v95;
            v102[1] = v97;
            v164 = v54;
            v104 = v54[2];
            v103 = v54[3];
            if (v104 >= v103 >> 1)
            {
              sub_2545822A8((v103 > 1), v104 + 1, 1);
              v99 = v160;
              v54 = v164;
            }

            ++v84;
            v54[2] = v104 + 1;
            sub_254579B30(v99, v54 + ((*(v162 + 80) + 32) & ~*(v162 + 80)) + *(v162 + 72) * v104);
            v85 = v161;
          }

          while (v158 != v84);

          return v54;
        }

        __break(1u);
        goto LABEL_51;
      }
    }

    return MEMORY[0x277D84F90];
  }

  v125 = v34;
  v126 = v149;
  sub_25459A230();
  v127 = sub_25459A210();
  v128 = sub_25459A950();
  if (os_log_type_enabled(v127, v128))
  {
    v129 = v52;
    v130 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    v164 = v131;
    *v130 = 136315394;
    v132 = sub_25459ABF0();
    v134 = sub_254581894(v132, v133, &v164);

    *(v130 + 4) = v134;
    *(v130 + 12) = 2080;
    *(v130 + 14) = sub_254581894(0xD000000000000049, 0x800000025459EE60, &v164);
    _os_log_impl(&dword_254573000, v127, v128, "%s%s Rules are empty!", v130, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C11390](v131, -1, -1);
    MEMORY[0x259C11390](v130, -1, -1);

    v129(v126, v12);
  }

  else
  {

    (v52)(v126, v12);
  }

  v135 = v155;
  v136 = v150;
  if ((v151 & 1) == 0)
  {

    return MEMORY[0x277D84F90];
  }

  v137 = [v159 localizedStringFromScheduleType_];
  v138 = sub_25459A740();
  v140 = v139;

  sub_25459A1A0();
  v141 = v163;
  *(v136 + *(v163 + 20)) = 0;
  v142 = (v136 + *(v141 + 24));
  *v142 = v138;
  v142[1] = v140;
  v143 = (v136 + *(v141 + 28));
  *v143 = 0;
  v143[1] = 0;
  v54 = sub_254581634(0, 1, 1, MEMORY[0x277D84F90]);
  v145 = v54[2];
  v144 = v54[3];
  if (v145 >= v144 >> 1)
  {
    v54 = sub_254581634((v144 > 1), v145 + 1, 1, v54);
  }

  v54[2] = v145 + 1;
  sub_254579B30(v136, v54 + ((*(v162 + 80) + 32) & ~*(v162 + 80)) + *(v162 + 72) * v145);
  return v54;
}

void sub_25457D260()
{
  v1 = sub_25459A220();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v60 - v6;
  v8 = *&v0[OBJC_IVAR___HUScheduleAccessViewController_hostingController];
  if (v8)
  {
    v9 = qword_27F604B98;
    v10 = v8;
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = qword_27F606340;
    sub_25459A230();
    v12 = v0;
    v13 = sub_25459A210();
    v14 = sub_25459A950();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v15 = 138412546;
      *(v15 + 4) = v12;
      *v16 = v12;
      *(v15 + 12) = 2080;
      v60 = v1;
      v61 = v17;
      v18 = v12;
      *(v15 + 14) = sub_254581894(0xD00000000000001ALL, 0x800000025459EE40, &v61);
      _os_log_impl(&dword_254573000, v13, v14, "%@%s Presenting hosting controller for schedule access", v15, 0x16u);
      sub_254579D40(v16, &qword_27F605020, &qword_25459CC38);
      MEMORY[0x259C11390](v16, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x259C11390](v17, -1, -1);
      MEMORY[0x259C11390](v15, -1, -1);

      (*(v2 + 8))(v7, v60);
    }

    else
    {

      (*(v2 + 8))(v7, v1);
    }

    v27 = v10;
    [v12 addChildViewController_];
    v28 = [v12 view];
    if (v28)
    {
      v29 = v28;
      v30 = [v27 view];
      if (v30)
      {
        v31 = v30;
        [v29 addSubview_];

        v32 = [v27 view];
        if (v32)
        {
          [v32 setTranslatesAutoresizingMaskIntoConstraints_];

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605050, &qword_25459CC70);
          v33 = swift_allocObject();
          *(v33 + 16) = xmmword_25459CC00;
          v34 = [v27 view];

          if (v34)
          {
            v35 = [v34 leadingAnchor];

            v36 = [v12 view];
            if (v36)
            {
              v37 = v36;
              v38 = [v36 leadingAnchor];

              v39 = [v35 constraintEqualToAnchor_];
              *(v33 + 32) = v39;
              v40 = [v27 view];

              if (v40)
              {
                v41 = [v40 trailingAnchor];

                v42 = [v12 view];
                if (v42)
                {
                  v43 = v42;
                  v44 = [v42 trailingAnchor];

                  v45 = [v41 constraintEqualToAnchor_];
                  *(v33 + 40) = v45;
                  v46 = [v27 view];

                  if (v46)
                  {
                    v47 = [v46 topAnchor];

                    v48 = [v12 view];
                    if (v48)
                    {
                      v49 = v48;
                      v50 = [v48 topAnchor];

                      v51 = [v47 constraintEqualToAnchor_];
                      *(v33 + 48) = v51;
                      v52 = [v27 view];

                      if (v52)
                      {
                        v53 = [v52 bottomAnchor];

                        v54 = [v12 view];
                        if (v54)
                        {
                          v55 = v54;
                          v56 = objc_opt_self();
                          v57 = [v55 bottomAnchor];

                          v58 = [v53 constraintEqualToAnchor_];
                          *(v33 + 56) = v58;
                          sub_254582148(0, &qword_27F605058, 0x277CCAAD0);
                          v59 = sub_25459A7D0();

                          [v56 activateConstraints_];

                          return;
                        }

                        goto LABEL_34;
                      }

LABEL_33:
                      __break(1u);
LABEL_34:
                      __break(1u);
                      return;
                    }

LABEL_32:
                    __break(1u);
                    goto LABEL_33;
                  }

LABEL_31:
                  __break(1u);
                  goto LABEL_32;
                }

LABEL_30:
                __break(1u);
                goto LABEL_31;
              }

LABEL_29:
              __break(1u);
              goto LABEL_30;
            }

LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }

  if (qword_27F604B98 != -1)
  {
    swift_once();
  }

  v19 = qword_27F606340;
  sub_25459A230();
  v20 = v0;
  v21 = sub_25459A210();
  v22 = sub_25459A930();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v61 = v25;
    *v23 = 138412546;
    *(v23 + 4) = v20;
    *v24 = v20;
    *(v23 + 12) = 2080;
    v26 = v20;
    *(v23 + 14) = sub_254581894(0xD00000000000001ALL, 0x800000025459EE40, &v61);
    _os_log_impl(&dword_254573000, v21, v22, "%@%s Unexpected error! We have no host controller!", v23, 0x16u);
    sub_254579D40(v24, &qword_27F605020, &qword_25459CC38);
    MEMORY[0x259C11390](v24, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x259C11390](v25, -1, -1);
    MEMORY[0x259C11390](v23, -1, -1);
  }

  (*(v2 + 8))(v5, v1);
}

id HUScheduleAccessViewController.init(homeID:tintColor:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_25459A170();
  v6 = [v4 initWithHomeID:v5 tintColor:a2];

  v7 = sub_25459A1B0();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

{
  v3 = v2;
  v6 = sub_25459A170();
  v7 = [v3 initWithHomeID:v6 tintColor:a2 listRowBackgroundColor:0];

  v8 = sub_25459A1B0();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

id HUScheduleAccessViewController.init(homeID:tintColor:listRowBackgroundColor:)(uint64_t a1, void *a2, void *a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_25459A170();
  v8 = [v6 initWithHomeID:v7 tintColor:a2 listRowBackgroundColor:a3];

  v9 = sub_25459A1B0();
  (*(*(v9 - 8) + 8))(a1, v9);
  return v8;
}

{
  v52 = a2;
  v53 = a3;
  v55 = a1;
  v4 = sub_25459A220();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25459A1B0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v51 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605018, &qword_25459CC20);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v47 - v12;
  v14 = &v3[OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 2) = 0u;
  *(v14 + 3) = 0u;
  *&v3[OBJC_IVAR___HUScheduleAccessViewController_hostingController] = 0;
  *&v3[OBJC_IVAR___HUScheduleAccessViewController_task] = 0;
  v57.receiver = v3;
  v57.super_class = HUScheduleAccessViewController;
  v54 = objc_msgSendSuper2(&v57, sel_initWithNibName_bundle_, 0, 0);
  v15 = [objc_opt_self() sharedDispatcher];
  v16 = [v15 homeManager];

  if (v16)
  {
    v50 = v5;
    v51 = v4;
    v17 = qword_27F604B98;
    v18 = v16;
    if (v17 != -1)
    {
      swift_once();
    }

    v19 = qword_27F606340;
    sub_25459A230();
    v20 = v18;
    v21 = v7;
    v22 = v54;
    v23 = sub_25459A210();
    v24 = sub_25459A950();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v49 = v8;
      v27 = v26;
      v48 = swift_slowAlloc();
      v56 = v48;
      *v25 = 138412802;
      *(v25 + 4) = v22;
      *v27 = v22;
      *(v25 + 12) = 2080;
      v28 = v22;
      *(v25 + 14) = sub_254581894(0xD00000000000002ELL, 0x800000025459EC30, &v56);
      *(v25 + 22) = 2112;
      *(v25 + 24) = v20;
      v27[1] = v16;
      v29 = v20;
      _os_log_impl(&dword_254573000, v23, v24, "%@%s HMHomeManager exists! as %@", v25, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605020, &qword_25459CC38);
      swift_arrayDestroy();
      v30 = v27;
      v8 = v49;
      MEMORY[0x259C11390](v30, -1, -1);
      v31 = v48;
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x259C11390](v31, -1, -1);
      MEMORY[0x259C11390](v25, -1, -1);
    }

    (v50)[1](v21, v51);
    v33 = v52;
    v32 = v53;
    sub_25457E498(v55, v52, v53);
    sub_25457D260();
  }

  else
  {
    v34 = sub_25459A8D0();
    v35 = *(*(v34 - 8) + 56);
    v49 = v13;
    v35(v13, 1, 1, v34);
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v9 + 16))(v51, v55, v8);
    sub_25459A8A0();
    v37 = v53;
    v50 = v53;

    v38 = v52;
    v39 = sub_25459A890();
    v40 = v8;
    v41 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v42 = (v10 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    v44 = MEMORY[0x277D85700];
    v43[2] = v39;
    v43[3] = v44;
    v43[4] = v36;
    v45 = v43 + v41;
    v8 = v40;
    (*(v9 + 32))(v45, v51, v40);
    *(v43 + v42) = v38;
    *(v43 + ((v42 + 15) & 0xFFFFFFFFFFFFFFF8)) = v37;

    sub_25457FF78(0, 0, v49, &unk_25459CC30, v43);
  }

  (*(v9 + 8))(v55, v8);
  return v54;
}

void sub_25457E498(uint64_t a1, void *a2, uint64_t a3)
{
  v143 = a3;
  v144 = a2;
  v4 = sub_25459A1B0();
  v5 = *(v4 - 1);
  v6 = MEMORY[0x28223BE20](v4);
  v136 = (&v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v9 = &v129 - v8;
  v10 = sub_25459A220();
  v149 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v138 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v146 = &v129 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v129 - v15;
  v17 = [objc_opt_self() sharedDispatcher];
  v18 = [v17 homeManager];

  v148 = v18;
  if (v18)
  {
    v19 = v148;
    v20 = sub_25459A170();
    v21 = [v19 hf:v20 homeWithIdentifier:?];
  }

  else
  {
    v21 = 0;
  }

  v22 = v10;
  if (qword_27F604B98 != -1)
  {
    swift_once();
  }

  v142 = qword_27F606340;
  sub_25459A230();
  v133 = v5[2];
  v134 = v5 + 2;
  v133(v9, a1, v4);
  v23 = v21;
  v139 = v21;
  v140 = v4;
  v24 = v23;
  v25 = v150;
  v26 = v9;
  v27 = sub_25459A210();
  v141 = v16;
  v28 = v27;
  v29 = sub_25459A950();

  v30 = os_log_type_enabled(v28, v29);
  v150 = v25;
  v147 = v24;
  v145 = v22;
  v137 = v5;
  v135 = a1;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    *&v153 = v131;
    *v31 = 138413058;
    *(v31 + 4) = v150;
    *v32 = v150;
    *(v31 + 12) = 2080;
    v130 = v28;
    v33 = v5;
    v34 = v150;
    *(v31 + 14) = sub_254581894(0xD00000000000002FLL, 0x800000025459EDF0, &v153);
    *(v31 + 22) = 2080;
    sub_254581F58(&qword_27F605038, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v35 = v140;
    v36 = sub_25459AB50();
    v38 = v37;
    v132 = v33[1];
    v132(v26, v35);
    v39 = sub_254581894(v36, v38, &v153);

    *(v31 + 24) = v39;
    *(v31 + 32) = 2112;
    *(v31 + 34) = v24;
    v40 = v139;
    v32[1] = v139;
    v41 = v24;
    v42 = v29;
    v43 = v130;
    _os_log_impl(&dword_254573000, v130, v42, "%@%s Lookup result for home with id=%s as %@", v31, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605020, &qword_25459CC38);
    swift_arrayDestroy();
    MEMORY[0x259C11390](v32, -1, -1);
    v44 = v131;
    swift_arrayDestroy();
    MEMORY[0x259C11390](v44, -1, -1);
    v45 = v31;
    v25 = v150;
    v46 = v145;
    MEMORY[0x259C11390](v45, -1, -1);

    v47 = v141;
    v141 = *(v149 + 8);
    v141(v47, v46);
    v48 = v146;
    v49 = v35;
    v50 = v143;
    if (v143)
    {
      goto LABEL_8;
    }

LABEL_12:
    v143 = 0;
    if (v40)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  v40 = v139;

  v82 = v5[1];
  v49 = v140;
  v132 = v82;
  v82(v26, v140);
  v83 = v141;
  v46 = v22;
  v141 = *(v149 + 8);
  v141(v83, v22);
  v48 = v146;
  v50 = v143;
  if (!v143)
  {
    goto LABEL_12;
  }

LABEL_8:
  v51 = v50;
  v143 = sub_25459A650();
  if (v40)
  {
LABEL_9:
    v52 = v147;
    v53 = [v52 currentUser];
    v138 = v52;
    v54 = [v52 homeAccessControlForUser_];

    v55 = [v54 restrictedGuestAccessSettings];
    v56 = [v55 guestAccessSchedule];
    v57 = v142;
    sub_25459A230();
    v58 = v25;
    v139 = v56;
    v59 = v56;
    v60 = v55;
    v61 = v58;
    v62 = v60;
    v63 = v54;
    v64 = sub_25459A210();
    v65 = sub_25459A950();
    v142 = v63;

    v140 = v62;
    v66 = v64;
    v67 = os_log_type_enabled(v64, v65);
    v137 = v61;
    if (v67)
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      *&v153 = v136;
      *v68 = 138413314;
      *(v68 + 4) = v61;
      *v69 = v61;
      *(v68 + 12) = 2080;
      v70 = v61;
      v71 = v143;
      *(v68 + 14) = sub_254581894(0xD00000000000002FLL, 0x800000025459EDF0, &v153);
      *(v68 + 22) = 2112;
      *(v68 + 24) = v59;
      *(v68 + 32) = 2112;
      v72 = v139;
      v73 = v140;
      *(v68 + 34) = v140;
      v69[1] = v72;
      v69[2] = v73;
      *(v68 + 42) = 2112;
      v74 = v142;
      *(v68 + 44) = v142;
      v69[3] = v74;
      v75 = v59;
      v76 = v73;
      v77 = v74;
      _os_log_impl(&dword_254573000, v66, v65, "%@%s Found access schedule {%@} from guest settings {%@} and home access control {%@}", v68, 0x34u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605020, &qword_25459CC38);
      swift_arrayDestroy();
      MEMORY[0x259C11390](v69, -1, -1);
      v78 = v136;
      __swift_destroy_boxed_opaque_existential_0(v136);
      MEMORY[0x259C11390](v78, -1, -1);
      MEMORY[0x259C11390](v68, -1, -1);

      v79 = (v141)(v146, v145);
      v80 = v59;
      v81 = v147;
    }

    else
    {

      v79 = (v141)(v48, v46);
      v80 = v59;
      v81 = v147;
      v71 = v143;
    }

    type metadata accessor for HUScheduleAccessViewController(v79);
    v100 = sub_25457C2CC(v139, 1);
    type metadata accessor for ScheduleRuleList();
    swift_allocObject();
    ScheduleRuleList.init(rules:)(v100);
    v101 = v144;
    v102 = sub_25459A650();
    sub_254581F58(&qword_27F605000, type metadata accessor for ScheduleRuleList, &protocol conformance descriptor for ScheduleRuleList);

    v103 = sub_25459A320();
    v105 = v104;

    v106 = &v137[OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList];
    v107 = *&v137[OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList + 16];
    v109 = *&v137[OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList + 32];
    v108 = *&v137[OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList + 48];
    v153 = *&v137[OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList];
    v154 = v107;
    v155 = v109;
    v156 = v108;
    *v106 = v103;
    *(v106 + 1) = v105;
    *(v106 + 2) = v102;
    *(v106 + 3) = 0;
    *(v106 + 4) = v71;
    v106[40] = 1;
    *(v106 + 6) = 0;
    *(v106 + 7) = 0;
    sub_254579D40(&v153, &qword_27F605008, &qword_25459CC10);
    v110 = v150;
    goto LABEL_19;
  }

LABEL_13:
  v84 = v142;
  v85 = v138;
  sub_25459A230();
  v86 = v136;
  v133(v136, v135, v49);
  v87 = v25;
  v88 = sub_25459A210();
  v89 = sub_25459A950();

  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v146 = swift_slowAlloc();
    *&v153 = v146;
    *v90 = 138413058;
    *(v90 + 4) = v87;
    *v91 = v87;
    *(v90 + 12) = 2080;
    v92 = v87;
    v93 = v87;
    *(v90 + 14) = sub_254581894(0xD00000000000002FLL, 0x800000025459EDF0, &v153);
    *(v90 + 22) = 2080;
    sub_254581F58(&qword_27F605038, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v94 = sub_25459AB50();
    v96 = v95;
    v132(v86, v49);
    v97 = sub_254581894(v94, v96, &v153);
    v87 = v92;

    *(v90 + 24) = v97;
    *(v90 + 32) = 2112;
    *(v90 + 34) = 0;
    v91[1] = 0;
    _os_log_impl(&dword_254573000, v88, v89, "%@%s Unable to find home with id=%s as %@", v90, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605020, &qword_25459CC38);
    swift_arrayDestroy();
    MEMORY[0x259C11390](v91, -1, -1);
    v98 = v146;
    swift_arrayDestroy();
    MEMORY[0x259C11390](v98, -1, -1);
    MEMORY[0x259C11390](v90, -1, -1);

    v99 = v138;
  }

  else
  {

    v132(v86, v49);
    v99 = v85;
  }

  v141(v99, v145);
  type metadata accessor for ScheduleRuleList();
  swift_allocObject();
  ScheduleRuleList.init(rules:)(MEMORY[0x277D84F90]);
  v111 = v144;
  v112 = sub_25459A650();
  sub_254581F58(&qword_27F605000, type metadata accessor for ScheduleRuleList, &protocol conformance descriptor for ScheduleRuleList);
  v113 = v143;

  v114 = sub_25459A320();
  v115 = &v87[OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList];
  v116 = *&v87[OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList];
  v117 = *&v87[OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList + 16];
  v118 = *&v87[OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList + 48];
  v155 = *&v87[OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList + 32];
  v156 = v118;
  v153 = v116;
  v154 = v117;
  *v115 = v114;
  *(v115 + 1) = v119;
  *(v115 + 2) = v112;
  *(v115 + 3) = 0;
  *(v115 + 4) = v113;
  v115[40] = 1;
  *(v115 + 6) = 0;
  *(v115 + 7) = 0;
  sub_254579D40(&v153, &qword_27F605008, &qword_25459CC10);
  v110 = v150;
  v81 = v147;
LABEL_19:
  v120 = &v110[OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList];
  v121 = *&v110[OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList + 48];
  v123 = *&v110[OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList];
  v122 = *&v110[OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList + 16];
  v155 = *&v110[OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList + 32];
  v156 = v121;
  v153 = v123;
  v154 = v122;
  if (*(&v123 + 1))
  {
    v151[4] = __PAIR128__(*(&v123 + 1), v153);
    v124 = *(v120 + 1);
    v125 = *(v120 + 3);
    v151[6] = *(v120 + 2);
    v151[7] = v125;
    v151[5] = v124;
    v126 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605010, &qword_25459CC18));
    v152[0] = v153;
    v152[1] = v154;
    v152[2] = v155;
    v152[3] = v156;
    sub_254579BF8(&v153, v151, &qword_27F605008, &qword_25459CC10);
    sub_25457BE14(v152, v151);
    v127 = sub_25459A400();

    sub_254579D40(&v153, &qword_27F605008, &qword_25459CC10);
    v128 = *&v110[OBJC_IVAR___HUScheduleAccessViewController_hostingController];
    *&v110[OBJC_IVAR___HUScheduleAccessViewController_hostingController] = v127;
  }

  else
  {
  }
}

uint64_t sub_25457F220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  sub_25459A8A0();
  v7[9] = sub_25459A890();
  v9 = sub_25459A880();
  v7[10] = v9;
  v7[11] = v8;

  return MEMORY[0x2822009F8](sub_25457F2BC, v9, v8);
}

uint64_t sub_25457F2BC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = sub_25457F3AC;

    return sub_25457F714();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_25457F3AC(void *a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = *(v4 + 80);
    v6 = *(v4 + 88);
    v7 = sub_25457F560;
  }

  else
  {

    v5 = *(v4 + 80);
    v6 = *(v4 + 88);
    v7 = sub_25457F4D4;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_25457F4D4()
{
  v1 = v0[12];
  v2 = v0[8];
  v4 = v0[6];
  v3 = v0[7];

  sub_25457E498(v4, v3, v2);
  sub_25457D260();

  v5 = v0[1];

  return v5();
}

uint64_t sub_25457F560()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25457F5D0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_25459A1B0() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_254582804;

  return sub_25457F220(a1, v8, v9, v10, v1 + v6, v11, v12);
}

uint64_t sub_25457F714()
{
  v1[4] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605018, &qword_25459CC20);
  v1[5] = swift_task_alloc();
  v1[6] = sub_25459A8A0();
  v1[7] = sub_25459A890();
  v3 = sub_25459A880();
  v1[8] = v3;
  v1[9] = v2;

  return MEMORY[0x2822009F8](sub_25457F7E8, v3, v2);
}

uint64_t sub_25457F7E8()
{
  v1 = [objc_opt_self() sharedDispatcher];
  v2 = [v1 homeManager];

  if (v2)
  {

    v3 = v0[1];

    return v3(v2);
  }

  else
  {
    v5 = v0[4];
    v6 = OBJC_IVAR___HUScheduleAccessViewController_task;
    v0[10] = OBJC_IVAR___HUScheduleAccessViewController_task;
    v7 = *&v5[v6];
    v0[11] = v7;
    if (v7)
    {

      v8 = swift_task_alloc();
      v0[12] = v8;
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605040, &qword_25459CC60);
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605048, &qword_25459CC68);
      *v8 = v0;
      v8[1] = sub_25457FAD8;
      v11 = MEMORY[0x277D84950];
      v12 = v0 + 3;
    }

    else
    {
      v13 = v0[5];
      sub_25459A8B0();
      v14 = sub_25459A8D0();
      (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
      v15 = v5;
      v16 = sub_25459A890();
      v17 = swift_allocObject();
      v18 = MEMORY[0x277D85700];
      v17[2] = v16;
      v17[3] = v18;
      v17[4] = v15;
      v7 = sub_254580224(0, 0, v13, &unk_25459CC58, v17);
      v0[14] = v7;
      *&v5[v6] = v7;

      v19 = swift_task_alloc();
      v0[15] = v19;
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605040, &qword_25459CC60);
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605048, &qword_25459CC68);
      *v19 = v0;
      v19[1] = sub_25457FC94;
      v11 = MEMORY[0x277D84950];
      v12 = v0 + 2;
    }

    return MEMORY[0x282200430](v12, v7, v9, v10, v11);
  }
}

uint64_t sub_25457FAD8()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_25457FE6C;
  }

  else
  {
    v5 = sub_25457FC14;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_25457FC14()
{

  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_25457FC94()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_25457FEE4;
  }

  else
  {
    v5 = sub_25457FDD0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_25457FDD0()
{
  v1 = v0[10];
  v2 = v0[4];

  v3 = v0[2];
  *(v2 + v1) = 0;

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_25457FE6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25457FEE4()
{
  v1 = v0[10];
  v2 = v0[4];

  *(v2 + v1) = 0;

  v3 = v0[1];

  return v3();
}

uint64_t sub_25457FF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605018, &qword_25459CC20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_254579BF8(a3, v22 - v9, &qword_27F605018, &qword_25459CC20);
  v11 = sub_25459A8D0();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_254579D40(v10, &qword_27F605018, &qword_25459CC20);
  }

  else
  {
    sub_25459A8C0();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_25459A880();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_25459A750() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_254579D40(a3, &qword_27F605018, &qword_25459CC20);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_254579D40(a3, &qword_27F605018, &qword_25459CC20);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_254580224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605018, &qword_25459CC20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_254579BF8(a3, v22 - v9, &qword_27F605018, &qword_25459CC20);
  v11 = sub_25459A8D0();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_254579D40(v10, &qword_27F605018, &qword_25459CC20);
  }

  else
  {
    sub_25459A8C0();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_25459A880();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_25459A750() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605040, &qword_25459CC60);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_254579D40(a3, &qword_27F605018, &qword_25459CC20);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_254579D40(a3, &qword_27F605018, &qword_25459CC20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605040, &qword_25459CC60);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void HUScheduleAccessViewController.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList);
  *v1 = 0u;
  v1[1] = 0u;
  v1[2] = 0u;
  v1[3] = 0u;
  *(v0 + OBJC_IVAR___HUScheduleAccessViewController_hostingController) = 0;
  *(v0 + OBJC_IVAR___HUScheduleAccessViewController_task) = 0;
  sub_25459AAE0();
  __break(1u);
}

void __swiftcall HUScheduleAccessViewController.init(nibName:bundle:)(HUScheduleAccessViewController *__return_ptr retstr, Swift::String_optional nibName, NSBundle_optional bundle)
{
  isa = bundle.value.super.isa;
  if (nibName.value._object)
  {
    v4 = sub_25459A730();
  }

  else
  {
    v4 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:isa];
}

void HUScheduleAccessViewController.init(nibName:bundle:)()
{
  v1 = (v0 + OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList);
  *v1 = 0u;
  v1[1] = 0u;
  v1[2] = 0u;
  v1[3] = 0u;
  *(v0 + OBJC_IVAR___HUScheduleAccessViewController_hostingController) = 0;
  *(v0 + OBJC_IVAR___HUScheduleAccessViewController_task) = 0;
  sub_25459AAE0();
  __break(1u);
}

Swift::Void __swiftcall HUScheduleAccessViewController.viewDidLoad()()
{
  v9.super_class = HUScheduleAccessViewController;
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  v1 = sub_25459A730();
  v2 = HFLocalizedString();

  if (!v2)
  {
    sub_25459A740();
    v2 = sub_25459A730();
  }

  [v0 setTitle_];

  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() systemBackgroundColor];
    [v4 setBackgroundColor_];

    v6 = [v0 view];
    if (v6)
    {
      v7 = v6;
      v8 = sub_25459A730();
      [v7 setAccessibilityIdentifier_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_254580BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = sub_25459A220();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  sub_25459A8A0();
  v4[9] = sub_25459A890();
  v7 = sub_25459A880();
  v4[10] = v7;
  v4[11] = v6;

  return MEMORY[0x2822009F8](sub_254580CFC, v7, v6);
}

uint64_t sub_254580CFC()
{
  if (qword_27F604B98 != -1)
  {
    swift_once();
  }

  v1 = qword_27F606340;
  v0[12] = qword_27F606340;
  v2 = v1;
  sub_25459A230();
  v3 = sub_25459A210();
  v4 = sub_25459A950();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_254573000, v3, v4, "HMHomeManager is nil! Attempting to load homes to create the manager!", v5, 2u);
    MEMORY[0x259C11390](v5, -1, -1);
  }

  v6 = v0[8];
  v7 = v0[4];
  v8 = v0[5];

  v9 = *(v8 + 8);
  v0[13] = v9;
  v9(v6, v7);
  v10 = objc_opt_self();
  v0[14] = v10;
  v0[15] = [v10 sharedDispatcher];
  sub_25459A240();
  v12 = v11;
  v13 = swift_task_alloc();
  v0[16] = v13;
  *v13 = v0;
  v13[1] = sub_254580EB0;
  v14.n128_u64[0] = v12;

  return MEMORY[0x28216DC48](v14);
}

uint64_t sub_254580EB0(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v4 = v3[10];
    v5 = v3[11];
    v6 = sub_254581338;
  }

  else
  {
    v7 = v3[15];

    v4 = v3[10];
    v5 = v3[11];
    v6 = sub_254580FE0;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_254580FE0()
{
  v31 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);

  v3 = [v1 sharedDispatcher];
  v4 = [v3 homeManager];

  v5 = v2;
  v6 = *(v0 + 24);
  if (v4)
  {
    sub_25459A230();
    v7 = v6;
    v8 = sub_25459A210();
    v9 = sub_25459A950();

    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 104);
    v12 = *(v0 + 56);
    v13 = *(v0 + 32);
    if (v10)
    {
      v14 = *(v0 + 24);
      v29 = v4;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v28 = v12;
      v17 = swift_slowAlloc();
      v30 = v17;
      *v15 = 138412546;
      *(v15 + 4) = v14;
      *v16 = v14;
      *(v15 + 12) = 2080;
      v27 = v11;
      v18 = v14;
      *(v15 + 14) = sub_254581894(0xD000000000000010, 0x800000025459EE20, &v30);
      v19 = "%@%s Successfully created HMHomeManager!";
LABEL_6:
      _os_log_impl(&dword_254573000, v8, v9, v19, v15, 0x16u);
      sub_254579D40(v16, &qword_27F605020, &qword_25459CC38);
      MEMORY[0x259C11390](v16, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x259C11390](v17, -1, -1);
      v24 = v15;
      v4 = v29;
      MEMORY[0x259C11390](v24, -1, -1);

      v27(v28, v13);
      goto LABEL_8;
    }
  }

  else
  {
    sub_25459A230();
    v20 = v6;
    v8 = sub_25459A210();
    v9 = sub_25459A950();

    v21 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 104);
    v12 = *(v0 + 48);
    v13 = *(v0 + 32);
    if (v21)
    {
      v22 = *(v0 + 24);
      v29 = 0;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v28 = v12;
      v17 = swift_slowAlloc();
      v30 = v17;
      *v15 = 138412546;
      *(v15 + 4) = v22;
      *v16 = v22;
      *(v15 + 12) = 2080;
      v27 = v11;
      v23 = v22;
      *(v15 + 14) = sub_254581894(0xD000000000000010, 0x800000025459EE20, &v30);
      v19 = "%@%s HMHomeManager is still nil! Unexpected!";
      goto LABEL_6;
    }
  }

  v11(v12, v13);
LABEL_8:
  **(v0 + 16) = v4;

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_254581338()
{

  v1 = *(v0 + 8);

  return v1();
}

char *sub_254581438(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_25459A9E0();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_2545822C8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x259C10840](i, a1);
        sub_254582148(0, &qword_27F605060, 0x277D14A18);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_2545822C8((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_2545824C0(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_254582148(0, &qword_27F605060, 0x277D14A18);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_2545822C8((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_2545824C0(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_254581634(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605070, &qword_25459CC78);
  v10 = *(type metadata accessor for ScheduleRuleDisplayInfo(0) - 8);
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
  v15 = *(type metadata accessor for ScheduleRuleDisplayInfo(0) - 8);
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

void *sub_25458180C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605050, &qword_25459CC70);
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

unint64_t sub_254581894(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_254581960(v11, 0, 0, 1, a1, a2);
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
    sub_254581EF8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_254581960(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_254581A6C(a5, a6);
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
    result = sub_25459AA50();
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

void *sub_254581A6C(uint64_t a1, unint64_t a2)
{
  v3 = sub_254581AB8(a1, a2);
  sub_254581BE8(&unk_286673610);
  return v3;
}

void *sub_254581AB8(uint64_t a1, unint64_t a2)
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

  v6 = sub_254581CD4(v5, 0);
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

  result = sub_25459AA50();
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
        v10 = sub_25459A780();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_254581CD4(v10, 0);
        result = sub_25459AA00();
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

uint64_t sub_254581BE8(uint64_t result)
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

  result = sub_254581D48(result, v11, 1, v3);
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

void *sub_254581CD4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605030, &qword_25459CC40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_254581D48(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605030, &qword_25459CC40);
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

void sub_254581E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
  }
}

uint64_t sub_254581EF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_254581F58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_254581FA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_254582054;

  return sub_254580BF0(a1, v4, v5, v6);
}

uint64_t sub_254582054()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_254582148(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_254582190()
{
  result = qword_27F605068;
  if (!qword_27F605068)
  {
    sub_254582148(255, &qword_27F605060, 0x277D14A18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F605068);
  }

  return result;
}

void *sub_2545821F8(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_25459A9E0();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_25458180C(v2, 0);

    v1 = sub_2545825E0(&v5, v3 + 4, v2, v1);
    sub_2545827FC(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

void *sub_2545822A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2545822E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2545822C8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2545824D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2545822E8(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605070, &qword_25459CC78);
  v10 = *(type metadata accessor for ScheduleRuleDisplayInfo(0) - 8);
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
  v15 = *(type metadata accessor for ScheduleRuleDisplayInfo(0) - 8);
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

_OWORD *sub_2545824C0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

char *sub_2545824D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605078, &qword_25459CC80);
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

void *sub_2545825E0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_25459A9D0();
  sub_254582148(0, &qword_27F605060, 0x277D14A18);
  sub_254582190();
  result = sub_25459A910();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_25459A9F0())
      {
        goto LABEL_30;
      }

      sub_254582148(0, &qword_27F605060, 0x277D14A18);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

uint64_t sub_254582808()
{
  sub_254582868();
  result = sub_25459A990();
  qword_27F606340 = result;
  return result;
}

unint64_t sub_254582868()
{
  result = qword_27F605080;
  if (!qword_27F605080)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F605080);
  }

  return result;
}

uint64_t sub_2545828B4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 6710863;
    }

    else
    {
      v3 = 0x6F6C6F432066664FLL;
    }

    if (v2 == 2)
    {
      v4 = 0xE300000000000000;
    }

    else
    {
      v4 = 0xE900000000000072;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x6574696857206E4FLL;
    }

    else
    {
      v3 = 28239;
    }

    if (v2)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  v5 = 0xE200000000000000;
  v6 = 28239;
  v7 = 0xE300000000000000;
  v8 = 6710863;
  if (a2 != 2)
  {
    v8 = 0x6F6C6F432066664FLL;
    v7 = 0xE900000000000072;
  }

  if (a2)
  {
    v6 = 0x6574696857206E4FLL;
    v5 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25459AB70();
  }

  return v11 & 1;
}

uint64_t AnimatedIcon.init(iconKind:iconState:size:useAssetMarginSize:removeColor:rasterizationScale:)@<X0>(char *a1@<X0>, char *a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v16 = *a1;
  v17 = *a2;
  v18 = type metadata accessor for AnimatedIcon(0);
  type metadata accessor for AnimatedIcon.Model(0);
  sub_25459A6C0();
  v19 = *(v18 + 24);
  *(a7 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605088, &qword_25459CCD0);
  swift_storeEnumTagMultiPayload();
  v20 = a7 + *(v18 + 28);
  result = swift_getKeyPath();
  *v20 = result;
  *(v20 + 8) = 0;
  *a7 = v16;
  *(a7 + 1) = v17;
  *(a7 + 8) = a8;
  *(a7 + 16) = a9;
  *(a7 + 24) = a3;
  *(a7 + 25) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6 & 1;
  return result;
}

uint64_t AnimatedIcon.body.getter@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v55 = sub_25459A2D0();
  v56 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v50 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for AnimatedIcon(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v49 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605090, &qword_25459CD08);
  MEMORY[0x28223BE20](v6);
  v8 = &v45 - v7;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605098, &qword_25459CD10);
  v52 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v59 = &v45 - v9;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6050A0, &qword_25459CD18);
  v54 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v60 = &v45 - v10;
  v11 = *v1;
  v12 = *(v1 + 8);
  v13 = *(v1 + 16);
  v69 = *(v1 + 24);
  v70 = *(v1 + 40);
  type metadata accessor for AnimatedIconLayer();
  v14 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6050A8, &qword_25459CD20);
  v58 = v1;
  sub_25459A6D0();
  swift_weakInit();

  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v11;
  *(v15 + 32) = v12;
  *(v15 + 40) = v13;
  *(v15 + 48) = v69;
  *(v15 + 64) = v70;
  sub_25459A300();
  sub_25459A6B0();
  sub_25459A310();
  v46 = v6;
  v16 = &v8[*(v6 + 36)];
  v17 = v67;
  *v16 = v66;
  *(v16 + 1) = v17;
  v18 = v69;
  *(v16 + 2) = v68;
  v61 = v11;
  v62 = v12;
  v63 = v13;
  v64 = v18;
  v65 = v70;
  v19 = v49;
  sub_254587324(v1, v49);
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = (v5 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v47 = v20;
  v23 = v19;
  sub_254587394(v19, v22 + v20);
  v24 = v22 + v21;
  *v24 = v11;
  v48 = v11;
  *(v24 + 8) = v12;
  *(v24 + 16) = v13;
  *(v24 + 24) = v69;
  *(v24 + 40) = v70;
  v25 = sub_254587400();
  v28 = sub_2545874B8(v25, v26, v27);
  sub_25459A630();

  sub_254579D40(v8, &qword_27F605090, &qword_25459CD08);
  v29 = v50;
  v30 = v58;
  sub_254583348(v50);
  sub_254587324(v30, v23);
  v31 = swift_allocObject();
  sub_254587394(v23, v31 + v20);
  v32 = v31 + v21;
  *v32 = v11;
  *(v32 + 8) = v12;
  *(v32 + 16) = v13;
  *(v32 + 24) = v69;
  *(v32 + 40) = v70;
  v61 = v46;
  v62 = &type metadata for AnimatedIcon.Configuration;
  v63 = v25;
  *&v64 = v28;
  v46 = MEMORY[0x277CE0E40];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = sub_254588B04(&qword_27F6050D8, MEMORY[0x277CDD6C8], MEMORY[0x277CDD6D0]);
  v35 = v59;
  v36 = v29;
  v37 = v51;
  v38 = v55;
  sub_25459A630();

  (*(v56 + 8))(v36, v38);
  v39 = v37;
  (*(v52 + 8))(v35, v37);
  sub_254587324(v58, v23);
  v40 = swift_allocObject();
  sub_254587394(v23, v40 + v47);
  v41 = v40 + v21;
  *v41 = v48;
  *(v41 + 8) = v12;
  *(v41 + 16) = v13;
  *(v41 + 24) = v69;
  *(v41 + 40) = v70;
  v61 = v39;
  v62 = v38;
  v63 = OpaqueTypeConformance2;
  *&v64 = v34;
  swift_getOpaqueTypeConformance2();
  v42 = v53;
  v43 = v60;
  sub_25459A620();

  return (*(v54 + 8))(v43, v42);
}

uint64_t sub_25458325C(void *a1, uint64_t a2, uint64_t *a3)
{
  sub_25459A8A0();
  sub_25459A890();
  sub_25459A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_2545848EC(a3, 2, 2, a1);
  }
}

uint64_t sub_254583348@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25459A3B0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605088, &qword_25459CCD0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for AnimatedIcon(0);
  sub_254588CE4(v1 + *(v10 + 24), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_25459A2D0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_25459A940();
    v13 = sub_25459A520();
    sub_25459A200();

    sub_25459A3A0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_254583538(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v4 = sub_25459A2D0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v16[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16[-1] - v9;
  sub_25459A8A0();
  sub_25459A890();
  sub_25459A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AnimatedIcon(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6050A8, &qword_25459CD20);
  sub_25459A6D0();
  v11 = a2[1];
  v15 = *a2;
  v16[0] = v11;
  *(v16 + 9) = *(a2 + 25);
  sub_254583348(v10);
  (*(v5 + 104))(v8, *MEMORY[0x277CDD6B8], v4);
  v12 = sub_25459A2C0();
  v13 = *(v5 + 8);
  v13(v8, v4);
  v13(v10, v4);
  sub_2545848EC(&v15, 2, v12 & 1, 0);
}

uint64_t sub_254583754(char a1, uint64_t a2, uint64_t *a3)
{
  sub_25459A8A0();
  sub_25459A890();
  sub_25459A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AnimatedIcon(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6050A8, &qword_25459CD20);
  sub_25459A6D0();
  sub_2545848EC(a3, a1 & 1, 2, 0);
}

uint64_t sub_254583844(uint64_t a1)
{
  v2 = sub_25459A2D0();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_25459A340();
}

__n128 sub_254583914@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_254588B04(&qword_27F605168, type metadata accessor for AnimatedIcon.Model, &unk_25459CFB0);
  sub_25459A1D0();

  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  result = *(v1 + 16);
  v6 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v6;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  return result;
}

__n128 sub_2545839CC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254588B04(&qword_27F605168, type metadata accessor for AnimatedIcon.Model, &unk_25459CFB0);
  sub_25459A1D0();

  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  result = *(v3 + 16);
  v7 = *(v3 + 32);
  *a2 = result;
  *(a2 + 16) = v7;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  return result;
}

uint64_t sub_254583A84(uint64_t result)
{
  v2 = *(result + 16);
  v18 = *result;
  *v19 = v2;
  *&v19[9] = *(result + 25);
  v3 = *(v1 + 40);
  if (v3 != 2)
  {
    v4 = *(v1 + 56);
    v5 = *(v1 + 48);
    v6 = *(v1 + 32);
    v13 = *(v1 + 16);
    v14 = v6;
    v15 = v3;
    v16 = v5;
    v17 = v4;
    if (v19[8] == 2)
    {
      goto LABEL_7;
    }

    v9 = v18;
    v10 = *v19;
    v11 = *&v19[8];
    v12 = v19[24];
    result = sub_25458893C(&v13, &v9);
    if ((result & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    v7 = *v19;
    *(v1 + 16) = v18;
    *(v1 + 32) = v7;
    *(v1 + 41) = *&v19[9];
    return result;
  }

  if (v19[8] == 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *&v13 = v1;
  sub_254588B04(&qword_27F605168, type metadata accessor for AnimatedIcon.Model, &unk_25459CFB0);
  sub_25459A1C0();
}

id sub_254583C28@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_254588B04(&qword_27F605168, type metadata accessor for AnimatedIcon.Model, &unk_25459CFB0);
  sub_25459A1D0();

  v3 = *(v1 + 72);
  *a1 = *(v1 + 64);
  a1[1] = v3;

  return v3;
}

id sub_254583CE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254588B04(&qword_27F605168, type metadata accessor for AnimatedIcon.Model, &unk_25459CFB0);
  sub_25459A1D0();

  v4 = *(v3 + 72);
  *a2 = *(v3 + 64);
  a2[1] = v4;

  return v4;
}

uint64_t sub_254583D98(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_254588B04(&qword_27F605168, type metadata accessor for AnimatedIcon.Model, &unk_25459CFB0);
  sub_25459A1C0();
}

void *sub_254583E68()
{
  swift_getKeyPath();
  sub_254588B04(&qword_27F605168, type metadata accessor for AnimatedIcon.Model, &unk_25459CFB0);
  sub_25459A1D0();

  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

id sub_254583F10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254588B04(&qword_27F605168, type metadata accessor for AnimatedIcon.Model, &unk_25459CFB0);
  sub_25459A1D0();

  v4 = *(v3 + 80);
  *a2 = v4;

  return v4;
}

void sub_254583FC8(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 80);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254588B04(&qword_27F605168, type metadata accessor for AnimatedIcon.Model, &unk_25459CFB0);
    sub_25459A1C0();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_254582148(0, &qword_27F605188, 0x277CD9FB8);
  v5 = v4;
  v6 = a1;
  v7 = sub_25459A980();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 80);
LABEL_8:
  *(v2 + 80) = a1;
}

uint64_t sub_254584158()
{
  swift_getKeyPath();
  sub_254588B04(&qword_27F605168, type metadata accessor for AnimatedIcon.Model, &unk_25459CFB0);
  sub_25459A1D0();

  return *(v0 + 88);
}

uint64_t sub_2545841F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254588B04(&qword_27F605168, type metadata accessor for AnimatedIcon.Model, &unk_25459CFB0);
  sub_25459A1D0();

  *a2 = *(v3 + 88);
  return result;
}

uint64_t sub_2545842A0(uint64_t result)
{
  if (*(v1 + 88) == (result & 1))
  {
    *(v1 + 88) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254588B04(&qword_27F605168, type metadata accessor for AnimatedIcon.Model, &unk_25459CFB0);
    sub_25459A1C0();
  }

  return result;
}

uint64_t sub_2545843B0()
{
  swift_getKeyPath();
  sub_254588B04(&qword_27F605168, type metadata accessor for AnimatedIcon.Model, &unk_25459CFB0);
  sub_25459A1D0();

  return *(v0 + 89);
}

uint64_t sub_254584450@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254588B04(&qword_27F605168, type metadata accessor for AnimatedIcon.Model, &unk_25459CFB0);
  sub_25459A1D0();

  *a2 = *(v3 + 89);
  return result;
}

uint64_t sub_2545844F8(uint64_t result)
{
  if (*(v1 + 89) == (result & 1))
  {
    *(v1 + 89) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254588B04(&qword_27F605168, type metadata accessor for AnimatedIcon.Model, &unk_25459CFB0);
    sub_25459A1C0();
  }

  return result;
}

uint64_t sub_254584608()
{
  swift_getKeyPath();
  sub_254588B04(&qword_27F605168, type metadata accessor for AnimatedIcon.Model, &unk_25459CFB0);
  sub_25459A1D0();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_2545846AC@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_254588B04(&qword_27F605168, type metadata accessor for AnimatedIcon.Model, &unk_25459CFB0);
  sub_25459A1D0();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void sub_254584758(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_10:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254588B04(&qword_27F605168, type metadata accessor for AnimatedIcon.Model, &unk_25459CFB0);
    sub_25459A1C0();

    return;
  }

  v2 = Strong;
  if (!a1)
  {

    goto LABEL_10;
  }

  type metadata accessor for AnimatedIconLayer();
  v3 = v2;
  v4 = sub_25459A980();

  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  swift_unknownObjectWeakAssign();
}

void sub_2545848EC(uint64_t *a1, char a2, int a3, void *a4)
{
  v5 = v4;
  v8 = *a1;
  v7 = a1[1];
  v10 = a1[2];
  v9 = a1[3];
  v44 = a1[4];
  v43 = *(a1 + 40);
  swift_getKeyPath();
  *&v51 = v4;
  sub_254588B04(&qword_27F605168, type metadata accessor for AnimatedIcon.Model, &unk_25459CFB0);
  sub_25459A1D0();

  if (*(v4 + 40) == 2)
  {
    if (v8 == 93)
    {
      v11 = 93;
LABEL_5:
      v41 = v11 == 93;
      goto LABEL_13;
    }

LABEL_7:
    v41 = 0;
    goto LABEL_13;
  }

  v11 = *(v4 + 16);
  if (v8 == 93)
  {
    goto LABEL_5;
  }

  if (v11 == 93)
  {
    goto LABEL_7;
  }

  v40 = v7;
  v12 = sub_254586C6C(v8);
  v14 = v13;
  if (v12 == sub_254586C6C(v11) && v14 == v15)
  {

    v41 = 1;
  }

  else
  {
    v41 = sub_25459AB70();
  }

  v7 = v40;
LABEL_13:
  if (a2 == 2)
  {
    swift_getKeyPath();
    *&v51 = v5;
    sub_25459A1D0();

    a2 = *(v5 + 88);
  }

  Strong = a4;
  if (!a4)
  {
    swift_getKeyPath();
    *&v51 = v5;
    sub_25459A1D0();

    Strong = swift_unknownObjectWeakLoadStrong();
  }

  if (a3 == 2)
  {
    v16 = a4;
    if (a2)
    {
      v17 = 0;
      if ((v41 & 1) == 0)
      {
        goto LABEL_31;
      }

LABEL_30:
      swift_getKeyPath();
      *&v51 = v5;
      sub_25459A1D0();

      if (!*(v5 + 72))
      {
        goto LABEL_31;
      }

LABEL_37:
      v42 = 1;
      goto LABEL_38;
    }

    v17 = 0;
LABEL_36:
    sub_2545858F8();
    goto LABEL_37;
  }

  sub_25459A8A0();
  v18 = a4;
  sub_25459A890();
  sub_25459A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    swift_getKeyPath();
    *&v51 = v5;
    sub_25459A1D0();

    v19 = *(v5 + 89);

    v17 = v19 ^ 1;
    if ((a2 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else
  {

    if ((a2 & 1) == 0)
    {
      v17 = 0;
      goto LABEL_36;
    }

    v17 = 0;
  }

  if (v41)
  {
    goto LABEL_30;
  }

LABEL_31:
  swift_getKeyPath();
  *&v51 = v5;
  sub_25459A1D0();

  if (*(v5 + 72))
  {
    sub_2545858F8();
  }

  LOBYTE(v51) = v8;
  sub_25458565C(&v51);
  v42 = 0;
LABEL_38:
  swift_getKeyPath();
  *&v51 = v5;
  sub_25459A1D0();

  v20 = *(v5 + 72);
  if (!v20)
  {
    goto LABEL_49;
  }

  v21 = v20;
  v22 = [v21 rootLayer];
  if (!v22)
  {
    if (!Strong)
    {
LABEL_47:
      v29 = Strong;

      goto LABEL_49;
    }

LABEL_45:
    *&v51 = v8;
    *(&v51 + 1) = v7;
    *v52 = v10;
    *&v52[8] = v9;
    *&v52[16] = v44;
    v52[24] = v43;
    v27 = v21;
    v28 = Strong;
    sub_2545860D0(v27, &v51);

    goto LABEL_49;
  }

  v23 = v10;
  v24 = v7;
  v25 = v22;
  v26 = [v22 superlayer];

  v7 = v24;
  if (!v26)
  {
    v10 = v23;
    if (!Strong)
    {
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  if (Strong)
  {
    swift_unknownObjectRelease();
    v10 = v23;
    if (Strong == v26)
    {

      goto LABEL_49;
    }

    goto LABEL_45;
  }

  v30 = 0;

  swift_unknownObjectRelease();
  v10 = v23;
LABEL_49:
  *&v49 = v8;
  *(&v49 + 1) = v7;
  *v50 = v10;
  *&v50[8] = v9;
  *&v50[16] = v44;
  v50[24] = v43;
  v31 = *(v5 + 32);
  v51 = *(v5 + 16);
  *v52 = v31;
  *&v52[9] = *(v5 + 41);
  if (sub_254588BA0(&v51, &v49))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v48 = v5;
    sub_25459A1C0();
  }

  else
  {
    v33 = *v50;
    *(v5 + 16) = v49;
    *(v5 + 32) = v33;
    *(v5 + 41) = *&v50[9];
  }

  if ((a2 & 1) == *(v5 + 88))
  {
    *(v5 + 88) = a2 & 1;
  }

  else
  {
    v34 = swift_getKeyPath();
    MEMORY[0x28223BE20](v34);
    v48 = v5;
    sub_25459A1C0();
  }

  if (a3 == 2)
  {
    swift_getKeyPath();
    v48 = v5;
    sub_25459A1D0();

    v35 = *(v5 + 89);
    a3 = v35;
  }

  else
  {
    v35 = *(v5 + 89);
  }

  if ((a3 ^ v35))
  {
    v36 = swift_getKeyPath();
    MEMORY[0x28223BE20](v36);
    v48 = v5;
    sub_25459A1C0();
  }

  else
  {
    *(v5 + 89) = a3 & 1;
  }

  v37 = Strong;
  sub_254584758(Strong);
  if (v17 & 1) != 0 && (LOBYTE(v48) = BYTE1(v8), (sub_254585198()))
  {
    if ((v8 - 17) < 4u)
    {
      v38 = 1;
    }

    else
    {
      v38 = v42;
    }

    if ((v8 - 17) <= 3u)
    {
      LOBYTE(v48) = 2;
      v39 = v38;
      sub_2545852B8(0, &v48);
      v38 = v39;
    }
  }

  else if ((v8 - 17) < 4u)
  {
    v38 = 1;
  }

  else
  {
    v38 = v42;
  }

  LOBYTE(v48) = 4;
  sub_2545852B8(v38, &v48);
}

uint64_t sub_254585198()
{
  v1 = *v0;
  if (v1 <= 1 && !*v0)
  {
    v2 = 1;
LABEL_9:

    return v2 & 1;
  }

  v3 = sub_25459AB70();

  if ((v3 & 1) == 0)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_25459AB70();
    }

    goto LABEL_9;
  }

  v2 = 1;
  return v2 & 1;
}

void sub_2545852B8(char a1, unsigned __int8 *a2)
{
  v4 = *a2;
  swift_getKeyPath();
  sub_254588B04(&qword_27F605168, type metadata accessor for AnimatedIcon.Model, &unk_25459CFB0);
  sub_25459A1D0();

  v5 = *(v2 + 80);
  if (v5)
  {
    swift_getKeyPath();
    v6 = v5;
    sub_25459A1D0();

    v7 = *(v2 + 72);
    if (!v7)
    {
LABEL_22:

      return;
    }

    if (v4 == 4)
    {
      swift_getKeyPath();
      v8 = v7;
      sub_25459A1D0();

      if (*(v2 + 40) == 2)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v9 = v7;
    }

    v10 = [v7 rootLayer];
    if (v10)
    {
      v8 = v10;
      v11 = sub_25459A730();

      v12 = [v8 stateWithName_];

      if (!v12)
      {
        v13 = v7;
LABEL_20:

        v6 = v13;
        goto LABEL_21;
      }

      v13 = v8;
      v14 = [v6 stateOfLayer_];
      if (v14)
      {
        v15 = v14;
        sub_254582148(0, &qword_27F605180, 0x277CD9FA8);
        v16 = v12;
        v17 = sub_25459A980();

        if (v17)
        {
          v18 = v7;

          v19 = v13;
          v7 = v13;
          v13 = v18;
          v12 = v6;
LABEL_19:

          v6 = v7;
          v8 = v12;
          goto LABEL_20;
        }
      }

      else
      {
        v20 = v12;
      }

      if ((a1 & 1) == 0 || (v21 = [objc_opt_self() areAnimationsEnabled], LODWORD(v22) = 1.0, (v21 & 1) == 0))
      {
        v22 = 0.0;
      }

      [v6 setState:v12 ofLayer:v13 transitionSpeed:v22];

      [v6 cancelTimers];
      v19 = v6;
      goto LABEL_19;
    }

    v8 = v7;
LABEL_21:

    v6 = v8;
    goto LABEL_22;
  }
}

uint64_t AnimatedIcon.IconState.rawValue.getter()
{
  v1 = 28239;
  v2 = 6710863;
  if (*v0 != 2)
  {
    v2 = 0x6F6C6F432066664FLL;
  }

  if (*v0)
  {
    v1 = 0x6574696857206E4FLL;
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

void sub_25458565C(unsigned __int8 *a1)
{
  v2 = *a1;
  if (qword_27F604BA0 != -1)
  {
    swift_once();
  }

  v3 = sub_254586AC8(v15);
  v4 = sub_254586B18(v14, v2);
  if (*v5)
  {
    v6 = sub_254586BDC();
    (v4)(v14, 0);
    (v3)(v15, 0);
    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    (v4)(v14, 0);
    (v3)(v15, 0);
  }

  v7 = sub_254586C6C(v2);
  v6 = _s12HomeUICommon19MicaPackageProviderC4loadySo9CAPackageCSgSSF_0(v7, v8);

LABEL_8:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v15[0] = v1;
  sub_254588B04(&qword_27F605168, type metadata accessor for AnimatedIcon.Model, &unk_25459CFB0);
  sub_25459A1C0();

  swift_getKeyPath();
  v15[0] = v1;
  sub_25459A1D0();

  v10 = *(v1 + 72);
  if (v10)
  {
    v11 = v10;
    v12 = [v11 rootLayer];
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(MEMORY[0x277CD9FB8]) initWithLayer_];

  sub_254583FC8(v13);
}

void sub_2545858F8()
{
  v1 = v0;
  swift_getKeyPath();
  *&v10 = v0;
  sub_254588B04(&qword_27F605168, type metadata accessor for AnimatedIcon.Model, &unk_25459CFB0);
  sub_25459A1D0();

  v2 = *(v0 + 72);
  if (v2)
  {
    v3 = *(v0 + 64);
    v4 = v2;
    v5 = [v4 rootLayer];
    [v5 removeFromSuperlayer];

    swift_getKeyPath();
    *&v10 = v1;
    sub_25459A1D0();

    v6 = *(v1 + 80);
    if (v6)
    {
      if ([v6 removeAllStateChanges])
      {
        sub_25459A9B0();
        swift_unknownObjectRelease();
      }

      else
      {
        v8 = 0u;
        v9 = 0u;
      }

      v10 = v8;
      v11 = v9;
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }

    sub_254579D40(&v10, &qword_27F605158, &qword_25459CFF8);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *&v10 = v1;
    sub_25459A1C0();

    if (qword_27F604BA0 != -1)
    {
      swift_once();
    }

    sub_254585B4C(v3, v4);
  }
}

unint64_t sub_254585B4C(uint64_t a1, void *a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 24);
  *(v3 + 24) = 0x8000000000000000;
  result = sub_254588354(a1);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_12;
  }

  v15 = v10;
  if (v8[3] < v14)
  {
    sub_2545880A8(v14, isUniquelyReferenced_nonNull_native);
    result = sub_254588354(a1);
    if ((v15 & 1) == (v16 & 1))
    {
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605170, &qword_25459D050);
    result = sub_25459ABA0();
    __break(1u);
  }

  if (isUniquelyReferenced_nonNull_native)
  {
LABEL_6:
    *(v3 + 24) = v8;
    if (v15)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v20 = result;
  sub_254588688();
  result = v20;
  *(v3 + 24) = v8;
  if (v15)
  {
LABEL_9:
    v19 = (v8[7] + 8 * result);
    MEMORY[0x259C105D0]();
    if (*((*v19 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_10:
      sub_25459A830();
      return swift_endAccess();
    }

LABEL_12:
    sub_25459A800();
    goto LABEL_10;
  }

LABEL_7:
  v8[(result >> 6) + 8] |= 1 << result;
  *(v8[6] + result) = a1;
  *(v8[7] + 8 * result) = MEMORY[0x277D84F90];
  v17 = v8[2];
  v13 = __OFADD__(v17, 1);
  v18 = v17 + 1;
  if (!v13)
  {
    v8[2] = v18;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_254585D04()
{
  MEMORY[0x259C11450](v0 + 12);
  v1 = OBJC_IVAR____TtCV12HomeUICommon12AnimatedIcon5Model___observationRegistrar;
  v2 = sub_25459A1F0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t static AnimatedIcon.IconState.dashboardTreatment(isActivated:canBeToggled:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char *a3@<X8>)
{
  if ((result & 1) == 0)
  {
    a2 = 3;
  }

  *a3 = a2;
  return result;
}

HomeUICommon::AnimatedIcon::IconState_optional __swiftcall AnimatedIcon.IconState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25459AB40();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_254585E40()
{
  sub_25459ABB0();
  sub_25459A760();

  return sub_25459ABE0();
}

uint64_t sub_254585EF4(uint64_t a1)
{
  sub_25459A760();
}

uint64_t sub_254585F94(uint64_t a1)
{
  sub_25459ABB0();
  sub_25459A760();

  return sub_25459ABE0();
}

void sub_254586050(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 28239;
  v4 = 0xE300000000000000;
  v5 = 6710863;
  if (*v1 != 2)
  {
    v5 = 0x6F6C6F432066664FLL;
    v4 = 0xE900000000000072;
  }

  if (*v1)
  {
    v3 = 0x6574696857206E4FLL;
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

void sub_2545860D0(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 25);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  swift_unknownObjectWeakAssign();
  v2[OBJC_IVAR____TtC12HomeUICommon17AnimatedIconLayer_useAssetMarginSize] = v6;
  v10 = &v2[OBJC_IVAR____TtC12HomeUICommon17AnimatedIconLayer_size];
  *v10 = v4;
  *(v10 + 1) = v5;
  v10[16] = 0;
  v11 = [a1 rootLayer];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 superlayer];
    if (!v13 || (v14 = v13, v13, v14 != v2))
    {
      [v2 addSublayer_];
    }
  }

  if (v7 & 1 | ((v9 & 1) == 0))
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v8;
    *(v15 + 24) = v9;
    v17[4] = sub_254588A9C;
    v17[5] = v15;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 1107296256;
    v17[2] = sub_25458649C;
    v17[3] = &block_descriptor;
    v16 = _Block_copy(v17);

    [a1 foreachLayer_];
    _Block_release(v16);
  }
}

id sub_254586264(void *a1, uint64_t a2, char a3)
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = objc_opt_self();
    v9 = a1;
    v10 = [v8 whiteColor];
    v11 = [v7 fillColor];
    if (v11)
    {
      v12 = v11;
      Alpha = CGColorGetAlpha(v11);
    }

    else
    {
      Alpha = 0.0;
    }

    v19 = [v10 colorWithAlphaComponent_];

    v20 = [v19 CGColor];
    [v7 setFillColor_];
  }

  else
  {
    v14 = [a1 backgroundColor];
    if (!v14)
    {
      goto LABEL_12;
    }

    v15 = [objc_opt_self() whiteColor];
    v16 = [a1 backgroundColor];
    if (v16)
    {
      v17 = v16;
      v18 = CGColorGetAlpha(v16);
    }

    else
    {
      v18 = 0.0;
    }

    v21 = [v15 colorWithAlphaComponent_];

    v20 = [v21 CGColor];
    [a1 setBackgroundColor_];
  }

LABEL_12:
  if (a3)
  {
    [a1 rasterizationScale];
  }

  else
  {
    v22 = *&a2;
  }

  return [a1 setRasterizationScale_];
}

void sub_25458649C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_254586504(uint64_t a1)
{
  v31.receiver = v1;
  v31.super_class = type metadata accessor for AnimatedIconLayer();
  objc_msgSendSuper2(&v31, sel_layoutSublayers);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong rootLayer];
    if (v4)
    {
      v5 = v4;
      v6 = &v1[OBJC_IVAR____TtC12HomeUICommon17AnimatedIconLayer_size];
      if ((v1[OBJC_IVAR____TtC12HomeUICommon17AnimatedIconLayer_size + 16] & 1) == 0)
      {
        v8 = *v6;
        v7 = v6[1];
        v9 = objc_opt_self();
        [v9 begin];
        [v9 setDisableActions_];
        v10 = v1[OBJC_IVAR____TtC12HomeUICommon17AnimatedIconLayer_useAssetMarginSize];
        if (v10 != 2 && (v10 & 1) != 0)
        {
          v11 = sub_25459A730();
          v12 = [v3 publishedObjectWithName_];

          if (v12)
          {
            sub_25459A9B0();
            swift_unknownObjectRelease();
          }

          else
          {
            v28 = 0u;
            v29 = 0u;
          }

          *&v30.m11 = v28;
          *&v30.m13 = v29;
          if (*(&v29 + 1))
          {
            sub_254582148(0, &qword_27F605160, 0x277CD9ED0);
            if (swift_dynamicCast())
            {
              [v27 bounds];
              Height = CGRectGetHeight(v32);
              [v27 bounds];
              Width = CGRectGetWidth(v33);
              [v5 bounds];
              v16 = v15;
              v18 = v17;
              [v27 bounds];
              v21 = v16 - v20;
              if (Width < Height)
              {
                v21 = v18 - v19;
              }

              v22 = v21 * 0.5;
              [v5 bounds];
              v35 = CGRectInset(v34, v22, v22);
              [v5 setBounds_];
            }
          }

          else
          {
            sub_254579D40(&v30, &qword_27F605158, &qword_25459CFF8);
          }
        }

        [v5 bounds];
        if (v7 / v24 >= v8 / v23)
        {
          v25 = v8 / v23;
        }

        else
        {
          v25 = v7 / v24;
        }

        [v1 bounds];
        MidX = CGRectGetMidX(v36);
        [v1 bounds];
        [v5 setPosition_];
        CATransform3DMakeScale(&v30, v25, v25, 1.0);
        [v5 setTransform_];
        [v5 setGeometryFlipped_];
        [v9 commit];
      }
    }

    else
    {
      v5 = v3;
    }
  }
}

id sub_2545869B8(void *a1)
{
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC12HomeUICommon17AnimatedIconLayer_useAssetMarginSize] = 2;
  v3 = &v1[OBJC_IVAR____TtC12HomeUICommon17AnimatedIconLayer_size];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for AnimatedIconLayer();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_254586A84(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AnimatedIconLayer();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t (*sub_254586B18(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_254587D70(v4, a2);
  return sub_254586B90;
}

void sub_254586B90(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_254586BDC()
{
  if (!(*v0 >> 62))
  {
    result = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    result = sub_254588874();
    if (result)
    {
      return result;
    }

    if (*v0 >> 62)
    {
      v4 = sub_25459A9E0();
      v3 = __OFSUB__(v4, 1);
      result = v4 - 1;
      if (!v3)
      {
        return sub_2545887E4(result);
      }
    }

    else
    {
      v2 = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v3 = __OFSUB__(v2, 1);
      result = v2 - 1;
      if (!v3)
      {
        return sub_2545887E4(result);
      }
    }

    __break(1u);
    return result;
  }

  result = sub_25459A9E0();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

unint64_t sub_254586C6C(char a1)
{
  result = 0xD000000000000022;
  switch(a1)
  {
    case 1:
    case 4:
    case 15:
    case 31:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 62:
    case 65:
      result = 0xD000000000000024;
      break;
    case 2:
    case 5:
    case 10:
    case 21:
    case 28:
    case 63:
    case 81:
      result = 0xD000000000000025;
      break;
    case 3:
    case 11:
    case 12:
    case 17:
    case 22:
    case 27:
    case 30:
    case 34:
    case 38:
    case 41:
    case 49:
    case 61:
      result = 0xD000000000000023;
      break;
    case 6:
      result = 0xD00000000000002BLL;
      break;
    case 7:
    case 67:
      result = 0xD00000000000001FLL;
      break;
    case 8:
    case 19:
    case 35:
      result = 0xD000000000000020;
      break;
    case 9:
    case 14:
      result = 0xD00000000000001DLL;
      break;
    case 13:
    case 18:
    case 39:
    case 56:
      result = 0xD00000000000002CLL;
      break;
    case 16:
    case 57:
    case 68:
    case 74:
      result = 0xD00000000000002DLL;
      break;
    case 20:
    case 24:
    case 36:
    case 50:
    case 51:
      result = 0xD000000000000021;
      break;
    case 23:
    case 29:
    case 52:
    case 55:
    case 84:
      result = 0xD000000000000029;
      break;
    case 32:
    case 37:
    case 54:
    case 58:
    case 59:
    case 73:
    case 83:
      result = 0xD000000000000026;
      break;
    case 33:
    case 53:
    case 60:
    case 82:
    case 85:
    case 91:
      result = 0xD000000000000027;
      break;
    case 40:
    case 80:
      result = 0xD000000000000031;
      break;
    case 64:
    case 70:
    case 72:
    case 92:
      result = 0xD000000000000028;
      break;
    case 66:
      result = 0xD00000000000002ALL;
      break;
    case 71:
      result = 0xD000000000000030;
      break;
    case 75:
    case 88:
      result = 0xD000000000000037;
      break;
    case 76:
    case 89:
      result = 0xD000000000000035;
      break;
    case 77:
      result = 0xD00000000000002FLL;
      break;
    case 78:
      result = 0xD000000000000033;
      break;
    case 79:
    case 86:
      result = 0xD000000000000032;
      break;
    case 87:
    case 90:
      result = 0xD000000000000036;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25458721C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AnimatedIcon.Model(0);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 16) = 0;
  *(v2 + 40) = xmmword_25459CC90;
  *(v2 + 56) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 64) = 0;
  *(v2 + 88) = 256;
  swift_unknownObjectWeakInit();
  result = sub_25459A1E0();
  *a1 = v2;
  return result;
}

uint64_t sub_2545872BC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254587324(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnimatedIcon(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254587388(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_254587394(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnimatedIcon(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_254587400()
{
  result = qword_27F6050B8;
  if (!qword_27F6050B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F605090, &qword_25459CD08);
    sub_254579EC0(&qword_27F6050C0, &qword_27F6050C8, &qword_25459CD30, MEMORY[0x277CDF660]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F6050B8);
  }

  return result;
}

unint64_t sub_2545874B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F6050D0;
  if (!qword_27F6050D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F6050D0);
  }

  return result;
}

uint64_t objectdestroy_8Tm()
{
  v1 = type metadata accessor for AnimatedIcon(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  v6 = v0 + v4 + v1[5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6050B0, &qword_25459CD28);
  (*(*(v7 - 8) + 8))(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6050A8, &qword_25459CD20);

  v8 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605088, &qword_25459CCD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_25459A2D0();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  sub_254587388(*(v5 + v1[7]), *(v5 + v1[7] + 8));

  return MEMORY[0x2821FE8E8](v0, ((v3 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 41, v2 | 7);
}

uint64_t sub_2545876C0(uint64_t a1)
{
  v3 = *(type metadata accessor for AnimatedIcon(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_254583538(v1 + v4, (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)), a1);
}

uint64_t sub_254587750(char a1)
{
  v3 = *(type metadata accessor for AnimatedIcon(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_254583754(a1, v1 + v4, v5);
}

unint64_t sub_25458780C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F6050E0;
  if (!qword_27F6050E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F6050E0);
  }

  return result;
}

void sub_2545878CC(uint64_t a1)
{
  sub_2545879D8(319, &qword_27F605110, type metadata accessor for AnimatedIcon.Model, MEMORY[0x277CE1438]);
  if (v1 <= 0x3F)
  {
    sub_2545879D8(319, &qword_27F605118, MEMORY[0x277CDD6C8], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_254587A3C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2545879D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_254587A3C()
{
  if (!qword_27F605120)
  {
    v0 = sub_25459A2F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F605120);
    }
  }
}

uint64_t sub_254587A94(uint64_t a1)
{
  result = sub_25459A1F0();
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

uint64_t getEnumTagSinglePayload for AnimatedIcon.IconState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AnimatedIcon.IconState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_254587CBC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_254587D10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

void (*sub_254587D70(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
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
  v5[8] = sub_254588074(v5);
  v5[9] = sub_254587E74((v5 + 4), a2, isUniquelyReferenced_nonNull_native);
  return sub_254587E14;
}

void sub_254587E14(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t *(*sub_254587E74(uint64_t a1, uint64_t a2, char a3))(uint64_t *result, char a2)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = sub_254588354(a2);
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
      sub_254588688();
      v9 = v17;
      goto LABEL_8;
    }

    sub_2545880A8(v14, a3 & 1);
    v9 = sub_254588354(a2);
    if ((v15 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605170, &qword_25459D050);
    result = sub_25459ABA0();
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
  return sub_254587F9C;
}

uint64_t *sub_254587F9C(uint64_t *result, char a2)
{
  v2 = *result;
  LOBYTE(v3) = *(result + 25);
  if (a2)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v4 = result[2];
    v5 = *result[1];
    if (*(result + 25))
    {
LABEL_9:
      *(v5[7] + 8 * v4) = v2;
      return result;
    }

    v6 = *(result + 24);
    v5[(v4 >> 6) + 8] |= 1 << v4;
    *(v5[6] + v4) = v6;
    v3 = v5[7];
    *(v3 + 8 * v4) = v2;
    v7 = v5[2];
    v8 = __OFADD__(v7, 1);
    v2 = v7 + 1;
    if (!v8)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v2)
  {
LABEL_10:
    if (v3)
    {
      return sub_2545883DC(result[2], *result[1]);
    }

    return result;
  }

  v4 = result[2];
  v5 = *result[1];
  if (v3)
  {
    goto LABEL_9;
  }

  v9 = *(result + 24);
  v5[(v4 >> 6) + 8] |= 1 << v4;
  *(v5[6] + v4) = v9;
  *(v5[7] + 8 * v4) = v2;
  v10 = v5[2];
  v8 = __OFADD__(v10, 1);
  v2 = v10 + 1;
  if (!v8)
  {
LABEL_14:
    v5[2] = v2;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_254588074(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_25458809C;
}

uint64_t sub_2545880A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605178, &qword_25459D058);
  v30 = v4;
  result = sub_25459AB10();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_25459ABB0();
      sub_254586C6C(v20);
      sub_25459A760();

      result = sub_25459ABE0();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_254588354(uint64_t a1)
{
  v1 = a1;
  sub_25459ABB0();
  sub_254586C6C(v1);
  sub_25459A760();

  v2 = sub_25459ABE0();

  return sub_254588584(v1, v2);
}

uint64_t sub_2545883DC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25459A9C0() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      sub_25459ABB0();
      sub_254586C6C(v9);
      sub_25459A760();

      result = sub_25459ABE0();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_254588584(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = sub_254586C6C(*(*(v2 + 48) + v4));
      v9 = v8;
      if (v7 == sub_254586C6C(a1) && v9 == v10)
      {
        break;
      }

      v12 = sub_25459AB70();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

void *sub_254588688()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605178, &qword_25459D058);
  v2 = *v0;
  v3 = sub_25459AB00();
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
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

unint64_t sub_2545887E4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_2545888D8(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

unint64_t sub_254588874()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_2545888D8(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2545888D8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_25459A9E0();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return MEMORY[0x2821FD130](0, v2, 0, a1);
}

uint64_t sub_25458893C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = *(a1 + 32);
  v25 = *(a1 + 40);
  v8 = *(a2 + 1);
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 25);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v15 = *a2;
  v16 = sub_254586C6C(*a1);
  v18 = v17;
  if (v16 == sub_254586C6C(v15) && v18 == v19)
  {
  }

  else
  {
    v20 = sub_25459AB70();

    result = 0;
    if ((v20 & 1) == 0)
    {
      return result;
    }
  }

  v22 = sub_2545828B4(v2, v8);
  result = 0;
  if (v22)
  {
    v23 = v3 == v9 && v4 == v10;
    if (v23 && ((v5 ^ v11) & 1) == 0 && ((v6 ^ v12) & 1) == 0)
    {
      if (v25)
      {
        if ((v14 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v7 == v13)
        {
          v24 = v14;
        }

        else
        {
          v24 = 1;
        }

        if (v24)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_254588B04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_254588B64()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(v1 + 72);
  *(v1 + 64) = v2;
  *(v1 + 72) = v3;
  v5 = v3;
}

BOOL sub_254588BA0(__int128 *a1, __int128 *a2)
{
  v4 = *(a1 + 3);
  v5 = *(a2 + 24);
  if (v4 == 2)
  {
    return v5 != 2;
  }

  v23 = v2;
  v24 = v3;
  v7 = *a2;
  v8 = *(a2 + 2);
  v9 = *(a2 + 40);
  v10 = *(a1 + 40);
  v11 = *(a1 + 4);
  v12 = *(a1 + 2);
  v18 = *a1;
  v19 = v12;
  v20 = v4;
  v21 = v11;
  v22 = v10;
  if (v5 == 2)
  {
    v13 = 1;
  }

  else
  {
    v14 = v7;
    v15 = v8;
    v16 = v5;
    v17 = v9;
    v13 = sub_25458893C(&v18, &v14) ^ 1;
  }

  return v13 & 1;
}

__n128 sub_254588C74()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = *v2;
  v4 = *(v2 + 16);
  *(v1 + 41) = *(v2 + 25);
  *(v1 + 16) = result;
  *(v1 + 32) = v4;
  return result;
}

void sub_254588CAC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 80);
  *(v1 + 80) = v2;
  v4 = v2;
}

uint64_t sub_254588CE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605088, &qword_25459CCD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254588DB4@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v26 = a5;
  v27 = a2;
  v28 = a1;
  v25 = *(a3 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v22);
  if ((*(v15 + 48))(v20, 1, v14) == 1)
  {
    return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  (*(v15 + 32))(v18, v20, v14);
  v28(v18, v12);
  result = (*(v15 + 8))(v18, v14);
  if (v6)
  {
    return (*(v25 + 32))(v26, v12, a3);
  }

  return result;
}

uint64_t IconStore.package(for:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v34 = a2;
  v5 = *(*v3 + 88);
  v6 = *(*v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_25459A9A0();
  v32 = *(v8 - 8);
  v33 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  v14 = *a1;
  v31 = sub_254589874(v37);
  v35 = v14;
  v36[39] = v14;
  type metadata accessor for IconStore.IconKind(255, v6, v5, v15);
  v16 = sub_25459A870();
  swift_getWitnessTable();
  sub_25459A6E0();
  v17 = sub_25459A6F0();
  if (*v18)
  {
    WitnessTable = swift_getWitnessTable();
    v20 = swift_getWitnessTable();
    MEMORY[0x259C10730](v16, WitnessTable, v20);
    v17(v36, 0);
    (v31)(v37, 0);
    v21 = *(AssociatedTypeWitness - 8);
    if ((*(v21 + 48))(v11, 1, AssociatedTypeWitness) != 1)
    {
      (*(v21 + 32))(v13, v11, AssociatedTypeWitness);
      v22 = (*(v21 + 56))(v13, 0, 1, AssociatedTypeWitness);
      v24 = v32;
      v23 = v33;
      goto LABEL_7;
    }
  }

  else
  {
    v17(v36, 0);
    (v31)(v37, 0);
    v21 = *(AssociatedTypeWitness - 8);
    (*(v21 + 56))(v11, 1, 1, AssociatedTypeWitness);
  }

  v37[0] = v35;
  v25 = IconStore.IconKind.rawValue.getter();
  (*(v5 + 16))(v25);

  v22 = (*(v21 + 48))(v11, 1, AssociatedTypeWitness);
  v24 = v32;
  v23 = v33;
  if (v22 != 1)
  {
    v22 = (*(v32 + 8))(v11, v33);
  }

LABEL_7:
  MEMORY[0x28223BE20](v22);
  *(&v30 - 4) = v6;
  *(&v30 - 3) = v5;
  *(&v30 - 16) = v35;
  v27 = type metadata accessor for IconStore.IconData(0, v6, v5, v26);
  sub_254588DB4(sub_25458A1D8, (&v30 - 6), MEMORY[0x277D84A98], v27, v28, v34);
  return (*(v24 + 8))(v13, v23);
}

uint64_t IconStore.cache(_:)(char *a1)
{
  v2 = v1;
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = v26 - v8;
  v10 = *a1;
  v11 = swift_allocObject();
  *(v11 + 16) = v5;
  *(v11 + 24) = v4;
  v13 = type metadata accessor for IconStore.IconData(0, v5, v4, v12);
  v14 = *(v7 + 16);
  v15 = &a1[*(v13 + 36)];
  v26[3] = v9;
  v14(v9, v15, AssociatedTypeWitness);
  v16 = *(*v2 + 104);
  swift_beginAccess();
  v29 = v10;
  v17 = swift_allocObject();
  v17[2] = v5;
  v17[3] = v4;
  v17[4] = sub_25458A2CC;
  v17[5] = v11;
  v26[2] = v11;
  swift_isUniquelyReferenced_nonNull_native();
  v28 = *(v2 + v16);
  v18 = v28;
  *(v2 + v16) = 0x8000000000000000;
  v20 = type metadata accessor for IconStore.IconKind(0, v5, v4, v19);
  WitnessTable = swift_getWitnessTable();
  v26[1] = sub_25458C56C(&v29, v20, WitnessTable);
  if (__OFADD__(*(v18 + 16), (v22 & 1) == 0))
  {
    __break(1u);
LABEL_8:
    result = sub_25459ABA0();
    __break(1u);
    return result;
  }

  v23 = v22;
  sub_25459A870();
  sub_25459AAD0();
  if (sub_25459AAB0())
  {
    sub_25458C56C(&v29, v20, WitnessTable);
    if ((v23 & 1) != (v24 & 1))
    {
      goto LABEL_8;
    }
  }

  *(v2 + v16) = v28;
  if ((v23 & 1) == 0)
  {
    v28 = (v17[4])();
    v27 = v29;
    sub_25459AAC0();
  }

  sub_25459A850();
  swift_endAccess();
}

uint64_t *IconStore.__allocating_init(provider:)(uint64_t a1)
{
  v2 = v1;
  swift_allocObject();
  v4 = sub_25458CB30(a1);
  (*(*(*(v2 + 80) - 8) + 8))(a1);
  return v4;
}

uint64_t *IconStore.init(provider:)(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_25458CB30(a1);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v4;
}

uint64_t IconStore.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return v0;
}

uint64_t IconStore.__deallocating_deinit()
{
  IconStore.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t IconStore.IconKind.rawValue.getter()
{
  result = 0xD000000000000022;
  switch(*v0)
  {
    case 1:
    case 4:
    case 0xF:
    case 0x1F:
    case 0x2A:
    case 0x2B:
    case 0x2C:
    case 0x2D:
    case 0x2E:
    case 0x2F:
    case 0x30:
    case 0x3E:
    case 0x41:
      result = 0xD000000000000024;
      break;
    case 2:
    case 5:
    case 0xA:
    case 0x15:
    case 0x1C:
    case 0x3F:
    case 0x51:
      result = 0xD000000000000025;
      break;
    case 3:
    case 0xB:
    case 0xC:
    case 0x11:
    case 0x16:
    case 0x1B:
    case 0x1E:
    case 0x22:
    case 0x26:
    case 0x29:
    case 0x31:
    case 0x3D:
      result = 0xD000000000000023;
      break;
    case 6:
      result = 0xD00000000000002BLL;
      break;
    case 7:
    case 0x43:
      result = 0xD00000000000001FLL;
      break;
    case 8:
    case 0x13:
    case 0x23:
      result = 0xD000000000000020;
      break;
    case 9:
    case 0xE:
      result = 0xD00000000000001DLL;
      break;
    case 0xD:
    case 0x12:
    case 0x27:
    case 0x38:
      result = 0xD00000000000002CLL;
      break;
    case 0x10:
    case 0x39:
    case 0x44:
    case 0x4A:
      result = 0xD00000000000002DLL;
      break;
    case 0x14:
    case 0x18:
    case 0x24:
    case 0x32:
    case 0x33:
      result = 0xD000000000000021;
      break;
    case 0x17:
    case 0x1D:
    case 0x34:
    case 0x37:
    case 0x54:
      result = 0xD000000000000029;
      break;
    case 0x20:
    case 0x25:
    case 0x36:
    case 0x3A:
    case 0x3B:
    case 0x49:
    case 0x53:
      result = 0xD000000000000026;
      break;
    case 0x21:
    case 0x35:
    case 0x3C:
    case 0x52:
    case 0x55:
    case 0x5B:
      result = 0xD000000000000027;
      break;
    case 0x28:
    case 0x50:
      result = 0xD000000000000031;
      break;
    case 0x40:
    case 0x46:
    case 0x48:
    case 0x5C:
      result = 0xD000000000000028;
      break;
    case 0x42:
      result = 0xD00000000000002ALL;
      break;
    case 0x47:
      result = 0xD000000000000030;
      break;
    case 0x4B:
    case 0x58:
      result = 0xD000000000000037;
      break;
    case 0x4C:
    case 0x59:
      result = 0xD000000000000035;
      break;
    case 0x4D:
      result = 0xD00000000000002FLL;
      break;
    case 0x4E:
      result = 0xD000000000000033;
      break;
    case 0x4F:
    case 0x56:
      result = 0xD000000000000032;
      break;
    case 0x57:
    case 0x5A:
      result = 0xD000000000000036;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25458A080@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v17 - v11;
  v18 = a2;
  (*(v13 + 16))(&v17 - v11, a1);
  sub_25458A214(&v18, v12, a3, a4, a5);
  v15 = type metadata accessor for IconStore.IconData(0, a3, a4, v14);
  return (*(*(v15 - 8) + 56))(a5, 0, 1, v15);
}

uint64_t sub_25458A214@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  *a5 = *a1;
  v7 = *(type metadata accessor for IconStore.IconData(0, a3, a4, a4) + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 32);

  return v9(&a5[v7], a2, AssociatedTypeWitness);
}

uint64_t sub_25458A2CC()
{
  swift_getAssociatedTypeWitness();

  return sub_25459A810();
}

uint64_t IconStore.IconKind.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_25459AB90();

  v6 = 0;
  v7 = 75;
  switch(v4)
  {
    case 0:
      goto LABEL_91;
    case 1:
      v6 = 1;
      goto LABEL_91;
    case 2:
      v6 = 2;
      goto LABEL_91;
    case 3:
      v6 = 3;
      goto LABEL_91;
    case 4:
      v6 = 4;
      goto LABEL_91;
    case 5:
      v6 = 5;
      goto LABEL_91;
    case 6:
      v6 = 6;
      goto LABEL_91;
    case 7:
      v6 = 7;
      goto LABEL_91;
    case 8:
      v6 = 8;
      goto LABEL_91;
    case 9:
      v6 = 9;
      goto LABEL_91;
    case 10:
      v6 = 10;
      goto LABEL_91;
    case 11:
      v6 = 11;
      goto LABEL_91;
    case 12:
      v6 = 12;
      goto LABEL_91;
    case 13:
      v6 = 13;
      goto LABEL_91;
    case 14:
      v6 = 14;
      goto LABEL_91;
    case 15:
      v6 = 15;
      goto LABEL_91;
    case 16:
      v6 = 16;
      goto LABEL_91;
    case 17:
      v6 = 17;
      goto LABEL_91;
    case 18:
      v6 = 18;
      goto LABEL_91;
    case 19:
      v6 = 19;
      goto LABEL_91;
    case 20:
      v6 = 20;
      goto LABEL_91;
    case 21:
      v6 = 21;
      goto LABEL_91;
    case 22:
      v6 = 22;
      goto LABEL_91;
    case 23:
      v6 = 23;
      goto LABEL_91;
    case 24:
      v6 = 24;
      goto LABEL_91;
    case 25:
      v6 = 25;
      goto LABEL_91;
    case 26:
      v6 = 26;
      goto LABEL_91;
    case 27:
      v6 = 27;
      goto LABEL_91;
    case 28:
      v6 = 28;
      goto LABEL_91;
    case 29:
      v6 = 29;
      goto LABEL_91;
    case 30:
      v6 = 30;
      goto LABEL_91;
    case 31:
      v6 = 31;
      goto LABEL_91;
    case 32:
      v6 = 32;
      goto LABEL_91;
    case 33:
      v6 = 33;
      goto LABEL_91;
    case 34:
      v6 = 34;
      goto LABEL_91;
    case 35:
      v6 = 35;
      goto LABEL_91;
    case 36:
      v6 = 36;
      goto LABEL_91;
    case 37:
      v6 = 37;
      goto LABEL_91;
    case 38:
      v6 = 38;
      goto LABEL_91;
    case 39:
      v6 = 39;
      goto LABEL_91;
    case 40:
      v6 = 40;
      goto LABEL_91;
    case 41:
      v6 = 41;
      goto LABEL_91;
    case 42:
      v6 = 42;
      goto LABEL_91;
    case 43:
      v6 = 43;
      goto LABEL_91;
    case 44:
      v6 = 44;
      goto LABEL_91;
    case 45:
      v6 = 45;
      goto LABEL_91;
    case 46:
      v6 = 46;
      goto LABEL_91;
    case 47:
      v6 = 47;
      goto LABEL_91;
    case 48:
      v6 = 48;
      goto LABEL_91;
    case 49:
      v6 = 49;
      goto LABEL_91;
    case 50:
      v6 = 50;
      goto LABEL_91;
    case 51:
      v6 = 51;
      goto LABEL_91;
    case 52:
      v6 = 52;
      goto LABEL_91;
    case 53:
      v6 = 53;
      goto LABEL_91;
    case 54:
      v6 = 54;
      goto LABEL_91;
    case 55:
      v6 = 55;
      goto LABEL_91;
    case 56:
      v6 = 56;
      goto LABEL_91;
    case 57:
      v6 = 57;
      goto LABEL_91;
    case 58:
      v6 = 58;
      goto LABEL_91;
    case 59:
      v6 = 59;
      goto LABEL_91;
    case 60:
      v6 = 60;
      goto LABEL_91;
    case 61:
      v6 = 61;
      goto LABEL_91;
    case 62:
      v6 = 62;
      goto LABEL_91;
    case 63:
      v6 = 63;
      goto LABEL_91;
    case 64:
      v6 = 64;
      goto LABEL_91;
    case 65:
      v6 = 65;
      goto LABEL_91;
    case 66:
      v6 = 66;
      goto LABEL_91;
    case 67:
      v6 = 67;
      goto LABEL_91;
    case 68:
      v6 = 68;
      goto LABEL_91;
    case 69:
      v6 = 69;
      goto LABEL_91;
    case 70:
      v6 = 70;
      goto LABEL_91;
    case 71:
      v6 = 71;
      goto LABEL_91;
    case 72:
      v6 = 72;
      goto LABEL_91;
    case 73:
      v6 = 73;
      goto LABEL_91;
    case 74:
      v6 = 74;
LABEL_91:
      v7 = v6;
      break;
    case 75:
      break;
    case 76:
      v7 = 76;
      break;
    case 77:
      v7 = 77;
      break;
    case 78:
      v7 = 78;
      break;
    case 79:
      v7 = 79;
      break;
    case 80:
      v7 = 80;
      break;
    case 81:
      v7 = 81;
      break;
    case 82:
      v7 = 82;
      break;
    case 83:
      v7 = 83;
      break;
    case 84:
      v7 = 84;
      break;
    case 85:
      v7 = 85;
      break;
    case 86:
      v7 = 86;
      break;
    case 87:
      v7 = 87;
      break;
    case 88:
      v7 = 88;
      break;
    case 89:
      v7 = 89;
      break;
    case 90:
      v7 = 90;
      break;
    case 91:
      v7 = 91;
      break;
    case 92:
      v7 = 92;
      break;
    default:
      v7 = 93;
      break;
  }

  *a3 = v7;
  return result;
}

uint64_t sub_25458A680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25458A6F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v6 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v6);
}

uint64_t sub_25458A760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25458A7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_25458A84C@<X0>(unint64_t *a1@<X8>)
{
  result = IconStore.IconKind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_25458A874()
{
  type metadata accessor for MicaPackageProvider();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605318, &qword_25459D388);
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  result = sub_25458C750(MEMORY[0x277D84F90]);
  *(v1 + 24) = result;
  qword_27F605190 = v1;
  return result;
}

uint64_t static IconStore<>.shared.getter()
{
  if (qword_27F604BA0 != -1)
  {
    swift_once();
  }
}

uint64_t static IconStore<>.iconSymbolToMicaPackageIdentifier(iconSymbol:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = result;
  if (result == 0xD00000000000001DLL && 0x800000025459F0B0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
  {
    v6 = 0;
  }

  else if (v4 == 0xD000000000000011 && 0x800000025459F0D0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
  {
    v6 = 1;
  }

  else if (v4 == 0xD000000000000011 && 0x800000025459F0F0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
  {
    v6 = 2;
  }

  else if (v4 == 0xD00000000000001CLL && 0x800000025459F110 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
  {
    v6 = 3;
  }

  else if (v4 == 0xD000000000000014 && 0x800000025459F130 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
  {
    v6 = 4;
  }

  else if (v4 == 0xD00000000000001FLL && 0x800000025459F150 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
  {
    v6 = 5;
  }

  else if (v4 == 0xD00000000000001FLL && 0x800000025459F170 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
  {
    v6 = 6;
  }

  else if (v4 == 0xD000000000000014 && 0x800000025459F190 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
  {
    v6 = 7;
  }

  else if (v4 == 0xD00000000000001BLL && 0x800000025459F1B0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
  {
    v6 = 8;
  }

  else if (v4 == 0xD000000000000012 && 0x800000025459F1D0 == a2 || (result = sub_25459AB70(), (result & 1) != 0) || v4 == 0xD000000000000010 && 0x800000025459F1F0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
  {
    v6 = 11;
  }

  else if (v4 == 0xD000000000000012 && 0x800000025459F210 == a2 || (result = sub_25459AB70(), (result & 1) != 0) || v4 == 0xD000000000000010 && 0x800000025459F230 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
  {
    v6 = 12;
  }

  else if (v4 == 0xD00000000000001DLL && 0x800000025459F250 == a2 || (result = sub_25459AB70(), (result & 1) != 0) || v4 == 0xD00000000000001BLL && 0x800000025459F270 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
  {
    v6 = 13;
  }

  else if (v4 == 0xD000000000000015 && 0x800000025459F290 == a2 || (result = sub_25459AB70(), (result & 1) != 0) || v4 == 0xD000000000000013 && 0x800000025459F2B0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
  {
    v6 = 10;
  }

  else if (v4 == 0xD000000000000016 && 0x800000025459F2D0 == a2 || (result = sub_25459AB70(), (result & 1) != 0) || v4 == 0xD000000000000014 && 0x800000025459F2F0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
  {
    v6 = 9;
  }

  else if (v4 == 0xD00000000000001DLL && 0x800000025459F310 == a2 || (result = sub_25459AB70(), (result & 1) != 0) || v4 == 0xD00000000000001BLL && 0x800000025459F330 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
  {
    v6 = 15;
  }

  else if (v4 == 0xD00000000000001ELL && 0x800000025459F350 == a2 || (result = sub_25459AB70(), (result & 1) != 0) || v4 == 0xD00000000000001CLL && 0x800000025459F370 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
  {
    v6 = 16;
  }

  else if (v4 == 0xD000000000000016 && 0x800000025459F390 == a2 || (result = sub_25459AB70(), (result & 1) != 0) || v4 == 0xD000000000000014 && 0x800000025459F3B0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
  {
    v6 = 14;
  }

  else if (v4 == 0xD000000000000010 && 0x800000025459F3D0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
  {
    v6 = 17;
  }

  else if (v4 == 0xD00000000000001ALL && 0x800000025459F3F0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
  {
    v6 = 18;
  }

  else
  {
    result = 0x6B7365642E6E6166;
    if (v4 == 0x6B7365642E6E6166 && a2 == 0xE800000000000000 || (result = sub_25459AB70(), (result & 1) != 0))
    {
      v6 = 19;
    }

    else
    {
      result = 0x6F6F6C662E6E6166;
      if (v4 == 0x6F6F6C662E6E6166 && a2 == 0xE900000000000072 || (result = sub_25459AB70(), (result & 1) != 0))
      {
        v6 = 20;
      }

      else
      {
        result = 0x696C65646E616863;
        if (v4 == 0x696C65646E616863 && a2 == 0xEF6C6C69662E7265 || (result = sub_25459AB70(), (result & 1) != 0))
        {
          v6 = 22;
        }

        else if (v4 == 0xD000000000000011 && 0x800000025459F410 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
        {
          v6 = 21;
        }

        else
        {
          result = 0x7365642E706D616CLL;
          if (v4 == 0x7365642E706D616CLL && a2 == 0xEE006C6C69662E6BLL || (result = sub_25459AB70(), (result & 1) != 0))
          {
            v6 = 24;
          }

          else
          {
            result = 0x6F6C662E706D616CLL;
            if (v4 == 0x6F6C662E706D616CLL && a2 == 0xEF6C6C69662E726FLL || (result = sub_25459AB70(), (result & 1) != 0))
            {
              v6 = 25;
            }

            else
            {
              result = 0x6261742E706D616CLL;
              if (v4 == 0x6261742E706D616CLL && a2 == 0xEF6C6C69662E656CLL || (result = sub_25459AB70(), (result & 1) != 0))
              {
                v6 = 34;
              }

              else if (v4 == 0xD00000000000001ELL && 0x800000025459F430 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
              {
                v6 = 23;
              }

              else if (v4 == 0xD000000000000010 && 0x800000025459F450 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
              {
                v6 = 30;
              }

              else if (v4 == 0xD000000000000015 && 0x800000025459F470 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
              {
                v6 = 33;
              }

              else if (v4 == 0xD000000000000013 && 0x800000025459F490 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
              {
                v6 = 32;
              }

              else if (v4 == 0xD000000000000011 && 0x800000025459F4B0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
              {
                v6 = 31;
              }

              else if (v4 == 0xD000000000000010 && 0x800000025459F4D0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
              {
                v6 = 27;
              }

              else if (v4 == 0xD000000000000012 && 0x800000025459F4F0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
              {
                v6 = 28;
              }

              else if (v4 == 0xD000000000000017 && 0x800000025459F510 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
              {
                v6 = 29;
              }

              else if (v4 == 0x6C7562746867696CLL && a2 == 0xE900000000000062)
              {
                v6 = 26;
              }

              else
              {
                result = sub_25459AB70();
                v8 = v4 == 0x6C7562746867696CLL && a2 == 0xEE006C6C69662E62;
                v6 = 26;
                if ((result & 1) == 0 && !v8)
                {
                  result = sub_25459AB70();
                  if ((result & 1) == 0)
                  {
                    result = 0x2E74726F70726961;
                    if (v4 == 0x2E74726F70726961 && a2 == 0xEF656D6572747865 || (result = sub_25459AB70(), (result & 1) != 0))
                    {
                      v6 = 35;
                    }

                    else if (v4 == 0xD000000000000011 && 0x800000025459F530 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                    {
                      v6 = 36;
                    }

                    else
                    {
                      result = 0x746F6D65722E7661;
                      if (v4 == 0x746F6D65722E7661 && a2 == 0xEE006C6C69662E65 || (result = sub_25459AB70(), (result & 1) != 0))
                      {
                        v6 = 37;
                      }

                      else
                      {
                        result = 0x6C6C69662E7674;
                        if (v4 == 0x6C6C69662E7674 && a2 == 0xE700000000000000 || (result = sub_25459AB70(), (result & 1) != 0))
                        {
                          v6 = 38;
                        }

                        else if (v4 == 0xD000000000000014 && 0x800000025459F550 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                        {
                          v6 = 39;
                        }

                        else
                        {
                          result = 0x697473616964656DLL;
                          if (v4 == 0x697473616964656DLL && a2 == 0xEA00000000006B63 || (result = sub_25459AB70(), (result & 1) != 0))
                          {
                            v6 = 40;
                          }

                          else if (v4 == 0xD000000000000010 && 0x800000025459F570 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                          {
                            v6 = 41;
                          }

                          else if (v4 == 0xD000000000000017 && 0x800000025459F590 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                          {
                            v6 = 42;
                          }

                          else if (v4 == 0xD000000000000017 && 0x800000025459F5B0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                          {
                            v6 = 43;
                          }

                          else if (v4 == 0xD000000000000017 && 0x800000025459F5D0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                          {
                            v6 = 44;
                          }

                          else if (v4 == 0xD000000000000017 && 0x800000025459F5F0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                          {
                            v6 = 45;
                          }

                          else if (v4 == 0xD000000000000017 && 0x800000025459F610 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                          {
                            v6 = 46;
                          }

                          else if (v4 == 0xD000000000000017 && 0x800000025459F630 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                          {
                            v6 = 47;
                          }

                          else if (v4 == 0xD000000000000017 && 0x800000025459F650 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                          {
                            v6 = 48;
                          }

                          else if (v4 == 0xD000000000000016 && 0x800000025459F670 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                          {
                            v6 = 49;
                          }

                          else
                          {
                            result = 0x6C69662E6B636F6CLL;
                            if (v4 == 0x6C69662E6B636F6CLL && a2 == 0xE90000000000006CLL || (result = sub_25459AB70(), (result & 1) != 0) || (result = 0x65706F2E6B636F6CLL, v4 == 0x65706F2E6B636F6CLL) && a2 == 0xEE006C6C69662E6ELL || (result = sub_25459AB70(), (result & 1) != 0))
                            {
                              v6 = 50;
                            }

                            else
                            {
                              result = 0x69662E6F65646976;
                              if (v4 == 0x69662E6F65646976 && a2 == 0xEA00000000006C6CLL || (result = sub_25459AB70(), (result & 1) != 0))
                              {
                                v6 = 51;
                              }

                              else if (v4 == 0xD000000000000017 && 0x800000025459F690 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                              {
                                v6 = 52;
                              }

                              else if (v4 == 0xD000000000000015 && 0x800000025459F6B0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                              {
                                v6 = 53;
                              }

                              else if (v4 == 0xD000000000000013 && 0x800000025459F6D0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                              {
                                v6 = 54;
                              }

                              else
                              {
                                result = 0x6964656D2E697161;
                                if (v4 == 0x6964656D2E697161 && a2 == 0xEA00000000006D75 || (result = sub_25459AB70(), (result & 1) != 0))
                                {
                                  v6 = 55;
                                }

                                else if (v4 == 0xD000000000000019 && 0x800000025459F6F0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                                {
                                  v6 = 56;
                                }

                                else if (v4 == 0xD00000000000001ALL && 0x800000025459F710 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                                {
                                  v6 = 57;
                                }

                                else
                                {
                                  result = 0x2E746361746E6F63;
                                  if (v4 == 0x2E746361746E6F63 && a2 == 0xEE00726F736E6573 || (result = sub_25459AB70(), (result & 1) != 0))
                                  {
                                    v6 = 58;
                                  }

                                  else
                                  {
                                    result = 0x662E726F736E6573;
                                    if (v4 == 0x662E726F736E6573 && a2 == 0xEB000000006C6C69 || (result = sub_25459AB70(), (result & 1) != 0))
                                    {
                                      v6 = 59;
                                    }

                                    else
                                    {
                                      result = 0x79746964696D7568;
                                      if (v4 == 0x79746964696D7568 && a2 == 0xED00006C6C69662ELL || (result = sub_25459AB70(), (result & 1) != 0))
                                      {
                                        v6 = 60;
                                      }

                                      else if (v4 == 0xD000000000000012 && 0x800000025459F730 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                                      {
                                        v6 = 61;
                                      }

                                      else
                                      {
                                        result = 0xD000000000000022;
                                        if (v4 == 0xD000000000000022 && 0x800000025459F750 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                                        {
                                          v6 = 62;
                                        }

                                        else if (v4 == 0xD000000000000014 && 0x800000025459F780 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                                        {
                                          v6 = 63;
                                        }

                                        else
                                        {
                                          result = 0x772E657275676966;
                                          if (v4 == 0x772E657275676966 && a2 == 0xEB000000006B6C61 || (result = sub_25459AB70(), (result & 1) != 0))
                                          {
                                            v6 = 64;
                                          }

                                          else
                                          {
                                            result = 0x69662E656B6F6D73;
                                            if (v4 == 0x69662E656B6F6D73 && a2 == 0xEA00000000006C6CLL || (result = sub_25459AB70(), (result & 1) != 0))
                                            {
                                              v6 = 65;
                                            }

                                            else if (v4 == 0xD000000000000012 && 0x800000025459F7A0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                                            {
                                              v6 = 66;
                                            }

                                            else
                                            {
                                              result = 0x662E746F67697073;
                                              if (v4 == 0x662E746F67697073 && a2 == 0xEB000000006C6C69 || (result = sub_25459AB70(), (result & 1) != 0))
                                              {
                                                v6 = 67;
                                              }

                                              else if (v4 == 0xD00000000000001ALL && 0x800000025459F7C0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                                              {
                                                v6 = 68;
                                              }

                                              else
                                              {
                                                result = 0x656C6B6E69727073;
                                                if (v4 == 0x656C6B6E69727073 && a2 == 0xEE006C6C69662E72 || (result = sub_25459AB70(), (result & 1) != 0))
                                                {
                                                  v6 = 69;
                                                }

                                                else if (v4 == 0xD000000000000019 && 0x800000025459F7E0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                                                {
                                                  v6 = 70;
                                                }

                                                else if (v4 == 0xD000000000000014 && 0x800000025459F800 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                                                {
                                                  v6 = 71;
                                                }

                                                else
                                                {
                                                  result = 0x662E7265776F6873;
                                                  if (v4 == 0x662E7265776F6873 && a2 == 0xEB000000006C6C69 || (result = sub_25459AB70(), (result & 1) != 0))
                                                  {
                                                    v6 = 72;
                                                  }

                                                  else if (v4 == 0xD000000000000013 && 0x800000025459F820 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                                                  {
                                                    v6 = 73;
                                                  }

                                                  else if (v4 == 0xD000000000000018 && 0x800000025459F840 == a2 || (result = sub_25459AB70(), (result & 1) != 0) || v4 == 0xD000000000000016 && 0x800000025459F860 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                                                  {
                                                    v6 = 75;
                                                  }

                                                  else if (v4 == 0xD000000000000016 && 0x800000025459F880 == a2 || (result = sub_25459AB70(), (result & 1) != 0) || v4 == 0xD000000000000014 && 0x800000025459F8A0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                                                  {
                                                    v6 = 76;
                                                  }

                                                  else if (v4 == 0x736E696174727563 && a2 == 0xEF6465736F6C632ELL)
                                                  {
                                                    v6 = 77;
                                                  }

                                                  else
                                                  {
                                                    result = sub_25459AB70();
                                                    v10 = v4 == 0x736E696174727563 && a2 == 0xED00006E65706F2ELL;
                                                    v6 = 77;
                                                    if ((result & 1) == 0 && !v10)
                                                    {
                                                      result = sub_25459AB70();
                                                      if ((result & 1) == 0)
                                                      {
                                                        if (v4 == 0xD000000000000013 && 0x800000025459F8C0 == a2 || (result = sub_25459AB70(), (result & 1) != 0) || v4 == 0xD000000000000011 && 0x800000025459F8E0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                                                        {
                                                          v6 = 78;
                                                        }

                                                        else if (v4 == 0xD000000000000013 && 0x800000025459F900 == a2 || (result = sub_25459AB70(), (result & 1) != 0) || v4 == 0xD000000000000011 && 0x800000025459F920 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                                                        {
                                                          v6 = 79;
                                                        }

                                                        else if (v4 == 0xD000000000000012 && 0x800000025459F940 == a2 || (result = sub_25459AB70(), (result & 1) != 0) || v4 == 0xD000000000000010 && 0x800000025459F960 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                                                        {
                                                          v6 = 80;
                                                        }

                                                        else if (v4 == 0xD000000000000014 && 0x800000025459F980 == a2 || (result = sub_25459AB70(), (result & 1) != 0) || (result = 0x612E776F646E6977, v4 == 0x612E776F646E6977) && a2 == 0xED0000676E696E77 || (result = sub_25459AB70(), (result & 1) != 0))
                                                        {
                                                          v6 = 81;
                                                        }

                                                        else if (v4 == 0xD000000000000016 && 0x800000025459F9A0 == a2 || (result = sub_25459AB70(), (result & 1) != 0) || v4 == 0x632E776F646E6977 && a2 == 0xEF746E656D657361 || (result = sub_25459AB70(), (result & 1) != 0))
                                                        {
                                                          v6 = 82;
                                                        }

                                                        else if (v4 == 0xD000000000000015 && 0x800000025459F9C0 == a2)
                                                        {
                                                          v6 = 83;
                                                        }

                                                        else
                                                        {
                                                          result = sub_25459AB70();
                                                          v12 = v4 == 0x632E776F646E6977 && a2 == 0xEE00676E696C6965;
                                                          v6 = 83;
                                                          if ((result & 1) == 0 && !v12)
                                                          {
                                                            result = sub_25459AB70();
                                                            if ((result & 1) == 0)
                                                            {
                                                              if (v4 == 0xD000000000000018 && 0x800000025459F9E0 == a2 || (result = sub_25459AB70(), (result & 1) != 0) || v4 == 0xD000000000000011 && 0x800000025459FA00 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                                                              {
                                                                v6 = 84;
                                                              }

                                                              else if (v4 == 0xD000000000000016 && 0x800000025459FA20 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                                                              {
                                                                v6 = 85;
                                                              }

                                                              else
                                                              {
                                                                v6 = 85;
                                                                if (v4 != 0xD000000000000014 || 0x800000025459FA40 != a2)
                                                                {
                                                                  result = sub_25459AB70();
                                                                  if (result)
                                                                  {
                                                                    v6 = 85;
                                                                  }

                                                                  else
                                                                  {
                                                                    v6 = 93;
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
  }

  *a3 = v6;
  return result;
}