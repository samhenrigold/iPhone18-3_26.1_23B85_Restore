uint64_t sub_2545ACBBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ElementID(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for HomeID(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for TileElementInfo(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_2545ACCFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ElementID(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for HomeID(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for TileElementInfo(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_2545ACE4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2545FE774();
  *a1 = result;
  return result;
}

uint64_t sub_2545ACE78@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2545FE774();
  *a1 = result;
  return result;
}

uint64_t sub_2545ACEA8@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = *&aComAppleHome[8];
  *a1 = *aComAppleHome;
  a1[1] = v2;
  return sub_2545FE8E4();
}

void *sub_2545ACEFC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2545FE754();
  *a1 = v3;
  return result;
}

void *sub_2545ACF3C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2545FE754();
  *a1 = v3;
  return result;
}

void *sub_2545ACF84@<X0>(void *a1@<X8>)
{
  result = sub_2545FE754();
  *a1 = v3;
  return result;
}

uint64_t sub_2545AD008@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2545FE774();
  *a1 = result;
  return result;
}

uint64_t sub_2545AD034@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2545FE774();
  *a1 = result;
  return result;
}

uint64_t sub_2545AD068@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = *&aComAppleHome_0[8];
  *a1 = *aComAppleHome_0;
  a1[1] = v2;
  return sub_2545FE8E4();
}

uint64_t sub_2545AD130@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2545FE774();
  *a1 = result;
  return result;
}

uint64_t sub_2545AD164(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2545FF784();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for HomeXLTileEntity(0);
        v6 = sub_2545FF2F4();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for HomeXLTileEntity(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2545C6604(v8, v9, a1, v4, type metadata accessor for HomeXLTileEntity, type metadata accessor for HomeXLTileEntity, type metadata accessor for HomeXLTileEntity, type metadata accessor for HomeXLTileEntity, type metadata accessor for HomeXLTileEntity, type metadata accessor for HomeXLTileEntity);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2545C5AE0(0, v2, 1, a1, type metadata accessor for HomeXLTileEntity, type metadata accessor for HomeXLTileEntity, type metadata accessor for HomeXLTileEntity, type metadata accessor for HomeXLTileEntity);
  }

  return result;
}

uint64_t sub_2545AD358(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2545FF784();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for ToggleControlEntity(0);
        v6 = sub_2545FF2F4();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ToggleControlEntity(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2545C6604(v8, v9, a1, v4, type metadata accessor for ToggleControlEntity, type metadata accessor for ToggleControlEntity, type metadata accessor for ToggleControlEntity, type metadata accessor for ToggleControlEntity, type metadata accessor for ToggleControlEntity, type metadata accessor for ToggleControlEntity);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2545C5AE0(0, v2, 1, a1, type metadata accessor for ToggleControlEntity, type metadata accessor for ToggleControlEntity, type metadata accessor for ToggleControlEntity, type metadata accessor for ToggleControlEntity);
  }

  return result;
}

uint64_t sub_2545AD54C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2545FF784();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for HomeSingleTileEntity(0);
        v6 = sub_2545FF2F4();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for HomeSingleTileEntity(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2545C6604(v8, v9, a1, v4, type metadata accessor for HomeSingleTileEntity, type metadata accessor for HomeSingleTileEntity, type metadata accessor for HomeSingleTileEntity, type metadata accessor for HomeSingleTileEntity, type metadata accessor for HomeSingleTileEntity, type metadata accessor for HomeSingleTileEntity);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2545C5AE0(0, v2, 1, a1, type metadata accessor for HomeSingleTileEntity, type metadata accessor for HomeSingleTileEntity, type metadata accessor for HomeSingleTileEntity, type metadata accessor for HomeSingleTileEntity);
  }

  return result;
}

uint64_t sub_2545AD768()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2545AD8C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ElementID(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for HomeID(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for TileElementInfo(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_2545ADA08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ElementID(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for HomeID(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for TileElementInfo(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_2545ADB5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2545FE774();
  *a1 = result;
  return result;
}

uint64_t sub_2545ADB8C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = *&aComAppleHome_1[8];
  *a1 = *aComAppleHome_1;
  a1[1] = v2;
  return sub_2545FE8E4();
}

uint64_t sub_2545ADC54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2545FE774();
  *a1 = result;
  return result;
}

uint64_t sub_2545ADC84(uint64_t a1, uint64_t a2)
{
  v4 = sub_2545FEB04();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2545ADCF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2545FEB04();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_2545ADD60(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x73656E656373;
  if (v2 != 1)
  {
    v5 = 0x726F737365636361;
    v4 = 0xEB00000000736569;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7105633;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2545ADDC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ElementID(0);
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

uint64_t sub_2545ADE84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ElementID(0);
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

uint64_t sub_2545ADF40@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2545FE774();
  *a1 = result;
  return result;
}

uint64_t sub_2545AE028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HomeID(0);
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

uint64_t sub_2545AE0E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for HomeID(0);
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

uint64_t sub_2545AE1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2545FEB04();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 8)
    {
      return v10 - 7;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2545AE28C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2545FEB04();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 7;
  }

  return result;
}

uint64_t sub_2545AE344()
{
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545FEA14();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2545AE394()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606CD8, &qword_254602F68);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_2545AE3CC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2545AE404()
{
  sub_2545FEA14();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2545AE440@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_2545AE590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ElementID(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for HomeID(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for TileElementInfo(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_2545AE6D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ElementID(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for HomeID(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for TileElementInfo(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_2545AE82C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6064C0, &qword_254601E70);
  swift_getKeyPath();
  result = sub_2545FE984();
  qword_27F606358 = result;
  return result;
}

uint64_t static ToggleControlEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_27F606350 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27F606358;

  return sub_2545FE8F4();
}

uint64_t sub_2545AE8E8()
{
  v0 = sub_2545FE9A4();
  __swift_allocate_value_buffer(v0, qword_27F606368);
  __swift_project_value_buffer(v0, qword_27F606368);
  return sub_2545FE994();
}

uint64_t static ToggleControlEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F606360 != -1)
  {
    swift_once();
  }

  v2 = sub_2545FE9A4();
  v3 = __swift_project_value_buffer(v2, qword_27F606368);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t type metadata accessor for ToggleControlEntity(uint64_t a1)
{
  result = qword_27F6064B0;
  if (!qword_27F6064B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2545AEB50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ToggleControlEntity.displayRepresentation.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606420, &unk_2545FFE70);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606428, "$#");
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = sub_2545FEA64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = sub_2545FF134();
  MEMORY[0x28223BE20](v6 - 8);
  sub_2545FF124();
  sub_2545FF114();
  type metadata accessor for ToggleControlEntity(0);
  type metadata accessor for TileElementInfo(0);
  sub_2545FF104();
  sub_2545FF114();
  sub_2545FEA54();
  (*(v5 + 56))(v3, 1, 1, v4);
  sub_2545FE8E4();
  sub_2545FE874();
  return sub_2545FE894();
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

uint64_t static ToggleControlEntity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ElementID(0);
  if (qword_254600228[*(a1 + *(v4 + 20))] != qword_254600228[*(a2 + *(v4 + 20))])
  {
    return 0;
  }

  v5 = type metadata accessor for ToggleControlEntity(0);
  if ((_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 24);

  return _s17HomeWidgetIntents15TileElementInfoV2eeoiySbAC_ACtFZ_0(a1 + v6, a2 + v6);
}

uint64_t ToggleControlEntity.hash(into:)(uint64_t a1)
{
  sub_2545FEB04();
  sub_2545AFF40(&qword_27F606430, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2545FF0C4();
  v3 = type metadata accessor for ElementID(0);
  MEMORY[0x259C12730](qword_254600228[*(v1 + *(v3 + 20))]);
  type metadata accessor for ToggleControlEntity(0);
  sub_2545FF0C4();
  return TileElementInfo.hash(into:)(a1);
}

uint64_t ToggleControlEntity.hashValue.getter()
{
  sub_2545FF834();
  sub_2545FEB04();
  sub_2545AFF40(&qword_27F606430, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2545FF0C4();
  v1 = type metadata accessor for ElementID(0);
  MEMORY[0x259C12730](qword_254600228[*(v0 + *(v1 + 20))]);
  type metadata accessor for ToggleControlEntity(0);
  sub_2545FF0C4();
  TileElementInfo.hash(into:)(v3);
  return sub_2545FF864();
}

uint64_t sub_2545AF0E4@<X0>(void *a1@<X8>)
{
  if (qword_27F606350 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27F606358;

  return sub_2545FE8F4();
}

uint64_t sub_2545AF154()
{
  sub_2545FF834();
  sub_2545FEB04();
  sub_2545AFF40(&qword_27F606430, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2545FF0C4();
  v1 = type metadata accessor for ElementID(0);
  MEMORY[0x259C12730](qword_254600228[*(v0 + *(v1 + 20))]);
  sub_2545FF0C4();
  TileElementInfo.hash(into:)(v3);
  return sub_2545FF864();
}

uint64_t sub_2545AF244(uint64_t a1)
{
  sub_2545FEB04();
  sub_2545AFF40(&qword_27F606430, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2545FF0C4();
  v3 = type metadata accessor for ElementID(0);
  MEMORY[0x259C12730](qword_254600228[*(v1 + *(v3 + 20))]);
  sub_2545FF0C4();
  return TileElementInfo.hash(into:)(a1);
}

uint64_t sub_2545AF31C(uint64_t a1)
{
  sub_2545FF834();
  sub_2545FEB04();
  sub_2545AFF40(&qword_27F606430, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2545FF0C4();
  v2 = type metadata accessor for ElementID(0);
  MEMORY[0x259C12730](qword_254600228[*(v1 + *(v2 + 20))]);
  sub_2545FF0C4();
  TileElementInfo.hash(into:)(v4);
  return sub_2545FF864();
}

uint64_t sub_2545AF408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for ElementID(0);
  if (qword_254600228[*(a1 + *(v6 + 20))] != qword_254600228[*(a2 + *(v6 + 20))] || (_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);

  return _s17HomeWidgetIntents15TileElementInfoV2eeoiySbAC_ACtFZ_0(a1 + v7, a2 + v7);
}

uint64_t sub_2545AF4B4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F606360 != -1)
  {
    swift_once();
  }

  v2 = sub_2545FE9A4();
  v3 = __swift_project_value_buffer(v2, qword_27F606368);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2545AF55C(uint64_t a1)
{
  v2 = sub_2545AFF40(&qword_27F6064A8, type metadata accessor for ToggleControlEntity, &protocol conformance descriptor for ToggleControlEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_2545AF5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2545AF6A0;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_2545AF6A0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2545AF794(uint64_t a1)
{
  v2 = sub_2545AFF40(&qword_27F606488, type metadata accessor for ToggleControlEntity, &protocol conformance descriptor for ToggleControlEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t static ToggleControlEntity.create(id:homeID:item:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2545AEB50(a1, a4, type metadata accessor for ElementID);
  v7 = type metadata accessor for ToggleControlEntity(0);
  sub_2545AEB50(a2, a4 + *(v7 + 20), type metadata accessor for HomeID);
  return sub_2545AEB50(a3, a4 + *(v7 + 24), type metadata accessor for TileElementInfo);
}

uint64_t sub_2545AF920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_2545AEB50(a1, a5, type metadata accessor for ElementID);
  sub_2545AEB50(a2, a5 + *(a4 + 20), type metadata accessor for HomeID);
  return sub_2545AEB50(a3, a5 + *(a4 + 24), type metadata accessor for TileElementInfo);
}

unint64_t ToggleControlEntity.description.getter()
{
  sub_2545FF594();

  type metadata accessor for ElementID(0);
  v3 = sub_2545FF794();
  v4 = v0;
  MEMORY[0x259C120B0](58, 0xE100000000000000);
  v1 = _s17HomeWidgetIntents0A2IDV11descriptionSSvg_0();
  MEMORY[0x259C120B0](v1);

  MEMORY[0x259C120B0](v3, v4);

  MEMORY[0x259C120B0](41, 0xE100000000000000);
  return 0xD000000000000014;
}

unint64_t sub_2545AFAF4()
{
  sub_2545FF594();

  type metadata accessor for ElementID(0);
  v3 = sub_2545FF794();
  v4 = v0;
  MEMORY[0x259C120B0](58, 0xE100000000000000);
  v1 = _s17HomeWidgetIntents0A2IDV11descriptionSSvg_0();
  MEMORY[0x259C120B0](v1);

  MEMORY[0x259C120B0](v3, v4);

  MEMORY[0x259C120B0](41, 0xE100000000000000);
  return 0xD000000000000014;
}

unint64_t sub_2545AFC7C()
{
  result = qword_27F606450;
  if (!qword_27F606450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606450);
  }

  return result;
}

unint64_t sub_2545AFDF4()
{
  result = qword_27F606490;
  if (!qword_27F606490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F606498, &qword_254600030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606490);
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

uint64_t sub_2545AFEE8(uint64_t a1)
{
  result = sub_2545AFF40(&qword_27F6064A8, type metadata accessor for ToggleControlEntity, &protocol conformance descriptor for ToggleControlEntity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2545AFF40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2545AFFF8(uint64_t a1)
{
  result = type metadata accessor for ElementID(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for HomeID(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for TileElementInfo(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
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

Swift::Void __swiftcall StartHomeWidgetIntentsService()()
{
  if (qword_27F6063A0 != -1)
  {
    swift_once();
  }

  v0 = sub_2545FF0A4();
  __swift_project_value_buffer(v0, qword_27F60ADD8);
  v1 = sub_2545FF084();
  v2 = sub_2545FF474();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2545AB000, v1, v2, "Starting AppIntentsExtension", v3, 2u);
    MEMORY[0x259C12CB0](v3, -1, -1);
  }

  v4 = objc_opt_self();
  v5 = sub_2545FF164();
  [v4 setDefaultEffectiveBundleIdentifier_];

  sub_2545FECC4();
  sub_2545FECB4();
}

void *sub_2545B027C()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (!v2)
  {
    sub_2545FECC4();
    if (sub_2545FECA4() != 7)
    {
      sub_2545FEC04();
      sub_2545FEBF4();
      sub_2545B0FE4();
      v13 = sub_2545FF4B4();
      v2 = sub_2545FEBE4();
      sub_2545FEA14();

      v14 = *(v1 + 16);
      *(v1 + 16) = v2;
      v15 = v2;

      return v2;
    }

    v3 = sub_2545FEC94();
    v4 = sub_2545FEC14();

    if (!v4)
    {
      v5 = [objc_opt_self() sharedDispatcher];
      v4 = [v5 homeManager];
    }

    v6 = *(v1 + 16);
    *(v1 + 16) = v4;

    if (!*(v1 + 16))
    {
      if (qword_27F6063A0 != -1)
      {
        swift_once();
      }

      v7 = sub_2545FF0A4();
      __swift_project_value_buffer(v7, qword_27F60ADD8);
      v8 = sub_2545FF084();
      v9 = sub_2545FF454();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_2545AB000, v8, v9, "HFHomeKitDispatcher is still initializing and so homeManager is nil", v10, 2u);
        MEMORY[0x259C12CB0](v10, -1, -1);
      }
    }

    v2 = *(v1 + 16);
  }

  v11 = v2;
  return v2;
}

uint64_t sub_2545B0448()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6064D0, &unk_2546002B0);
  v1[3] = swift_task_alloc();
  v2 = sub_2545FEB64();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  sub_2545FF354();
  v1[7] = sub_2545FF344();
  v4 = sub_2545FF334();
  v1[8] = v4;
  v1[9] = v3;

  return MEMORY[0x2822009F8](sub_2545B0574, v4, v3);
}

uint64_t sub_2545B0574()
{
  sub_2545FECC4();
  if (sub_2545FECA4() == 7)
  {
    v0[20] = [objc_opt_self() sharedDispatcher];
    v1 = swift_task_alloc();
    v0[21] = v1;
    *v1 = v0;
    v1[1] = sub_2545B0C7C;

    return MEMORY[0x28216DC50]();
  }

  else
  {
    v0[10] = sub_2545FEBD4();
    v0[11] = sub_2545FECE4();
    v0[12] = sub_2545FECD4();
    v0[13] = sub_2545B1030();
    v3 = sub_2545FF334();

    return MEMORY[0x2822009F8](sub_2545B06C4, v3, v2);
  }
}

uint64_t sub_2545B06C4()
{
  sub_2545FEA14();
  v0[14] = sub_2545FEBC4();
  v1 = v0[8];
  v2 = v0[9];

  return MEMORY[0x2822009F8](sub_2545B0734, v1, v2);
}

uint64_t sub_2545B0734()
{
  v1 = MEMORY[0x259C11A70]();
  v0[15] = v1;
  sub_2545FEA14();
  if (v1)
  {
    v0[16] = sub_2545FECD4();
    v3 = sub_2545FF334();

    return MEMORY[0x2822009F8](sub_2545B08F0, v3, v2);
  }

  else
  {
    sub_2545FEA14();
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v4 = sub_2545FF0A4();
    __swift_project_value_buffer(v4, qword_27F60ADD8);
    v5 = sub_2545FF084();
    v6 = sub_2545FF454();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2545AB000, v5, v6, "WidgetDataModel is returning a nil homeManager", v7, 2u);
      MEMORY[0x259C12CB0](v7, -1, -1);
    }

    v8 = v0[1];

    return v8(0);
  }
}

uint64_t sub_2545B08F0()
{
  sub_2545FEA14();
  v0[17] = sub_2545FEBC4();
  v1 = v0[8];
  v2 = v0[9];

  return MEMORY[0x2822009F8](sub_2545B0960, v1, v2);
}

uint64_t sub_2545B0960()
{
  v1 = v0[3];
  v2 = sub_2545FEB04();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_2545B0A44;
  v4 = v0[6];
  v5 = v0[3];

  return MEMORY[0x28216E6C8](v4, v5);
}

uint64_t sub_2545B0A44()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  *(*v1 + 152) = v0;

  sub_2545B1088(v3);
  sub_2545FEA14();
  v4 = *(v2 + 72);
  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_2545B0E50;
  }

  else
  {
    v6 = sub_2545B0BC0;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_2545B0BC0()
{
  v1 = v0[15];
  v2 = v0[6];
  v3 = v0[4];
  v4 = v0[5];
  sub_2545FEA14();
  v5 = sub_2545FEB44();

  (*(v4 + 8))(v2, v3);

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_2545B0C7C(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v4 = v3[8];
    v5 = v3[9];
    v6 = sub_2545B0ED0;
  }

  else
  {
    v7 = v3[20];

    v4 = v3[8];
    v5 = v3[9];
    v6 = sub_2545B0DAC;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2545B0DAC()
{
  sub_2545FEA14();
  v1 = sub_2545B027C();
  if (v1)
  {
    v2 = v1;
    v3 = sub_2545FA83C();
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_2545B0E50()
{
  v1 = *(v0 + 120);
  sub_2545FEA14();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2545B0ED0()
{
  v1 = *(v0 + 160);
  sub_2545FEA14();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t IntentsService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_2545B0FE4()
{
  result = qword_27F6064C8;
  if (!qword_27F6064C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F6064C8);
  }

  return result;
}

unint64_t sub_2545B1030()
{
  result = qword_27F6064D8;
  if (!qword_27F6064D8)
  {
    sub_2545FECE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F6064D8);
  }

  return result;
}

uint64_t sub_2545B1088(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6064D0, &unk_2546002B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static HomeXLModuleConfigurationIntent.attributionBundleIdentifier.getter()
{
  swift_beginAccess();
  v0 = *aComAppleHome;
  sub_2545FE8E4();
  return v0;
}

uint64_t static HomeXLModuleConfigurationIntent.attributionBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *aComAppleHome = a1;
  *&aComAppleHome[8] = a2;
}

uint64_t sub_2545B12B4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *aComAppleHome = v2;
  *&aComAppleHome[8] = v1;
  sub_2545FE8E4();
}

uint64_t sub_2545B1318()
{
  v0 = sub_2545FEA44();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2545FEB24();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_2545FF154();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_2545FEA64();
  __swift_allocate_value_buffer(v6, qword_27F6064F0);
  __swift_project_value_buffer(v6, qword_27F6064F0);
  sub_2545FF0F4();
  sub_2545FEB14();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_2545FEA74();
}

uint64_t sub_2545B153C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606428, "$#");
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_2545FEA44();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2545FEB24();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2545FF154();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2545FEA64();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_2545FE7D4();
  __swift_allocate_value_buffer(v10, qword_27F606508);
  __swift_project_value_buffer(v10, qword_27F606508);
  sub_2545FF0F4();
  sub_2545FEB14();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_2545FEA74();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_2545FE7E4();
}

uint64_t sub_2545B1868@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t HomeXLModuleConfigurationIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v78 = a1;
  v1 = sub_2545FE814();
  MEMORY[0x28223BE20](v1 - 8);
  v58 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  MEMORY[0x28223BE20](v3 - 8);
  v57 = &v52 - v4;
  v77 = sub_2545FE914();
  v79 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v76 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606528, &qword_2546002E8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v70 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v69 = &v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606530, &unk_2546002F0);
  MEMORY[0x28223BE20](v10 - 8);
  v56 = &v52 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606428, "$#");
  MEMORY[0x28223BE20](v12 - 8);
  v55 = &v52 - v13;
  v65 = sub_2545FEA44();
  v14 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2545FEB24();
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2545FF154();
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2545FEA64();
  v64 = v23;
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606538, &unk_254600300);
  sub_2545FF0F4();
  v74 = &unk_2546002F0;
  v60 = v19;
  sub_2545FEB14();
  v71 = *MEMORY[0x277CC9110];
  v66 = *(v14 + 104);
  v75 = v14 + 104;
  v61 = v16;
  v66(v16);
  v27 = v26;
  sub_2545FEA74();
  v28 = *(v24 + 56);
  v72 = v24 + 56;
  v73 = v28;
  v29 = v55;
  v28(v55, 1, 1, v23);
  LOBYTE(v81) = 1;
  v30 = sub_2545FF324();
  (*(*(v30 - 8) + 56))(v56, 1, 1, v30);
  v31 = sub_2545FE734();
  v32 = *(v31 - 8);
  v33 = *(v32 + 56);
  v62 = v32 + 56;
  v63 = v33;
  v34 = v69;
  v35 = v31;
  (v33)(v69, 1, 1);
  v68 = *MEMORY[0x277CBA308];
  v36 = *(v79 + 104);
  v79 += 104;
  v67 = v36;
  v37 = v77;
  (v36)(v76);
  v52 = v27;
  *v78 = sub_2545FE7A4();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606540, &qword_254600328);
  v59 = v22;
  sub_2545FF0F4();
  sub_2545FEB14();
  v39 = v65;
  v38 = v66;
  (v66)(v61, v71, v65);
  sub_2545FEA74();
  v40 = v64;
  v73(v29, 1, 1, v64);
  LOBYTE(v81) = 0;
  v41 = v35;
  v53 = v35;
  v42 = v35;
  v43 = v63;
  v63(v34, 1, 1, v42);
  v43(v70, 1, 1, v41);
  v67(v76, v68, v37);
  sub_2545B241C();
  v78[1] = sub_2545FE784();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606550, &qword_254600330);
  sub_2545FF0F4();
  sub_2545FEB14();
  v44 = v61;
  (v38)(v61, v71, v39);
  sub_2545FEA74();
  v73(v29, 1, 1, v40);
  v45 = type metadata accessor for SelectedHomeEntity(0);
  (*(*(v45 - 8) + 56))(v57, 1, 1, v45);
  v46 = v53;
  v47 = v63;
  v63(v69, 1, 1, v53);
  v47(v70, 1, 1, v46);
  v48 = v76;
  v49 = v68;
  v50 = v67;
  v67(v76, v68, v77);
  sub_2545B2470();
  v78[2] = sub_2545FE794();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606560, &qword_254600338);
  sub_2545FF0F4();
  sub_2545FEB14();
  (v66)(v44, v71, v65);
  sub_2545FEA74();
  v73(v29, 1, 1, v64);
  v81 = 0;
  sub_2545FE804();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606568, &qword_254600340);
  swift_getKeyPath();
  swift_getKeyPath();
  v80 = sub_2545FE974();
  v50(v48, v49, v77);
  sub_2545B3C58();
  sub_2545B4F2C(&qword_27F606578, &qword_27F606580, &qword_254600398, MEMORY[0x277D83988]);
  result = sub_2545FE7B4();
  v78[3] = result;
  return result;
}

unint64_t sub_2545B241C()
{
  result = qword_27F606548;
  if (!qword_27F606548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606548);
  }

  return result;
}

unint64_t sub_2545B2470()
{
  result = qword_27F606558;
  if (!qword_27F606558)
  {
    type metadata accessor for SelectedHomeEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606558);
  }

  return result;
}

uint64_t HomeXLModuleConfigurationIntent.init(home:)@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v56 = a1;
  v77 = a2;
  v2 = sub_2545FE814();
  MEMORY[0x28223BE20](v2 - 8);
  v54 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v55 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v65 = &v49 - v7;
  v76 = sub_2545FE914();
  v78 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v75 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606528, &qword_2546002E8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v64 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v51 = &v49 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606530, &unk_2546002F0);
  MEMORY[0x28223BE20](v13 - 8);
  v53 = &v49 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606428, "$#");
  MEMORY[0x28223BE20](v15 - 8);
  v50 = &v49 - v16;
  v74 = sub_2545FEA44();
  v17 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2545FEB24();
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2545FF154();
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2545FEA64();
  v71 = v26;
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606538, &unk_254600300);
  v57 = v25;
  sub_2545FF0F4();
  v73 = &unk_2546002F0;
  v66 = v22;
  sub_2545FEB14();
  v72 = *MEMORY[0x277CC9110];
  v28 = *(v17 + 104);
  v62 = v17 + 104;
  v63 = v28;
  v67 = v19;
  v28(v19);
  sub_2545FEA74();
  v68 = *(v27 + 56);
  v70 = v27 + 56;
  v29 = v50;
  v68(v50, 1, 1, v26);
  LOBYTE(v80) = 1;
  v30 = sub_2545FF324();
  (*(*(v30 - 8) + 56))(v53, 1, 1, v30);
  v58 = sub_2545FE734();
  v31 = *(v58 - 8);
  v59 = *(v31 + 56);
  v60 = v31 + 56;
  v32 = v51;
  v59(v51, 1, 1, v58);
  v69 = *MEMORY[0x277CBA308];
  v33 = *(v78 + 104);
  v78 += 104;
  v61 = v33;
  v34 = v76;
  v33(v75);
  v53 = sub_2545FE7A4();
  *v77 = v53;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606540, &qword_254600328);
  sub_2545FF0F4();
  sub_2545FEB14();
  v35 = v63;
  v63(v67, v72, v74);
  sub_2545FEA74();
  v36 = v29;
  v68(v29, 1, 1, v71);
  LOBYTE(v80) = 0;
  v37 = v32;
  v38 = v58;
  v39 = v59;
  v59(v32, 1, 1, v58);
  v39(v64, 1, 1, v38);
  v40 = v34;
  v41 = v61;
  v61(v75, v69, v40);
  sub_2545B241C();
  v52 = sub_2545FE784();
  v77[1] = v52;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606550, &qword_254600330);
  sub_2545FF0F4();
  sub_2545FEB14();
  v35(v67, v72, v74);
  sub_2545FEA74();
  v68(v36, 1, 1, v71);
  v42 = type metadata accessor for SelectedHomeEntity(0);
  (*(*(v42 - 8) + 56))(v65, 1, 1, v42);
  v43 = v58;
  v44 = v59;
  v59(v37, 1, 1, v58);
  v44(v64, 1, 1, v43);
  v45 = v75;
  v41(v75, v69, v76);
  sub_2545B2470();
  v77[2] = sub_2545FE794();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606560, &qword_254600338);
  sub_2545FF0F4();
  sub_2545FEB14();
  v63(v67, v72, v74);
  sub_2545FEA74();
  v68(v36, 1, 1, v71);
  v80 = 0;
  sub_2545FE804();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606568, &qword_254600340);
  swift_getKeyPath();
  swift_getKeyPath();
  v79 = sub_2545FE974();
  v61(v45, v69, v76);
  sub_2545B3C58();
  sub_2545B4F2C(&qword_27F606578, &qword_27F606580, &qword_254600398, MEMORY[0x277D83988]);
  v77[3] = sub_2545FE7B4();
  LOBYTE(v80) = 1;
  sub_2545FE764();
  LOBYTE(v80) = 0;
  sub_2545FE764();
  v46 = v56;
  v47 = v65;
  sub_2545B3CAC(v56, v65);
  sub_2545B3CAC(v47, v55);
  sub_2545FE764();
  sub_2545B3D1C(v47);
  v80 = 0;
  sub_2545FE764();
  return sub_2545B3D1C(v46);
}

uint64_t HomeXLModuleConfigurationIntent.home.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2545B3CAC(a1, &v5 - v3);
  sub_2545FE764();
  return sub_2545B3D1C(a1);
}

uint64_t sub_2545B31F0(char *a1, uint64_t *a2)
{
  sub_2545FE8F4();
  sub_2545FE8F4();
  sub_2545FE8F4();
  sub_2545FE8F4();
  sub_2545FE764();
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545FEA14();
  return sub_2545FEA14();
}

uint64_t (*HomeXLModuleConfigurationIntent.useRecommendations.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2545FE744();
  return sub_2545B32E8;
}

uint64_t sub_2545B3344(char *a1, uint64_t *a2)
{
  sub_2545FE8F4();
  sub_2545FE8F4();
  sub_2545FE8F4();
  sub_2545FE8F4();
  sub_2545FE764();
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545FEA14();
  return sub_2545FEA14();
}

uint64_t (*HomeXLModuleConfigurationIntent.show.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2545FE744();
  return sub_2545B4F74;
}

uint64_t (*HomeXLModuleConfigurationIntent.home.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2545FE744();
  return sub_2545B4F74;
}

uint64_t sub_2545B3550(uint64_t *a1, uint64_t *a2)
{
  sub_2545FE8E4();
  sub_2545FE8F4();
  sub_2545FE8F4();
  sub_2545FE8F4();
  sub_2545FE8F4();
  sub_2545FE764();
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545FEA14();
  return sub_2545FEA14();
}

uint64_t (*HomeXLModuleConfigurationIntent.items.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2545FE744();
  return sub_2545B4F74;
}

void sub_2545B364C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t static HomeXLModuleConfigurationIntent.parameterSummary.getter()
{
  v0 = sub_2545FE9E4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  (*(v1 + 104))(v3, *MEMORY[0x277CBA468], v0);
  v5[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606588, &qword_2546003A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606590, &qword_2546003A8);
  sub_2545B40B0();
  sub_2545B4F2C(&qword_27F606598, &qword_27F606588, &qword_2546003A0, MEMORY[0x277CBA490]);
  sub_2545B4F2C(&qword_27F6065A0, &qword_27F606590, &qword_2546003A8, MEMORY[0x277CBA2C0]);
  sub_2545B4F2C(&qword_27F6065A8, &qword_27F606538, &unk_254600300, MEMORY[0x277CB9F10]);
  return sub_2545FEA24();
}

uint64_t sub_2545B38F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2545FE774();
  *a1 = result;
  return result;
}

uint64_t sub_2545B3920@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v1 = sub_2545FE9D4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606588, &qword_2546003A0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v15 - v10;
  swift_getKeyPath();
  (*(v2 + 104))(v4, *MEMORY[0x277CBA3E8], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606590, &qword_2546003A8);
  sub_2545B40B0();
  sub_2545B4F2C(&qword_27F6065A0, &qword_27F606590, &qword_2546003A8, MEMORY[0x277CBA2C0]);
  sub_2545B4F2C(&qword_27F6065D8, &qword_27F606550, &qword_254600330, MEMORY[0x277CB9F10]);
  sub_2545FEA14();
  v12 = sub_2545B4F2C(&qword_27F606598, &qword_27F606588, &qword_2546003A0, MEMORY[0x277CBA490]);
  MEMORY[0x259C11820](v9, &type metadata for HomeXLModuleConfigurationIntent, v5, v12);
  v13 = *(v6 + 8);
  v13(v9, v5);
  MEMORY[0x259C11810](v11, &type metadata for HomeXLModuleConfigurationIntent, v5, v12);
  return (v13)(v11, v5);
}

uint64_t sub_2545B3C2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2545FE774();
  *a1 = result;
  return result;
}

unint64_t sub_2545B3C58()
{
  result = qword_27F606570;
  if (!qword_27F606570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606570);
  }

  return result;
}

uint64_t sub_2545B3CAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2545B3D1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2545B3DC0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606590, &qword_2546003A8);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_2545B40B0();
  sub_2545FE904();
  v8 = sub_2545B4F2C(&qword_27F6065A0, &qword_27F606590, &qword_2546003A8, MEMORY[0x277CBA2C0]);
  MEMORY[0x259C11820](v5, &type metadata for HomeXLModuleConfigurationIntent, v1, v8);
  v9 = *(v2 + 8);
  v9(v5, v1);
  MEMORY[0x259C11810](v7, &type metadata for HomeXLModuleConfigurationIntent, v1, v8);
  return (v9)(v7, v1);
}

uint64_t sub_2545B3F60()
{
  swift_getKeyPath();
  sub_2545B40B0();
  v0 = sub_2545FE8F4();
  sub_2545FEA14();
  swift_getKeyPath();
  sub_2545FE8F4();
  v1 = sub_2545FE8F4();
  sub_2545FEA14();
  swift_getKeyPath();
  sub_2545FE8F4();
  v2 = sub_2545FE8F4();
  sub_2545FEA14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6065D0, &qword_2546005A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2546002C0;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  sub_2545FE8F4();
  v4 = sub_2545FE8E4();

  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545FEA14();
  return v4;
}

unint64_t sub_2545B40B0()
{
  result = qword_281532E80;
  if (!qword_281532E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281532E80);
  }

  return result;
}

uint64_t sub_2545B4110(uint64_t a1)
{
  swift_getKeyPath();
  sub_2545B40B0();
  v1 = sub_2545FE8F4();
  sub_2545FEA14();
  swift_getKeyPath();
  sub_2545FE8F4();
  v2 = sub_2545FE8F4();
  sub_2545FEA14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6065D0, &qword_2546005A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2546002D0;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  sub_2545FE8F4();
  v4 = sub_2545FE8E4();

  sub_2545FEA14();
  sub_2545FEA14();
  return v4;
}

uint64_t sub_2545B4208()
{
  swift_beginAccess();
  v0 = *aComAppleHome;
  sub_2545FE8E4();
  return v0;
}

uint64_t sub_2545B4260@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F606380 != -1)
  {
    swift_once();
  }

  v2 = sub_2545FEA64();
  v3 = __swift_project_value_buffer(v2, qword_27F6064F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2545B4318(uint64_t a1, uint64_t a2)
{
  v2 = sub_2545FE9E4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  (*(v3 + 104))(v5, *MEMORY[0x277CBA468], v2);
  v7[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606588, &qword_2546003A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606590, &qword_2546003A8);
  sub_2545B4F2C(&qword_27F606598, &qword_27F606588, &qword_2546003A0, MEMORY[0x277CBA490]);
  sub_2545B4F2C(&qword_27F6065A0, &qword_27F606590, &qword_2546003A8, MEMORY[0x277CBA2C0]);
  sub_2545B4F2C(&qword_27F6065A8, &qword_27F606538, &unk_254600300, MEMORY[0x277CB9F10]);
  return sub_2545FEA24();
}

uint64_t sub_2545B4550(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_2545B4ED8();
  *v4 = v2;
  v4[1] = sub_2545B45FC;

  return MEMORY[0x28210C3E0](a2, v5);
}

uint64_t sub_2545B45FC()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_2545B4708(uint64_t a1)
{
  v2 = sub_2545B40B0();

  return MEMORY[0x28210B538](a1, v2);
}

double HomeXLModuleConfigurationIntent.init(home:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v16 - v5;
  v7 = [a1 uniqueIdentifier];
  sub_2545FEAC4();

  v8 = [a1 name];
  v9 = sub_2545FF174();
  v11 = v10;

  v12 = type metadata accessor for SelectedHomeEntity(0);
  v13 = &v6[*(v12 + 20)];
  *v13 = v9;
  v13[1] = v11;
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  HomeXLModuleConfigurationIntent.init(home:)(v6, v16);

  result = *v16;
  v15 = v16[1];
  *a2 = v16[0];
  a2[1] = v15;
  return result;
}

double HomeXLModuleConfigurationIntent.init(home:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v15 - v5;
  sub_2545FEB34();
  v7 = sub_2545FEB54();
  v9 = v8;
  v10 = type metadata accessor for SelectedHomeEntity(0);
  v11 = &v6[*(v10 + 20)];
  *v11 = v7;
  v11[1] = v9;
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  HomeXLModuleConfigurationIntent.init(home:)(v6, v15);
  v12 = sub_2545FEB64();
  (*(*(v12 - 8) + 8))(a1, v12);
  result = *v15;
  v14 = v15[1];
  *a2 = v15[0];
  a2[1] = v14;
  return result;
}

uint64_t static HomeXLModuleConfigurationIntent.defaultIntent.getter(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2545B4A60, 0, 0);
}

uint64_t sub_2545B4A60()
{
  v7 = v0;
  HomeXLModuleConfigurationIntent.init()(v6);
  v1 = v6[1];
  v0[5] = v6[0];
  v0[6] = v1;
  v2 = v6[3];
  v0[7] = v6[2];
  v0[8] = v2;
  sub_2545FE8F4();
  sub_2545FE8F4();
  sub_2545FE8F4();
  sub_2545FE8F4();
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_2545B4B40;
  v4 = v0[4];

  return static SelectedHomeEntity.selectedHome.getter(v4);
}

uint64_t sub_2545B4B40()
{

  return MEMORY[0x2822009F8](sub_2545B4C3C, 0, 0);
}

uint64_t sub_2545B4C3C()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  v6 = v0[2];
  sub_2545B3CAC(v5, v0[3]);
  sub_2545FE764();
  sub_2545B3D1C(v5);
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545FEA14();
  *v6 = v4;
  v6[1] = v3;
  v6[2] = v2;
  v6[3] = v1;

  v7 = v0[1];

  return v7();
}

unint64_t sub_2545B4D14()
{
  result = qword_281532E78;
  if (!qword_281532E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281532E78);
  }

  return result;
}

unint64_t sub_2545B4D6C()
{
  result = qword_281532E88;
  if (!qword_281532E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281532E88);
  }

  return result;
}

unint64_t sub_2545B4DC4()
{
  result = qword_27F6065B0;
  if (!qword_27F6065B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F6065B0);
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

uint64_t sub_2545B4E40(uint64_t *a1, int a2)
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

uint64_t sub_2545B4E88(uint64_t result, int a2, int a3)
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

unint64_t sub_2545B4ED8()
{
  result = qword_27F6065C8;
  if (!qword_27F6065C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F6065C8);
  }

  return result;
}

uint64_t sub_2545B4F2C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t static ToggleControlConfigurationIntent.attributionBundleIdentifier.getter()
{
  swift_beginAccess();
  v0 = *aComAppleHome_0;
  sub_2545FE8E4();
  return v0;
}

uint64_t static ToggleControlConfigurationIntent.attributionBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *aComAppleHome_0 = a1;
  *&aComAppleHome_0[8] = a2;
}

uint64_t sub_2545B5084(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *aComAppleHome_0 = v2;
  *&aComAppleHome_0[8] = v1;
  sub_2545FE8E4();
}

uint64_t sub_2545B50E8()
{
  v0 = sub_2545FEA44();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2545FEB24();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_2545FF154();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_2545FEA64();
  __swift_allocate_value_buffer(v6, qword_27F6065F0);
  __swift_project_value_buffer(v6, qword_27F6065F0);
  sub_2545FF0F4();
  sub_2545FEB14();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_2545FEA74();
}

uint64_t sub_2545B5310()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606428, "$#");
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_2545FEA44();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2545FEB24();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2545FF154();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2545FEA64();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_2545FE7D4();
  __swift_allocate_value_buffer(v10, qword_27F606608);
  __swift_project_value_buffer(v10, qword_27F606608);
  sub_2545FF0F4();
  sub_2545FEB14();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_2545FEA74();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_2545FE7E4();
}

uint64_t ToggleControlConfigurationIntent.init(home:accessoriesAndScenes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v60 = a2;
  v58 = a1;
  v65 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606620, &unk_2546005F0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v59 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v57 = v41 - v6;
  v64 = sub_2545FE914();
  v66 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v55 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606528, &qword_2546002E8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v63 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v62 = v41 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v56 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v61 = v41 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606428, "$#");
  MEMORY[0x28223BE20](v16 - 8);
  v54 = v41 - v17;
  v52 = sub_2545FEA44();
  v18 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v20 = v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2545FEB24();
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2545FF154();
  MEMORY[0x28223BE20](v24 - 8);
  v25 = sub_2545FEA64();
  v46 = v25;
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606550, &qword_254600330);
  sub_2545FF0F4();
  v50 = &qword_2546005E0;
  v41[2] = v23;
  sub_2545FEB14();
  v49 = *MEMORY[0x277CC9110];
  v27 = *(v18 + 104);
  v51 = v18 + 104;
  v53 = v27;
  v44 = v20;
  v27(v20);
  sub_2545FEA74();
  v28 = *(v26 + 56);
  v45 = v26 + 56;
  v47 = v28;
  v29 = v54;
  v28(v54, 1, 1, v25);
  v30 = type metadata accessor for SelectedHomeEntity(0);
  (*(*(v30 - 8) + 56))(v61, 1, 1, v30);
  v31 = sub_2545FE734();
  v32 = *(*(v31 - 8) + 56);
  v32(v62, 1, 1, v31);
  v32(v63, 1, 1, v31);
  v42 = *MEMORY[0x277CBA308];
  v33 = *(v66 + 104);
  v66 += 104;
  v43 = v33;
  v34 = v55;
  v33(v55);
  sub_2545B84C0(&qword_27F606558, type metadata accessor for SelectedHomeEntity, &protocol conformance descriptor for SelectedHomeEntity);
  v48 = sub_2545FE794();
  *v65 = v48;
  v41[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606628, &qword_254600618);
  sub_2545FF0F4();
  sub_2545FEB14();
  v53(v44, v49, v52);
  sub_2545FEA74();
  v47(v29, 1, 1, v46);
  v35 = type metadata accessor for ToggleControlEntity(0);
  v36 = v57;
  (*(*(v35 - 8) + 56))(v57, 1, 1, v35);
  v32(v62, 1, 1, v31);
  v32(v63, 1, 1, v31);
  v43(v34, v42, v64);
  sub_2545B84C0(&qword_27F6064A8, type metadata accessor for ToggleControlEntity, &protocol conformance descriptor for ToggleControlEntity);
  v65[1] = sub_2545FE794();
  v37 = v58;
  v38 = v61;
  sub_2545B60C4(v58, v61, &qword_27F606520, &qword_2546002E0);
  sub_2545B60C4(v38, v56, &qword_27F606520, &qword_2546002E0);
  sub_2545FE764();
  sub_2545B612C(v38, &qword_27F606520, &qword_2546002E0);
  v39 = v60;
  sub_2545B60C4(v60, v36, &qword_27F606620, &unk_2546005F0);
  sub_2545B60C4(v36, v59, &qword_27F606620, &unk_2546005F0);
  sub_2545FE764();
  sub_2545B612C(v39, &qword_27F606620, &unk_2546005F0);
  sub_2545B612C(v37, &qword_27F606520, &qword_2546002E0);
  return sub_2545B612C(v36, &qword_27F606620, &unk_2546005F0);
}

uint64_t ToggleControlConfigurationIntent.home.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2545B60C4(a1, &v5 - v3, &qword_27F606520, &qword_2546002E0);
  sub_2545FE764();
  return sub_2545B612C(a1, &qword_27F606520, &qword_2546002E0);
}

uint64_t ToggleControlConfigurationIntent.accessoriesAndScenes.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606620, &unk_2546005F0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2545B60C4(a1, &v5 - v3, &qword_27F606620, &unk_2546005F0);
  sub_2545FE764();
  return sub_2545B612C(a1, &qword_27F606620, &unk_2546005F0);
}

uint64_t sub_2545B60C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2545B612C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double ToggleControlConfigurationIntent.init()@<D0>(_OWORD *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606620, &unk_2546005F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for SelectedHomeEntity(0);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = type metadata accessor for ToggleControlEntity(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  ToggleControlConfigurationIntent.init(home:accessoriesAndScenes:)(v7, v4, &v11);
  result = *&v11;
  *a1 = v11;
  return result;
}

uint64_t (*ToggleControlConfigurationIntent.home.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2545FE744();
  return sub_2545B4F74;
}

uint64_t sub_2545B63CC(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606620, &unk_2546005F0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_2545B60C4(a1, &v10 - v7, &qword_27F606620, &unk_2546005F0);
  sub_2545B60C4(v8, v6, &qword_27F606620, &unk_2546005F0);
  sub_2545FE8F4();
  sub_2545FE8F4();
  sub_2545FE764();
  sub_2545B612C(v8, &qword_27F606620, &unk_2546005F0);
  sub_2545FEA14();
  return sub_2545FEA14();
}

uint64_t (*ToggleControlConfigurationIntent.accessoriesAndScenes.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2545FE744();
  return sub_2545B32E8;
}

uint64_t static ToggleControlConfigurationIntent.parameterSummary.getter()
{
  v0 = sub_2545FE9D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  (*(v1 + 104))(v3, *MEMORY[0x277CBA3E8], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606630, &qword_254600648);
  sub_2545B69D0();
  sub_2545B4F2C(&qword_27F606638, &qword_27F606630, &qword_254600648, MEMORY[0x277CBA2C0]);
  sub_2545B4F2C(&qword_27F6065D8, &qword_27F606550, &qword_254600330, MEMORY[0x277CB9F10]);
  return sub_2545FEA14();
}

uint64_t sub_2545B675C()
{
  swift_getKeyPath();
  sub_2545B69D0();
  v0 = sub_2545FE8F4();
  sub_2545FEA14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6065D0, &qword_2546005A0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2546005D0;
  *(v1 + 32) = v0;
  sub_2545FE8F4();
  v2 = sub_2545FE8E4();

  sub_2545FEA14();
  return v2;
}

uint64_t sub_2545B6830(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606630, &qword_254600648);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_2545B69D0();
  sub_2545FE904();
  v8 = sub_2545B4F2C(&qword_27F606638, &qword_27F606630, &qword_254600648, MEMORY[0x277CBA2C0]);
  MEMORY[0x259C11820](v5, &type metadata for ToggleControlConfigurationIntent, v1, v8);
  v9 = *(v2 + 8);
  v9(v5, v1);
  MEMORY[0x259C11810](v7, &type metadata for ToggleControlConfigurationIntent, v1, v8);
  return (v9)(v7, v1);
}

unint64_t sub_2545B69D0()
{
  result = qword_281532CB8;
  if (!qword_281532CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281532CB8);
  }

  return result;
}

uint64_t sub_2545B6A24()
{
  swift_getKeyPath();
  sub_2545B69D0();
  v0 = sub_2545FE8F4();
  sub_2545FEA14();
  swift_getKeyPath();
  sub_2545FE8F4();
  v1 = sub_2545FE8F4();
  sub_2545FEA14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6065D0, &qword_2546005A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2546002D0;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  sub_2545FE8F4();
  v3 = sub_2545FE8E4();

  sub_2545FEA14();
  sub_2545FEA14();
  return v3;
}

uint64_t sub_2545B6B18()
{
  swift_beginAccess();
  v0 = *aComAppleHome_0;
  sub_2545FE8E4();
  return v0;
}

uint64_t sub_2545B6B6C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F606390 != -1)
  {
    swift_once();
  }

  v2 = sub_2545FEA64();
  v3 = __swift_project_value_buffer(v2, qword_27F6065F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2545B6C14()
{
  v0 = sub_2545FE9D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  (*(v1 + 104))(v3, *MEMORY[0x277CBA3E8], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606630, &qword_254600648);
  sub_2545B4F2C(&qword_27F606638, &qword_27F606630, &qword_254600648, MEMORY[0x277CBA2C0]);
  sub_2545B4F2C(&qword_27F6065D8, &qword_27F606550, &qword_254600330, MEMORY[0x277CB9F10]);
  return sub_2545FEA14();
}

uint64_t sub_2545B6DD4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_2545B8788();
  *v4 = v2;
  v4[1] = sub_2545B45FC;

  return MEMORY[0x28210C400](a2, v5);
}

double sub_2545B6E80@<D0>(_OWORD *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606620, &unk_2546005F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for SelectedHomeEntity(0);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = type metadata accessor for ToggleControlEntity(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  ToggleControlConfigurationIntent.init(home:accessoriesAndScenes:)(v7, v4, &v11);
  result = *&v11;
  *a1 = v11;
  return result;
}

uint64_t sub_2545B6FE0(uint64_t a1)
{
  v2 = sub_2545B69D0();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t ToggleControlConfigurationIntent.uniqueIdentifier.getter()
{
  v0 = type metadata accessor for ElementID(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606620, &unk_2546005F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v34 - v4;
  v6 = type metadata accessor for ToggleControlEntity(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v34 - v11;
  sub_2545FE754();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_2545B612C(v5, &qword_27F606620, &unk_2546005F0);
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v13 = sub_2545FF0A4();
    __swift_project_value_buffer(v13, qword_27F60ADD8);
    v14 = sub_2545FF084();
    v15 = sub_2545FF454();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2545AB000, v14, v15, "ToggleControlConfigurationIntent missing entity identifier", v16, 2u);
      MEMORY[0x259C12CB0](v16, -1, -1);
    }

    return sub_2545FEF14();
  }

  else
  {
    sub_2545B845C(v5, v12);
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v18 = sub_2545FF0A4();
    __swift_project_value_buffer(v18, qword_27F60ADD8);
    sub_2545B8554(v12, v10, type metadata accessor for ToggleControlEntity);
    v19 = sub_2545FF084();
    v20 = sub_2545FF444();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v35 = v22;
      *v21 = 136315138;
      sub_2545B8554(v10, v2, type metadata accessor for ElementID);
      v23 = _s17HomeWidgetIntents0A2IDV11descriptionSSvg_0();
      v34 = v0;
      v25 = v24;
      sub_2545B85BC(v2, type metadata accessor for ElementID);
      sub_2545B85BC(v10, type metadata accessor for ToggleControlEntity);
      v26 = sub_2545F0FB4(v23, v25, &v35);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_2545AB000, v19, v20, "Computing control identifier for entity identifier %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x259C12CB0](v22, -1, -1);
      MEMORY[0x259C12CB0](v21, -1, -1);
    }

    else
    {

      sub_2545B85BC(v10, type metadata accessor for ToggleControlEntity);
    }

    sub_2545B84C0(&qword_27F606458, type metadata accessor for ElementID, &protocol conformance descriptor for ElementID);
    v17 = sub_2545FEF04();
    v28 = v27;
    sub_2545FE8E4();
    v29 = sub_2545FF084();
    v30 = sub_2545FF444();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v35 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_2545F0FB4(v17, v28, &v35);
      _os_log_impl(&dword_2545AB000, v29, v30, "Computed control identifier %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x259C12CB0](v32, -1, -1);
      MEMORY[0x259C12CB0](v31, -1, -1);
    }

    sub_2545B85BC(v12, type metadata accessor for ToggleControlEntity);
  }

  return v17;
}

double ToggleControlConfigurationIntent.init(accessoriesAndScenes:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606620, &unk_2546005F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ToggleControlEntity(0);
  sub_2545B8554(a1 + *(v10 + 20), v9, type metadata accessor for HomeID);
  v11 = type metadata accessor for SelectedHomeEntity(0);
  v12 = &v9[*(v11 + 20)];
  *v12 = 0;
  *(v12 + 1) = 0xE000000000000000;
  (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  sub_2545B8554(a1, v6, type metadata accessor for ToggleControlEntity);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  ToggleControlConfigurationIntent.init(home:accessoriesAndScenes:)(v9, v6, &v14);
  sub_2545B85BC(a1, type metadata accessor for ToggleControlEntity);
  result = *&v14;
  *a2 = v14;
  return result;
}

double ToggleControlConfigurationIntent.init(home:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606620, &unk_2546005F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - v8;
  v10 = [a1 uniqueIdentifier];
  sub_2545FEAC4();

  v11 = [a1 name];
  v12 = sub_2545FF174();
  v14 = v13;

  v15 = type metadata accessor for SelectedHomeEntity(0);
  v16 = &v9[*(v15 + 20)];
  *v16 = v12;
  v16[1] = v14;
  (*(*(v15 - 8) + 56))(v9, 0, 1, v15);
  v17 = type metadata accessor for ToggleControlEntity(0);
  (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  ToggleControlConfigurationIntent.init(home:accessoriesAndScenes:)(v9, v6, &v19);

  result = *&v19;
  *a2 = v19;
  return result;
}

double ToggleControlConfigurationIntent.init(home:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606620, &unk_2546005F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  sub_2545FEB34();
  v10 = sub_2545FEB54();
  v12 = v11;
  v13 = type metadata accessor for SelectedHomeEntity(0);
  v14 = &v9[*(v13 + 20)];
  *v14 = v10;
  v14[1] = v12;
  (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
  v15 = type metadata accessor for ToggleControlEntity(0);
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  ToggleControlConfigurationIntent.init(home:accessoriesAndScenes:)(v9, v6, &v18);
  v16 = sub_2545FEB64();
  (*(*(v16 - 8) + 8))(a1, v16);
  result = *&v18;
  *a2 = v18;
  return result;
}

uint64_t static ToggleControlConfigurationIntent.defaultIntent.getter(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606620, &unk_2546005F0);
  v1[3] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2545B7C40, 0, 0);
}

uint64_t sub_2545B7C40()
{
  v10 = v0;
  v1 = v0[5];
  v2 = v0[3];
  v3 = type metadata accessor for SelectedHomeEntity(0);
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = type metadata accessor for ToggleControlEntity(0);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  ToggleControlConfigurationIntent.init(home:accessoriesAndScenes:)(v1, v2, v9);
  v5 = v9[1];
  v0[6] = v9[0];
  v0[7] = v5;
  sub_2545FE8F4();
  sub_2545FE8F4();
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_2545B7D90;
  v7 = v0[5];

  return static SelectedHomeEntity.selectedHome.getter(v7);
}

uint64_t sub_2545B7D90()
{

  return MEMORY[0x2822009F8](sub_2545B7E8C, 0, 0);
}

uint64_t sub_2545B7E8C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[2];
  sub_2545B60C4(v3, v0[4], &qword_27F606520, &qword_2546002E0);
  sub_2545FE764();
  sub_2545B612C(v3, &qword_27F606520, &qword_2546002E0);
  sub_2545FEA14();
  sub_2545FEA14();
  *v4 = v2;
  v4[1] = v1;

  v5 = v0[1];

  return v5();
}

uint64_t ToggleControlConfigurationIntent.description.getter()
{
  v23 = type metadata accessor for ToggleControlEntity(0);
  v0 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v22 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606620, &unk_2546005F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  v5 = type metadata accessor for SelectedHomeEntity(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_2545FF594();
  MEMORY[0x259C120B0](0xD000000000000025, 0x8000000254603A70);
  sub_2545FE754();
  if ((*(v6 + 48))(v11, 1, v5))
  {
    sub_2545B612C(v11, &qword_27F606520, &qword_2546002E0);
    v12 = 0xE300000000000000;
    v13 = 7104878;
  }

  else
  {
    sub_2545B8554(v11, v8, type metadata accessor for SelectedHomeEntity);
    sub_2545B612C(v11, &qword_27F606520, &qword_2546002E0);
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_2545FF594();

    v27 = 0xD000000000000013;
    v28 = 0x8000000254603AC0;
    v14 = _s17HomeWidgetIntents0A2IDV11descriptionSSvg_0();
    MEMORY[0x259C120B0](v14);

    MEMORY[0x259C120B0](41, 0xE100000000000000);
    v13 = v27;
    v12 = v28;
    sub_2545B85BC(v8, type metadata accessor for SelectedHomeEntity);
  }

  MEMORY[0x259C120B0](v13, v12);

  MEMORY[0x259C120B0](0xD000000000000018, 0x8000000254603AA0);
  sub_2545FE754();
  if ((*(v0 + 48))(v4, 1, v23))
  {
    sub_2545B612C(v4, &qword_27F606620, &unk_2546005F0);
    v15 = 0xE300000000000000;
    v16 = 7104878;
  }

  else
  {
    v17 = v22;
    sub_2545B8554(v4, v22, type metadata accessor for ToggleControlEntity);
    sub_2545B612C(v4, &qword_27F606620, &unk_2546005F0);
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_2545FF594();

    v27 = 0xD000000000000014;
    v28 = 0x80000002546038F0;
    v24 = qword_254600898[*(v17 + *(type metadata accessor for ElementID(0) + 20))];
    v25 = sub_2545FF794();
    v26 = v18;
    MEMORY[0x259C120B0](58, 0xE100000000000000);
    v19 = _s17HomeWidgetIntents0A2IDV11descriptionSSvg_0();
    MEMORY[0x259C120B0](v19);

    MEMORY[0x259C120B0](v25, v26);

    MEMORY[0x259C120B0](41, 0xE100000000000000);
    v16 = v27;
    v15 = v28;
    sub_2545B85BC(v17, type metadata accessor for ToggleControlEntity);
  }

  MEMORY[0x259C120B0](v16, v15);

  MEMORY[0x259C120B0](41, 0xE100000000000000);
  return v29;
}

uint64_t sub_2545B845C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToggleControlEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2545B84C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return sub_2545FEA14();
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_2545B8554(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2545B85BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2545B8620()
{
  result = qword_281532CB0;
  if (!qword_281532CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281532CB0);
  }

  return result;
}

unint64_t sub_2545B8678()
{
  result = qword_281532CC0[0];
  if (!qword_281532CC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281532CC0);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2545B86F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2545B873C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_2545B8788()
{
  result = qword_27F606650;
  if (!qword_27F606650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606650);
  }

  return result;
}

uint64_t sub_2545B8804(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_2545B60C4(a1, &v10 - v7, &qword_27F606520, &qword_2546002E0);
  sub_2545B60C4(v8, v6, &qword_27F606520, &qword_2546002E0);
  sub_2545FE8F4();
  sub_2545FE8F4();
  sub_2545FE8F4();
  sub_2545FE8F4();
  sub_2545FE764();
  sub_2545B612C(v8, &qword_27F606520, &qword_2546002E0);
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545FEA14();
  return sub_2545FEA14();
}

uint64_t HomeXLTileEntityQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606568, &qword_254600340);
  swift_getKeyPath();
  swift_getKeyPath();
  result = sub_2545FE974();
  *a1 = result;
  return result;
}

uint64_t sub_2545B8A00()
{
  v1 = *(v0 + 16);
  v2 = sub_2545FEF64();
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_2545B8ABC;

  return sub_2545C90B8(1, v1, v2);
}

uint64_t sub_2545B8ABC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 32) = a1;
  *(v3 + 40) = v1;

  if (v1)
  {
    v4 = sub_2545B8EEC;
  }

  else
  {
    v4 = sub_2545B8BD0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2545B8BD0()
{
  v29 = v0;
  if (*(v0[4] + 16))
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v1 = sub_2545FF0A4();
    __swift_project_value_buffer(v1, qword_27F60ADD8);
    sub_2545FE8E4();
    sub_2545FE8E4();
    v2 = sub_2545FF084();
    v3 = sub_2545FF434();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = v0[4];
      v5 = v0[2];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v28 = v7;
      *v6 = 136315394;
      v8 = type metadata accessor for ElementID(0);
      v9 = MEMORY[0x259C121B0](v5, v8);
      v11 = sub_2545F0FB4(v9, v10, &v28);

      *(v6 + 4) = v11;
      *(v6 + 12) = 2080;
      v12 = type metadata accessor for HomeXLTileEntity(0);
      v13 = MEMORY[0x259C121B0](v4, v12);
      v15 = sub_2545F0FB4(v13, v14, &v28);

      *(v6 + 14) = v15;
      _os_log_impl(&dword_2545AB000, v2, v3, "entities(for: %s returned %s", v6, 0x16u);
      swift_arrayDestroy();
      v16 = v7;
LABEL_10:
      MEMORY[0x259C12CB0](v16, -1, -1);
      MEMORY[0x259C12CB0](v6, -1, -1);
    }
  }

  else
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v17 = sub_2545FF0A4();
    __swift_project_value_buffer(v17, qword_27F60ADD8);
    sub_2545FE8E4();
    v2 = sub_2545FF084();
    v18 = sub_2545FF454();

    if (os_log_type_enabled(v2, v18))
    {
      v19 = v0[2];
      v6 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v6 = 136315138;
      v21 = type metadata accessor for ElementID(0);
      v22 = MEMORY[0x259C121B0](v19, v21);
      v24 = sub_2545F0FB4(v22, v23, &v28);

      *(v6 + 4) = v24;
      _os_log_impl(&dword_2545AB000, v2, v18, "entities(for: %s returned empty", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v16 = v20;
      goto LABEL_10;
    }
  }

  v25 = v0[4];
  v26 = v0[1];

  return v26(v25);
}

uint64_t sub_2545B8EEC()
{
  v21 = v0;
  if (qword_27F6063A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_2545FF0A4();
  __swift_project_value_buffer(v2, qword_27F60ADD8);
  sub_2545FE8E4();
  v3 = v1;
  v4 = sub_2545FF084();
  v5 = sub_2545FF454();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 40);
    v7 = *(v0 + 16);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v8 = 136315394;
    v11 = type metadata accessor for ElementID(0);
    v12 = MEMORY[0x259C121B0](v7, v11);
    v14 = sub_2545F0FB4(v12, v13, &v20);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2112;
    v15 = v6;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v16;
    *v9 = v16;
    _os_log_impl(&dword_2545AB000, v4, v5, "entities(for: %s threw error %@", v8, 0x16u);
    sub_2545B612C(v9, &qword_27F606658, &qword_254600D70);
    MEMORY[0x259C12CB0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x259C12CB0](v10, -1, -1);
    MEMORY[0x259C12CB0](v8, -1, -1);
  }

  v17 = *(v0 + 8);
  v18 = MEMORY[0x277D84F90];

  return v17(v18);
}

uint64_t HomeXLTileEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  type metadata accessor for SelectedHomeEntity(0);
  v4[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606660, &qword_254600978);
  v4[6] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606668, &qword_254600980);
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = swift_task_alloc();
  v7 = *v3;
  v4[10] = v6;
  v4[11] = v7;

  return MEMORY[0x2822009F8](sub_2545B925C, 0, 0);
}

uint64_t sub_2545B925C()
{
  if (sub_2545FE964())
  {
    v2 = v0[5];
    v1 = v0[6];
    swift_getKeyPath();
    sub_2545CE174();
    sub_2545FE7C4();
    sub_2545FEA14();
    sub_2545FEA14();
    sub_2545D8660(v2, v1, type metadata accessor for HomeID);
    sub_2545D86C8(v2, type metadata accessor for SelectedHomeEntity);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v0[6];
  v5 = v0[4];
  v6 = type metadata accessor for HomeID(0);
  (*(*(v6 - 8) + 56))(v4, v3, 1, v6);
  v7 = sub_2545FEF64();
  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_2545B9400;
  v9 = v0[10];
  v10 = v0[6];
  v11 = v0[3];

  return sub_2545B9B88(v9, v11, v5, v10, v7);
}

uint64_t sub_2545B9400()
{
  v2 = *(*v1 + 48);
  *(*v1 + 104) = v0;

  sub_2545B612C(v2, &qword_27F606660, &qword_254600978);
  if (v0)
  {
    v3 = sub_2545B9904;
  }

  else
  {
    v3 = sub_2545B9540;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2545B9540()
{
  v33 = v0;
  v1 = *(sub_2545FE864() + 16);

  if (v1)
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v2 = v0[9];
    v3 = v0[10];
    v4 = v0[7];
    v5 = v0[8];
    v6 = sub_2545FF0A4();
    __swift_project_value_buffer(v6, qword_27F60ADD8);
    (*(v5 + 16))(v2, v3, v4);
    sub_2545FE8E4();
    v7 = sub_2545FF084();
    v8 = sub_2545FF434();

    v9 = os_log_type_enabled(v7, v8);
    v11 = v0[8];
    v10 = v0[9];
    v12 = v0[7];
    if (v9)
    {
      v14 = v0[3];
      v13 = v0[4];
      v15 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = v31;
      *v15 = 136315394;
      *(v15 + 4) = sub_2545F0FB4(v14, v13, &v32);
      *(v15 + 12) = 2080;
      v16 = sub_2545FE864();
      v17 = type metadata accessor for HomeXLTileEntity(0);
      v18 = MEMORY[0x259C121B0](v16, v17);
      v20 = v19;

      (*(v11 + 8))(v10, v12);
      v21 = sub_2545F0FB4(v18, v20, &v32);

      *(v15 + 14) = v21;
      _os_log_impl(&dword_2545AB000, v7, v8, "entities(matching: %s returned %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C12CB0](v31, -1, -1);
      MEMORY[0x259C12CB0](v15, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v10, v12);
    }
  }

  else
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v22 = sub_2545FF0A4();
    __swift_project_value_buffer(v22, qword_27F60ADD8);
    sub_2545FE8E4();
    v23 = sub_2545FF084();
    v24 = sub_2545FF454();

    if (os_log_type_enabled(v23, v24))
    {
      v26 = v0[3];
      v25 = v0[4];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v32 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_2545F0FB4(v26, v25, &v32);
      _os_log_impl(&dword_2545AB000, v23, v24, "entities(matching: %s returned empty", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x259C12CB0](v28, -1, -1);
      MEMORY[0x259C12CB0](v27, -1, -1);
    }
  }

  (*(v0[8] + 32))(v0[2], v0[10], v0[7]);

  v29 = v0[1];

  return v29();
}

uint64_t sub_2545B9904()
{
  v18 = v0;
  if (qword_27F6063A0 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = sub_2545FF0A4();
  __swift_project_value_buffer(v2, qword_27F60ADD8);
  sub_2545FE8E4();
  v3 = v1;
  v4 = sub_2545FF084();
  v5 = sub_2545FF454();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[13];
    v8 = v0[3];
    v7 = v0[4];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_2545F0FB4(v8, v7, &v17);
    *(v9 + 12) = 2112;
    v12 = v6;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_2545AB000, v4, v5, "entities(matching: %s threw error %@", v9, 0x16u);
    sub_2545B612C(v10, &qword_27F606658, &qword_254600D70);
    MEMORY[0x259C12CB0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x259C12CB0](v11, -1, -1);
    MEMORY[0x259C12CB0](v9, -1, -1);
  }

  v14 = v0[13];
  type metadata accessor for HomeXLTileEntity(0);
  sub_2545D8728(&qword_281533060, type metadata accessor for HomeXLTileEntity, &protocol conformance descriptor for HomeXLTileEntity);
  sub_2545FE854();

  v15 = v0[1];

  return v15();
}

uint64_t sub_2545B9B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v6 = sub_2545FEF84();
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v7 = sub_2545FEE64();
  v5[21] = v7;
  v5[22] = *(v7 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6064D0, &unk_2546002B0);
  v5[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606688, &qword_254601E20);
  v5[26] = swift_task_alloc();
  v8 = sub_2545FED84();
  v5[27] = v8;
  v5[28] = *(v8 - 8);
  v5[29] = swift_task_alloc();
  v5[30] = type metadata accessor for TileElementInfo(0);
  v5[31] = swift_task_alloc();
  v9 = type metadata accessor for HomeXLTileEntity(0);
  v5[32] = v9;
  v5[33] = *(v9 - 8);
  v5[34] = swift_task_alloc();
  v10 = sub_2545FEA64();
  v5[35] = v10;
  v5[36] = *(v10 - 8);
  v5[37] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6067E0, &qword_254600CB8);
  v5[38] = v11;
  v5[39] = *(v11 - 8);
  v5[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606428, "$#");
  v5[41] = swift_task_alloc();
  v12 = sub_2545FEB64();
  v5[42] = v12;
  v5[43] = *(v12 - 8);
  v5[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606660, &qword_254600978);
  v5[45] = swift_task_alloc();
  v13 = type metadata accessor for HomeID(0);
  v5[46] = v13;
  v5[47] = *(v13 - 8);
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2545BA020, 0, 0);
}

uint64_t sub_2545BA020()
{
  v1 = v0[46];
  v2 = v0[47];
  v3 = v0[45];
  sub_2545B60C4(v0[15], v3, &qword_27F606660, &qword_254600978);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2545B612C(v0[45], &qword_27F606660, &qword_254600978);
    v4 = 1;
  }

  else
  {
    v5 = v0[50];
    v6 = v0[47];
    sub_2545D8770(v0[45], v5, type metadata accessor for HomeID);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6066C0, &qword_254600BB0);
    v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_2546008F0;
    sub_2545D8660(v5, v8 + v7, type metadata accessor for HomeID);
    v4 = sub_2545D7214(v8);
    swift_setDeallocating();
    sub_2545D86C8(v8 + v7, type metadata accessor for HomeID);
    swift_deallocClassInstance();
    sub_2545D86C8(v5, type metadata accessor for HomeID);
  }

  v0[51] = v4;
  sub_2545FECC4();
  if (sub_2545FECA4() == 7)
  {
    v9 = swift_task_alloc();
    v0[52] = v9;
    *v9 = v0;
    v9[1] = sub_2545BA2F0;
    v10 = v0[16];

    return sub_2545C90B8(v4, 0, v10);
  }

  else
  {
    v0[55] = sub_2545FEBD4();
    v0[56] = sub_2545FECE4();
    v0[57] = sub_2545FECD4();
    v0[58] = sub_2545D8728(&qword_27F6064D8, MEMORY[0x277D15960], MEMORY[0x277D15968]);
    v13 = sub_2545FF334();

    return MEMORY[0x2822009F8](sub_2545BB274, v13, v12);
  }
}

uint64_t sub_2545BA2F0(unint64_t a1)
{
  v3 = *v2;
  v3[53] = a1;
  v3[54] = v1;

  if (v1)
  {
    v4 = sub_2545BB128;
  }

  else
  {
    sub_2545CE4A8(v3[51]);
    v4 = sub_2545BA40C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t *sub_2545BA40C()
{
  v90 = v0;
  v1 = v0[53];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[33];
    v4 = v0[30];
    v5 = v0[14];
    v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v81 = *(v3 + 72);
    v82 = v0[32];
    sub_2545FE8E4();
    v7 = MEMORY[0x277D84F98];
    v77 = v5;
    v78 = v4;
    while (1)
    {
      v10 = v0[34];
      v11 = v0[31];
      sub_2545D8660(v6, v10, type metadata accessor for HomeXLTileEntity);
      sub_2545D8660(v10 + *(v82 + 24), v11, type metadata accessor for TileElementInfo);
      if (v5 && (v12 = v0[13], v13 = (v0[31] + v4[5]), v15 = *v13, v14 = v13[1], v0[7] = v15, v0[8] = v14, v0[9] = v12, v0[10] = v5, sub_2545D8470(), (sub_2545FF504() & 1) == 0))
      {
        v8 = v0[31];
        sub_2545D86C8(v0[34], type metadata accessor for HomeXLTileEntity);
        v9 = v8;
      }

      else
      {
        v16 = v0[31];
        if (*(v16 + v4[8]))
        {
          v17 = 0;
          v18 = 0;
          if (!*(v7 + 16))
          {
            goto LABEL_14;
          }
        }

        else
        {
          v26 = (v16 + v4[7]);
          v18 = v26[1];
          if (v18)
          {
            v17 = *v26;
            sub_2545FE8E4();
            if (!*(v7 + 16))
            {
              goto LABEL_14;
            }
          }

          else
          {
            v17 = 0;
            v18 = 1;
            if (!*(v7 + 16))
            {
LABEL_14:
              v80 = v16;
LABEL_16:
              v27 = v84[34];
              v85 = v17;
              v86 = v18;
              v87 = MEMORY[0x277D84F90];
              sub_2545D71E4(v17, v18);
              sub_2545C35DC(v27);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v89 = v7;
              sub_2545C810C(v17, v18, v87, v17, v18, isUniquelyReferenced_nonNull_native, &qword_27F606820, &unk_254600CF0);
              sub_2545D71F8(v17, v18);
              v0 = v84;
              sub_2545D86C8(v27, type metadata accessor for HomeXLTileEntity);
              sub_2545D86C8(v80, type metadata accessor for TileElementInfo);
              v5 = v77;
              v4 = v78;
              goto LABEL_5;
            }
          }
        }

        v19 = sub_2545C5718(v17, v18);
        v20 = v0[31];
        if ((v21 & 1) == 0)
        {
          v80 = v0[31];
          goto LABEL_16;
        }

        v79 = v0[34];
        v22 = (*(v7 + 56) + 24 * v19);
        v23 = v22[1];
        v24 = v22[2];
        v85 = *v22;
        v86 = v23;
        v87 = v24;
        sub_2545D71E4(v85, v23);
        sub_2545FE8E4();
        sub_2545C35DC(v79);
        v25 = swift_isUniquelyReferenced_nonNull_native();
        v89 = v7;
        v5 = v77;
        v4 = v78;
        v0 = v84;
        sub_2545C810C(v85, v86, v24, v17, v18, v25, &qword_27F606820, &unk_254600CF0);
        sub_2545D71F8(v17, v18);
        sub_2545D86C8(v79, type metadata accessor for HomeXLTileEntity);
        v9 = v20;
      }

      sub_2545D86C8(v9, type metadata accessor for TileElementInfo);
LABEL_5:
      v6 += v81;
      if (!--v2)
      {

        goto LABEL_21;
      }
    }
  }

  v7 = MEMORY[0x277D84F98];
LABEL_21:
  v29 = *(v7 + 16);
  if (v29 != 1)
  {
    if (!v29)
    {

      if (qword_27F6063A0 != -1)
      {
        swift_once();
      }

      v30 = sub_2545FF0A4();
      __swift_project_value_buffer(v30, qword_27F60ADD8);
      v31 = sub_2545FF084();
      v32 = sub_2545FF474();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v85 = v34;
        *v33 = 136315138;
        *(v33 + 4) = sub_2545F0FB4(0xD000000000000029, 0x8000000254603B20, &v85);
        _os_log_impl(&dword_2545AB000, v31, v32, "%s No accessories found, returning empty collection", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x259C12CB0](v34, -1, -1);
        MEMORY[0x259C12CB0](v33, -1, -1);
      }

      sub_2545D8728(&qword_281533060, type metadata accessor for HomeXLTileEntity, &protocol conformance descriptor for HomeXLTileEntity);
      sub_2545FE854();
      goto LABEL_55;
    }

    v47 = *(v7 + 16);
    if (v47)
    {
      v48 = sub_2545C4D14(*(v7 + 16), 0, &qword_27F606818, &qword_254600CE8);
      v49 = sub_2545C8E7C(&v85, v48 + 4, v47, v7);
      v50 = v85;
      v51 = v88;
      swift_bridgeObjectRetain_n();
      sub_2545D720C(v50);
      if (v49 != v47)
      {
        __break(1u);
        goto LABEL_59;
      }
    }

    else
    {
      sub_2545FE8E4();
      v48 = MEMORY[0x277D84F90];
    }

    v42 = v0[54];
    v89 = v48;
    sub_2545C5944(&v89, sub_2545C8D0C, &qword_27F606810, &qword_254600CE0);
    if (v42)
    {
      goto LABEL_40;
    }

    v55 = v89[2];
    if (v55)
    {
      v56 = v0;
      v83 = v0[39];
      v57 = v89 + 6;
      v51 = MEMORY[0x277D84F90];
      do
      {
        v58 = v51;
        v59 = v56[37];
        v60 = v56[32];
        v61 = *(v57 - 2);
        v62 = *(v57 - 1);
        v63 = *v57;
        sub_2545D71E4(v61, v62);
        sub_2545FE8E4();
        sub_2545C4014(v61, v62);
        v64 = sub_2545D74D4(v63);
        v65 = sub_2545D8728(&qword_281533060, type metadata accessor for HomeXLTileEntity, &protocol conformance descriptor for HomeXLTileEntity);
        v66 = v59;
        v51 = v58;
        MEMORY[0x259C116E0](v66, v64, v60, v65);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_2545C4B2C(0, v58[2] + 1, 1, v58, &qword_27F6067F8, &qword_254600CC8, &qword_27F6067E0, &qword_254600CB8);
        }

        v68 = v51[2];
        v67 = v51[3];
        if (v68 >= v67 >> 1)
        {
          v51 = sub_2545C4B2C((v67 > 1), v68 + 1, 1, v51, &qword_27F6067F8, &qword_254600CC8, &qword_27F6067E0, &qword_254600CB8);
        }

        v56 = v84;
        v69 = v84[40];
        v70 = v84[38];
        v51[2] = v68 + 1;
        (*(v83 + 32))(v51 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v68, v69, v70);
        sub_2545D71F8(v61, v62);

        v57 += 3;
        --v55;
      }

      while (v55);
    }

    else
    {
      v51 = MEMORY[0x277D84F90];
    }

    sub_2545FEA14();
    if (qword_27F6063A0 == -1)
    {
LABEL_52:
      v71 = sub_2545FF0A4();
      __swift_project_value_buffer(v71, qword_27F60ADD8);
      v72 = sub_2545FF084();
      v73 = sub_2545FF474();
      v0 = v84;
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v85 = v75;
        *v74 = 136315394;
        *(v74 + 4) = sub_2545F0FB4(0xD000000000000029, 0x8000000254603B20, &v85);
        *(v74 + 12) = 2048;
        *(v74 + 14) = v51[2];
        _os_log_impl(&dword_2545AB000, v72, v73, "%s Multiple sections generated: %ld", v74, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v75);
        MEMORY[0x259C12CB0](v75, -1, -1);
        MEMORY[0x259C12CB0](v74, -1, -1);
      }

      (*(v84[36] + 56))(v84[41], 1, 1, v84[35]);
      sub_2545D8728(&qword_281533060, type metadata accessor for HomeXLTileEntity, &protocol conformance descriptor for HomeXLTileEntity);
      sub_2545FE834();
      goto LABEL_55;
    }

LABEL_59:
    swift_once();
    goto LABEL_52;
  }

  if (qword_27F6063A0 != -1)
  {
    swift_once();
  }

  v35 = sub_2545FF0A4();
  __swift_project_value_buffer(v35, qword_27F60ADD8);
  v36 = sub_2545FF084();
  v37 = sub_2545FF474();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v85 = v39;
    *v38 = 136315138;
    *(v38 + 4) = sub_2545F0FB4(0xD000000000000029, 0x8000000254603B20, &v85);
    _os_log_impl(&dword_2545AB000, v36, v37, "%s Only 1 group of accessories built. Returning as flat list.", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x259C12CB0](v39, -1, -1);
    MEMORY[0x259C12CB0](v38, -1, -1);
  }

  result = sub_2545C33E8(v7, (v0 + 2));
  v41 = v0[6];
  if (!v41)
  {
    __break(1u);
    return result;
  }

  v42 = v0[54];
  v44 = v0[4];
  v43 = v0[5];
  v46 = v0[2];
  v45 = v0[3];

  sub_2545D71F8(v46, v45);
  sub_2545D71F8(v44, v43);
  v85 = v41;
  sub_2545FE8E4();
  sub_2545C5880(&v85, type metadata accessor for HomeXLTileEntity, sub_2545C8CC0, sub_2545D881C);
  if (v42)
  {
LABEL_40:

    return sub_2545FEA14();
  }

  v52 = v0[41];
  v54 = v0[35];
  v53 = v0[36];

  (*(v53 + 56))(v52, 1, 1, v54);
  sub_2545D8728(&qword_281533058, type metadata accessor for HomeXLTileEntity, &protocol conformance descriptor for HomeXLTileEntity);
  sub_2545D8728(&qword_281533060, type metadata accessor for HomeXLTileEntity, &protocol conformance descriptor for HomeXLTileEntity);
  sub_2545FE824();
LABEL_55:

  v76 = v0[1];

  return v76();
}

uint64_t sub_2545BB128()
{
  sub_2545CE4A8(*(v0 + 408));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2545BB274()
{
  sub_2545FEA14();
  v0[59] = sub_2545FEBC4();
  v1 = swift_task_alloc();
  v0[60] = v1;
  *v1 = v0;
  v1[1] = sub_2545BB320;
  v2 = v0[51];

  return sub_2545DD5C0(v2);
}

uint64_t sub_2545BB320(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 488) = a1;
  *(v4 + 496) = v1;

  v5 = *(v3 + 408);
  if (v1)
  {
    sub_2545FEA14();
    sub_2545CE4A8(v5);
    v6 = sub_2545BB7D8;
  }

  else
  {
    sub_2545CE4A8(v5);
    sub_2545FEA14();
    v6 = sub_2545BB48C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2545BB48C()
{
  v12 = v0;
  v1 = v0[61];
  if (*(v1 + 16))
  {
    (*(v0[43] + 16))(v0[44], v1 + ((*(v0[43] + 80) + 32) & ~*(v0[43] + 80)), v0[42]);

    v0[63] = sub_2545FECD4();
    v3 = sub_2545FF334();

    return MEMORY[0x2822009F8](sub_2545BB91C, v3, v2);
  }

  else
  {

    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v4 = sub_2545FF0A4();
    __swift_project_value_buffer(v4, qword_27F60ADD8);
    v5 = sub_2545FF084();
    v6 = sub_2545FF454();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v11 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_2545F0FB4(0xD000000000000029, 0x8000000254603B20, &v11);
      _os_log_impl(&dword_2545AB000, v5, v6, "%s No homes loaded", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x259C12CB0](v8, -1, -1);
      MEMORY[0x259C12CB0](v7, -1, -1);
    }

    sub_2545D8728(&qword_281533060, type metadata accessor for HomeXLTileEntity, &protocol conformance descriptor for HomeXLTileEntity);
    sub_2545FE854();

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_2545BB7D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2545BB91C()
{
  sub_2545FEA14();
  *(v0 + 512) = sub_2545FEBC4();

  return MEMORY[0x2822009F8](sub_2545BB990, 0, 0);
}

uint64_t sub_2545BB990(uint64_t a1)
{
  sub_2545FEB34();
  v1[65] = sub_2545FECD4();
  v3 = sub_2545FF334();
  v1[66] = v3;
  v1[67] = v2;

  return MEMORY[0x2822009F8](sub_2545BBA34, v3, v2);
}

uint64_t sub_2545BBA34()
{
  v1 = v0[49];
  v2 = v0[25];
  v3 = v0[26];
  v4 = sub_2545FEB04();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v2, v1, v4);
  (*(v5 + 56))(v2, 0, 1, v4);
  v6 = sub_2545FECF4();
  sub_2545C3148(v2, v6, v7, v8, v9, v3);

  sub_2545B612C(v2, &qword_27F6064D0, &unk_2546002B0);
  v10 = swift_task_alloc();
  v0[68] = v10;
  *v10 = v0;
  v10[1] = sub_2545BBBC8;
  v11 = v0[29];
  v12 = v0[26];
  v13 = MEMORY[0x277D159D8];
  v14 = MEMORY[0x277D159D0];

  return MEMORY[0x28216E6A8](v11, v12, v13, v14);
}

uint64_t sub_2545BBBC8()
{
  v2 = *v1;
  *(*v1 + 552) = v0;

  v3 = *(v2 + 536);
  v4 = *(v2 + 528);
  if (v0)
  {
    v5 = sub_2545BC8B8;
  }

  else
  {
    v5 = sub_2545BBD04;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2545BBD04()
{
  v1 = *(v0 + 392);
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545D86C8(v1, type metadata accessor for HomeID);

  return MEMORY[0x2822009F8](sub_2545BBD98, 0, 0);
}

uint64_t sub_2545BBD98(uint64_t a1)
{
  *(v1 + 560) = sub_2545FECD4();
  v3 = sub_2545FF334();

  return MEMORY[0x2822009F8](sub_2545BBE2C, v3, v2);
}

uint64_t sub_2545BBE2C()
{
  sub_2545FEA14();
  *(v0 + 568) = sub_2545FEBC4();

  return MEMORY[0x2822009F8](sub_2545BBEA0, 0, 0);
}

uint64_t sub_2545BBEA0(uint64_t a1)
{
  sub_2545FEB34();
  *(v1 + 576) = sub_2545FECD4();
  v2 = swift_task_alloc();
  *(v1 + 584) = v2;
  *v2 = v1;
  v2[1] = sub_2545BBF50;

  return MEMORY[0x28216E6C0]();
}

uint64_t sub_2545BBF50(uint64_t a1)
{
  *(*v1 + 592) = a1;

  sub_2545FEF44();
  sub_2545D8728(&qword_27F606698, MEMORY[0x277D16AF0], MEMORY[0x277D16AF8]);
  v3 = sub_2545FF334();

  return MEMORY[0x2822009F8](sub_2545BC0A8, v3, v2);
}

uint64_t sub_2545BC0A8()
{
  v0[75] = sub_2545FEF24();
  sub_2545FEA14();
  v2 = sub_2545FF334();
  v0[76] = v2;
  v0[77] = v1;

  return MEMORY[0x2822009F8](sub_2545BC150, v2, v1);
}

uint64_t sub_2545BC150()
{
  v0[11] = v0[75];
  sub_2545FF354();
  v0[78] = sub_2545FF344();
  v2 = sub_2545FF334();

  return MEMORY[0x2822009F8](sub_2545BC1EC, v2, v1);
}

uint64_t sub_2545BC1EC()
{
  sub_2545FEA14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6066A0, &qword_254600BA0);
  sub_2545B4F2C(&qword_27F6066A8, &qword_27F6066A0, &qword_254600BA0, MEMORY[0x277D83988]);
  v0[79] = sub_2545FF3E4();
  v1 = v0[77];
  v2 = v0[76];

  return MEMORY[0x2822009F8](sub_2545BC2B8, v2, v1);
}

uint64_t sub_2545BC2B8()
{
  v1 = *(v0 + 384);
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545D86C8(v1, type metadata accessor for HomeID);

  return MEMORY[0x2822009F8](sub_2545BC360, 0, 0);
}

unint64_t sub_2545BC360()
{
  result = v0[79];
  v43 = *(result + 16);
  if (!v43)
  {
LABEL_15:
    v37 = v0[43];
    v38 = v0[42];
    v27 = v0[29];
    v40 = v0[28];
    v42 = v0[44];
    v44 = v0[27];
    v28 = v0[20];
    v30 = v0[17];
    v29 = v0[18];

    sub_2545FED24();

    sub_2545FEF54();
    v31 = sub_2545C428C(v28);
    (*(v29 + 8))(v28, v30);
    *(swift_allocObject() + 16) = v31;
    *(swift_task_alloc() + 16) = v27;
    sub_2545D8728(&qword_281533060, type metadata accessor for HomeXLTileEntity, &protocol conformance descriptor for HomeXLTileEntity);
    sub_2545D8728(&qword_27F6067E8, type metadata accessor for HomeXLTileEntity, &protocol conformance descriptor for HomeXLTileEntity);
    sub_2545FE844();
    sub_2545FEA14();

    (*(v37 + 8))(v42, v38);
    (*(v40 + 8))(v27, v44);

    v32 = v0[1];

    return v32();
  }

  v2 = 0;
  v3 = v0[22];
  v39 = result + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v41 = v3;
  v36 = (v3 + 8);
  v33 = (v3 + 40);
  v34 = (v3 + 32);
  v4 = MEMORY[0x277D84F98];
  v35 = v0[79];
  while (1)
  {
    if (v2 >= *(result + 16))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v6 = v0[23];
    v5 = v0[24];
    v7 = v0;
    v8 = v0[21];
    v9 = *(v41 + 72);
    v10 = *(v41 + 16);
    v10(v5, v39 + v9 * v2, v8);
    v11 = sub_2545FEE54();
    v10(v6, v5, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v4;
    result = sub_2545C56D4(v11);
    v14 = v4[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      goto LABEL_22;
    }

    v18 = v13;
    v19 = v9;
    if (v4[3] < v17)
    {
      break;
    }

    v0 = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v26 = result;
      sub_2545C8780();
      result = v26;
      v4 = v45;
    }

LABEL_12:
    v21 = v0[23];
    v22 = v0[24];
    v23 = v0[21];
    if (v18)
    {
      (*v33)(v4[7] + result * v19, v21, v0[21]);
      (*v36)(v22, v23);
    }

    else
    {
      v4[(result >> 6) + 8] |= 1 << result;
      *(v4[6] + 8 * result) = v11;
      (*v34)(v4[7] + result * v19, v21, v23);
      result = (*v36)(v22, v23);
      v24 = v4[2];
      v16 = __OFADD__(v24, 1);
      v25 = v24 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v4[2] = v25;
    }

    ++v2;
    result = v35;
    if (v43 == v2)
    {
      goto LABEL_15;
    }
  }

  sub_2545C7AB4(v17, isUniquelyReferenced_nonNull_native);
  result = sub_2545C56D4(v11);
  if ((v18 & 1) == (v20 & 1))
  {
    v0 = v7;
    goto LABEL_12;
  }

  return sub_2545FF7D4();
}

uint64_t sub_2545BC8B8()
{
  v1 = *(v0 + 392);
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545D86C8(v1, type metadata accessor for HomeID);

  return MEMORY[0x2822009F8](sub_2545BC94C, 0, 0);
}

uint64_t sub_2545BC94C()
{
  (*(v0[43] + 8))(v0[44], v0[42]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2545BCAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v6 = sub_2545FEF84();
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v7 = sub_2545FEE64();
  v5[21] = v7;
  v5[22] = *(v7 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6064D0, &unk_2546002B0);
  v5[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606688, &qword_254601E20);
  v5[26] = swift_task_alloc();
  v8 = sub_2545FED84();
  v5[27] = v8;
  v5[28] = *(v8 - 8);
  v5[29] = swift_task_alloc();
  v5[30] = type metadata accessor for TileElementInfo(0);
  v5[31] = swift_task_alloc();
  v9 = type metadata accessor for ToggleControlEntity(0);
  v5[32] = v9;
  v5[33] = *(v9 - 8);
  v5[34] = swift_task_alloc();
  v10 = sub_2545FEA64();
  v5[35] = v10;
  v5[36] = *(v10 - 8);
  v5[37] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606790, &qword_254600C68);
  v5[38] = v11;
  v5[39] = *(v11 - 8);
  v5[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606428, "$#");
  v5[41] = swift_task_alloc();
  v12 = sub_2545FEB64();
  v5[42] = v12;
  v5[43] = *(v12 - 8);
  v5[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606660, &qword_254600978);
  v5[45] = swift_task_alloc();
  v13 = type metadata accessor for HomeID(0);
  v5[46] = v13;
  v5[47] = *(v13 - 8);
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2545BCF40, 0, 0);
}

uint64_t sub_2545BCF40()
{
  v1 = v0[46];
  v2 = v0[47];
  v3 = v0[45];
  sub_2545B60C4(v0[15], v3, &qword_27F606660, &qword_254600978);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2545B612C(v0[45], &qword_27F606660, &qword_254600978);
    v4 = 1;
  }

  else
  {
    v5 = v0[50];
    v6 = v0[47];
    sub_2545D8770(v0[45], v5, type metadata accessor for HomeID);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6066C0, &qword_254600BB0);
    v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_2546008F0;
    sub_2545D8660(v5, v8 + v7, type metadata accessor for HomeID);
    v4 = sub_2545D7214(v8);
    swift_setDeallocating();
    sub_2545D86C8(v8 + v7, type metadata accessor for HomeID);
    swift_deallocClassInstance();
    sub_2545D86C8(v5, type metadata accessor for HomeID);
  }

  v0[51] = v4;
  sub_2545FECC4();
  if (sub_2545FECA4() == 7)
  {
    v9 = swift_task_alloc();
    v0[52] = v9;
    *v9 = v0;
    v9[1] = sub_2545BD210;
    v10 = v0[16];

    return sub_2545CE4F0(v4, 0, v10);
  }

  else
  {
    v0[55] = sub_2545FEBD4();
    v0[56] = sub_2545FECE4();
    v0[57] = sub_2545FECD4();
    v0[58] = sub_2545D8728(&qword_27F6064D8, MEMORY[0x277D15960], MEMORY[0x277D15968]);
    v13 = sub_2545FF334();

    return MEMORY[0x2822009F8](sub_2545BE048, v13, v12);
  }
}

uint64_t sub_2545BD210(unint64_t a1)
{
  v3 = *v2;
  v3[53] = a1;
  v3[54] = v1;

  if (v1)
  {
    v4 = sub_2545D8864;
  }

  else
  {
    sub_2545CE4A8(v3[51]);
    v4 = sub_2545BD32C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t *sub_2545BD32C()
{
  v90 = v0;
  v1 = v0[53];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[33];
    v4 = v0[30];
    v5 = v0[14];
    v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v81 = *(v3 + 72);
    v82 = v0[32];
    sub_2545FE8E4();
    v7 = MEMORY[0x277D84F98];
    v77 = v5;
    v78 = v4;
    while (1)
    {
      v10 = v0[34];
      v11 = v0[31];
      sub_2545D8660(v6, v10, type metadata accessor for ToggleControlEntity);
      sub_2545D8660(v10 + *(v82 + 24), v11, type metadata accessor for TileElementInfo);
      if (v5 && (v12 = v0[13], v13 = (v0[31] + v4[5]), v15 = *v13, v14 = v13[1], v0[7] = v15, v0[8] = v14, v0[9] = v12, v0[10] = v5, sub_2545D8470(), (sub_2545FF504() & 1) == 0))
      {
        v8 = v0[31];
        sub_2545D86C8(v0[34], type metadata accessor for ToggleControlEntity);
        v9 = v8;
      }

      else
      {
        v16 = v0[31];
        if (*(v16 + v4[8]))
        {
          v17 = 0;
          v18 = 0;
          if (!*(v7 + 16))
          {
            goto LABEL_14;
          }
        }

        else
        {
          v26 = (v16 + v4[7]);
          v18 = v26[1];
          if (v18)
          {
            v17 = *v26;
            sub_2545FE8E4();
            if (!*(v7 + 16))
            {
              goto LABEL_14;
            }
          }

          else
          {
            v17 = 0;
            v18 = 1;
            if (!*(v7 + 16))
            {
LABEL_14:
              v80 = v16;
LABEL_16:
              v27 = v84[34];
              v85 = v17;
              v86 = v18;
              v87 = MEMORY[0x277D84F90];
              sub_2545D71E4(v17, v18);
              sub_2545C3944(v27);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v89 = v7;
              sub_2545C810C(v17, v18, v87, v17, v18, isUniquelyReferenced_nonNull_native, &qword_27F6067D0, &qword_254600CA8);
              sub_2545D71F8(v17, v18);
              v0 = v84;
              sub_2545D86C8(v27, type metadata accessor for ToggleControlEntity);
              sub_2545D86C8(v80, type metadata accessor for TileElementInfo);
              v5 = v77;
              v4 = v78;
              goto LABEL_5;
            }
          }
        }

        v19 = sub_2545C5718(v17, v18);
        v20 = v0[31];
        if ((v21 & 1) == 0)
        {
          v80 = v0[31];
          goto LABEL_16;
        }

        v79 = v0[34];
        v22 = (*(v7 + 56) + 24 * v19);
        v23 = v22[1];
        v24 = v22[2];
        v85 = *v22;
        v86 = v23;
        v87 = v24;
        sub_2545D71E4(v85, v23);
        sub_2545FE8E4();
        sub_2545C3944(v79);
        v25 = swift_isUniquelyReferenced_nonNull_native();
        v89 = v7;
        v5 = v77;
        v4 = v78;
        v0 = v84;
        sub_2545C810C(v85, v86, v24, v17, v18, v25, &qword_27F6067D0, &qword_254600CA8);
        sub_2545D71F8(v17, v18);
        sub_2545D86C8(v79, type metadata accessor for ToggleControlEntity);
        v9 = v20;
      }

      sub_2545D86C8(v9, type metadata accessor for TileElementInfo);
LABEL_5:
      v6 += v81;
      if (!--v2)
      {

        goto LABEL_21;
      }
    }
  }

  v7 = MEMORY[0x277D84F98];
LABEL_21:
  v29 = *(v7 + 16);
  if (v29 != 1)
  {
    if (!v29)
    {

      if (qword_27F6063A0 != -1)
      {
        swift_once();
      }

      v30 = sub_2545FF0A4();
      __swift_project_value_buffer(v30, qword_27F60ADD8);
      v31 = sub_2545FF084();
      v32 = sub_2545FF474();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v85 = v34;
        *v33 = 136315138;
        *(v33 + 4) = sub_2545F0FB4(0xD000000000000029, 0x8000000254603B20, &v85);
        _os_log_impl(&dword_2545AB000, v31, v32, "%s No accessories found, returning empty collection", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x259C12CB0](v34, -1, -1);
        MEMORY[0x259C12CB0](v33, -1, -1);
      }

      sub_2545D8728(&qword_27F606480, type metadata accessor for ToggleControlEntity, &protocol conformance descriptor for ToggleControlEntity);
      sub_2545FE854();
      goto LABEL_55;
    }

    v47 = *(v7 + 16);
    if (v47)
    {
      v48 = sub_2545C4D14(*(v7 + 16), 0, &qword_27F6067C8, &qword_254600CA0);
      v49 = sub_2545C8E7C(&v85, v48 + 4, v47, v7);
      v50 = v85;
      v51 = v88;
      swift_bridgeObjectRetain_n();
      sub_2545D720C(v50);
      if (v49 != v47)
      {
        __break(1u);
        goto LABEL_59;
      }
    }

    else
    {
      sub_2545FE8E4();
      v48 = MEMORY[0x277D84F90];
    }

    v42 = v0[54];
    v89 = v48;
    sub_2545C5944(&v89, sub_2545C8DA0, &qword_27F6067C0, &qword_254600C98);
    if (v42)
    {
      goto LABEL_40;
    }

    v55 = v89[2];
    if (v55)
    {
      v56 = v0;
      v83 = v0[39];
      v57 = v89 + 6;
      v51 = MEMORY[0x277D84F90];
      do
      {
        v58 = v51;
        v59 = v56[37];
        v60 = v56[32];
        v61 = *(v57 - 2);
        v62 = *(v57 - 1);
        v63 = *v57;
        sub_2545D71E4(v61, v62);
        sub_2545FE8E4();
        sub_2545C4014(v61, v62);
        v64 = sub_2545D7A08(v63);
        v65 = sub_2545D8728(&qword_27F606480, type metadata accessor for ToggleControlEntity, &protocol conformance descriptor for ToggleControlEntity);
        v66 = v59;
        v51 = v58;
        MEMORY[0x259C116E0](v66, v64, v60, v65);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_2545C4B2C(0, v58[2] + 1, 1, v58, &qword_27F6067A8, &qword_254600C80, &qword_27F606790, &qword_254600C68);
        }

        v68 = v51[2];
        v67 = v51[3];
        if (v68 >= v67 >> 1)
        {
          v51 = sub_2545C4B2C((v67 > 1), v68 + 1, 1, v51, &qword_27F6067A8, &qword_254600C80, &qword_27F606790, &qword_254600C68);
        }

        v56 = v84;
        v69 = v84[40];
        v70 = v84[38];
        v51[2] = v68 + 1;
        (*(v83 + 32))(v51 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v68, v69, v70);
        sub_2545D71F8(v61, v62);

        v57 += 3;
        --v55;
      }

      while (v55);
    }

    else
    {
      v51 = MEMORY[0x277D84F90];
    }

    sub_2545FEA14();
    if (qword_27F6063A0 == -1)
    {
LABEL_52:
      v71 = sub_2545FF0A4();
      __swift_project_value_buffer(v71, qword_27F60ADD8);
      v72 = sub_2545FF084();
      v73 = sub_2545FF474();
      v0 = v84;
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v85 = v75;
        *v74 = 136315394;
        *(v74 + 4) = sub_2545F0FB4(0xD000000000000029, 0x8000000254603B20, &v85);
        *(v74 + 12) = 2048;
        *(v74 + 14) = v51[2];
        _os_log_impl(&dword_2545AB000, v72, v73, "%s Multiple sections generated: %ld", v74, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v75);
        MEMORY[0x259C12CB0](v75, -1, -1);
        MEMORY[0x259C12CB0](v74, -1, -1);
      }

      (*(v84[36] + 56))(v84[41], 1, 1, v84[35]);
      sub_2545D8728(&qword_27F606480, type metadata accessor for ToggleControlEntity, &protocol conformance descriptor for ToggleControlEntity);
      sub_2545FE834();
      goto LABEL_55;
    }

LABEL_59:
    swift_once();
    goto LABEL_52;
  }

  if (qword_27F6063A0 != -1)
  {
    swift_once();
  }

  v35 = sub_2545FF0A4();
  __swift_project_value_buffer(v35, qword_27F60ADD8);
  v36 = sub_2545FF084();
  v37 = sub_2545FF474();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v85 = v39;
    *v38 = 136315138;
    *(v38 + 4) = sub_2545F0FB4(0xD000000000000029, 0x8000000254603B20, &v85);
    _os_log_impl(&dword_2545AB000, v36, v37, "%s Only 1 group of accessories built. Returning as flat list.", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x259C12CB0](v39, -1, -1);
    MEMORY[0x259C12CB0](v38, -1, -1);
  }

  result = sub_2545C33E8(v7, (v0 + 2));
  v41 = v0[6];
  if (!v41)
  {
    __break(1u);
    return result;
  }

  v42 = v0[54];
  v44 = v0[4];
  v43 = v0[5];
  v46 = v0[2];
  v45 = v0[3];

  sub_2545D71F8(v46, v45);
  sub_2545D71F8(v44, v43);
  v85 = v41;
  sub_2545FE8E4();
  sub_2545C5880(&v85, type metadata accessor for ToggleControlEntity, sub_2545C8D54, sub_2545D8834);
  if (v42)
  {
LABEL_40:

    return sub_2545FEA14();
  }

  v52 = v0[41];
  v54 = v0[35];
  v53 = v0[36];

  (*(v53 + 56))(v52, 1, 1, v54);
  sub_2545D8728(&qword_27F606440, type metadata accessor for ToggleControlEntity, &protocol conformance descriptor for ToggleControlEntity);
  sub_2545D8728(&qword_27F606480, type metadata accessor for ToggleControlEntity, &protocol conformance descriptor for ToggleControlEntity);
  sub_2545FE824();
LABEL_55:

  v76 = v0[1];

  return v76();
}

uint64_t sub_2545BE048()
{
  sub_2545FEA14();
  v0[59] = sub_2545FEBC4();
  v1 = swift_task_alloc();
  v0[60] = v1;
  *v1 = v0;
  v1[1] = sub_2545BE0F4;
  v2 = v0[51];

  return sub_2545DD5C0(v2);
}

uint64_t sub_2545BE0F4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 488) = a1;
  *(v4 + 496) = v1;

  v5 = *(v3 + 408);
  if (v1)
  {
    sub_2545FEA14();
    sub_2545CE4A8(v5);
    v6 = sub_2545D8810;
  }

  else
  {
    sub_2545CE4A8(v5);
    sub_2545FEA14();
    v6 = sub_2545BE260;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2545BE260()
{
  v12 = v0;
  v1 = v0[61];
  if (*(v1 + 16))
  {
    (*(v0[43] + 16))(v0[44], v1 + ((*(v0[43] + 80) + 32) & ~*(v0[43] + 80)), v0[42]);

    v0[63] = sub_2545FECD4();
    v3 = sub_2545FF334();

    return MEMORY[0x2822009F8](sub_2545BE5AC, v3, v2);
  }

  else
  {

    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v4 = sub_2545FF0A4();
    __swift_project_value_buffer(v4, qword_27F60ADD8);
    v5 = sub_2545FF084();
    v6 = sub_2545FF454();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v11 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_2545F0FB4(0xD000000000000029, 0x8000000254603B20, &v11);
      _os_log_impl(&dword_2545AB000, v5, v6, "%s No homes loaded", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x259C12CB0](v8, -1, -1);
      MEMORY[0x259C12CB0](v7, -1, -1);
    }

    sub_2545D8728(&qword_27F606480, type metadata accessor for ToggleControlEntity, &protocol conformance descriptor for ToggleControlEntity);
    sub_2545FE854();

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_2545BE5AC()
{
  sub_2545FEA14();
  *(v0 + 512) = sub_2545FEBC4();

  return MEMORY[0x2822009F8](sub_2545BE620, 0, 0);
}

uint64_t sub_2545BE620(uint64_t a1)
{
  sub_2545FEB34();
  v1[65] = sub_2545FECD4();
  v3 = sub_2545FF334();
  v1[66] = v3;
  v1[67] = v2;

  return MEMORY[0x2822009F8](sub_2545BE6C4, v3, v2);
}

uint64_t sub_2545BE6C4()
{
  v1 = v0[49];
  v2 = v0[25];
  v3 = v0[26];
  v4 = sub_2545FEB04();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v2, v1, v4);
  (*(v5 + 56))(v2, 0, 1, v4);
  v6 = sub_2545FECF4();
  sub_2545C3148(v2, v6, v7, v8, v9, v3);

  sub_2545B612C(v2, &qword_27F6064D0, &unk_2546002B0);
  v10 = swift_task_alloc();
  v0[68] = v10;
  *v10 = v0;
  v10[1] = sub_2545BE858;
  v11 = v0[29];
  v12 = v0[26];
  v13 = MEMORY[0x277D159D8];
  v14 = MEMORY[0x277D159D0];

  return MEMORY[0x28216E6A8](v11, v12, v13, v14);
}

uint64_t sub_2545BE858()
{
  v2 = *v1;
  *(*v1 + 552) = v0;

  v3 = *(v2 + 536);
  v4 = *(v2 + 528);
  if (v0)
  {
    v5 = sub_2545BF548;
  }

  else
  {
    v5 = sub_2545BE994;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2545BE994()
{
  v1 = *(v0 + 392);
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545D86C8(v1, type metadata accessor for HomeID);

  return MEMORY[0x2822009F8](sub_2545BEA28, 0, 0);
}

uint64_t sub_2545BEA28(uint64_t a1)
{
  *(v1 + 560) = sub_2545FECD4();
  v3 = sub_2545FF334();

  return MEMORY[0x2822009F8](sub_2545BEABC, v3, v2);
}

uint64_t sub_2545BEABC()
{
  sub_2545FEA14();
  *(v0 + 568) = sub_2545FEBC4();

  return MEMORY[0x2822009F8](sub_2545BEB30, 0, 0);
}

uint64_t sub_2545BEB30(uint64_t a1)
{
  sub_2545FEB34();
  *(v1 + 576) = sub_2545FECD4();
  v2 = swift_task_alloc();
  *(v1 + 584) = v2;
  *v2 = v1;
  v2[1] = sub_2545BEBE0;

  return MEMORY[0x28216E6C0]();
}

uint64_t sub_2545BEBE0(uint64_t a1)
{
  *(*v1 + 592) = a1;

  sub_2545FEF44();
  sub_2545D8728(&qword_27F606698, MEMORY[0x277D16AF0], MEMORY[0x277D16AF8]);
  v3 = sub_2545FF334();

  return MEMORY[0x2822009F8](sub_2545BED38, v3, v2);
}

uint64_t sub_2545BED38()
{
  v0[75] = sub_2545FEF24();
  sub_2545FEA14();
  v2 = sub_2545FF334();
  v0[76] = v2;
  v0[77] = v1;

  return MEMORY[0x2822009F8](sub_2545BEDE0, v2, v1);
}

uint64_t sub_2545BEDE0()
{
  v0[11] = v0[75];
  sub_2545FF354();
  v0[78] = sub_2545FF344();
  v2 = sub_2545FF334();

  return MEMORY[0x2822009F8](sub_2545BEE7C, v2, v1);
}

uint64_t sub_2545BEE7C()
{
  sub_2545FEA14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6066A0, &qword_254600BA0);
  sub_2545B4F2C(&qword_27F6066A8, &qword_27F6066A0, &qword_254600BA0, MEMORY[0x277D83988]);
  v0[79] = sub_2545FF3E4();
  v1 = v0[77];
  v2 = v0[76];

  return MEMORY[0x2822009F8](sub_2545BEF48, v2, v1);
}

uint64_t sub_2545BEF48()
{
  v1 = *(v0 + 384);
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545D86C8(v1, type metadata accessor for HomeID);

  return MEMORY[0x2822009F8](sub_2545BEFF0, 0, 0);
}

unint64_t sub_2545BEFF0()
{
  result = v0[79];
  v43 = *(result + 16);
  if (!v43)
  {
LABEL_15:
    v37 = v0[43];
    v38 = v0[42];
    v27 = v0[29];
    v40 = v0[28];
    v42 = v0[44];
    v44 = v0[27];
    v28 = v0[20];
    v30 = v0[17];
    v29 = v0[18];

    sub_2545FED24();

    sub_2545FEF54();
    v31 = sub_2545C428C(v28);
    (*(v29 + 8))(v28, v30);
    *(swift_allocObject() + 16) = v31;
    *(swift_task_alloc() + 16) = v27;
    sub_2545D8728(&qword_27F606480, type metadata accessor for ToggleControlEntity, &protocol conformance descriptor for ToggleControlEntity);
    sub_2545D8728(&qword_27F606798, type metadata accessor for ToggleControlEntity, &protocol conformance descriptor for ToggleControlEntity);
    sub_2545FE844();
    sub_2545FEA14();

    (*(v37 + 8))(v42, v38);
    (*(v40 + 8))(v27, v44);

    v32 = v0[1];

    return v32();
  }

  v2 = 0;
  v3 = v0[22];
  v39 = result + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v41 = v3;
  v36 = (v3 + 8);
  v33 = (v3 + 40);
  v34 = (v3 + 32);
  v4 = MEMORY[0x277D84F98];
  v35 = v0[79];
  while (1)
  {
    if (v2 >= *(result + 16))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v6 = v0[23];
    v5 = v0[24];
    v7 = v0;
    v8 = v0[21];
    v9 = *(v41 + 72);
    v10 = *(v41 + 16);
    v10(v5, v39 + v9 * v2, v8);
    v11 = sub_2545FEE54();
    v10(v6, v5, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v4;
    result = sub_2545C56D4(v11);
    v14 = v4[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      goto LABEL_22;
    }

    v18 = v13;
    v19 = v9;
    if (v4[3] < v17)
    {
      break;
    }

    v0 = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v26 = result;
      sub_2545C8780();
      result = v26;
      v4 = v45;
    }

LABEL_12:
    v21 = v0[23];
    v22 = v0[24];
    v23 = v0[21];
    if (v18)
    {
      (*v33)(v4[7] + result * v19, v21, v0[21]);
      (*v36)(v22, v23);
    }

    else
    {
      v4[(result >> 6) + 8] |= 1 << result;
      *(v4[6] + 8 * result) = v11;
      (*v34)(v4[7] + result * v19, v21, v23);
      result = (*v36)(v22, v23);
      v24 = v4[2];
      v16 = __OFADD__(v24, 1);
      v25 = v24 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v4[2] = v25;
    }

    ++v2;
    result = v35;
    if (v43 == v2)
    {
      goto LABEL_15;
    }
  }

  sub_2545C7AB4(v17, isUniquelyReferenced_nonNull_native);
  result = sub_2545C56D4(v11);
  if ((v18 & 1) == (v20 & 1))
  {
    v0 = v7;
    goto LABEL_12;
  }

  return sub_2545FF7D4();
}

uint64_t sub_2545BF548()
{
  v1 = *(v0 + 392);
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545D86C8(v1, type metadata accessor for HomeID);

  return MEMORY[0x2822009F8](sub_2545D8818, 0, 0);
}

uint64_t sub_2545BF5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v6 = sub_2545FEF84();
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v7 = sub_2545FEE64();
  v5[21] = v7;
  v5[22] = *(v7 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6064D0, &unk_2546002B0);
  v5[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606688, &qword_254601E20);
  v5[26] = swift_task_alloc();
  v8 = sub_2545FED84();
  v5[27] = v8;
  v5[28] = *(v8 - 8);
  v5[29] = swift_task_alloc();
  v5[30] = type metadata accessor for TileElementInfo(0);
  v5[31] = swift_task_alloc();
  v9 = type metadata accessor for HomeSingleTileEntity(0);
  v5[32] = v9;
  v5[33] = *(v9 - 8);
  v5[34] = swift_task_alloc();
  v10 = sub_2545FEA64();
  v5[35] = v10;
  v5[36] = *(v10 - 8);
  v5[37] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606690, &unk_254600B90);
  v5[38] = v11;
  v5[39] = *(v11 - 8);
  v5[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606428, "$#");
  v5[41] = swift_task_alloc();
  v12 = sub_2545FEB64();
  v5[42] = v12;
  v5[43] = *(v12 - 8);
  v5[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606660, &qword_254600978);
  v5[45] = swift_task_alloc();
  v13 = type metadata accessor for HomeID(0);
  v5[46] = v13;
  v5[47] = *(v13 - 8);
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2545BFA74, 0, 0);
}

uint64_t sub_2545BFA74()
{
  v1 = v0[46];
  v2 = v0[47];
  v3 = v0[45];
  sub_2545B60C4(v0[15], v3, &qword_27F606660, &qword_254600978);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2545B612C(v0[45], &qword_27F606660, &qword_254600978);
    v4 = 1;
  }

  else
  {
    v5 = v0[50];
    v6 = v0[47];
    sub_2545D8770(v0[45], v5, type metadata accessor for HomeID);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6066C0, &qword_254600BB0);
    v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_2546008F0;
    sub_2545D8660(v5, v8 + v7, type metadata accessor for HomeID);
    v4 = sub_2545D7214(v8);
    swift_setDeallocating();
    sub_2545D86C8(v8 + v7, type metadata accessor for HomeID);
    swift_deallocClassInstance();
    sub_2545D86C8(v5, type metadata accessor for HomeID);
  }

  v0[51] = v4;
  sub_2545FECC4();
  if (sub_2545FECA4() == 7)
  {
    v9 = swift_task_alloc();
    v0[52] = v9;
    *v9 = v0;
    v9[1] = sub_2545BFD44;
    v10 = v0[16];

    return sub_2545D2BB4(v4, 0, v10);
  }

  else
  {
    v0[55] = sub_2545FEBD4();
    v0[56] = sub_2545FECE4();
    v0[57] = sub_2545FECD4();
    v0[58] = sub_2545D8728(&qword_27F6064D8, MEMORY[0x277D15960], MEMORY[0x277D15968]);
    v13 = sub_2545FF334();

    return MEMORY[0x2822009F8](sub_2545C0B7C, v13, v12);
  }
}

uint64_t sub_2545BFD44(unint64_t a1)
{
  v3 = *v2;
  v3[53] = a1;
  v3[54] = v1;

  if (v1)
  {
    v4 = sub_2545D8864;
  }

  else
  {
    sub_2545CE4A8(v3[51]);
    v4 = sub_2545BFE60;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t *sub_2545BFE60()
{
  v90 = v0;
  v1 = v0[53];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[33];
    v4 = v0[30];
    v5 = v0[14];
    v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v81 = *(v3 + 72);
    v82 = v0[32];
    sub_2545FE8E4();
    v7 = MEMORY[0x277D84F98];
    v77 = v5;
    v78 = v4;
    while (1)
    {
      v10 = v0[34];
      v11 = v0[31];
      sub_2545D8660(v6, v10, type metadata accessor for HomeSingleTileEntity);
      sub_2545D8660(v10 + *(v82 + 24), v11, type metadata accessor for TileElementInfo);
      if (v5 && (v12 = v0[13], v13 = (v0[31] + v4[5]), v15 = *v13, v14 = v13[1], v0[7] = v15, v0[8] = v14, v0[9] = v12, v0[10] = v5, sub_2545D8470(), (sub_2545FF504() & 1) == 0))
      {
        v8 = v0[31];
        sub_2545D86C8(v0[34], type metadata accessor for HomeSingleTileEntity);
        v9 = v8;
      }

      else
      {
        v16 = v0[31];
        if (*(v16 + v4[8]))
        {
          v17 = 0;
          v18 = 0;
          if (!*(v7 + 16))
          {
            goto LABEL_14;
          }
        }

        else
        {
          v26 = (v16 + v4[7]);
          v18 = v26[1];
          if (v18)
          {
            v17 = *v26;
            sub_2545FE8E4();
            if (!*(v7 + 16))
            {
              goto LABEL_14;
            }
          }

          else
          {
            v17 = 0;
            v18 = 1;
            if (!*(v7 + 16))
            {
LABEL_14:
              v80 = v16;
LABEL_16:
              v27 = v84[34];
              v85 = v17;
              v86 = v18;
              v87 = MEMORY[0x277D84F90];
              sub_2545D71E4(v17, v18);
              sub_2545C3CAC(v27);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v89 = v7;
              sub_2545C810C(v17, v18, v87, v17, v18, isUniquelyReferenced_nonNull_native, &qword_27F606708, &qword_254600C00);
              sub_2545D71F8(v17, v18);
              v0 = v84;
              sub_2545D86C8(v27, type metadata accessor for HomeSingleTileEntity);
              sub_2545D86C8(v80, type metadata accessor for TileElementInfo);
              v5 = v77;
              v4 = v78;
              goto LABEL_5;
            }
          }
        }

        v19 = sub_2545C5718(v17, v18);
        v20 = v0[31];
        if ((v21 & 1) == 0)
        {
          v80 = v0[31];
          goto LABEL_16;
        }

        v79 = v0[34];
        v22 = (*(v7 + 56) + 24 * v19);
        v23 = v22[1];
        v24 = v22[2];
        v85 = *v22;
        v86 = v23;
        v87 = v24;
        sub_2545D71E4(v85, v23);
        sub_2545FE8E4();
        sub_2545C3CAC(v79);
        v25 = swift_isUniquelyReferenced_nonNull_native();
        v89 = v7;
        v5 = v77;
        v4 = v78;
        v0 = v84;
        sub_2545C810C(v85, v86, v24, v17, v18, v25, &qword_27F606708, &qword_254600C00);
        sub_2545D71F8(v17, v18);
        sub_2545D86C8(v79, type metadata accessor for HomeSingleTileEntity);
        v9 = v20;
      }

      sub_2545D86C8(v9, type metadata accessor for TileElementInfo);
LABEL_5:
      v6 += v81;
      if (!--v2)
      {

        goto LABEL_21;
      }
    }
  }

  v7 = MEMORY[0x277D84F98];
LABEL_21:
  v29 = *(v7 + 16);
  if (v29 != 1)
  {
    if (!v29)
    {

      if (qword_27F6063A0 != -1)
      {
        swift_once();
      }

      v30 = sub_2545FF0A4();
      __swift_project_value_buffer(v30, qword_27F60ADD8);
      v31 = sub_2545FF084();
      v32 = sub_2545FF474();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v85 = v34;
        *v33 = 136315138;
        *(v33 + 4) = sub_2545F0FB4(0xD000000000000029, 0x8000000254603B20, &v85);
        _os_log_impl(&dword_2545AB000, v31, v32, "%s No accessories found, returning empty collection", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x259C12CB0](v34, -1, -1);
        MEMORY[0x259C12CB0](v33, -1, -1);
      }

      sub_2545D8728(&qword_281532F88, type metadata accessor for HomeSingleTileEntity, &protocol conformance descriptor for HomeSingleTileEntity);
      sub_2545FE854();
      goto LABEL_55;
    }

    v47 = *(v7 + 16);
    if (v47)
    {
      v48 = sub_2545C4D14(*(v7 + 16), 0, &qword_27F606700, &qword_254600BF8);
      v49 = sub_2545C8E7C(&v85, v48 + 4, v47, v7);
      v50 = v85;
      v51 = v88;
      swift_bridgeObjectRetain_n();
      sub_2545D720C(v50);
      if (v49 != v47)
      {
        __break(1u);
        goto LABEL_59;
      }
    }

    else
    {
      sub_2545FE8E4();
      v48 = MEMORY[0x277D84F90];
    }

    v42 = v0[54];
    v89 = v48;
    sub_2545C5944(&v89, sub_2545C8E34, &qword_27F6066F8, &qword_254600BF0);
    if (v42)
    {
      goto LABEL_40;
    }

    v55 = v89[2];
    if (v55)
    {
      v56 = v0;
      v83 = v0[39];
      v57 = v89 + 6;
      v51 = MEMORY[0x277D84F90];
      do
      {
        v58 = v51;
        v59 = v56[37];
        v60 = v56[32];
        v61 = *(v57 - 2);
        v62 = *(v57 - 1);
        v63 = *v57;
        sub_2545D71E4(v61, v62);
        sub_2545FE8E4();
        sub_2545C4014(v61, v62);
        v64 = sub_2545D7F3C(v63);
        v65 = sub_2545D8728(&qword_281532F88, type metadata accessor for HomeSingleTileEntity, &protocol conformance descriptor for HomeSingleTileEntity);
        v66 = v59;
        v51 = v58;
        MEMORY[0x259C116E0](v66, v64, v60, v65);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_2545C4B2C(0, v58[2] + 1, 1, v58, &qword_27F6066E0, &unk_254600BD0, &qword_27F606690, &unk_254600B90);
        }

        v68 = v51[2];
        v67 = v51[3];
        if (v68 >= v67 >> 1)
        {
          v51 = sub_2545C4B2C((v67 > 1), v68 + 1, 1, v51, &qword_27F6066E0, &unk_254600BD0, &qword_27F606690, &unk_254600B90);
        }

        v56 = v84;
        v69 = v84[40];
        v70 = v84[38];
        v51[2] = v68 + 1;
        (*(v83 + 32))(v51 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v68, v69, v70);
        sub_2545D71F8(v61, v62);

        v57 += 3;
        --v55;
      }

      while (v55);
    }

    else
    {
      v51 = MEMORY[0x277D84F90];
    }

    sub_2545FEA14();
    if (qword_27F6063A0 == -1)
    {
LABEL_52:
      v71 = sub_2545FF0A4();
      __swift_project_value_buffer(v71, qword_27F60ADD8);
      v72 = sub_2545FF084();
      v73 = sub_2545FF474();
      v0 = v84;
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v85 = v75;
        *v74 = 136315394;
        *(v74 + 4) = sub_2545F0FB4(0xD000000000000029, 0x8000000254603B20, &v85);
        *(v74 + 12) = 2048;
        *(v74 + 14) = v51[2];
        _os_log_impl(&dword_2545AB000, v72, v73, "%s Multiple sections generated: %ld", v74, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v75);
        MEMORY[0x259C12CB0](v75, -1, -1);
        MEMORY[0x259C12CB0](v74, -1, -1);
      }

      (*(v84[36] + 56))(v84[41], 1, 1, v84[35]);
      sub_2545D8728(&qword_281532F88, type metadata accessor for HomeSingleTileEntity, &protocol conformance descriptor for HomeSingleTileEntity);
      sub_2545FE834();
      goto LABEL_55;
    }

LABEL_59:
    swift_once();
    goto LABEL_52;
  }

  if (qword_27F6063A0 != -1)
  {
    swift_once();
  }

  v35 = sub_2545FF0A4();
  __swift_project_value_buffer(v35, qword_27F60ADD8);
  v36 = sub_2545FF084();
  v37 = sub_2545FF474();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v85 = v39;
    *v38 = 136315138;
    *(v38 + 4) = sub_2545F0FB4(0xD000000000000029, 0x8000000254603B20, &v85);
    _os_log_impl(&dword_2545AB000, v36, v37, "%s Only 1 group of accessories built. Returning as flat list.", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x259C12CB0](v39, -1, -1);
    MEMORY[0x259C12CB0](v38, -1, -1);
  }

  result = sub_2545C33E8(v7, (v0 + 2));
  v41 = v0[6];
  if (!v41)
  {
    __break(1u);
    return result;
  }

  v42 = v0[54];
  v44 = v0[4];
  v43 = v0[5];
  v46 = v0[2];
  v45 = v0[3];

  sub_2545D71F8(v46, v45);
  sub_2545D71F8(v44, v43);
  v85 = v41;
  sub_2545FE8E4();
  sub_2545C5880(&v85, type metadata accessor for HomeSingleTileEntity, sub_2545C8DE8, sub_2545D884C);
  if (v42)
  {
LABEL_40:

    return sub_2545FEA14();
  }

  v52 = v0[41];
  v54 = v0[35];
  v53 = v0[36];

  (*(v53 + 56))(v52, 1, 1, v54);
  sub_2545D8728(&qword_281532F80, type metadata accessor for HomeSingleTileEntity, &protocol conformance descriptor for HomeSingleTileEntity);
  sub_2545D8728(&qword_281532F88, type metadata accessor for HomeSingleTileEntity, &protocol conformance descriptor for HomeSingleTileEntity);
  sub_2545FE824();
LABEL_55:

  v76 = v0[1];

  return v76();
}

uint64_t sub_2545C0B7C()
{
  sub_2545FEA14();
  v0[59] = sub_2545FEBC4();
  v1 = swift_task_alloc();
  v0[60] = v1;
  *v1 = v0;
  v1[1] = sub_2545C0C28;
  v2 = v0[51];

  return sub_2545DD5C0(v2);
}

uint64_t sub_2545C0C28(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 488) = a1;
  *(v4 + 496) = v1;

  v5 = *(v3 + 408);
  if (v1)
  {
    sub_2545FEA14();
    sub_2545CE4A8(v5);
    v6 = sub_2545D8810;
  }

  else
  {
    sub_2545CE4A8(v5);
    sub_2545FEA14();
    v6 = sub_2545C0D94;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2545C0D94()
{
  v12 = v0;
  v1 = v0[61];
  if (*(v1 + 16))
  {
    (*(v0[43] + 16))(v0[44], v1 + ((*(v0[43] + 80) + 32) & ~*(v0[43] + 80)), v0[42]);

    v0[63] = sub_2545FECD4();
    v3 = sub_2545FF334();

    return MEMORY[0x2822009F8](sub_2545C10E0, v3, v2);
  }

  else
  {

    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v4 = sub_2545FF0A4();
    __swift_project_value_buffer(v4, qword_27F60ADD8);
    v5 = sub_2545FF084();
    v6 = sub_2545FF454();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v11 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_2545F0FB4(0xD000000000000029, 0x8000000254603B20, &v11);
      _os_log_impl(&dword_2545AB000, v5, v6, "%s No homes loaded", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x259C12CB0](v8, -1, -1);
      MEMORY[0x259C12CB0](v7, -1, -1);
    }

    sub_2545D8728(&qword_281532F88, type metadata accessor for HomeSingleTileEntity, &protocol conformance descriptor for HomeSingleTileEntity);
    sub_2545FE854();

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_2545C10E0()
{
  sub_2545FEA14();
  *(v0 + 512) = sub_2545FEBC4();

  return MEMORY[0x2822009F8](sub_2545C1154, 0, 0);
}

uint64_t sub_2545C1154(uint64_t a1)
{
  sub_2545FEB34();
  v1[65] = sub_2545FECD4();
  v3 = sub_2545FF334();
  v1[66] = v3;
  v1[67] = v2;

  return MEMORY[0x2822009F8](sub_2545C11F8, v3, v2);
}

uint64_t sub_2545C11F8()
{
  v1 = v0[49];
  v2 = v0[25];
  v3 = v0[26];
  v4 = sub_2545FEB04();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v2, v1, v4);
  (*(v5 + 56))(v2, 0, 1, v4);
  v6 = sub_2545FECF4();
  sub_2545C3148(v2, v6, v7, v8, v9, v3);

  sub_2545B612C(v2, &qword_27F6064D0, &unk_2546002B0);
  v10 = swift_task_alloc();
  v0[68] = v10;
  *v10 = v0;
  v10[1] = sub_2545C138C;
  v11 = v0[29];
  v12 = v0[26];
  v13 = MEMORY[0x277D159D8];
  v14 = MEMORY[0x277D159D0];

  return MEMORY[0x28216E6A8](v11, v12, v13, v14);
}

uint64_t sub_2545C138C()
{
  v2 = *v1;
  *(*v1 + 552) = v0;

  v3 = *(v2 + 536);
  v4 = *(v2 + 528);
  if (v0)
  {
    v5 = sub_2545BF548;
  }

  else
  {
    v5 = sub_2545C14C8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2545C14C8()
{
  v1 = *(v0 + 392);
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545D86C8(v1, type metadata accessor for HomeID);

  return MEMORY[0x2822009F8](sub_2545C155C, 0, 0);
}

uint64_t sub_2545C155C(uint64_t a1)
{
  *(v1 + 560) = sub_2545FECD4();
  v3 = sub_2545FF334();

  return MEMORY[0x2822009F8](sub_2545C15F0, v3, v2);
}

uint64_t sub_2545C15F0()
{
  sub_2545FEA14();
  *(v0 + 568) = sub_2545FEBC4();

  return MEMORY[0x2822009F8](sub_2545C1664, 0, 0);
}

uint64_t sub_2545C1664(uint64_t a1)
{
  sub_2545FEB34();
  *(v1 + 576) = sub_2545FECD4();
  v2 = swift_task_alloc();
  *(v1 + 584) = v2;
  *v2 = v1;
  v2[1] = sub_2545C1714;

  return MEMORY[0x28216E6C0]();
}

uint64_t sub_2545C1714(uint64_t a1)
{
  *(*v1 + 592) = a1;

  sub_2545FEF44();
  sub_2545D8728(&qword_27F606698, MEMORY[0x277D16AF0], MEMORY[0x277D16AF8]);
  v3 = sub_2545FF334();

  return MEMORY[0x2822009F8](sub_2545C186C, v3, v2);
}

uint64_t sub_2545C186C()
{
  v0[75] = sub_2545FEF24();
  sub_2545FEA14();
  v2 = sub_2545FF334();
  v0[76] = v2;
  v0[77] = v1;

  return MEMORY[0x2822009F8](sub_2545C1914, v2, v1);
}

uint64_t sub_2545C1914()
{
  v0[11] = v0[75];
  sub_2545FF354();
  v0[78] = sub_2545FF344();
  v2 = sub_2545FF334();

  return MEMORY[0x2822009F8](sub_2545C19B0, v2, v1);
}

uint64_t sub_2545C19B0()
{
  sub_2545FEA14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6066A0, &qword_254600BA0);
  sub_2545B4F2C(&qword_27F6066A8, &qword_27F6066A0, &qword_254600BA0, MEMORY[0x277D83988]);
  v0[79] = sub_2545FF3E4();
  v1 = v0[77];
  v2 = v0[76];

  return MEMORY[0x2822009F8](sub_2545C1A7C, v2, v1);
}

uint64_t sub_2545C1A7C()
{
  v1 = *(v0 + 384);
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545D86C8(v1, type metadata accessor for HomeID);

  return MEMORY[0x2822009F8](sub_2545C1B24, 0, 0);
}

unint64_t sub_2545C1B24()
{
  result = v0[79];
  v43 = *(result + 16);
  if (!v43)
  {
LABEL_15:
    v37 = v0[43];
    v38 = v0[42];
    v27 = v0[29];
    v40 = v0[28];
    v42 = v0[44];
    v44 = v0[27];
    v28 = v0[20];
    v30 = v0[17];
    v29 = v0[18];

    sub_2545FED24();

    sub_2545FEF54();
    v31 = sub_2545C428C(v28);
    (*(v29 + 8))(v28, v30);
    *(swift_allocObject() + 16) = v31;
    *(swift_task_alloc() + 16) = v27;
    sub_2545D8728(&qword_281532F88, type metadata accessor for HomeSingleTileEntity, &protocol conformance descriptor for HomeSingleTileEntity);
    sub_2545D8728(&qword_27F6066B0, type metadata accessor for HomeSingleTileEntity, &protocol conformance descriptor for HomeSingleTileEntity);
    sub_2545FE844();
    sub_2545FEA14();

    (*(v37 + 8))(v42, v38);
    (*(v40 + 8))(v27, v44);

    v32 = v0[1];

    return v32();
  }

  v2 = 0;
  v3 = v0[22];
  v39 = result + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v41 = v3;
  v36 = (v3 + 8);
  v33 = (v3 + 40);
  v34 = (v3 + 32);
  v4 = MEMORY[0x277D84F98];
  v35 = v0[79];
  while (1)
  {
    if (v2 >= *(result + 16))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v6 = v0[23];
    v5 = v0[24];
    v7 = v0;
    v8 = v0[21];
    v9 = *(v41 + 72);
    v10 = *(v41 + 16);
    v10(v5, v39 + v9 * v2, v8);
    v11 = sub_2545FEE54();
    v10(v6, v5, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v4;
    result = sub_2545C56D4(v11);
    v14 = v4[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      goto LABEL_22;
    }

    v18 = v13;
    v19 = v9;
    if (v4[3] < v17)
    {
      break;
    }

    v0 = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v26 = result;
      sub_2545C8780();
      result = v26;
      v4 = v45;
    }

LABEL_12:
    v21 = v0[23];
    v22 = v0[24];
    v23 = v0[21];
    if (v18)
    {
      (*v33)(v4[7] + result * v19, v21, v0[21]);
      (*v36)(v22, v23);
    }

    else
    {
      v4[(result >> 6) + 8] |= 1 << result;
      *(v4[6] + 8 * result) = v11;
      (*v34)(v4[7] + result * v19, v21, v23);
      result = (*v36)(v22, v23);
      v24 = v4[2];
      v16 = __OFADD__(v24, 1);
      v25 = v24 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v4[2] = v25;
    }

    ++v2;
    result = v35;
    if (v43 == v2)
    {
      goto LABEL_15;
    }
  }

  sub_2545C7AB4(v17, isUniquelyReferenced_nonNull_native);
  result = sub_2545C56D4(v11);
  if ((v18 & 1) == (v20 & 1))
  {
    v0 = v7;
    goto LABEL_12;
  }

  return sub_2545FF7D4();
}

uint64_t HomeXLTileEntityQuery.suggestedEntities()(uint64_t a1)
{
  v2[2] = a1;
  type metadata accessor for SelectedHomeEntity(0);
  v2[3] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606660, &qword_254600978);
  v2[4] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606668, &qword_254600980);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = swift_task_alloc();
  v5 = *v1;
  v2[8] = v4;
  v2[9] = v5;

  return MEMORY[0x2822009F8](sub_2545C21BC, 0, 0);
}

uint64_t sub_2545C21BC()
{
  if (sub_2545FE964())
  {
    v2 = v0[3];
    v1 = v0[4];
    swift_getKeyPath();
    sub_2545CE174();
    sub_2545FE7C4();
    sub_2545FEA14();
    sub_2545FEA14();
    sub_2545D8660(v2, v1, type metadata accessor for HomeID);
    sub_2545D86C8(v2, type metadata accessor for SelectedHomeEntity);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v0[4];
  v5 = type metadata accessor for HomeID(0);
  (*(*(v5 - 8) + 56))(v4, v3, 1, v5);
  v6 = sub_2545FEF64();
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_2545C235C;
  v8 = v0[8];
  v9 = v0[4];

  return sub_2545B9B88(v8, 0, 0, v9, v6);
}

uint64_t sub_2545C235C()
{
  v2 = *(*v1 + 32);
  *(*v1 + 88) = v0;

  sub_2545B612C(v2, &qword_27F606660, &qword_254600978);
  if (v0)
  {
    v3 = sub_2545C27BC;
  }

  else
  {
    v3 = sub_2545C249C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2545C249C()
{
  v28 = v0;
  v1 = *(sub_2545FE864() + 16);

  if (v1)
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v2 = v0[7];
    v3 = v0[8];
    v4 = v0[5];
    v5 = v0[6];
    v6 = sub_2545FF0A4();
    __swift_project_value_buffer(v6, qword_27F60ADD8);
    (*(v5 + 16))(v2, v3, v4);
    v7 = sub_2545FF084();
    v8 = sub_2545FF434();
    v9 = os_log_type_enabled(v7, v8);
    v11 = v0[6];
    v10 = v0[7];
    v12 = v0[5];
    if (v9)
    {
      v13 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = v26;
      *v13 = 136315138;
      v14 = sub_2545FE864();
      v15 = type metadata accessor for HomeXLTileEntity(0);
      v16 = MEMORY[0x259C121B0](v14, v15);
      v18 = v17;

      (*(v11 + 8))(v10, v12);
      v19 = sub_2545F0FB4(v16, v18, &v27);

      *(v13 + 4) = v19;
      _os_log_impl(&dword_2545AB000, v7, v8, "suggestedEntities() returned %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x259C12CB0](v26, -1, -1);
      MEMORY[0x259C12CB0](v13, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v10, v12);
    }
  }

  else
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v20 = sub_2545FF0A4();
    __swift_project_value_buffer(v20, qword_27F60ADD8);
    v21 = sub_2545FF084();
    v22 = sub_2545FF454();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2545AB000, v21, v22, "suggestedEntities() returned empty", v23, 2u);
      MEMORY[0x259C12CB0](v23, -1, -1);
    }
  }

  (*(v0[6] + 32))(v0[2], v0[8], v0[5]);

  v24 = v0[1];

  return v24();
}

uint64_t sub_2545C27BC()
{
  if (qword_27F6063A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = sub_2545FF0A4();
  __swift_project_value_buffer(v2, qword_27F60ADD8);
  v3 = v1;
  v4 = sub_2545FF084();
  v5 = sub_2545FF454();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 88);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2545AB000, v4, v5, "suggestedEntities() threw error %@", v7, 0xCu);
    sub_2545B612C(v8, &qword_27F606658, &qword_254600D70);
    MEMORY[0x259C12CB0](v8, -1, -1);
    MEMORY[0x259C12CB0](v7, -1, -1);
  }

  v11 = *(v0 + 88);

  type metadata accessor for HomeXLTileEntity(0);
  sub_2545D8728(&qword_281533060, type metadata accessor for HomeXLTileEntity, &protocol conformance descriptor for HomeXLTileEntity);
  sub_2545FE854();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2545C29D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2545AF6A0;

  return HomeXLTileEntityQuery.entities(matching:)(a1, a2, a3);
}

uint64_t sub_2545C2A80@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606568, &qword_254600340);
  swift_getKeyPath();
  swift_getKeyPath();
  result = sub_2545FE974();
  *a1 = result;
  return result;
}

uint64_t sub_2545C2AEC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2545D88C4;

  return HomeXLTileEntityQuery.entities(for:)(a1);
}

uint64_t sub_2545C2B80(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2545D880C;

  return HomeXLTileEntityQuery.suggestedEntities()(a1);
}

uint64_t sub_2545C2C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2545C2CD8;

  return MEMORY[0x28210B610](a1, a2, a3, a4);
}

uint64_t sub_2545C2CD8(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_2545C2DD8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_2545B3C58();
  *v5 = v2;
  v5[1] = sub_2545D880C;

  return MEMORY[0x28210B618](a1, a2, v6);
}

uint64_t sub_2545C2E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2545AF6A0;

  return MEMORY[0x28210C148](a1, a2, a3);
}

uint64_t sub_2545C2F44(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void))
{
  v24 = a6;
  v25 = a1;
  v8 = v6;
  v26 = a2;
  v10 = a4(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v21 - v12;
  v14 = *(a3 + 16);
  v15 = MEMORY[0x277D84F90];
  if (!v14)
  {
    return v15;
  }

  v27 = MEMORY[0x277D84F90];
  v22 = a5;
  a5(0, v14, 0);
  v15 = v27;
  v16 = *(type metadata accessor for TileElementInfo(0) - 8);
  v17 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v23 = *(v16 + 72);
  while (1)
  {
    v25(v17);
    if (v8)
    {
      break;
    }

    v8 = 0;
    v27 = v15;
    v19 = *(v15 + 16);
    v18 = *(v15 + 24);
    if (v19 >= v18 >> 1)
    {
      v22(v18 > 1, v19 + 1, 1);
      v15 = v27;
    }

    *(v15 + 16) = v19 + 1;
    sub_2545D8770(v13, v15 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v19, v24);
    v17 += v23;
    if (!--v14)
    {
      return v15;
    }
  }

  result = sub_2545FEA14();
  __break(1u);
  return result;
}

uint64_t sub_2545C3148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v15 = a2;
  v16 = a4;
  v17 = a6;
  v9 = sub_2545FEEF4();
  v14[1] = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6064D0, &unk_2546002B0);
  MEMORY[0x28223BE20](v10 - 8);
  sub_2545B60C4(a1, v14 - v11, &qword_27F6064D0, &unk_2546002B0);
  v19 = v15;
  v20 = a3;
  v21 = v16;
  v22 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606730, &qword_254600C20);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2546008F0;
  sub_2545FE8E4();
  sub_2545FE8E4();
  sub_2545FEEE4();
  v18 = v12;
  sub_2545D8728(&qword_27F606738, MEMORY[0x277D16690], MEMORY[0x277D16698]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606740, &qword_254600C28);
  sub_2545B4F2C(&qword_27F606748, &qword_27F606740, &qword_254600C28, MEMORY[0x277D83970]);
  sub_2545FF534();
  sub_2545FEDB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606688, &qword_254601E20);
  return swift_storeEnumTagMultiPayload();
}

uint64_t *sub_2545C33E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2545FF544();
  if (v4 == 1 << *(a1 + 32))
  {
    result = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0uLL;
  }

  else
  {
    result = sub_2545C8FFC(&v9, v4, *(a1 + 36), 0, a1);
    v8 = v9;
    v7 = v10;
  }

  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_2545C3480(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v20 = v8 + v6;
  }

  else
  {
    v20 = v8;
  }

  v7 = sub_2545C4950(isUniquelyReferenced_nonNull_native, v20, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v16 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  if (v16 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v17 = v7[2];
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    v7[2] = v19;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2545C35DC(uint64_t a1)
{
  v26 = a1;
  v3 = type metadata accessor for ElementID(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v9 = type metadata accessor for HomeXLTileEntity(0);
  v27 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v24 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - v12;
  v14 = 0;
  v25 = v2;
  v15 = *(v2 + 16);
  v16 = v15[2];
  while (v16 != v14)
  {
    if (v14 >= v15[2])
    {
      __break(1u);
      goto LABEL_11;
    }

    sub_2545D8660(v15 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v14++, v13, type metadata accessor for HomeXLTileEntity);
    sub_2545D8660(v13, v8, type metadata accessor for ElementID);
    sub_2545D8660(v26, v6, type metadata accessor for ElementID);
    v17 = _s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0();
    v18 = sub_2545FEB04();
    v19 = *(v18 - 8);
    v20 = *(v19 + 8);
    v1 = v19 + 8;
    v20(v6, v18);
    v20(v8, v18);
    result = sub_2545D86C8(v13, type metadata accessor for HomeXLTileEntity);
    if (v17)
    {
      return result;
    }
  }

  v1 = v24;
  sub_2545D8660(v26, v24, type metadata accessor for HomeXLTileEntity);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_7;
  }

LABEL_11:
  v15 = sub_2545C4950(0, v15[2] + 1, 1, v15, &qword_27F6067F0, &qword_254600CC0, type metadata accessor for HomeXLTileEntity);
LABEL_7:
  v23 = v15[2];
  v22 = v15[3];
  if (v23 >= v22 >> 1)
  {
    v15 = sub_2545C4950((v22 > 1), v23 + 1, 1, v15, &qword_27F6067F0, &qword_254600CC0, type metadata accessor for HomeXLTileEntity);
  }

  v15[2] = v23 + 1;
  result = sub_2545D8770(v1, v15 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23, type metadata accessor for HomeXLTileEntity);
  *(v25 + 16) = v15;
  return result;
}

uint64_t sub_2545C3944(uint64_t a1)
{
  v26 = a1;
  v3 = type metadata accessor for ElementID(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v9 = type metadata accessor for ToggleControlEntity(0);
  v27 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v24 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - v12;
  v14 = 0;
  v25 = v2;
  v15 = *(v2 + 16);
  v16 = v15[2];
  while (v16 != v14)
  {
    if (v14 >= v15[2])
    {
      __break(1u);
      goto LABEL_11;
    }

    sub_2545D8660(v15 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v14++, v13, type metadata accessor for ToggleControlEntity);
    sub_2545D8660(v13, v8, type metadata accessor for ElementID);
    sub_2545D8660(v26, v6, type metadata accessor for ElementID);
    v17 = _s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0();
    v18 = sub_2545FEB04();
    v19 = *(v18 - 8);
    v20 = *(v19 + 8);
    v1 = v19 + 8;
    v20(v6, v18);
    v20(v8, v18);
    result = sub_2545D86C8(v13, type metadata accessor for ToggleControlEntity);
    if (v17)
    {
      return result;
    }
  }

  v1 = v24;
  sub_2545D8660(v26, v24, type metadata accessor for ToggleControlEntity);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_7;
  }

LABEL_11:
  v15 = sub_2545C4950(0, v15[2] + 1, 1, v15, &qword_27F6067A0, &qword_254600C78, type metadata accessor for ToggleControlEntity);
LABEL_7:
  v23 = v15[2];
  v22 = v15[3];
  if (v23 >= v22 >> 1)
  {
    v15 = sub_2545C4950((v22 > 1), v23 + 1, 1, v15, &qword_27F6067A0, &qword_254600C78, type metadata accessor for ToggleControlEntity);
  }

  v15[2] = v23 + 1;
  result = sub_2545D8770(v1, v15 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23, type metadata accessor for ToggleControlEntity);
  *(v25 + 16) = v15;
  return result;
}

uint64_t sub_2545C3CAC(uint64_t a1)
{
  v26 = a1;
  v3 = type metadata accessor for ElementID(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v9 = type metadata accessor for HomeSingleTileEntity(0);
  v27 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v24 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - v12;
  v14 = 0;
  v25 = v2;
  v15 = *(v2 + 16);
  v16 = v15[2];
  while (v16 != v14)
  {
    if (v14 >= v15[2])
    {
      __break(1u);
      goto LABEL_11;
    }

    sub_2545D8660(v15 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v14++, v13, type metadata accessor for HomeSingleTileEntity);
    sub_2545D8660(v13, v8, type metadata accessor for ElementID);
    sub_2545D8660(v26, v6, type metadata accessor for ElementID);
    v17 = _s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0();
    v18 = sub_2545FEB04();
    v19 = *(v18 - 8);
    v20 = *(v19 + 8);
    v1 = v19 + 8;
    v20(v6, v18);
    v20(v8, v18);
    result = sub_2545D86C8(v13, type metadata accessor for HomeSingleTileEntity);
    if (v17)
    {
      return result;
    }
  }

  v1 = v24;
  sub_2545D8660(v26, v24, type metadata accessor for HomeSingleTileEntity);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_7;
  }

LABEL_11:
  v15 = sub_2545C4950(0, v15[2] + 1, 1, v15, &qword_27F6066D8, &qword_254600BC8, type metadata accessor for HomeSingleTileEntity);
LABEL_7:
  v23 = v15[2];
  v22 = v15[3];
  if (v23 >= v22 >> 1)
  {
    v15 = sub_2545C4950((v22 > 1), v23 + 1, 1, v15, &qword_27F6066D8, &qword_254600BC8, type metadata accessor for HomeSingleTileEntity);
  }

  v15[2] = v23 + 1;
  result = sub_2545D8770(v1, v15 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23, type metadata accessor for HomeSingleTileEntity);
  *(v25 + 16) = v15;
  return result;
}

uint64_t sub_2545C4014(uint64_t a1, unint64_t a2)
{
  v3 = sub_2545FF134();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_2545FEA44();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2545FEB24();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_2545FF154();
  MEMORY[0x28223BE20](v9 - 8);
  if (a2 > 1)
  {
    sub_2545FF124();
    sub_2545FF114();
    sub_2545FF104();
    sub_2545FF114();
    sub_2545FF144();
  }

  else
  {
    sub_2545FF0F4();
  }

  sub_2545FEB14();
  (*(v5 + 104))(v7, *MEMORY[0x277CC9110], v4);
  return sub_2545FEA74();
}

void *sub_2545C428C(uint64_t a1)
{
  v3 = sub_2545FEF84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2545D8728(&qword_27F606718, MEMORY[0x277D16BC8], MEMORY[0x277D16BD0]);
  v7 = sub_2545FF254();
  v26 = MEMORY[0x277D84F90];
  sub_2545DBE04(0, v7 & ~(v7 >> 63), 0);
  v8 = v26;
  (*(v4 + 16))(v6, a1, v3);
  result = sub_2545FF244();
  if ((v7 & 0x8000000000000000) == 0)
  {
    v10 = v25;
    if (v7)
    {
      v21[1] = v1;
      v11 = v24;
      v12 = *(v24 + 16);
      v13 = v24 + 40 * v25 + 32;
      v14 = v25;
      while (v12 != v14)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }

        if (v14 >= *(v11 + 16))
        {
          goto LABEL_21;
        }

        sub_2545D850C(v13, v22);
        sub_2545D850C(v22, v23);
        __swift_destroy_boxed_opaque_existential_0(v22);
        v26 = v8;
        v16 = *(v8 + 16);
        v15 = *(v8 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_2545DBE04((v15 > 1), v16 + 1, 1);
          v8 = v26;
        }

        *(v8 + 16) = v16 + 1;
        result = sub_2545D8570(v23, v8 + 40 * v16 + 32);
        v13 += 40;
        ++v14;
        if (!--v7)
        {
          v25 = v14;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
    }

    else
    {
      v14 = v25;
LABEL_12:
      v17 = v24;
      v18 = *(v24 + 16);
      if (v14 == v18)
      {
LABEL_13:

        return v8;
      }

      while (v14 < v18)
      {
        v25 = v14 + 1;
        sub_2545D850C(v17 + 32 + 40 * v14, v23);
        sub_2545D8570(v23, v22);
        v26 = v8;
        v20 = *(v8 + 16);
        v19 = *(v8 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_2545DBE04((v19 > 1), v20 + 1, 1);
          v8 = v26;
        }

        *(v8 + 16) = v20 + 1;
        result = sub_2545D8570(v22, v8 + 40 * v20 + 32);
        v18 = *(v17 + 16);
        v14 = v25;
        if (v25 == v18)
        {
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2545C4588@<X0>(void *a1@<X0>, uint64_t (*a3)(void)@<X2>, uint64_t x8_0@<X8>)
{
  v7 = sub_2545FEB64();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_2545F3D54(v11, v12, x8_0);
  sub_2545FED04();
  v13 = a3(0);
  sub_2545FEB34();
  (*(v8 + 8))(v10, v7);
  sub_2545D850C(a1, v16);
  return sub_2545E501C(v16, x8_0 + *(v13 + 24));
}

void *sub_2545C4704(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606720, &unk_254600C10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606728, &qword_254601DC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2545C484C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6066D0, &qword_254600BC0);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_2545C4950(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
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

void *sub_2545C4B2C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_2545C4D14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v9 = ((v7 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v6[2] = a1;
  v6[3] = 2 * ((v9 >> 2) + (v9 >> 63));
  return result;
}

uint64_t sub_2545C4D9C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2545C4E28(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_2545C4EB4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606720, &unk_254600C10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606728, &qword_254601DC0);
    swift_arrayInitWithCopy();
  }

  sub_2545FEA14();
  return v10;
}

void *sub_2545C510C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
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

  sub_2545FEA14();
  return v17;
}

void *sub_2545C530C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  sub_2545FEA14();
  return v19;
}

void *sub_2545C54F4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  sub_2545FEA14();
  return v16;
}

unint64_t sub_2545C563C(uint64_t a1)
{
  sub_2545FEB04();
  sub_2545D8728(&qword_27F606430, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = sub_2545FF0B4();

  return sub_2545C82E4(a1, v2);
}

unint64_t sub_2545C56D4(uint64_t a1)
{
  v2 = sub_2545FF824();

  return sub_2545C84A4(a1, v2);
}

unint64_t sub_2545C5718(uint64_t a1, unint64_t a2)
{
  sub_2545FF834();
  if (!a2)
  {
    v4 = 0;
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    v4 = 2;
LABEL_5:
    MEMORY[0x259C12730](v4);
    goto LABEL_7;
  }

  MEMORY[0x259C12730](1);
  sub_2545FF1B4();
LABEL_7:
  v5 = sub_2545FF864();

  return sub_2545C8510(a1, a2, v5);
}

unint64_t sub_2545C57BC(uint64_t a1)
{
  v1 = a1;
  sub_2545FF834();
  sub_2545FF1B4();

  v2 = sub_2545FF864();

  return sub_2545C85F4(v1, v2);
}

uint64_t sub_2545C5880(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t), uint64_t (*a4)(void *))
{
  v7 = *(a2(0) - 8);
  v8 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = a3(v8);
  }

  v9 = *(v8 + 16);
  v11[0] = v8 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v11[1] = v9;
  result = a4(v11);
  *a1 = v8;
  return result;
}

uint64_t sub_2545C5944(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t *a3, uint64_t *a4)
{
  v8 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = a2(v8);
  }

  v9 = *(v8 + 16);
  v11[0] = v8 + 32;
  v11[1] = v9;
  result = sub_2545C59D0(v11, a3, a4);
  *a1 = v8;
  return result;
}

uint64_t sub_2545C59D0(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  result = sub_2545FF784();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      if (v6 <= 1)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        v9 = sub_2545FF2F4();
        *(v9 + 16) = v6 / 2;
      }

      v11[0] = v9 + 32;
      v11[1] = v6 / 2;
      v10 = v9;
      sub_2545C5EA0(v11, v12, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return sub_2545C5D60(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_2545C5AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v48 = a8;
  v49 = a6;
  v50 = a7;
  v51 = a5(0);
  v12 = MEMORY[0x28223BE20](v51);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v40 - v16;
  result = MEMORY[0x28223BE20](v15);
  v21 = &v40 - v20;
  v42 = a2;
  if (a3 != a2)
  {
    v22 = *(v19 + 72);
    v23 = *a4 + v22 * (a3 - 1);
    v24 = -v22;
    v25 = a1 - a3;
    v47 = *a4;
    v41 = v22;
    v26 = v47 + v22 * a3;
LABEL_6:
    v45 = v23;
    v46 = a3;
    v43 = v26;
    v44 = v25;
    v28 = v23;
    while (1)
    {
      v29 = v49;
      sub_2545D8660(v26, v21, v49);
      sub_2545D8660(v28, v17, v29);
      v30 = *(v51 + 24);
      v31 = *(type metadata accessor for TileElementInfo(0) + 20);
      v32 = *&v21[v30 + v31];
      v33 = *&v21[v30 + 8 + v31];
      v34 = &v17[v30 + v31];
      if (v32 == *v34 && v33 == *(v34 + 1))
      {
        v27 = v50;
        sub_2545D86C8(v17, v50);
        result = sub_2545D86C8(v21, v27);
LABEL_5:
        a3 = v46 + 1;
        v23 = v45 + v41;
        v25 = v44 - 1;
        v26 = v43 + v41;
        if (v46 + 1 == v42)
        {
          return result;
        }

        goto LABEL_6;
      }

      v36 = sub_2545FF7B4();
      v37 = v50;
      sub_2545D86C8(v17, v50);
      result = sub_2545D86C8(v21, v37);
      if ((v36 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v47)
      {
        break;
      }

      v38 = v48;
      sub_2545D8770(v26, v14, v48);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_2545D8770(v14, v28, v38);
      v28 += v24;
      v26 += v24;
      if (__CFADD__(v25++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2545C5D60(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
LABEL_5:
    v9 = *(v6 + 24 * v4 + 8);
    v10 = v8;
    v11 = v7;
    while (1)
    {
      v12 = *(v11 + 8);
      if (v9)
      {
        if (v9 == 1)
        {
          goto LABEL_4;
        }

        if (v12 >= 2)
        {
          sub_2545D8470();
          result = sub_2545FF514();
          if (result != -1)
          {
            goto LABEL_4;
          }

          goto LABEL_20;
        }

        v13 = 0;
      }

      else
      {
        v13 = 1;
      }

      if (v12 == 1)
      {
        v13 = 1;
      }

      if (v12)
      {
        v14 = v13 == 0;
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
LABEL_4:
        ++v4;
        v7 += 24;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

LABEL_20:
      if (!v6)
      {
        __break(1u);
        return result;
      }

      v9 = *(v11 + 32);
      v15 = *(v11 + 40);
      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      *(v11 + 24) = *v11;
      *(v11 + 40) = v17;
      *v11 = v16;
      *(v11 + 8) = v9;
      *(v11 + 16) = v15;
      v11 -= 24;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

uint64_t sub_2545C5EA0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v107 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_129:
    v8 = *v107;
    if (!*v107)
    {
      goto LABEL_168;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_131:
      v97 = v5;
      v98 = *(v9 + 2);
      if (v98 >= 2)
      {
        while (1)
        {
          v99 = *v6;
          if (!*v6)
          {
            goto LABEL_166;
          }

          v5 = v98 - 1;
          v100 = *&v9[16 * v98];
          v6 = *&v9[16 * v98 + 24];
          sub_2545C7688((v99 + 24 * v100), (v99 + 24 * *&v9[16 * v98 + 16]), v99 + 24 * v6, v8);
          if (v97)
          {
          }

          if (v6 < v100)
          {
            goto LABEL_155;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_2545C4E28(v9);
          }

          if (v98 - 2 >= *(v9 + 2))
          {
            goto LABEL_156;
          }

          v101 = &v9[16 * v98];
          *v101 = v100;
          *(v101 + 1) = v6;
          result = sub_2545C4D9C(v5);
          v98 = *(v9 + 2);
          v6 = a3;
          if (v98 <= 1)
          {
          }
        }
      }
    }

LABEL_162:
    result = sub_2545C4E28(v9);
    v9 = result;
    goto LABEL_131;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (2)
  {
    v10 = v8++;
    if (v8 >= v7)
    {
      goto LABEL_46;
    }

    v11 = *v6;
    v12 = *(*v6 + 24 * v8 + 8);
    v13 = *(*v6 + 24 * v10 + 8);
    v103 = v5;
    v14 = v10;
    if (!v12)
    {
      goto LABEL_10;
    }

    if (v12 == 1)
    {
      v12 = 2;
LABEL_10:
      v15 = 1;
      if (v13 == 1)
      {
        v15 = 2;
      }

      if (v13)
      {
        v16 = v15 > v12;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;
      goto LABEL_18;
    }

    if (v13 < 2)
    {
      v12 = 1;
      goto LABEL_10;
    }

    sub_2545D8470();
    result = sub_2545FF514();
    v17 = result == -1;
LABEL_18:
    v18 = 0;
    v19 = (v14 + 2);
    v105 = v14;
    v20 = 24 * v14;
    v21 = (v11 + v20 + 32);
    v22 = v20;
    do
    {
      v8 = v19;
      v5 = v18;
      v6 = v22;
      if (v19 >= v7)
      {
        break;
      }

      v23 = v21[3];
      v27 = *v21;
      if (!v23)
      {
        goto LABEL_20;
      }

      if (v23 == 1)
      {
        v23 = 2;
LABEL_20:
        v24 = 1;
        if (v27 == 1)
        {
          v24 = 2;
        }

        if (v27)
        {
          v25 = v24 > v23;
        }

        else
        {
          v25 = 0;
        }

        v26 = v25;
        goto LABEL_28;
      }

      if (v27 < 2)
      {
        v23 = 1;
        goto LABEL_20;
      }

      sub_2545D8470();
      result = sub_2545FF514();
      v26 = result == -1;
LABEL_28:
      v19 = v8 + 1;
      v21 += 3;
      v18 = v5 + 1;
      v22 = (v6 + 24);
    }

    while (v17 == v26);
    if (v17)
    {
      v10 = v105;
      if (v8 < v105)
      {
        goto LABEL_159;
      }

      if (v105 < v8)
      {
        v28 = 0;
        do
        {
          if (v105 + v28 != v105 + v5 + 1)
          {
            v29 = *a3;
            if (!*a3)
            {
              goto LABEL_165;
            }

            v30 = v29 + v20;
            v31 = (v29 + v6);
            v32 = *(v30 + 16);
            v33 = *v30;
            v34 = *(v31 + 5);
            *v30 = *(v31 + 24);
            *(v30 + 16) = v34;
            *(v31 + 24) = v33;
            *(v31 + 5) = v32;
          }

          --v5;
          ++v28;
          v6 -= 24;
          v20 += 24;
        }

        while (v28 + v105 < (v105 + v5 + 2));
      }

      v5 = v103;
    }

    else
    {
      v5 = v103;
      v10 = v105;
    }

    v6 = a3;
LABEL_46:
    v35 = *(v6 + 8);
    if (v8 >= v35)
    {
      goto LABEL_77;
    }

    if (__OFSUB__(v8, v10))
    {
      goto LABEL_158;
    }

    if (&v8[-v10] >= a4)
    {
      goto LABEL_77;
    }

    if (__OFADD__(v10, a4))
    {
      goto LABEL_160;
    }

    if (v10 + a4 >= v35)
    {
      v36 = *(v6 + 8);
    }

    else
    {
      v36 = (v10 + a4);
    }

    if (v36 < v10)
    {
LABEL_161:
      __break(1u);
      goto LABEL_162;
    }

    if (v8 == v36)
    {
LABEL_77:
      if (v8 < v10)
      {
        goto LABEL_157;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2545C484C(0, *(v9 + 2) + 1, 1, v9);
        v9 = result;
      }

      v51 = *(v9 + 2);
      v50 = *(v9 + 3);
      v52 = v51 + 1;
      if (v51 >= v50 >> 1)
      {
        result = sub_2545C484C((v50 > 1), v51 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 2) = v52;
      v53 = &v9[16 * v51];
      *(v53 + 4) = v10;
      *(v53 + 5) = v8;
      v54 = *v107;
      if (!*v107)
      {
        goto LABEL_167;
      }

      if (!v51)
      {
LABEL_3:
        v7 = *(v6 + 8);
        if (v8 >= v7)
        {
          goto LABEL_129;
        }

        continue;
      }

      while (1)
      {
        v55 = v52 - 1;
        if (v52 >= 4)
        {
          break;
        }

        if (v52 == 3)
        {
          v56 = *(v9 + 4);
          v57 = *(v9 + 5);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_97:
          if (v59)
          {
            goto LABEL_146;
          }

          v72 = &v9[16 * v52];
          v74 = *v72;
          v73 = *(v72 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_149;
          }

          v78 = &v9[16 * v55 + 32];
          v80 = *v78;
          v79 = *(v78 + 1);
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_152;
          }

          if (__OFADD__(v76, v81))
          {
            goto LABEL_153;
          }

          if (v76 + v81 >= v58)
          {
            if (v58 < v81)
            {
              v55 = v52 - 2;
            }

            goto LABEL_118;
          }

          goto LABEL_111;
        }

        v82 = &v9[16 * v52];
        v84 = *v82;
        v83 = *(v82 + 1);
        v66 = __OFSUB__(v83, v84);
        v76 = v83 - v84;
        v77 = v66;
LABEL_111:
        if (v77)
        {
          goto LABEL_148;
        }

        v85 = &v9[16 * v55];
        v87 = *(v85 + 4);
        v86 = *(v85 + 5);
        v66 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v66)
        {
          goto LABEL_151;
        }

        if (v88 < v76)
        {
          goto LABEL_3;
        }

LABEL_118:
        v93 = v55 - 1;
        if (v55 - 1 >= v52)
        {
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
          goto LABEL_161;
        }

        if (!*v6)
        {
          goto LABEL_164;
        }

        v94 = *&v9[16 * v93 + 32];
        v95 = *&v9[16 * v55 + 40];
        sub_2545C7688((*v6 + 24 * v94), (*v6 + 24 * *&v9[16 * v55 + 32]), *v6 + 24 * v95, v54);
        if (v5)
        {
        }

        if (v95 < v94)
        {
          goto LABEL_142;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_2545C4E28(v9);
        }

        if (v93 >= *(v9 + 2))
        {
          goto LABEL_143;
        }

        v96 = &v9[16 * v93];
        *(v96 + 4) = v94;
        *(v96 + 5) = v95;
        result = sub_2545C4D9C(v55);
        v52 = *(v9 + 2);
        if (v52 <= 1)
        {
          goto LABEL_3;
        }
      }

      v60 = &v9[16 * v52 + 32];
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_144;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_145;
      }

      v67 = &v9[16 * v52];
      v69 = *v67;
      v68 = *(v67 + 1);
      v66 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v66)
      {
        goto LABEL_147;
      }

      v66 = __OFADD__(v58, v70);
      v71 = v58 + v70;
      if (v66)
      {
        goto LABEL_150;
      }

      if (v71 >= v63)
      {
        v89 = &v9[16 * v55 + 32];
        v91 = *v89;
        v90 = *(v89 + 1);
        v66 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v66)
        {
          goto LABEL_154;
        }

        if (v58 < v92)
        {
          v55 = v52 - 2;
        }

        goto LABEL_118;
      }

      goto LABEL_97;
    }

    break;
  }

  v104 = v5;
  v106 = v10;
  v37 = *v6;
  v38 = *v6 + 24 * v8 - 24;
  v39 = v10 - v8;
LABEL_57:
  v40 = *(v37 + 24 * v8 + 8);
  v41 = v39;
  v42 = v38;
  while (1)
  {
    v43 = *(v42 + 8);
    if (!v40)
    {
      v44 = 1;
LABEL_63:
      if (v43 == 1)
      {
        v44 = 1;
      }

      if (v43)
      {
        v45 = v44 == 0;
      }

      else
      {
        v45 = 1;
      }

      if (!v45)
      {
        goto LABEL_72;
      }

LABEL_56:
      ++v8;
      v38 += 24;
      --v39;
      if (v8 == v36)
      {
        v8 = v36;
        v5 = v104;
        v10 = v106;
        v6 = a3;
        goto LABEL_77;
      }

      goto LABEL_57;
    }

    if (v40 == 1)
    {
      goto LABEL_56;
    }

    if (v43 < 2)
    {
      v44 = 0;
      goto LABEL_63;
    }

    sub_2545D8470();
    result = sub_2545FF514();
    if (result != -1)
    {
      goto LABEL_56;
    }

LABEL_72:
    if (!v37)
    {
      break;
    }

    v40 = *(v42 + 32);
    v46 = *(v42 + 40);
    v48 = *(v42 + 16);
    v47 = *(v42 + 24);
    *(v42 + 24) = *v42;
    *(v42 + 40) = v48;
    *v42 = v47;
    *(v42 + 8) = v40;
    *(v42 + 16) = v46;
    v42 -= 24;
    if (__CFADD__(v41++, 1))
    {
      goto LABEL_56;
    }
  }

  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
  return result;
}

uint64_t sub_2545C6604(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t (*a8)(void), uint64_t (*a9)(void), uint64_t (*a10)(void))
{
  v171 = a8;
  v173 = a6;
  v174 = a7;
  v11 = v10;
  v152 = a1;
  v14 = a10;
  v162 = a9;
  v172 = (a5)(0, a2);
  v163 = *(v172 - 8);
  v15 = MEMORY[0x28223BE20](v172);
  v156 = &v148 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v169 = &v148 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v20 = MEMORY[0x28223BE20](v19);
  v21 = MEMORY[0x28223BE20](v20);
  v167 = &v148 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v166 = &v148 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v151 = &v148 - v26;
  result = MEMORY[0x28223BE20](v25);
  v150 = &v148 - v30;
  v31 = *(a3 + 8);
  if (v31 < 1)
  {
    v33 = MEMORY[0x277D84F90];
LABEL_113:
    a4 = *v152;
    if (!*v152)
    {
      goto LABEL_151;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_115:
      v175 = v33;
      v142 = *(v33 + 2);
      if (v142 >= 2)
      {
        while (1)
        {
          v143 = *a3;
          if (!*a3)
          {
            goto LABEL_149;
          }

          v144 = v33;
          v145 = a3;
          v33 = (v142 - 1);
          a3 = *&v144[16 * v142];
          v146 = *&v144[16 * v142 + 24];
          sub_2545C70E0(v143 + *(v163 + 72) * a3, v143 + *(v163 + 72) * *&v144[16 * v142 + 16], v143 + *(v163 + 72) * v146, a4, v162, v173, v174, v14);
          if (v11)
          {
          }

          if (v146 < a3)
          {
            goto LABEL_138;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v144 = sub_2545C4E28(v144);
          }

          if (v142 - 2 >= *(v144 + 2))
          {
            goto LABEL_139;
          }

          v147 = &v144[16 * v142];
          *v147 = a3;
          *(v147 + 1) = v146;
          v175 = v144;
          result = sub_2545C4D9C(v33);
          v33 = v175;
          v142 = *(v175 + 2);
          a3 = v145;
          if (v142 <= 1)
          {
          }
        }
      }
    }

LABEL_145:
    result = sub_2545C4E28(v33);
    v33 = result;
    goto LABEL_115;
  }

  v170 = v29;
  v168 = v28;
  v148 = a4;
  v32 = 0;
  v33 = MEMORY[0x277D84F90];
  v154 = a3;
  v159 = a10;
  while (1)
  {
    v34 = v32;
    v35 = v32 + 1;
    v161 = v33;
    if (v32 + 1 < v31)
    {
      v158 = v31;
      v36 = *a3;
      v37 = *(v163 + 72);
      v38 = *a3 + v37 * v35;
      v39 = v150;
      v40 = v173;
      sub_2545D8660(v38, v150, v173);
      v153 = v34;
      v164 = v37;
      v41 = v36 + v37 * v34;
      v42 = v151;
      sub_2545D8660(v41, v151, v40);
      v43 = *(v172 + 24);
      v44 = v39 + v43;
      v157 = type metadata accessor for TileElementInfo(0);
      v45 = *(v157 + 20);
      v46 = *(v44 + v45);
      v47 = *(v44 + v45 + 8);
      v48 = (v42 + v43 + v45);
      v49 = v46 == *v48 && v47 == v48[1];
      a3 = v35;
      v149 = v11;
      if (v49)
      {
        LODWORD(v160) = 0;
      }

      else
      {
        LODWORD(v160) = sub_2545FF7B4();
      }

      v50 = v174;
      sub_2545D86C8(v151, v174);
      result = sub_2545D86C8(v150, v50);
      v51 = v153 + 2;
      v52 = v164 * (v153 + 2);
      a4 = v36 + v52;
      v53 = v164 * v35;
      v54 = v36 + v164 * v35;
      v11 = v172;
      do
      {
        v56 = v51;
        v14 = a3;
        v59 = v53;
        v60 = v52;
        if (v51 >= v158)
        {
          break;
        }

        v165 = v51;
        v61 = v166;
        v62 = v173;
        sub_2545D8660(a4, v166, v173);
        v63 = v167;
        sub_2545D8660(v54, v167, v62);
        v64 = *(v11 + 24);
        v65 = *(v157 + 20);
        v66 = (v61 + v64 + v65);
        v67 = (v63 + v64 + v65);
        v68 = *v66 == *v67 && v66[1] == v67[1];
        v55 = v68 ? 0 : sub_2545FF7B4();
        v56 = v165;
        v57 = v174;
        sub_2545D86C8(v167, v174);
        result = sub_2545D86C8(v166, v57);
        v58 = v160 ^ v55;
        v51 = v56 + 1;
        a4 += v164;
        v54 += v164;
        a3 = v14 + 1;
        v53 = v59 + v164;
        v52 = v60 + v164;
        v33 = v161;
        v11 = v172;
      }

      while ((v58 & 1) == 0);
      if ((v160 & 1) == 0)
      {
        v35 = v56;
        v11 = v149;
        a3 = v154;
LABEL_36:
        v34 = v153;
        goto LABEL_37;
      }

      if (v56 < v153)
      {
        goto LABEL_142;
      }

      if (v153 < v56)
      {
        v69 = v153 * v164;
        v70 = v153;
        do
        {
          if (v70 != v14)
          {
            v72 = *v154;
            if (!*v154)
            {
              goto LABEL_148;
            }

            a4 = v72 + v69;
            sub_2545D8770(v72 + v69, v156, v171);
            if (v69 < v59 || a4 >= v72 + v60)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v69 != v59)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_2545D8770(v156, v72 + v59, v171);
          }

          ++v70;
          v59 -= v164;
          v60 -= v164;
          v69 += v164;
        }

        while (v70 < v14--);
        v35 = v56;
        v11 = v149;
        a3 = v154;
        v33 = v161;
        goto LABEL_36;
      }

      v35 = v56;
      v11 = v149;
      a3 = v154;
      v34 = v153;
    }

LABEL_37:
    v73 = *(a3 + 8);
    v165 = v35;
    if (v35 < v73)
    {
      if (__OFSUB__(v35, v34))
      {
        goto LABEL_141;
      }

      if (v35 - v34 < v148)
      {
        break;
      }
    }

LABEL_61:
    if (v165 < v34)
    {
      goto LABEL_140;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2545C484C(0, *(v33 + 2) + 1, 1, v33);
      v33 = result;
    }

    a4 = *(v33 + 2);
    v96 = *(v33 + 3);
    v97 = a4 + 1;
    if (a4 >= v96 >> 1)
    {
      result = sub_2545C484C((v96 > 1), a4 + 1, 1, v33);
      v33 = result;
    }

    *(v33 + 2) = v97;
    v98 = &v33[16 * a4];
    v99 = v165;
    *(v98 + 4) = v34;
    *(v98 + 5) = v99;
    if (!*v152)
    {
      goto LABEL_150;
    }

    if (a4)
    {
      v14 = *v152;
      while (1)
      {
        a4 = v97 - 1;
        if (v97 >= 4)
        {
          break;
        }

        if (v97 == 3)
        {
          v100 = *(v33 + 4);
          v101 = *(v33 + 5);
          v110 = __OFSUB__(v101, v100);
          v102 = v101 - v100;
          v103 = v110;
LABEL_82:
          if (v103)
          {
            goto LABEL_129;
          }

          v116 = &v33[16 * v97];
          v118 = *v116;
          v117 = *(v116 + 1);
          v119 = __OFSUB__(v117, v118);
          v120 = v117 - v118;
          v121 = v119;
          if (v119)
          {
            goto LABEL_132;
          }

          v122 = &v33[16 * a4 + 32];
          v124 = *v122;
          v123 = *(v122 + 1);
          v110 = __OFSUB__(v123, v124);
          v125 = v123 - v124;
          if (v110)
          {
            goto LABEL_135;
          }

          if (__OFADD__(v120, v125))
          {
            goto LABEL_136;
          }

          if (v120 + v125 >= v102)
          {
            if (v102 < v125)
            {
              a4 = v97 - 2;
            }

            goto LABEL_103;
          }

          goto LABEL_96;
        }

        v126 = &v33[16 * v97];
        v128 = *v126;
        v127 = *(v126 + 1);
        v110 = __OFSUB__(v127, v128);
        v120 = v127 - v128;
        v121 = v110;
LABEL_96:
        if (v121)
        {
          goto LABEL_131;
        }

        v129 = &v33[16 * a4];
        v131 = *(v129 + 4);
        v130 = *(v129 + 5);
        v110 = __OFSUB__(v130, v131);
        v132 = v130 - v131;
        if (v110)
        {
          goto LABEL_134;
        }

        if (v132 < v120)
        {
          goto LABEL_3;
        }

LABEL_103:
        v137 = a4 - 1;
        if (a4 - 1 >= v97)
        {
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        v138 = *a3;
        if (!*a3)
        {
          goto LABEL_147;
        }

        v139 = a3;
        a3 = *&v33[16 * v137 + 32];
        v140 = *&v33[16 * a4 + 40];
        sub_2545C70E0(v138 + *(v163 + 72) * a3, v138 + *(v163 + 72) * *&v33[16 * a4 + 32], v138 + *(v163 + 72) * v140, v14, v162, v173, v174, v159);
        if (v11)
        {
        }

        if (v140 < a3)
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_2545C4E28(v33);
        }

        if (v137 >= *(v33 + 2))
        {
          goto LABEL_126;
        }

        v141 = &v33[16 * v137];
        *(v141 + 4) = a3;
        *(v141 + 5) = v140;
        v175 = v33;
        result = sub_2545C4D9C(a4);
        v33 = v175;
        v97 = *(v175 + 2);
        a3 = v139;
        if (v97 <= 1)
        {
          goto LABEL_3;
        }
      }

      v104 = &v33[16 * v97 + 32];
      v105 = *(v104 - 64);
      v106 = *(v104 - 56);
      v110 = __OFSUB__(v106, v105);
      v107 = v106 - v105;
      if (v110)
      {
        goto LABEL_127;
      }

      v109 = *(v104 - 48);
      v108 = *(v104 - 40);
      v110 = __OFSUB__(v108, v109);
      v102 = v108 - v109;
      v103 = v110;
      if (v110)
      {
        goto LABEL_128;
      }

      v111 = &v33[16 * v97];
      v113 = *v111;
      v112 = *(v111 + 1);
      v110 = __OFSUB__(v112, v113);
      v114 = v112 - v113;
      if (v110)
      {
        goto LABEL_130;
      }

      v110 = __OFADD__(v102, v114);
      v115 = v102 + v114;
      if (v110)
      {
        goto LABEL_133;
      }

      if (v115 >= v107)
      {
        v133 = &v33[16 * a4 + 32];
        v135 = *v133;
        v134 = *(v133 + 1);
        v110 = __OFSUB__(v134, v135);
        v136 = v134 - v135;
        if (v110)
        {
          goto LABEL_137;
        }

        if (v102 < v136)
        {
          a4 = v97 - 2;
        }

        goto LABEL_103;
      }

      goto LABEL_82;
    }

LABEL_3:
    v31 = *(a3 + 8);
    v32 = v165;
    v14 = v159;
    if (v165 >= v31)
    {
      goto LABEL_113;
    }
  }

  if (__OFADD__(v34, v148))
  {
    goto LABEL_143;
  }

  if (v34 + v148 >= v73)
  {
    v74 = v73;
  }

  else
  {
    v74 = v34 + v148;
  }

  if (v74 < v34)
  {
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  v75 = v165;
  if (v165 == v74)
  {
    goto LABEL_61;
  }

  v149 = v11;
  v76 = *a3;
  v77 = *(v163 + 72);
  v78 = v76 + v77 * (v165 - 1);
  v14 = -v77;
  v153 = v34;
  v79 = v34 - v165;
  v155 = v77;
  a4 = v76 + v165 * v77;
  v80 = v172;
  v81 = v168;
  v157 = v74;
LABEL_50:
  v164 = v78;
  v165 = v75;
  v158 = a4;
  v160 = v79;
  while (1)
  {
    v83 = v170;
    v84 = v173;
    sub_2545D8660(a4, v170, v173);
    sub_2545D8660(v78, v81, v84);
    v85 = *(v80 + 24);
    v86 = *(type metadata accessor for TileElementInfo(0) + 20);
    v87 = *(v83 + v85 + v86);
    v88 = *(v83 + v85 + v86 + 8);
    v89 = (v81 + v85 + v86);
    if (v87 == *v89 && v88 == v89[1])
    {
      v82 = v174;
      sub_2545D86C8(v81, v174);
      sub_2545D86C8(v83, v82);
LABEL_48:
      v80 = v172;
LABEL_49:
      v75 = v165 + 1;
      v78 = v164 + v155;
      v79 = v160 - 1;
      a4 = v158 + v155;
      if (v165 + 1 == v157)
      {
        v165 = v157;
        v11 = v149;
        a3 = v154;
        v33 = v161;
        v34 = v153;
        goto LABEL_61;
      }

      goto LABEL_50;
    }

    v91 = sub_2545FF7B4();
    v92 = v174;
    sub_2545D86C8(v81, v174);
    result = sub_2545D86C8(v83, v92);
    if ((v91 & 1) == 0)
    {
      goto LABEL_48;
    }

    if (!v76)
    {
      break;
    }

    v93 = v169;
    v94 = v171;
    sub_2545D8770(a4, v169, v171);
    v80 = v172;
    swift_arrayInitWithTakeFrontToBack();
    sub_2545D8770(v93, v78, v94);
    v78 += v14;
    a4 += v14;
    v95 = __CFADD__(v79++, 1);
    v81 = v168;
    if (v95)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
  return result;
}

uint64_t sub_2545C70E0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v66 = a8;
  v73 = a7;
  v74 = a5(0);
  v13 = MEMORY[0x28223BE20](v74);
  v71 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v70 = &v64 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v64 - v18;
  result = MEMORY[0x28223BE20](v17);
  v22 = &v64 - v21;
  v24 = *(v23 + 72);
  if (!v24)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_72;
  }

  v25 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_73;
  }

  v26 = (a2 - a1) / v24;
  v77 = a1;
  v76 = a4;
  if (v26 >= v25 / v24)
  {
    v28 = v25 / v24 * v24;
    if (a4 < a2 || a2 + v28 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v43 = a4 + v28;
    if (v28 < 1)
    {
      v46 = a4 + v28;
    }

    else
    {
      v44 = -v24;
      v45 = a4 + v28;
      v72 = a6;
      v46 = v43;
      v69 = v44;
      while (2)
      {
        while (1)
        {
          v65 = v46;
          v47 = a2;
          v48 = a2 + v44;
          v68 = a2;
          while (1)
          {
            if (v47 <= a1)
            {
              v77 = v47;
              v75 = v65;
              goto LABEL_70;
            }

            v50 = a3;
            v67 = v46;
            v51 = v45 + v44;
            v52 = v70;
            sub_2545D8660(v51, v70, a6);
            v53 = a6;
            v54 = v71;
            sub_2545D8660(v48, v71, v53);
            v55 = *(v74 + 24);
            v56 = v52 + v55;
            v57 = *(type metadata accessor for TileElementInfo(0) + 20);
            v58 = *(v56 + v57);
            v59 = *(v56 + v57 + 8);
            v60 = (v54 + v55 + v57);
            v61 = v58 == *v60 && v59 == v60[1];
            v62 = v61 ? 0 : sub_2545FF7B4();
            a3 = v50 + v69;
            v63 = v73;
            sub_2545D86C8(v71, v73);
            sub_2545D86C8(v70, v63);
            if (v62)
            {
              break;
            }

            v46 = v51;
            if (v50 < v45 || a3 >= v45)
            {
              swift_arrayInitWithTakeFrontToBack();
              a6 = v72;
            }

            else
            {
              a6 = v72;
              if (v50 != v45)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v45 = v51;
            v49 = v51 > a4;
            v47 = v68;
            v44 = v69;
            if (!v49)
            {
              a2 = v68;
              goto LABEL_69;
            }
          }

          if (v50 < v68 || a3 >= v68)
          {
            break;
          }

          v38 = v50 == v68;
          a6 = v72;
          a2 = v48;
          v46 = v67;
          v44 = v69;
          if (!v38)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v45 <= a4)
          {
            goto LABEL_69;
          }
        }

        a2 = v48;
        swift_arrayInitWithTakeFrontToBack();
        a6 = v72;
        v46 = v67;
        v44 = v69;
        if (v45 > a4)
        {
          continue;
        }

        break;
      }
    }

LABEL_69:
    v77 = a2;
    v75 = v46;
  }

  else
  {
    v27 = v26 * v24;
    v72 = a6;
    if (a4 < a1 || a1 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v71 = a4 + v27;
    v75 = a4 + v27;
    if (v27 >= 1 && a2 < a3)
    {
      while (1)
      {
        v30 = v24;
        v31 = a2;
        v32 = v72;
        sub_2545D8660(a2, v22, v72);
        sub_2545D8660(a4, v19, v32);
        v33 = *(v74 + 24);
        v34 = *(type metadata accessor for TileElementInfo(0) + 20);
        v35 = *&v22[v33 + v34];
        v36 = *&v22[v33 + 8 + v34];
        v37 = &v19[v33 + v34];
        v38 = v35 == *v37 && v36 == *(v37 + 1);
        if (v38)
        {
          break;
        }

        v39 = sub_2545FF7B4();
        v40 = v73;
        sub_2545D86C8(v19, v73);
        sub_2545D86C8(v22, v40);
        if ((v39 & 1) == 0)
        {
          goto LABEL_30;
        }

        v41 = v31;
        v24 = v30;
        a2 = v41 + v30;
        if (a1 < v41 || a1 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v41)
        {
          swift_arrayInitWithTakeBackToFront();
        }

LABEL_36:
        a1 += v24;
        v77 = a1;
        if (a4 >= v71 || a2 >= a3)
        {
          goto LABEL_70;
        }
      }

      v42 = v73;
      sub_2545D86C8(v19, v73);
      sub_2545D86C8(v22, v42);
LABEL_30:
      a2 = v31;
      if (a1 < a4 || a1 >= a4 + v30)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v76 = a4 + v30;
      a4 += v30;
      v24 = v30;
      goto LABEL_36;
    }
  }

LABEL_70:
  sub_2545C79CC(&v77, &v76, &v75, v66);
  return 1;
}

uint64_t sub_2545C7688(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[24 * v11] <= a4)
    {
      memmove(a4, __src, 24 * v11);
    }

    v12 = &v4[24 * v11];
    if (v10 < 24 || v6 <= v7)
    {
      goto LABEL_56;
    }

LABEL_32:
    v29 = v6 - 24;
    v19 = v5;
    v20 = v12;
    while (1)
    {
      v21 = *(v20 - 16);
      v20 -= 24;
      v22 = *(v6 - 2);
      if (!v21)
      {
        break;
      }

      if (v21 == 1)
      {
        v5 = (v19 - 24);
      }

      else
      {
        if (v22 < 2)
        {
          v23 = 0;
LABEL_40:
          if (v22 == 1)
          {
            v23 = 1;
          }

          v5 = (v19 - 24);
          if (v22)
          {
            v24 = v23 == 0;
          }

          else
          {
            v24 = 1;
          }

          if (!v24)
          {
LABEL_50:
            if (v19 != v6)
            {
              v26 = *v29;
              *(v5 + 16) = *(v6 - 1);
              *v5 = v26;
            }

            if (v12 <= v4 || (v6 -= 24, v29 <= v7))
            {
              v6 = v29;
              goto LABEL_56;
            }

            goto LABEL_32;
          }

          goto LABEL_48;
        }

        sub_2545D8470();
        v5 = (v19 - 24);
        if (sub_2545FF514() == -1)
        {
          goto LABEL_50;
        }
      }

LABEL_48:
      if (v12 != v19)
      {
        v25 = *v20;
        *(v5 + 16) = *(v20 + 16);
        *v5 = v25;
      }

      v12 = v20;
      v19 = v5;
      if (v20 <= v4)
      {
        v12 = v20;
        goto LABEL_56;
      }
    }

    v23 = 1;
    goto LABEL_40;
  }

  if (a4 != __dst || &__dst[24 * v9] <= a4)
  {
    memmove(a4, __dst, 24 * v9);
  }

  v12 = &v4[24 * v9];
  if (v8 >= 24 && v6 < v5)
  {
    do
    {
      v13 = *(v6 + 1);
      v14 = *(v4 + 1);
      if (v13)
      {
        if (v13 == 1)
        {
          goto LABEL_22;
        }

        if (v14 >= 2)
        {
          sub_2545D8470();
          if (sub_2545FF514() != -1)
          {
            goto LABEL_22;
          }

          goto LABEL_18;
        }

        v15 = 0;
      }

      else
      {
        v15 = 1;
      }

      if (v14 == 1)
      {
        v15 = 1;
      }

      if (v14)
      {
        v16 = v15 == 0;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
LABEL_22:
        v17 = v4;
        v16 = v7 == v4;
        v4 += 24;
        if (v16)
        {
          goto LABEL_24;
        }

LABEL_23:
        v18 = *v17;
        *(v7 + 2) = *(v17 + 2);
        *v7 = v18;
        goto LABEL_24;
      }

LABEL_18:
      v17 = v6;
      v16 = v7 == v6;
      v6 += 24;
      if (!v16)
      {
        goto LABEL_23;
      }

LABEL_24:
      v7 += 24;
    }

    while (v4 < v12 && v6 < v5);
  }

  v6 = v7;
LABEL_56:
  v27 = (v12 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v27])
  {
    memmove(v6, v4, 24 * v27);
  }

  return 1;
}