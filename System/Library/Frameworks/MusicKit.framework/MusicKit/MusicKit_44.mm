uint64_t Playlist.Entry.Item.hash(into:)(uint64_t a1)
{
  v2 = sub_21729C79C(v1, &v25);
  if (v30)
  {
    v10 = OUTLINED_FUNCTION_0_83(v2, v3, v4, v5, v6, v7, v8, v9, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
    MEMORY[0x21CEA3550](1, v10);
    sub_217751FF8();
    __swift_project_boxed_opaque_existential_1(&v19, v22);
    v11 = OUTLINED_FUNCTION_3_4();
    v12(v11);
    return sub_217283B58(&v17);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_0_83(v2, v3, v4, v5, v6, v7, v8, v9, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
    MEMORY[0x21CEA3550](0, v14);
    sub_217751FF8();
    __swift_project_boxed_opaque_existential_1(&v19, v22);
    v15 = OUTLINED_FUNCTION_3_4();
    v16(v15);
    return sub_217283C08(&v17);
  }
}

uint64_t Playlist.Entry.Item.hashValue.getter()
{
  sub_2177531E8();
  Playlist.Entry.Item.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_2175BC2B8(uint64_t a1)
{
  sub_2177531E8();
  Playlist.Entry.Item.hash(into:)(v2);
  return sub_217753238();
}

uint64_t sub_2175BC2F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = Playlist.Entry.Item.id.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t Playlist.Entry.Item.subscript.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_17_42(a1);
  sub_2177528F8();
  OUTLINED_FUNCTION_0_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_20_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_27_41();
  if (v20 == 1)
  {
    OUTLINED_FUNCTION_3_0();
    v6 = OUTLINED_FUNCTION_43_0();
    type metadata accessor for MusicAttributeProperty(v6, v7, v8, v9);
    MusicAttributeProperty.__allocating_init(_:)();
    sub_217751DE8();
    Song.subscript.getter();
    v10 = OUTLINED_FUNCTION_41_2();
    sub_217283B58(v10);

    if (&vars0 != 208)
    {
      return result;
    }

    v12 = OUTLINED_FUNCTION_40_0();
    v14 = v3;
  }

  else
  {
    OUTLINED_FUNCTION_3_0();
    v15 = OUTLINED_FUNCTION_43_0();
    type metadata accessor for MusicAttributeProperty(v15, v16, v17, v18);
    MusicAttributeProperty.__allocating_init(_:)();
    sub_217751DE8();
    MusicVideo.subscript.getter();
    v19 = OUTLINED_FUNCTION_41_2();
    sub_217283C08(v19);

    if (&vars0 != 208)
    {
      return result;
    }

    v12 = OUTLINED_FUNCTION_40_0();
    v14 = v2;
  }

  return v13(v12, v14, v1);
}

{
  OUTLINED_FUNCTION_17_42(a1);
  sub_2177528F8();
  OUTLINED_FUNCTION_0_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_20_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_27_41();
  if (v20 == 1)
  {
    OUTLINED_FUNCTION_3_0();
    v6 = OUTLINED_FUNCTION_43_0();
    type metadata accessor for MusicExtendedAttributeProperty(v6, v7, v8, v9);
    sub_217751DE8();
    MusicExtendedAttributeProperty.__allocating_init(_:)();
    Song.subscript.getter();
    v10 = OUTLINED_FUNCTION_41_2();
    sub_217283B58(v10);

    if (&vars0 != 208)
    {
      return result;
    }

    v12 = OUTLINED_FUNCTION_40_0();
    v14 = v3;
  }

  else
  {
    OUTLINED_FUNCTION_3_0();
    v15 = OUTLINED_FUNCTION_43_0();
    type metadata accessor for MusicExtendedAttributeProperty(v15, v16, v17, v18);
    sub_217751DE8();
    MusicExtendedAttributeProperty.__allocating_init(_:)();
    MusicVideo.subscript.getter();
    v19 = OUTLINED_FUNCTION_41_2();
    sub_217283C08(v19);

    if (&vars0 != 208)
    {
      return result;
    }

    v12 = OUTLINED_FUNCTION_40_0();
    v14 = v2;
  }

  return v13(v12, v14, v1);
}

void *Playlist.Entry.Item.subscript.getter@<X0>(void *a1@<X8>)
{
  sub_21729C79C(v1, v13);
  if (v13[56] == 1)
  {
    OUTLINED_FUNCTION_18_3();
    OUTLINED_FUNCTION_27_3(v4, v10, __src[0], *&__src[1], __src[3]);
    v5 = OUTLINED_FUNCTION_31_33();
    OUTLINED_FUNCTION_42_2(v5);
    OUTLINED_FUNCTION_35_28();
    Song.subscript.getter();
    v6 = v2;
    sub_217283B58(v12);
  }

  else
  {
    OUTLINED_FUNCTION_18_3();
    OUTLINED_FUNCTION_27_3(v7, v10, __src[0], *&__src[1], __src[3]);
    v8 = OUTLINED_FUNCTION_31_33();
    OUTLINED_FUNCTION_42_2(v8);
    OUTLINED_FUNCTION_35_28();
    MusicVideo.subscript.getter();
    v6 = v2;
    sub_217283C08(v12);
  }

  if (!v6)
  {
    return memcpy(a1, __src, 0x68uLL);
  }

  return result;
}

uint64_t Playlist.Entry.Item.init(from:)(void *a1)
{
  sub_2171FF30C(a1, v3);
  sub_2175BA878(v3);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Playlist.Entry.Item.description.getter()
{
  v1 = sub_21729C79C(v0, &v22);
  if (v27)
  {
    OUTLINED_FUNCTION_1_95(v1, v2, v3, v4, v5, v6, v7, v8, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
    sub_217752AA8();

    OUTLINED_FUNCTION_2_4();
    Song.description.getter();
    OUTLINED_FUNCTION_29_31();

    OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_24_1();
    sub_217283B58(v9);
  }

  else
  {
    OUTLINED_FUNCTION_1_95(v1, v2, v3, v4, v5, v6, v7, v8, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
    sub_217752AA8();

    OUTLINED_FUNCTION_2_4();
    MusicVideo.description.getter();
    OUTLINED_FUNCTION_29_31();

    OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_24_1();
    sub_217283C08(v10);
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t Playlist.Entry.Item.debugDescription.getter()
{
  sub_21729C79C(v0, v50);
  if (v50[56])
  {
    OUTLINED_FUNCTION_3_8();
    sub_217752AA8();

    OUTLINED_FUNCTION_2_4();
    v1 = Song.debugDescription.getter();
    v9 = OUTLINED_FUNCTION_21_1(v1, v2, v3, v4, v5, v6, v7, v8, v42, v45);
    v16 = OUTLINED_FUNCTION_6_2(v9, v10, v11, v12, v13, v14, MEMORY[0x277D837D0], v15, v43, v46, v48);
    v18 = v17;

    MEMORY[0x21CEA23B0](v16, v18, v19);

    MEMORY[0x21CEA23B0](10506, 0xE200000000000000, v20);
    sub_217283B58(v49);
  }

  else
  {
    OUTLINED_FUNCTION_3_8();
    sub_217752AA8();

    OUTLINED_FUNCTION_2_4();
    v21 = MusicVideo.debugDescription.getter();
    v29 = OUTLINED_FUNCTION_21_1(v21, v22, v23, v24, v25, v26, v27, v28, v42, v45);
    v36 = OUTLINED_FUNCTION_6_2(v29, v30, v31, v32, v33, v34, MEMORY[0x277D837D0], v35, v44, v47, v48);
    v38 = v37;

    MEMORY[0x21CEA23B0](v36, v38, v39);

    MEMORY[0x21CEA23B0](10506, 0xE200000000000000, v40);
    sub_217283C08(v49);
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t sub_2175BCAE0()
{
  v1 = sub_21729C79C(v0, &v22);
  if (v27)
  {
    OUTLINED_FUNCTION_1_95(v1, v2, v3, v4, v5, v6, v7, v8, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
    Song.description.getter();
    OUTLINED_FUNCTION_29_31();

    OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_24_1();
    sub_217283B58(v9);
  }

  else
  {
    OUTLINED_FUNCTION_1_95(v1, v2, v3, v4, v5, v6, v7, v8, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
    MusicVideo.description.getter();
    OUTLINED_FUNCTION_29_31();

    OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_24_1();
    sub_217283C08(v10);
  }

  return OUTLINED_FUNCTION_93();
}

double sub_2175BCBE0()
{
  if (qword_280BEB7A0 != -1)
  {
    swift_once();
  }

  v0 = off_280BEB7A8;
  os_unfair_lock_lock(*(off_280BEB7A8 + 2));
  sub_21770FA7C(0xD000000000000013, 0x80000002177B1F30, &type metadata for Playlist.Entry.Item, &protocol witness table for Playlist.Entry.Item, v2);
  os_unfair_lock_unlock(v0[2]);
  result = *v2;
  xmmword_27CB2A468 = v2[0];
  xmmword_27CB2A478 = v2[1];
  return result;
}

uint64_t static Playlist.Entry.Item.typeValue.getter()
{
  if (qword_27CB23CF0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_204_0(&xmmword_27CB2A468);

  return sub_217751DE8();
}

uint64_t sub_2175BCD10()
{
  if (qword_27CB23CF0 != -1)
  {
    swift_once();
  }

  xmmword_27CB2A488 = xmmword_27CB2A468;
  xmmword_27CB2A498 = xmmword_27CB2A478;

  return sub_217751DE8();
}

uint64_t static MusicItemTypeValue.playlistEntryItem.getter()
{
  if (qword_27CB23CF8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_204_0(&xmmword_27CB2A488);

  return sub_217751DE8();
}

uint64_t sub_2175BCDF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A08, &qword_217758FC0);
  v0 = swift_allocObject();
  v0[1] = xmmword_217759200;
  if (qword_280BE6378 != -1)
  {
    swift_once();
  }

  v1 = xmmword_280BE6390;
  v0[2] = xmmword_280BE6380;
  v0[3] = v1;
  v2 = qword_280BEB138;
  sub_217751DE8();
  if (v2 != -1)
  {
    swift_once();
  }

  v3 = xmmword_280BEB150;
  v0[4] = xmmword_280BEB140;
  v0[5] = v3;
  qword_27CB2A4A8 = v0;

  return sub_217751DE8();
}

uint64_t static Playlist.Entry.Item.supportedTypeValues.getter()
{
  if (qword_27CB23D00 != -1)
  {
    swift_once();
  }

  return sub_217751DE8();
}

unint64_t sub_2175BCF4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A4B8;
  if (!qword_27CB2A4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A4B8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_22_45(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return sub_21729C79C(v16, va);
}

uint64_t AnyMusicCatalogSearchSuggestionsExtendedResults.libraryMapped(policy:scope:)(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  *(v4 + 50) = *a2;
  *(v4 + 51) = *a3;
  return MEMORY[0x2822009F8](sub_2175BCFF4, 0, 0);
}

uint64_t sub_2175BCFF4()
{
  v1 = *(v0 + 51);
  v2 = *(v0 + 50);
  v3 = *(v0 + 24);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  *(v0 + 48) = v2;
  *(v0 + 49) = v1;
  OUTLINED_FUNCTION_2_89(v5);
  v10 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  *v7 = v0;
  v7[1] = sub_21759509C;
  v8 = *(v0 + 16);

  return v10(v8, v0 + 48, v0 + 49, v4, v5);
}

Swift::Void __swiftcall AnyMusicCatalogSearchSuggestionsExtendedResults.appendExtendedDescription(forDebugging:to:)(Swift::Bool forDebugging, Swift::String *to)
{
  v4 = forDebugging;
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  (*(v6 + 24))(v4, to, v5, v6);
}

uint64_t MusicCatalogSearchSuggestionsExtendedResults<>.isEqual<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26[1] = a5;
  v8 = sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = v26 - v12;
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v14);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_0();
  v18 = v17;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v16, a1, a3, v20);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v13, 0, 1, a2);
    (*(v18 + 32))(v22, v13, a2);
    v24 = sub_217751F08();
    (*(v18 + 8))(v22, a2);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v13, 1, 1, a2);
    (*(v10 + 8))(v13, v8);
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t static AnyMusicCatalogSearchSuggestionsExtendedResults.== infix(_:_:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = *(v4 + 48);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28BC8, &qword_217771958);
  return v5(a2, v6, v3, v4) & 1;
}

uint64_t sub_2175BD4A4(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 56))(a1, v3, v4);
}

uint64_t AnyMusicCatalogSearchSuggestionsExtendedResults.convertToCatalogSearchSuggestionsRawExtendedResults<A>(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  return (*(v8 + 16))(a1, a2, a3, v7, v8);
}

uint64_t AnyMusicCatalogSearchSuggestionsExtendedResults.hashValue.getter()
{
  sub_2177531E8();
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 56))(v4, v1, v2);
  return sub_217753238();
}

uint64_t sub_2175BD6BC(uint64_t a1)
{
  sub_2177531E8();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 56))(v5, v2, v3);
  return sub_217753238();
}

uint64_t sub_2175BD744(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2172AC7B0;

  return AnyMusicCatalogSearchSuggestionsExtendedResults.libraryMapped(policy:scope:)(a1, a2, a3);
}

uint64_t sub_2175BD804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_2175BDC04(a1, a2, a3);

  return MusicCatalogSearchSuggestionsExtendedResults<>.isEqual<A>(to:)(a1, a3, a2, v6, v7);
}

uint64_t sub_2175BD88C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24300, &qword_217771D70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL static MusicCatalogSearchSuggestionsRawExtendedResults.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_2175BD88C(a1, v7);
  sub_2175BD88C(a2, v9);
  if (v8)
  {
    sub_2175BD88C(v7, v6);
    if (v9[2])
    {
      memcpy(v5, v9, sizeof(v5));
      v3 = sub_2172DE148(v6, v5);
      sub_2171F06D8(v5, &qword_27CB24308, &unk_217767A90);
      sub_2171F06D8(v6, &qword_27CB24308, &unk_217767A90);
      sub_2171F06D8(v7, &qword_27CB24300, &qword_217771D70);
      return (v3 & 1) != 0;
    }

    sub_2171F06D8(v6, &qword_27CB24308, &unk_217767A90);
  }

  else if (!v9[2])
  {
    sub_2171F06D8(v7, &qword_27CB24300, &qword_217771D70);
    return 1;
  }

  sub_2171F06D8(v7, &qword_27CB2A290, &qword_21777EF58);
  return 0;
}

uint64_t MusicCatalogSearchSuggestionsRawExtendedResults.hash(into:)(uint64_t a1)
{
  sub_2175BD88C(v1, __src);
  if (!__src[2])
  {
    return sub_217753208();
  }

  memcpy(v4, __src, sizeof(v4));
  sub_217753208();
  sub_2172DE4CC(a1);
  return sub_2171F06D8(v4, &qword_27CB24308, &unk_217767A90);
}

uint64_t MusicCatalogSearchSuggestionsRawExtendedResults.hashValue.getter()
{
  sub_2177531E8();
  sub_2175BD88C(v0, __src);
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE4CC(v4);
    sub_2171F06D8(__dst, &qword_27CB24308, &unk_217767A90);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}

uint64_t sub_2175BDB68(uint64_t a1)
{
  sub_2177531E8();
  sub_2175BD88C(v1, __src);
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE4CC(v5);
    sub_2171F06D8(__dst, &qword_27CB24308, &unk_217767A90);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}

unint64_t sub_2175BDC04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A4C0;
  if (!qword_27CB2A4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A4C0);
  }

  return result;
}

unint64_t sub_2175BDC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A4C8;
  if (!qword_27CB2A4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A4C8);
  }

  return result;
}

uint64_t dispatch thunk of MusicCatalogSearchSuggestionsExtendedResults.libraryMapped(policy:scope:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_2_89(a5);
  v14 = (v11 + *v11);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_2172AC7B0;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t get_enum_tag_for_layout_string_8MusicKit23CloudResourceCollectionVyAA0cD0VyAA24CatalogSearchRawResponseV9TopResultOGGSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2175BDEA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175BDF60(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2175BDEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175BDF60(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

unint64_t sub_2175BDF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A4D8;
  if (!qword_27CB2A4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A4D8);
  }

  return result;
}

uint64_t sub_2175BE034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175BE0F0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2175BE070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175BE0F0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

unint64_t sub_2175BE0F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A4E8;
  if (!qword_27CB2A4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A4E8);
  }

  return result;
}

uint64_t sub_2175BE164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175BE220(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2175BE1A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175BE220(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

unint64_t sub_2175BE220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A4F8;
  if (!qword_27CB2A4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A4F8);
  }

  return result;
}

uint64_t sub_2175BE294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175BE450(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2175BE2D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175BE450(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void sub_2175BE350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_171();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
  OUTLINED_FUNCTION_0_0();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  v31 = &a9 - v30;
  v32 = OUTLINED_FUNCTION_45_4();
  __swift_project_boxed_opaque_existential_1(v32, v33);
  v23();
  sub_2177532F8();
  (*(v28 + 8))(v31, v26);
  OUTLINED_FUNCTION_170();
}

unint64_t sub_2175BE450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A508;
  if (!qword_27CB2A508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A508);
  }

  return result;
}

uint64_t CloudArtist.PlayableItem.id.getter()
{
  v1 = type metadata accessor for CloudStation(0);
  v2 = OUTLINED_FUNCTION_45_0(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_70_0();
  v3 = type metadata accessor for CloudPlaylist(0);
  v4 = OUTLINED_FUNCTION_45_0(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for CloudAlbum(0);
  v9 = OUTLINED_FUNCTION_45_0(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  type metadata accessor for CloudArtist.PlayableItem(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_1_99();
  v17 = OUTLINED_FUNCTION_1_5();
  sub_2175C12B0(v17, v18);
  OUTLINED_FUNCTION_47_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_2175C1360(v16, v0);
      sub_217751DE8();
      v21 = v0;
      v22 = type metadata accessor for CloudStation;
      goto LABEL_7;
    }

    v20 = type metadata accessor for CloudPlaylist;
    sub_2175C1360(v16, v7);
    sub_217751DE8();
    v21 = v7;
  }

  else
  {
    v20 = type metadata accessor for CloudAlbum;
    sub_2175C1360(v16, v12);
    sub_217751DE8();
    v21 = v12;
  }

  v22 = v20;
LABEL_7:
  sub_2175BEB90(v21, v22);
  return OUTLINED_FUNCTION_1_5();
}

uint64_t type metadata accessor for CloudArtist.PlayableItem(uint64_t a1)
{
  result = qword_280BE52C8;
  if (!qword_280BE52C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL static CloudArtist.PlayableItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v5 = OUTLINED_FUNCTION_101();
  v6 = type metadata accessor for CloudStation(v5);
  v7 = OUTLINED_FUNCTION_45_0(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v40 = v9 - v8;
  v10 = OUTLINED_FUNCTION_206();
  v11 = type metadata accessor for CloudPlaylist(v10);
  v12 = OUTLINED_FUNCTION_45_0(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v16 = type metadata accessor for CloudAlbum(0);
  v17 = OUTLINED_FUNCTION_45_0(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1();
  v18 = OUTLINED_FUNCTION_60_0();
  type metadata accessor for CloudArtist.PlayableItem(v18);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v19);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v40 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v40 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A510, &qword_2177814C0);
  v29 = OUTLINED_FUNCTION_45_0(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_70_0();
  v31 = *(v30 + 56);
  sub_2175C12B0(v3, v2);
  sub_2175C12B0(v41, v2 + v31);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_1_99();
      sub_2175C12B0(v2, v24);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_11_58();
        sub_2175C1360(v2 + v31, v15);
        v33 = static CloudPlaylist.== infix(_:_:)();
        sub_2175BEB90(v15, v3);
        v34 = v24;
LABEL_13:
        v38 = v3;
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_3_89();
      v36 = v24;
    }

    else
    {
      OUTLINED_FUNCTION_1_99();
      sub_2175C12B0(v2, v21);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v37 = v40;
        sub_2175C1360(v2 + v31, v40);
        v33 = static CloudStation.== infix(_:_:)();
        sub_2175BEB90(v37, type metadata accessor for CloudStation);
        v34 = v21;
        v38 = type metadata accessor for CloudStation;
LABEL_14:
        sub_2175BEB90(v34, v38);
        sub_2175BEB90(v2, type metadata accessor for CloudArtist.PlayableItem);
        return v33;
      }

      OUTLINED_FUNCTION_2_96();
      v36 = v21;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_99();
    sub_2175C12B0(v2, v27);
    if (!swift_getEnumCaseMultiPayload())
    {
      v3 = type metadata accessor for CloudAlbum;
      sub_2175C1360(v2 + v31, v4);
      v33 = static CloudAlbum.== infix(_:_:)();
      sub_2175BEB90(v4, type metadata accessor for CloudAlbum);
      v34 = v27;
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_0_110();
    v36 = v27;
  }

  sub_2175BEB90(v36, v35);
  sub_2171F0738(v2, &qword_27CB2A510, &qword_2177814C0);
  return 0;
}

uint64_t sub_2175BEB90(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_43();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t CloudArtist.PlayableItem.hash(into:)(uint64_t a1)
{
  type metadata accessor for CloudStation(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v7 = OUTLINED_FUNCTION_71_0();
  type metadata accessor for CloudPlaylist(v7);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v9 = OUTLINED_FUNCTION_31_12();
  v10 = type metadata accessor for CloudAlbum(v9);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v12 = OUTLINED_FUNCTION_60_0();
  v13 = type metadata accessor for CloudArtist.PlayableItem(v12);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  OUTLINED_FUNCTION_1_99();
  sub_2175C12B0(v1, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_15_52();
      sub_2175C1360(v17, v4);
      MEMORY[0x21CEA3550](1);
      sub_217751FF8();
      OUTLINED_FUNCTION_57_12();
      CloudPlaylist.Attributes.hash(into:)();
      v19 = OUTLINED_FUNCTION_57_12();
      sub_217264C3C(v19);
      v20 = OUTLINED_FUNCTION_57_12();
      sub_21726492C(v20);
      v21 = OUTLINED_FUNCTION_57_12();
      sub_2172647B8(v21);
      v22 = v4;
    }

    else
    {
      v13 = type metadata accessor for CloudStation;
      sub_2175C1360(v17, v3);
      MEMORY[0x21CEA3550](2);
      sub_217751FF8();
      CloudStation.Attributes.hash(into:)();
      sub_217753208();
      sub_217753208();
      sub_217263DE0(a1);
      v22 = v3;
    }

    v23 = v13;
  }

  else
  {
    OUTLINED_FUNCTION_4_87();
    sub_2175C1360(v17, v2);
    MEMORY[0x21CEA3550](0);
    sub_217751FF8();
    CloudAlbum.Attributes.hash(into:)();
    sub_21726504C(a1);
    sub_2171F5110(v2 + *(v10 + 28), v54, &qword_27CB24AA8, &qword_217759080);
    if (v54[2] == 1)
    {
      sub_217753208();
    }

    else
    {
      memcpy(v53, v54, sizeof(v53));
      sub_217753208();
      sub_21726473C(a1, v24, v25, v26, v27, v28, v29, v30);
      sub_2172640D4(a1, v31, v32, v33, v34, v35, v36, v37);
      sub_2172640D4(a1, v38, v39, v40, v41, v42, v43, v44);
      sub_217264414(a1, v45, v46, v47, v48, v49, v50, v51);
      sub_2172845E8(v53);
    }

    sub_217264150(a1);
    OUTLINED_FUNCTION_0_110();
    v22 = v2;
  }

  return sub_2175BEB90(v22, v23);
}

uint64_t CloudArtist.PlayableItem.hashValue.getter()
{
  sub_2177531E8();
  CloudArtist.PlayableItem.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_2175BEFA0(uint64_t a1)
{
  sub_2177531E8();
  CloudArtist.PlayableItem.hash(into:)(v2);
  return sub_217753238();
}

void CloudArtist.PlayableItem.decodeRawAttributes(from:)()
{
  OUTLINED_FUNCTION_171();
  v33 = v1;
  v34 = v6;
  v7 = type metadata accessor for CloudStation.Attributes(0);
  v8 = OUTLINED_FUNCTION_45_0(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v32 = v10 - v9;
  v11 = OUTLINED_FUNCTION_206();
  v31 = type metadata accessor for CloudStation(v11);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v13 = OUTLINED_FUNCTION_60_0();
  v14 = type metadata accessor for CloudPlaylist.Attributes(v13);
  v15 = OUTLINED_FUNCTION_45_0(v14);
  MEMORY[0x28223BE20](v15);
  v16 = OUTLINED_FUNCTION_7_34();
  v17 = type metadata accessor for CloudPlaylist(v16);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1();
  v19 = OUTLINED_FUNCTION_31_12();
  v20 = type metadata accessor for CloudAlbum.Attributes(v19);
  v21 = OUTLINED_FUNCTION_45_0(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_70_0();
  v22 = type metadata accessor for CloudAlbum(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1();
  v26 = v25 - v24;
  type metadata accessor for CloudArtist.PlayableItem(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_1_99();
  sub_2175C12B0(v33, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_11_58();
      sub_2175C1360(v3, v5);
      sub_2171FF30C(v34, v35);
      sub_2175C12B0(v5 + *(v17 + 20), v4);
      sub_217385674(v35);
      OUTLINED_FUNCTION_45_1();
      v29 = v5;
    }

    else
    {
      OUTLINED_FUNCTION_14_49();
      sub_2175C1360(v3, v2);
      sub_2171FF30C(v34, v35);
      sub_2175C12B0(v2 + *(v31 + 20), v32);
      sub_2173858E4();
      OUTLINED_FUNCTION_45_1();
      v29 = v2;
    }

    v30 = v26;
  }

  else
  {
    OUTLINED_FUNCTION_16_54();
    sub_2175C1360(v3, v26);
    sub_2171FF30C(v34, v35);
    sub_2175C12B0(v26 + *(v22 + 20), v0);
    sub_217385620(v35);
    OUTLINED_FUNCTION_45_1();
    v29 = OUTLINED_FUNCTION_1_5();
  }

  sub_2175BEB90(v29, v30);
  OUTLINED_FUNCTION_170();
}

void CloudArtist.PlayableItem.decodeRawRelationships(from:)()
{
  OUTLINED_FUNCTION_171();
  v60 = v2;
  v3 = type metadata accessor for CloudStation(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  *(&v59 + 1) = v6 - v5;
  v7 = OUTLINED_FUNCTION_206();
  v8 = type metadata accessor for CloudPlaylist(v7);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v10 = OUTLINED_FUNCTION_71_0();
  v11 = type metadata accessor for CloudAlbum(v10);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_7_34();
  type metadata accessor for CloudArtist.PlayableItem(v13);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  v61 = sub_217751DC8();
  OUTLINED_FUNCTION_1_99();
  v18 = OUTLINED_FUNCTION_1_5();
  sub_2175C12B0(v18, v19);
  OUTLINED_FUNCTION_47_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_4_87();
    v24 = OUTLINED_FUNCTION_45_4();
    sub_2175C1360(v24, v25);
    sub_2171F5110(v1 + *(v11 + 24), v62, &qword_27CB243C8, &unk_21775D390);
    if (v63 == 1)
    {
      OUTLINED_FUNCTION_0_110();
      sub_2175BEB90(v1, v26);
      v22 = &qword_27CB243C8;
      v23 = &unk_21775D390;
      goto LABEL_7;
    }

    sub_2171F0738(v62, &qword_27CB243C8, &unk_21775D390);
    sub_2171FF30C(v60, v62);
    v38 = sub_217383708(&unk_28295E588);
    Dictionary<>.init(from:skippingValuesFor:)(v62, v38, v39, v40, v41, v42, v43);
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_0_110();
    v37 = v1;
LABEL_15:
    sub_2175BEB90(v37, v36);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_5_72();
    v27 = *(&v59 + 1);
    sub_2175C1360(v17, *(&v59 + 1));
    if (*(*(&v59 + 1) + *(v3 + 24)))
    {
      OUTLINED_FUNCTION_2_96();
      sub_2175BEB90(*(&v59 + 1), v28);
      goto LABEL_16;
    }

    sub_2171FF30C(v60, v62);
    if (qword_280BE4D60 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_84();
    v44 = sub_217751DE8();
    sub_217383748(v44, v45, v46, v47, v48, v49, v50, v51, v59, v60, v61, v62[0], v62[1], v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74);
    v53 = v52;

    Dictionary<>.init(from:skippingValuesFor:)(v62, v53, v54, v55, v56, v57, v58);
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_2_96();
    v37 = v27;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_6_70();
  sub_2175C1360(v17, v0);
  sub_2171F5110(v0 + *(v8 + 24), v62, &qword_27CB24358, &unk_21775D510);
  if (v63 != 1)
  {

    sub_2171F0738(v62, &qword_27CB24358, &unk_21775D510);
    sub_2171FF30C(v60, v62);
    OUTLINED_FUNCTION_84();
    v29 = sub_217751DE8();
    v30 = sub_217383728(v29);

    Dictionary<>.init(from:skippingValuesFor:)(v62, v30, v31, v32, v33, v34, v35);
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_3_89();
    v37 = v0;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_3_89();
  sub_2175BEB90(v0, v21);
  v22 = &qword_27CB24358;
  v23 = &unk_21775D510;
LABEL_7:
  sub_2171F0738(v62, v22, v23);
LABEL_16:
  OUTLINED_FUNCTION_131();
  OUTLINED_FUNCTION_170();
}

void CloudArtist.PlayableItem.decodeRawAssociations(from:)()
{
  OUTLINED_FUNCTION_171();
  *(&v57 + 1) = v2;
  v3 = type metadata accessor for CloudStation(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  *&v57 = v6 - v5;
  v7 = OUTLINED_FUNCTION_206();
  v8 = type metadata accessor for CloudPlaylist(v7);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v10 = OUTLINED_FUNCTION_71_0();
  v11 = type metadata accessor for CloudAlbum(v10);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_7_34();
  type metadata accessor for CloudArtist.PlayableItem(v13);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  v58 = sub_217751DC8();
  OUTLINED_FUNCTION_1_99();
  v18 = OUTLINED_FUNCTION_1_5();
  sub_2175C12B0(v18, v19);
  OUTLINED_FUNCTION_47_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_4_87();
    v24 = OUTLINED_FUNCTION_45_4();
    sub_2175C1360(v24, v25);
    sub_2171F5110(v1 + *(v11 + 28), v59, &qword_27CB24AA8, &qword_217759080);
    if (v60 == 1)
    {
      OUTLINED_FUNCTION_0_110();
      sub_2175BEB90(v1, v26);
      v22 = &qword_27CB24AA8;
      v23 = &qword_217759080;
      goto LABEL_7;
    }

    sub_2171F0738(v59, &qword_27CB24AA8, &qword_217759080);
    sub_2171FF30C(*(&v57 + 1), v59);
    v38 = sub_2173839EC(&unk_28295E650);
    Dictionary<>.init(from:skippingValuesFor:)(v59, v38, v39, v40, v41, v42, v43);
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_0_110();
    v37 = v1;
LABEL_15:
    sub_2175BEB90(v37, v36);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_5_72();
    v27 = v17;
    v28 = v57;
    sub_2175C1360(v27, v57);
    if (*(v57 + *(v3 + 28)))
    {
      OUTLINED_FUNCTION_2_96();
      sub_2175BEB90(v57, v29);
      goto LABEL_16;
    }

    sub_2171FF30C(*(&v57 + 1), v59);
    if (qword_27CB23E58 != -1)
    {
      swift_once();
    }

    sub_217383748(qword_27CB2C988, v44, v45, v46, v47, v48, v49, v50, v57, v58, v59[0], v59[1], v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72);
    Dictionary<>.init(from:skippingValuesFor:)(v59, v51, v52, v53, v54, v55, v56);
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_2_96();
    v37 = v28;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_6_70();
  sub_2175C1360(v17, v0);
  sub_2171F5110(v0 + *(v8 + 28), v59, &qword_27CB24350, &unk_21776A5D0);
  if (v60 != 1)
  {

    sub_2171F0738(v59, &qword_27CB24350, &unk_21776A5D0);
    sub_2171FF30C(*(&v57 + 1), v59);
    v30 = sub_217383A0C(&unk_28295F028);
    Dictionary<>.init(from:skippingValuesFor:)(v59, v30, v31, v32, v33, v34, v35);
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_3_89();
    v37 = v0;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_3_89();
  sub_2175BEB90(v0, v21);
  v22 = &qword_27CB24350;
  v23 = &unk_21776A5D0;
LABEL_7:
  sub_2171F0738(v59, v22, v23);
LABEL_16:
  OUTLINED_FUNCTION_131();
  OUTLINED_FUNCTION_170();
}

void CloudArtist.PlayableItem.decodeRawMetadata(from:skippingValuesFor:)()
{
  OUTLINED_FUNCTION_171();
  v34 = v3;
  v4 = type metadata accessor for CloudStation(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v33 = v7 - v6;
  v8 = OUTLINED_FUNCTION_206();
  v9 = type metadata accessor for CloudPlaylist(v8);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_7_34();
  v12 = type metadata accessor for CloudAlbum(v11);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1();
  v14 = OUTLINED_FUNCTION_31_12();
  type metadata accessor for CloudArtist.PlayableItem(v14);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  sub_217751DC8();
  OUTLINED_FUNCTION_1_99();
  OUTLINED_FUNCTION_53_23();
  v16 = OUTLINED_FUNCTION_52_24();
  if (!v16)
  {
    OUTLINED_FUNCTION_4_87();
    OUTLINED_FUNCTION_50_24();
    v21 = *(v12 + 32);
    sub_2171F5110(v2 + v21, &v36, &qword_27CB243C0, &unk_21775D3A0);
    if (v37 == 1)
    {
      OUTLINED_FUNCTION_0_110();
      sub_2175BEB90(v2, v22);
      v19 = &qword_27CB243C0;
      v20 = &unk_21775D3A0;
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_46();
    sub_2171FF30C(v34, v35);
    OUTLINED_FUNCTION_48_0(v2 + v21);
    sub_217751DE8();
    v30 = OUTLINED_FUNCTION_31_16();
    sub_217387350(v30, v31, v32);
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_0_110();
    v29 = v2;
LABEL_13:
    sub_2175BEB90(v29, v28);
    goto LABEL_14;
  }

  if (v16 != 1)
  {
    OUTLINED_FUNCTION_5_72();
    sub_2175C1360(v0, v33);
    v23 = *(v4 + 32);
    sub_2171F5110(v33 + v23, &v36, &qword_27CB24340, &unk_2177650B0);
    if (v37 == 1)
    {
      OUTLINED_FUNCTION_2_96();
      sub_2175BEB90(v33, v24);
      v19 = &qword_27CB24340;
      v20 = &unk_2177650B0;
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_46();
    sub_2171FF30C(v34, v35);
    OUTLINED_FUNCTION_48_0(v33 + v23);
    sub_217751DE8();
    OUTLINED_FUNCTION_31_16();
    sub_2173876D0();
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_2_96();
    v29 = v33;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_6_70();
  OUTLINED_FUNCTION_51_21();
  v17 = *(v9 + 32);
  sub_2171F5110(v1 + v17, &v36, &qword_27CB24348, &unk_21775D520);
  if (v37 != 1)
  {

    OUTLINED_FUNCTION_46();
    sub_2171FF30C(v34, v35);
    OUTLINED_FUNCTION_48_0(v1 + v17);
    sub_217751DE8();
    v25 = OUTLINED_FUNCTION_31_16();
    sub_217387380(v25, v26, v27);
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_3_89();
    v29 = v1;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_3_89();
  sub_2175BEB90(v1, v18);
  v19 = &qword_27CB24348;
  v20 = &unk_21775D520;
LABEL_9:
  sub_2171F0738(&v36, v19, v20);
LABEL_14:
  OUTLINED_FUNCTION_131();
  OUTLINED_FUNCTION_170();
}

void CloudArtist.PlayableItem.mergeAttributes(with:for:)()
{
  OUTLINED_FUNCTION_171();
  v4 = v1;
  v21 = v6;
  v22 = v5;
  v7 = type metadata accessor for CloudStation(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  v9 = type metadata accessor for CloudPlaylist(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_7_34();
  v12 = type metadata accessor for CloudAlbum(v11);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  type metadata accessor for CloudArtist.PlayableItem(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_70_0();
  OUTLINED_FUNCTION_1_99();
  sub_2175C12B0(v4, v0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_11_58();
      sub_2175C1360(v0, v3);
      sub_2173884CC(v3 + *(v9 + 20), v21, v22);
      OUTLINED_FUNCTION_45_1();
      v19 = v3;
    }

    else
    {
      OUTLINED_FUNCTION_14_49();
      sub_2175C1360(v0, v2);
      sub_2173885F8(v2 + *(v7 + 20), v21, v22);
      OUTLINED_FUNCTION_45_1();
      v19 = v2;
    }

    v20 = v16;
  }

  else
  {
    OUTLINED_FUNCTION_16_54();
    sub_2175C1360(v0, v16);
    sub_217388478(v16 + *(v12 + 20), v21, v22);
    OUTLINED_FUNCTION_45_1();
    v19 = OUTLINED_FUNCTION_1_5();
  }

  sub_2175BEB90(v19, v20);
  OUTLINED_FUNCTION_170();
}

void CloudArtist.PlayableItem.mergeRelationships(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  v14 = OUTLINED_FUNCTION_60_1(v12, v13);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1();
  v16 = OUTLINED_FUNCTION_206();
  v17 = type metadata accessor for CloudPlaylist(v16);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v18);
  v19 = OUTLINED_FUNCTION_7_34();
  v20 = type metadata accessor for CloudAlbum(v19);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1();
  v22 = OUTLINED_FUNCTION_31_12();
  type metadata accessor for CloudArtist.PlayableItem(v22);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21_39();
  if (v24)
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_1_99();
  OUTLINED_FUNCTION_53_23();
  v25 = OUTLINED_FUNCTION_52_24();
  if (!v25)
  {
    OUTLINED_FUNCTION_4_87();
    OUTLINED_FUNCTION_50_24();
    sub_2171F5110(v11 + *(v20 + 24), v39, &qword_27CB243C8, &unk_21775D390);
    OUTLINED_FUNCTION_54();
    if (!v26)
    {

      memcpy(v40, v39, 0x300uLL);
      sub_217388868(v40, v38, v37);
      OUTLINED_FUNCTION_98();
      sub_21726A4EC(v40);
      OUTLINED_FUNCTION_0_110();
      v32 = v11;
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_0_110();
    sub_2175BEB90(v11, v30);
    v28 = &qword_27CB243C8;
    v29 = &unk_21775D390;
    goto LABEL_11;
  }

  if (v25 == 1)
  {
    OUTLINED_FUNCTION_6_70();
    OUTLINED_FUNCTION_51_21();
    sub_2171F5110(v10 + *(v17 + 24), v39, &qword_27CB24358, &unk_21775D510);
    OUTLINED_FUNCTION_54();
    if (!v26)
    {

      memcpy(v40, v39, 0x380uLL);
      sub_2173888A8(v40, v38, v37);
      OUTLINED_FUNCTION_98();
      sub_21726A354(v40);
      OUTLINED_FUNCTION_3_89();
      v32 = v10;
LABEL_14:
      sub_2175BEB90(v32, v31);
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_3_89();
    sub_2175BEB90(v10, v27);
    v28 = &qword_27CB24358;
    v29 = &unk_21775D510;
LABEL_11:
    sub_2171F0738(v39, v28, v29);
    OUTLINED_FUNCTION_53();
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_5_72();
  OUTLINED_FUNCTION_43_23();
  if (*(v17 + *(v14 + 24)))
  {
    OUTLINED_FUNCTION_53();
  }

  else
  {

    sub_2171FF30C(v38, v40);
    v33 = sub_2174D4AA8(v40);
    if (!a10)
    {
      v34 = v33;
      v35 = sub_217751DE8();
      sub_2174D37FC(v35, v34);
      OUTLINED_FUNCTION_98();
    }
  }

  OUTLINED_FUNCTION_2_96();
  sub_2175BEB90(v17, v36);
LABEL_18:
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_170();
}

void CloudArtist.PlayableItem.mergeAssociations(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  v14 = OUTLINED_FUNCTION_60_1(v12, v13);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1();
  v16 = OUTLINED_FUNCTION_206();
  v17 = type metadata accessor for CloudPlaylist(v16);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v18);
  v19 = OUTLINED_FUNCTION_7_34();
  v20 = type metadata accessor for CloudAlbum(v19);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1();
  v22 = OUTLINED_FUNCTION_31_12();
  type metadata accessor for CloudArtist.PlayableItem(v22);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21_39();
  if (v24)
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_1_99();
  OUTLINED_FUNCTION_53_23();
  v25 = OUTLINED_FUNCTION_52_24();
  if (!v25)
  {
    OUTLINED_FUNCTION_4_87();
    OUTLINED_FUNCTION_50_24();
    sub_2171F5110(v11 + *(v20 + 28), v44, &qword_27CB24AA8, &qword_217759080);
    OUTLINED_FUNCTION_54();
    if (!v26)
    {

      OUTLINED_FUNCTION_41_28();
      v36 = OUTLINED_FUNCTION_20_38();
      sub_217388C10(v36, v37, v38);
      OUTLINED_FUNCTION_98();
      sub_2172845E8(v45);
      OUTLINED_FUNCTION_0_110();
      v35 = v11;
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_0_110();
    sub_2175BEB90(v11, v30);
    v28 = &qword_27CB24AA8;
    v29 = &qword_217759080;
    goto LABEL_11;
  }

  if (v25 == 1)
  {
    OUTLINED_FUNCTION_6_70();
    OUTLINED_FUNCTION_51_21();
    sub_2171F5110(v10 + *(v17 + 28), v44, &qword_27CB24350, &unk_21776A5D0);
    OUTLINED_FUNCTION_54();
    if (!v26)
    {

      OUTLINED_FUNCTION_41_28();
      v31 = OUTLINED_FUNCTION_20_38();
      sub_217388C50(v31, v32, v33);
      OUTLINED_FUNCTION_98();
      sub_21726A300(v45);
      OUTLINED_FUNCTION_3_89();
      v35 = v10;
LABEL_14:
      sub_2175BEB90(v35, v34);
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_3_89();
    sub_2175BEB90(v10, v27);
    v28 = &qword_27CB24350;
    v29 = &unk_21776A5D0;
LABEL_11:
    sub_2171F0738(v44, v28, v29);
    OUTLINED_FUNCTION_53();
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_5_72();
  OUTLINED_FUNCTION_43_23();
  if (*(v17 + *(v14 + 28)))
  {
    OUTLINED_FUNCTION_53();
  }

  else
  {

    sub_2171FF30C(v43, v45);
    v39 = sub_2174D53F4(v45);
    if (!a10)
    {
      v40 = v39;
      v41 = sub_217751DE8();
      sub_2174D37FC(v41, v40);
      OUTLINED_FUNCTION_98();
    }
  }

  OUTLINED_FUNCTION_2_96();
  sub_2175BEB90(v17, v42);
LABEL_18:
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_170();
}

void CloudArtist.PlayableItem.mergeMetadata(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  v14 = OUTLINED_FUNCTION_60_1(v12, v13);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1();
  v16 = OUTLINED_FUNCTION_206();
  v17 = type metadata accessor for CloudPlaylist(v16);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v18);
  v19 = OUTLINED_FUNCTION_7_34();
  v20 = type metadata accessor for CloudAlbum(v19);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1();
  v22 = OUTLINED_FUNCTION_31_12();
  type metadata accessor for CloudArtist.PlayableItem(v22);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21_39();
  if (v24)
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_1_99();
  OUTLINED_FUNCTION_53_23();
  v25 = OUTLINED_FUNCTION_52_24();
  if (!v25)
  {
    OUTLINED_FUNCTION_4_87();
    OUTLINED_FUNCTION_50_24();
    sub_2171F5110(v11 + *(v20 + 32), v44, &qword_27CB243C0, &unk_21775D3A0);
    if (v44[6] != 1)
    {

      memcpy(v45, v44, 0x140uLL);
      v36 = OUTLINED_FUNCTION_20_38();
      sub_217388E48(v36, v37, v38);
      OUTLINED_FUNCTION_98();
      sub_21726A498(v45);
      OUTLINED_FUNCTION_0_110();
      v35 = v11;
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_0_110();
    sub_2175BEB90(v11, v30);
    v28 = &qword_27CB243C0;
    v29 = &unk_21775D3A0;
    goto LABEL_10;
  }

  if (v25 == 1)
  {
    OUTLINED_FUNCTION_6_70();
    OUTLINED_FUNCTION_51_21();
    sub_2171F5110(v10 + *(v17 + 28), v44, &qword_27CB24350, &unk_21776A5D0);
    OUTLINED_FUNCTION_54();
    if (!v26)
    {

      OUTLINED_FUNCTION_41_28();
      v31 = OUTLINED_FUNCTION_20_38();
      sub_217388C50(v31, v32, v33);
      OUTLINED_FUNCTION_98();
      sub_21726A300(v45);
      OUTLINED_FUNCTION_3_89();
      v35 = v10;
LABEL_14:
      sub_2175BEB90(v35, v34);
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_3_89();
    sub_2175BEB90(v10, v27);
    v28 = &qword_27CB24350;
    v29 = &unk_21776A5D0;
LABEL_10:
    sub_2171F0738(v44, v28, v29);
    OUTLINED_FUNCTION_53();
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_5_72();
  OUTLINED_FUNCTION_43_23();
  if (*(v17 + *(v14 + 28)))
  {
    OUTLINED_FUNCTION_53();
  }

  else
  {

    sub_2171FF30C(v43, v45);
    v39 = sub_2174D53F4(v45);
    if (!a10)
    {
      v40 = v39;
      v41 = sub_217751DE8();
      sub_2174D37FC(v41, v40);
      OUTLINED_FUNCTION_98();
    }
  }

  OUTLINED_FUNCTION_2_96();
  sub_2175BEB90(v17, v42);
LABEL_18:
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_170();
}

uint64_t sub_2175C08D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175C130C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2175C090C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175C130C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudArtist.PlayableItem.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v5 = v4;
  v92 = v6;
  sub_217752B38();
  OUTLINED_FUNCTION_0_0();
  v90 = v8;
  v91 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v89 = v10 - v9;
  v11 = OUTLINED_FUNCTION_206();
  v12 = type metadata accessor for CloudStation(v11);
  v13 = OUTLINED_FUNCTION_45_0(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1();
  v88 = v15 - v14;
  v16 = OUTLINED_FUNCTION_206();
  v17 = type metadata accessor for CloudPlaylist(v16);
  v18 = OUTLINED_FUNCTION_45_0(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1();
  v19 = OUTLINED_FUNCTION_60_0();
  v20 = type metadata accessor for CloudAlbum(v19);
  v21 = OUTLINED_FUNCTION_45_0(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1();
  v24 = v23 - v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A518, &qword_2177814C8);
  OUTLINED_FUNCTION_0_0();
  v93 = v26;
  MEMORY[0x28223BE20](v27);
  v28 = OUTLINED_FUNCTION_31_12();
  v29 = type metadata accessor for CloudArtist.PlayableItem(v28);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_8_4();
  v100 = v5;
  v31 = __swift_project_boxed_opaque_existential_1(v5, *(v5 + 24));
  sub_2175C130C(v31, v32, v33);
  v34 = sub_2177532C8();
  if (!v0)
  {
    v94 = v24;
    v84 = v2;
    v37 = v93;
    sub_21733BE84(v34, v35, v36);
    sub_217752EA8();
    v82 = v3;
    v39 = v95;
    v38 = v96;
    v5 = v97;
    if (qword_280BE7F08 != -1)
    {
      swift_once();
    }

    if (static Array<A>.~= infix(_:_:)(off_280BE7F10, &v95))
    {
      goto LABEL_14;
    }

    if (qword_280BE5740 != -1)
    {
      swift_once();
    }

    v40 = qword_280BE5748 == v39 && unk_280BE5750 == v38;
    if (v40 || (sub_217753058() & 1) != 0)
    {
LABEL_14:

      OUTLINED_FUNCTION_104_6();
      v41 = v94;
      CloudAlbum.init(from:)(&v95, v42, v43, v44, v45, v46, v47, v48, v81, v82, SWORD2(v82), SBYTE6(v82), SHIBYTE(v82), v1, v84, v88, v89, v90, v91, v92, v93, v94, v95);
      (*(v37 + 8))(v83, v25);
      OUTLINED_FUNCTION_4_87();
      sub_2175C1360(v41, v85);
    }

    else
    {
      if (qword_280BE4610 != -1)
      {
        swift_once();
      }

      v95 = v39;
      v96 = v38;
      v97 = v5;
      if (static Array<A>.~= infix(_:_:)(off_280BE4618, &v95))
      {
        goto LABEL_26;
      }

      v94 = v38;
      if (qword_280BE4788 != -1)
      {
        swift_once();
      }

      v51 = qword_280BE4790 == v39 && *algn_280BE4798 == v38;
      if (v51 || (sub_217753058() & 1) != 0)
      {
LABEL_26:

        OUTLINED_FUNCTION_104_6();
        CloudPlaylist.init(from:)(&v95, v52, v53, v54, v55, v56, v57, v58, v81, v82, SWORD2(v82), SBYTE6(v82), SHIBYTE(v82), v1, v2, v88, v89, v90, v91, v92, v93, v94, v95);
        v59 = OUTLINED_FUNCTION_27_1();
        v60(v59);
        OUTLINED_FUNCTION_6_70();
        sub_2175C1360(v1, v86);
      }

      else
      {
        if (qword_280BE4DA0 != -1)
        {
          swift_once();
        }

        v95 = v39;
        v96 = v38;
        v97 = v5;
        if (!static Array<A>.~= infix(_:_:)(off_280BE4DA8, &v95))
        {
          __swift_project_boxed_opaque_existential_1(v100, v100[3]);
          sub_217753298();
          v95 = 0;
          v96 = 0xE000000000000000;
          sub_217752AA8();
          MEMORY[0x21CEA23B0](0xD000000000000011, 0x80000002177ADC50);
          v98 = 34;
          v99 = 0xE100000000000000;
          MEMORY[0x21CEA23B0](v39, v38);
          MEMORY[0x21CEA23B0](34, 0xE100000000000000);

          MEMORY[0x21CEA23B0](v98, v99, v71);

          MEMORY[0x21CEA23B0](0xD00000000000002BLL, 0x80000002177B21C0, v72);
          sub_217752B08();
          v73 = sub_217752B48();
          swift_allocError();
          v75 = v74;
          v76 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25518, &qword_21775CDA0) + 48);
          *v75 = v29;
          (*(v90 + 16))(v75 + v76, v89, v91);
          v77 = *(*(v73 - 8) + 104);
          v78 = v73;
          v5 = v100;
          v77(v75, *MEMORY[0x277D84160], v78);
          swift_willThrow();
          (*(v90 + 8))(v89, v91);
          v79 = OUTLINED_FUNCTION_27_1();
          v80(v79);
          goto LABEL_3;
        }

        OUTLINED_FUNCTION_104_6();
        v61 = v88;
        CloudStation.init(from:)(&v95, v62, v63, v64, v65, v66, v67, v68, v81, v82, SWORD2(v82), SBYTE6(v82), SHIBYTE(v82), v1, v2, v88, v89, v90, v91, v92, v93, v38, v95);
        v69 = OUTLINED_FUNCTION_27_1();
        v70(v69);
        OUTLINED_FUNCTION_5_72();
        sub_2175C1360(v61, v87);
      }
    }

    swift_storeEnumTagMultiPayload();
    v49 = OUTLINED_FUNCTION_47_2();
    sub_2175C1360(v49, v50);
  }

LABEL_3:
  __swift_destroy_boxed_opaque_existential_1(v5);
  OUTLINED_FUNCTION_170();
}

uint64_t CloudArtist.PlayableItem.encode(to:)()
{
  v3 = OUTLINED_FUNCTION_101();
  v4 = type metadata accessor for CloudStation(v3);
  v5 = OUTLINED_FUNCTION_45_0(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v8 = (v7 - v6);
  v9 = type metadata accessor for CloudPlaylist(0);
  v10 = OUTLINED_FUNCTION_45_0(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  v11 = type metadata accessor for CloudAlbum(0);
  v12 = OUTLINED_FUNCTION_45_0(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v13 = OUTLINED_FUNCTION_71_0();
  type metadata accessor for CloudArtist.PlayableItem(v13);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_1_99();
  v15 = OUTLINED_FUNCTION_45_4();
  sub_2175C12B0(v15, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_2175C1360(v2, v8);
      CloudStation.encode(to:)();
      v18 = v8;
      v19 = type metadata accessor for CloudStation;
      return sub_2175BEB90(v18, v19);
    }

    OUTLINED_FUNCTION_15_52();
    sub_2175C1360(v2, v0);
    CloudPlaylist.encode(to:)();
    v18 = v0;
  }

  else
  {
    v8 = type metadata accessor for CloudAlbum;
    sub_2175C1360(v2, v1);
    CloudAlbum.encode(to:)();
    v18 = v1;
  }

  v19 = v8;
  return sub_2175BEB90(v18, v19);
}

uint64_t sub_2175C12B0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_101();
  v5(v4);
  OUTLINED_FUNCTION_43();
  (*(v6 + 16))(a2, v2);
  return a2;
}

unint64_t sub_2175C130C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A520;
  if (!qword_27CB2A520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A520);
  }

  return result;
}

uint64_t sub_2175C1360(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_101();
  v5(v4);
  OUTLINED_FUNCTION_43();
  (*(v6 + 32))(a2, v2);
  return a2;
}

unint64_t sub_2175C13C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A528;
  if (!qword_27CB2A528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A528);
  }

  return result;
}

unint64_t sub_2175C1418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A530;
  if (!qword_27CB2A530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A530);
  }

  return result;
}

unint64_t sub_2175C1470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A538;
  if (!qword_27CB2A538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A538);
  }

  return result;
}

unint64_t sub_2175C14C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A540;
  if (!qword_27CB2A540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A540);
  }

  return result;
}

unint64_t sub_2175C1520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A548;
  if (!qword_27CB2A548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A548);
  }

  return result;
}

unint64_t sub_2175C1578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A550;
  if (!qword_27CB2A550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A550);
  }

  return result;
}

unint64_t sub_2175C15D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A558;
  if (!qword_27CB2A558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A558);
  }

  return result;
}

unint64_t sub_2175C1628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A560;
  if (!qword_27CB2A560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A560);
  }

  return result;
}

unint64_t sub_2175C1680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A568;
  if (!qword_27CB2A568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A568);
  }

  return result;
}

unint64_t sub_2175C16D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A570;
  if (!qword_27CB2A570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A570);
  }

  return result;
}

unint64_t sub_2175C1730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A578;
  if (!qword_27CB2A578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A578);
  }

  return result;
}

unint64_t sub_2175C1788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A580;
  if (!qword_27CB2A580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A580);
  }

  return result;
}

unint64_t sub_2175C17E0()
{
  result = qword_27CB2A588;
  if (!qword_27CB2A588)
  {
    type metadata accessor for CloudArtist.PlayableItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A588);
  }

  return result;
}

_BYTE *sub_2175C1878(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_2175C1968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A590;
  if (!qword_27CB2A590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A590);
  }

  return result;
}

unint64_t sub_2175C19C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A598;
  if (!qword_27CB2A598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A598);
  }

  return result;
}

unint64_t sub_2175C1A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A5A0;
  if (!qword_27CB2A5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A5A0);
  }

  return result;
}

unint64_t sub_2175C1A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A5A8;
  if (!qword_27CB2A5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A5A8);
  }

  return result;
}

unint64_t sub_2175C1AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A5B0;
  if (!qword_27CB2A5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A5B0);
  }

  return result;
}

unint64_t sub_2175C1B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A5B8;
  if (!qword_27CB2A5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A5B8);
  }

  return result;
}

unint64_t sub_2175C1B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A5C0;
  if (!qword_27CB2A5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A5C0);
  }

  return result;
}

unint64_t sub_2175C1BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A5C8;
  if (!qword_27CB2A5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A5C8);
  }

  return result;
}

unint64_t sub_2175C1C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A5D0;
  if (!qword_27CB2A5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A5D0);
  }

  return result;
}

unint64_t sub_2175C1C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A5D8;
  if (!qword_27CB2A5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A5D8);
  }

  return result;
}

unint64_t sub_2175C1CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A5E0;
  if (!qword_27CB2A5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A5E0);
  }

  return result;
}

void *OUTLINED_FUNCTION_41_28()
{

  return memcpy((v0 + 552), (v0 + 40), 0x200uLL);
}

uint64_t OUTLINED_FUNCTION_43_23()
{
  v3 = *(v0 + 8);

  return sub_2175C1360(v1, v3);
}

uint64_t OUTLINED_FUNCTION_50_24()
{

  return sub_2175C1360(v0, v1);
}

uint64_t OUTLINED_FUNCTION_51_21()
{

  return sub_2175C1360(v0, v1);
}

uint64_t OUTLINED_FUNCTION_52_24()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_53_23()
{

  return sub_2175C12B0(v0, v1);
}

uint64_t MusicPersonalRecommendation.Item.id.getter()
{
  MusicPersonalRecommendation.Item.innerItem.getter(v3);
  v0 = v4;
  v1 = v5;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v1 + 8))(v0, v1);
  __swift_destroy_boxed_opaque_existential_1(v3);
  return OUTLINED_FUNCTION_93();
}

double MusicPersonalRecommendation.Item.innerItem.getter@<D0>(uint64_t *a1@<X8>)
{
  sub_217283ECC(v1, v7);
  v3 = off_27822A8E0[v10];
  a1[3] = off_27822A8C8[v10];
  a1[4] = v3;
  v4 = swift_allocObject();
  *a1 = v4;
  v5 = v7[1];
  *(v4 + 16) = v7[0];
  *(v4 + 32) = v5;
  result = *&v8;
  *(v4 + 48) = v8;
  *(v4 + 64) = v9;
  return result;
}

void *MusicPersonalRecommendation.Item.artwork.getter@<X0>(void *a1@<X8>)
{
  v3 = sub_217283ECC(v1, &v33);
  if (v39)
  {
    if (v39 == 1)
    {
      OUTLINED_FUNCTION_2_1(v3, v4, v5, v6, v7, v8, v9, v10, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
      Playlist.artwork.getter(__src);
      sub_21726B8C4(&v26);
    }

    else
    {
      OUTLINED_FUNCTION_2_1(v3, v4, v5, v6, v7, v8, v9, v10, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
      if (qword_280BE6760 != -1)
      {
        swift_once();
      }

      sub_2176CABE4(qword_280C020A0, v18, v19, v20, v21, v22, v23, v24, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, *(&v37 + 1), v38, v39, __src[0], __src[1], __src[2]);
      sub_217283DC8(&v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_1(v3, v4, v5, v6, v7, v8, v9, v10, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
    if (qword_280BE9428 != -1)
    {
      swift_once();
    }

    sub_2176CA9A8(qword_280C026F8, v11, v12, v13, v14, v15, v16, v17, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, *(&v37 + 1), v38, v39, __src[0], __src[1], __src[2]);
    sub_21725CE44(&v26);
  }

  return memcpy(a1, __src, 0x221uLL);
}

uint64_t MusicPersonalRecommendation.Item.title.getter()
{
  v1 = sub_217283ECC(v0, &v19);
  if (v24)
  {
    if (v24 == 1)
    {
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
      if (qword_280BE9208 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_22_0();
      sub_2172A3F14(v9);
      OUTLINED_FUNCTION_21_4();
      sub_21726B8C4(&v11);
    }

    else
    {
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
      if (qword_280BE6778 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_22_0();
      sub_2172A3FDC();
      OUTLINED_FUNCTION_21_4();
      sub_217283DC8(&v11);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
    if (qword_280BE9470 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A4380();
    OUTLINED_FUNCTION_21_4();
    sub_21725CE44(&v11);
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t MusicPersonalRecommendation.Item.subtitle.getter()
{
  v1 = sub_217283ECC(v0, &v19);
  if (v24)
  {
    if (v24 == 1)
    {
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
      if (qword_280BE93B0 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_22_0();
      sub_2172A3F14(v9);
      sub_21726B8C4(&v11);
    }

    else
    {
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
      if (qword_280BE67C8 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_22_0();
      sub_2172A3FDC();
      sub_217283DC8(&v11);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
    if (qword_280BE9680 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A4380();
    OUTLINED_FUNCTION_21_4();
    sub_21725CE44(&v11);
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t static MusicPersonalRecommendation.Item.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_217283ECC(a1, v57);
  sub_217283ECC(a2, &v59);
  if (v58)
  {
    if (v58 == 1)
    {
      v4 = sub_217283ECC(v57, &v51);
      if (v60 == 1)
      {
        OUTLINED_FUNCTION_2_0(v4, v5, v6, v7, v8, v9, v10, v11, v44, v45, v46, v47, v48, v49, v50, v51);
        v14 = v14 && v12 == v13;
        if (v14 || (sub_217753058() & 1) != 0)
        {
          OUTLINED_FUNCTION_9_2(&v51, v44, *(&v44 + 1), v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
          v15 = OUTLINED_FUNCTION_13_4();
          v16 = v2(v15);
          sub_21726B8C4(&v44);
          if (v16)
          {
            sub_21726B8C4(&v51);
LABEL_31:
            sub_217283F28(v57);
            return 1;
          }
        }

        else
        {
          sub_21726B8C4(&v44);
        }

        sub_21726B8C4(&v51);
        goto LABEL_38;
      }

      sub_21726B8C4(&v51);
    }

    else
    {
      v25 = sub_217283ECC(v57, &v51);
      if (v60 == 2)
      {
        OUTLINED_FUNCTION_2_0(v25, v26, v27, v28, v29, v30, v31, v32, v44, v45, v46, v47, v48, v49, v50, v51);
        v35 = v14 && v33 == v34;
        if (v35 || (sub_217753058() & 1) != 0)
        {
          OUTLINED_FUNCTION_9_2(&v51, v44, *(&v44 + 1), v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
          v36 = OUTLINED_FUNCTION_13_4();
          v37 = v2(v36);
          sub_217283DC8(&v44);
          if (v37)
          {
            sub_217283DC8(&v51);
            goto LABEL_31;
          }
        }

        else
        {
          sub_217283DC8(&v44);
        }

        sub_217283DC8(&v51);
        goto LABEL_38;
      }

      sub_217283DC8(&v51);
    }
  }

  else
  {
    v17 = sub_217283ECC(v57, &v51);
    if (!v60)
    {
      OUTLINED_FUNCTION_2_0(v17, v18, v19, v20, v21, v22, v23, v24, v44, v45, v46, v47, v48, v49, v50, v51);
      v40 = v14 && v38 == v39;
      if (v40 || (sub_217753058() & 1) != 0)
      {
        OUTLINED_FUNCTION_9_2(&v51, v44, *(&v44 + 1), v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v41 = OUTLINED_FUNCTION_13_4();
        v42 = v2(v41);
        sub_21725CE44(&v44);
        if (v42)
        {
          sub_21725CE44(&v51);
          goto LABEL_31;
        }
      }

      else
      {
        sub_21725CE44(&v44);
      }

      sub_21725CE44(&v51);
LABEL_38:
      sub_217283F28(v57);
      return 0;
    }

    sub_21725CE44(&v51);
  }

  sub_2175C32A8(v57);
  return 0;
}

uint64_t MusicPersonalRecommendation.Item.hash(into:)(uint64_t a1)
{
  v2 = sub_217283ECC(v1, &v28);
  if (v33)
  {
    if (v33 == 1)
    {
      v10 = OUTLINED_FUNCTION_0_83(v2, v3, v4, v5, v6, v7, v8, v9, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
      MEMORY[0x21CEA3550](1, v10);
      sub_217751FF8();
      __swift_project_boxed_opaque_existential_1(&v22, v25);
      v11 = OUTLINED_FUNCTION_3_4();
      v12(v11);
      return sub_21726B8C4(&v20);
    }

    else
    {
      v17 = OUTLINED_FUNCTION_0_83(v2, v3, v4, v5, v6, v7, v8, v9, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
      MEMORY[0x21CEA3550](2, v17);
      sub_217751FF8();
      __swift_project_boxed_opaque_existential_1(&v22, v25);
      v18 = OUTLINED_FUNCTION_3_4();
      v19(v18);
      return sub_217283DC8(&v20);
    }
  }

  else
  {
    v14 = OUTLINED_FUNCTION_0_83(v2, v3, v4, v5, v6, v7, v8, v9, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
    MEMORY[0x21CEA3550](0, v14);
    sub_217751FF8();
    __swift_project_boxed_opaque_existential_1(&v22, v25);
    v15 = OUTLINED_FUNCTION_3_4();
    v16(v15);
    return sub_21725CE44(&v20);
  }
}

uint64_t MusicPersonalRecommendation.Item.hashValue.getter()
{
  sub_2177531E8();
  MusicPersonalRecommendation.Item.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_2175C2748(uint64_t a1)
{
  sub_2177531E8();
  MusicPersonalRecommendation.Item.hash(into:)(v2);
  return sub_217753238();
}

uint64_t sub_2175C2784@<X0>(uint64_t *a1@<X8>)
{
  result = MusicPersonalRecommendation.Item.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MusicPersonalRecommendation.Item.init(from:)(void *a1)
{
  sub_2171FF30C(a1, v3);
  sub_2172EED40();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MusicPersonalRecommendation.Item.description.getter()
{
  sub_217283ECC(v0, &v23);
  if (v28)
  {
    if (v28 == 1)
    {
      OUTLINED_FUNCTION_1_79(v1, v2, v3, v4, v5, v6, v7, v8, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
      sub_217752AA8();

      OUTLINED_FUNCTION_11_59();
      v9 = Playlist.description.getter();
      MEMORY[0x21CEA23B0](v9);

      OUTLINED_FUNCTION_18_1();
      sub_21726B8C4(&v15);
    }

    else
    {
      OUTLINED_FUNCTION_1_79(v1, v2, v3, v4, v5, v6, v7, v8, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
      sub_217752AA8();

      OUTLINED_FUNCTION_11_59();
      v11 = Station.description.getter();
      MEMORY[0x21CEA23B0](v11);

      OUTLINED_FUNCTION_18_1();
      sub_217283DC8(&v15);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_79(v1, v2, v3, v4, v5, v6, v7, v8, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
    sub_217752AA8();

    OUTLINED_FUNCTION_11_59();
    v10 = Album.description.getter();
    MEMORY[0x21CEA23B0](v10);

    OUTLINED_FUNCTION_18_1();
    sub_21725CE44(&v15);
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t MusicPersonalRecommendation.Item.debugDescription.getter()
{
  sub_217283ECC(v0, v57);
  if (v58)
  {
    if (v58 == 1)
    {
      OUTLINED_FUNCTION_3_8();
      sub_217752AA8();

      OUTLINED_FUNCTION_12_43();
      v1 = Playlist.debugDescription.getter();
      v9 = OUTLINED_FUNCTION_7_51(v1, v2, v3, v4, v5, v6, v7, v8, v47, v51);
      OUTLINED_FUNCTION_6_2(v9, v10, v11, v12, v13, v14, MEMORY[0x277D837D0], v15, v48, v52, v55);
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_17_36();

      OUTLINED_FUNCTION_16_5();
      sub_21726B8C4(v56);
    }

    else
    {
      OUTLINED_FUNCTION_3_8();
      sub_217752AA8();

      OUTLINED_FUNCTION_12_43();
      v31 = Station.debugDescription.getter();
      v39 = OUTLINED_FUNCTION_7_51(v31, v32, v33, v34, v35, v36, v37, v38, v47, v51);
      OUTLINED_FUNCTION_6_2(v39, v40, v41, v42, v43, v44, MEMORY[0x277D837D0], v45, v50, v54, v55);
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_17_36();

      OUTLINED_FUNCTION_16_5();
      sub_217283DC8(v56);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_8();
    sub_217752AA8();

    OUTLINED_FUNCTION_12_43();
    v16 = Album.debugDescription.getter();
    v24 = OUTLINED_FUNCTION_7_51(v16, v17, v18, v19, v20, v21, v22, v23, v47, v51);
    OUTLINED_FUNCTION_6_2(v24, v25, v26, v27, v28, v29, MEMORY[0x277D837D0], v30, v49, v53, v55);
    OUTLINED_FUNCTION_15_9();
    OUTLINED_FUNCTION_17_36();

    OUTLINED_FUNCTION_16_5();
    sub_21725CE44(v56);
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t MusicPersonalRecommendation.Item.init(propertyProvider:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 48))(v71, v4, v5);
  v6 = v71[1];
  if (qword_280BE8A88 != -1)
  {
    swift_once();
  }

  v7 = OUTLINED_FUNCTION_30_2(&xmmword_280BE8A90);
  v9 = v9 && v8 == v6;
  if (!v9 && (OUTLINED_FUNCTION_25_38(v7, v8) & 1) == 0)
  {
    if (qword_280BE8AE8 != -1)
    {
      swift_once();
    }

    v10 = OUTLINED_FUNCTION_30_2(&qword_280BE8AF0);
    v12 = v9 && v11 == v6;
    if (!v12 && (OUTLINED_FUNCTION_25_38(v10, v11) & 1) == 0)
    {
      if (qword_280BE8A38 != -1)
      {
        swift_once();
      }

      v28 = OUTLINED_FUNCTION_30_2(&qword_280BE8A40);
      v30 = v9 && v29 == v6;
      if (v30 || (OUTLINED_FUNCTION_25_38(v28, v29) & 1) != 0)
      {
        goto LABEL_31;
      }

      if (qword_280BE8AA8 != -1)
      {
        swift_once();
      }

      v31 = OUTLINED_FUNCTION_30_2(&qword_280BE8AB0);
      v33 = v9 && v32 == v6;
      if (v33 || (OUTLINED_FUNCTION_25_38(v31, v32) & 1) != 0)
      {
LABEL_31:

        sub_2171FF30C(a1, v63);
        __swift_project_boxed_opaque_existential_1(v63, v64);
        v34 = OUTLINED_FUNCTION_8_49();
        v35(v34);
        v37 = v69;
        v36 = v70;
        sub_217751DE8();
        sub_217269F50(&v69);
        *&v65 = v37;
        *(&v65 + 1) = v36;
        v38 = __swift_project_boxed_opaque_existential_1(v63, v64);
        OUTLINED_FUNCTION_11_6(v38, v39, v40, v41, v42, v43, v44, v45, v62);
        __swift_destroy_boxed_opaque_existential_1(v63);
        v25 = 1;
        goto LABEL_16;
      }

      if (qword_280BE8A60 != -1)
      {
        swift_once();
      }

      v46 = OUTLINED_FUNCTION_30_2(&qword_280BE8A68);
      if (!v9 || v47 != v6)
      {
        v49 = OUTLINED_FUNCTION_25_38(v46, v47);

        if (v49)
        {
LABEL_41:
          sub_2171FF30C(a1, v63);
          __swift_project_boxed_opaque_existential_1(v63, v64);
          v50 = OUTLINED_FUNCTION_8_49();
          v51(v50);
          v53 = v69;
          v52 = v70;
          sub_217751DE8();
          sub_217269F50(&v69);
          *&v65 = v53;
          *(&v65 + 1) = v52;
          v54 = __swift_project_boxed_opaque_existential_1(v63, v64);
          OUTLINED_FUNCTION_11_6(v54, v55, v56, v57, v58, v59, v60, v61, v62);
          __swift_destroy_boxed_opaque_existential_1(v63);
          v25 = 2;
          goto LABEL_16;
        }

        v62 = 242;
        sub_217752D08();
        __break(1u);
      }

      goto LABEL_41;
    }
  }

  sub_2171FF30C(a1, v63);
  __swift_project_boxed_opaque_existential_1(v63, v64);
  v13 = OUTLINED_FUNCTION_8_49();
  v14(v13);
  v16 = v69;
  v15 = v70;
  sub_217751DE8();
  sub_217269F50(&v69);
  *&v65 = v16;
  *(&v65 + 1) = v15;
  v17 = __swift_project_boxed_opaque_existential_1(v63, v64);
  OUTLINED_FUNCTION_11_6(v17, v18, v19, v20, v21, v22, v23, v24, v62);
  __swift_destroy_boxed_opaque_existential_1(v63);
  v25 = 0;
LABEL_16:
  v26 = v66;
  *a2 = v65;
  *(a2 + 16) = v26;
  *(a2 + 32) = v67;
  *(a2 + 48) = v68;
  *(a2 + 56) = v25;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double sub_2175C2EF0()
{
  if (qword_280BEB7A0 != -1)
  {
    swift_once();
  }

  v0 = off_280BEB7A8;
  os_unfair_lock_lock(*(off_280BEB7A8 + 2));
  sub_21770FA7C(0xD000000000000020, 0x80000002177B0C60, &type metadata for MusicPersonalRecommendation.Item, &protocol witness table for MusicPersonalRecommendation.Item, v2);
  os_unfair_lock_unlock(v0[2]);
  result = *v2;
  xmmword_27CB2A5E8 = v2[0];
  xmmword_27CB2A5F8 = v2[1];
  return result;
}

uint64_t static MusicPersonalRecommendation.Item.typeValue.getter@<X0>(__n128 *a1@<X8>)
{
  if (qword_27CB23D08 != -1)
  {
    swift_once();
  }

  *a1 = OUTLINED_FUNCTION_1449(&xmmword_27CB2A5E8);
  a1[1].n128_u64[0] = v3;
  a1[1].n128_u64[1] = v2;

  return sub_217751DE8();
}

uint64_t sub_2175C3028()
{
  if (qword_27CB23D08 != -1)
  {
    swift_once();
  }

  xmmword_27CB2A608 = xmmword_27CB2A5E8;
  xmmword_27CB2A618 = xmmword_27CB2A5F8;

  return sub_217751DE8();
}

uint64_t static MusicItemTypeValue.personalRecommendationItem.getter@<X0>(__n128 *a1@<X8>)
{
  if (qword_27CB23D10 != -1)
  {
    swift_once();
  }

  *a1 = OUTLINED_FUNCTION_1449(&xmmword_27CB2A608);
  a1[1].n128_u64[0] = v3;
  a1[1].n128_u64[1] = v2;

  return sub_217751DE8();
}

uint64_t sub_2175C3110()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A08, &qword_217758FC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2177643C0;
  if (qword_280BE62F0 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = OUTLINED_FUNCTION_1449(&xmmword_280BE62F8);
  *(v0 + 48) = v2;
  *(v0 + 56) = v1;
  v3 = qword_280BE6220;
  sub_217751DE8();
  if (v3 != -1)
  {
    swift_once();
  }

  *(v0 + 64) = OUTLINED_FUNCTION_1449(&xmmword_280BE6228);
  *(v0 + 80) = v5;
  *(v0 + 88) = v4;
  v6 = qword_280BE6248;
  sub_217751DE8();
  if (v6 != -1)
  {
    swift_once();
  }

  *(v0 + 96) = OUTLINED_FUNCTION_1449(&xmmword_280BE6250);
  *(v0 + 112) = v8;
  *(v0 + 120) = v7;
  qword_27CB2A628 = v0;

  return sub_217751DE8();
}

uint64_t static MusicPersonalRecommendation.Item.supportedTypeValues.getter()
{
  if (qword_27CB23D18 != -1)
  {
    swift_once();
  }

  return sub_217751DE8();
}

uint64_t sub_2175C32A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A630, &unk_217781C80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2175C3314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A638;
  if (!qword_27CB2A638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A638);
  }

  return result;
}

uint64_t sub_2175C3374(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 57))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 56);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2175C33B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_2175C3400(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 56) = a2;
  return result;
}

void *CloudPlaylistFolder.init(id:attributes:relationships:views:meta:)@<X0>(void *__src@<X3>, uint64_t a2@<X0>, uint64_t a3@<X1>, _OWORD *a4@<X2>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v8 = *a5;
  v9 = *a6;
  *a7 = a2;
  *(a7 + 8) = a3;
  v10 = a4[1];
  *(a7 + 16) = *a4;
  *(a7 + 32) = v10;
  result = memcpy((a7 + 48), __src, 0x100uLL);
  *(a7 + 304) = v8;
  *(a7 + 305) = v9;
  return result;
}

MusicKit::CloudPlaylistFolder::Attributes __swiftcall CloudPlaylistFolder.Attributes.init(name:dateAdded:)(Swift::String_optional name, Swift::String_optional dateAdded)
{
  *v2 = name;
  v2[1] = dateAdded;
  result.dateAdded = dateAdded;
  result.name = name;
  return result;
}

uint64_t static CloudPlaylistFolder.Attributes.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8)
    {
      if (v4 == v7 && v5 == v8)
      {
        return 1;
      }

      OUTLINED_FUNCTION_93();
      if (sub_217753058())
      {
        return 1;
      }
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_2175C35AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6564644165746164 && a2 == 0xE900000000000064)
  {

    return 1;
  }

  else
  {
    v7 = sub_217753058();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2175C367C(char a1)
{
  if (a1)
  {
    return 0x6564644165746164;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_2175C36B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2175C35AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2175C36E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175C38B4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2175C371C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175C38B4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudPlaylistFolder.Attributes.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_171();
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A650, &qword_217781F40);
  OUTLINED_FUNCTION_0_0();
  v37 = v28;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v29);
  v31 = v36 - v30;
  v32 = *(v23 + 16);
  v36[1] = *(v23 + 24);
  v36[2] = v32;
  v33 = __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_2175C38B4(v33, v34, v35);
  sub_2177532F8();
  sub_217752EF8();
  if (!v24)
  {
    sub_217752EF8();
  }

  (*(v37 + 8))(v31, v27);
  OUTLINED_FUNCTION_170();
}

unint64_t sub_2175C38B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A658;
  if (!qword_27CB2A658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A658);
  }

  return result;
}

uint64_t CloudPlaylistFolder.Attributes.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (!*(v1 + 8))
  {
    sub_217753208();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_217753208();
  }

  sub_217753208();
  sub_217751FF8();
  if (!v2)
  {
    return sub_217753208();
  }

LABEL_3:
  sub_217753208();

  return sub_217751FF8();
}

uint64_t CloudPlaylistFolder.Attributes.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  sub_2177531E8();
  sub_217753208();
  if (v1)
  {
    OUTLINED_FUNCTION_171_1();
    sub_217751FF8();
  }

  sub_217753208();
  if (v2)
  {
    sub_217751FF8();
  }

  return sub_217753238();
}

void CloudPlaylistFolder.Attributes.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_171();
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A660, &qword_217781F48);
  OUTLINED_FUNCTION_0_0();
  v30 = v29;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v31);
  v33 = &v44 - v32;
  v34 = __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_2175C38B4(v34, v35, v36);
  sub_2177532C8();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    v37 = sub_217752E18();
    v39 = v38;
    v40 = sub_217752E18();
    v42 = v41;
    v43 = *(v30 + 8);
    v45 = v40;
    v43(v33, v28);
    *v27 = v37;
    v27[1] = v39;
    v27[2] = v45;
    v27[3] = v42;
    sub_217751DE8();
    sub_217751DE8();
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_2175C3C70(uint64_t a1)
{
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  sub_2177531E8();
  CloudPlaylistFolder.Attributes.hash(into:)(v4);
  return sub_217753238();
}

void *CloudPlaylistFolder.Relationships.init(children:parent:)@<X0>(void *__src@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  memcpy(a3, __src, 0x80uLL);

  return memcpy((a3 + 128), a2, 0x80uLL);
}

uint64_t CloudPlaylistFolder.Relationships.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0x746E65726170;
  }

  else
  {
    return 0x6E6572646C696863;
  }
}

uint64_t sub_2175C3E08@<X0>(uint64_t *a1@<X8>)
{
  result = CloudPlaylistFolder.Relationships.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2175C3E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21738C014(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2175C3E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21738C014(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

BOOL static CloudPlaylistFolder.Relationships.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_53(a1, v17);
  OUTLINED_FUNCTION_15_53(a2, v19);
  if (v18)
  {
    sub_2174A87A0(v17, v16, &qword_27CB24A48, &qword_217759000);
    if (v19[2])
    {
      memcpy(v15, v19, sizeof(v15));
      v4 = sub_2172DE178(v16, v15);
      OUTLINED_FUNCTION_171_1();
      sub_2171F06D8(v5, v6, v7);
      OUTLINED_FUNCTION_171_1();
      sub_2171F06D8(v8, v9, v10);
      sub_2171F06D8(v17, &qword_27CB24A48, &qword_217759000);
      if ((v4 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_7;
    }

    sub_2171F06D8(v16, &qword_27CB24A50, &qword_217759008);
LABEL_12:
    v12 = &unk_27CB2A668;
    v13 = &unk_217781F50;
    goto LABEL_18;
  }

  if (v19[2])
  {
    goto LABEL_12;
  }

  sub_2171F06D8(v17, &qword_27CB24A48, &qword_217759000);
LABEL_7:
  OUTLINED_FUNCTION_15_53(a1 + 128, v17);
  OUTLINED_FUNCTION_15_53(a2 + 128, v19);
  if (v18)
  {
    sub_2174A87A0(v17, v16, &qword_27CB24380, &unk_217759010);
    if (v19[2])
    {
      memcpy(v15, v19, sizeof(v15));
      v11 = sub_2172DE190(v16, v15);
      sub_2171F06D8(v15, &qword_27CB24388, &unk_217781F60);
      sub_2171F06D8(v16, &qword_27CB24388, &unk_217781F60);
      sub_2171F06D8(v17, &qword_27CB24380, &unk_217759010);
      return (v11 & 1) != 0;
    }

    sub_2171F06D8(v16, &qword_27CB24388, &unk_217781F60);
  }

  else if (!v19[2])
  {
    sub_2171F06D8(v17, &qword_27CB24380, &unk_217759010);
    return 1;
  }

  v12 = &unk_27CB26218;
  v13 = &unk_217761D58;
LABEL_18:
  sub_2171F06D8(v17, v12, v13);
  return 0;
}

uint64_t CloudPlaylistFolder.Relationships.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A670, &qword_217781F70);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21738C014(v11, v12, v13);
  sub_2177532F8();
  v25 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A50, &qword_217759008);
  OUTLINED_FUNCTION_4_9();
  v15 = sub_2175C5B74(v14);
  OUTLINED_FUNCTION_223_0(v3, &v25, v16, v17, v15);
  if (!v2)
  {
    v24 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24388, &unk_217781F60);
    OUTLINED_FUNCTION_4_9();
    v19 = sub_2175C4338(v18);
    OUTLINED_FUNCTION_223_0(v3 + 128, &v24, v20, v21, v19);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_2175C42F8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    type metadata accessor for CloudPlaylistFolderItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2175C4338(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24388, &unk_217781F60);
    v5 = sub_2175C43AC(v4);
    result = OUTLINED_FUNCTION_20_3(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2175C43AC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24A38, &unk_217758FF0);
    v6 = sub_21737B6D8(v3, v4, v5);
    v9 = sub_21737B72C(v6, v7, v8);
    result = OUTLINED_FUNCTION_20_2(v9, v10, v11, v12, v13, v14, v15, v16, v17, v18);
    atomic_store(result, v1);
  }

  return result;
}

uint64_t CloudPlaylistFolder.Relationships.hash(into:)(uint64_t a1)
{
  v3 = sub_2174A87A0(v1, v36, &qword_27CB24A48, &qword_217759000);
  if (v37)
  {
    OUTLINED_FUNCTION_10_1(v3, v4, v5, v6, v7, v8, v9, v10, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
    OUTLINED_FUNCTION_24();
    sub_2172DE7B4(a1);
    sub_2171F06D8(&v20, &qword_27CB24A50, &qword_217759008);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v11 = sub_2174A87A0(v1 + 128, v36, &qword_27CB24380, &unk_217759010);
  if (!v37)
  {
    return OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_10_1(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
  OUTLINED_FUNCTION_24();
  sub_2172DE79C(a1);
  return sub_2171F06D8(&v20, &qword_27CB24388, &unk_217781F60);
}

uint64_t CloudPlaylistFolder.Relationships.hashValue.getter()
{
  sub_2177531E8();
  sub_2174A87A0(v0, __src, &qword_27CB24A48, &qword_217759000);
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE7B4(v4);
    sub_2171F06D8(__dst, &qword_27CB24A50, &qword_217759008);
  }

  else
  {
    sub_217753208();
  }

  sub_2174A87A0(v0 + 128, __src, &qword_27CB24380, &unk_217759010);
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE79C(v4);
    sub_2171F06D8(__dst, &qword_27CB24388, &unk_217781F60);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}

void CloudPlaylistFolder.Relationships.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A698, &qword_217781F78);
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v9 = &v28[-v8 - 8];
  v10 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_21738C014(v10, v11, v12);
  sub_2177532C8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v13 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A50, &qword_217759008);
    OUTLINED_FUNCTION_3_90();
    sub_2175C5B74(v14);
    v15 = OUTLINED_FUNCTION_20_5();
    v16 = v27;
    OUTLINED_FUNCTION_169_4(v15, v17, v18, v19, v20);
    memcpy(v29, v28, sizeof(v29));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24388, &unk_217781F60);
    OUTLINED_FUNCTION_3_90();
    sub_2175C4338(v21);
    v22 = OUTLINED_FUNCTION_20_5();
    OUTLINED_FUNCTION_169_4(v22, v23, v24, v25, v26);
    (*(v13 + 8))(v9, v16);
    memcpy(v30, v28, sizeof(v30));
    sub_21738BFB8(v29, v4);
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_2172841E0(v29);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_2175C48B8(uint64_t a1)
{
  sub_2177531E8();
  sub_2174A87A0(v1, __src, &qword_27CB24A48, &qword_217759000);
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE7B4(v5);
    sub_2171F06D8(__dst, &qword_27CB24A50, &qword_217759008);
  }

  else
  {
    sub_217753208();
  }

  sub_2174A87A0(v1 + 128, __src, &qword_27CB24380, &unk_217759010);
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE79C(v5);
    sub_2171F06D8(__dst, &qword_27CB24388, &unk_217781F60);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}

uint64_t sub_2175C49E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175C5C84(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2175C4A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175C5C84(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_2175C4B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175C5CD8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2175C4B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175C5CD8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void sub_2175C4BE4()
{
  OUTLINED_FUNCTION_171();
  v1 = v0;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v1();
  sub_2177532F8();
  v7 = OUTLINED_FUNCTION_1_37();
  v8(v7);
  OUTLINED_FUNCTION_170();
}

uint64_t CloudPlaylistFolder.attributes.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 16);
  *(a1 + 8) = *(v1 + 24);
  *(a1 + 24) = v2;
  sub_217751DE8();

  return sub_217751DE8();
}

double static CloudPlaylistFolder.relationshipCodingKeys.setter(void *a1)
{
  swift_beginAccess();
  off_27CB2A640 = a1;
}

uint64_t sub_2175C4E94@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_27CB2A640;
  return sub_217751DE8();
}

double sub_2175C4EE4(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  off_27CB2A640 = v1;
  sub_217751DE8();
}

uint64_t static CloudPlaylistFolder.associationCodingKeys.getter()
{
  if (qword_27CB23D20 != -1)
  {
    swift_once();
  }

  return sub_217751DE8();
}

uint64_t sub_2175C5024()
{
  if (qword_280BE4AF0 != -1)
  {
    swift_once();
  }

  qword_280BE3B30 = qword_280BE4AF8;
  *algn_280BE3B38 = unk_280BE4B00;
  byte_280BE3B40 = byte_280BE4B08;

  return sub_217751DE8();
}

uint64_t static CloudPlaylistFolder.libraryType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280BE3B28 != -1)
  {
    swift_once();
  }

  v2 = *algn_280BE3B38;
  v3 = byte_280BE3B40;
  *a1 = qword_280BE3B30;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;

  return sub_217751DE8();
}

uint64_t static CloudPlaylistFolder.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_217753058() & 1) == 0)
  {
    goto LABEL_15;
  }

  v5 = *(a1 + 2);
  v12 = *(a1 + 1);
  v13 = v5;
  v6 = *(a2 + 32);
  v11[0] = *(a2 + 16);
  v11[1] = v6;
  if ((static CloudPlaylistFolder.Attributes.== infix(_:_:)(&v12, v11) & 1) == 0)
  {
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_15_53((a1 + 6), &v12);
  OUTLINED_FUNCTION_15_53(a2 + 48, v14);
  if (v13 != 1)
  {
    sub_2174A87A0(&v12, v11, &qword_27CB24A40, &qword_217781F90);
    if (v14[2] != 1)
    {
      memcpy(v10, v14, sizeof(v10));
      v7 = static CloudPlaylistFolder.Relationships.== infix(_:_:)(v11, v10);
      sub_2172841E0(v10);
      sub_2172841E0(v11);
      sub_2171F06D8(&v12, &qword_27CB24A40, &qword_217781F90);
      if (!v7)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    sub_2172841E0(v11);
LABEL_12:
    sub_2171F06D8(&v12, &qword_27CB2A6D0, &qword_217781F98);
    goto LABEL_15;
  }

  if (v14[2] != 1)
  {
    goto LABEL_12;
  }

  sub_2171F06D8(&v12, &qword_27CB24A40, &qword_217781F90);
LABEL_14:
  if (*(a1 + 304) == *(a2 + 304))
  {
    v8 = *(a1 + 305) ^ *(a2 + 305) ^ 1;
    return v8 & 1;
  }

LABEL_15:
  v8 = 0;
  return v8 & 1;
}

uint64_t sub_2175C52B4(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7475626972747461;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0x7377656976;
      break;
    case 4:
      result = 1635018093;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2175C5350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175C5D2C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2175C538C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175C5D2C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t CloudPlaylistFolder.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A6D8, &qword_217781FA0);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2175C5D2C(v11, v12, v13);
  v14 = sub_2177532F8();
  v15 = v3[1];
  v33 = *v3;
  *&v34 = v15;
  v36 = 0;
  sub_2172E1B18(v14, v16, v17);
  OUTLINED_FUNCTION_2_58();
  v18 = sub_217752F88();
  if (!v2)
  {
    v21 = v3[5];
    v33 = v3[2];
    v34 = *(v3 + 3);
    v35 = v21;
    v36 = 1;
    sub_2174D7920(v18, v19, v20);
    sub_217751DE8();
    sub_217751DE8();
    sub_217752F88();

    LOBYTE(v33) = 2;
    sub_2174D78CC(v22, v23, v24);
    v25 = sub_217752F38();
    LOBYTE(v33) = *(v3 + 304);
    v36 = 3;
    sub_2174D7878(v25, v26, v27);
    OUTLINED_FUNCTION_2_58();
    v28 = sub_217752F38();
    LOBYTE(v33) = *(v3 + 305);
    v36 = 4;
    sub_2174D7824(v28, v29, v30);
    OUTLINED_FUNCTION_2_58();
    sub_217752F38();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t CloudPlaylistFolder.hash(into:)(uint64_t a1)
{
  sub_217751FF8();
  v3 = *(v1 + 40);
  if (*(v1 + 24))
  {
    OUTLINED_FUNCTION_24();
    sub_217751FF8();
    if (v3)
    {
LABEL_3:
      OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_171_1();
      sub_217751FF8();
      goto LABEL_6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_25();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_25();
LABEL_6:
  sub_2174A87A0(v1 + 48, __src, &qword_27CB24A40, &qword_217781F90);
  if (__src[2] == 1)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    memcpy(__dst, __src, sizeof(__dst));
    OUTLINED_FUNCTION_24();
    v4 = sub_2174A87A0(__dst, v21, &qword_27CB24A48, &qword_217759000);
    if (v22)
    {
      OUTLINED_FUNCTION_10_1(v4, v5, v6, v7, v8, v9, v10, v11, v20[0], v20[1], v20[2], v20[3], v20[4], v20[5], v20[6], v20[7], v20[8], v20[9], v20[10], v20[11], v20[12], v20[13], v20[14], v20[15]);
      OUTLINED_FUNCTION_24();
      sub_2172DE7B4(a1);
      sub_2171F06D8(v20, &qword_27CB24A50, &qword_217759008);
    }

    else
    {
      OUTLINED_FUNCTION_25();
    }

    sub_217264E2C(a1, v12, v13, v14, v15, v16, v17, v18);
    sub_2172841E0(__dst);
  }

  sub_217753208();
  return sub_217753208();
}

uint64_t CloudPlaylistFolder.hashValue.getter()
{
  sub_2177531E8();
  CloudPlaylistFolder.hash(into:)(v1);
  return sub_217753238();
}

void CloudPlaylistFolder.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A6E8, &qword_217781FA8);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  v30 = v2;
  v6 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2175C5D2C(v6, v7, v8);
  v9 = sub_2177532C8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  else
  {
    sub_2172E1C68(v9, v10, v11);
    v12 = sub_217752EA8();
    v28[0] = v26[0];
    sub_2175C5D80(v12, v13, v14);
    OUTLINED_FUNCTION_1_100();
    v15 = sub_217752EA8();
    v28[1] = v26[0];
    v28[2] = v26[1];
    sub_2175C5DD4(v15, v16, v17);
    OUTLINED_FUNCTION_1_100();
    sub_217752E58();
    v18 = memcpy(v29, v26, 0x100uLL);
    v27 = 3;
    sub_2175C5E28(v18, v19, v20);
    OUTLINED_FUNCTION_1_100();
    v21 = sub_217752E58();
    v29[256] = v26[0];
    v27 = 4;
    sub_2175C5E7C(v21, v22, v23);
    OUTLINED_FUNCTION_1_100();
    sub_217752E58();
    v24 = OUTLINED_FUNCTION_82();
    v25(v24);
    v29[257] = v26[0];
    sub_2175C5ED0(v28, v4);
    __swift_destroy_boxed_opaque_existential_1(v30);
    sub_2175C5F08(v28);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_2175C5B38(uint64_t a1)
{
  sub_2177531E8();
  CloudPlaylistFolder.hash(into:)(v2);
  return sub_217753238();
}

unint64_t sub_2175C5B74(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24A50, &qword_217759008);
    v5 = sub_2175C5BE8(v4);
    result = OUTLINED_FUNCTION_20_3(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2175C5BE8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24938, &qword_217758EC8);
    sub_2175C42F8(&unk_27CB2A688);
    v3 = sub_2175C42F8(&unk_27CB2A690);
    result = OUTLINED_FUNCTION_20_2(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2175C5C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A6B8;
  if (!qword_27CB2A6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A6B8);
  }

  return result;
}

unint64_t sub_2175C5CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A6C8;
  if (!qword_27CB2A6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A6C8);
  }

  return result;
}

unint64_t sub_2175C5D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A6E0;
  if (!qword_27CB2A6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A6E0);
  }

  return result;
}

unint64_t sub_2175C5D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A6F0;
  if (!qword_27CB2A6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A6F0);
  }

  return result;
}

unint64_t sub_2175C5DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A6F8;
  if (!qword_27CB2A6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A6F8);
  }

  return result;
}

unint64_t sub_2175C5E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A700;
  if (!qword_27CB2A700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A700);
  }

  return result;
}

unint64_t sub_2175C5E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A708;
  if (!qword_27CB2A708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A708);
  }

  return result;
}

unint64_t sub_2175C5F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A710;
  if (!qword_27CB2A710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A710);
  }

  return result;
}

unint64_t sub_2175C5F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A718;
  if (!qword_27CB2A718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A718);
  }

  return result;
}

unint64_t sub_2175C5FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A720;
  if (!qword_27CB2A720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A720);
  }

  return result;
}

unint64_t sub_2175C6044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A728;
  if (!qword_27CB2A728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A728);
  }

  return result;
}

unint64_t sub_2175C609C()
{
  result = qword_27CB2A730;
  if (!qword_27CB2A730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2A738, &qword_217782158);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A730);
  }

  return result;
}

unint64_t sub_2175C6104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A740;
  if (!qword_27CB2A740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A740);
  }

  return result;
}

unint64_t sub_2175C615C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A748;
  if (!qword_27CB2A748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A748);
  }

  return result;
}

unint64_t sub_2175C61B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A750;
  if (!qword_27CB2A750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A750);
  }

  return result;
}

unint64_t sub_2175C6230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A758;
  if (!qword_27CB2A758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A758);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8MusicKit23CloudResourceCollectionVyAA0cD0VyAA0C18PlaylistFolderItemOGGSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_8MusicKit19CloudPlaylistFolderV13RelationshipsVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2175C62C8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 306))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2175C6308(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 304) = 0;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 306) = 1;
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

    *(result + 306) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_2175C63D8(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudPlaylistFolder.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_2175C657C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2175C665C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A760;
  if (!qword_27CB2A760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A760);
  }

  return result;
}

unint64_t sub_2175C66B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A768;
  if (!qword_27CB2A768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A768);
  }

  return result;
}

unint64_t sub_2175C670C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A770;
  if (!qword_27CB2A770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A770);
  }

  return result;
}

unint64_t sub_2175C6764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A778;
  if (!qword_27CB2A778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A778);
  }

  return result;
}

unint64_t sub_2175C67BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A780;
  if (!qword_27CB2A780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A780);
  }

  return result;
}

unint64_t sub_2175C6814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A788;
  if (!qword_27CB2A788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A788);
  }

  return result;
}

unint64_t sub_2175C686C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A790;
  if (!qword_27CB2A790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A790);
  }

  return result;
}

unint64_t sub_2175C68C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A798;
  if (!qword_27CB2A798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A798);
  }

  return result;
}

unint64_t sub_2175C691C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A7A0;
  if (!qword_27CB2A7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A7A0);
  }

  return result;
}

unint64_t sub_2175C6974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A7A8;
  if (!qword_27CB2A7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A7A8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15_53(uint64_t a1, uint64_t a2)
{

  return sub_2174A87A0(a1, a2, v2, v3);
}

BOOL AlbumPropertyProvider.containsDownloadedOrPurchasedContent.getter()
{
  v1 = type metadata accessor for AlbumPropertyProvider(0);
  v2 = v0 + *(v1 + 56);
  return (*(v2 + 8) & 1) == 0 && *v2 >= 1 || *(v0 + *(v1 + 128)) == 2;
}

uint64_t AlbumPropertyProvider.hasOnlyExplicitContent.getter()
{
  v5 = v0;
  v6 = type metadata accessor for AlbumPropertyProvider(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_20_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_190_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_31_34();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_241();
  MEMORY[0x28223BE20](v11);
  v13 = &v99 - v12;
  v15 = (v0 + *(v14 + 40));
  if ((v15[1] & 1) == 0)
  {
    v19 = *v15;
    if (qword_280BE8358 != -1)
    {
LABEL_68:
      OUTLINED_FUNCTION_3(&qword_280BE8358);
    }

    v36 = sub_217751AF8();
    __swift_project_value_buffer(v36, qword_280C02570);
    v37 = OUTLINED_FUNCTION_33_34();
    sub_2174A5E88(v37, v13);
    v38 = sub_217751AD8();
    v39 = sub_217752828();
    if (OUTLINED_FUNCTION_17_44(v39))
    {
      swift_slowAlloc();
      v119[0] = OUTLINED_FUNCTION_5_73();
      *v1 = 136315650;
      v40 = OUTLINED_FUNCTION_16_6("hasOnlyExplicitContent");
      OUTLINED_FUNCTION_1_101(v40);
      OUTLINED_FUNCTION_24_37();
      sub_2174A5EEC(v13);
      v41 = OUTLINED_FUNCTION_25_45();
      sub_21729C0E8(v41, v4, v42);
      OUTLINED_FUNCTION_40_27();
      OUTLINED_FUNCTION_34_32();
      OUTLINED_FUNCTION_10_50();
      _os_log_impl(v43, v44, v45, v46, v47, 0x20u);
      OUTLINED_FUNCTION_22_46();
      OUTLINED_FUNCTION_28_4();
      OUTLINED_FUNCTION_8_61();
    }

    else
    {

      sub_2174A5EEC(v13);
    }

    LOBYTE(v48) = v19 == 0;
    return v48 & 1;
  }

  sub_2171F5110(v0 + *(v6 + 212), v119, &unk_27CB28A60, &qword_217770B60);
  if (!v119[11])
  {
    v49 = &unk_27CB28A60;
    v50 = &qword_217770B60;
    v51 = v119;
LABEL_36:
    sub_2171F0738(v51, v49, v50);
    if (qword_280BE8358 != -1)
    {
      OUTLINED_FUNCTION_3(&qword_280BE8358);
    }

    v52 = sub_217751AF8();
    __swift_project_value_buffer(v52, qword_280C02570);
    v53 = OUTLINED_FUNCTION_33_34();
    sub_2174A5E88(v53, v3);
    v54 = sub_217751AD8();
    v55 = sub_217752828();
    if (OUTLINED_FUNCTION_21_40(v55))
    {
      OUTLINED_FUNCTION_55();
      v119[0] = OUTLINED_FUNCTION_8_29();
      *v2 = 136315394;
      v56 = OUTLINED_FUNCTION_16_6("hasOnlyExplicitContent");
      OUTLINED_FUNCTION_4_88(v56);
      OUTLINED_FUNCTION_41_29();
      sub_2174A5EEC(v3);
      v57 = OUTLINED_FUNCTION_25_45();
      sub_21729C0E8(v57, v1, v58);
      OUTLINED_FUNCTION_39_22();
      *(v2 + 14) = v6;
      OUTLINED_FUNCTION_9_57();
      OUTLINED_FUNCTION_29_2();
      OUTLINED_FUNCTION_28_4();
    }

    else
    {

      sub_2174A5EEC(v3);
    }

    goto LABEL_41;
  }

  memcpy(__dst, v119, 0x68uLL);
  v16 = __dst[0];
  if (LOBYTE(__dst[1]) == 1)
  {
    OUTLINED_FUNCTION_70();
    v16 = *(v16 + 56);
  }

  if (!*(v16 + 16))
  {
    v49 = &qword_27CB240D0;
    v50 = &unk_21775D400;
    v51 = __dst;
    goto LABEL_36;
  }

  v99 = v4;
  v100 = v2;
  v102 = v1;
  v103 = v5;
  v101 = v6;
  sub_2171F5110(__dst, &v116, &qword_27CB240D0, &unk_21775D400);
  sub_2171F5110(&v116, v119, &qword_27CB240D0, &unk_21775D400);
  v17 = v116;
  v18 = v117;
  sub_217283C5C(v116, v117);
  sub_2171F0738(&v116, &qword_27CB240D0, &unk_21775D400);
  sub_21725CF00(v17, v18);
  v13 = 0;
  v120 = 0;
  v19 = v119[0];
  v20 = LOBYTE(v119[1]);
  v104 = v119[0] + 32;
  v1 = &dword_27CB27E20;
  while (1)
  {
    if (v20)
    {
      swift_beginAccess();
      if (v13 == *(*(v19 + 56) + 16))
      {
        goto LABEL_43;
      }

      sub_217294634();
      v114 = v111;
      v115 = v112;
      v21 = OUTLINED_FUNCTION_50();
      sub_21725CF00(v21, 1);
      if (__OFADD__(v13++, 1))
      {
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }
    }

    else
    {
      v23 = *(v19 + 16);
      if (v13 == v23)
      {
LABEL_43:
        sub_2171F0738(v119, &qword_27CB27E10, &qword_21776BCB0);
        v48 = 1;
        goto LABEL_46;
      }

      if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_66;
      }

      if (v13 >= v23)
      {
        goto LABEL_67;
      }

      sub_2171F5110(v104 + (v13 << 6), &v116, &dword_27CB27E20, &unk_2177589C0);
      sub_2171F5110(&v116, v105, &dword_27CB27E20, &unk_2177589C0);
      if (v106[41])
      {
        OUTLINED_FUNCTION_42_29();
        OUTLINED_FUNCTION_37_29();

        sub_2171F0738(&v116, &dword_27CB27E20, &unk_2177589C0);
      }

      else
      {
        sub_217751DE8();
        sub_2171F0738(&v116, &dword_27CB27E20, &unk_2177589C0);
        OUTLINED_FUNCTION_34_1();
      }

      v113[0] = *v109;
      *(v113 + 9) = *&v109[9];
      v114 = v107;
      v115 = v108;
      v24 = OUTLINED_FUNCTION_50();
      sub_21725CF00(v24, 0);
      ++v13;
    }

    v120 = v13;
    sub_217275710(&v114, &v116);
    if (v118)
    {
      OUTLINED_FUNCTION_27_2();
      if (qword_280BE6D00 != -1)
      {
        swift_once();
      }

      sub_21729C5E8(v106, &v111);
      v25 = *&v113[0];
      __swift_project_boxed_opaque_existential_1(&v111, *(&v112 + 1));
      v26 = OUTLINED_FUNCTION_11_60();
      v27(v26, v25);
      v2 = *(&v108 + 1);
      v4 = *v109;
      __swift_project_boxed_opaque_existential_1(&v107, *(&v108 + 1));
      v28 = OUTLINED_FUNCTION_23_45();
      v29(v28, &type metadata for MusicVideo, &type metadata for ContentRating, v2);
      sub_217283C08(v105);
    }

    else
    {
      OUTLINED_FUNCTION_27_2();
      if (qword_280BE9878 != -1)
      {
        swift_once();
      }

      sub_21729C5E8(v106, &v111);
      v30 = *&v113[0];
      __swift_project_boxed_opaque_existential_1(&v111, *(&v112 + 1));
      v31 = OUTLINED_FUNCTION_11_60();
      v32(v31, v30);
      v2 = *(&v108 + 1);
      v4 = *v109;
      __swift_project_boxed_opaque_existential_1(&v107, *(&v108 + 1));
      v33 = OUTLINED_FUNCTION_23_45();
      v34(v33, &type metadata for Song, &type metadata for ContentRating, v2);
      sub_217283B58(v105);
    }

    __swift_destroy_boxed_opaque_existential_1(&v107);
    sub_21729C644(&v111);
    v35 = v110;
    v1 = &dword_27CB27E20;
    if (v110 == 2)
    {
      break;
    }

    sub_21727576C(&v114);
    if ((v35 & 1) == 0)
    {
      sub_2171F0738(v119, &qword_27CB27E10, &qword_21776BCB0);
      goto LABEL_45;
    }
  }

  sub_2171F0738(v119, &qword_27CB27E10, &qword_21776BCB0);
  sub_21727576C(&v114);
LABEL_45:
  v48 = 0;
LABEL_46:
  sub_2171F5110(&__dst[2], v119, &qword_27CB24188, &dword_217758930);
  v61 = v119[3];
  sub_2171F0738(v119, &qword_27CB24188, &dword_217758930);
  v63 = v102;
  v62 = v103;
  if (v61)
  {
    if (v48)
    {
      v64 = v101;
      if (qword_280BE8358 != -1)
      {
        OUTLINED_FUNCTION_3(&qword_280BE8358);
      }

      v65 = sub_217751AF8();
      v66 = OUTLINED_FUNCTION_15_54(v65, qword_280C02570);
      v67 = v99;
      sub_2174A5E88(v66, v99);
      v68 = sub_217751AD8();
      v69 = sub_217752828();
      if (os_log_type_enabled(v68, v69))
      {
        OUTLINED_FUNCTION_55();
        v119[0] = OUTLINED_FUNCTION_8_29();
        *v2 = 136315394;
        v70 = OUTLINED_FUNCTION_16_6("hasOnlyExplicitContent");
        OUTLINED_FUNCTION_4_88(v70);
        OUTLINED_FUNCTION_41_29();
        sub_2174A5EEC(v67);
        v71 = OUTLINED_FUNCTION_25_45();
        sub_21729C0E8(v71, &dword_27CB27E20, v72);
        OUTLINED_FUNCTION_39_22();
        *(v2 + 14) = v64;
        OUTLINED_FUNCTION_9_57();
        OUTLINED_FUNCTION_29_2();
        OUTLINED_FUNCTION_28_4();
      }

      else
      {

        sub_2174A5EEC(v67);
      }

      sub_2171F0738(__dst, &qword_27CB240D0, &unk_21775D400);
LABEL_41:
      LOBYTE(v48) = AlbumPropertyProvider.hasExplicitContent.getter();
      return v48 & 1;
    }

    v85 = v101;
    if (qword_280BE8358 != -1)
    {
      OUTLINED_FUNCTION_3(&qword_280BE8358);
    }

    v86 = sub_217751AF8();
    v87 = OUTLINED_FUNCTION_15_54(v86, qword_280C02570);
    v88 = v100;
    sub_2174A5E88(v87, v100);
    v89 = sub_217751AD8();
    v90 = sub_217752828();
    if (OUTLINED_FUNCTION_17_44(v90))
    {
      OUTLINED_FUNCTION_55();
      v119[0] = OUTLINED_FUNCTION_5_73();
      dword_27CB27E20 = 136315394;
      v91 = OUTLINED_FUNCTION_16_6("hasOnlyExplicitContent");
      OUTLINED_FUNCTION_1_101(v91);
      OUTLINED_FUNCTION_24_37();
      sub_2174A5EEC(v88);
      v92 = OUTLINED_FUNCTION_25_45();
      sub_21729C0E8(v92, v62, v93);
      OUTLINED_FUNCTION_40_27();
      unk_27CB27E2E = v85;
      OUTLINED_FUNCTION_10_50();
      _os_log_impl(v94, v95, v96, v97, v98, 0x16u);
      OUTLINED_FUNCTION_22_46();
      OUTLINED_FUNCTION_28_4();
      OUTLINED_FUNCTION_8_61();
    }

    else
    {

      sub_2174A5EEC(v88);
    }

    sub_2171F0738(__dst, &qword_27CB240D0, &unk_21775D400);
    LOBYTE(v48) = 0;
  }

  else
  {
    if (qword_280BE8358 != -1)
    {
      OUTLINED_FUNCTION_3(&qword_280BE8358);
    }

    v74 = sub_217751AF8();
    v75 = OUTLINED_FUNCTION_15_54(v74, qword_280C02570);
    sub_2174A5E88(v75, v63);
    v76 = sub_217751AD8();
    v77 = sub_217752828();
    if (OUTLINED_FUNCTION_21_40(v77))
    {
      swift_slowAlloc();
      v119[0] = OUTLINED_FUNCTION_5_73();
      dword_27CB27E20 = 136315650;
      v78 = OUTLINED_FUNCTION_16_6("hasOnlyExplicitContent");
      OUTLINED_FUNCTION_1_101(v78);
      v80 = *(v63 + v79 + 8);
      sub_217751DE8();
      sub_2174A5EEC(v63);
      v81 = OUTLINED_FUNCTION_25_45();
      sub_21729C0E8(v81, v80, v82);

      OUTLINED_FUNCTION_35_29();
      OUTLINED_FUNCTION_36_31(&dword_2171EE000, v83, v84, "%s Album<%{public}s> has tracks fully loaded, returning %{BOOL}d.");
      OUTLINED_FUNCTION_9_57();
      OUTLINED_FUNCTION_29_2();
      OUTLINED_FUNCTION_8_61();
    }

    else
    {

      sub_2174A5EEC(v63);
    }

    sub_2171F0738(__dst, &qword_27CB240D0, &unk_21775D400);
  }

  return v48 & 1;
}

uint64_t AlbumPropertyProvider.hasOnlyExplicitDownloadedContent.getter()
{
  v5 = v0;
  v6 = type metadata accessor for AlbumPropertyProvider(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_20_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_190_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_31_34();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_241();
  MEMORY[0x28223BE20](v11);
  v13 = &v92 - v12;
  v15 = (v0 + *(v14 + 36));
  if ((v15[1] & 1) == 0)
  {
    v19 = *v15;
    if (qword_280BE8358 != -1)
    {
LABEL_67:
      OUTLINED_FUNCTION_3(&qword_280BE8358);
    }

    v29 = sub_217751AF8();
    __swift_project_value_buffer(v29, qword_280C02570);
    v30 = OUTLINED_FUNCTION_33_34();
    sub_2174A5E88(v30, v13);
    v31 = sub_217751AD8();
    v32 = sub_217752828();
    if (OUTLINED_FUNCTION_17_44(v32))
    {
      swift_slowAlloc();
      v112[0] = OUTLINED_FUNCTION_5_73();
      *v1 = 136315650;
      v33 = OUTLINED_FUNCTION_15_11("hasOnlyExplicitDownloadedContent");
      OUTLINED_FUNCTION_1_101(v33);
      OUTLINED_FUNCTION_24_37();
      sub_2174A5EEC(v13);
      v34 = OUTLINED_FUNCTION_27_42();
      sub_21729C0E8(v34, v4, v35);
      OUTLINED_FUNCTION_40_27();
      OUTLINED_FUNCTION_34_32();
      OUTLINED_FUNCTION_10_50();
      _os_log_impl(v36, v37, v38, v39, v40, 0x20u);
      OUTLINED_FUNCTION_22_46();
      OUTLINED_FUNCTION_28_4();
      OUTLINED_FUNCTION_8_61();
    }

    else
    {

      sub_2174A5EEC(v13);
    }

    LOBYTE(v41) = v19 == 0;
    return v41 & 1;
  }

  sub_2171F5110(v0 + *(v6 + 212), v112, &unk_27CB28A60, &qword_217770B60);
  if (!v112[11])
  {
    v42 = &unk_27CB28A60;
    v43 = &qword_217770B60;
    v44 = v112;
LABEL_33:
    sub_2171F0738(v44, v42, v43);
    if (qword_280BE8358 != -1)
    {
      OUTLINED_FUNCTION_3(&qword_280BE8358);
    }

    v45 = sub_217751AF8();
    __swift_project_value_buffer(v45, qword_280C02570);
    v46 = OUTLINED_FUNCTION_33_34();
    sub_2174A5E88(v46, v3);
    v47 = sub_217751AD8();
    v48 = sub_217752828();
    if (OUTLINED_FUNCTION_21_40(v48))
    {
      OUTLINED_FUNCTION_55();
      v112[0] = OUTLINED_FUNCTION_8_29();
      *v2 = 136315394;
      v49 = OUTLINED_FUNCTION_15_11("hasOnlyExplicitDownloadedContent");
      OUTLINED_FUNCTION_4_88(v49);
      OUTLINED_FUNCTION_41_29();
      sub_2174A5EEC(v3);
      v50 = OUTLINED_FUNCTION_27_42();
      sub_21729C0E8(v50, v1, v51);
      OUTLINED_FUNCTION_39_22();
      *(v2 + 14) = v6;
      OUTLINED_FUNCTION_9_57();
      OUTLINED_FUNCTION_29_2();
      OUTLINED_FUNCTION_28_4();
    }

    else
    {

      sub_2174A5EEC(v3);
    }

    goto LABEL_38;
  }

  memcpy(__dst, v112, 0x68uLL);
  v16 = __dst[0];
  if (LOBYTE(__dst[1]) == 1)
  {
    OUTLINED_FUNCTION_70();
    v16 = *(v16 + 56);
  }

  if (!*(v16 + 16))
  {
    v42 = &qword_27CB240D0;
    v43 = &unk_21775D400;
    v44 = __dst;
    goto LABEL_33;
  }

  v93 = v1;
  v94 = v4;
  v92 = v2;
  v95 = v5;
  v96 = v6;
  sub_2171F5110(__dst, v109, &qword_27CB240D0, &unk_21775D400);
  sub_2171F5110(v109, v112, &qword_27CB240D0, &unk_21775D400);
  v17 = *&v109[0];
  v18 = BYTE8(v109[0]);
  sub_217283C5C(*&v109[0], SBYTE8(v109[0]));
  sub_2171F0738(v109, &qword_27CB240D0, &unk_21775D400);
  sub_21725CF00(v17, v18);
  v13 = 0;
  v113 = 0;
  v19 = v112[0];
  v4 = v112[0] + 32;
  v97 = LOBYTE(v112[1]);
  v1 = &dword_27CB27E20;
  while (1)
  {
    if (v97)
    {
      swift_beginAccess();
      if (v13 == *(*(v19 + 56) + 16))
      {
        goto LABEL_40;
      }

      sub_217294634();
      v107 = v104;
      v108 = v105;
      v20 = OUTLINED_FUNCTION_52_3();
      sub_21725CF00(v20, 1);
      if (__OFADD__(v13++, 1))
      {
        goto LABEL_65;
      }
    }

    else
    {
      v22 = *(v19 + 16);
      if (v13 == v22)
      {
LABEL_40:
        v41 = 1;
        goto LABEL_44;
      }

      if ((v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      if (v13 >= v22)
      {
        goto LABEL_66;
      }

      sub_2171F5110(v4 + (v13 << 6), v109, &dword_27CB27E20, &unk_2177589C0);
      sub_2171F5110(v109, v98, &dword_27CB27E20, &unk_2177589C0);
      if (v98[57])
      {
        OUTLINED_FUNCTION_42_29();
        OUTLINED_FUNCTION_37_29();

        sub_2171F0738(v109, &dword_27CB27E20, &unk_2177589C0);
      }

      else
      {
        sub_217751DE8();
        sub_2171F0738(v109, &dword_27CB27E20, &unk_2177589C0);
        OUTLINED_FUNCTION_34_1();
      }

      v106[0] = *v101;
      *(v106 + 9) = *(&v101[1] + 1);
      v107 = v99;
      v108 = v100;
      v23 = OUTLINED_FUNCTION_52_3();
      sub_21725CF00(v23, 0);
      ++v13;
    }

    v113 = v13;
    sub_217275710(&v107, v109);
    if (v111)
    {
      OUTLINED_FUNCTION_29_7();
      sub_217283C08(v98);
    }

    else
    {
      OUTLINED_FUNCTION_29_7();
      sub_217283B58(v98);
    }

    v109[0] = *&v101[5];
    v109[1] = v102;
    v1 = v103;
    v110 = v103;
    __swift_project_boxed_opaque_existential_1(v109, *(&v102 + 1));
    v24 = OUTLINED_FUNCTION_11_60();
    v25(v24, v1);
    sub_21729C644(v109);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B38, &unk_21776C4E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B40, &qword_217759400);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v26 = *(&v105 + 1);
    if (!*(&v105 + 1))
    {
      goto LABEL_42;
    }

    v27 = *&v106[0];
    __swift_project_boxed_opaque_existential_1(&v104, *(&v105 + 1));
    v28 = (*(v27 + 104))(v26, v27);
    __swift_destroy_boxed_opaque_existential_1(&v104);
    sub_21727576C(&v107);
    v1 = &dword_27CB27E20;
    if ((v28 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  *&v106[0] = 0;
  v104 = 0u;
  v105 = 0u;
LABEL_42:
  sub_2171F0738(&v104, &qword_27CB24B48, &qword_21777F0F0);
  sub_21727576C(&v107);
LABEL_43:
  v41 = 0;
LABEL_44:
  sub_2171F0738(v112, &qword_27CB27E10, &qword_21776BCB0);
  sub_2171F5110(&__dst[2], v112, &qword_27CB24188, &dword_217758930);
  v54 = v112[3];
  sub_2171F0738(v112, &qword_27CB24188, &dword_217758930);
  v56 = v94;
  v55 = v95;
  if (v54)
  {
    if (v41)
    {
      v57 = v96;
      if (qword_280BE8358 != -1)
      {
        OUTLINED_FUNCTION_3(&qword_280BE8358);
      }

      v58 = sub_217751AF8();
      v59 = OUTLINED_FUNCTION_15_54(v58, qword_280C02570);
      sub_2174A5E88(v59, v56);
      v60 = sub_217751AD8();
      v61 = sub_217752828();
      if (os_log_type_enabled(v60, v61))
      {
        OUTLINED_FUNCTION_55();
        v112[0] = OUTLINED_FUNCTION_8_29();
        LODWORD(dword_217758930) = 136315394;
        v62 = OUTLINED_FUNCTION_15_11("hasOnlyExplicitDownloadedContent");
        OUTLINED_FUNCTION_4_88(v62);
        OUTLINED_FUNCTION_41_29();
        sub_2174A5EEC(v56);
        v63 = OUTLINED_FUNCTION_27_42();
        sub_21729C0E8(v63, v1, v64);
        OUTLINED_FUNCTION_39_22();
        *(&qword_217758938 + 6) = v57;
        OUTLINED_FUNCTION_9_57();
        OUTLINED_FUNCTION_29_2();
        OUTLINED_FUNCTION_28_4();
      }

      else
      {

        sub_2174A5EEC(v56);
      }

      sub_2171F0738(__dst, &qword_27CB240D0, &unk_21775D400);
LABEL_38:
      LOBYTE(v41) = AlbumPropertyProvider.hasExplicitContent.getter();
      return v41 & 1;
    }

    v78 = v96;
    if (qword_280BE8358 != -1)
    {
      OUTLINED_FUNCTION_3(&qword_280BE8358);
    }

    v79 = sub_217751AF8();
    v80 = OUTLINED_FUNCTION_15_54(v79, qword_280C02570);
    v81 = v92;
    sub_2174A5E88(v80, v92);
    v82 = sub_217751AD8();
    v83 = sub_217752828();
    if (OUTLINED_FUNCTION_17_44(v83))
    {
      OUTLINED_FUNCTION_55();
      v112[0] = OUTLINED_FUNCTION_5_73();
      *v1 = 136315394;
      v84 = OUTLINED_FUNCTION_15_11("hasOnlyExplicitDownloadedContent");
      OUTLINED_FUNCTION_1_101(v84);
      OUTLINED_FUNCTION_24_37();
      sub_2174A5EEC(v81);
      v85 = OUTLINED_FUNCTION_27_42();
      sub_21729C0E8(v85, v55, v86);
      OUTLINED_FUNCTION_40_27();
      *(v1 + 14) = v78;
      OUTLINED_FUNCTION_10_50();
      _os_log_impl(v87, v88, v89, v90, v91, 0x16u);
      OUTLINED_FUNCTION_22_46();
      OUTLINED_FUNCTION_28_4();
      OUTLINED_FUNCTION_8_61();
    }

    else
    {

      sub_2174A5EEC(v81);
    }

    sub_2171F0738(__dst, &qword_27CB240D0, &unk_21775D400);
    LOBYTE(v41) = 0;
  }

  else
  {
    if (qword_280BE8358 != -1)
    {
      OUTLINED_FUNCTION_3(&qword_280BE8358);
    }

    v66 = sub_217751AF8();
    v67 = OUTLINED_FUNCTION_15_54(v66, qword_280C02570);
    v68 = v93;
    sub_2174A5E88(v67, v93);
    v69 = sub_217751AD8();
    v70 = sub_217752828();
    if (OUTLINED_FUNCTION_21_40(v70))
    {
      swift_slowAlloc();
      v112[0] = OUTLINED_FUNCTION_5_73();
      *v1 = 136315650;
      v71 = OUTLINED_FUNCTION_15_11("hasOnlyExplicitDownloadedContent");
      OUTLINED_FUNCTION_1_101(v71);
      v73 = *(v68 + v72 + 8);
      sub_217751DE8();
      sub_2174A5EEC(v68);
      v74 = OUTLINED_FUNCTION_27_42();
      sub_21729C0E8(v74, v73, v75);

      OUTLINED_FUNCTION_35_29();
      OUTLINED_FUNCTION_36_31(&dword_2171EE000, v76, v77, "%s Album<%{public}s> has tracks fully loaded, returning %{BOOL}d.");
      OUTLINED_FUNCTION_9_57();
      OUTLINED_FUNCTION_29_2();
      OUTLINED_FUNCTION_8_61();
    }

    else
    {

      sub_2174A5EEC(v68);
    }

    sub_2171F0738(__dst, &qword_27CB240D0, &unk_21775D400);
  }

  return v41 & 1;
}

BOOL AlbumPropertyProvider.isLibraryAddedContainer.getter()
{
  v1 = type metadata accessor for AlbumPropertyProvider(0);
  v2 = *(v0 + *(v1 + 100));
  return v2 != 2 && (v2 & 1) != 0 && *(v0 + *(v1 + 272) + 144) != 0;
}

void OUTLINED_FUNCTION_18_45(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

BOOL OUTLINED_FUNCTION_21_40(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_22_46()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_34_32()
{
  *(v1 + 14) = v0;
  *(v1 + 22) = 2050;
  *(v1 + 24) = v2;
}

double OUTLINED_FUNCTION_40_27()
{
}

uint64_t OUTLINED_FUNCTION_41_29()
{

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_42_29()
{
  sub_217283C5C(v0, 0);

  return sub_217751DE8();
}

uint64_t sub_2175C8138()
{
  type metadata accessor for MusicDataRequest.Runner();
  swift_allocObject();
  result = sub_2175C81D0();
  qword_280BEB7D8 = result;
  return result;
}

uint64_t static MusicDataRequest.Runner.shared.getter()
{
  if (qword_280BEB7D0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2175C81D0()
{
  v1 = [objc_opt_self() defaultSessionConfiguration];
  v2 = [objc_opt_self() sessionWithConfiguration_];

  *(v0 + 16) = v2;
  return v0;
}

uint64_t MusicDataRequest.Runner.response(for:)()
{
  OUTLINED_FUNCTION_10();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  type metadata accessor for MusicDataRequest(0);
  v1[8] = swift_task_alloc();
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2175C82D8()
{
  sub_2175C85D0(v0[6], v0[8]);
  if (qword_27CB23C30 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  swift_beginAccess();
  v3 = qword_27CB28C58;
  v2 = unk_27CB28C60;
  _s7ContextCMa(0);
  swift_allocObject();

  v4 = sub_217722344(v1, v3, v2);
  v0[9] = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v0[10] = v5;
  *v5 = v6;
  v5[1] = sub_2175C8414;
  v7 = v0[5];

  return sub_2175C8634(v7, v4);
}

uint64_t sub_2175C8414()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2175C850C()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_0_2();

  return v0();
}

uint64_t sub_2175C856C()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_20_0();

  return v0();
}

uint64_t sub_2175C85D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicDataRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2175C8634(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v5 = swift_task_alloc();
  v3[15] = v5;
  *v5 = v3;
  v5[1] = sub_2175C86D8;

  return sub_2175C8A3C((v3 + 2), a2);
}

uint64_t sub_2175C86D8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2175C87D0()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 136) = v1;
  *(v0 + 144) = v2;
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  *(v0 + 152) = v3;
  *(v0 + 160) = v4;
  v5 = *(v0 + 48);
  *(v0 + 49) = v5;
  *(v0 + 56) = v1;
  *(v0 + 64) = v2;
  *(v0 + 72) = v3;
  *(v0 + 80) = v4;
  *(v0 + 88) = v5;
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 168) = v6;
  *v6 = v7;
  v6[1] = sub_2175C8890;
  v8 = *(v0 + 104);
  v9 = *(v0 + 96);

  return sub_2175C9DF0(v9, v8, v0 + 56);
}

uint64_t sub_2175C8890()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 176) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_35_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    sub_21758A41C(*(v3 + 136), *(v3 + 144), *(v3 + 152), *(v3 + 160), *(v3 + 49));
    OUTLINED_FUNCTION_20_0();

    return v10();
  }
}

uint64_t sub_2175C89D8()
{
  OUTLINED_FUNCTION_10();
  sub_21758A41C(*(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 49));
  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_2175C8A3C(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return MEMORY[0x2822009F8](sub_2175C8A5C, 0, 0);
}

uint64_t sub_2175C8A5C()
{
  sub_2173BAB60();
  v3 = *(v0 + 104);
  v4 = *(v3 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_tokenProvider);
  v5 = (v3 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_activeRetryContext);
  v6 = *v5;
  *(v0 + 112) = *v5;
  v7 = v5[1];
  *(v0 + 120) = v7;
  v8 = v5[2];
  *(v0 + 128) = v8;
  v9 = v5[3];
  *(v0 + 136) = v9;
  v10 = v5[4];
  *(v0 + 144) = v10;
  v11 = *(v5 + 40);
  *(v0 + 50) = v11;
  if (v11 != 255)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        if (v11)
        {
          OUTLINED_FUNCTION_3_91();
        }

        else
        {
          sub_217751DE8();
        }

        *(v0 + 72) = 1;
        OUTLINED_FUNCTION_3_91();
        v26 = swift_task_alloc();
        *(v0 + 184) = v26;
        *v26 = v0;
        v26[1] = sub_2175C9044;
        OUTLINED_FUNCTION_13_3();

        __asm { BRAA            X3, X16 }
      }

      OUTLINED_FUNCTION_3_91();
      v23 = *(v0 + 96);
      *&v24 = v7;
      *(&v24 + 1) = v8;
      *&v25 = v9;
      *(&v25 + 1) = v10;
      *v23 = v24;
      *(v23 + 16) = v25;
      *(v23 + 32) = v11 & 1;
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_13_3();

      __asm { BRAA            X1, X16 }
    }

    *(v0 + 80) = v4;
    *(v0 + 88) = 1;
    OUTLINED_FUNCTION_3_91();
    v20 = swift_task_alloc();
    *(v0 + 152) = v20;
    *v20 = v0;
    v20[1] = sub_2175C8E84;
    OUTLINED_FUNCTION_13_3();

    __asm { BRAA            X3, X16 }
  }

  *(v0 + 56) = 0;
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 216) = v12;
  *v12 = v13;
  v12[1] = sub_2175C91D8;
  OUTLINED_FUNCTION_13_3();

  return sub_2175D974C(v14, v15, v16, v17);
}

uint64_t sub_2175C8E84()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  *v3 = *v1;
  v2[20] = v4;
  v2[21] = v5;
  v2[22] = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2175C8F88()
{
  v1 = *(v0 + 50);
  v2 = *(v0 + 168);
  v3 = *(v0 + 136);
  if (v1)
  {
    OUTLINED_FUNCTION_30_35();
    v4 = 0;
    v5 = v3;
  }

  else
  {
    sub_217751DE8();
    OUTLINED_FUNCTION_30_35();
    v5 = *(v0 + 136);
    v4 = *(v0 + 144);
  }

  v6 = *(v0 + 96);
  *v6 = *(v0 + 160);
  *(v6 + 8) = v2;
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *(v6 + 32) = v1 & 1;
  OUTLINED_FUNCTION_0_2();

  return v7();
}

uint64_t sub_2175C9044(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_155();
  v7 = v6;
  OUTLINED_FUNCTION_10_2();
  *v8 = v7;
  v9 = *v3;
  OUTLINED_FUNCTION_13_0();
  *v10 = v9;
  v7[24] = v2;

  if (v2)
  {
  }

  else
  {
    v7[25] = a2;
    v7[26] = a1;
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2175C9168()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 200);
  OUTLINED_FUNCTION_20_39();
  v2 = *(v0 + 208);
  v3 = *(v0 + 96);
  *v3 = *(v0 + 120);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = 0;
  OUTLINED_FUNCTION_0_2();

  return v4();
}

uint64_t sub_2175C91D8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 224) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2175C92D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  v4 = v2;
  if (v3 == 1 && v2 != 7)
  {
    v19 = *(v0 + 32);
    v20 = *(v0 + 16);
    if (qword_280BE73E0 != -1)
    {
      OUTLINED_FUNCTION_4_1(&qword_280BE73E0);
    }

    v6 = sub_217751AF8();
    OUTLINED_FUNCTION_25_46(v6, qword_280C023A8);
    v7 = sub_217751AD8();
    v8 = sub_217752828();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138543362;
      v13 = sub_217354318(v10, v11, v12);
      OUTLINED_FUNCTION_15_4(&type metadata for MusicTokenRequestError, v13);
      *v14 = v4;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v15;
      *v10 = v15;
      _os_log_impl(&dword_2171EE000, v7, v8, "Failed to retrieve personalized tokens with error: %{public}@. Attempting to perform request with only the developer token.", v9, 0xCu);
      sub_2171F06D8(v10, &qword_27CB29E08, &qword_21777BFF8);
      OUTLINED_FUNCTION_23_10();
      OUTLINED_FUNCTION_28_4();
    }

    LOBYTE(v3) = 1;
    v2 = v19;
    v1 = v20;
  }

  v16 = *(v0 + 96);
  *v16 = v1;
  *(v16 + 16) = v2;
  *(v16 + 32) = v3;
  OUTLINED_FUNCTION_0_2();

  return v17();
}

uint64_t sub_2175C9DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 120) = a2;
  *(v4 + 128) = v3;
  *(v4 + 112) = a1;
  sub_217751908();
  *(v4 + 136) = swift_task_alloc();
  v6 = sub_217751928();
  *(v4 + 144) = v6;
  *(v4 + 152) = *(v6 - 8);
  *(v4 + 160) = swift_task_alloc();
  v7 = sub_2177512F8();
  *(v4 + 168) = v7;
  *(v4 + 176) = *(v7 - 8);
  *(v4 + 184) = swift_task_alloc();
  v8 = *(a3 + 16);
  *(v4 + 192) = *a3;
  *(v4 + 208) = v8;
  *(v4 + 49) = *(a3 + 32);

  return MEMORY[0x2822009F8](sub_2175C9F50, 0, 0);
}

uint64_t sub_2175C9F50()
{
  OUTLINED_FUNCTION_142();
  v9 = v0;
  v1 = *(v0 + 49);
  v5 = *(v0 + 208);
  v6 = *(v0 + 192);
  (*(*(v0 + 176) + 16))(*(v0 + 184), *(v0 + 120) + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_request, *(v0 + 168));
  v7[0] = v6;
  v7[1] = v5;
  v8 = v1;
  sub_217650AC8(v7);
  v2 = swift_task_alloc();
  *(v0 + 224) = v2;
  *v2 = v0;
  v2[1] = sub_2175CA044;
  v3 = *(v0 + 184);

  return MEMORY[0x28211ECF8](v3, 0);
}

uint64_t sub_2175CA044()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  *v3 = *v1;
  v2[29] = v4;
  v2[30] = v5;
  v2[31] = v6;
  v2[32] = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2175CA148()
{
  v36 = v0;
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  *(v0 + 264) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 232);
    v4 = *(v0 + 240);
    v5 = *(v0 + 49);
    *(v0 + 80) = v3;
    *(v0 + 88) = v4;
    *(v0 + 96) = v2;
    v6 = *(v0 + 208);
    *(v0 + 16) = *(v0 + 192);
    *(v0 + 32) = v6;
    *(v0 + 48) = v5;
    sub_21727591C(v3, v4);
    v7 = v2;
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v0 + 272) = v8;
    *v8 = v9;
    v8[1] = sub_2175CA488;
    v10 = *(v0 + 120);

    return sub_2175CA8DC(v0 + 56, v0 + 80, v10, v0 + 16);
  }

  else
  {
    v12 = *(v0 + 240);
    v13 = *(v0 + 248);
    v14 = *(v0 + 232);
    v16 = *(v0 + 152);
    v15 = *(v0 + 160);
    v17 = *(v0 + 144);
    sub_2177518D8();
    sub_2176D46F4(MEMORY[0x277D84F90]);
    sub_21725EDFC();
    OUTLINED_FUNCTION_56_0();
    sub_217751618();
    v18 = sub_217751918();
    (*(v16 + 8))(v15, v17);
    swift_willThrow();

    sub_217275694(v14, v12);
    if (qword_280BE73E0 != -1)
    {
      OUTLINED_FUNCTION_4_1(&qword_280BE73E0);
    }

    v19 = *(v0 + 120);
    v20 = sub_217751AF8();
    OUTLINED_FUNCTION_25_46(v20, qword_280C023A8);

    v21 = v18;
    v22 = sub_217751AD8();
    v23 = sub_217752808();

    if (os_log_type_enabled(v22, v23))
    {
      OUTLINED_FUNCTION_55();
      v35[0] = OUTLINED_FUNCTION_13_50();
      *v19 = 136446466;
      v24 = sub_2177228E8();
      sub_21729C0E8(v24, v25, v35);
      OUTLINED_FUNCTION_164();
      OUTLINED_FUNCTION_6_71();
      *(v0 + 104) = v18;
      v26 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27640, &qword_21775A340);
      v27 = sub_217751FA8();
      sub_21729C0E8(v27, v28, v35);
      OUTLINED_FUNCTION_164();
      *(v19 + 14) = v13;
      OUTLINED_FUNCTION_45_30(&dword_2171EE000, v29, v30, "Failed to perform %{public}s. Error = %{public}s");
      OUTLINED_FUNCTION_40_7();
      OUTLINED_FUNCTION_896();
      OUTLINED_FUNCTION_9_58();
    }

    v32 = *(v0 + 176);
    v31 = *(v0 + 184);
    v33 = *(v0 + 168);
    swift_willThrow();
    (*(v32 + 8))(v31, v33);

    OUTLINED_FUNCTION_20_0();

    return v34();
  }
}

uint64_t sub_2175CA488()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  v3[35] = v0;

  v7 = v3[12];
  sub_217275694(v3[10], v3[11]);

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2175CA5A0()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 112);
  sub_217275694(*(v0 + 232), *(v0 + 240));

  v3 = OUTLINED_FUNCTION_56_0();
  v4(v3);
  v5 = *(v0 + 72);
  *v2 = *(v0 + 56);
  *(v2 + 16) = v5;

  OUTLINED_FUNCTION_0_2();

  return v6();
}

uint64_t sub_2175CA668()
{
  v2 = v0[32];
  if (qword_280BE73E0 != -1)
  {
    OUTLINED_FUNCTION_4_1(&qword_280BE73E0);
  }

  v3 = v0[15];
  v4 = sub_217751AF8();
  OUTLINED_FUNCTION_25_46(v4, qword_280C023A8);

  v5 = v2;
  v6 = sub_217751AD8();
  v7 = sub_217752808();

  if (os_log_type_enabled(v6, v7))
  {
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_13_50();
    OUTLINED_FUNCTION_42_30();
    *v3 = 136446466;
    v8 = sub_2177228E8();
    OUTLINED_FUNCTION_32_35(v8, v9, v10, v11);
    OUTLINED_FUNCTION_164();
    OUTLINED_FUNCTION_6_71();
    v0[13] = v2;
    v12 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27640, &qword_21775A340);
    v13 = sub_217751FA8();
    OUTLINED_FUNCTION_32_35(v13, v14, v15, v16);
    OUTLINED_FUNCTION_164();
    *(v3 + 14) = v1;
    OUTLINED_FUNCTION_45_30(&dword_2171EE000, v17, v18, "Failed to perform %{public}s. Error = %{public}s");
    OUTLINED_FUNCTION_40_7();
    OUTLINED_FUNCTION_896();
    OUTLINED_FUNCTION_9_58();
  }

  v20 = v0[22];
  v19 = v0[23];
  v21 = v0[21];
  swift_willThrow();
  (*(v20 + 8))(v19, v21);

  OUTLINED_FUNCTION_20_0();

  return v22();
}

uint64_t sub_2175CA830()
{
  v1 = v0[33];
  sub_217275694(v0[29], v0[30]);

  v2 = OUTLINED_FUNCTION_56_0();
  v3(v2);

  OUTLINED_FUNCTION_20_0();

  return v4();
}

uint64_t sub_2175CA8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 464) = a3;
  *(v5 + 472) = v4;
  *(v5 + 456) = a1;
  sub_217751908();
  *(v5 + 480) = swift_task_alloc();
  v8 = sub_217751928();
  *(v5 + 488) = v8;
  *(v5 + 496) = *(v8 - 8);
  *(v5 + 504) = swift_task_alloc();
  *(v5 + 512) = *a2;
  *(v5 + 528) = *(a2 + 16);
  v9 = *(a4 + 16);
  *(v5 + 536) = *a4;
  *(v5 + 552) = v9;
  *(v5 + 592) = *(a4 + 32);

  return MEMORY[0x2822009F8](sub_2175CAA00, 0, 0);
}

uint64_t sub_2175CAA00()
{
  v106 = v0;
  v1 = v0[66];
  *v100 = *(v0 + 32);
  v3 = v0[62];
  v2 = v0[63];
  v4 = v0[61];
  sub_2177518F8();
  sub_2176D46F4(MEMORY[0x277D84F90]);
  sub_21725EDFC();
  OUTLINED_FUNCTION_56_0();
  sub_217751618();
  v5 = sub_217751918();
  v0[71] = v5;
  (*(v3 + 8))(v2, v4);
  *__dst = *v100;
  *&__dst[16] = v1;
  v6 = sub_2175CB2B0(__dst);
  v9 = &qword_280BE7000;
  if (v8)
  {
    v10 = v6;
    v11 = v8;
    v100[0] = v7;
    v12 = v5;
    v13 = *(v0 + 592);
    v14 = v0[70];
    v15 = v0[69];
    v16 = v0[68];
    v17 = v0[67];
    __dst[0] = v6;
    *&__dst[8] = v17;
    *&__dst[16] = v16;
    *&__dst[24] = v15;
    *&__dst[32] = v14;
    __dst[40] = v13;
    v18 = OUTLINED_FUNCTION_33_35();
    sub_21758E1D4(v18, v19, v20, v21, v22);
    v23 = sub_217722554(__dst);
    v24 = OUTLINED_FUNCTION_33_35();
    sub_21758A41C(v24, v25, v26, v27, v28);
    if (v23)
    {
      if (qword_280BE73E0 != -1)
      {
        OUTLINED_FUNCTION_4_1(&qword_280BE73E0);
      }

      v29 = sub_217751AF8();
      OUTLINED_FUNCTION_25_46(v29, qword_280C023A8);

      sub_217751DE8();
      v30 = sub_217751AD8();
      v31 = sub_217752828();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *__dst = swift_slowAlloc();
        *v32 = 136446722;
        v33 = sub_2177228E8();
        v35 = sub_21729C0E8(v33, v34, __dst);

        *(v32 + 4) = v35;
        *(v32 + 12) = 2082;
        v36 = sub_2175FA42C(v10);
        v38 = sub_21729C0E8(v36, v37, __dst);

        *(v32 + 14) = v38;
        *(v32 + 22) = 2082;
        v39 = sub_21729C0E8(v100[0], v11, __dst);

        *(v32 + 24) = v39;
        _os_log_impl(&dword_2171EE000, v30, v31, "Retrying %{public}s with reason %{public}s (%{public}s).", v32, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_28_4();
        OUTLINED_FUNCTION_29_2();
      }

      else
      {
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_36_1();
      v0[72] = v97;
      *v97 = v98;
      v97[1] = sub_2175CB0CC;
      v99 = v0[58];

      return sub_2175C8634((v0 + 54), v99);
    }

    v9 = &qword_280BE7000;
    if (qword_280BE73E0 != -1)
    {
      OUTLINED_FUNCTION_4_1(&qword_280BE73E0);
    }

    v40 = sub_217751AF8();
    OUTLINED_FUNCTION_25_46(v40, qword_280C023A8);

    v4 = sub_217751AD8();
    v41 = sub_217752828();

    v5 = v12;
    if (os_log_type_enabled(v4, v41))
    {
      OUTLINED_FUNCTION_55();
      *__dst = OUTLINED_FUNCTION_13_50();
      *v12 = 136446466;
      v42 = sub_2175FA42C(v10);
      v44 = sub_21729C0E8(v42, v43, __dst);

      *(v12 + 1) = v44;
      *(v12 + 6) = 2080;
      v45 = sub_2177228E8();
      v47 = sub_21729C0E8(v45, v46, __dst);

      *(v12 + 14) = v47;
      _os_log_impl(&dword_2171EE000, v4, v41, "Did exhaust all retry attempts with reason %{public}s for %s.", v12, 0x16u);
      swift_arrayDestroy();
      v9 = &qword_280BE7000;
      OUTLINED_FUNCTION_28_4();
      OUTLINED_FUNCTION_9_58();
    }
  }

  v48 = v0[66];
  v49 = v0[65];
  v105[0] = v0[64];
  v105[1] = v49;
  v105[2] = v48;
  sub_21727591C(v105[0], v49);
  v50 = v48;
  sub_217738170(v105, (v0 + 2));
  v101 = *(v0 + 1);
  v51 = v0[5];
  v102 = v0[4];
  memcpy(__dst, v0 + 6, sizeof(__dst));
  if (v51)
  {
    if (v9[124] != -1)
    {
      OUTLINED_FUNCTION_4_1(&qword_280BE73E0);
    }

    v52 = sub_217751AF8();
    OUTLINED_FUNCTION_25_46(v52, qword_280C023A8);

    sub_2175CB5FC((v0 + 2), (v0 + 15));
    v53 = sub_217751AD8();
    sub_217752808();

    sub_2171F06D8((v0 + 2), &qword_27CB2A7B0, &qword_217782C80);
    if (OUTLINED_FUNCTION_1234())
    {
      OUTLINED_FUNCTION_55();
      v54 = OUTLINED_FUNCTION_26_35();
      v55 = swift_slowAlloc();
      v105[0] = v55;
      *v4 = 136446466;
      v56 = sub_2177228E8();
      v58 = sub_21729C0E8(v56, v57, v105);

      *(v4 + 4) = v58;
      *(v4 + 12) = 2114;
      v62 = sub_2175CB66C(v59, v60, v61);
      v63 = OUTLINED_FUNCTION_15_4(&type metadata for MusicDataRequest.Error, v62);
      OUTLINED_FUNCTION_19_32(v63, v64, v65, v66, v67, v68, v69, v70, v100[0], v100[1], v101, v102, v103);
      memcpy(v0 + 28, v0 + 2, 0x68uLL);
      sub_2175CB6C0((v0 + 28), (v0 + 41));
      v71 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 14) = v71;
      *v54 = v71;
      OUTLINED_FUNCTION_10_51();
      _os_log_impl(v72, v73, v74, v75, v76, 0x16u);
      sub_2171F06D8(v54, &qword_27CB29E08, &qword_21777BFF8);
      OUTLINED_FUNCTION_29_2();
      __swift_destroy_boxed_opaque_existential_1(v55);
      OUTLINED_FUNCTION_896();
      OUTLINED_FUNCTION_23_10();
    }

    v80 = sub_2175CB66C(v77, v78, v79);
    v81 = OUTLINED_FUNCTION_15_4(&type metadata for MusicDataRequest.Error, v80);
    OUTLINED_FUNCTION_19_32(v81, v82, v83, v84, v85, v86, v87, v88, v100[0], v100[1], v101, v102, v103);

    swift_willThrow();

    OUTLINED_FUNCTION_20_0();
  }

  else
  {
    v90 = v0[66];
    v91 = v0[65];
    v92 = v0[64];

    sub_21727591C(v92, v91);
    v93 = v90;
    v94 = v0[66];
    v95 = v0[57];
    *v95 = *(v0 + 32);
    *(v95 + 16) = v94;

    OUTLINED_FUNCTION_0_2();
  }

  return v89();
}

uint64_t sub_2175CB0CC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 584) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2175CB1C4()
{
  OUTLINED_FUNCTION_10();

  v1 = *(v0 + 448);
  v2 = *(v0 + 456);
  *v2 = *(v0 + 432);
  *(v2 + 16) = v1;

  OUTLINED_FUNCTION_0_2();

  return v3();
}

uint64_t sub_2175CB240()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_2175CB2B0(uint64_t *a1)
{
  v1 = [a1[2] statusCode];
  if (v1 >= 400)
  {
    v5 = v1;
    if (v1 == 403)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    v7 = ICURLResponseStatusCodeGetExtendedDescription();
    v8 = sub_217751F48();
    v10 = v9;

    MEMORY[0x21CEA23B0](v8, v10);

    if (v5 == 401)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    sub_217751348();
    swift_allocObject();
    v2 = sub_217751338();
    sub_2175CB71C(v2, v3, v4);
    sub_217751308();
    if (v23 == 1 || v23 == 2)
    {
LABEL_11:

      return 0;
    }

    if (v21 == 2 || (v21 & 1) == 0)
    {

      sub_2175CB770(v21, v22, v23);
      return 0;
    }

    if (v23 && (v12 = sub_2174F1B4C(v22), v12 != 5))
    {
      v13 = v12;
      if (sub_2174F1B98(v12) == 0x73736563637573 && v18 == 0xE700000000000000)
      {

        return 0;
      }

      v20 = sub_217753058();

      if (v20)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v13 = 5;
    }

    sub_217752AA8();

    if (v13 == 5)
    {
      v15 = 0xE300000000000000;
      v16 = 7104878;
    }

    else
    {
      v17 = sub_2174F1B98(v13);
      MEMORY[0x21CEA23B0](v17);

      v16 = 46;
      v15 = 0xE100000000000000;
    }

    MEMORY[0x21CEA23B0](v16, v15, v14);

    return 1;
  }
}

uint64_t MusicDataRequest.Runner.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_2175CB5FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A7B0, &qword_217782C80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2175CB66C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A7B8;
  if (!qword_27CB2A7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A7B8);
  }

  return result;
}

unint64_t sub_2175CB71C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A7C0;
  if (!qword_27CB2A7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A7C0);
  }

  return result;
}

double sub_2175CB770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 2)
  {
    return sub_21733B290(a1, a2, a3);
  }

  return result;
}

uint64_t sub_2175CB780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    return sub_21758E1D4(a2, a3, a4, a5, a6 & 1);
  }

  return result;
}

double sub_2175CB7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    return sub_21758A41C(a2, a3, a4, a5, a6 & 1);
  }

  return result;
}

double OUTLINED_FUNCTION_20_39()
{
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  v4 = *(v0 + 120);
  v5 = *(v0 + 128);
  v6 = *(v0 + 112);
  v7 = *(v0 + 50);

  return sub_2175CB7AC(v6, v4, v5, v2, v3, v7);
}

uint64_t OUTLINED_FUNCTION_21_41(void x0_0, void x1_0, void a3, void a4, void a5, void a6, void a7, void a8, uint64_t a2)
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_22_47(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_26_35()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_40_28(uint64_t a1, _BYTE *a2)
{
  *a2 = v2;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_45_30(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t PlayabilityInformationProviding<>.hasOnlyExplicitDownloadedContent.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2175CC910(a1, a3, v9);
  v3 = v10;
  if (v10)
  {
    OUTLINED_FUNCTION_5_52(v9);
    v4 = OUTLINED_FUNCTION_16_1();
    v6 = v5(v4);
    OUTLINED_FUNCTION_13_35(v6, v7);
  }

  else
  {
    sub_2175CC998(v9);
  }

  return v3 & 1;
}

uint64_t PlayabilityInformationProviding<>.catalogAssetRequiresSubscription.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2175CC910(a1, a3, v9);
  v3 = v10;
  if (v10)
  {
    OUTLINED_FUNCTION_5_52(v9);
    v4 = OUTLINED_FUNCTION_16_1();
    v6 = v5(v4);
    OUTLINED_FUNCTION_13_35(v6, v7);
  }

  else
  {
    sub_2175CC998(v9);
  }

  return v3 & 1;
}

uint64_t PlayabilityInformationProviding<>.catalogAssetRequiresUserUpload.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2175CC910(a1, a3, v9);
  v3 = v10;
  if (v10)
  {
    OUTLINED_FUNCTION_5_52(v9);
    v4 = OUTLINED_FUNCTION_16_1();
    v6 = v5(v4);
    OUTLINED_FUNCTION_13_35(v6, v7);
  }

  else
  {
    sub_2175CC998(v9);
  }

  return v3 & 1;
}

uint64_t PlayabilityInformationProviding<>.containsDownloadedOrPurchasedContent.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2175CC910(a1, a3, v9);
  v3 = v10;
  if (v10)
  {
    OUTLINED_FUNCTION_5_52(v9);
    v4 = OUTLINED_FUNCTION_16_1();
    v6 = v5(v4);
    OUTLINED_FUNCTION_13_35(v6, v7);
  }

  else
  {
    sub_2175CC998(v9);
  }

  return v3 & 1;
}

uint64_t PlayabilityInformationProviding<>.hasExplicitContent.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2175CC910(a1, a3, v9);
  v3 = v10;
  if (v10)
  {
    OUTLINED_FUNCTION_5_52(v9);
    v4 = OUTLINED_FUNCTION_16_1();
    v6 = v5(v4);
    OUTLINED_FUNCTION_13_35(v6, v7);
  }

  else
  {
    sub_2175CC998(v9);
  }

  return v3 & 1;
}

uint64_t sub_2175CBB1C(void (*a1)(void *__return_ptr))
{
  a1(v7);
  v1 = v8;
  if (v8)
  {
    OUTLINED_FUNCTION_5_52(v7);
    v2 = OUTLINED_FUNCTION_16_1();
    v4 = v3(v2);
    OUTLINED_FUNCTION_13_35(v4, v5);
  }

  else
  {
    sub_2175CC998(v7);
  }

  return v1 & 1;
}

uint64_t sub_2175CBB90(void (*a1)(void *__return_ptr))
{
  a1(v7);
  v1 = v8;
  if (v8)
  {
    OUTLINED_FUNCTION_5_52(v7);
    v2 = OUTLINED_FUNCTION_16_1();
    v4 = v3(v2);
    OUTLINED_FUNCTION_13_35(v4, v5);
  }

  else
  {
    sub_2175CC998(v7);
  }

  return v1 & 1;
}

uint64_t PlayabilityInformationProviding<>.hasOnlyExplicitContent.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2175CC910(a1, a3, v9);
  v3 = v10;
  if (v10)
  {
    OUTLINED_FUNCTION_5_52(v9);
    v4 = OUTLINED_FUNCTION_16_1();
    v6 = v5(v4);
    OUTLINED_FUNCTION_13_35(v6, v7);
  }

  else
  {
    sub_2175CC998(v9);
  }

  return v3 & 1;
}

uint64_t PlayabilityInformationProviding<>.hasNonPurgeableLocalAsset.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2175CC910(a1, a3, v9);
  v3 = v10;
  if (v10)
  {
    OUTLINED_FUNCTION_5_52(v9);
    v4 = OUTLINED_FUNCTION_16_1();
    v6 = v5(v4);
    OUTLINED_FUNCTION_13_35(v6, v7);
  }

  else
  {
    sub_2175CC998(v9);
  }

  return v3 & 1;
}

uint64_t PlayabilityInformationProviding<>.hasNonPurgeableSubscriptionProtectedLocalAsset.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2175CC910(a1, a3, v9);
  v3 = v10;
  if (v10)
  {
    OUTLINED_FUNCTION_5_52(v9);
    v4 = OUTLINED_FUNCTION_16_1();
    v6 = v5(v4);
    OUTLINED_FUNCTION_13_35(v6, v7);
  }

  else
  {
    sub_2175CC998(v9);
  }

  return v3 & 1;
}

uint64_t PlayabilityInformationProviding<>.hasRedownloadableCatalogAsset.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2175CC910(a1, a3, v9);
  v3 = v10;
  if (v10)
  {
    OUTLINED_FUNCTION_5_52(v9);
    v4 = OUTLINED_FUNCTION_16_1();
    v6 = v5(v4);
    OUTLINED_FUNCTION_13_35(v6, v7);
  }

  else
  {
    sub_2175CC998(v9);
  }

  return v3 & 1;
}

uint64_t PlayabilityInformationProviding<>.isHomeSharingAssetAvailable.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2175CC910(a1, a3, v9);
  v3 = v10;
  if (v10)
  {
    OUTLINED_FUNCTION_5_52(v9);
    v4 = OUTLINED_FUNCTION_16_1();
    v6 = v5(v4);
    OUTLINED_FUNCTION_13_35(v6, v7);
  }

  else
  {
    sub_2175CC998(v9);
  }

  return v3 & 1;
}

uint64_t sub_2175CBE64(void (*a1)(void *__return_ptr))
{
  a1(v7);
  v1 = v8;
  if (v8)
  {
    OUTLINED_FUNCTION_5_52(v7);
    v2 = OUTLINED_FUNCTION_16_1();
    v4 = v3(v2);
    OUTLINED_FUNCTION_13_35(v4, v5);
  }

  else
  {
    sub_2175CC998(v7);
  }

  return v1 & 1;
}

uint64_t sub_2175CBED8(void (*a1)(void *__return_ptr))
{
  a1(v7);
  v1 = v8;
  if (v8)
  {
    OUTLINED_FUNCTION_5_52(v7);
    v2 = OUTLINED_FUNCTION_16_1();
    v4 = v3(v2);
    OUTLINED_FUNCTION_13_35(v4, v5);
  }

  else
  {
    sub_2175CC998(v7);
  }

  return v1 & 1;
}

uint64_t PlayabilityInformationProviding<>.isLibraryAddedContainer.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2175CC910(a1, a3, v9);
  v3 = v10;
  if (v10)
  {
    OUTLINED_FUNCTION_5_52(v9);
    v4 = OUTLINED_FUNCTION_16_1();
    v6 = v5(v4);
    OUTLINED_FUNCTION_13_35(v6, v7);
  }

  else
  {
    sub_2175CC998(v9);
  }

  return v3 & 1;
}

uint64_t sub_2175CBFD8()
{
  OUTLINED_FUNCTION_17_45();
  v2();
  if (v8[3])
  {
    OUTLINED_FUNCTION_16_55(v8);
    v3 = OUTLINED_FUNCTION_11_61();
    v5 = v4(v3);
    result = OUTLINED_FUNCTION_18_46(v5, v6);
  }

  else
  {
    result = sub_2175CC998(v8);
    v1 = 0;
  }

  *v0 = v1;
  return result;
}

uint64_t sub_2175CC050()
{
  OUTLINED_FUNCTION_17_45();
  v2();
  if (v8[3])
  {
    OUTLINED_FUNCTION_16_55(v8);
    v3 = OUTLINED_FUNCTION_11_61();
    v5 = v4(v3);
    result = OUTLINED_FUNCTION_18_46(v5, v6);
  }

  else
  {
    result = sub_2175CC998(v8);
    v1 = 0;
  }

  *v0 = v1;
  return result;
}

uint64_t PlayabilityInformationProviding<>.playableCategory.getter()
{
  OUTLINED_FUNCTION_17_45();
  sub_2175CC910(v2, v3, v4);
  if (v10[3])
  {
    OUTLINED_FUNCTION_16_55(v10);
    v5 = OUTLINED_FUNCTION_11_61();
    v7 = v6(v5);
    result = OUTLINED_FUNCTION_18_46(v7, v8);
  }

  else
  {
    result = sub_2175CC998(v10);
    v1 = 0;
  }

  *v0 = v1;
  return result;
}

uint64_t sub_2175CC158()
{
  OUTLINED_FUNCTION_17_45();
  v2();
  if (v8[3])
  {
    OUTLINED_FUNCTION_16_55(v8);
    v3 = OUTLINED_FUNCTION_11_61();
    v5 = v4(v3);
    result = OUTLINED_FUNCTION_18_46(v5, v6);
  }

  else
  {
    result = sub_2175CC998(v8);
    v1 = 0;
  }

  *v0 = v1;
  return result;
}

uint64_t sub_2175CC1D0()
{
  OUTLINED_FUNCTION_17_45();
  v2();
  if (v8[3])
  {
    OUTLINED_FUNCTION_16_55(v8);
    v3 = OUTLINED_FUNCTION_11_61();
    v5 = v4(v3);
    result = OUTLINED_FUNCTION_18_46(v5, v6);
  }

  else
  {
    result = sub_2175CC998(v8);
    v1 = 0;
  }

  *v0 = v1;
  return result;
}

uint64_t PlayabilityInformationProviding<>.playableItemKind.getter()
{
  OUTLINED_FUNCTION_17_45();
  sub_2175CC910(v2, v3, v4);
  if (v10[3])
  {
    OUTLINED_FUNCTION_16_55(v10);
    v5 = OUTLINED_FUNCTION_11_61();
    v7 = v6(v5);
    result = OUTLINED_FUNCTION_18_46(v7, v8);
  }

  else
  {
    result = sub_2175CC998(v10);
    v1 = 0;
  }

  *v0 = v1;
  return result;
}

uint64_t sub_2175CC2E0(void (*a1)(void *__return_ptr))
{
  a1(v7);
  v1 = v8;
  if (v8)
  {
    OUTLINED_FUNCTION_5_52(v7);
    v2 = OUTLINED_FUNCTION_16_1();
    v4 = v3(v2);
    OUTLINED_FUNCTION_13_35(v4, v5);
  }

  else
  {
    sub_2175CC998(v7);
  }

  return v1 & 1;
}

uint64_t sub_2175CC354(void (*a1)(void *__return_ptr))
{
  a1(v7);
  v1 = v8;
  if (v8)
  {
    OUTLINED_FUNCTION_5_52(v7);
    v2 = OUTLINED_FUNCTION_16_1();
    v4 = v3(v2);
    OUTLINED_FUNCTION_13_35(v4, v5);
  }

  else
  {
    sub_2175CC998(v7);
  }

  return v1 & 1;
}

uint64_t PlayabilityInformationProviding<>.isSupportedType.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2175CC910(a1, a3, v9);
  v3 = v10;
  if (v10)
  {
    OUTLINED_FUNCTION_5_52(v9);
    v4 = OUTLINED_FUNCTION_16_1();
    v6 = v5(v4);
    OUTLINED_FUNCTION_13_35(v6, v7);
  }

  else
  {
    sub_2175CC998(v9);
  }

  return v3 & 1;
}

uint64_t sub_2175CC4C4()
{
  v1 = type metadata accessor for MusicVideoPropertyProvider(0);
  v2 = *(v0 + *(v1 + 44));
  if (v2 != 2 && (v2 & 1) != 0 && (v3 = (v0 + *(v1 + 92)), *(v3 + 1)))
  {
    v4 = *v3;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

uint64_t sub_2175CC514()
{
  v1 = type metadata accessor for SongPropertyProvider(0);
  v2 = *(v0 + *(v1 + 56));
  if (v2 != 2 && (v2 & 1) != 0 && (v3 = (v0 + *(v1 + 100)), *(v3 + 1)))
  {
    v4 = *v3;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

uint64_t sub_2175CC564()
{
  if ((PlaylistEntryPropertyProvider.hasExplicitContent.getter() & 1) == 0)
  {
    return 0;
  }

  return PlaylistEntryPropertyProvider.hasNonPurgeableLocalAsset.getter();
}

uint64_t PlayabilityInformationProviding.hasOnlyExplicitDownloadedContent.getter(uint64_t a1, uint64_t a2)
{
  if (((*(a2 + 32))() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a2 + 48);

  return v4(a1, a2);
}

uint64_t PlayableMusicItemCategory.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

uint64_t PlayableMusicItemKind.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

double sub_2175CC910@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  PropertyProviderBackedItem.staticPropertyProvider.getter(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B38, &unk_21776C4E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B40, &qword_217759400);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2175CC998(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B48, &qword_21777F0F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2175CCA34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A7D8;
  if (!qword_27CB2A7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A7D8);
  }

  return result;
}

unint64_t sub_2175CCABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A7F0;
  if (!qword_27CB2A7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A7F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PlayableMusicItemCategory(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PlayableMusicItemKind(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_18_46(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return __swift_destroy_boxed_opaque_existential_1(va);
}

int *CloudVideoArtwork.FileAsset.init(assetUrl:height:width:durationMillis:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  sub_21751AF10(a1, a8);
  result = type metadata accessor for CloudVideoArtwork.FileAsset(0);
  v16 = a8 + result[5];
  *v16 = a2;
  *(v16 + 8) = a3 & 1;
  v17 = a8 + result[6];
  *v17 = a4;
  *(v17 + 8) = a5 & 1;
  v18 = a8 + result[7];
  *v18 = a6;
  *(v18 + 8) = a7 & 1;
  return result;
}

uint64_t type metadata accessor for CloudVideoArtwork.FileAsset(uint64_t a1)
{
  result = qword_280BE7CA0;
  if (!qword_280BE7CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2175CD0A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static CloudVideoArtwork.FileAsset.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v11);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24840, &unk_217758DD0);
  OUTLINED_FUNCTION_45_0(v15);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  v20 = *(v19 + 56);
  sub_2175CD0A0(a1, &v36 - v17);
  sub_2175CD0A0(a2, &v18[v20]);
  OUTLINED_FUNCTION_73(v18);
  if (!v21)
  {
    sub_2175CD0A0(v18, v14);
    OUTLINED_FUNCTION_73(&v18[v20]);
    if (!v21)
    {
      (*(v6 + 32))(v10, &v18[v20], v4);
      OUTLINED_FUNCTION_0_112();
      sub_2175CDFCC(v23, v24, MEMORY[0x277CC9278]);
      v25 = sub_217751F08();
      v26 = *(v6 + 8);
      v26(v10, v4);
      v26(v14, v4);
      sub_2171F06D8(v18, &unk_27CB277C0, &qword_217758DC0);
      if ((v25 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_13;
    }

    (*(v6 + 8))(v14, v4);
LABEL_9:
    sub_2171F06D8(v18, &qword_27CB24840, &unk_217758DD0);
    return 0;
  }

  OUTLINED_FUNCTION_73(&v18[v20]);
  if (!v21)
  {
    goto LABEL_9;
  }

  sub_2171F06D8(v18, &unk_27CB277C0, &qword_217758DC0);
LABEL_13:
  type metadata accessor for CloudVideoArtwork.FileAsset(0);
  OUTLINED_FUNCTION_3_92();
  if (v28)
  {
    if (!v27)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_112();
    if (v29)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_3_92();
  if (v31)
  {
    if (!v30)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_112();
    if (v32)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_3_92();
  if (v34)
  {
    if (v33)
    {
      return 1;
    }
  }

  else
  {
    OUTLINED_FUNCTION_112();
    if ((v35 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_2175CD460(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C72557465737361 && a2 == 0xE800000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746867696568 && a2 == 0xE600000000000000;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6E6F697461727564 && a2 == 0xEE0073696C6C694DLL)
      {

        return 3;
      }

      else
      {
        v9 = sub_217753058();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_2175CD5B8(char a1)
{
  result = 0x6C72557465737361;
  switch(a1)
  {
    case 1:
      result = 0x746867696568;
      break;
    case 2:
      result = 0x6874646977;
      break;
    case 3:
      result = 0x6E6F697461727564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2175CD648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2175CD460(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2175CD670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175CD8C4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2175CD6AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175CD8C4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t CloudVideoArtwork.FileAsset.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A7F8, &qword_217782E90);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2175CD8C4(v11, v12, v13);
  sub_2177532F8();
  v27[1] = 0;
  sub_2177516D8();
  OUTLINED_FUNCTION_0_112();
  sub_2175CDFCC(v14, v15, MEMORY[0x277CC9268]);
  sub_217752F38();
  if (!v2)
  {
    v16 = type metadata accessor for CloudVideoArtwork.FileAsset(0);
    v17 = OUTLINED_FUNCTION_4_90(v3 + v16[5]);
    v27[0] = 1;
    OUTLINED_FUNCTION_10_52(v17, v18, v27);
    v19 = OUTLINED_FUNCTION_4_90(v3 + v16[6]);
    v26 = 2;
    OUTLINED_FUNCTION_10_52(v19, v20, &v26);
    v21 = OUTLINED_FUNCTION_4_90(v3 + v16[7]);
    v25 = 3;
    OUTLINED_FUNCTION_10_52(v21, v22, &v25);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_2175CD8C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A800;
  if (!qword_27CB2A800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A800);
  }

  return result;
}

uint64_t CloudVideoArtwork.FileAsset.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v10);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  sub_2175CD0A0(v2, &v24 - v12);
  if (__swift_getEnumTagSinglePayload(v13, 1, v3) == 1)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    (*(v5 + 32))(v9, v13, v3);
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_0_112();
    sub_2175CDFCC(v14, v15, MEMORY[0x277CC9270]);
    sub_217751EB8();
    (*(v5 + 8))(v9, v3);
  }

  type metadata accessor for CloudVideoArtwork.FileAsset(0);
  OUTLINED_FUNCTION_8_62();
  if (v17)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    v18 = *v16;
    OUTLINED_FUNCTION_24();
    MEMORY[0x21CEA3550](v18);
  }

  OUTLINED_FUNCTION_8_62();
  if (v17)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    v20 = *v19;
    OUTLINED_FUNCTION_24();
    MEMORY[0x21CEA3550](v20);
  }

  OUTLINED_FUNCTION_8_62();
  if (v17)
  {
    return OUTLINED_FUNCTION_25();
  }

  v22 = *v21;
  OUTLINED_FUNCTION_24();
  return MEMORY[0x21CEA3550](v22);
}

uint64_t CloudVideoArtwork.FileAsset.hashValue.getter()
{
  sub_2177531E8();
  CloudVideoArtwork.FileAsset.hash(into:)(v1);
  return sub_217753238();
}

uint64_t CloudVideoArtwork.FileAsset.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v4);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A808, &qword_217782E98);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for CloudVideoArtwork.FileAsset(0);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v13 = a1[3];
  v33 = a1;
  v14 = __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_2175CD8C4(v14, v15, v16);
  sub_2177532C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v33);
  }

  sub_2177516D8();
  v36[1] = 0;
  OUTLINED_FUNCTION_0_112();
  sub_2175CDFCC(v17, v18, MEMORY[0x277CC9280]);
  sub_217752E58();
  sub_21751AF10(v7, v12);
  v36[0] = 1;
  v19 = OUTLINED_FUNCTION_9_60(v36);
  OUTLINED_FUNCTION_12_44(v19, v20, v9[5]);
  v35 = 2;
  v21 = OUTLINED_FUNCTION_9_60(&v35);
  OUTLINED_FUNCTION_12_44(v21, v22, v9[6]);
  v34 = 3;
  v23 = OUTLINED_FUNCTION_9_60(&v34);
  v25 = v24;
  v26 = OUTLINED_FUNCTION_6_72();
  v27(v26);
  v28 = v12 + v9[7];
  *v28 = v23;
  *(v28 + 8) = v25 & 1;
  sub_2175CDEC4(v12, v31);
  __swift_destroy_boxed_opaque_existential_1(v33);
  return sub_2175CDF28(v12);
}

uint64_t sub_2175CDE88(uint64_t a1)
{
  sub_2177531E8();
  CloudVideoArtwork.FileAsset.hash(into:)(v2);
  return sub_217753238();
}

uint64_t sub_2175CDEC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudVideoArtwork.FileAsset(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2175CDF28(uint64_t a1)
{
  v2 = type metadata accessor for CloudVideoArtwork.FileAsset(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2175CDFCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2175CE03C(uint64_t a1)
{
  sub_2172E2DB0(319);
  if (v1 <= 0x3F)
  {
    sub_2175CE0C8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2175CE0C8()
{
  if (!qword_280BE7528)
  {
    v0 = sub_2177528F8();
    if (!v1)
    {
      atomic_store(v0, &qword_280BE7528);
    }
  }
}

_BYTE *_s9FileAssetV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2175CE1F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A818;
  if (!qword_27CB2A818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A818);
  }

  return result;
}

unint64_t sub_2175CE250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A820;
  if (!qword_27CB2A820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A820);
  }

  return result;
}

unint64_t sub_2175CE2A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A828;
  if (!qword_27CB2A828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A828);
  }

  return result;
}

uint64_t _MusicCatalogInternalSearchSnippetVending<>._searchContextSnippets.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PartialMusicProperty(0, a1, a3, a4);
  v7 = static PartialMusicProperty<A>._searchContextSnippet.getter(a4);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BD8, &unk_2177595E0);
  MusicItem<>.subscript.getter(v7, v8, a2, a3);

  return v10;
}

uint64_t static PartialMusicProperty<A>._searchContextSnippet.getter(uint64_t a1)
{
  v4[0] = *(v1 + 208);
  v4[1] = a1;
  swift_getKeyPath(byte_2177830A8, v4);
  sub_2172E1928();
  v2 = static PartialMusicProperty.metadata<A>(_:for:)();

  return v2;
}

void Array<A>.appendQueryItems<A>(for:cloudResourceRequestKind:baseResourceType:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v26 = a1;
  v27 = a4;
  v9 = sub_217751428();
  OUTLINED_FUNCTION_0_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 16);
  v17 = *a3;
  v16 = a3[1];
  v18 = *(a3 + 16);
  if (!v15)
  {
LABEL_6:
    v31 = v17;
    v32 = v16;
    v33 = v18;
    goto LABEL_7;
  }

  if (v15 != 1)
  {
    if (*a2 == 1)
    {
      v25 = *(a2 + 8);
      v24 = *(a2 + 24);
      sub_217751DE8();
      OUTLINED_FUNCTION_1436();
      sub_2177513F8();
      sub_21770B7A4();
      v19 = *(*v5 + 16);
      sub_21770BAD4(v19);
      v23 = a5;
      v20 = *v5;
      *(v20 + 16) = v19 + 1;
      (*(v11 + 16))(v20 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v19, v14, v9);
      *v5 = v20;
      v31 = v17;
      v32 = v16;
      v33 = v18;
      v28 = v25;
      v29 = v15;
      v30 = v24 & 1;
      sub_2175CE654(v26, &v31, &v28, v27, v23);

      (*(v11 + 8))(v14, v9, v21);
      return;
    }

    goto LABEL_6;
  }

  v31 = 0;
  v32 = 0;
  v33 = 0;
LABEL_7:
  v28 = 0;
  v29 = 0;
  v30 = 0;
  sub_2175CE654(v26, &v31, &v28, v27, a5);
}

void sub_2175CE654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v106 = a5;
  v11 = sub_217751428();
  OUTLINED_FUNCTION_0_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v94 - v18;
  v20 = *(a2 + 8);
  v102 = *a2;
  v105 = v20;
  HIDWORD(v103) = *(a2 + 16);
  v21 = a4;
  v22 = *a3;
  v108 = *(a3 + 8);
  v109 = v22;
  v107 = *(a3 + 16);
  v117 = a1;
  v25 = type metadata accessor for PartialMusicAsyncProperty(255, a4, v23, v24);
  v26 = sub_217752418();
  WitnessTable = swift_getWitnessTable();
  if ((sub_217752738() & 1) == 0)
  {
    v98 = v19;
    v99 = v16;
    v100 = v13;
    v97 = v11;
    v101 = v6;
    v27 = MEMORY[0x277D84F90];
    v124 = MEMORY[0x277D84F90];
    v125 = MEMORY[0x277D84F90];
    v122 = MEMORY[0x277D84F90];
    v123 = MEMORY[0x277D84F90];
    v114 = v25;
    v121 = sub_217752338();
    v117 = a1;
    MEMORY[0x28223BE20](v121);
    v96 = v21;
    v93 = v106;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24520, &unk_217758A10);
    v28 = MEMORY[0x277D83970];
    v29 = swift_getWitnessTable();
    sub_217283840(&qword_280BE2380, &qword_27CB24520, &unk_217758A10, v28);
    v95 = v29;
    v30 = sub_2177521B8();
    v31 = sub_217204DD0(v30);
    v32 = 0;
    v115 = v30 & 0xFFFFFFFFFFFFFF8;
    v116 = v30 & 0xC000000000000001;
    v110 = v27;
    v111 = v27;
    v112 = v27;
    v113 = v27;
    v33 = v27;
    v34 = v26;
    while (v31 != v32)
    {
      if (v116)
      {
        v26 = MEMORY[0x21CEA2E30](v32, v30);
      }

      else
      {
        if (v32 >= *(v115 + 16))
        {
          goto LABEL_64;
        }

        v26 = *(v30 + 8 * v32 + 32);
      }

      if (__OFADD__(v32, 1))
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        v117 = 0;
        v118 = 0xE000000000000000;
        sub_217752AA8();
        MEMORY[0x21CEA23B0](0xD000000000000023, 0x80000002177AE390);
        v120 = v26;
        type metadata accessor for AnyMusicProperty();
        sub_217752C78();
        MEMORY[0x21CEA23B0](0xD00000000000003ALL, 0x80000002177AE460);
        sub_217752D08();
        __break(1u);
        return;
      }

      if (*(v26 + 64))
      {
        if (*(v26 + 64) == 1)
        {

          MEMORY[0x21CEA25D0](v35);
          v36 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v36 >> 1)
          {
            OUTLINED_FUNCTION_57(v36);
            sub_2177522F8();
          }

          sub_217752378();
          v113 = v124;
        }

        else
        {
          v39 = *(v26 + 48);
          v40 = *(v26 + 56);
          if (v39 ^ 1 | v40)
          {
            if (v39 ^ 2 | v40)
            {
              goto LABEL_69;
            }

            MEMORY[0x21CEA25D0](v43);
            v44 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x18);
            if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v44 >> 1)
            {
              OUTLINED_FUNCTION_57(v44);
              sub_2177522F8();
            }

            sub_217752378();
            v111 = v122;
          }

          else
          {

            MEMORY[0x21CEA25D0](v41);
            v42 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18);
            if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v42 >> 1)
            {
              OUTLINED_FUNCTION_57(v42);
              sub_2177522F8();
            }

            sub_217752378();
            v110 = v123;
          }
        }
      }

      else
      {

        MEMORY[0x21CEA25D0](v37);
        v38 = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v38 >> 1)
        {
          OUTLINED_FUNCTION_57(v38);
          sub_2177522F8();
        }

        sub_217752378();
        v112 = v125;
      }

      v45 = *(v26 + 88);
      v46 = *(v45 + 16);
      v47 = *(v33 + 16);
      v48 = v47 + v46;
      if (__OFADD__(v47, v46))
      {
        goto LABEL_65;
      }

      sub_217751DE8();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v48 > *(v33 + 24) >> 1)
      {
        if (v47 <= v48)
        {
          v50 = v47 + v46;
        }

        else
        {
          v50 = v47;
        }

        sub_2172AFF2C(isUniquelyReferenced_nonNull_native, v50, 1, v33);
        v33 = v51;
      }

      if (*(v45 + 16))
      {
        if ((*(v33 + 24) >> 1) - *(v33 + 16) < v46)
        {
          goto LABEL_67;
        }

        swift_arrayInitWithCopy();

        if (v46)
        {
          v52 = *(v33 + 16);
          v53 = __OFADD__(v52, v46);
          v54 = v52 + v46;
          if (v53)
          {
            goto LABEL_68;
          }

          *(v33 + 16) = v54;
        }
      }

      else
      {

        if (v46)
        {
          goto LABEL_66;
        }
      }

      v55 = swift_dynamicCastClass();
      if (v55 && (v56 = v55, sub_2173C47B8(), (v57 & 1) == 0))
      {
        v117 = v56;
        v26 = v34;
        sub_2177523C8();
      }

      else
      {

        v26 = v34;
      }

      ++v32;
    }

    v58 = v112;
    v59 = sub_217204DD0(v112);
    v60 = v101;
    v61 = v100;
    if (v59)
    {
      v62 = v105;
      sub_217486228(0x646E65747865, 0xE600000000000000, v102, v105, HIDWORD(v103), v109, v108, v107, v58, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, WitnessTable);

      OUTLINED_FUNCTION_1526();
      OUTLINED_FUNCTION_5_74();
    }

    else
    {

      OUTLINED_FUNCTION_5_74();
      v62 = v105;
    }

    v63 = v113;
    if (sub_217204DD0(v113))
    {
      v64 = OUTLINED_FUNCTION_1436();
      OUTLINED_FUNCTION_1_103(v64, 0xE700000000000000, v65, v66, v67, v68, v69, v70, v63, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, WitnessTable);
      OUTLINED_FUNCTION_2_97();
      OUTLINED_FUNCTION_1526();
    }

    else
    {
    }

    v71 = v110;
    if (sub_217204DD0(v110))
    {
      OUTLINED_FUNCTION_1_103(0x7377656976, 0xE500000000000000, v72, v73, v74, v75, v76, v77, v71, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, WitnessTable);
      OUTLINED_FUNCTION_2_97();
      OUTLINED_FUNCTION_1526();
    }

    else
    {
    }

    v78 = v111;
    if (sub_217204DD0(v111))
    {
      OUTLINED_FUNCTION_1_103(1635018093, 0xE400000000000000, v79, v80, v81, v82, v83, v84, v78, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, WitnessTable);
      OUTLINED_FUNCTION_2_97();
      OUTLINED_FUNCTION_1526();
    }

    else
    {
    }

    v85 = v121;
    v117 = v121;
    if ((sub_217752738() & 1) != 0 || !v62)
    {
    }

    else
    {
      v120 = v85;
      v117 = v102;
      v118 = v62;
      v119 = BYTE4(v103) & 1;
      v86 = sub_2175CF070(&v117, v26, v96, v95);

      sub_21754383C(v86);
    }

    if (*(v33 + 16))
    {
      sub_2173DAF84(v33);
      v88 = v87;

      v117 = v88;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
      sub_217283840(&qword_280BE2320, &qword_27CB24C58, &unk_2177677B0, MEMORY[0x277D83958]);
      sub_217751ED8();

      sub_2177513F8();

      v90 = v97;
      (*(v61 + 16))(v31, v30, v97, v89);
      sub_21770B7A4();
      v91 = *(*v60 + 16);
      sub_21770BAD4(v91);
      (*(v61 + 8))(v30, v90);
      v92 = *v60;
      *(v92 + 16) = v91 + 1;
      (*(v61 + 32))(v92 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v91, v31, v90);
      *v60 = v92;
    }

    else
    {
    }
  }
}

uint64_t sub_2175CEFCC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (*(*a1 + 65) == 1)
  {
    result = sub_217751DE8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_217759C00;
    *(v5 + 32) = v3;
    v7 = v5;

    v6 = sub_217751DE8();
    sub_217543868(v6);
    result = v7;
  }

  *a2 = result;
  return result;
}

unint64_t sub_2175CF070(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v83 = a3;
  v7 = sub_217751428();
  OUTLINED_FUNCTION_0_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v86 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v85 = &v80 - v13;
  MEMORY[0x28223BE20](v14);
  v96 = &v80 - v15;
  MEMORY[0x28223BE20](v16);
  v95 = &v80 - v17;
  v18 = *(a2 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_0();
  v89 = v23;
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v80 - v26;
  v28 = *a1;
  v92 = a1[1];
  v93 = v28;
  v30 = *(v18 + 16);
  v29 = v18 + 16;
  v30(v21, v4, a2, v25);
  sub_217752128();
  swift_getAssociatedConformanceWitness();
  v90 = v9 + 32;
  v91 = (v9 + 16);
  v87 = (v9 + 8);
  v88 = v9;
  v97 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_4_91();
  *&v31 = 136446210;
  v82 = v31;
  v32 = v7;
  v94 = v7;
  while (1)
  {
    sub_217752968();
    v33 = v99[0];
    if (!v99[0])
    {
      break;
    }

    v34 = sub_2173C47B8();
    if (v35)
    {
    }

    else
    {
      v36 = v34;
      v99[0] = v29;
      v99[1] = 0xE600000000000000;
      MEMORY[0x21CEA23B0](v93, v92);
      MEMORY[0x21CEA23B0](58, 0xE100000000000000);
      v38 = *(v33 + 16);
      v37 = *(v33 + 24);

      sub_217751DE8();
      MEMORY[0x21CEA23B0](v38, v37);

      MEMORY[0x21CEA23B0](93, 0xE100000000000000, v39);
      v99[0] = v36;
      sub_217752FC8();
      v40 = v95;
      sub_2177513F8();

      v42 = *v91;
      (*v91)(v96, v40, v32, v41);
      v43 = v97;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84 = v42;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2172B1A50(0, *(v43 + 16) + 1, 1, v43);
        v43 = v73;
      }

      v46 = *(v43 + 16);
      v45 = *(v43 + 24);
      if (v46 >= v45 >> 1)
      {
        v74 = OUTLINED_FUNCTION_57(v45);
        sub_2172B1A50(v74, v46 + 1, 1, v43);
        v43 = v75;
      }

      *(v43 + 16) = v46 + 1;
      v47 = (*(v88 + 80) + 32) & ~*(v88 + 80);
      v48 = *(v88 + 72);
      v49 = v43 + v47 + v48 * v46;
      v29 = *(v88 + 32);
      v50 = v94;
      (v29)(v49, v96, v94);
      if (v36 < 301)
      {
        v97 = v43;

        (*v87)(v95, v50);
        v32 = v50;
      }

      else
      {
        v81 = v29;
        v51 = [objc_opt_self() mainBundle];
        v52 = NSBundle.isMusicApp.getter();

        if (v52)
        {
          v99[0] = 0;
          v99[1] = 0xE000000000000000;
          sub_217752AA8();

          strcpy(v99, "overrideLimit[");
          HIBYTE(v99[1]) = -18;
          MEMORY[0x21CEA23B0](v93, v92, v53);
          MEMORY[0x21CEA23B0](58, 0xE100000000000000);
          v54 = *(v33 + 16);
          v55 = *(v33 + 24);
          sub_217751DE8();

          MEMORY[0x21CEA23B0](v54, v55);

          MEMORY[0x21CEA23B0](93, 0xE100000000000000, v56);
          v57 = v85;
          sub_2177513F8();

          v84(v86, v57, v94, v58);
          v29 = *(v43 + 16);
          v59 = *(v43 + 24);
          v97 = v29 + 1;
          if (v29 >= v59 >> 1)
          {
            v76 = OUTLINED_FUNCTION_57(v59);
            sub_2172B1A50(v76, v77, 1, v43);
            v43 = v78;
          }

          v60 = *v87;
          v61 = v94;
          (*v87)(v85, v94);
          (v60)(v95, v61);
          *(v43 + 16) = v97;
          v97 = v43;
          v62 = v43 + v47 + v29 * v48;
          v32 = v61;
          v81(v62, v86, v61);
        }

        else
        {

          if (qword_280BE8358 != -1)
          {
            swift_once();
          }

          v97 = v43;
          v63 = sub_217751AF8();
          __swift_project_value_buffer(v63, qword_280C02570);

          v64 = sub_217751AD8();
          v65 = sub_217752808();

          v66 = os_log_type_enabled(v64, v65);
          v29 = v94;
          if (v66)
          {
            v67 = swift_slowAlloc();
            v84 = swift_slowAlloc();
            v98 = v33;
            v99[0] = v84;
            *v67 = v82;
            type metadata accessor for PartialMusicAsyncProperty(0, v83, v68, v69);

            v70 = sub_217751FA8();
            v72 = sub_21729C0E8(v70, v71, v99);

            *(v67 + 4) = v72;
            _os_log_impl(&dword_2171EE000, v64, v65, "Unable to override limit for property %{public}s because the requesting app is not the first-party music app.", v67, 0xCu);
            v29 = v84;
            __swift_destroy_boxed_opaque_existential_1(v84);
            MEMORY[0x21CEA4360](v29, -1, -1);
            MEMORY[0x21CEA4360](v67, -1, -1);

            v32 = v94;
          }

          else
          {

            v32 = v29;
          }

          (*v87)(v95);
        }
      }

      OUTLINED_FUNCTION_4_91();
    }
  }

  (*(v89 + 8))(v27, AssociatedTypeWitness);
  return v97;
}

uint64_t static CloudCurator.== infix(_:_:)(uint64_t a1, void *a2)
{
  v4 = OUTLINED_FUNCTION_186_0(a1) == *a2 && *(v2 + 8) == a2[1];
  if (!v4 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for CloudCurator(0);
  static CloudCurator.Attributes.== infix(_:_:)();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5[6];
  sub_21738C4B0(v2 + v7, v20, &qword_27CB24498, &unk_217758960);
  sub_21738C4B0(a2 + v7, v22, &qword_27CB24498, &unk_217758960);
  if (v21 == 1)
  {
    if (v22[2] == 1)
    {
      sub_2171F0738(v20, &qword_27CB24498, &unk_217758960);
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  sub_21738C4B0(v20, v19, &qword_27CB24498, &unk_217758960);
  if (v22[2] == 1)
  {
    sub_2172831A8(v19);
LABEL_12:
    sub_2171F0738(v20, &qword_27CB2A838, &qword_217783120);
    return 0;
  }

  memcpy(v18, v22, sizeof(v18));
  v8 = static CloudCurator.Relationships.== infix(_:_:)(v19, v18);
  sub_2172831A8(v18);
  sub_2172831A8(v19);
  sub_2171F0738(v20, &qword_27CB24498, &unk_217758960);
  if (!v8)
  {
    return 0;
  }

LABEL_14:
  if (*(v2 + v5[7]) != *(a2 + v5[7]))
  {
    return 0;
  }

  v9 = v5[8];
  v10 = *(v2 + v9);
  v11 = *(a2 + v9);
  if (v10 != 1)
  {
    if (v11 == 1)
    {
      sub_217221020(v10);
      sub_217221020(1);
      sub_217221020(v10);

LABEL_21:
      sub_21733CF74(v10);
      v13 = v11;
LABEL_32:
      sub_21733CF74(v13);
      return 0;
    }

    if (v10)
    {
      if (v11)
      {
        sub_217221020(v10);
        sub_217221020(v11);
        sub_217221020(v10);
        sub_217221020(v11);
        OUTLINED_FUNCTION_93();
        sub_21726F358();
        v15 = v14;
        sub_21733CF74(v11);
        sub_21733CF74(v11);
        if ((v15 & 1) == 0)
        {
          goto LABEL_31;
        }

LABEL_28:

        sub_21733CF74(v10);
        return 1;
      }

      sub_217221020(v10);
      v16 = v10;
    }

    else
    {
      sub_217221020(0);
      v16 = 0;
      if (!v11)
      {
        sub_217221020(0);
        sub_217221020(0);
        sub_21733CF74(0);
        goto LABEL_28;
      }
    }

    sub_217221020(v11);
    sub_217221020(v16);
    sub_21733CF74(v11);
LABEL_31:

    v13 = v10;
    goto LABEL_32;
  }

  sub_217221020(1);
  if (v11 != 1)
  {
    sub_217221020(v11);
    goto LABEL_21;
  }

  v12 = 1;
  sub_217221020(1);
  sub_21733CF74(1);
  return v12;
}

void CloudCurator.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v45 = v3;
  type metadata accessor for CloudCurator.Attributes(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A840, &qword_217783128);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_131_0();
  v9 = type metadata accessor for CloudCurator(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v46 = *(v11 + 32);
  v14 = (v13 - v12);
  *(v13 - v12 + v46) = 1;
  v15 = OUTLINED_FUNCTION_160(v2, v2[3]);
  sub_2175D3AF8(v15, v16, v17);
  v18 = sub_2177532C8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_21733CF74(*(v14 + v46));
  }

  else
  {
    sub_2172E1C68(v18, v19, v20);
    OUTLINED_FUNCTION_42_31();
    sub_217752EA8();
    v21 = v47[1];
    *v14 = v47[0];
    v14[1] = v21;
    LOBYTE(v47[0]) = 1;
    OUTLINED_FUNCTION_12_45();
    sub_2175D3D04(v22);
    sub_217752EA8();
    v23 = sub_2175D3B4C(v7, v14 + v9[5]);
    sub_2175D3BB0(v23, v24, v25);
    OUTLINED_FUNCTION_42_31();
    sub_217752E58();
    v26 = memcpy(v14 + v9[6], v47, 0x80uLL);
    v29 = sub_2175D3C04(v26, v27, v28);
    v33 = OUTLINED_FUNCTION_34(&type metadata for CloudCurator.Associations, v30, v31, v32, v29);
    *v9[7] = v47[0];
    v36 = sub_2175D3C58(v33, v34, v35);
    OUTLINED_FUNCTION_34(&type metadata for CloudCurator.Metadata, v37, v38, v39, v36);
    v40 = OUTLINED_FUNCTION_16_3();
    v41(v40);
    v42 = v47[0];
    sub_21733CF74(*(v14 + v46));
    *(v14 + v46) = v42;
    OUTLINED_FUNCTION_1_104();
    sub_2175D494C(v14, v45, v43);
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_5_75();
    sub_2175D3CAC(v14, v44);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t CloudCurator.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A848, &qword_217783130);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  v11 = OUTLINED_FUNCTION_160(a1, a1[3]);
  sub_2175D3AF8(v11, v12, v13);
  v14 = sub_2177532F8();
  v15 = v3[1];
  v32 = *v3;
  v33 = v15;
  v31 = 0;
  sub_2172E1B18(v14, v16, v17);
  OUTLINED_FUNCTION_4_5();
  sub_217752F88();
  if (!v2)
  {
    v18 = type metadata accessor for CloudCurator(0);
    LOBYTE(v32) = 1;
    type metadata accessor for CloudCurator.Attributes(0);
    OUTLINED_FUNCTION_12_45();
    sub_2175D3D04(v19);
    v20 = sub_217752F88();
    LOBYTE(v32) = 2;
    sub_21733CD7C(v20, v21, v22);
    v23 = sub_217752F38();
    LOBYTE(v32) = *(v3 + *(v18 + 28));
    v31 = 3;
    sub_21733CD28(v23, v24, v25);
    OUTLINED_FUNCTION_4_5();
    sub_217752F38();
    v32 = *(v3 + *(v18 + 32));
    v31 = 4;
    v26 = sub_217221020(v32);
    sub_2174D7B20(v26, v27, v28);
    OUTLINED_FUNCTION_4_5();
    sub_217752F38();
    sub_21733CF74(v32);
  }

  return (*(v7 + 8))(v10, v5);
}

void Curator.init<A>(_:configuration:sharedRelatedItemStore:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v0);
  v64 = v1;
  v77 = v2;
  v78 = v3;
  v75 = v5;
  v76 = v4;
  v7 = v6;
  v81 = type metadata accessor for CloudCurator(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v82 = v10 - v9;
  v11 = type metadata accessor for CuratorPropertyProvider(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  if (qword_280BE7FE8 != -1)
  {
    swift_once();
  }

  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0;
  sub_2172DB00C();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24490, &qword_21775A250);
  v17 = v16[10];
  v18 = v7 + v16[9];
  v19 = *(v18 + 8);
  v79 = *v18;
  v72 = v18;
  v68 = *(v18 + 16);
  v20 = *(v7 + v17 + 8);
  v66 = *(v7 + v17);
  v65 = *(v7 + v16[12]);
  v21 = *(v7 + v16[13]);
  v22 = *(v7 + v16[14]);
  v23 = *(v7 + v16[15]);
  sub_2172A497C(v102);
  memcpy(v15, v102, 0x221uLL);
  *(v15 + 560) = xmmword_2177586D0;
  *(v15 + 576) = 0u;
  *(v15 + 592) = 0u;
  *(v15 + 608) = 0u;
  *(v15 + 632) = 2;
  memcpy((v15 + 640), v102, 0x221uLL);
  v24 = v11[11];
  v25 = sub_2177516D8();
  v73 = v24;
  __swift_storeEnumTagSinglePayload(v15 + v24, 1, 1, v25);
  v26 = v15 + v11[12];
  *(v26 + 96) = 0;
  *(v26 + 64) = 0u;
  *(v26 + 80) = 0u;
  *(v26 + 32) = 0u;
  *(v26 + 48) = 0u;
  *v26 = 0u;
  *(v26 + 16) = 0u;
  v74 = v26;
  v27 = qword_280BE7AA8;
  v70 = v19;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  if (v27 != -1)
  {
    swift_once();
  }

  v28 = qword_280C023C8;
  if (qword_280C023C8 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v63 = sub_217752D28();

    v28 = v63;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  *(v15 + v11[14]) = v28;
  v29 = (v15 + v11[17]);
  memcpy((v15 + v11[15]), v101, 0x161uLL);
  v30 = v15 + v11[16];
  *v30 = v79;
  *(v30 + 8) = v70;
  *(v30 + 16) = v68;
  *v29 = v66;
  v29[1] = v20;
  *(v15 + v11[18]) = v65;
  *(v15 + v11[19]) = v21;
  *(v15 + v11[20]) = v22;
  *(v15 + v11[21]) = v23;
  OUTLINED_FUNCTION_1_104();
  sub_2175D494C(v7, v82, v31);
  v32 = v82 + v81[5];
  OUTLINED_FUNCTION_12_33();
  memcpy(v33, v34, v35);
  OUTLINED_FUNCTION_12_33();
  memcpy(v36, v37, v38);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v92) == 1)
  {
    v39 = v102;
  }

  else
  {
    memcpy(v90, v92, 0x1B8uLL);
    memcpy(v83, v91, 0x1B8uLL);
    sub_21738C4B0(v83, v89, &qword_27CB243F0, &qword_21775D690);
    CloudAttribute<A>.convertToArtwork()(v85);
    memcpy(v84, v90, sizeof(v84));
    sub_2171F0738(v84, &qword_27CB243F0, &qword_21775D690);
    memcpy(v89, v85, 0x221uLL);
    nullsub_1();
    v39 = v89;
  }

  memcpy(v90, v39, sizeof(v90));
  v80 = v7;
  memcpy(v89, v15, 0x221uLL);
  sub_2171F0738(v89, &qword_27CB24400, &unk_21775E9A0);
  memcpy(v15, v90, 0x221uLL);
  *(v15 + 552) = *(v32 + 440);
  if (*(v32 + 512))
  {
    v40 = *(v32 + 504);
    v41 = *(v32 + 488);
    v69 = *(v32 + 480);
    v71 = *(v32 + 496);
    v42 = *(v32 + 472);
    v67 = *(v32 + 464);
    v43 = *(v32 + 448);
    v44 = *(v32 + 456);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
  }

  else
  {
    v43 = 0;
    v67 = 0;
    v69 = 0;
    v42 = 0;
    v41 = 0;
    v71 = 0;
    v40 = 0;
    v44 = 1;
  }

  v45 = *(v15 + 576);
  v88[0] = *(v15 + 560);
  v88[1] = v45;
  v46 = *(v15 + 608);
  v88[2] = *(v15 + 592);
  v88[3] = v46;
  sub_217751DE8();
  sub_2171F0738(v88, &qword_27CB24B70, &unk_217759460);
  *(v15 + 560) = v43;
  *(v15 + 568) = v44;
  *(v15 + 576) = v67;
  *(v15 + 584) = v42;
  *(v15 + 592) = v69;
  *(v15 + 600) = v41;
  *(v15 + 608) = v71;
  *(v15 + 616) = v40;
  *(v15 + 624) = *(v32 + 520);
  v47 = *(v72 + 8);
  v48 = *(v72 + 16);
  v85[0] = *v72;
  v85[1] = v47;
  LOBYTE(v85[2]) = v48;
  v83[0] = *(v32 + 528);
  sub_217751DE8();
  sub_217751DE8();
  sub_21763E734(v85, v83, v84);

  *(v15 + 632) = v84[0];
  v49 = *(v32 + 544);
  *(v15 + 1192) = *(v32 + 536);
  *(v15 + 1200) = v49;
  v50 = *(type metadata accessor for CloudCurator.Attributes(0) + 40);
  sub_217751DE8();
  sub_2172E1ECC(v32 + v50, v15 + v73);
  sub_21738C4B0(v82 + v81[6], v84, &qword_27CB24498, &unk_217758960);
  if (v84[2] == 1)
  {
    sub_2171F0738(v84, &qword_27CB24498, &unk_217758960);
    v51 = v80;
    v52 = v77;
  }

  else
  {
    sub_21738C4B0(v84, v85, &qword_27CB242C0, &unk_21775D650);
    sub_2172831A8(v84);
    v51 = v80;
    v52 = v77;
    if (v85[2])
    {
      v87 = 0;
      memset(v86, 0, sizeof(v86));
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242C8, &unk_217758970);
      v56 = sub_2172E208C(v53, v54, v55);
      v57 = v78;
      CloudResourceCollection.convertToCollection<A, B>(configuration:sharedRelatedItemStore:incrementalLoader:)(v77, v76, v86, &type metadata for Playlist, v78, v56, &protocol witness table for Playlist, v83, v64);
      sub_2171F0738(v86, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v85, &qword_27CB242C8, &unk_217758970);
      goto LABEL_19;
    }

    sub_2171F0738(v85, &qword_27CB242C0, &unk_21775D650);
  }

  memset(v83, 0, 104);
  v57 = v78;
LABEL_19:
  sub_2175D48DC(v83, v74);
  v58 = v81[8];
  v59 = *(v82 + v58);
  if (v59 == 1)
  {
    v60 = 0;
  }

  else
  {
    v60 = *(v82 + v58);
  }

  *(v15 + v11[13]) = v60;
  v85[3] = v11;
  v85[4] = &protocol witness table for CuratorPropertyProvider;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v85);
  sub_2175D494C(v15, boxed_opaque_existential_0, type metadata accessor for CuratorPropertyProvider);
  sub_217221020(v59);
  Curator.init(propertyProvider:)(v85, v75);

  (*(*(v57 - 8) + 8))(v52, v57);
  sub_2171F0738(v51, &qword_27CB24490, &qword_21775A250);
  OUTLINED_FUNCTION_5_75();
  sub_2175D3CAC(v82, v62);
  sub_2175D3CAC(v15, type metadata accessor for CuratorPropertyProvider);
  OUTLINED_FUNCTION_13();
}

void Curator.convertToCloudResource<A>(configuration:)()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v118 = v2;
  v123 = v3;
  v113 = v4;
  v189 = v5;
  v182 = type metadata accessor for CloudCurator(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = (v8 - v7);
  type metadata accessor for CloudCurator.Attributes(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v195 = v19 - v18;
  if (qword_280BE8148 != -1)
  {
    swift_once();
  }

  sub_2176CAC7C(qword_280C02450, v11, v12, v13, v14, v15, v16, v17, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v164, v170, v176, v182, v189, v195, v201[0], v201[1]);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v221) == 1)
  {
    sub_2172E22C0(v201);
  }

  else
  {
    memcpy(v201, v221, 0x221uLL);
    Artwork.convertToCloudArtworkAttribute()(v203);
    memcpy(v202, v201, 0x221uLL);
    sub_217284084(v202);
    memcpy(v204, v203, sizeof(v204));
    nullsub_1();
    memcpy(v201, v204, 0x1B8uLL);
  }

  if (qword_280BE8190 != -1)
  {
    swift_once();
  }

  v177 = sub_2172A4778(qword_280C02478);
  if (qword_280BE81A8 != -1)
  {
    swift_once();
  }

  sub_2176CA390(qword_280C02488, v20, v21, v22, v23, v24, v25, v26, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v165, v171, v177, v183, v190, v196, v201[0], v201[1]);
  v27 = v214;
  if (v214 == 1)
  {
    v140 = 0;
    v145 = 0;
    v27 = 0;
    v150 = 0;
    v155 = 0;
    v160 = 0;
    v166 = 0;
    v172 = 0;
    v135 = 0;
  }

  else
  {
    v166 = v219;
    v172 = v220;
    v28 = v218;
    v155 = v217;
    v29 = v216;
    v140 = v213;
    v145 = v215;
    sub_217751DE8();
    sub_217751DE8();
    v150 = v29;
    sub_217751DE8();
    v160 = v28;
    sub_217751DE8();
    v135 = sub_217751DC8();
    sub_2171F0738(&v213, &qword_27CB24B70, &unk_217759460);
  }

  if (qword_280BE8180 != -1)
  {
    swift_once();
  }

  v130 = sub_2172A475C(qword_280C02470);
  if (qword_280BE8168 != -1)
  {
    swift_once();
  }

  sub_2176CA2D8(qword_280C02460, v30, v31, v32, v33, v34, v35, v36, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v166, v172, v178, v184, v191, v197, v201[0], v201[1], v201[2], v201[3]);
  v37 = (LOBYTE(v202[0]) << 31 >> 31) & 3;
  if (qword_280BE8158 != -1)
  {
    swift_once();
  }

  v38 = sub_2172A4018();
  if (v39)
  {
    v46 = v38;
  }

  else
  {
    v46 = 0;
  }

  if (v39)
  {
    v47 = v39;
  }

  else
  {
    v47 = 0xE000000000000000;
  }

  if (qword_280BE8170 != -1)
  {
    swift_once();
  }

  v48 = v198;
  sub_2176CA370(qword_280C02468, v39, v40, v41, v42, v43, v44, v45, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v167, v173, v179, v185, v192, v198, v201[0], v201[1], v201[2], v201[3], v201[4], v201[5]);
  memcpy(v48, v201, 0x1B8uLL);
  *(v48 + 440) = v180;
  *(v48 + 448) = v142;
  *(v48 + 456) = v27;
  *(v48 + 464) = v147;
  *(v48 + 472) = v152;
  *(v48 + 480) = v157;
  *(v48 + 488) = v162;
  *(v48 + 496) = v168;
  *(v48 + 504) = v174;
  *(v48 + 512) = v137;
  *(v48 + 520) = v132;
  *(v48 + 528) = v37;
  *(v48 + 536) = v46;
  *(v48 + 544) = v47;
  v212[1] = 0;
  v212[0] = 0;
  memset(&v212[3], 0, 104);
  v212[2] = 1;
  if (qword_280BE8138 != -1)
  {
    swift_once();
  }

  sub_2176CA354(qword_280BE8140, v49, v50, v51, v52, v53, v54, v55, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v168, v174, v180, v186, v193, v199, v201[0], v201[1], v201[2], v201[3], v201[4], v201[5]);
  if (v211[11])
  {
    v56 = sub_21738C4B0(v211, v202, &qword_27CB25330, &unk_21775E9B0);
    if (v202[11])
    {
      sub_2172E208C(v56, v57, v58);
      sub_217230490(v204);
      v203[0] = v204[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB28230, &unk_21775CD50);
      MusicItemCollection<>.convertToRawCollection<A>(configuration:incrementalLoadingEncoding:)();
      sub_2171F0738(v212, &qword_27CB24498, &unk_217758960);
      sub_2171F0738(v202, &unk_27CB28230, &unk_21775CD50);
    }

    else
    {
      sub_2171F0738(v212, &qword_27CB24498, &unk_217758960);
      sub_2171F0738(v202, &qword_27CB25330, &unk_21775E9B0);
      memset(v205, 0, sizeof(v205));
    }

    memcpy(v212, v205, sizeof(v212));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25498, &unk_21775D580);
  swift_allocObject();
  v59 = sub_2172E3DC4();
  sub_2172A4740(v59);
  OUTLINED_FUNCTION_5_4();

  if ((v1 + 2) <= 1)
  {
    v60 = 1;
  }

  else
  {
    v60 = (v1 + 2);
  }

  v62 = *v1;
  v61 = v1[1];
  OUTLINED_FUNCTION_4_92();
  sub_2175D494C(v200, v9 + v63, v64);
  sub_21738C4B0(v212, v9 + v187[6], &qword_27CB24498, &unk_217758960);
  v65 = v187[8];
  *(v9 + v65) = 1;
  *v9 = v62;
  v9[1] = v61;
  *(v9 + v187[7]) = 1;
  v66 = *(v9 + v65);
  sub_217751DE8();
  sub_21733CF74(v66);
  *(v9 + v65) = v60;
  OUTLINED_FUNCTION_31_35();
  v67 = OUTLINED_FUNCTION_5_4();
  v68(v67, v65);
  nullsub_1();
  memcpy(v204, v203, 0x161uLL);
  OUTLINED_FUNCTION_1_104();
  sub_2175D494C(v9, v194, v69);
  OUTLINED_FUNCTION_31_35();
  v70 = OUTLINED_FUNCTION_5_4();
  v71(v70, v65);
  __swift_project_boxed_opaque_existential_1(v202, v202[3]);
  v72 = OUTLINED_FUNCTION_5_4();
  v73(v72);
  __swift_destroy_boxed_opaque_existential_1(v202);
  v181 = v209;
  v188 = v208;
  v175 = v210;
  OUTLINED_FUNCTION_31_35();
  v74 = OUTLINED_FUNCTION_5_4();
  v75(v74, v65);
  __swift_project_boxed_opaque_existential_1(v202, v202[3]);
  OUTLINED_FUNCTION_26_1();
  v76 = OUTLINED_FUNCTION_5_4();
  v78 = v77(v76);
  v163 = v79;
  v169 = v78;
  __swift_destroy_boxed_opaque_existential_1(v202);
  memcpy(v202, v204, 0x168uLL);
  memset(&v202[45], 0, 24);
  nullsub_1();
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  OUTLINED_FUNCTION_17_46();
  v80 = OUTLINED_FUNCTION_179();
  v81(v80);
  v82 = v207;
  v83 = OUTLINED_FUNCTION_41_30();
  __swift_project_boxed_opaque_existential_1(v83, v82);
  OUTLINED_FUNCTION_26_1();
  v84 = OUTLINED_FUNCTION_5_4();
  v86 = v85(v84);
  __swift_destroy_boxed_opaque_existential_1(v206);
  v87 = v1[5];
  v88 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v87);
  OUTLINED_FUNCTION_17_46();
  v89(v87, v88);
  v90 = v207;
  v91 = OUTLINED_FUNCTION_41_30();
  __swift_project_boxed_opaque_existential_1(v91, v90);
  OUTLINED_FUNCTION_26_1();
  v93 = (*(v92 + 72))(v90);
  __swift_destroy_boxed_opaque_existential_1(v206);
  v95 = v1[5];
  v94 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v95);
  OUTLINED_FUNCTION_17_46();
  v96(v95, v94);
  v97 = v207;
  v98 = OUTLINED_FUNCTION_41_30();
  __swift_project_boxed_opaque_existential_1(v98, v97);
  OUTLINED_FUNCTION_26_1();
  v100 = (*(v99 + 80))(v97);
  __swift_destroy_boxed_opaque_existential_1(v206);
  v101 = v1[5];
  v102 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v101);
  OUTLINED_FUNCTION_17_46();
  v103(v101, v102);
  v104 = v207;
  v105 = OUTLINED_FUNCTION_41_30();
  __swift_project_boxed_opaque_existential_1(v105, v104);
  OUTLINED_FUNCTION_26_1();
  v107 = (*(v106 + 88))(v104);
  sub_2171F0738(v212, &qword_27CB24498, &unk_217758960);
  OUTLINED_FUNCTION_6_73();
  sub_2175D3CAC(v200, v108);
  __swift_destroy_boxed_opaque_existential_1(v206);
  OUTLINED_FUNCTION_5_75();
  sub_2175D3CAC(v9, v109);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24490, &qword_21775A250);
  v111 = v194 + v110[9];
  *v111 = v188;
  *(v111 + 8) = v181;
  *(v111 + 16) = v175;
  v112 = (v194 + v110[10]);
  *v112 = v169;
  v112[1] = v163;
  memcpy((v194 + v110[11]), v202, 0x180uLL);
  *(v194 + v110[12]) = v86;
  *(v194 + v110[13]) = v93;
  *(v194 + v110[14]) = v100;
  *(v194 + v110[15]) = v107;
  sub_2171F0738(v211, &qword_27CB25330, &unk_21775E9B0);
  OUTLINED_FUNCTION_13();
}