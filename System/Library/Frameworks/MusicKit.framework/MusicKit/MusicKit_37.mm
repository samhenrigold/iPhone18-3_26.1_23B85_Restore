uint64_t SongPropertyProvider.hashValue.getter()
{
  sub_2177531E8();
  SongPropertyProvider.hash(into:)();
  return sub_217753238();
}

void (*sub_21753B8F4(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  SongPropertyProvider.subscript.getter();
  return sub_217535208;
}

uint64_t sub_21753B970(uint64_t a1)
{
  sub_2177531E8();
  SongPropertyProvider.hash(into:)();
  return sub_217753238();
}

uint64_t objectdestroyTm_3()
{
  if (v0[3] != 1)
  {
  }

  if (v0[14])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21753BA74(uint64_t a1)
{
  v1 = *(a1 + 168);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21753BA8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SongPropertyProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21753BAF0(uint64_t a1)
{
  v2 = type metadata accessor for SongPropertyProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21753BB94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21753BC04(uint64_t a1)
{
  sub_2172E2E58(319, &qword_280BE7698, &type metadata for Artwork);
  v2 = v1;
  if (v3 > 0x3F)
  {
    return v2;
  }

  sub_2172E2E58(319, &qword_280BE8010, &type metadata for MusicIdentifierSet);
  if (v5 > 0x3F)
  {
    return v4;
  }

  sub_2172E2E58(319, &qword_280BE7598, MEMORY[0x277D837D0]);
  if (v7 > 0x3F)
  {
    return v6;
  }

  sub_21739F80C(319, qword_280BE99F8, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v9 = v8;
  if (v10 > 0x3F)
  {
    return v9;
  }

  sub_217351B44(319, &unk_280BE75B8, &qword_27CB24C60, &qword_217759660);
  if (v11 > 0x3F)
  {
    return v4;
  }

  sub_217351B44(319, &qword_280BE7570, &qword_27CB24C70, &unk_217759670);
  if (v12 > 0x3F)
  {
    return v4;
  }

  sub_2172E2E58(319, qword_280BE7E70, &type metadata for CatalogAsset);
  if (v13 > 0x3F)
  {
    return v4;
  }

  sub_2172E2E58(319, &qword_280BE7E08, &type metadata for ContentRating);
  if (v14 > 0x3F)
  {
    return v4;
  }

  sub_2172E2E58(319, &qword_280BE7528, MEMORY[0x277D83B88]);
  v16 = v15;
  if (v17 > 0x3F)
  {
    return v16;
  }

  sub_2172E2E58(319, &qword_280BE7538, MEMORY[0x277D839F8]);
  if (v19 > 0x3F)
  {
    return v18;
  }

  sub_217351B44(319, &qword_280BE75A8, &qword_27CB24BE8, &qword_2177595F0);
  if (v20 > 0x3F)
  {
    return v4;
  }

  sub_2172E2E58(319, &qword_280BE7DE8, &type metadata for EditorialNotes);
  if (v21 > 0x3F)
  {
    return v4;
  }

  sub_217351B44(319, &qword_280BE75B0, &qword_27CB24BE0, &unk_2177657E0);
  if (v22 > 0x3F)
  {
    return v4;
  }

  sub_217351B44(319, &qword_280BE7548, &qword_27CB24C58, &unk_2177677B0);
  if (v23 > 0x3F)
  {
    return v4;
  }

  sub_2172E2E58(319, &qword_280BE7CB0, &type metadata for HomeSharingAsset);
  if (v24 > 0x3F)
  {
    return v4;
  }

  sub_2172E2E58(319, &qword_280BE7540, MEMORY[0x277D839B0]);
  if (v26 > 0x3F)
  {
    return v25;
  }

  sub_2172E2E58(319, &qword_280BE7618, &type metadata for FileAsset);
  if (v27 > 0x3F)
  {
    return v4;
  }

  sub_2172E2E58(319, &qword_280BE7F18, &type metadata for MusicLyrics);
  if (v28 > 0x3F)
  {
    return v4;
  }

  sub_217351B44(319, &qword_280BE7558, &qword_27CB24C50, &unk_217759650);
  v2 = v29;
  if (v30 > 0x3F)
  {
    return v2;
  }

  sub_2172E2E58(319, &qword_280BE7DD0, &type metadata for PlayParameters);
  v2 = v31;
  if (v32 > 0x3F)
  {
    return v2;
  }

  sub_217351B44(319, &qword_280BE7568, &qword_27CB24C48, &qword_217759648);
  v2 = v33;
  if (v34 > 0x3F)
  {
    return v2;
  }

  sub_21739F80C(319, &qword_280BE99F0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v2 = v35;
  if (v36 > 0x3F)
  {
    return v2;
  }

  sub_217351B44(319, &qword_280BE7DF8, &qword_27CB25C70, &unk_217775710);
  if (v37 > 0x3F)
  {
    return v4;
  }

  sub_2172E2E58(319, qword_280BE7948, &type metadata for LegacyModelFavoriteStatus);
  if (v38 > 0x3F)
  {
    return v4;
  }

  sub_2172E2E58(319, &qword_280BE77E0, &type metadata for LegacyModelKeepLocalEnabledStatus);
  if (v39 > 0x3F)
  {
    return v4;
  }

  sub_2172E2E58(319, &qword_280BE77D8, &type metadata for LegacyModelKeepLocalManagedStatus);
  if (v40 > 0x3F)
  {
    return v4;
  }

  sub_2172E2E58(319, &qword_280BE77C0, &type metadata for LegacyModelKeepLocalManagedStatusReasons);
  if (v41 > 0x3F)
  {
    return v4;
  }

  sub_2172E2E58(319, &unk_280BE7EF8, &type metadata for CloudStatus);
  v2 = v42;
  if (v43 > 0x3F)
  {
    return v2;
  }

  sub_217351B44(319, &qword_280BE7FB8, &qword_27CB25388, &unk_21775D410);
  v2 = v44;
  if (v45 > 0x3F)
  {
    return v2;
  }

  sub_217351B44(319, &qword_280BE7FB0, &qword_27CB27C80, &unk_21775D420);
  v2 = v46;
  if (v47 > 0x3F)
  {
    return v2;
  }

  sub_217351B44(319, &qword_280BE7FA0, &qword_27CB25398, &unk_21776C4F0);
  v16 = v48;
  if (v49 > 0x3F)
  {
    return v16;
  }

  sub_217351B44(319, &qword_280BE7AC0, &qword_27CB25C78, &unk_21775EFE0);
  if (v50 > 0x3F)
  {
    return v4;
  }

  sub_217351B44(319, &qword_280BE7FC0, &qword_27CB27820, &qword_21775DAB0);
  v9 = v51;
  if (v52 > 0x3F)
  {
    return v9;
  }

  sub_217351B44(319, &qword_280BE7AB0, &qword_27CB25C80, &unk_217775700);
  if (v53 > 0x3F)
  {
    return v4;
  }

  sub_217351B44(319, &qword_280BE7AC8, &qword_27CB25C88, &unk_21775EFF0);
  if (v54 > 0x3F)
  {
    return v4;
  }

  sub_217351B44(319, &qword_280BE7FD0, &qword_27CB25380, &unk_21775DAA0);
  v2 = v55;
  if (v56 <= 0x3F)
  {
    sub_217351B44(319, &qword_280BE7F90, &qword_27CB255B8, &unk_21775D470);
    v2 = v57;
    if (v58 <= 0x3F)
    {
      sub_217351B44(319, &qword_280BE7578, &qword_27CB24C40, &qword_217759640);
      v2 = v59;
      if (v60 <= 0x3F)
      {
        sub_217351B44(319, &qword_280BE7550, &qword_27CB24BD8, &unk_2177595E0);
        v2 = v61;
        if (v62 <= 0x3F)
        {
          sub_21739F80C(319, &qword_280BE7590, type metadata accessor for AnyMusicProperty, MEMORY[0x277D83940]);
          v2 = v63;
          if (v64 <= 0x3F)
          {
            sub_217351BFC();
            v2 = v65;
            if (v66 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v2;
}

uint64_t OUTLINED_FUNCTION_21_32(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_35()
{

  return sub_21726A630(v3 + v2, v0 + 7704, v1, v4);
}

uint64_t OUTLINED_FUNCTION_26_29(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_29_30(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_42_22()
{

  return sub_2171F0738(v0 + 6048, v1, v2);
}

uint64_t OUTLINED_FUNCTION_45_23(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_46_22(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_64_19()
{

  return sub_2171F0738(v0 + 3152, v1, v2);
}

void *OUTLINED_FUNCTION_77_12()
{

  return memcpy((v0 + 3152), (v1 + 104), 0x68uLL);
}

void *OUTLINED_FUNCTION_78_12()
{

  return memcpy((v0 + 136), (v0 + 8), 0x68uLL);
}

void *OUTLINED_FUNCTION_79_14()
{

  return memcpy((v0 + 360), (v0 + 2184), 0x68uLL);
}

uint64_t OUTLINED_FUNCTION_96_12(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_97_10(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_98_14(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_99_13(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_100_13(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_103_11(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_104_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_105_12(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_106_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_108_10(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_109_10(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_110_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_111_11(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_112_11(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_113_10(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_114_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_115_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_116_12(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_117_12(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_118_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_120_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_121_11(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_122_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_123_10(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_126_10(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_127_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_128_10(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_129_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_130_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_132_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_134_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_135_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_139_8()
{

  return type metadata accessor for SongPropertyProvider(0);
}

uint64_t OUTLINED_FUNCTION_146_7()
{

  return type metadata accessor for SongPropertyProvider(0);
}

uint64_t OUTLINED_FUNCTION_147_6()
{

  return sub_217751FF8();
}

uint64_t OUTLINED_FUNCTION_161_7@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_21726A630(v4 + a3, v3 + 2184, a1, a2);
}

uint64_t OUTLINED_FUNCTION_164_6()
{
}

uint64_t OUTLINED_FUNCTION_166_6@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_21726A630(v4 + a3, v3 + 136, a1, a2);
}

uint64_t OUTLINED_FUNCTION_167_8@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_21726A630(v4 + a3, v3 + 8, a1, a2);
}

uint64_t OUTLINED_FUNCTION_190_7()
{

  return sub_217751DE8();
}

void *OUTLINED_FUNCTION_191_5()
{

  return memcpy((v0 + 7720), (v1 + 16), 0x68uLL);
}

void *OUTLINED_FUNCTION_192_6()
{

  return memcpy((v0 + 3152), (v1 + 128), 0x80uLL);
}

uint64_t OUTLINED_FUNCTION_193_6()
{

  return type metadata accessor for SongPropertyProvider(0);
}

uint64_t *OUTLINED_FUNCTION_195_6()
{
  *(v0 + 1720) = v1;

  return __swift_allocate_boxed_opaque_existential_0((v0 + 1696));
}

uint64_t OUTLINED_FUNCTION_196_6(uint64_t a1)
{

  return sub_21726A630(a1, v1 + 2592, v3, v2);
}

void *OUTLINED_FUNCTION_198_5()
{

  return memcpy((v0 + 136), (v0 + 8), 0x80uLL);
}

uint64_t OUTLINED_FUNCTION_199_3@<X0>(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];

  return sub_21739AF10(v2, v3, v4);
}

void *OUTLINED_FUNCTION_200_4()
{

  return memcpy((v0 + 360), (v0 + 2184), 0x80uLL);
}

double OUTLINED_FUNCTION_221_5()
{
  result = 0.0;
  *(v0 + 1696) = 0u;
  *(v0 + 1712) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_222_4(uint64_t a1)
{

  return sub_217751EB8();
}

void *OUTLINED_FUNCTION_225_5(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x68uLL);
}

void *OUTLINED_FUNCTION_227_5(void *a1)
{

  return memcpy(a1, (v1 + 176), 0xB0uLL);
}

uint64_t String.convertToCodingKey()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = &type metadata for DynamicCodingKey;
  a4[4] = sub_21738B390(a1, a2, a3);
  *a4 = a1;
  a4[1] = a2;

  return sub_217751DE8();
}

MusicKit::DynamicCodingKey __swiftcall CodingKey.convertToDynamicCodingKey()()
{
  v1 = v0;
  v2 = sub_217753318();
  *v1 = v2;
  v1[1] = v3;
  result.stringValue._object = v3;
  result.stringValue._countAndFlagsBits = v2;
  return result;
}

MusicKit::DynamicCodingKey __swiftcall String.convertToDynamicCodingKey()()
{
  *v2 = v0;
  v2[1] = v1;
  v3 = sub_217751DE8();
  result.stringValue._object = v4;
  result.stringValue._countAndFlagsBits = v3;
  return result;
}

MusicKit::DynamicCodingKey_optional __swiftcall DynamicCodingKey.init(intValue:)(Swift::Int intValue)
{
  *v1 = 0;
  v1[1] = 0;
  result.value.stringValue._countAndFlagsBits = intValue;
  return result;
}

uint64_t DynamicCodingKey.stringValue.getter()
{
  v1 = *v0;
  sub_217751DE8();
  return v1;
}

uint64_t static DynamicCodingKey.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_217753058();
  }
}

uint64_t DynamicCodingKey.hashValue.getter()
{
  sub_2177531E8();
  sub_217751FF8();
  return sub_217753238();
}

uint64_t sub_21753D16C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = DynamicCodingKey.init(stringValue:)(*&a1).stringValue._countAndFlagsBits;
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_21753D1B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21738B390(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t DynamicCodingKey.description.getter()
{
  MEMORY[0x21CEA23B0](*v0, v0[1]);
  MEMORY[0x21CEA23B0](34, 0xE100000000000000);
  return 34;
}

unint64_t sub_21753D244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE7CB8;
  if (!qword_280BE7CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE7CB8);
  }

  return result;
}

unint64_t sub_21753D29C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE7CC0;
  if (!qword_280BE7CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE7CC0);
  }

  return result;
}

unint64_t sub_21753D2F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB291F8;
  if (!qword_27CB291F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB291F8);
  }

  return result;
}

uint64_t sub_21753D3EC(char a1, void (*a2)(void *), uint64_t (*a3)(void), void (*a4)(uint64_t, void *, double), uint64_t a5)
{
  LOBYTE(v19[0]) = a1;
  a2(v19);
  v9 = a3();

  a4(v5, v19, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB293D8, &qword_217786890);
  if (swift_dynamicCast())
  {
    sub_2171F3F0C(v17, v20);
    v11 = v21;
    v12 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    LOBYTE(v19[0]) = a1;
    v13 = (*(v12 + 24))(v19, v11, v12);
    swift_isUniquelyReferenced_nonNull_native();
    v19[0] = v9;
    OUTLINED_FUNCTION_27_34();
    sub_2175FCEF0(v13, v14, 0, v15, v19);
    v9 = v19[0];
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    sub_2171F0790(v17, &qword_27CB293E0, &unk_217776CD0);
  }

  return v9;
}

uint64_t sub_21753D6F0(char a1)
{
  v2 = v1;
  sub_217275710(v1, v20);
  if (v21)
  {
    OUTLINED_FUNCTION_33_26();
    MusicVideo.convertToLegacyModelStorageDictionary(for:)();
    v5 = v4;
    sub_217283C08(v17);
  }

  else
  {
    OUTLINED_FUNCTION_33_26();
    v5 = Song.convertToLegacyModelStorageDictionary(for:)(v6);
    sub_217283B58(v17);
  }

  sub_2172A1834(v5);
  v8 = v7;

  sub_217275710(v2, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB293D8, &qword_217786890);
  if (swift_dynamicCast())
  {
    sub_2171F3F0C(v15, v17);
    v9 = v18;
    v10 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    LOBYTE(v20[0]) = a1;
    v11 = (*(v10 + 24))(v20, v9, v10);
    swift_isUniquelyReferenced_nonNull_native();
    v20[0] = v8;
    OUTLINED_FUNCTION_27_34();
    sub_2175FCEF0(v11, v12, 0, v13, v20);
    v8 = v20[0];
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    sub_2171F0790(v15, &qword_27CB293E0, &unk_217776CD0);
  }

  return v8;
}

uint64_t LegacyModelLibrarySearchTopResult.init(propertyProvider:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 48))(v181, v4, v5);
  v6 = v181[1];
  if (qword_280BE8A88 != -1)
  {
    OUTLINED_FUNCTION_43_17(&qword_280BE8A88);
  }

  v7 = OUTLINED_FUNCTION_30_2(&xmmword_280BE8A90);
  v9 = v9 && v8 == v6;
  if (!v9 && (OUTLINED_FUNCTION_25_38(v7, v8) & 1) == 0)
  {
    if (qword_280BE8AE8 != -1)
    {
      OUTLINED_FUNCTION_42_23(&qword_280BE8AE8);
    }

    v10 = OUTLINED_FUNCTION_30_2(&qword_280BE8AF0);
    v12 = v9 && v11 == v6;
    if (!v12 && (OUTLINED_FUNCTION_25_38(v10, v11) & 1) == 0)
    {
      if (qword_280BE4A68 != -1)
      {
        OUTLINED_FUNCTION_41_22(&qword_280BE4A68);
      }

      v40 = OUTLINED_FUNCTION_30_2(&xmmword_280BE4A70);
      v42 = v9 && v41 == v6;
      if (v42 || (OUTLINED_FUNCTION_25_38(v40, v41) & 1) != 0)
      {
        goto LABEL_31;
      }

      if (qword_280BE4B80 != -1)
      {
        OUTLINED_FUNCTION_40_23(&qword_280BE4B80);
      }

      v43 = OUTLINED_FUNCTION_30_2(&qword_280BE4B88);
      v45 = v9 && v44 == v6;
      if (v45 || (OUTLINED_FUNCTION_25_38(v43, v44) & 1) != 0)
      {
LABEL_31:

        OUTLINED_FUNCTION_65_19(v47, v48, v49, v50, v46);
        v51 = v173;
        __swift_project_boxed_opaque_existential_1(&v170, v173);
        v52 = OUTLINED_FUNCTION_8_49();
        v54 = v53(v52);
        OUTLINED_FUNCTION_64_0(v54, v55, v56, v57, v58, v59, v60, v61, v161, v168, v170, v171, v172, v173, v174, v175, *(&v175 + 1), v176, *(&v176 + 1), v177, *(&v177 + 1), v178, v179, v180);
        sub_217269F50(&v179);
        *&v175 = v51;
        *(&v175 + 1) = v6;
        v62 = __swift_project_boxed_opaque_existential_1(&v170, v173);
        OUTLINED_FUNCTION_11_6(v62, v63, v64, v65, v66, v67, v68, v69, v163);
        __swift_destroy_boxed_opaque_existential_1(&v170);
        v37 = 1;
        goto LABEL_16;
      }

      if (qword_280BE8B28 != -1)
      {
        OUTLINED_FUNCTION_39_18(&qword_280BE8B28);
      }

      v70 = OUTLINED_FUNCTION_30_2(&qword_280BE8B30);
      v72 = v9 && v71 == v6;
      if (v72 || (OUTLINED_FUNCTION_25_38(v70, v71) & 1) != 0)
      {
        goto LABEL_46;
      }

      if (qword_280BE8B68 != -1)
      {
        OUTLINED_FUNCTION_38_22(&qword_280BE8B68);
      }

      v73 = OUTLINED_FUNCTION_30_2(&qword_280BE8B70);
      v75 = v9 && v74 == v6;
      if (v75 || (OUTLINED_FUNCTION_25_38(v73, v74) & 1) != 0)
      {
LABEL_46:

        OUTLINED_FUNCTION_65_19(v77, v78, v79, v80, v76);
        v81 = v173;
        __swift_project_boxed_opaque_existential_1(&v170, v173);
        v82 = OUTLINED_FUNCTION_8_49();
        v84 = v83(v82);
        OUTLINED_FUNCTION_64_0(v84, v85, v86, v87, v88, v89, v90, v91, v161, v168, v170, v171, v172, v173, v174, v175, *(&v175 + 1), v176, *(&v176 + 1), v177, *(&v177 + 1), v178, v179, v180);
        sub_217269F50(&v179);
        *&v175 = v81;
        *(&v175 + 1) = v6;
        v92 = __swift_project_boxed_opaque_existential_1(&v170, v173);
        OUTLINED_FUNCTION_11_6(v92, v93, v94, v95, v96, v97, v98, v99, v164);
        __swift_destroy_boxed_opaque_existential_1(&v170);
        v37 = 2;
        goto LABEL_16;
      }

      if (qword_280BE8A38 != -1)
      {
        OUTLINED_FUNCTION_37_25(&qword_280BE8A38);
      }

      v100 = OUTLINED_FUNCTION_30_2(&qword_280BE8A40);
      v102 = v9 && v101 == v6;
      if (v102 || (OUTLINED_FUNCTION_25_38(v100, v101) & 1) != 0)
      {
        goto LABEL_61;
      }

      if (qword_280BE8AA8 != -1)
      {
        OUTLINED_FUNCTION_36_25(&qword_280BE8AA8);
      }

      v103 = OUTLINED_FUNCTION_30_2(&qword_280BE8AB0);
      v105 = v9 && v104 == v6;
      if (v105 || (OUTLINED_FUNCTION_25_38(v103, v104) & 1) != 0)
      {
LABEL_61:

        OUTLINED_FUNCTION_65_19(v107, v108, v109, v110, v106);
        v111 = v173;
        __swift_project_boxed_opaque_existential_1(&v170, v173);
        v112 = OUTLINED_FUNCTION_8_49();
        v114 = v113(v112);
        OUTLINED_FUNCTION_64_0(v114, v115, v116, v117, v118, v119, v120, v121, v161, v168, v170, v171, v172, v173, v174, v175, *(&v175 + 1), v176, *(&v176 + 1), v177, *(&v177 + 1), v178, v179, v180);
        sub_217269F50(&v179);
        *&v175 = v111;
        *(&v175 + 1) = v6;
        v122 = __swift_project_boxed_opaque_existential_1(&v170, v173);
        OUTLINED_FUNCTION_11_6(v122, v123, v124, v125, v126, v127, v128, v129, v165);
        __swift_destroy_boxed_opaque_existential_1(&v170);
        v37 = 3;
        goto LABEL_16;
      }

      if (qword_280BEA1C8 != -1)
      {
        OUTLINED_FUNCTION_35_24(&qword_280BEA1C8);
      }

      v130 = OUTLINED_FUNCTION_30_2(&xmmword_280BEA1D0);
      v132 = v9 && v131 == v6;
      if (!v132 && (OUTLINED_FUNCTION_25_38(v130, v131) & 1) == 0)
      {
        if (qword_280BE8B08 != -1)
        {
          OUTLINED_FUNCTION_34_26(&qword_280BE8B08);
        }

        v133 = OUTLINED_FUNCTION_30_2(&qword_280BE8B10);
        if (!v9 || v134 != v6)
        {
          v136 = OUTLINED_FUNCTION_25_38(v133, v134);

          if (v136)
          {
LABEL_78:
            OUTLINED_FUNCTION_65_19(v137, v138, v139, v140, v141, v161, v168);
            v142 = v173;
            __swift_project_boxed_opaque_existential_1(&v170, v173);
            v143 = OUTLINED_FUNCTION_8_49();
            v145 = v144(v143);
            OUTLINED_FUNCTION_64_0(v145, v146, v147, v148, v149, v150, v151, v152, v166, v169, v170, v171, v172, v173, v174, v175, *(&v175 + 1), v176, *(&v176 + 1), v177, *(&v177 + 1), v178, v179, v180);
            sub_217269F50(&v179);
            *&v175 = v142;
            *(&v175 + 1) = v6;
            v153 = __swift_project_boxed_opaque_existential_1(&v170, v173);
            OUTLINED_FUNCTION_11_6(v153, v154, v155, v156, v157, v158, v159, v160, v167);
            __swift_destroy_boxed_opaque_existential_1(&v170);
            v37 = 4;
            goto LABEL_16;
          }

          LODWORD(v168) = 0;
          v161 = 58;
          sub_217752D08();
          __break(1u);
        }
      }

      goto LABEL_78;
    }
  }

  OUTLINED_FUNCTION_65_19(v14, v15, v16, v17, v13);
  v18 = v173;
  __swift_project_boxed_opaque_existential_1(&v170, v173);
  v19 = OUTLINED_FUNCTION_8_49();
  v21 = v20(v19);
  OUTLINED_FUNCTION_64_0(v21, v22, v23, v24, v25, v26, v27, v28, v161, v168, v170, v171, v172, v173, v174, v175, *(&v175 + 1), v176, *(&v176 + 1), v177, *(&v177 + 1), v178, v179, v180);
  sub_217269F50(&v179);
  *&v175 = v18;
  *(&v175 + 1) = v6;
  v29 = __swift_project_boxed_opaque_existential_1(&v170, v173);
  OUTLINED_FUNCTION_11_6(v29, v30, v31, v32, v33, v34, v35, v36, v162);
  __swift_destroy_boxed_opaque_existential_1(&v170);
  v37 = 0;
LABEL_16:
  v38 = v176;
  *a2 = v175;
  *(a2 + 16) = v38;
  *(a2 + 32) = v177;
  *(a2 + 48) = v178;
  *(a2 + 56) = v37;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t LegacyModelLibrarySearchTopResult.id.getter()
{
  LegacyModelLibrarySearchTopResult.innerItem.getter();
  v0 = v5;
  v1 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v2 = (*(v1 + 8))(v0, v1);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2;
}

uint64_t LegacyModelLibrarySearchTopResult.innerItem.getter()
{
  v1 = OUTLINED_FUNCTION_68_1();
  sub_21753DFEC(v1, &v6);
  switch(v9)
  {
    case 1:
      v0[3] = &type metadata for Artist;
      v0[4] = &protocol witness table for Artist;
      goto LABEL_7;
    case 2:
      v0[3] = &type metadata for MusicVideo;
      v0[4] = &protocol witness table for MusicVideo;
      goto LABEL_7;
    case 3:
      v0[3] = &type metadata for Playlist;
      v0[4] = &protocol witness table for Playlist;
      goto LABEL_7;
    case 4:
      v0[3] = &type metadata for Song;
      v0[4] = &protocol witness table for Song;
      goto LABEL_7;
    case 5:
      v4 = v6;
      v5[0] = *v7;
      *(v5 + 9) = *&v7[9];
      sub_217541680(v0);
      return sub_2171F0790(&v4, &qword_27CB29208, &qword_217775F10);
    default:
      v0[3] = &type metadata for Album;
      v0[4] = &protocol witness table for Album;
LABEL_7:
      result = swift_allocObject();
      *v0 = result;
      v3 = *v7;
      *(result + 16) = v6;
      *(result + 32) = v3;
      *(result + 48) = *&v7[16];
      *(result + 64) = v8;
      return result;
  }
}

uint64_t LegacyModelLibrarySearchTopResult.propertyProvider.getter()
{
  v0 = OUTLINED_FUNCTION_68_1();
  v1 = sub_21753DFEC(v0, &v24);
  switch(v26)
  {
    case 1:
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v20, *(&v20 + 1), *&v21[0], *(&v21[0] + 1), *&v21[1], *(&v21[1] + 1), v22, v23, v24, *(&v24 + 1), *&v25[0], *(&v25[0] + 1), v25[1]);
      v18 = OUTLINED_FUNCTION_29(&v20);
      sub_21729C5E8(v18, v19);
      result = sub_217284498(&v20);
      break;
    case 2:
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v20, *(&v20 + 1), *&v21[0], *(&v21[0] + 1), *&v21[1], *(&v21[1] + 1), v22, v23, v24, *(&v24 + 1), *&v25[0], *(&v25[0] + 1), v25[1]);
      v14 = OUTLINED_FUNCTION_29(&v20);
      sub_21729C5E8(v14, v15);
      result = sub_217283C08(&v20);
      break;
    case 3:
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v20, *(&v20 + 1), *&v21[0], *(&v21[0] + 1), *&v21[1], *(&v21[1] + 1), v22, v23, v24, *(&v24 + 1), *&v25[0], *(&v25[0] + 1), v25[1]);
      v16 = OUTLINED_FUNCTION_29(&v20);
      sub_21729C5E8(v16, v17);
      result = sub_21726B8C4(&v20);
      break;
    case 4:
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v20, *(&v20 + 1), *&v21[0], *(&v21[0] + 1), *&v21[1], *(&v21[1] + 1), v22, v23, v24, *(&v24 + 1), *&v25[0], *(&v25[0] + 1), v25[1]);
      v12 = OUTLINED_FUNCTION_29(&v20);
      sub_21729C5E8(v12, v13);
      result = sub_217283B58(&v20);
      break;
    case 5:
      v20 = v24;
      v21[0] = v25[0];
      *(v21 + 9) = *(v25 + 9);
      sub_21753E138();
      result = sub_2171F0790(&v20, &qword_27CB29208, &qword_217775F10);
      break;
    default:
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v20, *(&v20 + 1), *&v21[0], *(&v21[0] + 1), *&v21[1], *(&v21[1] + 1), v22, v23, v24, *(&v24 + 1), *&v25[0], *(&v25[0] + 1), v25[1]);
      v9 = OUTLINED_FUNCTION_29(&v20);
      sub_21729C5E8(v9, v10);
      result = sub_21725CE44(&v20);
      break;
  }

  return result;
}

uint64_t sub_21753E138()
{
  sub_21754240C(v0, v7, &qword_27CB29208, &qword_217775F10);
  if (v8)
  {
    sub_2171F3F0C(v7, v4);
    v1 = v5;
    v2 = v6;
    __swift_project_boxed_opaque_existential_1(v4, v5);
    (*(v2 + 40))(v1, v2);
    return __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    result = sub_217752D08();
    __break(1u);
  }

  return result;
}

uint64_t static LegacyModelLibrarySearchTopResult.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_21753DFEC(a1, v99);
  v4 = sub_21753DFEC(a2, &v100);
  switch(v99[56])
  {
    case 1:
      v59 = OUTLINED_FUNCTION_61_12(v4, v5, v6, v7, v8, v9, v10, v11, v89, *(&v89 + 1), *&v90[0], *(&v90[0] + 1), *&v90[1], *(&v90[1] + 1), v91, v92);
      if (v102 != 1)
      {
        sub_217284498(&v93);
        goto LABEL_43;
      }

      OUTLINED_FUNCTION_2_0(v59, v60, v61, v62, v63, v64, v65, v66, v89, *&v90[0], *(&v90[0] + 1), *&v90[1], *(&v90[1] + 1), v91, v92, v93);
      v69 = v30 && v67 == v68;
      if (v69 || (sub_217753058() & 1) != 0)
      {
        OUTLINED_FUNCTION_9_2(&v93, v89, *(&v89 + 1), *&v90[0], *(&v90[0] + 1), *&v90[1], *(&v90[1] + 1), v91, v92, v93, v94, v95, v96, v97, v98);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v70 = OUTLINED_FUNCTION_13_4();
        v2(v70);
        OUTLINED_FUNCTION_9_3();
        sub_217284498(v71);
        if (a2)
        {
          sub_217284498(&v93);
          goto LABEL_51;
        }
      }

      else
      {
        sub_217284498(&v89);
      }

      sub_217284498(&v93);
      goto LABEL_62;
    case 2:
      v33 = OUTLINED_FUNCTION_61_12(v4, v5, v6, v7, v8, v9, v10, v11, v89, *(&v89 + 1), *&v90[0], *(&v90[0] + 1), *&v90[1], *(&v90[1] + 1), v91, v92);
      if (v102 != 2)
      {
        sub_217283C08(&v93);
        goto LABEL_43;
      }

      OUTLINED_FUNCTION_2_0(v33, v34, v35, v36, v37, v38, v39, v40, v89, *&v90[0], *(&v90[0] + 1), *&v90[1], *(&v90[1] + 1), v91, v92, v93);
      v43 = v30 && v41 == v42;
      if (v43 || (sub_217753058() & 1) != 0)
      {
        OUTLINED_FUNCTION_9_2(&v93, v89, *(&v89 + 1), *&v90[0], *(&v90[0] + 1), *&v90[1], *(&v90[1] + 1), v91, v92, v93, v94, v95, v96, v97, v98);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v44 = OUTLINED_FUNCTION_13_4();
        v2(v44);
        OUTLINED_FUNCTION_9_3();
        sub_217283C08(v45);
        if (a2)
        {
          sub_217283C08(&v93);
          goto LABEL_51;
        }
      }

      else
      {
        sub_217283C08(&v89);
      }

      sub_217283C08(&v93);
      goto LABEL_62;
    case 3:
      v46 = OUTLINED_FUNCTION_61_12(v4, v5, v6, v7, v8, v9, v10, v11, v89, *(&v89 + 1), *&v90[0], *(&v90[0] + 1), *&v90[1], *(&v90[1] + 1), v91, v92);
      if (v102 != 3)
      {
        sub_21726B8C4(&v93);
        goto LABEL_43;
      }

      OUTLINED_FUNCTION_2_0(v46, v47, v48, v49, v50, v51, v52, v53, v89, *&v90[0], *(&v90[0] + 1), *&v90[1], *(&v90[1] + 1), v91, v92, v93);
      v56 = v30 && v54 == v55;
      if (v56 || (sub_217753058() & 1) != 0)
      {
        OUTLINED_FUNCTION_9_2(&v93, v89, *(&v89 + 1), *&v90[0], *(&v90[0] + 1), *&v90[1], *(&v90[1] + 1), v91, v92, v93, v94, v95, v96, v97, v98);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v57 = OUTLINED_FUNCTION_13_4();
        v2(v57);
        OUTLINED_FUNCTION_9_3();
        sub_21726B8C4(v58);
        if (a2)
        {
          sub_21726B8C4(&v93);
          goto LABEL_51;
        }
      }

      else
      {
        sub_21726B8C4(&v89);
      }

      sub_21726B8C4(&v93);
      goto LABEL_62;
    case 4:
      v20 = OUTLINED_FUNCTION_61_12(v4, v5, v6, v7, v8, v9, v10, v11, v89, *(&v89 + 1), *&v90[0], *(&v90[0] + 1), *&v90[1], *(&v90[1] + 1), v91, v92);
      if (v102 != 4)
      {
        sub_217283B58(&v93);
        goto LABEL_43;
      }

      OUTLINED_FUNCTION_2_0(v20, v21, v22, v23, v24, v25, v26, v27, v89, *&v90[0], *(&v90[0] + 1), *&v90[1], *(&v90[1] + 1), v91, v92, v93);
      v30 = v30 && v28 == v29;
      if (v30 || (sub_217753058() & 1) != 0)
      {
        OUTLINED_FUNCTION_9_2(&v93, v89, *(&v89 + 1), *&v90[0], *(&v90[0] + 1), *&v90[1], *(&v90[1] + 1), v91, v92, v93, v94, v95, v96, v97, v98);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v31 = OUTLINED_FUNCTION_13_4();
        v2(v31);
        OUTLINED_FUNCTION_9_3();
        sub_217283B58(v32);
        if (a2)
        {
          sub_217283B58(&v93);
          goto LABEL_51;
        }
      }

      else
      {
        sub_217283B58(&v89);
      }

      sub_217283B58(&v93);
      goto LABEL_62;
    case 5:
      OUTLINED_FUNCTION_61_12(v4, v5, v6, v7, v8, v9, v10, v11, v89, *(&v89 + 1), *&v90[0], *(&v90[0] + 1), *&v90[1], *(&v90[1] + 1), v91, v92);
      if (v102 == 5)
      {
        v89 = v100;
        v90[0] = v101[0];
        *(v90 + 9) = *(v101 + 9);
        v72 = sub_21753E61C(&v93, &v89);
        v73 = v72;
        v81 = OUTLINED_FUNCTION_54_17(v72, v74, v75, v76, v77, v78, v79, v80, v89);
        sub_2171F0790(v81, v82, &qword_217775F10);
        sub_2171F0790(&v93, &qword_27CB29208, &qword_217775F10);
        sub_217541740(v99);
        return v73 & 1;
      }

      sub_2171F0790(&v93, &qword_27CB29208, &qword_217775F10);
      goto LABEL_43;
    default:
      v12 = OUTLINED_FUNCTION_61_12(v4, v5, v6, v7, v8, v9, v10, v11, v89, *(&v89 + 1), *&v90[0], *(&v90[0] + 1), *&v90[1], *(&v90[1] + 1), v91, v92);
      if (v102)
      {
        sub_21725CE44(&v93);
LABEL_43:
        sub_2171F0790(v99, &qword_27CB29210, &unk_217775F18);
        goto LABEL_63;
      }

      OUTLINED_FUNCTION_2_0(v12, v13, v14, v15, v16, v17, v18, v19, v89, *&v90[0], *(&v90[0] + 1), *&v90[1], *(&v90[1] + 1), v91, v92, v93);
      v85 = v30 && v83 == v84;
      if (!v85 && (sub_217753058() & 1) == 0)
      {
        sub_21725CE44(&v89);
LABEL_61:
        sub_21725CE44(&v93);
LABEL_62:
        sub_217541740(v99);
LABEL_63:
        v73 = 0;
        return v73 & 1;
      }

      OUTLINED_FUNCTION_9_2(&v93, v89, *(&v89 + 1), *&v90[0], *(&v90[0] + 1), *&v90[1], *(&v90[1] + 1), v91, v92, v93, v94, v95, v96, v97, v98);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
      v86 = OUTLINED_FUNCTION_13_4();
      v2(v86);
      OUTLINED_FUNCTION_9_3();
      sub_21725CE44(v87);
      if ((a2 & 1) == 0)
      {
        goto LABEL_61;
      }

      sub_21725CE44(&v93);
LABEL_51:
      sub_217541740(v99);
      v73 = 1;
      return v73 & 1;
  }
}

uint64_t sub_21753E61C(uint64_t a1, uint64_t a2)
{
  sub_21754240C(a1, v16, &qword_27CB29208, &qword_217775F10);
  sub_21754240C(a2, v18, &qword_27CB29208, &qword_217775F10);
  if (v17)
  {
    if (v19)
    {
      sub_2171F3F0C(v16, v13);
      sub_2171F3F0C(v18, v12);
      v3 = v14;
      v4 = v15;
      __swift_project_boxed_opaque_existential_1(v13, v14);
      v5 = *(v4 + 48);
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB293E8, &unk_217776CE0);
      v7 = v5(v12, v6, v3, v4);
      __swift_destroy_boxed_opaque_existential_1(v12);
LABEL_8:
      __swift_destroy_boxed_opaque_existential_1(v13);
      return v7 & 1;
    }

    sub_2171F3F0C(v16, v13);
    v12[0] = v18[0];
LABEL_7:
    v8 = v14;
    v9 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v7 = (*(v9 + 48))(v12, &type metadata for LegacyModelLibrarySearchTopResult.Placeholder, v8, v9);

    goto LABEL_8;
  }

  if (v19)
  {
    v12[0] = v16[0];
    sub_2171F3F0C(v18, v13);
    goto LABEL_7;
  }

  if (*&v16[0] == *&v18[0] && *(&v16[0] + 1) == *(&v18[0] + 1))
  {

    v7 = 1;
  }

  else
  {
    v7 = sub_217753058();
  }

  return v7 & 1;
}

uint64_t sub_21753E7E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D75626C61 && a2 == 0xE500000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x747369747261 && a2 == 0xE600000000000000;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x646956636973756DLL && a2 == 0xEA00000000006F65;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7473696C79616C70 && a2 == 0xE800000000000000;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1735290739 && a2 == 0xE400000000000000;
          if (v9 || (sub_217753058() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6C616E7265746E69 && a2 == 0xEC0000006D657449)
          {

            return 5;
          }

          else
          {
            v11 = sub_217753058();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_21753E9D4(char a1)
{
  result = 0x6D75626C61;
  switch(a1)
  {
    case 1:
      result = 0x747369747261;
      break;
    case 2:
      result = 0x646956636973756DLL;
      break;
    case 3:
      result = 0x7473696C79616C70;
      break;
    case 4:
      result = 1735290739;
      break;
    case 5:
      result = 0x6C616E7265746E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21753EA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217541AB8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21753EAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217541AB8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_21753EAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217541A10(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21753EB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217541A10(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_21753EB7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21753E7E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21753EBA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21753E9CC();
  *a1 = result;
  return result;
}

uint64_t sub_21753EBCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217541770(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21753EC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217541770(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_21753EC44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175417C4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21753EC80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175417C4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_21753ECBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217541968(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21753ECF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217541968(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_21753ED34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175418C0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21753ED70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175418C0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_21753EDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217541818(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21753EDE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217541818(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void LegacyModelLibrarySearchTopResult.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_171();
  a22 = v25;
  a23 = v26;
  v118 = v24;
  v121 = v23;
  v28 = v27;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29218, &qword_217775F28);
  OUTLINED_FUNCTION_0_0();
  v115 = v29;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_28_11(v31);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29220, &qword_217775F30);
  OUTLINED_FUNCTION_0_0();
  v112 = v32;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_28_11(v34);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29228, &qword_217775F38);
  OUTLINED_FUNCTION_0_0();
  v110 = v35;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_28_11(v37);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29230, &qword_217775F40);
  OUTLINED_FUNCTION_0_0();
  v108[2] = v38;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v39);
  v41 = v108 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29238, &qword_217775F48);
  OUTLINED_FUNCTION_0_0();
  v108[1] = v43;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v44);
  v46 = v108 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29240, &qword_217775F50);
  OUTLINED_FUNCTION_0_0();
  v108[0] = v48;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v49);
  v51 = v108 - v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29248, &qword_217775F58);
  OUTLINED_FUNCTION_0_0();
  v119 = v52;
  v120 = v53;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v54);
  v56 = v108 - v55;
  v57 = __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_217541770(v57, v58, v59);
  v117 = v56;
  sub_2177532F8();
  v60 = sub_21753DFEC(v121, &v124);
  switch(v126)
  {
    case 1:
      OUTLINED_FUNCTION_4_73();
      a13 = 1;
      sub_217541A10(v96, v97, v98);
      v99 = OUTLINED_FUNCTION_20_32(&type metadata for LegacyModelLibrarySearchTopResult.ArtistCodingKeys, &a13);
      sub_217541A64(v99, v100, v101);
      sub_217752F88();
      OUTLINED_FUNCTION_12_1();
      v102(v46, v42);
      sub_217284498(&v122);
      goto LABEL_7;
    case 2:
      OUTLINED_FUNCTION_4_73();
      a13 = 2;
      sub_217541968(v78, v79, v80);
      v81 = v119;
      v82 = v117;
      v83 = sub_217752EE8();
      sub_2175419BC(v83, v84, v85);
      v86 = v109;
      sub_217752F88();
      OUTLINED_FUNCTION_12_1();
      v87(v41, v86);
      sub_217283C08(&v122);
      (*(v120 + 8))(v82, v81);
      goto LABEL_8;
    case 3:
      OUTLINED_FUNCTION_4_73();
      a13 = 3;
      sub_2175418C0(v88, v89, v90);
      v91 = OUTLINED_FUNCTION_20_32(&type metadata for LegacyModelLibrarySearchTopResult.PlaylistCodingKeys, &a13);
      sub_217541914(v91, v92, v93);
      OUTLINED_FUNCTION_72_12();
      v94 = OUTLINED_FUNCTION_6_56();
      v95(v94);
      sub_21726B8C4(&v122);
      goto LABEL_7;
    case 4:
      OUTLINED_FUNCTION_4_73();
      a13 = 4;
      sub_217541818(v70, v71, v72);
      v73 = OUTLINED_FUNCTION_20_32(&type metadata for LegacyModelLibrarySearchTopResult.SongCodingKeys, &a13);
      sub_21754186C(v73, v74, v75);
      OUTLINED_FUNCTION_72_12();
      v76 = OUTLINED_FUNCTION_6_56();
      v77(v76);
      sub_217283B58(&v122);
      goto LABEL_7;
    case 5:
      v122 = v124;
      *v123 = *v125;
      *&v123[9] = *&v125[9];
      a13 = 5;
      sub_2175417C4(v60, v61, v62);
      v103 = v114;
      v104 = v119;
      v105 = v117;
      sub_217752EE8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29208, &qword_217775F10);
      sub_2175423BC(&qword_27CB29260, &protocol conformance descriptor for LegacyModelInternalPolymorphicMusicItem<A>);
      v106 = v116;
      sub_217752F88();
      OUTLINED_FUNCTION_12_1();
      v107(v103, v106);
      sub_2171F0790(&v122, &qword_27CB29208, &qword_217775F10);
      (*(v120 + 8))(v105, v104);
      goto LABEL_8;
    default:
      OUTLINED_FUNCTION_4_73();
      a13 = 0;
      sub_217541AB8(v63, v64, v65);
      v66 = OUTLINED_FUNCTION_20_32(&type metadata for LegacyModelLibrarySearchTopResult.AlbumCodingKeys, &a13);
      sub_217541B0C(v66, v67, v68);
      sub_217752F88();
      OUTLINED_FUNCTION_12_1();
      v69(v51, v47);
      sub_21725CE44(&v122);
LABEL_7:
      (*(v120 + 8))(v41, v56);
LABEL_8:
      OUTLINED_FUNCTION_170();
      return;
  }
}

uint64_t LegacyModelLibrarySearchTopResult.hash(into:)(uint64_t a1)
{
  v3 = v1;
  sub_21753DFEC(v3, &v70);
  switch(v72)
  {
    case 1:
      v50 = OUTLINED_FUNCTION_5_58();
      v51 = MEMORY[0x21CEA3550](1, v50);
      OUTLINED_FUNCTION_66_13(v51, v52, v53, v54, v55, v56, v57, v58, v63, *(&v63 + 1));
      __swift_project_boxed_opaque_existential_1((v2 + 16), *&v64[24]);
      v59 = OUTLINED_FUNCTION_3_4();
      v60(v59);
      result = sub_217284498(&v63);
      break;
    case 2:
      v28 = OUTLINED_FUNCTION_5_58();
      v29 = MEMORY[0x21CEA3550](2, v28);
      OUTLINED_FUNCTION_66_13(v29, v30, v31, v32, v33, v34, v35, v36, v63, *(&v63 + 1));
      __swift_project_boxed_opaque_existential_1((v2 + 16), *&v64[24]);
      v37 = OUTLINED_FUNCTION_3_4();
      v38(v37);
      result = sub_217283C08(&v63);
      break;
    case 3:
      v39 = OUTLINED_FUNCTION_5_58();
      v40 = MEMORY[0x21CEA3550](3, v39);
      OUTLINED_FUNCTION_66_13(v40, v41, v42, v43, v44, v45, v46, v47, v63, *(&v63 + 1));
      __swift_project_boxed_opaque_existential_1((v2 + 16), *&v64[24]);
      v48 = OUTLINED_FUNCTION_3_4();
      v49(v48);
      result = sub_21726B8C4(&v63);
      break;
    case 4:
      v17 = OUTLINED_FUNCTION_5_58();
      v18 = MEMORY[0x21CEA3550](4, v17);
      OUTLINED_FUNCTION_66_13(v18, v19, v20, v21, v22, v23, v24, v25, v63, *(&v63 + 1));
      __swift_project_boxed_opaque_existential_1((v2 + 16), *&v64[24]);
      v26 = OUTLINED_FUNCTION_3_4();
      v27(v26);
      result = sub_217283B58(&v63);
      break;
    case 5:
      v63 = v70;
      *v64 = v71[0];
      *&v64[9] = *(v71 + 9);
      MEMORY[0x21CEA3550](5);
      sub_21754240C(&v63, v68, &qword_27CB29208, &qword_217775F10);
      if (v69)
      {
        sub_2171F3F0C(v68, v65);
        v61 = v66;
        v62 = v67;
        __swift_project_boxed_opaque_existential_1(v65, v66);
        (*(v62 + 56))(a1, v61, v62);
        sub_2171F0790(&v63, &qword_27CB29208, &qword_217775F10);
        result = __swift_destroy_boxed_opaque_existential_1(v65);
      }

      else
      {
        sub_217751DE8();
        sub_217751FF8();
        swift_bridgeObjectRelease_n();
        result = sub_2171F0790(&v63, &qword_27CB29208, &qword_217775F10);
      }

      break;
    default:
      v5 = OUTLINED_FUNCTION_5_58();
      v6 = MEMORY[0x21CEA3550](0, v5);
      OUTLINED_FUNCTION_66_13(v6, v7, v8, v9, v10, v11, v12, v13, v63, *(&v63 + 1));
      __swift_project_boxed_opaque_existential_1((v2 + 16), *&v64[24]);
      v14 = OUTLINED_FUNCTION_3_4();
      v15(v14);
      result = sub_21725CE44(&v63);
      break;
  }

  return result;
}

uint64_t LegacyModelLibrarySearchTopResult.hashValue.getter()
{
  sub_2177531E8();
  LegacyModelLibrarySearchTopResult.hash(into:)(v1);
  return sub_217753238();
}

void LegacyModelLibrarySearchTopResult.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v114 = v3;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB292B8, &qword_217775F60);
  OUTLINED_FUNCTION_0_0();
  v112 = v4;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_28_11(v6);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB292C0, &qword_217775F68);
  OUTLINED_FUNCTION_0_0();
  v113 = v7;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_150();
  v116 = v9;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB292C8, &qword_217775F70);
  OUTLINED_FUNCTION_0_0();
  v111 = v10;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_150();
  v115 = v12;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB292D0, &qword_217775F78);
  OUTLINED_FUNCTION_0_0();
  v110 = v13;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_28_11(v15);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB292D8, &qword_217775F80);
  OUTLINED_FUNCTION_0_0();
  v109 = v16;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17);
  v19 = &v98 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB292E0, &qword_217775F88);
  OUTLINED_FUNCTION_0_0();
  v108 = v21;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v22);
  v24 = &v98 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB292E8, &unk_217775F90);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v25);
  v26 = v2[3];
  v117 = v2;
  v27 = __swift_project_boxed_opaque_existential_1(v2, v26);
  sub_217541770(v27, v28, v29);
  sub_2177532C8();
  if (v0)
  {
    goto LABEL_8;
  }

  v101 = v24;
  v100 = v20;
  v102 = v19;
  v30 = v116;
  sub_217752EB8();
  sub_21733CF68();
  if (v32 == v33 >> 1)
  {
LABEL_7:
    sub_217752B48();
    swift_allocError();
    v50 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25518, &qword_21775CDA0);
    *v50 = &type metadata for LegacyModelLibrarySearchTopResult;
    sub_217752DF8();
    sub_217752B08();
    OUTLINED_FUNCTION_41_0();
    (*(v51 + 104))(v50);
    swift_willThrow();
    swift_unknownObjectRelease();
    v52 = OUTLINED_FUNCTION_45_24();
    v53(v52);
LABEL_8:
    v54 = v117;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v54);
    OUTLINED_FUNCTION_170();
    return;
  }

  v99 = 0;
  if (v32 < (v33 >> 1))
  {
    v34 = *(v31 + v32);
    sub_21733CF64();
    v36 = v35;
    v38 = v37;
    v39 = swift_unknownObjectRelease();
    if (v36 == v38 >> 1)
    {
      v42 = v99;
      v43 = v114;
      v44 = v113;
      switch(v34)
      {
        case 1:
          v118[0] = 1;
          sub_217541A10(v39, v40, v41);
          v68 = OUTLINED_FUNCTION_16_44(&type metadata for LegacyModelLibrarySearchTopResult.ArtistCodingKeys, v118);
          sub_217499AFC(v68, v69, v70);
          OUTLINED_FUNCTION_19_27(&type metadata for Artist, v71);
          OUTLINED_FUNCTION_23_38();
          swift_unknownObjectRelease();
          v89 = OUTLINED_FUNCTION_6_56();
          v90(v89);
          v91 = OUTLINED_FUNCTION_18_37();
          v92(v91);
          v80 = 1;
          goto LABEL_17;
        case 2:
          v118[0] = 2;
          sub_217541968(v39, v40, v41);
          v60 = OUTLINED_FUNCTION_16_44(&type metadata for LegacyModelLibrarySearchTopResult.MusicVideoCodingKeys, v118);
          sub_217499488(v60, v61, v62);
          OUTLINED_FUNCTION_19_27(&type metadata for MusicVideo, v63);
          OUTLINED_FUNCTION_23_38();
          swift_unknownObjectRelease();
          v76 = OUTLINED_FUNCTION_6_56();
          v77(v76);
          v78 = OUTLINED_FUNCTION_18_37();
          v79(v78);
          v80 = 2;
          goto LABEL_17;
        case 3:
          v118[0] = 3;
          sub_2175418C0(v39, v40, v41);
          v64 = OUTLINED_FUNCTION_16_44(&type metadata for LegacyModelLibrarySearchTopResult.PlaylistCodingKeys, v118);
          sub_21749A6F0(v64, v65, v66);
          OUTLINED_FUNCTION_19_27(&type metadata for Playlist, v67);
          OUTLINED_FUNCTION_23_38();
          swift_unknownObjectRelease();
          v81 = OUTLINED_FUNCTION_6_56();
          v82(v81);
          v83 = OUTLINED_FUNCTION_18_37();
          v84(v83);
          v80 = 3;
LABEL_17:
          v119 = v80;
          goto LABEL_18;
        case 4:
          v118[0] = 4;
          sub_217541818(v39, v40, v41);
          v55 = v30;
          v56 = sub_217752DE8();
          if (v42)
          {
            v72 = OUTLINED_FUNCTION_45_24();
            v73(v72);
            swift_unknownObjectRelease();
            goto LABEL_8;
          }

          sub_217499260(v56, v57, v58);
          v59 = v105;
          sub_217752EA8();
          OUTLINED_FUNCTION_23_38();
          swift_unknownObjectRelease();
          (*(v44 + 8))(v55, v59);
          v74 = OUTLINED_FUNCTION_18_37();
          v75(v74);
          v119 = 4;
          v54 = OUTLINED_FUNCTION_15_43();
          v43 = v114;
LABEL_19:
          v93 = v121;
          *v43 = v120;
          v43[1] = v93;
          v43[2] = *v122;
          *(v43 + 41) = *&v122[9];
          break;
        case 5:
          v118[0] = 5;
          sub_2175417C4(v39, v40, v41);
          OUTLINED_FUNCTION_16_44(&type metadata for LegacyModelLibrarySearchTopResult.InternalItemCodingKeys, v118);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29208, &qword_217775F10);
          sub_2175423BC(&qword_27CB292F0, &protocol conformance descriptor for LegacyModelInternalPolymorphicMusicItem<A>);
          sub_217752EA8();
          swift_unknownObjectRelease();
          v94 = OUTLINED_FUNCTION_6_56();
          v95(v94);
          v96 = OUTLINED_FUNCTION_45_24();
          v97(v96);
          v119 = 5;
          v54 = OUTLINED_FUNCTION_15_43();
          goto LABEL_19;
        default:
          v118[0] = 0;
          sub_217541AB8(v39, v40, v41);
          v45 = OUTLINED_FUNCTION_16_44(&type metadata for LegacyModelLibrarySearchTopResult.AlbumCodingKeys, v118);
          sub_217498ED8(v45, v46, v47);
          OUTLINED_FUNCTION_19_27(&type metadata for Album, v48);
          OUTLINED_FUNCTION_23_38();
          swift_unknownObjectRelease();
          v85 = OUTLINED_FUNCTION_6_56();
          v86(v85);
          v87 = OUTLINED_FUNCTION_18_37();
          v88(v87);
          v119 = 0;
LABEL_18:
          v54 = OUTLINED_FUNCTION_15_43();
          goto LABEL_19;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_217540264(uint64_t a1)
{
  sub_2177531E8();
  LegacyModelLibrarySearchTopResult.hash(into:)(v2);
  return sub_217753238();
}

uint64_t sub_2175402A0@<X0>(uint64_t *a1@<X8>)
{
  result = LegacyModelLibrarySearchTopResult.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void LegacyModelLibrarySearchTopResult.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(void *__src@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  memcpy(__dst, __src, 0x161uLL);
  if (([a2 respondsToSelector_] & 1) != 0 && (v8 = objc_msgSend(a2, sel_musicKit_modelObjectStorageDictionary)) != 0)
  {
    v9 = v8;
    v10 = sub_217751D98();
  }

  else
  {
    v10 = sub_217751DC8();
  }

  v11 = sub_21729FAE8(v10);
  v12 = sub_217751DE8();
  v13 = sub_21774C69C(v12);
  v14 = static LegacyModel.innerModelObject(for:)(a2);
  if (v14)
  {
    v15 = v14;

    switch(v13)
    {
      case 1:
        if (qword_280BE6270 != -1)
        {
          swift_once();
        }

        OUTLINED_FUNCTION_32_27();
        OUTLINED_FUNCTION_74(MusicKit_SoftLinking);
        v99 = OUTLINED_FUNCTION_75_13();
        v100 = OUTLINED_FUNCTION_73_14(v99, sel_identifierSetFromLegacyModelObject_);
        OUTLINED_FUNCTION_14_38();
        v101 = sub_217751DE8();
        OUTLINED_FUNCTION_21_33(v101, v102, v103, v104, v105, v106, v107, v108, v190, v200, v210, v220, v230, a4, v250, *(&v250 + 1), *v251, *&v251[8], *&v251[16], *&v251[24], v252, v253, v254, *(&v254 + 1), *v255, *&v255[8], *&v255[16], *&v255[24], v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290);
        sub_217269F50(__dst);

        v109 = OUTLINED_FUNCTION_28_33();
        v117 = OUTLINED_FUNCTION_12_36(v109, v110, v111, v112, v113, v114, v115, v116, v195, v205, v215, v225, v235, v245, v250, *(&v250 + 1), *v251, *&v251[8], *&v251[16], *&v251[24], v252, v253, v254);
        Artist.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v117, v118, v119, v120, v121);
        swift_unknownObjectRelease();
        v122 = OUTLINED_FUNCTION_53_17();
        OUTLINED_FUNCTION_17_35(v122, v123, v124, v125, v126, v127, v128, v129, v130, v196, v206, v216, v226, v236, v246, v250, *v251, v131, *&v251[16]);
        v98 = 1;
        goto LABEL_38;
      case 2:
        if (([v15 &off_27822ACF8] & 1) != 0 && (v72 = objc_msgSend(v15, &off_27822AE20 + 7)) != 0)
        {
          v11 = v72;
          v73 = sub_217751D98();
        }

        else
        {
          v73 = sub_217751DC8();
        }

        sub_2173ACA4C(0xD00000000000001BLL, 0x80000002177A9730, v73);

        if (*&v255[8])
        {
          if (swift_dynamicCast())
          {
            v132 = v250;
            goto LABEL_29;
          }
        }

        else
        {
          sub_2171F0790(&v254, &qword_27CB2AD40, &qword_2177583F0);
        }

        v132 = 0;
LABEL_29:
        if ([objc_opt_self() playlistTypeForRawValue_] == 4)
        {
          sub_21754240C(a3, v294, &qword_27CB27590, &qword_21776ADF0);
          v133 = dynamic_cast_existential_1_conditional(&type metadata for LegacyModelLibrarySearchTopResult.Placeholder, &type metadata for LegacyModelLibrarySearchTopResult.Placeholder, &protocol descriptor for LegacyModelInternalPolymorphicMusicItemStorageBacked);
          if (v133)
          {
            v135 = v133;
            v136 = (*(v134 + 16))();
            OUTLINED_FUNCTION_60_20(v136, v137, v138, v139, v140, v141, v142, v143, v190, v200, v210, v220, v230, a4, v250, *(&v250 + 1), *v251, *&v251[8], *&v251[16], *&v251[24], v252, v253);
            sub_21754240C(v294, &v250, &qword_27CB27590, &qword_21776ADF0);
            v144 = *(v11[2] + 16);
            v292 = v135;
            v293 = v11;
            boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v291);
            v153 = OUTLINED_FUNCTION_47_20(boxed_opaque_existential_0, v146, v147, v148, v149, v150, v151, v152, v197, v207, v217, v227, v237, v247, v250, *(&v250 + 1), *v251, *&v251[8], *&v251[16], *&v251[24], v252, v253, v254);
            v144(v153);
            swift_unknownObjectRelease();
            v71 = a3;
LABEL_32:
            sub_2171F0790(v71, &qword_27CB27590, &qword_21776ADF0);
            sub_2171F0790(v294, &qword_27CB27590, &qword_21776ADF0);
            sub_21749A32C(v291, &v250);
            v251[24] = 1;
            __swift_destroy_boxed_opaque_existential_1(v291);
          }

          else
          {
LABEL_33:
            swift_unknownObjectRelease();

            swift_unknownObjectRelease();
            sub_2171F0790(a3, &qword_27CB27590, &qword_21776ADF0);
            sub_2171F0790(v294, &qword_27CB27590, &qword_21776ADF0);
            v154 = __dst[0];
            v155 = __dst[1];
            sub_217751DE8();
            sub_217269F50(__dst);
            *&v250 = v154;
            *(&v250 + 1) = v155;
            v251[24] = 0;
          }

          *&v255[9] = *&v251[9];
          v254 = v250;
          *v255 = *v251;
          v156 = *v251;
          *a5 = v250;
          *(a5 + 16) = v156;
          *(a5 + 25) = *&v255[9];
          v98 = 5;
        }

        else
        {
          if (qword_280BE6220 != -1)
          {
            swift_once();
          }

          OUTLINED_FUNCTION_32_27();
          OUTLINED_FUNCTION_74(MusicKit_SoftLinking);
          v157 = OUTLINED_FUNCTION_75_13();
          v158 = OUTLINED_FUNCTION_73_14(v157, sel_identifierSetFromLegacyModelObject_);
          OUTLINED_FUNCTION_14_38();
          v159 = sub_217751DE8();
          OUTLINED_FUNCTION_21_33(v159, v160, v161, v162, v163, v164, v165, v166, v190, v200, v210, v220, v230, a4, v250, *(&v250 + 1), *v251, *&v251[8], *&v251[16], *&v251[24], v252, v253, v254, *(&v254 + 1), *v255, *&v255[8], *&v255[16], *&v255[24], v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290);
          sub_217269F50(__dst);

          v167 = OUTLINED_FUNCTION_28_33();
          v175 = OUTLINED_FUNCTION_12_36(v167, v168, v169, v170, v171, v172, v173, v174, v198, v208, v218, v228, v238, v248, v250, *(&v250 + 1), *v251, *&v251[8], *&v251[16], *&v251[24], v252, v253, v254);
          Playlist.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v175, v176, v177, v178, v179);
          swift_unknownObjectRelease();
          v180 = OUTLINED_FUNCTION_53_17();
          OUTLINED_FUNCTION_17_35(v180, v181, v182, v183, v184, v185, v186, v187, v188, v199, v209, v219, v229, v239, v249, v250, *v251, v189, *&v251[16]);
          v98 = 3;
        }

LABEL_38:
        *(a5 + 56) = v98;
        break;
      case 3:
        if (qword_280BE62A0 != -1)
        {
          swift_once();
        }

        OUTLINED_FUNCTION_32_27();
        OUTLINED_FUNCTION_74(MusicKit_SoftLinking);
        v74 = OUTLINED_FUNCTION_75_13();
        v75 = OUTLINED_FUNCTION_73_14(v74, sel_identifierSetFromLegacyModelObject_);
        OUTLINED_FUNCTION_14_38();
        v76 = sub_217751DE8();
        OUTLINED_FUNCTION_21_33(v76, v77, v78, v79, v80, v81, v82, v83, v190, v200, v210, v220, v230, a4, v250, *(&v250 + 1), *v251, *&v251[8], *&v251[16], *&v251[24], v252, v253, v254, *(&v254 + 1), *v255, *&v255[8], *&v255[16], *&v255[24], v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290);
        sub_217269F50(__dst);

        v84 = OUTLINED_FUNCTION_28_33();
        v92 = OUTLINED_FUNCTION_12_36(v84, v85, v86, v87, v88, v89, v90, v91, v194, v204, v214, v224, v234, v244, v250, *(&v250 + 1), *v251, *&v251[8], *&v251[16], *&v251[24], v252, v253, v254);
        Track.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v92, v93, v94, v95);
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_53_17();
        v96 = v253;
        v97 = *v251;
        *a5 = v250;
        *(a5 + 16) = v97;
        *(a5 + 32) = *&v251[16];
        *(a5 + 48) = v252;
        if (v96)
        {
          v98 = 2;
        }

        else
        {
          v98 = 4;
        }

        goto LABEL_38;
      case 4:
        sub_21754240C(a3, v294, &qword_27CB27590, &qword_21776ADF0);
        v50 = dynamic_cast_existential_1_conditional(&type metadata for LegacyModelLibrarySearchTopResult.Placeholder, &type metadata for LegacyModelLibrarySearchTopResult.Placeholder, &protocol descriptor for LegacyModelInternalPolymorphicMusicItemStorageBacked);
        if (!v50)
        {
          goto LABEL_33;
        }

        v52 = v50;
        v53 = (*(v51 + 16))();
        OUTLINED_FUNCTION_60_20(v53, v54, v55, v56, v57, v58, v59, v60, v190, v200, v210, v220, v230, a4, v250, *(&v250 + 1), *v251, *&v251[8], *&v251[16], *&v251[24], v252, v253);
        sub_21754240C(v294, &v250, &qword_27CB27590, &qword_21776ADF0);
        v61 = *(v11[2] + 16);
        v292 = v52;
        v293 = v11;
        v62 = __swift_allocate_boxed_opaque_existential_0(v291);
        v70 = OUTLINED_FUNCTION_47_20(v62, v63, v64, v65, v66, v67, v68, v69, v193, v203, v213, v223, v233, v243, v250, *(&v250 + 1), *v251, *&v251[8], *&v251[16], *&v251[24], v252, v253, v254);
        v61(v70);
        swift_unknownObjectRelease();
        v71 = a3;
        goto LABEL_32;
      default:
        if (qword_280BE62F0 != -1)
        {
          swift_once();
        }

        OUTLINED_FUNCTION_32_27();
        OUTLINED_FUNCTION_74(MusicKit_SoftLinking);
        v17 = OUTLINED_FUNCTION_75_13();
        v18 = OUTLINED_FUNCTION_73_14(v17, sel_identifierSetFromLegacyModelObject_);
        OUTLINED_FUNCTION_14_38();
        v19 = sub_217751DE8();
        OUTLINED_FUNCTION_21_33(v19, v20, v21, v22, v23, v24, v25, v26, v190, v200, v210, v220, v230, a4, v250, *(&v250 + 1), *v251, *&v251[8], *&v251[16], *&v251[24], v252, v253, v254, *(&v254 + 1), *v255, *&v255[8], *&v255[16], *&v255[24], v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290);
        sub_217269F50(__dst);

        v27 = OUTLINED_FUNCTION_28_33();
        v35 = OUTLINED_FUNCTION_12_36(v27, v28, v29, v30, v31, v32, v33, v34, v191, v201, v211, v221, v231, v241, v250, *(&v250 + 1), *v251, *&v251[8], *&v251[16], *&v251[24], v252, v253, v254);
        Album.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v35, v36, v37, v38, v39);
        swift_unknownObjectRelease();
        v40 = OUTLINED_FUNCTION_53_17();
        OUTLINED_FUNCTION_17_35(v40, v41, v42, v43, v44, v45, v46, v47, v48, v192, v202, v212, v222, v232, v242, v250, *v251, v49, *&v251[16]);
        *(a5 + 56) = 0;
        return;
    }
  }

  else
  {
    sub_217752D08();
    __break(1u);
  }
}

uint64_t LegacyModelLibrarySearchTopResult.init(propertyProvider:underlyingLegacyModelObjectType:)@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  (*(v7 + 48))(v188, v6, v7);
  v8 = v188[1];
  if (qword_280BE8A88 != -1)
  {
    OUTLINED_FUNCTION_43_17(&qword_280BE8A88);
  }

  v9 = OUTLINED_FUNCTION_31_0(&xmmword_280BE8A90);
  v11 = v11 && v10 == v8;
  if (v11 || (OUTLINED_FUNCTION_24_30(v9, v10) & 1) != 0)
  {
    goto LABEL_15;
  }

  if (qword_280BE8AE8 != -1)
  {
    OUTLINED_FUNCTION_42_23(&qword_280BE8AE8);
  }

  v12 = OUTLINED_FUNCTION_31_0(&xmmword_280BE8AF0);
  v14 = v11 && v13 == v8;
  if (v14 || (OUTLINED_FUNCTION_24_30(v12, v13) & 1) != 0)
  {
LABEL_15:

    OUTLINED_FUNCTION_63_17(v15, v16, v17, v18, v19, v20, v21, v22, v183[0]);
    v23 = v184;
    __swift_project_boxed_opaque_existential_1(v183, v184);
    v24 = OUTLINED_FUNCTION_7_49();
    v25(v24);
    OUTLINED_FUNCTION_62_16();
    v26 = sub_217269F50(v187);
    *&v185[0] = v23;
    *(&v185[0] + 1) = v8;
    v34 = OUTLINED_FUNCTION_54_17(v26, v27, v28, v29, v30, v31, v32, v33, v183[0]);
    v36 = __swift_project_boxed_opaque_existential_1(v34, v35);
    OUTLINED_FUNCTION_10_42(v36, v37, v38, v39, v40, v41, v42);
    __swift_destroy_boxed_opaque_existential_1(v183);
    v43 = 0;
  }

  else
  {
    if (qword_280BE4A68 != -1)
    {
      OUTLINED_FUNCTION_41_22(&qword_280BE4A68);
    }

    v46 = OUTLINED_FUNCTION_31_0(&xmmword_280BE4A70);
    v48 = v11 && v47 == v8;
    if (v48 || (OUTLINED_FUNCTION_24_30(v46, v47) & 1) != 0)
    {
      goto LABEL_31;
    }

    if (qword_280BE4B80 != -1)
    {
      OUTLINED_FUNCTION_40_23(&qword_280BE4B80);
    }

    v49 = OUTLINED_FUNCTION_31_0(&qword_280BE4B88);
    v51 = v11 && v50 == v8;
    if (v51 || (OUTLINED_FUNCTION_24_30(v49, v50) & 1) != 0)
    {
LABEL_31:

      OUTLINED_FUNCTION_63_17(v52, v53, v54, v55, v56, v57, v58, v59, v183[0]);
      v60 = v184;
      __swift_project_boxed_opaque_existential_1(v183, v184);
      v61 = OUTLINED_FUNCTION_7_49();
      v62(v61);
      OUTLINED_FUNCTION_62_16();
      v63 = sub_217269F50(v187);
      *&v185[0] = v60;
      *(&v185[0] + 1) = v8;
      v71 = OUTLINED_FUNCTION_54_17(v63, v64, v65, v66, v67, v68, v69, v70, v183[0]);
      v73 = __swift_project_boxed_opaque_existential_1(v71, v72);
      OUTLINED_FUNCTION_10_42(v73, v74, v75, v76, v77, v78, v79);
      __swift_destroy_boxed_opaque_existential_1(v183);
      v43 = 1;
    }

    else
    {
      if (qword_280BE8B28 != -1)
      {
        OUTLINED_FUNCTION_39_18(&qword_280BE8B28);
      }

      v80 = OUTLINED_FUNCTION_31_0(&qword_280BE8B30);
      v82 = v11 && v81 == v8;
      if (v82 || (OUTLINED_FUNCTION_24_30(v80, v81) & 1) != 0)
      {
        goto LABEL_46;
      }

      if (qword_280BE8B68 != -1)
      {
        OUTLINED_FUNCTION_38_22(&qword_280BE8B68);
      }

      v83 = OUTLINED_FUNCTION_31_0(&qword_280BE8B70);
      v85 = v11 && v84 == v8;
      if (v85 || (OUTLINED_FUNCTION_24_30(v83, v84) & 1) != 0)
      {
LABEL_46:

        OUTLINED_FUNCTION_63_17(v86, v87, v88, v89, v90, v91, v92, v93, v183[0]);
        v94 = v184;
        __swift_project_boxed_opaque_existential_1(v183, v184);
        v95 = OUTLINED_FUNCTION_7_49();
        v96(v95);
        OUTLINED_FUNCTION_62_16();
        v97 = sub_217269F50(v187);
        *&v185[0] = v94;
        *(&v185[0] + 1) = v8;
        v105 = OUTLINED_FUNCTION_54_17(v97, v98, v99, v100, v101, v102, v103, v104, v183[0]);
        v107 = __swift_project_boxed_opaque_existential_1(v105, v106);
        OUTLINED_FUNCTION_10_42(v107, v108, v109, v110, v111, v112, v113);
        __swift_destroy_boxed_opaque_existential_1(v183);
        v43 = 2;
      }

      else
      {
        if (qword_280BE8A38 != -1)
        {
          OUTLINED_FUNCTION_37_25(&qword_280BE8A38);
        }

        v114 = OUTLINED_FUNCTION_31_0(&qword_280BE8A40);
        v116 = v11 && v115 == v8;
        if (!v116 && (OUTLINED_FUNCTION_24_30(v114, v115) & 1) == 0)
        {
          if (qword_280BE8AA8 != -1)
          {
            OUTLINED_FUNCTION_36_25(&qword_280BE8AA8);
          }

          v117 = OUTLINED_FUNCTION_31_0(&qword_280BE8AB0);
          v119 = v11 && v118 == v8;
          if (!v119 && (OUTLINED_FUNCTION_24_30(v117, v118) & 1) == 0)
          {
            if (qword_280BEA1C8 != -1)
            {
              OUTLINED_FUNCTION_35_24(&qword_280BEA1C8);
            }

            v148 = OUTLINED_FUNCTION_31_0(&xmmword_280BEA1D0);
            v150 = v11 && v149 == v8;
            if (v150 || (OUTLINED_FUNCTION_24_30(v148, v149) & 1) != 0)
            {
              goto LABEL_77;
            }

            if (qword_280BE8B08 != -1)
            {
              OUTLINED_FUNCTION_34_26(&qword_280BE8B08);
            }

            v151 = OUTLINED_FUNCTION_31_0(&qword_280BE8B10);
            if (v11 && v152 == v8)
            {
LABEL_77:
            }

            else
            {
              v154 = OUTLINED_FUNCTION_24_30(v151, v152);

              if ((v154 & 1) == 0)
              {
                sub_21749A32C(a1, v187);
                sub_217540F94(v187, v5, v185);
                v43 = 5;
                goto LABEL_16;
              }
            }

            OUTLINED_FUNCTION_63_17(v155, v156, v157, v158, v159, v160, v161, v162, v183[0]);
            v163 = v184;
            __swift_project_boxed_opaque_existential_1(v183, v184);
            v164 = OUTLINED_FUNCTION_7_49();
            v165(v164);
            OUTLINED_FUNCTION_62_16();
            v166 = sub_217269F50(v187);
            *&v185[0] = v163;
            *(&v185[0] + 1) = v8;
            v174 = OUTLINED_FUNCTION_54_17(v166, v167, v168, v169, v170, v171, v172, v173, v183[0]);
            v176 = __swift_project_boxed_opaque_existential_1(v174, v175);
            OUTLINED_FUNCTION_10_42(v176, v177, v178, v179, v180, v181, v182);
            __swift_destroy_boxed_opaque_existential_1(v183);
            v43 = 4;
            goto LABEL_16;
          }
        }

        OUTLINED_FUNCTION_63_17(v120, v121, v122, v123, v124, v125, v126, v127, v183[0]);
        v128 = v184;
        __swift_project_boxed_opaque_existential_1(v183, v184);
        v129 = OUTLINED_FUNCTION_7_49();
        v130(v129);
        OUTLINED_FUNCTION_62_16();
        v131 = sub_217269F50(v187);
        *&v185[0] = v128;
        *(&v185[0] + 1) = v8;
        v139 = OUTLINED_FUNCTION_54_17(v131, v132, v133, v134, v135, v136, v137, v138, v183[0]);
        v141 = __swift_project_boxed_opaque_existential_1(v139, v140);
        OUTLINED_FUNCTION_10_42(v141, v142, v143, v144, v145, v146, v147);
        __swift_destroy_boxed_opaque_existential_1(v183);
        v43 = 3;
      }
    }
  }

LABEL_16:
  v44 = v185[1];
  *a3 = v185[0];
  *(a3 + 16) = v44;
  *(a3 + 32) = v185[2];
  *(a3 + 48) = v186;
  *(a3 + 56) = v43;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_217540F94@<X0>(void *a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  if (dynamic_cast_existential_1_conditional(&type metadata for LegacyModelLibrarySearchTopResult.Placeholder, &type metadata for LegacyModelLibrarySearchTopResult.Placeholder, &protocol descriptor for LegacyModelInternalPolymorphicMusicItemStorageBacked))
  {
    v7 = (*(v6 + 16))();
    v9 = v8;
    sub_21749A32C(a1, &v20);
    v18 = a2;
    v10 = *(v9 + 16);
    v11 = *(v10 + 24);
    v19[3] = v7;
    v19[4] = v9;
    __swift_allocate_boxed_opaque_existential_0(v19);
    v11(&v20, &v18, v7, v10);
    sub_21749A32C(v19, &v20);
    v21[24] = 1;
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v12 = a1[3];
    v13 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v12);
    (*(v13 + 24))(v19, v12, v13);
    v15 = v19[0];
    v14 = v19[1];
    sub_217751DE8();
    sub_217269F50(v19);
    *&v20 = v15;
    *(&v20 + 1) = v14;
    v21[24] = 0;
  }

  v16 = *v21;
  *a3 = v20;
  a3[1] = v16;
  *(a3 + 25) = *&v21[9];
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t LegacyModelLibrarySearchTopResult.underlyingLegacyModelObjectType.getter()
{
  v1 = OUTLINED_FUNCTION_68_1();
  sub_21753DFEC(v1, &v13);
  switch(v15)
  {
    case 1:
      result = sub_217541740(&v13);
      v3 = 2;
      break;
    case 2:
      result = sub_217541740(&v13);
      v3 = 12;
      break;
    case 3:
      result = sub_217541740(&v13);
      v3 = 15;
      break;
    case 4:
      result = sub_217541740(&v13);
      v3 = 25;
      break;
    case 5:
      v11 = v13;
      v12[0] = v14[0];
      *(v12 + 9) = *(v14 + 9);
      sub_21754240C(&v11, v9, &qword_27CB29208, &qword_217775F10);
      if (v10)
      {
        sub_2171F3F0C(v9, v6 + 1);
        v5 = v7;
        v4 = v8;
        __swift_project_boxed_opaque_existential_1((v6 + 1), v7);
        (*(*(v4 + 16) + 32))(v6, v5);
        sub_2171F0790(&v11, &qword_27CB29208, &qword_217775F10);
        v3 = v6[0];
        result = __swift_destroy_boxed_opaque_existential_1((v6 + 1));
      }

      else
      {
        sub_2171F0790(&v11, &qword_27CB29208, &qword_217775F10);
        result = sub_2171F0790(v9, &qword_27CB29208, &qword_217775F10);
        v3 = 9;
      }

      break;
    default:
      result = sub_217541740(&v13);
      v3 = 0;
      break;
  }

  *v0 = v3;
  return result;
}

uint64_t LegacyModelLibrarySearchTopResult.convertToRawDictionary(for:)(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = sub_21753DFEC(v1, &v47);
  switch(v49)
  {
    case 1:
      OUTLINED_FUNCTION_0_83(v3, v4, v5, v6, v7, v8, v9, v10, v43, *(&v43 + 1), *&v44[0], *(&v44[0] + 1), *&v44[1], *(&v44[1] + 1), v45, v46, v47, *(&v47 + 1), *&v48[0], *(&v48[0] + 1), v48[1]);
      OUTLINED_FUNCTION_49_23();
      v35 = OUTLINED_FUNCTION_11_7();
      sub_21753D3EC(v35, v36, v37, v38, v39);
      OUTLINED_FUNCTION_9_3();
      sub_217284498(v40);
      break;
    case 2:
      OUTLINED_FUNCTION_0_83(v3, v4, v5, v6, v7, v8, v9, v10, v43, *(&v43 + 1), *&v44[0], *(&v44[0] + 1), *&v44[1], *(&v44[1] + 1), v45, v46, v47, *(&v47 + 1), *&v48[0], *(&v48[0] + 1), v48[1]);
      OUTLINED_FUNCTION_50_18();
      v23 = OUTLINED_FUNCTION_11_7();
      sub_21753D3EC(v23, v24, v25, v26, v27);
      OUTLINED_FUNCTION_9_3();
      sub_217283C08(v28);
      break;
    case 3:
      OUTLINED_FUNCTION_0_83(v3, v4, v5, v6, v7, v8, v9, v10, v43, *(&v43 + 1), *&v44[0], *(&v44[0] + 1), *&v44[1], *(&v44[1] + 1), v45, v46, v47, *(&v47 + 1), *&v48[0], *(&v48[0] + 1), v48[1]);
      OUTLINED_FUNCTION_52_21();
      v29 = OUTLINED_FUNCTION_11_7();
      sub_21753D3EC(v29, v30, v31, v32, v33);
      OUTLINED_FUNCTION_9_3();
      sub_21726B8C4(v34);
      break;
    case 4:
      OUTLINED_FUNCTION_0_83(v3, v4, v5, v6, v7, v8, v9, v10, v43, *(&v43 + 1), *&v44[0], *(&v44[0] + 1), *&v44[1], *(&v44[1] + 1), v45, v46, v47, *(&v47 + 1), *&v48[0], *(&v48[0] + 1), v48[1]);
      OUTLINED_FUNCTION_51_17();
      v17 = OUTLINED_FUNCTION_11_7();
      sub_21753D3EC(v17, v18, v19, v20, v21);
      OUTLINED_FUNCTION_9_3();
      sub_217283B58(v22);
      break;
    case 5:
      v43 = v47;
      v44[0] = v48[0];
      *(v44 + 9) = *(v48 + 9);
      v41 = OUTLINED_FUNCTION_11_7();
      v2 = sub_217541484(v41);
      sub_2171F0790(&v43, &qword_27CB29208, &qword_217775F10);
      break;
    default:
      OUTLINED_FUNCTION_0_83(v3, v4, v5, v6, v7, v8, v9, v10, v43, *(&v43 + 1), *&v44[0], *(&v44[0] + 1), *&v44[1], *(&v44[1] + 1), v45, v46, v47, *(&v47 + 1), *&v48[0], *(&v48[0] + 1), v48[1]);
      OUTLINED_FUNCTION_48_17();
      v11 = OUTLINED_FUNCTION_11_7();
      sub_21753D3EC(v11, v12, v13, v14, v15);
      OUTLINED_FUNCTION_9_3();
      sub_21725CE44(v16);
      break;
  }

  return v2;
}

uint64_t sub_217541484(char a1)
{
  sub_21754240C(v1, v11, &qword_27CB29208, &qword_217775F10);
  if (v12)
  {
    sub_2171F3F0C(v11, v8);
    v3 = v9;
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v7 = a1;
    v5 = (*(*(v4 + 16) + 40))(&v7, v3);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    v5 = sub_217751DC8();
    sub_2171F0790(v11, &qword_27CB29208, &qword_217775F10);
  }

  return v5;
}

BOOL sub_217541574(uint64_t a1)
{
  v1 = sub_217752DC8();

  return v1 != 0;
}

BOOL sub_2175415E4@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_217541574(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_217541618@<X0>(void *a1@<X8>)
{
  result = sub_2175415BC();
  *a1 = 0xD000000000000028;
  a1[1] = v3;
  return result;
}

uint64_t sub_217541680@<X0>(uint64_t a1@<X8>)
{
  result = sub_21754240C(v1, v10, &qword_27CB29208, &qword_217775F10);
  if (v11)
  {
    sub_2171F3F0C(v10, v7);
    v5 = v8;
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    (*(*(*(v4 + 8) + 8) + 8))(v5);
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    v6 = v10[0];
    *(a1 + 24) = &type metadata for LegacyModelLibrarySearchTopResult.Placeholder;
    *(a1 + 32) = &protocol witness table for LegacyModelLibrarySearchTopResult.Placeholder;
    *a1 = v6;
  }

  return result;
}

unint64_t sub_217541770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29250;
  if (!qword_27CB29250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29250);
  }

  return result;
}

unint64_t sub_2175417C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29258;
  if (!qword_27CB29258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29258);
  }

  return result;
}

unint64_t sub_217541818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29268;
  if (!qword_27CB29268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29268);
  }

  return result;
}

unint64_t sub_21754186C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29270;
  if (!qword_27CB29270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29270);
  }

  return result;
}

unint64_t sub_2175418C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29278;
  if (!qword_27CB29278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29278);
  }

  return result;
}

unint64_t sub_217541914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29280;
  if (!qword_27CB29280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29280);
  }

  return result;
}

unint64_t sub_217541968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29288;
  if (!qword_27CB29288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29288);
  }

  return result;
}

unint64_t sub_2175419BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29290;
  if (!qword_27CB29290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29290);
  }

  return result;
}

unint64_t sub_217541A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29298;
  if (!qword_27CB29298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29298);
  }

  return result;
}

unint64_t sub_217541A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB292A0;
  if (!qword_27CB292A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB292A0);
  }

  return result;
}

unint64_t sub_217541AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB292A8;
  if (!qword_27CB292A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB292A8);
  }

  return result;
}

unint64_t sub_217541B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB292B0;
  if (!qword_27CB292B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB292B0);
  }

  return result;
}

uint64_t static LegacyModelLibrarySearchTopResult.typeValue.getter()
{
  if (qword_280BE2E30 != -1)
  {
    OUTLINED_FUNCTION_44_21(&qword_280BE2E30);
  }

  OUTLINED_FUNCTION_204_0(&xmmword_280BE2E38);

  return sub_217751DE8();
}

uint64_t sub_217541BE8()
{
  if (qword_280BE2E30 != -1)
  {
    OUTLINED_FUNCTION_44_21(&qword_280BE2E30);
  }

  xmmword_280BE6320 = xmmword_280BE2E38;
  qword_280BE6330 = qword_280BE2E48;
  unk_280BE6338 = unk_280BE2E50;

  return sub_217751DE8();
}

uint64_t static MusicItemTypeValue.legacyModelLibrarySearchTopResult.getter()
{
  if (qword_280BE6318 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_204_0(&xmmword_280BE6320);

  return sub_217751DE8();
}

uint64_t sub_217541CB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A08, &qword_217758FC0);
  v0 = swift_allocObject();
  v0[1] = xmmword_217775F00;
  if (qword_280BE62F0 != -1)
  {
    swift_once();
  }

  v1 = xmmword_280BE6308;
  v0[2] = xmmword_280BE62F8;
  v0[3] = v1;
  v2 = qword_280BE6270;
  sub_217751DE8();
  if (v2 != -1)
  {
    swift_once();
  }

  v3 = xmmword_280BE6288;
  v0[4] = xmmword_280BE6278;
  v0[5] = v3;
  v4 = qword_280BE6378;
  sub_217751DE8();
  if (v4 != -1)
  {
    swift_once();
  }

  v5 = xmmword_280BE6390;
  v0[6] = xmmword_280BE6380;
  v0[7] = v5;
  v6 = qword_280BE6220;
  sub_217751DE8();
  if (v6 != -1)
  {
    swift_once();
  }

  v7 = xmmword_280BE6238;
  v0[8] = xmmword_280BE6228;
  v0[9] = v7;
  v8 = qword_280BEB138;
  sub_217751DE8();
  if (v8 != -1)
  {
    swift_once();
  }

  v9 = xmmword_280BEB150;
  v0[10] = xmmword_280BEB140;
  v0[11] = v9;
  qword_27CB29200 = v0;

  return sub_217751DE8();
}

uint64_t static LegacyModelLibrarySearchTopResult.supportedTypeValues.getter()
{
  if (qword_27CB23C40 != -1)
  {
    swift_once();
  }

  return sub_217751DE8();
}

uint64_t MusicLibrarySearchResponse.TopResult.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 56);
  if (v3 >= 5)
  {
    result = sub_217541740(result);
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    LOBYTE(v3) = -1;
  }

  else
  {
    v4 = *(result + 48);
    v6 = *(result + 16);
    v5 = *(result + 32);
    *a2 = *result;
    *(a2 + 16) = v6;
    *(a2 + 32) = v5;
    *(a2 + 48) = v4;
  }

  *(a2 + 56) = v3;
  return result;
}

double MusicLibrarySearchResponse.TopResult.convertToLegacyModelLibrarySearchTopResult()()
{
  v1 = OUTLINED_FUNCTION_68_1();
  sub_2172843E8(v1, v5);
  v2 = v8;
  v3 = v5[1];
  *v0 = v5[0];
  *(v0 + 16) = v3;
  result = *&v6;
  *(v0 + 32) = v6;
  *(v0 + 48) = v7;
  *(v0 + 56) = v2;
  return result;
}

uint64_t LegacyModelLibrarySearchTopResult.Placeholder.id.getter()
{
  v1 = *v0;
  sub_217751DE8();
  return v1;
}

uint64_t static LegacyModelLibrarySearchTopResult.Placeholder.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_217753058();
  }
}

uint64_t sub_217542018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217542470(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217542054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217542470(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void LegacyModelLibrarySearchTopResult.Placeholder.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB292F8, &qword_217775FA0);
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  v8 = v18 - v7;
  v9 = *v0;
  v10 = v0[1];
  v11 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_217542470(v11, v12, v13);
  sub_217751DE8();
  v14 = sub_2177532F8();
  v18[0] = v9;
  v18[1] = v10;
  sub_2172E1B18(v14, v15, v16);
  sub_217752F88();

  (*(v5 + 8))(v8, v3, v17);
  OUTLINED_FUNCTION_170();
}

uint64_t LegacyModelLibrarySearchTopResult.Placeholder.hashValue.getter()
{
  sub_2177531E8();
  sub_217751FF8();
  return sub_217753238();
}

void LegacyModelLibrarySearchTopResult.Placeholder.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29308, &qword_217775FA8);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v10 = v18 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_217542470(v11, v12, v13);
  v14 = sub_2177532C8();
  if (!v0)
  {
    sub_2172E1C68(v14, v15, v16);
    sub_217752EA8();
    (*(v7 + 8))(v10, v5);
    v17 = v18[1];
    *v4 = v18[0];
    v4[1] = v17;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_170();
}

uint64_t sub_2175423BC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB29208, &qword_217775F10);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21754240C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_41_0();
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_217542470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29300;
  if (!qword_27CB29300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29300);
  }

  return result;
}

unint64_t sub_2175424C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29310;
  if (!qword_27CB29310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29310);
  }

  return result;
}

unint64_t sub_21754251C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217542554(a1, a2, a3);
  a1[2] = v4;
  v7 = sub_2175425A8(v4, v5, v6);
  a1[3] = v7;
  result = sub_2175425FC(v7, v8, v9);
  a1[4] = result;
  return result;
}

unint64_t sub_217542554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE2E58;
  if (!qword_280BE2E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2E58);
  }

  return result;
}

unint64_t sub_2175425A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE2E70;
  if (!qword_280BE2E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2E70);
  }

  return result;
}

unint64_t sub_2175425FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE2E68;
  if (!qword_280BE2E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2E68);
  }

  return result;
}

unint64_t sub_217542654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE2E60;
  if (!qword_280BE2E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2E60);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2175426DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 57))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 56);
  if (v3 >= 6)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217542718(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t sub_217542768(uint64_t result, unsigned int a2)
{
  if (a2 > 5)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 6;
    LOBYTE(a2) = 6;
  }

  *(result + 56) = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for LegacyModelLibrarySearchTopResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2175428FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29318;
  if (!qword_27CB29318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29318);
  }

  return result;
}

unint64_t sub_217542954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29320;
  if (!qword_27CB29320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29320);
  }

  return result;
}

unint64_t sub_2175429AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29328;
  if (!qword_27CB29328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29328);
  }

  return result;
}

unint64_t sub_217542A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29330;
  if (!qword_27CB29330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29330);
  }

  return result;
}

unint64_t sub_217542A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29338;
  if (!qword_27CB29338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29338);
  }

  return result;
}

unint64_t sub_217542AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29340;
  if (!qword_27CB29340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29340);
  }

  return result;
}

unint64_t sub_217542B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29348;
  if (!qword_27CB29348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29348);
  }

  return result;
}

unint64_t sub_217542B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29350;
  if (!qword_27CB29350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29350);
  }

  return result;
}

unint64_t sub_217542BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29358;
  if (!qword_27CB29358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29358);
  }

  return result;
}

unint64_t sub_217542C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29360;
  if (!qword_27CB29360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29360);
  }

  return result;
}

unint64_t sub_217542C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29368;
  if (!qword_27CB29368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29368);
  }

  return result;
}

unint64_t sub_217542CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29370;
  if (!qword_27CB29370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29370);
  }

  return result;
}

unint64_t sub_217542D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29378;
  if (!qword_27CB29378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29378);
  }

  return result;
}

unint64_t sub_217542D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29380;
  if (!qword_27CB29380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29380);
  }

  return result;
}

unint64_t sub_217542DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29388;
  if (!qword_27CB29388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29388);
  }

  return result;
}

unint64_t sub_217542E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29390;
  if (!qword_27CB29390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29390);
  }

  return result;
}

unint64_t sub_217542E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29398;
  if (!qword_27CB29398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29398);
  }

  return result;
}

unint64_t sub_217542ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB293A0;
  if (!qword_27CB293A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB293A0);
  }

  return result;
}

unint64_t sub_217542F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB293A8;
  if (!qword_27CB293A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB293A8);
  }

  return result;
}

unint64_t sub_217542F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB293B0;
  if (!qword_27CB293B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB293B0);
  }

  return result;
}

unint64_t sub_217542FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB293B8;
  if (!qword_27CB293B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB293B8);
  }

  return result;
}

unint64_t sub_217543034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB293C0;
  if (!qword_27CB293C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB293C0);
  }

  return result;
}

unint64_t sub_21754308C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB293C8;
  if (!qword_27CB293C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB293C8);
  }

  return result;
}

unint64_t sub_2175430E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB293D0;
  if (!qword_27CB293D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB293D0);
  }

  return result;
}

_BYTE *sub_217543138(_BYTE *result, int a2, int a3)
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

unint64_t sub_2175431E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2172A5230(a1, a2, a3);
  *(a1 + 8) = v4;
  result = sub_217543210(v4, v5, v6);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_217543210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB293F0;
  if (!qword_27CB293F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB293F0);
  }

  return result;
}

unint64_t sub_217543268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE2E78;
  if (!qword_280BE2E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2E78);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_38()
{
  STACK[0x208] = v0;

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_15_43()
{
  v1 = *(v0 - 208);
  *(v0 - 160) = *(v0 - 224);
  *(v0 - 144) = v1;
  *(v0 - 128) = *(v0 - 192);
  *(v0 - 119) = *(v0 - 183);
  return *(v0 - 232);
}

uint64_t OUTLINED_FUNCTION_16_44(uint64_t a1, uint64_t a2)
{

  return sub_217752DE8();
}

uint64_t OUTLINED_FUNCTION_20_32(uint64_t a1, uint64_t a2)
{

  return sub_217752EE8();
}

void OUTLINED_FUNCTION_21_33(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  sub_2172B6904(v65, &a15, &STACK[0x208], &a65, &a23);
}

uint64_t OUTLINED_FUNCTION_34_26(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_40_23(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_41_22(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_42_23(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_43_17(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_53_17()
{

  return sub_2171F0790(v1, v0, v2);
}

void *OUTLINED_FUNCTION_60_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  return memcpy(va, &STACK[0x230], 0x161uLL);
}

uint64_t OUTLINED_FUNCTION_61_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);

  return sub_21753DFEC(va1, va);
}

uint64_t OUTLINED_FUNCTION_62_16()
{

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_63_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_21749A32C(v9, &a9);
}

uint64_t OUTLINED_FUNCTION_65_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_21749A32C(v4, va);
}

uint64_t OUTLINED_FUNCTION_72_12()
{

  return sub_217752F88();
}

id OUTLINED_FUNCTION_73_14(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

void sub_2175435D0(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_0_84(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2173B716C(v4, 1);
  OUTLINED_FUNCTION_7_50();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_77();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = OUTLINED_FUNCTION_3_71(v3 + v7);
  memcpy(v9, v10, v11);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_6_57();
  if (!v5)
  {
    *(v3 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_21754365C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_0_84(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2173B7184(v4, 1);
  OUTLINED_FUNCTION_7_50();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_77();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_3_71(v3 + 24 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_6_57();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_2175436F4(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_0_84(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2173B719C(v4, 1);
  OUTLINED_FUNCTION_7_50();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_77();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = OUTLINED_FUNCTION_3_71(v3 + v7);
  memcpy(v9, v10, v11);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_6_57();
  if (!v5)
  {
    *(v3 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_2175437A8(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_0_84(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2173B71E4(v4, 1);
  OUTLINED_FUNCTION_7_50();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_77();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_3_71(v3 + 16 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_6_57();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_2175438A8(uint64_t a1)
{
  v4 = sub_217751428();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v10 = (v9 - v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB294E8, &qword_217776E50);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17.n128_f64[0] = MEMORY[0x28223BE20](v15);
  v19 = v46 - v18;
  v20 = *(a1 + 16);
  v21 = *(*v1 + 16);
  if (__OFADD__(v21, v20))
  {
    __break(1u);
    goto LABEL_10;
  }

  v59 = v16;
  v60 = v10;
  sub_2173B71CC(v21 + v20, 1);
  v2 = *v1;
  v10 = *(v6 + 72);
  v22 = (*(*v1 + 24) >> 1) - *(*v1 + 16);
  v58 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  sub_2176F80F0();
  if (v23 < v20)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v23)
  {
    v26 = *(v2 + 16);
    v27 = __OFADD__(v26, v23);
    v28 = v26 + v23;
    if (v27)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v2 + 16) = v28;
  }

  if (v23 != v22)
  {
    sub_2172303F0(v61);
LABEL_8:
    *v1 = v2;
    return;
  }

LABEL_11:
  v20 = *(v2 + 16);
  v24 = v62;
  v52 = v61;
  v25 = v63;
  v22 = v64;
  v50 = v62;
  v46[1] = v63;
  if (v65)
  {
    v29 = (v65 - 1) & v65;
    v30 = __clz(__rbit64(v65)) | (v64 << 6);
    v49 = (v63 + 64) >> 6;
LABEL_19:
    (*(v6 + 16))(v19, *(v52 + 48) + v30 * v10, v4, v17);
    v33 = 0;
LABEL_20:
    __swift_storeEnumTagSinglePayload(v19, v33, 1, v4);
    v51 = (v6 + 16);
    v47 = (v6 + 8);
    v48 = (v6 + 32);
    v34 = v20;
    v53 = v13;
    v56 = v19;
    while (2)
    {
      v35 = v59;
      sub_2175471C0(v19, v59);
      if (__swift_getEnumTagSinglePayload(v35, 1, v4) != 1)
      {
        sub_217547230(v35);
        v36 = *(v2 + 24);
        v55 = v36 >> 1;
        if ((v36 >> 1) < v34 + 1)
        {
          sub_2172B1A50(v36 > 1, v34 + 1, 1, v2);
          v2 = v45;
          v55 = *(v45 + 24) >> 1;
        }

        v57 = v34;
        v54 = v2 + v58;
        v37 = v48;
        while (1)
        {
          sub_2175471C0(v19, v13);
          if (__swift_getEnumTagSinglePayload(v13, 1, v4) == 1)
          {
            break;
          }

          v38 = *v37;
          v39 = v60;
          (*v37)(v60, v13, v4);
          v40 = v4;
          v41 = v57;
          if (v57 >= v55)
          {
            (*v47)(v39, v40);
            v4 = v40;
            v13 = v53;
            v19 = v56;
            goto LABEL_39;
          }

          sub_217547230(v56);
          v38(v54 + v41 * v10, v39, v40);
          v4 = v40;
          if (!v29)
          {
            v19 = v56;
            v35 = v57;
            v13 = v53;
            while (1)
            {
              v42 = v22 + 1;
              if (__OFADD__(v22, 1))
              {
                break;
              }

              if (v42 >= v49)
              {
                v29 = 0;
                v44 = 1;
                goto LABEL_35;
              }

              v29 = *(v50 + 8 * v42);
              ++v22;
              if (v29)
              {
                v22 = v42;
                goto LABEL_34;
              }
            }

            __break(1u);
            goto LABEL_41;
          }

          v42 = v22;
          v19 = v56;
          v35 = v57;
          v13 = v53;
LABEL_34:
          v43 = __clz(__rbit64(v29));
          v29 &= v29 - 1;
          (*v51)(v19, *(v52 + 48) + (v43 | (v42 << 6)) * v10, v4);
          v44 = 0;
LABEL_35:
          v57 = v35 + 1;
          __swift_storeEnumTagSinglePayload(v19, v44, 1, v4);
        }

        sub_217547230(v13);
LABEL_39:
        v34 = v57;
        *(v2 + 16) = v57;
        continue;
      }

      break;
    }

LABEL_41:
    sub_217547230(v19);
    sub_2172303F0(v52);
    sub_217547230(v35);
    goto LABEL_8;
  }

LABEL_14:
  v49 = (v25 + 64) >> 6;
  while (1)
  {
    v31 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v31 >= ((v25 + 64) >> 6))
    {
      v29 = 0;
      v33 = 1;
      goto LABEL_20;
    }

    v32 = *(v24 + 8 * v31);
    ++v22;
    if (v32)
    {
      v29 = (v32 - 1) & v32;
      v30 = __clz(__rbit64(v32)) | (v31 << 6);
      v22 = v31;
      goto LABEL_19;
    }
  }

  __break(1u);
}

void sub_217543D94(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_0_84(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2173B71FC(v4, 1);
  OUTLINED_FUNCTION_7_50();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_77();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_3_71(v3 + 32 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_6_57();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_217543E50(uint64_t a1)
{
  OUTLINED_FUNCTION_5_59(a1);
  if (v4)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_15_44();
  v5();
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  v8 = OUTLINED_FUNCTION_13_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v10 = *(v6 + 16);
  v4 = __OFADD__(v10, v1);
  v11 = v10 + v1;
  if (!v4)
  {
    *(v6 + 16) = v11;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_21754431C(uint64_t a1)
{
  OUTLINED_FUNCTION_5_59(a1);
  if (v4)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_15_44();
  v5();
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = OUTLINED_FUNCTION_13_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v9 = *(v6 + 16);
  v4 = __OFADD__(v9, v1);
  v10 = v9 + v1;
  if (!v4)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_217544414(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_5_59(a1);
  if (v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v6;
  v5(v4, 1);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  v8(0);
  if (v10 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return;
  }

  v11 = *(v9 + 16);
  v7 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (!v7)
  {
    *(v9 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_21754451C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_0_84(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2173B7274(v4, 1);
  OUTLINED_FUNCTION_7_50();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_77();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_3_71(v3 + 16 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_6_57();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void *Dictionary<>.init<A>(from:skippingValuesFoundIn:)(void *a1, uint64_t a2, uint64_t a3)
{
  v32 = a1;
  v5 = sub_217753268();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  *(&v30 + 1) = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v29);
  v13 = *(a3 - 8);
  v26 = a2;
  v27 = a3;
  (*(v13 + 16))(boxed_opaque_existential_0, a2, a3);
  sub_217753248();
  sub_217753258();
  sub_217752C58();
  v14 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_217752D78();
    if (!*(&v31 + 1))
    {
      break;
    }

    v28[0] = v30;
    v28[1] = v31;
    v15 = v29;
    __swift_destroy_boxed_opaque_existential_1(v28);
    if (*(&v15 + 1))
    {
      v25 = v7;
      v16 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_13_40();
        v14 = v19;
      }

      v18 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v18 >= v17 >> 1)
      {
        v20 = OUTLINED_FUNCTION_57(v17);
        sub_2172AFF2C(v20, v18 + 1, 1, v14);
        v14 = v21;
      }

      *(v14 + 16) = v18 + 1;
      *(v14 + 16 * v18 + 32) = v15;
      v5 = v16;
      v7 = v25;
    }
  }

  v22 = v32;
  sub_2171FF30C(v32, &v29);
  v23 = sub_217544F40(&v29);
  (*(v13 + 8))(v26, v27);
  __swift_destroy_boxed_opaque_existential_1(v22);
  (*(v7 + 8))(v11, v5);
  return v23;
}

void *Dictionary<>.init(from:skippingValuesFor:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a1;
  v9 = *(a2 + 16);
  if (v9)
  {
    v27 = MEMORY[0x277D84F90];
    sub_217275C90(0, v9, 0, a4, a5, a6, a7);
    v10 = v27;
    v11 = a2 + 32;
    do
    {
      sub_2171FF30C(v11, v26);
      __swift_project_boxed_opaque_existential_1(v26, v26[3]);
      v12 = sub_217753318();
      v14 = v13;
      __swift_destroy_boxed_opaque_existential_1(v26);
      v27 = v10;
      v16 = *(v10 + 16);
      v15 = *(v10 + 24);
      if (v16 >= v15 >> 1)
      {
        v18 = OUTLINED_FUNCTION_57(v15);
        sub_217275C90(v18, v16 + 1, 1, v19, v20, v21, v22);
        v10 = v27;
      }

      *(v10 + 16) = v16 + 1;
      v17 = v10 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      v11 += 40;
      --v9;
    }

    while (v9);

    v8 = a1;
  }

  else
  {
  }

  sub_2171FF30C(v8, v26);
  v23 = sub_217544F40(v26);
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v23;
}

void *Dictionary<>.init<A>(from:skippingValuesFoundIn:and:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = sub_217753268();
  OUTLINED_FUNCTION_0();
  v45 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  *(&v49 + 1) = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v48);
  v41 = *(a4 - 8);
  v43 = a4;
  (*(v41 + 16))(boxed_opaque_existential_0, a2, a4);
  sub_217753248();
  v42 = v11;
  sub_217753258();
  sub_217752C58();
  v13 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_217752D78();
    if (!*(&v50 + 1))
    {
      break;
    }

    v47[0] = v49;
    v47[1] = v50;
    v14 = v48;
    __swift_destroy_boxed_opaque_existential_1(v47);
    if (*(&v14 + 1))
    {
      v15 = a3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_13_40();
        v13 = v18;
      }

      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v17 >= v16 >> 1)
      {
        v19 = OUTLINED_FUNCTION_57(v16);
        sub_2172AFF2C(v19, v17 + 1, 1, v13);
        v13 = v20;
      }

      *(v13 + 16) = v17 + 1;
      *(v13 + 16 * v17 + 32) = v14;
      a3 = v15;
    }
  }

  v25 = *(a3 + 16);
  if (v25)
  {
    v46 = MEMORY[0x277D84F90];
    sub_217275C90(0, v25, 0, v21, v22, v23, v24);
    v26 = v46;
    v27 = a3 + 32;
    do
    {
      sub_2171FF30C(v27, &v48);
      __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
      v28 = sub_217753318();
      v30 = v29;
      __swift_destroy_boxed_opaque_existential_1(&v48);
      v32 = *(v46 + 16);
      v31 = *(v46 + 24);
      if (v32 >= v31 >> 1)
      {
        v34 = OUTLINED_FUNCTION_57(v31);
        sub_217275C90(v34, v32 + 1, 1, v35, v36, v37, v38);
      }

      *(v46 + 16) = v32 + 1;
      v33 = v46 + 16 * v32;
      *(v33 + 32) = v28;
      *(v33 + 40) = v30;
      v27 += 40;
      --v25;
    }

    while (v25);
  }

  else
  {

    v26 = MEMORY[0x277D84F90];
  }

  sub_2171FF30C(a1, &v48);
  sub_2175437A8(v26);
  v39 = sub_217544F40(&v48);
  (*(v41 + 8))(a2, v43);
  __swift_destroy_boxed_opaque_existential_1(a1);
  (*(v45 + 8))(v42, v51);
  return v39;
}

uint64_t Dictionary<>.merging<A>(withValuesFoundIn:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  (*(v13 + 16))(v11 - v10);
  sub_2171FF30C(a2, v17);
  result = sub_217545454(v12, v17, a4, a5);
  if (!v5)
  {
    v15 = result;
    v16 = sub_217751DE8();
    return sub_2174D37FC(v16, v15);
  }

  return result;
}

uint64_t sub_217544D9C(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_217545730(a1, sub_217747ADC, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t Dictionary<>.merging<A>(withValuesFoundIn:and:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  (*(v14 + 16))(v12 - v11);
  sub_2171FF30C(a3, v20);
  result = sub_217545454(v13, v20, a5, a6);
  if (!v6)
  {
    v16 = result;
    v17 = sub_217751DE8();
    v18 = sub_217544D9C(v17, v16);
    v19 = sub_217751DE8();
    return sub_217544D9C(v19, v18);
  }

  return result;
}

void *sub_217544F40(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB294F0, &qword_217776E58);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v56 - v8;
  v10 = a1[3];
  v56 = a1;
  v11 = __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_21738B390(v11, v12, v13);
  sub_2177532C8();
  v14 = v1;
  if (!v1)
  {
    v59 = v4;
    v60 = v6;
    v58 = v9;
    isUniquelyReferenced_nonNull_native = sub_217752EB8();
    v16 = 0;
    v64 = *(isUniquelyReferenced_nonNull_native + 16);
    v70 = isUniquelyReferenced_nonNull_native;
    v17 = isUniquelyReferenced_nonNull_native + 40;
    v61 = MEMORY[0x277D84F90];
    for (i = isUniquelyReferenced_nonNull_native + 40; ; v17 = i)
    {
      for (j = (v17 + 16 * v16); ; j += 2)
      {
        if (v64 == v16)
        {

          v27 = sub_217751DC8();
          v2 = v27;
          v30 = 0;
          v32 = v60;
          v31 = v61;
          v57 = *(v61 + 16);
          v33 = (v61 + 40);
          v34 = v58;
          v35 = v59;
          while (1)
          {
            if (v57 == v30)
            {
              (*(v32 + 8))(v34, v35);

              __swift_destroy_boxed_opaque_existential_1(v56);
              return v2;
            }

            if (v30 >= *(v31 + 16))
            {
              goto LABEL_32;
            }

            v37 = *(v33 - 1);
            v36 = *v33;
            v70 = v33;
            v65 = v37;
            v66 = v36;
            sub_21733AD70(v27, v28, v29);
            sub_217751DE8();
            sub_217752EA8();
            if (v14)
            {
              (*(v32 + 8))(v34, v35);

              goto LABEL_29;
            }

            v62 = v30;
            i = 0;
            v38 = v37;
            v40 = v67;
            v39 = v68;
            v41 = v69;
            swift_isUniquelyReferenced_nonNull_native();
            v67 = v2;
            v64 = v38;
            v42 = sub_21763246C(v38, v36);
            if (__OFADD__(v2[2], (v43 & 1) == 0))
            {
              goto LABEL_33;
            }

            v44 = v42;
            v45 = v43;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B88, &qword_2177595B0);
            v27 = sub_217752CB8();
            if (v27)
            {
              v27 = sub_21763246C(v64, v36);
              v32 = v60;
              if ((v45 & 1) != (v28 & 1))
              {
                goto LABEL_35;
              }

              v44 = v27;
              if (v45)
              {
LABEL_25:

                v2 = v67;
                v51 = v67[7] + 24 * v44;
                v52 = *v51;
                v53 = *(v51 + 8);
                *v51 = v40;
                *(v51 + 8) = v39;
                v54 = *(v51 + 16);
                *(v51 + 16) = v41;
                sub_21726A608(v52, v53, v54);
                goto LABEL_26;
              }
            }

            else
            {
              v32 = v60;
              if (v45)
              {
                goto LABEL_25;
              }
            }

            v2 = v67;
            v67[(v44 >> 6) + 8] |= 1 << v44;
            v46 = (v2[6] + 16 * v44);
            *v46 = v64;
            v46[1] = v36;
            v47 = v2[7] + 24 * v44;
            *v47 = v40;
            *(v47 + 8) = v39;
            *(v47 + 16) = v41;
            v48 = v2[2];
            v49 = __OFADD__(v48, 1);
            v50 = v48 + 1;
            if (v49)
            {
              goto LABEL_34;
            }

            v2[2] = v50;
LABEL_26:
            v33 = (v70 + 16);
            v14 = i;
            v30 = v62 + 1;
            v34 = v58;
            v35 = v59;
            v31 = v61;
          }
        }

        if (v16 >= *(v70 + 16))
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          result = sub_217753178();
          __break(1u);
          return result;
        }

        v19 = *(j - 1);
        v20 = *j;
        v67 = v19;
        v68 = v20;
        MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
        *(&v56 - 2) = &v67;
        swift_bridgeObjectRetain_n();
        v21 = sub_2171F8728();

        if (!v21)
        {
          break;
        }

        ++v16;
      }

      v22 = v61;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_217276D94(0, *(v22 + 16) + 1, 1);
        v22 = v65;
      }

      v24 = *(v22 + 16);
      v23 = *(v22 + 24);
      if (v24 >= v23 >> 1)
      {
        v26 = OUTLINED_FUNCTION_57(v23);
        sub_217276D94(v26, v24 + 1, 1);
        v22 = v65;
      }

      ++v16;
      *(v22 + 16) = v24 + 1;
      v61 = v22;
      v25 = v22 + 16 * v24;
      *(v25 + 32) = v19;
      *(v25 + 40) = v20;
    }
  }

LABEL_29:
  __swift_destroy_boxed_opaque_existential_1(v56);
  return v2;
}

uint64_t sub_217545454(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_217751378();
  swift_allocObject();
  v6 = sub_217751368();
  v7 = a2[3];
  v8 = a2[4];
  v9 = OUTLINED_FUNCTION_93();
  __swift_project_boxed_opaque_existential_1(v9, v10);
  Encoder.dataRequestConfiguration.getter(v7, v8);
  v11 = v6;
  JSONEncoder.dataRequestConfiguration.setter(v25);
  OUTLINED_FUNCTION_13_2();
  v12 = sub_217751358();
  if (v4)
  {
    v14 = OUTLINED_FUNCTION_13_2();
    v15(v14);

    __swift_destroy_boxed_opaque_existential_1(a2);
  }

  else
  {
    v16 = v13;
    v26 = v12;
    sub_217751348();
    swift_allocObject();
    sub_217751338();
    v17 = a2[3];
    v18 = a2[4];
    v19 = OUTLINED_FUNCTION_93();
    __swift_project_boxed_opaque_existential_1(v19, v20);
    Encoder.dataRequestConfiguration.getter(v17, v18);
    JSONDecoder.dataRequestConfiguration.setter(v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_2174CCE6C();
    v21 = v26;
    sub_217751308();
    v22 = OUTLINED_FUNCTION_13_2();
    v23(v22);

    sub_217275694(v21, v16);

    v11 = v25[0];
    __swift_destroy_boxed_opaque_existential_1(a2);
  }

  return v11;
}

uint64_t sub_2175456A0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {

    return a2();
  }

  return result;
}

uint64_t sub_217545730(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v73 = a5;
  sub_217747F44();
  v5 = v68;
  v6 = v70;
  v7 = v71;
  v55 = v72;
  v56 = v67;
  v8 = (v69 + 64) >> 6;
  sub_217751DE8();

  v53 = v8;
  v54 = v68;
  while (1)
  {
    v9 = v7;
    v10 = v6;
    if (!v7)
    {
      break;
    }

LABEL_7:
    v12 = __clz(__rbit64(v9)) | (v10 << 6);
    v13 = (*(v56 + 48) + 16 * v12);
    v14 = v13[1];
    v15 = *(v56 + 56) + 24 * v12;
    v17 = *v15;
    v16 = *(v15 + 8);
    v18 = *(v15 + 16);
    v60[0] = *v13;
    v60[1] = v14;
    v60[2] = v17;
    v60[3] = v16;
    v61 = v18;
    sub_217751DE8();
    sub_21726A5E0(v17, v16, v18);
    v55(&v62, v60);
    v19 = v61;

    v20 = OUTLINED_FUNCTION_93();
    sub_21726A608(v20, v21, v19);
    v22 = v63;
    if (!v63)
    {
LABEL_19:
      sub_2172303F0(v56);
    }

    v23 = v62;
    v25 = v64;
    v24 = v65;
    v58 = v66;
    v26 = *v73;
    v28 = sub_21763246C(v62, v63);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_21;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B88, &qword_2177595B0);
        sub_217752CC8();
      }
    }

    else
    {
      sub_217747120(v31, a4 & 1);
      v33 = sub_21763246C(v23, v22);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_23;
      }

      v28 = v33;
    }

    v57 = (v9 - 1) & v9;
    v35 = *v73;
    if (v32)
    {
      v36 = 3 * v28;
      v37 = v35[7] + 8 * v36;
      v38 = *v37;
      v39 = *(v37 + 8);
      v40 = *(v37 + 16);
      v41 = OUTLINED_FUNCTION_93();
      sub_21726A5E0(v41, v42, v40);
      sub_21726A608(v25, v24, v58);

      v43 = v35[7] + 8 * v36;
      v44 = *v43;
      v45 = *(v43 + 8);
      *v43 = v38;
      *(v43 + 8) = v39;
      v46 = *(v43 + 16);
      *(v43 + 16) = v40;
      sub_21726A608(v44, v45, v46);
    }

    else
    {
      v35[(v28 >> 6) + 8] |= 1 << v28;
      v47 = (v35[6] + 16 * v28);
      *v47 = v23;
      v47[1] = v22;
      v48 = v35[7] + 24 * v28;
      *v48 = v25;
      *(v48 + 8) = v24;
      *(v48 + 16) = v58;
      v49 = v35[2];
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        goto LABEL_22;
      }

      v35[2] = v51;
    }

    a4 = 1;
    v6 = v10;
    v8 = v53;
    v5 = v54;
    v7 = v57;
  }

  v11 = v6;
  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      goto LABEL_19;
    }

    v9 = *(v5 + 8 * v10);
    ++v11;
    if (v9)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_217753178();
  __break(1u);
  return result;
}

void sub_217545A58()
{
  OUTLINED_FUNCTION_11_47();
  if (v2)
  {
    v5 = sub_217752D38();
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = *(v4 + 16);
    if (!v5)
    {
LABEL_13:
      OUTLINED_FUNCTION_93();
      return;
    }
  }

  if (v1)
  {
    v6 = sub_217204DD0(v0);
    if (v6 > v3)
    {
      __break(1u);
    }

    else
    {
      if (!v2)
      {
        type metadata accessor for AnyMusicProperty();
        OUTLINED_FUNCTION_16_45();
        goto LABEL_13;
      }

      if (v5 >= 1)
      {
        v21 = v6;
        sub_217547298(&unk_27CB277D0, &qword_27CB24520, &unk_217758A10);
        do
        {
          v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24520, &unk_217758A10);
          v15 = OUTLINED_FUNCTION_9_44(v7, v8, v9, v10, v11, v12, v13, v14, v20, v21, v22[0]);
          v18 = sub_21773387C(v15, v16, v17);

          v18(v22, 0);
          OUTLINED_FUNCTION_14_39();
        }

        while (!v19);
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_217545B8C()
{
  OUTLINED_FUNCTION_11_47();
  if (v2)
  {
    v5 = sub_217752D38();
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = *(v4 + 16);
    if (!v5)
    {
LABEL_13:
      OUTLINED_FUNCTION_93();
      return;
    }
  }

  if (v1)
  {
    v6 = sub_217204DD0(v0);
    if (v6 > v3)
    {
      __break(1u);
    }

    else
    {
      if (!v2)
      {
        type metadata accessor for BatchNotificationCoalescer.Observer(0);
        OUTLINED_FUNCTION_16_45();
        goto LABEL_13;
      }

      if (v5 >= 1)
      {
        v21 = v6;
        sub_217547298(&qword_27CB294F8, &qword_27CB24AD0, &qword_2177590A0);
        do
        {
          v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24AD0, &qword_2177590A0);
          v15 = OUTLINED_FUNCTION_9_44(v7, v8, v9, v10, v11, v12, v13, v14, v20, v21, v22[0]);
          v18 = sub_217733A58(v15, v16, v17);

          v18(v22, 0);
          OUTLINED_FUNCTION_14_39();
        }

        while (!v19);
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_217545CC0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_217752D38();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_217204DD0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26A50, qword_217765A40);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_217547298(&qword_27CB29430, &qword_27CB29428, &qword_217776DF0);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29428, &qword_217776DF0);
          v9 = sub_217733A58(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_217545E40(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_217752D38();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_217204DD0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27A78, &qword_21776B6A8);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_217547298(&qword_27CB29450, &qword_27CB29448, &qword_217776E00);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29448, &qword_217776E00);
          v9 = sub_217733A58(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_217545FC0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_217752D38();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_217204DD0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27FA8, &qword_21776BF00);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_217547298(&qword_27CB294B0, &qword_27CB294A8, &qword_217776E30);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB294A8, &qword_217776E30);
          v9 = sub_217733A58(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_217546140(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_217752D38();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_217204DD0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27810, qword_217775A50);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_217547298(&qword_27CB29420, &qword_27CB29418, &qword_217776DE8);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29418, &qword_217776DE8);
          v9 = sub_217733A58(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2175462C0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_217752D38();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_217204DD0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB240B8, &qword_217757AF0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_217547298(&qword_27CB29400, &qword_27CB293F8, &qword_217776DD8);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB293F8, &qword_217776DD8);
          v9 = sub_217733A58(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_217546440(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_217752D38();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_217204DD0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27C70, &qword_21776B9D0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_217547298(&qword_27CB29470, &qword_27CB29468, &qword_217776E10);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29468, &qword_217776E10);
          v9 = sub_217733A58(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2175465C0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_217752D38();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_217204DD0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27DF8, &qword_21776BC68);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_217547298(&qword_27CB29490, &qword_27CB29488, &qword_217776E20);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29488, &qword_217776E20);
          v9 = sub_217733A58(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_217546740(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_217752D38();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_217204DD0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27B48, &qword_21776B800);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_217547298(&qword_27CB29460, &qword_27CB29458, &qword_217776E08);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29458, &qword_217776E08);
          v9 = sub_217733A58(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2175468C0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_217752D38();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_217204DD0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28128, &qword_21776C160);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_217547298(&qword_27CB294D0, &qword_27CB294C8, &qword_217776E40);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB294C8, &qword_217776E40);
          v9 = sub_217733A58(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_217546A40(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_217752D38();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_217204DD0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28068, &qword_21776C030);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_217547298(&qword_27CB294C0, &qword_27CB294B8, &qword_217776E38);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB294B8, &qword_217776E38);
          v9 = sub_217733A58(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_217546BC0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_217752D38();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_217204DD0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27D30, &qword_21776BB18);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_217547298(&qword_27CB29480, &qword_27CB29478, &qword_217776E18);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29478, &qword_217776E18);
          v9 = sub_217733A58(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_217546D40(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_217752D38();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_217204DD0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB279A8, &qword_21776B560);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_217547298(&qword_27CB29440, &qword_27CB29438, &qword_217776DF8);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29438, &qword_217776DF8);
          v9 = sub_217733A58(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_217546EC0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_217752D38();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_217204DD0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25C00, qword_21775ECD0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_217547298(&qword_27CB294E0, &qword_27CB294D8, &qword_217776E48);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB294D8, &qword_217776E48);
          v9 = sub_217733A58(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_217547040(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_217752D38();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_217204DD0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27EB8, &qword_21776BDA0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_217547298(&qword_27CB294A0, &qword_27CB29498, &qword_217776E28);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29498, &qword_217776E28);
          v9 = sub_217733A58(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2175471C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB294E8, &qword_217776E50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217547230(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB294E8, &qword_217776E50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217547298(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t OUTLINED_FUNCTION_16_45()
{

  return swift_arrayInitWithCopy();
}

uint64_t CloudAttribute.init(item:rawValues:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for CloudAttribute(0, a3, v7, v8);
  *(a4 + *(result + 28)) = a2;
  return result;
}

uint64_t CloudAttribute<A>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v20[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v20[-1] - v12;
  sub_2171FF30C(v14, v20);
  sub_217752608();
  if (v4)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_2171FF30C(a1, v20);
  (*(v8 + 16))(v10, v13, a2);
  v16 = Dictionary<>.init<A>(from:skippingValuesFoundIn:)(v20, v10, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  (*(v8 + 32))(a4, v13, a2);
  result = type metadata accessor for CloudAttribute(0, a2, v17, v18);
  *(a4 + *(result + 28)) = v16;
  return result;
}

void CloudAttribute<A>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + *(a2 + 28));
  if (*(v6 + 16))
  {
    v7 = Dictionary<>.merging<A>(withValuesFoundIn:for:)(v4, a1, v6, *(a2 + 16), a4);
    if (!v5)
    {
      sub_21733AC44(v7, v8, v9);
      sub_217751E48();
    }
  }

  else
  {
    sub_217751E88();
  }
}

void static CloudAttribute<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_217751F08())
  {
    v8 = *(type metadata accessor for CloudAttribute(0, a3, v6, v7) + 28);
    v9 = *(a1 + v8);
    v10 = *(a2 + v8);

    sub_217261FB0(v9, v10);
  }
}

uint64_t CloudAttribute<A>.hash(into:)(const void *a1, uint64_t a2, uint64_t a3)
{
  sub_217751EB8();
  v6 = *(v3 + *(a2 + 28));

  return sub_217265A08(a1, v6);
}

uint64_t CloudAttribute<A>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_2177531E8();
  CloudAttribute<A>.hash(into:)(v5, a1, a2);
  return sub_217753238();
}

uint64_t sub_217547810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_2177531E8();
  CloudAttribute<A>.hash(into:)(v6, a2, v4);
  return sub_217753238();
}

void sub_2175478AC(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_217351BFC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_217547934(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
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

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_217547A70(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
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

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t PlayParameters.Kind.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t PlayParameters.Kind.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  if (qword_280BE8A88 != -1)
  {
    swift_once();
  }

  v5 = OUTLINED_FUNCTION_2_81(&xmmword_280BE8A90);
  v7 = v7 && v6 == v3;
  if (v7 || (OUTLINED_FUNCTION_0_85(v5, v6) & 1) != 0)
  {
    goto LABEL_15;
  }

  if (qword_280BE8AE8 != -1)
  {
    swift_once();
  }

  v8 = OUTLINED_FUNCTION_2_81(&qword_280BE8AF0);
  v10 = v7 && v9 == v3;
  if (v10 || (OUTLINED_FUNCTION_0_85(v8, v9) & 1) != 0)
  {
LABEL_15:
    v11 = 0xE500000000000000;
    v12 = 0x6D75626C61;
  }

  else
  {
    if (qword_280BE8B48 != -1)
    {
      swift_once();
    }

    v14 = OUTLINED_FUNCTION_2_81(qword_280BE8B50);
    v16 = v7 && v15 == v3;
    if (v16 || (OUTLINED_FUNCTION_0_85(v14, v15) & 1) != 0)
    {
      v11 = 0xE500000000000000;
      v12 = 0x6569766F6DLL;
    }

    else
    {
      if (qword_280BE8B28 != -1)
      {
        swift_once();
      }

      v11 = 0xEA00000000006F65;
      v17 = OUTLINED_FUNCTION_2_81(&qword_280BE8B30);
      v19 = v7 && v18 == v3;
      if (v19 || (OUTLINED_FUNCTION_0_85(v17, v18) & 1) != 0)
      {
        goto LABEL_41;
      }

      if (qword_280BE8B68 != -1)
      {
        swift_once();
      }

      v20 = OUTLINED_FUNCTION_2_81(&qword_280BE8B70);
      v22 = v7 && v21 == v3;
      if (v22 || (OUTLINED_FUNCTION_0_85(v20, v21) & 1) != 0)
      {
LABEL_41:
        v12 = 0x646956636973756DLL;
      }

      else
      {
        if (qword_280BE8A38 != -1)
        {
          swift_once();
        }

        v23 = OUTLINED_FUNCTION_2_81(&qword_280BE8A40);
        v25 = v7 && v24 == v3;
        if (v25 || (OUTLINED_FUNCTION_0_85(v23, v24) & 1) != 0)
        {
          goto LABEL_56;
        }

        if (qword_280BE8AA8 != -1)
        {
          swift_once();
        }

        v26 = OUTLINED_FUNCTION_2_81(&qword_280BE8AB0);
        v28 = v7 && v27 == v3;
        if (v28 || (OUTLINED_FUNCTION_0_85(v26, v27) & 1) != 0)
        {
LABEL_56:
          v11 = 0xE800000000000000;
          v12 = 0x7473696C79616C70;
        }

        else
        {
          if (qword_280BE8AC8 != -1)
          {
            swift_once();
          }

          v11 = 0xEE007972746E4574;
          v29 = OUTLINED_FUNCTION_2_81(&xmmword_280BE8AD0);
          v31 = v7 && v30 == v3;
          if (v31 || (OUTLINED_FUNCTION_0_85(v29, v30) & 1) != 0)
          {
            v12 = 0x73696C79616C705FLL;
          }

          else
          {
            if (qword_280BE8A60 != -1)
            {
              swift_once();
            }

            v32 = OUTLINED_FUNCTION_2_81(&qword_280BE8A68);
            v34 = v7 && v33 == v3;
            if (v34 || (OUTLINED_FUNCTION_0_85(v32, v33) & 1) != 0)
            {
              v11 = 0xE700000000000000;
              v12 = 0x6E6F6974617473;
            }

            else
            {
              if (qword_280BEA1C8 != -1)
              {
                swift_once();
              }

              v35 = OUTLINED_FUNCTION_2_81(&xmmword_280BEA1D0);
              v37 = v7 && v36 == v3;
              if (v37 || (OUTLINED_FUNCTION_0_85(v35, v36) & 1) != 0)
              {
                goto LABEL_87;
              }

              if (qword_280BE8B08 != -1)
              {
                swift_once();
              }

              v38 = OUTLINED_FUNCTION_2_81(&qword_280BE8B10);
              v40 = v7 && v39 == v3;
              if (v40 || (OUTLINED_FUNCTION_0_85(v38, v39) & 1) != 0)
              {
LABEL_87:
                v11 = 0xE400000000000000;
                v12 = 1735290739;
              }

              else
              {
                if (qword_280BE49D8 != -1)
                {
                  swift_once();
                }

                v11 = 0xE900000000000065;
                v41 = OUTLINED_FUNCTION_2_81(qword_280BE49E0);
                v43 = v7 && v42 == v3;
                if (v43 || (OUTLINED_FUNCTION_0_85(v41, v42) & 1) != 0)
                {
                  v12 = 0x646F736970457674;
                }

                else
                {
                  if (qword_280BE4B40 != -1)
                  {
                    swift_once();
                  }

                  v11 = 0xED00006F69647541;
                  v44 = OUTLINED_FUNCTION_2_81(qword_280BE4B48);
                  v46 = v7 && v45 == v3;
                  if (!v46 && (OUTLINED_FUNCTION_0_85(v44, v45) & 1) == 0)
                  {
                    if (qword_280BE4B18 != -1)
                    {
                      swift_once();
                    }

                    v11 = 0xED00006F65646956;
                    v47 = OUTLINED_FUNCTION_2_81(qword_280BE4B20);
                    v49 = v7 && v48 == v3;
                    if (!v49 && (OUTLINED_FUNCTION_0_85(v47, v48) & 1) == 0)
                    {
                      sub_217752AA8();
                      MEMORY[0x21CEA23B0](0xD000000000000038, 0x80000002177B0290);
                      MEMORY[0x21CEA23B0](v4, v3);
                      MEMORY[0x21CEA23B0](34, 0xE100000000000000);
                      MEMORY[0x21CEA23B0](34, 0xE100000000000000);

                      MEMORY[0x21CEA23B0](46, 0xE100000000000000, v50);
                      result = sub_217752D08();
                      __break(1u);
                      return result;
                    }
                  }

                  v12 = 0x646564616F6C7075;
                }
              }
            }
          }
        }
      }
    }
  }

  *a2 = v12;
  a2[1] = v11;

  return sub_217751DE8();
}

uint64_t PlayParameters.Kind.rawValue.getter()
{
  v1 = *v0;
  sub_217751DE8();
  return v1;
}

uint64_t sub_2175483B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = PlayParameters.Kind.init(rawValue:)(*a1, a1[1], v5);
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_2175483F8@<X0>(uint64_t *a1@<X8>)
{
  result = PlayParameters.Kind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t PlayParameters.Kind.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_1_29();
  sub_2177532A8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    OUTLINED_FUNCTION_1_29();
    v5 = sub_217753078();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1(v9);
    *a2 = v5;
    a2[1] = v7;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PlayParameters.Kind.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2177532E8();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2177530B8();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t PlayParameters.Kind.description.getter()
{
  MEMORY[0x21CEA23B0](*v0, v0[1]);
  MEMORY[0x21CEA23B0](34, 0xE100000000000000);
  return 34;
}

unint64_t sub_2175485EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29500;
  if (!qword_27CB29500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29500);
  }

  return result;
}

uint64_t sub_217548654(void *a1)
{
  result = sub_217548710();
  if (result)
  {
    [a1 endGeneratingPlaybackNotifications];
    result = *(v1 + 24);
    if (result)
    {

      return [result beginGeneratingPlaybackNotifications];
    }
  }

  return result;
}

void sub_2175486B8(void *a1)
{
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
  v2 = a1;
  sub_217548654(v3);
}

BOOL sub_217548710()
{
  OUTLINED_FUNCTION_0_86();

  os_unfair_lock_lock(v2);
  v3 = *(v1 + 40) > 0;
  os_unfair_lock_unlock(*(v0 + 16));

  return v3;
}

void sub_217548770()
{
  OUTLINED_FUNCTION_0_86();

  os_unfair_lock_lock(v2);
  v3 = *(v1 + 40);
  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 40) = v4;
    os_unfair_lock_unlock(*(v0 + 16));

    if (v4 == 1)
    {
      [*(v1 + 24) beginGeneratingPlaybackNotifications];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244D8, &qword_2177589B0);
    sub_217548A0C();
    sub_217751C38();
  }
}

void sub_217548828()
{
  OUTLINED_FUNCTION_0_86();

  os_unfair_lock_lock(v2);
  v3 = *(v1 + 40);
  v4 = v3 - 1;
  if (__OFSUB__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 40) = v4;
    os_unfair_lock_unlock(*(v0 + 16));

    if (!v4)
    {
      v5 = *(v1 + 24);

      [v5 endGeneratingPlaybackNotifications];
    }
  }
}

uint64_t sub_2175488BC()
{

  return v0;
}

uint64_t sub_2175488EC()
{
  sub_2175488BC();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_217548944()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244D8, &qword_2177589B0);
  swift_allocObject();
  *(v0 + 16) = sub_217751B98();
  *(v0 + 24) = 0;
  type metadata accessor for UnfairLock();
  v2 = swift_allocObject();
  v3 = swift_slowAlloc();
  *(v2 + 16) = v3;
  *v3 = 0;
  *(v1 + 32) = v2;
  *(v1 + 40) = 0;
  return v1;
}

unint64_t sub_217548A0C()
{
  result = qword_27CB29508;
  if (!qword_27CB29508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB244D8, &qword_2177589B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29508);
  }

  return result;
}

uint64_t Station.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(const void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v110 = a3;
  v107 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  MEMORY[0x28223BE20](v6 - 8);
  v97 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v98 = &v97 - v9;
  MEMORY[0x28223BE20](v10);
  v106 = &v97 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28B38, &unk_217770C68);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v97 - v13;
  v15 = type metadata accessor for StationPropertyProvider(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v16);
  v18 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v97 - v20;

  memcpy(v119, a1, 0x161uLL);
  if (([a2 respondsToSelector_] & 1) != 0 && (v22 = objc_msgSend(a2, sel_musicKit_modelObjectStorageDictionary)) != 0)
  {
    v23 = v22;
    v24 = sub_217751D98();
  }

  else
  {
    v24 = sub_217751DC8();
  }

  v109 = a2;
  v25 = sub_21729F0C4(v24);

  memcpy(v115, a1, 0x161uLL);
  if (qword_280BE8A60 != -1)
  {
    swift_once();
  }

  v113[0] = qword_280BE8A68;
  v113[1] = unk_280BE8A70;
  LOBYTE(v113[2]) = byte_280BE8A78;
  memset(v112, 0, 17);
  sub_217751DE8();
  v120.value.rawValue._countAndFlagsBits = v113;
  v120.value.rawValue._object = v112;
  MusicIdentifierSet.cloudResourceIdentifier(catalogType:libraryType:)(&v114, v120, v121);

  object = v114.id.rawValue._object;
  countAndFlagsBits = v114.type.rawValue._countAndFlagsBits;
  v26 = v114.type.rawValue._object;
  isLibraryType = v114.type.isLibraryType;
  v105 = v114.href.value._countAndFlagsBits;
  v27 = v114.href.value._object;
  sub_2171F5110(v110, &v114, &qword_27CB27590, &qword_21776ADF0);
  v102 = v25;
  if (!v114.type.rawValue._object)
  {
    sub_2171F0738(&v114, &qword_27CB27590, &qword_21776ADF0);
    memset(v115, 0, 40);
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24408, &qword_21775A390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD60, &unk_217759470);
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(v115, 0, 40);
    goto LABEL_14;
  }

  if (!*(&v115[1] + 1))
  {
LABEL_14:
    sub_2171F0738(v115, &qword_27CB24B68, &qword_217759430);
    goto LABEL_15;
  }

  sub_2171F3F0C(v115, v116);
  v28 = v117;
  v29 = v118;
  __swift_project_boxed_opaque_existential_1(v116, v117);
  PropertyProviderBackedItem.staticPropertyProvider.getter(v28, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B38, &unk_21776C4E0);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
    sub_21754A000(v14, v18);
    sub_217549F40(v18, v21);
    memcpy(v115, v119, 0x161uLL);
    v30 = v15[27];
    memcpy(v112, &v18[v30], 0x161uLL);
    memcpy(v111, &v18[v30], sizeof(v111));
    sub_217269EF4(v112, &v114);
    MusicIdentifierSet.union(_:)();
    memcpy(v113, v111, 0x161uLL);
    sub_217269F50(v113);
    sub_217549FA4(v18);
    v31 = v15[27];
    memcpy(v115, &v21[v31], 0x161uLL);
    sub_217269F50(v115);
    memcpy(&v21[v31], &v114, 0x161uLL);
    v32 = &v21[v15[28]];
    sub_217751DE8();

    *v32 = countAndFlagsBits;
    *(v32 + 1) = v26;
    v32[16] = isLibraryType;
    v33 = &v21[v15[29]];

    *v33 = v105;
    *(v33 + 1) = v27;
    __swift_destroy_boxed_opaque_existential_1(v116);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v93, v94, v95, v15);
  sub_2171F0738(v14, &qword_27CB28B38, &unk_217770C68);
  __swift_destroy_boxed_opaque_existential_1(v116);
LABEL_15:
  sub_217269EF4(v119, v115);
  sub_217751DE8();
  sub_217751DE8();
  v101 = OUTLINED_FUNCTION_0_87();
  v100 = OUTLINED_FUNCTION_0_87();
  v34 = OUTLINED_FUNCTION_0_87();
  v35 = OUTLINED_FUNCTION_0_87();
  type metadata accessor for Station._AirTime(0);
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  v40 = v15[5];
  sub_2172A497C(v115);
  memcpy(&v21[v40], v115, 0x221uLL);
  v21[v15[6]] = 2;
  v41 = &v21[v15[7]];
  *v41 = 0;
  v41[8] = 1;
  *&v21[v15[8]] = 0;
  v42 = &v21[v15[9]];
  v99 = xmmword_2177586D0;
  *v42 = xmmword_2177586D0;
  *(v42 + 1) = 0u;
  *(v42 + 2) = 0u;
  *(v42 + 3) = 0u;
  *&v21[v15[10]] = 0;
  v43 = &v21[v15[11]];
  *v43 = 0;
  v43[8] = 1;
  v21[v15[12]] = 2;
  v21[v15[13]] = 14;
  memcpy(&v21[v15[14]], v115, 0x221uLL);
  OUTLINED_FUNCTION_19_17(v15[15]);
  v44 = &v21[v15[16]];
  *(v44 + 14) = 0;
  *(v44 + 5) = 0u;
  *(v44 + 6) = 0u;
  *(v44 + 3) = 0u;
  *(v44 + 4) = 0u;
  *(v44 + 1) = 0u;
  *(v44 + 2) = 0u;
  *v44 = 0u;
  OUTLINED_FUNCTION_19_17(v15[17]);
  v45 = sub_2177516D8();
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v45);
  OUTLINED_FUNCTION_19_17(v15[19]);
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v45);
  v52 = &v21[v15[21]];
  *v52 = v99;
  *(v52 + 2) = 0;
  *(v52 + 3) = 0;
  OUTLINED_FUNCTION_19_17(v15[22]);
  *&v21[v15[23]] = 0;
  v53 = &v21[v15[24]];
  *(v53 + 6) = 0u;
  *(v53 + 7) = 0u;
  *(v53 + 4) = 0u;
  *(v53 + 5) = 0u;
  *(v53 + 2) = 0u;
  *(v53 + 3) = 0u;
  *v53 = 0u;
  *(v53 + 1) = 0u;
  v54 = &v21[v15[25]];
  *(v54 + 12) = 0;
  *(v54 + 4) = 0u;
  *(v54 + 5) = 0u;
  *(v54 + 2) = 0u;
  *(v54 + 3) = 0u;
  *v54 = 0u;
  *(v54 + 1) = 0u;
  if (qword_280BE3758 != -1)
  {
    swift_once();
  }

  v55 = qword_280C01FC0;
  if (qword_280C01FC0 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v96 = sub_217752D28();

    object = v55;
    v55 = v96;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  *&v21[v15[26]] = v55;
  v56 = &v21[v15[29]];
  memcpy(&v21[v15[27]], v119, 0x161uLL);
  v57 = &v21[v15[28]];
  *v57 = countAndFlagsBits;
  *(v57 + 1) = v26;
  v57[16] = isLibraryType;
  *v56 = v105;
  *(v56 + 1) = v27;
  v58 = v100;
  *&v21[v15[30]] = v101;
  *&v21[v15[31]] = v58;
  *&v21[v15[32]] = v34;
  *&v21[v15[33]] = v35;
  v25 = v102;
LABEL_20:
  v59 = sub_217751F18();
  v60 = [v109 musicKit:v59 artworkCatalogForProperty:?];

  if (v60)
  {
    swift_getObjectType();
    v61 = sub_217717634();
    *&v111[24] = &type metadata for SoftLinking_ArtworkCatalog;
    *&v111[32] = &off_28297F3C8;
    swift_unknownObjectRelease();
    *v111 = v61;
    sub_2171F3F0C(v111, v112);
    sub_2171FF30C(v112, v115);
    v114.id.rawValue._countAndFlagsBits = 1;
    memset(&v114.id.rawValue._object, 0, 24);
    Artwork.init(_:alternateText:existingColorAnalysis:)(v115, 0, 0, &v114, v113);
    memcpy(&v114, v113, 0x221uLL);
    nullsub_1();
    v62 = v15[5];
    memcpy(v115, &v21[v62], 0x221uLL);
    sub_2171F0738(v115, &qword_27CB24400, &unk_21775E9A0);
    memcpy(&v21[v62], &v114, 0x221uLL);
    __swift_destroy_boxed_opaque_existential_1(v112);
  }

  swift_getKeyPath(byte_217777120);
  sub_2173ACB54();
  if (*(&v115[1] + 1))
  {
    v63 = swift_dynamicCast();
    if (v63)
    {
      v64 = v114.id.rawValue._countAndFlagsBits;
    }

    else
    {
      v64 = 0;
    }

    if (v63)
    {
      v65 = v114.id.rawValue._object;
    }

    else
    {
      v65 = 0;
    }
  }

  else
  {
    sub_2171F0738(v115, &qword_27CB2AD40, &qword_2177583F0);
    v64 = 0;
    v65 = 0;
  }

  sub_2173ACB54();
  if (*&v111[24])
  {
    v66 = swift_dynamicCast();
    v68 = *(&v115[0] + 1);
    v67 = *&v115[0];
    if (!v66)
    {
      v67 = 0;
      v68 = 0;
    }
  }

  else
  {
    sub_2171F0738(v111, &qword_27CB2AD40, &qword_2177583F0);
    v67 = 0;
    v68 = 0;
  }

  if (!(v65 | v68))
  {
    v64 = 0;
    v67 = 0;
    v68 = 0;
    v65 = 1;
  }

  v114.id.rawValue._countAndFlagsBits = v64;
  v114.id.rawValue._object = v65;
  v114.type.rawValue._countAndFlagsBits = v67;
  v114.type.rawValue._object = v68;
  memset(&v114.type.isLibraryType, 0, 32);
  v115[0] = v114.id;
  v115[1] = v114.type.rawValue;
  memset(&v115[2], 0, 32);
  sub_2172A54C0();

  sub_2171F0738(&v114, &qword_27CB24B70, &unk_217759460);
  v69 = v15[6];
  if (v21[v69] == 2)
  {
    v70 = sub_2172A3A18(2, v25);
    if (v70 != 2)
    {
      v21[v69] = v70 & 1;
    }
  }

  v71 = v15[12];
  if (v21[v71] == 2)
  {
    v72 = sub_2172A3A18(3, v25);
    if (v72 != 2)
    {
      v21[v71] = v72;
    }
  }

  v73 = &v21[v15[15]];
  if (!v73[1])
  {
    v74 = sub_2172A3A00(4, v25);
    if (v75)
    {
      *v73 = v74;
      v73[1] = v75;
    }
  }

  v76 = &v21[v15[17]];
  if (!v76[1])
  {
    v77 = sub_2172A3A00(5, v25);
    if (v78)
    {
      *v76 = v77;
      v76[1] = v78;
    }
  }

  v79 = v15[18];
  v80 = v25;
  v81 = v106;
  sub_2171F5110(&v21[v79], v106, &unk_27CB277C0, &qword_217758DC0);
  v82 = sub_2177516D8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v81, 1, v82);
  sub_2171F0738(v81, &unk_27CB277C0, &qword_217758DC0);
  if (EnumTagSinglePayload == 1)
  {
    v84 = v98;
    sub_2172A39D4(7, v80, v98);
    if (__swift_getEnumTagSinglePayload(v84, 1, v82) != 1)
    {
      v85 = v97;
      sub_2171F5110(v84, v97, &unk_27CB277C0, &qword_217758DC0);
      sub_2171F0738(&v21[v79], &unk_27CB277C0, &qword_217758DC0);
      sub_21751AF10(v85, &v21[v79]);
    }

    sub_2171F0738(v84, &unk_27CB277C0, &qword_217758DC0);
  }

  v86 = &v21[v15[19]];
  if (v86[1])
  {
  }

  else
  {
    v88 = sub_2172A3A00(6, v80);
    v90 = v89;

    if (v90)
    {
      *v86 = v88;
      v86[1] = v90;
    }
  }

  swift_getKeyPath("hk=e", v87);
  sub_2174AEA00();

  sub_217269F50(v119);
  v113[3] = v15;
  v113[4] = &protocol witness table for StationPropertyProvider;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v113);
  sub_217549F40(v21, boxed_opaque_existential_0);
  Station.init(propertyProvider:)(v113, v107);
  swift_unknownObjectRelease();
  sub_2171F0738(v110, &qword_27CB27590, &qword_21776ADF0);
  return sub_217549FA4(v21);
}

uint64_t Station.convertToLegacyModelStorageDictionary(for:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v131 - v1;
  sub_2172A51DC(v3, v4, v5);
  v138 = sub_217751DC8();
  if (qword_280BE6760 != -1)
  {
    swift_once();
  }

  sub_2176CABE4(qword_280C020A0, v6, v7, v8, v9, v10, v11, v12, v131[0], v131[1], v131[2], v131[3], v131[4], v131[5], v131[6], v131[7], v131[8], v131[9], v131[10], v131[11], v131[12], v131[13], v131[14], v131[15], v131[16], v131[17]);
  memcpy(v139, v136, 0x221uLL);
  memcpy(v140, v136, 0x221uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v140) == 1)
  {
    memset(v137, 0, sizeof(v137));
  }

  else
  {
    memcpy(v131, v140, 0x221uLL);
    v19 = sub_217751F48();
    Artwork._convertToLegacyModelArtworkCatalog(rawCropStyle:)(v19, v20, v137);

    sub_2171F0738(v139, &qword_27CB24400, &unk_21775E9A0);
  }

  sub_21729D40C(v137, 0, v13, v14, v15, v16, v17, v18, v131[0], v131[1], v131[2], v131[3], v131[4], v131[5], v131[6], v131[7], v131[8], v131[9], v131[10], v131[11], v131[12], v131[13]);
  if (qword_280BE6800 != -1)
  {
    swift_once();
  }

  v28 = qword_280C02110;
  sub_2176CA430(qword_280C02110, v21, v22, v23, v24, v25, v26, v27, v131[0], v131[1], v131[2], v131[3], v131[4], v131[5], v131[6], v131[7], v131[8], v131[9], v131[10], v131[11], v131[12], v131[13], v131[14], v131[15], v131[16], v131[17]);
  v29 = MEMORY[0x277D837D0];
  if (v136[1] == 1 || (v30 = v136[2], v31 = v136[3], sub_217751DE8(), sub_2171F0738(v136, &qword_27CB24B70, &unk_217759460), !v31))
  {
    memset(v131, 0, 32);
  }

  else
  {
    v131[3] = v29;
    v131[0] = v30;
    v131[1] = v31;
  }

  v32 = OUTLINED_FUNCTION_1_78();
  sub_21729D40C(v32, 1, v33, v34, v35, v36, v37, v38, v131[0], v131[1], v131[2], v131[3], v131[4], v131[5], v131[6], v131[7], v131[8], v131[9], v131[10], v131[11], v131[12], v131[13]);
  if (qword_280BE6818 != -1)
  {
    swift_once();
  }

  sub_2176CA43C(qword_280C02128, v39, v40, v41, v42, v43, v44, v45, v131[0], v131[1], v131[2], v131[3], v131[4], v131[5], v131[6], v131[7], v131[8], v131[9], v131[10], v131[11], v131[12], v131[13], v131[14], v131[15], v131[16], v131[17], v131[18], v131[19]);
  v46 = MEMORY[0x277D839B0];
  v131[3] = MEMORY[0x277D839B0];
  LOBYTE(v131[0]) &= 1u;
  v47 = OUTLINED_FUNCTION_1_78();
  sub_21729D40C(v47, 2, v48, v49, v50, v51, v52, v53, v131[0], v131[1], v131[2], v131[3], v131[4], v131[5], v131[6], v131[7], v131[8], v131[9], v131[10], v131[11], v131[12], v131[13]);
  if (qword_280BE6768 != -1)
  {
    swift_once();
  }

  sub_2172A402C(qword_280C020A8, v54, v55, v56, v57, v58, v59, v60, v131[0], v131[1], v131[2], v131[3], v131[4], v131[5], SWORD2(v131[5]), SBYTE6(v131[5]), HIBYTE(v131[5]), v131[6], v131[7], v131[8], v131[9], v131[10], v131[11], v131[12], v131[13]);
  v131[3] = v46;
  LOBYTE(v131[0]) = v61 & 1;
  v62 = OUTLINED_FUNCTION_1_78();
  sub_21729D40C(v62, 3, v63, v64, v65, v66, v67, v68, v131[0], v131[1], v131[2], v131[3], v131[4], v131[5], v131[6], v131[7], v131[8], v131[9], v131[10], v131[11], v131[12], v131[13]);
  if (qword_280BE6778 != -1)
  {
    swift_once();
  }

  v69 = sub_2172A3FDC();
  if (v70)
  {
    v71 = v69;
  }

  else
  {
    v71 = 0;
  }

  v72 = 0xE000000000000000;
  v131[3] = v29;
  if (v70)
  {
    v72 = v70;
  }

  v131[0] = v71;
  v131[1] = v72;
  v73 = OUTLINED_FUNCTION_1_78();
  sub_21729D40C(v73, 4, v74, v75, v76, v77, v78, v79, v131[0], v131[1], v131[2], v131[3], v131[4], v131[5], v131[6], v131[7], v131[8], v131[9], v131[10], v131[11], v131[12], v131[13]);
  if (qword_280BE6790 != -1)
  {
    swift_once();
  }

  v80 = sub_2172A3FDC();
  if (v81)
  {
    v82 = MEMORY[0x277D837D0];
  }

  else
  {
    v80 = 0;
    v82 = 0;
    v131[2] = 0;
  }

  v131[0] = v80;
  v131[1] = v81;
  v131[3] = v82;
  v83 = OUTLINED_FUNCTION_1_78();
  sub_21729D40C(v83, 5, v84, v85, v86, v87, v88, v89, v131[0], v131[1], v131[2], v131[3], v131[4], v131[5], v131[6], v131[7], v131[8], v131[9], v131[10], v131[11], v131[12], v131[13]);
  if (qword_280BE67C8 != -1)
  {
    swift_once();
  }

  v90 = sub_2172A3FDC();
  if (v91)
  {
    v92 = MEMORY[0x277D837D0];
  }

  else
  {
    v90 = 0;
    v92 = 0;
    v131[2] = 0;
  }

  v131[0] = v90;
  v131[1] = v91;
  v131[3] = v92;
  v93 = OUTLINED_FUNCTION_1_78();
  sub_21729D40C(v93, 6, v94, v95, v96, v97, v98, v99, v131[0], v131[1], v131[2], v131[3], v131[4], v131[5], v131[6], v131[7], v131[8], v131[9], v131[10], v131[11], v131[12], v131[13]);
  if (qword_280BE67A8 != -1)
  {
    swift_once();
  }

  sub_2176CA410(qword_280C020D8, v100, v101, v102, v103, v104, v105, v106, v131[0], v131[1], v131[2], v131[3], v131[4], v131[5], v131[6], v131[7], v131[8], v131[9], v131[10], v131[11], v131[12], v131[13], v131[14], v131[15], v131[16], v131[17], v131[18], v131[19], v131[20], v131[21]);
  v107 = sub_2177516D8();
  if (__swift_getEnumTagSinglePayload(v2, 1, v107) == 1)
  {
    sub_2171F0738(v2, &unk_27CB277C0, &qword_217758DC0);
    v134 = 0u;
    v135 = 0u;
  }

  else
  {
    *(&v135 + 1) = v107;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v134);
    (*(*(v107 - 8) + 32))(boxed_opaque_existential_0, v2, v107);
  }

  sub_21729D40C(&v134, 7, v108, v109, v110, v111, v112, v113, v131[0], v131[1], v131[2], v131[3], v131[4], v131[5], v131[6], v131[7], v131[8], v131[9], v131[10], v131[11], v131[12], v131[13]);
  sub_2176CA430(v28, v115, v116, v117, v118, v119, v120, v121, v131[0], v131[1], v131[2], v131[3], v131[4], v131[5], v131[6], v131[7], v131[8], v131[9], v131[10], v131[11], v131[12], v131[13], v131[14], v131[15], v131[16], v131[17]);
  v128 = v131[1];
  if (v131[1] == 1 || (v129 = v131[0], sub_217751DE8(), sub_2171F0738(v131, &qword_27CB24B70, &unk_217759460), !v128))
  {
    v132 = 0u;
    v133 = 0u;
  }

  else
  {
    *(&v133 + 1) = v29;
    *&v132 = v129;
    *(&v132 + 1) = v128;
  }

  sub_21729D40C(&v132, 8, v122, v123, v124, v125, v126, v127, v131[0], v131[1], v131[2], v131[3], v131[4], v131[5], v131[6], v131[7], v131[8], v131[9], v131[10], v131[11], v131[12], v131[13]);
  return v138;
}

void Station.LegacyModelRadioStationPropertyKey.init(rawValue:)(char *a2@<X8>)
{
  v3 = sub_217752DC8();

  v4 = 9;
  if (v3 < 9)
  {
    v4 = v3;
  }

  *a2 = v4;
}

unint64_t Station.LegacyModelRadioStationPropertyKey.rawValue.getter()
{
  result = 0xD000000000000022;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000026;
      break;
    case 2:
      result = 0xD00000000000002DLL;
      break;
    case 3:
    case 4:
      result = 0xD00000000000001FLL;
      break;
    case 5:
      result = 0xD000000000000033;
      break;
    case 6:
      result = 0xD000000000000027;
      break;
    case 7:
      result = 0xD000000000000030;
      break;
    case 8:
      result = 0xD00000000000002BLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_217549F18@<X0>(unint64_t *a1@<X8>)
{
  result = Station.LegacyModelRadioStationPropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_217549F40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StationPropertyProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217549FA4(uint64_t a1)
{
  v2 = type metadata accessor for StationPropertyProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21754A000(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StationPropertyProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21754A08C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29510;
  if (!qword_27CB29510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29510);
  }

  return result;
}

unint64_t sub_21754A0E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2172A51DC(a1, a2, a3);
  *(a1 + 8) = v4;
  result = sub_21754A110(v4, v5, v6);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21754A110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29518;
  if (!qword_27CB29518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29518);
  }

  return result;
}

unint64_t sub_21754A168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29520;
  if (!qword_27CB29520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29520);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MusicCatalogID.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s34LegacyModelRadioStationPropertyKeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t static AnyMusicSortDescriptor.sortDescriptor<A>(keyPath:ascending:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MusicSortDescriptor(0, *(*a1 + *MEMORY[0x277D84208]), a3, a4);
  v6 = MusicSortDescriptor.__allocating_init(_:ascending:)(a1, a2);

  return v6;
}

void sub_21754A3BC()
{
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000062, 0x80000002177B0350);
  type metadata accessor for AnyMusicSortDescriptor();
  sub_217752C78();
  MEMORY[0x21CEA23B0](46, 0xE100000000000000);
  OUTLINED_FUNCTION_0_88("Fatal error");
  __break(1u);
}

void sub_21754A470()
{
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000056, 0x80000002177B03C0);
  type metadata accessor for AnyMusicSortDescriptor();
  sub_217752C78();
  MEMORY[0x21CEA23B0](46, 0xE100000000000000);
  OUTLINED_FUNCTION_0_88("Fatal error");
  __break(1u);
}

uint64_t MusicSortDescriptor.init(_:ascending:)(uint64_t a1, char a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t MusicSortDescriptor.__deallocating_deinit()
{
  MusicSortDescriptor.deinit();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t MusicCatalogSearchResponse.TopResult.id.getter(uint64_t a1)
{
  MusicCatalogSearchResponse.TopResult.innerItem.getter(v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return OUTLINED_FUNCTION_93();
}

double MusicCatalogSearchResponse.TopResult.innerItem.getter@<D0>(uint64_t *a1@<X8>)
{
  sub_217283E1C(v1, v7);
  v3 = off_27822A798[v10];
  a1[3] = off_27822A750[v10];
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

void *MusicCatalogSearchResponse.TopResult.artwork.getter@<X0>(void *a1@<X8>)
{
  sub_217283E1C(v1, v72);
  switch(v74)
  {
    case 1:
      v70[0] = v72[0];
      v70[1] = v72[1];
      v70[2] = v72[2];
      v71 = v73;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255A0, &unk_21775D430);
      swift_allocObject();
      *&v63 = MEMORY[0x277D84F90];
      *(&v63 + 1) = MEMORY[0x277D84F90];
      v36 = sub_2173C381C(0x6B726F77747261, 0xE700000000000000, 0, 0, 0, 0, 2, 0, v63, MEMORY[0x277D84F90], qword_282959AF8);
      sub_2174C7A58(v36, __src);

      sub_217284498(v70);
      memcpy(__dst, __src, sizeof(__dst));
      break;
    case 2:
      OUTLINED_FUNCTION_4_2();
      if (qword_280BE8148 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_26_0();
      sub_2176CAC7C(v12, v13, v14, v15, v16, v17, v18, v19, v62, v64, v65, v66, v67, v68, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11]);
      sub_2172842E4(__src);
      break;
    case 3:
      OUTLINED_FUNCTION_4_2();
      if (qword_280BE6B50 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_26_0();
      sub_2176CA83C(v20, v21, v22, v23, v24, v25, v26, v27, v62, v64, v65, v66, v67, v68, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11]);
      sub_217283C08(__src);
      break;
    case 4:
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_26_0();
      Playlist.artwork.getter(v11);
      sub_21726B8C4(__src);
      break;
    case 5:
      OUTLINED_FUNCTION_4_2();
      if (qword_280BE6648 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_26_0();
      sub_2176CAC70(v37, v38, v39, v40, v41, v42, v43, v44, v62, v64, v65, v66, v67, v68, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11]);
      sub_217284394(__src);
      break;
    case 6:
      OUTLINED_FUNCTION_4_2();
      if (qword_27CB23B10 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_26_0();
      sub_2176CA854(v45, v46, v47, v48, v49, v50, v51, v52, v62, v64, v65, v66, v67, v68, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11]);
      sub_217283CC4(__src);
      break;
    case 7:
      OUTLINED_FUNCTION_4_2();
      if (qword_280BE9708 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_26_0();
      sub_2176CA860(v28, v29, v30, v31, v32, v33, v34, v35, v62, v64, v65, v66, v67, v68, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11]);
      sub_217283B58(__src);
      break;
    case 8:
      OUTLINED_FUNCTION_4_2();
      if (qword_280BE6760 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_26_0();
      sub_2176CABE4(v53, v54, v55, v56, v57, v58, v59, v60, v62, v64, v65, v66, v67, v68, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11]);
      sub_217283DC8(__src);
      break;
    default:
      OUTLINED_FUNCTION_4_2();
      if (qword_280BE9428 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_26_0();
      sub_2176CA9A8(v3, v4, v5, v6, v7, v8, v9, v10, v62, v64, v65, v66, v67, v68, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11]);
      sub_21725CE44(__src);
      break;
  }

  return memcpy(a1, __dst, 0x221uLL);
}

uint64_t MusicCatalogSearchResponse.TopResult.title.getter()
{
  v1 = sub_217283E1C(v0, &v20);
  switch(v25)
  {
    case 1:
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
      if (qword_280BE6898 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_22_0();
      sub_2172A3FF0();
      OUTLINED_FUNCTION_21_4();
      sub_217284498(&v12);
      break;
    case 2:
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
      if (qword_280BE8158 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_22_0();
      sub_2172A4018();
      OUTLINED_FUNCTION_21_4();
      sub_2172842E4(&v12);
      break;
    case 3:
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
      if (qword_280BE6BC8 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_22_0();
      sub_2172A4204();
      OUTLINED_FUNCTION_21_4();
      sub_217283C08(&v12);
      break;
    case 4:
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
      if (qword_280BE9208 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_22_0();
      sub_2172A3F14(v9);
      OUTLINED_FUNCTION_21_4();
      sub_21726B8C4(&v12);
      break;
    case 5:
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
      if (qword_280BE6658 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_22_0();
      sub_2172A3F00(v10);
      OUTLINED_FUNCTION_21_4();
      sub_217284394(&v12);
      break;
    case 6:
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
      if (qword_27CB23B30 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_22_0();
      sub_2172A4004();
      OUTLINED_FUNCTION_21_4();
      sub_217283CC4(&v12);
      break;
    case 7:
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
      if (qword_280BE9750 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_22_0();
      sub_2172A41AC();
      OUTLINED_FUNCTION_21_4();
      sub_217283B58(&v12);
      break;
    case 8:
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
      if (qword_280BE6778 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_22_0();
      sub_2172A3FDC();
      OUTLINED_FUNCTION_21_4();
      sub_217283DC8(&v12);
      break;
    default:
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
      if (qword_280BE9470 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_22_0();
      sub_2172A4380();
      OUTLINED_FUNCTION_21_4();
      sub_21725CE44(&v12);
      break;
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t static MusicCatalogSearchResponse.TopResult.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_217283E1C(a1, v135);
  v4 = sub_217283E1C(a2, &v136);
  switch(v135[56])
  {
    case 1:
      v68 = OUTLINED_FUNCTION_28_34(v4, v5, v6, v7, v8, v9, v10, v11, v122, *(&v122 + 1), v123, v124, v125, v126, v127, v128);
      if (v137 != 1)
      {
        sub_217284498(&v129);
        goto LABEL_76;
      }

      OUTLINED_FUNCTION_2_0(v68, v69, v70, v71, v72, v73, v74, v75, v122, v123, v124, v125, v126, v127, v128, v129);
      v78 = v30 && v76 == v77;
      if (v78 || (sub_217753058() & 1) != 0)
      {
        OUTLINED_FUNCTION_9_2(&v129, v122, *(&v122 + 1), v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v79 = OUTLINED_FUNCTION_13_4();
        if (v2(v79))
        {
          sub_217284498(&v122);
          sub_217284498(&v129);
          goto LABEL_84;
        }
      }

      sub_217284498(&v122);
      sub_217284498(&v129);
      goto LABEL_95;
    case 2:
      v32 = OUTLINED_FUNCTION_28_34(v4, v5, v6, v7, v8, v9, v10, v11, v122, *(&v122 + 1), v123, v124, v125, v126, v127, v128);
      if (v137 != 2)
      {
        sub_2172842E4(&v129);
        goto LABEL_76;
      }

      OUTLINED_FUNCTION_2_0(v32, v33, v34, v35, v36, v37, v38, v39, v122, v123, v124, v125, v126, v127, v128, v129);
      v42 = v30 && v40 == v41;
      if (v42 || (sub_217753058() & 1) != 0)
      {
        OUTLINED_FUNCTION_9_2(&v129, v122, *(&v122 + 1), v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v43 = OUTLINED_FUNCTION_13_4();
        if (v2(v43))
        {
          sub_2172842E4(&v122);
          sub_2172842E4(&v129);
          goto LABEL_84;
        }
      }

      sub_2172842E4(&v122);
      sub_2172842E4(&v129);
      goto LABEL_95;
    case 3:
      v44 = OUTLINED_FUNCTION_28_34(v4, v5, v6, v7, v8, v9, v10, v11, v122, *(&v122 + 1), v123, v124, v125, v126, v127, v128);
      if (v137 != 3)
      {
        sub_217283C08(&v129);
        goto LABEL_76;
      }

      OUTLINED_FUNCTION_2_0(v44, v45, v46, v47, v48, v49, v50, v51, v122, v123, v124, v125, v126, v127, v128, v129);
      v54 = v30 && v52 == v53;
      if (v54 || (sub_217753058() & 1) != 0)
      {
        OUTLINED_FUNCTION_9_2(&v129, v122, *(&v122 + 1), v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v55 = OUTLINED_FUNCTION_13_4();
        if (v2(v55))
        {
          sub_217283C08(&v122);
          sub_217283C08(&v129);
          goto LABEL_84;
        }
      }

      sub_217283C08(&v122);
      sub_217283C08(&v129);
      goto LABEL_95;
    case 4:
      v20 = OUTLINED_FUNCTION_28_34(v4, v5, v6, v7, v8, v9, v10, v11, v122, *(&v122 + 1), v123, v124, v125, v126, v127, v128);
      if (v137 != 4)
      {
        sub_21726B8C4(&v129);
        goto LABEL_76;
      }

      OUTLINED_FUNCTION_2_0(v20, v21, v22, v23, v24, v25, v26, v27, v122, v123, v124, v125, v126, v127, v128, v129);
      v30 = v30 && v28 == v29;
      if (v30 || (sub_217753058() & 1) != 0)
      {
        OUTLINED_FUNCTION_9_2(&v129, v122, *(&v122 + 1), v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v31 = OUTLINED_FUNCTION_13_4();
        if (v2(v31))
        {
          sub_21726B8C4(&v122);
          sub_21726B8C4(&v129);
          goto LABEL_84;
        }
      }

      sub_21726B8C4(&v122);
      sub_21726B8C4(&v129);
      goto LABEL_95;
    case 5:
      v80 = OUTLINED_FUNCTION_28_34(v4, v5, v6, v7, v8, v9, v10, v11, v122, *(&v122 + 1), v123, v124, v125, v126, v127, v128);
      if (v137 != 5)
      {
        sub_217284394(&v129);
        goto LABEL_76;
      }

      OUTLINED_FUNCTION_2_0(v80, v81, v82, v83, v84, v85, v86, v87, v122, v123, v124, v125, v126, v127, v128, v129);
      v90 = v30 && v88 == v89;
      if (v90 || (sub_217753058() & 1) != 0)
      {
        OUTLINED_FUNCTION_9_2(&v129, v122, *(&v122 + 1), v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v91 = OUTLINED_FUNCTION_13_4();
        if (v2(v91))
        {
          sub_217284394(&v122);
          sub_217284394(&v129);
          goto LABEL_84;
        }
      }

      sub_217284394(&v122);
      sub_217284394(&v129);
      goto LABEL_95;
    case 6:
      v92 = OUTLINED_FUNCTION_28_34(v4, v5, v6, v7, v8, v9, v10, v11, v122, *(&v122 + 1), v123, v124, v125, v126, v127, v128);
      if (v137 != 6)
      {
        sub_217283CC4(&v129);
        goto LABEL_76;
      }

      OUTLINED_FUNCTION_2_0(v92, v93, v94, v95, v96, v97, v98, v99, v122, v123, v124, v125, v126, v127, v128, v129);
      v102 = v30 && v100 == v101;
      if (v102 || (sub_217753058() & 1) != 0)
      {
        OUTLINED_FUNCTION_9_2(&v129, v122, *(&v122 + 1), v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v103 = OUTLINED_FUNCTION_13_4();
        if (v2(v103))
        {
          sub_217283CC4(&v122);
          sub_217283CC4(&v129);
          goto LABEL_84;
        }
      }

      sub_217283CC4(&v122);
      sub_217283CC4(&v129);
      goto LABEL_95;
    case 7:
      v56 = OUTLINED_FUNCTION_28_34(v4, v5, v6, v7, v8, v9, v10, v11, v122, *(&v122 + 1), v123, v124, v125, v126, v127, v128);
      if (v137 != 7)
      {
        sub_217283B58(&v129);
        goto LABEL_76;
      }

      OUTLINED_FUNCTION_2_0(v56, v57, v58, v59, v60, v61, v62, v63, v122, v123, v124, v125, v126, v127, v128, v129);
      v66 = v30 && v64 == v65;
      if (v66 || (sub_217753058() & 1) != 0)
      {
        OUTLINED_FUNCTION_9_2(&v129, v122, *(&v122 + 1), v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v67 = OUTLINED_FUNCTION_13_4();
        if (v2(v67))
        {
          sub_217283B58(&v122);
          sub_217283B58(&v129);
          goto LABEL_84;
        }
      }

      sub_217283B58(&v122);
      sub_217283B58(&v129);
      goto LABEL_95;
    case 8:
      v104 = OUTLINED_FUNCTION_28_34(v4, v5, v6, v7, v8, v9, v10, v11, v122, *(&v122 + 1), v123, v124, v125, v126, v127, v128);
      if (v137 != 8)
      {
        sub_217283DC8(&v129);
        goto LABEL_76;
      }

      OUTLINED_FUNCTION_2_0(v104, v105, v106, v107, v108, v109, v110, v111, v122, v123, v124, v125, v126, v127, v128, v129);
      v114 = v30 && v112 == v113;
      if (v114 || (sub_217753058() & 1) != 0)
      {
        OUTLINED_FUNCTION_9_2(&v129, v122, *(&v122 + 1), v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v115 = OUTLINED_FUNCTION_13_4();
        if (v2(v115))
        {
          sub_217283DC8(&v122);
          sub_217283DC8(&v129);
          goto LABEL_84;
        }
      }

      sub_217283DC8(&v122);
      sub_217283DC8(&v129);
      goto LABEL_95;
    default:
      v12 = OUTLINED_FUNCTION_28_34(v4, v5, v6, v7, v8, v9, v10, v11, v122, *(&v122 + 1), v123, v124, v125, v126, v127, v128);
      if (v137)
      {
        sub_21725CE44(&v129);
LABEL_76:
        sub_21754CBE4(v135);
        return 0;
      }

      OUTLINED_FUNCTION_2_0(v12, v13, v14, v15, v16, v17, v18, v19, v122, v123, v124, v125, v126, v127, v128, v129);
      v118 = v30 && v116 == v117;
      if (!v118 && (sub_217753058() & 1) == 0)
      {
        sub_21725CE44(&v122);
LABEL_94:
        sub_21725CE44(&v129);
LABEL_95:
        sub_217283E78(v135);
        return 0;
      }

      OUTLINED_FUNCTION_9_2(&v129, v122, *(&v122 + 1), v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
      v119 = OUTLINED_FUNCTION_13_4();
      v120 = v2(v119);
      sub_21725CE44(&v122);
      if ((v120 & 1) == 0)
      {
        goto LABEL_94;
      }

      sub_21725CE44(&v129);
LABEL_84:
      sub_217283E78(v135);
      return 1;
  }
}

uint64_t MusicCatalogSearchResponse.TopResult.hash(into:)()
{
  v1 = sub_217283E1C(v0, &v117);
  switch(v122)
  {
    case 1:
      v65 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121);
      v66 = MEMORY[0x21CEA3550](1, v65);
      OUTLINED_FUNCTION_66_13(v66, v67, v68, v69, v70, v71, v72, v73, v109, v110);
      __swift_project_boxed_opaque_existential_1(&v111, v114);
      v74 = OUTLINED_FUNCTION_3_4();
      v75(v74);
      result = sub_217284498(&v109);
      break;
    case 2:
      v32 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121);
      v33 = MEMORY[0x21CEA3550](2, v32);
      OUTLINED_FUNCTION_66_13(v33, v34, v35, v36, v37, v38, v39, v40, v109, v110);
      __swift_project_boxed_opaque_existential_1(&v111, v114);
      v41 = OUTLINED_FUNCTION_3_4();
      v42(v41);
      result = sub_2172842E4(&v109);
      break;
    case 3:
      v43 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121);
      v44 = MEMORY[0x21CEA3550](3, v43);
      OUTLINED_FUNCTION_66_13(v44, v45, v46, v47, v48, v49, v50, v51, v109, v110);
      __swift_project_boxed_opaque_existential_1(&v111, v114);
      v52 = OUTLINED_FUNCTION_3_4();
      v53(v52);
      result = sub_217283C08(&v109);
      break;
    case 4:
      v21 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121);
      v22 = MEMORY[0x21CEA3550](4, v21);
      OUTLINED_FUNCTION_66_13(v22, v23, v24, v25, v26, v27, v28, v29, v109, v110);
      __swift_project_boxed_opaque_existential_1(&v111, v114);
      v30 = OUTLINED_FUNCTION_3_4();
      v31(v30);
      result = sub_21726B8C4(&v109);
      break;
    case 5:
      v76 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121);
      v77 = MEMORY[0x21CEA3550](5, v76);
      OUTLINED_FUNCTION_66_13(v77, v78, v79, v80, v81, v82, v83, v84, v109, v110);
      __swift_project_boxed_opaque_existential_1(&v111, v114);
      v85 = OUTLINED_FUNCTION_3_4();
      v86(v85);
      result = sub_217284394(&v109);
      break;
    case 6:
      v87 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121);
      v88 = MEMORY[0x21CEA3550](6, v87);
      OUTLINED_FUNCTION_66_13(v88, v89, v90, v91, v92, v93, v94, v95, v109, v110);
      __swift_project_boxed_opaque_existential_1(&v111, v114);
      v96 = OUTLINED_FUNCTION_3_4();
      v97(v96);
      result = sub_217283CC4(&v109);
      break;
    case 7:
      v54 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121);
      v55 = MEMORY[0x21CEA3550](7, v54);
      OUTLINED_FUNCTION_66_13(v55, v56, v57, v58, v59, v60, v61, v62, v109, v110);
      __swift_project_boxed_opaque_existential_1(&v111, v114);
      v63 = OUTLINED_FUNCTION_3_4();
      v64(v63);
      result = sub_217283B58(&v109);
      break;
    case 8:
      v98 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121);
      v99 = MEMORY[0x21CEA3550](8, v98);
      OUTLINED_FUNCTION_66_13(v99, v100, v101, v102, v103, v104, v105, v106, v109, v110);
      __swift_project_boxed_opaque_existential_1(&v111, v114);
      v107 = OUTLINED_FUNCTION_3_4();
      v108(v107);
      result = sub_217283DC8(&v109);
      break;
    default:
      v9 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121);
      v10 = MEMORY[0x21CEA3550](0, v9);
      OUTLINED_FUNCTION_66_13(v10, v11, v12, v13, v14, v15, v16, v17, v109, v110);
      __swift_project_boxed_opaque_existential_1(&v111, v114);
      v18 = OUTLINED_FUNCTION_3_4();
      v19(v18);
      result = sub_21725CE44(&v109);
      break;
  }

  return result;
}

uint64_t MusicCatalogSearchResponse.TopResult.hashValue.getter()
{
  sub_2177531E8();
  MusicCatalogSearchResponse.TopResult.hash(into:)();
  return sub_217753238();
}

uint64_t sub_21754B718(uint64_t a1)
{
  sub_2177531E8();
  MusicCatalogSearchResponse.TopResult.hash(into:)();
  return sub_217753238();
}

uint64_t sub_21754B754@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = MusicCatalogSearchResponse.TopResult.id.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t MusicCatalogSearchResponse.TopResult.init(from:)(void *a1)
{
  sub_2171FF30C(a1, v3);
  sub_2172EEED4();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MusicCatalogSearchResponse.TopResult.description.getter()
{
  sub_217283E1C(v0, &v29);
  switch(v34)
  {
    case 1:
      OUTLINED_FUNCTION_1_79(v1, v2, v3, v4, v5, v6, v7, v8, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
      sub_217752AA8();

      OUTLINED_FUNCTION_12_2();
      OUTLINED_FUNCTION_27_0();
      Artist.description.getter();
      OUTLINED_FUNCTION_29_31();

      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_24_1();
      sub_217284498(v14);
      break;
    case 2:
      OUTLINED_FUNCTION_1_79(v1, v2, v3, v4, v5, v6, v7, v8, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
      sub_217752AA8();

      OUTLINED_FUNCTION_12_2();
      OUTLINED_FUNCTION_27_0();
      Curator.description.getter();
      OUTLINED_FUNCTION_29_31();

      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_24_1();
      sub_2172842E4(v11);
      break;
    case 3:
      OUTLINED_FUNCTION_1_79(v1, v2, v3, v4, v5, v6, v7, v8, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
      sub_217752AA8();

      OUTLINED_FUNCTION_12_2();
      OUTLINED_FUNCTION_27_0();
      MusicVideo.description.getter();
      OUTLINED_FUNCTION_29_31();

      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_24_1();
      sub_217283C08(v12);
      break;
    case 4:
      OUTLINED_FUNCTION_1_79(v1, v2, v3, v4, v5, v6, v7, v8, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
      sub_217752AA8();

      OUTLINED_FUNCTION_12_2();
      OUTLINED_FUNCTION_27_0();
      Playlist.description.getter();
      OUTLINED_FUNCTION_29_31();

      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_24_1();
      sub_21726B8C4(v10);
      break;
    case 5:
      OUTLINED_FUNCTION_1_79(v1, v2, v3, v4, v5, v6, v7, v8, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
      sub_217752AA8();

      OUTLINED_FUNCTION_12_2();
      OUTLINED_FUNCTION_27_0();
      RadioShow.description.getter();
      OUTLINED_FUNCTION_29_31();

      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_24_1();
      sub_217284394(v15);
      break;
    case 6:
      OUTLINED_FUNCTION_1_79(v1, v2, v3, v4, v5, v6, v7, v8, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
      sub_217752AA8();

      OUTLINED_FUNCTION_12_2();
      OUTLINED_FUNCTION_27_0();
      RecordLabel.description.getter();
      OUTLINED_FUNCTION_29_31();

      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_24_1();
      sub_217283CC4(v16);
      break;
    case 7:
      OUTLINED_FUNCTION_1_79(v1, v2, v3, v4, v5, v6, v7, v8, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
      sub_217752AA8();

      Song.description.getter();
      OUTLINED_FUNCTION_29_31();

      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_24_1();
      sub_217283B58(v13);
      break;
    case 8:
      OUTLINED_FUNCTION_1_79(v1, v2, v3, v4, v5, v6, v7, v8, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
      sub_217752AA8();

      OUTLINED_FUNCTION_12_2();
      OUTLINED_FUNCTION_27_0();
      Station.description.getter();
      OUTLINED_FUNCTION_29_31();

      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_24_1();
      sub_217283DC8(v17);
      break;
    default:
      OUTLINED_FUNCTION_1_79(v1, v2, v3, v4, v5, v6, v7, v8, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
      sub_217752AA8();

      OUTLINED_FUNCTION_12_2();
      OUTLINED_FUNCTION_27_0();
      Album.description.getter();
      OUTLINED_FUNCTION_29_31();

      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_24_1();
      sub_21725CE44(v9);
      break;
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t MusicCatalogSearchResponse.TopResult.debugDescription.getter()
{
  sub_217283E1C(v0, v167);
  switch(v167[56])
  {
    case 1:
      OUTLINED_FUNCTION_3_8();
      sub_217752AA8();

      OUTLINED_FUNCTION_11_9();
      OUTLINED_FUNCTION_25_39();
      v81 = Artist.debugDescription.getter();
      v89 = OUTLINED_FUNCTION_7_51(v81, v82, v83, v84, v85, v86, v87, v88, v146, v156);
      OUTLINED_FUNCTION_6_2(v89, v90, v91, v92, v93, v94, MEMORY[0x277D837D0], v95, v152, v162, v166);
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_17_36();

      OUTLINED_FUNCTION_16_5();
      OUTLINED_FUNCTION_23_39();
      sub_217284498(v96);
      break;
    case 2:
      OUTLINED_FUNCTION_3_8();
      sub_217752AA8();

      OUTLINED_FUNCTION_11_9();
      OUTLINED_FUNCTION_25_39();
      Curator.debugDescription.getter();
      v41 = OUTLINED_FUNCTION_7_51(v33, v34, v35, v36, v37, v38, v39, v40, v146, v156);
      OUTLINED_FUNCTION_6_2(v41, v42, v43, v44, v45, v46, MEMORY[0x277D837D0], v47, v149, v159, v166);
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_17_36();

      OUTLINED_FUNCTION_16_5();
      OUTLINED_FUNCTION_23_39();
      sub_2172842E4(v48);
      break;
    case 3:
      OUTLINED_FUNCTION_3_8();
      sub_217752AA8();

      OUTLINED_FUNCTION_11_9();
      OUTLINED_FUNCTION_25_39();
      v49 = MusicVideo.debugDescription.getter();
      v57 = OUTLINED_FUNCTION_7_51(v49, v50, v51, v52, v53, v54, v55, v56, v146, v156);
      OUTLINED_FUNCTION_6_2(v57, v58, v59, v60, v61, v62, MEMORY[0x277D837D0], v63, v150, v160, v166);
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_17_36();

      OUTLINED_FUNCTION_16_5();
      OUTLINED_FUNCTION_23_39();
      sub_217283C08(v64);
      break;
    case 4:
      OUTLINED_FUNCTION_3_8();
      sub_217752AA8();

      OUTLINED_FUNCTION_11_9();
      OUTLINED_FUNCTION_25_39();
      v17 = Playlist.debugDescription.getter();
      v25 = OUTLINED_FUNCTION_7_51(v17, v18, v19, v20, v21, v22, v23, v24, v146, v156);
      OUTLINED_FUNCTION_6_2(v25, v26, v27, v28, v29, v30, MEMORY[0x277D837D0], v31, v148, v158, v166);
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_17_36();

      OUTLINED_FUNCTION_16_5();
      OUTLINED_FUNCTION_23_39();
      sub_21726B8C4(v32);
      break;
    case 5:
      OUTLINED_FUNCTION_3_8();
      sub_217752AA8();

      OUTLINED_FUNCTION_11_9();
      OUTLINED_FUNCTION_25_39();
      v97 = RadioShow.debugDescription.getter();
      v105 = OUTLINED_FUNCTION_7_51(v97, v98, v99, v100, v101, v102, v103, v104, v146, v156);
      OUTLINED_FUNCTION_6_2(v105, v106, v107, v108, v109, v110, MEMORY[0x277D837D0], v111, v153, v163, v166);
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_17_36();

      OUTLINED_FUNCTION_16_5();
      OUTLINED_FUNCTION_23_39();
      sub_217284394(v112);
      break;
    case 6:
      OUTLINED_FUNCTION_3_8();
      sub_217752AA8();

      OUTLINED_FUNCTION_11_9();
      OUTLINED_FUNCTION_25_39();
      v113 = RecordLabel.debugDescription.getter();
      v121 = OUTLINED_FUNCTION_7_51(v113, v114, v115, v116, v117, v118, v119, v120, v146, v156);
      OUTLINED_FUNCTION_6_2(v121, v122, v123, v124, v125, v126, MEMORY[0x277D837D0], v127, v154, v164, v166);
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_17_36();

      OUTLINED_FUNCTION_16_5();
      OUTLINED_FUNCTION_23_39();
      sub_217283CC4(v128);
      break;
    case 7:
      OUTLINED_FUNCTION_3_8();
      sub_217752AA8();

      OUTLINED_FUNCTION_11_9();
      OUTLINED_FUNCTION_25_39();
      v65 = Song.debugDescription.getter();
      v73 = OUTLINED_FUNCTION_7_51(v65, v66, v67, v68, v69, v70, v71, v72, v146, v156);
      OUTLINED_FUNCTION_6_2(v73, v74, v75, v76, v77, v78, MEMORY[0x277D837D0], v79, v151, v161, v166);
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_17_36();

      OUTLINED_FUNCTION_16_5();
      OUTLINED_FUNCTION_23_39();
      sub_217283B58(v80);
      break;
    case 8:
      OUTLINED_FUNCTION_3_8();
      sub_217752AA8();

      OUTLINED_FUNCTION_11_9();
      OUTLINED_FUNCTION_25_39();
      v129 = Station.debugDescription.getter();
      v137 = OUTLINED_FUNCTION_7_51(v129, v130, v131, v132, v133, v134, v135, v136, v146, v156);
      OUTLINED_FUNCTION_6_2(v137, v138, v139, v140, v141, v142, MEMORY[0x277D837D0], v143, v155, v165, v166);
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_17_36();

      OUTLINED_FUNCTION_16_5();
      OUTLINED_FUNCTION_23_39();
      sub_217283DC8(v144);
      break;
    default:
      OUTLINED_FUNCTION_3_8();
      sub_217752AA8();

      OUTLINED_FUNCTION_11_9();
      OUTLINED_FUNCTION_25_39();
      v1 = Album.debugDescription.getter();
      v9 = OUTLINED_FUNCTION_7_51(v1, v2, v3, v4, v5, v6, v7, v8, v146, v156);
      OUTLINED_FUNCTION_6_2(v9, v10, v11, v12, v13, v14, MEMORY[0x277D837D0], v15, v147, v157, v166);
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_17_36();

      OUTLINED_FUNCTION_16_5();
      OUTLINED_FUNCTION_23_39();
      sub_21725CE44(v16);
      break;
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t MusicCatalogSearchResponse.TopResult.init(propertyProvider:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 48))(v265, v4, v5);
  v6 = v265[1];
  if (qword_280BE8A88 != -1)
  {
    swift_once();
  }

  v7 = OUTLINED_FUNCTION_30_2(&xmmword_280BE8A90);
  v9 = v9 && v8 == v6;
  if (v9 || (OUTLINED_FUNCTION_25_38(v7, v8) & 1) != 0)
  {
    goto LABEL_15;
  }

  if (qword_280BE8AE8 != -1)
  {
    swift_once();
  }

  v10 = OUTLINED_FUNCTION_30_2(&qword_280BE8AF0);
  v12 = v9 && v11 == v6;
  if (v12 || (OUTLINED_FUNCTION_25_38(v10, v11) & 1) != 0)
  {
LABEL_15:

    OUTLINED_FUNCTION_32_28(v14, v15, v16, v17, v13);
    v18 = v257;
    __swift_project_boxed_opaque_existential_1(&v254, v257);
    v19 = OUTLINED_FUNCTION_8_49();
    v21 = v20(v19);
    OUTLINED_FUNCTION_64_0(v21, v22, v23, v24, v25, v26, v27, v28, v242, v252, v254, v255, v256, v257, v258, v259, *(&v259 + 1), v260, *(&v260 + 1), v261, *(&v261 + 1), v262, v263, v264);
    sub_217269F50(&v263);
    *&v259 = v18;
    *(&v259 + 1) = v6;
    v29 = __swift_project_boxed_opaque_existential_1(&v254, v257);
    OUTLINED_FUNCTION_11_6(v29, v30, v31, v32, v33, v34, v35, v36, v243);
    __swift_destroy_boxed_opaque_existential_1(&v254);
    v37 = 0;
  }

  else
  {
    if (qword_280BE4A68 != -1)
    {
      swift_once();
    }

    v40 = OUTLINED_FUNCTION_30_2(&xmmword_280BE4A70);
    v42 = v9 && v41 == v6;
    if (v42 || (OUTLINED_FUNCTION_25_38(v40, v41) & 1) != 0)
    {
      goto LABEL_31;
    }

    if (qword_280BE4B80 != -1)
    {
      swift_once();
    }

    v43 = OUTLINED_FUNCTION_30_2(&qword_280BE4B88);
    v45 = v9 && v44 == v6;
    if (v45 || (OUTLINED_FUNCTION_25_38(v43, v44) & 1) != 0)
    {
LABEL_31:

      OUTLINED_FUNCTION_32_28(v47, v48, v49, v50, v46);
      v51 = v257;
      __swift_project_boxed_opaque_existential_1(&v254, v257);
      v52 = OUTLINED_FUNCTION_8_49();
      v54 = v53(v52);
      OUTLINED_FUNCTION_64_0(v54, v55, v56, v57, v58, v59, v60, v61, v242, v252, v254, v255, v256, v257, v258, v259, *(&v259 + 1), v260, *(&v260 + 1), v261, *(&v261 + 1), v262, v263, v264);
      sub_217269F50(&v263);
      *&v259 = v51;
      *(&v259 + 1) = v6;
      v62 = __swift_project_boxed_opaque_existential_1(&v254, v257);
      OUTLINED_FUNCTION_11_6(v62, v63, v64, v65, v66, v67, v68, v69, v244);
      __swift_destroy_boxed_opaque_existential_1(&v254);
      v37 = 1;
    }

    else
    {
      if (qword_280BE7E50 != -1)
      {
        swift_once();
      }

      v70 = OUTLINED_FUNCTION_30_2(&qword_280BE7E58);
      v72 = v9 && v71 == v6;
      if (v72 || (OUTLINED_FUNCTION_25_38(v70, v71) & 1) != 0)
      {

        OUTLINED_FUNCTION_32_28(v74, v75, v76, v77, v73);
        v78 = v257;
        __swift_project_boxed_opaque_existential_1(&v254, v257);
        v79 = OUTLINED_FUNCTION_8_49();
        v81 = v80(v79);
        OUTLINED_FUNCTION_64_0(v81, v82, v83, v84, v85, v86, v87, v88, v242, v252, v254, v255, v256, v257, v258, v259, *(&v259 + 1), v260, *(&v260 + 1), v261, *(&v261 + 1), v262, v263, v264);
        sub_217269F50(&v263);
        *&v259 = v78;
        *(&v259 + 1) = v6;
        v89 = __swift_project_boxed_opaque_existential_1(&v254, v257);
        OUTLINED_FUNCTION_11_6(v89, v90, v91, v92, v93, v94, v95, v96, v245);
        __swift_destroy_boxed_opaque_existential_1(&v254);
        v37 = 2;
      }

      else
      {
        if (qword_280BE8B28 != -1)
        {
          swift_once();
        }

        v97 = OUTLINED_FUNCTION_30_2(&qword_280BE8B30);
        v99 = v9 && v98 == v6;
        if (v99 || (OUTLINED_FUNCTION_25_38(v97, v98) & 1) != 0)
        {
          goto LABEL_54;
        }

        if (qword_280BE8B68 != -1)
        {
          swift_once();
        }

        v100 = OUTLINED_FUNCTION_30_2(&qword_280BE8B70);
        v102 = v9 && v101 == v6;
        if (v102 || (OUTLINED_FUNCTION_25_38(v100, v101) & 1) != 0)
        {
LABEL_54:

          OUTLINED_FUNCTION_32_28(v104, v105, v106, v107, v103);
          v108 = v257;
          __swift_project_boxed_opaque_existential_1(&v254, v257);
          v109 = OUTLINED_FUNCTION_8_49();
          v111 = v110(v109);
          OUTLINED_FUNCTION_64_0(v111, v112, v113, v114, v115, v116, v117, v118, v242, v252, v254, v255, v256, v257, v258, v259, *(&v259 + 1), v260, *(&v260 + 1), v261, *(&v261 + 1), v262, v263, v264);
          sub_217269F50(&v263);
          *&v259 = v108;
          *(&v259 + 1) = v6;
          v119 = __swift_project_boxed_opaque_existential_1(&v254, v257);
          OUTLINED_FUNCTION_11_6(v119, v120, v121, v122, v123, v124, v125, v126, v246);
          __swift_destroy_boxed_opaque_existential_1(&v254);
          v37 = 3;
        }

        else
        {
          if (qword_280BE8A38 != -1)
          {
            goto LABEL_100;
          }

          while (1)
          {
            v127 = OUTLINED_FUNCTION_30_2(&qword_280BE8A40);
            v129 = v9 && v128 == v6;
            if (v129 || (OUTLINED_FUNCTION_25_38(v127, v128) & 1) != 0)
            {
              goto LABEL_68;
            }

            if (qword_280BE8AA8 != -1)
            {
              swift_once();
            }

            v130 = OUTLINED_FUNCTION_30_2(&qword_280BE8AB0);
            v132 = v9 && v131 == v6;
            if (v132 || (OUTLINED_FUNCTION_25_38(v130, v131) & 1) != 0)
            {
LABEL_68:

              OUTLINED_FUNCTION_32_28(v134, v135, v136, v137, v133);
              v138 = v257;
              __swift_project_boxed_opaque_existential_1(&v254, v257);
              v139 = OUTLINED_FUNCTION_8_49();
              v141 = v140(v139);
              OUTLINED_FUNCTION_64_0(v141, v142, v143, v144, v145, v146, v147, v148, v242, v252, v254, v255, v256, v257, v258, v259, *(&v259 + 1), v260, *(&v260 + 1), v261, *(&v261 + 1), v262, v263, v264);
              sub_217269F50(&v263);
              *&v259 = v138;
              *(&v259 + 1) = v6;
              v149 = __swift_project_boxed_opaque_existential_1(&v254, v257);
              OUTLINED_FUNCTION_11_6(v149, v150, v151, v152, v153, v154, v155, v156, v247);
              __swift_destroy_boxed_opaque_existential_1(&v254);
              v37 = 4;
              goto LABEL_16;
            }

            if (qword_280BE4C38 != -1)
            {
              swift_once();
            }

            v157 = OUTLINED_FUNCTION_30_2(&qword_280BE4C40);
            v159 = v9 && v158 == v6;
            if (v159 || (OUTLINED_FUNCTION_25_38(v157, v158) & 1) != 0)
            {

              OUTLINED_FUNCTION_32_28(v161, v162, v163, v164, v160);
              v165 = v257;
              __swift_project_boxed_opaque_existential_1(&v254, v257);
              v166 = OUTLINED_FUNCTION_8_49();
              v168 = v167(v166);
              OUTLINED_FUNCTION_64_0(v168, v169, v170, v171, v172, v173, v174, v175, v242, v252, v254, v255, v256, v257, v258, v259, *(&v259 + 1), v260, *(&v260 + 1), v261, *(&v261 + 1), v262, v263, v264);
              sub_217269F50(&v263);
              *&v259 = v165;
              *(&v259 + 1) = v6;
              v176 = __swift_project_boxed_opaque_existential_1(&v254, v257);
              OUTLINED_FUNCTION_11_6(v176, v177, v178, v179, v180, v181, v182, v183, v248);
              __swift_destroy_boxed_opaque_existential_1(&v254);
              v37 = 6;
              goto LABEL_16;
            }

            if (qword_280BEA1C8 != -1)
            {
              swift_once();
            }

            v184 = OUTLINED_FUNCTION_30_2(&xmmword_280BEA1D0);
            v186 = v9 && v185 == v6;
            if (v186 || (OUTLINED_FUNCTION_25_38(v184, v185) & 1) != 0)
            {
              goto LABEL_91;
            }

            if (qword_280BE8B08 != -1)
            {
              swift_once();
            }

            v187 = OUTLINED_FUNCTION_30_2(&qword_280BE8B10);
            v189 = v9 && v188 == v6;
            if (v189 || (OUTLINED_FUNCTION_25_38(v187, v188) & 1) != 0)
            {
LABEL_91:

              OUTLINED_FUNCTION_32_28(v191, v192, v193, v194, v190);
              v195 = v257;
              __swift_project_boxed_opaque_existential_1(&v254, v257);
              v196 = OUTLINED_FUNCTION_8_49();
              v198 = v197(v196);
              OUTLINED_FUNCTION_64_0(v198, v199, v200, v201, v202, v203, v204, v205, v242, v252, v254, v255, v256, v257, v258, v259, *(&v259 + 1), v260, *(&v260 + 1), v261, *(&v261 + 1), v262, v263, v264);
              sub_217269F50(&v263);
              *&v259 = v195;
              *(&v259 + 1) = v6;
              v206 = __swift_project_boxed_opaque_existential_1(&v254, v257);
              OUTLINED_FUNCTION_11_6(v206, v207, v208, v209, v210, v211, v212, v213, v249);
              __swift_destroy_boxed_opaque_existential_1(&v254);
              v37 = 7;
              goto LABEL_16;
            }

            if (qword_280BE8A60 != -1)
            {
              swift_once();
            }

            v214 = OUTLINED_FUNCTION_30_2(&qword_280BE8A68);
            if (v9 && v215 == v6)
            {
              break;
            }

            v217 = OUTLINED_FUNCTION_25_38(v214, v215);

            if (v217)
            {
              goto LABEL_102;
            }

            LODWORD(v252) = 0;
            v242 = 250;
            sub_217752D08();
            __break(1u);
LABEL_100:
            swift_once();
          }

LABEL_102:
          OUTLINED_FUNCTION_32_28(v218, v219, v220, v221, v222, v242, v252);
          v223 = v257;
          __swift_project_boxed_opaque_existential_1(&v254, v257);
          v224 = OUTLINED_FUNCTION_8_49();
          v226 = v225(v224);
          OUTLINED_FUNCTION_64_0(v226, v227, v228, v229, v230, v231, v232, v233, v250, v253, v254, v255, v256, v257, v258, v259, *(&v259 + 1), v260, *(&v260 + 1), v261, *(&v261 + 1), v262, v263, v264);
          sub_217269F50(&v263);
          *&v259 = v223;
          *(&v259 + 1) = v6;
          v234 = __swift_project_boxed_opaque_existential_1(&v254, v257);
          OUTLINED_FUNCTION_11_6(v234, v235, v236, v237, v238, v239, v240, v241, v251);
          __swift_destroy_boxed_opaque_existential_1(&v254);
          v37 = 8;
        }
      }
    }
  }

LABEL_16:
  v38 = v260;
  *a2 = v259;
  *(a2 + 16) = v38;
  *(a2 + 32) = v261;
  *(a2 + 48) = v262;
  *(a2 + 56) = v37;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double sub_21754C67C()
{
  if (qword_280BEB7A0 != -1)
  {
    swift_once();
  }

  v0 = off_280BEB7A8;
  os_unfair_lock_lock(*(off_280BEB7A8 + 2));
  sub_21770FA7C(0xD000000000000024, 0x80000002177B0760, &type metadata for MusicCatalogSearchResponse.TopResult, &protocol witness table for MusicCatalogSearchResponse.TopResult, v2);
  os_unfair_lock_unlock(v0[2]);
  result = *v2;
  xmmword_27CB29528 = v2[0];
  xmmword_27CB29538 = v2[1];
  return result;
}

uint64_t static MusicCatalogSearchResponse.TopResult.typeValue.getter@<X0>(__n128 *a1@<X8>)
{
  if (qword_27CB23C48 != -1)
  {
    swift_once();
  }

  *a1 = OUTLINED_FUNCTION_1449(&xmmword_27CB29528);
  a1[1].n128_u64[0] = v3;
  a1[1].n128_u64[1] = v2;

  return sub_217751DE8();
}

uint64_t sub_21754C7B4()
{
  if (qword_27CB23C48 != -1)
  {
    swift_once();
  }

  xmmword_27CB29548 = xmmword_27CB29528;
  xmmword_27CB29558 = xmmword_27CB29538;

  return sub_217751DE8();
}

uint64_t static MusicItemTypeValue.catalogSearchTopResult.getter@<X0>(__n128 *a1@<X8>)
{
  if (qword_27CB23C50 != -1)
  {
    swift_once();
  }

  *a1 = OUTLINED_FUNCTION_1449(&xmmword_27CB29548);
  a1[1].n128_u64[0] = v3;
  a1[1].n128_u64[1] = v2;

  return sub_217751DE8();
}

uint64_t sub_21754C89C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A08, &qword_217758FC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_217777380;
  if (qword_280BE62F0 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = OUTLINED_FUNCTION_1449(&xmmword_280BE62F8);
  *(v0 + 48) = v2;
  *(v0 + 56) = v1;
  v3 = qword_280BE6270;
  sub_217751DE8();
  if (v3 != -1)
  {
    swift_once();
  }

  *(v0 + 64) = OUTLINED_FUNCTION_1449(&xmmword_280BE6278);
  *(v0 + 80) = v5;
  *(v0 + 88) = v4;
  v6 = qword_280BE7FE8;
  sub_217751DE8();
  if (v6 != -1)
  {
    swift_once();
  }

  *(v0 + 96) = OUTLINED_FUNCTION_1449(&xmmword_280BE7FF0);
  *(v0 + 112) = v8;
  *(v0 + 120) = v7;
  v9 = qword_280BE6378;
  sub_217751DE8();
  if (v9 != -1)
  {
    swift_once();
  }

  *(v0 + 128) = OUTLINED_FUNCTION_1449(&xmmword_280BE6380);
  *(v0 + 144) = v11;
  *(v0 + 152) = v10;
  v12 = qword_280BE6220;
  sub_217751DE8();
  if (v12 != -1)
  {
    swift_once();
  }

  *(v0 + 160) = OUTLINED_FUNCTION_1449(&xmmword_280BE6228);
  *(v0 + 176) = v14;
  *(v0 + 184) = v13;
  v15 = qword_280BE61F8;
  sub_217751DE8();
  if (v15 != -1)
  {
    swift_once();
  }

  *(v0 + 192) = OUTLINED_FUNCTION_1449(&xmmword_280BE6200);
  *(v0 + 208) = v17;
  *(v0 + 216) = v16;
  v18 = qword_280BE6348;
  sub_217751DE8();
  if (v18 != -1)
  {
    swift_once();
  }

  *(v0 + 224) = OUTLINED_FUNCTION_1449(&xmmword_280BE6350);
  *(v0 + 240) = v20;
  *(v0 + 248) = v19;
  v21 = qword_280BEB138;
  sub_217751DE8();
  if (v21 != -1)
  {
    swift_once();
  }

  *(v0 + 256) = OUTLINED_FUNCTION_1449(&xmmword_280BEB140);
  *(v0 + 272) = v23;
  *(v0 + 280) = v22;
  v24 = qword_280BE6248;
  sub_217751DE8();
  if (v24 != -1)
  {
    swift_once();
  }

  *(v0 + 288) = OUTLINED_FUNCTION_1449(&xmmword_280BE6250);
  *(v0 + 304) = v26;
  *(v0 + 312) = v25;
  qword_27CB29568 = v0;

  return sub_217751DE8();
}

uint64_t static MusicCatalogSearchResponse.TopResult.supportedTypeValues.getter()
{
  if (qword_27CB23C58 != -1)
  {
    swift_once();
  }

  return sub_217751DE8();
}

uint64_t sub_21754CBE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29570, &qword_217777390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21754CC50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29578;
  if (!qword_27CB29578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29578);
  }

  return result;
}

uint64_t sub_21754CCB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 57))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 56);
  if (v3 >= 9)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21754CCEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
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

uint64_t sub_21754CD3C(uint64_t result, unsigned int a2)
{
  if (a2 > 8)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 9;
    LOBYTE(a2) = 9;
  }

  *(result + 56) = a2;
  return result;
}

void OUTLINED_FUNCTION_29_31()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t CloudResource<>.filteredCloudTrackResource.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CloudTrack(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  type metadata accessor for CloudPlaylistEntry(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB264F8, &unk_2177776E0);
  v13 = OUTLINED_FUNCTION_45_0(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_1();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v29 - v18;
  OUTLINED_FUNCTION_3_73();
  sub_21755329C(v1, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_2_82();
    sub_2175531EC(v11, v19);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_4_74();
    sub_2175531EC(v11, v19);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v3);
    goto LABEL_7;
  }

  __swift_storeEnumTagSinglePayload(v19, 1, 1, v3);
  OUTLINED_FUNCTION_5_60();
  sub_217553244(v11, v21);
LABEL_7:
  v22 = OUTLINED_FUNCTION_25_0();
  sub_21726A594(v22, v23, v24, v25);
  if (__swift_getEnumTagSinglePayload(v16, 1, v3) == 1)
  {
    sub_2171F0738(v16, &qword_27CB264F8, &unk_2177776E0);
    v26 = 1;
  }

  else
  {
    sub_2175531EC(v16, v7);
    sub_21738A90C();
    sub_217553244(v7, type metadata accessor for CloudTrack);
    v26 = 0;
  }

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24820, &unk_2177650E0);
  return __swift_storeEnumTagSinglePayload(a1, v26, 1, v27);
}