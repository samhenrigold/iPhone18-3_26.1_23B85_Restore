unint64_t sub_24B57380C()
{
  result = qword_2810F6710;
  if (!qword_2810F6710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810F6710);
  }

  return result;
}

uint64_t sub_24B573868(uint64_t a1)
{
  v1 = *(a1 + 16);
  v19 = *a1;
  v20 = v1;
  v2 = *(a1 + 48);
  v21 = *(a1 + 32);
  v22 = v2;
  type metadata accessor for Option(255, &v19);
  swift_getTupleTypeMetadata2();
  v3 = sub_24B5FFBBC();
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018808, &qword_24B600A70);
  WitnessTable = swift_getWitnessTable();
  v19 = v3;
  v20 = MEMORY[0x277D837D0];
  *&v21 = v4;
  *(&v21 + 1) = WitnessTable;
  *&v22 = MEMORY[0x277D837E0];
  sub_24B5FF8CC();
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018810, &qword_24B600A78);
  v7 = sub_24B57D53C();
  v19 = v6;
  v20 = v7;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v8 = sub_24B5FF93C();
  v9 = swift_getWitnessTable();
  v19 = v8;
  v20 = v9;
  swift_getOpaqueTypeMetadata2();
  v19 = v8;
  v20 = v9;
  swift_getOpaqueTypeConformance2();
  v10 = sub_24B5FEF2C();
  v11 = swift_getWitnessTable();
  v19 = v10;
  v20 = v11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = sub_24B5FF3AC();
  v19 = v10;
  v20 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = OpaqueTypeMetadata2;
  v20 = v13;
  v15 = MEMORY[0x277CDE478];
  *&v21 = OpaqueTypeConformance2;
  *(&v21 + 1) = MEMORY[0x277CDE478];
  v16 = swift_getOpaqueTypeMetadata2();
  v19 = OpaqueTypeMetadata2;
  v20 = v13;
  *&v21 = OpaqueTypeConformance2;
  *(&v21 + 1) = v15;
  v17 = swift_getOpaqueTypeConformance2();
  v19 = v16;
  v20 = v17;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_24B5FF94C();
  swift_getWitnessTable();
  sub_24B5FF87C();
  sub_24B5FEFEC();
  sub_24B5FF2EC();
  sub_24B5FEFEC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B580814(&qword_27F018900, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
  return swift_getWitnessTable();
}

uint64_t sub_24B573C54()
{

  return swift_deallocObject();
}

uint64_t sub_24B573C9C()
{
  v2 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v1 = v7[0];
  v7[1] = v2;
  v3 = *(v0 + 64);
  v8 = *(v0 + 48);
  v9 = v3;
  v4 = *(type metadata accessor for Option(0, v7) - 8);
  v5 = (*(v4 + 80) + 136) & ~*(v4 + 80);

  (*(*(v1 - 8) + 8))(v0 + v5, v1);
  return swift_deallocObject();
}

uint64_t sub_24B573DB8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v17 = *(a1 + 8);
  v18 = v1;
  v2 = *(a1 + 64);
  v19 = *(a1 + 48);
  v20 = v2;
  type metadata accessor for Option(255, &v17);
  swift_getTupleTypeMetadata2();
  v3 = sub_24B5FFBBC();
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0189A8, &qword_24B600C10);
  WitnessTable = swift_getWitnessTable();
  v17 = v3;
  v18 = MEMORY[0x277D837D0];
  *&v19 = v4;
  *(&v19 + 1) = WitnessTable;
  *&v20 = MEMORY[0x277D837E0];
  sub_24B5FF8CC();
  sub_24B5813FC();
  swift_getWitnessTable();
  v6 = sub_24B5FF93C();
  v7 = swift_getWitnessTable();
  v17 = v6;
  v18 = v7;
  swift_getOpaqueTypeMetadata2();
  v17 = v6;
  v18 = v7;
  swift_getOpaqueTypeConformance2();
  v8 = sub_24B5FEF2C();
  v9 = swift_getWitnessTable();
  v17 = v8;
  v18 = v9;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v11 = sub_24B5FF3AC();
  v17 = v8;
  v18 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = OpaqueTypeMetadata2;
  v18 = v11;
  v13 = MEMORY[0x277CDE478];
  *&v19 = OpaqueTypeConformance2;
  *(&v19 + 1) = MEMORY[0x277CDE478];
  v14 = swift_getOpaqueTypeMetadata2();
  v17 = OpaqueTypeMetadata2;
  v18 = v11;
  *&v19 = OpaqueTypeConformance2;
  *(&v19 + 1) = v13;
  v15 = swift_getOpaqueTypeConformance2();
  v17 = v14;
  v18 = v15;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_24B5FF94C();
  swift_getWitnessTable();
  sub_24B5FF87C();
  sub_24B5FEFEC();
  sub_24B5FF2EC();
  sub_24B5FEFEC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B580814(&qword_27F018900, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
  return swift_getWitnessTable();
}

uint64_t sub_24B574168()
{
  v1 = *(v0 + 96);
  v8 = *(v0 + 32);
  v9[0] = *(v0 + 16);
  v2 = *(v0 + 48);
  v3 = *(v0 + 64);
  v9[1] = v8;
  v9[2] = v2;
  v4 = *(v0 + 80);
  v9[3] = v3;
  v9[4] = v4;
  v10 = v1;
  v5 = (type metadata accessor for FilterModalitySectionView(0, v9) - 8);
  v6 = v0 + ((*(*v5 + 80) + 104) & ~*(*v5 + 80));

  (*(*(v8 - 8) + 8))(v6 + v5[30]);

  return swift_deallocObject();
}

uint64_t sub_24B574288()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v16 = *(v0 + 16);
  v17 = v1;
  v5 = *(v0 + 48);
  v18 = *(v0 + 32);
  v15 = v18;
  v19 = v5;
  v20 = v2;
  v21 = v3;
  v22 = v4;
  v13 = v5;
  v23 = *(v0 + 88);
  v14 = v23;
  v6 = (type metadata accessor for FilterModalitySectionView(0, &v16) - 8);
  v7 = *(*v6 + 80);
  v8 = *(*v6 + 64);
  v16 = v1;
  v17 = v13;
  v9 = (v7 + 104) & ~v7;
  *&v18 = v2;
  *(&v18 + 1) = v3;
  *&v19 = v4;
  *(&v19 + 1) = v14;
  v10 = *(type metadata accessor for Option(0, &v16) - 8);
  v11 = (v9 + v8 + *(v10 + 80)) & ~*(v10 + 80);

  (*(*(v15 - 8) + 8))(v0 + v9 + v6[30]);

  (*(*(v1 - 8) + 8))(v0 + v11, v1);
  return swift_deallocObject();
}

uint64_t sub_24B57449C()
{

  if (*(v0 + 48))
  {
  }

  sub_24B57BA04(*(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240));

  return swift_deallocObject();
}

uint64_t sub_24B57454C()
{

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24B5745E0()
{

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24B5746E0@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_24B57472C(uint64_t *a1)
{
  v1 = a1[4];
  v26 = a1[1];
  v27 = v1;
  v2 = *(a1 + 4);
  v28 = *(a1 + 3);
  v29 = v2;
  type metadata accessor for Option(255, &v26);
  swift_getTupleTypeMetadata2();
  v25 = sub_24B5FFBBC();
  sub_24B5FEFEC();
  sub_24B5FEFEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019288, &qword_24B603440);
  sub_24B5FEFEC();
  sub_24B5FF36C();
  sub_24B5FEFEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F019290, &qword_24B603448);
  sub_24B5FF21C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018AC8, &unk_24B603450);
  swift_getTupleTypeMetadata2();
  sub_24B5FF94C();
  swift_getWitnessTable();
  sub_24B5FF84C();
  sub_24B5FEFEC();
  sub_24B5FEFEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018960, &qword_24B600BA0);
  v3 = sub_24B5FEFEC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B58085C(&qword_27F018958, &qword_27F018960, &qword_24B600BA0, MEMORY[0x277CE0470]);
  WitnessTable = swift_getWitnessTable();
  v26 = v3;
  v27 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v26 = v3;
  v27 = WitnessTable;
  swift_getOpaqueTypeConformance2();
  v5 = sub_24B5FF82C();
  v6 = swift_getWitnessTable();
  v26 = v5;
  v27 = v6;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018870, &qword_24B600AA0);
  v7 = sub_24B5FEFEC();
  v26 = v5;
  v27 = v6;
  swift_getOpaqueTypeConformance2();
  sub_24B58085C(&qword_27F018868, &qword_27F018870, &qword_24B600AA0, MEMORY[0x277CE0328]);
  v8 = swift_getWitnessTable();
  v9 = sub_24B57D828();
  v26 = v7;
  v27 = &type metadata for FilterButtonStyle;
  *&v28 = v8;
  *(&v28 + 1) = v9;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018860, &qword_24B600C40);
  v10 = sub_24B5FEFEC();
  v26 = v7;
  v27 = &type metadata for FilterButtonStyle;
  *&v28 = v8;
  *(&v28 + 1) = v9;
  swift_getOpaqueTypeConformance2();
  sub_24B58085C(&qword_27F018858, &qword_27F018860, &qword_24B600C40, MEMORY[0x277CE08A0]);
  v11 = swift_getWitnessTable();
  v26 = v10;
  v27 = v11;
  swift_getOpaqueTypeMetadata2();
  v12 = sub_24B5FEFEC();
  v13 = swift_getWitnessTable();
  v26 = v25;
  v27 = MEMORY[0x277D837D0];
  *&v28 = v12;
  *(&v28 + 1) = v13;
  *&v29 = MEMORY[0x277D837E0];
  sub_24B5FF8CC();
  v26 = v10;
  v27 = v11;
  swift_getOpaqueTypeConformance2();
  sub_24B5B7C24(qword_27F018878, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  v14 = sub_24B5FF93C();
  v15 = swift_getWitnessTable();
  v26 = v14;
  v27 = v15;
  swift_getOpaqueTypeMetadata2();
  v26 = v14;
  v27 = v15;
  swift_getOpaqueTypeConformance2();
  v16 = sub_24B5FEF2C();
  v17 = swift_getWitnessTable();
  v26 = v16;
  v27 = v17;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v19 = sub_24B5FF3AC();
  v26 = v16;
  v27 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = OpaqueTypeMetadata2;
  v27 = v19;
  v21 = MEMORY[0x277CDE478];
  *&v28 = OpaqueTypeConformance2;
  *(&v28 + 1) = MEMORY[0x277CDE478];
  v22 = swift_getOpaqueTypeMetadata2();
  v26 = OpaqueTypeMetadata2;
  v27 = v19;
  *&v28 = OpaqueTypeConformance2;
  *(&v28 + 1) = v21;
  v23 = swift_getOpaqueTypeConformance2();
  v26 = v22;
  v27 = v23;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_24B5FF94C();
  swift_getWitnessTable();
  sub_24B5FF87C();
  sub_24B5FEFEC();
  sub_24B5FF2EC();
  sub_24B5FEFEC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B5B7C24(&qword_27F018900, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
  return swift_getWitnessTable();
}

uint64_t sub_24B574F6C()
{
  v1 = *(v0 + 96);
  v8 = *(v0 + 32);
  v9[0] = *(v0 + 16);
  v2 = *(v0 + 48);
  v3 = *(v0 + 64);
  v9[1] = v8;
  v9[2] = v2;
  v4 = *(v0 + 80);
  v9[3] = v3;
  v9[4] = v4;
  v10 = v1;
  v5 = (type metadata accessor for FilterTrainerSectionView(0, v9) - 8);
  v6 = v0 + ((*(*v5 + 80) + 104) & ~*(*v5 + 80));

  (*(*(v8 - 8) + 8))(v6 + v5[30]);

  return swift_deallocObject();
}

uint64_t sub_24B57508C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v16 = *(v0 + 16);
  v17 = v1;
  v5 = *(v0 + 48);
  v18 = *(v0 + 32);
  v15 = v18;
  v19 = v5;
  v20 = v2;
  v21 = v3;
  v22 = v4;
  v13 = v5;
  v23 = *(v0 + 88);
  v14 = v23;
  v6 = (type metadata accessor for FilterTrainerSectionView(0, &v16) - 8);
  v7 = *(*v6 + 80);
  v8 = *(*v6 + 64);
  v16 = v1;
  v17 = v13;
  v9 = (v7 + 104) & ~v7;
  *&v18 = v2;
  *(&v18 + 1) = v3;
  *&v19 = v4;
  *(&v19 + 1) = v14;
  v10 = *(type metadata accessor for Option(0, &v16) - 8);
  v11 = (v9 + v8 + *(v10 + 80)) & ~*(v10 + 80);

  (*(*(v15 - 8) + 8))(v0 + v9 + v6[30]);

  (*(*(v1 - 8) + 8))(v0 + v11, v1);
  return swift_deallocObject();
}

uint64_t sub_24B57528C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019380, &qword_24B603530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B57530C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for FilterLayout(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_24B5FEE1C();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_24B575418(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for FilterLayout(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = sub_24B5FEE1C();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8] + 8) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t get_enum_tag_for_layout_string_16FitnessFiltering8ModalityVSg_0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24B575564(uint64_t a1)
{
  v1 = *(a1 + 16);
  v7 = *a1;
  v8 = v1;
  v2 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = v2;
  type metadata accessor for Option(255, &v7);
  swift_getTupleTypeMetadata2();
  v3 = sub_24B5FFBBC();
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019C48, &qword_24B606870);
  WitnessTable = swift_getWitnessTable();
  v7 = v3;
  v8 = MEMORY[0x277D837D0];
  *&v9 = v4;
  *(&v9 + 1) = WitnessTable;
  *&v10 = MEMORY[0x277D837E0];
  sub_24B5FF8CC();
  sub_24B5CABE0();
  swift_getWitnessTable();
  sub_24B5FF93C();
  sub_24B5FEFEC();
  swift_getTupleTypeMetadata2();
  sub_24B5FF94C();
  swift_getWitnessTable();
  sub_24B5FF87C();
  sub_24B5FEFEC();
  sub_24B5FF2EC();
  sub_24B5FEFEC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B5CD35C(&qword_27F018900, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
  return swift_getWitnessTable();
}

uint64_t sub_24B5757AC()
{
  v6 = *(v0 + 16);
  v1 = *(v0 + 40);
  v7 = *(v0 + 24);
  v5 = v7;
  v8 = v1;
  v2 = *(v0 + 72);
  v9 = *(v0 + 56);
  v10 = v2;
  v3 = type metadata accessor for FilterStandardSectionView(0, &v6);
  (*(*(v5 - 8) + 8))(v0 + ((*(*(v3 - 8) + 80) + 88) & ~*(*(v3 - 8) + 80)) + *(v3 + 92));

  return swift_deallocObject();
}

uint64_t sub_24B5758C8()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v15 = *(v0 + 16);
  v1 = v15;
  v16 = v2;
  v17 = *(v0 + 32);
  v13 = v17;
  v18 = v3;
  v19 = v4;
  v20 = v5;
  v21 = *(v0 + 72);
  v14 = v21;
  v6 = (type metadata accessor for FilterStandardSectionView(0, &v15) - 8);
  v7 = *(*v6 + 80);
  v8 = *(*v6 + 64);
  v15 = v1;
  v16 = v13;
  v9 = (v7 + 88) & ~v7;
  *&v17 = v3;
  *(&v17 + 1) = v4;
  v18 = v5;
  v19 = v14;
  v10 = *(type metadata accessor for Option(0, &v15) - 8);
  v11 = (v9 + v8 + *(v10 + 80)) & ~*(v10 + 80);
  (*(*(v2 - 8) + 8))(v0 + v9 + v6[25], v2);

  (*(*(v1 - 8) + 8))(v0 + v11, v1);
  return swift_deallocObject();
}

uint64_t sub_24B575AC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019C58, &qword_24B606878);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B575B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018770, &unk_24B6007D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 246)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xA)
    {
      return v10 - 9;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018768, &unk_24B6080E0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24B575C64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018770, &unk_24B6007D0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 246)
  {
    *(a1 + *(a4 + 20)) = a2 + 9;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018768, &unk_24B6080E0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_24B575DB4()
{

  return swift_deallocObject();
}

uint64_t sub_24B575DEC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018770, &unk_24B6007D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019330, &qword_24B603500);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018768, &unk_24B6080E0);
    swift_getFunctionTypeMetadata3();
    v8 = sub_24B5FEE7C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24B575F08(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018770, &unk_24B6007D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019330, &qword_24B603500);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018768, &unk_24B6080E0);
    swift_getFunctionTypeMetadata3();
    v7 = sub_24B5FEE7C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24B57601C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v26 = *a1;
  sub_24B5FEFCC();
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A068, &qword_24B608010);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A070, &qword_24B608018);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A078, &qword_24B608020);
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A080, &qword_24B608028);
  v3 = sub_24B5C3D68();
  v4 = sub_24B5C3B90();
  v5 = sub_24B5D9BC8();
  v6 = sub_24B5D9C1C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A098, &qword_24B608030);
  sub_24B5D9C70();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v2;
  v29 = &type metadata for Modality;
  v30 = v25;
  v31 = v1;
  v32 = &protocol witness table for Modality;
  v33 = &protocol witness table for Modality;
  v34 = v3;
  v35 = v4;
  v36 = v5;
  v37 = v6;
  v38 = OpaqueTypeConformance2;
  type metadata accessor for FilterModalitySectionView(255, &v28);
  sub_24B5FF21C();
  sub_24B5FF21C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A0C8, &qword_24B608048);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A0D0, &qword_24B608050);
  v8 = sub_24B5D9DB4();
  v9 = sub_24B5D9E08();
  v10 = sub_24B5D9E5C();
  v11 = sub_24B5D9EB0();
  v28 = v26;
  v29 = &type metadata for Trainer;
  v30 = v25;
  v31 = v1;
  v32 = &protocol witness table for Trainer;
  v33 = &protocol witness table for Trainer;
  v34 = v8;
  v35 = v9;
  v36 = v10;
  v37 = v11;
  v38 = OpaqueTypeConformance2;
  type metadata accessor for FilterTrainerSectionView(255, &v28);
  sub_24B5FF21C();
  sub_24B5FF21C();
  v12 = sub_24B5FF21C();
  v13 = sub_24B58085C(&qword_27F01A0F8, &qword_27F01A068, &qword_24B608010, MEMORY[0x277D83980]);
  v28 = v27;
  v29 = MEMORY[0x277D837D0];
  v30 = v12;
  v31 = v13;
  v32 = MEMORY[0x277D837E0];
  sub_24B5FF8CC();
  sub_24B5D9F04();
  sub_24B58085C(&qword_27F01A128, &qword_27F01A078, &qword_24B608020, &protocol conformance descriptor for FilterStandardSectionView<A, B>);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B5D9FE8();
  sub_24B58085C(&qword_27F01A158, &qword_27F01A0D0, &qword_24B608050, &protocol conformance descriptor for FilterThemeSectionView<A, B>);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B5FF87C();
  swift_getWitnessTable();
  v14 = sub_24B5FEF2C();
  WitnessTable = swift_getWitnessTable();
  v28 = v14;
  v29 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v28 = v14;
  v29 = WitnessTable;
  v17 = swift_getOpaqueTypeConformance2();
  v28 = OpaqueTypeMetadata2;
  v29 = v17;
  swift_getOpaqueTypeMetadata2();
  v28 = OpaqueTypeMetadata2;
  v29 = v17;
  swift_getOpaqueTypeConformance2();
  sub_24B5FEFBC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A160, &qword_24B609500);
  sub_24B5FF21C();
  v18 = sub_24B5FEFEC();
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A168, &qword_24B608080);
  swift_getWitnessTable();
  sub_24B58085C(&qword_27F01A170, &qword_27F01A160, &qword_24B609500, MEMORY[0x277CDF3A0]);
  swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  v21 = sub_24B58085C(qword_27F01A178, &qword_27F01A168, &qword_24B608080, MEMORY[0x277CDDF68]);
  v28 = v18;
  v29 = v19;
  v30 = v20;
  v31 = v21;
  v22 = swift_getOpaqueTypeMetadata2();
  v28 = v18;
  v29 = v19;
  v30 = v20;
  v31 = v21;
  v23 = swift_getOpaqueTypeConformance2();
  v28 = v22;
  v29 = v23;
  swift_getOpaqueTypeMetadata2();
  v28 = v22;
  v29 = v23;
  swift_getOpaqueTypeConformance2();
  sub_24B5FF00C();
  return swift_getWitnessTable();
}

uint64_t sub_24B576714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for FilterView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = (*(*v5 + 80) + 40) & ~*(*v5 + 80);

  sub_24B5DB820(*(v4 + v6), *(v4 + v6 + 8));
  v7 = v5[11];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018770, &unk_24B6007D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019330, &qword_24B603500);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018768, &unk_24B6080E0);
  swift_getFunctionTypeMetadata3();
  v8 = sub_24B5FEE7C();
  (*(*(v8 - 8) + 8))(v4 + v6 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_24B576884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for FilterView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v7 = *(*v5 + 64);
  v8 = sub_24B5FEF9C();
  v9 = *(v8 - 8);
  v10 = (v6 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = (v4 + v6);
  sub_24B5DB820(*v11, v11[1]);
  v12 = v5[11];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018770, &unk_24B6007D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019330, &qword_24B603500);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018768, &unk_24B6080E0);
  swift_getFunctionTypeMetadata3();
  v13 = sub_24B5FEE7C();
  (*(*(v13 - 8) + 8))(v11 + v12, v13);
  (*(v9 + 8))(v4 + v10, v8);

  return swift_deallocObject();
}

uint64_t sub_24B576A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for FilterView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v7 = *(*v5 + 64);
  v8 = type metadata accessor for FilterSectionDescriptor(0);
  v9 = (v6 + v7 + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80);
  sub_24B5DB820(*(v4 + v6), *(v4 + v6 + 8));
  v10 = v5[11];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018770, &unk_24B6007D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019330, &qword_24B603500);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018768, &unk_24B6080E0);
  swift_getFunctionTypeMetadata3();
  v11 = sub_24B5FEE7C();
  (*(*(v11 - 8) + 8))(v4 + v6 + v10, v11);
  v12 = v4 + v9;

  v13 = *(v8 + 20);
  v14 = sub_24B5FEDEC();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v4 + v9 + v13, 1, v14))
  {
    (*(v15 + 8))(v12 + v13, v14);
  }

  sub_24B5E2A64(*(v12 + *(v8 + 24)), *(v12 + *(v8 + 24) + 8));

  return swift_deallocObject();
}

uint64_t sub_24B576D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for FilterView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = (v4 + ((*(*v5 + 80) + 32) & ~*(*v5 + 80)));
  sub_24B5DB820(*v6, v6[1]);
  v7 = v5[11];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018770, &unk_24B6007D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019330, &qword_24B603500);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018768, &unk_24B6080E0);
  swift_getFunctionTypeMetadata3();
  v8 = sub_24B5FEE7C();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_24B576E78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A310, &qword_24B6081F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B576EF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B5FF0BC();
  *a1 = result;
  return result;
}

uint64_t sub_24B576F70@<X0>(uint64_t a1@<X8>)
{
  result = sub_24B5FF0FC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_24B577008(uint64_t a1)
{
  v1 = *(a1 + 16);
  v16 = *a1;
  v17 = v1;
  v2 = *(a1 + 48);
  v18 = *(a1 + 32);
  v19 = v2;
  type metadata accessor for Option(255, &v16);
  swift_getTupleTypeMetadata2();
  v3 = sub_24B5FFBBC();
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A6A0, &qword_24B609070);
  WitnessTable = swift_getWitnessTable();
  v16 = v3;
  v17 = MEMORY[0x277D837D0];
  *&v18 = v4;
  *(&v18 + 1) = WitnessTable;
  *&v19 = MEMORY[0x277D837E0];
  sub_24B5FF8CC();
  sub_24B5EBEAC();
  swift_getWitnessTable();
  v6 = sub_24B5FF84C();
  v7 = swift_getWitnessTable();
  v16 = v6;
  v17 = v7;
  swift_getOpaqueTypeMetadata2();
  v16 = v6;
  v17 = v7;
  swift_getOpaqueTypeConformance2();
  v8 = sub_24B5FEF2C();
  v9 = swift_getWitnessTable();
  v16 = v8;
  v17 = v9;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v16 = v8;
  v17 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = OpaqueTypeMetadata2;
  v17 = OpaqueTypeConformance2;
  v12 = swift_getOpaqueTypeMetadata2();
  v13 = sub_24B5FF3AC();
  v16 = OpaqueTypeMetadata2;
  v17 = OpaqueTypeConformance2;
  v14 = swift_getOpaqueTypeConformance2();
  v16 = v12;
  v17 = v13;
  *&v18 = v14;
  *(&v18 + 1) = MEMORY[0x277CDE478];
  swift_getOpaqueTypeMetadata2();
  sub_24B5FEFEC();
  sub_24B5FEFEC();
  swift_getTupleTypeMetadata2();
  sub_24B5FF94C();
  swift_getWitnessTable();
  sub_24B5FF87C();
  sub_24B5FEFEC();
  sub_24B5FF2EC();
  sub_24B5FEFEC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B580814(&qword_27F018900, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
  return swift_getWitnessTable();
}

uint64_t sub_24B5773D4()
{
  v9 = *(v0 + 16);
  v1 = *(v0 + 40);
  v10 = *(v0 + 24);
  v8 = v10;
  v11 = v1;
  v2 = *(v0 + 72);
  v12 = *(v0 + 56);
  v13 = v2;
  v3 = (type metadata accessor for FilterDurationSectionView(0, &v9) - 8);
  v4 = v0 + ((*(*v3 + 80) + 88) & ~*(*v3 + 80));
  (*(*(v8 - 8) + 8))(v4);
  v5 = v3[25];
  v6 = sub_24B5FEE1C();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_24B577530()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v17 = *(v0 + 16);
  v1 = v17;
  v18 = v2;
  v19 = *(v0 + 32);
  v15 = v19;
  v20 = v3;
  v21 = v4;
  v22 = v5;
  v23 = *(v0 + 72);
  v16 = v23;
  v6 = (type metadata accessor for FilterDurationSectionView(0, &v17) - 8);
  v7 = *(*v6 + 80);
  v8 = *(*v6 + 64);
  v17 = v1;
  v18 = v15;
  v9 = (v7 + 88) & ~v7;
  *&v19 = v3;
  *(&v19 + 1) = v4;
  v20 = v5;
  v21 = v16;
  v10 = *(type metadata accessor for Option(0, &v17) - 8);
  v11 = (v9 + v8 + *(v10 + 80)) & ~*(v10 + 80);
  (*(*(v2 - 8) + 8))(v0 + v9, v2);
  v12 = v6[25];
  v13 = sub_24B5FEE1C();
  (*(*(v13 - 8) + 8))(v0 + v9 + v12, v13);

  (*(*(v1 - 8) + 8))(v0 + v11, v1);
  return swift_deallocObject();
}

uint64_t sub_24B577750@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24B5FF0DC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24B5777B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A6B0, &qword_24B609078);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B577820@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B5FF07C();
  *a1 = result;
  return result;
}

uint64_t sub_24B577878()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v17 = *(v0 + 16);
  v1 = v17;
  v18 = v2;
  v19 = *(v0 + 32);
  v15 = v19;
  v20 = v3;
  v21 = v4;
  v22 = v5;
  v23 = *(v0 + 72);
  v16 = v23;
  v6 = (type metadata accessor for FilterDurationSectionView(0, &v17) - 8);
  v7 = *(*v6 + 80);
  v8 = *(*v6 + 64);
  v17 = v1;
  v18 = v15;
  v9 = (v7 + 88) & ~v7;
  *&v19 = v3;
  *(&v19 + 1) = v4;
  v20 = v5;
  v21 = v16;
  v10 = *(type metadata accessor for Option(0, &v17) - 8);
  v11 = (v9 + v8 + *(v10 + 80)) & ~*(v10 + 80);
  (*(*(v2 - 8) + 8))(v0 + v9, v2);
  v12 = v6[25];
  v13 = sub_24B5FEE1C();
  (*(*(v13 - 8) + 8))(v0 + v9 + v12, v13);

  (*(*(v1 - 8) + 8))(v0 + v11, v1);
  return swift_deallocObject();
}

uint64_t sub_24B577A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B5FEEFC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 6)
    {
      return v10 - 5;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24B577B44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24B5FEEFC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 5;
  }

  return result;
}

uint64_t sub_24B577C00()
{

  return swift_deallocObject();
}

uint64_t sub_24B577C38(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A888, &qword_24B6094F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A890, &qword_24B6094F8);
  swift_getTupleTypeMetadata3();
  sub_24B5FF94C();
  sub_24B5FFC3C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B5FF87C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A160, &qword_24B609500);
  sub_24B5FF21C();
  swift_getWitnessTable();
  sub_24B58085C(&qword_27F01A170, &qword_27F01A160, &qword_24B609500, MEMORY[0x277CDF3A0]);
  swift_getWitnessTable();
  sub_24B5C3F48();
  swift_getOpaqueTypeMetadata2();
  sub_24B5FEFEC();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_24B577E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for FilterResultsView(0, v5, *(v4 + 24), a4) - 8);
  v7 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v8 = (*(*v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v4 + v7;
  sub_24B5DB820(*(v4 + v7), *(v4 + v7 + 8));
  (*(*(v5 - 8) + 8))(v9 + v6[11], v5);
  sub_24B57BA04(*(v4 + v8), *(v4 + v8 + 8), *(v4 + v8 + 16), *(v4 + v8 + 24), *(v4 + v8 + 32), *(v4 + v8 + 40));

  return swift_deallocObject();
}

uint64_t sub_24B577F84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24B5FF09C();
  *a1 = result;
  return result;
}

uint64_t sub_24B577FD8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24B578020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = (type metadata accessor for FilterResultsView(0, v5, *(v4 + 40), a4) - 8);
  v7 = (*(*v6 + 80) + 48) & ~*(*v6 + 80);
  swift_unknownObjectRelease();
  sub_24B5DB820(*(v4 + v7), *(v4 + v7 + 8));
  (*(*(v5 - 8) + 8))(v4 + v7 + v6[11], v5);

  return swift_deallocObject();
}

uint64_t sub_24B578130(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018BD0, &unk_24B6022F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24B5781EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018BD0, &unk_24B6022F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t BodyFocus.iconName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t BodyFocus.identifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t BodyFocus.name.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t BodyFocus.init(artworks:iconName:identifier:name:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t sub_24B5783BC()
{
  v1 = *v0;
  sub_24B5FFEFC();
  MEMORY[0x24C243ED0](v1);
  return sub_24B5FFF3C();
}

uint64_t sub_24B578404(uint64_t a1)
{
  v2 = *v1;
  sub_24B5FFEFC();
  MEMORY[0x24C243ED0](v2);
  return sub_24B5FFF3C();
}

uint64_t sub_24B578448()
{
  v1 = 0x736B726F77747261;
  v2 = 0x696669746E656469;
  if (*v0 != 2)
  {
    v2 = 1701667182;
  }

  if (*v0)
  {
    v1 = 0x656D614E6E6F6369;
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

uint64_t sub_24B5784C0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B57B338(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B578500(uint64_t a1)
{
  v2 = sub_24B578868();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B57853C(uint64_t a1)
{
  v2 = sub_24B578868();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B578578@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;
}

uint64_t BodyFocus.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0186F8, &unk_24B600420);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v13[5] = v1[2];
  v13[6] = v8;
  v11 = v1[5];
  v13[3] = v1[4];
  v13[4] = v10;
  v13[1] = v1[6];
  v13[2] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B578868();

  sub_24B5FFF5C();
  v18 = v9;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018708, &qword_24B6073B0);
  sub_24B578C98(&qword_27F018710, &qword_27F018718, &protocol conformance descriptor for Artwork, MEMORY[0x277D83B50]);
  sub_24B5FFE8C();

  if (!v2)
  {
    v16 = 1;
    sub_24B5FFE1C();
    v15 = 2;
    sub_24B5FFE3C();
    v14 = 3;
    sub_24B5FFE3C();
  }

  return (*(v5 + 8))(v7, v4);
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_24B578868()
{
  result = qword_27F018700;
  if (!qword_27F018700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018700);
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

uint64_t BodyFocus.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018720, &qword_24B600430);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B578868();
  sub_24B5FFF4C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018708, &qword_24B6073B0);
  v29 = 0;
  sub_24B578C98(&qword_27F018728, &qword_27F018730, &protocol conformance descriptor for Artwork, MEMORY[0x277D83B70]);
  sub_24B5FFDDC();
  v9 = v30;
  v28 = 1;
  v10 = sub_24B5FFD6C();
  v25 = v11;
  v23 = v10;
  v27 = 2;
  v22 = sub_24B5FFD8C();
  v24 = v12;
  v26 = 3;
  v13 = sub_24B5FFD8C();
  v16 = v15;
  v17 = v13;
  (*(v6 + 8))(v8, v5);
  v18 = v22;
  v19 = v23;
  *a2 = v9;
  a2[1] = v19;
  v20 = v24;
  a2[2] = v25;
  a2[3] = v18;
  a2[4] = v20;
  a2[5] = v17;
  a2[6] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
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

uint64_t sub_24B578C98(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018708, &qword_24B6073B0);
    sub_24B57BB64(a2, type metadata accessor for Artwork, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B578D68(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
  {
    return 0;
  }

  else
  {
    return sub_24B5FFECC();
  }
}

uint64_t sub_24B578D98(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a2 + 40);
  v5 = *(a2 + 48);
  if (v4 == v2 && v5 == v3)
  {
    return 1;
  }

  else
  {
    return (sub_24B5FFECC() ^ 1) & 1;
  }
}

uint64_t sub_24B578DE0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
  {
    return 1;
  }

  else
  {
    return (sub_24B5FFECC() ^ 1) & 1;
  }
}

uint64_t sub_24B578E34(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a2 + 40);
  v5 = *(a2 + 48);
  if (v4 == v2 && v5 == v3)
  {
    return 0;
  }

  else
  {
    return sub_24B5FFECC();
  }
}

uint64_t BodyFocus.hash(into:)(__int128 *a1)
{
  v2 = v1[2];
  sub_24B57926C(a1, *v1);
  sub_24B5FFF1C();
  if (v2)
  {
    sub_24B5FFB1C();
  }

  sub_24B5FFB1C();

  return sub_24B5FFB1C();
}

uint64_t BodyFocus.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[2];
  sub_24B5FFEFC();
  sub_24B57926C(v4, v1);
  sub_24B5FFF1C();
  if (v2)
  {
    sub_24B5FFB1C();
  }

  sub_24B5FFB1C();
  sub_24B5FFB1C();
  return sub_24B5FFF3C();
}

uint64_t sub_24B578FC0(__int128 *a1)
{
  v2 = v1[2];
  sub_24B57926C(a1, *v1);
  sub_24B5FFF1C();
  if (v2)
  {
    sub_24B5FFB1C();
  }

  sub_24B5FFB1C();

  return sub_24B5FFB1C();
}

uint64_t sub_24B579068(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[2];
  sub_24B5FFEFC();
  sub_24B57926C(v5, v2);
  sub_24B5FFF1C();
  if (v3)
  {
    sub_24B5FFB1C();
  }

  sub_24B5FFB1C();
  sub_24B5FFB1C();
  return sub_24B5FFF3C();
}

uint64_t sub_24B579124()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_24B579154()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_24B579184()
{
  v1 = *v0;
  sub_24B5FFEFC();
  MEMORY[0x24C243ED0](v1);
  return sub_24B5FFF3C();
}

uint64_t sub_24B5791F8(uint64_t a1)
{
  v2 = *v1;
  sub_24B5FFEFC();
  MEMORY[0x24C243ED0](v2);
  return sub_24B5FFF3C();
}

void *sub_24B579250@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_24B57926C(__int128 *a1, uint64_t a2)
{
  v54 = sub_24B5FEDFC();
  v57 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v47 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018768, &unk_24B6080E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v40 - v6;
  v8 = sub_24B5FEE8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v45 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018770, &unk_24B6007D0);
  MEMORY[0x28223BE20](v11 - 8);
  v56 = &v40 - v12;
  v53 = type metadata accessor for Artwork(0);
  v52 = *(v53 - 8);
  v13 = MEMORY[0x28223BE20](v53);
  v58 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v51 = &v40 - v15;
  v16 = a1[3];
  v61 = a1[2];
  v62 = v16;
  v63 = *(a1 + 8);
  v18 = *a1;
  v17 = a1[1];
  v40 = a1;
  v59 = v18;
  v60 = v17;
  v50 = sub_24B5FFF3C();
  v19 = a2 + 56;
  v20 = 1 << *(a2 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(a2 + 56);
  v23 = (v20 + 63) >> 6;
  v49 = (v9 + 48);
  v44 = (v9 + 32);
  v43 = (v9 + 8);
  v48 = (v57 + 48);
  v42 = (v57 + 32);
  v41 = (v57 + 8);
  v55 = a2;

  v25 = 0;
  v26 = 0;
  v46 = v8;
  while (v22)
  {
    v57 = v25;
    v32 = v56;
LABEL_13:
    v34 = v51;
    sub_24B57BA34(*(v55 + 48) + *(v52 + 72) * (__clz(__rbit64(v22)) | (v26 << 6)), v51);
    v35 = v34;
    v36 = v58;
    sub_24B57BA98(v35, v58);
    sub_24B5FFEFC();
    sub_24B57BAFC(v36, v32, &qword_27F018770, &unk_24B6007D0);
    if ((*v49)(v32, 1, v8) == 1)
    {
      sub_24B5FFF1C();
    }

    else
    {
      v37 = v45;
      (*v44)(v45, v32, v8);
      sub_24B5FFF1C();
      sub_24B57BB64(&qword_27F018778, MEMORY[0x277D09D68], MEMORY[0x277D09D78]);
      sub_24B5FFA4C();
      (*v43)(v37, v8);
    }

    v38 = v53;
    sub_24B5FFB1C();

    sub_24B57BAFC(v58 + *(v38 + 24), v7, &qword_27F018768, &unk_24B6080E0);
    v39 = v54;
    if ((*v48)(v7, 1, v54) == 1)
    {
      sub_24B5FFF1C();
    }

    else
    {
      v27 = v7;
      v28 = v47;
      (*v42)(v47, v27, v39);
      sub_24B5FFF1C();
      sub_24B57BB64(&qword_27F018780, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      sub_24B5FFA4C();
      v29 = v28;
      v7 = v27;
      v8 = v46;
      (*v41)(v29, v39);
    }

    v30 = v57;
    v22 &= v22 - 1;
    v31 = sub_24B5FFF3C();
    result = sub_24B57BBAC(v58);
    v25 = v31 ^ v30;
  }

  v32 = v56;
  while (1)
  {
    v33 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v33 >= v23)
    {

      return MEMORY[0x24C243ED0](v25);
    }

    v22 = *(v19 + 8 * v33);
    ++v26;
    if (v22)
    {
      v57 = v25;
      v26 = v33;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B5799FC(__int128 *a1, uint64_t a2)
{
  result = sub_24B5FFF3C();
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  for (i = (v6 + 63) >> 6; v8; v4 ^= result)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(a2 + 48) + (v11 | (v10 << 6)));
    sub_24B5FFEFC();
    MEMORY[0x24C243ED0](v12);
    result = sub_24B5FFF3C();
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      return MEMORY[0x24C243ED0](v4);
    }

    v8 = *(a2 + 56 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B579B28(__int128 *a1, uint64_t a2)
{
  sub_24B5FFF3C();
  v31 = a2;
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  v30 = v7;
  if (v6)
  {
    while (1)
    {
LABEL_8:
      v12 = *(v31 + 48) + 48 * (__clz(__rbit64(v6)) | (v10 << 6));
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      v16 = *(v12 + 24);
      v17 = *(v12 + 32);
      v18 = *(v12 + 40);
      sub_24B5FFEFC();
      v19 = v18;
      v33 = v9;
      v32 = v18;
      if (v18 <= 3)
      {
        if (v18 > 1)
        {
          v7 = v30;
          if (v19 == 2)
          {
            MEMORY[0x24C243ED0](2);
            v20 = v13;
            v21 = v14;
            v22 = v15;
            v23 = v16;
            v24 = v17;
            v25 = 2;
          }

          else
          {
            MEMORY[0x24C243ED0](3);
            v20 = v13;
            v21 = v14;
            v22 = v15;
            v23 = v16;
            v24 = v17;
            v25 = 3;
          }
        }

        else
        {
          v7 = v30;
          if (v19)
          {
            MEMORY[0x24C243ED0](1);
            sub_24B57BA1C(v13, v14, v15, v16, v17, 1u);
            sub_24B5FFB1C();
            if ((v15 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v26 = v15;
            }

            else
            {
              v26 = 0;
            }

            MEMORY[0x24C243EF0](v26);
            if ((v16 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v27 = v16;
            }

            else
            {
              v27 = 0;
            }

            MEMORY[0x24C243EF0](v27);
            if ((v17 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v28 = v17;
            }

            else
            {
              v28 = 0;
            }

            MEMORY[0x24C243EF0](v28);
            goto LABEL_35;
          }

          MEMORY[0x24C243ED0](0);
          v20 = v13;
          v21 = v14;
          v22 = v15;
          v23 = v16;
          v24 = v17;
          v25 = 0;
        }

        goto LABEL_34;
      }

      if (v18 <= 5)
      {
        v7 = v30;
        if (v19 == 4)
        {
          MEMORY[0x24C243ED0](4);
          v20 = v13;
          v21 = v14;
          v22 = v15;
          v23 = v16;
          v24 = v17;
          v25 = 4;
        }

        else
        {
          MEMORY[0x24C243ED0](5);
          v20 = v13;
          v21 = v14;
          v22 = v15;
          v23 = v16;
          v24 = v17;
          v25 = 5;
        }

        goto LABEL_34;
      }

      v7 = v30;
      if (v19 == 6)
      {
        break;
      }

      if (v19 == 7)
      {
        MEMORY[0x24C243ED0](7);
        v20 = v13;
        v21 = v14;
        v22 = v15;
        v23 = v16;
        v24 = v17;
        v25 = 7;
LABEL_34:
        sub_24B57BA1C(v20, v21, v22, v23, v24, v25);
        sub_24B5FFB1C();
        goto LABEL_35;
      }

      MEMORY[0x24C243ED0](8);
      sub_24B5FFB1C();

LABEL_35:
      v6 &= v6 - 1;
      v29 = sub_24B5FFF3C();
      result = sub_24B57BA04(v13, v14, v15, v16, v17, v32);
      v9 = v29 ^ v33;
      if (!v6)
      {
        goto LABEL_4;
      }
    }

    MEMORY[0x24C243ED0](6);
    v20 = v13;
    v21 = v14;
    v22 = v15;
    v23 = v16;
    v24 = v17;
    v25 = 6;
    goto LABEL_34;
  }

LABEL_4:
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x24C243ED0](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++v10;
    if (v6)
    {
      v10 = v11;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B579FA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  *&v21[13] = *(a1 + 32);
  *&v21[15] = v3;
  v21[17] = *(a1 + 64);
  v4 = *(a1 + 16);
  *&v21[9] = *a1;
  *&v21[11] = v4;
  sub_24B5FFF3C();
  v19 = a2;
  v5 = a2 + 56;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v12 = 0;
  while (v8)
  {
    v20 = v11;
LABEL_11:
    v15 = (*(v19 + 48) + 72 * (__clz(__rbit64(v8)) | (v12 << 6)));
    v16 = *v15;
    v17 = v15[2];
    v18 = v15[6];
    sub_24B5FFEFC();

    sub_24B57926C(v21, v16);
    sub_24B5FFF1C();
    if (v17)
    {
      sub_24B5FFB1C();
    }

    sub_24B5FFB1C();
    sub_24B5FFF1C();
    if (v18)
    {
      sub_24B5FFB1C();
    }

    v8 &= v8 - 1;
    sub_24B5FFB1C();
    v13 = sub_24B5FFF3C();

    v11 = v13 ^ v20;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v9)
    {

      return MEMORY[0x24C243ED0](v11);
    }

    v8 = *(v5 + 8 * v14);
    ++v12;
    if (v8)
    {
      v20 = v11;
      v12 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B57A1D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  *&v21[13] = *(a1 + 32);
  *&v21[15] = v3;
  v21[17] = *(a1 + 64);
  v4 = *(a1 + 16);
  *&v21[9] = *a1;
  *&v21[11] = v4;
  sub_24B5FFF3C();
  v19 = a2;
  v5 = a2 + 56;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v12 = 0;
  while (v8)
  {
    v20 = v11;
LABEL_11:
    v15 = (*(v19 + 48) + 72 * (__clz(__rbit64(v8)) | (v12 << 6)));
    v16 = *v15;
    v17 = v15[2];
    v18 = v15[6];
    sub_24B5FFEFC();

    swift_bridgeObjectRetain_n();

    sub_24B57926C(v21, v16);
    sub_24B5FFF1C();
    if (v17)
    {
      sub_24B5FFB1C();
    }

    sub_24B5FFB1C();
    sub_24B5FFF1C();
    if (v18)
    {
      sub_24B5FFB1C();
    }

    v8 &= v8 - 1;
    sub_24B5FFB1C();

    v13 = sub_24B5FFF3C();

    v11 = v13 ^ v20;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v9)
    {

      return MEMORY[0x24C243ED0](v11);
    }

    v8 = *(v5 + 8 * v14);
    ++v12;
    if (v8)
    {
      v20 = v11;
      v12 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B57A410(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  *&v20[13] = *(a1 + 32);
  *&v20[15] = v3;
  v20[17] = *(a1 + 64);
  v4 = *(a1 + 16);
  *&v20[9] = *a1;
  *&v20[11] = v4;
  sub_24B5FFF3C();
  v18 = a2;
  v5 = a2 + 56;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v12 = 0;
  while (v8)
  {
    v19 = v11;
LABEL_11:
    v15 = (*(v18 + 48) + 56 * (__clz(__rbit64(v8)) | (v12 << 6)));
    v16 = *v15;
    v17 = v15[2];
    sub_24B5FFEFC();

    swift_bridgeObjectRetain_n();

    sub_24B57926C(v20, v16);
    sub_24B5FFF1C();
    if (v17)
    {
      sub_24B5FFB1C();
    }

    v8 &= v8 - 1;
    sub_24B5FFB1C();
    sub_24B5FFB1C();

    v13 = sub_24B5FFF3C();

    v11 = v13 ^ v19;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v9)
    {

      return MEMORY[0x24C243ED0](v11);
    }

    v8 = *(v5 + 8 * v14);
    ++v12;
    if (v8)
    {
      v19 = v11;
      v12 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B57A604(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  *&v27[13] = *(a1 + 32);
  *&v27[15] = v3;
  v27[17] = *(a1 + 64);
  v4 = *(a1 + 16);
  *&v27[9] = *a1;
  *&v27[11] = v4;
  sub_24B5FFF3C();
  v23 = a2;
  v5 = a2 + 56;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v12 = 0;
  v22 = v5;
  while (v8)
  {
    v25 = v11;
LABEL_12:
    v15 = (*(v23 + 48) + 72 * (__clz(__rbit64(v8)) | (v12 << 6)));
    v16 = *v15;
    v17 = v15[3];
    v24 = v15[1];
    v18 = v15[8];
    sub_24B5FFEFC();
    MEMORY[0x24C243ED0](*(v16 + 16));
    v26 = v16;
    v19 = *(v16 + 16);
    if (v19)
    {
      v20 = (v26 + 32);
      do
      {
        v21 = *v20++;
        MEMORY[0x24C243ED0](v21);
        --v19;
      }

      while (v19);
    }

    sub_24B57926C(v27, v24);
    sub_24B5FFF1C();
    if (v17)
    {
      sub_24B5FFB1C();
    }

    v8 &= v8 - 1;
    sub_24B5FFB1C();
    sub_24B5FFB1C();
    sub_24B5799FC(v27, v18);
    v13 = sub_24B5FFF3C();

    v11 = v13 ^ v25;
    v5 = v22;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v9)
    {

      return MEMORY[0x24C243ED0](v11);
    }

    v8 = *(v5 + 8 * v14);
    ++v12;
    if (v8)
    {
      v25 = v11;
      v12 = v14;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B57A87C(__int128 *a1, uint64_t a2)
{
  sub_24B5FFF3C();
  v30 = a2;
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  v28 = v7;
  v29 = a2 + 56;
  while (v6)
  {
LABEL_11:
    v13 = (*(v30 + 48) + 56 * (__clz(__rbit64(v6)) | (v10 << 6)));
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[3];
    v17 = v13[4];
    v18 = v13[6];
    sub_24B5FFEFC();
    MEMORY[0x24C243ED0](v14);
    MEMORY[0x24C243ED0](*(v15 + 16));
    v19 = *(v15 + 16);
    v31 = v18;
    if (v19)
    {

      v20 = v15 + 40;
      do
      {

        sub_24B5FFB1C();

        v20 += 16;
        --v19;
      }

      while (v19);
    }

    else
    {
    }

    v32 = v9;
    sub_24B5FFF1C();
    if (v16)
    {
      sub_24B5FFB1C();
    }

    v6 &= v6 - 1;
    v21 = 1 << *(v17 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v17 + 64);
    v24 = (v21 + 63) >> 6;

    v25 = 0;
    v26 = 0;
    if (v23)
    {
      while (1)
      {
        v33 = v25;
LABEL_27:
        v23 &= v23 - 1;

        sub_24B5FFB1C();

        sub_24B5FFB1C();

        result = sub_24B5FFF3C();
        v25 = result ^ v33;
        if (!v23)
        {
          goto LABEL_23;
        }
      }
    }

    while (1)
    {
LABEL_23:
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v27 >= v24)
      {
        break;
      }

      v23 = *(v17 + 64 + 8 * v27);
      ++v26;
      if (v23)
      {
        v33 = v25;
        v26 = v27;
        goto LABEL_27;
      }
    }

    MEMORY[0x24C243ED0](v25);
    sub_24B5FFF1C();
    if (v31)
    {
      sub_24B5FFB1C();
    }

    v7 = v28;
    v3 = v29;
    v11 = sub_24B5FFF3C();

    v9 = v11 ^ v32;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v7)
    {

      return MEMORY[0x24C243ED0](v9);
    }

    v6 = *(v3 + 8 * v12);
    ++v10;
    if (v6)
    {
      v10 = v12;
      goto LABEL_11;
    }
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_24B57AC24(__int128 *a1, uint64_t a2)
{
  sub_24B5FFF3C();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= v19)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(a2 + 48) + 40 * (v11 | (v10 << 6)));
    v13 = v12[2];
    v14 = v12[3];
    v15 = v12[4];
    sub_24B5FFEFC();

    sub_24B5FFB1C();
    if (v13 == 0.0)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = v13;
    }

    MEMORY[0x24C243EF0](*&v16);
    if (v14 == 0.0)
    {
      v17 = 0.0;
    }

    else
    {
      v17 = v14;
    }

    MEMORY[0x24C243EF0](*&v17);
    if (v15 == 0.0)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = v15;
    }

    MEMORY[0x24C243EF0](*&v18);
    v19 = sub_24B5FFF3C();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x24C243ED0](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B57ADD8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  *&v22[13] = *(a1 + 32);
  *&v22[15] = v3;
  v22[17] = *(a1 + 64);
  v4 = *(a1 + 16);
  *&v22[9] = *a1;
  *&v22[11] = v4;
  sub_24B5FFF3C();
  v19 = a2;
  v5 = a2 + 56;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v12 = 0;
  while (v8)
  {
    v21 = v11;
LABEL_11:
    v15 = (*(v19 + 48) + 72 * (__clz(__rbit64(v8)) | (v12 << 6)));
    v16 = *v15;
    v17 = v15[2];
    v20 = v15[7];
    v18 = v15[8];
    sub_24B5FFEFC();

    sub_24B57926C(v22, v16);
    sub_24B5FFF1C();
    if (v17)
    {
      sub_24B5FFB1C();
    }

    v8 &= v8 - 1;
    sub_24B5FFB1C();
    sub_24B5FFB1C();
    MEMORY[0x24C243ED0](v20);
    sub_24B5A8CFC(v22, v18);
    v13 = sub_24B5FFF3C();

    v11 = v13 ^ v21;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v9)
    {

      return MEMORY[0x24C243ED0](v11);
    }

    v8 = *(v5 + 8 * v14);
    ++v12;
    if (v8)
    {
      v21 = v11;
      v12 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B57AFF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  *&v20[13] = *(a1 + 32);
  *&v20[15] = v3;
  v20[17] = *(a1 + 64);
  v4 = *(a1 + 16);
  *&v20[9] = *a1;
  *&v20[11] = v4;
  sub_24B5FFF3C();
  v18 = a2;
  v5 = a2 + 56;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v12 = 0;
  while (v8)
  {
    v19 = v11;
LABEL_11:
    v15 = (*(v18 + 48) + 56 * (__clz(__rbit64(v8)) | (v12 << 6)));
    v16 = *v15;
    v17 = v15[2];
    sub_24B5FFEFC();

    sub_24B57926C(v20, v16);
    sub_24B5FFF1C();
    if (v17)
    {
      sub_24B5FFB1C();
    }

    v8 &= v8 - 1;
    sub_24B5FFB1C();
    sub_24B5FFB1C();
    v13 = sub_24B5FFF3C();

    v11 = v13 ^ v19;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v9)
    {

      return MEMORY[0x24C243ED0](v11);
    }

    v8 = *(v5 + 8 * v14);
    ++v12;
    if (v8)
    {
      v19 = v11;
      v12 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B57B1DC(__int128 *a1, uint64_t a2)
{
  sub_24B5FFF3C();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x24C243ED0](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_24B5FFEFC();

        sub_24B5FFB1C();
        v11 = sub_24B5FFF3C();

        v8 ^= v11;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B57B338(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736B726F77747261 && a2 == 0xE800000000000000;
  if (v4 || (sub_24B5FFECC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E6E6F6369 && a2 == 0xE800000000000000 || (sub_24B5FFECC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_24B5FFECC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24B5FFECC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t _s16FitnessFiltering9BodyFocusV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v13 = a1[5];
  v14 = a1[6];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  if ((sub_24B584F70(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (!v4)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (!v7 || (v2 != v6 || v4 != v7) && (sub_24B5FFECC() & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  if ((v3 != v8 || v5 != v10) && (sub_24B5FFECC() & 1) == 0)
  {
    return 0;
  }

  if (v13 == v9 && v14 == v11)
  {
    return 1;
  }

  return sub_24B5FFECC();
}

unint64_t sub_24B57B5EC()
{
  result = qword_27F018738;
  if (!qword_27F018738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018738);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_24B57B65C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_24B57B6A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for HKWorkoutActivityType()
{
  if (!qword_27F018740)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27F018740);
    }
  }
}

uint64_t getEnumTagSinglePayload for BodyFocus.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BodyFocus.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24B57B8B8()
{
  result = qword_27F018748;
  if (!qword_27F018748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018748);
  }

  return result;
}

unint64_t sub_24B57B958()
{
  result = qword_27F018758;
  if (!qword_27F018758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018758);
  }

  return result;
}

unint64_t sub_24B57B9B0()
{
  result = qword_27F018760;
  if (!qword_27F018760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018760);
  }

  return result;
}

uint64_t sub_24B57BA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 <= 7u)
  {
  }

  return result;
}

uint64_t sub_24B57BA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 <= 7u)
  {
  }

  return result;
}

uint64_t sub_24B57BA34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B57BA98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B57BAFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24B57BB64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B57BBAC(uint64_t a1)
{
  v2 = type metadata accessor for Artwork(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Filter.init(exclusions:filterContentType:inclusions:sortMode:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  *a5 = result;
  *(a5 + 8) = v5;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

unint64_t sub_24B57BC50()
{
  v1 = 0x6F6973756C636E69;
  v2 = 0x6F6973756C637865;
  if (*v0 != 2)
  {
    v1 = 0x65646F4D74726F73;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_24B57BCC4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B57CB84(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B57BCEC(uint64_t a1)
{
  v2 = sub_24B57BFE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B57BD28(uint64_t a1)
{
  v2 = sub_24B57BFE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Filter.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018788, &qword_24B6007E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v15 = *(v1 + 8);
  v14 = v1[2];
  v13 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B57BFE8();

  sub_24B5FFF5C();
  v17 = v8;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018798, &qword_24B6007E8);
  sub_24B57C454(&qword_27F0187A0, sub_24B57C03C, MEMORY[0x277D83B50]);
  sub_24B5FFE8C();

  if (!v2)
  {
    v9 = v14;
    v10 = v13;
    LOBYTE(v17) = v15;
    v16 = 1;
    sub_24B57C090();
    sub_24B5FFE8C();
    v17 = v9;
    v16 = 2;
    sub_24B5FFE8C();
    LOBYTE(v17) = v10;
    v16 = 3;
    sub_24B57C0E4();
    sub_24B5FFE8C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_24B57BFE8()
{
  result = qword_27F018790;
  if (!qword_27F018790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018790);
  }

  return result;
}

unint64_t sub_24B57C03C()
{
  result = qword_27F0187A8;
  if (!qword_27F0187A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0187A8);
  }

  return result;
}

unint64_t sub_24B57C090()
{
  result = qword_27F0187B0;
  if (!qword_27F0187B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0187B0);
  }

  return result;
}

unint64_t sub_24B57C0E4()
{
  result = qword_27F0187B8;
  if (!qword_27F0187B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0187B8);
  }

  return result;
}

uint64_t Filter.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0187C0, &qword_24B6007F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B57BFE8();
  sub_24B5FFF4C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018798, &qword_24B6007E8);
  v17 = 0;
  sub_24B57C454(&qword_27F0187C8, sub_24B57C4CC, MEMORY[0x277D83B70]);
  sub_24B5FFDDC();
  v16 = v18;
  v17 = 1;
  sub_24B57C520();
  sub_24B5FFDDC();
  v15 = v18;
  v17 = 2;
  sub_24B5FFDDC();
  v11 = v15;
  v12 = v18;
  v17 = 3;
  sub_24B57C574();
  sub_24B5FFDDC();
  (*(v6 + 8))(v8, v5);
  v13 = v18;
  *v9 = v16;
  *(v9 + 8) = v11;
  *(v9 + 16) = v12;
  *(v9 + 24) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24B57C454(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018798, &qword_24B6007E8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B57C4CC()
{
  result = qword_27F0187D0;
  if (!qword_27F0187D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0187D0);
  }

  return result;
}

unint64_t sub_24B57C520()
{
  result = qword_27F0187D8;
  if (!qword_27F0187D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0187D8);
  }

  return result;
}

unint64_t sub_24B57C574()
{
  result = qword_27F0187E0;
  if (!qword_27F0187E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0187E0);
  }

  return result;
}

uint64_t Filter.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_24B579B28(a1, *v1);
  MEMORY[0x24C243ED0](v3);
  sub_24B579B28(a1, v4);
  sub_24B5FFB1C();
}

uint64_t Filter.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = v0[2];
  v3 = *(v0 + 24);
  v6 = *v0;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  sub_24B5FFEFC();
  Filter.hash(into:)(v5);
  return sub_24B5FFF3C();
}

uint64_t sub_24B57C7F4()
{
  v1 = *(v0 + 8);
  v2 = v0[2];
  v3 = *(v0 + 24);
  v6 = *v0;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  sub_24B5FFEFC();
  Filter.hash(into:)(v5);
  return sub_24B5FFF3C();
}

uint64_t sub_24B57C85C(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = v1[2];
  v4 = *(v1 + 24);
  v7 = *v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  sub_24B5FFEFC();
  Filter.hash(into:)(v6);
  return sub_24B5FFF3C();
}

uint64_t _s16FitnessFiltering6FilterV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if ((sub_24B587A08(*a1, *a2) & 1) == 0 || ((v2 ^ v5) & 1) != 0 || (sub_24B587A08(v3, v6) & 1) == 0)
  {
    return 0;
  }

  return sub_24B5886F8(v4, v7);
}

unint64_t sub_24B57C968()
{
  result = qword_27F0187E8;
  if (!qword_27F0187E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0187E8);
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

uint64_t sub_24B57C9D0(uint64_t *a1, int a2)
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

uint64_t sub_24B57CA18(uint64_t result, int a2, int a3)
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

unint64_t sub_24B57CA80()
{
  result = qword_27F0187F0;
  if (!qword_27F0187F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0187F0);
  }

  return result;
}

unint64_t sub_24B57CAD8()
{
  result = qword_27F0187F8;
  if (!qword_27F0187F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0187F8);
  }

  return result;
}

unint64_t sub_24B57CB30()
{
  result = qword_27F018800;
  if (!qword_27F018800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018800);
  }

  return result;
}

uint64_t sub_24B57CB84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6973756C637865 && a2 == 0xEA0000000000736ELL;
  if (v4 || (sub_24B5FFECC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024B60A770 == a2 || (sub_24B5FFECC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6973756C636E69 && a2 == 0xEA0000000000736ELL || (sub_24B5FFECC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65646F4D74726F73 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24B5FFECC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t FilterThemeSectionView.init(sizeClass:headerViewBuilder:options:onOptionSelected:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 32) = a6;
  *(a7 + 40) = a4;
  *(a7 + 24) = a5;
  return result;
}

uint64_t FilterThemeSectionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v54 = a1;
  v52 = *(a1 + 48);
  v57 = *(a1 + 56);
  v56 = *(a1 + 64);
  v55 = *(a1 + 72);
  *(&v73 + 1) = v57;
  *&v74 = v56;
  *(&v74 + 1) = v55;
  v53 = (a1 + 40);
  v59 = *(a1 + 16);
  v51 = *(a1 + 32);
  *&v72 = v59;
  *(&v72 + 1) = v51;
  *&v73 = v52;
  type metadata accessor for Option(255, &v72);
  swift_getTupleTypeMetadata2();
  v3 = sub_24B5FFBBC();
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018808, &qword_24B600A70);
  WitnessTable = swift_getWitnessTable();
  *&v72 = v3;
  *(&v72 + 1) = MEMORY[0x277D837D0];
  *&v73 = v4;
  *(&v73 + 1) = WitnessTable;
  *&v74 = MEMORY[0x277D837E0];
  sub_24B5FF8CC();
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018810, &qword_24B600A78);
  v7 = sub_24B57D53C();
  *&v72 = v6;
  *(&v72 + 1) = v7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v8 = sub_24B5FF93C();
  v9 = swift_getWitnessTable();
  *&v72 = v8;
  *(&v72 + 1) = v9;
  swift_getOpaqueTypeMetadata2();
  *&v72 = v8;
  *(&v72 + 1) = v9;
  swift_getOpaqueTypeConformance2();
  v10 = sub_24B5FEF2C();
  v11 = swift_getWitnessTable();
  *&v72 = v10;
  *(&v72 + 1) = v11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = sub_24B5FF3AC();
  *&v72 = v10;
  *(&v72 + 1) = v11;
  v14 = swift_getOpaqueTypeConformance2();
  *&v72 = OpaqueTypeMetadata2;
  *(&v72 + 1) = v13;
  v15 = MEMORY[0x277CDE478];
  *&v73 = v14;
  *(&v73 + 1) = MEMORY[0x277CDE478];
  v16 = swift_getOpaqueTypeMetadata2();
  *&v72 = OpaqueTypeMetadata2;
  *(&v72 + 1) = v13;
  *&v73 = v14;
  *(&v73 + 1) = v15;
  v17 = swift_getOpaqueTypeConformance2();
  *&v72 = v16;
  *(&v72 + 1) = v17;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v47 = sub_24B5FF94C();
  v46 = swift_getWitnessTable();
  v18 = sub_24B5FF87C();
  v48 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v45 = &v43 - v19;
  v49 = sub_24B5FEFEC();
  v50 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v44 = &v43 - v20;
  v21 = sub_24B5FF8DC();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = (&v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_24B5FF8EC();
  v26 = *(v25 - 8);
  v27 = v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v43 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v2[1];
  v72 = *v2;
  v73 = v30;
  v74 = v2[2];
  *v24 = xmmword_24B600A10;
  (*(v22 + 104))(v24, *MEMORY[0x277CDF108], v21);
  sub_24B5FF8FC();
  v31 = sub_24B5FFB9C();
  *(v31 + 16) = 4;
  v32 = v31 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
  v33 = *(v26 + 16);
  v33(v32, v29, v25);
  v34 = *(v26 + 72);
  v33(v32 + v34, v29, v25);
  v33(v32 + 2 * v34, v29, v25);
  (*(v27 + 32))(v32 + 3 * v34, v29, v25);
  sub_24B5FF1DC();
  *&v35 = v51;
  *(&v35 + 1) = *v53;
  v60 = v59;
  v61 = v35;
  v62 = v52;
  v63 = v57;
  v64 = v56;
  v65 = v55;
  v66 = *(v54 + 80);
  v67 = &v72;
  v68 = v31;
  v36 = v45;
  sub_24B5FF86C();

  v37 = swift_getWitnessTable();
  v38 = v44;
  sub_24B5FF75C();
  (*(v48 + 8))(v36, v18);
  v39 = sub_24B5FF3EC();
  v69 = v37;
  v70 = MEMORY[0x277CDFC48];
  v40 = v49;
  v41 = swift_getWitnessTable();
  sub_24B57FC54(v39, 0x4034000000000000, 0, v40, v41);
  return (*(v50 + 8))(v38, v40);
}

unint64_t sub_24B57D53C()
{
  result = qword_27F018818;
  if (!qword_27F018818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018810, &qword_24B600A78);
    sub_24B57D5F8();
    sub_24B580814(qword_27F018878, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018818);
  }

  return result;
}

unint64_t sub_24B57D5F8()
{
  result = qword_27F018820;
  if (!qword_27F018820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018828, &qword_24B600A80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018830, &qword_24B600A88);
    sub_24B57D6EC();
    swift_getOpaqueTypeConformance2();
    sub_24B58085C(&qword_27F018868, &qword_27F018870, &qword_24B600AA0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018820);
  }

  return result;
}

unint64_t sub_24B57D6EC()
{
  result = qword_27F018838;
  if (!qword_27F018838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018830, &qword_24B600A88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018840, &unk_24B600A90);
    sub_24B58085C(&qword_27F018848, &qword_27F018840, &unk_24B600A90, MEMORY[0x277CDF028]);
    sub_24B57D828();
    swift_getOpaqueTypeConformance2();
    sub_24B58085C(&qword_27F018858, &qword_27F018860, &qword_24B600C40, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018838);
  }

  return result;
}

unint64_t sub_24B57D828()
{
  result = qword_27F018850;
  if (!qword_27F018850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018850);
  }

  return result;
}

uint64_t sub_24B57D87C(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = sub_24B5FF8EC();
      v5 = sub_24B5FFB9C();
      *(v5 + 16) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 16);
      v8(v5 + v7, v3, v4);
      v9 = a2 - 1;
      if (a2 != 1)
      {
        v10 = *(v6 + 72);
        v11 = v5 + v10 + v7;
        do
        {
          v8(v11, v3, v4);
          v11 += v10;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
    }

    v12 = sub_24B5FF8EC();
    (*(*(v12 - 8) + 8))(v3, v12);
    return v5;
  }

  return result;
}

uint64_t sub_24B57D9D8@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v98 = a8;
  v97 = a7;
  v108 = a6;
  v94 = a5;
  v120 = a3;
  v109 = a2;
  v119 = a9;
  v122 = a12;
  v96 = a11;
  v95 = a10;
  v118 = sub_24B5FF23C();
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v116 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24B5FF38C();
  MEMORY[0x28223BE20](v19 - 8);
  v113 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24B5FF3AC();
  v114 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v112 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_24B5FF33C();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v121 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = a3;
  v140 = a5;
  v141 = a7;
  v142 = a8;
  v143 = a10;
  v144 = a11;
  type metadata accessor for Option(255, &v139);
  swift_getTupleTypeMetadata2();
  v24 = sub_24B5FFBBC();
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018808, &qword_24B600A70);
  WitnessTable = swift_getWitnessTable();
  v139 = v24;
  v140 = MEMORY[0x277D837D0];
  v141 = v25;
  v142 = WitnessTable;
  v143 = MEMORY[0x277D837E0];
  sub_24B5FF8CC();
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018810, &qword_24B600A78);
  v28 = sub_24B57D53C();
  v139 = v27;
  v140 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v29 = sub_24B5FF93C();
  v30 = swift_getWitnessTable();
  v139 = v29;
  v140 = v30;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v139 = v29;
  v140 = v30;
  v83 = swift_getOpaqueTypeConformance2();
  v31 = sub_24B5FEF2C();
  v103 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v33 = &v83 - v32;
  v34 = swift_getWitnessTable();
  v139 = v31;
  v140 = v34;
  v35 = swift_getOpaqueTypeMetadata2();
  v101 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v91 = &v83 - v36;
  v139 = v31;
  v140 = v34;
  v86 = v34;
  v37 = swift_getOpaqueTypeConformance2();
  v139 = v35;
  v140 = v21;
  v38 = MEMORY[0x277CDE478];
  v141 = v37;
  v142 = MEMORY[0x277CDE478];
  v39 = swift_getOpaqueTypeMetadata2();
  v104 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v102 = &v83 - v40;
  v87 = v35;
  v139 = v35;
  v140 = v21;
  v115 = v21;
  v85 = v37;
  v141 = v37;
  v142 = v38;
  v41 = swift_getOpaqueTypeConformance2();
  v100 = v39;
  v139 = v39;
  v140 = v41;
  v99 = v41;
  v42 = swift_getOpaqueTypeMetadata2();
  v106 = *(v42 - 8);
  v43 = MEMORY[0x28223BE20](v42);
  v107 = &v83 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v89 = &v83 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v105 = &v83 - v48;
  v49 = a4;
  v50 = *(a4 - 1);
  v51 = MEMORY[0x28223BE20](v47);
  v53 = &v83 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v51);
  v56 = &v83 - v55;
  (*(a1 + 8))(v54);
  v90 = v56;
  v57 = v122;
  sub_24B5FC7F0();
  v88 = v50;
  v58 = *(v50 + 8);
  v93 = v50 + 8;
  v92 = v58;
  v58(v53, v49);
  v59 = sub_24B5FF3BC();
  v124 = v120;
  v120 = v49;
  v125 = v49;
  v126 = v94;
  v127 = v108;
  v128 = v97;
  v129 = v98;
  v130 = v95;
  v131 = v96;
  v132 = v57;
  v133 = v109;
  v134 = a1;
  v109 = v33;
  sub_24B5EB7C0(v59, sub_24B58035C, v123, OpaqueTypeMetadata2, v83);
  sub_24B5FF31C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018908, &unk_24B600B70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24B600A20;
  LOBYTE(v56) = sub_24B5FF3DC();
  *(inited + 32) = v56;
  v61 = sub_24B5FF3BC();
  *(inited + 33) = v61;
  sub_24B5FF3CC();
  sub_24B5FF3CC();
  if (sub_24B5FF3CC() != v56)
  {
    sub_24B5FF3CC();
  }

  sub_24B5FF3CC();
  if (sub_24B5FF3CC() != v61)
  {
    sub_24B5FF3CC();
  }

  v62 = v102;
  v63 = v91;
  v64 = v121;
  v65 = v109;
  sub_24B5FF62C();
  (*(v110 + 8))(v64, v111);
  (*(v103 + 8))(v65, v31);
  sub_24B5FF37C();
  v66 = v112;
  sub_24B5FF39C();
  v67 = v87;
  v68 = v115;
  sub_24B5FF67C();
  (*(v114 + 8))(v66, v68);
  (*(v101 + 8))(v63, v67);
  v69 = v116;
  sub_24B5FF22C();
  LOBYTE(v65) = sub_24B5FF3BC();
  sub_24B5FF3CC();
  sub_24B5FF3CC();
  if (sub_24B5FF3CC() != v65)
  {
    sub_24B5FF3CC();
  }

  v70 = v89;
  v71 = v100;
  v72 = v99;
  sub_24B5FF66C();
  (*(v117 + 8))(v69, v118);
  (*(v104 + 8))(v62, v71);
  v139 = v71;
  v140 = v72;
  v73 = swift_getOpaqueTypeConformance2();
  v74 = v105;
  sub_24B5FC7F0();
  v75 = v106;
  v76 = *(v106 + 8);
  v76(v70, v42);
  v77 = v90;
  v78 = v120;
  (*(v88 + 16))(v53, v90, v120);
  v139 = v53;
  v79 = v107;
  (*(v75 + 16))(v107, v74, v42);
  v140 = v79;
  v137[0] = v78;
  v137[1] = v42;
  v135 = v122;
  v136 = v73;
  sub_24B5F7CDC(&v139, 2uLL, v137);
  v76(v74, v42);
  v80 = v77;
  v81 = v92;
  v92(v80, v78);
  v76(v79, v42);
  return v81(v53, v78);
}

uint64_t sub_24B57E71C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v44 = a7;
  v48 = a6;
  v41 = a5;
  v46 = a4;
  v40 = a3;
  v49 = a2;
  v50 = a9;
  v47 = a12;
  v43 = a11;
  v42 = a10;
  v16 = sub_24B5FF28C();
  MEMORY[0x28223BE20](v16 - 8);
  v45 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a3;
  v63 = a5;
  v64 = a7;
  v65 = a8;
  v66 = a10;
  v67 = a11;
  type metadata accessor for Option(255, &v62);
  swift_getTupleTypeMetadata2();
  v18 = sub_24B5FFBBC();
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018808, &qword_24B600A70);
  WitnessTable = swift_getWitnessTable();
  v62 = v18;
  v63 = MEMORY[0x277D837D0];
  v64 = v19;
  v65 = WitnessTable;
  v66 = MEMORY[0x277D837E0];
  sub_24B5FF8CC();
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018810, &qword_24B600A78);
  v22 = sub_24B57D53C();
  v62 = v21;
  v63 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36[1] = swift_getWitnessTable();
  v23 = sub_24B5FF93C();
  v39 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = v36 - v24;
  v37 = swift_getWitnessTable();
  v62 = v23;
  v63 = v37;
  v38 = MEMORY[0x277CDEA40];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v27 = *(OpaqueTypeMetadata2 - 8);
  v28 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v30 = v36 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = v36 - v31;

  v36[0] = sub_24B5FF12C();
  v51 = v40;
  v52 = v46;
  v53 = v41;
  v54 = v48;
  v55 = v44;
  v56 = a8;
  v57 = v42;
  v58 = v43;
  v59 = v47;
  v60 = v49;
  sub_24B5CA50C();
  sub_24B5FF92C();
  v33 = v37;
  sub_24B5FF63C();
  (*(v39 + 8))(v25, v23);
  v62 = v23;
  v63 = v33;
  swift_getOpaqueTypeConformance2();
  sub_24B5FC7F0();
  v34 = *(v27 + 8);
  v34(v30, OpaqueTypeMetadata2);
  sub_24B5FC7F0();
  return (v34)(v32, OpaqueTypeMetadata2);
}

uint64_t sub_24B57EC00@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v53 = a9;
  v45 = a10;
  v46 = a11;
  v56 = a2;
  v57 = a4;
  v58 = a6;
  v59 = a7;
  v60 = a8;
  v61 = a10;
  v51 = type metadata accessor for Option(255, &v56);
  swift_getTupleTypeMetadata2();
  v19 = sub_24B5FFBBC();
  v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018808, &qword_24B600A70);
  WitnessTable = swift_getWitnessTable();
  v56 = v19;
  v57 = MEMORY[0x277D837D0];
  v58 = v50;
  v59 = WitnessTable;
  v60 = MEMORY[0x277D837E0];
  v48 = sub_24B5FF8CC();
  v52 = *(v48 - 8);
  v21 = MEMORY[0x28223BE20](v48);
  v47 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v49 = &v44 - v23;
  v54 = *(a1 + 5);
  v24 = swift_allocObject();
  v25 = *a1;
  v26 = a1[1];
  v27 = a1;
  v44 = a1;
  *(v24 + 88) = v25;
  v28 = a2;
  *(v24 + 16) = a2;
  *(v24 + 24) = a3;
  v29 = a4;
  *(v24 + 32) = a4;
  *(v24 + 40) = a5;
  v30 = a6;
  *(v24 + 48) = a6;
  *(v24 + 56) = a7;
  v31 = a7;
  v32 = a8;
  v33 = v45;
  *(v24 + 64) = a8;
  *(v24 + 72) = v33;
  v34 = v46;
  *(v24 + 80) = v46;
  *(v24 + 104) = v26;
  *(v24 + 120) = v27[2];

  v56 = v28;
  v57 = a3;
  v58 = v29;
  v59 = a5;
  v60 = v30;
  v61 = v31;
  v62 = v32;
  v63 = v33;
  v64 = v34;
  v35 = type metadata accessor for FilterThemeSectionView(0, &v56);
  (*(*(v35 - 8) + 16))(&v56, v44, v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018810, &qword_24B600A78);
  v37 = sub_24B57D53C();
  v56 = v36;
  v57 = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v39 = v47;
  sub_24B5FF8AC();
  v55 = OpaqueTypeConformance2;
  v40 = v48;
  swift_getWitnessTable();
  v41 = v49;
  sub_24B5FC7F0();
  v42 = *(v52 + 8);
  v42(v39, v40);
  sub_24B5FC7F0();
  return (v42)(v41, v40);
}

uint64_t sub_24B57EFCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v120 = a2;
  v92 = a1;
  v109 = a4;
  v7 = sub_24B5FFA3C();
  v110 = *(v7 - 8);
  v111 = v7;
  MEMORY[0x28223BE20](v7);
  v108 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24B5FF9DC();
  MEMORY[0x28223BE20](v9 - 8);
  v106 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24B5FF9FC();
  MEMORY[0x28223BE20](v11 - 8);
  v105 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018910, &qword_24B606920);
  MEMORY[0x28223BE20](v13 - 8);
  v107 = &v88 - v14;
  v103 = sub_24B5FF1BC();
  v101 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v102 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a3[6];
  v115 = a3[7];
  v116 = v16;
  v17 = a3[8];
  v113 = a3[9];
  v114 = v17;
  *&v133 = v16;
  *(&v133 + 1) = v115;
  *&v134 = v17;
  *(&v134 + 1) = v113;
  v18 = a3[4];
  *&v132 = a3[2];
  *(&v132 + 1) = v18;
  v19 = v132;
  v117 = v132;
  v20 = v18;
  v96 = v18;
  v21 = type metadata accessor for Option(0, &v132);
  v112 = v21;
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v88 - v24;
  v91 = &v88 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018840, &unk_24B600A90);
  v27 = *(v26 - 8);
  v98 = v26;
  v99 = v27;
  MEMORY[0x28223BE20](v26);
  v93 = &v88 - v28;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018830, &qword_24B600A88);
  MEMORY[0x28223BE20](v100);
  v94 = &v88 - v29;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018828, &qword_24B600A80);
  MEMORY[0x28223BE20](v118);
  v119 = &v88 - v30;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018810, &qword_24B600A78);
  MEMORY[0x28223BE20](v104);
  v121 = &v88 - v31;
  v32 = v4[1];
  v132 = *v4;
  v133 = v32;
  v134 = v4[2];
  v90 = v22;
  (*(v22 + 16))(v25, a1, v21);
  v33 = (*(v22 + 80) + 136) & ~*(v22 + 80);
  v34 = (v23 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  v36 = a3;
  v97 = a3[3];
  v95 = a3[5];
  v37 = v95;
  *&v38 = v19;
  *(&v38 + 1) = v97;
  v39 = v38;
  v89 = v38;
  v40 = v133;
  *(v35 + 88) = v132;
  *&v38 = v20;
  *(&v38 + 1) = v37;
  v88 = v38;
  *(v35 + 16) = v39;
  *(v35 + 32) = v38;
  v41 = v115;
  v42 = v116;
  *(v35 + 48) = v116;
  *(v35 + 56) = v41;
  v43 = v113;
  v44 = v114;
  *(v35 + 64) = v114;
  *(v35 + 72) = v43;
  v45 = a3[10];
  *(v35 + 80) = v45;
  *(v35 + 104) = v40;
  *(v35 + 120) = v134;
  (*(v90 + 32))(v35 + v33, v91, v112);
  *(v35 + v34) = v120;
  v122 = v89;
  v123 = v88;
  v124 = v42;
  v125 = v41;
  v126 = v44;
  v127 = v43;
  v46 = v92;
  v128 = v45;
  v129 = v92;
  v130 = &v132;
  (*(*(v36 - 1) + 16))(v131, &v132, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018918, &qword_24B600B80);
  sub_24B580550();
  v47 = v93;
  sub_24B5FF81C();
  sub_24B58085C(&qword_27F018848, &qword_27F018840, &unk_24B600A90, MEMORY[0x277CDF028]);
  sub_24B57D828();
  v48 = v94;
  v49 = v98;
  sub_24B5FF5BC();
  (*(v99 + 8))(v47, v49);
  v50 = *(v112 + 68);
  v51 = v46;
  LOBYTE(v46) = *(v46 + v50) == 0;
  KeyPath = swift_getKeyPath();
  v53 = swift_allocObject();
  *(v53 + 16) = v46;
  v54 = &v48[*(v100 + 36)];
  *v54 = KeyPath;
  v54[1] = sub_24B58074C;
  v54[2] = v53;
  sub_24B5FF3BC();
  sub_24B5FF90C();
  sub_24B57D6EC();
  v55 = v119;
  sub_24B5FF69C();
  v56 = v48;
  v57 = v51;
  sub_24B58090C(v56, &qword_27F018830, &qword_24B600A88);
  v58 = &v55[*(v118 + 36)];
  v59 = *MEMORY[0x277CE0118];
  v60 = sub_24B5FF18C();
  (*(*(v60 - 8) + 104))(v58, v59, v60);
  v61 = v51;
  v62 = v95;
  v63 = sub_24B580754(v61, v117, v97, v96, v95, v116, v115, v114, v113);
  *&v58[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018968, &qword_24B600CF0) + 36)] = v63;
  v64 = sub_24B5FF90C();
  v66 = v65;
  v67 = &v58[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018870, &qword_24B600AA0) + 36)];
  *v67 = v64;
  v67[1] = v66;
  if (*(v57 + v50) == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018998, &qword_24B600D30);
    v68 = v101;
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_24B600A30;
    sub_24B5FF19C();
    v131[0] = v69;
    sub_24B580814(&qword_27F018970, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018978, &unk_24B600BE0);
    sub_24B58085C(&qword_27F018980, &qword_27F018978, &unk_24B600BE0, MEMORY[0x277D83970]);
    v71 = v102;
    v70 = v103;
    sub_24B5FFC6C();
    v72 = v68;
  }

  else
  {
    v131[0] = MEMORY[0x277D84F90];
    sub_24B580814(&qword_27F018970, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018978, &unk_24B600BE0);
    sub_24B58085C(&qword_27F018980, &qword_27F018978, &unk_24B600BE0, MEMORY[0x277D83970]);
    v71 = v102;
    v70 = v103;
    sub_24B5FFC6C();
    v72 = v101;
  }

  sub_24B57D5F8();
  v73 = v119;
  sub_24B5FF68C();
  (*(v72 + 8))(v71, v70);
  sub_24B58090C(v73, &qword_27F018828, &qword_24B600A80);
  v74 = *(v62 + 24);
  v75 = v117;
  v74(v117, v62);
  v76 = v120;
  sub_24B5FF9EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018988, &unk_24B6034F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24B600A40;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  v78 = (v74)(v75, v62);
  v79 = MEMORY[0x277D837D0];
  *(inited + 48) = v78;
  *(inited + 56) = v80;
  *(inited + 72) = v79;
  strcpy((inited + 80), "impressionType");
  *(inited + 95) = -18;
  *(inited + 96) = 0x7265746C6966;
  *(inited + 104) = 0xE600000000000000;
  *(inited + 120) = v79;
  *(inited + 128) = 0x6973736572706D69;
  v81 = MEMORY[0x277D83B88];
  *(inited + 136) = 0xEF7865646E496E6FLL;
  *(inited + 144) = v76;
  *(inited + 168) = v81;
  *(inited + 176) = 0x657079546469;
  *(inited + 216) = v79;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = 0x64695F737469;
  *(inited + 200) = 0xE600000000000000;
  sub_24B5EA4D8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018990, &unk_24B600BF0);
  swift_arrayDestroy();
  sub_24B5FF9CC();
  v82 = MEMORY[0x277D84F90];
  sub_24B5F033C(MEMORY[0x277D84F90]);
  sub_24B5F033C(v82);
  v83 = v107;
  sub_24B5FFA0C();
  v84 = sub_24B5FFA1C();
  (*(*(v84 - 8) + 56))(v83, 0, 1, v84);
  v85 = v108;
  sub_24B5FFA2C();
  sub_24B57D53C();
  v86 = v121;
  sub_24B5FF55C();
  (*(v110 + 8))(v85, v111);
  sub_24B5808A4(v83);
  return sub_24B58090C(v86, &qword_27F018810, &qword_24B600A78);
}

uint64_t sub_24B57FC54(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_24B5FF2EC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0uLL;
  v13 = 0uLL;
  if ((a3 & 1) == 0)
  {
    sub_24B5FEF1C();
    *(&v12 + 1) = v14;
    *(&v13 + 1) = v15;
  }

  v17[0] = v12;
  v17[1] = v13;
  v18 = a3 & 1;
  sub_24B5FF2DC();
  MEMORY[0x24C2436E0](v11, a4, v8, a5);
  return (*(v9 + 8))(v11, v8);
}

__n128 sub_24B57FDE4@<Q0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v29 = sub_24B5FF12C();
  sub_24B580024(a1, a3, a4, a5, a6, a7, a8, &v31, a10, a11, a12);
  v20 = *(&v31 + 1);
  v28 = v31;
  LOBYTE(a3) = v32;
  v21 = *(&v32 + 1);
  v22 = v33;
  v23 = BYTE8(v33);
  v40 = 1;
  v39 = v32;
  v38 = BYTE8(v33);
  LOBYTE(a8) = sub_24B5FF3FC();
  sub_24B5FF90C();
  sub_24B5FF03C();
  *&v30[55] = v34;
  *&v30[71] = v35;
  *&v30[87] = v36;
  *&v30[103] = v37;
  *&v30[7] = v31;
  *&v30[23] = v32;
  *&v30[39] = v33;
  v24 = a9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018918, &qword_24B600B80) + 36);
  v25 = *MEMORY[0x277CE0118];
  v26 = sub_24B5FF18C();
  (*(*(v26 - 8) + 104))(v24, v25, v26);
  *(v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018960, &qword_24B600BA0) + 36)) = 0;
  *(a9 + 80) = xmmword_24B600A50;
  *(a9 + 96) = xmmword_24B600A50;
  *(a9 + 177) = *&v30[64];
  *(a9 + 193) = *&v30[80];
  *(a9 + 209) = *&v30[96];
  *(a9 + 113) = *v30;
  *(a9 + 129) = *&v30[16];
  result = *&v30[32];
  *(a9 + 145) = *&v30[32];
  *a9 = v29;
  *(a9 + 8) = 0;
  *(a9 + 16) = 1;
  *(a9 + 24) = v28;
  *(a9 + 32) = v20;
  *(a9 + 40) = a3;
  *(a9 + 48) = v21;
  *(a9 + 56) = v22;
  *(a9 + 64) = v23;
  *(a9 + 72) = a8;
  *(a9 + 112) = 0;
  *(a9 + 224) = *&v30[111];
  *(a9 + 161) = *&v30[48];
  return result;
}

uint64_t sub_24B580024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  (*(a5 + 24))(a2, a5);
  sub_24B58096C();
  v12 = sub_24B5FF53C();
  v14 = v13;
  v16 = v15;
  sub_24B5FF4BC();
  v17 = sub_24B5FF50C();
  v19 = v18;
  v21 = v20;

  sub_24B5809C0(v12, v14, v16 & 1);

  v22 = sub_24B5FF4FC();
  v24 = v23;
  v26 = v25;
  sub_24B5809C0(v17, v19, v21 & 1);

  sub_24B5809D0(a1, a2, a3, a4, a5, a6, a7, a9, a10);
  v27 = sub_24B5FF4DC();
  v29 = v28;
  LOBYTE(v17) = v30;
  v32 = v31;
  sub_24B5809C0(v22, v24, v26 & 1);

  *a8 = v27;
  *(a8 + 8) = v29;
  *(a8 + 16) = v17 & 1;
  *(a8 + 24) = v32;
  *(a8 + 32) = 0;
  *(a8 + 40) = 0;
  sub_24B580A5C(v27, v29, v17 & 1);

  sub_24B5809C0(v27, v29, v17 & 1);
}

uint64_t sub_24B580254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_24B5802B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_24B5802F8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_24B5803D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 80);
  v8 = *(v3 + 104);
  v15 = *(v3 + 88);
  v16 = v8;
  v17 = *(v3 + 120);
  v9 = *(v3 + 32);
  v13[0] = *(v3 + 16);
  v13[1] = v9;
  v10 = *(v3 + 64);
  v13[2] = *(v3 + 48);
  v13[3] = v10;
  v14 = v7;
  v11 = type metadata accessor for FilterThemeSectionView(0, v13);
  return sub_24B57EFCC(a2, a1, v11, a3);
}

uint64_t sub_24B58045C()
{
  v1 = *(v0 + 32);
  v6[0] = *(v0 + 16);
  v6[1] = v1;
  v2 = *(v0 + 64);
  v7 = *(v0 + 48);
  v8 = v2;
  v3 = *(type metadata accessor for Option(0, v6) - 8);
  v4 = (*(v3 + 80) + 136) & ~*(v3 + 80);
  return (*(v0 + 112))(v0 + v4, *(v0 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_24B580550()
{
  result = qword_27F018920;
  if (!qword_27F018920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018918, &qword_24B600B80);
    sub_24B580608();
    sub_24B58085C(&qword_27F018958, &qword_27F018960, &qword_24B600BA0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018920);
  }

  return result;
}

unint64_t sub_24B580608()
{
  result = qword_27F018928;
  if (!qword_27F018928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018930, &qword_24B600B88);
    sub_24B580694();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018928);
  }

  return result;
}

unint64_t sub_24B580694()
{
  result = qword_27F018938;
  if (!qword_27F018938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018940, &qword_24B600B90);
    sub_24B58085C(&qword_27F018948, &qword_27F018950, &qword_24B600B98, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018938);
  }

  return result;
}

uint64_t sub_24B580754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13[0] = a2;
  v13[1] = a4;
  v13[2] = a6;
  v13[3] = a7;
  v13[4] = a8;
  v13[5] = a9;
  v10 = type metadata accessor for Option(0, v13);
  if (*(a1 + *(v10 + 68)) && *(a1 + *(v10 + 68)) != 1)
  {
    [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    return sub_24B5FF76C();
  }

  else
  {
    v11 = [objc_opt_self() systemGray5Color];
    return sub_24B5FF76C();
  }
}

uint64_t sub_24B580814(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B58085C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_24B5808A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018910, &qword_24B606920);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B58090C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_24B58096C()
{
  result = qword_27F0189A0;
  if (!qword_27F0189A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0189A0);
  }

  return result;
}

uint64_t sub_24B5809C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_24B5809D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13[0] = a2;
  v13[1] = a4;
  v13[2] = a6;
  v13[3] = a7;
  v13[4] = a8;
  v13[5] = a9;
  v10 = type metadata accessor for Option(0, v13);
  if (*(a1 + *(v10 + 68)))
  {
    if (*(a1 + *(v10 + 68)) == 1)
    {
      return sub_24B5FF79C();
    }

    else
    {
      return sub_24B5FF77C();
    }
  }

  else
  {
    v12 = [objc_opt_self() darkGrayColor];
    return sub_24B5FF76C();
  }
}

uint64_t sub_24B580A5C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

BOOL static TimedFilterContent<>.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 8);
  v7 = v6(a3, a4);
  return v7 < v6(a3, a4);
}

uint64_t FilterModalitySectionView.init(containerWidth:artworkViewBuilder:headerViewBuilder:options:onOptionSelected:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, __int128 a11, __int128 a12, __int128 a13, __int128 a14, uint64_t a15, uint64_t a16)
{
  *(a9 + 16) = a10;
  *a9 = a1;
  *(a9 + 8) = a2;
  v25 = a8;
  v26 = a11;
  v27 = a12;
  v28 = a13;
  v29 = a14;
  v30 = a15;
  v31 = a16;
  v21 = type metadata accessor for FilterModalitySectionView(0, &v25);

  a3(v22);

  *(a9 + *(v21 + 120)) = a5;
  v24 = (a9 + *(v21 + 116));
  *v24 = a6;
  v24[1] = a7;
  return result;
}

uint64_t FilterModalitySectionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v57 = *(a1 + 80);
  v56 = *(a1 + 88);
  v75 = v57;
  v76 = v56;
  v54 = (a1 + 40);
  v3 = *(a1 + 24);
  v45 = *(a1 + 32);
  v51 = v3;
  v55 = (a1 + 56);
  v52 = *(a1 + 48);
  v53 = *(a1 + 64);
  v72 = v3;
  v73 = v52;
  v74 = v53;
  type metadata accessor for Option(255, &v72);
  swift_getTupleTypeMetadata2();
  v4 = sub_24B5FFBBC();
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0189A8, &qword_24B600C10);
  WitnessTable = swift_getWitnessTable();
  v72 = v4;
  v73 = MEMORY[0x277D837D0];
  *&v74 = v5;
  *(&v74 + 1) = WitnessTable;
  v75 = MEMORY[0x277D837E0];
  sub_24B5FF8CC();
  v71 = sub_24B5813FC();
  swift_getWitnessTable();
  v7 = sub_24B5FF93C();
  v8 = swift_getWitnessTable();
  v72 = v7;
  v73 = v8;
  swift_getOpaqueTypeMetadata2();
  v72 = v7;
  v73 = v8;
  swift_getOpaqueTypeConformance2();
  v9 = sub_24B5FEF2C();
  v10 = swift_getWitnessTable();
  v72 = v9;
  v73 = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v12 = sub_24B5FF3AC();
  v72 = v9;
  v73 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v72 = OpaqueTypeMetadata2;
  v73 = v12;
  v14 = MEMORY[0x277CDE478];
  *&v74 = OpaqueTypeConformance2;
  *(&v74 + 1) = MEMORY[0x277CDE478];
  v15 = swift_getOpaqueTypeMetadata2();
  v72 = OpaqueTypeMetadata2;
  v73 = v12;
  *&v74 = OpaqueTypeConformance2;
  *(&v74 + 1) = v14;
  v16 = swift_getOpaqueTypeConformance2();
  v72 = v15;
  v73 = v16;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v47 = sub_24B5FF94C();
  v46 = swift_getWitnessTable();
  v44 = sub_24B5FF87C();
  v48 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v41 - v17;
  v49 = sub_24B5FEFEC();
  v50 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v42 = &v41 - v18;
  v19 = sub_24B5FF8DC();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = (&v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_24B5FF8EC();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v22 = xmmword_24B600A10;
  (*(v20 + 104))(v22, *MEMORY[0x277CDF108], v19);
  sub_24B5FF8FC();
  v27 = sub_24B5FFB9C();
  *(v27 + 16) = 5;
  v28 = v27 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
  v29 = *(v24 + 16);
  v29(v28, v26, v23);
  v30 = *(v24 + 72);
  v29(v28 + v30, v26, v23);
  v29(v28 + 2 * v30, v26, v23);
  v29(v28 + 3 * v30, v26, v23);
  (*(v24 + 32))(v28 + 4 * v30, v26, v23);
  sub_24B5FF1DC();
  *&v31 = *(a1 + 16);
  *(&v31 + 1) = v51;
  *&v32 = v45;
  *(&v32 + 1) = *v54;
  v61 = v32;
  v60 = v31;
  *&v31 = v52;
  *(&v31 + 1) = *v55;
  v62 = v31;
  v63 = v53;
  v64 = v57;
  v65 = v56;
  v66 = *(a1 + 96);
  v67 = v58;
  v68 = v27;
  v33 = v43;
  sub_24B5FF86C();

  v34 = v44;
  v35 = swift_getWitnessTable();
  v36 = v42;
  sub_24B5FF75C();
  (*(v48 + 8))(v33, v34);
  v37 = sub_24B5FF3EC();
  v69 = v35;
  v70 = MEMORY[0x277CDFC48];
  v38 = v49;
  v39 = swift_getWitnessTable();
  sub_24B57FC54(v37, 0x4034000000000000, 0, v38, v39);
  return (*(v50 + 8))(v36, v38);
}

unint64_t sub_24B5813FC()
{
  result = qword_27F0189B0;
  if (!qword_27F0189B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0189A8, &qword_24B600C10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0189B8, &qword_24B600C18);
    sub_24B5814F4();
    swift_getOpaqueTypeConformance2();
    sub_24B580814(qword_27F018878, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0189B0);
  }

  return result;
}

unint64_t sub_24B5814F4()
{
  result = qword_27F0189C0;
  if (!qword_27F0189C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0189B8, &qword_24B600C18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0189C8, &qword_24B600C20);
    sub_24B581604();
    sub_24B57D828();
    swift_getOpaqueTypeConformance2();
    sub_24B58085C(&qword_27F018858, &qword_27F018860, &qword_24B600C40, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0189C0);
  }

  return result;
}

unint64_t sub_24B581604()
{
  result = qword_27F0189D0;
  if (!qword_27F0189D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0189C8, &qword_24B600C20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0189D8, &qword_24B600C28);
    sub_24B5816F8();
    swift_getOpaqueTypeConformance2();
    sub_24B58085C(&qword_27F018868, &qword_27F018870, &qword_24B600AA0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0189D0);
  }

  return result;
}

unint64_t sub_24B5816F8()
{
  result = qword_27F0189E0;
  if (!qword_27F0189E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0189D8, &qword_24B600C28);
    sub_24B58085C(&qword_27F0189E8, qword_27F0189F0, &unk_24B600C30, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0189E0);
  }

  return result;
}

uint64_t sub_24B5817B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v126 = a8;
  v109 = a6;
  v129 = a5;
  v90 = a4;
  v86 = a3;
  v112 = a1;
  v113 = a2;
  v123 = a9;
  v128 = a14;
  v92 = a13;
  v91 = a12;
  v124 = a10;
  v17 = sub_24B5FF23C();
  v121 = *(v17 - 8);
  v122 = v17;
  MEMORY[0x28223BE20](v17);
  v120 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24B5FF38C();
  MEMORY[0x28223BE20](v19 - 8);
  v117 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24B5FF3AC();
  v118 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v116 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24B5FF33C();
  v114 = *(v23 - 8);
  v115 = v23;
  MEMORY[0x28223BE20](v23);
  v127 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = a4;
  v133 = a7;
  v134 = a10;
  v135 = a11;
  v85 = a11;
  v136 = a12;
  v137 = a13;
  type metadata accessor for Option(255, &v132);
  swift_getTupleTypeMetadata2();
  v25 = sub_24B5FFBBC();
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0189A8, &qword_24B600C10);
  WitnessTable = swift_getWitnessTable();
  v132 = v25;
  v133 = MEMORY[0x277D837D0];
  v134 = v26;
  v135 = WitnessTable;
  v136 = MEMORY[0x277D837E0];
  sub_24B5FF8CC();
  v143 = sub_24B5813FC();
  swift_getWitnessTable();
  v28 = sub_24B5FF93C();
  v29 = swift_getWitnessTable();
  v132 = v28;
  v133 = v29;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v132 = v28;
  v133 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = sub_24B5FEF2C();
  v101 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v87 = &v84 - v31;
  v32 = swift_getWitnessTable();
  v132 = v30;
  v133 = v32;
  v33 = swift_getOpaqueTypeMetadata2();
  v98 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v96 = &v84 - v34;
  v102 = v30;
  v132 = v30;
  v133 = v32;
  v94 = v32;
  v35 = swift_getOpaqueTypeConformance2();
  v132 = v33;
  v133 = v21;
  v36 = MEMORY[0x277CDE478];
  v134 = v35;
  v135 = MEMORY[0x277CDE478];
  v37 = swift_getOpaqueTypeMetadata2();
  v104 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v99 = &v84 - v38;
  v100 = v33;
  v132 = v33;
  v133 = v21;
  v119 = v21;
  v93 = v35;
  v134 = v35;
  v135 = v36;
  v39 = swift_getOpaqueTypeConformance2();
  v107 = v37;
  v132 = v37;
  v133 = v39;
  v97 = v39;
  v111 = swift_getOpaqueTypeMetadata2();
  v106 = *(v111 - 8);
  v40 = MEMORY[0x28223BE20](v111);
  v110 = &v84 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v95 = &v84 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v105 = &v84 - v45;
  v46 = v129;
  v108 = *(v129 - 8);
  v47 = MEMORY[0x28223BE20](v44);
  v103 = &v84 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v50 = &v84 - v49;
  v132 = a3;
  v52 = v90;
  v51 = v91;
  v133 = v90;
  v134 = v46;
  v53 = v109;
  v135 = v109;
  v136 = a7;
  v137 = v126;
  v138 = v124;
  v139 = a11;
  v140 = v91;
  v54 = v92;
  v55 = v128;
  v141 = v92;
  v142 = v128;
  type metadata accessor for FilterModalitySectionView(0, &v132);
  v56 = v112;
  v125 = v50;
  sub_24B5FC7F0();
  v57 = sub_24B5FF3BC();
  v130[2] = v86;
  v130[3] = v52;
  v130[4] = v46;
  v130[5] = v53;
  v130[6] = a7;
  v130[7] = v126;
  v130[8] = v124;
  v130[9] = v85;
  v130[10] = v51;
  v130[11] = v54;
  v58 = v55;
  v59 = v87;
  v130[12] = v58;
  v130[13] = v113;
  v130[14] = v56;
  sub_24B5EB7C0(v57, sub_24B5847A0, v130, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  sub_24B5FF31C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018908, &unk_24B600B70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24B600A20;
  LOBYTE(a7) = sub_24B5FF3DC();
  *(inited + 32) = a7;
  v61 = sub_24B5FF3BC();
  *(inited + 33) = v61;
  sub_24B5FF3CC();
  sub_24B5FF3CC();
  if (sub_24B5FF3CC() != a7)
  {
    sub_24B5FF3CC();
  }

  sub_24B5FF3CC();
  if (sub_24B5FF3CC() != v61)
  {
    sub_24B5FF3CC();
  }

  v62 = v99;
  v63 = v96;
  v64 = v127;
  v65 = v102;
  sub_24B5FF62C();
  (*(v114 + 8))(v64, v115);
  (*(v101 + 8))(v59, v65);
  sub_24B5FF37C();
  v66 = v116;
  sub_24B5FF39C();
  v67 = v100;
  v68 = v119;
  sub_24B5FF67C();
  (*(v118 + 8))(v66, v68);
  (*(v98 + 8))(v63, v67);
  v69 = v120;
  sub_24B5FF22C();
  LOBYTE(v68) = sub_24B5FF3BC();
  sub_24B5FF3CC();
  sub_24B5FF3CC();
  if (sub_24B5FF3CC() != v68)
  {
    sub_24B5FF3CC();
  }

  v70 = v95;
  v71 = v107;
  v72 = v97;
  sub_24B5FF66C();
  (*(v121 + 8))(v69, v122);
  (*(v104 + 8))(v62, v71);
  v132 = v71;
  v133 = v72;
  v73 = swift_getOpaqueTypeConformance2();
  v74 = v105;
  v75 = v111;
  sub_24B5FC7F0();
  v76 = v106;
  v127 = *(v106 + 8);
  (v127)(v70, v75);
  v77 = v108;
  v78 = v103;
  v79 = v129;
  (*(v108 + 16))(v103, v125, v129);
  v132 = v78;
  v80 = v110;
  (*(v76 + 16))(v110, v74, v75);
  v133 = v80;
  v131[0] = v79;
  v131[1] = v75;
  v130[16] = v128;
  v130[17] = v73;
  sub_24B5F7CDC(&v132, 2uLL, v131);
  v81 = v127;
  (v127)(v74, v75);
  v82 = *(v77 + 8);
  v82(v125, v79);
  v81(v80, v75);
  return (v82)(v78, v79);
}

uint64_t sub_24B5823A8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v49 = a8;
  v39 = a7;
  v48 = a6;
  v46 = a5;
  v38 = a4;
  v45 = a3;
  v50 = a2;
  v51 = a9;
  v47 = a14;
  v43 = a13;
  v42 = a12;
  v41 = a11;
  v40 = a10;
  v16 = sub_24B5FF28C();
  MEMORY[0x28223BE20](v16 - 8);
  v44 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a4;
  v66 = a7;
  v67 = a10;
  v68 = a11;
  v69 = a12;
  v70 = a13;
  type metadata accessor for Option(255, &v65);
  swift_getTupleTypeMetadata2();
  v18 = sub_24B5FFBBC();
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0189A8, &qword_24B600C10);
  WitnessTable = swift_getWitnessTable();
  v65 = v18;
  v66 = MEMORY[0x277D837D0];
  v67 = v19;
  v68 = WitnessTable;
  v69 = MEMORY[0x277D837E0];
  sub_24B5FF8CC();
  v64 = sub_24B5813FC();
  swift_getWitnessTable();
  v21 = sub_24B5FF93C();
  v37 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v34 - v22;
  v35 = swift_getWitnessTable();
  v65 = v21;
  v66 = v35;
  v36 = MEMORY[0x277CDEA40];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v25 = *(OpaqueTypeMetadata2 - 8);
  v26 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v28 = &v34 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v34 - v29;

  v34 = sub_24B5FF12C();
  v52 = v45;
  v53 = v38;
  v54 = v46;
  v55 = v48;
  v56 = v39;
  v57 = v49;
  v58 = v40;
  v59 = v41;
  v60 = v42;
  v61 = v43;
  v62 = v47;
  v63 = v50;
  sub_24B5CA50C();
  sub_24B5FF92C();
  v31 = v35;
  sub_24B5FF63C();
  (*(v37 + 8))(v23, v21);
  v65 = v21;
  v66 = v31;
  swift_getOpaqueTypeConformance2();
  sub_24B5FC7F0();
  v32 = *(v25 + 8);
  v32(v28, OpaqueTypeMetadata2);
  sub_24B5FC7F0();
  return (v32)(v30, OpaqueTypeMetadata2);
}

uint64_t sub_24B58288C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v55 = a7;
  v56 = a9;
  v52 = a4;
  v53 = a5;
  v50 = a1;
  v51 = a2;
  v54 = a13;
  v58 = a2;
  v59 = a3;
  v42 = a3;
  v60 = a4;
  v61 = a5;
  v62 = a6;
  v63 = a7;
  v44 = a6;
  v64 = a8;
  v65 = a10;
  v48 = a8;
  v45 = a10;
  v66 = a11;
  v67 = a12;
  v46 = a11;
  v47 = a12;
  v68 = a13;
  v16 = type metadata accessor for FilterModalitySectionView(0, &v58);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v41 = &v40 - v18;
  v58 = a3;
  v59 = a6;
  v60 = a8;
  v61 = a10;
  v62 = a11;
  v63 = a12;
  v49 = type metadata accessor for Option(255, &v58);
  swift_getTupleTypeMetadata2();
  v19 = sub_24B5FFBBC();
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0189A8, &qword_24B600C10);
  v43 = v20;
  WitnessTable = swift_getWitnessTable();
  v58 = v19;
  v59 = MEMORY[0x277D837D0];
  v60 = v20;
  v61 = WitnessTable;
  v62 = MEMORY[0x277D837E0];
  v22 = sub_24B5FF8CC();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v40 - v27;
  v29 = v41;
  (*(v17 + 16))(v41);
  v30 = (*(v17 + 80) + 104) & ~*(v17 + 80);
  v31 = swift_allocObject();
  v32 = v42;
  *(v31 + 2) = v51;
  *(v31 + 3) = v32;
  v33 = v53;
  *(v31 + 4) = v52;
  *(v31 + 5) = v33;
  v34 = v55;
  *(v31 + 6) = v44;
  *(v31 + 7) = v34;
  v35 = v45;
  *(v31 + 8) = v48;
  *(v31 + 9) = v35;
  v36 = v47;
  *(v31 + 10) = v46;
  *(v31 + 11) = v36;
  *(v31 + 12) = v54;
  (*(v17 + 32))(&v31[v30], v29, v16);
  v37 = sub_24B5813FC();

  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B5FF8AC();
  v57 = v37;
  swift_getWitnessTable();
  sub_24B5FC7F0();
  v38 = *(v23 + 8);
  v38(v26, v22);
  sub_24B5FC7F0();
  return (v38)(v28, v22);
}

uint64_t sub_24B582CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, __int128 a12, uint64_t a13)
{
  *&v130 = a6;
  *(&v130 + 1) = a7;
  v131 = a4;
  v123 = a3;
  v124 = a2;
  v125 = a1;
  v115 = a9;
  v98 = a13;
  v120 = *(&a12 + 1);
  v118 = a10;
  v114 = sub_24B5FF1BC();
  v112 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v113 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24B5FFA3C();
  v110 = *(v16 - 8);
  v111 = v16;
  MEMORY[0x28223BE20](v16);
  v108 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24B5FF9DC();
  MEMORY[0x28223BE20](v18 - 8);
  v106 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24B5FF9FC();
  MEMORY[0x28223BE20](v20 - 8);
  v104 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018910, &qword_24B606920);
  MEMORY[0x28223BE20](v22 - 8);
  v105 = &v91 - v23;
  *&v147 = a5;
  *(&v147 + 1) = a8;
  v119 = a8;
  v117 = a11;
  v148 = a11;
  v127 = a12;
  v128 = *(&a11 + 1);
  v149 = a12;
  v129 = type metadata accessor for Option(0, &v147);
  v116 = *(v129 - 8);
  v24 = *(v116 + 64);
  MEMORY[0x28223BE20](v129);
  v26 = &v91 - v25;
  v97 = &v91 - v25;
  *&v147 = v131;
  *(&v147 + 1) = a5;
  v148 = v130;
  *&v149 = a8;
  *(&v149 + 1) = a10;
  v150 = a11;
  v151 = a12;
  v27 = v98;
  v152 = v98;
  v28 = type metadata accessor for FilterModalitySectionView(0, &v147);
  v95 = v28;
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v91 - v31;
  v96 = &v91 - v31;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0189D8, &qword_24B600C28);
  MEMORY[0x28223BE20](v101);
  v99 = &v91 - v33;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0189C8, &qword_24B600C20);
  MEMORY[0x28223BE20](v102);
  v100 = &v91 - v34;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0189B8, &qword_24B600C18);
  MEMORY[0x28223BE20](v122 - 8);
  v103 = &v91 - v35;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018A80, &qword_24B600CD0);
  v107 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v126 = &v91 - v36;
  v93 = v29;
  (*(v29 + 16))(v32, v123, v28);
  v37 = v116;
  (*(v116 + 16))(v26, v124, v129);
  v38 = (*(v29 + 80) + 104) & ~*(v29 + 80);
  v94 = (v30 + *(v37 + 80) + v38) & ~*(v37 + 80);
  v91 = v38;
  v92 = (v24 + v94 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v40 = *(&v130 + 1);
  v41 = v131;
  *(v39 + 2) = v131;
  *(v39 + 3) = a5;
  v121 = a5;
  v42 = v130;
  *(v39 + 4) = v130;
  *(v39 + 5) = v40;
  v44 = v118;
  v43 = v119;
  *(v39 + 6) = v119;
  *(v39 + 7) = v44;
  v45 = v117;
  v47 = v127;
  v46 = v128;
  *(v39 + 8) = v117;
  *(v39 + 9) = v46;
  v48 = v120;
  *(v39 + 10) = v47;
  *(v39 + 11) = v48;
  *(v39 + 12) = v27;
  (*(v93 + 32))(&v39[v91], v96, v95);
  (*(v116 + 32))(&v39[v94], v97, v129);
  *&v39[v92] = v125;
  v132 = v41;
  v133 = a5;
  v134 = v42;
  v135 = v40;
  v136 = v43;
  v137 = v44;
  v138 = v45;
  v139 = v128;
  v49 = v120;
  v140 = v127;
  v141 = v120;
  v50 = v124;
  v142 = v27;
  v143 = v124;
  v144 = v123;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018A88, &qword_24B600CD8);
  sub_24B584AF0();
  v51 = v99;
  sub_24B5FF81C();
  sub_24B5FF90C();
  sub_24B5FEF7C();
  v52 = (v51 + *(v101 + 36));
  v53 = v148;
  *v52 = v147;
  v52[1] = v53;
  v52[2] = v149;
  sub_24B5FF3BC();
  sub_24B5FF91C();
  sub_24B5816F8();
  v54 = v100;
  sub_24B5FF69C();
  sub_24B58090C(v51, &qword_27F0189D8, &qword_24B600C28);
  v55 = v54 + *(v102 + 36);
  v56 = *MEMORY[0x277CE0118];
  v57 = sub_24B5FF18C();
  (*(*(v57 - 8) + 104))(v55, v56, v57);
  *(&v90 + 1) = v127;
  *&v90 = v128;
  v58 = v118;
  v59 = sub_24B584BD4(v50, v131, v121, v130, *(&v130 + 1), v119, v118, v117, v90, v49);
  *(v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018968, &qword_24B600CF0) + 36)) = v59;
  v60 = sub_24B5FF90C();
  v62 = v61;
  v63 = (v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018870, &qword_24B600AA0) + 36));
  *v63 = v60;
  v63[1] = v62;
  sub_24B581604();
  sub_24B57D828();
  v64 = v103;
  sub_24B5FF5BC();
  sub_24B58090C(v54, &qword_27F0189C8, &qword_24B600C20);
  v65 = v129;
  v131 = *(v129 + 68);
  LOBYTE(v60) = *(v50 + v131) == 0;
  KeyPath = swift_getKeyPath();
  v67 = swift_allocObject();
  *(v67 + 16) = v60;
  v68 = (v64 + *(v122 + 36));
  *v68 = KeyPath;
  v68[1] = sub_24B58074C;
  v68[2] = v67;
  Option.identifier.getter(v65);
  v69 = v125;
  sub_24B5FF9EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018988, &unk_24B6034F0);
  inited = swift_initStackObject();
  *(inited + 32) = 1701667182;
  *(inited + 16) = xmmword_24B600A40;
  *(inited + 40) = 0xE400000000000000;
  v71 = (*(v58 + 24))(v121, v58);
  v72 = MEMORY[0x277D837D0];
  *(inited + 48) = v71;
  *(inited + 56) = v73;
  *(inited + 72) = v72;
  strcpy((inited + 80), "impressionType");
  *(inited + 95) = -18;
  *(inited + 96) = 0x7265746C6966;
  *(inited + 104) = 0xE600000000000000;
  *(inited + 120) = v72;
  *(inited + 128) = 0x6973736572706D69;
  v74 = MEMORY[0x277D83B88];
  *(inited + 136) = 0xEF7865646E496E6FLL;
  *(inited + 144) = v69;
  *(inited + 168) = v74;
  *(inited + 176) = 0x657079546469;
  *(inited + 216) = v72;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = 0x64695F737469;
  *(inited + 200) = 0xE600000000000000;
  sub_24B5EA4D8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018990, &unk_24B600BF0);
  swift_arrayDestroy();
  sub_24B5FF9CC();
  v75 = MEMORY[0x277D84F90];
  sub_24B5F033C(MEMORY[0x277D84F90]);
  sub_24B5F033C(v75);
  v76 = v105;
  sub_24B5FFA0C();
  v77 = sub_24B5FFA1C();
  v78 = v76;
  (*(*(v77 - 8) + 56))(v76, 0, 1, v77);
  v79 = v108;
  sub_24B5FFA2C();
  v80 = sub_24B5814F4();
  v81 = v122;
  sub_24B5FF55C();
  (*(v110 + 8))(v79, v111);
  sub_24B58090C(v78, &qword_27F018910, &qword_24B606920);
  sub_24B58090C(v64, &qword_27F0189B8, &qword_24B600C18);
  if (*(v50 + v131) == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018998, &qword_24B600D30);
    v82 = v112;
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_24B600A30;
    sub_24B5FF19C();
    v145 = v83;
    sub_24B580814(&qword_27F018970, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018978, &unk_24B600BE0);
    sub_24B58085C(&qword_27F018980, &qword_27F018978, &unk_24B600BE0, MEMORY[0x277D83970]);
    v85 = v113;
    v84 = v114;
    sub_24B5FFC6C();
    v86 = v82;
  }

  else
  {
    v145 = v75;
    sub_24B580814(&qword_27F018970, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018978, &unk_24B600BE0);
    sub_24B58085C(&qword_27F018980, &qword_27F018978, &unk_24B600BE0, MEMORY[0x277D83970]);
    v85 = v113;
    v84 = v114;
    sub_24B5FFC6C();
    v86 = v112;
  }

  v145 = v81;
  v146 = v80;
  swift_getOpaqueTypeConformance2();
  v87 = v109;
  v88 = v126;
  sub_24B5FF68C();
  (*(v86 + 8))(v85, v84);
  return (*(v107 + 8))(v88, v87);
}

uint64_t sub_24B583A60@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14)
{
  *a9 = sub_24B5FF12C();
  *(a9 + 8) = 0x4018000000000000;
  *(a9 + 16) = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018AA8, &qword_24B600D38);
  sub_24B583BB8(a1, a3, a4, a5, a6, a7, a8, a9 + *(v22 + 44), a10, __PAIR128__(a12, a11), a13, a14);
  v23 = a9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018A88, &qword_24B600CD8) + 36);
  v24 = *MEMORY[0x277CE0118];
  v25 = sub_24B5FF18C();
  (*(*(v25 - 8) + 104))(v23, v24, v25);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018960, &qword_24B600BA0);
  *(v23 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_24B583BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, __int128 a10, uint64_t a12, uint64_t a13)
{
  v88 = a2;
  v89 = a4;
  v82 = a8;
  v86 = a13;
  v85 = a12;
  v84 = a10;
  v87 = a9;
  v17 = sub_24B5FF7CC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018AB0, &qword_24B600D40);
  v21 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v77 = &v75 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018AB8, &qword_24B600D48);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v83 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v90 = &v75 - v26;
  v27 = *(a7 + 16);
  v92 = a1;
  v27(a3, a7);
  v91 = a3;
  v79 = a5;
  v80 = a6;
  if (v28)
  {
    sub_24B5FF7DC();
    (*(v18 + 104))(v20, *MEMORY[0x277CE0FE0], v17);
    v76 = sub_24B5FF7FC();

    (*(v18 + 8))(v20, v17);
    v29 = sub_24B584C9C(v92, v88, v91, v89, a5, a6, a7, v87, v84, v85);
    sub_24B5FF90C();
    sub_24B5FEF7C();
    v30 = v115;
    v31 = a7;
    v32 = v117;
    v34 = v119;
    v33 = v120;
    LOBYTE(v94) = v116;
    v114 = v118;
    v35 = sub_24B5FF42C();
    sub_24B5FEF1C();
    v93 = 0;
    *&v101 = v76;
    *(&v101 + 1) = v29;
    *&v102 = v30;
    BYTE8(v102) = v94;
    *&v103 = v32;
    a7 = v31;
    BYTE8(v103) = v114;
    *&v104 = v34;
    *(&v104 + 1) = v33;
    LOBYTE(v105) = v35;
    *(&v105 + 1) = v36;
    *&v106[0] = v37;
    *(&v106[0] + 1) = v38;
    *&v106[1] = v39;
    BYTE8(v106[1]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018AD0, &qword_24B600D60);
    sub_24B584D30();
    v40 = v77;
    a3 = v91;
    sub_24B5FF64C();
    v111 = v105;
    v112[0] = v106[0];
    *(v112 + 9) = *(v106 + 9);
    v107 = v101;
    v108 = v102;
    v109 = v103;
    v110 = v104;
    sub_24B58090C(&v107, &qword_27F018AD0, &qword_24B600D60);
    v41 = v90;
    sub_24B584F00(v40, v90);
    (*(v21 + 56))(v41, 0, 1, v81);
  }

  else
  {
    (*(v21 + 56))(v90, 1, 1, v81);
  }

  v78 = a7;
  *&v107 = (*(a7 + 24))(a3, a7);
  *(&v107 + 1) = v42;
  sub_24B58096C();
  v43 = sub_24B5FF53C();
  v45 = v44;
  v47 = v46;
  sub_24B5FF4BC();
  v48 = sub_24B5FF50C();
  v50 = v49;
  v52 = v51;
  v81 = v53;

  sub_24B5809C0(v43, v45, v47 & 1);

  v54 = sub_24B5FF4FC();
  v56 = v55;
  LOBYTE(v43) = v57;
  sub_24B5809C0(v48, v50, v52 & 1);

  *&v107 = sub_24B584C9C(v92, v88, v91, v89, v79, v80, v78, v87, v84, v85);
  v58 = sub_24B5FF4DC();
  v60 = v59;
  LOBYTE(v48) = v61;
  v92 = v62;
  sub_24B5809C0(v54, v56, v43 & 1);

  sub_24B5FF91C();
  sub_24B5FF03C();
  v114 = v48 & 1;
  v63 = v90;
  v64 = v83;
  sub_24B57BAFC(v90, v83, &qword_27F018AB8, &qword_24B600D48);
  v65 = v82;
  sub_24B57BAFC(v64, v82, &qword_27F018AB8, &qword_24B600D48);
  v66 = (v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018AC0, &unk_24B600D50) + 48));
  *&v101 = v58;
  *(&v101 + 1) = v60;
  LOBYTE(v102) = v48 & 1;
  *(&v102 + 1) = *v113;
  DWORD1(v102) = *&v113[3];
  v67 = v92;
  *(&v102 + 1) = v92;
  v106[1] = v98;
  v106[2] = v99;
  v106[3] = v100;
  v105 = v96;
  v106[0] = v97;
  v103 = v94;
  v104 = v95;
  v68 = v97;
  v69 = v99;
  v70 = v100;
  v66[6] = v98;
  v66[7] = v69;
  v66[8] = v70;
  v71 = v102;
  v72 = v104;
  v73 = v105;
  v66[2] = v103;
  v66[3] = v72;
  v66[4] = v73;
  v66[5] = v68;
  *v66 = v101;
  v66[1] = v71;
  sub_24B57BAFC(&v101, &v107, &qword_27F018AC8, &unk_24B603450);
  sub_24B58090C(v63, &qword_27F018AB8, &qword_24B600D48);
  *&v107 = v58;
  *(&v107 + 1) = v60;
  LOBYTE(v108) = v48 & 1;
  *(&v108 + 1) = *v113;
  DWORD1(v108) = *&v113[3];
  *(&v108 + 1) = v67;
  v112[1] = v98;
  v112[2] = v99;
  v112[3] = v100;
  v109 = v94;
  v110 = v95;
  v111 = v96;
  v112[0] = v97;
  sub_24B58090C(&v107, &qword_27F018AC8, &unk_24B603450);
  return sub_24B58090C(v64, &qword_27F018AB8, &qword_24B600D48);
}

uint64_t sub_24B584348(uint64_t a1)
{
  result = sub_24B584750();
  if (v3 <= 0x3F)
  {
    v12 = 0;
    v4 = result;
    v15 = result;
    v16 = MEMORY[0x277D85048];
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v13 = 0;
      v17 = result;
      v18 = v4;
      v6 = *(a1 + 48);
      v9[0] = *(a1 + 24);
      v9[1] = v6;
      v7 = *(a1 + 80);
      v10 = *(a1 + 64);
      v11 = v7;
      type metadata accessor for Option(255, v9);
      result = sub_24B5FFBBC();
      if (v8 <= 0x3F)
      {
        v14 = 0;
        v19 = result;
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_24B584418(unint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 32) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((*(*(*(a3 + 32) - 8) + 64) + ((v6 + 24) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_24B584570(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 32) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((*(*(*(a4 + 32) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((*(*(*(a4 + 32) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (((result + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *result = a2 & 0x7FFFFFFF;
        result[1] = 0;
      }

      else
      {
        *result = a2 - 1;
      }

      return result;
    }
  }

  if (((((*(*(*(a4 + 32) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((*(*(*(a4 + 32) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

unint64_t sub_24B584750()
{
  result = qword_27F018A78;
  if (!qword_27F018A78)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27F018A78);
  }

  return result;
}

uint64_t sub_24B584824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = v3[3];
  v4 = v3[4];
  v5 = v3[5];
  v6 = v3[6];
  v7 = v3[7];
  v8 = v3[8];
  v9 = v3[9];
  v11 = v3[10];
  v10 = v3[11];
  v12 = v3[12];
  v22[0] = v3[2];
  v18 = v22[0];
  v22[1] = v17;
  v22[2] = v4;
  v22[3] = v5;
  v22[4] = v6;
  v22[5] = v7;
  v22[6] = v8;
  v22[7] = v9;
  v22[8] = v11;
  v22[9] = v10;
  v22[10] = v12;
  v13 = *(type metadata accessor for FilterModalitySectionView(0, v22) - 8);
  *(&v16 + 1) = v10;
  *(&v15 + 1) = v9;
  *&v16 = v11;
  *&v15 = v8;
  return sub_24B582CDC(a1, a2, v3 + ((*(v13 + 80) + 104) & ~*(v13 + 80)), v18, v17, v4, v5, v6, a3, v7, v15, v16, v12);
}

uint64_t sub_24B58490C()
{
  v1 = *(v0 + 3);
  v19 = *(v0 + 4);
  v2 = *(v0 + 6);
  v17 = *(v0 + 7);
  v18 = *(v0 + 5);
  v3 = *(v0 + 8);
  v4 = *(v0 + 9);
  v5 = *(v0 + 10);
  v6 = *(v0 + 11);
  v16 = *(v0 + 12);
  v21 = *(v0 + 2);
  v20 = v21;
  v22 = v1;
  v23 = v19;
  v24 = v18;
  v25 = v2;
  v26 = v17;
  v27 = v3;
  v28 = v4;
  v29 = v5;
  v30 = v6;
  v31 = v16;
  v7 = *(type metadata accessor for FilterModalitySectionView(0, &v21) - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  v21 = v1;
  v22 = v2;
  v10 = (v8 + 104) & ~v8;
  v23 = v3;
  v24 = v4;
  v25 = v5;
  v26 = v6;
  v11 = *(type metadata accessor for Option(0, &v21) - 8);
  v12 = (v10 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *&v0[(*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8];
  v21 = v20;
  v22 = v1;
  v23 = v19;
  v24 = v18;
  v25 = v2;
  v26 = v17;
  v27 = v3;
  v28 = v4;
  v29 = v5;
  v30 = v6;
  v31 = v16;
  v14 = type metadata accessor for FilterModalitySectionView(0, &v21);
  return (*&v0[*(v14 + 116) + v10])(&v0[v12], v13);
}

unint64_t sub_24B584AF0()
{
  result = qword_27F018A90;
  if (!qword_27F018A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018A88, &qword_24B600CD8);
    sub_24B58085C(&qword_27F018A98, &qword_27F018AA0, &unk_24B600CE0, MEMORY[0x277CE1138]);
    sub_24B58085C(&qword_27F018958, &qword_27F018960, &qword_24B600BA0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018A90);
  }

  return result;
}

uint64_t sub_24B584BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  v14[0] = a3;
  v14[1] = a6;
  v14[2] = a8;
  v15 = a9;
  v16 = a10;
  v11 = type metadata accessor for Option(0, v14);
  if (*(a1 + *(v11 + 68)) && *(a1 + *(v11 + 68)) != 1)
  {
    [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    return sub_24B5FF76C();
  }

  else
  {
    v12 = [objc_opt_self() systemGray5Color];
    return sub_24B5FF76C();
  }
}

uint64_t sub_24B584C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  v14[0] = a3;
  v14[1] = a6;
  v14[2] = a8;
  v15 = a9;
  v16 = a10;
  v11 = type metadata accessor for Option(0, v14);
  if (*(a1 + *(v11 + 68)))
  {
    if (*(a1 + *(v11 + 68)) == 1)
    {
      return sub_24B5FF79C();
    }

    else
    {
      return sub_24B5FF77C();
    }
  }

  else
  {
    v13 = [objc_opt_self() darkGrayColor];
    return sub_24B5FF76C();
  }
}

unint64_t sub_24B584D30()
{
  result = qword_27F018AD8;
  if (!qword_27F018AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018AD0, &qword_24B600D60);
    sub_24B584DBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018AD8);
  }

  return result;
}

unint64_t sub_24B584DBC()
{
  result = qword_27F018AE0;
  if (!qword_27F018AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018AE8, &qword_24B600D68);
    sub_24B584E48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018AE0);
  }

  return result;
}

unint64_t sub_24B584E48()
{
  result = qword_27F018AF0;
  if (!qword_27F018AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018AF8, &qword_24B600D70);
    sub_24B58085C(&qword_27F018B00, &qword_27F018B08, &qword_24B600D78, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018AF0);
  }

  return result;
}

uint64_t sub_24B584F00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018AB0, &qword_24B600D40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B584F70(uint64_t a1, uint64_t a2)
{
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018BA0, &unk_24B606BD0);
  MEMORY[0x28223BE20](v110);
  v5 = &v88 - v4;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018BA8, &qword_24B601040);
  MEMORY[0x28223BE20](v122);
  v113 = &v88 - v6;
  v7 = sub_24B5FEDFC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v100 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018768, &unk_24B6080E0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v109 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v88 - v13;
  v15 = sub_24B5FEE8C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v105 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018770, &unk_24B6007D0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v98 = &v88 - v22;
  v114 = type metadata accessor for Artwork(0);
  v23 = MEMORY[0x28223BE20](v114);
  v25 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v123 = &v88 - v27;
  result = MEMORY[0x28223BE20](v26);
  v31 = &v88 - v30;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v103 = v7;
  v32 = 0;
  v33 = a1 + 56;
  v34 = 1 << *(a1 + 32);
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  else
  {
    v35 = -1;
  }

  v36 = v35 & *(a1 + 56);
  v37 = (v34 + 63) >> 6;
  v120 = (v16 + 48);
  v101 = (v16 + 32);
  v112 = (v16 + 8);
  v111 = (v8 + 48);
  v96 = (v8 + 32);
  v99 = (v8 + 8);
  v119 = a2 + 56;
  v121 = a2;
  v104 = v5;
  v95 = v14;
  v115 = v21;
  v94 = a1 + 56;
  v93 = v37;
LABEL_7:
  v38 = v98;
  if (v36)
  {
    v88 = (v36 - 1) & v36;
    v89 = v32;
    v39 = __clz(__rbit64(v36)) | (v32 << 6);
LABEL_14:
    v43 = *(a1 + 48);
    v91 = v29;
    v118 = *(v29 + 72);
    v44 = v31;
    sub_24B5A13CC(v43 + v118 * v39, v31, type metadata accessor for Artwork);
    v90 = v44;
    v45 = v44;
    v46 = v123;
    sub_24B5A1434(v45, v123, type metadata accessor for Artwork);
    sub_24B5FFEFC();
    sub_24B57BAFC(v46, v38, &qword_27F018770, &unk_24B6007D0);
    v117 = *v120;
    if (v117(v38, 1, v15) == 1)
    {
      sub_24B5FFF1C();
    }

    else
    {
      v47 = v105;
      (*v101)(v105, v38, v15);
      sub_24B5FFF1C();
      sub_24B5A14FC(&qword_27F018778, MEMORY[0x277D09D68], MEMORY[0x277D09D78]);
      sub_24B5FFA4C();
      (*v112)(v47, v15);
    }

    v48 = v111;
    v49 = v113;
    v50 = v114;
    v51 = v123;
    v52 = *(v123 + *(v114 + 20));
    v108 = v52;
    ArtworkVariant.rawValue.getter(v52);
    sub_24B5FFB1C();

    v102 = *(v50 + 24);
    v53 = v95;
    sub_24B57BAFC(v51 + v102, v95, &qword_27F018768, &unk_24B6080E0);
    v54 = v103;
    v107 = *v48;
    v55 = v107(v53, 1, v103);
    v92 = a1;
    if (v55 == 1)
    {
      sub_24B5FFF1C();
    }

    else
    {
      v56 = v100;
      (*v96)(v100, v53, v54);
      sub_24B5FFF1C();
      sub_24B5A14FC(&qword_27F018780, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      sub_24B5FFA4C();
      (*v99)(v56, v54);
    }

    v57 = v115;
    v58 = sub_24B5FFF3C();
    v59 = -1 << *(v121 + 32);
    v60 = v58 & ~v59;
    if (((*(v119 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) == 0)
    {
LABEL_98:
      sub_24B5A149C(v123, type metadata accessor for Artwork);
      return 0;
    }

    v116 = ~v59;
    v106 = v15;
    v97 = v25;
    while (1)
    {
      sub_24B5A13CC(*(v121 + 48) + v60 * v118, v25, type metadata accessor for Artwork);
      v61 = *(v122 + 48);
      sub_24B57BAFC(v25, v49, &qword_27F018770, &unk_24B6007D0);
      sub_24B57BAFC(v123, v49 + v61, &qword_27F018770, &unk_24B6007D0);
      v62 = v117;
      if (v117(v49, 1, v15) == 1)
      {
        if (v62(v49 + v61, 1, v15) != 1)
        {
          goto LABEL_23;
        }

        sub_24B58090C(v49, &qword_27F018770, &unk_24B6007D0);
      }

      else
      {
        sub_24B57BAFC(v49, v57, &qword_27F018770, &unk_24B6007D0);
        if (v62(v49 + v61, 1, v15) == 1)
        {
          (*v112)(v57, v15);
LABEL_23:
          sub_24B58090C(v49, &qword_27F018BA8, &qword_24B601040);
LABEL_24:
          sub_24B5A149C(v25, type metadata accessor for Artwork);
          goto LABEL_25;
        }

        v63 = v105;
        (*v101)(v105, v49 + v61, v15);
        sub_24B5A14FC(&qword_27F018BB8, MEMORY[0x277D09D68], MEMORY[0x277D09D80]);
        v64 = sub_24B5FFA5C();
        v65 = *v112;
        v57 = v115;
        (*v112)(v63, v15);
        v65(v57, v15);
        v49 = v113;
        sub_24B58090C(v113, &qword_27F018770, &unk_24B6007D0);
        if ((v64 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      v66 = v25[*(v114 + 20)];
      if (v66 > 4)
      {
        v67 = v108;
        v68 = v107;
        if (v25[*(v114 + 20)] <= 6u)
        {
          if (v66 == 5)
          {
            v70 = 0xE500000000000000;
            v69 = 0x74726F6873;
            if (v108 > 4)
            {
              goto LABEL_50;
            }
          }

          else
          {
            v70 = 0xE400000000000000;
            v69 = 1819042164;
            if (v108 > 4)
            {
              goto LABEL_50;
            }
          }
        }

        else if (v66 == 7)
        {
          v70 = 0xE400000000000000;
          v69 = 1954047348;
          if (v108 > 4)
          {
            goto LABEL_50;
          }
        }

        else if (v66 == 8)
        {
          v69 = 0x6469576172746C75;
          v70 = 0xE900000000000065;
          if (v108 > 4)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v70 = 0xE400000000000000;
          v69 = 1701079415;
          if (v108 > 4)
          {
            goto LABEL_50;
          }
        }
      }

      else
      {
        v67 = v108;
        v68 = v107;
        if (v25[*(v114 + 20)] <= 1u)
        {
          v70 = 0xE600000000000000;
          if (v25[*(v114 + 20)])
          {
            v71 = 1953391971;
          }

          else
          {
            v71 = 1852727650;
          }

          v69 = v71 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
          if (v108 > 4)
          {
LABEL_50:
            v72 = 0x6469576172746C75;
            if (v67 != 8)
            {
              v72 = 1701079415;
            }

            v73 = 0xE900000000000065;
            if (v67 != 8)
            {
              v73 = 0xE400000000000000;
            }

            if (v67 == 7)
            {
              v72 = 1954047348;
              v73 = 0xE400000000000000;
            }

            v74 = 0x74726F6873;
            if (v67 != 5)
            {
              v74 = 1819042164;
            }

            v75 = 0xE500000000000000;
            if (v67 != 5)
            {
              v75 = 0xE400000000000000;
            }

            if (v67 <= 6)
            {
              v76 = v74;
            }

            else
            {
              v76 = v72;
            }

            if (v67 <= 6)
            {
              v77 = v75;
            }

            else
            {
              v77 = v73;
            }

            goto LABEL_66;
          }
        }

        else if (v66 == 2)
        {
          v70 = 0xE400000000000000;
          v69 = 2019912806;
          if (v108 > 4)
          {
            goto LABEL_50;
          }
        }

        else if (v66 == 3)
        {
          v69 = 0x657263536C6C7566;
          v70 = 0xEA00000000006E65;
          if (v108 > 4)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v70 = 0xE700000000000000;
          v69 = 0x72616C75676572;
          if (v108 > 4)
          {
            goto LABEL_50;
          }
        }
      }

      if (v67 <= 1)
      {
        v77 = 0xE600000000000000;
        if (v67)
        {
          v76 = 0x7265746E6563;
        }

        else
        {
          v76 = 0x72656E6E6162;
        }
      }

      else if (v67 == 2)
      {
        v77 = 0xE400000000000000;
        v76 = 2019912806;
      }

      else if (v67 == 3)
      {
        v76 = 0x657263536C6C7566;
        v77 = 0xEA00000000006E65;
      }

      else
      {
        v77 = 0xE700000000000000;
        v76 = 0x72616C75676572;
      }

LABEL_66:
      if (v69 == v76 && v70 == v77)
      {
      }

      else
      {
        v78 = sub_24B5FFECC();

        if ((v78 & 1) == 0)
        {
          sub_24B5A149C(v25, type metadata accessor for Artwork);
          v57 = v115;
          v15 = v106;
          v49 = v113;
          goto LABEL_25;
        }
      }

      v79 = *(v110 + 48);
      v80 = v104;
      sub_24B57BAFC(&v25[*(v114 + 24)], v104, &qword_27F018768, &unk_24B6080E0);
      sub_24B57BAFC(v123 + v102, v80 + v79, &qword_27F018768, &unk_24B6080E0);
      v81 = v103;
      if (v68(v80, 1, v103) == 1)
      {
        sub_24B5A149C(v25, type metadata accessor for Artwork);
        v82 = v68(v80 + v79, 1, v81);
        v15 = v106;
        v49 = v113;
        if (v82 == 1)
        {
          sub_24B58090C(v80, &qword_27F018768, &unk_24B6080E0);
LABEL_96:
          result = sub_24B5A149C(v123, type metadata accessor for Artwork);
          a1 = v92;
          v29 = v91;
          v31 = v90;
          v32 = v89;
          v33 = v94;
          v37 = v93;
          v36 = v88;
          goto LABEL_7;
        }

        goto LABEL_75;
      }

      v83 = v109;
      sub_24B57BAFC(v80, v109, &qword_27F018768, &unk_24B6080E0);
      if (v68(v80 + v79, 1, v81) == 1)
      {
        v25 = v97;
        sub_24B5A149C(v97, type metadata accessor for Artwork);
        (*v99)(v83, v81);
        v15 = v106;
        v49 = v113;
LABEL_75:
        sub_24B58090C(v80, &qword_27F018BA0, &unk_24B606BD0);
        v57 = v115;
        goto LABEL_25;
      }

      v84 = v100;
      (*v96)(v100, v80 + v79, v81);
      sub_24B5A14FC(&qword_27F018BB0, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v85 = sub_24B5FFA5C();
      v86 = *v99;
      (*v99)(v84, v81);
      v87 = v97;
      sub_24B5A149C(v97, type metadata accessor for Artwork);
      v86(v109, v81);
      v25 = v87;
      sub_24B58090C(v104, &qword_27F018768, &unk_24B6080E0);
      v57 = v115;
      v15 = v106;
      v49 = v113;
      if (v85)
      {
        goto LABEL_96;
      }

LABEL_25:
      v60 = (v60 + 1) & v116;
      if (((*(v119 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) == 0)
      {
        goto LABEL_98;
      }
    }
  }

  v40 = v32;
  while (1)
  {
    v41 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v41 >= v37)
    {
      return 1;
    }

    v42 = *(v33 + 8 * v41);
    ++v40;
    if (v42)
    {
      v88 = (v42 - 1) & v42;
      v89 = v41;
      v39 = __clz(__rbit64(v42)) | (v41 << 6);
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B58600C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_24B5FFEFC();
    MEMORY[0x24C243ED0](v13);
    result = sub_24B5FFF3C();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B58617C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v35 = (v7 - 1) & v7;
    v36 = v8;
LABEL_13:
    v34 = result;
    v13 = *(result + 48) + 72 * (v10 | (v3 << 6));
    v44 = *v13;
    v15 = *(v13 + 32);
    v14 = *(v13 + 48);
    v16 = *(v13 + 16);
    v48 = *(v13 + 64);
    v46 = v15;
    v47 = v14;
    v45 = v16;
    sub_24B5FFEFC();
    v17 = v44;
    v18 = v45;
    sub_24B5A16FC(&v44, v40);
    sub_24B57926C(v41, v17);
    sub_24B5FFF1C();
    if (v18)
    {
      sub_24B5FFB1C();
    }

    v19 = *(&v46 + 1);
    v21 = *(&v47 + 1);
    v22 = v47;
    v20 = v48;
    v37 = v46;
    v38 = *(&v45 + 1);
    sub_24B5FFB1C();
    *&v39 = v22;
    *(&v39 + 1) = v19;
    sub_24B5FFB1C();
    MEMORY[0x24C243ED0](v21);
    sub_24B5A8CFC(v41, v20);
    v23 = sub_24B5FFF3C();
    v24 = -1 << *(a2 + 32);
    v25 = v23 & ~v24;
    if (((*(v9 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
    {
LABEL_37:
      sub_24B5A1758(&v44);
      return 0;
    }

    v33 = v4;
    v26 = ~v24;
    while (1)
    {
      v27 = *(a2 + 48) + 72 * v25;
      *v41 = *v27;
      v29 = *(v27 + 32);
      v28 = *(v27 + 48);
      v30 = *(v27 + 16);
      v43 = *(v27 + 64);
      *&v41[32] = v29;
      v42 = v28;
      *&v41[16] = v30;
      v31 = *v41;
      sub_24B5A16FC(v41, v40);
      if ((sub_24B584F70(v31, v17) & 1) == 0)
      {
        goto LABEL_31;
      }

      if (*&v41[16])
      {
        if (!v18 || *&v41[8] != __PAIR128__(v18, *(&v17 + 1)) && (sub_24B5FFECC() & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      else if (v18)
      {
        goto LABEL_31;
      }

      if (*&v41[24] != __PAIR128__(v37, v38) && (sub_24B5FFECC() & 1) == 0 || __PAIR128__(*&v41[40], v42) != v39 && (sub_24B5FFECC() & 1) == 0 || *(&v42 + 1) != v21)
      {
LABEL_31:
        sub_24B5A1758(v41);
        goto LABEL_32;
      }

      v32 = sub_24B5D37BC(v43, v20);
      sub_24B5A1758(v41);
      if (v32)
      {
        break;
      }

LABEL_32:
      v25 = (v25 + 1) & v26;
      if (((*(v9 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    sub_24B5A1758(&v44);
    v4 = v33;
    result = v34;
    v7 = v35;
    v8 = v36;
  }

  while (v35);
LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v36 = v8;
      v10 = __clz(__rbit64(v12));
      v35 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B5864EC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v31 = v8;
  v32 = result;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v33 = (v7 - 1) & v7;
LABEL_13:
      v13 = *(result + 48) + 40 * (v10 | (v3 << 6));
      v15 = *v13;
      v14 = *(v13 + 8);
      v16 = *(v13 + 16);
      v17 = *(v13 + 24);
      v18 = *(v13 + 32);
      v35 = *v13;
      v36 = v14;
      v37 = v16;
      v38 = v17;
      v39 = v18;
      sub_24B5FFEFC();

      Duration.hash(into:)(v34);
      v19 = sub_24B5FFF3C();
      v20 = -1 << *(a2 + 32);
      v21 = v19 & ~v20;
      if (((*(v9 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        break;
      }

      v22 = ~v20;
      v23 = *(a2 + 48);
      while (1)
      {
        v24 = v23 + 40 * v21;
        v26 = *(v24 + 16);
        v25 = *(v24 + 24);
        v27 = *(v24 + 32);
        v28 = *v24 == v15 && *(v24 + 8) == v14;
        if (v28 || (sub_24B5FFECC() & 1) != 0)
        {
          v29 = v26 == v16 && v25 == v17;
          if (v29 && v27 == v18)
          {
            break;
          }
        }

        v21 = (v21 + 1) & v22;
        if (((*(v9 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      v8 = v31;
      result = v32;
      v7 = v33;
      if (!v33)
      {
        goto LABEL_8;
      }
    }

LABEL_32:

    return 0;
  }

LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v33 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B5866FC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  if (!v7)
  {
    goto LABEL_8;
  }

  while (2)
  {
    v56 = v4;
    v10 = __clz(__rbit64(v7));
    v53 = (v7 - 1) & v7;
    v54 = v8;
LABEL_13:
    v55 = v3;
    v57 = result;
    v13 = (*(result + 48) + 56 * (v10 | (v3 << 6)));
    v14 = v13[1];
    v15 = v13[2];
    v16 = v13[3];
    v18 = v13[4];
    v17 = v13[5];
    v19 = v13[6];
    v74 = *v13;
    v76 = *v13;
    v77 = v14;
    v65 = v15;
    v78 = v15;
    v79 = v16;
    v80 = v18;
    v81 = v17;
    v58 = v17;
    v82 = v19;
    sub_24B5FFEFC();
    v63 = v19;

    v67 = v18;

    FilterConfiguration.hash(into:)(v75);
    result = sub_24B5FFF3C();
    v20 = -1 << *(v2 + 32);
    v21 = result & ~v20;
    if (((*(v9 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
LABEL_73:

      return 0;
    }

    v73 = ~v20;
    v64 = (v14 + 40);
    v62 = v16;
    while (1)
    {
      v22 = (*(v2 + 48) + 56 * v21);
      if (*v22 != v74)
      {
        goto LABEL_16;
      }

      v72 = v22[1];
      v23 = *(v72 + 16);
      if (v23 != *(v14 + 16))
      {
        goto LABEL_16;
      }

      v24 = v22[2];
      v70 = v22[4];
      v71 = v22[3];
      v68 = v22[5];
      if (v23)
      {
        v25 = v72 == v14;
      }

      else
      {
        v25 = 1;
      }

      v69 = v22[6];
      if (!v25)
      {
        v32 = (v72 + 40);
        v33 = v64;
        while (v23)
        {
          result = *(v32 - 1);
          if (result != *(v33 - 1) || *v32 != *v33)
          {
            result = sub_24B5FFECC();
            if ((result & 1) == 0)
            {
              goto LABEL_16;
            }
          }

          v32 += 2;
          v33 += 2;
          if (!--v23)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
        goto LABEL_76;
      }

LABEL_24:
      if (v71)
      {
        if (!v16)
        {
          goto LABEL_16;
        }

        if (v24 != v65 || v71 != v16)
        {
          result = sub_24B5FFECC();
          if ((result & 1) == 0)
          {
            goto LABEL_16;
          }
        }
      }

      else if (v16)
      {
        goto LABEL_16;
      }

      if (v70 == v67)
      {
        break;
      }

      if (*(v70 + 16) == *(v67 + 16))
      {
        v59 = v14;
        v60 = v9;
        v61 = v2;
        v26 = v70;
        v27 = 1 << *(v70 + 32);
        if (v27 < 64)
        {
          v28 = ~(-1 << v27);
        }

        else
        {
          v28 = -1;
        }

        v29 = v28 & *(v70 + 64);
        v30 = (v27 + 63) >> 6;

        v31 = 0;
        while (v29)
        {
          v35 = __clz(__rbit64(v29));
          v66 = (v29 - 1) & v29;
LABEL_51:
          v39 = 16 * (v35 | (v31 << 6));
          v40 = (*(v26 + 48) + v39);
          v41 = *v40;
          v42 = v40[1];
          v43 = (*(v26 + 56) + v39);
          v44 = *v43;
          v45 = v43[1];

          v46 = sub_24B5EA2D0(v41, v42);
          v48 = v47;

          if ((v48 & 1) == 0)
          {

            goto LABEL_68;
          }

          v49 = (*(v67 + 56) + 16 * v46);
          if (*v49 == v44 && v49[1] == v45)
          {

            v26 = v70;
            v29 = v66;
          }

          else
          {
            v51 = sub_24B5FFECC();

            v26 = v70;
            v29 = v66;
            if ((v51 & 1) == 0)
            {

LABEL_68:

              v9 = v60;
              v2 = v61;
              v14 = v59;
              v16 = v62;
              goto LABEL_16;
            }
          }
        }

        v36 = v31;
        v9 = v60;
        v2 = v61;
        v14 = v59;
        v37 = v69;
        while (1)
        {
          v31 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            break;
          }

          if (v31 >= v30)
          {
            goto LABEL_59;
          }

          v38 = *(v70 + 64 + 8 * v31);
          ++v36;
          if (v38)
          {
            v35 = __clz(__rbit64(v38));
            v66 = (v38 - 1) & v38;
            goto LABEL_51;
          }
        }

LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

LABEL_16:
      v21 = (v21 + 1) & v73;
      if (((*(v9 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_73;
      }
    }

    v37 = v69;

LABEL_59:
    if (!v37)
    {
      v16 = v62;
      if (!v63)
      {
        goto LABEL_69;
      }

LABEL_66:

      goto LABEL_16;
    }

    v16 = v62;
    if (!v63)
    {
      goto LABEL_66;
    }

    if (v68 != v58 || v37 != v63)
    {
      v52 = sub_24B5FFECC();

      if (v52)
      {
        goto LABEL_70;
      }

      goto LABEL_16;
    }

LABEL_69:

LABEL_70:

    v4 = v56;
    result = v57;
    v8 = v54;
    v3 = v55;
    v7 = v53;
    if (v53)
    {
      continue;
    }

    break;
  }

LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v54 = v8;
      v56 = v4;
      v10 = __clz(__rbit64(v12));
      v53 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

LABEL_77:
  __break(1u);
  return result;
}

uint64_t sub_24B586D40(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  if (v7)
  {
LABEL_7:
    v10 = __clz(__rbit64(v7));
    v11 = (v7 - 1) & v7;
LABEL_13:
    v51 = result;
    v14 = *(result + 48) + 72 * (v10 | (v3 << 6));
    v69 = *v14;
    v16 = *(v14 + 32);
    v15 = *(v14 + 48);
    v17 = *(v14 + 16);
    v73 = *(v14 + 64);
    v71 = v16;
    v72 = v15;
    v70 = v17;
    v65 = *(v14 + 16);
    v66 = *(v14 + 32);
    v67 = *(v14 + 48);
    v68 = *(v14 + 64);
    v64 = *v14;
    sub_24B5FFEFC();
    sub_24B5A0A70(&v69, v62);
    Modality.hash(into:)(v63);
    result = sub_24B5FFF3C();
    v18 = -1 << *(a2 + 32);
    v19 = result & ~v18;
    if ((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
    {
      v48 = v11;
      v49 = v8;
      v50 = v4;
      v20 = ~v18;
      v58 = *(&v70 + 1);
      v59 = *(&v69 + 1);
      v55 = v70;
      v21 = v71;
      *&v54 = *(&v72 + 1);
      *(&v54 + 1) = v72;
      v22 = *(v69 + 16);
      v60 = v69;
      v56 = v73;
      v57 = (v69 + 32);
      v61 = v73 + 56;
      do
      {
        v23 = *(a2 + 48) + 72 * v19;
        v64 = *v23;
        v24 = *(v23 + 16);
        v25 = *(v23 + 32);
        v26 = *(v23 + 48);
        v68 = *(v23 + 64);
        v66 = v25;
        v67 = v26;
        v65 = v24;
        if (*(v64 + 16) != v22)
        {
          goto LABEL_17;
        }

        if (v22 && v64 != v60)
        {
          v27 = (v64 + 32);
          v28 = *(v60 + 16);
          v29 = v57;
          v30 = v22;
          while (v28)
          {
            if (*v27 != *v29)
            {
              goto LABEL_17;
            }

            --v28;
            ++v27;
            ++v29;
            if (!--v30)
            {
              goto LABEL_25;
            }
          }

          __break(1u);
          goto LABEL_59;
        }

LABEL_25:
        v31 = *(&v64 + 1);
        sub_24B5A0A70(&v64, v63);
        if (sub_24B584F70(v31, v59))
        {
          if (*(&v65 + 1))
          {
            if (v58 && (v65 == __PAIR128__(v58, v55) || (sub_24B5FFECC() & 1) != 0))
            {
LABEL_30:
              if (v66 == v21 || (sub_24B5FFECC() & 1) != 0)
              {
                result = v67;
                if (__PAIR128__(v67, *(&v67 + 1)) == v54 || (result = sub_24B5FFECC(), (result & 1) != 0))
                {
                  v32 = v68;
                  if (v68 == v56)
                  {
LABEL_53:
                    sub_24B5A16A8(&v64);
                    sub_24B5A16A8(&v69);
                    v4 = v50;
                    result = v51;
                    v7 = v48;
                    v8 = v49;
                    if (v48)
                    {
                      goto LABEL_7;
                    }

                    goto LABEL_8;
                  }

                  if (*(v68 + 16) == *(v56 + 16))
                  {
                    v33 = 0;
                    v34 = v68 + 56;
                    v35 = 1 << *(v68 + 32);
                    if (v35 < 64)
                    {
                      v36 = ~(-1 << v35);
                    }

                    else
                    {
                      v36 = -1;
                    }

                    v37 = v36 & *(v68 + 56);
                    v38 = (v35 + 63) >> 6;
                    v52 = v68;
                    v53 = v9;
                    v46 = v38;
                    if (!v37)
                    {
LABEL_41:
                      v40 = v33;
                      while (1)
                      {
                        v33 = v40 + 1;
                        if (__OFADD__(v40, 1))
                        {
                          goto LABEL_60;
                        }

                        if (v33 >= v38)
                        {
                          goto LABEL_53;
                        }

                        v41 = *(v34 + 8 * v33);
                        ++v40;
                        if (v41)
                        {
                          v39 = __clz(__rbit64(v41));
                          v47 = (v41 - 1) & v41;
                          goto LABEL_46;
                        }
                      }
                    }

                    while (1)
                    {
                      v39 = __clz(__rbit64(v37));
                      v47 = (v37 - 1) & v37;
LABEL_46:
                      v42 = *(*(v32 + 48) + (v39 | (v33 << 6)));
                      sub_24B5FFEFC();
                      MEMORY[0x24C243ED0](v42);
                      result = sub_24B5FFF3C();
                      v43 = -1 << *(v56 + 32);
                      v44 = result & ~v43;
                      v32 = v52;
                      v9 = v53;
                      if (((*(v61 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
                      {
                        break;
                      }

                      v45 = ~v43;
                      while (*(*(v56 + 48) + v44) != v42)
                      {
                        v44 = (v44 + 1) & v45;
                        if (((*(v61 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
                        {
                          goto LABEL_16;
                        }
                      }

                      v38 = v46;
                      v37 = v47;
                      if (!v47)
                      {
                        goto LABEL_41;
                      }
                    }
                  }
                }
              }
            }
          }

          else if (!v58)
          {
            goto LABEL_30;
          }
        }

LABEL_16:
        result = sub_24B5A16A8(&v64);
LABEL_17:
        v19 = (v19 + 1) & v20;
      }

      while (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0);
    }

    sub_24B5A16A8(&v69);
    return 0;
  }

LABEL_8:
  v12 = v3;
  while (1)
  {
    v3 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v13 = *(v4 + 8 * v3);
    ++v12;
    if (v13)
    {
      v10 = __clz(__rbit64(v13));
      v11 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

uint64_t sub_24B587220(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v47 = a2 + 56;
  v39 = v8;
  v40 = result + 56;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v9 = __clz(__rbit64(v7));
    v36 = (v7 - 1) & v7;
LABEL_13:
    v37 = v3;
    v38 = result;
    v12 = (*(result + 48) + 56 * (v9 | (v3 << 6)));
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    v44 = v12[3];
    v16 = v12[4];
    v17 = v12[5];
    v18 = v12[6];
    sub_24B5FFEFC();

    v45 = v16;

    sub_24B57926C(v48, v13);
    v46 = v15;
    v43 = v14;
    sub_24B5FFF1C();
    if (v15)
    {
      sub_24B5FFB1C();
    }

    sub_24B5FFB1C();
    v41 = v17;
    v42 = v18;
    sub_24B5FFB1C();
    v19 = sub_24B5FFF3C();
    v20 = -1 << *(v2 + 32);
    v21 = v19 & ~v20;
    if (((*(v47 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
LABEL_43:

      return 0;
    }

    v22 = ~v20;
    while (1)
    {
      v23 = v2;
      v24 = (*(v2 + 48) + 56 * v21);
      v25 = v24[1];
      v27 = v24[2];
      v26 = v24[3];
      v28 = v24[4];
      v29 = v24[5];
      v30 = v24[6];

      if ((sub_24B584F70(v31, v13) & 1) == 0)
      {
LABEL_18:

        v2 = v23;

        goto LABEL_19;
      }

      if (v27)
      {
        if (!v46)
        {
          goto LABEL_18;
        }

        v32 = v25 == v43 && v27 == v46;
        if (!v32 && (sub_24B5FFECC() & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      else if (v46)
      {
        goto LABEL_18;
      }

      v33 = v26 == v44 && v28 == v45;
      if (!v33 && (sub_24B5FFECC() & 1) == 0)
      {
        goto LABEL_18;
      }

      v34 = v29 == v41 && v30 == v42;
      v2 = v23;
      if (v34)
      {
        break;
      }

      v35 = sub_24B5FFECC();

      if (v35)
      {
        goto LABEL_40;
      }

LABEL_19:
      v21 = (v21 + 1) & v22;
      if (((*(v47 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_43;
      }
    }

LABEL_40:

    v3 = v37;
    result = v38;
    v8 = v39;
    v4 = v40;
    v7 = v36;
  }

  while (v36);
LABEL_8:
  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v36 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B587634(uint64_t result, uint64_t a2, void (*a3)(__int128 *, _BYTE *), void (*a4)(__int128 *))
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v7 = 0;
  v8 = result + 56;
  v9 = 1 << *(result + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(result + 56);
  v12 = (v9 + 63) >> 6;
  v43 = a2 + 56;
  if (!v11)
  {
    goto LABEL_8;
  }

  do
  {
    v36 = v12;
    v37 = v8;
    v13 = __clz(__rbit64(v11));
    v35 = (v11 - 1) & v11;
LABEL_13:
    v38 = result;
    v16 = *(result + 48) + 72 * (v13 | (v7 << 6));
    v48 = *v16;
    v18 = *(v16 + 32);
    v17 = *(v16 + 48);
    v19 = *(v16 + 16);
    v52 = *(v16 + 64);
    v50 = v18;
    v51 = v17;
    v49 = v19;
    sub_24B5FFEFC();
    v21 = *(&v48 + 1);
    v20 = v48;
    v22 = v49;
    a3(&v48, v44);
    sub_24B57926C(v45, v20);
    sub_24B5FFF1C();
    if (v22)
    {
      sub_24B5FFB1C();
    }

    v23 = *(&v50 + 1);
    v24 = v51;
    *&v42 = v50;
    *(&v42 + 1) = *(&v49 + 1);
    sub_24B5FFB1C();
    v39 = v23;
    v41 = v24;
    sub_24B5FFF1C();
    if (v24)
    {
      sub_24B5FFB1C();
    }

    *&v40 = v52;
    *(&v40 + 1) = *(&v51 + 1);
    sub_24B5FFB1C();
    v25 = sub_24B5FFF3C();
    v26 = -1 << *(a2 + 32);
    v27 = v25 & ~v26;
    if (((*(v43 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
    {
LABEL_43:
      a4(&v48);
      return 0;
    }

    v28 = ~v26;
    while (1)
    {
      v29 = *(a2 + 48) + 72 * v27;
      *v45 = *v29;
      v31 = *(v29 + 32);
      v30 = *(v29 + 48);
      v32 = *(v29 + 16);
      v47 = *(v29 + 64);
      *v46 = v31;
      *&v46[16] = v30;
      *&v45[16] = v32;
      v33 = *v45;
      a3(v45, v44);
      if ((sub_24B584F70(v33, v20) & 1) == 0)
      {
LABEL_36:
        a4(v45);
        goto LABEL_37;
      }

      if (*&v45[16])
      {
        if (!v22 || *&v45[8] != __PAIR128__(v22, v21) && (sub_24B5FFECC() & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      else if (v22)
      {
        goto LABEL_36;
      }

      if (__PAIR128__(*&v45[24], *v46) != v42 && (sub_24B5FFECC() & 1) == 0)
      {
        goto LABEL_36;
      }

      if (*&v46[16])
      {
        if (!v41 || *&v46[8] != __PAIR128__(v41, v39) && (sub_24B5FFECC() & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      else if (v41)
      {
        goto LABEL_36;
      }

      if (__PAIR128__(*&v46[24], v47) == v40)
      {
        break;
      }

      v34 = sub_24B5FFECC();
      a4(v45);
      if (v34)
      {
        goto LABEL_40;
      }

LABEL_37:
      v27 = (v27 + 1) & v28;
      if (((*(v43 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    (a4)(v45, v47);
LABEL_40:
    a4(&v48);
    v8 = v37;
    result = v38;
    v11 = v35;
    v12 = v36;
  }

  while (v35);
LABEL_8:
  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      return 1;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v36 = v12;
      v37 = v8;
      v13 = __clz(__rbit64(v15));
      v35 = (v15 - 1) & v15;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B587A08(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v71 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v80 = a2 + 56;
  v72 = v7;
  v73 = result;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v8 = __clz(__rbit64(v6));
    v74 = (v6 - 1) & v6;
LABEL_13:
    v75 = v3;
    v11 = *(result + 48) + 48 * (v8 | (v3 << 6));
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
    v16 = *(v11 + 32);
    v17 = *(v11 + 40);
    v92 = *v11;
    v12 = v92;
    v93 = v13;
    v94 = v14;
    v95 = v15;
    v96 = v16;
    v97 = v17;
    sub_24B5FFEFC();
    sub_24B57BA1C(v12, v13, v14, v15, v16, v17);
    FilterItem.hash(into:)(v84);
    v18 = sub_24B5FFF3C();
    v19 = -1 << *(v2 + 32);
    v20 = v18 & ~v19;
    v21 = v92;
    v22 = v93;
    v81 = v94;
    v82 = v95;
    v83 = v96;
    v23 = v97;
    if (((*(v80 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
LABEL_153:
      sub_24B57BA04(v21, v22, v81, v82, v83, v23);
      return 0;
    }

    v79 = ~v19;
    v78 = v92;
    while (1)
    {
      v31 = v2;
      v32 = *(v2 + 48) + 48 * v20;
      v34 = *v32;
      v33 = *(v32 + 8);
      v36 = *(v32 + 16);
      v35 = *(v32 + 24);
      v37 = *(v32 + 32);
      v38 = *(v32 + 40);
      v84[0] = *v32;
      v84[1] = v33;
      v84[2] = v36;
      v84[3] = v35;
      v84[4] = v37;
      v85 = v38;
      v86 = v21;
      v87 = v22;
      v88 = v81;
      v89 = v82;
      v90 = v83;
      v91 = v23;
      if (v38 > 3)
      {
        if (v38 <= 5)
        {
          if (v38 == 4)
          {
            if (v23 != 4)
            {
              goto LABEL_88;
            }

            if (v34 == v21 && v33 == v22)
            {
              sub_24B57BA1C(v21, v22, v36, v35, v37, 4u);
              v65 = v21;
              v66 = v22;
              v67 = v81;
              v68 = v82;
              v69 = v83;
              v70 = 4;
              goto LABEL_148;
            }

            v76 = sub_24B5FFECC();
            sub_24B57BA1C(v34, v33, v36, v35, v37, 4u);
            v25 = v21;
            v26 = v22;
            v27 = v81;
            v28 = v82;
            v29 = v83;
            v30 = 4;
          }

          else
          {
            if (v23 != 5)
            {
LABEL_88:
              sub_24B57BA1C(v34, v33, v36, v35, v37, v38);
LABEL_89:
              sub_24B57BA1C(v21, v22, v81, v82, v83, v23);
              sub_24B58090C(v84, &qword_27F018B40, &qword_24B600DD8);
              v2 = v31;
              goto LABEL_21;
            }

            if (v34 == v21 && v33 == v22)
            {
              sub_24B57BA1C(v21, v22, v36, v35, v37, 5u);
              v65 = v21;
              v66 = v22;
              v67 = v81;
              v68 = v82;
              v69 = v83;
              v70 = 5;
              goto LABEL_148;
            }

            v76 = sub_24B5FFECC();
            sub_24B57BA1C(v34, v33, v36, v35, v37, 5u);
            v25 = v21;
            v26 = v22;
            v27 = v81;
            v28 = v82;
            v29 = v83;
            v30 = 5;
          }

          goto LABEL_20;
        }

        if (v38 == 6)
        {
          if (v23 != 6)
          {
            goto LABEL_88;
          }

          if (v34 == v21 && v33 == v22)
          {
            sub_24B57BA1C(v21, v22, v36, v35, v37, 6u);
            v65 = v21;
            v66 = v22;
            v67 = v81;
            v68 = v82;
            v69 = v83;
            v70 = 6;
            goto LABEL_148;
          }

          v76 = sub_24B5FFECC();
          sub_24B57BA1C(v34, v33, v36, v35, v37, 6u);
          v25 = v21;
          v26 = v22;
          v27 = v81;
          v28 = v82;
          v29 = v83;
          v30 = 6;
          goto LABEL_20;
        }

        if (v38 == 7)
        {
          if (v23 != 7)
          {
            goto LABEL_88;
          }

          if (v34 == v21 && v33 == v22)
          {
            sub_24B57BA1C(v21, v22, v36, v35, v37, 7u);
            v65 = v21;
            v66 = v22;
            v67 = v81;
            v68 = v82;
            v69 = v83;
            v70 = 7;
            goto LABEL_148;
          }

          v76 = sub_24B5FFECC();
          sub_24B57BA1C(v34, v33, v36, v35, v37, 7u);
          v25 = v21;
          v26 = v22;
          v27 = v81;
          v28 = v82;
          v29 = v83;
          v30 = 7;
          goto LABEL_20;
        }

        if (v23 != 8)
        {
          goto LABEL_89;
        }

        v2 = v31;
        if (v34 > 3u)
        {
          if (v34 <= 5u)
          {
            if (v34 == 4)
            {
              v49 = 0xE700000000000000;
              v48 = 0x7261655977656ELL;
            }

            else
            {
              v49 = 0xE500000000000000;
              v48 = 0x6564697270;
            }

            goto LABEL_110;
          }

          if (v34 == 6)
          {
            v48 = 0x576D6172676F7270;
            v49 = 0xEE0074756F6B726FLL;
            goto LABEL_110;
          }

          v48 = 0x6967736B6E616874;
          v53 = 1735289206;
        }

        else
        {
          if (v34 <= 1u)
          {
            v48 = 0x7053747369747261;
            v49 = 0xEF746867696C746FLL;
            if (v34)
            {
              v49 = 0xE90000000000006ELL;
              v48 = 0x6565776F6C6C6168;
            }

            goto LABEL_110;
          }

          if (v34 == 2)
          {
            v49 = 0xE700000000000000;
            v48 = 0x796164696C6F68;
LABEL_110:
            v54 = 0x576D6172676F7270;
            if (v78 != 6)
            {
              v54 = 0x6967736B6E616874;
            }

            v55 = 0xEE0074756F6B726FLL;
            if (v78 != 6)
            {
              v55 = 0xEC000000676E6976;
            }

            v56 = 0x7261655977656ELL;
            if (v78 != 4)
            {
              v56 = 0x6564697270;
            }

            v57 = 0xE500000000000000;
            if (v78 == 4)
            {
              v57 = 0xE700000000000000;
            }

            if (v78 <= 5)
            {
              v54 = v56;
              v55 = v57;
            }

            v58 = 0x796164696C6F68;
            if (v78 != 2)
            {
              v58 = 0x77654E72616E756CLL;
            }

            v59 = 0xEC00000072616559;
            if (v78 == 2)
            {
              v59 = 0xE700000000000000;
            }

            v60 = 0x7053747369747261;
            if (v78)
            {
              v60 = 0x6565776F6C6C6168;
            }

            v61 = 0xEF746867696C746FLL;
            if (v78)
            {
              v61 = 0xE90000000000006ELL;
            }

            if (v78 <= 1)
            {
              v58 = v60;
              v59 = v61;
            }

            if (v78 <= 3)
            {
              v62 = v58;
            }

            else
            {
              v62 = v54;
            }

            if (v78 <= 3)
            {
              v63 = v59;
            }

            else
            {
              v63 = v55;
            }

            if (v48 == v62 && v49 == v63)
            {

              goto LABEL_149;
            }

            v64 = sub_24B5FFECC();

            sub_24B58090C(v84, &qword_27F018B40, &qword_24B600DD8);
            if (v64)
            {
              goto LABEL_150;
            }

            goto LABEL_21;
          }

          v48 = 0x77654E72616E756CLL;
          v53 = 1918985561;
        }

        v49 = v53 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        goto LABEL_110;
      }

      if (v38 > 1)
      {
        if (v38 == 2)
        {
          if (v23 != 2)
          {
            goto LABEL_88;
          }

          if (v34 == v21 && v33 == v22)
          {
            sub_24B57BA1C(v21, v22, v36, v35, v37, 2u);
            v65 = v21;
            v66 = v22;
            v67 = v81;
            v68 = v82;
            v69 = v83;
            v70 = 2;
            goto LABEL_148;
          }

          v76 = sub_24B5FFECC();
          sub_24B57BA1C(v34, v33, v36, v35, v37, 2u);
          v25 = v21;
          v26 = v22;
          v27 = v81;
          v28 = v82;
          v29 = v83;
          v30 = 2;
        }

        else
        {
          if (v23 != 3)
          {
            goto LABEL_88;
          }

          if (v34 == v21 && v33 == v22)
          {
            sub_24B57BA1C(v21, v22, v36, v35, v37, 3u);
            v65 = v21;
            v66 = v22;
            v67 = v81;
            v68 = v82;
            v69 = v83;
            v70 = 3;
            goto LABEL_148;
          }

          v76 = sub_24B5FFECC();
          sub_24B57BA1C(v34, v33, v36, v35, v37, 3u);
          v25 = v21;
          v26 = v22;
          v27 = v81;
          v28 = v82;
          v29 = v83;
          v30 = 3;
        }

        goto LABEL_20;
      }

      if (!v38)
      {
        break;
      }

      if (v23 != 1)
      {
        goto LABEL_88;
      }

      v43 = *&v37;
      if (v34 == v21 && v33 == v22)
      {
        sub_24B57BA1C(v21, v22, v36, v35, v37, 1u);
        sub_24B57BA1C(v21, v22, v81, v82, v83, 1u);
        sub_24B58090C(v84, &qword_27F018B40, &qword_24B600DD8);
        v52 = *&v36 == *&v81 && *&v35 == *&v82 && *&v37 == *&v83;
        v2 = v31;
        if (v52)
        {
          goto LABEL_150;
        }
      }

      else
      {
        v77 = sub_24B5FFECC();
        sub_24B57BA1C(v34, v33, v36, v35, v37, 1u);
        sub_24B57BA1C(v21, v22, v81, v82, v83, 1u);
        sub_24B58090C(v84, &qword_27F018B40, &qword_24B600DD8);
        v2 = v31;
        if (v77)
        {
          v45 = *&v36 == *&v81 && *&v35 == *&v82;
          if (v45 && v43 == *&v83)
          {
            goto LABEL_150;
          }
        }
      }

LABEL_21:
      v20 = (v20 + 1) & v79;
      if (((*(v80 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_153;
      }
    }

    if (v23)
    {
      goto LABEL_88;
    }

    if (v34 != v21 || v33 != v22)
    {
      v76 = sub_24B5FFECC();
      sub_24B57BA1C(v34, v33, v36, v35, v37, 0);
      v25 = v21;
      v26 = v22;
      v27 = v81;
      v28 = v82;
      v29 = v83;
      v30 = 0;
LABEL_20:
      sub_24B57BA1C(v25, v26, v27, v28, v29, v30);
      sub_24B58090C(v84, &qword_27F018B40, &qword_24B600DD8);
      v2 = v31;
      if (v76)
      {
        goto LABEL_150;
      }

      goto LABEL_21;
    }

    sub_24B57BA1C(v21, v22, v36, v35, v37, 0);
    v65 = v21;
    v66 = v22;
    v67 = v81;
    v68 = v82;
    v69 = v83;
    v70 = 0;
LABEL_148:
    sub_24B57BA1C(v65, v66, v67, v68, v69, v70);
    v2 = v31;
LABEL_149:
    sub_24B58090C(v84, &qword_27F018B40, &qword_24B600DD8);
LABEL_150:
    sub_24B57BA04(v21, v22, v81, v82, v83, v23);
    v7 = v72;
    result = v73;
    v6 = v74;
    v3 = v75;
  }

  while (v74);
LABEL_8:
  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v71 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v74 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B588540(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_24B5FFEFC();

    sub_24B5FFB1C();
    v16 = sub_24B5FFF3C();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_24B5FFECC() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B5886F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        v7 = 0x4E72656E69617274;
        v8 = 0xEB00000000656D61;
      }

      else
      {
        v7 = 0x6D614E656D656874;
        v8 = 0xE900000000000065;
      }
    }

    else if (a1 == 4)
    {
      v7 = 0x6E6547636973756DLL;
      v8 = 0xEE00656D614E6572;
    }

    else
    {
      v8 = 0xE400000000000000;
      v7 = 1701736302;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x6E6F697461727564;
    if (a1 != 2)
    {
      v4 = 0x7974696C61646F6DLL;
      v3 = 0xEC000000656D614ELL;
    }

    v5 = 0xD000000000000013;
    v6 = 0x800000024B609D90;
    if (a1)
    {
      v5 = 0x656C655265746164;
      v6 = 0xEC00000064657361;
    }

    if (a1 <= 1u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v3;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v10 = 0xEB00000000656D61;
        if (v7 != 0x4E72656E69617274)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v10 = 0xE900000000000065;
        if (v7 != 0x6D614E656D656874)
        {
LABEL_46:
          v11 = sub_24B5FFECC();
          goto LABEL_47;
        }
      }
    }

    else if (a2 == 4)
    {
      v10 = 0xEE00656D614E6572;
      if (v7 != 0x6E6547636973756DLL)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v10 = 0xE400000000000000;
      if (v7 != 1701736302)
      {
        goto LABEL_46;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v10 = 0xE800000000000000;
      if (v7 != 0x6E6F697461727564)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v10 = 0xEC000000656D614ELL;
      if (v7 != 0x7974696C61646F6DLL)
      {
        goto LABEL_46;
      }
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0x656C655265746164;
    }

    else
    {
      v9 = 0xD000000000000013;
    }

    if (a2)
    {
      v10 = 0xEC00000064657361;
    }

    else
    {
      v10 = 0x800000024B609D90;
    }

    if (v7 != v9)
    {
      goto LABEL_46;
    }
  }

  if (v8 != v10)
  {
    goto LABEL_46;
  }

  v11 = 1;
LABEL_47:

  return v11 & 1;
}

uint64_t sub_24B5889A8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF746867696C746FLL;
  v3 = 0x7053747369747261;
  v4 = a1;
  v5 = 0x576D6172676F7270;
  v6 = 0xEE0074756F6B726FLL;
  if (a1 != 6)
  {
    v5 = 0x6967736B6E616874;
    v6 = 0xEC000000676E6976;
  }

  v7 = 0xE700000000000000;
  v8 = 0x7261655977656ELL;
  if (a1 != 4)
  {
    v8 = 0x6564697270;
    v7 = 0xE500000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x796164696C6F68;
  if (a1 != 2)
  {
    v10 = 0x77654E72616E756CLL;
    v9 = 0xEC00000072616559;
  }

  v11 = 0x6565776F6C6C6168;
  v12 = 0xE90000000000006ELL;
  if (!a1)
  {
    v11 = 0x7053747369747261;
    v12 = 0xEF746867696C746FLL;
  }

  if (a1 <= 1u)
  {
    v10 = v11;
    v9 = v12;
  }

  if (a1 <= 3u)
  {
    v13 = v10;
  }

  else
  {
    v13 = v5;
  }

  if (v4 <= 3)
  {
    v14 = v9;
  }

  else
  {
    v14 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xEE0074756F6B726FLL;
        if (v13 != 0x576D6172676F7270)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0xEC000000676E6976;
        if (v13 != 0x6967736B6E616874)
        {
          goto LABEL_41;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE700000000000000;
      if (v13 != 0x7261655977656ELL)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v2 = 0xE500000000000000;
      if (v13 != 0x6564697270)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE700000000000000;
        if (v13 != 0x796164696C6F68)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v3 = 0x77654E72616E756CLL;
      v2 = 0xEC00000072616559;
    }

    else if (a2)
    {
      v2 = 0xE90000000000006ELL;
      if (v13 != 0x6565776F6C6C6168)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    if (v13 != v3)
    {
LABEL_41:
      v15 = sub_24B5FFECC();
      goto LABEL_42;
    }
  }

LABEL_38:
  if (v14 != v2)
  {
    goto LABEL_41;
  }

  v15 = 1;
LABEL_42:

  return v15 & 1;
}

uint64_t FilterFeature.environment.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[9];
  v25 = v1[8];
  v26 = v3;
  v4 = v1[9];
  v27 = v1[10];
  v5 = v1[3];
  v6 = v1[5];
  v21 = v1[4];
  v7 = v21;
  v22 = v6;
  v8 = v1[5];
  v9 = v1[7];
  v23 = v1[6];
  v10 = v23;
  v24 = v9;
  v11 = v1[1];
  v18[0] = *v1;
  v18[1] = v11;
  v12 = v1[3];
  v14 = *v1;
  v13 = v1[1];
  v19 = v1[2];
  v15 = v19;
  v20 = v12;
  a1[8] = v25;
  a1[9] = v4;
  a1[10] = v1[10];
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v10;
  a1[7] = v2;
  *a1 = v14;
  a1[1] = v13;
  a1[2] = v15;
  a1[3] = v5;
  return sub_24B588CE0(v18, &v17);
}

__n128 FilterFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 176) = &unk_285E87D68;
  v2 = *(a1 + 144);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v2;
  *(a2 + 160) = *(a1 + 160);
  v3 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v3;
  v4 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v4;
  v5 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v5;
  result = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  return result;
}

void FilterFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v479 = a2;
  *&v480 = a4;
  v473 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B10, &qword_24B600D80);
  MEMORY[0x28223BE20](v5 - 8);
  *&v476 = &v464 - v6;
  v475 = type metadata accessor for FilterSectionDescriptor(0);
  v472 = *(v475 - 8);
  v7 = MEMORY[0x28223BE20](v475);
  v474 = &v464 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v470 = (&v464 - v10);
  MEMORY[0x28223BE20](v9);
  v12 = &v464 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B18, &qword_24B600D88);
  v477 = *(v13 - 8);
  v478 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v469 = &v464 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v466 = &v464 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v468 = &v464 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v467 = &v464 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v465 = &v464 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v464 = &v464 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v471 = &v464 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v464 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v464 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v464 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v464 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = &v464 - v40;
  v42 = type metadata accessor for FilterAction(0);
  MEMORY[0x28223BE20](v42);
  v44 = *(v4 + 144);
  v518 = *(v4 + 128);
  v519 = v44;
  v520 = *(v4 + 160);
  v45 = *(v4 + 80);
  v514 = *(v4 + 64);
  v515 = v45;
  v46 = *(v4 + 112);
  v516 = *(v4 + 96);
  v517 = v46;
  v47 = *(v4 + 16);
  v510 = *v4;
  v511 = v47;
  v48 = *(v4 + 48);
  v512 = *(v4 + 32);
  v521 = *(v4 + 176);
  v513 = v48;
  v49 = &v464 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B5A13CC(v480, v49, type metadata accessor for FilterAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    v471 = v41;
    *&v480 = v12;
    v468 = v33;
    v469 = v30;
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload != 3)
        {
          v125 = *(v49 + 48);
          v526 = *(v49 + 32);
          v527 = v125;
          v528 = *(v49 + 64);
          v126 = *(v49 + 16);
          v524 = *v49;
          v525 = v126;
          v127 = v479;
          memcpy(v505, v479, 0x111uLL);
          sub_24B58FE70(v506);
          memcpy(v507, v505, 0x111uLL);
          memcpy(v508, v506, sizeof(v508));
          memcpy(v509, v505, 0x111uLL);
          v128 = sub_24B58FDFC(v509);
          if (v128 > 1)
          {
            if (v128 != 2)
            {
              sub_24B58090C(v507, &qword_27F018B20, &qword_24B600D90);
              v157 = &v127[*(type metadata accessor for FilterState(0) + 28)];
              if (v157[40] == 3)
              {
                v158 = 0;
                v113 = *v157;
                v159 = *(v157 + 1);
                v160 = *(&v526 + 1);
                v161 = 1 << *(*(&v526 + 1) + 32);
                v162 = -1;
                if (v161 < 64)
                {
                  v162 = ~(-1 << v161);
                }

                v163 = *(*(&v526 + 1) + 56);
                v49 = v162 & v163;
                v117 = (v161 + 63) >> 6;
                if ((v162 & v163) == 0)
                {
LABEL_62:
                  while (1)
                  {
                    v164 = v158 + 1;
                    if (__OFADD__(v158, 1))
                    {
                      break;
                    }

                    if (v164 >= v117)
                    {
                      goto LABEL_101;
                    }

                    v49 = *(v160 + 56 + 8 * v164);
                    ++v158;
                    if (v49)
                    {
                      goto LABEL_65;
                    }
                  }

                  __break(1u);
                  goto LABEL_217;
                }

                while (1)
                {
                  v164 = v158;
LABEL_65:
                  v165 = *(v160 + 48) + 72 * (__clz(__rbit64(v49)) | (v164 << 6));
                  v503[0] = *v165;
                  v167 = *(v165 + 32);
                  v166 = *(v165 + 48);
                  v168 = *(v165 + 64);
                  v503[1] = *(v165 + 16);
                  v503[2] = v167;
                  *&v503[4] = v168;
                  v503[3] = v166;
                  v504[1] = *(v165 + 16);
                  v504[2] = *(v165 + 32);
                  v504[3] = *(v165 + 48);
                  *&v504[4] = *(v165 + 64);
                  v504[0] = *v165;
                  if (__PAIR128__(v159, v113) == v167 || (sub_24B5FFECC() & 1) != 0)
                  {
                    break;
                  }

                  v49 &= v49 - 1;
                  v158 = v164;
                  if (!v49)
                  {
                    goto LABEL_62;
                  }
                }

                sub_24B5A0A70(v503, v502);

                v437 = sub_24B58CF38(6u, *&v503[4]);
                v499 = v504[2];
                v500 = v504[3];
                v501 = *&v504[4];
                v497 = v504[0];
                v498 = v504[1];
                if (v437)
                {
                  v258 = &unk_285E87D90;
                }

                else
                {
                  v258 = &unk_285E87DB8;
                }
              }

              else
              {
LABEL_101:
                v501 = 0;
                v499 = 0u;
                v500 = 0u;
                v497 = 0u;
                v498 = 0u;
                v258 = &unk_285E87DE0;
              }

              v530[1] = v499;
              v531 = v500;
              v532 = v501;
              v529 = v497;
              v530[0] = v498;
              v259 = v258[2];
              v470 = v258;
              if (v259)
              {
                v260 = *(v258 + 32);
              }

              else
              {
                v260 = 1;
              }

              v364 = v479;
              (v517)(v504, v260);
              v365 = *&v504[0];
              *&v480 = BYTE8(v504[0]);
              v366 = *&v504[1];
              LODWORD(v471) = BYTE8(v504[1]);
              sub_24B57BAFC(&v497, v504, &qword_27F018B60, &qword_24B6095B0);

              v368 = sub_24B59D768(v367, v364, &v529);
              sub_24B58090C(&v497, &qword_27F018B60, &qword_24B6095B0);

              v369 = *(v368 + 16);
              v370 = MEMORY[0x277D84F90];
              v468 = v368;
              if (v369)
              {
                v371 = (v368 + 32);
                v372 = (v472 + 48);
                do
                {
                  while (1)
                  {
                    v373 = *v371++;
                    v504[8] = v518;
                    v504[9] = v519;
                    v504[10] = v520;
                    *&v504[11] = v521;
                    v504[4] = v514;
                    v504[5] = v515;
                    v504[6] = v516;
                    v504[7] = v517;
                    v504[0] = v510;
                    v504[1] = v511;
                    v504[2] = v512;
                    v504[3] = v513;
                    v503[2] = v526;
                    v503[3] = v527;
                    *&v503[4] = v528;
                    v503[0] = v524;
                    v503[1] = v525;
                    *&v482 = v365;
                    *(&v482 + 1) = v480;
                    *&v483 = v366;
                    BYTE8(v483) = v471;
                    memset(v502, 0, 72);
                    v494 = v530[1];
                    v495 = v531;
                    v496 = v532;
                    v492 = v529;
                    v493 = v530[0];

                    v374 = v476;
                    sub_24B58FFD0(v373, v503, &v482, v502, &v492, v476);
                    sub_24B5A0960(v482, *(&v482 + 1), v483);
                    if ((*v372)(v374, 1, v475) != 1)
                    {
                      break;
                    }

                    sub_24B58090C(v374, &qword_27F018B10, &qword_24B600D80);
                    if (!--v369)
                    {
                      goto LABEL_180;
                    }
                  }

                  sub_24B5A1434(v374, v474, type metadata accessor for FilterSectionDescriptor);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v370 = sub_24B595CF8(0, v370[2] + 1, 1, v370);
                  }

                  v376 = v370[2];
                  v375 = v370[3];
                  v377 = v472;
                  if (v376 >= v375 >> 1)
                  {
                    v378 = sub_24B595CF8((v375 > 1), v376 + 1, 1, v370);
                    v377 = v472;
                    v370 = v378;
                  }

                  v370[2] = v376 + 1;
                  sub_24B5A1434(v474, v370 + ((v377[80] + 32) & ~v377[80]) + *(v377 + 9) * v376, type metadata accessor for FilterSectionDescriptor);
                  --v369;
                }

                while (v369);
              }

LABEL_180:

              *&v502[23] = v525;
              *&v502[39] = v526;
              *&v502[55] = v527;
              *&v502[7] = v524;
              v503[13] = v499;
              v503[14] = v500;
              v503[11] = v497;
              v503[12] = v498;
              *(&v503[2] + 9) = *&v502[16];
              *(&v503[3] + 9) = *&v502[32];
              *&v502[71] = v528;
              *(&v503[4] + 9) = *&v502[48];
              *(&v503[5] + 8) = *&v502[63];
              memset(v503, 0, 25);
              *(&v503[1] + 9) = *v502;
              *(&v503[6] + 8) = 0u;
              *(&v503[7] + 8) = 0u;
              *(&v503[8] + 8) = 0u;
              *(&v503[9] + 8) = 0u;
              *&v503[15] = v501;
              *(&v503[10] + 1) = 0;
              *(&v503[15] + 1) = MEMORY[0x277D84F90];
              *&v503[16] = v470;
              *(&v503[16] + 1) = v370;
              sub_24B5A09A0(v503);
              v379 = v479;
              memcpy(v504, v479, 0x111uLL);
              sub_24B58FECC(v504);
              memcpy(v379, v503, 0x111uLL);
              v380 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B28, &qword_24B600D98);
              v381 = v380[16];
              v382 = v380[20];
              v383 = v469;
              v384 = &v469[v380[24]];
              LOBYTE(v492) = 1;
              sub_24B58FF7C();
              sub_24B5FFC9C();
              sub_24B5FFBFC();
              v385 = *MEMORY[0x277D04400];
              v386 = sub_24B5FF99C();
              (*(*(v386 - 8) + 104))(&v383[v381], v385, v386);
              v387 = swift_allocObject();
              *(v387 + 16) = v365;
              *(v387 + 24) = v480;
              *(v387 + 32) = v366;
              *(v387 + 40) = v471;
              *v384 = &unk_24B600E48;
              *(v384 + 1) = v387;
              v388 = *MEMORY[0x277D043E8];
              v389 = sub_24B5FF98C();
              (*(*(v389 - 8) + 104))(&v383[v382], v388, v389);
              v390 = v477;
              (*(v477 + 104))(v383, *MEMORY[0x277D043B0], v478);
              v107 = v473;
              v108 = *v473;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v108 = sub_24B595ED0(0, v108[2] + 1, 1, v108);
              }

              v392 = v108[2];
              v391 = v108[3];
              if (v392 >= v391 >> 1)
              {
                v108 = sub_24B595ED0((v391 > 1), v392 + 1, 1, v108);
              }

              v108[2] = v392 + 1;
              (*(v390 + 32))(v108 + ((*(v390 + 80) + 32) & ~*(v390 + 80)) + *(v390 + 72) * v392, v383, v478);
LABEL_195:
              *v107 = v108;
              return;
            }
          }

          else
          {
            nullsub_1();
          }

          sub_24B58FE14(v505, v504);
          sub_24B58090C(v507, &qword_27F018B20, &qword_24B600D90);
          sub_24B5A0ACC(&v524);
          return;
        }

        v59 = *v49;
        v60 = *(v49 + 8);
        v61 = *(v49 + 16);
        v62 = *(v49 + 24);
        v63 = *(v49 + 80);
        v499 = *(v49 + 64);
        v500 = v63;
        v501 = *(v49 + 96);
        v64 = *(v49 + 48);
        v497 = *(v49 + 32);
        v498 = v64;
        v65 = v479;
        memcpy(v509, v479, 0x111uLL);
        memcpy(v507, v479, 0x111uLL);
        if (sub_24B58FDFC(v507))
        {

          sub_24B5A0B20(&v497);
          return;
        }

        LODWORD(v471) = v62;
        v474 = v60;
        *&v476 = v61;
        nullsub_1();
        v214 = v213;
        memcpy(v506, v509, sizeof(v506));
        nullsub_1();
        sub_24B57BAFC(v215, v505, &qword_27F018B68, &unk_24B600E50);

        sub_24B58090C(v214, &qword_27F018B70, &unk_24B604EC0);
        v216 = *(v214 + 128);
        v526 = *(v214 + 112);
        v527 = v216;
        v217 = *(v214 + 152);
        v528 = *(v214 + 144);
        v218 = *(v214 + 96);
        v524 = *(v214 + 80);
        v525 = v218;
        v219 = *(v214 + 160);
        v220 = *(v214 + 168);
        LODWORD(v467) = *(v214 + 176);
        v221 = *(v214 + 184);
        v222 = *(v214 + 200);
        v223 = *(v214 + 216);
        v224 = *(v214 + 232);
        v225 = *(v214 + 256);
        v532 = *(v214 + 248);
        v530[1] = v223;
        v531 = v224;
        v529 = v221;
        v530[0] = v222;
        v469 = *(v214 + 264);
        v475 = v59;
        if (sub_24B587A08(v217, v59) & 1) != 0 && v474 == v219 && (sub_24B587A08(v220, v476))
        {
          v226 = v471;
          v227 = sub_24B5886F8(v467, v471);

          if (v227)
          {
            v228 = &v65[*(type metadata accessor for FilterState(0) + 28)];
            v229 = *v228;
            v523[0] = *(v228 + 1);
            *(v523 + 9) = *(v228 + 25);
            v522 = v229;
            *&v505[0] = sub_24B5944BC(v476);
            v230 = sub_24B59682C(v505, sub_24B59C708, &type metadata for FilterItem, sub_24B59714C, sub_24B596C50);
            v231 = *&v505[0];
            MEMORY[0x28223BE20](v230);
            *(&v464 - 6) = &v522;
            *(&v464 - 5) = &v510;
            *(&v464 - 4) = &v524;
            *(&v464 - 3) = &v529;
            *(&v464 - 2) = v232;
            v466 = sub_24B5920E8(sub_24B5A0B74, (&v464 - 8), v231);

            v233 = v469;
            v234 = *(v469 + 2);
            if (v234)
            {
              v465 = v225;
              v491 = MEMORY[0x277D84F90];
              sub_24B5947D8(0, v234, 0);
              v235 = v491;
              v504[2] = v499;
              v504[3] = v500;
              *&v504[4] = v501;
              v504[0] = v497;
              v504[1] = v498;
              v467 = ((v472[80] + 32) & ~v472[80]);
              v236 = &v467[v233];
              v472 = *(v472 + 9);
              v237 = v234 - 1;
              v238 = v470;
              while (1)
              {
                v239 = v236;
                sub_24B5A13CC(v236, v238, type metadata accessor for FilterSectionDescriptor);
                v505[8] = v518;
                v505[9] = v519;
                v505[10] = v520;
                *&v505[11] = v521;
                v505[4] = v514;
                v505[5] = v515;
                v505[6] = v516;
                v505[7] = v517;
                v505[0] = v510;
                v505[1] = v511;
                v505[2] = v512;
                v505[3] = v513;
                *&v502[32] = v526;
                *&v502[48] = v527;
                *&v502[64] = v528;
                *v502 = v524;
                *&v502[16] = v525;
                v487 = v475;
                v488 = v474;
                v489 = v476;
                v490 = v226;
                v494 = v504[2];
                v495 = v504[3];
                v496 = *&v504[4];
                v492 = v504[0];
                v493 = v504[1];
                v484 = v530[1];
                v485 = v531;
                v486 = v532;
                v482 = v529;
                v483 = v530[0];

                sub_24B5A0B98(&v497, &v481);
                v240 = v480;
                sub_24B58DB00(v470, v502, &v487, &v492, &v482, v480);
                v238 = v470;
                v503[2] = v494;
                v503[3] = v495;
                *&v503[4] = v496;
                v503[0] = v492;
                v503[1] = v493;
                sub_24B58090C(v503, &qword_27F018B70, &unk_24B604EC0);
                sub_24B5A0960(v487, v488, v489);
                sub_24B5A149C(v238, type metadata accessor for FilterSectionDescriptor);
                v491 = v235;
                v242 = *(v235 + 16);
                v241 = *(v235 + 24);
                if (v242 >= v241 >> 1)
                {
                  sub_24B5947D8((v241 > 1), v242 + 1, 1);
                  v238 = v470;
                  v235 = v491;
                }

                *(v235 + 16) = v242 + 1;
                v243 = v472;
                sub_24B5A1434(v240, &v467[v235 + v242 * v472], type metadata accessor for FilterSectionDescriptor);
                if (!v237)
                {
                  break;
                }

                --v237;
                v236 = &v243[v239];
                v226 = v471;
              }

              v65 = v479;
              v226 = v471;
              v225 = v465;
            }

            else
            {

              v235 = MEMORY[0x277D84F90];
            }

            v438 = v466;
            v439 = *(v214 + 96);
            *&v502[7] = *(v214 + 80);
            *&v502[23] = v439;
            v440 = *(v214 + 128);
            *&v502[39] = *(v214 + 112);
            *&v502[55] = v440;
            *&v502[71] = *(v214 + 144);
            *&v504[0] = v475;
            *(&v504[0] + 1) = v474;
            *&v504[1] = v476;
            BYTE8(v504[1]) = v226;
            *(&v504[1] + 9) = *v502;
            *(&v504[5] + 8) = *&v502[63];
            *(&v504[4] + 9) = *&v502[48];
            *(&v504[3] + 9) = *&v502[32];
            *(&v504[2] + 9) = *&v502[16];
            *(&v504[6] + 8) = v497;
            *(&v504[10] + 1) = v501;
            *(&v504[9] + 8) = v500;
            *(&v504[8] + 8) = v499;
            *(&v504[7] + 8) = v498;
            memmove(&v504[11], (v214 + 184), 0x48uLL);
            *(&v504[15] + 1) = v438;
            *&v504[16] = v225;
            *(&v504[16] + 1) = v235;
            sub_24B5A09A0(v504);
            memcpy(v505, v65, 0x111uLL);
            sub_24B58FECC(v505);
            memcpy(v65, v504, 0x111uLL);
            v441 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B28, &qword_24B600D98);
            v442 = v441[16];
            v443 = v441[20];
            v70 = v468;
            v444 = (v468 + v441[24]);
            LOBYTE(v503[0]) = 5;
            sub_24B58FF7C();
            sub_24B5FFC9C();
            sub_24B5FFBFC();
            v445 = *MEMORY[0x277D04400];
            v446 = sub_24B5FF99C();
            (*(*(v446 - 8) + 104))(&v70[v442], v445, v446);
            v447 = swift_allocObject();
            v448 = v519;
            *(v447 + 144) = v518;
            *(v447 + 160) = v448;
            *(v447 + 176) = v520;
            *(v447 + 192) = v521;
            v449 = v515;
            *(v447 + 80) = v514;
            *(v447 + 96) = v449;
            v450 = v517;
            *(v447 + 112) = v516;
            *(v447 + 128) = v450;
            v451 = v511;
            *(v447 + 16) = v510;
            *(v447 + 32) = v451;
            v452 = v513;
            *(v447 + 48) = v512;
            *(v447 + 64) = v452;
            *v444 = &unk_24B600E68;
            v444[1] = v447;
            v453 = *MEMORY[0x277D043E8];
            v454 = sub_24B5FF98C();
            (*(*(v454 - 8) + 104))(&v70[v443], v453, v454);
            v404 = v477;
            (*(v477 + 104))(v70, *MEMORY[0x277D043B0], v478);
            v107 = v473;
            v108 = *v473;
            sub_24B592FB0(&v510, v503);
LABEL_190:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v108 = sub_24B595ED0(0, v108[2] + 1, 1, v108);
            }

            v406 = v108[2];
            v405 = v108[3];
            if (v406 >= v405 >> 1)
            {
              v108 = sub_24B595ED0((v405 > 1), v406 + 1, 1, v108);
            }

            v108[2] = v406 + 1;
            (*(v404 + 32))(v108 + ((*(v404 + 80) + 32) & ~*(v404 + 80)) + *(v404 + 72) * v406, v70, v478);
            goto LABEL_195;
          }
        }

        else
        {
        }

        sub_24B5A0B20(&v497);

        sub_24B58090C(v214 + 184, &qword_27F018B60, &qword_24B6095B0);
        sub_24B5A0ACC(v214 + 80);
        return;
      }

      v96 = *v49;
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B28, &qword_24B600D98);
      v98 = v97[16];
      v99 = v97[20];
      v100 = &v36[v97[24]];
      v507[0] = 2;
      sub_24B58FF7C();
      sub_24B5FFC9C();
      sub_24B5FFBFC();
      v101 = *MEMORY[0x277D04400];
      v102 = sub_24B5FF99C();
      (*(*(v102 - 8) + 104))(&v36[v98], v101, v102);
      v103 = swift_allocObject();
      *(v103 + 16) = v96;
      *(v103 + 152) = v518;
      *(v103 + 168) = v519;
      *(v103 + 184) = v520;
      *(v103 + 200) = v521;
      *(v103 + 88) = v514;
      *(v103 + 104) = v515;
      *(v103 + 120) = v516;
      *(v103 + 136) = v517;
      *(v103 + 24) = v510;
      *(v103 + 40) = v511;
      *(v103 + 56) = v512;
      *(v103 + 72) = v513;
      *v100 = &unk_24B600E78;
      *(v100 + 1) = v103;
      v104 = *MEMORY[0x277D043E8];
      v105 = sub_24B5FF98C();
      (*(*(v105 - 8) + 104))(&v36[v99], v104, v105);
      v106 = v477;
      (*(v477 + 104))(v36, *MEMORY[0x277D043B0], v478);
      v107 = v473;
      v108 = *v473;
      sub_24B592FB0(&v510, v507);
LABEL_29:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v108 = sub_24B595ED0(0, v108[2] + 1, 1, v108);
      }

      v110 = v108[2];
      v109 = v108[3];
      if (v110 >= v109 >> 1)
      {
        v108 = sub_24B595ED0((v109 > 1), v110 + 1, 1, v108);
      }

      v108[2] = v110 + 1;
      (*(v106 + 32))(v108 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v110, v36, v478);
      goto LABEL_195;
    }

    if (!EnumCaseMultiPayload)
    {
      v71 = *v49;
      v72 = *(v49 + 8);
      v73 = *(v49 + 16);
      v74 = *(v49 + 24);
      memcpy(v509, v479, 0x111uLL);
      memcpy(v507, v479, 0x111uLL);
      if (sub_24B58FDFC(v507) != 1)
      {

        return;
      }

      v75 = v73;
      LODWORD(v470) = v74;
      v475 = v72;
      nullsub_1();
      v77 = v76;
      v79 = *v76;
      v78 = *(v76 + 8);
      *&v476 = *(v76 + 16);
      LODWORD(v480) = *(v76 + 24);
      v80 = *(v76 + 248);
      v81 = *(v76 + 264);
      v474 = *(v76 + 256);
      v472 = v80;
      if (v79)
      {
        v469 = v81;
        if (v71)
        {
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          sub_24B58FE14(v509, v506);
          v82 = v78;
          v83 = v78;
          v84 = v476;
          sub_24B5A0F9C(v79, v82, v476);
          v85 = v84;
          v86 = v83;
          sub_24B5A0F9C(v79, v83, v85);
          if (sub_24B587A08(v79, v71) & 1) != 0 && ((v475 ^ v83) & 1) == 0 && (sub_24B587A08(v476, v75))
          {
            LODWORD(v468) = sub_24B5886F8(v480, v470);
            v87 = v83;
            v88 = v476;
            sub_24B5A0960(v79, v87, v476);
            v89 = v75;

            v90 = v75;
            v91 = v470;
            sub_24B5A0960(v71, v475, v90);

            v92 = v79;
            v93 = v91;
            v94 = v86;
            v95 = v475;
            sub_24B5A0960(v92, v94, v88);
            if (v468)
            {

              sub_24B58090C(v77 + 176, &qword_27F018B60, &qword_24B6095B0);
              sub_24B58090C(v77 + 104, &qword_27F018B70, &unk_24B604EC0);
              sub_24B5A0ACC(v77 + 32);
              return;
            }

            goto LABEL_129;
          }

          v263 = v476;
          sub_24B5A0960(v79, v83, v476);

          v468 = v83;
          v95 = v475;
          v264 = v470;
          sub_24B5A0960(v71, v475, v75);

          v265 = v79;
          v93 = v264;
          v266 = v468;
          v267 = v263;
          v89 = v75;
LABEL_128:
          sub_24B5A0960(v265, v266, v267);
LABEL_129:
          v316 = *(v77 + 48);
          v317 = *(v77 + 80);
          *&v502[32] = *(v77 + 64);
          *&v502[48] = v317;
          *&v502[64] = *(v77 + 96);
          *v502 = *(v77 + 32);
          *&v502[16] = v316;
          v318 = *(v77 + 176);
          *(&v503[1] + 7) = *(v77 + 192);
          v319 = *(v77 + 224);
          *(&v503[2] + 7) = *(v77 + 208);
          *(&v503[3] + 7) = v319;
          *(&v503[4] + 7) = *(v77 + 240);
          *(v503 + 7) = v318;
          v320 = *(v77 + 120);
          v321 = *(v77 + 152);
          v505[2] = *(v77 + 136);
          v505[3] = v321;
          v322 = *(v77 + 168);
          v505[0] = *(v77 + 104);
          v505[1] = v320;
          v505[7] = *&v502[32];
          v505[8] = *&v502[48];
          v505[5] = *v502;
          v505[6] = *&v502[16];
          *(&v505[11] + 1) = v503[0];
          v505[15] = *(&v503[3] + 15);
          *(&v505[14] + 1) = v503[3];
          *(&v505[13] + 1) = v503[2];
          *&v505[4] = v322;
          *(&v505[4] + 1) = v472;
          *&v505[9] = *&v502[64];
          *(&v505[9] + 1) = v71;
          LOBYTE(v505[10]) = v95;
          *(&v505[10] + 1) = v89;
          LOBYTE(v505[11]) = v93;
          *(&v505[12] + 1) = v503[1];
          *&v505[16] = v474;
          *(&v505[16] + 1) = v469;
          sub_24B5A0ECC(v505);
          v323 = v479;
          memcpy(v506, v479, sizeof(v506));

          sub_24B58FECC(v506);
          memcpy(v323, v505, 0x111uLL);
          v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B28, &qword_24B600D98);
          v325 = v324[16];
          v326 = v324[20];
          v327 = v93;
          v328 = v95;
          v329 = v471;
          v330 = &v471[v324[24]];
          LOBYTE(v504[0]) = 0;
          sub_24B58FF7C();
          sub_24B5FFC9C();
          sub_24B5FFBFC();
          v331 = *MEMORY[0x277D04400];
          v332 = sub_24B5FF99C();
          (*(*(v332 - 8) + 104))(&v329[v325], v331, v332);
          v333 = swift_allocObject();
          v334 = v519;
          *(v333 + 144) = v518;
          *(v333 + 160) = v334;
          *(v333 + 176) = v520;
          v335 = v521;
          v336 = v515;
          *(v333 + 80) = v514;
          *(v333 + 96) = v336;
          v337 = v517;
          *(v333 + 112) = v516;
          *(v333 + 128) = v337;
          v338 = v511;
          *(v333 + 16) = v510;
          *(v333 + 32) = v338;
          v339 = v513;
          *(v333 + 48) = v512;
          *(v333 + 64) = v339;
          *(v333 + 192) = v335;
          *(v333 + 200) = v71;
          *(v333 + 208) = v328;
          *(v333 + 216) = v89;
          *(v333 + 224) = v327;
          *v330 = &unk_24B600E98;
          *(v330 + 1) = v333;
          v340 = *MEMORY[0x277D043E8];
          v341 = sub_24B5FF98C();
          (*(*(v341 - 8) + 104))(&v329[v326], v340, v341);
          v342 = v477;
          (*(v477 + 104))(v329, *MEMORY[0x277D043B0], v478);
          v107 = v473;
          v108 = *v473;
          sub_24B592FB0(&v510, v504);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v108 = sub_24B595ED0(0, v108[2] + 1, 1, v108);
          }

          v344 = v108[2];
          v343 = v108[3];
          if (v344 >= v343 >> 1)
          {
            v108 = sub_24B595ED0((v343 > 1), v344 + 1, 1, v108);
          }

          v108[2] = v344 + 1;
          (*(v342 + 32))(v108 + ((*(v342 + 80) + 32) & ~*(v342 + 80)) + *(v342 + 72) * v344, v329, v478);
          goto LABEL_195;
        }

        v89 = v75;

        sub_24B58FE14(v509, v506);
        v315 = v78;
        v261 = v78;
        v262 = v476;
        sub_24B5A0F9C(v79, v315, v476);
      }

      else
      {
        if (!v71)
        {
          sub_24B58FE14(v509, v506);

          sub_24B58090C(v77 + 176, &qword_27F018B60, &qword_24B6095B0);
          sub_24B58090C(v77 + 104, &qword_27F018B70, &unk_24B604EC0);
          sub_24B5A0ACC(v77 + 32);
          sub_24B5A0960(0, v78, v476);
          return;
        }

        v469 = v81;

        v89 = v75;

        sub_24B58FE14(v509, v506);
        v261 = v78;
        v262 = v476;
      }

      sub_24B5A0960(v79, v261, v262);
      v265 = v71;
      v95 = v475;
      v266 = v475;
      v267 = v89;
      v93 = v470;
      goto LABEL_128;
    }

    v129 = v39;
    v130 = *(v49 + 16);
    *v506 = *v49;
    *&v506[16] = v130;
    *&v506[25] = *(v49 + 25);
    v131 = v479;
    memcpy(v507, v479, 0x111uLL);
    if (sub_24B58FDFC(v507) == 1)
    {
      nullsub_1();
      memcpy(v509, v131, 0x111uLL);
      v132 = sub_24B58FDFC(v509);
      if (v132 <= 1)
      {
        if (!v132)
        {
          nullsub_1();
          v134 = *(v133 + 152);
          LOBYTE(v135) = *(v133 + 160);
          v136 = *(v133 + 168);
          v137 = *(v133 + 176);
LABEL_120:

          if ((sub_24B58D004(v506, v136) & 1) == 0)
          {
            sub_24B59621C(v506);

            return;
          }

          *&v504[0] = v134;
          BYTE8(v504[0]) = v135 & 1;
          *&v504[1] = v136;
          BYTE8(v504[1]) = v137;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B58, &qword_24B600DF0);
          v295 = swift_allocObject();
          v296 = *v506;
          v297 = *&v506[16];
          v295[1] = xmmword_24B600A30;
          v295[2] = v296;
          v295[3] = v297;
          *(v295 + 57) = *&v506[25];
          v298 = sub_24B59C8AC(v295);
          swift_setDeallocating();
          sub_24B59621C((v295 + 2));
          swift_deallocClassInstance();
          sub_24B5F0848(v298, v505);

          v299 = *&v505[0];
          LOBYTE(v298) = BYTE8(v505[0]);
          v300 = *&v505[1];
          v301 = BYTE8(v505[1]);
          v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B28, &qword_24B600D98);
          v303 = v302[16];
          *&v480 = v302[20];
          v304 = &v129[v302[24]];
          LOBYTE(v505[0]) = 6;
          sub_24B58FF7C();
          sub_24B5FFC9C();
          sub_24B5FFBFC();
          v305 = *MEMORY[0x277D04400];
          v306 = sub_24B5FF99C();
          (*(*(v306 - 8) + 104))(&v129[v303], v305, v306);
          v307 = swift_allocObject();
          *(v307 + 16) = v299;
          *(v307 + 24) = v298;
          *(v307 + 32) = v300;
          *(v307 + 40) = v301;
          v36 = v129;
          *v304 = &unk_24B600E88;
          *(v304 + 1) = v307;
          v308 = *MEMORY[0x277D043E8];
          v309 = sub_24B5FF98C();
          (*(*(v309 - 8) + 104))(&v129[v480], v308, v309);
          v106 = v477;
          (*(v477 + 104))(v129, *MEMORY[0x277D043B0], v478);
          v107 = v473;
          v108 = *v473;
          goto LABEL_29;
        }

        nullsub_1();
        v134 = *v294;
        if (*v294)
        {
          v137 = *(v294 + 24);
          v136 = v294[2];
          v135 = *(v294 + 2);
          goto LABEL_120;
        }
      }
    }

    sub_24B59621C(v506);
    return;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    v51 = v479;
    if (EnumCaseMultiPayload != 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v52 = *v49;
        memcpy(v507, v479, 0x111uLL);
        v53 = sub_24B58FDFC(v507);
        if (v53 > 1)
        {
          return;
        }

        if (v53)
        {
          nullsub_1();
          v55 = *v245;
          v58 = v468;
          if (!*v245)
          {
            return;
          }

          v57 = v245[2];
          v56 = *(v245 + 2);
        }

        else
        {
          nullsub_1();
          v55 = *(v54 + 152);
          LOBYTE(v56) = *(v54 + 160);
          v57 = *(v54 + 168);

          v58 = v468;
        }

        v246 = v56 & 1;
        v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B28, &qword_24B600D98);
        v248 = v247[16];
        v249 = v247[20];
        v250 = (v58 + v247[24]);
        v509[0] = 6;
        sub_24B58FF7C();
        sub_24B5FFC9C();
        sub_24B5FFBFC();
        v251 = *MEMORY[0x277D04400];
        v252 = sub_24B5FF99C();
        (*(*(v252 - 8) + 104))(v58 + v248, v251, v252);
        v253 = swift_allocObject();
        *(v253 + 16) = v55;
        *(v253 + 24) = v246;
        *(v253 + 32) = v57;
        *(v253 + 40) = v52;
        *v250 = &unk_24B600DC8;
        v250[1] = v253;
        v254 = *MEMORY[0x277D043E8];
        v255 = sub_24B5FF98C();
        (*(*(v255 - 8) + 104))(v58 + v249, v254, v255);
        (*(v477 + 104))(v58, *MEMORY[0x277D043B0], v478);
        v107 = v473;
        v108 = *v473;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v108 = sub_24B595ED0(0, v108[2] + 1, 1, v108);
        }

        v257 = v108[2];
        v256 = v108[3];
        if (v257 >= v256 >> 1)
        {
          v108 = sub_24B595ED0((v256 > 1), v257 + 1, 1, v108);
        }

        v108[2] = v257 + 1;
        (*(v477 + 32))(v108 + ((*(v477 + 80) + 32) & ~*(v477 + 80)) + *(v477 + 72) * v257, v58, v478);
      }

      else
      {
        sub_24B5A149C(v49, type metadata accessor for FilterAction);
        v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B28, &qword_24B600D98);
        v139 = v138[16];
        v140 = v138[20];
        v141 = v471;
        v142 = &v471[v138[24]];
        v507[0] = 5;
        sub_24B58FF7C();
        sub_24B5FFC9C();
        sub_24B5FFBFC();
        v143 = *MEMORY[0x277D04400];
        v144 = sub_24B5FF99C();
        (*(*(v144 - 8) + 104))(&v141[v139], v143, v144);
        v145 = swift_allocObject();
        v146 = v519;
        *(v145 + 144) = v518;
        *(v145 + 160) = v146;
        *(v145 + 176) = v520;
        *(v145 + 192) = v521;
        v147 = v515;
        *(v145 + 80) = v514;
        *(v145 + 96) = v147;
        v148 = v517;
        *(v145 + 112) = v516;
        *(v145 + 128) = v148;
        v149 = v511;
        *(v145 + 16) = v510;
        *(v145 + 32) = v149;
        v150 = v513;
        *(v145 + 48) = v512;
        *(v145 + 64) = v150;
        *v142 = &unk_24B600E30;
        *(v142 + 1) = v145;
        v151 = *MEMORY[0x277D043E8];
        v152 = sub_24B5FF98C();
        (*(*(v152 - 8) + 104))(&v141[v140], v151, v152);
        v153 = v477;
        (*(v477 + 104))(v141, *MEMORY[0x277D043B0], v478);
        v107 = v473;
        v108 = *v473;
        sub_24B592FB0(&v510, v507);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v108 = sub_24B595ED0(0, v108[2] + 1, 1, v108);
        }

        v155 = v108[2];
        v154 = v108[3];
        if (v155 >= v154 >> 1)
        {
          v108 = sub_24B595ED0((v154 > 1), v155 + 1, 1, v108);
        }

        v108[2] = v155 + 1;
        (*(v153 + 32))(v108 + ((*(v153 + 80) + 32) & ~*(v153 + 80)) + *(v153 + 72) * v155, v141, v478);
      }

      goto LABEL_195;
    }

    v111 = *(v49 + 16);
    v480 = *v49;
    v505[0] = v480;
    v505[1] = v111;
    *(&v505[1] + 9) = *(v49 + 25);
    v476 = *(v49 + 16);
    v112 = *(v49 + 32);
    v113 = *(v49 + 40);
    v114 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B38, &qword_24B600DD0) + 64);
    memcpy(v507, v51, 0x111uLL);
    if (sub_24B58FDFC(v507) == 1)
    {
      nullsub_1();
      memcpy(v509, v51, 0x111uLL);
      v115 = sub_24B58FDFC(v509);
      if (v115 <= 1)
      {
        if (!v115)
        {
          LODWORD(v475) = v113;
          nullsub_1();
          v117 = *(v116 + 152);
          v118 = *(v116 + 160);
          v119 = *(v116 + 168);
          LODWORD(v120) = *(v116 + 176);
LABEL_109:

          v269 = sub_24B58D004(v505, v119);
          v470 = v114;
          v471 = v49;
          if (v269)
          {
            v270 = v119;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B58, &qword_24B600DF0);
            v271 = swift_allocObject();
            v272 = (v271 + 2);
            v273 = v505[0];
            v274 = v505[1];
            v271[1] = xmmword_24B600A30;
            v271[2] = v273;
            v271[3] = v274;
            *(v271 + 57) = *(&v505[1] + 9);
            v275 = sub_24B59C8AC(v271);
            goto LABEL_204;
          }

          LODWORD(v466) = v118;
          LODWORD(v468) = v120;
          v469 = v117;
          v345 = v119 + 56;
          v346 = 1 << *(v119 + 32);
          v347 = -1;
          if (v346 < 64)
          {
            v347 = ~(-1 << v346);
          }

          v348 = v347 & *(v119 + 56);
          v349 = (v346 + 63) >> 6;
          swift_bridgeObjectRetain_n();
          v350 = 0;
          v472 = v112;
          v474 = v119;
          if (v348)
          {
            while (1)
            {
              v351 = v350;
LABEL_141:
              v352 = *(v119 + 48) + 48 * (__clz(__rbit64(v348)) | (v351 << 6));
              v353 = *v352;
              v163 = *(v352 + 8);
              v348 &= v348 - 1;
              v117 = *(v352 + 16);
              v49 = *(v352 + 24);
              v113 = *(v352 + 32);
              v354 = *(v352 + 40);
              v479 = v353;
              *v506 = v353;
              *&v506[8] = v163;
              *&v506[16] = v117;
              *&v506[24] = v49;
              *&v506[32] = v113;
              v506[40] = v354;
              *&v506[48] = v480;
              *&v506[64] = v476;
              *&v506[80] = v112;
              v506[88] = v475;
              v355 = BYTE8(v505[2]);
              if (v354 <= 3)
              {
                break;
              }

              if (v354 <= 5)
              {
                if (v354 == 4)
                {
                  v359 = v163;
                  sub_24B57BA1C(v479, v163, v117, v49, v113, 4u);
                  if (v355 == 4)
                  {
                    v456 = 4;
                    v457 = v479;
                    v458 = v359;
                    v459 = v359;
                    v460 = v117;
                    v461 = v49;
                    v462 = v113;
                    v463 = 4;
                    goto LABEL_220;
                  }
                }

                else
                {
                  v363 = v163;
                  sub_24B57BA1C(v479, v163, v117, v49, v113, 5u);
                  if (v355 == 5)
                  {
                    v456 = 5;
                    v457 = v479;
                    v458 = v363;
                    v459 = v363;
                    v460 = v117;
                    v461 = v49;
                    v462 = v113;
                    v463 = 5;
LABEL_220:
                    sub_24B57BA1C(v457, v459, v460, v461, v462, v463);
                    sub_24B58FF20(v505, v504);
                    v119 = v474;

                    sub_24B58090C(v506, &qword_27F018B40, &qword_24B600DD8);

                    v455 = 0;
LABEL_186:
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B48, &qword_24B600DE0);
                    v393 = swift_allocObject();
                    *(v393 + 32) = v479;
                    v394 = v393 + 32;
                    *(v393 + 40) = v458;
                    *(v393 + 48) = v117;
                    *(v393 + 56) = v49;
                    *(v393 + 64) = v113;
                    *(v393 + 72) = v456;
                    if (v455)
                    {
                      v270 = v119;
                      v120 = MEMORY[0x277D84F90];
                    }

                    else
                    {
                      *&v480 = v113;
                      LODWORD(v476) = v456;
                      sub_24B57BA1C(v479, v458, v117, v49, v113, v456);
                      v120 = MEMORY[0x277D84F90];
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v120 = sub_24B595BDC(0, *(v120 + 2) + 1, 1, v120);
                      }

                      v408 = *(v120 + 2);
                      v407 = *(v120 + 3);
                      if (v408 >= v407 >> 1)
                      {
                        v120 = sub_24B595BDC((v407 > 1), v408 + 1, 1, v120);
                      }

                      v409 = v49;
                      v270 = v119;
                      *(v120 + 2) = v408 + 1;
                      v410 = &v120[48 * v408];
                      v411 = v480;
                      *(v410 + 4) = v479;
                      *(v410 + 5) = v458;
                      *(v410 + 6) = v117;
                      *(v410 + 7) = v409;
                      *(v410 + 8) = v411;
                      v410[72] = v476;
                    }

                    swift_setDeallocating();
                    sub_24B58090C(v394, &qword_27F018B50, &qword_24B600DE8);
                    swift_deallocClassInstance();
                    v275 = sub_24B5A05D4(v120);

                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B58, &qword_24B600DF0);
                    v412 = swift_allocObject();
                    v272 = (v412 + 2);
                    v413 = v505[0];
                    v414 = v505[1];
                    v412[1] = xmmword_24B600A30;
                    v412[2] = v413;
                    v412[3] = v414;
                    *(v412 + 57) = *(&v505[1] + 9);
                    sub_24B59C8AC(v412);
                    v117 = v469;
                    LOBYTE(v120) = v468;
                    LOBYTE(v118) = v466;
LABEL_204:
                    swift_setDeallocating();
                    sub_24B59621C(v272);
                    swift_deallocClassInstance();
                    *&v504[0] = v117;
                    BYTE8(v504[0]) = v118 & 1;
                    *&v504[1] = v270;
                    BYTE8(v504[1]) = v120;
                    sub_24B5F0848(v275, v506);

                    v415 = *v506;
                    v416 = v506[8];
                    v417 = *&v506[16];
                    v418 = v506[24];
                    v419 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B28, &qword_24B600D98);
                    v420 = v419[16];
                    v421 = v419[20];
                    v422 = v467;
                    v423 = &v467[v419[24]];
                    v506[0] = 6;
                    sub_24B58FF7C();
                    sub_24B5FFC9C();
                    sub_24B5FFBFC();
                    v424 = *MEMORY[0x277D04400];
                    v425 = sub_24B5FF99C();
                    (*(*(v425 - 8) + 104))(&v422[v420], v424, v425);
                    v426 = swift_allocObject();
                    *(v426 + 16) = v415;
                    *(v426 + 24) = v416;
                    *(v426 + 32) = v417;
                    *(v426 + 40) = v418;
                    *v423 = &unk_24B600E00;
                    *(v423 + 1) = v426;
                    v427 = *MEMORY[0x277D043E8];
                    v428 = sub_24B5FF98C();
                    (*(*(v428 - 8) + 104))(&v422[v421], v427, v428);
                    v429 = v477;
                    (*(v477 + 104))(v422, *MEMORY[0x277D043B0], v478);
                    v430 = v473;
                    v431 = *v473;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v431 = sub_24B595ED0(0, v431[2] + 1, 1, v431);
                    }

                    v433 = v470;
                    v432 = v471;
                    v435 = v431[2];
                    v434 = v431[3];
                    if (v435 >= v434 >> 1)
                    {
                      v431 = sub_24B595ED0((v434 > 1), v435 + 1, 1, v431);
                    }

                    v431[2] = v435 + 1;
                    (*(v429 + 32))(v431 + ((*(v429 + 80) + 32) & ~*(v429 + 80)) + *(v429 + 72) * v435, v467, v478);
                    *v430 = v431;
                    v436 = sub_24B5FEE4C();
                    (*(*(v436 - 8) + 8))(&v433[v432], v436);
                    return;
                  }
                }

LABEL_167:
                sub_24B58FF20(v505, v504);
                sub_24B58090C(v506, &qword_27F018B40, &qword_24B600DD8);
                v350 = v351;
                v119 = v474;
                v112 = v472;
                if (!v348)
                {
                  goto LABEL_138;
                }
              }

              else
              {
                if (v354 == 6)
                {
                  v360 = v163;
                  sub_24B57BA1C(v479, v163, v117, v49, v113, 6u);
                  if (v355 == 6)
                  {
                    v456 = 6;
                    v457 = v479;
                    v458 = v360;
                    v459 = v360;
                    v460 = v117;
                    v461 = v49;
                    v462 = v113;
                    v463 = 6;
                    goto LABEL_220;
                  }

                  goto LABEL_167;
                }

                if (v354 == 7)
                {
                  v356 = v163;
                  sub_24B57BA1C(v479, v163, v117, v49, v113, 7u);
                  if (v355 == 7)
                  {
                    v456 = 7;
                    v457 = v479;
                    v458 = v356;
                    v459 = v356;
                    v460 = v117;
                    v461 = v49;
                    v462 = v113;
                    v463 = 7;
                    goto LABEL_220;
                  }

                  goto LABEL_167;
                }

                if (BYTE8(v505[2]) == 8)
                {
                  goto LABEL_218;
                }

                sub_24B58FF20(v505, v504);
                sub_24B58090C(v506, &qword_27F018B40, &qword_24B600DD8);
                v350 = v351;
                v119 = v474;
                if (!v348)
                {
                  goto LABEL_138;
                }
              }
            }

            if (v354 > 1)
            {
              if (v354 == 2)
              {
                v358 = v163;
                sub_24B57BA1C(v479, v163, v117, v49, v113, 2u);
                if (v355 == 2)
                {
                  v456 = 2;
                  v457 = v479;
                  v458 = v358;
                  v459 = v358;
                  v460 = v117;
                  v461 = v49;
                  v462 = v113;
                  v463 = 2;
                  goto LABEL_220;
                }
              }

              else
              {
                v362 = v163;
                sub_24B57BA1C(v479, v163, v117, v49, v113, 3u);
                if (v355 == 3)
                {
                  v456 = 3;
                  v457 = v479;
                  v458 = v362;
                  v459 = v362;
                  v460 = v117;
                  v461 = v49;
                  v462 = v113;
                  v463 = 3;
                  goto LABEL_220;
                }
              }
            }

            else if (v354)
            {
              v361 = v163;
              sub_24B57BA1C(v479, v163, v117, v49, v113, 1u);
              if (v355 == 1)
              {
                v456 = 1;
                v457 = v479;
                v458 = v361;
                v459 = v361;
                v460 = v117;
                v461 = v49;
                v462 = v113;
                v463 = 1;
                goto LABEL_220;
              }
            }

            else
            {
              v357 = v163;
              sub_24B57BA1C(v479, v163, v117, v49, v113, 0);
              if (!v355)
              {
                v458 = v357;
                sub_24B57BA1C(v479, v357, v117, v49, v113, 0);
                sub_24B58FF20(v505, v504);
                v119 = v474;

                sub_24B58090C(v506, &qword_27F018B40, &qword_24B600DD8);

                v455 = 0;
                v456 = 0;
                goto LABEL_186;
              }
            }

            goto LABEL_167;
          }

LABEL_138:
          while (1)
          {
            v351 = v350 + 1;
            if (__OFADD__(v350, 1))
            {
              break;
            }

            if (v351 >= v349)
            {

              v479 = 0;
              v458 = 0;
              v117 = 0;
              v49 = 0;
              v113 = 0;
              v456 = 255;
              v455 = 1;
              goto LABEL_186;
            }

            v348 = *(v345 + 8 * v351);
            ++v350;
            if (v348)
            {
              goto LABEL_141;
            }
          }

LABEL_217:
          __break(1u);
LABEL_218:
          v119 = v474;
          v458 = v163;

          sub_24B58090C(v506, &qword_27F018B40, &qword_24B600DD8);

          v455 = 0;
          v456 = 8;
          goto LABEL_186;
        }

        nullsub_1();
        v117 = *v268;
        if (*v268)
        {
          LODWORD(v475) = v113;
          LODWORD(v120) = *(v268 + 24);
          v119 = *(v268 + 16);
          v118 = *(v268 + 8);
          goto LABEL_109;
        }
      }
    }

    sub_24B59621C(v505);
    v244 = sub_24B5FEE4C();
    (*(*(v244 - 8) + 8))(v114 + v49, v244);
    return;
  }

  v66 = v479;
  if (EnumCaseMultiPayload != 8)
  {
    if (EnumCaseMultiPayload != 9)
    {
      memcpy(v505, v479, 0x111uLL);
      sub_24B58FDC8(v506);
      memcpy(v507, v505, 0x111uLL);
      memcpy(v508, v506, sizeof(v508));
      memcpy(v509, v505, 0x111uLL);
      v156 = sub_24B58FDFC(v509);
      if (v156 > 1)
      {
        if (v156 == 2)
        {
          sub_24B58090C(v507, &qword_27F018B20, &qword_24B600D90);
          sub_24B58FE70(v503);
          memcpy(v504, v66, 0x111uLL);
          sub_24B58FECC(v504);
          memcpy(v66, v503, 0x111uLL);
          v169 = &v66[*(type metadata accessor for FilterState(0) + 28)];
          v170 = *(v169 + 25);
          v171 = v169[1];
          v529 = *v169;
          v530[0] = v171;
          *(v530 + 9) = v170;
          v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B28, &qword_24B600D98);
          v173 = v172[16];
          v174 = v172[20];
          v175 = v466;
          v176 = &v466[v172[24]];
          LOBYTE(v524) = 4;
          sub_24B58FF20(&v529, v502);
          v177 = sub_24B58FF7C();
          sub_24B5FFC9C();
          sub_24B5FFBFC();
          v178 = *MEMORY[0x277D04400];
          v179 = sub_24B5FF99C();
          v180 = *(v179 - 1);
          v181 = *(v180 + 104);
          v479 = v179;
          v475 = v180 + 104;
          *&v476 = v181;
          v181(&v175[v173], v178);
          v182 = swift_allocObject();
          v183 = v519;
          *(v182 + 144) = v518;
          *(v182 + 160) = v183;
          *(v182 + 176) = v520;
          v184 = v515;
          *(v182 + 80) = v514;
          *(v182 + 96) = v184;
          v185 = v517;
          *(v182 + 112) = v516;
          *(v182 + 128) = v185;
          v186 = v511;
          *(v182 + 16) = v510;
          *(v182 + 32) = v186;
          v187 = v513;
          *(v182 + 48) = v512;
          *(v182 + 64) = v187;
          v188 = v530[0];
          *(v182 + 200) = v529;
          *(v182 + 192) = v521;
          *(v182 + 216) = v188;
          *(v182 + 225) = *(v530 + 9);
          *v176 = &unk_24B600DA8;
          *(v176 + 1) = v182;
          v189 = *MEMORY[0x277D043E8];
          v190 = sub_24B5FF98C();
          v191 = *(v190 - 8);
          v192 = *(v191 + 104);
          v468 = v191 + 104;
          (v192)(&v175[v174], v189, v190);
          LODWORD(v176) = *MEMORY[0x277D043B0];
          v193 = *(v477 + 104);
          (v193)(v175, *MEMORY[0x277D043B0], v478);
          v194 = *v473;
          sub_24B592FB0(&v510, v502);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v480 = v177;
          LODWORD(v474) = v176;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v194 = sub_24B595ED0(0, *(v194 + 16) + 1, 1, v194);
          }

          v197 = *(v194 + 16);
          v196 = *(v194 + 24);
          v472 = v193;
          v470 = v192;
          if (v197 >= v196 >> 1)
          {
            v194 = sub_24B595ED0((v196 > 1), v197 + 1, 1, v194);
          }

          *(v194 + 16) = v197 + 1;
          v198 = v478;
          v199 = *(v477 + 32);
          v467 = ((*(v477 + 80) + 32) & ~*(v477 + 80));
          v200 = *(v477 + 72);
          v477 += 32;
          v471 = v199;
          (v199)(&v467[v194 + v200 * v197], v175, v478);
          v466 = v172[12];
          v201 = v172[16];
          v202 = v172[20];
          v203 = v469;
          v204 = &v469[v172[24]];
          v502[0] = 3;
          sub_24B5FFC9C();
          (v476)(&v203[v201], *MEMORY[0x277D043F0], v479);
          (v470)(&v203[v202], *MEMORY[0x277D043E0], v190);
          v205 = swift_allocObject();
          v206 = v519;
          *(v205 + 144) = v518;
          *(v205 + 160) = v206;
          *(v205 + 176) = v520;
          *(v205 + 192) = v521;
          v207 = v515;
          *(v205 + 80) = v514;
          *(v205 + 96) = v207;
          v208 = v517;
          *(v205 + 112) = v516;
          *(v205 + 128) = v208;
          v209 = v511;
          *(v205 + 16) = v510;
          *(v205 + 32) = v209;
          v210 = v513;
          *(v205 + 48) = v512;
          *(v205 + 64) = v210;
          *v204 = &unk_24B600DB8;
          *(v204 + 1) = v205;
          sub_24B592FB0(&v510, v502);
          sub_24B5FFBFC();
          (v472)(v203, v474, v198);
          v212 = *(v194 + 16);
          v211 = *(v194 + 24);
          if (v212 >= v211 >> 1)
          {
            v194 = sub_24B595ED0((v211 > 1), v212 + 1, 1, v194);
          }

          *(v194 + 16) = v212 + 1;
          (v471)(&v467[v194 + v212 * v200], v469, v478);
          *v473 = v194;
          return;
        }
      }

      else
      {
        nullsub_1();
      }

      sub_24B58FE14(v505, v504);
      sub_24B58090C(v507, &qword_27F018B20, &qword_24B600D90);
      return;
    }

    memcpy(v507, v479, 0x111uLL);
    if (sub_24B58FDFC(v507) != 1)
    {
      return;
    }

    nullsub_1();
    memcpy(v509, v66, 0x111uLL);
    v67 = sub_24B58FDFC(v509);
    if (v67 > 1)
    {
      return;
    }

    if (v67)
    {
      nullsub_1();
      v70 = v465;
      if (!*v310)
      {
        return;
      }

      v69 = *(v310 + 24);
    }

    else
    {
      nullsub_1();
      v69 = *(v68 + 176);

      v70 = v465;
    }

    v311 = v512;
    if (v512)
    {
      v312 = BYTE8(v513);
      v313 = v513;
      v314 = BYTE8(v512);

      *v506 = v311;
      v506[8] = v314 & 1;
      *&v506[16] = v313;
    }

    else
    {
      (v517)(v506, v69);

      v311 = *v506;
      v314 = v506[8];
      v313 = *&v506[16];
      v312 = v506[24];
    }

    v395 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B28, &qword_24B600D98);
    v396 = v395[16];
    v397 = v395[20];
    v398 = &v70[v395[24]];
    v506[0] = 1;
    sub_24B58FF7C();
    sub_24B5FFC9C();
    sub_24B5FFBFC();
    v399 = *MEMORY[0x277D04400];
    v400 = sub_24B5FF99C();
    (*(*(v400 - 8) + 104))(&v70[v396], v399, v400);
    v401 = swift_allocObject();
    *(v401 + 16) = v311;
    *(v401 + 24) = v314 & 1;
    *(v401 + 32) = v313;
    *(v401 + 40) = v312;
    *v398 = &unk_24B600E10;
    *(v398 + 1) = v401;
    v402 = *MEMORY[0x277D043E8];
    v403 = sub_24B5FF98C();
    (*(*(v403 - 8) + 104))(&v70[v397], v402, v403);
    v404 = v477;
    (*(v477 + 104))(v70, *MEMORY[0x277D043B0], v478);
    v107 = v473;
    v108 = *v473;
    goto LABEL_190;
  }

  memcpy(v507, v479, 0x111uLL);
  if (sub_24B58FDFC(v507) == 1)
  {
    nullsub_1();
    memcpy(v509, v66, 0x111uLL);
    v121 = sub_24B58FDFC(v509);
    if (v121 <= 1)
    {
      if (v121)
      {
        nullsub_1();
        v124 = v464;
        if (!*v276)
        {
          return;
        }

        v123 = *(v276 + 24);
      }

      else
      {
        nullsub_1();
        v123 = *(v122 + 176);

        v124 = v464;
      }

      (v517)(v506, v123);

      v277 = *v506;
      v278 = v506[8];
      v279 = *&v506[16];
      v280 = v506[24];
      v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B28, &qword_24B600D98);
      v282 = v281[16];
      v283 = v281[20];
      v284 = &v124[v281[24]];
      v506[0] = 7;
      sub_24B58FF7C();
      sub_24B5FFC9C();
      sub_24B5FFBFC();
      v285 = *MEMORY[0x277D04400];
      v286 = sub_24B5FF99C();
      (*(*(v286 - 8) + 104))(&v124[v282], v285, v286);
      v287 = swift_allocObject();
      *(v287 + 16) = v277;
      *(v287 + 24) = v278;
      *(v287 + 32) = v279;
      *(v287 + 40) = v280;
      *v284 = &unk_24B600E20;
      *(v284 + 1) = v287;
      v288 = *MEMORY[0x277D043E8];
      v289 = sub_24B5FF98C();
      (*(*(v289 - 8) + 104))(&v124[v283], v288, v289);
      v290 = v477;
      (*(v477 + 104))(v124, *MEMORY[0x277D043B0], v478);
      v291 = *v473;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v291 = sub_24B595ED0(0, v291[2] + 1, 1, v291);
      }

      v293 = v291[2];
      v292 = v291[3];
      if (v293 >= v292 >> 1)
      {
        v291 = sub_24B595ED0((v292 > 1), v293 + 1, 1, v291);
      }

      v291[2] = v293 + 1;
      (*(v290 + 32))(v291 + ((*(v290 + 80) + 32) & ~*(v290 + 80)) + *(v290 + 72) * v293, v124, v478);
      *v473 = v291;
    }
  }
}