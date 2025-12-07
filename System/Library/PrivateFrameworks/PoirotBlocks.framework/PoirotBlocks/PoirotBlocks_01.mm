uint64_t sub_21B18C6F8()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 1701869940;
  v4 = 0x736E6D756C6F63;
  if (v1 != 3)
  {
    v4 = 0x74736566696E616DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7470697263736564;
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

uint64_t sub_21B18C790@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21B18DF54(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21B18C7B8(uint64_t a1)
{
  v2 = sub_21B18CEF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B18C7F4(uint64_t a1)
{
  v2 = sub_21B18CEF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DataSourceModel.descriptionText.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DataSourceModel.manifest.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DataSourceModel(0) + 32);

  return sub_21B18C904(v3, a1);
}

uint64_t type metadata accessor for DataSourceModel(uint64_t a1)
{
  result = qword_27CD6ECE0;
  if (!qword_27CD6ECE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B18C904(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC78, &unk_21B215AD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DataSourceModel.init(name:descriptionText:type:columns:manifest:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v10 = *a5;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = v10;
  *(a8 + 40) = a6;
  v11 = a8 + *(type metadata accessor for DataSourceModel(0) + 32);

  return sub_21B18C9D0(a7, v11);
}

uint64_t sub_21B18C9D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC78, &unk_21B215AD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DataSourceModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC78, &unk_21B215AD0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC80, &qword_21B211CB8);
  v30 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v28 - v9;
  v11 = type metadata accessor for DataSourceModel(0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = (v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B18CEF4();
  v15 = v32;
  sub_21B20DCD8();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = v11;
  v32 = v6;
  v17 = v30;
  v16 = v31;
  LOBYTE(v33) = 0;
  v19 = v14;
  *v14 = sub_21B20D8C8();
  v14[1] = v20;
  v28[1] = v20;
  LOBYTE(v33) = 1;
  v14[2] = sub_21B20D8C8();
  v14[3] = v21;
  v35 = 2;
  sub_21B18CF48();
  v28[0] = 0;
  sub_21B20D918();
  v22 = a1;
  *(v19 + 32) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC98, &unk_21B219FA0);
  v35 = 3;
  sub_21B18D478(&qword_27CD6ECA0, &qword_27CD6ECA8, MEMORY[0x277D3E650], MEMORY[0x277D83978]);
  sub_21B20D918();
  *(v19 + 40) = v33;
  v35 = 4;
  sub_21B17DCC8();
  sub_21B20D8B8();
  v23 = v10;
  v24 = v7;
  if (v34 >> 60 == 15)
  {
    v25 = 1;
    v26 = v32;
  }

  else
  {
    v26 = v32;
    sub_21B20D048();
    v25 = 0;
  }

  (*(v17 + 8))(v23, v24);
  v27 = sub_21B20D0C8();
  (*(*(v27 - 8) + 56))(v26, v25, 1, v27);
  sub_21B18C9D0(v26, v19 + *(v29 + 32));
  sub_21B18CF9C(v19, v16);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return sub_21B18D000(v19);
}

unint64_t sub_21B18CEF4()
{
  result = qword_27CD6EC88;
  if (!qword_27CD6EC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EC88);
  }

  return result;
}

unint64_t sub_21B18CF48()
{
  result = qword_27CD6EC90;
  if (!qword_27CD6EC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EC90);
  }

  return result;
}

uint64_t sub_21B18CF9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataSourceModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B18D000(uint64_t a1)
{
  v2 = type metadata accessor for DataSourceModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DataSourceModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC78, &unk_21B215AD0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ECB0, &qword_21B211CC0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v21 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B18CEF4();
  sub_21B20DD08();
  LOBYTE(v21) = 0;
  sub_21B20D9E8();
  if (!v2)
  {
    LOBYTE(v21) = 1;
    sub_21B20D9E8();
    LOBYTE(v21) = *(v3 + 32);
    v23 = 2;
    sub_21B18D424();
    sub_21B20DA48();
    v21 = *(v3 + 40);
    v23 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC98, &unk_21B219FA0);
    sub_21B18D478(&qword_27CD6ECC0, &qword_27CD6ECC8, MEMORY[0x277D3E640], MEMORY[0x277D83948]);
    sub_21B20DA48();
    v14 = type metadata accessor for DataSourceModel(0);
    sub_21B18C904(v3 + *(v14 + 32), v8);
    v15 = sub_21B20D0C8();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v8, 1, v15) == 1)
    {
      sub_21B186488(v8, &qword_27CD6EC78, &unk_21B215AD0);
      v17 = 0;
      v18 = 0xF000000000000000;
    }

    else
    {
      v17 = sub_21B20D0B8();
      v18 = v19;
      (*(v16 + 8))(v8, v15);
    }

    v21 = v17;
    v22 = v18;
    v23 = 4;
    sub_21B17DBE4();
    sub_21B20D9D8();
    sub_21B17DAE4(v21, v22);
  }

  return (*(v10 + 8))(v13, v9);
}

unint64_t sub_21B18D424()
{
  result = qword_27CD6ECB8;
  if (!qword_27CD6ECB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6ECB8);
  }

  return result;
}

uint64_t sub_21B18D478(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD6EC98, &unk_21B219FA0);
    sub_21B18E160(a2, MEMORY[0x277D3E638], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t DataSourceModel.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_21B18D57C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t DataSourceModel.hashValue.getter()
{
  sub_21B20DC88();
  sub_21B20D388();
  return sub_21B20DCA8();
}

uint64_t sub_21B18D5D4()
{
  sub_21B20DC88();
  sub_21B20D388();
  return sub_21B20DCA8();
}

uint64_t sub_21B18D620(uint64_t a1)
{
  sub_21B20DC88();
  sub_21B20D388();
  return sub_21B20DCA8();
}

uint64_t static DataSourceModel.< infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_21B20DB28();
  }
}

uint64_t sub_21B18D690(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_21B20DB28();
  }
}

uint64_t sub_21B18D6C0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v3 == *a1 && v4 == a1[1])
  {
    return 1;
  }

  else
  {
    return (sub_21B20DB28() ^ 1) & 1;
  }
}

uint64_t sub_21B18D70C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return (sub_21B20DB28() ^ 1) & 1;
  }
}

uint64_t sub_21B18D760(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v3 == *a1 && v4 == a1[1])
  {
    return 0;
  }

  else
  {
    return sub_21B20DB28();
  }
}

BOOL _s12PoirotBlocks15DataSourceModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B20D0C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC78, &unk_21B215AD0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED18, &qword_21B219FB0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v23 - v15;
  if (*a1 != *a2 && (sub_21B20DB28() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_21B20DB28() & 1) == 0 || (sub_21B1B3A24(*(a1 + 32), *(a2 + 32)) & 1) == 0 || (sub_21B1A69EC(*(a1 + 40), *(a2 + 40)) & 1) == 0)
  {
    return 0;
  }

  v17 = *(type metadata accessor for DataSourceModel(0) + 32);
  v18 = *(v13 + 48);
  sub_21B18C904(a1 + v17, v16);
  sub_21B18C904(a2 + v17, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_21B18C904(v16, v12);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v18], v4);
      sub_21B18E160(&qword_27CD6ED20, MEMORY[0x277D3E578], MEMORY[0x277D3E580]);
      v21 = sub_21B20D2A8();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_21B186488(v16, &qword_27CD6EC78, &unk_21B215AD0);
      return (v21 & 1) != 0;
    }

    (*(v5 + 8))(v12, v4);
LABEL_13:
    sub_21B186488(v16, &qword_27CD6ED18, &qword_21B219FB0);
    return 0;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_13;
  }

  sub_21B186488(v16, &qword_27CD6EC78, &unk_21B215AD0);
  return 1;
}

unint64_t sub_21B18DAFC()
{
  result = qword_27CD6ECD0;
  if (!qword_27CD6ECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6ECD0);
  }

  return result;
}

void sub_21B18DB94(uint64_t a1)
{
  sub_21B18DC98(319, &qword_27CD6ECF0, MEMORY[0x277D3E638], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_21B18DC98(319, qword_2811F9C38, MEMORY[0x277D3E578], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21B18DC98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for PoirotToolTaskParameters.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PoirotToolTaskParameters.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21B18DE50()
{
  result = qword_27CD6ECF8;
  if (!qword_27CD6ECF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6ECF8);
  }

  return result;
}

unint64_t sub_21B18DEA8()
{
  result = qword_27CD6ED00;
  if (!qword_27CD6ED00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6ED00);
  }

  return result;
}

unint64_t sub_21B18DF00()
{
  result = qword_27CD6ED08;
  if (!qword_27CD6ED08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6ED08);
  }

  return result;
}

uint64_t sub_21B18DF54(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_21B20DB28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEF747865546E6F69 || (sub_21B20DB28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_21B20DB28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736E6D756C6F63 && a2 == 0xE700000000000000 || (sub_21B20DB28() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74736566696E616DLL && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_21B20DB28();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_21B18E10C()
{
  result = qword_27CD6ED10;
  if (!qword_27CD6ED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6ED10);
  }

  return result;
}

uint64_t sub_21B18E160(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t HostInfo.bundleID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t HostInfo.versionString.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t HostInfo.mainDatabaseConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HostInfo(0) + 28);

  return sub_21B18E2B8(v3, a1);
}

uint64_t type metadata accessor for HostInfo(uint64_t a1)
{
  result = qword_27CD6EDB8;
  if (!qword_27CD6EDB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B18E2B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED28, &unk_21B212870);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t HostInfo.tempDatabaseConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HostInfo(0) + 32);

  return sub_21B18E2B8(v3, a1);
}

uint64_t HostInfo.supportedQueryParameters.getter()
{
  v1 = *(v0 + *(type metadata accessor for HostInfo(0) + 40));
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  return v2;
}

uint64_t HostInfo.schema.getter()
{
  v1 = type metadata accessor for DataSourceModel(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 32);
  v7 = *(v6 + 16);
  if (v7)
  {
    v21 = MEMORY[0x277D84F90];
    sub_21B18FEB8(0, v7, 0);
    v8 = v21;
    v9 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v10 = *(v2 + 72);
    do
    {
      sub_21B19158C(v9, v5, type metadata accessor for DataSourceModel);
      v12 = *v5;
      v11 = v5[1];
      v13 = v5[5];

      sub_21B191D54(v5, type metadata accessor for DataSourceModel);
      v21 = v8;
      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_21B18FEB8((v14 > 1), v15 + 1, 1);
        v8 = v21;
      }

      *(v8 + 16) = v15 + 1;
      v16 = (v8 + 24 * v15);
      v16[4] = v12;
      v16[5] = v11;
      v16[6] = v13;
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  else if (!*(MEMORY[0x277D84F90] + 16))
  {
    v17 = MEMORY[0x277D84F98];
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED30, &qword_21B212058);
  v17 = sub_21B20D808();
LABEL_9:
  v21 = v17;

  sub_21B18F964(v18, 1, &v21);

  return v21;
}

uint64_t HostInfo.init(bundleID:versionString:dataSources:mainDatabaseConfig:tempDatabaseConfig:supportsTimeWindow:supportedQueryParameters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, void *a9@<X8>, uint64_t a10)
{
  v14 = a10;
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  v15 = type metadata accessor for HostInfo(0);
  sub_21B18FED8(a6, a9 + v15[7]);
  result = sub_21B18FED8(a7, a9 + v15[8]);
  if (a8)
  {
    v17 = 1;
  }

  else
  {
    v17 = 2;
  }

  *(a9 + v15[9]) = v17;
  if (!*(a10 + 16))
  {

    v14 = 0;
  }

  *(a9 + v15[10]) = v14;
  return result;
}

unint64_t sub_21B18E6B8()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v4 = 0x536E6F6973726576;
    if (v1 != 1)
    {
      v4 = 0x72756F5361746164;
    }

    if (*v0)
    {
      return v4;
    }

    else
    {
      return 0x4449656C646E7562;
    }
  }

  else
  {
    v2 = 0xD000000000000019;
    if (v1 == 5)
    {
      v2 = 0xD000000000000013;
    }

    if (*v0 <= 4u)
    {
      return 0xD000000000000012;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_21B18E7B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21B191AF8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21B18E7E0(uint64_t a1)
{
  v2 = sub_21B19137C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B18E81C(uint64_t a1)
{
  v2 = sub_21B19137C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HostInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED38, &qword_21B212060);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B19137C();
  sub_21B20DD08();
  LOBYTE(v14) = 0;
  sub_21B20D9E8();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_21B20D9E8();
    v14 = *(v3 + 32);
    v13 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED48, &qword_21B212068);
    sub_21B19149C(&qword_27CD6ED50, &qword_27CD6ED58, &protocol conformance descriptor for DataSourceModel, MEMORY[0x277D83948]);
    sub_21B20DA48();
    v11 = type metadata accessor for HostInfo(0);
    LOBYTE(v14) = 3;
    type metadata accessor for DatabaseConfig(0);
    sub_21B1915F4(&qword_27CD6ED60, type metadata accessor for DatabaseConfig, &protocol conformance descriptor for DatabaseConfig);
    sub_21B20D9D8();
    LOBYTE(v14) = 4;
    sub_21B20D9D8();
    LOBYTE(v14) = 5;
    sub_21B20D9A8();
    v14 = *(v3 + *(v11 + 40));
    v13 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED68, &qword_21B212070);
    sub_21B1913D0(&qword_27CD6ED70, sub_21B191448, MEMORY[0x277D83948]);
    sub_21B20D9D8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t HostInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED28, &unk_21B212870);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED80, &qword_21B212078);
  v31 = *(v11 - 8);
  v32 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v28 - v13;
  v15 = type metadata accessor for HostInfo(0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = (&v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = a1[3];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_21B19137C();
  v20 = v33;
  sub_21B20DCD8();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

  v33 = v7;
  v22 = v31;
  v21 = v32;
  LOBYTE(v36) = 0;
  *v18 = sub_21B20D8C8();
  v18[1] = v24;
  LOBYTE(v36) = 1;
  v18[2] = sub_21B20D8C8();
  v18[3] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED48, &qword_21B212068);
  v35 = 2;
  sub_21B19149C(&qword_27CD6ED88, &qword_27CD6ED90, &protocol conformance descriptor for DataSourceModel, MEMORY[0x277D83978]);
  sub_21B20D918();
  v29 = 0;
  v18[4] = v36;
  type metadata accessor for DatabaseConfig(0);
  LOBYTE(v36) = 3;
  v28 = sub_21B1915F4(&qword_27CD6ED98, type metadata accessor for DatabaseConfig, &protocol conformance descriptor for DatabaseConfig);
  v26 = v29;
  sub_21B20D8B8();
  if (v26)
  {
    (*(v22 + 8))(v14, v21);
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    sub_21B18FED8(v10, v18 + v15[7]);
    LOBYTE(v36) = 4;
    v27 = v33;
    sub_21B20D8B8();
    sub_21B18FED8(v27, v18 + v15[8]);
    LOBYTE(v36) = 5;
    *(v18 + v15[9]) = sub_21B20D878();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED68, &qword_21B212070);
    v35 = 6;
    sub_21B1913D0(&qword_27CD6EDA0, sub_21B191538, MEMORY[0x277D83978]);
    sub_21B20D8B8();
    (*(v22 + 8))(v14, v21);
    *(v18 + v15[10]) = v36;
    sub_21B19158C(v18, v30, type metadata accessor for HostInfo);
    __swift_destroy_boxed_opaque_existential_1(v34);
    return sub_21B191D54(v18, type metadata accessor for HostInfo);
  }
}

uint64_t HostInfo.id.getter()
{
  MEMORY[0x21CEEBBB0](*v0, v0[1]);
  MEMORY[0x21CEEBBB0](0x3A7265767CLL, 0xE500000000000000);
  MEMORY[0x21CEEBBB0](v0[2], v0[3]);
  return 3826793;
}

uint64_t sub_21B18F2A4@<X0>(void *a1@<X8>)
{
  MEMORY[0x21CEEBBB0](*v1, v1[1]);
  MEMORY[0x21CEEBBB0](0x3A7265767CLL, 0xE500000000000000);
  result = MEMORY[0x21CEEBBB0](v1[2], v1[3]);
  *a1 = 3826793;
  a1[1] = 0xE300000000000000;
  return result;
}

uint64_t HostInfo.hash(into:)(uint64_t a1)
{
  MEMORY[0x21CEEBBB0](*v1, v1[1]);
  MEMORY[0x21CEEBBB0](0x3A7265767CLL, 0xE500000000000000);
  MEMORY[0x21CEEBBB0](v1[2], v1[3]);
  sub_21B20D388();
}

uint64_t HostInfo.hashValue.getter()
{
  sub_21B20DC88();
  MEMORY[0x21CEEBBB0](*v0, v0[1]);
  MEMORY[0x21CEEBBB0](0x3A7265767CLL, 0xE500000000000000);
  MEMORY[0x21CEEBBB0](v0[2], v0[3]);
  sub_21B20D388();

  return sub_21B20DCA8();
}

uint64_t sub_21B18F44C()
{
  sub_21B20DC88();
  MEMORY[0x21CEEBBB0](*v0, v0[1]);
  MEMORY[0x21CEEBBB0](0x3A7265767CLL, 0xE500000000000000);
  MEMORY[0x21CEEBBB0](v0[2], v0[3]);
  sub_21B20D388();

  return sub_21B20DCA8();
}

uint64_t sub_21B18F4E0(uint64_t a1)
{
  MEMORY[0x21CEEBBB0](*v1, v1[1]);
  MEMORY[0x21CEEBBB0](0x3A7265767CLL, 0xE500000000000000);
  MEMORY[0x21CEEBBB0](v1[2], v1[3]);
  sub_21B20D388();
}

uint64_t sub_21B18F578(uint64_t a1)
{
  sub_21B20DC88();
  MEMORY[0x21CEEBBB0](*v1, v1[1]);
  MEMORY[0x21CEEBBB0](0x3A7265767CLL, 0xE500000000000000);
  MEMORY[0x21CEEBBB0](v1[2], v1[3]);
  sub_21B20D388();

  return sub_21B20DCA8();
}

uint64_t static HostInfo.< infix(_:_:)(void *a1, uint64_t *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_21B20DB28()) && a1[2] == a2[2] && a1[3] == a2[3])
  {
    return 0;
  }

  return sub_21B20DB28();
}

uint64_t sub_21B18F6BC(void *a1, uint64_t *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_21B20DB28()) && a1[2] == a2[2] && a1[3] == a2[3])
  {
    return 0;
  }

  return sub_21B20DB28();
}

BOOL sub_21B18F770(uint64_t *a1, void *a2)
{
  v4 = *a2 == *a1 && a2[1] == a1[1];
  if (v4 || (sub_21B20DB28()) && (a2[2] == a1[2] ? (v5 = a2[3] == a1[3]) : (v5 = 0), v5))
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_21B20DB28();
  }

  return (v6 & 1) == 0;
}

BOOL sub_21B18F810(void *a1, uint64_t *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_21B20DB28()) && (a1[2] == a2[2] ? (v5 = a1[3] == a2[3]) : (v5 = 0), v5))
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_21B20DB28();
  }

  return (v6 & 1) == 0;
}

uint64_t sub_21B18F8B0(uint64_t *a1, void *a2)
{
  v4 = *a2 == *a1 && a2[1] == a1[1];
  if (v4 || (sub_21B20DB28()) && a2[2] == a1[2] && a2[3] == a1[3])
  {
    return 0;
  }

  return sub_21B20DB28();
}

void sub_21B18F964(void *a1, char a2, void *a3)
{
  v37 = a1[2];
  if (!v37)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = sub_21B1B9778(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_21B201CCC(v15, v5 & 1);
    v10 = sub_21B1B9778(v7, v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_21B20DBF8();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_21B203F28();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB28, &qword_21B2126E0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v7;
  v22[1] = v6;
  *(v21[7] + 8 * v10) = v8;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_21B20D6A8();
    MEMORY[0x21CEEBBB0](0xD00000000000001BLL, 0x800000021B20EA00);
    sub_21B20D768();
    MEMORY[0x21CEEBBB0](39, 0xE100000000000000);
    sub_21B20D7C8();
    __break(1u);
    return;
  }

  v21[2] = v24;
  if (v37 != 1)
  {
    v5 = a1 + 9;
    v25 = 1;
    while (v25 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v26 = *a3;

      v27 = sub_21B1B9778(v7, v6);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_21B201CCC(v31, 1);
        v27 = sub_21B1B9778(v7, v6);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v7;
      v34[1] = v6;
      *(v33[7] + 8 * v27) = v8;
      v35 = v33[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v25;
      v33[2] = v36;
      v5 += 3;
      if (v37 == v25)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void *sub_21B18FCF8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B190BC4(a1, a2, a3, *v3, &qword_27CD6EC38, &unk_21B211B80, &qword_27CD6EC40, &qword_21B212500);
  *v3 = result;
  return result;
}

char *sub_21B18FD38(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B19059C(a1, a2, a3, *v3, &qword_27CD6EB90, &qword_21B2115B0, &type metadata for DatasetRow);
  *v3 = result;
  return result;
}

void *sub_21B18FD70(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B19030C(a1, a2, a3, *v3, &qword_27CD6EE40, &qword_21B212330, &qword_27CD6EE48, &qword_21B212338);
  *v3 = result;
  return result;
}

void *sub_21B18FDB0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B1906BC(a1, a2, a3, *v3, &qword_27CD6EE38, &qword_21B214180, type metadata accessor for DatasetColumnDescription);
  *v3 = result;
  return result;
}

void *sub_21B18FDF4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B1906BC(a1, a2, a3, *v3, &qword_27CD6EE08, &qword_21B212308, MEMORY[0x277CE1950]);
  *v3 = result;
  return result;
}

void *sub_21B18FE38(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B1909DC(a1, a2, a3, *v3, &qword_27CD6EE28, &qword_21B212320, &qword_27CD6EE30, &qword_21B212328);
  *v3 = result;
  return result;
}

void *sub_21B18FE78(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B19030C(a1, a2, a3, *v3, &qword_27CD6EE80, &qword_21B212370, &qword_27CD6EE88, &qword_21B212378);
  *v3 = result;
  return result;
}

void *sub_21B18FEB8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B190454(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_21B18FED8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED28, &unk_21B212870);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_21B18FF48(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B1906BC(a1, a2, a3, *v3, &qword_27CD6EEB0, &qword_21B2123A0, type metadata accessor for DataSource);
  *v3 = result;
  return result;
}

char *sub_21B18FF8C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B19059C(a1, a2, a3, *v3, &qword_27CD6EEA8, &qword_21B212398, &type metadata for DatasetColumnLayout);
  *v3 = result;
  return result;
}

void *sub_21B18FFC4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B1906BC(a1, a2, a3, *v3, &qword_27CD6EE00, &qword_21B212300, MEMORY[0x277D3E638]);
  *v3 = result;
  return result;
}

char *sub_21B190008(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B190200(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B190028(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B1906BC(a1, a2, a3, *v3, &qword_27CD6EEA0, &qword_21B212390, type metadata accessor for DatasetColumnType);
  *v3 = result;
  return result;
}

void *sub_21B19006C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B190898(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B19008C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B1909DC(a1, a2, a3, *v3, &qword_27CD6EE70, &qword_21B212360, &qword_27CD6EE78, &qword_21B212368);
  *v3 = result;
  return result;
}

void *sub_21B1900CC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B190BC4(a1, a2, a3, *v3, &qword_27CD6EE50, &qword_21B212340, &qword_27CD6EE58, &qword_21B212348);
  *v3 = result;
  return result;
}

void *sub_21B19010C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B190D14(a1, a2, a3, *v3, &qword_27CD6EE60, &qword_21B212350, &qword_27CD6EE68, &qword_21B212358);
  *v3 = result;
  return result;
}

void *sub_21B19014C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B190D14(a1, a2, a3, *v3, &qword_27CD6EE10, &qword_21B212310, &qword_27CD6EE18, &qword_21B213E20);
  *v3 = result;
  return result;
}

char *sub_21B190200(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE20, &qword_21B212318);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21B19030C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_21B190454(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EEC0, &qword_21B2123B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EEC8, &qword_21B2123B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21B19059C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
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
    *(v13 + 3) = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[24 * v11])
    {
      memmove(v15, v16, 24 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_21B1906BC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_21B190898(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE90, &qword_21B212380);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE98, &qword_21B212388);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21B1909DC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

void *sub_21B190BC4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v16[3] = 2 * ((v17 - 32) / 56);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[7 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 56 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_21B190D14(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t _s12PoirotBlocks8HostInfoV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for DatabaseConfig(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED28, &unk_21B212870);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EEB8, &qword_21B2123A8);
  v19 = MEMORY[0x28223BE20](v17, v18);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v46 - v23;
  if (*a1 != *a2 && (sub_21B20DB28() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_21B20DB28() & 1) == 0 || (sub_21B1A5A00(a1[4], a2[4]) & 1) == 0)
  {
    return 0;
  }

  v47 = v13;
  v48 = v8;
  v49 = type metadata accessor for HostInfo(0);
  v25 = *(v49 + 28);
  v26 = *(v17 + 48);
  sub_21B18E2B8(a1 + v25, v24);
  sub_21B18E2B8(a2 + v25, &v24[v26]);
  v27 = *(v5 + 48);
  if (v27(v24, 1, v4) == 1)
  {
    if (v27(&v24[v26], 1, v4) == 1)
    {
      v46 = v27;
      sub_21B186488(v24, &qword_27CD6ED28, &unk_21B212870);
      goto LABEL_14;
    }

LABEL_12:
    v28 = v24;
LABEL_20:
    sub_21B186488(v28, &qword_27CD6EEB8, &qword_21B2123A8);
    return 0;
  }

  sub_21B18E2B8(v24, v16);
  if (v27(&v24[v26], 1, v4) == 1)
  {
    sub_21B191D54(v16, type metadata accessor for DatabaseConfig);
    goto LABEL_12;
  }

  v46 = v27;
  v29 = v48;
  sub_21B191DB4(&v24[v26], v48);
  v30 = static DatabaseConfig.== infix(_:_:)(v16, v29);
  sub_21B191D54(v29, type metadata accessor for DatabaseConfig);
  sub_21B191D54(v16, type metadata accessor for DatabaseConfig);
  sub_21B186488(v24, &qword_27CD6ED28, &unk_21B212870);
  if ((v30 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v31 = v49;
  v32 = *(v49 + 32);
  v33 = *(v17 + 48);
  sub_21B18E2B8(a1 + v32, v21);
  sub_21B18E2B8(a2 + v32, &v21[v33]);
  v34 = v46;
  if (v46(v21, 1, v4) == 1)
  {
    if (v34(&v21[v33], 1, v4) == 1)
    {
      sub_21B186488(v21, &qword_27CD6ED28, &unk_21B212870);
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  v35 = v47;
  sub_21B18E2B8(v21, v47);
  if (v34(&v21[v33], 1, v4) == 1)
  {
    sub_21B191D54(v35, type metadata accessor for DatabaseConfig);
LABEL_19:
    v28 = v21;
    goto LABEL_20;
  }

  v37 = v48;
  sub_21B191DB4(&v21[v33], v48);
  v38 = static DatabaseConfig.== infix(_:_:)(v35, v37);
  sub_21B191D54(v37, type metadata accessor for DatabaseConfig);
  sub_21B191D54(v35, type metadata accessor for DatabaseConfig);
  sub_21B186488(v21, &qword_27CD6ED28, &unk_21B212870);
  if ((v38 & 1) == 0)
  {
    return 0;
  }

LABEL_24:
  v39 = *(v31 + 36);
  v40 = *(a1 + v39);
  v41 = *(a2 + v39);
  if (v40 == 2)
  {
    if (v41 == 2)
    {
      goto LABEL_29;
    }

    return 0;
  }

  result = 0;
  if (v41 != 2 && ((v41 ^ v40) & 1) == 0)
  {
LABEL_29:
    v42 = *(v31 + 40);
    v43 = *(a1 + v42);
    v44 = *(a2 + v42);
    if (v43)
    {
      if (v44)
      {

        v45 = sub_21B1A6390(v43, v44);

        if (v45)
        {
          return 1;
        }
      }
    }

    else if (!v44)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_21B19137C()
{
  result = qword_27CD6ED40;
  if (!qword_27CD6ED40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6ED40);
  }

  return result;
}

uint64_t sub_21B1913D0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD6ED68, &qword_21B212070);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21B191448()
{
  result = qword_27CD6ED78;
  if (!qword_27CD6ED78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6ED78);
  }

  return result;
}

uint64_t sub_21B19149C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD6ED48, &qword_21B212068);
    sub_21B1915F4(a2, type metadata accessor for DataSourceModel, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21B191538()
{
  result = qword_27CD6EDA8;
  if (!qword_27CD6EDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EDA8);
  }

  return result;
}

uint64_t sub_21B19158C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21B1915F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_21B191664(uint64_t a1)
{
  sub_21B191788(319, &qword_27CD6EDC8, type metadata accessor for DataSourceModel, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_21B191788(319, &qword_27CD6EDD0, type metadata accessor for DatabaseConfig, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_21B1917EC();
      if (v3 <= 0x3F)
      {
        sub_21B19183C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21B191788(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21B1917EC()
{
  if (!qword_27CD6EDD8)
  {
    v0 = sub_21B20D5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD6EDD8);
    }
  }
}

void sub_21B19183C(uint64_t a1)
{
  if (!qword_27CD6EDE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD6ED68, &qword_21B212070);
    v1 = sub_21B20D5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_27CD6EDE0);
    }
  }
}

uint64_t getEnumTagSinglePayload for HostInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HostInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21B1919F4()
{
  result = qword_27CD6EDE8;
  if (!qword_27CD6EDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EDE8);
  }

  return result;
}

unint64_t sub_21B191A4C()
{
  result = qword_27CD6EDF0;
  if (!qword_27CD6EDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EDF0);
  }

  return result;
}

unint64_t sub_21B191AA4()
{
  result = qword_27CD6EDF8;
  if (!qword_27CD6EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EDF8);
  }

  return result;
}

uint64_t sub_21B191AF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_21B20DB28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x536E6F6973726576 && a2 == 0xED0000676E697274 || (sub_21B20DB28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72756F5361746164 && a2 == 0xEB00000000736563 || (sub_21B20DB28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000021B20EFA0 == a2 || (sub_21B20DB28() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000021B20EFC0 == a2 || (sub_21B20DB28() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021B20EFE0 == a2 || (sub_21B20DB28() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000019 && 0x800000021B20F000 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_21B20DB28();

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

uint64_t sub_21B191D54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21B191DB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatabaseConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id BiomeUDFContext.biomeDatabase.getter()
{
  v1 = *(v0 + qword_27CD6EED0);
  if (v1)
  {

    return v1;
  }

  else
  {
    result = sub_21B20D7C8();
    __break(1u);
  }

  return result;
}

id sub_21B191EA4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + qword_27CD6EED0);
  if (v3)
  {
    *a2 = v3;

    return v3;
  }

  else
  {
    result = sub_21B20D7C8();
    __break(1u);
  }

  return result;
}

void sub_21B191F28(void *a1)
{
  [a1 db];
  sub_21B20CEB8();
  swift_allocObject();
  sub_21B20CE38();
  sub_21B20C878();
  v3 = *(v1 + qword_27CD6EED0);
  *(v1 + qword_27CD6EED0) = a1;
}

uint64_t static BiomeUDFContext.makeUDFContext()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC78, &unk_21B215AD0);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v7 - v2;
  v4 = sub_21B20D0C8();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = sub_21B1922E0(MEMORY[0x277D84F90], MEMORY[0x277D84F90], v3);
  sub_21B192958(v3);
  return v5;
}

uint64_t BiomeUDFContext.deinit()
{
  v0 = sub_21B20C8C8();

  return v0;
}

uint64_t BiomeUDFContext.__deallocating_deinit()
{
  v0 = sub_21B20C8C8();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_21B1922E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a3;
  v57 = a2;
  v58 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC78, &unk_21B215AD0);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v51 - v10;
  v12 = sub_21B20D0C8();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v51 - v19;
  type metadata accessor for BiomeUDFContext(0);
  *(swift_allocObject() + qword_27CD6EED0) = 0;
  v21 = sub_21B20C8A8();
  if (v3)
  {
    return v21;
  }

  v56 = v17;
  v60 = v8;
  sub_21B18C904(v61, v11);
  v23 = v13 + 48;
  v59 = *(v13 + 48);
  v24 = v59(v11, 1, v12);
  v61 = v12;
  if (v24 == 1)
  {
    sub_21B192958(v11);
  }

  else
  {
    (*(v13 + 32))(v20, v11, v12);
    sub_21B20C898();
    (*(v13 + 8))(v20, v12);
  }

  v25 = v58;
  v26 = *(v58 + 16);
  if (!v26)
  {
    v38 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v27 = v58 + 32;
  v52 = *(v58 + 16);
  v53 = (v13 + 32);
  v54 = (v13 + 8);
  v55 = v21;
  v58 = v13 + 56;
  v51 = v25 + 32;
  do
  {
    sub_21B192A60(v27, v62);
    v29 = v63;
    v30 = v64;
    __swift_project_boxed_opaque_existential_1(v62, v63);
    v31 = (*(v30 + 32))(v29, v30);
    if (v31)
    {
      (*(v32 + 8))(*v31);
      v34 = v63;
      v33 = v64;
      __swift_project_boxed_opaque_existential_1(v62, v63);
      if (!(*(v33 + 32))(v34, v33))
      {

        v28 = v60;
        (*v58)(v60, 1, 1, v61);
LABEL_9:
        sub_21B192958(v28);
        goto LABEL_10;
      }

      v28 = v60;
      sub_21B20C918();

      v35 = v61;
      if (v59(v28, 1, v61) == 1)
      {

        goto LABEL_9;
      }

      v36 = v23;
      v37 = v56;
      (*v53)(v56, v28, v35);
      sub_21B20C898();

      (*v54)(v37, v35);
      v23 = v36;
    }

LABEL_10:
    sub_21B192ABC(v62);
    v27 += 40;
    --v26;
  }

  while (v26);
  v39 = v51;
  v40 = v52;
  v41 = v51;
  v21 = v55;
  do
  {
    sub_21B192A60(v41, v62);
    v42 = v63;
    v43 = v64;
    __swift_project_boxed_opaque_existential_1(v62, v63);
    if ((*(v43 + 32))(v42, v43))
    {
      sub_21B20C978();
    }

    sub_21B192ABC(v62);
    v41 += 40;
    --v40;
  }

  while (v40);
  v65 = MEMORY[0x277D84F90];
  v44 = v52;
  sub_21B20D738();
  do
  {
    sub_21B192A60(v39, v62);
    v45 = v63;
    v46 = v64;
    __swift_project_boxed_opaque_existential_1(v62, v63);
    sub_21B1BD85C(v45, v46);
    sub_21B192ABC(v62);
    sub_21B20D718();
    sub_21B20D748();
    sub_21B20D758();
    sub_21B20D728();
    v39 += 40;
    --v44;
  }

  while (v44);
  v38 = v65;
LABEL_24:
  v62[0] = v38;

  sub_21B1D22C0(v47);
  v48 = objc_allocWithZone(MEMORY[0x277CF1A88]);
  sub_21B192B10();
  v49 = sub_21B20D438();

  v50 = [v48 initWithVirtualTables:v49 privileges:0 isColumnAccessLoggingEnabled:0 enableAuthorizer:0 error:0];

  sub_21B191F28(v50);
  sub_21B20C858();
  return v21;
}

uint64_t sub_21B192958(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC78, &unk_21B215AD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for BiomeUDFContext(uint64_t a1)
{
  result = qword_27CD6EED8;
  if (!qword_27CD6EED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21B192B10()
{
  result = qword_27CD6EEE8;
  if (!qword_27CD6EEE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CD6EEE8);
  }

  return result;
}

uint64_t sub_21B192B6C(void *a1, uint64_t a2, int a3)
{
  v31 = a3;
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = *v6;
  if (*(*v6 + 64))
  {
    v8 = v7[9];
  }

  else
  {
    v9 = v7[16];
    ObjectType = swift_getObjectType();
    v11 = (*(v9 + 24))(ObjectType, v9);
    v8 = v12;
    v7[8] = v11;
    v7[9] = v12;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  v29 = swift_getObjectType();
  v40 = 0;
  swift_unknownObjectRetain();
  v13 = BlockConfig.name.getter();
  v15 = v14;
  BlockConfig.type.getter(&v35);
  v16 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v30 = &v28;
  v17 = *v16;
  v18 = *(*v16 + 160);
  v19 = *(*v16 + 168);
  v20 = *(*v16 + 192);
  *&v34 = v13;
  *(&v34 + 1) = v15;
  *(&v35 + 1) = a2;
  v36 = 0uLL;
  *&v37 = v18;
  v38 = *(v17 + 176);
  *(&v37 + 1) = v19;
  v39 = v20;
  MEMORY[0x28223BE20](v20, v21);
  v26[2] = a1;
  v26[3] = v3;
  v26[4] = a2;
  v27 = v31 & 1;
  v22 = *(v8 + 16);

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EEF8, &unk_21B2126D0);
  v24 = v41[4];
  v22(v41, &v40, &v34, sub_21B193B24, v26, v23, v29, v8);
  v32[2] = v36;
  v32[3] = v37;
  v32[4] = v38;
  v33 = v39;
  v32[0] = v34;
  v32[1] = v35;
  sub_21B193B48(v32);
  if (v24)
  {
    return swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  return v41[0];
}

uint64_t sub_21B192DFC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v11 = *(*__swift_project_boxed_opaque_existential_1(a1, a1[3]) + 152);
  sub_21B193A60(a2, v85);
  if (v89 > 4u)
  {
    if (v89 <= 6u)
    {
      if (v89 != 5)
      {
        v76 = *&v85[32];
        v77 = v86;
        *&v78 = v87;
        *v75 = *v85;
        *&v75[16] = *&v85[16];
        if (a4)
        {
          result = sub_21B18C060(v75);
          *a5 = MEMORY[0x277D84F90];
          return result;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE80, &qword_21B212370);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_21B2110C0;
        sub_21B17FB4C(a1, v83);
        sub_21B18C0B4(v75, &v80);
        v65 = type metadata accessor for UserDefinedBlock();
        swift_allocObject();

        v66 = sub_21B18A8D0(v83, a3, &v80);
        if (!v5)
        {
          *(v15 + 56) = v65;
          *(v15 + 64) = &off_282CA0120;
          *(v15 + 32) = v66;

          result = sub_21B18C060(v75);
          *a5 = v15;
          return result;
        }

        sub_21B18C060(v75);
        goto LABEL_25;
      }

      v72 = *v85;
      v26 = *&v85[16];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE80, &qword_21B212370);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_21B2110C0;
      sub_21B17FB4C(a1, v75);
      v80 = v72;
      v81 = v26;
      v27 = type metadata accessor for MaterializedViewBlock();
      swift_allocObject();

      v28 = sub_21B1868D4(v75, a3, &v80);
      if (!v5)
      {
        *(v15 + 56) = v27;
        *(v15 + 64) = &off_282CA0120;
        *(v15 + 32) = v28;

        *a5 = v15;
        return result;
      }
    }

    else
    {
      v90 = a5;
      if (v89 != 7)
      {
        v13 = a3;
        if (v89 != 8)
        {
          v72 = *v85;
          v41 = *&v85[16];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE80, &qword_21B212370);
          v15 = swift_allocObject();
          *(v15 + 16) = xmmword_21B2110C0;
          sub_21B17FB4C(a1, v75);
          v80 = v72;
          *&v81 = v41;
          ParametersBlock = type metadata accessor for QueryParametersBlock();
          swift_allocObject();

          v39 = sub_21B187848(v75, v13, &v80);
          if (!v5)
          {
            v40 = &off_282CA0330;
            goto LABEL_34;
          }

          goto LABEL_24;
        }

        v14 = *v85;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE80, &qword_21B212370);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_21B2110C0;
        sub_21B17FB4C(a1, v75);
        v16 = type metadata accessor for SentinelBlock();
        v17 = swift_allocObject();
        *(v17 + 16) = 0;
        *(v17 + 24) = v14;
        *(v17 + 40) = a3;
        v18 = __swift_project_boxed_opaque_existential_1(v75, *&v75[24]);
        v19 = *(*v18 + 136);
        v20 = *(*v18 + 144);
        *(v17 + 48) = v19;
        *(v17 + 56) = v20;

        sub_21B188EB8(v19, v20);
        __swift_destroy_boxed_opaque_existential_1(v75);
        *(v15 + 56) = v16;
        *(v15 + 64) = &off_282CA0440;
        *(v15 + 32) = v17;
LABEL_35:

        *v90 = v15;
        return result;
      }

      v71 = a3;
      *&v72 = v11;
      v30 = *v85;
      v31 = v85[16];
      v32 = *&v85[24];
      v33 = v85[32];
      LODWORD(v70) = v85[33];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE80, &qword_21B212370);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_21B2110C0;
      sub_21B17FB4C(a1, v75);
      v80 = v30;
      LOBYTE(v81) = v31;
      *(&v81 + 1) = v32;
      LOBYTE(v82) = v33;
      BYTE1(v82) = v70;
      v24 = type metadata accessor for TimeWindowBlock();
      swift_allocObject();

      v25 = sub_21B189914(v75, v71, &v80);
      if (!v5)
      {
LABEL_13:
        *(v15 + 56) = v24;
        *(v15 + 64) = &off_282CA0120;
        *(v15 + 32) = v25;
        goto LABEL_35;
      }
    }

LABEL_24:

LABEL_25:
    *(v15 + 16) = 0;
  }

  if (v89 <= 1u)
  {
    v71 = a3;
    *&v72 = v11;
    if (v89)
    {
      v42 = *v85;
      v43 = v85[16];
      v70 = *&v85[24];
      v44 = *&v85[40];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE80, &qword_21B212370);
      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_21B2110C0;
      sub_21B17FB4C(a1, v75);
      *(&v81 + 1) = &type metadata for ExtractionBlockConfig;
      v82 = sub_21B193B9C();
      v45 = swift_allocObject();
      *&v80 = v45;
      *(v45 + 16) = v42;
      *(v45 + 32) = v43;
      *(v45 + 40) = v70;
      *(v45 + 56) = v44;
      v46 = type metadata accessor for ExtractionBlock(0);
      v47 = swift_allocObject();
      v48 = OBJC_IVAR____TtC12PoirotBlocks15ExtractionBlock_statement;
      v49 = sub_21B20CF28();
      (*(*(v49 - 8) + 56))(v47 + v48, 1, 1, v49);
      *(v47 + OBJC_IVAR____TtC12PoirotBlocks15ExtractionBlock_initialized) = 0;
      sub_21B17FB4C(v75, v83);
      sub_21B17FB4C(&v80, v73);
      __swift_project_boxed_opaque_existential_1(v83, v84);
      v50 = sub_21B20D368();
      v52 = v51;
      swift_beginAccess();

      v53 = sub_21B1BA38C(v50, v52);
      swift_endAccess();
      if (v53)
      {

        *(v47 + 56) = v53;
        *(v47 + 88) = *(__swift_project_boxed_opaque_existential_1(v73, v74) + 16);
        *&v70 = __swift_project_boxed_opaque_existential_1(v73, v74)[3];
        *(v47 + 64) = v70;
        v54 = __swift_project_boxed_opaque_existential_1(v73, v74);
        v55 = v54[5];
        *(v47 + 72) = v54[4];
        *(v47 + 80) = v55;
        v56 = *(*__swift_project_boxed_opaque_existential_1(v83, v84) + 152);
        v57 = __swift_project_boxed_opaque_existential_1(v73, v74);
        v68 = &v68;
        MEMORY[0x28223BE20](v57, v57);
        v90 = a5;
        v59 = (&v68 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v60 + 16))(v59);
        v61 = *v59;
        v62 = v59[1];
        *(v47 + 16) = 0;
        *(v47 + 24) = v56;
        *(v47 + 32) = v61;
        v63 = v71;
        *(v47 + 40) = v62;
        *(v47 + 48) = v63;

        __swift_destroy_boxed_opaque_existential_1(&v80);
        __swift_destroy_boxed_opaque_existential_1(v75);
        __swift_destroy_boxed_opaque_existential_1(v73);
        __swift_destroy_boxed_opaque_existential_1(v83);
        v64 = v69;
        *(v69 + 56) = v46;
        *(v64 + 64) = &off_282CA0120;
        *(v64 + 32) = v47;

        *v90 = v64;
        return result;
      }

      sub_21B17FC58();
      swift_allocError();
      *v67 = v50;
      *(v67 + 8) = v52;
      *(v67 + 16) = 3;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(&v80);
      __swift_destroy_boxed_opaque_existential_1(v75);
      __swift_destroy_boxed_opaque_existential_1(v73);
      __swift_destroy_boxed_opaque_existential_1(v83);
      type metadata accessor for QueryBlock();
      swift_deallocPartialClassInstance();

      *(v69 + 16) = 0;
    }

    v90 = a5;
    v21 = *v85;
    v22 = v85[24];
    v23 = *&v85[32];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE80, &qword_21B212370);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_21B2110C0;
    v70 = *&v85[8];
    sub_21B17FB4C(a1, &v80);
    *v75 = v21;
    *&v75[8] = v70;
    v75[24] = v22;
    v76 = v23;
    v24 = type metadata accessor for AggregationBlock();
    swift_allocObject();

    v25 = sub_21B17E460(&v80, 0, v71, v75);
    if (v5)
    {
      goto LABEL_24;
    }

    goto LABEL_13;
  }

  if (v89 != 2)
  {
    if (v89 == 3)
    {
      v76 = *&v85[32];
      v77 = v86;
      v78 = v87;
      v79 = v88;
      *v75 = *v85;
      *&v75[16] = *&v85[16];
      sub_21B17FB4C(a1, &v80);
      type metadata accessor for TemplateBlock();
      swift_allocObject();
      result = sub_21B188F8C(&v80, a3, v75);
      if (!v5)
      {
        goto LABEL_18;
      }

      return result;
    }

    v90 = a5;
    v34 = *v85;
    v35 = a3;
    v36 = *&v85[24];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE80, &qword_21B212370);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_21B2110C0;
    *v75 = v34;
    *&v75[8] = *&v85[8];
    *&v75[24] = v36;
    ParametersBlock = type metadata accessor for JoinBlock();
    swift_allocObject();
    v38 = swift_retain_n();
    v39 = sub_21B1810C4(v38, v35, v75);
    if (!v5)
    {
      v40 = &off_282CA0120;
LABEL_34:
      *(v15 + 56) = ParametersBlock;
      *(v15 + 64) = v40;
      *(v15 + 32) = v39;
      goto LABEL_35;
    }

    goto LABEL_24;
  }

  v76 = *&v85[32];
  v77 = v86;
  v78 = v87;
  v79 = v88;
  *v75 = *v85;
  *&v75[16] = *&v85[16];
  sub_21B17FB4C(a1, &v80);
  type metadata accessor for TemplateBlockLegacy();
  swift_allocObject();
  result = sub_21B1895E4(&v80, a3, v75);
  if (!v5)
  {
LABEL_18:
    v29 = *(result + 176);

    *a5 = v29;
  }

  return result;
}

uint64_t sub_21B1938A8(void *a1, int a2, uint64_t a3)
{
  v21 = a2;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = 0;
  v6 = a3 + 32;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v19 = v5++;
    sub_21B193A60(v6, &v20);
    v9 = sub_21B192B6C(a1, v5, v21 & 1);
    if (v3)
    {
      sub_21B193ABC(&v19);

      return v7;
    }

    v10 = v9;
    result = sub_21B193ABC(&v19);
    v11 = *(v10 + 16);
    v12 = v7[2];
    v13 = v12 + v11;
    if (__OFADD__(v12, v11))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) != 0 && v13 <= v7[3] >> 1)
    {
      if (*(v10 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v12 <= v13)
      {
        v14 = v12 + v11;
      }

      else
      {
        v14 = v12;
      }

      result = sub_21B1D2CC8(result, v14, 1, v7);
      v7 = result;
      if (*(v10 + 16))
      {
LABEL_15:
        if ((v7[3] >> 1) - v7[2] < v11)
        {
          goto LABEL_24;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE88, &qword_21B212378);
        swift_arrayInitWithCopy();

        if (v11)
        {
          v15 = v7[2];
          v16 = __OFADD__(v15, v11);
          v17 = v15 + v11;
          if (v16)
          {
            goto LABEL_25;
          }

          v7[2] = v17;
        }

        goto LABEL_4;
      }
    }

    if (v11)
    {
      goto LABEL_23;
    }

LABEL_4:
    v6 += 96;
    if (v4 == v5)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_21B193ABC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EEF0, &unk_21B2123F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21B193B9C()
{
  result = qword_27CD6EF00;
  if (!qword_27CD6EF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EF00);
  }

  return result;
}

uint64_t sub_21B193BF0(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_21B17FB4C(a5, v12);
  v13[0] = a1;
  v13[1] = a3;
  v13[2] = a4;
  v9 = a2[1];
  v14 = *a2;
  v15 = v9;
  v16 = *(a2 + 4);
  sub_21B17FB4C(v12, v17);
  sub_21B193CC0(a2, &v11);

  swift_unknownObjectRetain();
  __swift_destroy_boxed_opaque_existential_1(v12);
  v17[6] = 0;
  v17[7] = 0;
  v17[5] = MEMORY[0x277D84F90];
  sub_21B193D1C();
  return sub_21B193F9C(v13);
}

void sub_21B193D1C()
{
  v2 = v0;
  sub_21B193FCC();
  if (!v1)
  {
    v3 = v0[14];
    if ((v3 & 0x8000000000000000) == 0)
    {
      v4 = *v0;
      v5 = *(*v0 + 16);
      if (v3 < v5)
      {
        v20 = v4 + 32;
        v21 = *v0;
        while (1)
        {
          v6 = MEMORY[0x21CEEC5F0]();
          v7 = v2[13];
          if (v3 >= *(v7 + 2))
          {
            break;
          }

          v8 = v6;
          v25 = *&v7[8 * v3 + 32];

          v9 = sub_21B1940B0(&v25);
          v10 = v25;
          if (v9)
          {
            v11 = v2[15];
            v12 = __OFADD__(v11, 1);
            v13 = v11 + 1;
            if (v12)
            {
              goto LABEL_27;
            }

            v2[15] = v13;
            v14 = v3 + 1;
            if (v14 >= *(v4 + 16))
            {
            }

            else
            {

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v7 = sub_21B1D2E10(0, *(v7 + 2) + 1, 1, v7);
              }

              v16 = *(v7 + 2);
              v15 = *(v7 + 3);
              if (v16 >= v15 >> 1)
              {
                v7 = sub_21B1D2E10((v15 > 1), v16 + 1, 1, v7);
              }

              *(v7 + 2) = v16 + 1;
              *&v7[8 * v16 + 32] = v10;
              v2[13] = v7;
              v2[14] = v14;
              v4 = v21;
              if (v14 >= *(v21 + 16))
              {
                goto LABEL_30;
              }

              sub_21B17FB4C(v20 + 40 * v14, v22);
              v18 = v23;
              v17 = v24;
              __swift_project_boxed_opaque_existential_1(v22, v23);
              (*(*(v17 + 16) + 24))(v18);

              __swift_destroy_boxed_opaque_existential_1(v22);
            }
          }

          else
          {

            if (!*(v7 + 2))
            {
              goto LABEL_28;
            }

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v19 = *(v7 + 2);
              if (!v19)
              {
                goto LABEL_29;
              }
            }

            else
            {
              v7 = sub_21B194898(v7);
              v19 = *(v7 + 2);
              if (!v19)
              {
                goto LABEL_29;
              }
            }

            *(v7 + 2) = v19 - 1;

            v2[13] = v7;
            v2[14] = v3 - 1;
          }

          objc_autoreleasePoolPop(v8);
          v3 = v2[14];
          if (v3 < 0 || v3 >= v5)
          {
            return;
          }
        }

        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
      }
    }
  }
}

void sub_21B193FCC()
{
  v1 = *v0;
  if (*(*v0 + 16))
  {
    v0[14] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF08, &qword_21B212400);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_21B2110C0;
    *(v2 + 32) = MEMORY[0x277D84F90];

    v0[13] = v2;
    if (*(v1 + 16))
    {
      sub_21B17FB4C(v1 + 32, v5);
      v4 = v6;
      v3 = v7;
      __swift_project_boxed_opaque_existential_1(v5, v6);
      (*(*(v3 + 16) + 24))(v4);
      __swift_destroy_boxed_opaque_existential_1(v5);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_21B1940B0(uint64_t result)
{
  v3 = v1[14];
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*v1 + 16))
  {
    v4 = result;
    sub_21B17FB4C(*v1 + 40 * v3 + 32, v48 + 1);
    v6 = v49;
    v5 = v50;
    __swift_project_boxed_opaque_existential_1((v48 + 1), v49);
    if ((*(*(v5 + 16) + 8))(v6))
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      type metadata accessor for LogEntryCollector();
      v8 = swift_allocObject();
      v9 = MEMORY[0x277D84F98];
      *(v8 + 16) = MEMORY[0x277D84F90];
      *(v8 + 24) = v9;
      v34 = v4;
      v32 = v1[2];
      ObjectType = swift_getObjectType();
      v47 = 2;
      sub_21B17FB4C(v48 + 1, &v35);
      v10 = v1[4];
      v30 = v1[3];
      v11 = v1[6];
      v29 = v1[5];
      v28 = v11;
      v12 = v1[7];
      v31 = v2;
      v13 = *(&v36 + 1);
      v14 = v37;
      __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
      v15 = *(v14 + 8);
      v16 = *(v15 + 8);

      swift_unknownObjectRetain();

      v17 = v16(v13, v15);
      v19 = v18;
      v20 = *(&v36 + 1);
      v21 = v37;
      __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
      (*(*(v21 + 8) + 16))(&v42, v20);
      v22 = *(&v36 + 1);
      v23 = v37;
      __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
      v7 = (*(*(v23 + 8) + 24))(v22);
      v24 = __swift_destroy_boxed_opaque_existential_1(&v35);
      v33 = &v27;
      *&v41 = v17;
      *(&v41 + 1) = v19;
      *(&v42 + 1) = v7;
      v43 = 0uLL;
      *&v44 = v30;
      *(&v44 + 1) = v10;
      *&v45 = v29;
      *(&v45 + 1) = v28;
      v46 = v12;
      MEMORY[0x28223BE20](v24, v25);
      v26 = v31;
      (*(v32 + 16))(v48, &v47, &v41, sub_21B1948AC);
      if (v26)
      {
        v37 = v43;
        v38 = v44;
        v39 = v45;
        v40 = v46;
        v35 = v41;
        v36 = v42;
        sub_21B193B48(&v35);
        swift_unknownObjectRelease();

        __swift_destroy_boxed_opaque_existential_1((v48 + 1));
        return v7 & 1;
      }

      v37 = v43;
      v38 = v44;
      v39 = v45;
      v40 = v46;
      v35 = v41;
      v36 = v42;
      sub_21B193B48(&v35);
      swift_unknownObjectRelease();

      LOBYTE(v7) = v48[0];
    }

    __swift_destroy_boxed_opaque_existential_1((v48 + 1));
    return v7 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B194498@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, _BYTE *a5@<X8>)
{
  v10 = sub_21B19470C(0x7845657069636572, 0xEF6E6F6974756365, sub_21B1948CC);
  if (!v5)
  {
    *a5 = v10 & 1;
  }

  return sub_21B194544(a1, a2, a3);
}

uint64_t sub_21B194544(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 120);
  v8 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  (*(*(v7 + 8) + 16))(v18, v8);
  v10 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);
  v11 = (*(*(v9 + 8) + 8))(v10);
  v13 = v12;
  sub_21B17FB4C(a1 + 64, v19);
  v14 = v20;
  v15 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v17 = v6;
  v18[1] = v11;
  v18[2] = v13;
  (*(v15 + 8))(a3, &off_282CA47E8, &off_282CA47F8, &v17, v14, v15);

  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_21B194680@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  result = (*(*(v9 + 16) + 16))(a2, a3, &off_282CA47F8, v8);
  if (!v4)
  {
    *a4 = result & 1;
  }

  return result;
}

uint64_t sub_21B19470C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  v5 = v3;
  a3(&v18);
  if (v4)
  {
    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a2;
    v8[4] = v4;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_21B1948EC;
    *(v9 + 24) = v8;
    swift_beginAccess();
    v10 = *(v5 + 16);

    v11 = v4;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 16) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_21B1D292C(0, v10[2] + 1, 1, v10);
      *(v5 + 16) = v10;
    }

    v14 = v10[2];
    v13 = v10[3];
    if (v14 >= v13 >> 1)
    {
      v10 = sub_21B1D292C((v13 > 1), v14 + 1, 1, v10);
    }

    v10[2] = v14 + 1;
    v15 = &v10[2 * v14];
    v15[4] = sub_21B19490C;
    v15[5] = v9;
    *(v5 + 16) = v10;
    swift_endAccess();

    swift_willThrow();
  }

  else
  {
    v16 = v18;
  }

  return v16 & 1;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_21B19494C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_21B194994(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21B194A04(uint64_t result, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v10 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 40); ; i += 2)
    {
      v8 = *i;
      v9[0] = *(i - 1);
      v9[1] = v8;

      a2(&v10, v9);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return v10;
      }
    }
  }

  return result;
}

uint64_t BlocksController.deinit()
{

  sub_21B20CE48();

  swift_unknownObjectRelease();

  sub_21B186488(v0 + 48, &qword_27CD6EC70, &qword_21B211CB0);

  return v0;
}

uint64_t BlocksController.__deallocating_deinit()
{

  sub_21B20CE48();

  swift_unknownObjectRelease();

  sub_21B186488(v0 + 48, &qword_27CD6EC70, &qword_21B211CB0);

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t BlocksController.__allocating_init(_:userBlockFactory:activityMonitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_opt_self() defaultManager];
  sub_21B18BFF8(a2, v14, &qword_27CD6EC70, &qword_21B211CB0);
  type metadata accessor for BlocksController();
  v9 = swift_allocObject();
  sub_21B20CEB8();
  swift_allocObject();
  v10 = sub_21B20CE38();
  if (v4)
  {

    swift_unknownObjectRelease();
    sub_21B186488(a2, &qword_27CD6EC70, &qword_21B211CB0);
    sub_21B186488(v14, &qword_27CD6EC70, &qword_21B211CB0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = v10;
    sub_21B186488(a2, &qword_27CD6EC70, &qword_21B211CB0);
    *(v9 + 16) = v8;
    *(v9 + 24) = a3;
    *(v9 + 32) = a4;
    *(v9 + 40) = v11;
    v12 = v14[1];
    *(v9 + 48) = v14[0];
    *(v9 + 64) = v12;
    *(v9 + 80) = v15;
    *(v9 + 88) = 0;
  }

  return v9;
}

{
  v8 = [objc_opt_self() defaultManager];
  sub_21B18BFF8(a2, v13, &qword_27CD6EC70, &qword_21B211CB0);
  type metadata accessor for BlocksController();
  v9 = swift_allocObject();
  v10 = sub_21B20C868();
  sub_21B186488(a2, &qword_27CD6EC70, &qword_21B211CB0);
  *(v9 + 16) = v8;
  *(v9 + 24) = a3;
  *(v9 + 32) = a4;
  *(v9 + 40) = v10;
  v11 = v13[1];
  *(v9 + 48) = v13[0];
  *(v9 + 64) = v11;
  *(v9 + 80) = v14;
  *(v9 + 88) = a1;
  return v9;
}

uint64_t sub_21B194E24()
{
  if (*(v0 + 88))
  {

    sub_21B20C848();
    if (v1)
    {
    }

    else
    {
      swift_getObjectType();
      sub_21B20D128();

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    result = sub_21B20D7C8();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B194F00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LoggingType(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21B20C678();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8);
  sub_21B1950C4(a2, v7);
  type metadata accessor for BaseHostEnvironment(0);
  v13 = swift_allocObject();
  (*(v9 + 32))(v13 + OBJC_IVAR____TtC12PoirotBlocks19BaseHostEnvironment_recipeURL, v12, v8);
  sub_21B197B98(v7, v13 + OBJC_IVAR____TtC12PoirotBlocks19BaseHostEnvironment_loggingType, type metadata accessor for LoggingType);
  sub_21B195940(v13, &protocol witness table for BaseHostEnvironment, 0, 0);
}

uint64_t sub_21B1950C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LoggingType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B195128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v68 = a5;
  v67 = a4;
  v70 = a3;
  v8 = type metadata accessor for LoggingType(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_21B20C548();
  v65 = *(v66 - 1);
  MEMORY[0x28223BE20](v66, v12);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_21B20C678();
  v84 = *(v69 - 8);
  v16 = MEMORY[0x28223BE20](v69, v15);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v52 - v20;
  sub_21B18BFF8(v5 + 48, v83, &qword_27CD6EC70, &qword_21B211CB0);
  v23 = *(v5 + 24);
  v22 = *(v5 + 32);
  sub_21B18BFF8(v70, v82, &qword_27CD6EF10, &qword_21B212468);
  v70 = a2;
  v24 = v71;
  sub_21B1983AC(a2, v83, &v75);
  if (v24)
  {
    sub_21B186488(v82, &qword_27CD6EF10, &qword_21B212468);
    sub_21B186488(v83, &qword_27CD6EC70, &qword_21B211CB0);
  }

  else
  {
    v57 = v22;
    v58 = v5;
    v53 = v11;
    v64 = v23;
    v63 = 0;
    v54 = v75;
    v62 = v76;
    v56 = v77;
    v55 = v78;
    v61 = v79;
    v60 = v80;
    v59 = v81;
    v25 = a1;
    ObjectType = swift_getObjectType();
    (*(v70 + 8))();
    v75 = 0x73656972657551;
    v76 = 0xE700000000000000;
    v27 = v65;
    v28 = v66;
    (*(v65 + 104))(v14, *MEMORY[0x277CC91D8], v66);
    sub_21B17FBB0();
    v71 = v21;
    sub_21B20C668();
    (*(v27 + 8))(v14, v28);
    v29 = v84 + 8;
    v66 = *(v84 + 8);
    (v66)(v18, v69);
    sub_21B18BFF8(v83, &v75, &qword_27CD6EC70, &qword_21B211CB0);
    sub_21B18BFF8(v82, &v72, &qword_27CD6EF10, &qword_21B212468);
    v84 = v29;
    if (v73)
    {
      v30 = v25;
      sub_21B17C284(&v72, v74);
      v31 = v68;
      v32 = v70;
      v33 = v64;
      v34 = v58;
      v35 = v57;
    }

    else
    {
      v32 = v70;
      v36 = v53;
      v30 = v25;
      (*(v70 + 16))(ObjectType, v70);
      LoggingType.makeLogHandler()(v74);
      sub_21B1972F0(v36);
      v31 = v68;
      v33 = v64;
      v34 = v58;
      v35 = v57;
      if (v73)
      {
        sub_21B186488(&v72, &qword_27CD6EF10, &qword_21B212468);
      }
    }

    v70 = type metadata accessor for RecipeProcessor();
    v5 = swift_allocObject();
    v37 = *(v34 + 16);
    v38 = *(v34 + 40);
    *(v5 + 144) = v31;
    *(v5 + 152) = v38;
    *(v5 + 120) = v30;
    *(v5 + 128) = v32;
    v39 = v67;
    *(v5 + 136) = v67;
    *(v5 + 56) = v37;
    *(v5 + 64) = v33;
    *(v5 + 72) = v35;
    sub_21B17FB4C(v74, v5 + 16);
    v40 = v62;
    *(v5 + 160) = v54;
    *(v5 + 168) = v40;
    v41 = v55;
    *(v5 + 176) = v56;
    *(v5 + 184) = v41;
    v42 = v60;
    *(v5 + 192) = v61;
    *(v5 + 200) = v42;
    *(v5 + 208) = v59;
    sub_21B18BFF8(&v75, v5 + 80, &qword_27CD6EC70, &qword_21B211CB0);
    v43 = v37;

    swift_unknownObjectRetain();
    sub_21B188EB8(v39, v68);

    swift_unknownObjectRetain();

    v44 = sub_21B197980(MEMORY[0x277D84F90]);
    v46 = MEMORY[0x28223BE20](v44, v45);
    v47 = v71;
    *(&v52 - 2) = v43;
    *(&v52 - 1) = v47;
    v48 = v63;
    v49 = sub_21B194A04(v46, sub_21B1980DC, (&v52 - 4), v42);
    if (v48)
    {

      __swift_destroy_boxed_opaque_existential_1(v74);
      sub_21B186488(&v75, &qword_27CD6EC70, &qword_21B211CB0);
      sub_21B186488(v82, &qword_27CD6EF10, &qword_21B212468);
      sub_21B186488(v83, &qword_27CD6EC70, &qword_21B211CB0);
      (v66)(v47, v69);
      __swift_destroy_boxed_opaque_existential_1((v5 + 16));

      swift_unknownObjectRelease();
      sub_21B186488(v5 + 80, &qword_27CD6EC70, &qword_21B211CB0);
      swift_unknownObjectRelease();
      sub_21B188EC8(*(v5 + 136), *(v5 + 144));

      swift_deallocPartialClassInstance();
    }

    else
    {
      v51 = v49;

      __swift_destroy_boxed_opaque_existential_1(v74);
      sub_21B186488(&v75, &qword_27CD6EC70, &qword_21B211CB0);
      sub_21B186488(v82, &qword_27CD6EF10, &qword_21B212468);
      sub_21B186488(v83, &qword_27CD6EC70, &qword_21B211CB0);
      (v66)(v47, v69);
      *(v5 + 216) = v51;
    }
  }

  return v5;
}

uint64_t sub_21B195940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v130 = a4;
  v128 = a3;
  v140 = sub_21B20C548();
  v135 = *(v140 - 8);
  MEMORY[0x28223BE20](v140, v8);
  v139 = (&v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v141 = sub_21B20C678();
  v136 = *(v141 - 8);
  v11 = MEMORY[0x28223BE20](v141, v10);
  v131 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v134 = &v103 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v122 = &v103 - v18;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v123 = &v103 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v127 = &v103 - v24;
  MEMORY[0x28223BE20](v23, v25);
  v129 = &v103 - v26;
  v27 = type metadata accessor for LoggingType(0);
  MEMORY[0x28223BE20](v27 - 8, v28);
  v30 = &v103 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v33 = a2 + 16;
  v32 = *(a2 + 16);
  v137 = ObjectType;
  v126 = v32;
  v32(ObjectType, a2);
  sub_21B2054D4(v157);
  sub_21B1972F0(v30);
  type metadata accessor for LogEntryCollector();
  v34 = swift_allocObject();
  *(v34 + 16) = MEMORY[0x277D84F90];
  v160 = (v34 + 16);
  v133 = v34;
  *(v34 + 24) = MEMORY[0x277D84F98];
  sub_21B17FB4C(v157, &v155);
  sub_21B18BFF8(v4 + 48, v154, &qword_27CD6EC70, &qword_21B211CB0);
  v35 = *(v4 + 24);
  v36 = *(v5 + 32);
  v37 = v5;
  sub_21B18BFF8(&v155, v153, &qword_27CD6EF10, &qword_21B212468);
  v38 = a2;
  v39 = v142;
  sub_21B1983AC(a2, v154, &v146);
  v40 = MEMORY[0x277CC91D8];
  v142 = v39;
  v132 = v38;
  v138 = a1;
  if (v39)
  {
    sub_21B186488(v153, &qword_27CD6EF10, &qword_21B212468);
    sub_21B186488(v154, &qword_27CD6EC70, &qword_21B211CB0);
    sub_21B186488(&v155, &qword_27CD6EF10, &qword_21B212468);
    v41 = v142;
  }

  else
  {
    v116 = v36;
    v117 = v37;
    v114 = v148;
    v115 = v146;
    v112 = v33;
    v113 = v149;
    v124 = v35;
    v125 = v150;
    v119 = v151;
    v120 = v147;
    v118 = v152;
    v42 = v38;
    v43 = v38 + 8;
    v44 = *(v38 + 8);
    v45 = v127;
    v46 = v137;
    v104 = v44;
    v105 = v43;
    v44(v137, v42);
    v146 = 0x73656972657551;
    v147 = 0xE700000000000000;
    v47 = *v40;
    v48 = v135;
    v49 = *(v135 + 104);
    v50 = v139;
    v51 = v140;
    v110 = v47;
    v111 = v135 + 104;
    v109 = v49;
    v49(v139);
    v108 = sub_21B17FBB0();
    sub_21B20C668();
    v106 = *(v48 + 8);
    v107 = v48 + 8;
    v106(v50, v51);
    v52 = *(v136 + 8);
    v127 = (v136 + 8);
    v121 = v52;
    v52(v45, v141);
    sub_21B18BFF8(v154, &v146, &qword_27CD6EC70, &qword_21B211CB0);
    sub_21B18BFF8(v153, &v143, &qword_27CD6EF10, &qword_21B212468);
    if (v144)
    {
      sub_21B17C284(&v143, v145);
      v53 = v138;
      v54 = v117;
    }

    else
    {
      v55 = v138;
      v126(v46, v42);
      LoggingType.makeLogHandler()(v145);
      sub_21B1972F0(v30);
      v53 = v55;
      v54 = v117;
      if (v144)
      {
        sub_21B186488(&v143, &qword_27CD6EF10, &qword_21B212468);
      }
    }

    v126 = type metadata accessor for RecipeProcessor();
    v56 = swift_allocObject();
    v57 = *(v54 + 16);
    v58 = *(v54 + 40);
    *(v56 + 120) = v53;
    *(v56 + 128) = v42;
    *(v56 + 136) = v128;
    *(v56 + 144) = v130;
    *(v56 + 152) = v58;
    v59 = v124;
    *(v56 + 56) = v57;
    *(v56 + 64) = v59;
    *(v56 + 72) = v116;
    sub_21B17FB4C(v145, v56 + 16);
    v60 = v114;
    v61 = v119;
    v62 = v120;
    *(v56 + 160) = v115;
    *(v56 + 168) = v62;
    v63 = v113;
    *(v56 + 176) = v60;
    *(v56 + 184) = v63;
    *(v56 + 192) = v125;
    *(v56 + 200) = v61;
    *(v56 + 208) = v118;
    sub_21B18BFF8(&v146, v56 + 80, &qword_27CD6EC70, &qword_21B211CB0);
    v64 = v57;

    swift_unknownObjectRetain();
    sub_21B188EB8(v128, v130);

    swift_unknownObjectRetain();

    v65 = sub_21B197980(MEMORY[0x277D84F90]);
    v67 = MEMORY[0x28223BE20](v65, v66);
    *(&v103 - 2) = v64;
    v68 = v129;
    *(&v103 - 1) = v129;
    v69 = v142;
    v70 = sub_21B194A04(v67, sub_21B1980DC, (&v103 - 4), v61);
    v41 = v69;
    if (!v69)
    {
      v71 = v70;

      __swift_destroy_boxed_opaque_existential_1(v145);
      sub_21B186488(&v146, &qword_27CD6EC70, &qword_21B211CB0);
      sub_21B186488(v153, &qword_27CD6EF10, &qword_21B212468);
      sub_21B186488(v154, &qword_27CD6EC70, &qword_21B211CB0);
      sub_21B186488(&v155, &qword_27CD6EF10, &qword_21B212468);
      v72 = v141;
      v121(v68, v141);
      *(v56 + 216) = v71;
      sub_21B198E10();
      v73 = v140;

      v96 = v139;
      v97 = v158;
      v136 = v159;
      v142 = __swift_project_boxed_opaque_existential_1(v157, v158);
      v104(v137, v132);
      sub_21B20C338();
      swift_allocObject();
      v160 = sub_21B20C328();
      v155 = 0x6A2E657069636572;
      v156 = 0xEB000000006E6F73;
      v109(v96, v110, v73);
      v98 = v122;
      sub_21B20C658();
      v106(v96, v73);
      v99 = sub_21B20C688();
      v101 = v100;
      v140 = v97;
      v102 = v121;
      v121(v98, v72);
      sub_21B198044();
      sub_21B20C308();
      v102(v123, v72);
      sub_21B17DAF8(v99, v101);

      (*(*(v136 + 16) + 8))(v133, &off_282CA47E8, &off_282CA47F8, &v146, v140);
      sub_21B198098(v146, v147, v148, v149, v150);

      return __swift_destroy_boxed_opaque_existential_1(v157);
    }

    __swift_destroy_boxed_opaque_existential_1(v145);
    sub_21B186488(&v146, &qword_27CD6EC70, &qword_21B211CB0);
    sub_21B186488(v153, &qword_27CD6EF10, &qword_21B212468);
    sub_21B186488(v154, &qword_27CD6EC70, &qword_21B211CB0);
    sub_21B186488(&v155, &qword_27CD6EF10, &qword_21B212468);
    v121(v68, v141);
    __swift_destroy_boxed_opaque_existential_1((v56 + 16));

    swift_unknownObjectRelease();
    sub_21B186488(v56 + 80, &qword_27CD6EC70, &qword_21B211CB0);
    swift_unknownObjectRelease();
    sub_21B188EC8(*(v56 + 136), *(v56 + 144));

    swift_deallocPartialClassInstance();
  }

  v74 = v139;
  v75 = swift_allocObject();
  v75[2] = 0xD000000000000010;
  v75[3] = 0x800000021B20F260;
  v75[4] = v41;
  v76 = swift_allocObject();
  *(v76 + 16) = sub_21B1948EC;
  *(v76 + 24) = v75;
  v77 = v160;
  swift_beginAccess();
  v78 = *v77;
  v79 = v41;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v77 = v78;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v78 = sub_21B1D292C(0, v78[2] + 1, 1, v78);
    *v160 = v78;
  }

  v82 = v78[2];
  v81 = v78[3];
  v83 = v74;
  if (v82 >= v81 >> 1)
  {
    v78 = sub_21B1D292C((v81 > 1), v82 + 1, 1, v78);
  }

  v78[2] = v82 + 1;
  v84 = &v78[2 * v82];
  v84[4] = sub_21B19490C;
  v84[5] = v76;
  *v160 = v78;
  swift_endAccess();

  v85 = v41;
  swift_willThrow();
  v86 = v158;
  v130 = v159;
  v139 = __swift_project_boxed_opaque_existential_1(v157, v158);
  (*(v132 + 8))(v137);
  sub_21B20C338();
  swift_allocObject();
  v160 = sub_21B20C328();
  v155 = 0x6A2E657069636572;
  v156 = 0xEB000000006E6F73;
  v87 = v135;
  v88 = v140;
  (*(v135 + 104))(v83, *MEMORY[0x277CC91D8], v140);
  sub_21B17FBB0();
  v89 = v131;
  sub_21B20C658();
  (*(v87 + 8))(v83, v88);
  v90 = sub_21B20C688();
  v92 = v91;
  v140 = v86;
  v142 = v85;
  v93 = *(v136 + 8);
  v94 = v141;
  v93(v89, v141);
  sub_21B198044();
  sub_21B20C308();
  v93(v134, v94);
  sub_21B17DAF8(v90, v92);

  (*(*(v130 + 16) + 8))(v133, &off_282CA47E8, &off_282CA47F8, &v146, v140);
  sub_21B198098(v146, v147, v148, v149, v150);

  return __swift_destroy_boxed_opaque_existential_1(v157);
}

uint64_t sub_21B19686C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LoggingType(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = (&v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_21B20C678();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v17[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8);
  sub_21B17FB4C(a2, v17);
  type metadata accessor for DebugLogHandler();
  v13 = swift_allocObject();
  *(v13 + 16) = MEMORY[0x277D84F90];
  sub_21B17FB4C(v17, v13 + 32);
  __swift_destroy_boxed_opaque_existential_1(v17);
  *(v13 + 24) = MEMORY[0x277D84FA0];
  *v7 = v13;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for BaseHostEnvironment(0);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + OBJC_IVAR____TtC12PoirotBlocks19BaseHostEnvironment_recipeURL, v12, v8);
  sub_21B197B98(v7, v14 + OBJC_IVAR____TtC12PoirotBlocks19BaseHostEnvironment_loggingType, type metadata accessor for LoggingType);
  sub_21B195940(v14, &protocol witness table for BaseHostEnvironment, 0, 0);
}

uint64_t sub_21B196A94(uint64_t a1)
{
  v48 = sub_21B20C548();
  v47 = *(v48 - 1);
  MEMORY[0x28223BE20](v48, v2);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LoggingType(0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21B20C678();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v50 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v38 - v15;
  v17 = *(v10 + 16);
  v17(&v38 - v15, a1, v9);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for BaseHostEnvironment(0);
  v18 = swift_allocObject();
  (*(v10 + 32))(v18 + OBJC_IVAR____TtC12PoirotBlocks19BaseHostEnvironment_recipeURL, v16, v9);
  sub_21B197B98(v8, v18 + OBJC_IVAR____TtC12PoirotBlocks19BaseHostEnvironment_loggingType, type metadata accessor for LoggingType);
  v64 = 0;
  memset(v63, 0, sizeof(v63));
  swift_storeEnumTagMultiPayload();
  sub_21B2054D4(v62);
  sub_21B1972F0(v8);
  v19 = v51;
  sub_21B1983AC(&protocol witness table for BaseHostEnvironment, v63, &v55);
  if (v19)
  {

    sub_21B186488(v62, &qword_27CD6EF10, &qword_21B212468);
    return sub_21B186488(v63, &qword_27CD6EC70, &qword_21B211CB0);
  }

  else
  {
    v51 = 0;
    v41 = v55;
    v46 = v56;
    v40 = v57;
    v39 = v58;
    v44 = v59;
    v43 = v60;
    v42 = v61;
    v17(v16, v18 + OBJC_IVAR____TtC12PoirotBlocks19BaseHostEnvironment_recipeURL, v9);
    v55 = 0x73656972657551;
    v56 = 0xE700000000000000;
    v21 = v47;
    v22 = v48;
    (*(v47 + 104))(v4, *MEMORY[0x277CC91D8], v48);
    sub_21B17FBB0();
    sub_21B20C668();
    (*(v21 + 8))(v4, v22);
    v48 = *(v10 + 8);
    (v48)(v16, v9);
    sub_21B18BFF8(v63, &v55, &qword_27CD6EC70, &qword_21B211CB0);
    sub_21B18BFF8(v62, &v52, &qword_27CD6EF10, &qword_21B212468);
    v47 = v9;
    v45 = v10 + 8;
    if (v53)
    {
      sub_21B17C284(&v52, v54);
      v23 = v49;
    }

    else
    {
      sub_21B1950C4(v18 + OBJC_IVAR____TtC12PoirotBlocks19BaseHostEnvironment_loggingType, v8);
      LoggingType.makeLogHandler()(v54);
      sub_21B1972F0(v8);
      v23 = v49;
      if (v53)
      {
        sub_21B186488(&v52, &qword_27CD6EF10, &qword_21B212468);
      }
    }

    v49 = type metadata accessor for RecipeProcessor();
    v24 = swift_allocObject();
    v25 = *(v23 + 16);
    *(v24 + 152) = *(v23 + 40);
    *(v24 + 120) = v18;
    *(v24 + 128) = &protocol witness table for BaseHostEnvironment;
    *(v24 + 136) = 0;
    *(v24 + 64) = 0;
    *(v24 + 72) = 0;
    *(v24 + 56) = v25;
    *(v24 + 144) = 0;
    sub_21B17FB4C(v54, v24 + 16);
    v26 = v46;
    *(v24 + 160) = v41;
    *(v24 + 168) = v26;
    v27 = v39;
    *(v24 + 176) = v40;
    *(v24 + 184) = v27;
    v28 = v43;
    *(v24 + 192) = v44;
    *(v24 + 200) = v28;
    *(v24 + 208) = v42;
    sub_21B18BFF8(&v55, v24 + 80, &qword_27CD6EC70, &qword_21B211CB0);

    v29 = v25;

    v30 = sub_21B197980(MEMORY[0x277D84F90]);
    v32 = MEMORY[0x28223BE20](v30, v31);
    *(&v38 - 2) = v29;
    v33 = v50;
    *(&v38 - 1) = v50;
    v34 = v51;
    v35 = sub_21B194A04(v32, sub_21B197A84, (&v38 - 4), v28);
    v51 = v34;
    if (v34)
    {

      __swift_destroy_boxed_opaque_existential_1(v54);
      sub_21B186488(&v55, &qword_27CD6EC70, &qword_21B211CB0);
      sub_21B186488(v62, &qword_27CD6EF10, &qword_21B212468);
      sub_21B186488(v63, &qword_27CD6EC70, &qword_21B211CB0);
      (v48)(v33, v47);
      __swift_destroy_boxed_opaque_existential_1((v24 + 16));

      swift_unknownObjectRelease();
      sub_21B186488(v24 + 80, &qword_27CD6EC70, &qword_21B211CB0);
      swift_unknownObjectRelease();
      sub_21B188EC8(*(v24 + 136), *(v24 + 144));

      return swift_deallocPartialClassInstance();
    }

    else
    {
      v36 = v35;

      __swift_destroy_boxed_opaque_existential_1(v54);
      sub_21B186488(&v55, &qword_27CD6EC70, &qword_21B211CB0);
      sub_21B186488(v62, &qword_27CD6EF10, &qword_21B212468);
      sub_21B186488(v63, &qword_27CD6EC70, &qword_21B211CB0);
      (v48)(v33, v47);
      *(v24 + 216) = v36;
      v37 = v51;
      sub_21B199320(&v65);
      if (v37)
      {
      }

      else
      {
      }
    }
  }
}

uint64_t sub_21B1972F0(uint64_t a1)
{
  v2 = type metadata accessor for LoggingType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21B19734C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF48, &qword_21B2124F8);
    v3 = sub_21B20D808();
    v4 = a1 + 32;

    while (1)
    {
      sub_21B18BFF8(v4, &v13, &qword_27CD6EC40, &qword_21B212500);
      v5 = v13;
      v6 = v14;
      result = sub_21B1B9778(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_21B17C284(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_21B197480(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF28, &qword_21B2124D8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF30, &qword_21B2124E0);
    v8 = sub_21B20D808();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_21B18BFF8(v10, v6, &qword_27CD6EF28, &qword_21B2124D8);
      v12 = *v6;
      v13 = v6[1];
      result = sub_21B1B9778(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for DatasetColumnDescription(0);
      result = sub_21B197B98(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for DatasetColumnDescription);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_21B19767C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF60, &qword_21B212518);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF68, &qword_21B212520);
    v8 = sub_21B20D808();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_21B18BFF8(v10, v6, &qword_27CD6EF60, &qword_21B212518);
      v12 = *v6;
      v13 = v6[1];
      result = sub_21B1B9778(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_21B20D198();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_21B197868(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF20, &qword_21B2124D0);
    v3 = sub_21B20D808();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_21B1B9778(v5, v6);
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

unint64_t sub_21B197980(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF78, &unk_21B212530);
    v3 = sub_21B20D808();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21B1B9778(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_21B197B98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21B197C00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF70, &qword_21B212528);
    v3 = sub_21B20D808();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v8 = *(i - 2);
      v7 = *(i - 1);
      v9 = *i;

      result = sub_21B1B9778(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = (v3[7] + 24 * result);
      *v13 = v8;
      v13[1] = v7;
      v13[2] = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

unint64_t sub_21B197D24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF50, &qword_21B212508);
    v3 = sub_21B20D808();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_21B1B9778(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_21B197E38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF58, &qword_21B212510);
    v3 = sub_21B20D808();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21B1B9778(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_21B197F48(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_21B20D808();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_21B1B9778(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_21B198044()
{
  result = qword_27CD6EF80;
  if (!qword_27CD6EF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EF80);
  }

  return result;
}

void sub_21B198098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

uint64_t sub_21B1980F4()
{
  v0 = sub_21B20C828();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B20CA48();
  v5 = (*(v1 + 88))(v4, v0);
  if (v5 == *MEMORY[0x277D3E5C8])
  {
    return 2;
  }

  if (v5 == *MEMORY[0x277D3E5B8])
  {
    return 4;
  }

  if (v5 == *MEMORY[0x277D3E5D8] || v5 == *MEMORY[0x277D3E5E0] || v5 == *MEMORY[0x277D3E5F0] || v5 == *MEMORY[0x277D3E5F8])
  {
    return 0;
  }

  if (v5 == *MEMORY[0x277D3E5D0] || v5 == *MEMORY[0x277D3E5E8] || v5 == *MEMORY[0x277D3E608])
  {
    return 1;
  }

  if (v5 == *MEMORY[0x277D3E5C0])
  {
    return 0;
  }

  if (v5 == *MEMORY[0x277D3E600])
  {
    return 4;
  }

  result = sub_21B20D7C8();
  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_12PoirotBlocks11RecipeErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_21B1982F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_21B198340(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_21B198384(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

void sub_21B1983AC(uint64_t a2@<X1>, uint64_t a3@<X2>, void *x8_0@<X8>)
{
  v8 = sub_21B20C678();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  sub_21B206120(ObjectType, a2, v11);
  if (v4)
  {
    v17 = v4;
    v13 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB28, &qword_21B2126E0);
    if (swift_dynamicCast())
    {
      sub_21B1998C0(v15[0], v15[1], v16);
    }

    else
    {
      sub_21B17FC58();
      swift_allocError();
      *v14 = v4;
      *(v14 + 8) = 0;
      *(v14 + 16) = 1;
      swift_willThrow();
    }
  }

  else
  {
    sub_21B1998FC(a3, v15);
    sub_21B198510(v11, v15, x8_0);
  }
}

uint64_t sub_21B198510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_21B20D7B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21B20C688();
  if (v3)
  {
    sub_21B199804(a2);
    v26 = sub_21B20C678();
    return (*(*(v26 - 8) + 8))(a1, v26);
  }

  else
  {
    v14 = v12;
    v43 = v13;
    v35 = a3;
    sub_21B20C338();
    swift_allocObject();
    sub_21B20C328();
    if (qword_27CD6E940 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v7, qword_27CD7E028);
    (*(v8 + 16))(v11, v15, v7);
    sub_21B1998FC(a2, v40);
    v16 = v41;
    if (v41)
    {
      v17 = v42;
      v18 = __swift_project_boxed_opaque_existential_1(v40, v41);
      *(&v37 + 1) = v16;
      v38 = *(v17 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v36);
      (*(*(v16 - 8) + 16))(boxed_opaque_existential_1, v18, v16);
      __swift_destroy_boxed_opaque_existential_1(v40);
    }

    else
    {
      sub_21B199804(v40);
      v36 = 0u;
      v37 = 0u;
      v38 = 0;
    }

    v20 = type metadata accessor for CodingContext();
    v21 = swift_allocObject();
    v22 = v37;
    *(v21 + 16) = v36;
    *(v21 + 32) = v22;
    v23 = v38;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    *(v21 + 48) = v23;
    *(&v37 + 1) = v20;
    *&v36 = v21;
    v24 = sub_21B20C318();
    sub_21B1DF6EC(&v36, v11);
    v24(v40, 0);
    sub_21B19996C();
    v25 = v43;
    sub_21B20C308();

    sub_21B17DAF8(v14, v25);
    sub_21B199804(a2);
    v27 = sub_21B20C678();
    result = (*(*(v27 - 8) + 8))(a1, v27);
    v29 = *(&v36 + 1);
    v30 = v38;
    v31 = v37;
    v32 = v39;
    v33 = v35;
    *v35 = v36;
    v33[1] = v29;
    *(v33 + 1) = v31;
    v33[4] = v30;
    *(v33 + 5) = v32;
  }

  return result;
}

uint64_t sub_21B19887C()
{
  v24 = sub_21B20CF28();
  v1 = *(v24 - 8);
  v3 = MEMORY[0x28223BE20](v24, v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v6);
  v27 = &v22 - v7;
  swift_beginAccess();
  v30 = v0;
  v8 = *(v0 + 216);
  v9 = v8 + 64;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 64);
  v13 = (v10 + 63) >> 6;
  v23 = (v1 + 8);
  v25 = 0x800000021B20F360;
  v26 = 0x800000021B20F340;
  result = swift_bridgeObjectRetain_n();
  v15 = 0;
  v28 = v5;
  v29 = v8;
  while (v12)
  {
LABEL_9:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = v17 | (v15 << 6);
    v19 = *(*(v8 + 56) + 8 * v18);
    if (*(v19 + 48))
    {
      v31 = *(*(v8 + 48) + 16 * v18 + 8);
      v32 = 0;
      v33 = 0xE000000000000000;

      sub_21B20D6A8();

      v32 = 0xD00000000000001ALL;
      v33 = v25;
      MEMORY[0x21CEEBBB0](*(v19 + 16), *(v19 + 24));
      v20 = v27;
      sub_21B20CE98();

      sub_21B20CF08();
      v8 = v29;
      (*v23)(v20, v24);
      *(v19 + 48) = 0;
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {

      v21 = v30;
      __swift_destroy_boxed_opaque_existential_1((v30 + 16));

      swift_unknownObjectRelease();
      sub_21B199804(v21 + 80);
      swift_unknownObjectRelease();
      sub_21B188EC8(*(v21 + 136), *(v21 + 144));

      return v21;
    }

    v12 = *(v9 + 8 * v16);
    ++v15;
    if (v12)
    {
      v15 = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B198C5C()
{
  sub_21B19887C();

  return MEMORY[0x2821FE8D8](v0, 224, 7);
}

uint64_t sub_21B198CB4()
{
  v2 = v1;
  swift_beginAccess();
  v3 = *(v0 + 216);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v7 = 1 << *(*(v0 + 216) + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = *(v0 + 152);

      sub_21B1E7338(v14);
      if (v2)
      {
        break;
      }

      v9 &= v9 - 1;

      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

LABEL_12:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        goto LABEL_12;
      }

      v9 = *(v5 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21B198E10()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    v2 = *(v0 + 128);
    ObjectType = swift_getObjectType();
    v4 = (*(v2 + 24))(ObjectType, v2);
    v1 = v5;
    *(v0 + 64) = v4;
    *(v0 + 72) = v5;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  v6 = swift_getObjectType();
  v14 = 0;
  v7 = *(v0 + 168);
  v8 = *(v0 + 192);
  v11[0] = *(v0 + 160);
  v11[1] = v7;
  v12 = *(v0 + 176);
  v13 = v8;
  v9 = *(v1 + 32);

  swift_unknownObjectRetain();

  v9(&v14, v11, sub_21B1997A8, v0, MEMORY[0x277D84F78] + 8, v6, v1);
  swift_unknownObjectRelease();
}

uint64_t sub_21B198F58(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 64))
  {
    v4 = *(a1 + 72);
  }

  else
  {
    v5 = *(a1 + 128);
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 24))(ObjectType, v5);
    v4 = v8;
    *(a1 + 64) = v7;
    *(a1 + 72) = v8;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  v9 = swift_getObjectType();
  v38 = 1;
  v10 = *(a1 + 168);
  v11 = *(a1 + 192);
  v32[0] = *(a1 + 160);
  v32[1] = v10;
  v33 = *(a1 + 176);
  v34 = v11;
  v12 = *(v4 + 32);

  swift_unknownObjectRetain();

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EEF8, &unk_21B2126D0);
  v12(v30, &v38, v32, sub_21B1997C4, a1, v13, v9, v4);
  if (v2)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    v15 = *&v30[0];
    v16 = *(a1 + 176);
    v35 = *(a1 + 160);
    v36 = v16;
    v37 = *(a1 + 192);
    if (*(a1 + 64))
    {
      v17 = *(a1 + 72);
      v18 = *(a1 + 64);
    }

    else
    {
      v19 = *(a1 + 128);
      v20 = swift_getObjectType();
      v18 = (*(v19 + 24))(v20, v19);
      v17 = v21;
      *(a1 + 64) = v18;
      *(a1 + 72) = v21;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
    }

    v22 = *(a1 + 40);
    v23 = *(a1 + 48);
    v24 = __swift_project_boxed_opaque_existential_1((a1 + 16), v22);
    *(&v33 + 1) = v22;
    v34 = *(v23 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
    (*(*(v22 - 8) + 16))(boxed_opaque_existential_1, v24, v22);
    v26 = swift_getObjectType();
    v38 = 3;
    v30[0] = v35;
    v30[1] = v36;
    v31 = v37;
    MEMORY[0x28223BE20](v26, v27);
    v29[2] = v15;
    v29[3] = &v35;
    v29[4] = v18;
    v29[5] = v17;
    v29[6] = v32;
    v28 = *(v17 + 32);
    swift_unknownObjectRetain();
    v28(&v38, v30, sub_21B1997E0, v29, MEMORY[0x277D84F78] + 8, v26, v17);
    swift_unknownObjectRelease();

    return __swift_destroy_boxed_opaque_existential_1(v32);
  }
}

uint64_t sub_21B19927C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(a1 + 208);
  v8[3] = type metadata accessor for RecipeProcessor();
  v8[4] = &off_282CA09B8;
  v8[0] = a1;

  v6 = sub_21B1938A8(v8, 0, v5);
  result = __swift_destroy_boxed_opaque_existential_1(v8);
  if (!v2)
  {
    result = sub_21B198CB4();
    *a2 = v6;
  }

  return result;
}

uint64_t sub_21B199320@<X0>(uint64_t *a1@<X8>)
{
  v4 = sub_21B20CF28();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 208);
  v38 = type metadata accessor for RecipeProcessor();
  v39 = &off_282CA09B8;
  v37[0] = v1;

  v10 = sub_21B1938A8(v37, 1, v9);
  result = __swift_destroy_boxed_opaque_existential_1(v37);
  if (!v2)
  {
    sub_21B198CB4();
    v31 = v4;
    v32 = v8;
    v29 = a1;
    swift_beginAccess();
    v33 = v1;
    v12 = *(v1 + 216);
    v13 = v12 + 64;
    v14 = 1 << *(v12 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v12 + 64);
    v17 = (v14 + 63) >> 6;
    v30 = (v5 + 8);
    v35 = v12;
    result = swift_bridgeObjectRetain_n();
    v18 = 0;
    v34 = v10;
    if (v16)
    {
      while (1)
      {
        v19 = v18;
LABEL_11:
        v20 = *(*(v35 + 48) + 16 * (__clz(__rbit64(v16)) | (v19 << 6)) + 8);
        v21 = *(v33 + 152);

        sub_21B1E7C08();
        v36 = v20;
        v22 = v32;
        sub_21B20CEA8();
        (*v30)(v22, v31);
        sub_21B1E7338(v21);
        v16 &= v16 - 1;

        v18 = v19;
        v10 = v34;
        if (!v16)
        {
          goto LABEL_8;
        }
      }
    }

    while (1)
    {
LABEL_8:
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        return result;
      }

      if (v19 >= v17)
      {
        break;
      }

      v16 = *(v13 + 8 * v19);
      ++v18;
      if (v16)
      {
        goto LABEL_11;
      }
    }

    result = sub_21B197C00(MEMORY[0x277D84F90]);
    v40 = result;
    v23 = *(v10 + 16);
    if (v23)
    {
      v24 = 0;
      v25 = v10 + 32;
      while (v24 < *(v10 + 16))
      {
        sub_21B17FB4C(v25, v37);
        v26 = v38;
        v27 = v39;
        __swift_project_boxed_opaque_existential_1(v37, v38);
        (*(v27[3] + 1))(&v40, v26);
        ++v24;
        result = __swift_destroy_boxed_opaque_existential_1(v37);
        v25 += 40;
        if (v23 == v24)
        {
          v28 = v40;
          goto LABEL_19;
        }
      }

      goto LABEL_21;
    }

    v28 = result;
LABEL_19:

    *v29 = v28;
  }

  return result;
}

uint64_t sub_21B199804(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC70, &qword_21B211CB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21B19986C()
{
  result = qword_27CD6EF88;
  if (!qword_27CD6EF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EF88);
  }

  return result;
}

void sub_21B1998C0(void *a1, id a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      goto LABEL_8;
    }

    if (a3 != 3)
    {
      return;
    }

LABEL_7:

    return;
  }

  if (!a3)
  {
    goto LABEL_7;
  }

  if (a3 == 1)
  {
LABEL_8:
  }
}

uint64_t sub_21B1998FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC70, &qword_21B211CB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21B19996C()
{
  result = qword_27CD6EF90;
  if (!qword_27CD6EF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EF90);
  }

  return result;
}

uint64_t SyntaxError.QueryType.description.getter()
{
  if (*v0)
  {
    return 0x7551206B636F6C42;
  }

  else
  {
    return 0x6575512077656956;
  }
}

uint64_t SyntaxError.QueryType.hashValue.getter()
{
  v1 = *v0;
  sub_21B20DC88();
  MEMORY[0x21CEEC4B0](v1);
  return sub_21B20DCA8();
}

uint64_t sub_21B199AAC()
{
  if (*v0)
  {
    return 0x7551206B636F6C42;
  }

  else
  {
    return 0x6575512077656956;
  }
}

id SyntaxError.underlayingError.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t SyntaxError.queryName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t SyntaxError.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (*(v0 + 24))
  {
    v3 = 0x7551206B636F6C42;
  }

  else
  {
    v3 = 0x6575512077656956;
  }

  if (*(v0 + 24))
  {
    v4 = 0xEB00000000797265;
  }

  else
  {
    v4 = 0xEA00000000007972;
  }

  MEMORY[0x21CEEBBB0](v3, v4);

  MEMORY[0x21CEEBBB0](8736, 0xE200000000000000);
  MEMORY[0x21CEEBBB0](v1, v2);
  MEMORY[0x21CEEBBB0](2112034, 0xE300000000000000);
  swift_getErrorValue();
  sub_21B20DB08();
  return 0;
}

unint64_t sub_21B199C50()
{
  result = qword_27CD6EF98;
  if (!qword_27CD6EF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EF98);
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

uint64_t sub_21B199CBC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_21B199D04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Interval(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Interval(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t DefaultHostController.recipeURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_recipeURL;
  v4 = sub_21B20C678();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

char *sub_21B19A080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = v10;
  v15 = OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_recipeURL;
  v16 = sub_21B20C678();
  v17 = *(v16 - 8);
  v29 = a1;
  (*(v17 + 16))(v12 + v15, a1, v16);
  if (a2)
  {
    v18 = a2;
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  sub_21B19B018(&qword_27CD6EFC0, type metadata accessor for DefaultHostController, &protocol conformance descriptor for DefaultHostController);
  v19 = static HostControlling.entitledForDataSources()();
  if (v11)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_21B1972F0(a10);
    sub_21B186488(a9, &qword_27CD6EC70, &qword_21B211CB0);
    sub_21B186488(a4, &qword_27CD6ED28, &unk_21B212870);
    sub_21B186488(a3, &qword_27CD6ED28, &unk_21B212870);
    v20 = *(v17 + 8);
    v20(v29, v16);
    v20(v12 + v15, v16);
    type metadata accessor for DefaultHostController(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_21B1D23E8(v19);
    (*(v17 + 8))(v29, v16);
    *(v12 + 16) = v18;
    sub_21B18FED8(a3, v12 + OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_mainDatabaseConfig);
    sub_21B18FED8(a4, v12 + OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_tempDatabaseConfig);
    v21 = (v12 + OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_timeWindowConfig);
    *v21 = a5;
    v21[1] = a6;
    v22 = (v12 + OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_queryParametersConfig);
    *v22 = a7;
    v22[1] = a8;
    v23 = v12 + OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_userBlockFactory;
    *(v23 + 32) = *(a9 + 32);
    v24 = *(a9 + 16);
    *v23 = *a9;
    *(v23 + 16) = v24;
    sub_21B19AB44(a10, v12 + OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_loggingType);
  }

  return v12;
}

uint64_t sub_21B19A384()
{
  v1 = type metadata accessor for LoggingType(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21B20C678();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v0 + OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_recipeURL, v5);
  v10 = *(v0 + OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_timeWindowConfig);
  v11 = *(v0 + OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_timeWindowConfig + 8);
  v13 = *(v0 + OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_queryParametersConfig);
  v12 = *(v0 + OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_queryParametersConfig + 8);
  sub_21B1950C4(v0 + OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_loggingType, v4);
  type metadata accessor for DefaultHostEnvironment(0);
  v14 = swift_allocObject();
  v15 = (v14 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig);
  *v15 = v10;
  v15[1] = v11;
  v16 = (v14 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_queryParametersConfig);
  *v16 = v13;
  v16[1] = v12;
  (*(v6 + 32))(v14 + OBJC_IVAR____TtC12PoirotBlocks19BaseHostEnvironment_recipeURL, v9, v5);
  sub_21B19AB44(v4, v14 + OBJC_IVAR____TtC12PoirotBlocks19BaseHostEnvironment_loggingType);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return v14;
}

uint64_t sub_21B19A578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21B18BFF8(v3 + OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_userBlockFactory, &v11, &qword_27CD6EC70, &qword_21B211CB0);
  if (v12)
  {
    sub_21B18C110(&v11, v13);
    v7 = v14;
    v8 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    (*(*(v8 + 8) + 8))(a1, a2, a3, v7);
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    sub_21B186488(&v11, &qword_27CD6EC70, &qword_21B211CB0);
    sub_21B19ABA8();
    swift_allocError();
    *v10 = xmmword_21B212860;
    return swift_willThrow();
  }
}

uint64_t sub_21B19A6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v25 = a1;
  v8 = *a4;
  v7 = a4[1];
  v10 = a4[2];
  v9 = a4[3];
  v11 = a4[4];
  sub_21B18BFF8(v4 + OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_userBlockFactory, &v18, &qword_27CD6EC70, &qword_21B211CB0);
  if (v20)
  {
    sub_21B18C110(&v18, v22);
    v17 = a3;
    v12 = a2;
    v13 = v23;
    v14 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    *&v18 = v8;
    *(&v18 + 1) = v7;
    v19 = v10;
    v20 = v9;
    v21 = v11;
    (*(v14 + 16))(v25, v12, v17, &v18, v13, v14);
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    sub_21B186488(&v18, &qword_27CD6EC70, &qword_21B211CB0);
    sub_21B19ABA8();
    swift_allocError();
    *v16 = xmmword_21B212860;
    return swift_willThrow();
  }
}

uint64_t DefaultHostController.deinit()
{

  sub_21B186488(v0 + OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_mainDatabaseConfig, &qword_27CD6ED28, &unk_21B212870);
  sub_21B186488(v0 + OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_tempDatabaseConfig, &qword_27CD6ED28, &unk_21B212870);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_21B186488(v0 + OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_userBlockFactory, &qword_27CD6EC70, &qword_21B211CB0);
  v1 = OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_recipeURL;
  v2 = sub_21B20C678();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_21B1972F0(v0 + OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_loggingType);
  return v0;
}

uint64_t DefaultHostController.__deallocating_deinit()
{

  sub_21B186488(v0 + OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_mainDatabaseConfig, &qword_27CD6ED28, &unk_21B212870);
  sub_21B186488(v0 + OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_tempDatabaseConfig, &qword_27CD6ED28, &unk_21B212870);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_21B186488(v0 + OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_userBlockFactory, &qword_27CD6EC70, &qword_21B211CB0);
  v1 = OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_recipeURL;
  v2 = sub_21B20C678();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_21B1972F0(v0 + OBJC_IVAR____TtC12PoirotBlocks21DefaultHostController_loggingType);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_21B19AB44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LoggingType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21B19ABA8()
{
  result = qword_27CD6EFA0;
  if (!qword_27CD6EFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EFA0);
  }

  return result;
}

uint64_t type metadata accessor for DefaultHostController(uint64_t a1)
{
  result = qword_27CD6EFB0;
  if (!qword_27CD6EFB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21B19ACA4(uint64_t a1)
{
  sub_21B19AEC8(319);
  if (v1 <= 0x3F)
  {
    sub_21B20C678();
    if (v2 <= 0x3F)
    {
      type metadata accessor for LoggingType(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_21B19AEC8(uint64_t a1)
{
  if (!qword_27CD6EDD0)
  {
    type metadata accessor for DatabaseConfig(255);
    v1 = sub_21B20D5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_27CD6EDD0);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_12PoirotBlocks16DefaultHostErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21B19AF38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21B19AF8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_21B19AFE8(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_21B19B018(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

PoirotBlocks::BlockActivityType_optional __swiftcall BlockActivityType.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 0x20100030303uLL >> (8 * rawValue);
  if (rawValue >= 6)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_21B19B094()
{
  v1 = *v0;
  sub_21B20DC88();
  MEMORY[0x21CEEC4B0](v1 + 3);
  return sub_21B20DCA8();
}

uint64_t sub_21B19B10C(uint64_t a1)
{
  v2 = *v1;
  sub_21B20DC88();
  MEMORY[0x21CEEC4B0](v2 + 3);
  return sub_21B20DCA8();
}

PoirotBlocks::EngineActivityType_optional __swiftcall EngineActivityType.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 0x30201040004uLL >> (8 * rawValue);
  if (rawValue >= 6)
  {
    LOBYTE(v2) = 4;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_21B19B1C8()
{
  v1 = *v0;
  sub_21B20DC88();
  MEMORY[0x21CEEC4B0](qword_21B212B88[v1]);
  return sub_21B20DCA8();
}

uint64_t sub_21B19B250(uint64_t a1)
{
  v2 = *v1;
  sub_21B20DC88();
  MEMORY[0x21CEEC4B0](qword_21B212B88[v2]);
  return sub_21B20DCA8();
}

uint64_t ActivityMonitoring.measureActivity<A>(_:for:_:)(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  v10 = a2[3];
  v11 = a2[6];
  v12 = a2[7];
  v13 = a2[8];
  v16 = *a1;
  v15 = v9;
  return (*(a7 + 8))(&v16, v11, v12, v13, &v15, v7, v8, v10, a3, a4, a6, a5, a7);
}

{
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v15 = *a1;
  return (*(a7 + 24))(&v15, v12, v11, v13, a3, a4, a6, a5, a7);
}

unint64_t sub_21B19B3EC()
{
  result = qword_27CD6EFC8;
  if (!qword_27CD6EFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EFC8);
  }

  return result;
}

unint64_t sub_21B19B444()
{
  result = qword_27CD6EFD0;
  if (!qword_27CD6EFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EFD0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Query.UsageState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Query.UsageState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of ActivityMonitoring.measureActivity<A>(_:for:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return (*(a7 + 16))(a1, a2, a3, a4, a5, a6);
}

{
  return (*(a7 + 32))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_21B19B6D4(uint64_t a1)
{
  result = sub_21B19B75C(&qword_27CD6EFD8, &protocol conformance descriptor for CancellationError);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21B19B718(uint64_t a1)
{
  result = sub_21B19B75C(&qword_27CD6EFE0, MEMORY[0x277D85680]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21B19B75C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_21B20D4D8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21B19B7A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F010, &qword_21B212C60);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v21[-v8];
  v10 = sub_21B20D198();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *a1;
  v16 = a1[1];
  swift_beginAccess();
  v17 = *(v3 + 16);
  if (*(v17 + 16))
  {

    v18 = sub_21B1B9778(v15, v16);
    if (v19)
    {
      (*(v11 + 16))(v14, *(v17 + 56) + *(v11 + 72) * v18, v10);

      return (*(v11 + 32))(a2, v14, v10);
    }
  }

  sub_21B20D188();
  (*(v11 + 16))(v9, a2, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  swift_beginAccess();

  sub_21B1DF514(v9, v15, v16);
  return swift_endAccess();
}

uint64_t sub_21B19BA88(unsigned __int8 *a1, __int128 *a2, uint64_t (*a3)(uint64_t))
{
  v5 = v3;
  v9 = type metadata accessor for MeasurmentState(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = a2[1];
  v26 = *a2;
  v27 = v14;
  v28 = *(a2 + 4);
  v29 = v13;
  v15 = sub_21B19BEC8(a2, &v29, v12);
  a3(v15);
  if (v4)
  {
    swift_willThrow();
    v16 = v4;
    v17 = sub_21B19D280(v4);
    if (!v13)
    {
      v19 = v17;
      v20 = v18;
      v21 = v28;
      if (v28)
      {
        v22 = v27;
        sub_21B20C6E8();
        (*(*v5 + 200))(*(&v22 + 1), v21, v22, v19, v20);
      }

      sub_21B19C21C(v12, v5, &v26, v19, v20);
    }
  }

  else if (!v13)
  {
    v23 = v28;
    if (v28)
    {
      v24 = v27;
      sub_21B20C6E8();
      (*(*v5 + 200))(*(&v24 + 1), v23, v24, 0, 0);
    }

    sub_21B19C21C(v12, v5, &v26, 0, 0);
  }

  return sub_21B19DB5C(v12);
}

uint64_t sub_21B19BC84(unsigned __int8 *a1, __int128 *a2, uint64_t (*a3)(uint64_t))
{
  v5 = v3;
  v9 = type metadata accessor for MeasurmentState(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = a2[3];
  v33 = a2[2];
  v34 = v14;
  v35 = a2[4];
  v36 = *(a2 + 10);
  v15 = a2[1];
  v31 = *a2;
  v32 = v15;
  v37 = v13;
  v16 = sub_21B19C6D4(a2, &v37, v12);
  a3(v16);
  if (v4)
  {
    swift_willThrow();
    v17 = v4;
    v18 = sub_21B19D280(v4);
    if (v13 == 2)
    {
      v20 = v18;
      v21 = v19;
      v22 = *(&v33 + 1);
      if (*(&v33 + 1))
      {
        v23 = v33;
        v24 = v35;
        sub_21B20C6E8();
        v37 = v32;
        (*(*v5 + 216))(v23, v22, v24, &v37, *(&v32 + 1), v20, v21, -v25);
      }

      sub_21B19CCB0(v12, v5, &v31, v20, v21);
    }
  }

  else if (v13 == 2)
  {
    v26 = *(&v33 + 1);
    if (*(&v33 + 1))
    {
      v27 = v33;
      v28 = v35;
      sub_21B20C6E8();
      v37 = v32;
      (*(*v5 + 216))(v27, v26, v28, &v37, *(&v32 + 1), 0, 0, -v29);
    }

    sub_21B19CCB0(v12, v5, &v31, 0, 0);
  }

  return sub_21B19DB5C(v12);
}

uint64_t sub_21B19BEC8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21B20D168();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v33 - v13;
  v15 = sub_21B20D198();
  v17 = MEMORY[0x28223BE20](v15, v16);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 0;
  if (!*a2)
  {
    v35 = v18;
    v36 = v17;
    v37 = v7;
    v22 = a1[3];
    v23 = a1[4];
    v25 = a1[1];
    v24 = a1[2];
    v38[0] = *a1;
    v38[1] = v25;
    v38[2] = v24;
    v38[3] = v22;
    v38[4] = v23;
    sub_21B19B7A0(v38, v20);

    sub_21B20D158();
    v26 = sub_21B20D178();
    v34 = sub_21B20D5B8();
    if (sub_21B20D5C8())
    {
      v27 = v24;
      v28 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v38[0] = v33;
      *v28 = 136315394;
      *(v28 + 4) = sub_21B19D4B0(0x6E6F6973726576, 0xE700000000000000, v38);
      *(v28 + 12) = 2048;
      *(v28 + 14) = v27;

      v29 = sub_21B20D148();
      _os_signpost_emit_with_name_impl(&dword_21B179000, v26, v34, v29, "endToEnd", "%s=%lu", v28, 0x16u);
      v30 = v33;
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x21CEECC50](v30, -1, -1);
      MEMORY[0x21CEECC50](v28, -1, -1);
    }

    else
    {
    }

    v31 = v37;
    (*(v37 + 16))(v11, v14, v6);
    sub_21B20D1D8();
    swift_allocObject();
    v21 = sub_21B20D1C8();
    (*(v31 + 8))(v14, v6);
    (*(v35 + 8))(v20, v36);
  }

  sub_21B20C718();
  result = type metadata accessor for MeasurmentState(0);
  *(a3 + *(result + 20)) = v21;
  return result;
}

uint64_t sub_21B19C21C(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, uint64_t a5)
{
  v43 = a5;
  v42 = a4;
  v7 = sub_21B20D1A8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_21B20D168();
  v12 = *(v45 - 8);
  MEMORY[0x28223BE20](v45, v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_21B20D198();
  v16 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v17);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for MeasurmentState(0);
  if (*(a1 + *(result + 20)))
  {

    sub_21B19B7A0(a3, v19);
    v21 = sub_21B20D178();
    sub_21B20D1B8();
    v41 = sub_21B20D5A8();
    if (sub_21B20D5C8())
    {

      sub_21B20D1E8();

      if ((*(v8 + 88))(v11, v7) == *MEMORY[0x277D85B00])
      {
        v22 = 0;
        v23 = 0;
        v40 = "[Error] Interval already ended";
      }

      else
      {
        (*(v8 + 8))(v11, v7);
        v40 = "%s=%s,%s=%ld";
        v23 = 2;
        v22 = 4;
      }

      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v46 = v25;
      *v24 = v23;
      *(v24 + 1) = v22;
      *(v24 + 2) = 2080;
      v26 = sub_21B19D4B0(0x44656D6F6374756FLL, 0xED00006E69616D6FLL, &v46);
      v27 = v42;
      *(v24 + 4) = v26;
      v28 = 0xE600000000000000;
      v29 = 0x656E69676E65;
      *(v24 + 12) = 2080;
      v30 = 0xE300000000000000;
      v31 = 7106931;
      v32 = 0xEB0000000072657ALL;
      v33 = 0x6974616D65686373;
      if (v27 != 4)
      {
        v33 = 1919251317;
        v32 = 0xE400000000000000;
      }

      if (v27 != 3)
      {
        v31 = v33;
        v30 = v32;
      }

      v34 = 0xE700000000000000;
      v35 = 0x6E776F6E6B6E75;
      if (v27 != 1)
      {
        v35 = 0x6574696C7173;
        v34 = 0xE600000000000000;
      }

      if (v27)
      {
        v29 = v35;
        v28 = v34;
      }

      if (v27 <= 2)
      {
        v36 = v29;
      }

      else
      {
        v36 = v31;
      }

      if (v27 <= 2)
      {
        v37 = v28;
      }

      else
      {
        v37 = v30;
      }

      v38 = sub_21B19D4B0(v36, v37, &v46);

      *(v24 + 14) = v38;
      *(v24 + 22) = 2080;
      *(v24 + 24) = sub_21B19D4B0(0x43656D6F6374756FLL, 0xEB0000000065646FLL, &v46);
      *(v24 + 32) = 2048;
      *(v24 + 34) = v43;
      v39 = sub_21B20D148();
      _os_signpost_emit_with_name_impl(&dword_21B179000, v21, v41, v39, "endToEnd", v40, v24, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CEECC50](v25, -1, -1);
      MEMORY[0x21CEECC50](v24, -1, -1);
    }

    (*(v12 + 8))(v15, v45);
    return (*(v16 + 8))(v19, v44);
  }

  return result;
}

uint64_t sub_21B19C6D4@<X0>(__int128 *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v5 = sub_21B20D168();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v44 - v12;
  v14 = sub_21B20D198();
  v16 = MEMORY[0x28223BE20](v14, v15);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = 0;
  v57 = *(a1 + 10);
  v21 = a1[2];
  v22 = a1[4];
  v55 = a1[3];
  v56 = v22;
  v23 = a1[1];
  v52 = *a1;
  v53 = v23;
  v54 = v21;
  if (*a2 == 2)
  {
    v47 = v17;
    v48 = v16;
    v50[0] = v55;
    v46 = v56;
    v50[1] = v56;
    v51 = v57;

    sub_21B19B7A0(v50, v19);

    sub_21B19DAA4(&v52, v50);
    sub_21B19DAA4(&v52, v50);
    sub_21B20D158();
    v24 = sub_21B20D178();
    v25 = sub_21B20D5B8();
    if (sub_21B20D5C8())
    {
      v26 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v50[0] = v45;
      *v26 = 136316418;
      *(v26 + 4) = sub_21B19D4B0(0x6E6F6973726576, 0xE700000000000000, v50);
      *(v26 + 12) = 2048;
      *(v26 + 14) = v46;
      *(v26 + 22) = 2080;
      *(v26 + 24) = sub_21B19D4B0(0x7079546B636F6C62, 0xE900000000000065, v50);
      *(v26 + 32) = 2080;
      if (v53 > 4u)
      {
        v34 = 0x646E6957656D6974;
        v35 = 0x6C656E69746E6573;
        v36 = 0xEA00000000007372;
        if (v53 == 8)
        {
          v36 = 0xE800000000000000;
        }

        else
        {
          v35 = 0x6574656D61726170;
        }

        if (v53 == 7)
        {
          v36 = 0xEA0000000000776FLL;
        }

        else
        {
          v34 = v35;
        }

        v37 = 0xE400000000000000;
        v38 = 1852403562;
        if (v53 != 5)
        {
          v38 = 0x6966654472657375;
          v37 = 0xEB0000000064656ELL;
        }

        if (v53 <= 6u)
        {
          v32 = v38;
        }

        else
        {
          v32 = v34;
        }

        if (v53 <= 6u)
        {
          v33 = v37;
        }

        else
        {
          v33 = v36;
        }
      }

      else
      {
        v27 = 0xEB000000006E6F69;
        v28 = 0x7461676572676761;
        v29 = 0x6974636172747865;
        v30 = 0xEA00000000006E6FLL;
        v31 = 0xEA00000000003256;
        if (v53 != 3)
        {
          v31 = 0xE800000000000000;
        }

        if (v53 != 2)
        {
          v29 = 0x6574616C706D6574;
          v30 = v31;
        }

        if (!v53)
        {
          v28 = 0xD000000000000010;
          v27 = 0x800000021B20E790;
        }

        if (v53 <= 1u)
        {
          v32 = v28;
        }

        else
        {
          v32 = v29;
        }

        if (v53 <= 1u)
        {
          v33 = v27;
        }

        else
        {
          v33 = v30;
        }
      }

      v39 = sub_21B19D4B0(v32, v33, v50);

      *(v26 + 34) = v39;
      *(v26 + 42) = 2080;
      *(v26 + 44) = sub_21B19D4B0(0x7165536B636F6C62, 0xEF644965636E6575, v50);
      *(v26 + 52) = 2048;
      sub_21B193B48(&v52);
      *(v26 + 54) = *(&v53 + 1);
      sub_21B193B48(&v52);
      v40 = sub_21B20D148();
      _os_signpost_emit_with_name_impl(&dword_21B179000, v24, v25, v40, "block", "%s=%lu,%s=%s,%s=%lu", v26, 0x3Eu);
      v41 = v45;
      swift_arrayDestroy();
      MEMORY[0x21CEECC50](v41, -1, -1);
      MEMORY[0x21CEECC50](v26, -1, -1);
    }

    else
    {
      sub_21B193B48(&v52);
      sub_21B193B48(&v52);
    }

    (*(v6 + 16))(v10, v13, v5);
    sub_21B20D1D8();
    swift_allocObject();
    v20 = sub_21B20D1C8();
    (*(v6 + 8))(v13, v5);
    (*(v47 + 8))(v19, v48);
  }

  v42 = v49;
  sub_21B20C718();
  result = type metadata accessor for MeasurmentState(0);
  *(v42 + *(result + 20)) = v20;
  return result;
}

uint64_t sub_21B19CCB0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v49 = a5;
  v48 = a4;
  v7 = sub_21B20D1A8();
  v47 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v43[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_21B20D168();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v43[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_21B20D198();
  v50 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v43[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = type metadata accessor for MeasurmentState(0);
  if (*(a1 + *(result + 20)))
  {
    v45 = v16;
    v46 = v11;
    v21 = *(a3 + 64);
    v52[0] = *(a3 + 48);
    v52[1] = v21;
    v53 = *(a3 + 80);

    sub_21B193CC0(v52, v51);
    sub_21B19B7A0((a3 + 48), v19);

    v22 = sub_21B20D178();
    sub_21B20D1B8();
    v23 = sub_21B20D5A8();
    if (sub_21B20D5C8())
    {
      v44 = v23;

      sub_21B20D1E8();

      v24 = v47;
      if ((*(v47 + 11))(v10, v7) == *MEMORY[0x277D85B00])
      {
        v25 = 0;
        v26 = 0;
        v47 = "[Error] Interval already ended";
      }

      else
      {
        (*(v24 + 1))(v10, v7);
        v47 = "%s=%s,%s=%ld";
        v26 = 2;
        v25 = 4;
      }

      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v51[0] = v28;
      *v27 = v26;
      *(v27 + 1) = v25;
      *(v27 + 2) = 2080;
      v29 = sub_21B19D4B0(0x44656D6F6374756FLL, 0xED00006E69616D6FLL, v51);
      v30 = v48;
      *(v27 + 4) = v29;
      v31 = 0xE600000000000000;
      v32 = 0x656E69676E65;
      *(v27 + 12) = 2080;
      v33 = 0xE300000000000000;
      v34 = 7106931;
      v35 = 0xEB0000000072657ALL;
      v36 = 0x6974616D65686373;
      if (v30 != 4)
      {
        v36 = 1919251317;
        v35 = 0xE400000000000000;
      }

      if (v30 != 3)
      {
        v34 = v36;
        v33 = v35;
      }

      v37 = 0xE700000000000000;
      v38 = 0x6E776F6E6B6E75;
      if (v30 != 1)
      {
        v38 = 0x6574696C7173;
        v37 = 0xE600000000000000;
      }

      if (v30)
      {
        v32 = v38;
        v31 = v37;
      }

      if (v30 <= 2)
      {
        v39 = v32;
      }

      else
      {
        v39 = v34;
      }

      if (v30 <= 2)
      {
        v40 = v31;
      }

      else
      {
        v40 = v33;
      }

      v41 = sub_21B19D4B0(v39, v40, v51);

      *(v27 + 14) = v41;
      *(v27 + 22) = 2080;
      *(v27 + 24) = sub_21B19D4B0(0x43656D6F6374756FLL, 0xEB0000000065646FLL, v51);
      *(v27 + 32) = 2048;
      *(v27 + 34) = v49;
      v42 = sub_21B20D148();
      _os_signpost_emit_with_name_impl(&dword_21B179000, v22, v44, v42, "block", v47, v27, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CEECC50](v28, -1, -1);
      MEMORY[0x21CEECC50](v27, -1, -1);

      (*(v12 + 8))(v15, v46);
    }

    else
    {

      (*(v12 + 8))(v15, v46);
    }

    return (*(v50 + 8))(v19, v45);
  }

  return result;
}

uint64_t sub_21B19D1D0()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_21B19D280(void *a1)
{
  v18 = a1;
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB28, &qword_21B2126E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EFF0, &qword_21B212C40);
  if (swift_dynamicCast())
  {
    sub_21B17C284(&v15, v19);
    v3 = v20;
    v4 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v5 = (*(v4 + 16))(v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v19);
    return v5;
  }

  else
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    sub_21B186488(&v15, &qword_27CD6EFF8, &qword_21B212C48);
    v18 = a1;
    v7 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F000, &qword_21B212C50);
    if (swift_dynamicCast())
    {
      sub_21B17C284(&v15, v19);
      v8 = v20;
      v9 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      (*(v9 + 16))(v8, v9);
      __swift_destroy_boxed_opaque_existential_1(v19);
      return 5;
    }

    else
    {
      v17 = 0;
      v15 = 0u;
      v16 = 0u;
      sub_21B186488(&v15, &qword_27CD6F008, &qword_21B212C58);
      v19[0] = a1;
      v10 = a1;
      v11 = sub_21B20DAF8();
      if (v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = swift_allocError();
        *v13 = a1;
      }

      v14 = sub_21B20C4F8();

      [v14 code];
      return 1;
    }
  }
}

unint64_t sub_21B19D4B0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21B19D57C(v11, 0, 0, 1, a1, a2);
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
    sub_21B19DB00(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_21B19D57C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_21B19D688(a5, a6);
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
    result = sub_21B20D6F8();
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

void *sub_21B19D688(uint64_t a1, unint64_t a2)
{
  v3 = sub_21B19D6D4(a1, a2);
  sub_21B19D804(&unk_282C9F988);
  return v3;
}

void *sub_21B19D6D4(uint64_t a1, unint64_t a2)
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

  v6 = sub_21B19D8F0(v5, 0);
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

  result = sub_21B20D6F8();
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
        v10 = sub_21B20D3A8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21B19D8F0(v10, 0);
        result = sub_21B20D698();
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

uint64_t sub_21B19D804(uint64_t result)
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

  result = sub_21B19D964(result, v11, 1, v3);
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

void *sub_21B19D8F0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EFE8, &unk_21B212C30);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_21B19D964(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EFE8, &unk_21B212C30);
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

uint64_t type metadata accessor for MeasurmentState(uint64_t a1)
{
  result = qword_27CD6F018;
  if (!qword_27CD6F018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B19DB00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21B19DB5C(uint64_t a1)
{
  v2 = type metadata accessor for MeasurmentState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21B19DBE0(uint64_t a1)
{
  sub_21B20C728();
  if (v1 <= 0x3F)
  {
    sub_21B19DC64(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21B19DC64(uint64_t a1)
{
  if (!qword_27CD6F028)
  {
    sub_21B20D1D8();
    v1 = sub_21B20D5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_27CD6F028);
    }
  }
}

uint64_t sub_21B19DCC4()
{
  v1 = v0;
  v2 = sub_21B20CF48();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D3E400] || v7 == *MEMORY[0x277D3E3E0] || v7 == *MEMORY[0x277D3E3D0] || v7 == *MEMORY[0x277D3E3E8] || v7 == *MEMORY[0x277D3E410] || v7 == *MEMORY[0x277D3E3C8] || v7 == *MEMORY[0x277D3E408] || v7 == *MEMORY[0x277D3E3D8] || v7 != *MEMORY[0x277D3E3F8] && v7 != *MEMORY[0x277D3E3F0] && v7 != *MEMORY[0x277D3E428] && v7 != *MEMORY[0x277D3E418] && v7 != *MEMORY[0x277D3E438] && v7 != *MEMORY[0x277D3E440] && v7 != *MEMORY[0x277D3E420] && v7 != *MEMORY[0x277D3E430])
  {
    (*(v3 + 8))(v6, v2);
  }

  return 4;
}

uint64_t SchematizerError.outcomeCode.getter()
{
  v1 = v0;
  v2 = sub_21B20CF48();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D3E400])
  {
    v8 = 2;
  }

  else if (v7 == *MEMORY[0x277D3E3E0])
  {
    v8 = 3;
  }

  else if (v7 == *MEMORY[0x277D3E3D0])
  {
    v8 = 4;
  }

  else if (v7 == *MEMORY[0x277D3E3E8])
  {
    v8 = 5;
  }

  else if (v7 == *MEMORY[0x277D3E410])
  {
    v8 = 9;
  }

  else if (v7 == *MEMORY[0x277D3E3C8])
  {
    v8 = 14;
  }

  else if (v7 == *MEMORY[0x277D3E408])
  {
    v8 = 15;
  }

  else if (v7 == *MEMORY[0x277D3E3D8])
  {
    v8 = 16;
  }

  else
  {
    if (v7 == *MEMORY[0x277D3E3F8])
    {
      return 1;
    }

    if (v7 == *MEMORY[0x277D3E3F0])
    {
      return 6;
    }

    if (v7 == *MEMORY[0x277D3E428])
    {
      return 7;
    }

    if (v7 == *MEMORY[0x277D3E418])
    {
      return 8;
    }

    if (v7 == *MEMORY[0x277D3E438])
    {
      return 10;
    }

    if (v7 == *MEMORY[0x277D3E440])
    {
      return 11;
    }

    if (v7 == *MEMORY[0x277D3E420])
    {
      return 12;
    }

    if (v7 == *MEMORY[0x277D3E430])
    {
      return 13;
    }

    v8 = 0;
  }

  (*(v3 + 8))(v6, v2);
  return v8;
}

uint64_t sub_21B19E264(uint64_t a1)
{
  result = sub_21B19E2F0(&qword_27CD6F030, &protocol conformance descriptor for SchematizerError);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21B19E2AC(uint64_t a1)
{
  result = sub_21B19E2F0(&qword_27CD6F038, MEMORY[0x277D3E448]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21B19E2F0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_21B20CF48();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21B19E334()
{
  v1 = sub_21B20CE28();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v23 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v21 - v8;
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v21 - v11;
  v13 = *(v2 + 16);
  v24 = v0;
  v13(&v21 - v11, v0, v1);
  v14 = *(v2 + 88);
  v15 = v14(v12, v1);
  v16 = *MEMORY[0x277D3E250];
  v22 = *(v2 + 8);
  v22(v12, v1);
  if (v15 != v16)
  {
    v19 = v23;
    v13(v23, v24, v1);
    v20 = v14(v19, v1);
    if (v20 == v16)
    {
      (*(v2 + 96))(v19, v1);

      return 3;
    }

    if (v20 == *MEMORY[0x277D3E268])
    {
LABEL_40:
      v22(v19, v1);
      return 3;
    }

    if (v20 == *MEMORY[0x277D3E2B0])
    {
      v22(v19, v1);
    }

    else
    {
      if (v20 == *MEMORY[0x277D3E270] || v20 == *MEMORY[0x277D3E240] || v20 == *MEMORY[0x277D3E2A8] || v20 == *MEMORY[0x277D3E2D0] || v20 == *MEMORY[0x277D3E298] || v20 == *MEMORY[0x277D3E290])
      {
        goto LABEL_40;
      }

      if (v20 == *MEMORY[0x277D3E248])
      {
        return 3;
      }

      if (v20 == *MEMORY[0x277D3E260])
      {
        return 3;
      }

      if (v20 == *MEMORY[0x277D3E2C0])
      {
        return 3;
      }

      if (v20 == *MEMORY[0x277D3E2E0])
      {
        return 3;
      }

      if (v20 == *MEMORY[0x277D3E278])
      {
        return 3;
      }

      if (v20 != *MEMORY[0x277D3E2D8])
      {
        if (v20 == *MEMORY[0x277D3E258])
        {
          return 3;
        }

        if (v20 == *MEMORY[0x277D3E2A0])
        {
          return 3;
        }

        if (v20 == *MEMORY[0x277D3E288])
        {
          return 3;
        }

        if (v20 == *MEMORY[0x277D3E2B8])
        {
          return 3;
        }

        if (v20 == *MEMORY[0x277D3E280])
        {
          return 3;
        }

        if (v20 == *MEMORY[0x277D3E2C8])
        {
          return 3;
        }

        v22(v19, v1);
        return 3;
      }
    }

    return 3;
  }

  v13(v9, v24, v1);
  v17 = v14(v9, v1);
  if (v17 == v15)
  {
    (*(v2 + 96))(v9, v1);

    return 2;
  }

  if (v17 == *MEMORY[0x277D3E268])
  {
    goto LABEL_38;
  }

  if (v17 == *MEMORY[0x277D3E2B0])
  {
    v22(v9, v1);
    return 2;
  }

  if (v17 == *MEMORY[0x277D3E270] || v17 == *MEMORY[0x277D3E240] || v17 == *MEMORY[0x277D3E2A8] || v17 == *MEMORY[0x277D3E2D0] || v17 == *MEMORY[0x277D3E298] || v17 == *MEMORY[0x277D3E290])
  {
LABEL_38:
    v22(v9, v1);
    return 2;
  }

  if (v17 == *MEMORY[0x277D3E248])
  {
    return 2;
  }

  if (v17 == *MEMORY[0x277D3E260])
  {
    return 2;
  }

  if (v17 == *MEMORY[0x277D3E2C0])
  {
    return 2;
  }

  if (v17 == *MEMORY[0x277D3E2E0])
  {
    return 2;
  }

  if (v17 == *MEMORY[0x277D3E278])
  {
    return 2;
  }

  if (v17 == *MEMORY[0x277D3E2D8])
  {
    return 2;
  }

  if (v17 == *MEMORY[0x277D3E258])
  {
    return 2;
  }

  if (v17 == *MEMORY[0x277D3E2A0])
  {
    return 2;
  }

  if (v17 == *MEMORY[0x277D3E288])
  {
    return 2;
  }

  if (v17 == *MEMORY[0x277D3E2B8])
  {
    return 2;
  }

  if (v17 == *MEMORY[0x277D3E280])
  {
    return 2;
  }

  if (v17 != *MEMORY[0x277D3E2C8])
  {
    v22(v9, v1);
  }

  return 2;
}

uint64_t SQLiteError.outcomeCode.getter()
{
  v1 = v0;
  v2 = sub_21B20CE28();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D3E250])
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
  }

  else if (v7 == *MEMORY[0x277D3E268])
  {
    (*(v3 + 8))(v6, v2);
    return 7;
  }

  else if (v7 == *MEMORY[0x277D3E2B0])
  {
    (*(v3 + 8))(v6, v2);
    return 6;
  }

  else if (v7 == *MEMORY[0x277D3E270])
  {
    (*(v3 + 8))(v6, v2);
    return 15;
  }

  else if (v7 == *MEMORY[0x277D3E240])
  {
    (*(v3 + 8))(v6, v2);
    return 16;
  }

  else if (v7 == *MEMORY[0x277D3E2A8])
  {
    (*(v3 + 8))(v6, v2);
    return 17;
  }

  else if (v7 == *MEMORY[0x277D3E2D0])
  {
    (*(v3 + 8))(v6, v2);
    return 18;
  }

  else if (v7 == *MEMORY[0x277D3E298])
  {
    (*(v3 + 8))(v6, v2);
    return 19;
  }

  else if (v7 == *MEMORY[0x277D3E290])
  {
    (*(v3 + 8))(v6, v2);
    return 20;
  }

  else if (v7 == *MEMORY[0x277D3E248])
  {
    return 1;
  }

  else if (v7 == *MEMORY[0x277D3E260])
  {
    return 2;
  }

  else if (v7 == *MEMORY[0x277D3E2C0])
  {
    return 3;
  }

  else if (v7 == *MEMORY[0x277D3E2E0])
  {
    return 4;
  }

  else if (v7 == *MEMORY[0x277D3E278])
  {
    return 5;
  }

  else if (v7 == *MEMORY[0x277D3E2D8])
  {
    return 6;
  }

  else if (v7 == *MEMORY[0x277D3E258])
  {
    return 9;
  }

  else if (v7 == *MEMORY[0x277D3E2A0])
  {
    return 10;
  }

  else if (v7 == *MEMORY[0x277D3E288])
  {
    return 11;
  }

  else if (v7 == *MEMORY[0x277D3E2B8])
  {
    return 12;
  }

  else if (v7 == *MEMORY[0x277D3E280])
  {
    return 13;
  }

  else if (v7 == *MEMORY[0x277D3E2C8])
  {
    return 14;
  }

  else
  {
    (*(v3 + 8))(v6, v2);
    return 0;
  }

  return v8;
}

uint64_t sub_21B19F050(uint64_t a1)
{
  result = sub_21B19F0DC(&qword_27CD6F040, &protocol conformance descriptor for SQLiteError);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21B19F098(uint64_t a1)
{
  result = sub_21B19F0DC(&qword_27CD6F048, MEMORY[0x277D3E2F0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21B19F0DC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_21B20CE28();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21B19F120(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, double a6)
{
  v6 = sub_21B20D2C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F050, &qword_21B212D68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B212D20;
  *(inited + 32) = 0x6E6F6973726576;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_21B20D5F8();
  *(inited + 56) = 0x6E6F697461727564;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = sub_21B20D4F8();
  strcpy((inited + 80), "outcomeDomain");
  *(inited + 94) = -4864;
  *(inited + 96) = sub_21B20D5F8();
  *(inited + 104) = 0x43656D6F6374756FLL;
  *(inited + 112) = 0xEB0000000065646FLL;
  *(inited + 120) = sub_21B20D518();
  sub_21B197868(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F058, &unk_21B212D70);
  swift_arrayDestroy();
  sub_21B19F524();
  v8 = sub_21B20D258();

  AnalyticsSendEvent();
}

void sub_21B19F2D4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, char a6, uint64_t a7, double a8)
{
  v8 = sub_21B20D2C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F050, &qword_21B212D68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B212D30;
  *(inited + 32) = 0x6E6F6973726576;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_21B20D5F8();
  *(inited + 56) = 0x6E6F697461727564;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = sub_21B20D4F8();
  *(inited + 80) = 0x7079546B636F6C62;
  *(inited + 88) = 0xE900000000000065;
  *(inited + 96) = sub_21B20D5F8();
  *(inited + 104) = 0x7165536B636F6C62;
  *(inited + 112) = 0xEF644965636E6575;
  *(inited + 120) = sub_21B20D5F8();
  strcpy((inited + 128), "outcomeDomain");
  *(inited + 142) = -4864;
  *(inited + 144) = sub_21B20D5F8();
  *(inited + 152) = 0x43656D6F6374756FLL;
  *(inited + 160) = 0xEB0000000065646FLL;
  *(inited + 168) = sub_21B20D518();
  sub_21B197868(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F058, &unk_21B212D70);
  swift_arrayDestroy();
  sub_21B19F524();
  v10 = sub_21B20D258();

  AnalyticsSendEvent();
}

unint64_t sub_21B19F524()
{
  result = qword_27CD6F060;
  if (!qword_27CD6F060)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CD6F060);
  }

  return result;
}

uint64_t PoirotDefaultTaskParameters.recipeFolderPath.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PoirotDefaultTaskParameters.loggingPath.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PoirotDefaultTaskParameters.executionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PoirotDefaultTaskParameters(0) + 24);
  v4 = sub_21B20C768();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for PoirotDefaultTaskParameters(uint64_t a1)
{
  result = qword_2811F9EC8;
  if (!qword_2811F9EC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PoirotDefaultTaskParameters.runtimeParameters.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PoirotDefaultTaskParameters(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_21B19F6E8(v4, v5, v6, v7);
}

uint64_t sub_21B19F6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

uint64_t PoirotDefaultTaskParameters.init(recipeFolderPath:loggingPath:executionId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;
  v8 = type metadata accessor for PoirotDefaultTaskParameters(0);
  v9 = &a6[*(v8 + 28)];
  *v9 = 0;
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  *(v9 + 3) = 1;
  v10 = *(v8 + 24);
  v11 = sub_21B20C768();
  v12 = *(*(v11 - 8) + 32);

  return v12(&a6[v10], a5, v11);
}

__n128 PoirotDefaultTaskParameters.init(recipeFolderPath:loggingPath:runtimeParameters:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  v8 = type metadata accessor for PoirotDefaultTaskParameters(0);
  _s12PoirotBlocks0A18ToolTaskParametersV16recipeFolderPath07loggingH011executionId07runtimeE011userDefinedACSS_SSSg10Foundation4UUIDVAA07RuntimeE0VSgSDySSAA10AnyCodableOGSgtcfcfA1__0();
  v9 = (a6 + *(v8 + 28));
  result = *a5;
  v11 = *(a5 + 16);
  *v9 = *a5;
  v9[1] = v11;
  return result;
}

unint64_t sub_21B19F7F8()
{
  v1 = 0x50676E6967676F6CLL;
  v2 = 0x6F69747563657865;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_21B19F890@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21B1A0808(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21B19F8B8(uint64_t a1)
{
  v2 = sub_21B1A0340();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B19F8F4(uint64_t a1)
{
  v2 = sub_21B1A0340();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PoirotDefaultTaskParameters.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F068, &qword_21B212E00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v16[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1A0340();
  sub_21B20DD08();
  LOBYTE(v17) = 0;
  sub_21B20D9E8();
  if (!v2)
  {
    LOBYTE(v17) = 1;
    sub_21B20D998();
    v11 = type metadata accessor for PoirotDefaultTaskParameters(0);
    LOBYTE(v17) = 2;
    sub_21B20C768();
    sub_21B1A05BC(&qword_27CD6F078, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    sub_21B20DA48();
    v12 = (v3 + *(v11 + 28));
    v13 = v12[1];
    v14 = v12[2];
    v15 = v12[3];
    v17 = *v12;
    v18 = v13;
    v19 = v14;
    v20 = v15;
    v16[15] = 3;
    sub_21B19F6E8(v17, v13, v14, v15);
    sub_21B1A0394();
    sub_21B20D9D8();
    sub_21B1A03E8(v17, v18, v19, v20);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t PoirotDefaultTaskParameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_21B20C768();
  v24 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F088, &qword_21B212E08);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = v22 - v9;
  v11 = type metadata accessor for PoirotDefaultTaskParameters(0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = (v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1A0340();
  v27 = v10;
  v15 = v28;
  sub_21B20DCD8();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v25;
  LOBYTE(v29) = 0;
  *v14 = sub_21B20D8C8();
  v14[1] = v17;
  v28 = v17;
  LOBYTE(v29) = 1;
  v14[2] = sub_21B20D868();
  v14[3] = v18;
  LOBYTE(v29) = 2;
  sub_21B1A05BC(&qword_27CD6F090, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v22[1] = 0;
  sub_21B20D918();
  (*(v24 + 32))(v14 + *(v11 + 24), v6, v3);
  v31 = 3;
  sub_21B1A03FC();
  sub_21B20D8B8();
  (*(v16 + 8))(v27, v26);
  v19 = (v14 + *(v11 + 28));
  v20 = v30;
  *v19 = v29;
  v19[1] = v20;
  sub_21B1A0450(v14, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_21B1A04B4(v14);
}

uint64_t sub_21B19FFBC()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_21B19FFEC()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_21B1A001C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_21B20C768();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_21B1A0090@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (v2 + *(a1 + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return sub_21B19F6E8(v4, v5, v6, v7);
}

BOOL _s12PoirotBlocks0A21DefaultTaskParametersV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_21B20DB28() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (sub_21B20DB28() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = type metadata accessor for PoirotDefaultTaskParameters(0);
  if ((sub_21B20C748() & 1) == 0)
  {
    return 0;
  }

  v9 = *(v8 + 28);
  v10 = a1 + v9;
  v12 = *(a1 + v9);
  v11 = *(a1 + v9 + 8);
  v13 = *(a1 + v9 + 16);
  v14 = *(v10 + 3);
  v15 = (a2 + v9);
  v17 = *v15;
  v16 = v15[1];
  v18 = v15[2];
  v19 = v15[3];
  if (v14 != 1)
  {
    v26[0] = v12;
    v26[1] = v11;
    v26[2] = v13;
    v26[3] = v14;
    if (v19 != 1)
    {
      v23[0] = v17;
      v23[1] = v16;
      v24 = v18 & 0xFF01;
      v25 = v19;
      sub_21B19F6E8(v12, v11, v13, v14);
      sub_21B19F6E8(v17, v16, v18, v19);
      sub_21B19F6E8(v12, v11, v13, v14);
      v22 = _s12PoirotBlocks17RuntimeParametersV2eeoiySbAC_ACtFZ_0(v26, v23);

      sub_21B1A03E8(v12, v11, v13, v14);
      return (v22 & 1) != 0;
    }

    sub_21B19F6E8(v12, v11, v13, v14);
    sub_21B19F6E8(v17, v16, v18, 1);
    sub_21B19F6E8(v12, v11, v13, v14);

    goto LABEL_22;
  }

  sub_21B19F6E8(v12, v11, v13, 1);
  if (v19 != 1)
  {
    sub_21B19F6E8(v17, v16, v18, v19);
LABEL_22:
    sub_21B1A03E8(v12, v11, v13, v14);
    sub_21B1A03E8(v17, v16, v18, v19);
    return 0;
  }

  v20 = 1;
  sub_21B19F6E8(v17, v16, v18, 1);
  sub_21B1A03E8(v12, v11, v13, 1);
  return v20;
}

unint64_t sub_21B1A0340()
{
  result = qword_27CD6F070;
  if (!qword_27CD6F070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F070);
  }

  return result;
}

unint64_t sub_21B1A0394()
{
  result = qword_27CD6F080;
  if (!qword_27CD6F080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F080);
  }

  return result;
}

uint64_t sub_21B1A03E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

unint64_t sub_21B1A03FC()
{
  result = qword_27CD6F098;
  if (!qword_27CD6F098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F098);
  }

  return result;
}

uint64_t sub_21B1A0450(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PoirotDefaultTaskParameters(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B1A04B4(uint64_t a1)
{
  v2 = type metadata accessor for PoirotDefaultTaskParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B1A0510(void *a1)
{
  a1[1] = sub_21B1A05BC(&qword_27CD6F0A0, type metadata accessor for PoirotDefaultTaskParameters, &protocol conformance descriptor for PoirotDefaultTaskParameters);
  a1[2] = sub_21B1A05BC(&qword_27CD6F0A8, type metadata accessor for PoirotDefaultTaskParameters, &protocol conformance descriptor for PoirotDefaultTaskParameters);
  result = sub_21B1A05BC(&qword_27CD6F0B0, type metadata accessor for PoirotDefaultTaskParameters, &protocol conformance descriptor for PoirotDefaultTaskParameters);
  a1[3] = result;
  return result;
}

uint64_t sub_21B1A05BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_21B1A062C(uint64_t a1)
{
  sub_21B17DF1C(319, &qword_2811F9F58, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_21B20C768();
    if (v2 <= 0x3F)
    {
      sub_21B17DF1C(319, &qword_2811F9F60, &type metadata for RuntimeParameters);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_21B1A0704()
{
  result = qword_27CD6F0B8;
  if (!qword_27CD6F0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F0B8);
  }

  return result;
}

unint64_t sub_21B1A075C()
{
  result = qword_27CD6F0C0;
  if (!qword_27CD6F0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F0C0);
  }

  return result;
}

unint64_t sub_21B1A07B4()
{
  result = qword_27CD6F0C8;
  if (!qword_27CD6F0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F0C8);
  }

  return result;
}

uint64_t sub_21B1A0808(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000021B20F520 == a2 || (sub_21B20DB28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x50676E6967676F6CLL && a2 == 0xEB00000000687461 || (sub_21B20DB28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F69747563657865 && a2 == 0xEB0000000064496ELL || (sub_21B20DB28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021B20F540 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_21B20DB28();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_21B1A0984(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v4 = a1;
  v35 = MEMORY[0x277D84F90];
  sub_21B18FF8C(0, v2, 0);
  v3 = v35;
  v30 = v4 + 64;
  v5 = sub_21B20D648();
  v6 = 0;
  v31 = *(v4 + 36);
  v28 = v4 + 72;
  v29 = v2;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v4 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v30 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v31 != *(v4 + 36))
    {
      goto LABEL_24;
    }

    v10 = v4;
    v11 = (*(v4 + 48) + 16 * v5);
    v12 = v11[1];
    v13 = *(*(v4 + 56) + 8 * v5);
    v32[0] = *v11;
    v32[1] = v12;
    v32[2] = v13;

    sub_21B1A2238(v32, &v33);
    if (v1)
    {
      goto LABEL_28;
    }

    v14 = v33;
    v15 = v34;
    v35 = v3;
    v17 = *(v3 + 16);
    v16 = *(v3 + 24);
    if (v17 >= v16 >> 1)
    {
      v27 = v34;
      sub_21B18FF8C((v16 > 1), v17 + 1, 1);
      v15 = v27;
      v3 = v35;
    }

    *(v3 + 16) = v17 + 1;
    v18 = v3 + 24 * v17;
    *(v18 + 32) = v14;
    *(v18 + 40) = v15;
    v7 = 1 << *(v10 + 32);
    if (v5 >= v7)
    {
      goto LABEL_25;
    }

    v19 = *(v30 + 8 * v9);
    if ((v19 & (1 << v5)) == 0)
    {
      goto LABEL_26;
    }

    v4 = v10;
    if (v31 != *(v10 + 36))
    {
      goto LABEL_27;
    }

    v20 = v19 & (-2 << (v5 & 0x3F));
    if (v20)
    {
      v7 = __clz(__rbit64(v20)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v29;
    }

    else
    {
      v21 = v9 << 6;
      v22 = v9 + 1;
      v8 = v29;
      v23 = (v28 + 8 * v9);
      while (v22 < (v7 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          sub_21B17C2EC(v5, v31, 0);
          v7 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      sub_21B17C2EC(v5, v31, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    v1 = 0;
    if (v6 == v8)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:

  __break(1u);
  return result;
}

uint64_t PoirotTask<>.init(dataSources:mainDatabaseConfig:tempDatabaseConfig:environmentFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v40 = a3;
  v36 = a1;
  v37 = a2;
  v7 = type metadata accessor for LoggingType(0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED28, &unk_21B212870);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = v34 - v17;
  v19 = sub_21B20C678();
  v20 = *(v19 - 8);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v24 = v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v35;
  v26 = a4(v22);
  v35 = v25;
  if (v25)
  {

    sub_21B186488(v40, &qword_27CD6ED28, &unk_21B212870);
    return sub_21B186488(v37, &qword_27CD6ED28, &unk_21B212870);
  }

  else
  {
    v28 = v26;
    v34[0] = v10;
    v34[1] = a5;
    (*(v20 + 16))(v24, v26 + OBJC_IVAR____TtC12PoirotBlocks19BaseHostEnvironment_recipeURL, v19);
    sub_21B18BFF8(v37, v18, &qword_27CD6ED28, &unk_21B212870);
    sub_21B18BFF8(v40, v15, &qword_27CD6ED28, &unk_21B212870);
    v29 = swift_conformsToProtocol2();
    if (v29)
    {

      v30 = v28;
    }

    else
    {
      v30 = 0;
    }

    v39 = 0;
    memset(v38, 0, sizeof(v38));
    v31 = v34[0];
    swift_storeEnumTagMultiPayload();
    type metadata accessor for DefaultHostController(0);
    swift_allocObject();
    v32 = v35;
    v33 = sub_21B19A080(v24, v36, v18, v15, v30, v29, 0, 0, v38, v31);

    sub_21B186488(v40, &qword_27CD6ED28, &unk_21B212870);
    result = sub_21B186488(v37, &qword_27CD6ED28, &unk_21B212870);
    if (!v32)
    {
      result = swift_allocObject();
      *(result + 16) = v33;
      *(result + 24) = 0;
    }
  }

  return result;
}

uint64_t PoirotTask<>.init(recipeURL:dataSources:mainDatabaseConfig:tempDatabaseConfig:loggingType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a2;
  v35 = a5;
  v8 = type metadata accessor for LoggingType(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED28, &unk_21B212870);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v31 - v18;
  v20 = sub_21B20C678();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v21 + 16);
  v40 = a1;
  v34 = v26;
  v25(v24, a1);
  v37 = a3;
  sub_21B18BFF8(a3, v19, &qword_27CD6ED28, &unk_21B212870);
  v36 = a4;
  sub_21B18BFF8(a4, v16, &qword_27CD6ED28, &unk_21B212870);
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  swift_storeEnumTagMultiPayload();
  type metadata accessor for DefaultHostController(0);
  swift_allocObject();
  v27 = v33;
  v28 = sub_21B19A080(v24, v32, v19, v16, 0, 0, 0, 0, v38, v11);
  if (v27)
  {
    sub_21B1A27A8(v35, type metadata accessor for LoggingType);
    sub_21B186488(v36, &qword_27CD6ED28, &unk_21B212870);
    sub_21B186488(v37, &qword_27CD6ED28, &unk_21B212870);
    return (*(v21 + 8))(v40, v34);
  }

  else
  {
    v30 = v28;
    sub_21B1A27A8(v35, type metadata accessor for LoggingType);
    sub_21B186488(v36, &qword_27CD6ED28, &unk_21B212870);
    sub_21B186488(v37, &qword_27CD6ED28, &unk_21B212870);
    (*(v21 + 8))(v40, v34);
    result = swift_allocObject();
    *(result + 16) = v30;
    *(result + 24) = 0;
  }

  return result;
}

uint64_t PoirotTask<>.init<A, B, C>(recipeURL:dataSources:mainDatabaseConfig:tempDatabaseConfig:timeWindowConfig:queryParametersConfig:userBlockFactory:loggingType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v67 = a8;
  v70 = a7;
  v57 = a5;
  v58 = a6;
  v74 = a4;
  v61 = a2;
  v56 = a13;
  v55 = a12;
  v16 = type metadata accessor for LoggingType(0);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v60 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_21B20D5D8();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v54 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED28, &unk_21B212870);
  v26 = MEMORY[0x28223BE20](v24 - 8, v25);
  v28 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v29);
  v31 = &v54 - v30;
  v32 = sub_21B20C678();
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v54 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v37;
  v63 = v36;
  v38 = *(v37 + 16);
  v69 = a1;
  v38(v35, a1);
  v68 = a3;
  sub_21B18BFF8(a3, v31, &qword_27CD6ED28, &unk_21B212870);
  v59 = v28;
  sub_21B18BFF8(v74, v28, &qword_27CD6ED28, &unk_21B212870);
  v39 = v57;
  v40 = v55;
  if (!v57)
  {
    v40 = 0;
  }

  v55 = v40;
  v41 = v58;
  v42 = v56;
  if (!v58)
  {
    v42 = 0;
  }

  v56 = v42;
  (*(v20 + 16))(v23, v70, v19);
  v43 = *(a11 - 8);
  v44 = (*(v43 + 48))(v23, 1, a11);
  v65 = v20;
  v66 = v19;
  if (v44 == 1)
  {
    v45 = *(v20 + 8);
    swift_unknownObjectRetain();
    v46 = v41;
    swift_unknownObjectRetain();
    v45(v23, v19);
    v73 = 0;
    v71 = 0u;
    v72 = 0u;
  }

  else
  {
    *(&v72 + 1) = a11;
    v73 = a14;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v71);
    (*(v43 + 32))(boxed_opaque_existential_1, v23, a11);
    swift_unknownObjectRetain();
    v46 = v41;
    swift_unknownObjectRetain();
  }

  v48 = v67;
  v49 = v60;
  sub_21B1A2740(v67, v60, type metadata accessor for LoggingType);
  swift_allocObject();
  v50 = v64;
  v51 = sub_21B19A080(v35, v61, v31, v59, v39, v55, v46, v56, &v71, v49);
  if (v50)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_21B1A27A8(v48, type metadata accessor for LoggingType);
    (*(v65 + 8))(v70, v66);
    sub_21B186488(v74, &qword_27CD6ED28, &unk_21B212870);
    sub_21B186488(v68, &qword_27CD6ED28, &unk_21B212870);
    return (*(v62 + 8))(v69, v63);
  }

  else
  {
    v53 = v51;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_21B1A27A8(v48, type metadata accessor for LoggingType);
    (*(v65 + 8))(v70, v66);
    sub_21B186488(v74, &qword_27CD6ED28, &unk_21B212870);
    sub_21B186488(v68, &qword_27CD6ED28, &unk_21B212870);
    (*(v62 + 8))(v69, v63);
    result = swift_allocObject();
    *(result + 16) = v53;
    *(result + 24) = 0;
  }

  return result;
}

uint64_t PoirotTask<>.init(recipeURL:dataSources:mainDatabaseConfig:tempDatabaseConfig:timeWindowConfig:namedQueryParameters:userBlockFactory:loggingType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = a7;
  v37 = a8;
  v39 = a5;
  v40 = a6;
  v47 = a3;
  v38 = a2;
  v11 = type metadata accessor for LoggingType(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED28, &unk_21B212870);
  v17 = MEMORY[0x28223BE20](v15 - 8, v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v36 - v21;
  v23 = sub_21B20C678();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v36 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v24 + 16);
  v45 = a1;
  v43 = v29;
  v28(v27, a1);
  sub_21B18BFF8(v47, v22, &qword_27CD6ED28, &unk_21B212870);
  v44 = a4;
  v30 = a4;
  v31 = v37;
  sub_21B18BFF8(v30, v19, &qword_27CD6ED28, &unk_21B212870);
  sub_21B18BFF8(v31, v46, &qword_27CD6EC70, &qword_21B211CB0);
  sub_21B1A2740(a9, v14, type metadata accessor for LoggingType);
  type metadata accessor for DefaultHostController(0);
  swift_allocObject();
  v32 = v42;
  v33 = sub_21B19A080(v27, v38, v22, v19, v39, v40, v41, &protocol witness table for NamedQueryParameters, v46, v14);
  if (v32)
  {
    sub_21B1A27A8(a9, type metadata accessor for LoggingType);
    sub_21B186488(v31, &qword_27CD6EC70, &qword_21B211CB0);
    sub_21B186488(v44, &qword_27CD6ED28, &unk_21B212870);
    sub_21B186488(v47, &qword_27CD6ED28, &unk_21B212870);
    return (*(v24 + 8))(v45, v43);
  }

  else
  {
    v35 = v33;
    sub_21B1A27A8(a9, type metadata accessor for LoggingType);
    sub_21B186488(v31, &qword_27CD6EC70, &qword_21B211CB0);
    sub_21B186488(v44, &qword_27CD6ED28, &unk_21B212870);
    sub_21B186488(v47, &qword_27CD6ED28, &unk_21B212870);
    (*(v24 + 8))(v45, v43);
    result = swift_allocObject();
    *(result + 16) = v35;
    *(result + 24) = 0;
  }

  return result;
}