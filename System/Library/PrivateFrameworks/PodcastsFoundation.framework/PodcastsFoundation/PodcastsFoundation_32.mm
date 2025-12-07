void *ServerCategory.init(id:type:attributes:relationships:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  v6[7] = a6;
  return v6;
}

uint64_t static ServerCategory.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1D9179ACC();
  }
}

uint64_t sub_1D902B718()
{
  v1 = 25705;
  v2 = 0x7475626972747461;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6974616C6572;
  }

  if (*v0)
  {
    v1 = 1701869940;
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

uint64_t sub_1D902B790@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D902EDC4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D902B7B8(uint64_t a1)
{
  v2 = sub_1D902E154();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D902B7F4(uint64_t a1)
{
  v2 = sub_1D902E154();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServerCategory.deinit()
{

  return v0;
}

uint64_t ServerCategory.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ServerCategory.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9060, &qword_1D91A80F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D902E154();
  sub_1D9179F1C();
  LOBYTE(v13) = 0;
  sub_1D91799BC();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_1D91799BC();
    v13 = *(v3 + 48);
    HIBYTE(v12) = 2;
    type metadata accessor for ServerCategoryAttributes();
    sub_1D902E530(&qword_1ECAB9068, v10, type metadata accessor for ServerCategoryAttributes, &protocol conformance descriptor for ServerCategoryAttributes);
    sub_1D91799FC();
    v13 = *(v3 + 56);
    HIBYTE(v12) = 3;
    type metadata accessor for ServerCategoryRelationships();
    sub_1D902E530(&qword_1ECAB9070, v11, type metadata accessor for ServerCategoryRelationships, &protocol conformance descriptor for ServerCategoryRelationships);
    sub_1D917999C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ServerCategory.hashValue.getter()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

uint64_t ServerCategory.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ServerCategory.init(from:)(a1);
  return v2;
}

void *ServerCategory.init(from:)(void *a1)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9078, &qword_1D91A80F8);
  v4 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v6 = &v12 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D902E154();
  sub_1D9179EEC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v14) = 0;
    v1[2] = sub_1D91798BC();
    v1[3] = v7;
    LOBYTE(v14) = 1;
    v1[4] = sub_1D91798BC();
    v1[5] = v8;
    type metadata accessor for ServerCategoryAttributes();
    v13 = 2;
    sub_1D902E530(&qword_1ECAB1948, v9, type metadata accessor for ServerCategoryAttributes, &protocol conformance descriptor for ServerCategoryAttributes);
    sub_1D91798FC();
    v1[6] = v14;
    type metadata accessor for ServerCategoryRelationships();
    v13 = 3;
    sub_1D902E530(&qword_1ECAB1820, v10, type metadata accessor for ServerCategoryRelationships, &protocol conformance descriptor for ServerCategoryRelationships);
    sub_1D917989C();
    (*(v4 + 8))(v6, v12);
    v1[7] = v14;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_1D902BF78()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

uint64_t sub_1D902BFCC(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

uint64_t sub_1D902C010(uint64_t *a1, uint64_t *a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1D9179ACC();
  }
}

uint64_t ServerCategoryAttributes.url.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ServerCategoryAttributes.color.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

void *ServerCategoryAttributes.__allocating_init(name:url:editorialArtwork:color:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  result[8] = a7;
  return result;
}

void *ServerCategoryAttributes.init(name:url:editorialArtwork:color:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v7[5] = a4;
  v7[6] = a5;
  v7[7] = a6;
  v7[8] = a7;
  return v7;
}

unint64_t sub_1D902C12C()
{
  v1 = 1701667182;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x726F6C6F63;
  }

  if (*v0)
  {
    v1 = 7107189;
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

uint64_t sub_1D902C198@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D902EF30(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D902C1C0(uint64_t a1)
{
  v2 = sub_1D902E1F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D902C1FC(uint64_t a1)
{
  v2 = sub_1D902E1F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServerCategoryAttributes.deinit()
{

  return v0;
}

uint64_t ServerCategoryAttributes.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ServerCategoryAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9080, &qword_1D91A8100);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D902E1F0();
  sub_1D9179F1C();
  v14 = 0;
  sub_1D91799BC();
  if (!v2)
  {
    v13 = 1;
    sub_1D917994C();
    v12 = *(v3 + 48);
    v11[15] = 2;
    type metadata accessor for ServerCategoryBrandLogoArtwork();
    sub_1D902E530(&qword_1ECAB9088, v10, type metadata accessor for ServerCategoryBrandLogoArtwork, &protocol conformance descriptor for ServerCategoryBrandLogoArtwork);
    sub_1D917999C();
    v11[14] = 3;
    sub_1D917994C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ServerCategoryAttributes.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ServerCategoryAttributes.init(from:)(a1);
  return v2;
}

void *ServerCategoryAttributes.init(from:)(void *a1)
{
  v3 = v1;
  v17[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9090, &qword_1D91A8108);
  v5 = *(v17[0] - 8);
  MEMORY[0x1EEE9AC00](v17[0]);
  v7 = v17 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D902E1F0();
  sub_1D9179EEC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v8 = v5;
    v21 = 0;
    v9 = v17[0];
    v1[2] = sub_1D91798BC();
    v1[3] = v10;
    v20 = 1;
    v1[4] = sub_1D917984C();
    v1[5] = v11;
    type metadata accessor for ServerCategoryBrandLogoArtwork();
    v19 = 2;
    sub_1D902E530(&qword_1ECAB1428, v12, type metadata accessor for ServerCategoryBrandLogoArtwork, &protocol conformance descriptor for ServerCategoryBrandLogoArtwork);
    sub_1D917989C();
    v1[6] = v17[1];
    v18 = 3;
    v14 = sub_1D917984C();
    v16 = v15;
    (*(v8 + 8))(v7, v9);
    v3[7] = v14;
    v3[8] = v16;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t sub_1D902C8C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E6572646C696863;
  }

  else
  {
    v3 = 0x746E65726170;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6E6572646C696863;
  }

  else
  {
    v5 = 0x746E65726170;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D9179ACC();
  }

  return v8 & 1;
}

uint64_t sub_1D902C964()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D902C9E4(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D902CA50(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

void sub_1D902CACC(char *a2@<X8>)
{
  v3 = sub_1D917980C();

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

void sub_1D902CB2C(uint64_t *a1@<X8>)
{
  v2 = 0x746E65726170;
  if (*v1)
  {
    v2 = 0x6E6572646C696863;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D902CB68()
{
  if (*v0)
  {
    return 0x6E6572646C696863;
  }

  else
  {
    return 0x746E65726170;
  }
}

void sub_1D902CBA0(char *a3@<X8>)
{
  v4 = sub_1D917980C();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_1D902CC04(uint64_t a1)
{
  v2 = sub_1D902E268();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D902CC40(uint64_t a1)
{
  v2 = sub_1D902E268();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServerCategoryRelationships.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ServerCategoryRelationships.init(from:)(a1);
  return v2;
}

void *ServerCategoryRelationships.init(from:)(void *a1)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9098, &qword_1D91A8110);
  v4 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v6 = &v12 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D902E268();
  sub_1D9179EEC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v7 = v4;
    type metadata accessor for ServerCategoryParentRelationshipContainer();
    v13 = 0;
    sub_1D902E530(&qword_1ECAB11A0, v8, type metadata accessor for ServerCategoryParentRelationshipContainer, &protocol conformance descriptor for ServerCategoryParentRelationshipContainer);
    v9 = v12;
    sub_1D917989C();
    *(v1 + 16) = v14;
    type metadata accessor for ServerCategoryChildrenRelationshipContainer();
    v13 = 1;
    sub_1D902E530(&qword_1ECAB1168, v10, type metadata accessor for ServerCategoryChildrenRelationshipContainer, &protocol conformance descriptor for ServerCategoryChildrenRelationshipContainer);
    sub_1D917989C();
    (*(v7 + 8))(v6, v9);
    *(v1 + 24) = v14;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t ServerCategoryRelationships.deinit()
{

  return v0;
}

uint64_t ServerCategoryRelationships.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ServerCategoryRelationships.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB90A0, &qword_1D91A8118);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D902E268();
  sub_1D9179F1C();
  v13 = *(v3 + 16);
  HIBYTE(v12) = 0;
  type metadata accessor for ServerCategoryParentRelationshipContainer();
  sub_1D902E530(&qword_1ECAB90A8, v9, type metadata accessor for ServerCategoryParentRelationshipContainer, &protocol conformance descriptor for ServerCategoryParentRelationshipContainer);
  sub_1D917999C();
  if (!v2)
  {
    v13 = *(v3 + 24);
    HIBYTE(v12) = 1;
    type metadata accessor for ServerCategoryChildrenRelationshipContainer();
    sub_1D902E530(&qword_1ECAB90B0, v10, type metadata accessor for ServerCategoryChildrenRelationshipContainer, &protocol conformance descriptor for ServerCategoryChildrenRelationshipContainer);
    sub_1D917999C();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_1D902D22C(BOOL *a3@<X8>)
{
  v4 = sub_1D917980C();

  *a3 = v4 != 0;
}

uint64_t sub_1D902D284(uint64_t a1)
{
  v2 = sub_1D902E304();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D902D2C0(uint64_t a1)
{
  v2 = sub_1D902E304();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServerCategoryParentRelationshipContainer.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ServerCategoryParentRelationshipContainer.init(from:)(a1);
  return v2;
}

uint64_t ServerCategoryParentRelationshipContainer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D902D480()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

uint64_t sub_1D902D4CC(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

void sub_1D902D520(BOOL *a3@<X8>)
{
  v4 = sub_1D917980C();

  *a3 = v4 != 0;
}

uint64_t sub_1D902D578(uint64_t a1)
{
  v2 = sub_1D902E440();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D902D5B4(uint64_t a1)
{
  v2 = sub_1D902E440();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServerCategoryChildrenRelationshipContainer.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ServerCategoryChildrenRelationshipContainer.init(from:)(a1);
  return v2;
}

uint64_t sub_1D902D684(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = v5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v23 = *(v9 - 8);
  v24 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  v12 = v25;
  sub_1D9179EEC();
  if (v12)
  {
    swift_deallocPartialClassInstance();
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return v7;
  }

  else
  {
    v13 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB90C0, &unk_1D91AE630);
    sub_1D902E358();
    result = sub_1D917989C();
    v25 = v11;
    v15 = 0;
    v16 = MEMORY[0x1E69E7CC0];
    if (v26)
    {
      v17 = v26;
    }

    else
    {
      v17 = MEMORY[0x1E69E7CC0];
    }

    v26 = MEMORY[0x1E69E7CC0];
    v18 = *(v17 + 16);
    v19 = v13;
    while (1)
    {
      if (v18 == v15)
      {
        (*(v19 + 8))(v25, v24);

        *(v7 + 16) = v16;
        goto LABEL_4;
      }

      if (v15 >= *(v17 + 16))
      {
        break;
      }

      if (*(v17 + 8 * v15++ + 32))
      {

        MEMORY[0x1DA729B90](v21);
        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v22 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1D917863C();
        }

        result = sub_1D917869C();
        v16 = v26;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D902D954(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = v5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1D9179F1C();
  v14[3] = *(v7 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB41A0, &qword_1D91A8140);
  sub_1D9028658();
  sub_1D91799FC();
  return (*(v10 + 8))(v12, v9);
}

uint64_t ServerCategoryBrandLogoArtwork.__allocating_init(brandLogo:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void sub_1D902DB6C(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x676F4C646E617262 && a2 == 0xE90000000000006FLL)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D9179ACC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D902DBFC(uint64_t a1)
{
  v2 = sub_1D902E494();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D902DC38(uint64_t a1)
{
  v2 = sub_1D902E494();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServerCategoryBrandLogoArtwork.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ServerCategoryBrandLogoArtwork.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB90E8, &qword_1D91A8158);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D902E494();
  sub_1D9179F1C();
  v9[1] = *(v2 + 16);
  type metadata accessor for ServerArtwork();
  sub_1D902E530(&qword_1ECAB26D8, 255, type metadata accessor for ServerArtwork, &protocol conformance descriptor for ServerArtwork);
  sub_1D917999C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t ServerCategoryBrandLogoArtwork.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ServerCategoryBrandLogoArtwork.init(from:)(a1);
  return v2;
}

void *ServerCategoryBrandLogoArtwork.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB90F0, &qword_1D91A8160);
  v9 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D902E494();
  sub_1D9179EEC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for ServerArtwork();
    sub_1D902E530(&qword_1EDCD54A0, 255, type metadata accessor for ServerArtwork, &protocol conformance descriptor for ServerArtwork);
    sub_1D917989C();
    (*(v9 + 8))(v6, v4);
    *(v1 + 16) = v10;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_1D902E0C8@<X0>(uint64_t a1@<X0>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  result = a3(a1);
  if (!v4)
  {
    *a4 = v8;
  }

  return result;
}

unint64_t sub_1D902E154()
{
  result = qword_1ECAB24B0;
  if (!qword_1ECAB24B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB24B0);
  }

  return result;
}

unint64_t sub_1D902E1F0()
{
  result = qword_1ECAB1960;
  if (!qword_1ECAB1960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1960);
  }

  return result;
}

unint64_t sub_1D902E268()
{
  result = qword_1ECAB1838;
  if (!qword_1ECAB1838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1838);
  }

  return result;
}

unint64_t sub_1D902E304()
{
  result = qword_1ECAB11B8[0];
  if (!qword_1ECAB11B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECAB11B8);
  }

  return result;
}

unint64_t sub_1D902E358()
{
  result = qword_1ECAAFF70;
  if (!qword_1ECAAFF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB90C0, &unk_1D91AE630);
    sub_1D902E3DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAFF70);
  }

  return result;
}

unint64_t sub_1D902E3DC()
{
  result = qword_1ECAB2280;
  if (!qword_1ECAB2280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB90C8, &qword_1D91A8130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2280);
  }

  return result;
}

unint64_t sub_1D902E440()
{
  result = qword_1ECAB1180;
  if (!qword_1ECAB1180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1180);
  }

  return result;
}

unint64_t sub_1D902E494()
{
  result = qword_1ECAB1440;
  if (!qword_1ECAB1440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1440);
  }

  return result;
}

uint64_t sub_1D902E530(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D902E798()
{
  result = qword_1ECAB90F8;
  if (!qword_1ECAB90F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB90F8);
  }

  return result;
}

unint64_t sub_1D902E7F0()
{
  result = qword_1ECAB9100;
  if (!qword_1ECAB9100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9100);
  }

  return result;
}

unint64_t sub_1D902E848()
{
  result = qword_1ECAB9108;
  if (!qword_1ECAB9108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9108);
  }

  return result;
}

unint64_t sub_1D902E8A0()
{
  result = qword_1ECAB9110;
  if (!qword_1ECAB9110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9110);
  }

  return result;
}

unint64_t sub_1D902E8F8()
{
  result = qword_1ECAB9118;
  if (!qword_1ECAB9118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9118);
  }

  return result;
}

unint64_t sub_1D902E950()
{
  result = qword_1ECAB9120;
  if (!qword_1ECAB9120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9120);
  }

  return result;
}

unint64_t sub_1D902E9A8()
{
  result = qword_1ECAB1430;
  if (!qword_1ECAB1430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1430);
  }

  return result;
}

unint64_t sub_1D902EA00()
{
  result = qword_1ECAB1438;
  if (!qword_1ECAB1438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1438);
  }

  return result;
}

unint64_t sub_1D902EA58()
{
  result = qword_1ECAB1170;
  if (!qword_1ECAB1170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1170);
  }

  return result;
}

unint64_t sub_1D902EAB0()
{
  result = qword_1ECAB1178;
  if (!qword_1ECAB1178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1178);
  }

  return result;
}

unint64_t sub_1D902EB08()
{
  result = qword_1ECAB11A8;
  if (!qword_1ECAB11A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB11A8);
  }

  return result;
}

unint64_t sub_1D902EB60()
{
  result = qword_1ECAB11B0;
  if (!qword_1ECAB11B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB11B0);
  }

  return result;
}

unint64_t sub_1D902EBB8()
{
  result = qword_1ECAB1828;
  if (!qword_1ECAB1828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1828);
  }

  return result;
}

unint64_t sub_1D902EC10()
{
  result = qword_1ECAB1830;
  if (!qword_1ECAB1830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1830);
  }

  return result;
}

unint64_t sub_1D902EC68()
{
  result = qword_1ECAB1950;
  if (!qword_1ECAB1950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1950);
  }

  return result;
}

unint64_t sub_1D902ECC0()
{
  result = qword_1ECAB1958;
  if (!qword_1ECAB1958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1958);
  }

  return result;
}

unint64_t sub_1D902ED18()
{
  result = qword_1ECAB24A0;
  if (!qword_1ECAB24A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB24A0);
  }

  return result;
}

unint64_t sub_1D902ED70()
{
  result = qword_1ECAB24A8;
  if (!qword_1ECAB24A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB24A8);
  }

  return result;
}

uint64_t sub_1D902EDC4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F6974616C6572 && a2 == 0xED00007370696873)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9179ACC();

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

uint64_t sub_1D902EF30(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D91C8010 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9179ACC();

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

uint64_t ServerChannel.name.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes) + 32);

  return v1;
}

uint64_t ServerChannel.subscriptionName.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes) + 96);

  return v1;
}

uint64_t ServerChannel.showCount.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes);
  if (*(v1 + 56))
  {
    return 0;
  }

  else
  {
    return *(v1 + 48);
  }
}

uint64_t ServerChannel.availableShowCount.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes);
  if (*(v1 + 72))
  {
    return 0;
  }

  else
  {
    return *(v1 + 64);
  }
}

uint64_t ServerChannel.storeId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id);

  return v1;
}

void sub_1D902F434(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes);
  v4 = *(v3 + 73);
  if ((v4 - 1) > 1u)
  {
    v8 = 0;
  }

  else
  {
    if (*(v3 + 120))
    {
      v5 = *(v3 + 120);
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    if (*(v3 + 152))
    {
      v6 = *(v3 + 152);
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    v9 = v5;

    sub_1D8E3025C(v6);
    if (v9 >> 62)
    {
      v7 = sub_1D917935C();
    }

    else
    {
      v7 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v7)
    {
      v8 = v4;
    }

    else
    {
      v8 = 0;
    }
  }

  *a2 = v8;
}

uint64_t ServerChannel.artworkURL.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes) + 24);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 48);

  return v2;
}

uint64_t ServerChannel.logoImageURL.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes) + 128);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 48);

  return v2;
}

uint64_t ServerChannel.backgroundColor.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes) + 136);

  return v1;
}

float ServerChannel.logoImageHeight.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes) + 128);
  if (v1 && *(v1 + 40) != 1)
  {
    return *(v1 + 32);
  }

  else
  {
    return 0;
  }
}

float ServerChannel.logoImageWidth.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes) + 128);
  if (v1 && *(v1 + 24) != 1)
  {
    return *(v1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t ServerChannel.uberBackgroundImageURL.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes) + 112);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 32);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 48);

  return v3;
}

uint64_t ServerChannel.uberBackgroundJoeColor.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes) + 112);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 32);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 64);

  return v3;
}

uint64_t ServerChannel.url.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes) + 160);

  return v1;
}

uint64_t ServerChannel.fallbackSubscriptionName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes);
  v2 = *(v1 + 120);
  if (v2)
  {
    if (v2 >> 62)
    {
      if (!sub_1D917935C())
      {
        goto LABEL_11;
      }
    }

    else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {

      v4 = MEMORY[0x1DA72AA90](0, v2);

      v2 = *(v4 + 80);
      v5 = *(v4 + 88);

      swift_unknownObjectRelease();
      if (v5)
      {
        return v2;
      }
    }

    else
    {
      if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_22;
      }

      v3 = *(v2 + 32);
      if (*(v3 + 88))
      {
        v2 = *(v3 + 80);

        return v2;
      }
    }
  }

LABEL_11:
  v2 = *(v1 + 152);
  if (!v2)
  {

    return v2;
  }

  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_14;
    }

LABEL_19:

    return 0;
  }

  result = sub_1D917935C();
  if (!result)
  {
    goto LABEL_19;
  }

LABEL_14:
  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_22:

    v7 = MEMORY[0x1DA72AA90](0, v2);

    v2 = *(v7 + 80);

    swift_unknownObjectRelease();
    return v2;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(*(v2 + 32) + 80);

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t ServerChapter.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ServerChapter.type.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t static ServerChapter.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1D9179ACC();
  }
}

uint64_t sub_1D902FE04()
{
  v1 = 25705;
  v2 = 0x7475626972747461;
  if (*v0 != 2)
  {
    v2 = 1635018093;
  }

  if (*v0)
  {
    v1 = 1701869940;
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

uint64_t sub_1D902FE64@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D903210C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D902FE8C(uint64_t a1)
{
  v2 = sub_1D9030214();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D902FEC8(uint64_t a1)
{
  v2 = sub_1D9030214();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServerChapter.deinit()
{

  return v0;
}

uint64_t ServerChapter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ServerChapter.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9128, &qword_1D91A8CE0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9030214();
  sub_1D9179F1C();
  LOBYTE(v13) = 0;
  sub_1D91799BC();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_1D91799BC();
    v13 = *(v3 + 48);
    HIBYTE(v12) = 2;
    type metadata accessor for ServerChapterAttributes();
    sub_1D9031B40(&qword_1ECAB9138, v10, type metadata accessor for ServerChapterAttributes, &protocol conformance descriptor for ServerChapterAttributes);
    sub_1D91799FC();
    v13 = *(v3 + 56);
    HIBYTE(v12) = 3;
    type metadata accessor for ServerChapterResponseMeta();
    sub_1D9031B40(&qword_1ECAB9140, v11, type metadata accessor for ServerChapterResponseMeta, &protocol conformance descriptor for ServerChapterResponseMeta);
    sub_1D91799FC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1D9030214()
{
  result = qword_1ECAB9130;
  if (!qword_1ECAB9130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9130);
  }

  return result;
}

uint64_t ServerChapter.hashValue.getter()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

uint64_t ServerChapter.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ServerChapter.init(from:)(a1);
  return v2;
}

void *ServerChapter.init(from:)(void *a1)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9148, &qword_1D91A8CE8);
  v4 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v6 = &v12 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9030214();
  sub_1D9179EEC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v14) = 0;
    v1[2] = sub_1D91798BC();
    v1[3] = v7;
    LOBYTE(v14) = 1;
    v1[4] = sub_1D91798BC();
    v1[5] = v8;
    type metadata accessor for ServerChapterAttributes();
    v13 = 2;
    sub_1D9031B40(&qword_1ECAB9150, v9, type metadata accessor for ServerChapterAttributes, &protocol conformance descriptor for ServerChapterAttributes);
    sub_1D91798FC();
    v1[6] = v14;
    type metadata accessor for ServerChapterResponseMeta();
    v13 = 3;
    sub_1D9031B40(&qword_1ECAB9158, v10, type metadata accessor for ServerChapterResponseMeta, &protocol conformance descriptor for ServerChapterResponseMeta);
    sub_1D91798FC();
    (*(v4 + 8))(v6, v12);
    v1[7] = v14;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t ServerChapterAttributes.name.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

unint64_t sub_1D9030734()
{
  v1 = 0x6B726F77747261;
  v2 = 1701667182;
  if (*v0 != 2)
  {
    v2 = 0x656372756F73;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_1D90307A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9032270(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D90307D0(uint64_t a1)
{
  v2 = sub_1D9030B04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D903080C(uint64_t a1)
{
  v2 = sub_1D9030B04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServerChapterAttributes.deinit()
{

  return v0;
}

uint64_t ServerChapterAttributes.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ServerChapterAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9160, &qword_1D91A8CF0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9030B04();
  sub_1D9179F1C();
  v11 = *(v3 + 16);
  v10[7] = 0;
  type metadata accessor for ServerArtwork();
  sub_1D9031B40(&qword_1ECAB26D8, 255, type metadata accessor for ServerArtwork, &protocol conformance descriptor for ServerArtwork);
  sub_1D917999C();
  if (!v2)
  {
    v10[6] = 1;
    sub_1D91799CC();
    v10[5] = 2;
    sub_1D917994C();
    v10[4] = *(v3 + 48);
    v10[3] = 3;
    sub_1D9030B58();
    sub_1D91799FC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1D9030B04()
{
  result = qword_1ECAB9168;
  if (!qword_1ECAB9168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9168);
  }

  return result;
}

unint64_t sub_1D9030B58()
{
  result = qword_1ECAB9170;
  if (!qword_1ECAB9170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9170);
  }

  return result;
}

uint64_t ServerChapterAttributes.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ServerChapterAttributes.init(from:)(a1);
  return v2;
}

void *ServerChapterAttributes.init(from:)(void *a1)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9178, &qword_1D91A8CF8);
  v4 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v6 = &v11 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9030B04();
  sub_1D9179EEC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v7 = v4;
    type metadata accessor for ServerArtwork();
    v16 = 0;
    sub_1D9031B40(&qword_1EDCD54A0, 255, type metadata accessor for ServerArtwork, &protocol conformance descriptor for ServerArtwork);
    v8 = v11;
    sub_1D917989C();
    *(v1 + 16) = v17;
    v15 = 1;
    *(v1 + 24) = sub_1D91798CC() & 1;
    v14 = 2;
    *(v1 + 32) = sub_1D917984C();
    *(v1 + 40) = v10;
    v12 = 3;
    sub_1D9030EE4();
    sub_1D91798FC();
    (*(v7 + 8))(v6, v8);
    *(v1 + 48) = v13;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

unint64_t sub_1D9030EE4()
{
  result = qword_1ECAB9180;
  if (!qword_1ECAB9180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9180);
  }

  return result;
}

void sub_1D9030FB8(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746169636F737361 && a2 == 0xEC000000736E6F69)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D9179ACC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D9031044(uint64_t a1)
{
  v2 = sub_1D9031274();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9031080(uint64_t a1)
{
  v2 = sub_1D9031274();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServerChapterResponseMeta.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ServerChapterResponseMeta.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9188, &qword_1D91A8D00);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9031274();
  sub_1D9179F1C();
  v9[1] = *(v2 + 16);
  sub_1D90312C8();

  sub_1D91799FC();

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1D9031274()
{
  result = qword_1ECAB9190;
  if (!qword_1ECAB9190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9190);
  }

  return result;
}

unint64_t sub_1D90312C8()
{
  result = qword_1ECAB9198;
  if (!qword_1ECAB9198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9198);
  }

  return result;
}

uint64_t ServerChapterResponseMeta.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ServerChapterResponseMeta.init(from:)(a1);
  return v2;
}

uint64_t *ServerChapterResponseMeta.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB91A0, &qword_1D91A8D08);
  v9 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9031274();
  sub_1D9179EEC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1D9031524();
    sub_1D91798FC();
    (*(v9 + 8))(v6, v4);
    *(v1 + 16) = v10;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

unint64_t sub_1D9031524()
{
  result = qword_1ECAB91A8;
  if (!qword_1ECAB91A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB91A8);
  }

  return result;
}

uint64_t sub_1D90315A8@<X0>(uint64_t a1@<X0>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  result = a3(a1);
  if (!v4)
  {
    *a4 = v8;
  }

  return result;
}

void sub_1D9031658(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6D617266656D6974 && a2 == 0xEA00000000007365)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D9179ACC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D90316E8(uint64_t a1)
{
  v2 = sub_1D90318FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9031724(uint64_t a1)
{
  v2 = sub_1D90318FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServerChapterResponseMetaAssociations.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB91B0, &qword_1D91A8D10);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90318FC();

  sub_1D9179F1C();
  v9[1] = v7;
  type metadata accessor for ServerTimeframeContainer();
  sub_1D9031B40(&qword_1ECAB91C0, 255, type metadata accessor for ServerTimeframeContainer, &protocol conformance descriptor for ServerTimeframeContainer);
  sub_1D91799FC();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1D90318FC()
{
  result = qword_1ECAB91B8;
  if (!qword_1ECAB91B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB91B8);
  }

  return result;
}

uint64_t ServerChapterResponseMetaAssociations.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB91C8, &qword_1D91A8D18);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90318FC();
  sub_1D9179EEC();
  if (!v2)
  {
    type metadata accessor for ServerTimeframeContainer();
    sub_1D9031B40(&qword_1ECAB91D0, 255, type metadata accessor for ServerTimeframeContainer, &protocol conformance descriptor for ServerTimeframeContainer);
    sub_1D91798FC();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1D9031B40(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9031CF0()
{
  result = qword_1ECAB91E0;
  if (!qword_1ECAB91E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB91E0);
  }

  return result;
}

unint64_t sub_1D9031D48()
{
  result = qword_1ECAB91E8;
  if (!qword_1ECAB91E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB91E8);
  }

  return result;
}

unint64_t sub_1D9031DA0()
{
  result = qword_1ECAB91F0;
  if (!qword_1ECAB91F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB91F0);
  }

  return result;
}

unint64_t sub_1D9031DF8()
{
  result = qword_1ECAB91F8;
  if (!qword_1ECAB91F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB91F8);
  }

  return result;
}

unint64_t sub_1D9031E50()
{
  result = qword_1ECAB9200;
  if (!qword_1ECAB9200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9200);
  }

  return result;
}

unint64_t sub_1D9031EA8()
{
  result = qword_1ECAB9208;
  if (!qword_1ECAB9208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9208);
  }

  return result;
}

unint64_t sub_1D9031F00()
{
  result = qword_1ECAB9210;
  if (!qword_1ECAB9210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9210);
  }

  return result;
}

unint64_t sub_1D9031F58()
{
  result = qword_1ECAB9218;
  if (!qword_1ECAB9218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9218);
  }

  return result;
}

unint64_t sub_1D9031FB0()
{
  result = qword_1ECAB9220;
  if (!qword_1ECAB9220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9220);
  }

  return result;
}

unint64_t sub_1D9032008()
{
  result = qword_1ECAB9228;
  if (!qword_1ECAB9228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9228);
  }

  return result;
}

unint64_t sub_1D9032060()
{
  result = qword_1ECAB9230;
  if (!qword_1ECAB9230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9230);
  }

  return result;
}

unint64_t sub_1D90320B8()
{
  result = qword_1ECAB9238;
  if (!qword_1ECAB9238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9238);
  }

  return result;
}

uint64_t sub_1D903210C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1635018093 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9179ACC();

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

uint64_t sub_1D9032270(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D91D3290 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9179ACC();

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

uint64_t sub_1D90323E8()
{
  if (*v0)
  {
    return 1635018093;
  }

  else
  {
    return 1635017060;
  }
}

void sub_1D903240C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D9179ACC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1635018093 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D9179ACC();

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
}

uint64_t sub_1D90324DC(uint64_t a1)
{
  v2 = sub_1D90327D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9032518(uint64_t a1)
{
  v2 = sub_1D90327D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ChapterRelationshipContainer.deinit()
{

  return v0;
}

uint64_t ChapterRelationshipContainer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ChapterRelationshipContainer.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9240, &qword_1D91A9460);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90327D0();
  sub_1D9179F1C();
  v12 = *(v3 + 16);
  HIBYTE(v11) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9250, &qword_1D91A9468);
  sub_1D9032B44(&qword_1ECAB9258, &qword_1ECAB9260, &protocol conformance descriptor for ServerChapter, MEMORY[0x1E69E6300]);
  sub_1D91799FC();
  if (!v2)
  {
    v12 = *(v3 + 24);
    HIBYTE(v11) = 1;
    type metadata accessor for ChapterRelationshipContainerMetaAssociations();
    sub_1D9032BE4(&qword_1ECAB9268, v9, type metadata accessor for ChapterRelationshipContainerMetaAssociations, &protocol conformance descriptor for ChapterRelationshipContainerMetaAssociations);
    sub_1D917999C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1D90327D0()
{
  result = qword_1ECAB9248;
  if (!qword_1ECAB9248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9248);
  }

  return result;
}

uint64_t ChapterRelationshipContainer.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ChapterRelationshipContainer.init(from:)(a1);
  return v2;
}

void *ChapterRelationshipContainer.init(from:)(void *a1)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9270, &qword_1D91A9470);
  v4 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v6 = &v11 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90327D0();
  sub_1D9179EEC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v7 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9250, &qword_1D91A9468);
    v12 = 0;
    sub_1D9032B44(&qword_1ECAB9278, &qword_1ECAB9280, &protocol conformance descriptor for ServerChapter, MEMORY[0x1E69E6330]);
    v8 = v11;
    sub_1D91798FC();
    *(v1 + 16) = v13;
    type metadata accessor for ChapterRelationshipContainerMetaAssociations();
    v12 = 1;
    sub_1D9032BE4(&qword_1ECAB9288, v9, type metadata accessor for ChapterRelationshipContainerMetaAssociations, &protocol conformance descriptor for ChapterRelationshipContainerMetaAssociations);
    sub_1D917989C();
    (*(v7 + 8))(v6, v8);
    *(v1 + 24) = v13;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_1D9032B44(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB9250, &qword_1D91A9468);
    sub_1D9032BE4(a2, 255, type metadata accessor for ServerChapter, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D9032BE4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D9032CA0(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D9179ACC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D9032D24(uint64_t a1)
{
  v2 = sub_1D9032F00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9032D60(uint64_t a1)
{
  v2 = sub_1D9032F00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ChapterRelationshipContainerMetaAssociations.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9290, &qword_1D91A9478);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9032F00();
  sub_1D9179F1C();
  v9[15] = *(v2 + 16);
  sub_1D9030B58();
  sub_1D917999C();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1D9032F00()
{
  result = qword_1ECAB9298;
  if (!qword_1ECAB9298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9298);
  }

  return result;
}

uint64_t ChapterRelationshipContainerMetaAssociations.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ChapterRelationshipContainerMetaAssociations.init(from:)(a1);
  return v2;
}

uint64_t *ChapterRelationshipContainerMetaAssociations.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB92A0, &qword_1D91A9480);
  v9 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9032F00();
  sub_1D9179EEC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1D9030EE4();
    sub_1D917989C();
    (*(v9 + 8))(v6, v4);
    *(v1 + 16) = v10;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_1D903318C@<X0>(uint64_t a1@<X0>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  result = a3(a1);
  if (!v4)
  {
    *a4 = v8;
  }

  return result;
}

unint64_t sub_1D90332E0()
{
  result = qword_1ECAB92A8;
  if (!qword_1ECAB92A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB92A8);
  }

  return result;
}

unint64_t sub_1D9033338()
{
  result = qword_1ECAB92B0;
  if (!qword_1ECAB92B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB92B0);
  }

  return result;
}

unint64_t sub_1D9033390()
{
  result = qword_1ECAB92B8;
  if (!qword_1ECAB92B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB92B8);
  }

  return result;
}

unint64_t sub_1D90333E8()
{
  result = qword_1ECAB92C0;
  if (!qword_1ECAB92C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB92C0);
  }

  return result;
}

unint64_t sub_1D9033440()
{
  result = qword_1ECAB92C8;
  if (!qword_1ECAB92C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB92C8);
  }

  return result;
}

unint64_t sub_1D9033498()
{
  result = qword_1ECAB92D0;
  if (!qword_1ECAB92D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB92D0);
  }

  return result;
}

uint64_t sub_1D90334FC(uint64_t a1, uint64_t a2)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1D9179ACC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D9033574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D90334FC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D90335AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8E3A3FC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D90335E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D9033638(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t ServerGenericResponse.encode(to:)(void *a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  v12 = a2[2];
  v13 = v5;
  type metadata accessor for ServerGenericResponse.CodingKeys(255, v12, v4, v5);
  swift_getWitnessTable();
  v6 = sub_1D9179A1C();
  v14 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  v9 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_1D9179F1C();
  v16 = v9;
  sub_1D91786FC();
  v15 = v13;
  swift_getWitnessTable();
  sub_1D91799FC();

  return (*(v14 + 8))(v8, v6);
}

uint64_t ServerGenericResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v14 = a5;
  v15 = a3;
  type metadata accessor for ServerGenericResponse.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable();
  v7 = sub_1D917992C();
  v13 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EEC();
  if (!v5)
  {
    v11 = v13;
    v10 = v14;
    sub_1D91786FC();
    v16 = v15;
    swift_getWitnessTable();
    sub_1D91798FC();
    (*(v11 + 8))(v9, v7);
    *v10 = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t ServerPodcast.feedDescription.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 104);
  if (!v2)
  {

    return 0;
  }

  if (v2[3])
  {
    v3 = v2[2];
  }

  else
  {
    v3 = v2[4];
  }

  return v3;
}

uint64_t ServerPodcast.category.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 208);
  if (!v2 || !*(v2 + 16))
  {
    return 0;
  }

  v3 = *(v2 + 32);

  return v3;
}

BOOL ServerPodcast.hasEpisodes.getter()
{
  v1 = OBJC_IVAR___MTServerPodcast_episodes;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    return 0;
  }

  if (v2 >> 62)
  {
    v3 = sub_1D917935C();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3 != 0;
}

id sub_1D9033D38(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (v2)
  {
    if (*(v2 + 24))
    {

      v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t _s18PodcastsFoundation13ServerPodcastC6authorSSSgvg_0()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);

  return v2;
}

uint64_t ServerPodcast.resolvedFeedURL.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 72);

  return v2;
}

uint64_t ServerPodcast.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 88);

  return v2;
}

uint64_t ServerPodcast.isExplicit.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (v1)
  {
    if (!*(v1 + 184) || (, v2 = sub_1D917980C(), , v2 != 1))
    {
      LOBYTE(v2) = sub_1D9179ACC();
    }
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

uint64_t ServerPodcast.isNotSubscribable.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (v1)
  {
    return (*(v1 + 48) != 2) & (*(v1 + 48) ^ 1u);
  }

  else
  {
    return 0;
  }
}

uint64_t ServerPodcast.shareURL.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 32);

  return v2;
}

uint64_t ServerPodcast.showType.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 136);

  return v2;
}

uint64_t ServerPodcast.webpageURL.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 192);

  return v2;
}

uint64_t ServerPodcast.podcastStoreId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_id);

  return v1;
}

uint64_t ServerPodcast.displayType.getter()
{
  if (!*(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes))
  {
    return 0;
  }

  v1 = sub_1D917980C();

  if (v1 == 2)
  {
    return 0x646972627968;
  }

  if (v1 == 1)
  {
    return 1684627824;
  }

  return 1701147238;
}

uint64_t ServerPodcast.offers.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 224);
  if (!v2)
  {
    return 0;
  }

  v11 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
    goto LABEL_23;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

  if (v3)
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA72AA90](v4, v2);
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_17:
          __break(1u);
          return 0;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_23:
          v3 = sub_1D917935C();
          goto LABEL_5;
        }

        v6 = *(v2 + 8 * v4 + 32);

        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_17;
        }
      }

      v10[1] = v6;
      sub_1D903472C(v10);

      if (v10[0])
      {
        MEMORY[0x1DA729B90](v8);
        if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D917863C();
        }

        sub_1D917869C();
        v5 = v11;
      }

      ++v4;
      if (v7 == v3)
      {
        goto LABEL_20;
      }
    }
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return v5;
}

void sub_1D903472C(void *a2@<X8>)
{
  v3 = [objc_allocWithZone(IMPodcastOffer) init];

  v4 = sub_1D917980C();

  if (v4 > 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  [v3 setKind_];

  v6 = sub_1D917980C();

  if (v6 > 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  [v3 setPriceType_];

  *a2 = v3;
}

uint64_t ServerPodcast.uberBackgroundImageURL.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 152);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 48);

  return v4;
}

uint64_t ServerPodcast.uberBackgroundJoeColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 152);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 64);

  return v4;
}

uint64_t ServerPodcast.uberArtworkTextPrimaryColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 152);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 80);

  return v4;
}

uint64_t ServerPodcast.uberArtworkTextSecondaryColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 152);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 96);

  return v4;
}

uint64_t ServerPodcast.uberArtworkTextTertiaryColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 152);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 112);

  return v4;
}

uint64_t ServerPodcast.uberArtworkTextQuaternaryColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 152);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 128);

  return v4;
}

id sub_1D9034E78(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t ServerPodcast.imageURL.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (v4 && *(v4 + 112))
  {

    ServerArtwork.urlResolved.getter(v3);

    v5 = sub_1D9176C2C();
    v6 = *(v5 - 8);
    if ((*(v6 + 48))(v3, 1, v5) != 1)
    {
      v8 = sub_1D9176ACC();
      (*(v6 + 8))(v3, v5);
      return v8;
    }

    sub_1D8E677CC(v3);
  }

  return 0;
}

uint64_t ServerPodcast.artworkTemplateURL.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 112);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 48);

  return v3;
}

uint64_t ServerPodcast.artworkPrimaryColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 112);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 64);

  return v3;
}

uint64_t ServerPodcast.artworkTextPrimaryColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 112);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 80);

  return v3;
}

uint64_t ServerPodcast.artworkTextSecondaryColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 112);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 96);

  return v3;
}

uint64_t ServerPodcast.artworkTextTertiaryColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 112);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 112);

  return v3;
}

uint64_t ServerPodcast.artworkTextQuaternaryColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 112);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 128);

  return v3;
}

id ServerPodcast.channelItem.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_relationships);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 16);
  if (v3 >> 62)
  {
    result = sub_1D917935C();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v3 & 0xC000000000000001) != 0)
  {

    v5 = MEMORY[0x1DA72AA90](0, v3);

    return v5;
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v3 + 32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ServerPodcast.showSpecificUpsellCopy.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 232);

  return v2;
}

id ServerPodcast.categories.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_relationships);
  if (!v1 || !*(v1 + 24))
  {
    return 0;
  }

  sub_1D8F614D8(v2);

  v3 = objc_allocWithZone(MEMORY[0x1E695DFB8]);
  v4 = sub_1D91785DC();

  v5 = [v3 initWithArray_];

  return v5;
}

unint64_t sub_1D90358A0()
{
  result = qword_1EDCD0A08;
  if (!qword_1EDCD0A08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCD0A08);
  }

  return result;
}

uint64_t ServerPodcastEpisode.author.getter()
{
  v1 = *(*(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes) + 16);

  return v1;
}

uint64_t ServerPodcastEpisode.category.getter()
{
  v1 = *(*(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes) + 248);
  if (!v1 || !*(v1 + 16))
  {
    return 0;
  }

  v2 = *(v1 + 32);

  return v2;
}

uint64_t ServerPodcastEpisode.isExplicit.getter()
{
  if (!*(*(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes) + 224) || (, v1 = sub_1D917980C(), , v1 != 1))
  {
    LOBYTE(v1) = sub_1D9179ACC();
  }

  return v1 & 1;
}

uint64_t ServerPodcastEpisode.guid.getter()
{
  v1 = *(*(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes) + 320);

  return v1;
}

uint64_t ServerPodcastEpisode.itemDescription.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  if (v1[23])
  {
    v2 = v1[22];
  }

  else
  {
    v3 = v1[14];
    if (v3)
    {
      v2 = *(v3 + 16);
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t ServerPodcastEpisode.firstTimeAvailableAsPaid.getter@<X0>(char *a1@<X8>)
{
  if (*(*(v1 + OBJC_IVAR___MTServerPodcastEpisode_attributes) + 208))
  {
    v6 = 2;

    PodcastEpisodeAttributes.AvailabilityDates.subscript.getter(&v6, a1);
  }

  else
  {
    v4 = sub_1D9176E3C();
    v5 = *(*(v4 - 8) + 56);

    return v5(a1, 1, 1, v4);
  }
}

uint64_t ServerPodcastEpisode.firstTimeAvailableAsFree.getter@<X0>(char *a1@<X8>)
{
  if (*(*(v1 + OBJC_IVAR___MTServerPodcastEpisode_attributes) + 208))
  {

    PodcastEpisodeAttributes.AvailabilityDates.free.getter(a1);
  }

  else
  {
    v4 = sub_1D9176E3C();
    v5 = *(*(v4 - 8) + 56);

    return v5(a1, 1, 1, v4);
  }
}

uint64_t ServerPodcastEpisode.title.getter()
{
  v1 = *(*(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes) + 80);

  return v1;
}

PodcastsFoundation::PodcastEpisodeAttributes::MediaKind_optional ServerPodcastEpisode.mediaKind.getter@<W0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  v4 = *(v3 + 280);
  if (v4)
  {
    v5 = *(v3 + 272);

    v6._countAndFlagsBits = v5;
    v6._object = v4;
    result.value = PodcastEpisodeAttributes.MediaKind.init(rawValue:)(v6).value;
    v8 = v9;
    if (v9 == 5)
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  *a1 = v8;
  return result;
}

uint64_t ServerPodcastEpisode.itunesTitle.getter()
{
  v1 = *(*(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes) + 96);

  return v1;
}

uint64_t ServerPodcastEpisode.itemSummary.getter()
{
  v1 = *(*(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes) + 112);
  if (v1)
  {
    if (v1[3])
    {
      v2 = v1[2];
    }

    else
    {
      v2 = v1[4];
    }
  }

  else
  {

    return 0;
  }

  return v2;
}

uint64_t ServerPodcastEpisode.seasonNumber.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  if (*(v1 + 360))
  {
    return 0;
  }

  else
  {
    return *(v1 + 352);
  }
}

uint64_t ServerPodcastEpisode.episodeNumber.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  if (*(v1 + 344))
  {
    return 0;
  }

  else
  {
    return *(v1 + 336);
  }
}

id sub_1D90366F8(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t ServerPodcastEpisode.episodeType.getter()
{
  v1 = 1819047270;
  if (*(*(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes) + 168))
  {

    v2 = sub_1D917980C();

    if (v2 == 2)
    {
      return 0x73756E6F62;
    }

    else if (v2 == 1)
    {
      return 0x72656C69617274;
    }
  }

  return v1;
}

uint64_t ServerPodcastEpisode.webpageURL.getter()
{
  v1 = *(*(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes) + 232);

  return v1;
}

uint64_t ServerPodcastEpisode.feedURL.getter()
{
  v1 = *(*(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes) + 56);

  return v1;
}

uint64_t ServerPodcastEpisode.episodeStoreId.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTServerPodcastEpisode_id);

  return v1;
}

uint64_t ServerPodcastEpisode.priceType.getter@<X0>(Swift::tuple_priceType_PodcastsFoundation_PriceType_assetUrl_String_optional_durationInMilliseconds_Double_optional *a1@<X8>)
{
  ServerPodcastEpisode.determineBestChannelMetaData(isSubscriptionActive:)(a1, &v2);

  return *&aStdq_12[8 * v2];
}

uint64_t ServerPodcastEpisode.entitledPriceType.getter@<X0>(Swift::tuple_priceType_PodcastsFoundation_PriceType_assetUrl_String_optional_durationInMilliseconds_Double_optional *a1@<X8>)
{
  ServerPodcastEpisode.determineBestChannelMetaData(isSubscriptionActive:)(a1, &v2);

  return *&aStdq_12[8 * v2];
}

double sub_1D9036B84(void *a1)
{
  v1 = a1;
  ServerPodcastEpisode.determineBestChannelMetaData(isSubscriptionActive:)(v2, &v8);
  v4 = v3;
  v6 = v5;

  result = v4 / 1000.0;
  if (v6)
  {
    return 0.0;
  }

  return result;
}

double sub_1D9036C08@<D0>(Swift::tuple_priceType_PodcastsFoundation_PriceType_assetUrl_String_optional_durationInMilliseconds_Double_optional *a1@<X8>)
{
  ServerPodcastEpisode.determineBestChannelMetaData(isSubscriptionActive:)(a1, &v6);
  v2 = v1;
  v4 = v3;

  result = v2 / 1000.0;
  if (v4)
  {
    return 0.0;
  }

  return result;
}

id sub_1D9036C98(void *a1)
{
  v1 = a1;
  ServerPodcastEpisode.determineBestChannelMetaData(isSubscriptionActive:)(v2, &v7);
  v4 = v3;

  if (v4)
  {
    v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ServerPodcastEpisode.artworkTemplateURL.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  v2 = v1[16];
  if (v2)
  {
    v3 = v1[15] == 0x65646F73697065 && v2 == 0xE700000000000000;
    if (!v3 && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  v4 = v1[17];
  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 48);

  return v5;
}

double ServerPodcastEpisode.artworkWidth.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  v2 = v1[16];
  if (!v2 || (v1[15] == 0x65646F73697065 ? (v3 = v2 == 0xE700000000000000) : (v3 = 0), v3 || (sub_1D9179ACC())) && (v4 = v1[17]) != 0 && *(v4 + 24) != 1)
  {
    return *(v4 + 16);
  }

  else
  {
    return 0;
  }
}

double ServerPodcastEpisode.artworkHeight.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  v2 = v1[16];
  if (!v2 || (v1[15] == 0x65646F73697065 ? (v3 = v2 == 0xE700000000000000) : (v3 = 0), v3 || (sub_1D9179ACC())) && (v4 = v1[17]) != 0 && *(v4 + 40) != 1)
  {
    return *(v4 + 32);
  }

  else
  {
    return 0;
  }
}

uint64_t ServerPodcastEpisode.artworkBackgroundColor.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  v2 = v1[16];
  if (v2)
  {
    v3 = v1[15] == 0x65646F73697065 && v2 == 0xE700000000000000;
    if (!v3 && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  v4 = v1[17];
  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 64);

  return v5;
}

uint64_t ServerPodcastEpisode.artworkTextPrimaryColor.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  v2 = v1[16];
  if (v2)
  {
    v3 = v1[15] == 0x65646F73697065 && v2 == 0xE700000000000000;
    if (!v3 && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  v4 = v1[17];
  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 80);

  return v5;
}

uint64_t ServerPodcastEpisode.artworkTextSecondaryColor.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  v2 = v1[16];
  if (v2)
  {
    v3 = v1[15] == 0x65646F73697065 && v2 == 0xE700000000000000;
    if (!v3 && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  v4 = v1[17];
  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 96);

  return v5;
}

uint64_t ServerPodcastEpisode.artworkTextTertiaryColor.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  v2 = v1[16];
  if (v2)
  {
    v3 = v1[15] == 0x65646F73697065 && v2 == 0xE700000000000000;
    if (!v3 && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  v4 = v1[17];
  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 112);

  return v5;
}

uint64_t ServerPodcastEpisode.artworkTextQuaternaryColor.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  v2 = v1[16];
  if (v2)
  {
    v3 = v1[15] == 0x65646F73697065 && v2 == 0xE700000000000000;
    if (!v3 && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  v4 = v1[17];
  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 128);

  return v5;
}

id sub_1D903728C(void *a1)
{
  v1 = a1;
  ServerPodcastEpisode.determineBestChannelMetaData(isSubscriptionActive:)(v2, &v8);

  ServerPodcastEpisode.determineBestTranscriptMetadata(for:)(v3, &v9);
  v5 = v4;

  if (v5)
  {
    v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_1D903733C@<X0>(Swift::tuple_priceType_PodcastsFoundation_PriceType_assetUrl_String_optional_durationInMilliseconds_Double_optional *a1@<X8>)
{
  ServerPodcastEpisode.determineBestChannelMetaData(isSubscriptionActive:)(a1, &v5);

  ServerPodcastEpisode.determineBestTranscriptMetadata(for:)(v1, &v6);
  v3 = v2;

  return v3;
}

id sub_1D90373B0(void *a1)
{
  v1 = a1;
  ServerPodcastEpisode.determineBestChannelMetaData(isSubscriptionActive:)(v2, &v8);

  ServerPodcastEpisode.determineBestTranscriptMetadata(for:)(v3, &v9);
  v5 = v4;

  if (v5)
  {
    v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_1D9037460@<X0>(Swift::tuple_priceType_PodcastsFoundation_PriceType_assetUrl_String_optional_durationInMilliseconds_Double_optional *a1@<X8>)
{
  ServerPodcastEpisode.determineBestChannelMetaData(isSubscriptionActive:)(a1, &v5);

  ServerPodcastEpisode.determineBestTranscriptMetadata(for:)(v1, &v6);
  v3 = v2;

  return v3;
}

uint64_t sub_1D90374FC@<X0>(Swift::tuple_priceType_PodcastsFoundation_PriceType_assetUrl_String_optional_durationInMilliseconds_Double_optional *a1@<X8>)
{
  ServerPodcastEpisode.determineBestChannelMetaData(isSubscriptionActive:)(a1, &v4);

  ServerPodcastEpisode.determineBestTranscriptMetadata(for:)(v1, &v5);

  v2 = 0x656C707061;
  if (v5)
  {
    v2 = 0x72656469766F7270;
  }

  if (v5 == 2)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

id ServerPodcastEpisode.chapters.getter()
{
  v1 = OBJC_IVAR___MTServerPodcastEpisode_relationships;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2 || !*(v2 + OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_chapters))
  {
    return [objc_allocWithZone(MEMORY[0x1E695DFB8]) init];
  }

  sub_1D8F614F0(v3);

  v4 = objc_allocWithZone(MEMORY[0x1E695DFB8]);
  v5 = sub_1D91785DC();

  v6 = [v4 initWithArray_];

  return v6;
}

id sub_1D90376E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3();
  if (v3)
  {
    v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t ServerPodcastEpisode.chapterSource.getter()
{
  v1 = OBJC_IVAR___MTServerPodcastEpisode_relationships;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_chapters);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 24);
  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 16);
  if (v5 == 2)
  {
    return 0;
  }

  if (v5)
  {
    return 0x72656469766F7270;
  }

  return 0x656C707061;
}

uint64_t ServerPodcastEpisode.priceTypeIsPSUB.getter@<X0>(Swift::tuple_priceType_PodcastsFoundation_PriceType_assetUrl_String_optional_durationInMilliseconds_Double_optional *a1@<X8>)
{
  ServerPodcastEpisode.determineBestChannelMetaData(isSubscriptionActive:)(a1, &v3);

  if (v3 == 2)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1D9179ACC();
  }

  return v1 & 1;
}

uint64_t ServerPodcastEpisode.isRestricted.getter()
{
  if (qword_1ECAB1CC0 != -1)
  {
    swift_once();
  }

  v1 = *(qword_1ECAB1CD0 + OBJC_IVAR___PFRestrictionsController__state);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 24));
  if (v2)
  {
    if (!*(*(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes) + 224) || (, v3 = sub_1D917980C(), , v3 != 1))
    {
      LOBYTE(v3) = sub_1D9179ACC();
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

Swift::Bool __swiftcall ServerPodcastEpisode.isEligibleSmartPlayEpisode()()
{
  if (*(*(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes) + 168) && ((, v1 = sub_1D917980C(), , v1 == 1) || v1 == 2))
  {
    v2 = sub_1D9179ACC();
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

void Array<A>.firstEligibleSmartPlayEpisode()(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D917935C())
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v3 = 0;
      while (1)
      {
        v4 = MEMORY[0x1DA72AA90](v3, a1);
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        if (!*(*(v4 + OBJC_IVAR___MTServerPodcastEpisode_attributes) + 168))
        {
          goto LABEL_23;
        }

        v6 = sub_1D917980C();

        if (v6 != 1 && v6 != 2)
        {
          goto LABEL_23;
        }

        v7 = sub_1D9179ACC();

        if (v7)
        {
          return;
        }

        swift_unknownObjectRelease();
        ++v3;
        if (v5 == i)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
    }

    else
    {
      v8 = (a1 + 32);
      v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      while (v9)
      {
        v10 = *v8;
        if (!*(*(*v8 + OBJC_IVAR___MTServerPodcastEpisode_attributes) + 168))
        {
          v10;
LABEL_23:

          return;
        }

        v11 = v10;

        v12 = sub_1D917980C();

        if (v12 != 1 && v12 != 2)
        {
          goto LABEL_23;
        }

        v13 = sub_1D9179ACC();

        if (v13)
        {
          return;
        }

        --v9;
        ++v8;
        if (!--i)
        {
LABEL_19:
          if ((a1 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1DA72AA90](0, a1);
          }

          else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v14 = *(a1 + 32);
          }

          else
          {
            __break(1u);
          }

          return;
        }
      }
    }

    __break(1u);
LABEL_26:
    ;
  }
}

void ServerPodcastEpisode.transcriptRequestInformation()(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR___MTServerPodcastEpisode_relationships;
  swift_beginAccess();
  v5 = *&v1[v4];
  if (!v5)
  {
    goto LABEL_29;
  }

  v6 = OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_podcast;
  swift_beginAccess();
  v7 = *(v5 + v6);
  if (!v7)
  {
    goto LABEL_29;
  }

  v8 = OBJC_IVAR____TtC18PodcastsFoundation28PodcastRelationshipContainer_data;
  swift_beginAccess();
  v9 = *(v7 + v8);
  if (!(v9 >> 62))
  {
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_29:
    v2 = 0;
    goto LABEL_30;
  }

  if (!sub_1D917935C())
  {
    goto LABEL_29;
  }

LABEL_5:
  if ((v9 & 0xC000000000000001) != 0)
  {

    v2 = MEMORY[0x1DA72AA90](0, v9);
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_57;
    }

    v2 = *(v9 + 32);
  }

  v10 = *&v2[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_relationships];
  if (!v10)
  {
    goto LABEL_30;
  }

  v11 = *(v10 + 16);
  if (!v11)
  {
    goto LABEL_30;
  }

  v9 = *(v11 + 16);
  if (!(v9 >> 62))
  {
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_57:
  if (sub_1D917935C())
  {
LABEL_12:
    if ((v9 & 0xC000000000000001) != 0)
    {

      v12 = MEMORY[0x1DA72AA90](0, v9);
    }

    else
    {
      if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v12 = *(v9 + 32);
    }

    v13 = *(*&v12[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes] + 74);
    if (v13 == 2 || (v13 & 1) == 0)
    {
      v19 = [v1 freeTranscriptIdentifier];
      if (v19)
      {
        v20 = v19;
        v16 = sub_1D917820C();
        v18 = v21;
      }

      else
      {
        v16 = 0;
        v18 = 0;
      }

      v22 = [v1 freeTranscriptProvider];
      if (!v22)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v14 = [v1 entitledTranscriptIdentifier];
      if (v14)
      {
        v15 = v14;
        v16 = sub_1D917820C();
        v18 = v17;
      }

      else
      {
        v16 = 0;
        v18 = 0;
      }

      v22 = [v1 entitledTranscriptProvider];
      if (!v22)
      {
LABEL_27:

        goto LABEL_38;
      }
    }

    v23 = v22;
    sub_1D917820C();
    v25 = v24;

    if (!v18)
    {
      goto LABEL_39;
    }

    goto LABEL_35;
  }

LABEL_30:
  v26 = [v1 freeTranscriptIdentifier];
  if (v26)
  {
    v27 = v26;
    v16 = sub_1D917820C();
    v18 = v28;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v29 = [v1 freeTranscriptProvider];
  if (!v29)
  {
LABEL_38:
    v25 = 0;
    if (!v18)
    {
      goto LABEL_39;
    }

    goto LABEL_35;
  }

  v30 = v29;
  sub_1D917820C();
  v25 = v31;

  if (!v18)
  {
LABEL_39:

    *(a1 + 73) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return;
  }

LABEL_35:
  if (!v25)
  {
    goto LABEL_39;
  }

  v48 = v16;
  v32 = [v1 episodeStoreId];
  if (v32)
  {
    v33 = v32;
    v34 = sub_1D917820C();
    v46 = v35;
  }

  else
  {
    v46 = 0xE100000000000000;
    v34 = 48;
  }

  v36 = [v1 title];
  if (v36)
  {
    v37 = v36;
    v38 = sub_1D917820C();
    v40 = v39;

    if (v2)
    {
      goto LABEL_43;
    }

LABEL_46:
    v41 = v2;
LABEL_48:
    v43 = 0;
    goto LABEL_49;
  }

  v38 = 0;
  v40 = 0;
  if (!v2)
  {
    goto LABEL_46;
  }

LABEL_43:
  v41 = v2;
  v42 = *&v2[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
  if (!v42)
  {
    v2 = 0;
    goto LABEL_48;
  }

  v2 = *(v42 + 88);
  v43 = *(v42 + 96);

LABEL_49:
  v44 = sub_1D917980C();

  if (v44 == 1)
  {
    v45 = 1;
  }

  else
  {
    v45 = 2;
  }

  if (!v44)
  {
    v45 = 0;
  }

  *a1 = v34;
  *(a1 + 8) = v47;
  *(a1 + 16) = v38;
  *(a1 + 24) = v40;
  *(a1 + 32) = v48;
  *(a1 + 40) = v18;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 72) = v2;
  *(a1 + 80) = v43;
  *(a1 + 88) = v45;
}

id ServerPodcastEpisode.podcast.getter()
{
  v1 = OBJC_IVAR___MTServerPodcastEpisode_relationships;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    return 0;
  }

  v3 = OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_podcast;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (!v4)
  {
    return 0;
  }

  v5 = OBJC_IVAR____TtC18PodcastsFoundation28PodcastRelationshipContainer_data;
  swift_beginAccess();
  v6 = *(v4 + v5);
  if (v6 >> 62)
  {
    result = sub_1D917935C();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v6 & 0xC000000000000001) != 0)
  {

    v8 = MEMORY[0x1DA72AA90](0, v6);

    return v8;
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v6 + 32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ServerPodcastEpisode.playhead.getter()
{
  v1 = OBJC_IVAR___MTServerPodcastEpisode_relationships;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_playbackPosition);
    if (v4)
    {
      v5 = *(v4 + 16);
      if (v5 >> 62)
      {
        result = sub_1D917935C();
        if (!result)
        {
          return result;
        }
      }

      else
      {
        result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!result)
        {
          return result;
        }
      }

      if ((v5 & 0xC000000000000001) != 0)
      {

        MEMORY[0x1DA72AA90](0, v5);
      }

      else
      {
        if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t ServerPodcastEpisode.timeRemaining.getter()
{
  [v0 duration];
  v1 = OBJC_IVAR___MTServerPodcastEpisode_relationships;
  result = swift_beginAccess();
  v3 = *&v0[v1];
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_playbackPosition);
    if (v4)
    {
      v5 = *(v4 + 16);
      if (v5 >> 62)
      {
        result = sub_1D917935C();
        if (!result)
        {
          return result;
        }
      }

      else
      {
        result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!result)
        {
          return result;
        }
      }

      if ((v5 & 0xC000000000000001) != 0)
      {

        MEMORY[0x1DA72AA90](0, v5);
      }

      else
      {
        if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t ServerPodcastEpisode.isPlayed.getter()
{
  v1 = OBJC_IVAR___MTServerPodcastEpisode_relationships;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_playbackPosition);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 16);
  if (v4 >> 62)
  {
    result = sub_1D917935C();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v4 & 0xC000000000000001) != 0)
  {

    v6 = MEMORY[0x1DA72AA90](0, v4);

    goto LABEL_8;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);

LABEL_8:
    v7 = *(v6 + 64);

    v8 = *(v7 + 24);

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t ServerPodcastEpisode.isSerialShowTypeInFeed.getter()
{
  v1 = OBJC_IVAR___MTServerPodcastEpisode_relationships;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    return 2;
  }

  v3 = OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_podcast;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (!v4)
  {
    return 2;
  }

  v5 = OBJC_IVAR____TtC18PodcastsFoundation28PodcastRelationshipContainer_data;
  swift_beginAccess();
  v6 = *(v4 + v5);
  if (v6 >> 62)
  {
    result = sub_1D917935C();
    if (!result)
    {
      return 2;
    }
  }

  else
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return 2;
    }
  }

  if ((v6 & 0xC000000000000001) != 0)
  {

    v11 = MEMORY[0x1DA72AA90](0, v6);

    v8 = *(v11 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);

    swift_unknownObjectRelease();
    if (v8)
    {
      goto LABEL_9;
    }

    return 2;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return result;
  }

  v8 = *(*(v6 + 32) + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v8)
  {
    return 2;
  }

LABEL_9:
  if (*(v8 + 144))
  {
    v9 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_opt_self() showTypeFromString_];

  return v10 == 2;
}

uint64_t ChannelAttributes.DisplayType.rawValue.getter()
{
  v1 = 1684627824;
  if (*v0 != 1)
  {
    v1 = 0x646972627968;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701147238;
  }
}

uint64_t ServerChannel.href.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_href);

  return v1;
}

uint64_t ServerChannel.id.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id);

  return v1;
}

uint64_t ServerChannel.type.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_type);

  return v1;
}

uint64_t sub_1D90389CC()
{
  v1 = *v0;
  v2 = 1717924456;
  v3 = 1701869940;
  v4 = 0x7475626972747461;
  if (v1 != 3)
  {
    v4 = 0x6E6F6974616C6572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 25705;
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

uint64_t sub_1D9038A5C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D903F5B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9038A84(uint64_t a1)
{
  v2 = sub_1D9038E94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9038AC0(uint64_t a1)
{
  v2 = sub_1D9038E94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id ServerChannel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServerChannel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D9038BB8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9300, &qword_1D91A9A70);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9038E94();
  sub_1D9179F1C();
  LOBYTE(v13) = 0;
  sub_1D91799BC();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_1D91799BC();
    LOBYTE(v13) = 2;
    sub_1D91799BC();
    v13 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes);
    HIBYTE(v12) = 3;
    type metadata accessor for ChannelAttributes();
    sub_1D903E83C(&qword_1ECAB20E0, v9, type metadata accessor for ChannelAttributes, &protocol conformance descriptor for ChannelAttributes);
    sub_1D91799FC();
    v13 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_relationships);
    HIBYTE(v12) = 4;
    type metadata accessor for ChannelRelationships();
    sub_1D903E83C(&qword_1ECAB1E00, v10, type metadata accessor for ChannelRelationships, &protocol conformance descriptor for ChannelRelationships);
    sub_1D917999C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1D9038E94()
{
  result = qword_1EDCD5498;
  if (!qword_1EDCD5498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD5498);
  }

  return result;
}

char *ServerChannel.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9308, &unk_1D91A9A78);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9038E94();
  sub_1D9179EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    type metadata accessor for ServerChannel();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v25) = 0;
    v9 = sub_1D91798BC();
    v11 = (v1 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_href);
    *v11 = v9;
    v11[1] = v12;
    LOBYTE(v25) = 1;
    v13 = sub_1D91798BC();
    v14 = (v1 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id);
    *v14 = v13;
    v14[1] = v15;
    LOBYTE(v25) = 2;
    v16 = sub_1D91798BC();
    v17 = (v1 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_type);
    *v17 = v16;
    v17[1] = v18;
    type metadata accessor for ChannelAttributes();
    v24 = 3;
    sub_1D903E83C(&qword_1EDCD4B18, v19, type metadata accessor for ChannelAttributes, &protocol conformance descriptor for ChannelAttributes);
    sub_1D91798FC();
    *(v1 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes) = v25;
    type metadata accessor for ChannelRelationships();
    v24 = 4;
    sub_1D903E83C(qword_1EDCD3A38, v20, type metadata accessor for ChannelRelationships, &protocol conformance descriptor for ChannelRelationships);
    sub_1D917989C();
    *(v1 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_relationships) = v25;
    v21 = type metadata accessor for ServerChannel();
    v23.receiver = v1;
    v23.super_class = v21;
    v3 = objc_msgSendSuper2(&v23, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

char *sub_1D9039390@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for ServerChannel());
  result = ServerChannel.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

PodcastsFoundation::ChannelAttributes::DisplayType_optional __swiftcall ChannelAttributes.DisplayType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

PodcastsFoundation::ChannelAttributes::SubscriptionType_optional __swiftcall ChannelAttributes.SubscriptionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ChannelAttributes.SubscriptionType.rawValue.getter()
{
  v1 = 0x687475616FLL;
  if (*v0 != 1)
  {
    v1 = 0x7374736163646F70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1936748641;
  }
}

uint64_t sub_1D90395CC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x687475616FLL;
  if (v2 != 1)
  {
    v4 = 0x7374736163646F70;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1936748641;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x687475616FLL;
  if (*a2 != 1)
  {
    v8 = 0x7374736163646F70;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1936748641;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D9179ACC();
  }

  return v11 & 1;
}

uint64_t sub_1D90396C0()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D9039758(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D90397DC(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

void sub_1D903987C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x687475616FLL;
  if (v2 != 1)
  {
    v5 = 0x7374736163646F70;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1936748641;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t ChannelAttributes.subscriptionEnabledDate.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t sub_1D90399EC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  if (*(v1 + 88))
  {
    if (qword_1EDCD09F8 != -1)
    {
      swift_once();
    }

    v6 = qword_1EDCD0A00;
    v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v8 = [v6 dateFromString_];

    if (v8)
    {
      sub_1D9176DFC();

      v9 = sub_1D9176E3C();
      (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
    }

    else
    {
      v13 = sub_1D9176E3C();
      (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
    }

    return sub_1D8E964A4(v5, a1);
  }

  else
  {
    v10 = sub_1D9176E3C();
    v11 = *(*(v10 - 8) + 56);

    return v11(a1, 1, 1, v10);
  }
}

uint64_t ChannelAttributes.subscriptionName.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t ChannelAttributes.backgroundSwatch.getter()
{
  v1 = *(v0 + 136);

  return v1;
}

uint64_t ChannelAttributes.url.getter()
{
  v1 = *(v0 + 160);

  return v1;
}

uint64_t sub_1D9039C98()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 152);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  if (*(v0 + 120))
  {
    v2 = *(v0 + 120);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v4 = v1;

  sub_1D8E3025C(v2);
  return v4;
}

void sub_1D9039D04(char *a1@<X8>)
{
  if (*(v1 + 152))
  {
    v2 = *(v1 + 152);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v3 = *(v1 + 120);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v15 = v2;

  sub_1D8E3025C(v4);
  if (v15 >> 62)
  {
LABEL_27:
    v5 = sub_1D917935C();
    if (v5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v5 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_9:
      v6 = 0;
      v7 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v8 = v6;
        while ((v15 & 0xC000000000000001) == 0)
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          if (v8 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v6 = v8 + 1;
          v9 = *(*(v15 + 32 + 8 * v8) + 208);
          if (v9 != 4)
          {
            goto LABEL_19;
          }

LABEL_15:
          v8 = v6;
          if (v6 == v5)
          {
            goto LABEL_29;
          }
        }

        v10 = MEMORY[0x1DA72AA90](v8, v15);
        v6 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
          return;
        }

        v9 = *(v10 + 208);
        swift_unknownObjectRelease();
        if (v9 == 4)
        {
          goto LABEL_15;
        }

LABEL_19:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1D8ECD828(0, *(v7 + 2) + 1, 1, v7);
        }

        v12 = *(v7 + 2);
        v11 = *(v7 + 3);
        if (v12 >= v11 >> 1)
        {
          v7 = sub_1D8ECD828((v11 > 1), v12 + 1, 1, v7);
        }

        *(v7 + 2) = v12 + 1;
        v7[v12 + 32] = v9;
        if (v6 == v5)
        {
          goto LABEL_29;
        }
      }
    }
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_29:

  if (*(v7 + 2))
  {
    v13 = v7[32];
  }

  else
  {
    v13 = 4;
  }

  *a1 = v13;
}

unint64_t sub_1D9039EE4(char a1)
{
  result = 0x7470697263736564;
  switch(a1)
  {
    case 1:
      result = 0x6B726F77747261;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 0x6E756F43776F6873;
      break;
    case 4:
    case 10:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x5479616C70736964;
      break;
    case 6:
      result = 0x7263736275537369;
      break;
    case 7:
      result = 0xD000000000000017;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x777472416F676F6CLL;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0xD00000000000001ELL;
      break;
    case 14:
      result = 7107189;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D903A0A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D903F768(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D903A0DC(uint64_t a1)
{
  v2 = sub_1D903E398();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D903A118(uint64_t a1)
{
  v2 = sub_1D903E398();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ChannelAttributes.deinit()
{

  return v0;
}

uint64_t ChannelAttributes.__deallocating_deinit()
{
  ChannelAttributes.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D903A1F8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9310, &qword_1D91A9A88);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D903E398();
  sub_1D9179F1C();
  v14 = *(v3 + 16);
  v13 = 0;
  type metadata accessor for ServerDescription();
  sub_1D903E83C(&qword_1ECAB20B8, 255, type metadata accessor for ServerDescription, &protocol conformance descriptor for ServerDescription);
  sub_1D917999C();
  if (!v2)
  {
    v14 = *(v3 + 24);
    v13 = 1;
    type metadata accessor for ServerArtwork();
    sub_1D903E83C(&qword_1ECAB26D8, 255, type metadata accessor for ServerArtwork, &protocol conformance descriptor for ServerArtwork);
    sub_1D917999C();
    LOBYTE(v14) = 2;
    sub_1D91799BC();
    LOBYTE(v14) = 3;
    sub_1D917998C();
    LOBYTE(v14) = 4;
    sub_1D917998C();
    LOBYTE(v14) = *(v3 + 73);
    v13 = 5;
    sub_1D903E3EC();
    sub_1D917999C();
    LOBYTE(v14) = 6;
    sub_1D917995C();
    LOBYTE(v14) = 7;
    sub_1D917994C();
    LOBYTE(v14) = 8;
    sub_1D917994C();
    v14 = *(v3 + 112);
    v13 = 9;
    type metadata accessor for ChannelEditorialArtworkContainer();
    sub_1D903E83C(&unk_1ECAB1358, v9, type metadata accessor for ChannelEditorialArtworkContainer, &protocol conformance descriptor for ChannelEditorialArtworkContainer);
    sub_1D917999C();
    v14 = *(v3 + 120);
    v13 = 10;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4610, &qword_1D91A9A90);
    sub_1D903E530(&qword_1ECAAFF58, &qword_1ECAB2078, &protocol conformance descriptor for SubscriptionOffer, MEMORY[0x1E69E6300]);
    v12 = v10;
    sub_1D917999C();
    v14 = *(v3 + 128);
    v13 = 11;
    sub_1D917999C();
    LOBYTE(v14) = 12;
    sub_1D917994C();
    v14 = *(v3 + 152);
    v13 = 13;
    sub_1D917999C();
    LOBYTE(v14) = 14;
    sub_1D917994C();
    LOBYTE(v14) = *(v3 + 176);
    v13 = 15;
    sub_1D903E488();
    sub_1D917999C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ChannelAttributes.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ChannelAttributes.init(from:)(a1);
  return v2;
}

uint64_t ChannelAttributes.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9320, &qword_1D91A9A98);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D903E398();
  sub_1D9179EEC();
  if (v2)
  {
    type metadata accessor for ChannelAttributes();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for ServerDescription();
    v20 = 0;
    sub_1D903E83C(&qword_1EDCD4760, 255, type metadata accessor for ServerDescription, &protocol conformance descriptor for ServerDescription);
    sub_1D917989C();
    *(v1 + 16) = v21;
    type metadata accessor for ServerArtwork();
    v20 = 1;
    sub_1D903E83C(&qword_1EDCD54A0, 255, type metadata accessor for ServerArtwork, &protocol conformance descriptor for ServerArtwork);
    sub_1D917989C();
    *(v1 + 24) = v21;
    LOBYTE(v21) = 2;
    *(v1 + 32) = sub_1D91798BC();
    *(v1 + 40) = v9;
    LOBYTE(v21) = 3;
    v19[1] = 0;
    *(v1 + 48) = sub_1D917988C();
    *(v1 + 56) = v10 & 1;
    LOBYTE(v21) = 4;
    *(v1 + 64) = sub_1D917988C();
    *(v1 + 72) = v11 & 1;
    v20 = 5;
    sub_1D903E4DC();
    sub_1D917989C();
    *(v1 + 73) = v21;
    LOBYTE(v21) = 6;
    *(v1 + 74) = sub_1D917985C();
    LOBYTE(v21) = 7;
    *(v1 + 80) = sub_1D917984C();
    *(v1 + 88) = v13;
    LOBYTE(v21) = 8;
    *(v1 + 96) = sub_1D917984C();
    *(v1 + 104) = v14;
    type metadata accessor for ChannelEditorialArtworkContainer();
    v20 = 9;
    sub_1D903E83C(&qword_1EDCD1ED8, v15, type metadata accessor for ChannelEditorialArtworkContainer, &protocol conformance descriptor for ChannelEditorialArtworkContainer);
    sub_1D917989C();
    *(v1 + 112) = v21;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4610, &qword_1D91A9A90);
    v20 = 10;
    v19[3] = sub_1D903E530(&qword_1EDCD0A88, &qword_1EDCD4690, &protocol conformance descriptor for SubscriptionOffer, MEMORY[0x1E69E6330]);
    v19[4] = v16;
    sub_1D917989C();
    *(v3 + 120) = v21;
    v20 = 11;
    sub_1D917989C();
    *(v3 + 128) = v21;
    LOBYTE(v21) = 12;
    *(v3 + 136) = sub_1D917984C();
    *(v3 + 144) = v17;
    v20 = 13;
    sub_1D917989C();
    *(v3 + 152) = v21;
    LOBYTE(v21) = 14;
    *(v3 + 160) = sub_1D917984C();
    *(v3 + 168) = v18;
    v20 = 15;
    sub_1D903E5CC();
    sub_1D917989C();
    (*(v6 + 8))(v8, v5);
    *(v3 + 176) = v21;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

void *ChannelRelationships.podcasts.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_1D903B134(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7374736163646F70 && a2 == 0xE800000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D9179ACC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D903B1BC(uint64_t a1)
{
  v2 = sub_1D903E620();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D903B1F8(uint64_t a1)
{
  v2 = sub_1D903E620();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ChannelRelationships.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ChannelRelationships.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9328, &qword_1D91A9AA0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D903E620();
  sub_1D9179F1C();
  v9[1] = *(v2 + 16);
  type metadata accessor for PodcastRelationshipContainer();
  sub_1D903E83C(&qword_1ECAB9338, 255, type metadata accessor for PodcastRelationshipContainer, &protocol conformance descriptor for PodcastRelationshipContainer);
  sub_1D917999C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t ChannelRelationships.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ChannelRelationships.init(from:)(a1);
  return v2;
}

void *ChannelRelationships.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9340, &qword_1D91A9AA8);
  v9 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D903E620();
  sub_1D9179EEC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for PodcastRelationshipContainer();
    sub_1D903E83C(&qword_1ECAB17C8, 255, type metadata accessor for PodcastRelationshipContainer, &protocol conformance descriptor for PodcastRelationshipContainer);
    sub_1D917989C();
    (*(v9 + 8))(v6, v4);
    *(v1 + 16) = v10;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

void *sub_1D903B658@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = ChannelRelationships.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_1D903B6F4()
{
  v1 = *v0;
  v2 = 0x6F6C4665726F7473;
  if (v1 != 4)
  {
    v2 = 0xD000000000000012;
  }

  if (v1 == 3)
  {
    v2 = 0xD000000000000016;
  }

  v3 = 0xD000000000000014;
  v4 = 0xD000000000000014;
  if (v1 != 1)
  {
    v4 = 0xD000000000000015;
  }

  if (*v0)
  {
    v3 = v4;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D903B7CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D903FC78(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D903B7F4(uint64_t a1)
{
  v2 = sub_1D903E674();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D903B830(uint64_t a1)
{
  v2 = sub_1D903E674();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ChannelEditorialArtworkContainer.deinit()
{

  return v0;
}

uint64_t ChannelEditorialArtworkContainer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D903B914(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9348, &qword_1D91A9AB0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D903E674();
  sub_1D9179F1C();
  v11 = v3[2];
  HIBYTE(v10) = 0;
  type metadata accessor for ServerArtwork();
  sub_1D903E83C(&qword_1ECAB26D8, 255, type metadata accessor for ServerArtwork, &protocol conformance descriptor for ServerArtwork);
  sub_1D917999C();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v11 = v3[3];
  HIBYTE(v10) = 1;
  sub_1D917999C();
  v11 = v3[4];
  HIBYTE(v10) = 2;
  sub_1D917999C();
  v11 = v3[5];
  HIBYTE(v10) = 3;
  sub_1D917999C();
  v11 = v3[6];
  HIBYTE(v10) = 4;
  sub_1D917999C();
  v11 = v3[7];
  HIBYTE(v10) = 5;
  sub_1D917999C();
  return (*(v6 + 8))(v8, v5);
}

uint64_t ChannelEditorialArtworkContainer.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ChannelEditorialArtworkContainer.init(from:)(a1);
  return v2;
}

void *ChannelEditorialArtworkContainer.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9350, &qword_1D91A9AB8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D903E674();
  sub_1D9179EEC();
  if (v2)
  {
    type metadata accessor for ChannelEditorialArtworkContainer();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for ServerArtwork();
    v10 = 0;
    sub_1D903E83C(&qword_1EDCD54A0, 255, type metadata accessor for ServerArtwork, &protocol conformance descriptor for ServerArtwork);
    sub_1D917989C();
    v1[2] = v11;
    v10 = 1;
    sub_1D917989C();
    v1[3] = v11;
    v10 = 2;
    sub_1D917989C();
    v1[4] = v11;
    v10 = 3;
    v9 = 0;
    sub_1D917989C();
    v1[5] = v11;
    v10 = 4;
    sub_1D917989C();
    v1[6] = v11;
    v10 = 5;
    sub_1D917989C();
    (*(v5 + 8))(v7, v4);
    v1[7] = v11;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

PodcastsFoundation::SubscriptionOffer::Kind_optional __swiftcall SubscriptionOffer.Kind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SubscriptionOffer.Kind.rawValue.getter()
{
  v1 = 0x687475616FLL;
  if (*v0 != 1)
  {
    v1 = 0x6269726373627573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7070612D6E69;
  }
}

uint64_t sub_1D903C140(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x687475616FLL;
  if (v2 != 1)
  {
    v4 = 0x6269726373627573;
    v3 = 0xE900000000000065;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7070612D6E69;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x687475616FLL;
  if (*a2 != 1)
  {
    v8 = 0x6269726373627573;
    v7 = 0xE900000000000065;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7070612D6E69;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D9179ACC();
  }

  return v11 & 1;
}

uint64_t sub_1D903C240()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D903C2E0(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D903C36C(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

void sub_1D903C414(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x687475616FLL;
  if (v2 != 1)
  {
    v5 = 0x6269726373627573;
    v4 = 0xE900000000000065;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7070612D6E69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

PodcastsFoundation::SubscriptionOffer::AppType_optional __swiftcall SubscriptionOffer.AppType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SubscriptionOffer.AppType.rawValue.getter()
{
  v1 = 0x636973756DLL;
  v2 = 30324;
  if (*v0 != 2)
  {
    v2 = 0x6C616E7265747865;
  }

  if (*v0)
  {
    v1 = 1937204590;
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

uint64_t sub_1D903C5EC()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D903C698(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D903C730(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

void sub_1D903C7E4(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x636973756DLL;
  v4 = 0xE200000000000000;
  v5 = 30324;
  if (*v1 != 2)
  {
    v5 = 0x6C616E7265747865;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 1937204590;
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

uint64_t SubscriptionOffer.eligibilityType.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t SubscriptionOffer.offerName.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t SubscriptionOffer.description.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t SubscriptionOffer.appId.getter()
{
  v1 = *(v0 + 192);

  return v1;
}

uint64_t SubscriptionOffer.appName.getter()
{
  v1 = *(v0 + 216);

  return v1;
}

uint64_t SubscriptionOffer.authorizationUrl.getter()
{
  v1 = *(v0 + 240);

  return v1;
}

unint64_t sub_1D903CA6C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x796C696D61467369;
      break;
    case 2:
      result = 0x7263736275537369;
      break;
    case 3:
      result = 0x6C69626967696C65;
      break;
    case 4:
      result = 0x6D614E726566666FLL;
      break;
    case 5:
      result = 1684957547;
      break;
    case 6:
      result = 0x656C746974;
      break;
    case 7:
      result = 0x646F69726570;
      break;
    case 8:
      result = 0x6E65647574537369;
      break;
    case 9:
      result = 0x7470697263736564;
      break;
    case 10:
      result = 0x6D61726150797562;
      break;
    case 11:
      result = 0x6169725465657266;
      break;
    case 12:
      result = 0x6169725465657266;
      break;
    case 13:
      result = 0x656572467369;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0x6449707061;
      break;
    case 16:
      result = 0x65707954707061;
      break;
    case 17:
      result = 0x656D614E707061;
      break;
    case 18:
      result = 0x6F77747241707061;
      break;
    case 19:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D903CC9C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D903FE84(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D903CCD0(uint64_t a1)
{
  v2 = sub_1D903E6C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D903CD0C(uint64_t a1)
{
  v2 = sub_1D903E6C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SubscriptionOffer.deinit()
{

  return v0;
}

uint64_t SubscriptionOffer.__deallocating_deinit()
{
  SubscriptionOffer.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D903CDFC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9358, &qword_1D91A9AC0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D903E6C8();
  sub_1D9179F1C();
  LOBYTE(v11) = 0;
  sub_1D91799BC();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_1D917995C();
    LOBYTE(v11) = 2;
    sub_1D917995C();
    LOBYTE(v11) = 3;
    sub_1D917994C();
    LOBYTE(v11) = 4;
    sub_1D917994C();
    LOBYTE(v11) = *(v3 + 72);
    v12 = 5;
    sub_1D903E71C();
    sub_1D917999C();
    LOBYTE(v11) = 6;
    sub_1D917994C();
    LOBYTE(v11) = 7;
    sub_1D917994C();
    LOBYTE(v11) = 8;
    sub_1D917995C();
    LOBYTE(v11) = 9;
    sub_1D917994C();
    LOBYTE(v11) = 10;
    sub_1D917994C();
    LOBYTE(v11) = 11;
    sub_1D917995C();
    LOBYTE(v11) = 12;
    sub_1D917994C();
    LOBYTE(v11) = 13;
    sub_1D917995C();
    v11 = *(v3 + 184);
    v12 = 14;
    type metadata accessor for ValueProposition();
    sub_1D903E83C(&qword_1ECAB9368, v9, type metadata accessor for ValueProposition, &protocol conformance descriptor for ValueProposition);
    sub_1D917999C();
    LOBYTE(v11) = 15;
    sub_1D917994C();
    LOBYTE(v11) = *(v3 + 208);
    v12 = 16;
    sub_1D903E794();
    sub_1D917999C();
    LOBYTE(v11) = 17;
    sub_1D917994C();
    v11 = *(v3 + 232);
    v12 = 18;
    type metadata accessor for ServerArtwork();
    sub_1D903E83C(&qword_1ECAB26D8, 255, type metadata accessor for ServerArtwork, &protocol conformance descriptor for ServerArtwork);
    sub_1D917999C();
    LOBYTE(v11) = 19;
    sub_1D917994C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SubscriptionOffer.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  SubscriptionOffer.init(from:)(a1);
  return v2;
}

uint64_t SubscriptionOffer.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9378, &qword_1D91A9AC8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D903E6C8();
  sub_1D9179EEC();
  if (v2)
  {
    type metadata accessor for SubscriptionOffer();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v26) = 0;
    *(v1 + 16) = sub_1D91798BC();
    *(v1 + 24) = v9;
    LOBYTE(v26) = 1;
    *(v1 + 32) = sub_1D917985C();
    LOBYTE(v26) = 2;
    *(v1 + 33) = sub_1D917985C();
    LOBYTE(v26) = 3;
    *(v1 + 40) = sub_1D917984C();
    *(v1 + 48) = v11;
    LOBYTE(v26) = 4;
    *(v1 + 56) = sub_1D917984C();
    *(v1 + 64) = v12;
    v27 = 5;
    sub_1D903E7E8();
    sub_1D917989C();
    *(v1 + 72) = v26;
    LOBYTE(v26) = 6;
    v13 = sub_1D917984C();
    v25 = 0;
    *(v1 + 80) = v13;
    *(v1 + 88) = v14;
    LOBYTE(v26) = 7;
    *(v1 + 96) = sub_1D917984C();
    *(v1 + 104) = v15;
    LOBYTE(v26) = 8;
    *(v1 + 112) = sub_1D917985C();
    LOBYTE(v26) = 9;
    *(v1 + 120) = sub_1D917984C();
    *(v1 + 128) = v16;
    LOBYTE(v26) = 10;
    *(v1 + 136) = sub_1D917984C();
    *(v1 + 144) = v17;
    LOBYTE(v26) = 11;
    *(v1 + 152) = sub_1D917985C();
    LOBYTE(v26) = 12;
    *(v1 + 160) = sub_1D917984C();
    *(v1 + 168) = v18;
    LOBYTE(v26) = 13;
    *(v1 + 176) = sub_1D917985C();
    type metadata accessor for ValueProposition();
    v27 = 14;
    sub_1D903E83C(&qword_1ECAB2118, v19, type metadata accessor for ValueProposition, &protocol conformance descriptor for ValueProposition);
    sub_1D917989C();
    *(v1 + 184) = v26;
    LOBYTE(v26) = 15;
    *(v1 + 192) = sub_1D917984C();
    *(v1 + 200) = v20;
    v27 = 16;
    sub_1D903E884();
    sub_1D917989C();
    *(v1 + 208) = v26;
    LOBYTE(v26) = 17;
    *(v1 + 216) = sub_1D917984C();
    *(v1 + 224) = v21;
    type metadata accessor for ServerArtwork();
    v27 = 18;
    sub_1D903E83C(&qword_1EDCD54A0, 255, type metadata accessor for ServerArtwork, &protocol conformance descriptor for ServerArtwork);
    sub_1D917989C();
    *(v1 + 232) = v26;
    LOBYTE(v26) = 19;
    v22 = sub_1D917984C();
    v24 = v23;
    (*(v6 + 8))(v8, v5);
    *(v3 + 240) = v22;
    *(v3 + 248) = v24;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t ValueProposition.price.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ValueProposition.priceForDisplay.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1D903DD0C()
{
  if (*v0)
  {
    return 0x726F466563697270;
  }

  else
  {
    return 0x6563697270;
  }
}

void sub_1D903DD50(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6563697270 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D9179ACC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x726F466563697270 && a2 == 0xEF79616C70736944)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D9179ACC();

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
}

uint64_t sub_1D903DE30(uint64_t a1)
{
  v2 = sub_1D903E8D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D903DE6C(uint64_t a1)
{
  v2 = sub_1D903E8D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ValueProposition.deinit()
{

  return v0;
}

uint64_t ValueProposition.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D903DF10(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9380, &qword_1D91A9AD0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D903E8D8();
  sub_1D9179F1C();
  v8[15] = 0;
  sub_1D91799BC();
  if (!v1)
  {
    v8[14] = 1;
    sub_1D91799BC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ValueProposition.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ValueProposition.init(from:)(a1);
  return v2;
}

void *ValueProposition.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9388, &qword_1D91A9AD8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D903E8D8();
  sub_1D9179EEC();
  if (v2)
  {
    type metadata accessor for ValueProposition();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = 0;
    v1[2] = sub_1D91798BC();
    v1[3] = v8;
    v14 = 1;
    v10 = sub_1D91798BC();
    v12 = v11;
    (*(v5 + 8))(v7, v4);
    v1[4] = v10;
    v1[5] = v12;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_1D903E304@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t (*a4)(uint64_t)@<X5>, uint64_t *a5@<X8>)
{
  a2();
  v9 = swift_allocObject();
  result = a4(a1);
  if (!v5)
  {
    *a5 = v9;
  }

  return result;
}

unint64_t sub_1D903E398()
{
  result = qword_1EDCD4B48[0];
  if (!qword_1EDCD4B48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCD4B48);
  }

  return result;
}

unint64_t sub_1D903E3EC()
{
  result = qword_1ECAB20E8;
  if (!qword_1ECAB20E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB20E8);
  }

  return result;
}

unint64_t sub_1D903E488()
{
  result = qword_1ECAB9318;
  if (!qword_1ECAB9318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9318);
  }

  return result;
}

unint64_t sub_1D903E4DC()
{
  result = qword_1EDCD4B28;
  if (!qword_1EDCD4B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD4B28);
  }

  return result;
}

uint64_t sub_1D903E530(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4610, &qword_1D91A9A90);
    sub_1D903E83C(a2, v8, type metadata accessor for SubscriptionOffer, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D903E5CC()
{
  result = qword_1EDCD4B20;
  if (!qword_1EDCD4B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD4B20);
  }

  return result;
}

unint64_t sub_1D903E620()
{
  result = qword_1ECAB9330;
  if (!qword_1ECAB9330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9330);
  }

  return result;
}

unint64_t sub_1D903E674()
{
  result = qword_1EDCD1EF0[0];
  if (!qword_1EDCD1EF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCD1EF0);
  }

  return result;
}

unint64_t sub_1D903E6C8()
{
  result = qword_1ECAB20B0;
  if (!qword_1ECAB20B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB20B0);
  }

  return result;
}

unint64_t sub_1D903E71C()
{
  result = qword_1ECAB9360;
  if (!qword_1ECAB9360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9360);
  }

  return result;
}

unint64_t sub_1D903E794()
{
  result = qword_1ECAB9370;
  if (!qword_1ECAB9370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9370);
  }

  return result;
}

unint64_t sub_1D903E7E8()
{
  result = qword_1ECAB2090;
  if (!qword_1ECAB2090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2090);
  }

  return result;
}

uint64_t sub_1D903E83C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D903E884()
{
  result = qword_1ECAB2080;
  if (!qword_1ECAB2080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2080);
  }

  return result;
}

unint64_t sub_1D903E8D8()
{
  result = qword_1ECAB2130;
  if (!qword_1ECAB2130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2130);
  }

  return result;
}

unint64_t sub_1D903E930()
{
  result = qword_1ECAB9390;
  if (!qword_1ECAB9390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9390);
  }

  return result;
}

unint64_t sub_1D903E988()
{
  result = qword_1ECAB9398;
  if (!qword_1ECAB9398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9398);
  }

  return result;
}

unint64_t sub_1D903E9E0()
{
  result = qword_1ECAB93A0;
  if (!qword_1ECAB93A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB93A0);
  }

  return result;
}

unint64_t sub_1D903EA38()
{
  result = qword_1ECAB93A8;
  if (!qword_1ECAB93A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB93A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SubscriptionOffer.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SubscriptionOffer.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D903EF84()
{
  result = qword_1ECAB93B0;
  if (!qword_1ECAB93B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB93B0);
  }

  return result;
}

unint64_t sub_1D903EFDC()
{
  result = qword_1ECAB93B8;
  if (!qword_1ECAB93B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB93B8);
  }

  return result;
}

unint64_t sub_1D903F034()
{
  result = qword_1ECAB93C0;
  if (!qword_1ECAB93C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB93C0);
  }

  return result;
}

unint64_t sub_1D903F08C()
{
  result = qword_1ECAB93C8;
  if (!qword_1ECAB93C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB93C8);
  }

  return result;
}

unint64_t sub_1D903F0E4()
{
  result = qword_1ECAB93D0;
  if (!qword_1ECAB93D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB93D0);
  }

  return result;
}

unint64_t sub_1D903F13C()
{
  result = qword_1ECAB93D8;
  if (!qword_1ECAB93D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB93D8);
  }

  return result;
}

unint64_t sub_1D903F194()
{
  result = qword_1ECAB2120;
  if (!qword_1ECAB2120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2120);
  }

  return result;
}

unint64_t sub_1D903F1EC()
{
  result = qword_1ECAB2128;
  if (!qword_1ECAB2128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2128);
  }

  return result;
}

unint64_t sub_1D903F244()
{
  result = qword_1ECAB20A0;
  if (!qword_1ECAB20A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB20A0);
  }

  return result;
}

unint64_t sub_1D903F29C()
{
  result = qword_1ECAB20A8;
  if (!qword_1ECAB20A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB20A8);
  }

  return result;
}

unint64_t sub_1D903F2F4()
{
  result = qword_1EDCD1EE0;
  if (!qword_1EDCD1EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD1EE0);
  }

  return result;
}

unint64_t sub_1D903F34C()
{
  result = qword_1EDCD1EE8;
  if (!qword_1EDCD1EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD1EE8);
  }

  return result;
}

unint64_t sub_1D903F3A4()
{
  result = qword_1ECAB93E0;
  if (!qword_1ECAB93E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB93E0);
  }

  return result;
}

unint64_t sub_1D903F3FC()
{
  result = qword_1ECAB93E8;
  if (!qword_1ECAB93E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB93E8);
  }

  return result;
}

unint64_t sub_1D903F454()
{
  result = qword_1EDCD4B38;
  if (!qword_1EDCD4B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD4B38);
  }

  return result;
}

unint64_t sub_1D903F4AC()
{
  result = qword_1EDCD4B40;
  if (!qword_1EDCD4B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD4B40);
  }

  return result;
}

unint64_t sub_1D903F504()
{
  result = qword_1EDCD5488;
  if (!qword_1EDCD5488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD5488);
  }

  return result;
}

unint64_t sub_1D903F55C()
{
  result = qword_1EDCD5490;
  if (!qword_1EDCD5490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD5490);
  }

  return result;
}

uint64_t sub_1D903F5B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1717924456 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F6974616C6572 && a2 == 0xED00007370696873)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D9179ACC();

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

uint64_t sub_1D903F768(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E756F43776F6873 && a2 == 0xE900000000000074 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D91C8030 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x5479616C70736964 && a2 == 0xEB00000000657079 || (sub_1D9179ACC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7263736275537369 && a2 == 0xEC00000064656269 || (sub_1D9179ACC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D91C8080 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D91C80F0 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D91C8010 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D91C7FF0 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x777472416F676F6CLL && a2 == 0xEB000000006B726FLL || (sub_1D9179ACC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D91D38B0 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001D91C7FD0 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D91C80D0 == a2)
  {

    return 15;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t sub_1D903FC78(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001D91D3940 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D91D3960 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D91D3980 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D91D39A0 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F6C4665726F7473 && a2 == 0xED00006573616377 || (sub_1D9179ACC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D91D39D0 == a2)
  {

    return 5;
  }

  else
  {
    v5 = sub_1D9179ACC();

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

uint64_t sub_1D903FE84(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x796C696D61467369 && a2 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7263736275537369 && a2 == 0xEC00000064656269 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C69626967696C65 && a2 == 0xEF65707954797469 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D614E726566666FLL && a2 == 0xE900000000000065 || (sub_1D9179ACC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x646F69726570 && a2 == 0xE600000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E65647574537369 && a2 == 0xE900000000000074 || (sub_1D9179ACC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_1D9179ACC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6D61726150797562 && a2 == 0xE900000000000073 || (sub_1D9179ACC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6169725465657266 && a2 == 0xE90000000000006CLL || (sub_1D9179ACC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6169725465657266 && a2 == 0xEF646F697265506CLL || (sub_1D9179ACC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x656572467369 && a2 == 0xE600000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D91D3A90 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6449707061 && a2 == 0xE500000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x65707954707061 && a2 == 0xE700000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x6F77747241707061 && a2 == 0xEA00000000006B72 || (sub_1D9179ACC() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D91D3AD0 == a2)
  {

    return 19;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 19;
    }

    else
    {
      return 20;
    }
  }
}

unint64_t sub_1D90404BC()
{
  result = qword_1ECAB2088;
  if (!qword_1ECAB2088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2088);
  }

  return result;
}

unint64_t sub_1D9040510()
{
  result = qword_1ECAB2098;
  if (!qword_1ECAB2098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2098);
  }

  return result;
}

unint64_t sub_1D9040564()
{
  result = qword_1ECAB93F0;
  if (!qword_1ECAB93F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB93F0);
  }

  return result;
}

unint64_t sub_1D90405B8()
{
  result = qword_1EDCD4B30;
  if (!qword_1EDCD4B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD4B30);
  }

  return result;
}

id ServerSyncResponse.Episode.fullEpisode.getter()
{
  v1 = v0[6];
  if (!v1)
  {
    return 0;
  }

  v16 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  v7 = *v0;
  v6 = v0[1];
  v8 = type metadata accessor for ServerPodcastEpisode();
  v9 = objc_allocWithZone(v8);
  v10 = OBJC_IVAR___MTServerPodcastEpisode_relationships;
  *&v9[OBJC_IVAR___MTServerPodcastEpisode_relationships] = 0;
  v11 = &v9[OBJC_IVAR___MTServerPodcastEpisode_id];
  *v11 = v7;
  *(v11 + 1) = v6;
  v12 = &v9[OBJC_IVAR___MTServerPodcastEpisode_type];
  *v12 = v5;
  *(v12 + 1) = v4;
  v13 = &v9[OBJC_IVAR___MTServerPodcastEpisode_href];
  *v13 = v3;
  *(v13 + 1) = v2;
  *&v9[OBJC_IVAR___MTServerPodcastEpisode_attributes] = v1;
  swift_beginAccess();
  *&v9[v10] = v16;
  v17.receiver = v9;
  v17.super_class = v8;

  v14 = v16;
  return objc_msgSendSuper2(&v17, sel_init);
}

uint64_t ServerSyncResponse.Meta.nextSyncToken.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ServerSyncResponse.Meta.reason.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void __swiftcall ServerSyncResponse.Meta.init(nextSyncToken:reset:reason:startWithBootstrap:)(PodcastsFoundation::ServerSyncResponse::Meta *__return_ptr retstr, Swift::String_optional nextSyncToken, Swift::Bool_optional reset, Swift::String_optional reason, Swift::Bool_optional startWithBootstrap)
{
  retstr->nextSyncToken = nextSyncToken;
  retstr->reset = reset;
  retstr->reason = reason;
  retstr->startWithBootstrap = startWithBootstrap;
}

unint64_t sub_1D90407F8()
{
  v1 = 0x636E79537478656ELL;
  v2 = 0x7465736572;
  if (*v0 != 2)
  {
    v2 = 0x6E6F73616572;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
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

uint64_t sub_1D904087C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9042FFC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D90408A4(uint64_t a1)
{
  v2 = sub_1D9042484();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90408E0(uint64_t a1)
{
  v2 = sub_1D9042484();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServerSyncResponse.Meta.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB93F8, &qword_1D91AAA90);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v13 = *(v1 + 16);
  v11 = *(v1 + 17);
  v7 = *(v1 + 24);
  v10[0] = *(v1 + 32);
  v10[1] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9042484();
  sub_1D9179F1C();
  v17 = 0;
  v8 = v12;
  sub_1D917994C();
  if (v8)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v16 = 1;
  sub_1D917995C();
  v15 = 2;
  sub_1D917995C();
  v14 = 3;
  sub_1D917994C();
  return (*(v4 + 8))(v6, v3);
}

void ServerSyncResponse.Meta.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9400, &qword_1D91AAA98);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9042484();
  sub_1D9179EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v25 = 0;
    v9 = sub_1D917984C();
    v11 = v10;
    v12 = v9;
    v24 = 1;
    v13 = sub_1D917985C();
    v23 = 2;
    v21 = sub_1D917985C();
    v22 = 3;
    v14 = sub_1D917984C();
    v15 = *(v6 + 8);
    v20 = v14;
    v16 = v8;
    v18 = v17;
    v15(v16, v5);
    *a2 = v12;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
    *(a2 + 17) = v21;
    *(a2 + 24) = v20;
    *(a2 + 32) = v18;

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }
}

void sub_1D9040DA8(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x646574656C6564 && a2 == 0xE700000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D9179ACC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D9040E30(uint64_t a1)
{
  v2 = sub_1D90424D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9040E6C(uint64_t a1)
{
  v2 = sub_1D90424D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServerSyncResponse.Episode.Meta.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9408, &qword_1D91AAAA0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90424D8();
  sub_1D9179F1C();
  sub_1D917995C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t ServerSyncResponse.Episode.Meta.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9410, &qword_1D91AAAA8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90424D8();
  sub_1D9179EEC();
  if (!v2)
  {
    v9 = sub_1D917985C();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1D904114C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9408, &qword_1D91AAAA0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90424D8();
  sub_1D9179F1C();
  sub_1D917995C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t ServerSyncResponse.Episode.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ServerSyncResponse.Episode.type.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ServerSyncResponse.Episode.href.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void *ServerSyncResponse.Episode.relationships.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

uint64_t ServerSyncResponse.Episode.init(id:type:href:attributes:relationships:meta:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10)
{
  v10 = *a10;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = v10;
  return result;
}

uint64_t sub_1D9041370()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x7475626972747461;
  v4 = 0x6E6F6974616C6572;
  if (v1 != 4)
  {
    v4 = 1635018093;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1701869940;
  if (v1 != 1)
  {
    v5 = 1717924456;
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

uint64_t sub_1D9041414@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9043168(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D904143C(uint64_t a1)
{
  v2 = sub_1D904252C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9041478(uint64_t a1)
{
  v2 = sub_1D904252C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServerSyncResponse.Episode.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9418, &qword_1D91AAAB0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - v5;
  v7 = *(v1 + 16);
  v21 = *(v1 + 24);
  v22 = v7;
  v8 = *(v1 + 32);
  v19 = *(v1 + 40);
  v20 = v8;
  v9 = *(v1 + 48);
  v17 = *(v1 + 56);
  v18 = v9;
  v16 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D904252C();
  sub_1D9179F1C();
  LOBYTE(v25) = 0;
  v10 = v23;
  sub_1D91799BC();
  if (!v10)
  {
    v12 = v17;
    v11 = v18;
    v13 = v16;
    LOBYTE(v25) = 1;
    sub_1D91799BC();
    LOBYTE(v25) = 2;
    sub_1D91799BC();
    v25 = v11;
    v24 = 3;
    type metadata accessor for PodcastEpisodeAttributes(0);
    sub_1D90425D4(&qword_1ECAB9420, type metadata accessor for PodcastEpisodeAttributes, &protocol conformance descriptor for PodcastEpisodeAttributes);
    sub_1D917999C();
    v25 = v12;
    v24 = 4;
    type metadata accessor for PodcastEpisodeRelationships();
    sub_1D90425D4(&qword_1ECAB9428, type metadata accessor for PodcastEpisodeRelationships, &protocol conformance descriptor for PodcastEpisodeRelationships);
    sub_1D917999C();
    LOBYTE(v25) = v13;
    v24 = 5;
    sub_1D9042580();
    sub_1D917999C();
  }

  return (*(v4 + 8))(v6, v3);
}

void ServerSyncResponse.Episode.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9438, &qword_1D91AAAB8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D904252C();
  sub_1D9179EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    LOBYTE(v35[0]) = 0;
    v9 = sub_1D91798BC();
    v11 = v10;
    LOBYTE(v35[0]) = 1;
    v26 = sub_1D91798BC();
    v29 = v12;
    LOBYTE(v35[0]) = 2;
    v13 = sub_1D91798BC();
    v28 = v14;
    v25 = v13;
    type metadata accessor for PodcastEpisodeAttributes(0);
    v27 = 0;
    LOBYTE(v30) = 3;
    sub_1D90425D4(&qword_1EDCD2E70, type metadata accessor for PodcastEpisodeAttributes, &protocol conformance descriptor for PodcastEpisodeAttributes);
    v15 = v27;
    sub_1D917989C();
    if (v15)
    {
      (*(v6 + 8))(v8, v5);
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      v16 = v27;

      if (!v16)
      {
      }
    }

    else
    {
      v24 = v35[0];
      type metadata accessor for PodcastEpisodeRelationships();
      LOBYTE(v30) = 4;
      sub_1D90425D4(&qword_1EDCD2758, type metadata accessor for PodcastEpisodeRelationships, &protocol conformance descriptor for PodcastEpisodeRelationships);
      sub_1D917989C();
      v23 = v35[0];
      v37 = 5;
      sub_1D904261C();
      sub_1D917989C();
      (*(v6 + 8))(v8, v5);
      *&v30 = v9;
      *(&v30 + 1) = v11;
      v18 = v28;
      v17 = v29;
      *&v31 = v26;
      *(&v31 + 1) = v29;
      *&v32 = v25;
      *(&v32 + 1) = v28;
      v19 = v24;
      *&v33 = v24;
      *(&v33 + 1) = v23;
      v20 = v38;
      v34 = v38;
      *(a2 + 64) = v38;
      v21 = v33;
      *(a2 + 32) = v32;
      *(a2 + 48) = v21;
      v22 = v31;
      *a2 = v30;
      *(a2 + 16) = v22;
      sub_1D9042670(&v30, v35);
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      v35[0] = v9;
      v35[1] = v11;
      v35[2] = v26;
      v35[3] = v17;
      v35[4] = v25;
      v35[5] = v18;
      v35[6] = v19;
      v35[7] = v23;
      v36 = v20;
      sub_1D90426A8(v35);
    }
  }
}

uint64_t ServerSyncResponse.next.getter()
{
  v1 = *v0;

  return v1;
}

double ServerSyncResponse.meta.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = *(v1 + 40);
  v4 = *(v1 + 48);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v5;
  *(a1 + 32) = v4;

  return result;
}

__n128 ServerSyncResponse.init(next:meta:data:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a3 + 16);
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = *a3;
  *(a5 + 32) = v5;
  result = *(a3 + 24);
  *(a5 + 40) = result;
  *(a5 + 56) = a4;
  return result;
}

uint64_t sub_1D9041DB0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D904336C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9041DD8(uint64_t a1)
{
  v2 = sub_1D90426D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9041E14(uint64_t a1)
{
  v2 = sub_1D90426D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServerSyncResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9440, &qword_1D91AAAC0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - v5;
  v7 = *(v1 + 16);
  v18 = *(v1 + 24);
  v26 = *(v1 + 32);
  v15 = *(v1 + 33);
  v9 = *(v1 + 40);
  v8 = *(v1 + 48);
  v16 = v7;
  v17 = v8;
  v13 = *(v1 + 56);
  v14 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90426D8();
  sub_1D9179F1C();
  LOBYTE(v20) = 0;
  v10 = v19;
  sub_1D917994C();
  if (!v10)
  {
    v20 = v16;
    v21 = v18;
    v22 = v26;
    v23 = v15;
    v11 = v13;
    v24 = v14;
    v25 = v17;
    v27 = 1;
    sub_1D904272C();

    sub_1D91799FC();

    v20 = v11;
    v27 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9450, &qword_1D91AAAC8);
    sub_1D9042828(&qword_1ECAB9458, sub_1D9042780, MEMORY[0x1E69E6300]);
    sub_1D91799FC();
  }

  return (*(v4 + 8))(v6, v3);
}

void ServerSyncResponse.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9468, &qword_1D91AAAD0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90426D8();
  sub_1D9179EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    LOBYTE(v31) = 0;
    v9 = sub_1D917984C();
    v11 = v10;
    v26 = v9;
    LOBYTE(v27) = 1;
    sub_1D90427D4();
    sub_1D91798FC();
    v21 = v31;
    v24 = v32;
    v20 = v33;
    v23 = BYTE1(v33);
    v22 = v34;
    v25 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9450, &qword_1D91AAAC8);
    v39 = 2;
    sub_1D9042828(&qword_1EDCD0A80, sub_1D90428A0, MEMORY[0x1E69E6330]);
    sub_1D91798FC();
    (*(v6 + 8))(v8, v5);
    v19 = v40;
    v13 = v25;
    v12 = v26;
    *&v27 = v26;
    *(&v27 + 1) = v11;
    v14 = v21;
    v15 = v24;
    *&v28 = v21;
    *(&v28 + 1) = v24;
    v16 = v20;
    LOBYTE(v29) = v20;
    BYTE1(v29) = v23;
    *(&v29 + 1) = v22;
    *&v30 = v25;
    *(&v30 + 1) = v40;
    v17 = v28;
    *a2 = v27;
    a2[1] = v17;
    v18 = v30;
    a2[2] = v29;
    a2[3] = v18;
    sub_1D90428F4(&v27, &v31);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v31 = v12;
    v32 = v11;
    v33 = v14;
    v34 = v15;
    LOBYTE(v35) = v16;
    BYTE1(v35) = v23;
    v36 = v22;
    v37 = v13;
    v38 = v19;
    sub_1D904292C(&v31);
  }
}

unint64_t sub_1D9042484()
{
  result = qword_1EDCD43E8;
  if (!qword_1EDCD43E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD43E8);
  }

  return result;
}

unint64_t sub_1D90424D8()
{
  result = qword_1ECAB1F90;
  if (!qword_1ECAB1F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1F90);
  }

  return result;
}

unint64_t sub_1D904252C()
{
  result = qword_1EDCD43C8;
  if (!qword_1EDCD43C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD43C8);
  }

  return result;
}

unint64_t sub_1D9042580()
{
  result = qword_1ECAB9430;
  if (!qword_1ECAB9430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9430);
  }

  return result;
}

uint64_t sub_1D90425D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D904261C()
{
  result = qword_1EDCD43B0;
  if (!qword_1EDCD43B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD43B0);
  }

  return result;
}

unint64_t sub_1D90426D8()
{
  result = qword_1EDCD4400;
  if (!qword_1EDCD4400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD4400);
  }

  return result;
}

unint64_t sub_1D904272C()
{
  result = qword_1ECAB9448;
  if (!qword_1ECAB9448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9448);
  }

  return result;
}

unint64_t sub_1D9042780()
{
  result = qword_1ECAB9460;
  if (!qword_1ECAB9460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9460);
  }

  return result;
}

unint64_t sub_1D90427D4()
{
  result = qword_1EDCD43D0;
  if (!qword_1EDCD43D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD43D0);
  }

  return result;
}

uint64_t sub_1D9042828(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB9450, &qword_1D91AAAC8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D90428A0()
{
  result = qword_1EDCD43A8;
  if (!qword_1EDCD43A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD43A8);
  }

  return result;
}

uint64_t sub_1D904296C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1D90429C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1D9042A34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_1D9042A7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ServerSyncResponse.Episode.Meta(unsigned __int8 *a1, unsigned int a2)
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
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

unint64_t sub_1D9042BE0()
{
  result = qword_1ECAB9470;
  if (!qword_1ECAB9470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9470);
  }

  return result;
}

unint64_t sub_1D9042C38()
{
  result = qword_1ECAB9478;
  if (!qword_1ECAB9478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9478);
  }

  return result;
}

unint64_t sub_1D9042C90()
{
  result = qword_1ECAB9480;
  if (!qword_1ECAB9480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9480);
  }

  return result;
}

unint64_t sub_1D9042CE8()
{
  result = qword_1ECAB9488;
  if (!qword_1ECAB9488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9488);
  }

  return result;
}

unint64_t sub_1D9042D40()
{
  result = qword_1EDCD43F0;
  if (!qword_1EDCD43F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD43F0);
  }

  return result;
}

unint64_t sub_1D9042D98()
{
  result = qword_1EDCD43F8;
  if (!qword_1EDCD43F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD43F8);
  }

  return result;
}

unint64_t sub_1D9042DF0()
{
  result = qword_1EDCD43B8;
  if (!qword_1EDCD43B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD43B8);
  }

  return result;
}

unint64_t sub_1D9042E48()
{
  result = qword_1EDCD43C0;
  if (!qword_1EDCD43C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD43C0);
  }

  return result;
}

unint64_t sub_1D9042EA0()
{
  result = qword_1ECAB1F80;
  if (!qword_1ECAB1F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1F80);
  }

  return result;
}

unint64_t sub_1D9042EF8()
{
  result = qword_1ECAB1F88;
  if (!qword_1ECAB1F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1F88);
  }

  return result;
}

unint64_t sub_1D9042F50()
{
  result = qword_1EDCD43D8;
  if (!qword_1EDCD43D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD43D8);
  }

  return result;
}

unint64_t sub_1D9042FA8()
{
  result = qword_1EDCD43E0;
  if (!qword_1EDCD43E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD43E0);
  }

  return result;
}

uint64_t sub_1D9042FFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E79537478656ELL && a2 == 0xED00006E656B6F54;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D91D3B40 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7465736572 && a2 == 0xE500000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9179ACC();

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

uint64_t sub_1D9043168(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1717924456 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F6974616C6572 && a2 == 0xED00007370696873 || (sub_1D9179ACC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1635018093 && a2 == 0xE400000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1D904336C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047342 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1635018093 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9179ACC();

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

uint64_t ServerTimeframe.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ServerTimeframe.type.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void *ServerTimeframe.__allocating_init(id:type:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  return result;
}

void *ServerTimeframe.init(id:type:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = a5;
  return v5;
}

uint64_t static ServerTimeframe.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1D9179ACC();
  }
}

uint64_t sub_1D9043640()
{
  v1 = 1701869940;
  if (*v0 != 1)
  {
    v1 = 0x7475626972747461;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1D904368C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9045280(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D90436B4(uint64_t a1)
{
  v2 = sub_1D90439B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90436F0(uint64_t a1)
{
  v2 = sub_1D90439B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServerTimeframe.deinit()
{

  return v0;
}

uint64_t ServerTimeframe.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ServerTimeframe.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9490, &qword_1D91AB1A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90439B8();
  sub_1D9179F1C();
  v13 = 0;
  sub_1D91799BC();
  if (!v2)
  {
    v12 = 1;
    sub_1D91799BC();
    v11 = *(v3 + 48);
    v10[15] = 2;
    type metadata accessor for ServerTimeframeAttributes();
    sub_1D9044D24(&qword_1ECAB94A0, type metadata accessor for ServerTimeframeAttributes, &protocol conformance descriptor for ServerTimeframeAttributes);
    sub_1D91799FC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1D90439B8()
{
  result = qword_1ECAB9498;
  if (!qword_1ECAB9498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9498);
  }

  return result;
}

uint64_t ServerTimeframe.hashValue.getter()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

uint64_t ServerTimeframe.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ServerTimeframe.init(from:)(a1);
  return v2;
}

void *ServerTimeframe.init(from:)(void *a1)
{
  v11[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB94A8, &qword_1D91AB1A8);
  v4 = *(v11[0] - 8);
  MEMORY[0x1EEE9AC00](v11[0]);
  v6 = v11 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90439B8();
  sub_1D9179EEC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = 0;
    v7 = v11[0];
    v1[2] = sub_1D91798BC();
    v1[3] = v8;
    v13 = 1;
    v1[4] = sub_1D91798BC();
    v1[5] = v9;
    type metadata accessor for ServerTimeframeAttributes();
    v12 = 2;
    sub_1D9044D24(&qword_1ECAB94B0, type metadata accessor for ServerTimeframeAttributes, &protocol conformance descriptor for ServerTimeframeAttributes);
    sub_1D91798FC();
    (*(v4 + 8))(v6, v7);
    v1[6] = v11[1];
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

void sub_1D9043DB0(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D9179ACC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D9043E38(uint64_t a1)
{
  v2 = sub_1D90440A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9043E74(uint64_t a1)
{
  v2 = sub_1D90440A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServerTimeframeContainer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ServerTimeframeContainer.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB94B8, &unk_1D91AB1B0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90440A0();
  sub_1D9179F1C();
  v9[1] = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7648, &qword_1D9197C90);
  sub_1D904436C(&qword_1ECAB7650, &qword_1ECAB7658, &protocol conformance descriptor for ServerTimeframe, MEMORY[0x1E69E6300]);
  sub_1D91799FC();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1D90440A0()
{
  result = qword_1ECAB94C0;
  if (!qword_1ECAB94C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB94C0);
  }

  return result;
}

uint64_t ServerTimeframeContainer.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ServerTimeframeContainer.init(from:)(a1);
  return v2;
}

void *ServerTimeframeContainer.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB94C8, &qword_1D91AB1C0);
  v9 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90440A0();
  sub_1D9179EEC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7648, &qword_1D9197C90);
    sub_1D904436C(&qword_1ECAB8528, &qword_1ECAB8530, &protocol conformance descriptor for ServerTimeframe, MEMORY[0x1E69E6330]);
    sub_1D91798FC();
    (*(v9 + 8))(v6, v4);
    *(v1 + 16) = v10;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_1D904436C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB7648, &qword_1D9197C90);
    sub_1D9044D24(a2, type metadata accessor for ServerTimeframe, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ServerTimeframeAttributes.__allocating_init(startInMilliseconds:endInMilliseconds:offerTypes:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2 & 1;
  *(result + 32) = a3;
  *(result + 40) = a4 & 1;
  *(result + 48) = a5;
  return result;
}

uint64_t ServerTimeframeAttributes.init(startInMilliseconds:endInMilliseconds:offerTypes:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a2 & 1;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4 & 1;
  *(v5 + 48) = a5;
  return v5;
}

unint64_t sub_1D904450C()
{
  v1 = 0x707954726566666FLL;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1D9044578@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9045398(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D90445A0(uint64_t a1)
{
  v2 = sub_1D904489C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90445DC(uint64_t a1)
{
  v2 = sub_1D904489C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServerTimeframeAttributes.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ServerTimeframeAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB94D0, &qword_1D91AB1C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D904489C();
  sub_1D9179F1C();
  v13 = 0;
  sub_1D917996C();
  if (!v2)
  {
    v12 = 1;
    sub_1D917996C();
    v11 = *(v3 + 48);
    v10[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB94E0, &qword_1D91AB1D0);
    sub_1D90448F0(&qword_1ECAB94E8, sub_1D9044968, MEMORY[0x1E69E6300]);
    sub_1D91799FC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1D904489C()
{
  result = qword_1ECAB94D8;
  if (!qword_1ECAB94D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB94D8);
  }

  return result;
}

uint64_t sub_1D90448F0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB94E0, &qword_1D91AB1D0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9044968()
{
  result = qword_1ECAB94F0;
  if (!qword_1ECAB94F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB94F0);
  }

  return result;
}

uint64_t ServerTimeframeAttributes.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ServerTimeframeAttributes.init(from:)(a1);
  return v2;
}

uint64_t *ServerTimeframeAttributes.init(from:)(void *a1)
{
  v11[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB94F8, &qword_1D91AB1D8);
  v4 = *(v11[0] - 8);
  MEMORY[0x1EEE9AC00](v11[0]);
  v6 = v11 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D904489C();
  sub_1D9179EEC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = 0;
    v7 = v11[0];
    *(v1 + 16) = sub_1D917986C();
    *(v1 + 24) = v8 & 1;
    v13 = 1;
    *(v1 + 32) = sub_1D917986C();
    *(v1 + 40) = v10 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB94E0, &qword_1D91AB1D0);
    v12 = 2;
    sub_1D90448F0(&qword_1ECAAFF00, sub_1D9044C88, MEMORY[0x1E69E6330]);
    sub_1D91798FC();
    (*(v4 + 8))(v6, v7);
    *(v1 + 48) = v11[1];
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

unint64_t sub_1D9044C88()
{
  result = qword_1ECAB10D8;
  if (!qword_1ECAB10D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB10D8);
  }

  return result;
}

uint64_t sub_1D9044D24(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D9044D98@<X0>(uint64_t a1@<X0>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  result = a3(a1);
  if (!v4)
  {
    *a4 = v8;
  }

  return result;
}

unint64_t sub_1D9044F6C()
{
  result = qword_1ECAB9508;
  if (!qword_1ECAB9508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9508);
  }

  return result;
}

unint64_t sub_1D9044FC4()
{
  result = qword_1ECAB9510;
  if (!qword_1ECAB9510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9510);
  }

  return result;
}

unint64_t sub_1D904501C()
{
  result = qword_1ECAB9518;
  if (!qword_1ECAB9518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9518);
  }

  return result;
}

unint64_t sub_1D9045074()
{
  result = qword_1ECAB9520;
  if (!qword_1ECAB9520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9520);
  }

  return result;
}

unint64_t sub_1D90450CC()
{
  result = qword_1ECAB9528;
  if (!qword_1ECAB9528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9528);
  }

  return result;
}

unint64_t sub_1D9045124()
{
  result = qword_1ECAB9530;
  if (!qword_1ECAB9530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9530);
  }

  return result;
}

unint64_t sub_1D904517C()
{
  result = qword_1ECAB9538;
  if (!qword_1ECAB9538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9538);
  }

  return result;
}