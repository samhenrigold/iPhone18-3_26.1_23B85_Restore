uint64_t sub_21C686BD8(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_21C6CE610();

    return sub_21C6CE3B0();
  }

  else
  {
    sub_21C6CE3F0();
    swift_getWitnessTable();
    sub_21C6CE600();
    sub_21C6CE3B0();
    sub_21C6CED30();
    swift_getWitnessTable();
    sub_21C6CE3F0();
    swift_getWitnessTable();
    sub_21C6CE600();
    return sub_21C6CE3B0();
  }
}

uint64_t sub_21C686D3C(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_21C6CE610();
    sub_21C6CE3B0();
  }

  else
  {
    sub_21C6CE3F0();
    swift_getWitnessTable();
    sub_21C6CE600();
    sub_21C6CE3B0();
    sub_21C6CED30();
    swift_getWitnessTable();
    sub_21C6CE3F0();
    swift_getWitnessTable();
    sub_21C6CE600();
    sub_21C6CE3B0();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21C686F64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21C6CEBC0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21C686F90()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_21C686FC8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_21C687008()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C68708C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE68F8, &qword_21C6CFFA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C687144()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_21C68717C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21C6CE450();
  *a1 = result;
  return result;
}

uint64_t sub_21C6871DC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_21C687220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE69C8, &unk_21C6D0240);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_21C6872F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE69C8, &unk_21C6D0240);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_21C6873C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_21C69CAA8(v1, v2);
}

uint64_t sub_21C687408()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6838, &qword_21C6CF910);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6A08, &qword_21C6D02E0);
  sub_21C694224(&qword_27CDE6A10, &qword_27CDE6838, &qword_21C6CF910, MEMORY[0x277CDF028]);
  sub_21C694224(&qword_27CDE6A18, &qword_27CDE6A08, &qword_21C6D02E0, MEMORY[0x277CE14C0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C687534(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6AB0, &qword_21C6D0460);
  swift_getTupleTypeMetadata2();
  sub_21C6CEAE0();
  sub_21C6CE5D0();
  sub_21C6CEA80();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21C687654()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_21C68769C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_21C687724()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_21C68776C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6B10, &qword_21C6D06D0);
  swift_getTupleTypeMetadata();
  sub_21C6CEAE0();
  sub_21C6CE8E0();
  type metadata accessor for ApplicationDistributionState(255);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21C698BA8(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
  swift_getOpaqueTypeMetadata2();
  sub_21C6CE330();
  sub_21C6CE3B0();
  swift_getOpaqueTypeConformance2();
  sub_21C698BA8(qword_27CDE6B18, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
  return swift_getWitnessTable();
}

uint64_t sub_21C687A1C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C687A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21C6CDF20();
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

uint64_t sub_21C687B54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21C6CDF20();
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

uint64_t sub_21C687C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6C78, &unk_21C6D0CD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
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

  else
  {
    v11 = type metadata accessor for ChildPaneSetting(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_21C687D40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6C78, &unk_21C6D0CD0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  else
  {
    v11 = type metadata accessor for ChildPaneSetting(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_21C687E70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6CA8, &qword_21C6D0D48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C687ED8()
{
  v1 = type metadata accessor for ChildPaneSettingView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDE6A28, &qword_21C6D0318);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21C6CE6B0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  sub_21C6A4B14(*(v5 + *(v1 + 20)), *(v5 + *(v1 + 20) + 8));
  v7 = v5 + *(v1 + 24);
  v8 = *(type metadata accessor for ChildPaneSetting(0) + 20);
  v9 = sub_21C6CDF20();
  (*(*(v9 - 8) + 8))(v7 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C6880A0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21C6CDF20();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
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
    v13 = type metadata accessor for PropertyListValue(0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[7];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_21C6881CC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_21C6CDF20();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    v13 = type metadata accessor for PropertyListValue(0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_21C6882F8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    v9 = type metadata accessor for MultiValueSetting(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_21C6883B0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = type metadata accessor for MultiValueSetting(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C68845C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6E08, &qword_21C6D0F00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C6884F0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21C6CDF20();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v13 = *(a1 + a3[8] + 8);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = type metadata accessor for PropertyListValue(0);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[9];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_21C688670(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_21C6CDF20();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8] + 8) = (a2 - 1);
  }

  else
  {
    v14 = type metadata accessor for PropertyListValue(0);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + a4[9];

    return v15(v16, a2, a2, v14);
  }

  return result;
}

uint64_t sub_21C6887F0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    v9 = type metadata accessor for RadioGroupSetting(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_21C6888A8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = type metadata accessor for RadioGroupSetting(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C688984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
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

uint64_t sub_21C688A54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
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

uint64_t sub_21C688B30(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for TextFieldSetting(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_21C688BDC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for TextFieldSetting(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C688C80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7188, &qword_21C6D1988);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C688CEC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
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
    v13 = type metadata accessor for PropertyListValue(0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[7];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_21C688E24(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    v13 = type metadata accessor for PropertyListValue(0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_21C688F5C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    v9 = type metadata accessor for TitleValueSetting(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_21C689014(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = type metadata accessor for TitleValueSetting(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C6890C4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21C6CDF20();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
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
    v13 = type metadata accessor for PropertyListValue(0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[7];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_21C6891F0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_21C6CDF20();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    v13 = type metadata accessor for PropertyListValue(0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_21C68931C()
{
  v1 = *(type metadata accessor for PropertyListValue(0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = v0 + v4;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
LABEL_10:

      goto LABEL_11;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_21C6BB7CC(*v6, *(v6 + 8));
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v8 = sub_21C6CDFD0();
      (*(*(v8 - 8) + 8))(v6, v8);
      goto LABEL_11;
    }

    if (EnumCaseMultiPayload == 6 || EnumCaseMultiPayload == 7)
    {
      goto LABEL_10;
    }
  }

LABEL_11:
  v9 = (v3 + v2 + v5) & ~v2;
  v10 = swift_getEnumCaseMultiPayload();
  if (v10 <= 1)
  {
    if (!v10)
    {
LABEL_20:

      goto LABEL_21;
    }

    if (v10 == 1)
    {
      sub_21C6BB7CC(*(v0 + v5), *(v0 + v5 + 8));
    }
  }

  else
  {
    if (v10 == 2)
    {
      v11 = sub_21C6CDFD0();
      (*(*(v11 - 8) + 8))(v0 + v5, v11);
      goto LABEL_21;
    }

    if (v10 == 6 || v10 == 7)
    {
      goto LABEL_20;
    }
  }

LABEL_21:
  v12 = swift_getEnumCaseMultiPayload();
  if (v12 <= 1)
  {
    if (!v12)
    {
LABEL_30:

      goto LABEL_31;
    }

    if (v12 == 1)
    {
      sub_21C6BB7CC(*(v0 + v9), *(v0 + v9 + 8));
    }
  }

  else
  {
    if (v12 == 2)
    {
      v13 = sub_21C6CDFD0();
      (*(*(v13 - 8) + 8))(v0 + v9, v13);
      goto LABEL_31;
    }

    if (v12 == 6 || v12 == 7)
    {
      goto LABEL_30;
    }
  }

LABEL_31:

  return MEMORY[0x2821FE8E8](v0, v9 + v3, v2 | 7);
}

uint64_t sub_21C689598()
{
  v1 = *(type metadata accessor for PropertyListValue(0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;

  v6 = v0 + v4;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
LABEL_10:

      goto LABEL_11;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_21C6BB7CC(*v6, *(v6 + 8));
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v8 = sub_21C6CDFD0();
      (*(*(v8 - 8) + 8))(v6, v8);
      goto LABEL_11;
    }

    if (EnumCaseMultiPayload == 6 || EnumCaseMultiPayload == 7)
    {
      goto LABEL_10;
    }
  }

LABEL_11:
  v9 = swift_getEnumCaseMultiPayload();
  if (v9 <= 1)
  {
    if (!v9)
    {
LABEL_20:

      goto LABEL_21;
    }

    if (v9 == 1)
    {
      sub_21C6BB7CC(*(v0 + v5), *(v0 + v5 + 8));
    }
  }

  else
  {
    if (v9 == 2)
    {
      v10 = sub_21C6CDFD0();
      (*(*(v10 - 8) + 8))(v0 + v5, v10);
      goto LABEL_21;
    }

    if (v9 == 6 || v9 == 7)
    {
      goto LABEL_20;
    }
  }

LABEL_21:

  return MEMORY[0x2821FE8E8](v0, ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_21C689790(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ToggleSetting(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21C68983C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ToggleSetting(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C68990C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for PropertyListValue(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21C689A08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for PropertyListValue(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

void sub_21C689B14(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000015;
  }

  else
  {
    v2 = 0xD000000000000010;
  }

  if (*v1)
  {
    v3 = "PSGroupSpecifier";
  }

  else
  {
    v3 = "PSMultiValueSpecifier";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t sub_21C689B58()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

void *sub_21C689BB8@<X0>(void *a1@<X8>)
{
  sub_21C6C0328();
  result = sub_21C6CE4C0();
  *a1 = v3;
  return result;
}

uint64_t sub_21C689C10()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C689C8C()
{
  v1 = sub_21C6CE3C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21C689D7C()
{
  v1 = *(type metadata accessor for PropertyListValue(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
LABEL_10:

      goto LABEL_11;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_21C6BB7CC(*(v0 + v3), *(v0 + v3 + 8));
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v6 = sub_21C6CDFD0();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      goto LABEL_11;
    }

    if (EnumCaseMultiPayload == 6 || EnumCaseMultiPayload == 7)
    {
      goto LABEL_10;
    }
  }

LABEL_11:

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C689EB0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21C689EF0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21C689FA0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE75C8, &qword_21C6D2538);
  sub_21C6CE4F0();
  sub_21C694224(&qword_27CDE75E0, &qword_27CDE75C8, &qword_21C6D2538, MEMORY[0x277CDF038]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C68A050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6E48, &qword_21C6D0F20);
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

uint64_t sub_21C68A124(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6E48, &qword_21C6D0F20);
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

uint64_t sub_21C68A2A0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = a2 & 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6808, &qword_21C6CF8F0);
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x28223BE20](v7);
  v46 = v45 - v8;
  v9 = sub_21C6CE4B0();
  v10 = *(v9 - 8);
  v47 = v9;
  v48 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6810, &qword_21C6CF8F8);
  MEMORY[0x28223BE20](v13 - 8);
  v52 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v45 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = v6;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = v6;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = v6;
  type metadata accessor for ApplicationDistributionState(0);
  sub_21C68F964(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
  swift_retain_n();
  v49 = sub_21C6CE2A0();
  v57 = v21 & 1;

  v45[1] = a2;
  if (a2)
  {
    v22 = *(a1 + 112);

    if ((v22 & 1) == 0)
    {

      goto LABEL_6;
    }

LABEL_7:
    v32 = 1;
    v34 = v50;
    v33 = v51;
    goto LABEL_11;
  }

  sub_21C6CECF0();
  v24 = sub_21C6CE6C0();
  sub_21C6CE170();

  sub_21C6CE4A0();
  swift_getAtKeyPath();

  v26 = v48 + 2;
  v25 = *(v48 + 1);
  v25(v12, v47);
  v27 = *(v53 + 112);

  if (v27)
  {
    goto LABEL_7;
  }

  sub_21C6CECF0();
  v28 = sub_21C6CE6C0();
  v48 = v26;
  v29 = v28;
  sub_21C6CE170();

  sub_21C6CE4A0();
  swift_getAtKeyPath();

  v25(v12, v47);
  v23 = v53;
LABEL_6:
  v30 = *(v23 + 113);

  if (v30)
  {
    goto LABEL_7;
  }

  v48 = v45;
  MEMORY[0x28223BE20](v31);
  v47 = &v45[-8];
  sub_21C6CE580();
  if (qword_27CDE67D8 != -1)
  {
    swift_once();
  }

  v35 = qword_27CDE9D58;
  v53 = sub_21C6CE740();
  v54 = v36;
  v55 = v37 & 1;
  v56 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6820, &qword_21C6CF900);
  sub_21C68F8C8(&qword_27CDE6828, &qword_27CDE6820, &qword_21C6CF900);
  v39 = v46;
  sub_21C6CEA40();
  v34 = v50;
  v40 = v51;
  (*(v50 + 32))(v17, v39, v51);
  v33 = v40;
  v32 = 0;
LABEL_11:
  (*(v34 + 56))(v17, v32, 1, v33);
  v41 = v57;
  v42 = v52;
  sub_21C68F744(v17, v52, &qword_27CDE6810, &qword_21C6CF8F8);
  *a3 = v49;
  *(a3 + 8) = v41;
  *(a3 + 16) = sub_21C68F220;
  *(a3 + 24) = v18;
  *(a3 + 32) = sub_21C68F22C;
  *(a3 + 40) = v19;
  *(a3 + 48) = sub_21C68F238;
  *(a3 + 56) = v20;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6830, &qword_21C6CF908);
  sub_21C68F744(v42, a3 + *(v43 + 48), &qword_27CDE6810, &qword_21C6CF8F8);

  sub_21C68F7D4(v17, &qword_27CDE6810, &qword_21C6CF8F8);
  sub_21C68F7D4(v42, &qword_27CDE6810, &qword_21C6CF8F8);
}

uint64_t sub_21C68A920@<X0>(unsigned __int8 *a1@<X0>, char a2@<W1>, char *a3@<X8>)
{
  v59 = a3;
  v5 = a2 & 1;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6838, &qword_21C6CF910);
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v67 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v66 = &v57 - v8;
  v9 = sub_21C6CE4B0();
  v61 = *(v9 - 8);
  v62 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6868, &qword_21C6CFA28);
  MEMORY[0x28223BE20](v12 - 8);
  v70 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v68 = &v57 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6840, &qword_21C6CF918);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v69 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v57 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v57 - v23;
  MEMORY[0x28223BE20](v25);
  v73 = a1;
  v74 = v5;
  v63 = &v57 - v26;
  sub_21C6CE350();
  v71 = a1;
  v72 = v5;
  v64 = v24;
  sub_21C6CE350();

  if ((a2 & 1) == 0)
  {
    sub_21C6CECF0();
    v28 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v61 + 8))(v11, v62);
    v27 = v75;
  }

  v29 = *(v27 + 112);

  v65 = v21;
  if (v29 == 1)
  {
    MEMORY[0x28223BE20](v30);
    *(&v57 - 2) = a1;
    *(&v57 - 8) = a2 & 1;
    sub_21C6CE350();
    v31 = v68;
    (*(v17 + 32))(v68, v21, v16);
    v32 = 0;
  }

  else
  {
    v32 = 1;
    v31 = v68;
  }

  (*(v17 + 56))(v31, v32, 1, v16);

  v33 = a1;
  if ((a2 & 1) == 0)
  {
    sub_21C6CECF0();
    v34 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v61 + 8))(v11, v62);
    v33 = v75;
  }

  swift_getKeyPath();
  v75 = v33;
  sub_21C68F964(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
  sub_21C6CE040();

  v35 = v33[117];

  if (v35 != 1)
  {
    goto LABEL_12;
  }

  v36 = a1;
  if ((a2 & 1) == 0)
  {
    sub_21C6CECF0();
    v37 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v61 + 8))(v11, v62);
    v36 = v75;
  }

  swift_getKeyPath();
  v75 = v36;
  sub_21C6CE040();

  v38 = v36[115];

  if ((v38 & 1) == 0)
  {
    type metadata accessor for ApplicationDistributionState(0);
    v39 = sub_21C6CE2A0();
    LODWORD(v61) = v40 & 1;
    v62 = v39;
  }

  else
  {
LABEL_12:
    v62 = 0;
    LODWORD(v61) = 255;
  }

  v41 = swift_allocObject();
  *(v41 + 16) = a1;
  *(v41 + 24) = a2 & 1;

  v42 = v66;
  sub_21C6CE990();
  v43 = v17;
  v44 = *(v17 + 16);
  v45 = v65;
  v44(v65, v63, v16);
  v44(v69, v64, v16);
  sub_21C68F744(v68, v70, &qword_27CDE6868, &qword_21C6CFA28);
  v46 = v58;
  v57 = *(v58 + 16);
  v47 = v60;
  v57(v67, v42, v60);
  v48 = v59;
  v44(v59, v45, v16);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6870, &qword_21C6CFA30);
  v44(&v48[v49[12]], v69, v16);
  sub_21C68F744(v70, &v48[v49[16]], &qword_27CDE6868, &qword_21C6CFA28);
  v50 = &v48[v49[20]];
  v51 = v62;
  *v50 = v62;
  LOBYTE(v45) = v61;
  v50[8] = v61;
  v52 = &v48[v49[24]];
  v53 = v67;
  v57(v52, v67, v47);
  sub_21C68F7AC(v51, v45);
  sub_21C68F7C0(v51, v45);
  v54 = *(v46 + 8);
  v54(v66, v47);
  sub_21C68F7D4(v68, &qword_27CDE6868, &qword_21C6CFA28);
  v55 = *(v43 + 8);
  v55(v64, v16);
  v55(v63, v16);
  v54(v53, v47);
  sub_21C68F7C0(v51, v45);
  sub_21C68F7D4(v70, &qword_27CDE6868, &qword_21C6CFA28);
  v55(v69, v16);
  return (v55)(v65, v16);
}

uint64_t sub_21C68B2C8(uint64_t a1, char a2)
{
  v4 = sub_21C6CE570();
  MEMORY[0x28223BE20](v4 - 8);
  MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v6);
  v7 = sub_21C6CE4B0();
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  v10 = a1;
  if ((a2 & 1) == 0)
  {
    sub_21C6CECF0();
    v11 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v31 + 8))(v9, v32);
    v10 = v33;
  }

  swift_getKeyPath();
  v33 = v10;
  sub_21C68F964(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
  sub_21C6CE040();

  v12 = *(v10 + 115);

  if (v12)
  {
    goto LABEL_7;
  }

  v13 = a1;
  if ((a2 & 1) == 0)
  {
    sub_21C6CECF0();
    v14 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v31 + 8))(v9, v32);
    v13 = v33;
  }

  swift_getKeyPath();
  v33 = v13;
  sub_21C6CE040();

  v15 = *(v13 + 114);

  if (v15 == 1)
  {
LABEL_7:
    sub_21C6CE560();
    sub_21C6CE550();
    sub_21C6CE900();
    sub_21C6CE530();

    sub_21C6CE550();

    v16 = a1;
    if ((a2 & 1) == 0)
    {
      sub_21C6CECF0();
      v17 = sub_21C6CE6C0();
      sub_21C6CE170();

      sub_21C6CE4A0();
      swift_getAtKeyPath();

      (*(v31 + 8))(v9, v32);
      v16 = v33;
    }

    swift_getKeyPath();
    v33 = v16;
    sub_21C6CE040();

    sub_21C6CE540();

    sub_21C6CE550();

    if ((a2 & 1) == 0)
    {
      sub_21C6CECF0();
      v18 = sub_21C6CE6C0();
      sub_21C6CE170();

      sub_21C6CE4A0();
      swift_getAtKeyPath();

      (*(v31 + 8))(v9, v32);
      a1 = v33;
    }
  }

  else
  {

    v21 = a1;
    if ((a2 & 1) == 0)
    {
      sub_21C6CECF0();
      v22 = sub_21C6CE6C0();
      sub_21C6CE170();

      sub_21C6CE4A0();
      swift_getAtKeyPath();

      (*(v31 + 8))(v9, v32);
      v21 = v33;
    }

    swift_getKeyPath();
    v33 = v21;
    sub_21C6CE040();

    v23 = *(v21 + 117);

    if (v23 == 1)
    {
      sub_21C6CE560();
      sub_21C6CE550();
      sub_21C6CE900();
      sub_21C6CE530();

      sub_21C6CE550();

      v24 = a1;
      if ((a2 & 1) == 0)
      {
        sub_21C6CECF0();
        v25 = sub_21C6CE6C0();
        sub_21C6CE170();

        sub_21C6CE4A0();
        swift_getAtKeyPath();

        (*(v31 + 8))(v9, v32);
        v24 = v33;
      }

      swift_getKeyPath();
      v33 = v24;
      sub_21C6CE040();

      sub_21C6CE540();

      sub_21C6CE550();

      if ((a2 & 1) == 0)
      {
        sub_21C6CECF0();
        v26 = sub_21C6CE6C0();
        sub_21C6CE170();

        sub_21C6CE4A0();
        swift_getAtKeyPath();

        (*(v31 + 8))(v9, v32);
        a1 = v33;
      }
    }

    else
    {
      sub_21C6CE560();
      sub_21C6CE550();

      v27 = a1;
      if ((a2 & 1) == 0)
      {
        sub_21C6CECF0();
        v28 = sub_21C6CE6C0();
        sub_21C6CE170();

        sub_21C6CE4A0();
        swift_getAtKeyPath();

        (*(v31 + 8))(v9, v32);
        v27 = v33;
      }

      swift_getKeyPath();
      v33 = v27;
      sub_21C6CE040();

      sub_21C6CE540();

      sub_21C6CE550();

      if ((a2 & 1) == 0)
      {
        sub_21C6CECF0();
        v29 = sub_21C6CE6C0();
        sub_21C6CE170();

        sub_21C6CE4A0();
        swift_getAtKeyPath();

        (*(v31 + 8))(v9, v32);
        a1 = v33;
      }
    }
  }

  swift_getKeyPath();
  v33 = a1;
  sub_21C6CE040();

  sub_21C6CE540();

  sub_21C6CE550();
  sub_21C6CE590();
  if (qword_27CDE67D8 != -1)
  {
    swift_once();
  }

  v19 = qword_27CDE9D58;
  return sub_21C6CE740();
}

uint64_t sub_21C68BE54@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_21C6CE4B0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_21C6CECF0();
    v10 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    a1 = v17[0];
  }

  swift_getKeyPath();
  v17[0] = a1;
  sub_21C68F964(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
  sub_21C6CE040();

  v12 = *(a1 + 48);
  v11 = *(a1 + 56);

  v17[0] = v12;
  v17[1] = v11;
  sub_21C68F5F0();
  result = sub_21C6CE760();
  *a3 = result;
  *(a3 + 8) = v14;
  *(a3 + 16) = v15 & 1;
  *(a3 + 24) = v16;
  return result;
}

uint64_t sub_21C68C06C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_21C6CE4B0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_21C6CECF0();
    v10 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    a1 = v17[0];
  }

  swift_getKeyPath();
  v17[0] = a1;
  sub_21C68F964(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
  sub_21C6CE040();

  v12 = *(a1 + 96);
  v11 = *(a1 + 104);

  v17[0] = v12;
  v17[1] = v11;
  sub_21C68F5F0();
  result = sub_21C6CE760();
  *a3 = result;
  *(a3 + 8) = v14;
  *(a3 + 16) = v15 & 1;
  *(a3 + 24) = v16;
  return result;
}

uint64_t sub_21C68C280(uint64_t a1, char a2)
{
  v3 = sub_21C6CE4B0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_21C6CECF0();
    v7 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
  }

  sub_21C698F88();
}

uint64_t sub_21C68C3E8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = sub_21C6CE4B0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_21C6CECF0();
    v10 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    a1 = v19;
  }

  swift_getKeyPath();
  v19 = a1;
  sub_21C68F964(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
  sub_21C6CE040();

  v11 = *(a1 + 161);

  if (v11 == 1)
  {
    sub_21C6CE580();
    if (qword_27CDE67D8 != -1)
    {
      swift_once();
    }

    v12 = qword_27CDE9D58;
    result = sub_21C6CE740();
    v17 = v16 & 1;
  }

  else
  {
    result = 0;
    v14 = 0;
    v17 = 0;
    v15 = 0;
  }

  *a3 = result;
  a3[1] = v14;
  a3[2] = v17;
  a3[3] = v15;
  return result;
}

void *sub_21C68C678@<X0>(uint64_t a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  v32 = a3;
  v5 = sub_21C6CE570();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_21C6CE4B0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  v10 = a1;
  if ((a2 & 1) == 0)
  {
    sub_21C6CECF0();
    v11 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    v10 = v33;
  }

  swift_getKeyPath();
  *&v33 = v10;
  sub_21C68F964(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
  sub_21C6CE040();

  v12 = *(v10 + 117);

  if (v12 == 1)
  {

    v13 = a1;
    if ((a2 & 1) == 0)
    {
      sub_21C6CECF0();
      v14 = sub_21C6CE6C0();
      sub_21C6CE170();

      sub_21C6CE4A0();
      swift_getAtKeyPath();

      (*(v7 + 8))(v9, v6);
      v13 = v36;
    }

    swift_getKeyPath();
    v36 = v13;
    sub_21C6CE040();

    swift_beginAccess();
    sub_21C68F744(v13 + 120, &v33, &qword_27CDE6860, &qword_21C6CF9D0);

    if (*(&v34 + 1))
    {
      __swift_project_boxed_opaque_existential_1(&v33, *(&v34 + 1));
      sub_21C6CE130();
      __swift_destroy_boxed_opaque_existential_1(&v33);
      sub_21C6CE560();
      sub_21C6CE550();
      sub_21C6CE540();

      sub_21C6CE550();

      if ((a2 & 1) == 0)
      {
        sub_21C6CECF0();
        v15 = sub_21C6CE6C0();
        sub_21C6CE170();

        sub_21C6CE4A0();
        swift_getAtKeyPath();

        (*(v7 + 8))(v9, v6);
        a1 = v33;
      }

      swift_getKeyPath();
      *&v33 = a1;
      sub_21C6CE040();

      sub_21C6CE540();

      sub_21C6CE550();
      sub_21C6CE590();
      if (qword_27CDE67D8 != -1)
      {
        swift_once();
      }

      v16 = qword_27CDE9D58;
      v36 = sub_21C6CE740();
      v37 = v17;
      v38 = v18 & 1;
      v39 = v19;
      v40 = 0;
      goto LABEL_19;
    }

    sub_21C68F7D4(&v33, &qword_27CDE6860, &qword_21C6CF9D0);
  }

  if ((a2 & 1) == 0)
  {
    sub_21C6CECF0();
    v20 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    a1 = v33;
  }

  swift_getKeyPath();
  *&v33 = a1;
  sub_21C6CE040();

  v21 = *(a1 + 114);

  if (v21 != 1)
  {
    v27 = 0uLL;
    v29 = -1;
    v28 = 0uLL;
    goto LABEL_21;
  }

  sub_21C6CE580();
  if (qword_27CDE67D8 != -1)
  {
    swift_once();
  }

  v23 = qword_27CDE9D58;
  v36 = sub_21C6CE740();
  v37 = v25;
  v38 = v24 & 1;
  v39 = v26;
  v40 = 1;
LABEL_19:
  result = sub_21C6CE5C0();
  v27 = v33;
  v28 = v34;
  v29 = v35;
LABEL_21:
  v30 = v32;
  *v32 = v27;
  v30[1] = v28;
  *(v30 + 32) = v29;
  return result;
}

uint64_t sub_21C68CD94@<X0>(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X8>)
{
  v40 = a3;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6838, &qword_21C6CF910);
  v41 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6840, &qword_21C6CF918);
  v35 = *(v9 - 8);
  v10 = v35;
  MEMORY[0x28223BE20](v9);
  v37 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v42 = &v33 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  MEMORY[0x28223BE20](v17);
  v47 = a1;
  v48 = a2 & 1;
  v19 = &v33 - v18;
  v36 = &v33 - v18;
  sub_21C6CE350();
  v45 = a1;
  v46 = a2 & 1;
  v34 = v16;
  sub_21C6CE350();
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2 & 1;
  v43 = a1;
  v44 = a2 & 1;

  v33 = v8;
  sub_21C6CE990();
  v21 = *(v10 + 16);
  v22 = v42;
  v21(v42, v19, v9);
  v23 = v37;
  v21(v37, v16, v9);
  v24 = *(v41 + 16);
  v25 = v38;
  v26 = v8;
  v27 = v39;
  v24(v38, v26, v39);
  v28 = v40;
  v21(v40, v22, v9);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6848, &unk_21C6CF920);
  v21(&v28[*(v29 + 48)], v23, v9);
  v24(&v28[*(v29 + 64)], v25, v27);
  v30 = *(v41 + 8);
  v30(v33, v27);
  v31 = *(v35 + 8);
  v31(v34, v9);
  v31(v36, v9);
  v30(v25, v27);
  v31(v23, v9);
  return (v31)(v42, v9);
}

uint64_t sub_21C68D21C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_21C6CE4B0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_21C6CECF0();
    v10 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    a1 = v17[0];
  }

  v12 = *(a1 + 184);
  v11 = *(a1 + 192);

  v17[0] = v12;
  v17[1] = v11;
  sub_21C68F5F0();
  result = sub_21C6CE760();
  *a3 = result;
  *(a3 + 8) = v14;
  *(a3 + 16) = v15 & 1;
  *(a3 + 24) = v16;
  return result;
}

uint64_t sub_21C68D3C4@<X0>(uint64_t a3@<X8>)
{
  sub_21C6CE580();
  if (qword_27CDE67D8 != -1)
  {
    swift_once();
  }

  v4 = qword_27CDE9D58;
  result = sub_21C6CE740();
  *a3 = result;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7 & 1;
  *(a3 + 24) = v8;
  return result;
}

uint64_t sub_21C68D48C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_21C6CE4B0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_21C6CECF0();
    v10 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    a1 = v17[0];
  }

  v12 = *(a1 + 200);
  v11 = *(a1 + 208);

  v17[0] = v12;
  v17[1] = v11;
  sub_21C68F5F0();
  result = sub_21C6CE760();
  *a3 = result;
  *(a3 + 8) = v14;
  *(a3 + 16) = v15 & 1;
  *(a3 + 24) = v16;
  return result;
}

uint64_t sub_21C68D614@<X0>(uint64_t a1@<X8>)
{
  sub_21C6CE580();
  if (qword_27CDE67D8 != -1)
  {
    swift_once();
  }

  v2 = qword_27CDE9D58;
  result = sub_21C6CE740();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_21C68D6F4(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6850, &qword_21C6D0210);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_21C6CECD0();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_21C6CECA0();

  v8 = sub_21C6CEC90();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2 & 1;
  sub_21C68DC00(0, 0, v6, &unk_21C6CF938, v9);
}

uint64_t sub_21C68D824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 96) = a5;
  *(v5 + 24) = a4;
  v6 = sub_21C6CE4B0();
  *(v5 + 32) = v6;
  *(v5 + 40) = *(v6 - 8);
  *(v5 + 48) = swift_task_alloc();
  sub_21C6CECA0();
  *(v5 + 56) = sub_21C6CEC90();
  v8 = sub_21C6CEC80();
  *(v5 + 64) = v8;
  *(v5 + 72) = v7;

  return MEMORY[0x2822009F8](sub_21C68D91C, v8, v7);
}

uint64_t sub_21C68D91C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 24);

  if ((v1 & 1) == 0)
  {
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v5 = *(v0 + 32);
    sub_21C6CECF0();
    v6 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v4 + 8))(v3, v5);
    v2 = *(v0 + 16);
  }

  *(v0 + 80) = v2;
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_21C68DA54;

  return sub_21C6999F4(v8);
}

uint64_t sub_21C68DA54()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_21C68DB98, v3, v2);
}

uint64_t sub_21C68DB98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21C68DC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6850, &qword_21C6D0210);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_21C68F744(a3, v25 - v10, &qword_27CDE6850, &qword_21C6D0210);
  v12 = sub_21C6CECD0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21C68F7D4(v11, &qword_27CDE6850, &qword_21C6D0210);
  }

  else
  {
    sub_21C6CECC0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21C6CEC80();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21C6CEBE0() + 32;
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

      sub_21C68F7D4(a3, &qword_27CDE6850, &qword_21C6D0210);

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

  sub_21C68F7D4(a3, &qword_27CDE6850, &qword_21C6D0210);
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

uint64_t sub_21C68DF00@<X0>(char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = sub_21C6CE4B0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21C6CE570();
  MEMORY[0x28223BE20](v9 - 8);
  sub_21C6CE560();
  sub_21C6CE550();

  if ((a2 & 1) == 0)
  {
    sub_21C6CECF0();
    v10 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
  }

  sub_21C6CE540();

  sub_21C6CE550();
  sub_21C6CE590();
  if (qword_27CDE67D8 != -1)
  {
    swift_once();
  }

  v11 = qword_27CDE9D58;
  result = sub_21C6CE740();
  *a3 = result;
  *(a3 + 8) = v13;
  *(a3 + 16) = v14 & 1;
  *(a3 + 24) = v15;
  return result;
}

uint64_t sub_21C68E1B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C68F964(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
  sub_21C6CE040();

  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_21C68E278@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C68F964(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
  sub_21C6CE040();

  v4 = *(v3 + 72);
  *a2 = *(v3 + 64);
  a2[1] = v4;
}

uint64_t sub_21C68E33C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C68F964(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
  sub_21C6CE040();

  v4 = *(v3 + 88);
  *a2 = *(v3 + 80);
  a2[1] = v4;
}

uint64_t sub_21C68E400@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C68F964(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
  sub_21C6CE040();

  v4 = *(v3 + 104);
  *a2 = *(v3 + 96);
  a2[1] = v4;
}

uint64_t sub_21C68E4C4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_21C68E50C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C68F964(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
  sub_21C6CE040();

  *a2 = *(v3 + 114);
  return result;
}

uint64_t sub_21C68E5DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C68F964(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
  sub_21C6CE040();

  *a2 = *(v3 + 115);
  return result;
}

uint64_t sub_21C68E6AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C68F964(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
  sub_21C6CE040();

  *a2 = *(v3 + 117);
  return result;
}

uint64_t sub_21C68E77C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C68F964(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
  sub_21C6CE040();

  swift_beginAccess();
  return sub_21C68F744(v3 + 120, a2, &qword_27CDE6860, &qword_21C6CF9D0);
}

uint64_t sub_21C68E84C(uint64_t a1, uint64_t *a2)
{
  sub_21C68F744(a1, v3, &qword_27CDE6860, &qword_21C6CF9D0);
  swift_getKeyPath();
  sub_21C68F964(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
  sub_21C6CE030();

  return sub_21C68F7D4(v3, &qword_27CDE6860, &qword_21C6CF9D0);
}

uint64_t sub_21C68E954@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C68F964(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
  sub_21C6CE040();

  *a2 = *(v3 + 161);
  return result;
}

uint64_t sub_21C68EA24()
{
  v0 = sub_21C6CEBC0();
  v1 = MEMORY[0x21CF0F3B0](v0);

  return v1;
}

uint64_t sub_21C68EA60(uint64_t a1)
{
  sub_21C6CEBC0();
  sub_21C6CEBF0();
}

uint64_t sub_21C68EAB4(uint64_t a1)
{
  sub_21C6CEBC0();
  sub_21C6CEE50();
  sub_21C6CEBF0();
  v1 = sub_21C6CEE90();

  return v1;
}

uint64_t sub_21C68EB28(uint64_t a1, id *a2)
{
  result = sub_21C6CEBA0();
  *a2 = 0;
  return result;
}

uint64_t sub_21C68EBA0(uint64_t a1, id *a2)
{
  v3 = sub_21C6CEBB0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_21C68EC20@<X0>(uint64_t *a2@<X8>)
{
  sub_21C6CEBC0();
  v3 = sub_21C6CEB90();

  *a2 = v3;
  return result;
}

uint64_t sub_21C68EC64(void *a1, uint64_t *a2)
{
  v2 = sub_21C6CEBC0();
  v4 = v3;
  if (v2 == sub_21C6CEBC0() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_21C6CEE20();
  }

  return v7 & 1;
}

uint64_t sub_21C68ECEC(uint64_t a1)
{
  v2 = sub_21C68F964(&qword_27CDE68E0, type metadata accessor for OpenExternalURLOptionsKey, &unk_21C6CFE54);
  v3 = sub_21C68F964(&qword_27CDE68E8, type metadata accessor for OpenExternalURLOptionsKey, "家el<");
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_21C68EDA8@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_21C6CEB90();

  *a2 = v3;
  return result;
}

uint64_t sub_21C68EDF0(uint64_t a1)
{
  v2 = sub_21C68F964(&qword_27CDE68D0, type metadata accessor for NSKeyValueChangeKey, &unk_21C6CFE10);
  v3 = sub_21C68F964(&qword_27CDE68D8, type metadata accessor for NSKeyValueChangeKey, &unk_21C6CFD64);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_21C68EEAC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21C68EFA4;

  return v6(a1);
}

uint64_t sub_21C68EFA4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
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

uint64_t sub_21C68F0E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PropertyListValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_21C68F168(uint64_t a1, unsigned int a2)
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

uint64_t sub_21C68F1B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
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

uint64_t sub_21C68F2C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C68F38C;

  return sub_21C68D824(a1, v4, v5, v6, v7);
}

uint64_t sub_21C68F38C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21C68F480(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21C68FB38;

  return sub_21C68EEAC(a1, v4);
}

uint64_t sub_21C68F538(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21C68F38C;

  return sub_21C68EEAC(a1, v4);
}

unint64_t sub_21C68F5F0()
{
  result = qword_27CDE6858;
  if (!qword_27CDE6858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6858);
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

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t sub_21C68F6F0@<X0>(uint64_t a1@<X8>)
{
  result = sub_21C68B2C8(*(v1 + 16), *(v1 + 24));
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_21C68F744(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21C68F7AC(uint64_t result, char a2)
{
  if (a2 != -1)
  {
  }

  return v2;
}

uint64_t sub_21C68F7C0(uint64_t result, char a2)
{
  if (a2 != -1)
  {
  }

  return v2;
}

uint64_t sub_21C68F7D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_21C68F87C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_21C68F8C8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_21C68F964(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C68FB6C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v21 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE68F0, &qword_21C6CFF98);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE68F8, &qword_21C6CFFA0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = sub_21C6CE4B0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22[0] = a1;
  }

  else
  {

    sub_21C6CECF0();
    v16 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v13 + 8))(v15, v12);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6900, &qword_21C6CFFA8);
  swift_allocBox();
  type metadata accessor for ApplicationDistributionState(0);
  sub_21C690630();
  sub_21C6CEAB0();
  sub_21C6CEA90();
  v17 = *(v22[0] + 113);

  if (v17 == 1)
  {
    sub_21C690388(v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6908, &qword_21C6CFFB0);
    sub_21C690690();
    sub_21C6CEA70();
    (*(v6 + 32))(v11, v8, v5);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  (*(v6 + 56))(v11, v18, 1, v5);
  sub_21C68708C(v11, v21);
}

uint64_t sub_21C68FEC4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6928, &qword_21C6CFFE8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6918, &qword_21C6CFFB8);
  sub_21C690758();
  swift_getOpaqueTypeConformance2();
  return sub_21C6CE350();
}

uint64_t sub_21C68FFA0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6900, &qword_21C6CFFA8);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6918, &qword_21C6CFFB8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  v12 = swift_projectBox();
  (*(v2 + 16))(v4, v12, v1);
  sub_21C6CEAA0();
  v13 = *(v2 + 8);
  v13(v4, v1);
  swift_getKeyPath();
  sub_21C6CEAC0();

  v13(v7, v1);
  sub_21C6CE9D0();
  sub_21C690758();
  sub_21C6CE7E0();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_21C690204@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C690630();
  sub_21C6CE040();

  *a2 = *(v3 + 162);
  return result;
}

uint64_t sub_21C6902A8@<X0>(uint64_t a1@<X8>)
{
  sub_21C6CE580();
  if (qword_27CDE67D8 != -1)
  {
    swift_once();
  }

  v2 = qword_27CDE9D58;
  result = sub_21C6CE740();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_21C690388@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6900, &qword_21C6CFFA8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  v7 = sub_21C6CE570();
  MEMORY[0x28223BE20](v7 - 8);
  sub_21C6CE560();
  sub_21C6CE550();
  v8 = swift_projectBox();
  (*(v4 + 16))(v6, v8, v3);
  sub_21C6CEA90();
  (*(v4 + 8))(v6, v3);
  v9 = v16;
  swift_getKeyPath();
  v16 = v9;
  sub_21C690630();
  sub_21C6CE040();

  sub_21C6CE540();

  sub_21C6CE550();
  sub_21C6CE590();
  if (qword_27CDE67D8 != -1)
  {
    swift_once();
  }

  v10 = qword_27CDE9D58;
  result = sub_21C6CE740();
  *a2 = result;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v14;
  return result;
}

unint64_t sub_21C690630()
{
  result = qword_27CDE6818;
  if (!qword_27CDE6818)
  {
    type metadata accessor for ApplicationDistributionState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6818);
  }

  return result;
}

unint64_t sub_21C690690()
{
  result = qword_27CDE6910;
  if (!qword_27CDE6910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6908, &qword_21C6CFFB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6918, &qword_21C6CFFB8);
    sub_21C690758();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6910);
  }

  return result;
}

unint64_t sub_21C690758()
{
  result = qword_27CDE6920;
  if (!qword_27CDE6920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6918, &qword_21C6CFFB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6920);
  }

  return result;
}

unint64_t sub_21C6907C4()
{
  result = qword_27CDE6930;
  if (!qword_27CDE6930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE68F8, &qword_21C6CFFA0);
    sub_21C690848();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6930);
  }

  return result;
}

unint64_t sub_21C690848()
{
  result = qword_27CDE6938;
  if (!qword_27CDE6938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE68F0, &qword_21C6CFF98);
    sub_21C690690();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6938);
  }

  return result;
}

uint64_t sub_21C69090C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6940, &qword_21C6D0108);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - v8;
  v10 = sub_21C6CE4B0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  v14 = a1;
  if ((a2 & 1) == 0)
  {
    sub_21C6CECF0();
    v15 = sub_21C6CE6C0();
    v25 = v7;
    v16 = v9;
    v17 = v6;
    v18 = a2;
    v19 = a3;
    v20 = v15;
    sub_21C6CE170();

    a3 = v19;
    a2 = v18;
    v6 = v17;
    v9 = v16;
    v7 = v25;
    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v11 + 8))(v13, v10);
    v14 = v26;
  }

  swift_getKeyPath();
  v26 = v14;
  sub_21C690630();
  sub_21C6CE040();

  v21 = *(v14 + 115);

  if (v21 == 1)
  {
    MEMORY[0x28223BE20](v22);
    *(&v25 - 2) = a1;
    *(&v25 - 8) = a2 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6948, &qword_21C6D0138);
    sub_21C692A04();
    sub_21C6CEA60();
    (*(v7 + 32))(a3, v9, v6);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a3, v23, 1, v6);
}

uint64_t sub_21C690C18@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v62 = a3;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6970, &qword_21C6D0148);
  MEMORY[0x28223BE20](v61);
  v56 = &v53 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6978, &unk_21C6D0150);
  MEMORY[0x28223BE20](v6 - 8);
  v54 = &v53 - v7;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6838, &qword_21C6CF910);
  v63 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v55 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v57 = &v53 - v10;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6980, &qword_21C6D0160);
  MEMORY[0x28223BE20](v59);
  v60 = &v53 - v11;
  v12 = sub_21C6CE4B0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  v16 = a1;
  if ((a2 & 1) == 0)
  {
    sub_21C6CECF0();
    v17 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v13 + 8))(v15, v12);
    v16 = *&v113[0];
  }

  swift_getKeyPath();
  *&v113[0] = v16;
  v53 = sub_21C690630();
  sub_21C6CE040();

  v18 = *(v16 + 117);

  if (v18 == 1)
  {
    v19 = sub_21C6CE510();
    LOBYTE(v99) = 1;
    sub_21C6921A0(a1, a2 & 1, sub_21C691D38, v113);
    v83 = v113[6];
    v84 = v113[7];
    v85 = v113[8];
    v86 = v113[9];
    v79 = v113[2];
    v80 = v113[3];
    v81 = v113[4];
    v82 = v113[5];
    v77 = v113[0];
    v78 = v113[1];
    v95 = v113[6];
    v96 = v113[7];
    v97 = v113[8];
    v98 = v113[9];
    v91 = v113[2];
    v92 = v113[3];
    v93 = v113[4];
    v94 = v113[5];
    v89 = v113[0];
    v90 = v113[1];
    sub_21C68F744(&v77, &v101, &qword_27CDE6988, &qword_21C6D0190);
    sub_21C68F7D4(&v89, &qword_27CDE6988, &qword_21C6D0190);
    *(&v113[3] + 7) = v80;
    *(&v113[2] + 7) = v79;
    *(&v113[6] + 7) = v83;
    *(&v113[7] + 7) = v84;
    *(&v113[8] + 7) = v85;
    *(&v113[9] + 7) = v86;
    *(&v113[4] + 7) = v81;
    *(&v113[5] + 7) = v82;
    *(v113 + 7) = v77;
    *(&v113[1] + 7) = v78;
    *(&v88[7] + 1) = v113[7];
    *(&v88[8] + 1) = v113[8];
    *(&v88[9] + 1) = v113[9];
    *(&v88[3] + 1) = v113[3];
    *(&v88[4] + 1) = v113[4];
    *(&v88[5] + 1) = v113[5];
    *(&v88[6] + 1) = v113[6];
    *(v88 + 1) = v113[0];
    *(&v88[1] + 1) = v113[1];
    v87 = v19;
    LOBYTE(v88[0]) = v99;
    *&v88[10] = *(&v86 + 1);
    *(&v88[2] + 1) = v113[2];
    type metadata accessor for ApplicationDistributionState(0);
    v20 = sub_21C6CE2A0();
    v73 = v88[7];
    v74 = v88[8];
    v75 = v88[9];
    v69 = v88[3];
    v70 = v88[4];
    v71 = v88[5];
    v72 = v88[6];
    v65 = v87;
    v66 = v88[0];
    v67 = v88[1];
    v68 = v88[2];
    v100[7] = v88[7];
    v100[8] = v88[8];
    v100[9] = v88[9];
    v100[3] = v88[3];
    v100[4] = v88[4];
    v100[5] = v88[5];
    v100[6] = v88[6];
    v99 = v87;
    v100[0] = v88[0];
    v100[1] = v88[1];
    v100[2] = v88[2];
    v109 = v88[7];
    v110 = v88[8];
    v111 = v88[9];
    v105 = v88[3];
    v106 = v88[4];
    v107 = v88[5];
    v108 = v88[6];
    v101 = v87;
    v102 = v88[0];
    v76 = *&v88[10];
    *&v100[10] = *&v88[10];
    v112 = *&v88[10];
    v103 = v88[1];
    v104 = v88[2];
    v22 = v21 & 1;
    v64 = v21 & 1;
    sub_21C68F744(&v87, v113, &qword_27CDE6998, &qword_21C6D01A0);

    sub_21C68F744(&v99, v113, &qword_27CDE6998, &qword_21C6D01A0);
    v113[8] = v73;
    v113[9] = v74;
    v113[10] = v75;
    v114 = v76;
    v113[4] = v69;
    v113[5] = v70;
    v113[6] = v71;
    v113[7] = v72;
    v113[0] = v65;
    v113[1] = v66;
    v113[2] = v67;
    v113[3] = v68;
    sub_21C68F7D4(v113, &qword_27CDE6998, &qword_21C6D01A0);
    v23 = v110;
    v24 = v60;
    *(v60 + 128) = v109;
    *(v24 + 144) = v23;
    *(v24 + 160) = v111;
    v25 = v112;
    v26 = v106;
    *(v24 + 64) = v105;
    *(v24 + 80) = v26;
    v27 = v108;
    *(v24 + 96) = v107;
    *(v24 + 112) = v27;
    v28 = v102;
    *v24 = v101;
    *(v24 + 16) = v28;
    v29 = v104;
    *(v24 + 32) = v103;
    *(v24 + 48) = v29;
    *(v24 + 176) = v25;
    *(v24 + 184) = v20;
    *(v24 + 192) = v22;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6960, &qword_21C6D0140);
    sub_21C68F8C8(&qword_27CDE6958, &qword_27CDE6960, &qword_21C6D0140);
    sub_21C68F8C8(&qword_27CDE6968, &qword_27CDE6970, &qword_21C6D0148);
    sub_21C6CE5C0();

    return sub_21C68F7D4(&v87, &qword_27CDE6998, &qword_21C6D01A0);
  }

  else
  {
    v31 = sub_21C6CE510();
    LOBYTE(v87) = 1;
    sub_21C6921A0(a1, a2 & 1, sub_21C692434, v113);
    v95 = v113[6];
    v96 = v113[7];
    v97 = v113[8];
    v98 = v113[9];
    v91 = v113[2];
    v92 = v113[3];
    v93 = v113[4];
    v94 = v113[5];
    v89 = v113[0];
    v90 = v113[1];
    v71 = v113[6];
    v72 = v113[7];
    v73 = v113[8];
    v74 = v113[9];
    v67 = v113[2];
    v68 = v113[3];
    v69 = v113[4];
    v70 = v113[5];
    v65 = v113[0];
    v66 = v113[1];
    sub_21C68F744(&v89, &v101, &qword_27CDE6988, &qword_21C6D0190);
    sub_21C68F7D4(&v65, &qword_27CDE6988, &qword_21C6D0190);
    *(&v113[3] + 7) = v92;
    *(&v113[2] + 7) = v91;
    *(&v113[6] + 7) = v95;
    *(&v113[7] + 7) = v96;
    *(&v113[8] + 7) = v97;
    *(&v113[9] + 7) = v98;
    *(&v113[4] + 7) = v93;
    *(&v113[5] + 7) = v94;
    *(v113 + 7) = v89;
    *(&v113[1] + 7) = v90;
    *(&v100[7] + 1) = v113[7];
    *(&v100[8] + 1) = v113[8];
    *(&v100[9] + 1) = v113[9];
    *(&v100[3] + 1) = v113[3];
    *(&v100[4] + 1) = v113[4];
    *(&v100[5] + 1) = v113[5];
    *(&v100[6] + 1) = v113[6];
    *(v100 + 1) = v113[0];
    *(&v100[1] + 1) = v113[1];
    v99 = v31;
    LOBYTE(v100[0]) = v87;
    *&v100[10] = *(&v98 + 1);
    *(&v100[2] + 1) = v113[2];
    v32 = v54;
    sub_21C6CE250();
    v33 = sub_21C6CE270();
    (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
    v34 = swift_allocObject();
    *(v34 + 16) = a1;
    *(v34 + 24) = a2 & 1;
    MEMORY[0x28223BE20](v34);
    *(&v53 - 2) = a1;
    *(&v53 - 8) = a2 & 1;

    v35 = v57;
    sub_21C6CE980();
    v88[7] = v100[7];
    v88[8] = v100[8];
    v88[9] = v100[9];
    *&v88[10] = *&v100[10];
    v88[3] = v100[3];
    v88[4] = v100[4];
    v88[5] = v100[5];
    v88[6] = v100[6];
    v87 = v99;
    v88[0] = v100[0];
    v88[1] = v100[1];
    v88[2] = v100[2];
    v36 = v63;
    v37 = *(v63 + 16);
    v38 = v55;
    v39 = v35;
    v40 = v58;
    v37(v55, v39);
    v41 = v88[6];
    v109 = v88[7];
    v110 = v88[8];
    v42 = v88[8];
    v111 = v88[9];
    v43 = v88[3];
    v44 = v88[2];
    v105 = v88[3];
    v106 = v88[4];
    v45 = v88[4];
    v46 = v88[5];
    v107 = v88[5];
    v108 = v88[6];
    v101 = v87;
    v102 = v88[0];
    v48 = v87;
    v47 = v88[0];
    v49 = v88[1];
    v103 = v88[1];
    v104 = v88[2];
    v50 = v56;
    *(v56 + 8) = v88[7];
    *(v50 + 144) = v42;
    *(v50 + 160) = v88[9];
    *(v50 + 64) = v43;
    *(v50 + 80) = v45;
    *(v50 + 96) = v46;
    *(v50 + 112) = v41;
    *v50 = v48;
    *(v50 + 16) = v47;
    v112 = *&v88[10];
    *(v50 + 176) = *&v88[10];
    *(v50 + 32) = v49;
    *(v50 + 48) = v44;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6990, &qword_21C6D0198);
    (v37)(v50 + *(v51 + 48), v38, v40);
    sub_21C68F744(&v99, v113, &qword_27CDE6998, &qword_21C6D01A0);
    sub_21C68F744(&v101, v113, &qword_27CDE6998, &qword_21C6D01A0);
    v52 = *(v36 + 8);
    v63 = v36 + 8;
    v52(v38, v40);
    v113[8] = v88[7];
    v113[9] = v88[8];
    v113[10] = v88[9];
    v114 = *&v88[10];
    v113[4] = v88[3];
    v113[5] = v88[4];
    v113[6] = v88[5];
    v113[7] = v88[6];
    v113[0] = v87;
    v113[1] = v88[0];
    v113[2] = v88[1];
    v113[3] = v88[2];
    sub_21C68F7D4(v113, &qword_27CDE6998, &qword_21C6D01A0);
    sub_21C68F744(v50, v60, &qword_27CDE6970, &qword_21C6D0148);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6960, &qword_21C6D0140);
    sub_21C68F8C8(&qword_27CDE6958, &qword_27CDE6960, &qword_21C6D0140);
    sub_21C68F8C8(&qword_27CDE6968, &qword_27CDE6970, &qword_21C6D0148);
    sub_21C6CE5C0();
    sub_21C68F7D4(&v99, &qword_27CDE6998, &qword_21C6D01A0);
    sub_21C68F7D4(v50, &qword_27CDE6970, &qword_21C6D0148);
    return (v52)(v57, v58);
  }
}

uint64_t sub_21C6917B0(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6850, &qword_21C6D0210);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_21C6CECD0();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_21C6CECA0();

  v8 = sub_21C6CEC90();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2 & 1;
  sub_21C68DC00(0, 0, v6, &unk_21C6D0220, v9);
}

uint64_t sub_21C6918E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 96) = a5;
  *(v5 + 24) = a4;
  v6 = sub_21C6CE4B0();
  *(v5 + 32) = v6;
  *(v5 + 40) = *(v6 - 8);
  *(v5 + 48) = swift_task_alloc();
  sub_21C6CECA0();
  *(v5 + 56) = sub_21C6CEC90();
  v8 = sub_21C6CEC80();
  *(v5 + 64) = v8;
  *(v5 + 72) = v7;

  return MEMORY[0x2822009F8](sub_21C6919D8, v8, v7);
}

uint64_t sub_21C6919D8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 24);

  if ((v1 & 1) == 0)
  {
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v5 = *(v0 + 32);
    sub_21C6CECF0();
    v6 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v4 + 8))(v3, v5);
    v2 = *(v0 + 16);
  }

  *(v0 + 80) = v2;
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_21C68DA54;

  return sub_21C69A470(v8);
}

uint64_t sub_21C691B10@<X0>(char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = sub_21C6CE4B0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_21C6CECF0();
    v9 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
  }

  sub_21C6CE580();
  if (qword_27CDE67D8 != -1)
  {
    swift_once();
  }

  v10 = qword_27CDE9D58;
  result = sub_21C6CE740();
  *a3 = result;
  *(a3 + 8) = v12;
  *(a3 + 16) = v13 & 1;
  *(a3 + 24) = v14;
  return result;
}

uint64_t sub_21C691D38@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v40 = a3;
  v5 = sub_21C6CE4B0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21C6CE570();
  MEMORY[0x28223BE20](v9 - 8);
  sub_21C6CE560();
  sub_21C6CE550();
  if (a2)
  {
    v44 = a1;
  }

  else
  {

    sub_21C6CECF0();
    v10 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
    a1 = v44;
  }

  swift_getKeyPath();
  v42 = a1;
  sub_21C690630();
  sub_21C6CE040();

  sub_21C6CE540();

  sub_21C6CE550();
  sub_21C6CE590();
  if (qword_27CDE67D8 != -1)
  {
    swift_once();
  }

  v11 = qword_27CDE9D58;
  v12 = sub_21C6CE740();
  v14 = v13;
  v16 = v15;
  sub_21C6CE6F0();
  v17 = sub_21C6CE720();
  v38 = v18;
  v39 = v17;
  v20 = v19;
  HIDWORD(v37) = v21;

  sub_21C692AD8(v12, v14, v16 & 1);

  sub_21C6CE580();
  v22 = sub_21C6CE740();
  v24 = v23;
  LOBYTE(v12) = v25;
  sub_21C6CE6E0();
  v26 = sub_21C6CE720();
  v28 = v27;
  v30 = v29;
  v32 = v31;

  sub_21C692AD8(v22, v24, v12 & 1);

  v33 = BYTE4(v37) & 1;
  v41 = BYTE4(v37) & 1;
  LOBYTE(v42) = BYTE4(v37) & 1;
  v30 &= 1u;
  v43 = v30;
  v35 = v39;
  v34 = v40;
  *v40 = v39;
  v34[1] = v20;
  *(v34 + 16) = v33;
  v34[3] = v38;
  v34[4] = v26;
  v34[5] = v28;
  *(v34 + 48) = v30;
  v34[7] = v32;
  sub_21C692AE8(v35, v20, v33);

  sub_21C692AE8(v26, v28, v30);

  sub_21C692AD8(v26, v28, v30);

  sub_21C692AD8(v35, v20, v41);
}

uint64_t sub_21C6921A0@<X0>(uint64_t a1@<X0>, char a2@<W1>, void (*a3)(_OWORD *__return_ptr, uint64_t, void)@<X2>, _OWORD *a4@<X8>)
{
  v7 = sub_21C6CE900();
  v8 = sub_21C6CE8B0();
  KeyPath = swift_getKeyPath();
  v10 = sub_21C6CE6D0();
  sub_21C6CE280();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = sub_21C6CE5A0();
  LOBYTE(v55[0]) = 1;
  a3(v46, a1, a2 & 1);
  *&v45[7] = v46[0];
  *&v45[23] = v46[1];
  *&v45[39] = v46[2];
  *&v45[55] = v47;
  v20 = v55[0];
  *&v48 = v7;
  *(&v48 + 1) = KeyPath;
  *&v49 = v8;
  BYTE8(v49) = v10;
  *&v50 = v12;
  *(&v50 + 1) = v14;
  *&v51 = v16;
  *(&v51 + 1) = v18;
  v44[0] = 0;
  v43 = v51;
  v41 = v49;
  v42 = v50;
  v40 = v48;
  v53[0] = v19;
  v53[1] = 0;
  v54[0] = v55[0];
  *&v54[1] = *v45;
  *&v54[64] = *(&v47 + 1);
  v21 = *&v45[32];
  *&v54[49] = *&v45[48];
  v22 = *&v45[16];
  *&v54[33] = *&v45[32];
  *&v54[17] = *&v45[16];
  *&v44[24] = *v54;
  *&v44[8] = v19;
  *&v44[88] = *&v54[64];
  *&v44[72] = *&v54[48];
  *&v44[56] = *&v54[32];
  *&v44[40] = *&v54[16];
  v23 = v49;
  *a4 = v48;
  a4[1] = v23;
  v24 = v42;
  v25 = v43;
  v26 = *&v44[16];
  v27 = *&v44[32];
  a4[4] = *v44;
  a4[5] = v26;
  a4[2] = v24;
  a4[3] = v25;
  v28 = *&v44[48];
  v29 = *&v44[80];
  v30 = *v45;
  a4[8] = *&v44[64];
  a4[9] = v29;
  v52 = 0;
  a4[6] = v27;
  a4[7] = v28;
  v55[0] = v19;
  v55[1] = 0;
  v56 = v20;
  v58 = v22;
  v59 = v21;
  *v60 = *&v45[48];
  *&v60[15] = *&v45[63];
  v57 = v30;
  sub_21C68F744(&v48, v33, &qword_27CDE69A0, &qword_21C6D01D8);
  sub_21C68F744(v53, v33, &qword_27CDE69A8, &qword_21C6D01E0);
  sub_21C68F7D4(v55, &qword_27CDE69A8, &qword_21C6D01E0);
  v33[0] = v7;
  v33[1] = KeyPath;
  v33[2] = v8;
  v34 = v10;
  v35 = v12;
  v36 = v14;
  v37 = v16;
  v38 = v18;
  v39 = 0;
  return sub_21C68F7D4(v33, &qword_27CDE69A0, &qword_21C6D01D8);
}

uint64_t sub_21C692434@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_21C6CE4B0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21C6CE570();
  MEMORY[0x28223BE20](v10 - 8);
  MEMORY[0x28223BE20](v11);
  sub_21C6CE560();
  sub_21C6CE550();

  v12 = a1;
  v48 = a2;
  if ((a2 & 1) == 0)
  {
    sub_21C6CECF0();
    v13 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    v12 = v52;
  }

  v41 = v7;
  v42 = v6;
  swift_getKeyPath();
  v52 = v12;
  v44 = sub_21C690630();
  sub_21C6CE040();

  sub_21C6CE540();

  sub_21C6CE550();
  sub_21C6CE590();
  if (qword_27CDE67D8 != -1)
  {
    swift_once();
  }

  v14 = qword_27CDE9D58;
  v15 = sub_21C6CE740();
  v17 = v16;
  v19 = v18;
  sub_21C6CE6F0();
  v20 = sub_21C6CE720();
  v45 = v21;
  v46 = v20;
  v43 = v22;
  v47 = v23;

  sub_21C692AD8(v15, v17, v19 & 1);

  sub_21C6CE560();
  sub_21C6CE550();
  if (v48)
  {
    v52 = a1;
  }

  else
  {

    sub_21C6CECF0();
    v24 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v41 + 8))(v9, v42);
    a1 = v52;
  }

  swift_getKeyPath();
  v50 = a1;
  sub_21C6CE040();

  sub_21C6CE540();

  sub_21C6CE550();
  sub_21C6CE590();
  v25 = sub_21C6CE740();
  v27 = v26;
  v29 = v28;
  sub_21C6CE6E0();
  v30 = sub_21C6CE720();
  v32 = v31;
  v34 = v33;
  v36 = v35;

  sub_21C692AD8(v25, v27, v29 & 1);

  v37 = v43 & 1;
  v49 = v43 & 1;
  LOBYTE(v50) = v43 & 1;
  v51 = v34 & 1;
  v39 = v45;
  v38 = v46;
  *a3 = v46;
  *(a3 + 8) = v39;
  *(a3 + 16) = v37;
  *(a3 + 24) = v47;
  *(a3 + 32) = v30;
  *(a3 + 40) = v32;
  *(a3 + 48) = v34 & 1;
  *(a3 + 56) = v36;
  sub_21C692AE8(v38, v39, v37);

  sub_21C692AE8(v30, v32, v34 & 1);

  sub_21C692AD8(v30, v32, v34 & 1);

  sub_21C692AD8(v38, v39, v49);
}

unint64_t sub_21C692A04()
{
  result = qword_27CDE6950;
  if (!qword_27CDE6950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6948, &qword_21C6D0138);
    sub_21C68F8C8(&qword_27CDE6958, &qword_27CDE6960, &qword_21C6D0140);
    sub_21C68F8C8(&qword_27CDE6968, &qword_27CDE6970, &qword_21C6D0148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6950);
  }

  return result;
}

uint64_t sub_21C692AD8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_21C692AE8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_21C692AF8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C68F38C;

  return sub_21C6918E0(a1, v4, v5, v6, v7);
}

unint64_t sub_21C692BBC()
{
  result = qword_27CDE69B0;
  if (!qword_27CDE69B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE69B8, &qword_21C6D0228);
    sub_21C692C40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE69B0);
  }

  return result;
}

unint64_t sub_21C692C40()
{
  result = qword_27CDE69C0;
  if (!qword_27CDE69C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6940, &qword_21C6D0108);
    sub_21C692A04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE69C0);
  }

  return result;
}

uint64_t type metadata accessor for MalwareDetectionReenableApplicationListButton(uint64_t a1)
{
  result = qword_27CDE69D0;
  if (!qword_27CDE69D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C692D44(uint64_t a1)
{
  sub_21C692E18(319, &qword_27CDE69E0, MEMORY[0x277CDF708]);
  if (v1 <= 0x3F)
  {
    sub_21C692E18(319, &qword_27CDE69E8, type metadata accessor for ApplicationDistributionState);
    if (v2 <= 0x3F)
    {
      sub_21C692E6C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21C692E18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21C6CE290();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21C692E6C()
{
  if (!qword_27CDE69F0)
  {
    v0 = sub_21C6CE970();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDE69F0);
    }
  }
}

uint64_t sub_21C692ED8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v3 = type metadata accessor for MalwareDetectionReenableApplicationListButton(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6978, &unk_21C6D0150);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6838, &qword_21C6CF910);
  v36 = *(v9 - 8);
  v37 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v31 - v10;
  sub_21C6CE250();
  v12 = sub_21C6CE270();
  (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
  sub_21C694078(v2, v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_21C6940DC(v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v35 = v11;
  sub_21C6CE980();
  sub_21C6CE580();
  if (qword_27CDE67D8 != -1)
  {
    swift_once();
  }

  v15 = qword_27CDE9D58;
  v16 = sub_21C6CE740();
  v33 = v17;
  v34 = v16;
  v19 = v18;
  v21 = v20;
  v22 = v2 + *(v3 + 24);
  v23 = *v22;
  v24 = *(v22 + 8);
  v40 = v23;
  v41 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6A00, &qword_21C6D02D8);
  v25 = sub_21C6CE960();
  v32 = v31;
  v31[3] = v39;
  MEMORY[0x28223BE20](v25);
  MEMORY[0x28223BE20](v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6A08, &qword_21C6D02E0);
  sub_21C694224(&qword_27CDE6A10, &qword_27CDE6838, &qword_21C6CF910, MEMORY[0x277CDF028]);
  sub_21C694224(&qword_27CDE6A18, &qword_27CDE6A08, &qword_21C6D02E0, MEMORY[0x277CE14C0]);
  v27 = v37;
  v28 = v34;
  v29 = v35;
  sub_21C6CE870();

  sub_21C692AD8(v28, v19, v21 & 1);

  return (*(v36 + 8))(v29, v27);
}

uint64_t sub_21C6933C4(uint64_t a1)
{
  type metadata accessor for MalwareDetectionReenableApplicationListButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6A00, &qword_21C6D02D8);
  return sub_21C6CE950();
}

uint64_t sub_21C693458@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v40 = a1;
  v49 = a2;
  v3 = type metadata accessor for MalwareDetectionReenableApplicationListButton(0);
  v44 = *(v3 - 8);
  v4 = *(v44 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6978, &unk_21C6D0150);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6838, &qword_21C6CF910);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v48 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v47 = &v39 - v12;
  MEMORY[0x28223BE20](v13);
  v50 = &v39 - v14;
  MEMORY[0x28223BE20](v15);
  v46 = &v39 - v16;
  MEMORY[0x28223BE20](v17);
  v45 = &v39 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v39 - v20;
  sub_21C6CE250();
  v22 = sub_21C6CE270();
  v23 = *(v22 - 8);
  v42 = *(v23 + 56);
  v43 = v23 + 56;
  v42(v7, 0, 1, v22);
  sub_21C694078(a1, &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v25 = swift_allocObject();
  sub_21C6940DC(&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  v41 = v21;
  sub_21C6CE980();
  sub_21C694078(v40, &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = swift_allocObject();
  sub_21C6940DC(&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v24);
  v27 = v45;
  sub_21C6CE990();
  sub_21C6CE260();
  v42(v7, 0, 1, v22);
  v28 = v46;
  sub_21C6CE980();
  v29 = *(v9 + 16);
  v30 = v50;
  v29(v50, v21, v8);
  v31 = v47;
  v32 = v27;
  v29(v47, v27, v8);
  v33 = v48;
  v34 = v28;
  v29(v48, v28, v8);
  v35 = v49;
  v29(v49, v30, v8);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6A20, &qword_21C6D0310);
  v29(&v35[*(v36 + 48)], v31, v8);
  v29(&v35[*(v36 + 64)], v33, v8);
  v37 = *(v9 + 8);
  v37(v34, v8);
  v37(v32, v8);
  v37(v41, v8);
  v37(v33, v8);
  v37(v31, v8);
  return (v37)(v50, v8);
}

uint64_t sub_21C6939BC(uint64_t a1)
{
  v2 = sub_21C6CE4B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + *(type metadata accessor for MalwareDetectionReenableApplicationListButton(0) + 20) + 8);

  if ((v6 & 1) == 0)
  {
    sub_21C6CECF0();
    v8 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_21C69AED8(v7);
}

uint64_t sub_21C693B34(uint64_t a1)
{
  v2 = sub_21C6CE320();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_21C6CE4B0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + *(type metadata accessor for MalwareDetectionReenableApplicationListButton(0) + 20) + 8);

  if ((v10 & 1) == 0)
  {
    sub_21C6CECF0();
    v11 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
  }

  sub_21C694468(&qword_27CDE69F8, &qword_21C6D02D0, MEMORY[0x277CDF708], v5);
  sub_21C69B644(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21C693D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21C6CE4B0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21C6CE570();
  MEMORY[0x28223BE20](v8 - 8);
  sub_21C6CE560();
  sub_21C6CE550();
  v9 = (a1 + *(type metadata accessor for MalwareDetectionReenableApplicationListButton(0) + 20));
  v10 = *v9;
  v11 = *(v9 + 8);

  if ((v11 & 1) == 0)
  {
    sub_21C6CECF0();
    v12 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v10 = v19;
  }

  swift_getKeyPath();
  v19 = v10;
  sub_21C690630();
  sub_21C6CE040();

  sub_21C6CE540();

  sub_21C6CE550();
  sub_21C6CE590();
  if (qword_27CDE67D8 != -1)
  {
    swift_once();
  }

  v13 = qword_27CDE9D58;
  result = sub_21C6CE740();
  *a2 = result;
  *(a2 + 8) = v15;
  *(a2 + 16) = v16 & 1;
  *(a2 + 24) = v17;
  return result;
}

uint64_t sub_21C694078(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MalwareDetectionReenableApplicationListButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C6940DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MalwareDetectionReenableApplicationListButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C694158@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C690630();
  sub_21C6CE040();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_21C6941D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_21C69CAA8(v1, v2);
}

uint64_t sub_21C694224(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t objectdestroyTm()
{
  v1 = *(type metadata accessor for MalwareDetectionReenableApplicationListButton(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE69F8, &qword_21C6D02D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_21C6CE320();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C6943CC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for MalwareDetectionReenableApplicationListButton(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21C694468@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  v8 = v4;
  v10 = sub_21C6CE4B0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - v15;
  sub_21C68F744(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_21C6CECF0();
    v19 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_21C694668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_21C6946C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_21C69470C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void *sub_21C6947C0(uint64_t a1, uint64_t a2)
{
  v8 = sub_21C6CE5B0();
  v9 = MEMORY[0x28223BE20](v8);
  (*(*(a2 - 8) + 16))(&v12 - v10, a1, a2, v9);
  swift_storeEnumTagMultiPayload();
  return sub_21C6CE5C0();
}

void *sub_21C6948B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_21C6CE5B0();
  v9 = MEMORY[0x28223BE20](v8);
  (*(*(a3 - 8) + 16))(&v12 - v10, a1, a3, v9);
  swift_storeEnumTagMultiPayload();
  return sub_21C6CE5C0();
}

uint64_t sub_21C6949B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6AB0, &qword_21C6D0460);
  v26 = *(a1 + 16);
  swift_getTupleTypeMetadata2();
  v22 = sub_21C6CEAE0();
  v4 = *(a1 + 32);
  v5 = sub_21C6CE5D0();
  v23 = *(&v26 + 1);
  v6 = sub_21C6CEA80();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  v38 = *(a1 + 56);
  v14 = v38;
  v39 = v2;
  v11.i64[0] = v4;
  v33 = v2;
  v27[1] = v26;
  v28 = v4;
  v15 = *(a1 + 48);
  v25 = *(a1 + 40);
  v37 = v25.i64[1];
  v35 = v26;
  v36 = vzip1q_s64(v11, v25);
  v32[1] = v26;
  v32[2] = v36;
  v32[3] = v15;
  v29 = v25;
  v30 = v38;
  v31 = v2;
  v16 = v22;
  WitnessTable = swift_getWitnessTable();
  v43 = MEMORY[0x277CE0BC8];
  v44 = v14;
  v18 = swift_getWitnessTable();
  sub_21C695AA8(sub_21C695C10, v34, sub_21C695C28, v32, sub_21C695C40, v27, v23, v16, v5, v25.i64[1], WitnessTable, v18);
  v40 = v25.i64[1];
  v41 = WitnessTable;
  v42 = v18;
  swift_getWitnessTable();
  sub_21C698CE4();
  v19 = *(v7 + 8);
  v19(v9, v6);
  sub_21C698CE4();
  return (v19)(v13, v6);
}

uint64_t sub_21C694CAC@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v39 = a6;
  v40 = a7;
  v46 = a4;
  v47 = a8;
  v38 = a3;
  v11 = type metadata accessor for MalwareDetectionReenableApplicationListButton(0);
  v12 = *(v11 - 8);
  v43 = v11;
  v44 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = (&v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6AB0, &qword_21C6D0460);
  MEMORY[0x28223BE20](v42);
  v45 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - v17;
  v19 = *(a2 - 1);
  MEMORY[0x28223BE20](v20);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v37 - v25;
  (*(a1 + 16))(v24);
  sub_21C698CE4();
  v41 = *(v19 + 8);
  v41(v22, a2);
  v51 = a2;
  v52 = v38;
  v53 = v46;
  v54 = a5;
  v46 = a5;
  v55 = v39;
  v56 = v40;
  type metadata accessor for MalwareDetectionReenableApplicationListSectionElement(0, &v51);
  if (sub_21C6950C4())
  {
    *v14 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE69F8, &qword_21C6D02D0);
    swift_storeEnumTagMultiPayload();
    v27 = v43;
    v28 = v14 + *(v43 + 20);
    type metadata accessor for ApplicationDistributionState(0);
    sub_21C695D98(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
    *v28 = sub_21C6CE2A0();
    v28[8] = v29 & 1;
    v30 = v14 + *(v27 + 24);
    LOBYTE(v50[0]) = 0;
    sub_21C6CE930();
    v31 = v52;
    *v30 = v51;
    *(v30 + 1) = v31;
    sub_21C6940DC(v14, v18);
    v32 = 0;
    v33 = v27;
  }

  else
  {
    v32 = 1;
    v33 = v43;
  }

  (*(v44 + 56))(v18, v32, 1, v33);
  (*(v19 + 16))(v22, v26, a2);
  v51 = v22;
  v34 = v45;
  sub_21C695C74(v18, v45);
  v52 = v34;
  v50[0] = a2;
  v50[1] = v42;
  v48 = v46;
  v49 = sub_21C695CE4();
  sub_21C696DC4(&v51, 2uLL, v50);
  sub_21C68F7D4(v18, &qword_27CDE6AB0, &qword_21C6D0460);
  v35 = v41;
  v41(v26, a2);
  sub_21C68F7D4(v34, &qword_27CDE6AB0, &qword_21C6D0460);
  return v35(v22, a2);
}

uint64_t sub_21C6950C4()
{
  v1 = sub_21C6CE4B0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v0 + 8);
  v16 = *v0;
  v5 = v16;
  v6 = v17;

  v7 = v5;
  if ((v6 & 1) == 0)
  {
    sub_21C6CECF0();
    v8 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();
    sub_21C68F7D4(&v16, &qword_27CDE6AB8, &qword_21C6D0468);
    (*(v2 + 8))(v4, v1);
    v7 = v15;
  }

  swift_getKeyPath();
  v15 = v7;
  sub_21C695D98(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
  sub_21C6CE040();

  v9 = *(v7 + 115);

  if (v9 == 1)
  {

    if ((v6 & 1) == 0)
    {
      sub_21C6CECF0();
      v10 = sub_21C6CE6C0();
      sub_21C6CE170();

      sub_21C6CE4A0();
      swift_getAtKeyPath();
      sub_21C68F7D4(&v16, &qword_27CDE6AB8, &qword_21C6D0468);
      (*(v2 + 8))(v4, v1);
      v5 = v15;
    }

    swift_getKeyPath();
    v15 = v5;
    sub_21C6CE040();

    v11 = *(v5 + 116);

    v12 = v11 ^ 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_21C6953A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  (*(v11 + 32))(v8);
  sub_21C698CE4();
  v12 = *(v4 + 8);
  v12(v6, a3);
  sub_21C698CE4();
  return (v12)(v10, a3);
}

uint64_t sub_21C6954D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v47 = a5;
  v48 = a6;
  v51 = a8;
  v13 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v44 - v17;
  v19 = sub_21C6CE4B0();
  v45 = *(v19 - 8);
  v46 = v19;
  MEMORY[0x28223BE20](v19);
  v44 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21C6CE570();
  MEMORY[0x28223BE20](v21 - 8);
  v22 = sub_21C6CE5D0();
  v49 = *(v22 - 8);
  v50 = v22;
  MEMORY[0x28223BE20](v22);
  v24 = &v44 - v23;
  v54 = a2;
  v55 = a3;
  v25 = a7;
  v56 = a4;
  v57 = v47;
  v58 = v48;
  v59 = a7;
  type metadata accessor for MalwareDetectionReenableApplicationListSectionElement(0, &v54);
  v26 = sub_21C6950C4();
  v27 = MEMORY[0x277CE0BC8];
  if (v26)
  {
    v28 = v24;
    sub_21C6CE560();
    sub_21C6CE550();
    v61 = *(a1 + 8);
    v29 = *a1;
    v60 = *a1;
    v30 = v61;

    if ((v30 & 1) == 0)
    {
      sub_21C6CECF0();
      v31 = sub_21C6CE6C0();
      sub_21C6CE170();

      v32 = v44;
      sub_21C6CE4A0();
      swift_getAtKeyPath();
      sub_21C68F7D4(&v60, &qword_27CDE6AB8, &qword_21C6D0468);
      (*(v45 + 8))(v32, v46);
      v29 = v54;
    }

    swift_getKeyPath();
    v54 = v29;
    sub_21C695D98(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
    sub_21C6CE040();

    sub_21C6CE540();

    sub_21C6CE550();
    sub_21C6CE590();
    if (qword_27CDE67D8 != -1)
    {
      swift_once();
    }

    v33 = qword_27CDE9D58;
    v34 = sub_21C6CE740();
    v36 = v35;
    v54 = v34;
    v55 = v35;
    v38 = v37 & 1;
    LOBYTE(v56) = v37 & 1;
    v57 = v39;
    v40 = v28;
    sub_21C6947C0(&v54, MEMORY[0x277CE0BD8]);
    sub_21C692AD8(v34, v36, v38);

    v27 = MEMORY[0x277CE0BC8];
  }

  else
  {
    (a1[6])();
    sub_21C698CE4();
    v41 = *(v13 + 8);
    v41(v15, a4);
    sub_21C698CE4();
    sub_21C6948B8(v15, MEMORY[0x277CE0BD8], a4);
    v41(v15, a4);
    v41(v18, a4);
    v40 = v24;
  }

  v52 = v27;
  v53 = v25;
  v42 = v50;
  swift_getWitnessTable();
  sub_21C698CE4();
  return (*(v49 + 8))(v40, v42);
}

uint64_t sub_21C695AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  MEMORY[0x28223BE20](a1);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v15(v14);
  a5(v16);
  return sub_21C6CEA50();
}

uint64_t sub_21C695C74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6AB0, &qword_21C6D0460);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21C695CE4()
{
  result = qword_27CDE6AC0;
  if (!qword_27CDE6AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6AB0, &qword_21C6D0460);
    sub_21C695D98(&qword_27CDE6AC8, type metadata accessor for MalwareDetectionReenableApplicationListButton, &unk_21C6D0280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6AC0);
  }

  return result;
}

uint64_t sub_21C695D98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C695E0C(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6850, &qword_21C6D0210);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_21C6CECD0();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_21C6CECA0();

  v8 = sub_21C6CEC90();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2 & 1;
  sub_21C68DC00(0, 0, v6, &unk_21C6D0688, v9);
}

uint64_t sub_21C695F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 96) = a5;
  *(v5 + 24) = a4;
  v6 = sub_21C6CE4B0();
  *(v5 + 32) = v6;
  *(v5 + 40) = *(v6 - 8);
  *(v5 + 48) = swift_task_alloc();
  sub_21C6CECA0();
  *(v5 + 56) = sub_21C6CEC90();
  v8 = sub_21C6CEC80();
  *(v5 + 64) = v8;
  *(v5 + 72) = v7;

  return MEMORY[0x2822009F8](sub_21C696034, v8, v7);
}

uint64_t sub_21C696034()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 24);

  if ((v1 & 1) == 0)
  {
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v5 = *(v0 + 32);
    sub_21C6CECF0();
    v6 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v4 + 8))(v3, v5);
    v2 = *(v0 + 16);
  }

  *(v0 + 80) = v2;
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_21C68DA54;

  return sub_21C69BF78(v8);
}

uint64_t sub_21C69616C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = sub_21C6CE520();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6AE0, &qword_21C6D0608);
  return sub_21C6961D4(a1, a2 & 1, a3 + *(v6 + 44));
}

uint64_t sub_21C6961D4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6AE8, &qword_21C6D0610);
  v64 = *(v6 - 8);
  v65 = v6;
  MEMORY[0x28223BE20](v6);
  v60 = &v56 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6AF0, &qword_21C6D0618);
  MEMORY[0x28223BE20](v8 - 8);
  v66 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v56 - v11;
  v13 = sub_21C6CE4B0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);

  v17 = a1;
  if ((a2 & 1) == 0)
  {
    sub_21C6CECF0();
    v18 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v14 + 8))(v16, v13);
    v17 = v75;
  }

  v61 = v16;
  v62 = v14;
  swift_getKeyPath();
  *&v75 = v17;
  v67 = sub_21C690630();
  sub_21C6CE040();

  v19 = *(v17 + 160) == 1;
  v63 = a2;
  v59 = v13;
  if (v19)
  {

LABEL_8:
    v57 = v12;
    v58 = a3;
    sub_21C6CE580();
    if (qword_27CDE67D8 != -1)
    {
      swift_once();
    }

    v21 = qword_27CDE9D58;
    v22 = sub_21C6CE740();
    v24 = v23;
    v26 = v25;
    v27 = [objc_opt_self() secondaryLabelColor];
    sub_21C6CE8A0();
    v28 = sub_21C6CE710();
    v30 = v29;
    v32 = v31;
    v34 = v33;

    sub_21C692AD8(v22, v24, v26 & 1);

    v70 = v28;
    v71 = v30;
    v72 = v32 & 1;
    v73 = v34;
    v74 = 0;
    sub_21C6CE5C0();
    v68 = v75;
    v69 = v76;
    v35 = v77;
    a3 = v58;
    v12 = v57;
    goto LABEL_17;
  }

  if (*(v17 + 216))
  {
    v20 = sub_21C6CE090();

    if (v20)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v36 = a1;
  if ((a2 & 1) == 0)
  {
    sub_21C6CECF0();
    v37 = sub_21C6CE6C0();
    sub_21C6CE170();

    v38 = v61;
    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v62 + 8))(v38, v13);
    v36 = v75;
  }

  swift_getKeyPath();
  *&v75 = v36;
  sub_21C6CE040();

  sub_21C6CE580();
  if (qword_27CDE67D8 != -1)
  {
    swift_once();
  }

  v39 = qword_27CDE9D58;
  v70 = sub_21C6CE740();
  v71 = v41;
  v72 = v40 & 1;
  v73 = v42;
  v74 = 1;
  sub_21C6CE5C0();
  v68 = v75;
  v69 = v76;
  v35 = v77;
LABEL_17:

  v43 = v68;
  v44 = v69;
  sub_21C696B78(v68, *(&v68 + 1), v69, *(&v69 + 1));
  if ((v63 & 1) == 0)
  {
    sub_21C6CECF0();
    v45 = sub_21C6CE6C0();
    sub_21C6CE170();

    v46 = v61;
    sub_21C6CE4A0();
    swift_getAtKeyPath();

    (*(v62 + 8))(v46, v59);
    a1 = v75;
  }

  swift_getKeyPath();
  *&v75 = a1;
  sub_21C6CE040();

  if (*(a1 + 160) != 1)
  {
    if (*(a1 + 216))
    {
      v47 = sub_21C6CE090();

      if (v47)
      {
        goto LABEL_23;
      }
    }

    else
    {
    }

    v51 = 1;
    v50 = v64;
    v49 = v65;
    goto LABEL_26;
  }

LABEL_23:
  v48 = v60;
  sub_21C6CE300();
  v50 = v64;
  v49 = v65;
  (*(v64 + 32))(v12, v48, v65);
  v51 = 0;
LABEL_26:
  (*(v50 + 56))(v12, v51, 1, v49);
  v52 = v66;
  sub_21C696BB4(v12, v66);
  v53 = v69;
  *a3 = v68;
  *(a3 + 16) = v53;
  *(a3 + 32) = v35;
  *(a3 + 40) = 0;
  *(a3 + 48) = 1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6AF8, &unk_21C6D0670);
  sub_21C696BB4(v52, a3 + *(v54 + 64));
  sub_21C696B78(v43, *(&v43 + 1), v44, *(&v44 + 1));
  sub_21C696C24(v43, *(&v43 + 1), v44, *(&v44 + 1));
  sub_21C696C60(v12);
  sub_21C696C60(v52);
  return sub_21C696C24(v43, *(&v43 + 1), v44, *(&v44 + 1));
}

uint64_t sub_21C696A68()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6AD0, &qword_21C6D0600);
  sub_21C694224(&qword_27CDE6AD8, &qword_27CDE6AD0, &qword_21C6D0600, MEMORY[0x277CE1138]);
  return sub_21C6CE990();
}

uint64_t sub_21C696B78(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_21C692AE8(a1, a2, a3 & 1);
}

uint64_t sub_21C696BB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6AF0, &qword_21C6D0618);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C696C24(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_21C692AD8(a1, a2, a3 & 1);
}

uint64_t sub_21C696C60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6AF0, &qword_21C6D0618);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C696CC8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C68F38C;

  return sub_21C695F3C(a1, v4, v5, v6, v7);
}

uint64_t sub_21C696DC4(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
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

  return sub_21C6CEAF0();
}

void *ApplicationDistributionListContent.init(applicationBundleIdentifier:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  type metadata accessor for ApplicationDistributionState(0);
  swift_allocObject();
  sub_21C69DA94(a1, a2);
  result = sub_21C6CE930();
  *a5 = v11;
  a5[1] = v12;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t ApplicationDistributionListContent.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v46 = a1;
  v56 = a2;
  v4 = sub_21C6CECD0();
  v54 = *(v4 - 8);
  v55 = v4;
  MEMORY[0x28223BE20](v4);
  v53 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v66 = &type metadata for MalwareDetectionListHeaderElement;
  v67 = v6;
  v7 = v6;
  v40 = v6;
  v68 = &type metadata for ApplicationInstallConfirmationListSectionElement;
  v69 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6B10, &qword_21C6D06D0);
  swift_getTupleTypeMetadata();
  sub_21C6CEAE0();
  v8 = sub_21C6CE8E0();
  v51 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  v11 = type metadata accessor for ApplicationDistributionState(255);
  WitnessTable = swift_getWitnessTable();
  v65 = WitnessTable;
  v12 = swift_getWitnessTable();
  v43 = v12;
  v42 = sub_21C698BA8(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
  v66 = v8;
  v67 = v11;
  v68 = v12;
  v69 = v42;
  v47 = MEMORY[0x277CE0C50];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v50 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v38 = &v37 - v13;
  sub_21C6CE330();
  v48 = sub_21C6CE3B0();
  v52 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v44 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v49 = &v37 - v16;
  v17 = *v2;
  v18 = v2[1];
  v19 = v2[3];
  v39 = v2[2];
  v46 = *(v46 + 24);
  v57 = v7;
  v58 = v46;
  v59 = v17;
  v60 = v18;
  v61 = v39;
  v62 = v19;
  sub_21C6CE8D0();
  v66 = v17;
  v67 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6BA0, &qword_21C6D07E8);
  sub_21C6CE940();
  v20 = swift_checkMetadataState();
  v21 = v43;
  v22 = v42;
  sub_21C6CE7B0();

  (*(v51 + 8))(v10, v8);
  v23 = swift_allocObject();
  v24 = v46;
  v23[2] = v40;
  v23[3] = v24;
  v23[4] = v17;
  v23[5] = v18;
  v23[6] = v39;
  v23[7] = v19;

  v66 = v8;
  v67 = v20;
  v68 = v21;
  v69 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v53;
  sub_21C6CECB0();
  v27 = v44;
  v28 = OpaqueTypeMetadata2;
  v29 = v38;
  sub_21C6CE860();

  (*(v54 + 8))(v26, v55);
  (*(v50 + 8))(v29, v28);
  v30 = sub_21C698BA8(qword_27CDE6B18, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
  v63 = OpaqueTypeConformance2;
  v64 = v30;
  v31 = v48;
  swift_getWitnessTable();
  v32 = v52;
  v33 = *(v52 + 16);
  v34 = v49;
  v33(v49, v27, v31);
  v35 = *(v32 + 8);
  v35(v27, v31);
  v33(v56, v34, v31);
  return (v35)(v34, v31);
}

uint64_t sub_21C6976AC@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, void (*a3)(void)@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v63 = a6;
  v56 = a2;
  v55 = a1;
  v71 = a7;
  v59 = type metadata accessor for MalwareDetectionReenableApplicationListButton(0);
  MEMORY[0x28223BE20](v59);
  v51 = (&v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6BA8, &qword_21C6D07F0);
  MEMORY[0x28223BE20](v54);
  v12 = &v50 - v11;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6B10, &qword_21C6D06D0);
  MEMORY[0x28223BE20](v69);
  v70 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - v15;
  v17 = *(a5 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v50 - v22;
  type metadata accessor for ApplicationDistributionState(0);
  sub_21C698BA8(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
  v66 = sub_21C6CE2A0();
  v61 = v24;
  v53 = a4;
  v52 = a3;
  a3();
  v25 = *(v17 + 16);
  v68 = v23;
  v62 = v25;
  v57 = v17 + 16;
  v25(v23, v20, a5);
  v26 = *(v17 + 8);
  v58 = a5;
  v67 = v26;
  v64 = v17 + 8;
  v26(v20, a5);
  v65 = sub_21C6CE2A0();
  v60 = v27;
  v28 = v55;
  v81 = v55;
  v29 = v56;
  v82 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6BA0, &qword_21C6D07E8);
  sub_21C6CE940();
  v30 = v76[0];
  swift_getKeyPath();
  v81 = v30;
  sub_21C6CE040();

  LODWORD(a4) = *(v30 + 161);

  if (a4 == 1)
  {
    *v12 = sub_21C6CE2A0();
    v12[8] = v32 & 1;
    swift_storeEnumTagMultiPayload();
    sub_21C698B54();
    sub_21C698BA8(&qword_27CDE6AC8, type metadata accessor for MalwareDetectionReenableApplicationListButton, &unk_21C6D0280);
    sub_21C6CE5C0();
    v33 = 0;
    v34 = v63;
    v35 = v58;
  }

  else
  {
    v50 = v12;
    v36 = v59;
    v37 = v58;
    v34 = v63;
    type metadata accessor for ApplicationDistributionListContent(0, v58, v63, v31);
    v81 = v28;
    v82 = v29;
    v83 = v52;
    v84 = v53;
    v35 = v37;
    if (sub_21C697E1C())
    {
      KeyPath = swift_getKeyPath();
      v39 = v51;
      *v51 = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE69F8, &qword_21C6D02D0);
      swift_storeEnumTagMultiPayload();
      v40 = v39 + *(v36 + 20);
      *v40 = sub_21C6CE2A0();
      *(v40 + 8) = v41 & 1;
      v42 = v39 + *(v36 + 24);
      LOBYTE(v76[0]) = 0;
      sub_21C6CE930();
      v43 = v82;
      *v42 = v81;
      *(v42 + 8) = v43;
      sub_21C694078(v39, v50);
      swift_storeEnumTagMultiPayload();
      sub_21C698B54();
      sub_21C698BA8(&qword_27CDE6AC8, type metadata accessor for MalwareDetectionReenableApplicationListButton, &unk_21C6D0280);
      sub_21C6CE5C0();
      sub_21C698C58(v39);
      v33 = 0;
    }

    else
    {
      v33 = 1;
    }
  }

  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6BB0, &qword_21C6D07F8);
  (*(*(v44 - 8) + 56))(v16, v33, 1, v44);
  v79 = v66;
  v80 = v61 & 1;
  v81 = &v79;
  v45 = v68;
  v62(v20, v68, v35);
  v77 = v65;
  v78 = v60 & 1;
  v82 = v20;
  v83 = &v77;
  v46 = v70;
  sub_21C6988FC(v16, v70);
  v84 = v46;

  v76[0] = &type metadata for MalwareDetectionListHeaderElement;
  v76[1] = v35;
  v76[2] = &type metadata for ApplicationInstallConfirmationListSectionElement;
  v76[3] = v69;
  v72 = sub_21C69896C();
  v73 = v34;
  v74 = sub_21C6989C0();
  v75 = sub_21C698A14();
  sub_21C696DC4(&v81, 4uLL, v76);

  sub_21C698BF0(v16);
  v47 = v45;
  v48 = v67;
  v67(v47, v35);
  sub_21C698BF0(v46);

  v48(v20, v35);
}

uint64_t sub_21C697E1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6BA0, &qword_21C6D07E8);
  sub_21C6CE940();
  swift_getKeyPath();
  sub_21C698BA8(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
  sub_21C6CE040();

  v0 = *(v4 + 115);

  if (v0 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6BA0, &qword_21C6D07E8);
    sub_21C6CE940();
    swift_getKeyPath();
    sub_21C6CE040();

    v1 = *(v4 + 116);

    v2 = v1 ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_21C697F80(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v2[14] = sub_21C6CECA0();
  v2[15] = sub_21C6CEC90();
  v4 = sub_21C6CEC80();
  v2[16] = v4;
  v2[17] = v3;

  return MEMORY[0x2822009F8](sub_21C69801C, v4, v3);
}

uint64_t sub_21C69801C()
{
  v1 = v0[13];
  v0[8] = v0[12];
  v0[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6BA0, &qword_21C6D07E8);
  sub_21C6CE940();
  v0[18] = v0[10];
  v0[19] = sub_21C6CEC90();

  return MEMORY[0x2822009F8](sub_21C6980C0, 0, 0);
}

uint64_t sub_21C6980C0()
{
  v1 = [objc_opt_self() enumeratorWithOptions_];
  v0[6] = sub_21C6A1EA4;
  v0[7] = 0;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_21C698780;
  v0[5] = &block_descriptor;
  v2 = _Block_copy(v0 + 2);
  [v1 setFilter_];
  _Block_release(v2);
  v3 = [v1 nextObject];
  v0[20] = v3;

  if (v3)
  {
  }

  v5 = sub_21C6CEC80();
  v0[21] = v5;
  v0[22] = v4;

  return MEMORY[0x2822009F8](sub_21C698210, v5, v4);
}

uint64_t sub_21C698210()
{
  v1 = v0[20];
  v2 = v0[18];
  if (((v1 != 0) ^ *(v2 + 161)))
  {
    v3 = v1 != 0;
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v0[11] = v2;
    sub_21C698BA8(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
    sub_21C6CE030();
  }

  else
  {
    *(v2 + 161) = v1 != 0;
  }

  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_21C698394;

  return sub_21C69EE48();
}

uint64_t sub_21C698394()
{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return MEMORY[0x2822009F8](sub_21C6984B4, v3, v2);
}

uint64_t sub_21C6984B4()
{

  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return MEMORY[0x2822009F8](sub_21C698520, v1, v2);
}

uint64_t sub_21C698520()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21C698594()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21C68F38C;

  return sub_21C697F80(v2, v3);
}

uint64_t sub_21C698698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_21C6986E0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_21C698728(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_21C698780(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t sub_21C6987FC(uint64_t a1)
{
  v2 = sub_21C6CE320();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_21C6CE490();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21C6988FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6B10, &qword_21C6D06D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21C69896C()
{
  result = qword_27CDE6BB8;
  if (!qword_27CDE6BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6BB8);
  }

  return result;
}

unint64_t sub_21C6989C0()
{
  result = qword_27CDE6BC0;
  if (!qword_27CDE6BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6BC0);
  }

  return result;
}

unint64_t sub_21C698A14()
{
  result = qword_27CDE6BC8;
  if (!qword_27CDE6BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6B10, &qword_21C6D06D0);
    sub_21C698A98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6BC8);
  }

  return result;
}

unint64_t sub_21C698A98()
{
  result = qword_27CDE6BD0;
  if (!qword_27CDE6BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6BB0, &qword_21C6D07F8);
    sub_21C698B54();
    sub_21C698BA8(&qword_27CDE6AC8, type metadata accessor for MalwareDetectionReenableApplicationListButton, &unk_21C6D0280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6BD0);
  }

  return result;
}

unint64_t sub_21C698B54()
{
  result = qword_27CDE6BD8;
  if (!qword_27CDE6BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6BD8);
  }

  return result;
}

uint64_t sub_21C698BA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C698BF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6B10, &qword_21C6D06D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C698C58(uint64_t a1)
{
  v2 = type metadata accessor for MalwareDetectionReenableApplicationListButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C698CE8()
{
  swift_getKeyPath();
  sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
  sub_21C6CE040();

  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_21C698D98()
{
  swift_getKeyPath();
  sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
  sub_21C6CE040();

  v1 = *(v0 + 96);

  return v1;
}

uint64_t sub_21C698E48()
{
  swift_getKeyPath();
  sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
  sub_21C6CE040();

  return *(v0 + 117);
}

uint64_t sub_21C698EE8()
{
  swift_getKeyPath();
  sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
  sub_21C6CE040();

  return *(v0 + 115);
}

uint64_t sub_21C698F88()
{
  v1 = sub_21C6CDF80();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21C6CE1A0();
  v6 = *(v5 - 8);
  v47 = v5;
  v48 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v45 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6BF8, &qword_21C6D0A30);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v41 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  v20 = *(v0 + 16);
  v21 = *(v0 + 24);
  v46 = v0;
  v22 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v43 = v21;
  v44 = v20;
  v23 = sub_21C6BF2EC(v20, v21, 0);
  v42 = v8;
  v45 = v23;
  v24 = [v23 iTunesMetadata];
  v25 = [v24 distributorInfo];

  v26 = [v25 supportPageURL];
  if (v26)
  {
    sub_21C6CDF60();

    v27 = v2;
    (*(v2 + 56))(v16, 0, 1, v1);
  }

  else
  {
    v27 = v2;
    (*(v2 + 56))(v16, 1, 1, v1);
  }

  sub_21C6A2894(v16, v19);
  sub_21C68F744(v19, v13, &qword_27CDE6BF8, &qword_21C6D0A30);
  if ((*(v27 + 48))(v13, 1, v1) == 1)
  {
    sub_21C68F7D4(v13, &qword_27CDE6BF8, &qword_21C6D0A30);
    if (qword_27CDE67F0 != -1)
    {
      swift_once();
    }

    v28 = v47;
    v29 = __swift_project_value_buffer(v47, qword_27CDE9D90);
    v30 = v48;
    v31 = v42;
    (*(v48 + 16))(v42, v29, v28);

    v32 = sub_21C6CE180();
    v33 = sub_21C6CECF0();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v49 = v35;
      *v34 = 141558275;
      *(v34 + 4) = 1752392040;
      *(v34 + 12) = 2081;
      *(v34 + 14) = sub_21C6A218C(v44, v43, &v49);
      _os_log_impl(&dword_21C685000, v32, v33, "Failed to retrieve support page URL for %{private,mask.hash}s.", v34, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x21CF0FD60](v35, -1, -1);
      MEMORY[0x21CF0FD60](v34, -1, -1);
    }

    (*(v30 + 8))(v31, v28);
  }

  else
  {
    v36 = v4;
    (*(v27 + 32))(v4, v13, v1);
    v37 = [objc_opt_self() sharedApplication];
    v38 = sub_21C6CDF40();
    sub_21C6C8824(MEMORY[0x277D84F90]);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_21C6A2BEC(&qword_27CDE68E0, type metadata accessor for OpenExternalURLOptionsKey, &unk_21C6CFE54);
    v39 = sub_21C6CEB30();

    [v37 openURL:v38 options:v39 completionHandler:0];

    (*(v27 + 8))(v36, v1);
  }

  return sub_21C68F7D4(v19, &qword_27CDE6BF8, &qword_21C6D0A30);
}

uint64_t sub_21C699734()
{
  swift_getKeyPath();
  sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
  sub_21C6CE040();

  return *(v0 + 161);
}

uint64_t sub_21C6997D4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
  sub_21C6CE040();

  swift_beginAccess();
  return sub_21C68F744(v1 + 120, a1, &qword_27CDE6860, &qword_21C6CF9D0);
}

uint64_t sub_21C6998A4()
{
  swift_getKeyPath();
  sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
  sub_21C6CE040();

  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_21C699954()
{
  swift_getKeyPath();
  sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
  sub_21C6CE040();

  return *(v0 + 114);
}

uint64_t sub_21C6999F4(__n128 a1)
{
  v2[6] = v1;
  v3 = sub_21C6CE1A0();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21C699AB4, 0, 0);
}

uint64_t sub_21C699AB4()
{
  v1 = v0[6];
  v2 = v1[22];
  if (v2)
  {
    v3 = v1[21];
    v4 = v1[2];
    v5 = v1[3];
    objc_allocWithZone(MEMORY[0x277CC1E70]);

    v6 = sub_21C6BF2EC(v4, v5, 0);
    v0[10] = v6;
    v7 = [v6 iTunesMetadata];
    v8 = [v7 storeItemIdentifier];

    v9 = swift_task_alloc();
    v0[11] = v9;
    *v9 = v0;
    v9[1] = sub_21C699DC8;

    return MEMORY[0x2821237A0](v3, v2, v8, 0, 1);
  }

  else
  {

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_21C699DC8()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_21C699F44;
  }

  else
  {
    v2 = sub_21C699EDC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21C699EDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21C699F44()
{
  v21 = v0;

  v1 = *(v0 + 96);
  if (qword_27CDE67E8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 56);
  v5 = __swift_project_value_buffer(v4, qword_27CDE9D78);
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_21C6CE180();
  v8 = sub_21C6CECE0();

  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 64);
  v10 = *(v0 + 72);
  v12 = *(v0 + 56);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    swift_getErrorValue();
    v15 = sub_21C6CEE40();
    v17 = sub_21C6A218C(v15, v16, &v20);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_21C685000, v7, v8, "Error requesting product page: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x21CF0FD60](v14, -1, -1);
    MEMORY[0x21CF0FD60](v13, -1, -1);

    (*(v11 + 8))(v10, v12);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_21C69A160()
{
  swift_getKeyPath();
  sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
  sub_21C6CE040();

  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_21C69A210()
{
  swift_getKeyPath();
  sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
  sub_21C6CE040();

  v1 = *(v0 + 80);

  return v1;
}

uint64_t sub_21C69A2C0()
{
  swift_getKeyPath();
  sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
  sub_21C6CE040();

  return *(v0 + 162);
}

uint64_t sub_21C69A360(uint64_t result)
{
  if (*(v1 + 162) == (result & 1))
  {
    *(v1 + 162) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
    sub_21C6CE030();
  }

  return result;
}

uint64_t sub_21C69A470(__n128 a1)
{
  v2[35] = v1;
  v3 = sub_21C6CE1A0();
  v2[36] = v3;
  v2[37] = *(v3 - 8);
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21C69A53C, 0, 0);
}

uint64_t sub_21C69A53C()
{
  v24 = v0;
  v1 = v0[35];
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = objc_allocWithZone(MEMORY[0x277D1C160]);
  v5 = sub_21C6CEB90();
  v6 = [v4 initWithBundleIdentifier_];
  v0[40] = v6;

  if (v6)
  {
    v7 = objc_opt_self();
    v0[41] = v7;
    v0[2] = v0;
    v0[3] = sub_21C69A864;
    v8 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6C08, &qword_21C6D0C10);
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_21C69FE60;
    v0[21] = &block_descriptor_0;
    v0[22] = v8;
    [v7 setRemovability:1 forAppWithIdentity:v6 byClient:0 completion:v0 + 18];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    if (qword_27CDE67F0 != -1)
    {
      swift_once();
    }

    v10 = v0[37];
    v9 = v0[38];
    v11 = v0[36];
    v12 = __swift_project_value_buffer(v11, qword_27CDE9D90);
    (*(v10 + 16))(v9, v12, v11);

    v13 = sub_21C6CE180();
    v14 = sub_21C6CECE0();

    v15 = os_log_type_enabled(v13, v14);
    v17 = v0[37];
    v16 = v0[38];
    v18 = v0[36];
    if (v15)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v23 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_21C6A218C(v2, v3, &v23);
      _os_log_impl(&dword_21C685000, v13, v14, "Failed to create IXApplicationIdentity for %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x21CF0FD60](v20, -1, -1);
      MEMORY[0x21CF0FD60](v19, -1, -1);
    }

    (*(v17 + 8))(v16, v18);

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_21C69A864()
{
  v1 = *(*v0 + 48);
  *(*v0 + 336) = v1;
  if (v1)
  {
    v2 = sub_21C69ADB4;
  }

  else
  {
    v2 = sub_21C69A974;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21C69A974()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D1C1D0]) init];
  v0[43] = v1;
  if (v1)
  {
    v2 = v0[40];
    v3 = v0[41];
    v4 = v1;
    [v1 setRequestUserConfirmation_];
    [v4 setWaitForDeletion_];
    v0[10] = v0;
    v0[15] = v0 + 34;
    v0[11] = sub_21C69AC2C;
    v5 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6C10, &qword_21C6D0C18);
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = sub_21C69FF0C;
    v0[29] = &block_descriptor_52;
    v0[30] = v5;
    [v3 uninstallAppWithIdentity:v2 options:v4 completion:v0 + 26];

    return MEMORY[0x282200938](v0 + 10);
  }

  else
  {
    if (qword_27CDE67F0 != -1)
    {
      swift_once();
    }

    v6 = v0[39];
    v7 = v0[36];
    v8 = v0[37];
    v9 = __swift_project_value_buffer(v7, qword_27CDE9D90);
    (*(v8 + 16))(v6, v9, v7);
    v10 = sub_21C6CE180();
    v11 = sub_21C6CECE0();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[39];
    v14 = v0[40];
    v15 = v0[36];
    v16 = v0[37];
    if (v12)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_21C685000, v10, v11, "Failed to create IXUninstallOptions", v17, 2u);
      MEMORY[0x21CF0FD60](v17, -1, -1);
    }

    (*(v16 + 8))(v13, v15);

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_21C69AC2C()
{
  v1 = *(*v0 + 112);
  *(*v0 + 352) = v1;
  if (v1)
  {
    v2 = sub_21C69AE40;
  }

  else
  {
    v2 = sub_21C69AD3C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21C69AD3C()
{
  v1 = *(v0 + 320);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21C69ADB4()
{
  v1 = v0[42];
  v2 = v0[40];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_21C69AE40()
{
  v1 = v0[43];
  v2 = v0[44];
  v3 = v0[40];
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

void sub_21C69AED8(__n128 a1)
{
  v2 = v1;
  v42[1] = *MEMORY[0x277D85DE8];
  v3 = sub_21C6CE1A0();
  v41 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v7 = sub_21C6CDF80();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v40 = v11;
  v14 = sub_21C6BF2EC(v11, v12, 0);
  v38 = v5;
  v15 = v14;
  v16 = [objc_allocWithZone(MEMORY[0x277D82A90]) init];
  v39 = v15;
  v17 = [v15 URL];
  sub_21C6CDF60();

  v18 = sub_21C6CDF40();
  (*(v8 + 8))(v10, v7);
  v42[0] = 0;
  LOBYTE(v7) = [v16 setUserOverride:1 forBundle:v18 withError:v42];

  v19 = v42[0];
  if (v7)
  {
    if (v2[116] == 1)
    {
      v20 = v42[0];

      v2[116] = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v37 - 2) = v2;
      *(&v37 - 8) = 1;
      v42[0] = v2;
      sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
      v36 = v19;
      sub_21C6CE030();
    }
  }

  else
  {
    v21 = v42[0];
    v22 = sub_21C6CDEE0();

    swift_willThrow();
    if (qword_27CDE67F0 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v3, qword_27CDE9D90);
    v24 = v41;
    v25 = v38;
    (*(v41 + 16))(v38, v23, v3);

    v26 = v22;
    v27 = sub_21C6CE180();
    v28 = sub_21C6CECE0();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v42[0] = v30;
      *v29 = 141558531;
      *(v29 + 4) = 1752392040;
      *(v29 + 12) = 2081;
      *(v29 + 14) = sub_21C6A218C(v40, v12, v42);
      *(v29 + 22) = 2082;
      swift_getErrorValue();
      v31 = sub_21C6CEE40();
      v33 = v25;
      v34 = sub_21C6A218C(v31, v32, v42);

      *(v29 + 24) = v34;
      _os_log_impl(&dword_21C685000, v27, v28, "Failed to set user override for %{private,mask.hash}s, error: '%{public}s'.", v29, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CF0FD60](v30, -1, -1);
      MEMORY[0x21CF0FD60](v29, -1, -1);

      (*(v24 + 8))(v33, v3);
    }

    else
    {

      (*(v24 + 8))(v25, v3);
    }
  }
}

uint64_t sub_21C69B644(uint64_t a1)
{
  v60 = a1;
  v67[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6BF8, &qword_21C6D0A30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v55 - v6;
  v8 = sub_21C6CE1A0();
  v65 = *(v8 - 1);
  v66 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v12 = sub_21C6CDF80();
  v61 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v55 - v16;
  v18 = *(v1 + 16);
  v19 = *(v1 + 24);
  v64 = v1;
  v20 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v62 = v19;
  v63 = v18;
  v21 = sub_21C6BF2EC(v18, v19, 0);
  v56 = v4;
  v22 = v14;
  v57 = v10;
  v58 = v7;
  v23 = v21;
  v24 = [objc_allocWithZone(MEMORY[0x277D82A90]) init];
  v59 = v23;
  v25 = [v23 URL];
  sub_21C6CDF60();

  v26 = sub_21C6CDF40();
  v27 = v61;
  v28 = *(v61 + 8);
  v28(v17, v12);
  v67[0] = 0;
  v29 = [v24 queryForBundle:v26 withError:v67];

  if (v29)
  {
    v30 = v12;
    v66 = v28;
    v31 = v67[0];
    v32 = [v29 kbURL];
    if (v32)
    {
      v33 = v32;
      sub_21C6CDF60();

      v34 = *(v27 + 32);
      v35 = v58;
      v34(v58, v17, v30);
      (*(v27 + 56))(v35, 0, 1, v30);
      v34(v22, v35, v30);
LABEL_12:
      sub_21C6CE310();

      return v66(v22, v30);
    }

    v51 = v24;
    v52 = v58;
    (*(v27 + 56))(v58, 1, 1, v30);
    v53 = v56;
    sub_21C6CDF70();
    v54 = *(v27 + 48);
    result = v54(v53, 1, v30);
    if (result != 1)
    {
      (*(v27 + 32))(v22, v53, v30);
      v24 = v51;
      if (v54(v52, 1, v30) != 1)
      {
        sub_21C68F7D4(v52, &qword_27CDE6BF8, &qword_21C6D0A30);
      }

      goto LABEL_12;
    }

    __break(1u);
  }

  else
  {
    v36 = v67[0];
    v37 = sub_21C6CDEE0();

    swift_willThrow();
    if (qword_27CDE67F0 != -1)
    {
      swift_once();
    }

    v38 = v66;
    v39 = __swift_project_value_buffer(v66, qword_27CDE9D90);
    v40 = v65;
    v41 = v57;
    (*(v65 + 16))(v57, v39, v38);

    v42 = v37;
    v43 = sub_21C6CE180();
    v44 = sub_21C6CECE0();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v67[0] = v46;
      *v45 = 141558531;
      *(v45 + 4) = 1752392040;
      *(v45 + 12) = 2081;
      *(v45 + 14) = sub_21C6A218C(v63, v62, v67);
      *(v45 + 22) = 2082;
      swift_getErrorValue();
      v47 = sub_21C6CEE40();
      v49 = sub_21C6A218C(v47, v48, v67);

      *(v45 + 24) = v49;
      _os_log_impl(&dword_21C685000, v43, v44, "Failed to query launch warning database for %{private,mask.hash}s, error: '%{public}s'.", v45, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CF0FD60](v46, -1, -1);
      MEMORY[0x21CF0FD60](v45, -1, -1);
    }

    else
    {
    }

    return (*(v40 + 8))(v41, v38);
  }

  return result;
}

uint64_t sub_21C69BED8()
{
  swift_getKeyPath();
  sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
  sub_21C6CE040();

  return *(v0 + 116);
}

uint64_t sub_21C69BF78(__n128 a1)
{
  v2[17] = v1;
  v3 = sub_21C6CE1A0();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6C20, &qword_21C6D0C30);
  v2[22] = swift_task_alloc();
  v4 = sub_21C6CE140();
  v2[23] = v4;
  v2[24] = *(v4 - 8);
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21C69C0D8, 0, 0);
}

uint64_t sub_21C69C0D8()
{
  v31 = v0;
  v1 = v0[24];
  v2 = v0[17];
  swift_getKeyPath();
  v0[13] = v2;
  v0[26] = OBJC_IVAR____TtC29ThirdPartyApplicationSettings28ApplicationDistributionState___observationRegistrar;
  v0[27] = sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
  sub_21C6CE040();

  swift_beginAccess();
  sub_21C68F744(v2 + 120, (v0 + 2), &qword_27CDE6860, &qword_21C6CF9D0);
  v3 = (v1 + 56);
  if (v0[5])
  {
    v4 = v0[23];
    v5 = v0[24];
    v6 = v0[22];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6C50, &qword_21C6D0C78);
    v7 = swift_dynamicCast();
    (*v3)(v6, v7 ^ 1u, 1, v4);
    if ((*(v5 + 48))(v6, 1, v4) != 1)
    {
      v8 = v0[17];
      (*(v0[24] + 32))(v0[25], v0[22], v0[23]);
      if (*(v8 + 160) == 1)
      {
        *(v8 + 160) = 1;
      }

      else
      {
        v26 = v0[17];
        swift_getKeyPath();
        v27 = swift_task_alloc();
        *(v27 + 16) = v26;
        *(v27 + 24) = 1;
        v0[14] = v26;
        sub_21C6CE030();
      }

      v28 = swift_task_alloc();
      v0[28] = v28;
      *v28 = v0;
      v28[1] = sub_21C69C598;
      v29 = v0[25];

      return MEMORY[0x282123768](v29);
    }
  }

  else
  {
    v9 = v0[22];
    v10 = v0[23];
    sub_21C68F7D4((v0 + 2), &qword_27CDE6860, &qword_21C6CF9D0);
    (*v3)(v9, 1, 1, v10);
  }

  sub_21C68F7D4(v0[22], &qword_27CDE6C20, &qword_21C6D0C30);
  if (qword_27CDE67F0 != -1)
  {
    swift_once();
  }

  v11 = v0[21];
  v12 = v0[18];
  v13 = v0[19];
  v14 = __swift_project_value_buffer(v12, qword_27CDE9D90);
  (*(v13 + 16))(v11, v14, v12);

  v15 = sub_21C6CE180();
  v16 = sub_21C6CECF0();

  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[21];
  v19 = v0[18];
  v20 = v0[19];
  if (v17)
  {
    v21 = v0[17];
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v30 = v23;
    *v22 = 141558275;
    *(v22 + 4) = 1752392040;
    *(v22 + 12) = 2081;
    *(v22 + 14) = sub_21C6A218C(*(v21 + 16), *(v21 + 24), &v30);
    _os_log_impl(&dword_21C685000, v15, v16, "Requested Update for %{private,mask.hash}s, but no update metadata was available.", v22, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x21CF0FD60](v23, -1, -1);
    MEMORY[0x21CF0FD60](v22, -1, -1);
  }

  (*(v20 + 8))(v18, v19);

  v24 = v0[1];

  return v24();
}

uint64_t sub_21C69C598()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_21C69C74C;
  }

  else
  {
    v2 = sub_21C69C6AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21C69C6AC()
{
  (*(v0[24] + 8))(v0[25], v0[23]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_21C69C74C()
{
  v32 = v0;
  v1 = v0[17];
  if (*(v1 + 160))
  {
    swift_getKeyPath();
    v2 = swift_task_alloc();
    *(v2 + 16) = v1;
    *(v2 + 24) = 0;
    v0[16] = v1;
    sub_21C6CE030();
  }

  else
  {
    *(v1 + 160) = 0;
  }

  if (qword_27CDE67F0 != -1)
  {
    swift_once();
  }

  v3 = v0[29];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  v7 = __swift_project_value_buffer(v6, qword_27CDE9D90);
  (*(v5 + 16))(v4, v7, v6);

  v8 = v3;
  v9 = sub_21C6CE180();
  v10 = sub_21C6CECE0();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[29];
  v14 = v0[24];
  v13 = v0[25];
  v15 = v0[23];
  v17 = v0[19];
  v16 = v0[20];
  v18 = v0[18];
  if (v11)
  {
    v30 = v0[25];
    v19 = v0[17];
    v29 = v0[18];
    v20 = swift_slowAlloc();
    v28 = v15;
    v21 = swift_slowAlloc();
    v31[0] = v21;
    *v20 = 141558531;
    *(v20 + 4) = 1752392040;
    *(v20 + 12) = 2081;
    *(v20 + 14) = sub_21C6A218C(*(v19 + 16), *(v19 + 24), v31);
    *(v20 + 22) = 2082;
    swift_getErrorValue();
    v22 = sub_21C6CEE40();
    v27 = v16;
    v24 = sub_21C6A218C(v22, v23, v31);

    *(v20 + 24) = v24;
    _os_log_impl(&dword_21C685000, v9, v10, "Failed to request Update for %{private,mask.hash}s, error: '%{public}s'.", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CF0FD60](v21, -1, -1);
    MEMORY[0x21CF0FD60](v20, -1, -1);

    (*(v17 + 8))(v27, v29);
    (*(v14 + 8))(v30, v28);
  }

  else
  {

    (*(v17 + 8))(v16, v18);
    (*(v14 + 8))(v13, v15);
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_21C69CAA8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32) == a1 && *(v2 + 40) == a2;
  if (v5 || (sub_21C6CEE20() & 1) != 0)
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
    sub_21C6CE030();
  }
}

uint64_t sub_21C69CC08(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48) == a1 && *(v2 + 56) == a2;
  if (v5 || (sub_21C6CEE20() & 1) != 0)
  {
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
    sub_21C6CE030();
  }
}

uint64_t sub_21C69CD68(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64) == a1 && *(v2 + 72) == a2;
  if (v5 || (sub_21C6CEE20() & 1) != 0)
  {
    *(v2 + 64) = a1;
    *(v2 + 72) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
    sub_21C6CE030();
  }
}

uint64_t sub_21C69CEC8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80) == a1 && *(v2 + 88) == a2;
  if (v5 || (sub_21C6CEE20() & 1) != 0)
  {
    *(v2 + 80) = a1;
    *(v2 + 88) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
    sub_21C6CE030();
  }
}

uint64_t sub_21C69D028(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 96) == a1 && *(v2 + 104) == a2;
  if (v5 || (sub_21C6CEE20() & 1) != 0)
  {
    *(v2 + 96) = a1;
    *(v2 + 104) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
    sub_21C6CE030();
  }
}

uint64_t sub_21C69D188(uint64_t result)
{
  if (*(v1 + 114) == (result & 1))
  {
    *(v1 + 114) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
    sub_21C6CE030();
  }

  return result;
}

uint64_t sub_21C69D298(uint64_t result)
{
  if (*(v1 + 115) == (result & 1))
  {
    *(v1 + 115) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
    sub_21C6CE030();
  }

  return result;
}

uint64_t sub_21C69D3A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
  sub_21C6CE040();

  *a2 = *(v3 + 116);
  return result;
}

uint64_t sub_21C69D478(uint64_t result)
{
  if (*(v1 + 116) == (result & 1))
  {
    *(v1 + 116) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
    sub_21C6CE030();
  }

  return result;
}

uint64_t sub_21C69D588(uint64_t result)
{
  if (*(v1 + 117) == (result & 1))
  {
    *(v1 + 117) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
    sub_21C6CE030();
  }

  return result;
}

uint64_t sub_21C69D698(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_21C6A27A4(a2, a1 + 120);
  return swift_endAccess();
}

uint64_t sub_21C69D6FC()
{
  swift_getKeyPath();
  sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
  sub_21C6CE040();

  return *(v0 + 160);
}

uint64_t sub_21C69D79C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
  sub_21C6CE040();

  *a2 = *(v3 + 160);
  return result;
}

uint64_t sub_21C69D86C(uint64_t result)
{
  if (*(v1 + 160) == (result & 1))
  {
    *(v1 + 160) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
    sub_21C6CE030();
  }

  return result;
}

uint64_t sub_21C69D97C(uint64_t result)
{
  if (*(v1 + 161) == (result & 1))
  {
    *(v1 + 161) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
    sub_21C6CE030();
  }

  return result;
}

uint64_t sub_21C69DA94(uint64_t a1, uint64_t a2)
{
  v154[1] = *MEMORY[0x277D85DE8];
  v5 = sub_21C6CDF80();
  v136 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21C6CE1A0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v124 - v13;
  MEMORY[0x28223BE20](v15);
  *(v2 + 114) = 0;
  *(v2 + 117) = 0;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 147) = 0u;
  sub_21C6CE050();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v150 = v2;
  v16 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  swift_bridgeObjectRetain_n();
  v149 = a1;
  v153 = a2;
  v17 = sub_21C6BF2EC(a1, a2, 0);
  v145 = 0;
  v18 = v17;
  v141 = v14;
  v130 = v7;
  v125 = v11;
  v137 = v9;
  v135 = v8;
  v148 = [v17 isManagedAppDistributor];
  v19 = [v18 iTunesMetadata];
  v20 = [v19 distributorInfo];

  v21 = [v20 distributorID];
  if (v21)
  {
    v22 = sub_21C6CEBC0();
    v24 = v23;

    v25 = v5;
    if (v22 == v149 && v24 == v153)
    {
      v151 = 1;
    }

    else
    {
      v151 = sub_21C6CEE20();
    }

    v26 = v135;
  }

  else
  {
    v151 = 0;
    v26 = v135;
    v25 = v5;
  }

  v27 = v18;
  v28 = [v27 localizedName];
  v29 = sub_21C6CEBC0();
  v133 = v30;

  v31 = [v27 iTunesMetadata];
  v32 = [v31 distributorInfo];

  v33 = [v32 distributorID];
  if (v33)
  {
    v152 = sub_21C6CEBC0();
    v35 = v34;
  }

  else
  {
    v152 = 0;
    v35 = 0;
  }

  v36 = v137;
  v37 = [v27 iTunesMetadata];
  v38 = [v37 artistName];

  v39 = v141;
  if (!v38)
  {
    if (qword_27CDE67D8 != -1)
    {
      swift_once();
    }

    v40 = qword_27CDE9D58;
    v41 = sub_21C6CEB90();
    v38 = [v40 localizedStringForKey:v41 value:0 table:0];
  }

  v127 = v25;
  v146 = sub_21C6CEBC0();
  v132 = v42;

  v43 = [v27 shortVersionString];
  if (v43)
  {
    v44 = v43;
    v144 = sub_21C6CEBC0();
    v131 = v45;
  }

  else
  {
    v144 = 0;
    v131 = 0xE000000000000000;
  }

  v46 = v152;
  v47 = [v27 exactBundleVersion];
  if (!v47)
  {
    v143 = 0;
    v129 = 0xE000000000000000;
    if (v151)
    {
      goto LABEL_20;
    }

LABEL_26:
    v142 = 0;
    v128 = 0xE000000000000000;
    v53 = v145;
    goto LABEL_27;
  }

  v48 = v47;
  v143 = sub_21C6CEBC0();
  v129 = v49;

  if ((v151 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_20:
  v50 = [v27 iTunesMetadata];
  v51 = [v50 distributorInfo];

  v52 = [v51 domain];
  v53 = v145;
  if (!v52)
  {
    if (qword_27CDE67D8 != -1)
    {
      swift_once();
    }

    v54 = qword_27CDE9D58;
    v55 = sub_21C6CEB90();
    v52 = [v54 localizedStringForKey:v55 value:0 table:0];
  }

  v142 = sub_21C6CEBC0();
  v128 = v56;

  v46 = v152;
LABEL_27:
  v134 = v29;
  v147 = v35;
  if (!v35)
  {
    v70 = v26;
    goto LABEL_34;
  }

  v57 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  swift_bridgeObjectRetain_n();
  v58 = sub_21C6BF2EC(v46, v35, 0);
  if (v53)
  {
    if (qword_27CDE67F0 != -1)
    {
      swift_once();
    }

    v59 = __swift_project_value_buffer(v26, qword_27CDE9D90);
    (*(v36 + 16))(v39, v59, v26);

    v60 = v53;
    v61 = sub_21C6CE180();
    v62 = sub_21C6CECF0();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v154[0] = v64;
      *v63 = 141558531;
      *(v63 + 4) = 1752392040;
      *(v63 + 12) = 2081;
      v65 = sub_21C6A218C(v152, v35, v154);

      *(v63 + 14) = v65;
      *(v63 + 22) = 2082;
      swift_getErrorValue();
      v66 = sub_21C6CEE40();
      v68 = sub_21C6A218C(v66, v67, v154);

      *(v63 + 24) = v68;
      _os_log_impl(&dword_21C685000, v61, v62, "Failed to retrieve LSApplicationRecord for %{private,mask.hash}s with error '%{public}s'", v63, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CF0FD60](v64, -1, -1);
      v69 = v135;
      MEMORY[0x21CF0FD60](v63, -1, -1);

      v46 = v152;
      v70 = v69;
      (*(v137 + 8))(v39, v69);
LABEL_34:
      v71 = 0;
      v72 = 1;
      goto LABEL_38;
    }

    v70 = v26;
    (*(v36 + 8))(v39, v26);
    v71 = 0;
    v72 = 1;
  }

  else
  {
    v73 = v58;
    v70 = v26;

    sub_21C6CE0C0();
    sub_21C6CE0B0();
    v74 = [v73 iTunesMetadata];
    [v74 storeItemIdentifier];

    v71 = sub_21C6CE0A0();

    v72 = 0;
  }

  v46 = v152;
LABEL_38:
  *(v150 + 216) = v71;
  v75 = [v27 iTunesMetadata];
  v76 = [v75 distributorInfo];

  v77 = [v76 distributorNameForCurrentLocale];
  v78 = v151;
  v79 = v130;
  if (!v77)
  {
    if (qword_27CDE67D8 != -1)
    {
      swift_once();
    }

    v80 = qword_27CDE9D58;
    v81 = sub_21C6CEB90();
    v77 = [v80 localizedStringForKey:v81 value:0 table:0];
  }

  v140 = sub_21C6CEBC0();
  v126 = v82;

  v83 = [v27 iTunesMetadata];
  v84 = [v83 distributorInfo];

  v85 = [v84 developerName];
  v86 = v72;
  if (!v85)
  {
    if (qword_27CDE67D8 != -1)
    {
      swift_once();
    }

    v87 = qword_27CDE9D58;
    v88 = sub_21C6CEB90();
    v85 = [v87 localizedStringForKey:v88 value:0 table:0];
  }

  v139 = sub_21C6CEBC0();
  v138 = v89;

  if (v78)
  {
    v90 = [v27 iTunesMetadata];
    v91 = [v90 distributorInfo];

    v92 = [v91 developerID];
    if (v92)
    {
      sub_21C6CEBC0();

      v93 = sub_21C6CE100();

      v86 = v72 | v93 ^ 1;
    }
  }

  v94 = [objc_allocWithZone(MEMORY[0x277D82A90]) init];
  v95 = [v27 URL];

  sub_21C6CDF60();
  v96 = sub_21C6CDF40();
  (*(v136 + 8))(v79, v127);
  v154[0] = 0;
  v97 = [v94 queryForBundle:v96 withError:v154];

  LODWORD(v141) = v86;
  if (v97)
  {
    v98 = v154[0];
    LODWORD(v137) = [v97 warningState] == 1;
    LODWORD(v145) = [v97 isUserOverridden];

    v99 = v150;
    v100 = v134;
    v152 = v46;
    v101 = v133;
  }

  else
  {
    v102 = v154[0];
    v103 = sub_21C6CDEE0();

    swift_willThrow();
    if (qword_27CDE67F0 != -1)
    {
      swift_once();
    }

    v104 = __swift_project_value_buffer(v70, qword_27CDE9D90);
    v105 = v137;
    v106 = v125;
    (*(v137 + 16))(v125, v104, v70);

    v107 = v103;
    v108 = sub_21C6CE180();
    v109 = sub_21C6CECE0();

    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v154[0] = v111;
      *v110 = 141558531;
      *(v110 + 4) = 1752392040;
      *(v110 + 12) = 2081;
      *(v110 + 14) = sub_21C6A218C(v149, v153, v154);
      *(v110 + 22) = 2082;
      swift_getErrorValue();
      v112 = sub_21C6CEE40();
      v114 = sub_21C6A218C(v112, v113, v154);

      *(v110 + 24) = v114;
      _os_log_impl(&dword_21C685000, v108, v109, "Failed to query for malware warning for %{private,mask.hash}s with error '%{public}s'.", v110, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CF0FD60](v111, -1, -1);
      MEMORY[0x21CF0FD60](v110, -1, -1);

      (*(v105 + 8))(v106, v135);
    }

    else
    {

      (*(v105 + 8))(v106, v70);
    }

    LODWORD(v145) = 0;
    LODWORD(v137) = 0;
    v100 = v134;
    v101 = v133;
    v99 = v150;
  }

  v115 = v132;
  v116 = v131;
  v117 = v129;
  v118 = v128;
  v119 = v126;
  v120 = sub_21C6CE110();

  *(v99 + 162) = v120 & 1;
  *(v99 + 115) = v137;
  *(v99 + 116) = v145;
  *(v99 + 32) = v100;
  *(v99 + 40) = v101;
  *(v99 + 113) = v148;
  *(v99 + 114) = v141 & 1;
  *(v99 + 112) = v151 & 1;
  *(v99 + 48) = v146;
  *(v99 + 56) = v115;
  *(v99 + 96) = v142;
  *(v99 + 104) = v118;
  v121 = v147;
  *(v99 + 168) = v152;
  *(v99 + 176) = v121;
  *(v99 + 184) = v140;
  *(v99 + 192) = v119;
  v122 = v138;
  *(v99 + 200) = v139;
  *(v99 + 208) = v122;
  *(v99 + 64) = v144;
  *(v99 + 72) = v116;
  *(v99 + 80) = v143;
  *(v99 + 88) = v117;
  sub_21C6CE020();
  sub_21C6CE020();
  return v99;
}

uint64_t sub_21C69EE48()
{
  v1[35] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6C20, &qword_21C6D0C30);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v2 = sub_21C6CE1A0();
  v1[38] = v2;
  v1[39] = *(v2 - 8);
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21C69EF64, 0, 0);
}

uint64_t sub_21C69EF64()
{
  v1 = v0[35];
  v2 = *(v1 + 16);
  v0[43] = v2;
  v3 = *(v1 + 24);
  v0[44] = v3;
  v4 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v5 = sub_21C6BF2EC(v2, v3, 0);
  v6 = [v5 iTunesMetadata];
  v7 = [v6 distributorInfo];

  v8 = [v7 developerID];
  if (v8 && (sub_21C6CEBC0(), v8, v9 = sub_21C6CE100(), , (v9 & 1) == 0))
  {
    v12 = v0[35];
    if (*(v12 + 117))
    {
      swift_getKeyPath();
      v13 = swift_task_alloc();
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      v0[34] = v12;
      sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
      sub_21C6CE030();
    }

    else
    {
      *(v12 + 117) = 0;
    }

    if (qword_27CDE67F0 != -1)
    {
      swift_once();
    }

    v14 = v0[41];
    v15 = v0[38];
    v16 = v0[39];
    v17 = __swift_project_value_buffer(v15, qword_27CDE9D90);
    (*(v16 + 16))(v14, v17, v15);
    v18 = sub_21C6CE180();
    v19 = sub_21C6CED00();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[41];
    v22 = v0[38];
    v23 = v0[39];
    if (v20)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_21C685000, v18, v19, "Developer is not approved so will not fetch for updates", v24, 2u);
      MEMORY[0x21CF0FD60](v24, -1, -1);
    }

    (*(v23 + 8))(v21, v22);

    v25 = v0[1];

    return v25();
  }

  else
  {

    v10 = swift_task_alloc();
    v0[45] = v10;
    *v10 = v0;
    v10[1] = sub_21C69F580;
    v11 = v0[37];

    return MEMORY[0x282123780](v11, v2, v3, 0);
  }
}

uint64_t sub_21C69F580()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_21C69FA1C;
  }

  else
  {
    v2 = sub_21C69F694;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21C69F694()
{
  v1 = (v0 + 56);
  v2 = *(v0 + 288);
  sub_21C68F744(*(v0 + 296), v2, &qword_27CDE6C20, &qword_21C6D0C30);
  v3 = sub_21C6CE140();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = *(v0 + 288);
  if (v5 == 1)
  {
    sub_21C68F7D4(*(v0 + 288), &qword_27CDE6C20, &qword_21C6D0C30);
    *v1 = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
  }

  else
  {
    *(v0 + 80) = v3;
    *(v0 + 88) = &off_282E3F358;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    (*(v4 + 32))(boxed_opaque_existential_1, v6, v3);
  }

  v8 = *(v0 + 280);
  swift_getKeyPath();
  v9 = swift_task_alloc();
  *(v9 + 16) = v8;
  *(v9 + 24) = v1;
  *(v0 + 248) = v8;
  sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
  sub_21C6CE030();

  sub_21C68F7D4(v0 + 56, &qword_27CDE6860, &qword_21C6CF9D0);
  swift_getKeyPath();
  *(v0 + 256) = v8;
  sub_21C6CE040();

  swift_beginAccess();
  sub_21C68F744(v8 + 120, v0 + 96, &qword_27CDE6860, &qword_21C6CF9D0);
  v10 = *(v0 + 120);
  sub_21C68F7D4(v0 + 96, &qword_27CDE6860, &qword_21C6CF9D0);
  v11 = (v10 != 0) ^ *(v8 + 117);
  v12 = *(v0 + 296);
  v13 = v10 != 0;
  if (v11)
  {
    v14 = *(v0 + 280);
    swift_getKeyPath();
    v15 = swift_task_alloc();
    *(v15 + 16) = v14;
    *(v15 + 24) = v13;
    *(v0 + 264) = v14;
    sub_21C6CE030();

    sub_21C68F7D4(v12, &qword_27CDE6C20, &qword_21C6D0C30);
  }

  else
  {
    sub_21C68F7D4(*(v0 + 296), &qword_27CDE6C20, &qword_21C6D0C30);
    *(v8 + 117) = v13;
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_21C69FA1C()
{
  v30 = v0;
  if (qword_27CDE67F0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 368);
  v3 = *(v0 + 312);
  v2 = *(v0 + 320);
  v4 = *(v0 + 304);
  v5 = __swift_project_value_buffer(v4, qword_27CDE9D90);
  (*(v3 + 16))(v2, v5, v4);

  v6 = v1;
  v7 = sub_21C6CE180();
  v8 = sub_21C6CECE0();

  if (os_log_type_enabled(v7, v8))
  {
    v10 = *(v0 + 344);
    v9 = *(v0 + 352);
    v11 = *(v0 + 312);
    v28 = *(v0 + 320);
    v12 = *(v0 + 304);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29[0] = v14;
    *v13 = 141558531;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    *(v13 + 14) = sub_21C6A218C(v10, v9, v29);
    *(v13 + 22) = 2082;
    swift_getErrorValue();
    v15 = sub_21C6CEE40();
    v17 = sub_21C6A218C(v15, v16, v29);

    *(v13 + 24) = v17;
    _os_log_impl(&dword_21C685000, v7, v8, "Failed to get update metadata for %{private,mask.hash}s, error: '%{public}s'.", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CF0FD60](v14, -1, -1);
    MEMORY[0x21CF0FD60](v13, -1, -1);

    (*(v11 + 8))(v28, v12);
  }

  else
  {
    v19 = *(v0 + 312);
    v18 = *(v0 + 320);
    v20 = *(v0 + 304);

    (*(v19 + 8))(v18, v20);
  }

  v21 = *(v0 + 280);
  if (*(v21 + 117))
  {
    swift_getKeyPath();
    v22 = swift_task_alloc();
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v0 + 232) = v21;
    sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
    sub_21C6CE030();
  }

  else
  {
    *(v21 + 117) = 0;
  }

  v23 = *(v0 + 368);
  v24 = *(v0 + 280);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  swift_getKeyPath();
  v25 = swift_task_alloc();
  *(v25 + 16) = v24;
  *(v25 + 24) = v0 + 16;
  *(v0 + 224) = v24;
  sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
  sub_21C6CE030();

  sub_21C68F7D4(v0 + 16, &qword_27CDE6860, &qword_21C6CF9D0);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_21C69FE60(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6C18, &qword_21C6D0C20);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_21C69FF0C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6C18, &qword_21C6D0C20);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_21C69FFD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6C48, &qword_21C6D0C40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  if (*(a1 + 216))
  {
    sub_21C6CE080();
  }

  else
  {
    v5 = sub_21C6CE070();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  }

  return sub_21C68F7D4(v4, &qword_27CDE6C48, &qword_21C6D0C40);
}

uint64_t sub_21C6A00B4(uint64_t a1)
{
  v1 = sub_21C6CEB00();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21C6CEB20();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    sub_21C6CECA0();
    v13[0] = v5;
    sub_21C6A1900(sub_21C6A2B18, v10, "ThirdPartyApplicationSettings/ApplicationDistributionState.swift", 64, 2u, 390);
    sub_21C6A2B80();
    v11 = sub_21C6CED10();
    aBlock[4] = sub_21C6A2BCC;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21C6A1CA8;
    aBlock[3] = &block_descriptor_61;
    v12 = _Block_copy(aBlock);
    swift_retain_n();
    sub_21C6CEB10();
    v13[1] = MEMORY[0x277D84F90];
    sub_21C6A2BEC(&qword_27CDE6C30, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6C38, &qword_21C6D0C38);
    sub_21C6A2C34();
    sub_21C6CED60();
    MEMORY[0x21CF0F4B0](0, v8, v4, v12);
    _Block_release(v12);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v13[0]);
  }

  return result;
}

void sub_21C6A03C8()
{
  v1 = v0;
  v140 = *MEMORY[0x277D85DE8];
  v2 = sub_21C6CDF80();
  v131 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v121 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_21C6CE1A0();
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v6 = &v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v121 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v121 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = *(v0 + 16);
  v14 = *(v0 + 24);
  v16 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v132 = v14;
  v17 = sub_21C6BF2EC(v15, v14, 0);
  v128 = v12;
  v126 = v9;
  v124 = v4;
  v125 = v2;
  v122 = v15;
  v123 = v6;
  v18 = v17;
  v19 = [v18 localizedName];
  v20 = sub_21C6CEBC0();
  v22 = v21;

  sub_21C69CAA8(v20, v22);
  v23 = [v18 iTunesMetadata];
  v24 = [v23 artistName];

  v25 = v134;
  v26 = v1;
  if (!v24)
  {
    if (qword_27CDE67D8 != -1)
    {
      swift_once();
    }

    v27 = qword_27CDE9D58;
    v28 = sub_21C6CEB90();
    v24 = [v27 localizedStringForKey:v28 value:0 table:0];
  }

  v29 = sub_21C6CEBC0();
  v31 = v30;

  sub_21C69CC08(v29, v31);
  v32 = [v18 iTunesMetadata];
  v33 = [v32 distributorInfo];

  v34 = [v33 domain];
  if (!v34)
  {
    if (qword_27CDE67D8 != -1)
    {
      swift_once();
    }

    v35 = qword_27CDE9D58;
    v36 = sub_21C6CEB90();
    v34 = [v35 localizedStringForKey:v36 value:0 table:0];
  }

  v37 = sub_21C6CEBC0();
  v39 = v38;

  sub_21C69CC08(v37, v39);
  v40 = [v18 shortVersionString];
  if (v40)
  {
    v41 = v40;
    v42 = sub_21C6CEBC0();
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0xE000000000000000;
  }

  sub_21C69CD68(v42, v44);
  v45 = [v18 exactBundleVersion];
  if (v45)
  {
    v46 = v45;
    v47 = sub_21C6CEBC0();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0xE000000000000000;
  }

  sub_21C69CEC8(v47, v49);
  swift_getKeyPath();
  v50 = OBJC_IVAR____TtC29ThirdPartyApplicationSettings28ApplicationDistributionState___observationRegistrar;
  *&v137 = v1;
  v51 = sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
  sub_21C6CE040();

  v53 = *(v26 + 64);
  v52 = *(v26 + 72);
  swift_getKeyPath();
  v136[1] = v26;

  v127 = v50;
  v130 = v51;
  sub_21C6CE040();

  swift_beginAccess();
  sub_21C68F744(v26 + 120, &v137, &qword_27CDE6860, &qword_21C6CF9D0);
  v54 = *(&v138 + 1);
  if (*(&v138 + 1))
  {
    v129 = v18;
    v55 = __swift_project_boxed_opaque_existential_1(&v137, *(&v138 + 1));
    v56 = *(v54 - 8);
    v57 = MEMORY[0x28223BE20](v55);
    v59 = &v121 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v56 + 16))(v59, v57);
    sub_21C68F7D4(&v137, &qword_27CDE6860, &qword_21C6CF9D0);
    v60 = sub_21C6CE130();
    v62 = v61;
    (*(v56 + 8))(v59, v54);
    if (v53 == v60 && v52 == v62)
    {

      v25 = v134;
      v63 = v133;
      v18 = v129;
      v64 = v128;
      goto LABEL_21;
    }

    v65 = sub_21C6CEE20();

    v25 = v134;
    v63 = v133;
    v18 = v129;
    v64 = v128;
    if (v65)
    {
LABEL_21:
      if (qword_27CDE67F0 != -1)
      {
        swift_once();
      }

      v66 = __swift_project_value_buffer(v25, qword_27CDE9D90);
      v67 = *(v63 + 16);
      v126 = v66;
      v121 = v67;
      (v67)(v64);
      v68 = sub_21C6CE180();
      v69 = sub_21C6CED00();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&dword_21C685000, v68, v69, "Update complete", v70, 2u);
        MEMORY[0x21CF0FD60](v70, -1, -1);
      }

      v71 = *(v63 + 8);
      v72 = v128;
      v133 = v63 + 8;
      v128 = v71;
      v71(v72, v25);
      v139 = 0;
      v137 = 0u;
      v138 = 0u;
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v121 - 2) = v26;
      *(&v121 - 1) = &v137;
      v136[0] = v26;
      sub_21C6CE030();

      sub_21C68F7D4(&v137, &qword_27CDE6860, &qword_21C6CF9D0);
      if (*(v26 + 117))
      {
        v74 = swift_getKeyPath();
        MEMORY[0x28223BE20](v74);
        *(&v121 - 2) = v26;
        *(&v121 - 8) = 0;
        *&v137 = v26;
        sub_21C6CE030();

        if ((*(v26 + 160) & 1) == 0)
        {
LABEL_27:
          *(v26 + 160) = 0;
          goto LABEL_30;
        }
      }

      else
      {
        *(v26 + 117) = 0;
        if ((*(v26 + 160) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      v75 = swift_getKeyPath();
      MEMORY[0x28223BE20](v75);
      *(&v121 - 2) = v26;
      *(&v121 - 8) = 0;
      *&v137 = v26;
      sub_21C6CE030();

LABEL_30:
      v76 = v134;
      v77 = [objc_allocWithZone(MEMORY[0x277D82A90]) init];
      v78 = [v18 URL];

      v79 = v124;
      sub_21C6CDF60();

      v80 = sub_21C6CDF40();
      (*(v131 + 8))(v79, v125);
      *&v137 = 0;
      v81 = [v77 queryForBundle:v80 withError:&v137];

      if (v81)
      {
        v82 = v137;
        v83 = [v81 warningState];
        if ((*(v26 + 115) ^ (v83 == 1)))
        {
          v84 = v83 == 1;
          v85 = swift_getKeyPath();
          MEMORY[0x28223BE20](v85);
          *(&v121 - 2) = v26;
          *(&v121 - 8) = v84;
          *&v137 = v26;
          sub_21C6CE030();
        }

        else
        {
          *(v26 + 115) = v83 == 1;
        }

        v115 = [v81 isUserOverridden];
        v116 = v115;
        if (v115 == *(v26 + 116))
        {

          *(v26 + 116) = v116;
        }

        else
        {
          v117 = swift_getKeyPath();
          MEMORY[0x28223BE20](v117);
          *(&v121 - 2) = v26;
          *(&v121 - 8) = v116;
          *&v137 = v26;
          sub_21C6CE030();
        }

        return;
      }

      v86 = v137;
      v87 = sub_21C6CDEE0();

      swift_willThrow();
      v88 = v123;
      v121(v123, v126, v76);

      v89 = v87;
      v90 = sub_21C6CE180();
      v91 = sub_21C6CECE0();

      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        *&v137 = v93;
        *v92 = 141558531;
        *(v92 + 4) = 1752392040;
        *(v92 + 12) = 2081;
        *(v92 + 14) = sub_21C6A218C(v122, v132, &v137);
        *(v92 + 22) = 2082;
        swift_getErrorValue();
        v94 = sub_21C6CEE40();
        v96 = sub_21C6A218C(v94, v95, &v137);

        *(v92 + 24) = v96;
        _os_log_impl(&dword_21C685000, v90, v91, "Failed to query for malware warning for %{private,mask.hash}s with error '%{public}s'.", v92, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x21CF0FD60](v93, -1, -1);
        MEMORY[0x21CF0FD60](v92, -1, -1);
      }

      v128(v88, v76);
      if (*(v26 + 115))
      {
        v97 = swift_getKeyPath();
        MEMORY[0x28223BE20](v97);
        *(&v121 - 2) = v26;
        *(&v121 - 8) = 0;
        *&v137 = v26;
        sub_21C6CE030();

        if ((*(v26 + 116) & 1) == 0)
        {
LABEL_37:

          *(v26 + 116) = 0;
          return;
        }
      }

      else
      {
        *(v26 + 115) = 0;
        if ((*(v26 + 116) & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      v120 = swift_getKeyPath();
      MEMORY[0x28223BE20](v120);
      *(&v121 - 2) = v26;
      *(&v121 - 8) = 0;
      *&v137 = v26;
      sub_21C6CE030();

      return;
    }
  }

  else
  {
    sub_21C68F7D4(&v137, &qword_27CDE6860, &qword_21C6CF9D0);

    v63 = v133;
  }

  v98 = v126;
  if (qword_27CDE67F0 != -1)
  {
    swift_once();
  }

  v99 = __swift_project_value_buffer(v25, qword_27CDE9D90);
  (*(v63 + 16))(v98, v99, v25);

  v100 = sub_21C6CE180();
  v101 = sub_21C6CED00();

  if (os_log_type_enabled(v100, v101))
  {
    v129 = v18;
    v102 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    v136[0] = v132;
    *v102 = 136315394;
    swift_getKeyPath();
    *&v137 = v26;
    sub_21C6CE040();

    v103 = *(v26 + 64);
    v104 = *(v26 + 72);

    v105 = sub_21C6A218C(v103, v104, v136);

    *(v102 + 4) = v105;
    *(v102 + 12) = 2080;
    swift_getKeyPath();
    v135 = v26;
    sub_21C6CE040();

    sub_21C68F744(v26 + 120, &v137, &qword_27CDE6860, &qword_21C6CF9D0);
    v106 = *(&v138 + 1);
    if (*(&v138 + 1))
    {
      v107 = __swift_project_boxed_opaque_existential_1(&v137, *(&v138 + 1));
      v108 = *(v106 - 8);
      v109 = MEMORY[0x28223BE20](v107);
      v111 = &v121 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v108 + 16))(v111, v109);
      sub_21C68F7D4(&v137, &qword_27CDE6860, &qword_21C6CF9D0);
      v112 = sub_21C6CE130();
      v114 = v113;
      (*(v108 + 8))(v111, v106);
      v63 = v133;
      v25 = v134;
    }

    else
    {
      sub_21C68F7D4(&v137, &qword_27CDE6860, &qword_21C6CF9D0);
      v114 = 0xE500000000000000;
      v112 = 0x296C696E28;
    }

    v118 = sub_21C6A218C(v112, v114, v136);

    *(v102 + 14) = v118;
    _os_log_impl(&dword_21C685000, v100, v101, "Not yet updated: have %s but latest is %s", v102, 0x16u);
    v119 = v132;
    swift_arrayDestroy();
    MEMORY[0x21CF0FD60](v119, -1, -1);
    MEMORY[0x21CF0FD60](v102, -1, -1);

    (*(v63 + 8))(v126, v25);
  }

  else
  {

    (*(v63 + 8))(v98, v25);
  }
}

uint64_t sub_21C6A1900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  sub_21C6CEC90();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_21C6A2CA8();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_21C6CED80();
    MEMORY[0x21CF0F390](0xD00000000000003FLL, 0x800000021C6D3110);
    v12 = sub_21C6CEEA0();
    MEMORY[0x21CF0F390](v12);

    MEMORY[0x21CF0F390](46, 0xE100000000000000);
    result = sub_21C6CEDA0();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C6A1A88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6C48, &qword_21C6D0C40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v9 - v3;
  if (*(a1 + 216))
  {
    sub_21C6CE080();
    v5 = sub_21C6CE070();
    if ((*(*(v5 - 8) + 48))(v4, 1, v5) != 1)
    {
      return sub_21C68F7D4(v4, &qword_27CDE6C48, &qword_21C6D0C40);
    }
  }

  else
  {
    v7 = sub_21C6CE070();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  }

  result = sub_21C68F7D4(v4, &qword_27CDE6C48, &qword_21C6D0C40);
  if (*(a1 + 160))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v9[-2] = a1;
    LOBYTE(v9[-1]) = 0;
    v9[1] = a1;
    sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
    sub_21C6CE030();
  }

  else
  {
    *(a1 + 160) = 0;
  }

  return result;
}

uint64_t sub_21C6A1CA8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_21C6A1CEC(uint64_t a1)
{
  swift_getKeyPath();
  sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
  sub_21C6CE040();
}

uint64_t sub_21C6A1D88(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    sub_21C6A2BEC(&qword_27CDE6818, type metadata accessor for ApplicationDistributionState, &unk_21C6D09E8);
    sub_21C6CE040();

    sub_21C6CE120();
    sub_21C6CE020();
  }

  return result;
}

char *sub_21C6A1EC4()
{

  sub_21C68F7D4(v0 + 120, &qword_27CDE6860, &qword_21C6CF9D0);

  v1 = OBJC_IVAR____TtC29ThirdPartyApplicationSettings28ApplicationDistributionState___observationRegistrar;
  v2 = sub_21C6CE060();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_21C6A1F8C()
{
  sub_21C6A1EC4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ApplicationDistributionState(uint64_t a1)
{
  result = qword_27CDE6BE8;
  if (!qword_27CDE6BE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C6A2038(uint64_t a1)
{
  result = sub_21C6CE060();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_21C6A2114()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 32) = v0[3];
  *(v1 + 40) = v2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_21C6A218C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21C6A2258(v11, 0, 0, 1, a1, a2);
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
    sub_21C6A2734(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_21C6A2258(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_21C6A2364(a5, a6);
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
    result = sub_21C6CED90();
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

void *sub_21C6A2364(uint64_t a1, unint64_t a2)
{
  v3 = sub_21C6A23B0(a1, a2);
  sub_21C6A24E0(&unk_282E3EAE8);
  return v3;
}

void *sub_21C6A23B0(uint64_t a1, unint64_t a2)
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

  v6 = sub_21C6A25CC(v5, 0);
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

  result = sub_21C6CED90();
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
        v10 = sub_21C6CEC10();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21C6A25CC(v10, 0);
        result = sub_21C6CED70();
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

uint64_t sub_21C6A24E0(uint64_t result)
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

  result = sub_21C6A2640(result, v11, 1, v3);
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

void *sub_21C6A25CC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6C00, &qword_21C6D0A38);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_21C6A2640(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6C00, &qword_21C6D0A38);
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

uint64_t sub_21C6A2734(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21C6A27A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6860, &qword_21C6CF9D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C6A2844()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 96) = v0[3];
  *(v1 + 104) = v2;
}

uint64_t sub_21C6A2894(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6BF8, &qword_21C6D0A30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C6A2904()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 48) = v0[3];
  *(v1 + 56) = v2;
}

uint64_t sub_21C6A2944()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 80) = v0[3];
  *(v1 + 88) = v2;
}

uint64_t sub_21C6A2984()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 64) = v0[3];
  *(v1 + 72) = v2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t (*sub_21C6A2A58())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_21C6A2CD0;
}

uint64_t (*sub_21C6A2AB8())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_21C6A2B10;
}

unint64_t sub_21C6A2B80()
{
  result = qword_27CDE6C28;
  if (!qword_27CDE6C28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDE6C28);
  }

  return result;
}

uint64_t block_copy_helper_59(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21C6A2BEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21C6A2C34()
{
  result = qword_27CDE6C40;
  if (!qword_27CDE6C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6C38, &qword_21C6D0C38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6C40);
  }

  return result;
}

uint64_t type metadata accessor for ChildPaneSetting(uint64_t a1)
{
  result = qword_27CDE6C58;
  if (!qword_27CDE6C58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C6A2DDC(uint64_t a1)
{
  sub_21C6CDF20();
  if (v1 <= 0x3F)
  {
    sub_21C6A2ED4(319, &qword_27CDE6C68, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_21C6A2ED4(319, &qword_27CDE6C70, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21C6A2ED4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_21C6A2F34()
{
  result = sub_21C6C9110(MEMORY[0x277D84F90]);
  qword_27CDE9D08 = result;
  return result;
}

BOOL sub_21C6A2F5C()
{
  v1 = *(v0 + *(type metadata accessor for ChildPaneSetting(0) + 40));
  if (!*(v1 + 16))
  {
    return 1;
  }

  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3)
  {
    v4 = 6578512;
  }

  else
  {
    v4 = 0x656E6F6850;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = (v1 + 40);
  v7 = *(v1 + 16) + 1;
  do
  {
    v8 = --v7 != 0;
    if (!v7)
    {
      break;
    }

    if (*(v6 - 1) == v4 && *v6 == v5)
    {
      break;
    }

    v6 += 2;
  }

  while ((sub_21C6CEE20() & 1) == 0);

  return v8;
}

uint64_t sub_21C6A3054()
{
  v1 = 0xD000000000000014;
  v2 = "ers";
  v3 = *v0;
  v4 = "PSSliderSpecifier";
  v5 = "PSTitleValueSpecifier";
  if (v3 == 4)
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v6 = 0xD000000000000015;
  }

  if (v3 != 4)
  {
    v5 = "PSTextFieldSpecifier";
  }

  if (v3 == 3)
  {
    v7 = 0xD000000000000015;
  }

  else
  {
    v7 = v6;
  }

  if (v3 != 3)
  {
    v4 = v5;
  }

  v8 = "PSChildPaneSpecifier";
  v9 = 0xD000000000000017;
  if (v3 != 1)
  {
    v9 = 0xD000000000000011;
    v8 = "PSToggleSwitchSpecifier";
  }

  if (*v0)
  {
    v1 = v9;
    v2 = v8;
  }

  if (*v0 <= 2u)
  {
    v10 = v1;
  }

  else
  {
    v10 = v7;
  }

  if (*v0 <= 2u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v4;
  }

  MEMORY[0x21CF0F390](v10, v11 | 0x8000000000000000);

  MEMORY[0x21CF0F390](46, 0xE100000000000000);
  v12 = type metadata accessor for ChildPaneSetting(0);
  MEMORY[0x21CF0F390](*&v0[*(v12 + 24)], *&v0[*(v12 + 24) + 8]);
  MEMORY[0x21CF0F390](46, 0xE100000000000000);
  v13 = sub_21C6CDF10();
  MEMORY[0x21CF0F390](v13);

  MEMORY[0x21CF0F390](46, 0xE100000000000000);
  if (v0[*(v12 + 28)])
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v0[*(v12 + 28)])
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x21CF0F390](v14, v15);

  return 0;
}

uint64_t sub_21C6A31F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21C6A3054();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t type metadata accessor for ChildPaneSettingView(uint64_t a1)
{
  result = qword_27CDE6C80;
  if (!qword_27CDE6C80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C6A328C(uint64_t a1)
{
  sub_21C6A3360(319, &qword_27CDE6C90, MEMORY[0x277CDE530]);
  if (v1 <= 0x3F)
  {
    sub_21C6A3360(319, &qword_27CDE6C98, sub_21C6A33B4);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ChildPaneSetting(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21C6A3360(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21C6CE290();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_21C6A33B4()
{
  result = qword_27CDE6CA0;
  if (!qword_27CDE6CA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDE6CA0);
  }

  return result;
}

uint64_t sub_21C6A341C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v39 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6CE8, &qword_21C6D0D68);
  MEMORY[0x28223BE20](v34);
  v4 = v33 - v3;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6CE0, &qword_21C6D0D60);
  v35 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v6 = v33 - v5;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6CF0, &qword_21C6D0D70);
  MEMORY[0x28223BE20](v36);
  v8 = v33 - v7;
  v9 = type metadata accessor for ChildPaneSettingView(0);
  v10 = v9 - 8;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6CD0, &qword_21C6D0D58);
  v13 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v15 = v33 - v14;
  v16 = a1 + *(v10 + 32);
  v17 = type metadata accessor for ChildPaneSetting(0);
  if (*(v16 + *(v17 + 28)) == 1)
  {
    sub_21C6A4AB0(a1, v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v18 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v19 = swift_allocObject();
    v20 = sub_21C6A4B20(v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
    MEMORY[0x28223BE20](v20);
    v33[-2] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6D20, &qword_21C6D0DA0);
    sub_21C6A4BEC();
    sub_21C6CE990();
    v21 = v37;
    (*(v13 + 16))(v8, v15, v37);
    swift_storeEnumTagMultiPayload();
    sub_21C694224(&qword_27CDE6CC8, &qword_27CDE6CD0, &qword_21C6D0D58, MEMORY[0x277CDF028]);
    sub_21C694224(&qword_27CDE6CD8, &qword_27CDE6CE0, &qword_21C6D0D60, MEMORY[0x277CDD938]);
    sub_21C6CE5C0();
    return (*(v13 + 8))(v15, v21);
  }

  else
  {
    v33[1] = v33;
    MEMORY[0x28223BE20](v17);
    v33[-2] = a1;
    sub_21C6A3EC4(a1, v4);
    v33[0] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6CF8, &qword_21C6D0D78);
    v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6D00, &qword_21C6D0D80);
    v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6D08, &qword_21C6D0D88);
    v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6D10, &unk_21C6D0D90);
    v26 = sub_21C6CE3E0();
    v27 = sub_21C694224(&qword_27CDE6D18, &qword_27CDE6D10, &unk_21C6D0D90, MEMORY[0x277CDE5A0]);
    v40 = v25;
    v41 = v26;
    v42 = v27;
    v43 = MEMORY[0x277CDDA78];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v40 = v24;
    v41 = OpaqueTypeConformance2;
    v29 = swift_getOpaqueTypeConformance2();
    v40 = v23;
    v41 = v29;
    v30 = swift_getOpaqueTypeConformance2();
    v40 = v33[0];
    v41 = v30;
    swift_getOpaqueTypeConformance2();
    sub_21C6CE360();
    v31 = v35;
    v32 = v38;
    (*(v35 + 16))(v8, v6, v38);
    swift_storeEnumTagMultiPayload();
    sub_21C694224(&qword_27CDE6CC8, &qword_27CDE6CD0, &qword_21C6D0D58, MEMORY[0x277CDF028]);
    sub_21C694224(&qword_27CDE6CD8, &qword_27CDE6CE0, &qword_21C6D0D60, MEMORY[0x277CDD938]);
    sub_21C6CE5C0();
    return (*(v31 + 8))(v6, v32);
  }
}

void sub_21C6A3AAC(uint64_t a1)
{
  v2 = sub_21C6CE6B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27CDE67C0 != -1)
  {
    swift_once();
  }

  v6 = qword_27CDE9D08;
  v7 = type metadata accessor for ChildPaneSettingView(0);
  v8 = type metadata accessor for ChildPaneSetting(0);
  if (*(v6 + 16))
  {
    v9 = (a1 + *(v7 + 24) + *(v8 + 32));
    sub_21C6C70F8(*v9, v9[1]);
    if (v10)
    {

      v11 = sub_21C6CEB90();

      v12 = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

      if (v12)
      {
        v13 = sub_21C694440(v5);
        MEMORY[0x28223BE20](v13);
        *(&v14 - 2) = v12;
        sub_21C6CE6A0();

        (*(v3 + 8))(v5, v2);
      }
    }
  }
}

uint64_t sub_21C6A3C94(uint64_t a1)
{
  sub_21C6CE5F0();
  sub_21C6A4EDC(&qword_27CDE6D30, MEMORY[0x277CDE078], MEMORY[0x277CDE070]);
  return sub_21C6CE350();
}

uint64_t sub_21C6A3D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21C6CDF20();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + *(type metadata accessor for ChildPaneSettingView(0) + 24);
  v9 = type metadata accessor for ChildPaneSetting(0);
  (*(v5 + 16))(v7, v8 + *(v9 + 20), v4);
  v10 = sub_21C6CE750();
  v12 = v11;
  LOBYTE(v7) = v13;
  sub_21C6CE8C0();
  v14 = sub_21C6CE710();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_21C692AD8(v10, v12, v7 & 1);

  *a2 = v14;
  *(a2 + 8) = v16;
  *(a2 + 16) = v18 & 1;
  *(a2 + 24) = v20;
  return result;
}

uint64_t sub_21C6A3EC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = sub_21C6CE500();
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x28223BE20](v3);
  v51 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_21C6CDF20();
  v46 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v44 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21C6CE3E0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6D10, &unk_21C6D0D90);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6D08, &qword_21C6D0D88);
  v43 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v15 = &v41 - v14;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6D00, &qword_21C6D0D80);
  v47 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v17 = &v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6CF8, &qword_21C6D0D78);
  v19 = *(v18 - 8);
  v48 = v18;
  v49 = v19;
  MEMORY[0x28223BE20](v18);
  v41 = &v41 - v20;
  v55 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6D38, &qword_21C6D0DA8);
  sub_21C6A4D08();
  sub_21C6CE700();
  sub_21C6CE3D0();
  v21 = sub_21C694224(&qword_27CDE6D18, &qword_27CDE6D10, &unk_21C6D0D90, MEMORY[0x277CDE5A0]);
  sub_21C6CE890();
  v22 = *(v7 + 8);
  v23 = v6;
  v22(v9, v6);
  (*(v11 + 8))(v13, v10);
  v24 = a1 + *(type metadata accessor for ChildPaneSettingView(0) + 24);
  v25 = type metadata accessor for ChildPaneSetting(0);
  (*(v46 + 16))(v44, v24 + *(v25 + 20), v50);
  v26 = sub_21C6CE750();
  v28 = v27;
  LOBYTE(v6) = v29;
  v56 = v10;
  v57 = v23;
  v58 = v21;
  v59 = MEMORY[0x277CDDA78];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v42;
  sub_21C6CE810();
  sub_21C692AD8(v26, v28, v6 & 1);

  v32 = v31;
  (*(v43 + 8))(v15, v31);
  v33 = v51;
  v34 = v52;
  v35 = v53;
  (*(v52 + 104))(v51, *MEMORY[0x277CDDDC0], v53);
  v56 = v32;
  v57 = OpaqueTypeConformance2;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = v41;
  v38 = v45;
  sub_21C6CE850();
  (*(v34 + 8))(v33, v35);
  (*(v47 + 8))(v17, v38);
  v56 = v38;
  v57 = v36;
  swift_getOpaqueTypeConformance2();
  v39 = v48;
  sub_21C6CE770();
  return (*(v49 + 8))(v37, v39);
}

uint64_t sub_21C6A4564@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_21C6CE4B0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ChildPaneSettingView(0);
  v9 = a1 + *(v8 + 24);
  v10 = type metadata accessor for ChildPaneSetting(0);
  v11 = (v9 + *(v10 + 32));
  v13 = *v11;
  v12 = v11[1];
  v14 = (v9 + *(v10 + 24));
  v16 = *v14;
  v15 = v14[1];
  v17 = a1 + *(v8 + 20);
  v18 = *v17;
  if (*(v17 + 8) == 1)
  {
    v25 = *v17;

    sub_21C6A4E14(v18, 1);
  }

  else
  {

    sub_21C6A4E14(v18, 0);
    sub_21C6CECF0();
    v19 = sub_21C6CE6C0();
    v24 = v4;
    v20 = v16;
    v21 = v13;
    v22 = v19;
    sub_21C6CE170();

    v13 = v21;
    v16 = v20;
    sub_21C6CE4A0();
    swift_getAtKeyPath();
    sub_21C6A4B14(v18, 0);
    (*(v5 + 8))(v7, v24);
    v18 = v25;
  }

  result = swift_getKeyPath();
  *a2 = v13;
  a2[1] = v12;
  a2[2] = v16;
  a2[3] = v15;
  a2[4] = 0;
  a2[5] = 0;
  a2[6] = result;
  a2[7] = v18;
  return result;
}

uint64_t sub_21C6A4764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21C6CDF20();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + *(type metadata accessor for ChildPaneSettingView(0) + 24);
  v9 = type metadata accessor for ChildPaneSetting(0);
  (*(v5 + 16))(v7, v8 + *(v9 + 20), v4);
  result = sub_21C6CE750();
  *a2 = result;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v13;
  return result;
}

uint64_t sub_21C6A4864()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6CA8, &qword_21C6D0D48);
  MEMORY[0x28223BE20](v1);
  v3 = &v5 - v2;
  sub_21C6A341C(v0, (&v5 - v2));
  sub_21C6A3054();
  sub_21C6A4940();
  sub_21C6CE7F0();

  return sub_21C687E70(v3);
}