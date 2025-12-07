uint64_t sub_24B4AB6FC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_24B517F7C();
  if (v3)
  {
    MEMORY[0x24C241D70](1);
    sub_24B4844E8(v5, v2);
  }

  else
  {
    MEMORY[0x24C241D70](0);
    sub_24B484B5C(v5, v2);
  }

  return sub_24B517FBC();
}

uint64_t sub_24B4AB770(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v6)
    {
      return sub_24B483BA0(v4, v5);
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

  return sub_24B482FB8(v4, v5);
}

void *sub_24B4AB7A4(void *a1)
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCA48, &qword_24B51C3A0);
  v29 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v3 = &v26 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCA50, &qword_24B51C3A8);
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCA58, &unk_24B51C3B0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = a1[3];
  v31 = a1;
  v12 = __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_24B4AAA30();
  v13 = v30;
  sub_24B517FCC();
  if (v13)
  {
    goto LABEL_7;
  }

  v26 = v4;
  v30 = v8;
  v14 = v10;
  v15 = sub_24B517E1C();
  v16 = (2 * *(v15 + 16)) | 1;
  v32 = v15;
  v33 = v15 + 32;
  v34 = 0;
  v35 = v16;
  v17 = sub_24B4A39B0();
  if (v17 == 2 || v34 != v35 >> 1)
  {
    v19 = sub_24B517D0C();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0);
    *v21 = &type metadata for BrowseEditorialContent;
    v12 = v10;
    sub_24B517D8C();
    sub_24B517CFC();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84160], v19);
    swift_willThrow();
    (*(v30 + 8))(v10, v7);
    swift_unknownObjectRelease();
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(v31);
    return v12;
  }

  if (v17)
  {
    LOBYTE(v36) = 1;
    sub_24B4AAA84();
    sub_24B517D7C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBDB0, &qword_24B518628);
    sub_24B482E2C(&qword_27EFFBDD0, &qword_27EFFBDD8, &protocol conformance descriptor for BrowseLazyItem, MEMORY[0x277D83978]);
    v18 = v27;
    sub_24B517E0C();
    (*(v29 + 8))(v3, v18);
    (*(v30 + 8))(v10, v7);
  }

  else
  {
    LOBYTE(v36) = 0;
    sub_24B4AAAD8();
    v23 = v6;
    sub_24B517D7C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC9E0, &qword_24B51BEE0);
    sub_24B4AAB2C(&qword_27EFFCA60, sub_24B4AC294, MEMORY[0x277D83978]);
    v24 = v26;
    sub_24B517E0C();
    v25 = v30;
    (*(v28 + 8))(v23, v24);
    (*(v25 + 8))(v14, v7);
  }

  swift_unknownObjectRelease();
  v12 = v36;
  __swift_destroy_boxed_opaque_existential_1(v31);
  return v12;
}

uint64_t sub_24B4ABD68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseLazyItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B4ABDCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24B4ABE30()
{
  result = qword_27EFFC9F8;
  if (!qword_27EFFC9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC9F8);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_24B4ABEA4(uint64_t a1, unsigned int a2)
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

uint64_t sub_24B4ABEEC(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24B4ABF80()
{
  result = qword_27EFFCA00;
  if (!qword_27EFFCA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCA00);
  }

  return result;
}

unint64_t sub_24B4ABFD8()
{
  result = qword_27EFFCA08;
  if (!qword_27EFFCA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCA08);
  }

  return result;
}

unint64_t sub_24B4AC030()
{
  result = qword_27EFFCA10;
  if (!qword_27EFFCA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCA10);
  }

  return result;
}

unint64_t sub_24B4AC088()
{
  result = qword_27EFFCA18;
  if (!qword_27EFFCA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCA18);
  }

  return result;
}

unint64_t sub_24B4AC0E0()
{
  result = qword_27EFFCA20;
  if (!qword_27EFFCA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCA20);
  }

  return result;
}

unint64_t sub_24B4AC138()
{
  result = qword_27EFFCA28;
  if (!qword_27EFFCA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCA28);
  }

  return result;
}

unint64_t sub_24B4AC190()
{
  result = qword_27EFFCA30;
  if (!qword_27EFFCA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCA30);
  }

  return result;
}

unint64_t sub_24B4AC1E8()
{
  result = qword_27EFFCA38;
  if (!qword_27EFFCA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCA38);
  }

  return result;
}

unint64_t sub_24B4AC240()
{
  result = qword_27EFFCA40;
  if (!qword_27EFFCA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCA40);
  }

  return result;
}

unint64_t sub_24B4AC294()
{
  result = qword_27EFFCA68;
  if (!qword_27EFFCA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCA68);
  }

  return result;
}

uint64_t sub_24B4AC2F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4F0, &qword_24B51C3C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t BrowseDetailArtworkItem.identifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for BrowseDetailArtworkItem(0) + 20));

  return v1;
}

uint64_t BrowseDetailArtworkItem.init(artworkDescriptor:identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_24B4AC3F4(a1, a4);
  result = type metadata accessor for BrowseDetailArtworkItem(0);
  v8 = (a4 + *(result + 20));
  *v8 = a2;
  v8[1] = a3;
  return result;
}

uint64_t sub_24B4AC3F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4F0, &qword_24B51C3C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B4AC464()
{
  if (*v0)
  {
    return 0x696669746E656469;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_24B4AC4A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x800000024B527590 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_24B517EEC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_24B4AC598(uint64_t a1)
{
  v2 = sub_24B4AC7C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4AC5D4(uint64_t a1)
{
  v2 = sub_24B4AC7C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseDetailArtworkItem.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCA70, &qword_24B51C3C8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4AC7C4();
  sub_24B517FDC();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4F0, &qword_24B51C3C0);
  sub_24B49C804(&qword_27EFFC518, MEMORY[0x277D09DB8]);
  sub_24B517EBC();
  if (!v1)
  {
    type metadata accessor for BrowseDetailArtworkItem(0);
    v8[14] = 1;
    sub_24B517E7C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24B4AC7C4()
{
  result = qword_27EFFCA78;
  if (!qword_27EFFCA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCA78);
  }

  return result;
}

uint64_t BrowseDetailArtworkItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4F0, &qword_24B51C3C0);
  MEMORY[0x28223BE20](v4);
  v24 = &v21 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCA80, &qword_24B51C3D0);
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for BrowseDetailArtworkItem(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4AC7C4();
  sub_24B517FCC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v11;
  v13 = v22;
  v26 = 0;
  sub_24B49C804(&qword_27EFFC590, MEMORY[0x277D09DC0]);
  v14 = v23;
  sub_24B517E0C();
  v15 = v12;
  sub_24B4AC3F4(v24, v12);
  v25 = 1;
  v16 = sub_24B517DCC();
  v18 = v17;
  (*(v13 + 8))(v8, v14);
  v19 = (v15 + *(v9 + 20));
  *v19 = v16;
  v19[1] = v18;
  sub_24B4ACB5C(v15, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24B4ACBC0(v15);
}

uint64_t sub_24B4ACAF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4F0, &qword_24B51C3C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B4ACB5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseDetailArtworkItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B4ACBC0(uint64_t a1)
{
  v2 = type metadata accessor for BrowseDetailArtworkItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static BrowseDetailArtworkItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BrowseArtwork(0);
  sub_24B4ACF78(qword_2810EE948, type metadata accessor for BrowseArtwork, &protocol conformance descriptor for BrowseArtwork);
  if ((sub_24B516CBC() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for BrowseDetailArtworkItem(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_24B517EEC();
}

uint64_t BrowseDetailArtworkItem.hash(into:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4F0, &qword_24B51C3C0);
  sub_24B516CCC();
  type metadata accessor for BrowseDetailArtworkItem(0);

  return sub_24B517B3C();
}

uint64_t BrowseDetailArtworkItem.hashValue.getter()
{
  sub_24B517F7C();
  type metadata accessor for BrowseDetailArtworkItem(0);
  sub_24B4ACF78(&qword_27EFFCA88, type metadata accessor for BrowseDetailArtworkItem, &protocol conformance descriptor for BrowseDetailArtworkItem);
  sub_24B517A9C();
  return sub_24B517FBC();
}

uint64_t sub_24B4ACE18(uint64_t a1, uint64_t a2)
{
  sub_24B517F7C();
  sub_24B517A9C();
  return sub_24B517FBC();
}

uint64_t sub_24B4ACE70(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4F0, &qword_24B51C3C0);
  sub_24B516CCC();

  return sub_24B517B3C();
}

uint64_t sub_24B4ACEDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24B517F7C();
  sub_24B517A9C();
  return sub_24B517FBC();
}

uint64_t sub_24B4ACF78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B4ACFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for BrowseArtwork(0);
  sub_24B4ACF78(qword_2810EE948, type metadata accessor for BrowseArtwork, &protocol conformance descriptor for BrowseArtwork);
  if ((sub_24B516CBC() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_24B517EEC();
}

unint64_t sub_24B4AD0D4()
{
  result = qword_27EFFCA98;
  if (!qword_27EFFCA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCA98);
  }

  return result;
}

unint64_t sub_24B4AD12C()
{
  result = qword_27EFFCAA0;
  if (!qword_27EFFCAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCAA0);
  }

  return result;
}

unint64_t sub_24B4AD184()
{
  result = qword_27EFFCAA8;
  if (!qword_27EFFCAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCAA8);
  }

  return result;
}

uint64_t sub_24B4AD1D8()
{
  if (*v0)
  {
    return 0x6F436C6961746564;
  }

  else
  {
    return 0x5379616C70736964;
  }
}

uint64_t sub_24B4AD228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x5379616C70736964 && a2 == 0xEC000000656C7974;
  if (v6 || (sub_24B517EEC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F436C6961746564 && a2 == 0xED0000746E65746ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B517EEC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24B4AD310(uint64_t a1)
{
  v2 = sub_24B4AD8F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4AD34C(uint64_t a1)
{
  v2 = sub_24B4AD8F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4AD388(uint64_t a1)
{
  v2 = sub_24B4AD9B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4AD3C4(uint64_t a1)
{
  v2 = sub_24B4AD9B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4AD400(uint64_t a1)
{
  v2 = sub_24B4ADA04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4AD43C(uint64_t a1)
{
  v2 = sub_24B4ADA04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseInsetBehaviorProviderType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCAB0, &qword_24B51C5E0);
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x28223BE20](v2);
  v26 = &v21 - v3;
  v24 = type metadata accessor for BrowseDetailContent(0);
  MEMORY[0x28223BE20](v24);
  v25 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCAB8, &qword_24B51C5E8);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = type metadata accessor for BrowseInsetBehaviorProviderType(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCAC0, &qword_24B51C5F0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4AD8F8();
  sub_24B517FDC();
  sub_24B4AD94C(v29, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = v25;
    sub_24B4AE0D0(v10, v25, type metadata accessor for BrowseDetailContent);
    v32 = 1;
    sub_24B4AD9B0();
    v16 = v26;
    sub_24B517E3C();
    sub_24B4AE7CC(&qword_27EFFCAD8, type metadata accessor for BrowseDetailContent, &protocol conformance descriptor for BrowseDetailContent);
    v17 = v28;
    sub_24B517EBC();
    (*(v27 + 8))(v16, v17);
    sub_24B4AEC80(v15, type metadata accessor for BrowseDetailContent);
  }

  else
  {
    v18 = *v10;
    v31 = 0;
    sub_24B4ADA04();
    sub_24B517E3C();
    v30 = v18;
    sub_24B49B688();
    v19 = v23;
    sub_24B517EBC();
    (*(v22 + 8))(v7, v19);
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t type metadata accessor for BrowseInsetBehaviorProviderType(uint64_t a1)
{
  result = qword_2810ED8A0;
  if (!qword_2810ED8A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24B4AD8F8()
{
  result = qword_27EFFCAC8;
  if (!qword_27EFFCAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCAC8);
  }

  return result;
}

uint64_t sub_24B4AD94C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseInsetBehaviorProviderType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B4AD9B0()
{
  result = qword_27EFFCAD0;
  if (!qword_27EFFCAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCAD0);
  }

  return result;
}

unint64_t sub_24B4ADA04()
{
  result = qword_27EFFCAE0;
  if (!qword_27EFFCAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCAE0);
  }

  return result;
}

uint64_t BrowseInsetBehaviorProviderType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCAE8, &qword_24B51C5F8);
  v4 = *(v3 - 8);
  v45 = v3;
  v46 = v4;
  MEMORY[0x28223BE20](v3);
  v49 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCAF0, &qword_24B51C600);
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x28223BE20](v6);
  v48 = &v40 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCAF8, &unk_24B51C608);
  v47 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for BrowseInsetBehaviorProviderType(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v40 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - v18;
  v20 = a1[3];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_24B4AD8F8();
  v21 = v50;
  sub_24B517FCC();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(v51);
  }

  v40 = v17;
  v41 = v19;
  v50 = v14;
  v23 = v48;
  v22 = v49;
  v24 = v47;
  v25 = sub_24B517E1C();
  v26 = (2 * *(v25 + 16)) | 1;
  v52 = v25;
  v53 = v25 + 32;
  v54 = 0;
  v55 = v26;
  v27 = sub_24B4A39B0();
  v28 = v10;
  if (v27 == 2 || v54 != v55 >> 1)
  {
    v30 = sub_24B517D0C();
    swift_allocError();
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0);
    *v32 = v11;
    sub_24B517D8C();
    sub_24B517CFC();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D84160], v30);
    swift_willThrow();
    (*(v24 + 8))(v10, v8);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v51);
  }

  if (v27)
  {
    v56 = 1;
    sub_24B4AD9B0();
    v29 = v22;
    sub_24B517D7C();
    type metadata accessor for BrowseDetailContent(0);
    sub_24B4AE7CC(&qword_27EFFCB00, type metadata accessor for BrowseDetailContent, &protocol conformance descriptor for BrowseDetailContent);
    v35 = v50;
    v36 = v45;
    sub_24B517E0C();
    (*(v46 + 8))(v29, v36);
    (*(v24 + 8))(v28, v8);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v38 = v35;
  }

  else
  {
    v56 = 0;
    sub_24B4ADA04();
    sub_24B517D7C();
    sub_24B49C974();
    v34 = v44;
    sub_24B517E0C();
    (*(v43 + 8))(v23, v34);
    (*(v24 + 8))(v10, v8);
    swift_unknownObjectRelease();
    v37 = v40;
    *v40 = v56;
    swift_storeEnumTagMultiPayload();
    v38 = v37;
  }

  v39 = v41;
  sub_24B4AE0D0(v38, v41, type metadata accessor for BrowseInsetBehaviorProviderType);
  sub_24B4AE0D0(v39, v42, type metadata accessor for BrowseInsetBehaviorProviderType);
  return __swift_destroy_boxed_opaque_existential_1(v51);
}

uint64_t sub_24B4AE0D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t BrowseInsetBehaviorProviderType.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for BrowseDetailContent(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BrowseInsetBehaviorProviderType(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B4AD94C(v2, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24B4AE0D0(v9, v6, type metadata accessor for BrowseDetailContent);
    MEMORY[0x24C241D70](1);
    BrowseDetailContent.hash(into:)(a1);
    return sub_24B4AEC80(v6, type metadata accessor for BrowseDetailContent);
  }

  else
  {
    v11 = *v9;
    MEMORY[0x24C241D70](0);
    BrowseDisplayStyle.rawValue.getter(v11);
    sub_24B517B3C();
  }
}

uint64_t BrowseInsetBehaviorProviderType.hashValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for BrowseDetailContent(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BrowseInsetBehaviorProviderType(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B517F7C();
  sub_24B4AD94C(v1, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24B4AE0D0(v7, v4, type metadata accessor for BrowseDetailContent);
    MEMORY[0x24C241D70](1);
    BrowseDetailContent.hash(into:)(v11);
    sub_24B4AEC80(v4, type metadata accessor for BrowseDetailContent);
  }

  else
  {
    v8 = *v7;
    MEMORY[0x24C241D70](0);
    BrowseDisplayStyle.rawValue.getter(v8);
    sub_24B517B3C();
  }

  return sub_24B517FBC();
}

uint64_t sub_24B4AE450(uint64_t a1)
{
  sub_24B517F7C();
  BrowseInsetBehaviorProviderType.hash(into:)(v2);
  return sub_24B517FBC();
}

uint64_t _s15FitnessBrowsing31BrowseInsetBehaviorProviderTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseDetailContent(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BrowseInsetBehaviorProviderType(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCB58, &unk_24B51CA60);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v27 - v15;
  v17 = *(v14 + 56);
  sub_24B4AD94C(a1, &v27 - v15);
  sub_24B4AD94C(a2, &v16[v17]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_24B4AD94C(v16, v12);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v19 = v16[v17];
      v20 = BrowseDisplayStyle.rawValue.getter(*v12);
      v22 = v21;
      if (v20 == BrowseDisplayStyle.rawValue.getter(v19) && v22 == v23)
      {
      }

      else
      {
        v25 = sub_24B517EEC();

        if ((v25 & 1) == 0)
        {
          sub_24B4AEC80(v16, type metadata accessor for BrowseInsetBehaviorProviderType);
LABEL_13:
          v18 = 0;
          return v18 & 1;
        }
      }

      sub_24B4AEC80(v16, type metadata accessor for BrowseInsetBehaviorProviderType);
      v18 = 1;
      return v18 & 1;
    }

LABEL_12:
    sub_24B4AEC18(v16);
    goto LABEL_13;
  }

  sub_24B4AD94C(v16, v10);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_24B4AEC80(v10, type metadata accessor for BrowseDetailContent);
    goto LABEL_12;
  }

  sub_24B4AE0D0(&v16[v17], v6, type metadata accessor for BrowseDetailContent);
  v18 = static BrowseDetailContent.== infix(_:_:)(v10, v6);
  sub_24B4AEC80(v6, type metadata accessor for BrowseDetailContent);
  sub_24B4AEC80(v10, type metadata accessor for BrowseDetailContent);
  sub_24B4AEC80(v16, type metadata accessor for BrowseInsetBehaviorProviderType);
  return v18 & 1;
}

uint64_t sub_24B4AE7CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B4AE864(uint64_t a1)
{
  result = type metadata accessor for BrowseDetailContent(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24B4AE904()
{
  result = qword_27EFFCB10;
  if (!qword_27EFFCB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCB10);
  }

  return result;
}

unint64_t sub_24B4AE95C()
{
  result = qword_27EFFCB18;
  if (!qword_27EFFCB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCB18);
  }

  return result;
}

unint64_t sub_24B4AE9B4()
{
  result = qword_27EFFCB20;
  if (!qword_27EFFCB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCB20);
  }

  return result;
}

unint64_t sub_24B4AEA0C()
{
  result = qword_27EFFCB28;
  if (!qword_27EFFCB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCB28);
  }

  return result;
}

unint64_t sub_24B4AEA64()
{
  result = qword_27EFFCB30;
  if (!qword_27EFFCB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCB30);
  }

  return result;
}

unint64_t sub_24B4AEABC()
{
  result = qword_27EFFCB38;
  if (!qword_27EFFCB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCB38);
  }

  return result;
}

unint64_t sub_24B4AEB14()
{
  result = qword_27EFFCB40;
  if (!qword_27EFFCB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCB40);
  }

  return result;
}

unint64_t sub_24B4AEB6C()
{
  result = qword_27EFFCB48;
  if (!qword_27EFFCB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCB48);
  }

  return result;
}

unint64_t sub_24B4AEBC4()
{
  result = qword_27EFFCB50;
  if (!qword_27EFFCB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCB50);
  }

  return result;
}

uint64_t sub_24B4AEC18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCB58, &unk_24B51CA60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B4AEC80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t EditorialCollectionDetail.sectionDescriptors.getter()
{
  type metadata accessor for EditorialCollectionDetail(0);
}

uint64_t EditorialCollectionDetail.init(backgroundArtwork:editorialCollection:sectionDescriptors:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_24B4AEE00(a1, a4);
  v7 = type metadata accessor for EditorialCollectionDetail(0);
  result = sub_24B4B04F0(a2, a4 + *(v7 + 20), type metadata accessor for EditorialCollection);
  *(a4 + *(v7 + 24)) = a3;
  return result;
}

uint64_t sub_24B4AEE00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCB60, &qword_24B51CA70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B4AEE70()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_24B4AEEC4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B4B03CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B4AEEEC(uint64_t a1)
{
  v2 = sub_24B4AF1F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4AEF28(uint64_t a1)
{
  v2 = sub_24B4AF1F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EditorialCollectionDetail.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCB68, &qword_24B51CA78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4AF1F8();
  sub_24B517FDC();
  v14 = 0;
  type metadata accessor for BrowseArtwork(0);
  sub_24B4B0558(&qword_2810EE940, type metadata accessor for BrowseArtwork, &protocol conformance descriptor for BrowseArtwork);
  sub_24B517E6C();
  if (!v2)
  {
    v9 = type metadata accessor for EditorialCollectionDetail(0);
    v13 = 1;
    type metadata accessor for EditorialCollection(0);
    sub_24B4B0558(&qword_27EFFCB78, type metadata accessor for EditorialCollection, &protocol conformance descriptor for EditorialCollection);
    sub_24B517EBC();
    v12 = *(v3 + *(v9 + 24));
    v11[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCB80, &qword_24B51CA80);
    sub_24B4AF6E4(&qword_27EFFCB88, &qword_27EFFCB90, &protocol conformance descriptor for BrowseSectionDescriptor, MEMORY[0x277D83948]);
    sub_24B517EBC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24B4AF1F8()
{
  result = qword_27EFFCB70;
  if (!qword_27EFFCB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCB70);
  }

  return result;
}

uint64_t EditorialCollectionDetail.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for EditorialCollection(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCB60, &qword_24B51CA70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCB98, &qword_24B51CA88);
  v21 = *(v9 - 8);
  v22 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  v12 = type metadata accessor for EditorialCollectionDetail(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_24B4AF1F8();
  v23 = v11;
  v16 = v24;
  sub_24B517FCC();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  v17 = v21;
  type metadata accessor for BrowseArtwork(0);
  v29 = 0;
  sub_24B4B0558(&qword_2810EE928, type metadata accessor for BrowseArtwork, &protocol conformance descriptor for BrowseArtwork);
  sub_24B517DBC();
  sub_24B4AEE00(v8, v14);
  v28 = 1;
  sub_24B4B0558(&qword_27EFFCBA0, type metadata accessor for EditorialCollection, &protocol conformance descriptor for EditorialCollection);
  sub_24B517E0C();
  sub_24B4B04F0(v5, &v14[*(v12 + 20)], type metadata accessor for EditorialCollection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCB80, &qword_24B51CA80);
  v27 = 2;
  sub_24B4AF6E4(&qword_27EFFCBA8, &qword_27EFFCBB0, &protocol conformance descriptor for BrowseSectionDescriptor, MEMORY[0x277D83978]);
  sub_24B517E0C();
  (*(v17 + 8))(v23, v22);
  *&v14[*(v12 + 24)] = v26;
  sub_24B4B01DC(v14, v20, type metadata accessor for EditorialCollectionDetail);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return sub_24B4B05A0(v14, type metadata accessor for EditorialCollectionDetail);
}

uint64_t sub_24B4AF6E4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCB80, &qword_24B51CA80);
    sub_24B4B0558(a2, type metadata accessor for BrowseSectionDescriptor, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t EditorialCollectionDetail.hash(into:)(__int128 *a1)
{
  v3 = type metadata accessor for BrowseSectionDescriptor(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B4AF9C8(a1);
  v7 = type metadata accessor for EditorialCollectionDetail(0);
  EditorialCollection.hash(into:)(a1);
  v8 = *(v1 + *(v7 + 24));
  result = MEMORY[0x24C241D70](*(v8 + 16));
  v10 = *(v8 + 16);
  if (v10)
  {
    v11 = v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    do
    {
      sub_24B4B01DC(v11, v6, type metadata accessor for BrowseSectionDescriptor);
      BrowseSectionDescriptor.hash(into:)(a1);
      result = sub_24B4B05A0(v6, type metadata accessor for BrowseSectionDescriptor);
      v11 += v12;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t EditorialCollectionDetail.hashValue.getter()
{
  sub_24B517F7C();
  EditorialCollectionDetail.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B4AF944()
{
  sub_24B517F7C();
  EditorialCollectionDetail.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B4AF988(uint64_t a1)
{
  sub_24B517F7C();
  EditorialCollectionDetail.hash(into:)(v2);
  return sub_24B517FBC();
}

uint64_t sub_24B4AF9C8(uint64_t a1)
{
  v29 = a1;
  v1 = sub_24B516BAC();
  v26 = *(v1 - 8);
  v27 = v1;
  MEMORY[0x28223BE20](v1);
  v24 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCBD8, &qword_24B51CCA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - v4;
  v6 = sub_24B516CAC();
  v25 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCBE0, &qword_24B51CCA8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for BrowseArtwork(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCB60, &qword_24B51CA70);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v24 - v17;
  sub_24B496724(v28, &v24 - v17, &qword_27EFFCB60, &qword_24B51CA70);
  if ((*(v13 + 48))(v18, 1, v12) == 1)
  {
    return sub_24B517F9C();
  }

  sub_24B4B04F0(v18, v15, type metadata accessor for BrowseArtwork);
  sub_24B517F9C();
  sub_24B496724(v15, v11, &qword_27EFFCBE0, &qword_24B51CCA8);
  v20 = v25;
  if ((*(v25 + 48))(v11, 1, v6) == 1)
  {
    sub_24B517F9C();
  }

  else
  {
    (*(v20 + 32))(v8, v11, v6);
    sub_24B517F9C();
    sub_24B4B0558(&qword_2810EED50, MEMORY[0x277D09D68], MEMORY[0x277D09D78]);
    sub_24B517A9C();
    (*(v20 + 8))(v8, v6);
  }

  v22 = v26;
  v21 = v27;
  sub_24B496724(&v15[*(v12 + 20)], v5, &qword_27EFFCBD8, &qword_24B51CCA0);
  if ((*(v22 + 48))(v5, 1, v21) == 1)
  {
    sub_24B517F9C();
  }

  else
  {
    v23 = v24;
    (*(v22 + 32))(v24, v5, v21);
    sub_24B517F9C();
    sub_24B4B0558(&qword_2810EED80, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    sub_24B517A9C();
    (*(v22 + 8))(v23, v21);
  }

  return sub_24B4B05A0(v15, type metadata accessor for BrowseArtwork);
}

uint64_t _s15FitnessBrowsing25EditorialCollectionDetailV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseArtwork(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCB60, &qword_24B51CA70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCBE8, &unk_24B51CCB0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_24B496724(a1, &v21 - v13, &qword_27EFFCB60, &qword_24B51CA70);
  sub_24B496724(a2, &v14[v15], &qword_27EFFCB60, &qword_24B51CA70);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_24B49689C(v14, &qword_27EFFCB60, &qword_24B51CA70);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_24B496724(v14, v10, &qword_27EFFCB60, &qword_24B51CA70);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_24B4B05A0(v10, type metadata accessor for BrowseArtwork);
LABEL_6:
    sub_24B49689C(v14, &qword_27EFFCBE8, &unk_24B51CCB0);
LABEL_10:
    v19 = 0;
    return v19 & 1;
  }

  sub_24B4B04F0(&v14[v15], v7, type metadata accessor for BrowseArtwork);
  v17 = _s15FitnessBrowsing13BrowseArtworkV2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_24B4B05A0(v7, type metadata accessor for BrowseArtwork);
  sub_24B4B05A0(v10, type metadata accessor for BrowseArtwork);
  sub_24B49689C(v14, &qword_27EFFCB60, &qword_24B51CA70);
  if (!v17)
  {
    goto LABEL_10;
  }

LABEL_8:
  v18 = type metadata accessor for EditorialCollectionDetail(0);
  if ((_s15FitnessBrowsing19EditorialCollectionV2eeoiySbAC_ACtFZ_0((a1 + *(v18 + 20)), (a2 + *(v18 + 20))) & 1) == 0)
  {
    goto LABEL_10;
  }

  v19 = sub_24B4840D8(*(a1 + *(v18 + 24)), *(a2 + *(v18 + 24)));
  return v19 & 1;
}

uint64_t sub_24B4B01DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24B4B02C8()
{
  result = qword_27EFFCBC0;
  if (!qword_27EFFCBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCBC0);
  }

  return result;
}

unint64_t sub_24B4B0320()
{
  result = qword_27EFFCBC8;
  if (!qword_27EFFCBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCBC8);
  }

  return result;
}

unint64_t sub_24B4B0378()
{
  result = qword_27EFFCBD0;
  if (!qword_27EFFCBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCBD0);
  }

  return result;
}

uint64_t sub_24B4B03CC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000024B5276F0 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024B527710 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B527730 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_24B517EEC();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24B4B04F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B4B0558(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B4B05A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL static SectionLayout.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_24B4B0638()
{
  if (*v0)
  {
    return 0x6E6F676F6874726FLL;
  }

  else
  {
    return 0x746E6F7A69726F68;
  }
}

uint64_t sub_24B4B0684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E6F7A69726F68 && a2 == 0xEE00646972476C61;
  if (v6 || (sub_24B517EEC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F676F6874726FLL && a2 == 0xEA00000000006C61)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B517EEC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24B4B0770(uint64_t a1)
{
  v2 = sub_24B4B0C78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4B07AC(uint64_t a1)
{
  v2 = sub_24B4B0C78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4B0800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E756F43776F72 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B517EEC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B4B0888(uint64_t a1)
{
  v2 = sub_24B4B0D20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4B08C4(uint64_t a1)
{
  v2 = sub_24B4B0D20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4B0900(uint64_t a1)
{
  v2 = sub_24B4B0CCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4B093C(uint64_t a1)
{
  v2 = sub_24B4B0CCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SectionLayout.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCBF0, &qword_24B51CCC0);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v17 = v15 - v4;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCBF8, &qword_24B51CCC8);
  v16 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v6 = v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCC00, &qword_24B51CCD0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - v9;
  v15[1] = *v1;
  v11 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4B0C78();
  sub_24B517FDC();
  if (v11)
  {
    v22 = 1;
    sub_24B4B0CCC();
    v12 = v17;
    sub_24B517E3C();
    (*(v19 + 8))(v12, v20);
  }

  else
  {
    v21 = 0;
    sub_24B4B0D20();
    sub_24B517E3C();
    v14 = v18;
    sub_24B517EAC();
    (*(v16 + 8))(v6, v14);
  }

  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_24B4B0C78()
{
  result = qword_27EFFCC08;
  if (!qword_27EFFCC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCC08);
  }

  return result;
}

unint64_t sub_24B4B0CCC()
{
  result = qword_27EFFCC10;
  if (!qword_27EFFCC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCC10);
  }

  return result;
}

unint64_t sub_24B4B0D20()
{
  result = qword_27EFFCC18;
  if (!qword_27EFFCC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCC18);
  }

  return result;
}

uint64_t SectionLayout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCC20, &qword_24B51CCD8);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCC28, &qword_24B51CCE0);
  v32 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCC30, &unk_24B51CCE8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_24B4B0C78();
  v15 = v36;
  sub_24B517FCC();
  if (!v15)
  {
    v16 = v9;
    v31 = v7;
    v36 = v11;
    v17 = v34;
    v18 = v35;
    v19 = sub_24B517E1C();
    v20 = (2 * *(v19 + 16)) | 1;
    v38 = v19;
    v39 = v19 + 32;
    v40 = 0;
    v41 = v20;
    v21 = sub_24B4A39B0();
    if (v21 == 2 || v40 != v41 >> 1)
    {
      v23 = sub_24B517D0C();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0);
      *v25 = &type metadata for SectionLayout;
      sub_24B517D8C();
      sub_24B517CFC();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v21;
      if (v21)
      {
        v43 = 1;
        sub_24B4B0CCC();
        sub_24B517D7C();
        v22 = v36;
        (*(v17 + 8))(v6, v33);
        (*(v22 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v28 = 0;
      }

      else
      {
        v43 = 0;
        sub_24B4B0D20();
        sub_24B517D7C();
        v27 = v36;
        v29 = v31;
        v28 = sub_24B517DFC();
        (*(v32 + 8))(v16, v29);
        (*(v27 + 8))(v13, v10);
        swift_unknownObjectRelease();
      }

      *v18 = v28;
      *(v18 + 8) = v42 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t SectionLayout.hash(into:)()
{
  if (*(v0 + 8))
  {
    v1 = 1;
  }

  else
  {
    v1 = *v0;
    MEMORY[0x24C241D70](0);
  }

  return MEMORY[0x24C241D70](v1);
}

uint64_t SectionLayout.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_24B517F7C();
  if (v2)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x24C241D70](0);
  }

  MEMORY[0x24C241D70](v1);
  return sub_24B517FBC();
}

uint64_t sub_24B4B1320()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_24B517F7C();
  if (v2)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x24C241D70](0);
  }

  MEMORY[0x24C241D70](v1);
  return sub_24B517FBC();
}

uint64_t sub_24B4B1384()
{
  if (*(v0 + 8))
  {
    v1 = 1;
  }

  else
  {
    v1 = *v0;
    MEMORY[0x24C241D70](0);
  }

  return MEMORY[0x24C241D70](v1);
}

uint64_t sub_24B4B13CC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_24B517F7C();
  if (v3)
  {
    v2 = 1;
  }

  else
  {
    MEMORY[0x24C241D70](0);
  }

  MEMORY[0x24C241D70](v2);
  return sub_24B517FBC();
}

unint64_t sub_24B4B1430()
{
  result = qword_27EFFCC38;
  if (!qword_27EFFCC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCC38);
  }

  return result;
}

uint64_t sub_24B4B1484(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = *(a2 + 8);
  if ((v3 & 1) == 0)
  {
    return (*a1 == *a2) & ~result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SectionLayout(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SectionLayout(uint64_t result, int a2, int a3)
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

uint64_t sub_24B4B14FC(uint64_t a1)
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

uint64_t sub_24B4B1518(uint64_t result, int a2)
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

unint64_t sub_24B4B157C()
{
  result = qword_27EFFCC40;
  if (!qword_27EFFCC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCC40);
  }

  return result;
}

unint64_t sub_24B4B15D4()
{
  result = qword_27EFFCC48;
  if (!qword_27EFFCC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCC48);
  }

  return result;
}

unint64_t sub_24B4B162C()
{
  result = qword_27EFFCC50;
  if (!qword_27EFFCC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCC50);
  }

  return result;
}

unint64_t sub_24B4B1684()
{
  result = qword_27EFFCC58;
  if (!qword_27EFFCC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCC58);
  }

  return result;
}

unint64_t sub_24B4B16DC()
{
  result = qword_27EFFCC60;
  if (!qword_27EFFCC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCC60);
  }

  return result;
}

unint64_t sub_24B4B1734()
{
  result = qword_27EFFCC68;
  if (!qword_27EFFCC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCC68);
  }

  return result;
}

unint64_t sub_24B4B178C()
{
  result = qword_27EFFCC70;
  if (!qword_27EFFCC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCC70);
  }

  return result;
}

unint64_t sub_24B4B17E4()
{
  result = qword_27EFFCC78;
  if (!qword_27EFFCC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCC78);
  }

  return result;
}

unint64_t sub_24B4B1838()
{
  v1 = *v0;
  v2 = 0x6C6961746564;
  v3 = 0x7972656C6C6167;
  v4 = 0x6E6974656B72616DLL;
  if (v1 != 4)
  {
    v4 = 0x6546646E4177656ELL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x6169726F74696465;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_24B4B1904@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B4B5114(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B4B192C(uint64_t a1)
{
  v2 = sub_24B4B2804();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4B1968(uint64_t a1)
{
  v2 = sub_24B4B2804();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4B19A4(uint64_t a1)
{
  v2 = sub_24B4B2AB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4B19E0(uint64_t a1)
{
  v2 = sub_24B4B2AB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4B1A1C(uint64_t a1)
{
  v2 = sub_24B4B2A60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4B1A58(uint64_t a1)
{
  v2 = sub_24B4B2A60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4B1A94(uint64_t a1)
{
  v2 = sub_24B4B2A0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4B1AD0(uint64_t a1)
{
  v2 = sub_24B4B2A0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4B1B0C(uint64_t a1)
{
  v2 = sub_24B4B29B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4B1B48(uint64_t a1)
{
  v2 = sub_24B4B29B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4B1B84(uint64_t a1)
{
  v2 = sub_24B4B2910();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4B1BC0(uint64_t a1)
{
  v2 = sub_24B4B2910();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4B1BFC(uint64_t a1)
{
  v2 = sub_24B4B28BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4B1C38(uint64_t a1)
{
  v2 = sub_24B4B28BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseSectionDescriptor.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCC80, &qword_24B51D0D0);
  v76 = *(v2 - 8);
  v77 = v2;
  MEMORY[0x28223BE20](v2);
  v75 = &v55 - v3;
  v73 = type metadata accessor for NewAndFeaturedDescriptor(0);
  MEMORY[0x28223BE20](v73);
  v74 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCC88, &qword_24B51D0D8);
  v71 = *(v5 - 8);
  v72 = v5;
  MEMORY[0x28223BE20](v5);
  v70 = &v55 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCC90, &qword_24B51D0E0);
  v68 = *(v7 - 8);
  v69 = v7;
  MEMORY[0x28223BE20](v7);
  v67 = &v55 - v8;
  v65 = type metadata accessor for BrowseGalleryDescriptor(0);
  MEMORY[0x28223BE20](v65);
  v66 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCC98, &qword_24B51D0E8);
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = &v55 - v10;
  v60 = type metadata accessor for BrowseEditorialDescriptor(0);
  MEMORY[0x28223BE20](v60);
  v61 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCCA0, &qword_24B51D0F0);
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v57 = &v55 - v12;
  v56 = type metadata accessor for BrowseDetailDescriptor(0);
  MEMORY[0x28223BE20](v56);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCCA8, &qword_24B51D0F8);
  v55 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v55 - v16;
  v18 = type metadata accessor for BrowseSectionDescriptor(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCCB0, &qword_24B51D100);
  v78 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v22 = &v55 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4B2804();
  v79 = v22;
  sub_24B517FDC();
  sub_24B4B2858(v87, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v44 = v66;
      sub_24B4B3A10(v20, v66, type metadata accessor for BrowseGalleryDescriptor);
      LOBYTE(v81) = 3;
      sub_24B4B29B8();
      v45 = v67;
      v47 = v79;
      v46 = v80;
      sub_24B517E3C();
      sub_24B4B4924(&qword_27EFFCCE8, type metadata accessor for BrowseGalleryDescriptor, &protocol conformance descriptor for BrowseGalleryDescriptor);
      v48 = v69;
      sub_24B517EBC();
      (*(v68 + 8))(v45, v48);
      sub_24B4B5394(v44, type metadata accessor for BrowseGalleryDescriptor);
      return (*(v78 + 8))(v47, v46);
    }

    v31 = v79;
    v30 = v80;
    if (EnumCaseMultiPayload != 4)
    {
      v52 = v74;
      sub_24B4B3A10(v20, v74, type metadata accessor for NewAndFeaturedDescriptor);
      LOBYTE(v81) = 5;
      sub_24B4B28BC();
      v53 = v75;
      sub_24B517E3C();
      sub_24B4B4924(&qword_27EFFCCC8, type metadata accessor for NewAndFeaturedDescriptor, &protocol conformance descriptor for NewAndFeaturedDescriptor);
      v54 = v77;
      sub_24B517EBC();
      (*(v76 + 8))(v53, v54);
      sub_24B4B5394(v52, type metadata accessor for NewAndFeaturedDescriptor);
      return (*(v78 + 8))(v31, v30);
    }

    v33 = *v20;
    v32 = *(v20 + 1);
    v34 = v20[16];
    LOBYTE(v81) = 4;
    sub_24B4B2910();
    v35 = v70;
    sub_24B517E3C();
    v81 = v33;
    v82 = v32;
    LOBYTE(v83) = v34;
    sub_24B4B2964();
    v36 = v72;
    sub_24B517EBC();
    (*(v71 + 8))(v35, v36);
    (*(v78 + 8))(v31, v30);
  }

  if (!EnumCaseMultiPayload)
  {
    v37 = *(v20 + 1);
    v87 = *v20;
    v39 = *(v20 + 2);
    v38 = *(v20 + 3);
    v40 = *(v20 + 5);
    v77 = *(v20 + 4);
    LOBYTE(v81) = 0;
    sub_24B4B2AB4();
    v42 = v79;
    v41 = v80;
    sub_24B517E3C();
    v81 = v87;
    v82 = v37;
    v83 = v39;
    v84 = v38;
    v85 = v77;
    v86 = v40;
    sub_24B4B2B08();
    sub_24B517EBC();
    (*(v55 + 8))(v17, v15);
    (*(v78 + 8))(v42, v41);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v24 = type metadata accessor for BrowseDetailDescriptor;
    sub_24B4B3A10(v20, v14, type metadata accessor for BrowseDetailDescriptor);
    LOBYTE(v81) = 1;
    sub_24B4B2A60();
    v25 = v57;
    v27 = v79;
    v26 = v80;
    sub_24B517E3C();
    sub_24B4B4924(&qword_27EFFCD08, type metadata accessor for BrowseDetailDescriptor, &protocol conformance descriptor for BrowseDetailDescriptor);
    v28 = v59;
    sub_24B517EBC();
    (*(v58 + 8))(v25, v28);
    v29 = v14;
  }

  else
  {
    v24 = type metadata accessor for BrowseEditorialDescriptor;
    v49 = v61;
    sub_24B4B3A10(v20, v61, type metadata accessor for BrowseEditorialDescriptor);
    LOBYTE(v81) = 2;
    sub_24B4B2A0C();
    v50 = v62;
    v27 = v79;
    v26 = v80;
    sub_24B517E3C();
    sub_24B4B4924(&qword_27EFFCCF8, type metadata accessor for BrowseEditorialDescriptor, &protocol conformance descriptor for BrowseEditorialDescriptor);
    v51 = v64;
    sub_24B517EBC();
    (*(v63 + 8))(v50, v51);
    v29 = v49;
  }

  sub_24B4B5394(v29, v24);
  return (*(v78 + 8))(v27, v26);
}

unint64_t sub_24B4B2804()
{
  result = qword_27EFFCCB8;
  if (!qword_27EFFCCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCCB8);
  }

  return result;
}

uint64_t sub_24B4B2858(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseSectionDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B4B28BC()
{
  result = qword_27EFFCCC0;
  if (!qword_27EFFCCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCCC0);
  }

  return result;
}

unint64_t sub_24B4B2910()
{
  result = qword_27EFFCCD0;
  if (!qword_27EFFCCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCCD0);
  }

  return result;
}

unint64_t sub_24B4B2964()
{
  result = qword_27EFFCCD8;
  if (!qword_27EFFCCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCCD8);
  }

  return result;
}

unint64_t sub_24B4B29B8()
{
  result = qword_27EFFCCE0;
  if (!qword_27EFFCCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCCE0);
  }

  return result;
}

unint64_t sub_24B4B2A0C()
{
  result = qword_27EFFCCF0;
  if (!qword_27EFFCCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCCF0);
  }

  return result;
}

unint64_t sub_24B4B2A60()
{
  result = qword_27EFFCD00;
  if (!qword_27EFFCD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCD00);
  }

  return result;
}

unint64_t sub_24B4B2AB4()
{
  result = qword_27EFFCD10;
  if (!qword_27EFFCD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCD10);
  }

  return result;
}

unint64_t sub_24B4B2B08()
{
  result = qword_27EFFCD18;
  if (!qword_27EFFCD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCD18);
  }

  return result;
}

uint64_t BrowseSectionDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCD20, &qword_24B51D108);
  v97 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v106 = &v78 - v3;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCD28, &qword_24B51D110);
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v105 = &v78 - v4;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCD30, &qword_24B51D118);
  v93 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v104 = &v78 - v5;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCD38, &qword_24B51D120);
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v99 = &v78 - v6;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCD40, &qword_24B51D128);
  v89 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v98 = &v78 - v7;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCD48, &qword_24B51D130);
  v87 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v102 = &v78 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCD50, &unk_24B51D138);
  v107 = *(v9 - 8);
  v108 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v78 - v10;
  v101 = type metadata accessor for BrowseSectionDescriptor(0);
  v12 = MEMORY[0x28223BE20](v101);
  v86 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v84 = (&v78 - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v78 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v78 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v78 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v78 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v78 - v28;
  v30 = a1[3];
  v117 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  sub_24B4B2804();
  v103 = v11;
  v31 = v109;
  sub_24B517FCC();
  if (!v31)
  {
    v79 = v27;
    v80 = v24;
    v81 = v21;
    v82 = v18;
    v33 = v101;
    v32 = v102;
    v109 = 0;
    v34 = v104;
    v35 = v105;
    v36 = v106;
    v83 = v29;
    v37 = v108;
    v38 = v103;
    v39 = sub_24B517E1C();
    v40 = (2 * *(v39 + 16)) | 1;
    v113 = v39;
    v114 = v39 + 32;
    v115 = 0;
    v116 = v40;
    v41 = sub_24B4A39BC();
    if (v41 == 6 || v115 != v116 >> 1)
    {
      v47 = sub_24B517D0C();
      swift_allocError();
      v49 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0);
      *v49 = v33;
      sub_24B517D8C();
      sub_24B517CFC();
      (*(*(v47 - 8) + 104))(v49, *MEMORY[0x277D84160], v47);
      swift_willThrow();
      v50 = *(v107 + 8);
      v51 = v38;
LABEL_10:
      v50(v51, v37);
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v117);
    }

    if (v41 <= 2u)
    {
      if (v41)
      {
        v42 = v109;
        if (v41 == 1)
        {
          LOBYTE(v110) = 1;
          sub_24B4B2A60();
          v43 = v98;
          sub_24B517D7C();
          if (!v42)
          {
            type metadata accessor for BrowseDetailDescriptor(0);
            sub_24B4B4924(&qword_27EFFCD78, type metadata accessor for BrowseDetailDescriptor, &protocol conformance descriptor for BrowseDetailDescriptor);
            v44 = v80;
            v45 = v88;
            sub_24B517E0C();
            v46 = v107;
            (*(v89 + 8))(v43, v45);
            (*(v46 + 8))(v38, v108);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v72 = v44;
LABEL_26:
            v77 = v83;
            sub_24B4B3A10(v72, v83, type metadata accessor for BrowseSectionDescriptor);
            v53 = v100;
LABEL_28:
            sub_24B4B3A10(v77, v53, type metadata accessor for BrowseSectionDescriptor);
            return __swift_destroy_boxed_opaque_existential_1(v117);
          }

          goto LABEL_23;
        }

        LOBYTE(v110) = 2;
        sub_24B4B2A0C();
        v64 = v99;
        sub_24B517D7C();
        if (!v42)
        {
          v65 = v38;
          v66 = v37;
          type metadata accessor for BrowseEditorialDescriptor(0);
          sub_24B4B4924(&qword_27EFFCD70, type metadata accessor for BrowseEditorialDescriptor, &protocol conformance descriptor for BrowseEditorialDescriptor);
          v67 = v81;
          v68 = v91;
          sub_24B517E0C();
          (*(v90 + 8))(v64, v68);
          v59 = v67;
          (*(v107 + 8))(v65, v66);
          swift_unknownObjectRelease();
          goto LABEL_25;
        }
      }

      else
      {
        LOBYTE(v110) = 0;
        sub_24B4B2AB4();
        v56 = v109;
        sub_24B517D7C();
        if (!v56)
        {
          sub_24B4B3ACC();
          v57 = v85;
          sub_24B517E0C();
          (*(v87 + 8))(v32, v57);
          (*(v107 + 8))(v38, v37);
          swift_unknownObjectRelease();
          v58 = v111;
          v59 = v79;
          *v79 = v110;
          v59[1] = v58;
          v59[2] = v112;
LABEL_25:
          swift_storeEnumTagMultiPayload();
          v72 = v59;
          goto LABEL_26;
        }
      }

LABEL_23:
      v50 = *(v107 + 8);
      v51 = v38;
      goto LABEL_10;
    }

    v53 = v100;
    if (v41 == 3)
    {
      LOBYTE(v110) = 3;
      sub_24B4B29B8();
      v60 = v34;
      v61 = v109;
      sub_24B517D7C();
      if (!v61)
      {
        type metadata accessor for BrowseGalleryDescriptor(0);
        sub_24B4B4924(&qword_27EFFCD68, type metadata accessor for BrowseGalleryDescriptor, &protocol conformance descriptor for BrowseGalleryDescriptor);
        v62 = v82;
        v63 = v92;
        sub_24B517E0C();
        (*(v93 + 8))(v60, v63);
        (*(v107 + 8))(v38, v108);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v72 = v62;
        goto LABEL_26;
      }

      goto LABEL_23;
    }

    if (v41 == 4)
    {
      LOBYTE(v110) = 4;
      sub_24B4B2910();
      v54 = v109;
      sub_24B517D7C();
      if (v54)
      {
        goto LABEL_23;
      }

      sub_24B4B3A78();
      v55 = v95;
      sub_24B517E0C();
      (*(v94 + 8))(v35, v55);
      (*(v107 + 8))(v38, v37);
      swift_unknownObjectRelease();
      v73 = *(&v110 + 1);
      v74 = v111;
      v75 = v84;
      *v84 = v110;
      v75[1] = v73;
      *(v75 + 16) = v74;
      swift_storeEnumTagMultiPayload();
      v76 = v75;
    }

    else
    {
      LOBYTE(v110) = 5;
      sub_24B4B28BC();
      v69 = v109;
      sub_24B517D7C();
      if (v69)
      {
        goto LABEL_23;
      }

      type metadata accessor for NewAndFeaturedDescriptor(0);
      sub_24B4B4924(&qword_27EFFCD58, type metadata accessor for NewAndFeaturedDescriptor, &protocol conformance descriptor for NewAndFeaturedDescriptor);
      v70 = v86;
      v71 = v96;
      sub_24B517E0C();
      (*(v97 + 8))(v36, v71);
      (*(v107 + 8))(v38, v108);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v76 = v70;
    }

    v77 = v83;
    sub_24B4B3A10(v76, v83, type metadata accessor for BrowseSectionDescriptor);
    goto LABEL_28;
  }

  return __swift_destroy_boxed_opaque_existential_1(v117);
}

uint64_t sub_24B4B3A10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24B4B3A78()
{
  result = qword_27EFFCD60;
  if (!qword_27EFFCD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCD60);
  }

  return result;
}

unint64_t sub_24B4B3ACC()
{
  result = qword_27EFFCD80;
  if (!qword_27EFFCD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCD80);
  }

  return result;
}

uint64_t BrowseSectionDescriptor.hash(into:)(__int128 *a1)
{
  v3 = type metadata accessor for NewAndFeaturedDescriptor(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BrowseGalleryDescriptor(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BrowseEditorialDescriptor(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BrowseDetailDescriptor(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for BrowseSectionDescriptor(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B4B2858(v1, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_24B4B3A10(v17, v14, type metadata accessor for BrowseDetailDescriptor);
        MEMORY[0x24C241D70](1);
        BrowseDetailContent.hash(into:)(a1);
        sub_24B517B3C();
        v19 = v14[*(v12 + 24)];
        sub_24B517F9C();
        if (v19 != 2)
        {
          MEMORY[0x24C241D70](v19 & 1);
        }

        v25 = type metadata accessor for BrowseDetailDescriptor;
        v24 = v14;
        return sub_24B4B5394(v24, v25);
      }

      v26 = type metadata accessor for BrowseEditorialDescriptor;
      sub_24B4B3A10(v17, v11, type metadata accessor for BrowseEditorialDescriptor);
      MEMORY[0x24C241D70](2);
      BrowseEditorialDescriptor.hash(into:)(a1);
      v24 = v11;
      goto LABEL_17;
    }

    v21 = *(v17 + 1);
    v22 = *(v17 + 3);
    v23 = *(v17 + 5);
    MEMORY[0x24C241D70](0);
    if (v21)
    {
      sub_24B517F9C();
      sub_24B517B3C();
      if (v22)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_24B517F9C();
      if (v22)
      {
LABEL_12:
        sub_24B517F9C();
        sub_24B517B3C();
        if (v23)
        {
LABEL_13:
          sub_24B517F9C();
          sub_24B517B3C();
LABEL_25:
        }

LABEL_24:
        sub_24B517F9C();
        goto LABEL_25;
      }
    }

    sub_24B517F9C();
    if (v23)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_24B4B3A10(v17, v8, type metadata accessor for BrowseGalleryDescriptor);
    MEMORY[0x24C241D70](3);
    BrowseDisplayStyle.rawValue.getter(*v8);
    sub_24B517B3C();

    sub_24B517B3C();
    sub_24B4844E8(a1, *(v8 + 3));
    MEMORY[0x24C241D70](v8[32]);
    sub_24B516B8C();
    sub_24B4B4924(&qword_2810EED98, MEMORY[0x277CC8C40], MEMORY[0x277CC8C50]);
    sub_24B517A9C();
    v24 = v8;
    v25 = type metadata accessor for BrowseGalleryDescriptor;
    return sub_24B4B5394(v24, v25);
  }

  if (EnumCaseMultiPayload != 4)
  {
    v26 = type metadata accessor for NewAndFeaturedDescriptor;
    sub_24B4B3A10(v17, v5, type metadata accessor for NewAndFeaturedDescriptor);
    MEMORY[0x24C241D70](5);
    NewAndFeaturedDescriptor.hash(into:)(a1);
    v24 = v5;
LABEL_17:
    v25 = v26;
    return sub_24B4B5394(v24, v25);
  }

  v20 = v17[16];
  MEMORY[0x24C241D70](4);
  sub_24B517B3C();
  sub_24B517F9C();
  if (v20 != 2)
  {
    MEMORY[0x24C241D70](v20 & 1);
  }
}

uint64_t BrowseSectionDescriptor.hashValue.getter()
{
  sub_24B517F7C();
  BrowseSectionDescriptor.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B4B40A4()
{
  sub_24B517F7C();
  BrowseSectionDescriptor.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B4B40E8(uint64_t a1)
{
  sub_24B517F7C();
  BrowseSectionDescriptor.hash(into:)(v2);
  return sub_24B517FBC();
}

uint64_t _s15FitnessBrowsing23BrowseSectionDescriptorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  *&v71 = a2;
  *&v70 = a1;
  v2 = type metadata accessor for NewAndFeaturedDescriptor(0);
  MEMORY[0x28223BE20](v2 - 8);
  v68 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BrowseGalleryDescriptor(0);
  MEMORY[0x28223BE20](v4 - 8);
  v67 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BrowseEditorialDescriptor(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for BrowseDetailDescriptor(0);
  MEMORY[0x28223BE20](v66);
  v69 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BrowseSectionDescriptor(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v66 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v66 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v66 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v66 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = (&v66 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCE38, &qword_24B51DA38);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v31 = &v66 - v30;
  v32 = &v66 + *(v29 + 56) - v30;
  sub_24B4B2858(v70, &v66 - v30);
  sub_24B4B2858(v71, v32);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_24B4B2858(v31, v25);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v34 = v69;
          sub_24B4B3A10(v32, v69, type metadata accessor for BrowseDetailDescriptor);
          if ((static BrowseDetailContent.== infix(_:_:)(v25, v34) & 1) == 0)
          {
            goto LABEL_50;
          }

          v35 = *(v66 + 20);
          v36 = *&v25[v35];
          v37 = *&v25[v35 + 8];
          v38 = (v34 + v35);
          if ((v36 != *v38 || v37 != v38[1]) && (sub_24B517EEC() & 1) == 0)
          {
            goto LABEL_50;
          }

          v39 = *(v66 + 24);
          v40 = v25[v39];
          v41 = *(v34 + v39);
          if (v40 == 2)
          {
            if (v41 != 2)
            {
LABEL_50:
              sub_24B4B5394(v34, type metadata accessor for BrowseDetailDescriptor);
              sub_24B4B5394(v25, type metadata accessor for BrowseDetailDescriptor);
              goto LABEL_51;
            }
          }

          else if (v41 == 2 || ((v41 ^ v40) & 1) != 0)
          {
            goto LABEL_50;
          }

          sub_24B4B5394(v34, type metadata accessor for BrowseDetailDescriptor);
          sub_24B4B5394(v25, type metadata accessor for BrowseDetailDescriptor);
LABEL_49:
          sub_24B4B5394(v31, type metadata accessor for BrowseSectionDescriptor);
          v53 = 1;
          return v53 & 1;
        }

        v58 = type metadata accessor for BrowseDetailDescriptor;
        v59 = v25;
        goto LABEL_37;
      }

      sub_24B4B2858(v31, v22);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v51 = type metadata accessor for BrowseEditorialDescriptor;
        sub_24B4B3A10(v32, v8, type metadata accessor for BrowseEditorialDescriptor);
        v53 = _s15FitnessBrowsing25BrowseEditorialDescriptorV2eeoiySbAC_ACtFZ_0(v22, v8);
        sub_24B4B5394(v8, type metadata accessor for BrowseEditorialDescriptor);
        v54 = v22;
        goto LABEL_28;
      }

      v58 = type metadata accessor for BrowseEditorialDescriptor;
      v59 = v22;
LABEL_37:
      sub_24B4B5394(v59, v58);
      goto LABEL_38;
    }

    sub_24B4B2858(v31, v27);
    v48 = v27[1];
    v49 = v27[3];
    v50 = v27[5];
    if (!swift_getEnumCaseMultiPayload())
    {
      v61 = v27[4];
      v62 = v27[2];
      v63 = *v27;
      v64 = *v32;
      v65 = *(v32 + 5);
      v76[0] = v63;
      v76[1] = v48;
      v76[2] = v62;
      v76[3] = v49;
      v76[4] = v61;
      v76[5] = v50;
      v72 = v64;
      v70 = *(v32 + 8);
      v71 = *(v32 + 24);
      v73 = v70;
      v74 = v71;
      v75 = v65;
      v53 = _s15FitnessBrowsing26CreatePlanBannerDescriptorV2eeoiySbAC_ACtFZ_0(v76, &v72);

      goto LABEL_32;
    }

    goto LABEL_23;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload != 4)
    {
      sub_24B4B2858(v31, v13);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v56 = v32;
        v57 = v68;
        sub_24B4B3A10(v56, v68, type metadata accessor for NewAndFeaturedDescriptor);
        v53 = _s15FitnessBrowsing24NewAndFeaturedDescriptorV2eeoiySbAC_ACtFZ_0(v13, v57);
        sub_24B4B5394(v57, type metadata accessor for NewAndFeaturedDescriptor);
        v54 = v13;
        v55 = type metadata accessor for NewAndFeaturedDescriptor;
        goto LABEL_31;
      }

      v58 = type metadata accessor for NewAndFeaturedDescriptor;
      v59 = v13;
      goto LABEL_37;
    }

    sub_24B4B2858(v31, v16);
    v43 = *v16;
    v42 = *(v16 + 1);
    v44 = v16[16];
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v45 = *v32;
      v46 = *(v32 + 1);
      v47 = v32[16];
      if ((v43 != v45 || v42 != v46) && (sub_24B517EEC() & 1) == 0)
      {

LABEL_51:
        sub_24B4B5394(v31, type metadata accessor for BrowseSectionDescriptor);
        goto LABEL_39;
      }

      if (v44 == 2)
      {

        if (v47 != 2)
        {
          goto LABEL_51;
        }
      }

      else
      {

        if (v47 == 2 || ((v47 ^ v44) & 1) != 0)
        {
          goto LABEL_51;
        }
      }

      goto LABEL_49;
    }

LABEL_23:

LABEL_38:
    sub_24B4B532C(v31);
LABEL_39:
    v53 = 0;
    return v53 & 1;
  }

  sub_24B4B2858(v31, v19);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v58 = type metadata accessor for BrowseGalleryDescriptor;
    v59 = v19;
    goto LABEL_37;
  }

  v51 = type metadata accessor for BrowseGalleryDescriptor;
  v52 = v67;
  sub_24B4B3A10(v32, v67, type metadata accessor for BrowseGalleryDescriptor);
  v53 = static BrowseGalleryDescriptor.== infix(_:_:)(v19, v52);
  sub_24B4B5394(v52, type metadata accessor for BrowseGalleryDescriptor);
  v54 = v19;
LABEL_28:
  v55 = v51;
LABEL_31:
  sub_24B4B5394(v54, v55);
LABEL_32:
  sub_24B4B5394(v31, type metadata accessor for BrowseSectionDescriptor);
  return v53 & 1;
}

uint64_t sub_24B4B4924(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24B4B49E0()
{
  result = qword_27EFFCD90;
  if (!qword_27EFFCD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCD90);
  }

  return result;
}

unint64_t sub_24B4B4A38()
{
  result = qword_27EFFCD98;
  if (!qword_27EFFCD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCD98);
  }

  return result;
}

unint64_t sub_24B4B4A90()
{
  result = qword_27EFFCDA0;
  if (!qword_27EFFCDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCDA0);
  }

  return result;
}

unint64_t sub_24B4B4AE8()
{
  result = qword_27EFFCDA8;
  if (!qword_27EFFCDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCDA8);
  }

  return result;
}

unint64_t sub_24B4B4B40()
{
  result = qword_27EFFCDB0;
  if (!qword_27EFFCDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCDB0);
  }

  return result;
}

unint64_t sub_24B4B4B98()
{
  result = qword_27EFFCDB8;
  if (!qword_27EFFCDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCDB8);
  }

  return result;
}

unint64_t sub_24B4B4BF0()
{
  result = qword_27EFFCDC0;
  if (!qword_27EFFCDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCDC0);
  }

  return result;
}

unint64_t sub_24B4B4C48()
{
  result = qword_27EFFCDC8;
  if (!qword_27EFFCDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCDC8);
  }

  return result;
}

unint64_t sub_24B4B4CA0()
{
  result = qword_27EFFCDD0;
  if (!qword_27EFFCDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCDD0);
  }

  return result;
}

unint64_t sub_24B4B4CF8()
{
  result = qword_27EFFCDD8;
  if (!qword_27EFFCDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCDD8);
  }

  return result;
}

unint64_t sub_24B4B4D50()
{
  result = qword_27EFFCDE0;
  if (!qword_27EFFCDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCDE0);
  }

  return result;
}

unint64_t sub_24B4B4DA8()
{
  result = qword_27EFFCDE8;
  if (!qword_27EFFCDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCDE8);
  }

  return result;
}

unint64_t sub_24B4B4E00()
{
  result = qword_27EFFCDF0;
  if (!qword_27EFFCDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCDF0);
  }

  return result;
}

unint64_t sub_24B4B4E58()
{
  result = qword_27EFFCDF8;
  if (!qword_27EFFCDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCDF8);
  }

  return result;
}

unint64_t sub_24B4B4EB0()
{
  result = qword_27EFFCE00;
  if (!qword_27EFFCE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCE00);
  }

  return result;
}

unint64_t sub_24B4B4F08()
{
  result = qword_27EFFCE08;
  if (!qword_27EFFCE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCE08);
  }

  return result;
}

unint64_t sub_24B4B4F60()
{
  result = qword_27EFFCE10;
  if (!qword_27EFFCE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCE10);
  }

  return result;
}

unint64_t sub_24B4B4FB8()
{
  result = qword_27EFFCE18;
  if (!qword_27EFFCE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCE18);
  }

  return result;
}

unint64_t sub_24B4B5010()
{
  result = qword_27EFFCE20;
  if (!qword_27EFFCE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCE20);
  }

  return result;
}

unint64_t sub_24B4B5068()
{
  result = qword_27EFFCE28;
  if (!qword_27EFFCE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCE28);
  }

  return result;
}

unint64_t sub_24B4B50C0()
{
  result = qword_27EFFCE30;
  if (!qword_27EFFCE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCE30);
  }

  return result;
}

uint64_t sub_24B4B5114(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000024B527750 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6961746564 && a2 == 0xE600000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6169726F74696465 && a2 == 0xE90000000000006CLL || (sub_24B517EEC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7972656C6C6167 && a2 == 0xE700000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6974656B72616DLL && a2 == 0xE900000000000067 || (sub_24B517EEC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6546646E4177656ELL && a2 == 0xEE00646572757461)
  {

    return 5;
  }

  else
  {
    v5 = sub_24B517EEC();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24B4B532C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCE38, &qword_24B51DA38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B4B5394(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t CreatePlanBannerEnvironment.init(makeWorkoutPlansUpdatedStream:onBannerTapped:queryBannerVisibility:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
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

uint64_t sub_24B4B5418(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_24B4B5460(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_24B4B54BC(_OWORD *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v5[0] = a1[1];
  v5[1] = v1;
  v3 = a1[5];
  v5[2] = v2;
  v5[3] = v3;
  type metadata accessor for NewAndFeaturedFeature(255, v5);
  swift_getWitnessTable();
  sub_24B5179EC();
  swift_getWitnessTable();
  return sub_24B516F7C();
}

uint64_t sub_24B4B5580(uint64_t a1)
{
  swift_getFunctionTypeMetadata1();
  sub_24B516C9C();
  sub_24B516C8C();
  return v2;
}

uint64_t sub_24B4B55D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  v16 = a1;
  v17 = a2;
  v12[0] = a3;
  v12[1] = a4;
  v12[2] = a7;
  v12[3] = a8;
  v13 = a9;
  v14 = a10;
  v15 = a11;
  type metadata accessor for NewAndFeaturedDataItem(255, v12);
  swift_getFunctionTypeMetadata1();
  return sub_24B516C7C();
}

uint64_t sub_24B4B5650(_OWORD *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v5[0] = a1[1];
  v5[1] = v1;
  v3 = a1[5];
  v5[2] = v2;
  v5[3] = v3;
  type metadata accessor for NewAndFeaturedDataItem(255, v5);
  swift_getFunctionTypeMetadata1();
  sub_24B516C9C();
  sub_24B516C8C();
  return *&v5[0];
}

uint64_t sub_24B4B56D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  sub_24B4C4F10(a1, v20);
  v17[0] = a2;
  v17[1] = a3;
  v17[2] = a6;
  v17[3] = a7;
  v17[4] = a8;
  v18 = a9;
  v19 = a10;
  v17[0] = type metadata accessor for NewAndFeaturedDataItem(255, v17);
  swift_getExtendedExistentialTypeMetadata();
  sub_24B516C7C();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void *sub_24B4B579C(_OWORD *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v6[0] = a1[1];
  v6[1] = v2;
  v4 = a1[5];
  v6[2] = v3;
  v6[3] = v4;
  *&v6[0] = type metadata accessor for NewAndFeaturedDataItem(255, v6);
  swift_getExtendedExistentialTypeMetadata();
  sub_24B516C9C();
  return sub_24B516C8C();
}

uint64_t NewAndFeaturedView.init<A>(store:itemResolver:artworkViewBuilder:contextMenuBuilder:sectionTitle:sectionSubtitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCE40, &unk_24B51DB50);
  swift_storeEnumTagMultiPayload();
  v22 = swift_allocObject();
  *(v22 + 16) = a11;
  *(v22 + 24) = a12;
  *(v22 + 32) = a13;
  *(v22 + 40) = a14;
  *(v22 + 48) = a15;
  *(v22 + 56) = a16;
  *(v22 + 64) = a17;
  *(v22 + 80) = a18;
  *(v22 + 96) = a19;
  *(v22 + 104) = a20;
  *(v22 + 112) = a21;
  *(v22 + 120) = a1;
  *(v22 + 128) = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  v47 = a11;
  v48 = a12;
  v49 = a16;
  v50 = a17;
  v51 = a18;
  *&v52 = AssociatedConformanceWitness;
  type metadata accessor for NewAndFeaturedFeature(255, &v47);
  swift_getWitnessTable();
  sub_24B5179EC();
  swift_getWitnessTable();
  v24 = sub_24B516F6C();
  v26 = v25;
  v28 = v27;
  v47 = a11;
  v48 = a12;
  v49 = a13;
  *&v50 = a14;
  *(&v50 + 1) = a16;
  v51 = a17;
  v52 = a18;
  v53 = AssociatedConformanceWitness;
  v54 = a19;
  v55 = a20;
  v29 = type metadata accessor for NewAndFeaturedView(0, &v47);
  v30 = &a9[v29[29]];
  *v30 = v24;
  *(v30 + 1) = v26;
  v30[16] = v28 & 1;
  *&v50 = a15;
  *(&v50 + 1) = a21;
  v31 = __swift_allocate_boxed_opaque_existential_1(&v47);
  v32 = *(a15 - 8);
  (*(v32 + 16))(v31, a3, a15);
  sub_24B4B56D4(&v47, a11, a12, v33, v34, a16, a17, *(&a17 + 1), a18, AssociatedConformanceWitness);

  v47 = a4;
  v48 = a5;
  swift_getFunctionTypeMetadata1();
  sub_24B516C7C();
  sub_24B4B55D8(a6, a7, a11, a12, v35, a14, a16, a17, __PAIR128__(a18, *(&a17 + 1)), *(&a18 + 1), AssociatedConformanceWitness);

  (*(v32 + 8))(a3, a15);
  v36 = v29[33];
  v37 = sub_24B516B8C();
  (*(*(v37 - 8) + 32))(&a9[v36], a8, v37);
  return sub_24B49AA90(a10, &a9[v29[34]], &qword_27EFFC4E8, &qword_24B51F380);
}

__n128 sub_24B4B5C84@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24B51701C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCE88, &qword_24B51DBA8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v21 - v13;
  *v14 = sub_24B51721C();
  *(v14 + 1) = 0x4014000000000000;
  v14[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCEA8, &qword_24B51DCD0);
  sub_24B4B5F28(v2, a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8], &v14[*(v15 + 44)], *(a1 + 9), *(a1 + 11), a1[13]);
  sub_24B4C343C(v11);
  (*(v6 + 104))(v9, *MEMORY[0x277CDF988], v5);
  sub_24B51700C();
  v16 = *(v6 + 8);
  v16(v9, v5);
  v16(v11, v5);
  sub_24B5178DC();
  sub_24B51707C();
  sub_24B49AA90(v14, a2, &qword_27EFFCE88, &qword_24B51DBA8);
  v17 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCE80, &qword_24B51DBA0) + 36);
  v18 = v21[5];
  *(v17 + 64) = v21[4];
  *(v17 + 80) = v18;
  *(v17 + 96) = v21[6];
  v19 = v21[1];
  *v17 = v21[0];
  *(v17 + 16) = v19;
  result = v21[3];
  *(v17 + 32) = v21[2];
  *(v17 + 48) = result;
  return result;
}

uint64_t sub_24B4B5F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12)
{
  v64 = a6;
  v60 = a5;
  v66 = a9;
  v59 = a11;
  v58 = a10;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
  MEMORY[0x28223BE20](v18 - 8);
  v61 = &v56 - v19;
  v20 = sub_24B516B8C();
  v21 = *(v20 - 8);
  v62 = v20;
  v63 = v21;
  MEMORY[0x28223BE20](v20);
  v56 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_24B51720C();
  v23 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCEB8, &qword_24B51DCE0);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v65 = &v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v56 - v29;
  v67 = a2;
  v68 = a3;
  v69 = a4;
  v70 = v60;
  v71 = v64;
  v72 = a7;
  v73 = a8;
  v74 = v58;
  v75 = v59;
  v76 = a12;
  v31 = type metadata accessor for NewAndFeaturedView(0, &v67);
  v32 = a1;
  v33 = sub_24B516B6C();
  v35 = v34;
  v67 = v33;
  v68 = v34;
  v37 = v36 & 1;
  LOBYTE(v69) = v36 & 1;
  v70 = v38;
  sub_24B5171FC();
  v64 = v30;
  v39 = v61;
  sub_24B5175EC();
  (*(v23 + 8))(v25, v57);
  v40 = v62;
  sub_24B49627C(v33, v35, v37);
  v41 = v63;

  sub_24B496724(v32 + *(v31 + 136), v39, &qword_27EFFC4E8, &qword_24B51F380);
  if ((*(v41 + 48))(v39, 1, v40) == 1)
  {
    sub_24B49689C(v39, &qword_27EFFC4E8, &qword_24B51F380);
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
  }

  else
  {
    v46 = v56;
    (*(v41 + 32))(v56, v39, v40);
    v42 = sub_24B516B6C();
    v43 = v47;
    v49 = v48;
    v45 = v50;
    (*(v41 + 8))(v46, v40);
    v44 = v49 & 1;
    sub_24B496398(v42, v43, v49 & 1);
  }

  v52 = v64;
  v51 = v65;
  sub_24B496724(v64, v65, &qword_27EFFCEB8, &qword_24B51DCE0);
  v53 = v66;
  sub_24B496724(v51, v66, &qword_27EFFCEB8, &qword_24B51DCE0);
  v54 = (v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCEC0, &qword_24B51DCE8) + 48));
  sub_24B4C4458(v42, v43, v44, v45);
  sub_24B4C449C(v42, v43, v44, v45);
  *v54 = v42;
  v54[1] = v43;
  v54[2] = v44;
  v54[3] = v45;
  sub_24B49689C(v52, &qword_27EFFCEB8, &qword_24B51DCE0);
  sub_24B4C449C(v42, v43, v44, v45);
  return sub_24B49689C(v51, &qword_27EFFCEB8, &qword_24B51DCE0);
}

uint64_t NewAndFeaturedView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v124 = a2;
  v3 = sub_24B517A7C();
  v122 = *(v3 - 8);
  v123 = v3;
  MEMORY[0x28223BE20](v3);
  v121 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC618, &qword_24B51DB60);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v120 = &v99 - v7;
  v118 = *(a1 - 8);
  v119 = *(v118 + 64);
  MEMORY[0x28223BE20](v6);
  v117 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE48, &qword_24B51DB68);
  v9 = *(a1 + 64);
  v115 = *(a1 + 72);
  v116 = v9;
  v10 = *(a1 + 80);
  v129 = *(a1 + 88);
  v130 = v10;
  v163 = v9;
  v164 = v115;
  v165 = v10;
  v166 = v129;
  v11 = *(a1 + 48);
  v127 = *(a1 + 16);
  v128 = v11;
  v12 = a1;
  v113 = a1;
  v162 = v11;
  v161 = v127;
  v13 = type metadata accessor for NewAndFeaturedDataItem(255, &v161);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE50, &qword_24B51DB70);
  v126 = *(v12 + 40);
  v14 = sub_24B51702C();
  v15 = sub_24B4C29D8();
  v114 = *(v12 + 104);
  v159 = v15;
  v160 = v114;
  v112 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  *&v161 = v14;
  *(&v161 + 1) = WitnessTable;
  v131 = MEMORY[0x277D7EDA0];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE58, &qword_24B51DB78);
  v17 = sub_24B51724C();
  v18 = swift_getWitnessTable();
  *&v161 = v14;
  *(&v161 + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = sub_24B4C2DC0(&qword_2810ED760, &qword_27EFFCE58, &qword_24B51DB78, MEMORY[0x277CE1550]);
  v157 = OpaqueTypeConformance2;
  v158 = v20;
  v125 = MEMORY[0x277CE0340];
  v21 = swift_getWitnessTable();
  *&v161 = v13;
  *(&v161 + 1) = v17;
  *&v162 = v18;
  *(&v162 + 1) = v21;
  v22 = sub_24B516DFC();
  v23 = sub_24B516E8C();
  v24 = swift_getWitnessTable();
  v25 = sub_24B4C4888(&qword_2810ED7C8, MEMORY[0x277D097D8], MEMORY[0x277D097D0]);
  *&v161 = v22;
  *(&v161 + 1) = v23;
  *&v162 = v24;
  *(&v162 + 1) = v25;
  swift_getOpaqueTypeMetadata2();
  v26 = sub_24B516EDC();
  v27 = sub_24B4C4888(&qword_2810ED7B8, MEMORY[0x277D097F8], MEMORY[0x277D097F0]);
  *&v161 = v22;
  *(&v161 + 1) = v26;
  *&v162 = v24;
  *(&v162 + 1) = v27;
  swift_getOpaqueTypeMetadata2();
  v28 = sub_24B51724C();
  *&v161 = v22;
  *(&v161 + 1) = v23;
  *&v162 = v24;
  *(&v162 + 1) = v25;
  v29 = swift_getOpaqueTypeConformance2();
  *&v161 = v22;
  *(&v161 + 1) = v26;
  *&v162 = v24;
  *(&v162 + 1) = v27;
  v30 = swift_getOpaqueTypeConformance2();
  v155 = v29;
  v156 = v30;
  v31 = swift_getWitnessTable();
  *&v161 = v28;
  *(&v161 + 1) = v31;
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE68, &qword_24B51DB88);
  sub_24B51724C();
  *&v161 = v28;
  *(&v161 + 1) = v31;
  v32 = swift_getOpaqueTypeConformance2();
  v153 = MEMORY[0x277CE1410];
  v154 = v32;
  v33 = swift_getWitnessTable();
  v34 = sub_24B4C2B48();
  v151 = v33;
  v152 = v34;
  v107 = swift_getWitnessTable();
  v35 = sub_24B51791C();
  v36 = swift_getWitnessTable();
  *&v161 = v35;
  *(&v161 + 1) = v36;
  swift_getOpaqueTypeMetadata2();
  *&v161 = v35;
  *(&v161 + 1) = v36;
  swift_getOpaqueTypeConformance2();
  v37 = sub_24B516F4C();
  v108 = MEMORY[0x277CDD6E0];
  v38 = swift_getWitnessTable();
  *&v161 = v37;
  *(&v161 + 1) = v38;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v40 = sub_24B51735C();
  *&v161 = v37;
  *(&v161 + 1) = v38;
  v41 = swift_getOpaqueTypeConformance2();
  *&v161 = OpaqueTypeMetadata2;
  *(&v161 + 1) = v40;
  *&v162 = v41;
  *(&v162 + 1) = MEMORY[0x277CDE478];
  v42 = MEMORY[0x277CDE478];
  v43 = swift_getOpaqueTypeMetadata2();
  *&v161 = OpaqueTypeMetadata2;
  *(&v161 + 1) = v40;
  *&v162 = v41;
  *(&v162 + 1) = v42;
  v44 = swift_getOpaqueTypeConformance2();
  *&v161 = v43;
  *(&v161 + 1) = v44;
  v45 = swift_getOpaqueTypeMetadata2();
  v110 = v45;
  *&v161 = v43;
  *(&v161 + 1) = v44;
  v109 = swift_getOpaqueTypeConformance2();
  *&v161 = v45;
  *(&v161 + 1) = v109;
  v105 = MEMORY[0x277CDEB58];
  v106 = swift_getOpaqueTypeMetadata2();
  v46 = sub_24B516F3C();
  v47 = swift_getWitnessTable();
  *&v161 = v46;
  *(&v161 + 1) = v47;
  v48 = swift_getOpaqueTypeMetadata2();
  *&v161 = v46;
  *(&v161 + 1) = v47;
  v49 = swift_getOpaqueTypeConformance2();
  *&v161 = v48;
  *(&v161 + 1) = v49;
  swift_getOpaqueTypeMetadata2();
  *&v161 = v48;
  *(&v161 + 1) = v49;
  swift_getOpaqueTypeConformance2();
  v50 = sub_24B516F4C();
  v51 = swift_getWitnessTable();
  *&v161 = v50;
  *(&v161 + 1) = v51;
  v52 = swift_getOpaqueTypeMetadata2();
  *&v161 = v50;
  *(&v161 + 1) = v51;
  v53 = swift_getOpaqueTypeConformance2();
  *&v161 = v52;
  *(&v161 + 1) = v40;
  *&v162 = v53;
  v54 = MEMORY[0x277CDE478];
  *(&v162 + 1) = MEMORY[0x277CDE478];
  v55 = swift_getOpaqueTypeMetadata2();
  *&v161 = v52;
  *(&v161 + 1) = v40;
  *&v162 = v53;
  *(&v162 + 1) = v54;
  v56 = swift_getOpaqueTypeConformance2();
  *&v161 = v55;
  *(&v161 + 1) = v56;
  v57 = swift_getOpaqueTypeMetadata2();
  *&v161 = v55;
  *(&v161 + 1) = v56;
  v58 = swift_getOpaqueTypeConformance2();
  *&v161 = v57;
  *(&v161 + 1) = v58;
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  sub_24B51786C();
  v59 = sub_24B4C2E64();
  *&v161 = v110;
  *(&v161 + 1) = v109;
  v60 = swift_getOpaqueTypeConformance2();
  *&v161 = v57;
  *(&v161 + 1) = v58;
  v61 = swift_getOpaqueTypeConformance2();
  v149 = v60;
  v150 = v61;
  v62 = swift_getWitnessTable();
  v146 = v59;
  v147 = v62;
  v148 = MEMORY[0x277CE1410];
  v106 = swift_getWitnessTable();
  v63 = sub_24B51780C();
  v110 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v101 = &v99 - v64;
  v104 = v63;
  v65 = sub_24B51702C();
  v108 = v65;
  v125 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v105 = &v99 - v66;
  v102 = swift_getWitnessTable();
  v144 = v102;
  v145 = MEMORY[0x277CE0790];
  v107 = swift_getWitnessTable();
  *&v161 = v65;
  *(&v161 + 1) = v107;
  v67 = swift_getOpaqueTypeMetadata2();
  v68 = *(v67 - 8);
  v111 = v67;
  v112 = v68;
  v69 = MEMORY[0x28223BE20](v67);
  v103 = &v99 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v69);
  v109 = &v99 - v71;
  sub_24B51721C();
  v133 = v127;
  v73 = v113;
  v72 = v114;
  v100 = *(v113 + 32);
  v134 = v100;
  v135 = v126;
  v136 = v128;
  v75 = v115;
  v74 = v116;
  v137 = v116;
  v138 = v115;
  v139 = v130;
  v140 = v129;
  v141 = *(v113 + 96);
  v76 = v141;
  v142 = v114;
  v77 = v132;
  v143 = v132;
  sub_24B5177FC();
  v78 = v117;
  v79 = v118;
  (*(v118 + 16))(v117, v77, v73);
  v80 = (*(v79 + 80) + 112) & ~*(v79 + 80);
  v81 = swift_allocObject();
  v82 = v128;
  *(v81 + 16) = v127;
  v83 = v126;
  *(v81 + 32) = v100;
  *(v81 + 40) = v83;
  *(v81 + 48) = v82;
  *(v81 + 64) = v74;
  *(v81 + 72) = v75;
  v84 = v129;
  *(v81 + 80) = v130;
  *(v81 + 88) = v84;
  *(v81 + 96) = v76;
  *(v81 + 104) = v72;
  v85 = v73;
  (*(v79 + 32))(v81 + v80, v78, v73);
  v86 = v104;
  v87 = v105;
  v88 = v101;
  sub_24B51766C();

  (*(v110 + 8))(v88, v86);
  v89 = v120;
  sub_24B4B98C8(v85, v120);
  v90 = sub_24B517A4C();
  (*(*(v90 - 8) + 56))(v89, 0, 1, v90);
  v91 = v121;
  sub_24B517A5C();
  v92 = v103;
  v94 = v107;
  v93 = v108;
  sub_24B5174DC();
  (*(v122 + 8))(v91, v123);
  sub_24B49689C(v89, &qword_27EFFC618, &qword_24B51DB60);
  (*(v125 + 8))(v87, v93);
  *&v161 = v93;
  *(&v161 + 1) = v94;
  swift_getOpaqueTypeConformance2();
  v95 = v109;
  v96 = v111;
  sub_24B49711C();
  v97 = *(v112 + 8);
  v97(v92, v96);
  sub_24B49711C();
  return (v97)(v95, v96);
}

uint64_t sub_24B4B7234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v82 = a7;
  v83 = a8;
  v81 = a6;
  v75 = a5;
  v76 = a2;
  v84 = a4;
  v77 = a3;
  v86 = a1;
  v87 = a9;
  v89 = a14;
  v85 = a13;
  v80 = a12;
  v79 = a11;
  v78 = a10;
  v90 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE48, &qword_24B51DB68);
  v93 = a2;
  v94 = a3;
  v95 = a6;
  v96 = a7;
  v97 = a8;
  v98 = a10;
  v99 = a11;
  v100 = a12;
  v19 = type metadata accessor for NewAndFeaturedDataItem(255, &v93);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE50, &qword_24B51DB70);
  v20 = sub_24B51702C();
  v92[29] = sub_24B4C29D8();
  v92[30] = a14;
  WitnessTable = swift_getWitnessTable();
  v93 = v20;
  v94 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE58, &qword_24B51DB78);
  v22 = sub_24B51724C();
  v23 = swift_getWitnessTable();
  v93 = v20;
  v94 = WitnessTable;
  v92[27] = swift_getOpaqueTypeConformance2();
  v92[28] = sub_24B4C2DC0(&qword_2810ED760, &qword_27EFFCE58, &qword_24B51DB78, MEMORY[0x277CE1550]);
  v88 = MEMORY[0x277CE0340];
  v24 = swift_getWitnessTable();
  v93 = v19;
  v94 = v22;
  v95 = v23;
  v96 = v24;
  v25 = sub_24B516DFC();
  v26 = sub_24B516E8C();
  v27 = swift_getWitnessTable();
  v28 = sub_24B4C4888(&qword_2810ED7C8, MEMORY[0x277D097D8], MEMORY[0x277D097D0]);
  v93 = v25;
  v94 = v26;
  v95 = v27;
  v96 = v28;
  swift_getOpaqueTypeMetadata2();
  v29 = sub_24B516EDC();
  v30 = sub_24B4C4888(&qword_2810ED7B8, MEMORY[0x277D097F8], MEMORY[0x277D097F0]);
  v93 = v25;
  v94 = v29;
  v95 = v27;
  v96 = v30;
  swift_getOpaqueTypeMetadata2();
  v31 = sub_24B51724C();
  v93 = v25;
  v94 = v26;
  v95 = v27;
  v96 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v93 = v25;
  v94 = v29;
  v95 = v27;
  v96 = v30;
  v92[25] = OpaqueTypeConformance2;
  v92[26] = swift_getOpaqueTypeConformance2();
  v33 = swift_getWitnessTable();
  v93 = v31;
  v94 = v33;
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE68, &qword_24B51DB88);
  sub_24B51724C();
  v93 = v31;
  v94 = v33;
  v34 = swift_getOpaqueTypeConformance2();
  v92[23] = MEMORY[0x277CE1410];
  v92[24] = v34;
  v92[21] = swift_getWitnessTable();
  v92[22] = sub_24B4C2B48();
  v71[2] = swift_getWitnessTable();
  v35 = sub_24B51791C();
  v36 = swift_getWitnessTable();
  v93 = v35;
  v94 = v36;
  swift_getOpaqueTypeMetadata2();
  v93 = v35;
  v94 = v36;
  swift_getOpaqueTypeConformance2();
  v37 = sub_24B516F4C();
  v38 = swift_getWitnessTable();
  v93 = v37;
  v94 = v38;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v40 = sub_24B51735C();
  v93 = v37;
  v94 = v38;
  v41 = swift_getOpaqueTypeConformance2();
  v93 = OpaqueTypeMetadata2;
  v94 = v40;
  v95 = v41;
  v96 = MEMORY[0x277CDE478];
  v42 = MEMORY[0x277CDE478];
  v43 = swift_getOpaqueTypeMetadata2();
  v93 = OpaqueTypeMetadata2;
  v94 = v40;
  v95 = v41;
  v96 = v42;
  v44 = swift_getOpaqueTypeConformance2();
  v93 = v43;
  v94 = v44;
  v74 = swift_getOpaqueTypeMetadata2();
  v93 = v43;
  v94 = v44;
  v73 = swift_getOpaqueTypeConformance2();
  v93 = v74;
  v94 = v73;
  v71[0] = MEMORY[0x277CDEB58];
  v71[1] = swift_getOpaqueTypeMetadata2();
  v45 = sub_24B516F3C();
  v46 = swift_getWitnessTable();
  v93 = v45;
  v94 = v46;
  v47 = swift_getOpaqueTypeMetadata2();
  v93 = v45;
  v94 = v46;
  v48 = swift_getOpaqueTypeConformance2();
  v93 = v47;
  v94 = v48;
  swift_getOpaqueTypeMetadata2();
  v93 = v47;
  v94 = v48;
  swift_getOpaqueTypeConformance2();
  v49 = sub_24B516F4C();
  v50 = swift_getWitnessTable();
  v93 = v49;
  v94 = v50;
  v51 = swift_getOpaqueTypeMetadata2();
  v93 = v49;
  v94 = v50;
  v52 = swift_getOpaqueTypeConformance2();
  v93 = v51;
  v94 = v40;
  v95 = v52;
  v53 = MEMORY[0x277CDE478];
  v96 = MEMORY[0x277CDE478];
  v54 = swift_getOpaqueTypeMetadata2();
  v93 = v51;
  v94 = v40;
  v95 = v52;
  v96 = v53;
  v55 = swift_getOpaqueTypeConformance2();
  v93 = v54;
  v94 = v55;
  v72 = swift_getOpaqueTypeMetadata2();
  v93 = v54;
  v94 = v55;
  v56 = swift_getOpaqueTypeConformance2();
  v93 = v72;
  v94 = v56;
  swift_getOpaqueTypeMetadata2();
  v57 = sub_24B51724C();
  v58 = sub_24B51786C();
  v59 = *(v58 - 8);
  v60 = MEMORY[0x28223BE20](v58);
  v62 = v71 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v64 = v71 - v63;
  v92[2] = v76;
  v92[3] = v77;
  v92[4] = v84;
  v92[5] = v75;
  v92[6] = v81;
  v92[7] = v82;
  v92[8] = v83;
  v92[9] = v78;
  v92[10] = v79;
  v92[11] = v80;
  v92[12] = v85;
  v92[13] = v89;
  v92[14] = v86;
  v91[2] = v76;
  v91[3] = v77;
  v91[4] = v84;
  v91[5] = v75;
  v91[6] = v81;
  v91[7] = v82;
  v91[8] = v83;
  v91[9] = v78;
  v91[10] = v79;
  v91[11] = v80;
  v91[12] = v85;
  v91[13] = v89;
  v91[14] = v86;
  v65 = sub_24B4C2E64();
  v93 = v74;
  v94 = v73;
  v66 = swift_getOpaqueTypeConformance2();
  v93 = v72;
  v94 = v56;
  v67 = swift_getOpaqueTypeConformance2();
  v92[19] = v66;
  v92[20] = v67;
  v68 = swift_getWitnessTable();
  sub_24B4B9638(sub_24B4C4424, v92, sub_24B4C443C, v91, v90, v57, v65, v68);
  v92[16] = v65;
  v92[17] = v68;
  v92[18] = MEMORY[0x277CE1410];
  swift_getWitnessTable();
  sub_24B49711C();
  v69 = *(v59 + 8);
  v69(v62, v58);
  sub_24B49711C();
  return (v69)(v64, v58);
}

uint64_t sub_24B4B7C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v84 = a8;
  v83 = a7;
  v82 = a6;
  v76 = a5;
  v85 = a4;
  v78 = a3;
  v77 = a2;
  v87 = a1;
  v88 = a9;
  v75 = a14;
  v86 = a13;
  v81 = a12;
  v80 = a11;
  v79 = a10;
  v91 = a2;
  v92 = a3;
  v93 = a6;
  v94 = a7;
  v95 = a8;
  v96 = a10;
  v97 = a11;
  v98 = a12;
  v14 = type metadata accessor for NewAndFeaturedDataItem(255, &v91);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE50, &qword_24B51DB70);
  v15 = sub_24B51702C();
  v111 = sub_24B4C29D8();
  v112 = a14;
  WitnessTable = swift_getWitnessTable();
  v91 = v15;
  v92 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE58, &qword_24B51DB78);
  v17 = sub_24B51724C();
  v18 = swift_getWitnessTable();
  v91 = v15;
  v92 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = sub_24B4C2DC0(&qword_2810ED760, &qword_27EFFCE58, &qword_24B51DB78, MEMORY[0x277CE1550]);
  v109 = OpaqueTypeConformance2;
  v110 = v20;
  v21 = MEMORY[0x277CE0340];
  v22 = swift_getWitnessTable();
  v91 = v14;
  v92 = v17;
  v93 = v18;
  v94 = v22;
  v23 = sub_24B516DFC();
  v24 = sub_24B516E8C();
  v25 = swift_getWitnessTable();
  v26 = sub_24B4C4888(&qword_2810ED7C8, MEMORY[0x277D097D8], MEMORY[0x277D097D0]);
  v91 = v23;
  v92 = v24;
  v93 = v25;
  v94 = v26;
  swift_getOpaqueTypeMetadata2();
  v27 = sub_24B516EDC();
  v28 = sub_24B4C4888(&qword_2810ED7B8, MEMORY[0x277D097F8], MEMORY[0x277D097F0]);
  v91 = v23;
  v92 = v27;
  v93 = v25;
  v94 = v28;
  swift_getOpaqueTypeMetadata2();
  v29 = sub_24B51724C();
  v91 = v23;
  v92 = v24;
  v93 = v25;
  v94 = v26;
  v30 = swift_getOpaqueTypeConformance2();
  v91 = v23;
  v92 = v27;
  v93 = v25;
  v94 = v28;
  v31 = swift_getOpaqueTypeConformance2();
  v107 = v30;
  v108 = v31;
  v32 = swift_getWitnessTable();
  v91 = v29;
  v92 = v32;
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE68, &qword_24B51DB88);
  sub_24B51724C();
  v91 = v29;
  v92 = v32;
  v33 = swift_getOpaqueTypeConformance2();
  v105 = MEMORY[0x277CE1410];
  v106 = v33;
  v74 = v21;
  v34 = swift_getWitnessTable();
  v35 = sub_24B4C2B48();
  v103 = v34;
  v104 = v35;
  swift_getWitnessTable();
  v36 = sub_24B51791C();
  v37 = swift_getWitnessTable();
  v91 = v36;
  v92 = v37;
  swift_getOpaqueTypeMetadata2();
  v91 = v36;
  v92 = v37;
  swift_getOpaqueTypeConformance2();
  v38 = sub_24B516F4C();
  v71[1] = MEMORY[0x277CDD6E0];
  v39 = swift_getWitnessTable();
  v91 = v38;
  v92 = v39;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v41 = sub_24B51735C();
  v91 = v38;
  v92 = v39;
  v42 = swift_getOpaqueTypeConformance2();
  v91 = OpaqueTypeMetadata2;
  v92 = v41;
  v93 = v42;
  v94 = MEMORY[0x277CDE478];
  v43 = MEMORY[0x277CDE478];
  v44 = swift_getOpaqueTypeMetadata2();
  v91 = OpaqueTypeMetadata2;
  v92 = v41;
  v93 = v42;
  v94 = v43;
  v45 = swift_getOpaqueTypeConformance2();
  v91 = v44;
  v92 = v45;
  v73 = swift_getOpaqueTypeMetadata2();
  v91 = v44;
  v92 = v45;
  v72 = swift_getOpaqueTypeConformance2();
  v91 = v73;
  v92 = v72;
  v71[0] = swift_getOpaqueTypeMetadata2();
  v46 = sub_24B516F3C();
  v47 = swift_getWitnessTable();
  v91 = v46;
  v92 = v47;
  v48 = swift_getOpaqueTypeMetadata2();
  v91 = v46;
  v92 = v47;
  v49 = swift_getOpaqueTypeConformance2();
  v91 = v48;
  v92 = v49;
  swift_getOpaqueTypeMetadata2();
  v91 = v48;
  v92 = v49;
  swift_getOpaqueTypeConformance2();
  v50 = sub_24B516F4C();
  v51 = swift_getWitnessTable();
  v91 = v50;
  v92 = v51;
  v52 = swift_getOpaqueTypeMetadata2();
  v91 = v50;
  v92 = v51;
  v53 = swift_getOpaqueTypeConformance2();
  v91 = v52;
  v92 = v41;
  v93 = v53;
  v54 = MEMORY[0x277CDE478];
  v94 = MEMORY[0x277CDE478];
  v55 = swift_getOpaqueTypeMetadata2();
  v91 = v52;
  v92 = v41;
  v93 = v53;
  v94 = v54;
  v56 = swift_getOpaqueTypeConformance2();
  v91 = v55;
  v92 = v56;
  v57 = swift_getOpaqueTypeMetadata2();
  v91 = v55;
  v92 = v56;
  v58 = swift_getOpaqueTypeConformance2();
  v91 = v57;
  v92 = v58;
  swift_getOpaqueTypeMetadata2();
  v59 = sub_24B51724C();
  v60 = *(v59 - 8);
  v61 = MEMORY[0x28223BE20](v59);
  v63 = v71 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v65 = v71 - v64;
  v91 = v77;
  v92 = v78;
  v93 = v85;
  v94 = v76;
  v95 = v82;
  v96 = v83;
  v97 = v84;
  v98 = v79;
  v99 = v80;
  v100 = v81;
  v101 = v86;
  v102 = v75;
  v66 = type metadata accessor for NewAndFeaturedView(0, &v91);
  sub_24B4B8734(v66, v63);
  v91 = v73;
  v92 = v72;
  v67 = swift_getOpaqueTypeConformance2();
  v91 = v57;
  v92 = v58;
  v68 = swift_getOpaqueTypeConformance2();
  v89 = v67;
  v90 = v68;
  swift_getWitnessTable();
  sub_24B49711C();
  v69 = *(v60 + 8);
  v69(v63, v59);
  sub_24B49711C();
  return (v69)(v65, v59);
}

uint64_t sub_24B4B8734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a1;
  v93 = a2;
  v2 = *(a1 + 64);
  v91 = *(a1 + 72);
  v92 = v2;
  v3 = *(a1 + 80);
  v89 = *(a1 + 88);
  v90 = v3;
  v124 = v2;
  v125 = v91;
  v126 = v3;
  v127 = v89;
  v4 = *(a1 + 48);
  v87 = *(a1 + 16);
  v88 = v4;
  v123 = v4;
  v122 = v87;
  v6 = type metadata accessor for NewAndFeaturedDataItem(255, &v122);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE50, &qword_24B51DB70);
  v86 = *(a1 + 40);
  v7 = sub_24B51702C();
  v8 = sub_24B4C29D8();
  v85 = *(a1 + 104);
  v120 = v8;
  v121 = v85;
  WitnessTable = swift_getWitnessTable();
  *&v122 = v7;
  *(&v122 + 1) = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE58, &qword_24B51DB78);
  v10 = sub_24B51724C();
  v11 = swift_getWitnessTable();
  *&v122 = v7;
  *(&v122 + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v119 = sub_24B4C2DC0(&qword_2810ED760, &qword_27EFFCE58, &qword_24B51DB78, MEMORY[0x277CE1550]);
  v12 = swift_getWitnessTable();
  *&v122 = v6;
  *(&v122 + 1) = v10;
  *&v123 = v11;
  *(&v123 + 1) = v12;
  v13 = sub_24B516DFC();
  v14 = sub_24B516E8C();
  v15 = swift_getWitnessTable();
  v16 = sub_24B4C4888(&qword_2810ED7C8, MEMORY[0x277D097D8], MEMORY[0x277D097D0]);
  *&v122 = v13;
  *(&v122 + 1) = v14;
  *&v123 = v15;
  *(&v123 + 1) = v16;
  swift_getOpaqueTypeMetadata2();
  v17 = sub_24B516EDC();
  v18 = sub_24B4C4888(&qword_2810ED7B8, MEMORY[0x277D097F8], MEMORY[0x277D097F0]);
  *&v122 = v13;
  *(&v122 + 1) = v17;
  *&v123 = v15;
  *(&v123 + 1) = v18;
  swift_getOpaqueTypeMetadata2();
  v19 = sub_24B51724C();
  *&v122 = v13;
  *(&v122 + 1) = v14;
  *&v123 = v15;
  *(&v123 + 1) = v16;
  v20 = swift_getOpaqueTypeConformance2();
  *&v122 = v13;
  *(&v122 + 1) = v17;
  *&v123 = v15;
  *(&v123 + 1) = v18;
  v116 = v20;
  v117 = swift_getOpaqueTypeConformance2();
  v21 = swift_getWitnessTable();
  *&v122 = v19;
  *(&v122 + 1) = v21;
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE68, &qword_24B51DB88);
  sub_24B51724C();
  *&v122 = v19;
  *(&v122 + 1) = v21;
  v22 = swift_getOpaqueTypeConformance2();
  v114 = MEMORY[0x277CE1410];
  v115 = v22;
  v112 = swift_getWitnessTable();
  v113 = sub_24B4C2B48();
  v94 = swift_getWitnessTable();
  v23 = sub_24B516F3C();
  v24 = swift_getWitnessTable();
  *&v122 = v23;
  *(&v122 + 1) = v24;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v122 = v23;
  *(&v122 + 1) = v24;
  v26 = swift_getOpaqueTypeConformance2();
  *&v122 = OpaqueTypeMetadata2;
  *(&v122 + 1) = v26;
  swift_getOpaqueTypeMetadata2();
  *&v122 = OpaqueTypeMetadata2;
  *(&v122 + 1) = v26;
  swift_getOpaqueTypeConformance2();
  v27 = sub_24B516F4C();
  v95 = MEMORY[0x277CDD6E0];
  v28 = swift_getWitnessTable();
  *&v122 = v27;
  *(&v122 + 1) = v28;
  v29 = swift_getOpaqueTypeMetadata2();
  v30 = sub_24B51735C();
  *&v122 = v27;
  *(&v122 + 1) = v28;
  v31 = swift_getOpaqueTypeConformance2();
  *&v122 = v29;
  *(&v122 + 1) = v30;
  v82 = v30;
  v32 = MEMORY[0x277CDE478];
  *&v123 = v31;
  *(&v123 + 1) = MEMORY[0x277CDE478];
  v33 = swift_getOpaqueTypeMetadata2();
  *&v122 = v29;
  *(&v122 + 1) = v30;
  *&v123 = v31;
  *(&v123 + 1) = v32;
  v34 = swift_getOpaqueTypeConformance2();
  *&v122 = v33;
  *(&v122 + 1) = v34;
  v35 = swift_getOpaqueTypeMetadata2();
  *&v122 = v33;
  *(&v122 + 1) = v34;
  v36 = swift_getOpaqueTypeConformance2();
  v83 = v35;
  *&v122 = v35;
  *(&v122 + 1) = v36;
  v97 = v36;
  v96 = swift_getOpaqueTypeMetadata2();
  v80 = *(v96 - 8);
  v37 = MEMORY[0x28223BE20](v96);
  v79 = &v78 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v78 = &v78 - v39;
  v40 = sub_24B51791C();
  v41 = swift_getWitnessTable();
  *&v122 = v40;
  *(&v122 + 1) = v41;
  swift_getOpaqueTypeMetadata2();
  *&v122 = v40;
  *(&v122 + 1) = v41;
  swift_getOpaqueTypeConformance2();
  v42 = sub_24B516F4C();
  v43 = swift_getWitnessTable();
  *&v122 = v42;
  *(&v122 + 1) = v43;
  v44 = swift_getOpaqueTypeMetadata2();
  *&v122 = v42;
  *(&v122 + 1) = v43;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v82;
  *&v122 = v44;
  *(&v122 + 1) = v82;
  *&v123 = v45;
  v47 = MEMORY[0x277CDE478];
  *(&v123 + 1) = MEMORY[0x277CDE478];
  v48 = swift_getOpaqueTypeMetadata2();
  *&v122 = v44;
  *(&v122 + 1) = v46;
  *&v123 = v45;
  *(&v123 + 1) = v47;
  v49 = swift_getOpaqueTypeConformance2();
  *&v122 = v48;
  *(&v122 + 1) = v49;
  v50 = swift_getOpaqueTypeMetadata2();
  *&v122 = v48;
  *(&v122 + 1) = v49;
  v51 = swift_getOpaqueTypeConformance2();
  *&v122 = v50;
  *(&v122 + 1) = v51;
  v95 = v51;
  v52 = swift_getOpaqueTypeMetadata2();
  v53 = *(v52 - 8);
  v54 = MEMORY[0x28223BE20](v52);
  v56 = &v78 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v58 = &v78 - v57;
  v59 = sub_24B51724C();
  v81 = *(v59 - 8);
  v82 = v59;
  MEMORY[0x28223BE20](v59);
  v94 = &v78 - v60;
  v61 = v84;
  sub_24B4B54BC(v84);
  v98 = v87;
  v99 = *(v61 + 4);
  v100 = v86;
  v101 = v88;
  v102 = v92;
  v103 = v91;
  v104 = v90;
  v105 = v89;
  v106 = *(v61 + 12);
  v107 = v85;
  swift_getKeyPath();
  sub_24B5179CC();

  if (v111)
  {
    v62 = v79;
    sub_24B4BA3E4(v61, v79);
    v63 = v83;
    *&v122 = v83;
    *(&v122 + 1) = v97;
    v64 = swift_getOpaqueTypeConformance2();
    v92 = v50;
    v65 = v78;
    v66 = v96;
    sub_24B49711C();
    v67 = *(v80 + 8);
    v67(v62, v66);
    sub_24B49711C();
    *&v122 = v92;
    *(&v122 + 1) = v95;
    v68 = swift_getOpaqueTypeConformance2();
    sub_24B48D23C(v62, v52, v66, v68, v64);
    v67(v62, v66);
    v69 = v65;
    v50 = v92;
    v67(v69, v66);
  }

  else
  {
    sub_24B4B9F54(v110, v61, v56);
    *&v122 = v50;
    *(&v122 + 1) = v95;
    v70 = swift_getOpaqueTypeConformance2();
    sub_24B49711C();
    v71 = *(v53 + 8);
    v71(v56, v52);
    sub_24B49711C();
    v63 = v83;
    *&v122 = v83;
    *(&v122 + 1) = v97;
    v72 = swift_getOpaqueTypeConformance2();
    sub_24B48D144(v56, v52, v96, v70, v72);
    v71(v56, v52);
    v71(v58, v52);
  }

  *&v122 = v50;
  *(&v122 + 1) = v95;
  v73 = swift_getOpaqueTypeConformance2();
  *&v122 = v63;
  *(&v122 + 1) = v97;
  v74 = swift_getOpaqueTypeConformance2();
  v108 = v73;
  v109 = v74;
  v75 = v82;
  swift_getWitnessTable();
  v76 = v94;
  sub_24B49711C();
  return (*(v81 + 8))(v76, v75);
}

uint64_t sub_24B4B9370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v44 = a8;
  v38 = a4;
  v37 = a3;
  v35 = a2;
  v41 = a1;
  v45 = a9;
  v40 = a14;
  v39 = a13;
  v36 = a11;
  v43 = sub_24B516E2C();
  v42 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58[0] = a2;
  v58[1] = a3;
  v58[2] = a4;
  v58[3] = a5;
  v58[4] = a6;
  v58[5] = a7;
  v58[6] = v44;
  v58[7] = a10;
  v58[8] = a11;
  v58[9] = a12;
  v58[10] = a13;
  v58[11] = a14;
  v22 = type metadata accessor for NewAndFeaturedView(0, v58);
  sub_24B4B5C84(v22, v45);
  sub_24B4B54BC(v22);
  v46 = v35;
  v47 = v37;
  v48 = v38;
  v49 = a5;
  v50 = a6;
  v51 = a7;
  v52 = v44;
  v53 = a10;
  v54 = v36;
  v55 = a12;
  v56 = a13;
  v57 = a14;
  swift_getKeyPath();
  sub_24B5179CC();

  sub_24B516E0C();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  (*(v42 + 8))(v21, v43);
  v31 = sub_24B5173BC();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCE48, &qword_24B51DB68);
  v33 = v45 + *(result + 36);
  *v33 = v31;
  *(v33 + 8) = v24;
  *(v33 + 16) = v26;
  *(v33 + 24) = v28;
  *(v33 + 32) = v30;
  *(v33 + 40) = 0;
  return result;
}

uint64_t sub_24B4B9638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1);
  v9(v8);
  return sub_24B51784C();
}

uint64_t sub_24B4B9708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v26 = a7;
  v27 = a8;
  v28 = a1;
  v24 = a6;
  v25 = a13;
  v30 = a3;
  v31 = a9;
  v32 = a10;
  v33 = a11;
  v29 = type metadata accessor for NewAndFeaturedAction(0, &v30);
  v17 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v19 = &v23 - v18;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v34 = v24;
  v35 = v26;
  v36 = v27;
  v37 = a9;
  v38 = a10;
  v39 = a11;
  v40 = a12;
  v41 = a13;
  v20 = type metadata accessor for NewAndFeaturedView(0, &v30);
  sub_24B4B54BC(v20);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCEA0, &unk_24B5203F0);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  (*(*(TupleTypeMetadata3 - 8) + 56))(v19, 1, 1, TupleTypeMetadata3);
  sub_24B5179DC();

  return (*(v17 + 8))(v19, v29);
}

uint64_t sub_24B4B98C8@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v22[3] = a2;
  v3 = sub_24B517A0C();
  MEMORY[0x28223BE20](v3 - 8);
  v22[2] = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24B517A2C();
  MEMORY[0x28223BE20](v5 - 8);
  v22[1] = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC620, &qword_24B51A9C0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24B51A9B0;
  *(v7 + 32) = 1701667182;
  *(v7 + 40) = 0xE400000000000000;
  sub_24B4B54BC(a1);
  swift_getKeyPath();
  sub_24B5179BC();

  v49[2] = v59;
  v49[3] = v60;
  v49[4] = v61;
  v49[0] = v57;
  v49[1] = v58;
  v9 = *(&v58 + 1);
  v8 = v59;

  sub_24B488FA8(v49);
  v10 = MEMORY[0x277D837D0];
  *(v7 + 48) = v9;
  *(v7 + 56) = v8;
  *(v7 + 72) = v10;
  strcpy((v7 + 80), "impressionType");
  *(v7 + 95) = -18;
  sub_24B4B54BC(a1);
  swift_getKeyPath();
  sub_24B5179BC();

  v50[2] = v46;
  v50[3] = v47;
  v50[4] = v48;
  v50[0] = v44;
  v50[1] = v45;
  v11 = *(&v46 + 1);
  v12 = v47;
  *(v7 + 120) = v10;

  sub_24B488FA8(v50);
  *(v7 + 96) = v11;
  *(v7 + 104) = v12;
  *(v7 + 128) = 0x6973736572706D69;
  *(v7 + 136) = 0xEF7865646E496E6FLL;
  sub_24B4B54BC(a1);
  swift_getKeyPath();
  sub_24B5179BC();

  v53 = v41;
  v54 = v42;
  v55 = v43;
  v51 = v39;
  v52 = v40;
  sub_24B488FA8(&v51);
  v13 = MEMORY[0x277D83B88];
  *(v7 + 144) = v52;
  *(v7 + 168) = v13;
  *(v7 + 176) = 0x657079546469;
  *(v7 + 184) = 0xE600000000000000;
  sub_24B4B54BC(a1);
  swift_getKeyPath();
  sub_24B5179BC();

  v56[3] = v37;
  v56[4] = v38;
  v56[1] = v35;
  v56[2] = v36;
  v56[0] = v34;
  v15 = *(&v37 + 1);
  v14 = v38;
  *(v7 + 216) = v10;

  sub_24B488FA8(v56);
  *(v7 + 192) = v15;
  *(v7 + 200) = v14;
  v16 = sub_24B4A06C8(v7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC628, &unk_24B51DC90);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_24B4B54BC(a1);
  swift_getKeyPath();
  sub_24B5179BC();

  v60 = v47;
  v61 = v48;
  v58 = v45;
  v59 = v46;
  v57 = v44;
  v17 = *(&v48 + 1);

  sub_24B488FA8(&v57);
  v18 = sub_24B4A02F4(v17);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = v16;
  sub_24B4A07D8(v18, sub_24B4A067C, 0, isUniquelyReferenced_nonNull_native, &v33);

  sub_24B4B54BC(a1);
  swift_getKeyPath();
  sub_24B5179BC();

  v34 = v28;
  v35 = v29;
  v36 = v30;
  v37 = v31;
  v38 = v32;

  sub_24B488FA8(&v34);
  sub_24B4B54BC(a1);
  swift_getKeyPath();
  sub_24B5179BC();

  v41 = v25;
  v42 = v26;
  v43 = v27;
  v39 = v23;
  v40 = v24;
  sub_24B488FA8(&v39);
  sub_24B517A1C();
  sub_24B5179FC();
  v20 = MEMORY[0x277D84F90];
  sub_24B4A06C8(MEMORY[0x277D84F90]);
  sub_24B4A06C8(v20);
  return sub_24B517A3C();
}

double sub_24B4B9E24(_OWORD *a1)
{
  v2 = sub_24B516D4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B4B54BC(a1);
  v6 = a1[2];
  v12[0] = a1[1];
  v12[1] = v6;
  v7 = a1[4];
  v12[2] = a1[3];
  v12[3] = v7;
  v8 = a1[6];
  v12[4] = a1[5];
  v12[5] = v8;
  swift_getKeyPath();
  sub_24B5179CC();

  sub_24B516D3C();
  v10 = v9;
  (*(v3 + 8))(v5, v2);
  return v10;
}

uint64_t sub_24B4B9F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = *(a2 + 16);
  v30 = *(a2 + 24);
  v4 = *(a2 + 48);
  v31 = *(a2 + 40);
  v32 = v4;
  v5 = *(a2 + 64);
  v33 = *(a2 + 56);
  v34 = v5;
  v6 = *(a2 + 80);
  v35 = *(a2 + 72);
  v36 = v6;
  v37 = *(a2 + 88);
  v7 = *(a2 + 104);
  v38 = a1;
  v49 = v29;
  v50 = v30;
  v51 = v4;
  v52 = v33;
  v53 = v5;
  v54 = v35;
  v55 = v6;
  v56 = v37;
  v8 = type metadata accessor for NewAndFeaturedDataItem(255, &v49);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE50, &qword_24B51DB70);
  v9 = sub_24B51702C();
  v47 = sub_24B4C29D8();
  v48 = v7;
  WitnessTable = swift_getWitnessTable();
  v49 = v9;
  v50 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE58, &qword_24B51DB78);
  v11 = sub_24B51724C();
  v12 = swift_getWitnessTable();
  v49 = v9;
  v50 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = sub_24B4C2DC0(&qword_2810ED760, &qword_27EFFCE58, &qword_24B51DB78, MEMORY[0x277CE1550]);
  v13 = swift_getWitnessTable();
  v49 = v8;
  v50 = v11;
  v51 = v12;
  v52 = v13;
  v14 = sub_24B516DFC();
  v26 = sub_24B516E8C();
  v15 = swift_getWitnessTable();
  v16 = sub_24B4C4888(&qword_2810ED7C8, MEMORY[0x277D097D8], MEMORY[0x277D097D0]);
  v49 = v14;
  v50 = v26;
  v51 = v15;
  v52 = v16;
  swift_getOpaqueTypeMetadata2();
  v17 = sub_24B516EDC();
  v18 = sub_24B4C4888(&qword_2810ED7B8, MEMORY[0x277D097F8], MEMORY[0x277D097F0]);
  v49 = v14;
  v50 = v17;
  v51 = v15;
  v52 = v18;
  swift_getOpaqueTypeMetadata2();
  v19 = sub_24B51724C();
  v49 = v14;
  v50 = v26;
  v51 = v15;
  v52 = v16;
  v20 = swift_getOpaqueTypeConformance2();
  v49 = v14;
  v50 = v17;
  v51 = v15;
  v52 = v18;
  v43 = v20;
  v44 = swift_getOpaqueTypeConformance2();
  v21 = swift_getWitnessTable();
  v49 = v19;
  v50 = v21;
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE68, &qword_24B51DB88);
  sub_24B51724C();
  v49 = v19;
  v50 = v21;
  v22 = swift_getOpaqueTypeConformance2();
  v41 = MEMORY[0x277CE1410];
  v42 = v22;
  v39 = swift_getWitnessTable();
  v40 = sub_24B4C2B48();
  swift_getWitnessTable();
  v23 = sub_24B51791C();
  v24 = swift_getWitnessTable();
  return sub_24B4BBEB0(sub_24B4C44E0, v28, a2, v23, v24, a3);
}

uint64_t sub_24B4BA3E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = *(a1 + 16);
  v31 = *(a1 + 24);
  v2 = *(a1 + 48);
  v32 = *(a1 + 40);
  v33 = v2;
  v3 = *(a1 + 64);
  v34 = *(a1 + 56);
  v35 = v3;
  v4 = *(a1 + 80);
  v36 = *(a1 + 72);
  v37 = v4;
  v38 = *(a1 + 88);
  v5 = *(a1 + 104);
  v49 = v30;
  v50 = v31;
  v51 = v2;
  v52 = v34;
  v53 = v3;
  v54 = v36;
  v55 = v4;
  v56 = v38;
  v6 = type metadata accessor for NewAndFeaturedDataItem(255, &v49);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE50, &qword_24B51DB70);
  v7 = sub_24B51702C();
  v47 = sub_24B4C29D8();
  v48 = v5;
  WitnessTable = swift_getWitnessTable();
  v49 = v7;
  v50 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE58, &qword_24B51DB78);
  v9 = sub_24B51724C();
  v10 = swift_getWitnessTable();
  v49 = v7;
  v50 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = sub_24B4C2DC0(&qword_2810ED760, &qword_27EFFCE58, &qword_24B51DB78, MEMORY[0x277CE1550]);
  v11 = swift_getWitnessTable();
  v49 = v6;
  v50 = v9;
  v51 = v10;
  v52 = v11;
  v12 = sub_24B516DFC();
  v13 = sub_24B516E8C();
  v14 = swift_getWitnessTable();
  v15 = sub_24B4C4888(&qword_2810ED7C8, MEMORY[0x277D097D8], MEMORY[0x277D097D0]);
  v49 = v12;
  v50 = v13;
  v51 = v14;
  v52 = v15;
  swift_getOpaqueTypeMetadata2();
  v16 = sub_24B516EDC();
  v17 = sub_24B4C4888(&qword_2810ED7B8, MEMORY[0x277D097F8], MEMORY[0x277D097F0]);
  v49 = v12;
  v50 = v16;
  v51 = v14;
  v52 = v17;
  swift_getOpaqueTypeMetadata2();
  v18 = sub_24B51724C();
  v49 = v12;
  v50 = v13;
  v51 = v14;
  v52 = v15;
  v19 = swift_getOpaqueTypeConformance2();
  v49 = v12;
  v50 = v16;
  v51 = v14;
  v52 = v17;
  v43 = v19;
  v44 = swift_getOpaqueTypeConformance2();
  v20 = swift_getWitnessTable();
  v49 = v18;
  v50 = v20;
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE68, &qword_24B51DB88);
  sub_24B51724C();
  v49 = v18;
  v50 = v20;
  v21 = swift_getOpaqueTypeConformance2();
  v41 = MEMORY[0x277CE1410];
  v42 = v21;
  v39 = swift_getWitnessTable();
  v40 = sub_24B4C2B48();
  swift_getWitnessTable();
  v22 = sub_24B516F3C();
  v23 = swift_getWitnessTable();
  v49 = v22;
  v50 = v23;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v49 = v22;
  v50 = v23;
  v25 = swift_getOpaqueTypeConformance2();
  return sub_24B4BBEB0(sub_24B4C4E58, v29, a1, OpaqueTypeMetadata2, v25, a2);
}

uint64_t sub_24B4BA8B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v81 = a7;
  v82 = a8;
  v79 = a9;
  v80 = a6;
  v86 = a5;
  v89 = a3;
  v90 = a4;
  v75 = a2;
  v88 = a1;
  v73 = a14;
  v87 = a15;
  v72 = a13;
  v84 = a12;
  v83 = a11;
  v85 = a10;
  v19 = sub_24B51727C();
  MEMORY[0x28223BE20](v19 - 8);
  v78 = v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24B516D4C();
  v76 = *(v21 - 8);
  v77 = v21;
  MEMORY[0x28223BE20](v21);
  v74 = v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = a3;
  v117 = a4;
  v118 = a7;
  v119 = a8;
  v120 = a10;
  v121 = a11;
  v122 = a12;
  v123 = a13;
  v23 = type metadata accessor for NewAndFeaturedDataItem(255, &v116);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE50, &qword_24B51DB70);
  v24 = sub_24B51702C();
  v136 = sub_24B4C29D8();
  v137 = v87;
  WitnessTable = swift_getWitnessTable();
  v116 = v24;
  v117 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE58, &qword_24B51DB78);
  v26 = sub_24B51724C();
  v27 = swift_getWitnessTable();
  v116 = v24;
  v117 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = sub_24B4C2DC0(&qword_2810ED760, &qword_27EFFCE58, &qword_24B51DB78, MEMORY[0x277CE1550]);
  v134 = OpaqueTypeConformance2;
  v135 = v29;
  v71 = MEMORY[0x277CE0340];
  v30 = swift_getWitnessTable();
  v116 = v23;
  v117 = v26;
  v118 = v27;
  v119 = v30;
  v31 = sub_24B516DFC();
  v32 = sub_24B516E8C();
  v33 = swift_getWitnessTable();
  v34 = sub_24B4C4888(&qword_2810ED7C8, MEMORY[0x277D097D8], MEMORY[0x277D097D0]);
  v116 = v31;
  v117 = v32;
  v118 = v33;
  v119 = v34;
  swift_getOpaqueTypeMetadata2();
  v35 = sub_24B516EDC();
  v36 = sub_24B4C4888(&qword_2810ED7B8, MEMORY[0x277D097F8], MEMORY[0x277D097F0]);
  v116 = v31;
  v117 = v35;
  v118 = v33;
  v119 = v36;
  swift_getOpaqueTypeMetadata2();
  v37 = sub_24B51724C();
  v116 = v31;
  v117 = v32;
  v118 = v33;
  v119 = v34;
  v38 = swift_getOpaqueTypeConformance2();
  v116 = v31;
  v117 = v35;
  v118 = v33;
  v119 = v36;
  v39 = swift_getOpaqueTypeConformance2();
  v132 = v38;
  v133 = v39;
  v40 = swift_getWitnessTable();
  v116 = v37;
  v117 = v40;
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE68, &qword_24B51DB88);
  v41 = sub_24B51724C();
  v116 = v37;
  v117 = v40;
  v42 = swift_getOpaqueTypeConformance2();
  v130 = MEMORY[0x277CE1410];
  v131 = v42;
  v43 = swift_getWitnessTable();
  v44 = sub_24B4C2B48();
  v128 = v43;
  v129 = v44;
  v67[2] = v41;
  v67[1] = swift_getWitnessTable();
  v45 = sub_24B51791C();
  v46 = *(v45 - 8);
  v70 = v45;
  v71 = v46;
  v47 = MEMORY[0x28223BE20](v45);
  v68 = v67 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v69 = v67 - v49;
  v116 = v89;
  v117 = v90;
  v50 = v86;
  v52 = v80;
  v51 = v81;
  v118 = v86;
  v119 = v80;
  v53 = v82;
  v120 = v81;
  v121 = v82;
  v122 = v85;
  v123 = v83;
  v55 = v72;
  v54 = v73;
  v124 = v84;
  v125 = v72;
  v126 = v73;
  v56 = v87;
  v127 = v87;
  v57 = type metadata accessor for NewAndFeaturedView(0, &v116);
  v75 = sub_24B4BB060(v75);
  v67[0] = sub_24B51714C();
  sub_24B4B54BC(v57);
  v104 = v89;
  v105 = v90;
  v106 = v50;
  v107 = v52;
  v108 = v51;
  v109 = v53;
  v59 = v84;
  v58 = v85;
  v60 = v83;
  v110 = v85;
  v111 = v83;
  v112 = v84;
  v113 = v55;
  v114 = v54;
  v115 = v56;
  swift_getKeyPath();
  v61 = v74;
  sub_24B5179CC();

  sub_24B516D3C();
  (*(v76 + 8))(v61, v77);
  v91 = v89;
  v92 = v90;
  v93 = v86;
  v94 = v80;
  v95 = v81;
  v96 = v82;
  v97 = v58;
  v98 = v60;
  v99 = v59;
  v100 = v55;
  v101 = v54;
  v102 = v56;
  v103 = v88;
  sub_24B4BCFD4();
  v62 = v68;
  sub_24B51790C();
  v63 = v70;
  swift_getWitnessTable();
  v64 = v69;
  sub_24B49711C();
  v65 = *(v71 + 8);
  v65(v62, v63);
  sub_24B49711C();
  return (v65)(v64, v63);
}

uint64_t sub_24B4BB060(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x28223BE20](result);
    v3 = v2[2];
    v7[1] = v2[1];
    v7[2] = v3;
    v4 = v2[4];
    v7[3] = v2[3];
    v7[4] = v4;
    v5 = v2[6];
    v7[5] = v2[5];
    v7[6] = v5;
    v8 = v1;
    return sub_24B4BDE28(sub_24B4C4E10, v7, 0, v6);
  }

  return result;
}

uint64_t sub_24B4BB0F0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v112 = a1;
  v125 = a3;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCED0, &qword_24B51DD58);
  MEMORY[0x28223BE20](v105);
  v106 = (&v100 - v4);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCE68, &qword_24B51DB88);
  MEMORY[0x28223BE20](v128);
  v108 = &v100 - v5;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCED8, &qword_24B51DD60);
  v103 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v102 = &v100 - v6;
  v7 = *(a2 + 64);
  v120 = *(a2 + 72);
  v121 = v7;
  v8 = *(a2 + 80);
  v118 = *(a2 + 88);
  v119 = v8;
  v160 = v7;
  v161 = v120;
  v162 = v8;
  v163 = v118;
  v9 = *(a2 + 48);
  v116 = *(a2 + 16);
  v117 = v9;
  v113 = a2;
  v159 = v9;
  v158 = v116;
  v10 = type metadata accessor for NewAndFeaturedDataItem(255, &v158);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE50, &qword_24B51DB70);
  v115 = *(a2 + 40);
  v11 = sub_24B51702C();
  v12 = sub_24B4C29D8();
  v114 = *(a2 + 104);
  v156 = v12;
  v157 = v114;
  WitnessTable = swift_getWitnessTable();
  *&v158 = v11;
  *(&v158 + 1) = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE58, &qword_24B51DB78);
  v14 = sub_24B51724C();
  v126 = v10;
  v15 = swift_getWitnessTable();
  v124 = v15;
  *&v158 = v11;
  *(&v158 + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = sub_24B4C2DC0(&qword_2810ED760, &qword_27EFFCE58, &qword_24B51DB78, MEMORY[0x277CE1550]);
  v154 = OpaqueTypeConformance2;
  v155 = v17;
  *(&v127 + 1) = MEMORY[0x277CE0340];
  v18 = swift_getWitnessTable();
  *&v158 = v10;
  *(&v158 + 1) = v14;
  *&v159 = v15;
  *(&v159 + 1) = v18;
  v19 = sub_24B516DFC();
  v20 = sub_24B516E8C();
  *&v127 = v20;
  v21 = swift_getWitnessTable();
  v22 = sub_24B4C4888(&qword_2810ED7C8, MEMORY[0x277D097D8], MEMORY[0x277D097D0]);
  *&v158 = v19;
  *(&v158 + 1) = v20;
  *&v159 = v21;
  *(&v159 + 1) = v22;
  swift_getOpaqueTypeMetadata2();
  v23 = sub_24B516EDC();
  v24 = sub_24B4C4888(&qword_2810ED7B8, MEMORY[0x277D097F8], MEMORY[0x277D097F0]);
  *&v158 = v19;
  *(&v158 + 1) = v23;
  *&v159 = v21;
  *(&v159 + 1) = v24;
  swift_getOpaqueTypeMetadata2();
  v25 = sub_24B51724C();
  *&v158 = v19;
  *(&v158 + 1) = v127;
  *&v159 = v21;
  *(&v159 + 1) = v22;
  v26 = swift_getOpaqueTypeConformance2();
  *&v158 = v19;
  *(&v158 + 1) = v23;
  *&v159 = v21;
  *(&v159 + 1) = v24;
  v27 = swift_getOpaqueTypeConformance2();
  v152 = v26;
  v153 = v27;
  v28 = swift_getWitnessTable();
  *&v127 = v25;
  *(&v127 + 1) = v28;
  *&v158 = v25;
  *(&v158 + 1) = v28;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v104 = *(OpaqueTypeMetadata2 - 8);
  v30 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v32 = &v100 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v100 - v33;
  v109 = v35;
  v36 = sub_24B51724C();
  v111 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v110 = &v100 - v37;
  sub_24B516E6C();
  sub_24B517B8C();
  v151 = swift_getWitnessTable();
  swift_getWitnessTable();
  v38 = sub_24B51798C();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = (&v100 - v40);
  v126 = v36;
  v42 = sub_24B51724C();
  v123 = *(v42 - 8);
  v124 = v42;
  MEMORY[0x28223BE20](v42);
  v122 = &v100 - v43;
  v44 = v113;
  sub_24B4B54BC(v113);
  v129 = v116;
  v130 = *(v44 + 4);
  v131 = v115;
  v132 = v117;
  v133 = v121;
  v134 = v120;
  v135 = v119;
  v136 = v118;
  v45 = v44;
  v137 = *(v44 + 12);
  v138 = v114;
  swift_getKeyPath();
  sub_24B5179CC();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v47 = MEMORY[0x277CE1410];
  if (EnumCaseMultiPayload <= 1)
  {
    v61 = v104;
    v62 = *v41;
    if (EnumCaseMultiPayload)
    {
      v81 = sub_24B516BEC();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      (*(*(v81 - 8) + 8))(v41 + *(TupleTypeMetadata2 + 48), v81);
    }

    v83 = *(&v127 + 1);
    v84 = v126;
    sub_24B4BE3DC(v62, v112 & 1, v45, v32);

    *&v158 = v127;
    *(&v158 + 1) = v83;
    v85 = swift_getOpaqueTypeConformance2();
    v101 = v34;
    v86 = v109;
    sub_24B49711C();
    v87 = *(v61 + 8);
    v87(v32, v86);
    sub_24B49711C();
    v88 = v110;
    v89 = MEMORY[0x277CE1410];
    sub_24B48D23C(v32, MEMORY[0x277CE1428], v86, MEMORY[0x277CE1410], v85);
    v141 = v89;
    v142 = v85;
    v90 = swift_getWitnessTable();
    v91 = sub_24B4C2B48();
    v92 = v122;
    sub_24B48D144(v88, v84, v128, v90, v91);
    v93 = v88;
    v53 = v127;
    (*(v111 + 8))(v93, v84);
    v87(v32, v86);
    v59 = v92;
    v87(v101, v86);
    v52 = *(&v127 + 1);
    v47 = v89;
  }

  else if (EnumCaseMultiPayload == 2)
  {
    (*(v39 + 8))(v41, v38);
    v52 = *(&v127 + 1);
    v53 = v127;
    v158 = v127;
    v63 = swift_getOpaqueTypeConformance2();
    v64 = v110;
    sub_24B48D144(v63, MEMORY[0x277CE1428], v109, v47, v63);
    v139 = v47;
    v140 = v63;
    v65 = v126;
    v66 = swift_getWitnessTable();
    v67 = sub_24B4C2B48();
    v59 = v122;
    sub_24B48D144(v64, v65, v128, v66, v67);
    (*(v111 + 8))(v64, v65);
  }

  else
  {
    v48 = MEMORY[0x277CE1410];
    if (EnumCaseMultiPayload == 3)
    {
      *v106 = sub_24B5176DC();
      swift_storeEnumTagMultiPayload();

      v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE70, &qword_24B51DB90);
      v50 = sub_24B4C2C10();
      *&v158 = v49;
      *(&v158 + 1) = v50;
      swift_getOpaqueTypeConformance2();
      v51 = v108;
      sub_24B51723C();
      v52 = *(&v127 + 1);
      v53 = v127;
      v158 = v127;
      v54 = swift_getOpaqueTypeConformance2();
      v55 = v48;
      v149 = v48;
      v150 = v54;
      v56 = v126;
      v57 = swift_getWitnessTable();
      v58 = sub_24B4C2B48();
      v59 = v122;
      v60 = v57;
      v47 = v55;
      sub_24B48D23C(v51, v56, v128, v60, v58);

      sub_24B49689C(v51, &qword_27EFFCE68, &qword_24B51DB88);
    }

    else
    {
      v68 = v102;
      sub_24B4BE060(v112 & 1, v45, v102);
      v69 = v103;
      v70 = v107;
      (*(v103 + 16))(v106, v68, v107);
      swift_storeEnumTagMultiPayload();
      v71 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE70, &qword_24B51DB90);
      v72 = sub_24B4C2C10();
      *&v158 = v71;
      *(&v158 + 1) = v72;
      swift_getOpaqueTypeConformance2();
      v73 = v108;
      sub_24B51723C();
      v52 = *(&v127 + 1);
      v53 = v127;
      v158 = v127;
      v74 = swift_getOpaqueTypeConformance2();
      v143 = v48;
      v144 = v74;
      v75 = v126;
      v76 = swift_getWitnessTable();
      v77 = sub_24B4C2B48();
      v78 = v122;
      sub_24B48D23C(v73, v75, v128, v76, v77);
      v79 = v73;
      v47 = MEMORY[0x277CE1410];
      sub_24B49689C(v79, &qword_27EFFCE68, &qword_24B51DB88);
      v80 = v68;
      v59 = v78;
      (*(v69 + 8))(v80, v70);
    }
  }

  v94 = v124;
  v95 = v123;
  *&v158 = v53;
  *(&v158 + 1) = v52;
  v96 = swift_getOpaqueTypeConformance2();
  v147 = v47;
  v148 = v96;
  v97 = swift_getWitnessTable();
  v98 = sub_24B4C2B48();
  v145 = v97;
  v146 = v98;
  swift_getWitnessTable();
  sub_24B49711C();
  return (*(v95 + 8))(v59, v94);
}

uint64_t sub_24B4BBEB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22 = a6;
  swift_getOpaqueTypeMetadata2();
  v33 = a4;
  v34 = a5;
  swift_getOpaqueTypeConformance2();
  v11 = sub_24B516F4C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - v13;
  sub_24B51737C();
  v15 = a3[2];
  v23 = a3[1];
  v24 = v15;
  v16 = a3[4];
  v26 = a3[3];
  v27 = v16;
  v17 = a3[6];
  v28 = a3[5];
  v25 = a4;
  v29 = v17;
  v30 = a5;
  v31 = a1;
  v32 = a2;
  sub_24B516F5C();
  v18 = sub_24B4B54BC(a3);
  WitnessTable = swift_getWitnessTable();
  sub_24B4BD27C(v18, v11, WitnessTable, v22);

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_24B4BC0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v99 = a7;
  v100 = a8;
  v97 = a5;
  v98 = a6;
  v89 = a4;
  v105 = a2;
  v106 = a3;
  v104 = a1;
  v96 = a9;
  v103 = a14;
  v90 = a13;
  v86 = a12;
  v101 = a11;
  v102 = a10;
  v19 = sub_24B5172CC();
  v94 = *(v19 - 8);
  v95 = v19;
  MEMORY[0x28223BE20](v19);
  v93 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24B51727C();
  MEMORY[0x28223BE20](v21 - 8);
  v92 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_24B516D4C();
  v88 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v87 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = a2;
  v133 = a3;
  v134 = a6;
  v135 = a7;
  v136 = a8;
  v137 = a10;
  v138 = a11;
  v139 = a12;
  v24 = type metadata accessor for NewAndFeaturedDataItem(255, &v132);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE50, &qword_24B51DB70);
  v25 = sub_24B51702C();
  v152 = sub_24B4C29D8();
  v153 = v103;
  WitnessTable = swift_getWitnessTable();
  v132 = v25;
  v133 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE58, &qword_24B51DB78);
  v27 = sub_24B51724C();
  v28 = swift_getWitnessTable();
  v132 = v25;
  v133 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = sub_24B4C2DC0(&qword_2810ED760, &qword_27EFFCE58, &qword_24B51DB78, MEMORY[0x277CE1550]);
  v150 = OpaqueTypeConformance2;
  v151 = v30;
  v85 = MEMORY[0x277CE0340];
  v31 = swift_getWitnessTable();
  v132 = v24;
  v133 = v27;
  v134 = v28;
  v135 = v31;
  v32 = sub_24B516DFC();
  v33 = sub_24B516E8C();
  v34 = swift_getWitnessTable();
  v35 = sub_24B4C4888(&qword_2810ED7C8, MEMORY[0x277D097D8], MEMORY[0x277D097D0]);
  v132 = v32;
  v133 = v33;
  v134 = v34;
  v135 = v35;
  swift_getOpaqueTypeMetadata2();
  v36 = sub_24B516EDC();
  v37 = sub_24B4C4888(&qword_2810ED7B8, MEMORY[0x277D097F8], MEMORY[0x277D097F0]);
  v132 = v32;
  v133 = v36;
  v134 = v34;
  v135 = v37;
  swift_getOpaqueTypeMetadata2();
  v38 = sub_24B51724C();
  v132 = v32;
  v133 = v33;
  v134 = v34;
  v135 = v35;
  v39 = swift_getOpaqueTypeConformance2();
  v132 = v32;
  v133 = v36;
  v134 = v34;
  v135 = v37;
  v40 = swift_getOpaqueTypeConformance2();
  v148 = v39;
  v149 = v40;
  v41 = swift_getWitnessTable();
  v132 = v38;
  v133 = v41;
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE68, &qword_24B51DB88);
  v42 = sub_24B51724C();
  v132 = v38;
  v133 = v41;
  v43 = swift_getOpaqueTypeConformance2();
  v146 = MEMORY[0x277CE1410];
  v147 = v43;
  v44 = swift_getWitnessTable();
  v45 = sub_24B4C2B48();
  v144 = v44;
  v145 = v45;
  v79 = v42;
  v78 = swift_getWitnessTable();
  v46 = sub_24B516F3C();
  v80 = v46;
  v85 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v77 = &v75 - v47;
  v48 = swift_getWitnessTable();
  v132 = v46;
  v133 = v48;
  v81 = v48;
  v82 = MEMORY[0x277CE0DC0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v50 = *(OpaqueTypeMetadata2 - 8);
  v83 = OpaqueTypeMetadata2;
  v84 = v50;
  v51 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v75 = &v75 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v76 = &v75 - v53;
  v132 = v105;
  v133 = v106;
  v54 = v89;
  v55 = v90;
  v56 = v97;
  v57 = v98;
  v134 = v89;
  v135 = v97;
  v136 = v98;
  v58 = v99;
  v59 = v100;
  v137 = v99;
  v138 = v100;
  v139 = v102;
  v140 = v101;
  v60 = v86;
  v141 = v86;
  v142 = v90;
  v61 = v103;
  v143 = v103;
  v62 = type metadata accessor for NewAndFeaturedView(0, &v132);
  sub_24B4B54BC(v62);
  v120 = v105;
  v121 = v106;
  v122 = v54;
  v123 = v56;
  v124 = v57;
  v125 = v58;
  v63 = v101;
  v64 = v102;
  v126 = v59;
  v127 = v102;
  v128 = v101;
  v129 = v60;
  v130 = v55;
  v131 = v61;
  swift_getKeyPath();
  v65 = v87;
  sub_24B5179CC();

  sub_24B516D3C();
  (*(v88 + 8))(v65, v91);
  v107 = v105;
  v108 = v106;
  v109 = v54;
  v110 = v97;
  v111 = v98;
  v112 = v99;
  v113 = v100;
  v114 = v64;
  v115 = v63;
  v116 = v60;
  v117 = v55;
  v118 = v61;
  v119 = v104;
  sub_24B51715C();
  sub_24B4BCFD4();
  v66 = v77;
  sub_24B516F2C();
  v67 = v93;
  sub_24B5172BC();
  v68 = v75;
  v70 = v80;
  v69 = v81;
  sub_24B51761C();
  (*(v94 + 8))(v67, v95);
  (*(v85 + 8))(v66, v70);
  v132 = v70;
  v133 = v69;
  swift_getOpaqueTypeConformance2();
  v71 = v76;
  v72 = v83;
  sub_24B49711C();
  v73 = *(v84 + 8);
  v73(v68, v72);
  sub_24B49711C();
  return (v73)(v71, v72);
}

uint64_t sub_24B4BC9D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 a15)
{
  v55 = a8;
  v54 = a7;
  v53 = a6;
  v47 = a5;
  v57 = a4;
  v49 = a3;
  v48 = a2;
  v59 = a1;
  v60 = a9;
  v58 = a15;
  v46 = a14;
  v56 = a13;
  v52 = a12;
  v51 = a11;
  v50 = a10;
  v65 = a2;
  v66 = a3;
  v67 = a6;
  v68 = a7;
  v69 = a8;
  v70 = a10;
  v71 = a11;
  v72 = a12;
  v15 = type metadata accessor for NewAndFeaturedDataItem(255, &v65);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE50, &qword_24B51DB70);
  v16 = sub_24B51702C();
  v81 = sub_24B4C29D8();
  v82 = a14;
  WitnessTable = swift_getWitnessTable();
  v65 = v16;
  v66 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE58, &qword_24B51DB78);
  v18 = sub_24B51724C();
  v19 = swift_getWitnessTable();
  v65 = v16;
  v66 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = sub_24B4C2DC0(&qword_2810ED760, &qword_27EFFCE58, &qword_24B51DB78, MEMORY[0x277CE1550]);
  v79 = OpaqueTypeConformance2;
  v80 = v21;
  v22 = swift_getWitnessTable();
  v65 = v15;
  v66 = v18;
  v67 = v19;
  v68 = v22;
  v23 = sub_24B516DFC();
  v24 = sub_24B516E8C();
  v25 = swift_getWitnessTable();
  v26 = sub_24B4C4888(&qword_2810ED7C8, MEMORY[0x277D097D8], MEMORY[0x277D097D0]);
  v65 = v23;
  v66 = v24;
  v67 = v25;
  v68 = v26;
  swift_getOpaqueTypeMetadata2();
  v27 = sub_24B516EDC();
  v28 = sub_24B4C4888(&qword_2810ED7B8, MEMORY[0x277D097F8], MEMORY[0x277D097F0]);
  v65 = v23;
  v66 = v27;
  v67 = v25;
  v68 = v28;
  swift_getOpaqueTypeMetadata2();
  v29 = sub_24B51724C();
  v65 = v23;
  v66 = v24;
  v67 = v25;
  v68 = v26;
  v30 = swift_getOpaqueTypeConformance2();
  v65 = v23;
  v66 = v27;
  v67 = v25;
  v68 = v28;
  v31 = swift_getOpaqueTypeConformance2();
  v77 = v30;
  v78 = v31;
  v32 = swift_getWitnessTable();
  v65 = v29;
  v66 = v32;
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE68, &qword_24B51DB88);
  v33 = sub_24B51724C();
  v34 = *(v33 - 8);
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v46 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v39 = &v46 - v38;
  v65 = v48;
  v66 = v49;
  v67 = v57;
  v68 = v47;
  v69 = v53;
  v70 = v54;
  v71 = v55;
  v72 = v50;
  v73 = v51;
  v74 = v52;
  v75 = v56;
  v76 = v46;
  v40 = type metadata accessor for NewAndFeaturedView(0, &v65);
  sub_24B4BB0F0(v58, v40, v37);
  v65 = v29;
  v66 = v32;
  v41 = swift_getOpaqueTypeConformance2();
  v63 = MEMORY[0x277CE1410];
  v64 = v41;
  v42 = swift_getWitnessTable();
  v43 = sub_24B4C2B48();
  v61 = v42;
  v62 = v43;
  swift_getWitnessTable();
  sub_24B49711C();
  v44 = *(v34 + 8);
  v44(v37, v33);
  sub_24B49711C();
  return (v44)(v39, v33);
}

uint64_t sub_24B4BCFD4()
{
  sub_24B51727C();
  sub_24B4C4888(&qword_2810ED770, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
  return sub_24B51800C();
}

uint64_t sub_24B4BD054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X6>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v26[0] = a1;
  v26[1] = a3;
  v12 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v15;
  v28 = a11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v17 = *(OpaqueTypeMetadata2 - 8);
  v18 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v20 = v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v26 - v22;
  (v26[0])(v21);
  sub_24B5175AC();
  (*(v12 + 8))(v14, a2);
  v27 = a2;
  v28 = a11;
  swift_getOpaqueTypeConformance2();
  sub_24B49711C();
  v24 = *(v17 + 8);
  v24(v20, OpaqueTypeMetadata2);
  sub_24B49711C();
  return (v24)(v23, OpaqueTypeMetadata2);
}

uint64_t sub_24B4BD27C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v63 = a1;
  v73 = a4;
  v59 = *a1;
  v74 = sub_24B51726C();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_24B5172EC();
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v58 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_24B51729C();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v57 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_24B516E2C();
  v9 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2;
  v52 = a2;
  v81 = a2;
  v82 = a3;
  v53 = a3;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v55 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v15 = &v52 - v14;
  v16 = sub_24B51735C();
  v81 = v12;
  v82 = a3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v81 = OpaqueTypeMetadata2;
  v82 = v16;
  v18 = MEMORY[0x277CDE478];
  v83 = OpaqueTypeConformance2;
  v84 = MEMORY[0x277CDE478];
  v19 = OpaqueTypeConformance2;
  v54 = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeMetadata2();
  v64 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v52 - v21;
  v81 = OpaqueTypeMetadata2;
  v82 = v16;
  v83 = v19;
  v84 = v18;
  v23 = swift_getOpaqueTypeConformance2();
  v68 = v20;
  v81 = v20;
  v82 = v23;
  v65 = v23;
  v62 = swift_getOpaqueTypeMetadata2();
  v67 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v66 = &v52 - v24;
  v25 = sub_24B5173AC();
  v26 = v52;
  v75 = v52;
  v27 = *(v59 + *MEMORY[0x277D04408]);
  v28 = v27[2];
  v76 = v27[1];
  v29 = v53;
  v77 = v53;
  v30 = v27[3];
  v31 = v27[4];
  v78 = v28;
  v79 = v30;
  v80 = v31;
  swift_getKeyPath();
  sub_24B5179CC();

  sub_24B516E0C();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  (*(v9 + 8))(v11, v56);
  v40 = v58;
  v41 = v57;
  sub_24B51728C();
  MEMORY[0x24C241350](v25, v41, v26, v29, v33, v35, v37, v39);
  (*(v60 + 8))(v41, v61);
  v42 = v22;
  sub_24B4C25D0(OpaqueTypeMetadata2, v54, v22);
  (*(v55 + 8))(v15, OpaqueTypeMetadata2);
  sub_24B51725C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCEC8, &qword_24B51DD30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24B51DAD0;
  LOBYTE(v11) = sub_24B51739C();
  *(inited + 32) = v11;
  v44 = sub_24B51737C();
  *(inited + 33) = v44;
  sub_24B51738C();
  sub_24B51738C();
  if (sub_24B51738C() != v11)
  {
    sub_24B51738C();
  }

  sub_24B51738C();
  if (sub_24B51738C() != v44)
  {
    sub_24B51738C();
  }

  v45 = v71;
  v46 = v68;
  v47 = v66;
  v48 = v65;
  sub_24B51759C();
  (*(v69 + 8))(v40, v70);
  (*(v64 + 8))(v42, v46);
  sub_24B51725C();
  v49 = sub_24B51739C();
  sub_24B51738C();
  sub_24B51738C();
  if (sub_24B51738C() != v49)
  {
    sub_24B51738C();
  }

  v81 = v46;
  v82 = v48;
  swift_getOpaqueTypeConformance2();
  v50 = v62;
  sub_24B5175CC();
  (*(v72 + 8))(v45, v74);
  return (*(v67 + 8))(v47, v50);
}

uint64_t sub_24B4BDADC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v40 = a7;
  v36 = a6;
  v33 = a3;
  v32 = a2;
  v42 = a1;
  v45 = a8;
  v39 = a14;
  v35 = a13;
  v34 = a12;
  v38 = a11;
  v37 = a10;
  v44 = sub_24B516D4C();
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v41 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24B51787C();
  MEMORY[0x28223BE20](v20);
  v22 = (&v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v22 = xmmword_24B51DAE0;
  (*(v23 + 104))(v22, *MEMORY[0x277CDF108]);
  v58[0] = a2;
  v58[1] = a3;
  v58[2] = a4;
  v58[3] = a5;
  v58[4] = a6;
  v24 = v40;
  v58[5] = v40;
  v58[6] = a9;
  v25 = v37;
  v26 = v38;
  v58[7] = v37;
  v58[8] = v38;
  v58[9] = a12;
  v58[10] = a13;
  v27 = v39;
  v58[11] = v39;
  v28 = type metadata accessor for NewAndFeaturedView(0, v58);
  sub_24B4B54BC(v28);
  v46 = v32;
  v47 = v33;
  v48 = a4;
  v49 = a5;
  v50 = v36;
  v51 = v24;
  v52 = a9;
  v53 = v25;
  v54 = v26;
  v55 = v34;
  v56 = v35;
  v57 = v27;
  swift_getKeyPath();
  v29 = v41;
  sub_24B5179CC();

  sub_24B516D3C();
  (*(v43 + 8))(v29, v44);
  sub_24B5178AC();
  return sub_24B51789C();
}

uint64_t sub_24B4BDE28(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v25 = a2;
  v23 = sub_24B51788C();
  v26 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a4;
  v9 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v30 = MEMORY[0x277D84F90];
  sub_24B4C40CC(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v28 = v4;
    v11 = 0;
    v10 = v30;
    v12 = v27;
    if (v27 <= a3)
    {
      v12 = a3;
    }

    v21 = v12 - a3 + 1;
    v22 = v26 + 32;
    while (v11 < v9)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_17;
      }

      v29 = a3 + v11;
      v14 = v8;
      v15 = v28;
      v24(&v29);
      v28 = v15;
      if (v15)
      {
        goto LABEL_22;
      }

      v30 = v10;
      v17 = *(v10 + 16);
      v16 = *(v10 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_24B4C40CC((v16 > 1), v17 + 1, 1);
        v10 = v30;
      }

      *(v10 + 16) = v17 + 1;
      v18 = v10 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v17;
      v8 = v14;
      (*(v26 + 32))(v18, v14, v23);
      if (v27 < a3)
      {
        goto LABEL_18;
      }

      if (v21 == ++v11)
      {
        goto LABEL_19;
      }

      if (v13 == v9)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t sub_24B4BE060@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = a1;
  v29 = a3;
  v7 = *(a2 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCE78, &qword_24B51DB98);
  v10 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v12 = v26 - v11;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCE70, &qword_24B51DB90);
  MEMORY[0x28223BE20](v27);
  v14 = v26 - v13;
  v32 = xmmword_24B51DAF0;
  v26[1] = swift_getKeyPath();
  (*(v7 + 16))(v9, v4, a2);
  v15 = (*(v7 + 80) + 112) & ~*(v7 + 80);
  v16 = v15 + v8;
  v17 = swift_allocObject();
  v18 = a2[2];
  *(v17 + 1) = a2[1];
  *(v17 + 2) = v18;
  v19 = a2[4];
  *(v17 + 3) = a2[3];
  *(v17 + 4) = v19;
  v20 = a2[6];
  *(v17 + 5) = a2[5];
  *(v17 + 6) = v20;
  (*(v7 + 32))(&v17[v15], v9, a2);
  v17[v16] = v6 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCF00, &qword_24B51DDE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCEE0, &qword_24B51DDA8);
  sub_24B4C4D30();
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE60, &qword_24B51DB80);
  v22 = sub_24B4C2AC4();
  v30 = v21;
  v31 = v22;
  swift_getOpaqueTypeConformance2();
  sub_24B51783C();
  sub_24B4B9E24(a2);
  sub_24B4BFC20(v6 & 1, v14);
  (*(v10 + 8))(v12, v28);
  v23 = sub_24B4B54BC(a2);
  v24 = sub_24B4C2C10();
  sub_24B4C091C(v23, v6 & 1, v27, v24, v29);

  return sub_24B49689C(v14, &qword_27EFFCE70, &qword_24B51DB90);
}

uint64_t sub_24B4BE3DC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v74 = a2;
  v75 = a1;
  v76 = a4;
  v67 = *(a3 - 8);
  v69 = *(v67 + 64);
  MEMORY[0x28223BE20](a1);
  v62 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 64);
  v72 = *(v7 + 72);
  v73 = v8;
  v9 = *(v7 + 80);
  v70 = *(v7 + 88);
  v71 = v9;
  v85 = v8;
  v86 = v72;
  v87 = v9;
  v88 = v70;
  v66 = *(v7 + 16);
  v68 = *(v7 + 48);
  v84 = v68;
  v83 = v66;
  v10 = type metadata accessor for NewAndFeaturedDataItem(255, &v83);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE50, &qword_24B51DB70);
  v64 = *(a3 + 40);
  v11 = sub_24B51702C();
  v12 = sub_24B4C29D8();
  v63 = *(a3 + 104);
  v81 = v12;
  v82 = v63;
  WitnessTable = swift_getWitnessTable();
  *&v83 = v11;
  *(&v83 + 1) = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE58, &qword_24B51DB78);
  v14 = sub_24B51724C();
  v60 = v10;
  v15 = swift_getWitnessTable();
  *&v83 = v11;
  *(&v83 + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = sub_24B4C2DC0(&qword_2810ED760, &qword_27EFFCE58, &qword_24B51DB78, MEMORY[0x277CE1550]);
  v79 = OpaqueTypeConformance2;
  v80 = v17;
  v65 = MEMORY[0x277CE0340];
  v59 = v14;
  v58 = swift_getWitnessTable();
  *&v83 = v10;
  *(&v83 + 1) = v14;
  *&v84 = v15;
  *(&v84 + 1) = v58;
  v18 = sub_24B516DFC();
  v61 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v54 = &v46 - v19;
  v20 = sub_24B516E8C();
  v57 = v20;
  v21 = swift_getWitnessTable();
  v56 = sub_24B4C4888(&qword_2810ED7C8, MEMORY[0x277D097D8], MEMORY[0x277D097D0]);
  *&v83 = v18;
  *(&v83 + 1) = v20;
  *&v84 = v21;
  *(&v84 + 1) = v56;
  v22 = v21;
  v48 = v21;
  v55 = MEMORY[0x277D09848];
  swift_getOpaqueTypeMetadata2();
  v23 = sub_24B516EDC();
  v52 = v23;
  v51 = sub_24B4C4888(&qword_2810ED7B8, MEMORY[0x277D097F8], MEMORY[0x277D097F0]);
  *&v83 = v18;
  *(&v83 + 1) = v23;
  *&v84 = v22;
  *(&v84 + 1) = v51;
  v49 = MEMORY[0x277D09840];
  swift_getOpaqueTypeMetadata2();
  v50 = sub_24B51724C();
  v53 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v47 = &v46 - v24;
  sub_24B4B579C(a3);
  v46 = v85;
  v25 = __swift_project_boxed_opaque_existential_1(&v83, *(&v84 + 1));
  MEMORY[0x28223BE20](v25);
  (*(v27 + 16))(&v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = v67;
  v29 = v62;
  (*(v67 + 16))(v62, v4, a3);
  v30 = (*(v28 + 80) + 112) & ~*(v28 + 80);
  v31 = v30 + v69;
  v32 = swift_allocObject();
  *(v32 + 16) = v66;
  v33 = v64;
  *(v32 + 32) = *(a3 + 32);
  *(v32 + 40) = v33;
  *(v32 + 48) = v68;
  v34 = v72;
  *(v32 + 64) = v73;
  *(v32 + 72) = v34;
  v35 = v70;
  *(v32 + 80) = v71;
  *(v32 + 88) = v35;
  v36 = v63;
  *(v32 + 96) = *(a3 + 96);
  *(v32 + 104) = v36;
  (*(v28 + 32))(v32 + v30, v29, a3);
  LOBYTE(v28) = v74 & 1;
  *(v32 + v31) = v74 & 1;

  v37 = v54;
  sub_24B516DEC();
  sub_24B4B9E24(a3);
  v38 = v47;
  v39 = v48;
  sub_24B4C0234(v28, v18, v48, v47);
  (*(v61 + 8))(v37, v18);
  __swift_destroy_boxed_opaque_existential_1(&v83);
  v40 = sub_24B4B54BC(a3);
  *&v83 = v18;
  *(&v83 + 1) = v57;
  *&v84 = v39;
  *(&v84 + 1) = v56;
  v41 = swift_getOpaqueTypeConformance2();
  *&v83 = v18;
  *(&v83 + 1) = v52;
  *&v84 = v39;
  *(&v84 + 1) = v51;
  v42 = swift_getOpaqueTypeConformance2();
  v77 = v41;
  v78 = v42;
  v43 = v50;
  v44 = swift_getWitnessTable();
  sub_24B4C091C(v40, v28, v43, v44, v76);

  return (*(v53 + 8))(v38, v43);
}

uint64_t sub_24B4BEBC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  v34 = a7;
  v33 = a6;
  v32 = a5;
  v35 = a4;
  v37 = a1;
  v38 = a3;
  v36 = a2;
  v39 = a9;
  v31 = a12;
  v30 = a11;
  v29 = a10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE50, &qword_24B51DB70);
  v15 = sub_24B51702C();
  v51 = sub_24B4C29D8();
  v52 = a14;
  WitnessTable = swift_getWitnessTable();
  v42 = v15;
  v43 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE58, &qword_24B51DB78);
  v17 = sub_24B51724C();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v29 - v22;
  v42 = v32;
  v43 = v33;
  v44 = v34;
  v45 = a8;
  v46 = v29;
  v47 = v30;
  v48 = v31;
  v49 = a13;
  v50 = a14;
  v24 = type metadata accessor for NewAndFeaturedView(0, &v42);
  sub_24B4BEEC4(v36, v37, v35 & 1, v24, v21);
  v42 = v15;
  v43 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = sub_24B4C2DC0(&qword_2810ED760, &qword_27EFFCE58, &qword_24B51DB78, MEMORY[0x277CE1550]);
  v40 = OpaqueTypeConformance2;
  v41 = v26;
  swift_getWitnessTable();
  sub_24B49711C();
  v27 = *(v18 + 8);
  v27(v21, v17);
  sub_24B49711C();
  return (v27)(v23, v17);
}

uint64_t sub_24B4BEEC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  LODWORD(v119) = a3;
  v111 = a2;
  v115 = a1;
  v122 = a5;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCEE0, &qword_24B51DDA8);
  v110 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v91 = &v87 - v6;
  v106 = sub_24B516E7C();
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v103 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCE58, &qword_24B51DB78);
  MEMORY[0x28223BE20](v8);
  v109 = &v87 - v9;
  v108 = sub_24B517A7C();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v104 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC618, &qword_24B51DB60);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v100 = &v87 - v13;
  v14 = *(a4 + 40);
  v98 = *(v14 - 8);
  MEMORY[0x28223BE20](v12);
  v96 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCE50, &qword_24B51DB70);
  MEMORY[0x28223BE20](v16);
  v94 = &v87 - v17;
  v93 = v18;
  v95 = v14;
  v19 = sub_24B51702C();
  v101 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v87 - v20;
  v22 = sub_24B4C29D8();
  v23 = *(a4 + 104);
  v92 = v22;
  v130 = v22;
  v131 = v23;
  WitnessTable = swift_getWitnessTable();
  v114 = v19;
  v125 = v19;
  v126 = WitnessTable;
  v117 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v102 = *(OpaqueTypeMetadata2 - 8);
  v26 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v97 = &v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v99 = &v87 - v28;
  v29 = *(a4 + 24);
  v125 = *(a4 + 16);
  v126 = v29;
  v113 = v29;
  v30 = *(a4 + 64);
  v127 = *(a4 + 48);
  v128 = v30;
  v129 = *(a4 + 80);
  v31 = type metadata accessor for NewAndFeaturedDataItem(0, &v125);
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v87 - v33;
  swift_getWitnessTable();
  v35 = v31;
  v36 = sub_24B516E6C();
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v39 = &v87 - v38;
  v121 = v8;
  v40 = sub_24B51724C();
  v120 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v118 = &v87 - v41;
  (*(v37 + 16))(v39, v115, v36);
  v42 = (*(v37 + 88))(v39, v36);
  v43 = *MEMORY[0x277D09768];
  v116 = v40;
  if (v42 == v43)
  {
    (*(v37 + 96))(v39, v36);
    v90 = v32;
    v44 = *(v32 + 32);
    v45 = v34;
    v89 = v35;
    v44(v34, v39, v35);
    v46 = v94;
    v47 = v45;
    v48 = v45;
    v49 = v111;
    sub_24B4C0B00(v47, v111, v119 & 1, a4, v94);
    v50 = sub_24B4B5650(a4);
    v51 = v96;
    v119 = a4;
    v52 = v48;
    v88 = v48;
    v50(v48);

    v53 = v95;
    MEMORY[0x24C241440](v51, v93, v95, v92);
    (*(v98 + 8))(v51, v53);
    sub_24B49689C(v46, &qword_27EFFCE50, &qword_24B51DB70);
    v54 = v100;
    sub_24B4C16EC(v52, v49, v119, v100);
    v55 = v104;
    sub_24B517A5C();
    v56 = v97;
    v57 = v114;
    v58 = v117;
    sub_24B5174DC();
    (*(v107 + 8))(v55, v108);
    sub_24B49689C(v54, &qword_27EFFC618, &qword_24B51DB60);
    (*(v101 + 8))(v21, v57);
    v125 = v57;
    v126 = v58;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v60 = v99;
    sub_24B49711C();
    v61 = *(v102 + 8);
    v61(v56, OpaqueTypeMetadata2);
    sub_24B49711C();
    v62 = sub_24B4C2DC0(&qword_2810ED760, &qword_27EFFCE58, &qword_24B51DB78, MEMORY[0x277CE1550]);
    v63 = v118;
    sub_24B48D144(v56, OpaqueTypeMetadata2, v121, OpaqueTypeConformance2, v62);
    v64 = v56;
    v65 = v116;
    v61(v64, OpaqueTypeMetadata2);
    v61(v60, OpaqueTypeMetadata2);
    (*(v90 + 8))(v88, v89);
    v66 = v63;
LABEL_8:
    v125 = v57;
    v126 = v58;
    v84 = swift_getOpaqueTypeConformance2();
    v85 = sub_24B4C2DC0(&qword_2810ED760, &qword_27EFFCE58, &qword_24B51DB78, MEMORY[0x277CE1550]);
    v123 = v84;
    v124 = v85;
    swift_getWitnessTable();
    sub_24B49711C();
    return (*(v120 + 8))(v66, v65);
  }

  v115 = OpaqueTypeMetadata2;
  v67 = v119;
  v57 = v114;
  v68 = v121;
  if (v42 == *MEMORY[0x277D09760])
  {
    (*(v37 + 96))(v39, v36);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCEE8, &qword_24B51DDB0);
    v69 = *&v39[*(swift_getTupleTypeMetadata2() + 48)];
    v70 = v105;
    v71 = v103;
    v72 = v106;
    (*(v105 + 104))(v103, *MEMORY[0x277D097B0], v106);
    v73 = sub_24B4C1B08(v71, v69);

    (*(v70 + 8))(v71, v72);
    if (v73)
    {
      v74 = 1;
      v65 = v116;
      v75 = v112;
      v76 = v110;
      v77 = v109;
    }

    else
    {
      v78 = v91;
      sub_24B4C1D20(v67 & 1);
      v76 = v110;
      v77 = v109;
      v79 = v78;
      v75 = v112;
      (*(v110 + 32))(v109, v79, v112);
      v74 = 0;
      v65 = v116;
    }

    (*(v76 + 56))(v77, v74, 1, v75);
    v80 = v117;
    v125 = v57;
    v126 = v117;
    v81 = swift_getOpaqueTypeConformance2();
    v82 = sub_24B4C2DC0(&qword_2810ED760, &qword_27EFFCE58, &qword_24B51DB78, MEMORY[0x277CE1550]);
    v66 = v118;
    sub_24B48D23C(v77, v115, v68, v81, v82);
    sub_24B49689C(v77, &qword_27EFFCE58, &qword_24B51DB78);
    v83 = v39;
    v58 = v80;
    (*(*(v113 - 8) + 8))(v83);
    goto LABEL_8;
  }

  result = sub_24B517EDC();
  __break(1u);
  return result;
}

uint64_t sub_24B4BFC20@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v35 = sub_24B516EDC();
  v31 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCF08, &qword_24B51DDF0);
  v32 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v7 = &v30 - v6;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCF10, &qword_24B51DDF8);
  MEMORY[0x28223BE20](v33);
  v9 = &v30 - v8;
  v10 = sub_24B516E8C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCF18, &qword_24B51DE00);
  v14 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v16 = &v30 - v15;
  if (a1)
  {
    sub_24B516E9C();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCE78, &qword_24B51DB98);
    v18 = sub_24B4C2DC0(&qword_2810ED740, &qword_27EFFCE78, &qword_24B51DB98, MEMORY[0x277CE1290]);
    v19 = sub_24B4C4888(&qword_2810ED7B8, MEMORY[0x277D097F8], MEMORY[0x277D097F0]);
    v20 = v35;
    sub_24B5174EC();
    (*(v31 + 8))(v5, v20);
    v21 = v32;
    v22 = v36;
    (*(v32 + 16))(v9, v7, v36);
    swift_storeEnumTagMultiPayload();
    v23 = sub_24B4C4888(&qword_2810ED7C8, MEMORY[0x277D097D8], MEMORY[0x277D097D0]);
    v38 = v17;
    v39 = v10;
    v40 = v18;
    v41 = v23;
    swift_getOpaqueTypeConformance2();
    v38 = v17;
    v39 = v20;
    v40 = v18;
    v41 = v19;
    swift_getOpaqueTypeConformance2();
    sub_24B51723C();
    return (*(v21 + 8))(v7, v22);
  }

  else
  {
    sub_24B516EEC();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCE78, &qword_24B51DB98);
    v26 = sub_24B4C2DC0(&qword_2810ED740, &qword_27EFFCE78, &qword_24B51DB98, MEMORY[0x277CE1290]);
    v27 = sub_24B4C4888(&qword_2810ED7C8, MEMORY[0x277D097D8], MEMORY[0x277D097D0]);
    sub_24B5174FC();
    (*(v11 + 8))(v13, v10);
    v28 = v34;
    (*(v14 + 16))(v9, v16, v34);
    swift_storeEnumTagMultiPayload();
    v38 = v25;
    v39 = v10;
    v40 = v26;
    v41 = v27;
    swift_getOpaqueTypeConformance2();
    v29 = sub_24B4C4888(&qword_2810ED7B8, MEMORY[0x277D097F8], MEMORY[0x277D097F0]);
    v38 = v25;
    v39 = v35;
    v40 = v26;
    v41 = v29;
    swift_getOpaqueTypeConformance2();
    sub_24B51723C();
    return (*(v14 + 8))(v16, v28);
  }
}

uint64_t sub_24B4C0234@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57 = a4;
  v8 = sub_24B516EDC();
  v52 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v51 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24B4C4888(&qword_2810ED7B8, MEMORY[0x277D097F8], MEMORY[0x277D097F0]);
  v65 = a2;
  v66 = v8;
  v61 = v10;
  v62 = v8;
  v67 = a3;
  v68 = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v54 = *(OpaqueTypeMetadata2 - 8);
  v12 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v53 = &v49 - v15;
  v16 = sub_24B516E8C();
  v50 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24B4C4888(&qword_2810ED7C8, MEMORY[0x277D097D8], MEMORY[0x277D097D0]);
  v65 = a2;
  v66 = v16;
  v59 = v19;
  v60 = v16;
  v67 = a3;
  v68 = v19;
  v20 = swift_getOpaqueTypeMetadata2();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v49 - v25;
  v27 = sub_24B51724C();
  v55 = *(v27 - 8);
  v56 = v27;
  MEMORY[0x28223BE20](v27);
  v58 = &v49 - v28;
  if (a1)
  {
    v29 = v51;
    sub_24B516E9C();
    v31 = v61;
    v30 = v62;
    sub_24B5174EC();
    (*(v52 + 8))(v29, v30);
    v65 = a2;
    v66 = v30;
    v67 = a3;
    v68 = v31;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v33 = v53;
    sub_24B49711C();
    v34 = *(v54 + 8);
    v34(v14, OpaqueTypeMetadata2);
    sub_24B49711C();
    v65 = a2;
    v66 = v60;
    v67 = a3;
    v68 = v59;
    v35 = swift_getOpaqueTypeConformance2();
    sub_24B48D23C(v14, v20, OpaqueTypeMetadata2, v35, OpaqueTypeConformance2);
    v34(v14, OpaqueTypeMetadata2);
    v36 = v33;
    v37 = OpaqueTypeMetadata2;
  }

  else
  {
    sub_24B516EEC();
    v38 = v60;
    v54 = OpaqueTypeMetadata2;
    v39 = a2;
    v40 = a3;
    v41 = v59;
    sub_24B5174FC();
    (*(v50 + 8))(v18, v38);
    v65 = v39;
    v66 = v38;
    v67 = v40;
    v68 = v41;
    a3 = v40;
    a2 = v39;
    v42 = swift_getOpaqueTypeConformance2();
    sub_24B49711C();
    v34 = *(v21 + 8);
    v34(v24, v20);
    sub_24B49711C();
    v65 = v39;
    v66 = v62;
    v67 = a3;
    v68 = v61;
    v43 = swift_getOpaqueTypeConformance2();
    sub_24B48D144(v24, v20, v54, v42, v43);
    v34(v24, v20);
    v36 = v26;
    v37 = v20;
  }

  v34(v36, v37);
  v65 = a2;
  v66 = v60;
  v67 = a3;
  v68 = v59;
  v44 = swift_getOpaqueTypeConformance2();
  v65 = a2;
  v66 = v62;
  v67 = a3;
  v68 = v61;
  v45 = swift_getOpaqueTypeConformance2();
  v63 = v44;
  v64 = v45;
  v46 = v56;
  swift_getWitnessTable();
  v47 = v58;
  sub_24B49711C();
  return (*(v55 + 8))(v47, v46);
}

uint64_t sub_24B4C091C@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19[2] = a5;
  v8 = *a1;
  v9 = sub_24B516D4C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v13 = sub_24B5178AC();
  }

  else
  {
    v13 = sub_24B5178BC();
  }

  v19[1] = v13;
  MEMORY[0x28223BE20](v13);
  v19[-10] = a3;
  v14 = *(v8 + *MEMORY[0x277D04408]);
  v15 = v14[2];
  *&v19[-9] = v14[1];
  v19[-7] = a4;
  v16 = v14[3];
  v17 = v14[4];
  *&v19[-6] = v15;
  *&v19[-4] = v16;
  *&v19[-2] = v17;
  swift_getKeyPath();
  sub_24B5179CC();

  sub_24B51737C();
  sub_24B516D2C();
  sub_24B516D1C();
  sub_24B516D3C();
  sub_24B5175FC();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_24B4C0B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  LODWORD(v98) = a3;
  v97 = a2;
  v107 = a5;
  v106 = sub_24B516E5C();
  v91 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v90 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCEF0, &qword_24B51DDB8);
  MEMORY[0x28223BE20](v103);
  v105 = &v87 - v9;
  v96 = sub_24B516DDC();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v108 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCEF8, &unk_24B51DDC0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v100 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v116 = &v87 - v14;
  v104 = sub_24B516ECC();
  v89 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v88 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCE50, &qword_24B51DB70);
  MEMORY[0x28223BE20](v16 - 8);
  v102 = &v87 - v17;
  v18 = *(a4 + 72);
  v110 = *(a4 + 64);
  v19 = *(a4 + 88);
  v114 = *(a4 + 80);
  v115 = v18;
  v113 = v19;
  v120 = v110;
  v121 = v18;
  v122 = v114;
  v123 = v19;
  v20 = *(a4 + 16);
  v111 = *(a4 + 48);
  v112 = v20;
  v119[0] = v20;
  v119[1] = v111;
  v21 = type metadata accessor for NewAndFeaturedDataItem(0, v119);
  v92 = *(v21 - 1);
  v22 = *(v92 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v109 = &v87 - v24;
  v25 = *(a4 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v23);
  v28 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = *(a4 + 32);
  v101 = *(v118 - 1);
  MEMORY[0x28223BE20](v27);
  v30 = &v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_24B4B5580(a4);
  v32 = a1 + v21[21];
  v117 = v30;
  v31(v32);

  (*(v25 + 16))(v28, v5, a4);
  v33 = v92;
  v34 = *(v92 + 16);
  v99 = a1;
  v34(v109, a1, v21);
  v35 = (*(v25 + 80) + 112) & ~*(v25 + 80);
  v36 = (v26 + *(v33 + 80) + v35) & ~*(v33 + 80);
  v37 = (v22 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  *(v38 + 16) = v112;
  v39 = *(a4 + 40);
  *(v38 + 32) = v118;
  *(v38 + 40) = v39;
  v93 = v39;
  *(v38 + 48) = v111;
  v41 = v114;
  v40 = v115;
  *(v38 + 64) = v110;
  *(v38 + 72) = v40;
  v42 = v113;
  *(v38 + 80) = v41;
  *(v38 + 88) = v42;
  v44 = *(a4 + 96);
  v43 = *(a4 + 104);
  *(v38 + 96) = v44;
  *(v38 + 104) = v43;
  v94 = v43;
  (*(v25 + 32))(v38 + v35, v28, a4);
  v45 = v38 + v36;
  v46 = v21;
  (*(v33 + 32))(v45, v109, v21);
  *(v38 + v37) = v97;
  v47 = v95;
  v48 = *(v95 + 56);
  v49 = v96;
  v50 = v48(v116, 1, 1);
  if (v98)
  {
    v109 = &v87;
    MEMORY[0x28223BE20](v50);
    v98 = &v87 - 16;
    v51 = v118;
    *&v52 = v118;
    *(&v52 + 1) = v93;
    *(&v87 - 6) = v52;
    v53 = v111;
    *(&v87 - 7) = v112;
    v78 = v53;
    v79 = v110;
    v80 = v115;
    v81 = v114;
    v82 = v113;
    v83 = v44;
    v84 = v94;
    v85 = v117;
    v54 = v21[22];
    v115 = v44;
    v55 = *(v47 + 16);
    v56 = v99;
    v55(v108, v99 + v54, v49);
    v57 = v56 + v21[23];
    v58 = v100;
    v55(v100, v57, v49);
    v59 = v51;
    (v48)(v58, 0, 1, v49);

    v85 = v115;
    v60 = v90;
    sub_24B516E4C();
    v61 = v91;
    v62 = v106;
    (*(v91 + 16))(v105, v60, v106);
    swift_storeEnumTagMultiPayload();
    sub_24B4C4888(&qword_2810ED7C0, MEMORY[0x277D097E8], MEMORY[0x277D097E0]);
    sub_24B4C4888(&qword_2810ED7E0, MEMORY[0x277D09720], MEMORY[0x277D09718]);
    v63 = v102;
    sub_24B51723C();

    (*(v61 + 8))(v60, v62);
  }

  else
  {
    v64 = v44;
    v65 = *(v47 + 16);
    v66 = v99;
    v67 = v49;
    v65(v108, v99 + v46[22], v49);
    v68 = v100;
    v65(v100, v66 + v46[23], v67);
    v69 = (v48)(v68, 0, 1, v67);
    v70 = MEMORY[0x28223BE20](v69);
    v59 = v118;
    *&v71 = v118;
    *(&v71 + 1) = v93;
    v72 = v112;
    *(&v87 - 6) = v71;
    *(&v87 - 7) = v72;
    v73 = MEMORY[0x28223BE20](v70);
    MEMORY[0x28223BE20](v73);
    v86 = 0;

    v85 = MEMORY[0x277CE1410];
    v83 = v64;
    v84 = MEMORY[0x277CE1410];
    v81 = MEMORY[0x277CE1428];
    v82 = MEMORY[0x277CE1428];
    v79 = &v83;
    v80 = v59;
    *&v78 = &v83;
    *(&v78 + 1) = sub_24B4C4F78;
    v74 = v88;
    sub_24B516EBC();
    v75 = v89;
    v76 = v104;
    (*(v89 + 16))(v105, v74, v104);
    swift_storeEnumTagMultiPayload();
    sub_24B4C4888(&qword_2810ED7C0, MEMORY[0x277D097E8], MEMORY[0x277D097E0]);
    sub_24B4C4888(&qword_2810ED7E0, MEMORY[0x277D09720], MEMORY[0x277D09718]);
    v63 = v102;
    sub_24B51723C();

    (*(v75 + 8))(v74, v76);
  }

  sub_24B49AA90(v63, v107, &qword_27EFFCE50, &qword_24B51DB70);
  return (*(v101 + 8))(v117, v59);
}

uint64_t sub_24B4C16EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = sub_24B517A0C();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24B517A2C();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a3[3];
  v17 = a3[4];
  v61 = a3[1];
  v62 = v16;
  v18 = a3[5];
  v63 = v17;
  v64 = v18;
  v19 = (a1 + *(type metadata accessor for NewAndFeaturedDataItem(0, &v61) + 124));
  v20 = v19[1];
  if (v20)
  {
    v21 = v19[13];
    v48 = v19[12];
    v49 = v21;
    v54 = v12;
    v55 = a4;
    v22 = v19[11];
    v45 = v19[10];
    v46 = v22;
    v23 = v19[8];
    v24 = v19[9];
    v25 = v19[7];
    v47 = v19[6];
    v26 = v19[4];
    v27 = v19[5];
    v50 = v5;
    v28 = *v19;
    v52 = v20;
    v53 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC620, &qword_24B51A9C0);
    inited = swift_initStackObject();
    v30 = inited;
    *(inited + 16) = xmmword_24B51DB00;
    v51 = v15;
    *(inited + 32) = 1701667182;
    v31 = MEMORY[0x277D837D0];
    if (v27)
    {
      v32 = v26;
    }

    else
    {
      v32 = 0;
    }

    v33 = 0xE000000000000000;
    if (v27)
    {
      v33 = v27;
    }

    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = v32;
    *(inited + 56) = v33;
    *(inited + 72) = v31;
    strcpy((inited + 80), "impressionType");
    *(inited + 95) = -18;
    *(inited + 96) = v23;
    *(inited + 104) = v24;
    *(inited + 120) = v31;
    *(inited + 128) = 0x6973736572706D69;
    v34 = MEMORY[0x277D83B88];
    *(inited + 136) = 0xEF7865646E496E6FLL;
    *(inited + 144) = a2;
    *(inited + 168) = v34;
    *(inited + 176) = 0x657079546469;
    v35 = v45;
    v36 = v46;
    *(inited + 184) = 0xE600000000000000;
    *(inited + 192) = v35;
    *(inited + 200) = v36;
    *(inited + 216) = v31;
    *(inited + 224) = 0x54746E65746E6F63;
    *(inited + 232) = 0xEB00000000657079;
    *(inited + 240) = v47;
    *(inited + 248) = v25;
    *(inited + 264) = v31;
    *(inited + 272) = 0xD000000000000013;
    *(inited + 312) = v31;
    v37 = v48;
    v38 = v49;
    *(inited + 280) = 0x800000024B5277A0;
    *(inited + 288) = v37;
    *(inited + 296) = v38;

    sub_24B4A06C8(v30);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC628, &unk_24B51DC90);
    swift_arrayDestroy();
    sub_24B4B54BC(a3);
    swift_getKeyPath();
    sub_24B5179BC();

    v61 = v56;
    v62 = v57;
    v63 = v58;
    v64 = v59;
    v65 = v60;

    sub_24B488FA8(&v61);

    sub_24B517A1C();
    sub_24B5179FC();
    v39 = MEMORY[0x277D84F90];
    sub_24B4A06C8(MEMORY[0x277D84F90]);
    sub_24B4A06C8(v39);
    v40 = v55;
    sub_24B517A3C();
    v41 = sub_24B517A4C();
    return (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
  }

  else
  {
    v43 = sub_24B517A4C();
    return (*(*(v43 - 8) + 56))(a4, 1, 1, v43);
  }
}

uint64_t sub_24B4C1B08(uint64_t a1, uint64_t a2)
{
  v3 = sub_24B516E7C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_24B4C4888(&qword_2810ED7D8, MEMORY[0x277D097B8], MEMORY[0x277D097C0]), v7 = sub_24B517A8C(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_24B4C4888(&qword_2810ED7D0, MEMORY[0x277D097B8], MEMORY[0x277D097C8]);
      v15 = sub_24B517AAC();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_24B4C1D20(char a1)
{
  v2 = sub_24B51705C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCE60, &qword_24B51DB80);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  sub_24B4C2288(a1 & 1);
  sub_24B51704C();
  sub_24B4C2AC4();
  sub_24B51769C();
  (*(v3 + 8))(v5, v2);
  return sub_24B49689C(v8, &qword_27EFFCE60, &qword_24B51DB80);
}

uint64_t sub_24B4C1E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, __int128 a11, __int128 a12)
{
  *(&v31 + 1) = a7;
  *&v31 = a6;
  v35 = a4;
  v38 = a3;
  v36 = a2;
  v37 = a1;
  v32 = *(&a12 + 1);
  v34 = a10;
  v33 = a9;
  *&v42 = a5;
  *(&v42 + 1) = *(&a10 + 1);
  v43 = a11;
  v40 = type metadata accessor for NewAndFeaturedAction(0, &v42);
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v16 = &v30 - v15;
  *&v42 = a4;
  *(&v42 + 1) = a5;
  v43 = v31;
  *&v44 = a8;
  *(&v44 + 1) = a9;
  v45 = a10;
  v46 = a11;
  v47 = a12;
  v17 = type metadata accessor for NewAndFeaturedView(0, &v42);
  v37 = sub_24B4B54BC(v17);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCEA0, &unk_24B5203F0);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v19 = &v16[*(TupleTypeMetadata3 + 48)];
  v20 = *(TupleTypeMetadata3 + 64);
  v21 = v36;
  (*(*(a5 - 8) + 16))(v16, v36, a5);
  *&v42 = v35;
  *(&v42 + 1) = a5;
  *&v43 = a8;
  *(&v43 + 1) = v33;
  *&v44 = v34;
  *(&v44 + 1) = *(&a10 + 1);
  v45 = a11;
  v22 = (v21 + *(type metadata accessor for NewAndFeaturedDataItem(0, &v42) + 124));
  v24 = v22[5];
  v46 = v22[4];
  v23 = v46;
  v47 = v24;
  v48 = v22[6];
  v25 = v48;
  v26 = v22[1];
  v42 = *v22;
  v43 = v26;
  v27 = v22[3];
  v44 = v22[2];
  v28 = v44;
  v45 = v27;
  *v19 = v42;
  *(v19 + 1) = v26;
  *(v19 + 4) = v23;
  *(v19 + 5) = v24;
  *(v19 + 2) = v28;
  *(v19 + 3) = v27;
  *(v19 + 6) = v25;
  *&v16[v20] = v38;
  (*(*(TupleTypeMetadata3 - 8) + 56))(v16, 0, 1, TupleTypeMetadata3);
  sub_24B496724(&v42, v41, &qword_27EFFCEA0, &unk_24B5203F0);
  sub_24B5179DC();

  return (*(v39 + 8))(v16, v40);
}

uint64_t sub_24B4C21A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B49711C();
  sub_24B49711C();
  return (*(v5 + 8))(v7, a4);
}

uint64_t sub_24B4C2288(char a1)
{
  v2 = sub_24B516E5C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCEF0, &qword_24B51DDB8);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v9 = sub_24B516ECC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_24B516E3C();
    (*(v3 + 16))(v8, v5, v2);
    swift_storeEnumTagMultiPayload();
    sub_24B4C4888(&qword_2810ED7C0, MEMORY[0x277D097E8], MEMORY[0x277D097E0]);
    sub_24B4C4888(&qword_2810ED7E0, MEMORY[0x277D09720], MEMORY[0x277D09718]);
    sub_24B51723C();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    sub_24B516EAC();
    (*(v10 + 16))(v8, v12, v9);
    swift_storeEnumTagMultiPayload();
    sub_24B4C4888(&qword_2810ED7C0, MEMORY[0x277D097E8], MEMORY[0x277D097E0]);
    sub_24B4C4888(&qword_2810ED7E0, MEMORY[0x277D09720], MEMORY[0x277D09718]);
    sub_24B51723C();
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_24B4C25D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v5 = sub_24B51733C();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24B51735C();
  v21 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1;
  v24 = v7;
  v25 = a2;
  v26 = MEMORY[0x277CDE478];
  v10 = MEMORY[0x277CDE478];
  v20 = MEMORY[0x277CDEB68];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v12 = *(OpaqueTypeMetadata2 - 8);
  v13 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v20 - v16;
  sub_24B51732C();
  sub_24B51734C();
  sub_24B5175DC();
  (*(v21 + 8))(v9, v6);
  v23 = a1;
  v24 = v6;
  v25 = a2;
  v26 = v10;
  swift_getOpaqueTypeConformance2();
  sub_24B49711C();
  v18 = *(v12 + 8);
  v18(v15, OpaqueTypeMetadata2);
  sub_24B49711C();
  return (v18)(v17, OpaqueTypeMetadata2);
}

uint64_t sub_24B4C286C(uint64_t a1)
{
  v2 = sub_24B51701C();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_24B5170BC();
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

unint64_t sub_24B4C29D8()
{
  result = qword_2810ED788;
  if (!qword_2810ED788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE50, &qword_24B51DB70);
    sub_24B4C4888(&qword_2810ED7C0, MEMORY[0x277D097E8], MEMORY[0x277D097E0]);
    sub_24B4C4888(&qword_2810ED7E0, MEMORY[0x277D09720], MEMORY[0x277D09718]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ED788);
  }

  return result;
}

unint64_t sub_24B4C2AC4()
{
  result = qword_2810ED758;
  if (!qword_2810ED758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE60, &qword_24B51DB80);
    sub_24B4C29D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ED758);
  }

  return result;
}

unint64_t sub_24B4C2B48()
{
  result = qword_2810ED778;
  if (!qword_2810ED778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE68, &qword_24B51DB88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE70, &qword_24B51DB90);
    sub_24B4C2C10();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ED778);
  }

  return result;
}

unint64_t sub_24B4C2C10()
{
  result = qword_2810ED780;
  if (!qword_2810ED780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE70, &qword_24B51DB90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE78, &qword_24B51DB98);
    sub_24B516E8C();
    sub_24B4C2DC0(&qword_2810ED740, &qword_27EFFCE78, &qword_24B51DB98, MEMORY[0x277CE1290]);
    sub_24B4C4888(&qword_2810ED7C8, MEMORY[0x277D097D8], MEMORY[0x277D097D0]);
    swift_getOpaqueTypeConformance2();
    sub_24B516EDC();
    sub_24B4C4888(&qword_2810ED7B8, MEMORY[0x277D097F8], MEMORY[0x277D097F0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ED780);
  }

  return result;
}

uint64_t sub_24B4C2DC0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE60, &qword_24B51DB80);
    sub_24B4C2AC4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B4C2E64()
{
  result = qword_2810ED790;
  if (!qword_2810ED790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE48, &qword_24B51DB68);
    sub_24B4C2EF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ED790);
  }

  return result;
}

unint64_t sub_24B4C2EF0()
{
  result = qword_2810ED798;
  if (!qword_2810ED798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE80, &qword_24B51DBA0);
    sub_24B4C2F7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ED798);
  }

  return result;
}

unint64_t sub_24B4C2F7C()
{
  result = qword_2810ED748;
  if (!qword_2810ED748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE88, &qword_24B51DBA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ED748);
  }

  return result;
}

uint64_t sub_24B4C2FF8()
{
  v13 = v0[3];
  v1 = v0[5];
  v12 = v0[4];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[9];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[12];
  v9 = v0[13];
  v15[0] = v0[2];
  v14 = v15[0];
  v15[1] = v13;
  v15[2] = v12;
  v15[3] = v1;
  v15[4] = v2;
  v15[5] = v3;
  v15[6] = v4;
  v15[7] = v5;
  v15[8] = v7;
  v15[9] = v6;
  v15[10] = v8;
  v15[11] = v9;
  v10 = *(type metadata accessor for NewAndFeaturedView(0, v15) - 8);
  return sub_24B4B9708(v0 + ((*(v10 + 80) + 112) & ~*(v10 + 80)), v14, v13, v12, v1, v2, v3, v4, v5, v7, v6, v8, v9);
}

void sub_24B4C3138(uint64_t a1)
{
  sub_24B4C33D8(319, &qword_2810ED7B0, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v3 <= 0x3F)
  {
    v30 = 0;
    v37 = v2;
    v4 = *(a1 + 48);
    v5 = *(a1 + 64);
    v6 = *(a1 + 72);
    v7 = *(a1 + 80);
    v8 = *(a1 + 88);
    v23 = *(a1 + 16);
    v24 = v23;
    v22 = v4;
    v25 = v4;
    v26 = v5;
    v27 = v6;
    v28 = v7;
    v29 = v8;
    type metadata accessor for NewAndFeaturedFeature(255, &v24);
    swift_getWitnessTable();
    sub_24B5179EC();
    swift_getWitnessTable();
    v9 = sub_24B516F8C();
    if (v10 <= 0x3F)
    {
      v31 = 0;
      v38 = v9;
      swift_getFunctionTypeMetadata1();
      v11 = sub_24B516C9C();
      if (v12 <= 0x3F)
      {
        v32 = 0;
        v39 = v11;
        v24 = v23;
        v25 = v22;
        v26 = v5;
        v27 = v6;
        v28 = v7;
        v29 = v8;
        v13 = type metadata accessor for NewAndFeaturedDataItem(255, &v24);
        swift_getFunctionTypeMetadata1();
        v14 = sub_24B516C9C();
        if (v15 <= 0x3F)
        {
          v33 = 0;
          v40 = v14;
          *&v24 = v13;
          swift_getExtendedExistentialTypeMetadata();
          v16 = sub_24B516C9C();
          if (v17 <= 0x3F)
          {
            v34 = 0;
            v41 = v16;
            v18 = sub_24B516B8C();
            if (v19 <= 0x3F)
            {
              v35 = 0;
              v42 = v18;
              sub_24B4C33D8(319, &qword_2810EED88, MEMORY[0x277CC8C40], MEMORY[0x277D83D88]);
              if (v21 <= 0x3F)
              {
                v36 = 0;
                v43 = v20;
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_24B4C33D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24B4C343C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24B51713C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCE40, &unk_24B51DB50);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  sub_24B496724(v2, &v17 - v9, &qword_27EFFCE40, &unk_24B51DB50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24B51701C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_24B517C6C();
    v14 = sub_24B51736C();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_24B4C3B24(0x5463696D616E7944, 0xEF657A6953657079, &v18);
      _os_log_impl(&dword_24B479000, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x24C242250](v16, -1, -1);
      MEMORY[0x24C242250](v15, -1, -1);
    }

    sub_24B51712C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_24B4C36C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC630, &qword_24B51A9C8);
  v33 = v4;
  result = sub_24B517D3C();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_24B4A0BC0(v24, v34);
      }

      else
      {
        sub_24B4A0BD8(v24, v34);
      }

      sub_24B517F7C();
      sub_24B517B3C();
      result = sub_24B517FBC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_24B4A0BC0(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

void *sub_24B4C3980()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC630, &qword_24B51A9C8);
  v2 = *v0;
  v3 = sub_24B517D2C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_24B4A0BD8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_24B4A0BC0(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_24B4C3B24(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24B4C3BF0(v11, 0, 0, 1, a1, a2);
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
    sub_24B4A0BD8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_24B4C3BF0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24B4C3CFC(a5, a6);
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
    result = sub_24B517D1C();
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

void *sub_24B4C3CFC(uint64_t a1, unint64_t a2)
{
  v3 = sub_24B4C3D48(a1, a2);
  sub_24B4C3E78(&unk_285E73E68);
  return v3;
}

void *sub_24B4C3D48(uint64_t a1, unint64_t a2)
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

  v6 = sub_24B4C3F64(v5, 0);
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

  result = sub_24B517D1C();
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
        v10 = sub_24B517B4C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24B4C3F64(v10, 0);
        result = sub_24B517CEC();
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

uint64_t sub_24B4C3E78(uint64_t result)
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

  result = sub_24B4C3FD8(result, v11, 1, v3);
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

void *sub_24B4C3F64(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCEB0, &qword_24B51DCD8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24B4C3FD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCEB0, &qword_24B51DCD8);
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

void *sub_24B4C40CC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24B4C40EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24B4C40EC(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCF20, qword_24B51DE08);
  v10 = *(sub_24B51788C() - 8);
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
  v15 = *(sub_24B51788C() - 8);
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

uint64_t sub_24B4C42C4@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_24B4A0BD8(*(v3 + 56) + 32 * v13, v21);
    *&v22 = v16;
    *(&v22 + 1) = v15;
    sub_24B4A0BC0(v21, &v23);

    v18 = *(&v22 + 1);
    v19 = v22;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      *&v21[0] = v19;
      *(&v21[0] + 1) = v18;
      v21[1] = v23;
      v21[2] = v24;
      v20(v21);
      return sub_24B49689C(v21, &qword_27EFFCE98, &unk_24B51DCA0);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24B4C4458(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_24B496398(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_24B4C449C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_24B49627C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_24B4C4570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = v3[4];
  v21 = v3[3];
  v19 = v3[5];
  v5 = v3[6];
  v6 = v3[7];
  v7 = v3[8];
  v8 = v3[9];
  v10 = v3[10];
  v9 = v3[11];
  v11 = v3[12];
  v12 = v3[13];
  v25[0] = v3[2];
  v4 = v25[0];
  v25[1] = v21;
  v25[2] = v20;
  v25[3] = v19;
  v25[4] = v5;
  v25[5] = v6;
  v25[6] = v7;
  v25[7] = v8;
  v25[8] = v10;
  v25[9] = v9;
  v25[10] = v11;
  v25[11] = v12;
  v13 = *(type metadata accessor for NewAndFeaturedView(0, v25) - 8);
  v14 = (*(v13 + 80) + 112) & ~*(v13 + 80);
  *&v18 = v10;
  *(&v18 + 1) = v9;
  *&v17 = v7;
  *(&v17 + 1) = v8;
  *&v16 = v5;
  *(&v16 + 1) = v6;
  return sub_24B4BEBC0(a1, a2, v3 + v14, *(v3 + v14 + *(v13 + 64)), v4, v21, v20, v19, a3, v16, v17, v18, v11, v12);
}

uint64_t sub_24B4C467C()
{
  v1 = *(v0 + 40);
  v19 = *(v0 + 32);
  v21 = *(v0 + 48);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  v7 = *(v0 + 104);
  v22 = *(v0 + 16);
  v20 = v22;
  v18 = v22;
  *&v23 = v19;
  *(&v23 + 1) = v1;
  v24 = v21;
  v25 = v2;
  v26 = v3;
  v27 = v4;
  v28 = v5;
  v29 = v6;
  v30 = v7;
  v8 = *(type metadata accessor for NewAndFeaturedView(0, &v22) - 8);
  v9 = *(v8 + 80);
  v10 = *(v8 + 64);
  v23 = v21;
  v22 = v18;
  v11 = (v9 + 112) & ~v9;
  *&v24 = v2;
  *(&v24 + 1) = v3;
  v25 = v4;
  v26 = v5;
  v12 = *(type metadata accessor for NewAndFeaturedDataItem(0, &v22) - 8);
  v13 = (v11 + v10 + *(v12 + 80)) & ~*(v12 + 80);
  *&v17 = v6;
  *(&v17 + 1) = v7;
  *&v16 = v4;
  *(&v16 + 1) = v5;
  *&v15 = v2;
  *(&v15 + 1) = v3;
  return sub_24B4C1E94(v0 + v11, v0 + v13, *(v0 + ((*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8)), v20, *(&v18 + 1), v19, v1, v21, *(&v21 + 1), v15, v16, v17);
}

uint64_t sub_24B4C4888(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_24Tm()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  v7 = *(v0 + 104);
  v26 = *(v0 + 16);
  v27 = v26;
  *&v28 = v2;
  *(&v28 + 1) = v1;
  v29 = v3;
  v30 = v4;
  v31 = v5;
  v32 = v6;
  v24 = *(v0 + 88);
  v25 = v3;
  v33 = v24;
  v34 = v7;
  v8 = type metadata accessor for NewAndFeaturedView(0, &v27);
  v9 = v0 + ((*(*(v8 - 1) + 80) + 112) & ~*(*(v8 - 1) + 80));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCE40, &unk_24B51DB50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_24B51701C();
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  else
  {
  }

  sub_24B4956A8(*(v9 + v8[29]), *(v9 + v8[29] + 8));
  v11 = v8[30];
  swift_getFunctionTypeMetadata1();
  v12 = sub_24B516C9C();
  (*(*(v12 - 8) + 8))(v9 + v11, v12);
  v13 = v8[31];
  v27 = v26;
  v28 = v25;
  *&v29 = v4;
  *(&v29 + 1) = v5;
  v30 = v6;
  v31 = v24;
  v14 = type metadata accessor for NewAndFeaturedDataItem(255, &v27);
  swift_getFunctionTypeMetadata1();
  v15 = sub_24B516C9C();
  (*(*(v15 - 8) + 8))(v9 + v13, v15);
  v16 = v8[32];
  *&v27 = v14;
  swift_getExtendedExistentialTypeMetadata();
  v17 = sub_24B516C9C();
  (*(*(v17 - 8) + 8))(v9 + v16, v17);
  v18 = v8[33];
  v19 = sub_24B516B8C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 8);
  v21(v9 + v18, v19);
  v22 = v8[34];
  if (!(*(v20 + 48))(v9 + v22, 1, v19))
  {
    v21(v9 + v22, v19);
  }

  return swift_deallocObject();
}

uint64_t sub_24B4C4C14()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v8 = v0[8];
  v7 = v0[9];
  v14 = v0[11];
  v15 = v0[10];
  v12 = v0[13];
  v13 = v0[12];
  v16 = v0[2];
  v1 = v16;
  v17 = v2;
  v18 = v3;
  v19 = v4;
  v20 = v5;
  v21 = v6;
  v22 = v8;
  v23 = v7;
  v24 = v15;
  v25 = v14;
  v26 = v13;
  v27 = v12;
  v9 = *(type metadata accessor for NewAndFeaturedView(0, &v16) - 8);
  v10 = *(v0 + ((*(v9 + 80) + 112) & ~*(v9 + 80)) + *(v9 + 64));
  v16 = v1;
  v17 = v2;
  v18 = v3;
  v19 = v4;
  v20 = v5;
  v21 = v6;
  v22 = v8;
  v23 = v7;
  v24 = v15;
  v25 = v14;
  v26 = v13;
  v27 = v12;
  type metadata accessor for NewAndFeaturedView(0, &v16);
  return sub_24B4C1D20(v10);
}

unint64_t sub_24B4C4D30()
{
  result = qword_2810ED6D0;
  if (!qword_2810ED6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCF00, &qword_24B51DDE8);
    sub_24B4C4DBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ED6D0);
  }

  return result;
}

unint64_t sub_24B4C4DBC()
{
  result = qword_2810ED728;
  if (!qword_2810ED728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ED728);
  }

  return result;
}

uint64_t sub_24B4C4F10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24B4C4F90()
{
  v1 = 0x6E776F6E6B6E75;
  if (*v0 != 1)
  {
    v1 = 0x656C6269736976;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6564646968;
  }
}

uint64_t sub_24B4C4FE8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B4C6070(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B4C5010(uint64_t a1)
{
  v2 = sub_24B4C555C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4C504C(uint64_t a1)
{
  v2 = sub_24B4C555C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4C5088(uint64_t a1)
{
  v2 = sub_24B4C5658();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4C50C4(uint64_t a1)
{
  v2 = sub_24B4C5658();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4C5100(uint64_t a1)
{
  v2 = sub_24B4C5604();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4C513C(uint64_t a1)
{
  v2 = sub_24B4C5604();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4C5178(uint64_t a1)
{
  v2 = sub_24B4C55B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4C51B4(uint64_t a1)
{
  v2 = sub_24B4C55B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CreatePlanBannerVisibility.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCF28, &qword_24B51DE20);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCF30, &qword_24B51DE28);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCF38, &qword_24B51DE30);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCF40, &qword_24B51DE38);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4C555C();
  sub_24B517FDC();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_24B4C5604();
      v9 = v21;
      sub_24B517E3C();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_24B4C55B0();
      v9 = v24;
      sub_24B517E3C();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_24B4C5658();
    sub_24B517E3C();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_24B4C555C()
{
  result = qword_27EFFCF48;
  if (!qword_27EFFCF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCF48);
  }

  return result;
}

unint64_t sub_24B4C55B0()
{
  result = qword_27EFFCF50;
  if (!qword_27EFFCF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCF50);
  }

  return result;
}

unint64_t sub_24B4C5604()
{
  result = qword_27EFFCF58;
  if (!qword_27EFFCF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCF58);
  }

  return result;
}

unint64_t sub_24B4C5658()
{
  result = qword_27EFFCF60;
  if (!qword_27EFFCF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCF60);
  }

  return result;
}

uint64_t CreatePlanBannerVisibility.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCF68, &qword_24B51DE40);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCF70, &qword_24B51DE48);
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCF78, &qword_24B51DE50);
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCF80, &unk_24B51DE58);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_24B4C555C();
  v15 = v36;
  sub_24B517FCC();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_24B517E1C();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_24B4A39B8();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_24B517D0C();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0);
      *v24 = &type metadata for CreatePlanBannerVisibility;
      sub_24B517D8C();
      sub_24B517CFC();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_24B4C5604();
          sub_24B517D7C();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_24B4C55B0();
          v26 = v17;
          sub_24B517D7C();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_24B4C5658();
        sub_24B517D7C();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t CreatePlanBannerVisibility.hashValue.getter()
{
  v1 = *v0;
  sub_24B517F7C();
  MEMORY[0x24C241D70](v1);
  return sub_24B517FBC();
}

unint64_t sub_24B4C5CC4()
{
  result = qword_27EFFCF88;
  if (!qword_27EFFCF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCF88);
  }

  return result;
}

unint64_t sub_24B4C5D5C()
{
  result = qword_27EFFCF90;
  if (!qword_27EFFCF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCF90);
  }

  return result;
}

unint64_t sub_24B4C5DB4()
{
  result = qword_27EFFCF98;
  if (!qword_27EFFCF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCF98);
  }

  return result;
}

unint64_t sub_24B4C5E0C()
{
  result = qword_27EFFCFA0;
  if (!qword_27EFFCFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCFA0);
  }

  return result;
}

unint64_t sub_24B4C5E64()
{
  result = qword_27EFFCFA8;
  if (!qword_27EFFCFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCFA8);
  }

  return result;
}

unint64_t sub_24B4C5EBC()
{
  result = qword_27EFFCFB0;
  if (!qword_27EFFCFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCFB0);
  }

  return result;
}

unint64_t sub_24B4C5F14()
{
  result = qword_27EFFCFB8;
  if (!qword_27EFFCFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCFB8);
  }

  return result;
}

unint64_t sub_24B4C5F6C()
{
  result = qword_27EFFCFC0;
  if (!qword_27EFFCFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCFC0);
  }

  return result;
}

unint64_t sub_24B4C5FC4()
{
  result = qword_27EFFCFC8;
  if (!qword_27EFFCFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCFC8);
  }

  return result;
}

unint64_t sub_24B4C601C()
{
  result = qword_27EFFCFD0;
  if (!qword_27EFFCFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCFD0);
  }

  return result;
}

uint64_t sub_24B4C6070(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6564646968 && a2 == 0xE600000000000000;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C6269736976 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B517EEC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24B4C618C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCFE0, qword_24B51E338);
  sub_24B496A60(&qword_2810ED738, &qword_27EFFCFE0, qword_24B51E338, MEMORY[0x277D04410]);

  return sub_24B516F7C();
}

uint64_t sub_24B4C622C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCBE0, &qword_24B51CCA8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCBD8, &qword_24B51CCA0);
  swift_getFunctionTypeMetadata2();
  return sub_24B516C7C();
}

uint64_t BrowseView.init(store:artworkViewBuilder:canvasViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *a9 = sub_24B48D8D8;
  *(a9 + 8) = v18;
  *(a9 + 16) = 0;
  v22[0] = a7;
  v22[1] = a8;
  v22[2] = a10;
  v22[3] = a11;
  type metadata accessor for BrowseView(0, v22);

  v19 = sub_24B4C622C(a3, a4, a7);
  a5(v19);
}

uint64_t BrowseView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v45 = *(a1 - 1);
  v52 = *(v45 + 64);
  MEMORY[0x28223BE20](a1);
  v51 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCFD8, &qword_24B51E2B0);
  v4 = a1[3];
  sub_24B51724C();
  sub_24B516CFC();
  sub_24B51724C();
  v5 = sub_24B51773C();
  v46 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  v37 = v5;
  v8 = sub_24B51702C();
  v47 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v53 = &v35 - v9;
  v10 = sub_24B496A60(&qword_2810ED768, &qword_27EFFCFD8, &qword_24B51E2B0, MEMORY[0x277CDE158]);
  v11 = a1[5];
  v67 = v10;
  v68 = v11;
  WitnessTable = swift_getWitnessTable();
  v13 = sub_24B4C6AA4();
  v65 = WitnessTable;
  v66 = v13;
  v64 = swift_getWitnessTable();
  v36 = swift_getWitnessTable();
  v62 = v36;
  v63 = MEMORY[0x277CE0790];
  v40 = v8;
  v39 = swift_getWitnessTable();
  v58 = v8;
  v59 = MEMORY[0x277D839B0];
  v60 = v39;
  v61 = MEMORY[0x277D839C8];
  v42 = MEMORY[0x277CE0E40];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v44 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v38 = &v35 - v14;
  *&v15 = a1[2];
  *(&v15 + 1) = v4;
  v50 = v15;
  *&v16 = a1[4];
  *(&v16 + 1) = v11;
  v49 = v16;
  v54 = v15;
  v55 = v16;
  v17 = v41;
  v56 = v41;
  sub_24B51772C();
  v18 = v45;
  v35 = *(v45 + 16);
  v19 = v51;
  v35(v51, v17, a1);
  v20 = (*(v18 + 80) + 48) & ~*(v18 + 80);
  v21 = swift_allocObject();
  v22 = v49;
  *(v21 + 16) = v50;
  *(v21 + 32) = v22;
  v45 = *(v18 + 32);
  (v45)(v21 + v20, v19, a1);
  v23 = v37;
  sub_24B51766C();

  (*(v46 + 8))(v7, v23);
  sub_24B4C618C();
  swift_getKeyPath();
  sub_24B5179CC();

  v57 = v58;
  v24 = v51;
  v35(v51, v17, a1);
  v25 = swift_allocObject();
  v26 = v49;
  *(v25 + 16) = v50;
  *(v25 + 32) = v26;
  (v45)(v25 + v20, v24, a1);
  v27 = v38;
  v28 = v40;
  v29 = MEMORY[0x277D839B0];
  v30 = v39;
  v31 = MEMORY[0x277D839C8];
  v32 = v53;
  sub_24B51768C();

  (*(v47 + 8))(v32, v28);
  v58 = v28;
  v59 = v29;
  v60 = v30;
  v61 = v31;
  swift_getOpaqueTypeConformance2();
  v33 = OpaqueTypeMetadata2;
  sub_24B5174CC();
  return (*(v44 + 8))(v27, v33);
}

unint64_t sub_24B4C6AA4()
{
  result = qword_2810EED30;
  if (!qword_2810EED30)
  {
    sub_24B516CFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810EED30);
  }

  return result;
}

uint64_t sub_24B4C6AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v72 = a6;
  v11 = sub_24B516CFC();
  v64 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v63 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = *(a3 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v61 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v60 = &v56 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCFD8, &qword_24B51E2B0);
  v18 = sub_24B51724C();
  v68 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v66 = v17;
  v67 = &v56 - v20;
  v59 = *(v17 - 8);
  MEMORY[0x28223BE20](v19);
  v58 = &v56 - v21;
  State = type metadata accessor for BrowseLoadState(0);
  MEMORY[0x28223BE20](State);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_24B51724C();
  v70 = *(v25 - 8);
  v71 = v25;
  MEMORY[0x28223BE20](v25);
  v27 = &v56 - v26;
  v56 = a2;
  v83[0] = a2;
  v83[1] = a3;
  v69 = a3;
  v57 = a4;
  v83[2] = a4;
  v83[3] = a5;
  v28 = a5;
  type metadata accessor for BrowseView(0, v83);
  v65 = a1;
  sub_24B4C618C();
  swift_getKeyPath();
  sub_24B5179CC();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) >= 2)
  {
    if (EnumCaseMultiPayload)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCFE8, &qword_24B5252B0);

      sub_24B4C7EC8(v24, type metadata accessor for BrowseContent);
      v40 = v60;
      v41 = v69;
      sub_24B49711C();
      v42 = v61;
      sub_24B49711C();
      v43 = sub_24B496A60(&qword_2810ED768, &qword_27EFFCFD8, &qword_24B51E2B0, MEMORY[0x277CDE158]);
      v44 = v67;
      sub_24B48D23C(v42, v66, v41, v43, v28);
      v75 = v43;
      v76 = v28;
      WitnessTable = swift_getWitnessTable();
      v46 = sub_24B4C6AA4();
      sub_24B48D144(v44, v18, v11, WitnessTable, v46);
      (*(v68 + 8))(v44, v18);
      v47 = *(v62 + 8);
      v47(v42, v41);
      v47(v40, v41);
    }

    else
    {
      MEMORY[0x28223BE20](EnumCaseMultiPayload);
      v33 = v69;
      *(&v56 - 8) = v56;
      *(&v56 - 7) = v33;
      *(&v56 - 6) = v57;
      *(&v56 - 5) = a5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCFF0, &qword_24B51E370);
      v54 = sub_24B4C7F3C();
      v55 = MEMORY[0x277CE1410];
      v52 = MEMORY[0x277CE1428];
      v53 = MEMORY[0x277CE0BC8];
      v34 = v58;
      sub_24B5172AC();

      v35 = sub_24B496A60(&qword_2810ED768, &qword_27EFFCFD8, &qword_24B51E2B0, MEMORY[0x277CDE158]);
      v37 = v66;
      v36 = v67;
      sub_24B48D144(v34, v66, v33, v35, v28);
      v73 = v35;
      v74 = v28;
      v38 = swift_getWitnessTable();
      v39 = sub_24B4C6AA4();
      sub_24B48D144(v36, v18, v11, v38, v39);
      (*(v68 + 8))(v36, v18);
      (*(v59 + 8))(v34, v37);
    }
  }

  else
  {
    v30 = v63;
    sub_24B516CEC();
    v81 = sub_24B496A60(&qword_2810ED768, &qword_27EFFCFD8, &qword_24B51E2B0, MEMORY[0x277CDE158]);
    v82 = v28;
    v31 = swift_getWitnessTable();
    v32 = sub_24B4C6AA4();
    sub_24B48D23C(v30, v18, v11, v31, v32);
    (*(v64 + 8))(v30, v11);
  }

  v79 = sub_24B496A60(&qword_2810ED768, &qword_27EFFCFD8, &qword_24B51E2B0, MEMORY[0x277CDE158]);
  v80 = v28;
  v48 = swift_getWitnessTable();
  v49 = sub_24B4C6AA4();
  v77 = v48;
  v78 = v49;
  v50 = v71;
  swift_getWitnessTable();
  sub_24B49711C();
  return (*(v70 + 8))(v27, v50);
}