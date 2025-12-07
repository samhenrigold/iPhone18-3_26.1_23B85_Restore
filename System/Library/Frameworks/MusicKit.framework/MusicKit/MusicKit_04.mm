uint64_t sub_217269698(const void *a1, uint64_t a2)
{
  v50 = a1;
  v3 = type metadata accessor for CloudPersonalRecommendation.Item(0);
  MEMORY[0x28223BE20](v3 - 8);
  v41 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for CloudPersonalRecommendation.Content(0);
  MEMORY[0x28223BE20](v49);
  v48 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24210, &unk_21776DB90);
  v44 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v47 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v39 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24218, &qword_217758658);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  v16 = *(a2 + 64);
  v51 = a2 + 64;
  v17 = 1 << *(a2 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v40 = (v17 + 63) >> 6;
  v46 = a2;
  result = sub_217751DE8();
  v21 = 0;
  v22 = 0;
  v45 = v6;
  v42 = v12;
  v52 = v15;
  while (1)
  {
    v53 = v21;
    if (!v19)
    {
      break;
    }

    v23 = v22;
LABEL_10:
    v24 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v25 = v24 | (v23 << 6);
    v26 = (*(v46 + 48) + 16 * v25);
    v28 = *v26;
    v27 = v26[1];
    v29 = v43;
    sub_21726A630(*(v46 + 56) + *(v44 + 72) * v25, v43, &qword_27CB24210, &unk_21776DB90);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24220, &qword_217758660);
    v31 = *(v30 + 48);
    v32 = v42;
    *v42 = v28;
    *(v32 + 1) = v27;
    v33 = v29;
    v12 = v32;
    sub_21726A594(v33, &v32[v31], &qword_27CB24210, &unk_21776DB90);
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v30);
    sub_217751DE8();
    v6 = v45;
    v15 = v52;
LABEL_11:
    sub_21726A594(v12, v15, &qword_27CB24218, &qword_217758658);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24220, &qword_217758660);
    if (__swift_getEnumTagSinglePayload(v15, 1, v34) == 1)
    {

      return MEMORY[0x21CEA3550](v53);
    }

    v35 = v47;
    sub_21726A594(&v15[*(v34 + 48)], v47, &qword_27CB24210, &unk_21776DB90);
    memcpy(v55, v50, sizeof(v55));
    sub_217751FF8();

    v36 = v48;
    sub_217269C38(v35, v48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v37 = v41;
      sub_217269C9C(v36, v41);
      MEMORY[0x21CEA3550](1);
      CloudPersonalRecommendation.Item.hash(into:)();
      sub_217269D00(v37);
    }

    else
    {
      memcpy(v54, v36, sizeof(v54));
      MEMORY[0x21CEA3550](0);
      CloudPersonalRecommendation.hash(into:)(v55);
      sub_217269D5C(v54);
    }

    sub_217751FF8();
    if (*(v35 + v6[10] + 8))
    {
      sub_217753208();
      sub_217751FF8();
    }

    else
    {
      sub_217753208();
    }

    v15 = v52;
    memcpy(v56, (v35 + v6[11]), sizeof(v56));
    sub_2172638E8(v55);
    sub_217265A08(v55, *(v35 + v6[12]));
    sub_217265A08(v55, *(v35 + v6[13]));
    sub_217265A08(v55, *(v35 + v6[14]));
    sub_217265A08(v55, *(v35 + v6[15]));
    sub_2171F0738(v35, &qword_27CB24210, &unk_21776DB90);
    result = sub_217753238();
    v21 = result ^ v53;
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v40)
    {
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24220, &qword_217758660);
      __swift_storeEnumTagSinglePayload(v12, 1, 1, v38);
      v19 = 0;
      goto LABEL_11;
    }

    v19 = *(v51 + 8 * v23);
    ++v22;
    if (v19)
    {
      v22 = v23;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_217269C38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudPersonalRecommendation.Content(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217269C9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudPersonalRecommendation.Item(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_217269D00(uint64_t a1)
{
  v2 = type metadata accessor for CloudPersonalRecommendation.Item(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217269EAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21726A074(const void *a1, uint64_t a2)
{
  v2 = a2 + 64;
  OUTLINED_FUNCTION_0_1();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;
  result = sub_217751DE8();
  v9 = 0;
  v10 = 0;
  if (v5)
  {
    while (1)
    {
LABEL_6:
      v12 = __clz(__rbit64(v5)) | (v10 << 6);
      v13 = *(*(a2 + 48) + 24 * v12 + 8);
      v14 = *(*(a2 + 56) + 16 * v12 + 8);
      sub_217751DE8();

      if (!v13)
      {
LABEL_13:

        return MEMORY[0x21CEA3550](v9);
      }

      memcpy(__dst, a1, sizeof(__dst));
      sub_217751FF8();

      result = MEMORY[0x21CEA3550](*(v14 + 16), v15);
      v16 = *(v14 + 16);
      if (v16)
      {
        break;
      }

LABEL_11:
      v5 &= v5 - 1;

      result = sub_217753238();
      v9 ^= result;
      if (!v5)
      {
        goto LABEL_2;
      }
    }

    v17 = 0;
    v18 = v14 + 40;
    while (v17 < *(v14 + 16))
    {
      ++v17;
      result = sub_217751FF8();
      v18 += 16;
      if (v16 == v17)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_2:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v7)
      {
        goto LABEL_13;
      }

      v5 = *(v2 + 8 * v11);
      ++v10;
      if (v5)
      {
        v10 = v11;
        goto LABEL_6;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21726A450(uint64_t a1)
{
  v1 = *(a1 + 24);
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

uint64_t sub_21726A474(uint64_t a1)
{
  v1 = *(a1 + 32);
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

uint64_t sub_21726A594(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_99_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_43();
  v5 = OUTLINED_FUNCTION_93();
  v6(v5);
  return v4;
}

uint64_t sub_21726A5E0(uint64_t result, uint64_t a2, char a3)
{
  if (!a3 || a3 == 5 || a3 == 4)
  {
    return sub_217751DE8();
  }

  return v3;
}

double sub_21726A608(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3 || a3 == 5 || a3 == 4)
  {
  }

  return result;
}

uint64_t sub_21726A630(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_99_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_43();
  v5 = OUTLINED_FUNCTION_93();
  v6(v5);
  return v4;
}

void *OUTLINED_FUNCTION_22_3(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return memcpy(va, v9, 0x48uLL);
}

void *OUTLINED_FUNCTION_52_1()
{

  return memcpy((v0 + 432), (v0 + 504), 0x48uLL);
}

void OUTLINED_FUNCTION_53_0()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_54_1()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_55_1()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_56_1()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_57_1()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_58_2()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_59_1()
{

  JUMPOUT(0x21CEA3550);
}

void *OUTLINED_FUNCTION_60_2(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char __src)
{

  return memcpy(&a9, &__src, 0x140uLL);
}

uint64_t OUTLINED_FUNCTION_61(uint64_t a1, ...)
{

  return sub_217751FF8();
}

void *OUTLINED_FUNCTION_62_1()
{

  return memcpy(&STACK[0x8D0], (v0 + 16), 0x1B8uLL);
}

void *OUTLINED_FUNCTION_63_0()
{

  return memcpy((v0 + 504), (v0 + 576), 0x48uLL);
}

void OUTLINED_FUNCTION_64_1()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_65_1()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_67_2()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_68_3()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_69_1()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_70_1()
{

  JUMPOUT(0x21CEA3550);
}

void *OUTLINED_FUNCTION_71_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char __dst, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char __src)
{

  return memcpy(&__dst, &__src, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_72_1()
{

  return sub_217751FF8();
}

uint64_t OUTLINED_FUNCTION_73_2()
{

  return sub_217751FF8();
}

void *OUTLINED_FUNCTION_74_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t __dst)
{

  return memcpy(&__dst, &STACK[0x398], 0x48uLL);
}

void OUTLINED_FUNCTION_76_0(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 352) = a3;
  sub_21726A5E0(a1, a2, a3);

  JSONValue.hash(into:)((v3 + 432));
}

void OUTLINED_FUNCTION_77_0(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 448) = a3;
  sub_21726A5E0(a1, a2, a3);

  JSONValue.hash(into:)((v3 + 504));
}

uint64_t OUTLINED_FUNCTION_100_0@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);

  return sub_21726A630(a3 + 128, va, a1, a2);
}

void OUTLINED_FUNCTION_102_2()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_103_0()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_104_0()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_105_2()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_106_0()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_107()
{

  JUMPOUT(0x21CEA3550);
}

uint64_t OUTLINED_FUNCTION_109_0(uint64_t a1)
{

  return sub_217751FF8();
}

void OUTLINED_FUNCTION_110()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_111_0()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_112_1()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_113_0()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_114_0()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_115()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_116_0()
{

  JUMPOUT(0x21CEA3550);
}

void *OUTLINED_FUNCTION_117_1(void *a1)
{

  return memcpy(a1, v1, 0x1B8uLL);
}

void OUTLINED_FUNCTION_118_0()
{

  JUMPOUT(0x21CEA3550);
}

uint64_t OUTLINED_FUNCTION_120_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

void OUTLINED_FUNCTION_121_0()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_122()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_123_0()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_124_0()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_125_0()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_126_0()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_127()
{

  JUMPOUT(0x21CEA3550);
}

id sub_21726AD78()
{
  v1 = v0;
  v2 = *v0;
  v3 = (*v0)[10];
  v4 = sub_2177528F8();
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v97 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v94 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v94 - v13;
  v15 = type metadata accessor for _MusicLibraryMapping.Item.Source(0, v3, v2[11], v2[12]);
  OUTLINED_FUNCTION_0_0();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v94 - v18;
  (*(v20 + 16))(&v94 - v18, v1 + v2[15], v15, v17);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    HIDWORD(v95) = *v19;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(v6 + 32))(v14, &v19[*(TupleTypeMetadata2 + 48)], v4);
    v29 = v6;
    v30 = *(v6 + 16);
    v30(v11, v14, v4);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v3);
    v32 = v14;
    v96 = v29;
    if (EnumTagSinglePayload == 1)
    {
      (*(v29 + 8))(v11, v4);
      v33 = v4;
LABEL_11:
      memset(v105, 0, 40);
      v34 = v97;
      goto LABEL_12;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AD70, &unk_217787190);
    v33 = v4;
    if (!swift_dynamicCast())
    {
      goto LABEL_11;
    }

    v34 = v97;
    if (!*(&v105[1] + 1))
    {
LABEL_12:
      sub_2171F06D8(v105, &qword_27CB243F8, &qword_21779C830);
      goto LABEL_13;
    }

    v35 = v33;
    v36 = v32;
    sub_2171F3F0C(v105, v116);
    v37 = v117;
    v38 = v118;
    __swift_project_boxed_opaque_existential_1(v116, v117);
    (*(v38 + 8))(v105, v37, v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24408, &qword_21775A390);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      memset(v104, 0, 40);
      sub_2171F06D8(v104, &qword_27CB281E0, &qword_2177871A0);
      __swift_destroy_boxed_opaque_existential_1(v116);
      v32 = v36;
      v33 = v35;
      v34 = v97;
LABEL_13:
      v30(v34, v32, v33);
      if (__swift_getEnumTagSinglePayload(v34, 1, v3) == 1)
      {
        (*(v96 + 8))(v34, v33);
LABEL_20:
        memset(v105, 0, 40);
        goto LABEL_21;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
      if (!swift_dynamicCast())
      {
        goto LABEL_20;
      }

      if (!*(&v105[1] + 1))
      {
LABEL_21:
        sub_2171F06D8(v105, &qword_27CB281E0, &qword_2177871A0);
        LOBYTE(v105[0]) = BYTE4(v95);
        _MusicLibraryMapping.ItemKind.convertToUnderlyingLegacyModelType()();
        v43 = sub_21721478C();
        v44 = objc_opt_self();
        v45 = sub_217751F18();
        v46 = [v44 identifierSetWithIdentifier:v45 modelObjectType:v43 specificLibraryDatabaseID:0 isPossibleLibraryPersistentID:0 source:8];

        v47 = sub_217751DC8();
        v48 = objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
        v49 = v43;
        v50 = v48;
        sub_2175FCB20(v46, v49, v47);
        v51 = OUTLINED_FUNCTION_4_17();
        v52(v51);
        v26 = v50;
        v27 = 4;
        goto LABEL_50;
      }

      sub_2171F3F0C(v105, v116);
      sub_2171FF30C(v116, v110);
      if (swift_dynamicCast())
      {
        v112 = v106;
        v113 = v107;
        v114 = v108;
        v115 = v109;
        Playlist.artwork.getter(v104);
        memcpy(v105, v104, 0x221uLL);
        if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v105) == 1)
        {
          sub_21726B8C4(&v112);
LABEL_36:
          v27 = 3;
LABEL_40:
          v80 = v117;
          __swift_project_boxed_opaque_existential_1(v116, v117);
          OUTLINED_FUNCTION_2_11();
          v81 = OUTLINED_FUNCTION_4_17();
          v82(v81);
          v26 = v80;
LABEL_49:
          __swift_destroy_boxed_opaque_existential_1(v116);
          goto LABEL_50;
        }

        sub_2171F06D8(v104, &qword_27CB24400, &unk_21775E9A0);
        if (qword_280BE91A0 != -1)
        {
          OUTLINED_FUNCTION_0_8(&qword_280BE91A0);
        }

        sub_2176CA4DC(qword_280C025B8, v73, v74, v75, v76, v77, v78, v79, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, *&v104[0], *(&v104[0] + 1), *&v104[1], *(&v104[1] + 1), *&v104[2], *(&v104[2] + 1), *&v104[3], *(&v104[3] + 1), *&v104[4], *(&v104[4] + 1));
        sub_21726B8C4(&v112);
        if (v99 == 10)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v109 = 0;
        v107 = 0u;
        v108 = 0u;
        v106 = 0u;
        sub_2171F06D8(&v106, &unk_27CB28A90, &qword_217758F90);
      }

      __swift_project_boxed_opaque_existential_1(v116, v117);
      OUTLINED_FUNCTION_3_18();
      v53 = *(&v105[17] + 1);
      sub_217751DE8();
      sub_217269F50(v105);
      if (v53[2])
      {
        v54 = v53[4];
        v55 = v53[5];
        v56 = OUTLINED_FUNCTION_1_5();
        sub_21726B87C(v56, v57);

        if (v55 != 9)
        {
          *&v104[0] = v54;
          *(&v104[0] + 1) = v55;
          v106 = xmmword_2177586D0;
          v58 = OUTLINED_FUNCTION_1_5();
          sub_21726B8B4(v58, v59);
          v60 = static MusicItemDataSource.== infix(_:_:)(v104, &v106);
          sub_21726B8A0(v106, *(&v106 + 1));
          sub_21726B8A0(*&v104[0], *(&v104[0] + 1));
          v61 = OUTLINED_FUNCTION_1_5();
          sub_21726B890(v61, v62);
          if (v60)
          {
            goto LABEL_36;
          }

LABEL_39:
          v27 = 1;
          goto LABEL_40;
        }
      }

      else
      {

        v54 = 0;
      }

      sub_21726B890(v54, 9uLL);
      sub_21726B890(0, 1uLL);
      goto LABEL_39;
    }

    sub_2171F3F0C(v104, v110);
    sub_2171FF30C(v110, &v99);
    v39 = v36;
    if (swift_dynamicCast())
    {
      v112 = v106;
      v113 = v107;
      v114 = v108;
      v115 = v109;
      Playlist.artwork.getter(v104);
      memcpy(v105, v104, 0x221uLL);
      enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0 = get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v105);
      v41 = v96;
      v42 = v35;
      if (enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0 == 1)
      {
        sub_21726B8C4(&v112);
LABEL_44:
        v27 = 3;
LABEL_48:
        __swift_project_boxed_opaque_existential_1(v110, v111);
        v90 = OUTLINED_FUNCTION_2_11();
        (*(v41 + 8))(v39, v42);
        v26 = v90;
        __swift_destroy_boxed_opaque_existential_1(v110);
        goto LABEL_49;
      }

      sub_2171F06D8(v104, &qword_27CB24400, &unk_21775E9A0);
      if (qword_280BE91A0 != -1)
      {
        OUTLINED_FUNCTION_0_8(&qword_280BE91A0);
      }

      sub_2176CA4DC(qword_280C025B8, v83, v84, v85, v86, v87, v88, v89, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, *&v104[0], *(&v104[0] + 1), *&v104[1], *(&v104[1] + 1), *&v104[2], *(&v104[2] + 1), *&v104[3], *(&v104[3] + 1), *&v104[4], *(&v104[4] + 1));
      sub_21726B8C4(&v112);
      if (HIBYTE(v98) == 10)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v109 = 0;
      v107 = 0u;
      v108 = 0u;
      v106 = 0u;
      sub_2171F06D8(&v106, &unk_27CB28A90, &qword_217758F90);
      v42 = v35;
    }

    __swift_project_boxed_opaque_existential_1(v110, v111);
    OUTLINED_FUNCTION_3_18();
    v63 = *(&v105[17] + 1);
    sub_217751DE8();
    sub_217269F50(v105);
    if (v63[2])
    {
      v64 = v63[4];
      v65 = v63[5];
      v66 = OUTLINED_FUNCTION_1_5();
      sub_21726B87C(v66, v67);

      v41 = v96;
      if (v65 != 9)
      {
        *&v104[0] = v64;
        *(&v104[0] + 1) = v65;
        v106 = xmmword_2177586D0;
        v68 = OUTLINED_FUNCTION_1_5();
        sub_21726B8B4(v68, v69);
        v70 = static MusicItemDataSource.== infix(_:_:)(v104, &v106);
        sub_21726B8A0(v106, *(&v106 + 1));
        sub_21726B8A0(*&v104[0], *(&v104[0] + 1));
        v71 = OUTLINED_FUNCTION_1_5();
        sub_21726B890(v71, v72);
        if (v70)
        {
          goto LABEL_44;
        }

LABEL_47:
        v27 = 1;
        goto LABEL_48;
      }
    }

    else
    {

      v64 = 0;
      v41 = v96;
    }

    sub_21726B890(v64, 9uLL);
    sub_21726B890(0, 1uLL);
    goto LABEL_47;
  }

  v21 = [objc_opt_self() emptyIdentifierSet];
  v22 = sub_217751DC8();
  v23 = objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
  v24 = sub_2175FCB20(v21, 28, v22);
  v25 = *(*(v3 - 8) + 8);
  v26 = v24;
  v25(v19, v3);
  v27 = 0;
LABEL_50:
  v91 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelStoreBrowseContentItem) initWithInnerObject_];

  v92 = [objc_allocWithZone(MusicKit_SoftLinking_MPStoreLibraryPersonalizationContentDescriptor) initWithModel:v91 personalizationStyle:v27];
  return v92;
}

uint64_t sub_21726B87C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 9)
  {
    return sub_217751DE8();
  }

  return result;
}

double sub_21726B890(uint64_t result, unint64_t a2)
{
  if (a2 != 9)
  {
    return sub_21726B8A0(result, a2);
  }

  return v2;
}

double sub_21726B8A0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 9)
  {
  }

  return result;
}

uint64_t sub_21726B8B4(uint64_t a1, unint64_t a2)
{
  if (a2 != 9)
  {
    return sub_21726B87C(a1, a2);
  }

  return a1;
}

void MusicPlayer.Queue.__allocating_init<A, B>(for:startingAt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_69_2();
  swift_allocObject();
  MusicPlayer.Queue.init<A, B>(for:startingAt:)();
  OUTLINED_FUNCTION_218();
}

void MusicPlayer.Queue.init<A, B>(for:startingAt:)()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_2177528F8();
  OUTLINED_FUNCTION_0_0();
  v34 = v15;
  v35 = v14;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_150();
  v33 = v17;
  OUTLINED_FUNCTION_0();
  v32 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_81();
  v31 = v20;
  bzero((v0 + 16), 0x2EAuLL);
  *(v0 + 1544) = 0;
  *(v0 + 1528) = 0u;
  *(v0 + 1552) = 0xF000000000000000;
  _s7MonitorCMa();
  *(v0 + 1560) = 0u;
  *(v0 + 1576) = 0u;
  *(v0 + 1592) = 0u;
  swift_allocObject();
  *(v0 + 1608) = sub_217548944();
  bzero(v42, 0x2EAuLL);
  v37[2] = v9;
  v37[3] = v7;
  v37[4] = v5;
  v37[5] = v3;
  v36 = v11;
  v37[6] = v11;
  v37[7] = v42;
  v22 = sub_21726C3E4(sub_217275658, v37, v9, &type metadata for MusicPlayer.Queue.Entry, MEMORY[0x277D84A98], v5, MEMORY[0x277D84AC0], v21);
  sub_217284868();
  if (*(&v40 + 1))
  {
    OUTLINED_FUNCTION_162_1();
    (*(v23 + 8))(v13, v9);
    sub_2171F0738(&v40, &qword_27CB24410, &unk_2177586F0);
    v25 = v34;
    v24 = v35;
  }

  else
  {
    v26 = v13;
    sub_2171F0738(&v40, &qword_27CB24410, &unk_2177586F0);
    v25 = v34;
    v24 = v35;
    (*(v34 + 16))(v33, v36, v35);
    OUTLINED_FUNCTION_133(v33, 1, v7);
    if (v27)
    {
      OUTLINED_FUNCTION_162_1();
      (*(v28 + 8))(v26, v9);
      (*(v34 + 8))(v33, v35);
    }

    else
    {
      (*(v32 + 32))(v31, v33, v7);
      v39[3] = v7;
      v39[4] = v3;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v39);
      (*(v32 + 16))(boxed_opaque_existential_0, v31, v7);
      sub_2171FF30C(v39, &v40);
      OUTLINED_FUNCTION_53_1(&v40, v38);
      OUTLINED_FUNCTION_162_1();
      (*(v30 + 8))(v26, v9);
      (*(v32 + 8))(v31, v7);
      __swift_destroy_boxed_opaque_existential_1(v39);
      v40 = v38[0];
      memcpy(v41, v38, 0x2D9uLL);
      v41[729] = 0;
      sub_217751DE8();
      sub_217275974();
    }
  }

  *(v1 + 768) = v22;
  memcpy((v1 + 776), v42, 0x2EAuLL);
  (*(v25 + 8))(v36, v24);
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21726BE48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v45 = a3;
  v49 = a2;
  v10 = sub_2177528F8();
  v48 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - v11;
  v13 = *(a4 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57[1] = a4;
  v47 = a5;
  v57[2] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v56);
  v18 = *(v13 + 16);
  v46 = a1;
  v18(boxed_opaque_existential_0, a1, a4);
  sub_2171FF30C(v56, &v54);
  sub_2173E04B4(&v54, 0, 1, 0, 1, v58);
  __swift_destroy_boxed_opaque_existential_1(v56);
  v19 = v58[1];
  *a6 = v58[0];
  *(a6 + 8) = v19;
  memcpy((a6 + 16), v58, 0x2D9uLL);
  v44 = a6;
  *(a6 + 745) = 0;
  v20 = v48;
  (*(v48 + 16))(v12, v49, v10);
  if (__swift_getEnumTagSinglePayload(v12, 1, a4) == 1)
  {
    v21 = *(v20 + 8);
    sub_217751DE8();
    return v21(v12, v10);
  }

  v49 = v13;
  (*(v13 + 32))(v16, v12, a4);
  v23 = *(v47 + 8);
  v24 = a4;
  v25 = *(v23 + 8);
  sub_217751DE8();
  v26 = v25(a4, v23);
  v28 = v27;
  v48 = v24;
  if (v26 == v25(v24, v23) && v28 == v29)
  {
  }

  else
  {
    v31 = sub_217753058();

    if ((v31 & 1) == 0)
    {
      return (*(v49 + 8))(v16, v48, v32.n128_f64[0]);
    }
  }

  v33 = v47;
  v34 = v48;
  v35 = *(v47 + 16);
  v35(v56, v48, v47, v32);
  v36 = v56[0];
  v37 = v56[1];
  (v35)(&v54, v34, v33);
  v38 = v54;
  v39 = v49;
  if (!v37)
  {
    (*(v49 + 8))(v16, v34);
    if (!*(&v38 + 1))
    {
      v58[0] = v36;
      v58[1] = 0;
      memcpy(&v58[2], v57, 0x68uLL);
      sub_2171F0738(v58, &qword_27CB244D0, &unk_21775D620);
      goto LABEL_16;
    }

LABEL_18:
    v58[0] = v36;
    v58[1] = v37;
    memcpy(&v58[2], v57, 0x68uLL);
    *&v58[15] = v38;
    memcpy(&v58[17], v55, 0x68uLL);
    return sub_2171F0738(v58, &qword_27CB24AE8, &unk_2177590C0);
  }

  v58[0] = v36;
  v58[1] = v37;
  memcpy(&v58[2], v57, 0x68uLL);
  memcpy(v53, v58, sizeof(v53));
  if (!*(&v54 + 1))
  {
    sub_217284868();
    (*(v39 + 8))(v16, v34);
    memcpy(v52, v53, sizeof(v52));
    sub_2172848C0(v52);
    goto LABEL_18;
  }

  memcpy(&v52[16], v55, 0x68uLL);
  *v52 = v54;
  sub_217284868();
  static PlayParameters.== infix(_:_:)(v53, v52);
  v41 = v40;
  memcpy(v50, v52, sizeof(v50));
  sub_2172848C0(v50);
  (*(v39 + 8))(v16, v34);
  memcpy(v51, v53, sizeof(v51));
  sub_2172848C0(v51);
  *v52 = v36;
  *&v52[8] = v37;
  memcpy(&v52[16], v57, 0x68uLL);
  result = sub_2171F0738(v52, &qword_27CB244D0, &unk_21775D620);
  if (v41)
  {
LABEL_16:
    v42 = v45;
    sub_2171F0738(v45, &qword_27CB24410, &unk_2177586F0);
    return sub_217275AA0(v44, v42);
  }

  return result;
}

uint64_t sub_21726C3E4(uint64_t (*a1)(char *, char *), uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v60 = a8;
  v9 = v8;
  v74 = a2;
  v75 = a4;
  v73 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_0();
  v68 = v14;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_150();
  v61 = a5;
  v62 = v16;
  v59 = *(a5 - 8);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6_1();
  v71 = (v18 - v19);
  MEMORY[0x28223BE20](v20);
  v69 = &v56 - v21;
  OUTLINED_FUNCTION_206();
  sub_2177528F8();
  OUTLINED_FUNCTION_0_0();
  v57 = v23;
  v58 = v22;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_1();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v56 - v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_6_1();
  v70 = v31 - v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_0();
  v67 = v34;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_81();
  v66 = v36;
  v65 = a6;
  v76 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_0();
  v63 = v37;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v38);
  v40 = &v56 - v39;
  v41 = sub_217752138();
  v77 = sub_217752C38();
  v72 = sub_217752C48();
  sub_217752BE8();
  (*(v67 + 16))(v66, v64, a3);
  v75 = v40;
  v67 = a3;
  result = sub_217752128();
  if (v41 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v41)
  {
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_217752968();
      result = __swift_getEnumTagSinglePayload(v29, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v73(v29, v69);
      if (v9)
      {
        v52 = OUTLINED_FUNCTION_159();
        v53(v52);

        (*(v59 + 32))(v60, v69, v61);
        v54 = OUTLINED_FUNCTION_205_0();
        return v55(v54);
      }

      v9 = 0;
      v43 = OUTLINED_FUNCTION_205_0();
      v44(v43);
      sub_217752C28();
      if (!--v41)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v45 = (v68 + 32);
  v46 = (v68 + 8);
  v47 = v62;
  while (1)
  {
    sub_217752968();
    if (__swift_getEnumTagSinglePayload(v26, 1, AssociatedTypeWitness) == 1)
    {
      v48 = OUTLINED_FUNCTION_159();
      v49(v48);
      (*(v57 + 8))(v26, v58);
      return v77;
    }

    (*v45)(v47, v26, AssociatedTypeWitness);
    v73(v47, v71);
    if (v9)
    {
      break;
    }

    v9 = 0;
    (*v46)(v47, AssociatedTypeWitness);
    sub_217752C28();
  }

  (*v46)(v47, AssociatedTypeWitness);
  v50 = OUTLINED_FUNCTION_159();
  v51(v50);

  return (*(v59 + 32))(v60, v71, v61);
}

uint64_t MusicPlayer.Queue.__allocating_init<A>(_:startingAt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_69_2();
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_13_2();
  MusicPlayer.Queue.init<A>(_:startingAt:)(v7, v8, a3, a4, v9, v10, v11);
  return v6;
}

void MusicPlayer.Queue.init<A>(_:startingAt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_220();
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  bzero((v7 + 16), 0x2EAuLL);
  v12 = OUTLINED_FUNCTION_56_2();
  OUTLINED_FUNCTION_110_0(v12);
  *(v7 + 1608) = sub_217548944();
  OUTLINED_FUNCTION_29_5();
  v13();
  v14 = sub_217752468();
  v15 = OUTLINED_FUNCTION_13_2();
  v16(v15);
  *(v8 + 768) = v14;
  memcpy((v8 + 776), v10, 0x2EAuLL);
  OUTLINED_FUNCTION_218();
}

uint64_t MusicPlayer.Queue.__allocating_init(album:startingAt:)()
{
  OUTLINED_FUNCTION_143();
  OUTLINED_FUNCTION_69_2();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_132();
  MusicPlayer.Queue.init(album:startingAt:)();
  return v0;
}

uint64_t MusicPlayer.Queue.init(album:startingAt:)()
{
  OUTLINED_FUNCTION_165_0();
  v3 = OUTLINED_FUNCTION_56_2();
  OUTLINED_FUNCTION_110_0(v3);
  *(v0 + 1608) = sub_217548944();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24420, &qword_217758700);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2177586E0;
  v18 = &type metadata for Album;
  v19 = &protocol witness table for Album;
  OUTLINED_FUNCTION_197();
  *&v17 = swift_allocObject();
  sub_21725CF0C(v1, v17 + 16);
  sub_2171FF30C(&v17, v15);
  OUTLINED_FUNCTION_53_1(v15, v16);
  __swift_destroy_boxed_opaque_existential_1(&v17);
  OUTLINED_FUNCTION_164_0();
  *(v4 + 777) = 0;
  *(v0 + 768) = v4;
  v16[3] = &type metadata for Track;
  v16[4] = &protocol witness table for Track;
  v16[0] = swift_allocObject();
  sub_217275710(v2, v16[0] + 16);
  sub_2171FF30C(v16, &v17);
  sub_217751DE8();
  OUTLINED_FUNCTION_53_1(&v17, v14);
  sub_21727576C(v2);
  sub_21725CE44(v1);
  v5 = __swift_destroy_boxed_opaque_existential_1(v16);
  OUTLINED_FUNCTION_141_0(v5, v6, v7, v8, v9, v10, v11, v12, v14[0], v14[1]);
  *(v0 + 1521) = v17;
  sub_217751DE8();
  return v0;
}

uint64_t MusicPlayer.Queue.__allocating_init(playlist:startingAt:)()
{
  OUTLINED_FUNCTION_143();
  OUTLINED_FUNCTION_69_2();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_132();
  MusicPlayer.Queue.init(playlist:startingAt:)();
  return v0;
}

uint64_t MusicPlayer.Queue.init(playlist:startingAt:)()
{
  OUTLINED_FUNCTION_165_0();
  v3 = OUTLINED_FUNCTION_56_2();
  OUTLINED_FUNCTION_110_0(v3);
  *(v0 + 1608) = sub_217548944();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24420, &qword_217758700);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2177586E0;
  v18 = &type metadata for Playlist;
  v19 = &protocol witness table for Playlist;
  OUTLINED_FUNCTION_197();
  *&v17 = swift_allocObject();
  sub_2172757C0(v1, v17 + 16);
  sub_2171FF30C(&v17, v15);
  OUTLINED_FUNCTION_53_1(v15, v16);
  __swift_destroy_boxed_opaque_existential_1(&v17);
  OUTLINED_FUNCTION_164_0();
  *(v4 + 777) = 0;
  *(v0 + 768) = v4;
  v16[3] = &type metadata for Playlist.Entry;
  v16[4] = &protocol witness table for Playlist.Entry;
  OUTLINED_FUNCTION_197();
  v16[0] = swift_allocObject();
  sub_217275858(v2, v16[0] + 16);
  sub_2171FF30C(v16, &v17);
  sub_217751DE8();
  OUTLINED_FUNCTION_53_1(&v17, v14);
  sub_2172758B4(v2);
  sub_21726B8C4(v1);
  v5 = __swift_destroy_boxed_opaque_existential_1(v16);
  OUTLINED_FUNCTION_141_0(v5, v6, v7, v8, v9, v10, v11, v12, v14[0], v14[1]);
  *(v0 + 1521) = v17;
  sub_217751DE8();
  return v0;
}

void (*sub_21726CF80(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x600uLL);
  *a1 = v3;
  v3[191] = v1;
  OUTLINED_FUNCTION_138(v1 + 16, (v3 + 188));
  sub_217284868();
  return sub_21726D004;
}

void sub_21726D004(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_39_0();
    sub_217284868();
    sub_21726E7A0(v2 + 752, 0);
    OUTLINED_FUNCTION_36();
    sub_2171F0738(v3, v4, v5);
  }

  else
  {
    sub_21726E7A0(*a1, 0);
  }

  sub_2171F0738(v2, &qword_27CB24410, &unk_2177586F0);

  free(v2);
}

uint64_t sub_21726D0EC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_126(v2 + 1528, a2);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

double sub_21726D12C()
{
  OUTLINED_FUNCTION_143();
  swift_beginAccess();
  *(v1 + 1528) = v2;
  *(v1 + 1536) = v0;
}

uint64_t sub_21726D208(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_126(v2 + 1544, a2);
  v3 = OUTLINED_FUNCTION_93();
  sub_217275908(v3, v4);
  return OUTLINED_FUNCTION_93();
}

uint64_t sub_21726D248()
{
  OUTLINED_FUNCTION_143();
  swift_beginAccess();
  v3 = *(v1 + 1544);
  v4 = *(v1 + 1552);
  *(v1 + 1544) = v2;
  *(v1 + 1552) = v0;
  return sub_217275680(v3, v4);
}

uint64_t sub_21726D37C(uint64_t a1)
{
  swift_beginAccess();
  sub_217275974();
  return swift_endAccess();
}

void sub_21726D424()
{
  v1 = *(v0 + 1600);
  v2 = v1;
  sub_2175486B8(v1);
}

void sub_21726D458(void *a1)
{
  v2 = *(v1 + 1600);
  *(v1 + 1600) = a1;
  v3 = a1;

  sub_21726D424();
}

uint64_t sub_21726D4A8(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 16) = a1;
  *(v7 + 24) = a3;
  *(v7 + 88) = *a2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21726D4CC()
{
  OUTLINED_FUNCTION_209();
  v1 = *(v0 + 88);
  v2 = swift_task_alloc();
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  *(v2 + 16) = v3;
  *(v2 + 32) = v4;
  v6 = sub_21726C3E4(sub_2172759CC, v2, v3, &type metadata for MusicPlayer.Queue.Entry, MEMORY[0x277D84A98], v4, MEMORY[0x277D84AC0], v5);
  *(v0 + 64) = v6;

  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_21726D5F4;

  return sub_21726D850(v6, v1);
}

uint64_t sub_21726D5F4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v3 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21726D71C, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_20_0();

    return v6();
  }
}

uint64_t sub_21726D71C()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_20_0();

  return v0();
}

uint64_t sub_21726D778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v12[3] = a2;
  v12[4] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, a1, a2);
  sub_2171FF30C(v12, v10);
  sub_2173E04B4(v10, 0, 1, 0, 1, __src);
  __swift_destroy_boxed_opaque_existential_1(v12);
  v8 = __src[1];
  *a4 = __src[0];
  *(a4 + 8) = v8;
  memcpy((a4 + 16), __src, 0x2D9uLL);
  *(a4 + 745) = 0;
  return sub_217751DE8();
}

uint64_t sub_21726D850(uint64_t a1, char a2)
{
  *(v2 + 16) = a1;
  *(v2 + 32) = a2 & 1;
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_21726D900;

  return sub_21726E31C();
}

uint64_t sub_21726D900()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v1 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;

  OUTLINED_FUNCTION_20_0();

  return v3();
}

uint64_t sub_21726D9E4()
{
  OUTLINED_FUNCTION_10();
  v3 = v2;
  *(v1 + 40) = v4;
  *(v1 + 48) = v0;
  *(v1 + 24) = v5;
  *(v1 + 32) = v6;
  *(v1 + 56) = *(v6 - 8);
  *(v1 + 64) = swift_task_alloc();
  *(v1 + 89) = *v3;

  return MEMORY[0x2822009F8](sub_21726DAA4, 0, 0);
}

uint64_t sub_21726DAA4(uint64_t a1)
{
  v2 = *(v1 + 89);
  v3 = OUTLINED_FUNCTION_117_2();
  v4(v3);
  OUTLINED_FUNCTION_117_2();
  v5 = sub_217752468();
  *(v1 + 16) = v5;
  *(v1 + 72) = v5;
  *(v1 + 88) = v2;
  v6 = swift_task_alloc();
  *(v1 + 80) = v6;
  *v6 = v1;
  v6[1] = sub_21726DB8C;
  OUTLINED_FUNCTION_132();

  return sub_21726E31C();
}

uint64_t sub_21726DB8C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v1 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;

  OUTLINED_FUNCTION_20_0();

  return v3();
}

uint64_t sub_21726DCA8(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = v4;
  *(v5 + 24) = a1;
  *(v5 + 32) = a3;
  *(v5 + 81) = *a2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21726DCC8()
{
  OUTLINED_FUNCTION_209();
  v1 = *(v0 + 81);
  v2 = *(v0 + 32);
  sub_217275A34(v2, v2);
  swift_allocObject();
  v3 = sub_2177522C8();
  OUTLINED_FUNCTION_58_3();
  v4();
  sub_21726B91C(v3, v2);
  *(v0 + 16) = v5;
  *(v0 + 56) = v5;
  *(v0 + 80) = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = sub_217752418();
  swift_getWitnessTable();
  *v6 = v0;
  v6[1] = sub_21726DE60;
  v8 = OUTLINED_FUNCTION_20_6();

  return sub_21726D4A8(v8, v9, v7, v10, v11, v12);
}

uint64_t sub_21726DE60()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  *(v4 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21726DF9C, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_20_0();

    return v5();
  }
}

uint64_t sub_21726DFC0(uint64_t a1, _BYTE *a2)
{
  *(v3 + 808) = v2;
  *(v3 + 800) = a1;
  *(v3 + 832) = *a2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21726DFE0()
{
  OUTLINED_FUNCTION_209();
  v1 = *(v0 + 832);
  v2 = *(v0 + 800);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24420, &qword_217758700);
  inited = swift_initStackObject();
  *(v0 + 816) = inited;
  *(inited + 16) = xmmword_2177586E0;
  sub_217275AA0(v2, inited + 32);
  v4 = swift_task_alloc();
  *(v0 + 824) = v4;
  *v4 = v0;
  v4[1] = sub_21726E0D8;

  return sub_21726D850(inited, v1);
}

uint64_t sub_21726E0D8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v1 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;

  swift_setDeallocating();
  sub_217275B68();
  OUTLINED_FUNCTION_20_0();

  return v3();
}

uint64_t sub_21726E1EC()
{

  v0 = OUTLINED_FUNCTION_93();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_58_3();
  sub_217283840(v2, v3, v4, v5);
  v6 = sub_217751C38();

  return v6;
}

uint64_t sub_21726E284()
{

  v0 = OUTLINED_FUNCTION_20_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  sub_217283840(&qword_280BE73D8, &qword_27CB244D8, &qword_2177589B0, MEMORY[0x277CBCE18]);
  sub_217751BB8();
}

uint64_t sub_21726E31C()
{
  OUTLINED_FUNCTION_10();
  v3 = *v2;
  *(v1 + 16) = v0;
  *(v1 + 24) = v3;
  *(v1 + 40) = *v4;
  sub_217752518();
  *(v1 + 32) = sub_217752508();
  v6 = sub_217752498();

  return MEMORY[0x2822009F8](sub_21726E3BC, v6, v5);
}

uint64_t sub_21726E3BC()
{
  v7 = v0;
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);

  v6 = v2;
  (*(*v3 + 376))(v1, &v6);
  OUTLINED_FUNCTION_20_0();

  return v4();
}

void sub_21726E470()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = *v2;
  bzero(v43, 0x2EAuLL);
  v4 = sub_217751DE8();
  sub_21763BD80(v4, v43, v44);
  OUTLINED_FUNCTION_138((v0 + 191), &v42);
  v5 = v0[192];
  v33 = v0[191];
  sub_217751DE8();

  OUTLINED_FUNCTION_138((v0 + 193), &v41);
  v6 = v0[193];
  v7 = v1[194];
  v8 = *&v44[176];
  v9 = *&v44[184];
  sub_217275908(v1[193], v7);
  sub_217275680(v8, v9);
  *&v10 = v33;
  *(&v10 + 1) = v5;
  *&v11 = v6;
  *(&v11 + 1) = v7;
  *&v44[160] = v10;
  *&v44[176] = v11;
  OUTLINED_FUNCTION_138((v1 + 195), &v38);
  sub_217284868();
  v12 = v40;
  if (v40)
  {
    __swift_project_boxed_opaque_existential_1(v39, v40);
    OUTLINED_FUNCTION_0();
    v14 = v13;
    MEMORY[0x28223BE20](v15);
    OUTLINED_FUNCTION_1();
    (*(v14 + 16))(v17 - v16);
    sub_2171F0738(v39, &qword_27CB24418, &unk_21777F680);
    v18 = OUTLINED_FUNCTION_204();
    v19(v18);
    v20 = OUTLINED_FUNCTION_154();
    v21(v20);
    v32 = v43[1];
    v34 = v43[0];
    v30 = v43[3];
    v31 = v43[2];
    v28 = v43[5];
    v29 = v43[4];
    v12 = *(&v43[6] + 1);
    v22 = *&v43[6];
    v23 = *&v43[7];
  }

  else
  {
    sub_2171F0738(v39, &qword_27CB24418, &unk_21777F680);
    v22 = 0;
    v23 = 0;
    v32 = 0u;
    v34 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
  }

  memcpy(v36, &v44[192], sizeof(v36));
  sub_2171F0738(v36, &qword_27CB244D0, &unk_21775D620);
  *&v44[192] = v34;
  *&v44[208] = v32;
  *&v44[224] = v31;
  *&v44[240] = v30;
  *&v44[256] = v29;
  *&v44[272] = v28;
  *&v44[288] = v22;
  *&v44[296] = v12;
  *&v44[304] = v23;
  memcpy(v37, v44, sizeof(v37));
  memcpy(v35, v44, sizeof(v35));
  sub_217283790(v37, v43);
  v24 = sub_21763C064();
  memcpy(v43, v35, 0x138uLL);
  sub_2172837EC(v43);
  v25 = v1[200];
  v26 = v25;
  v27 = &selRef_appendQueueDescriptor_;
  if (!v3)
  {
    v27 = &selRef_prependQueueDescriptor_;
  }

  [v25 *v27];

  memcpy(v35, v44, sizeof(v35));
  sub_2172837EC(v35);
  OUTLINED_FUNCTION_13();
}

void sub_21726E7A0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_217_1();
  v4 = v3;
  OUTLINED_FUNCTION_138(v2 + 16, &v20);
  OUTLINED_FUNCTION_170_0();
  sub_217284868();
  OUTLINED_FUNCTION_170_0();
  sub_217284868();
  if (!v18)
  {
    if (!v19[1])
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  sub_217284868();
  if (!v19[1])
  {
    sub_217276358(v15);
LABEL_13:
    v7 = &unk_27CB24448;
    v8 = &unk_217758748;
LABEL_14:
    sub_2171F0738(&v17, v7, v8);
    goto LABEL_15;
  }

  memcpy(__dst, v19, 0x2EAuLL);
  v5 = v15[0] == __dst[0] && v15[1] == __dst[1];
  if (!v5 && (sub_217753058() & 1) == 0)
  {
    sub_217276358(__dst);
    sub_217276358(v15);
    v7 = &qword_27CB24410;
    v8 = &unk_2177586F0;
    goto LABEL_14;
  }

  v6 = sub_2175ABBE4(&v16);
  sub_217276358(__dst);
  sub_217276358(v15);
  sub_2171F0738(&v17, &qword_27CB24410, &unk_2177586F0);
  if (v6)
  {
    goto LABEL_22;
  }

LABEL_15:
  sub_21726E284();
  OUTLINED_FUNCTION_170_0();
  sub_217284868();
  swift_beginAccess();
  OUTLINED_FUNCTION_170_0();
  sub_217275974();
  swift_endAccess();
  if (v4)
  {
    goto LABEL_22;
  }

  sub_217284868();
  if (!v18)
  {
LABEL_19:
    sub_2171F0738(&v17, &qword_27CB24410, &unk_2177586F0);
    goto LABEL_22;
  }

  sub_217751DE8();
  sub_217276358(&v17);
  v9 = *(v2 + 1600);
  if (v9)
  {
    v10 = v9;
    OUTLINED_FUNCTION_132();
    v11 = sub_217751F18();

    v12 = OUTLINED_FUNCTION_117_2();
    [v12 v13];
  }

  else
  {
  }

LABEL_22:
  OUTLINED_FUNCTION_219();
}

void MusicPlayer.Queue.__allocating_init(arrayLiteral:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = *(v1 + 16);
  if (v3)
  {
    v19 = MEMORY[0x277D84F90];
    sub_217276338(0, v3, 0);
    v4 = v19;
    v5 = v2 + 32;
    do
    {
      sub_2171FF30C(v5, v17);
      sub_2171FF30C(v17, v16);
      sub_2171FF30C(v16, __dst);
      OUTLINED_FUNCTION_53_1(__dst, __src);
      __swift_destroy_boxed_opaque_existential_1(v16);
      __swift_destroy_boxed_opaque_existential_1(v17);
      v6 = __src[0];
      v7 = __src[1];
      memcpy(__dst, __src, 0x2D9uLL);
      v18 = 0;
      v19 = v4;
      v9 = *(v4 + 16);
      v8 = *(v4 + 24);
      sub_217751DE8();
      if (v9 >= v8 >> 1)
      {
        sub_217276338((v8 > 1), v9 + 1, 1);
        v4 = v19;
      }

      *(v4 + 16) = v9 + 1;
      v10 = v4 + 752 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v7;
      memcpy((v10 + 48), __dst, 0x2D9uLL);
      *(v10 + 777) = v18;
      v5 += 40;
      --v3;
    }

    while (v3);
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  __src[0] = v4;
  bzero(__dst, 0x2EAuLL);
  v11 = *(v0 + 152);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24438, &qword_217758740);
  v13 = sub_217283840(&qword_27CB24440, &qword_27CB24438, &qword_217758740, MEMORY[0x277D83970]);
  v11(__src, __dst, v12, v13);
  OUTLINED_FUNCTION_13();
}

uint64_t MusicPlayer.Queue.deinit()
{
  sub_2171F0738(v0 + 16, &qword_27CB24410, &unk_2177586F0);

  sub_2171F0738(v0 + 776, &qword_27CB24410, &unk_2177586F0);

  sub_217275680(*(v0 + 1544), *(v0 + 1552));
  sub_2171F0738(v0 + 1560, &qword_27CB24418, &unk_21777F680);

  return v0;
}

uint64_t MusicPlayer.Queue.__deallocating_deinit()
{
  MusicPlayer.Queue.deinit();
  v0 = OUTLINED_FUNCTION_69_2();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_21726ECA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21726E1EC();
  *a1 = result;
  return result;
}

uint64_t sub_21726ECC8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 392))();
  *a1 = result;
  return result;
}

BOOL static MusicPlayer.Queue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_138(v4 + 16, v29);
  OUTLINED_FUNCTION_39_0();
  sub_217284868();
  OUTLINED_FUNCTION_138(v2 + 16, v28);
  OUTLINED_FUNCTION_39_0();
  sub_217284868();
  OUTLINED_FUNCTION_39_0();
  sub_217284868();
  if (v26)
  {
    sub_217284868();
    if (!v27[1])
    {
      sub_2171F0738(v30, &qword_27CB24410, &unk_2177586F0);
      v15 = __dst;
LABEL_24:
      sub_217276358(v15);
      goto LABEL_25;
    }

    memcpy(v23, v27, 0x2EAuLL);
    v5 = __dst[0] == v23[0] && __dst[1] == v23[1];
    if (!v5 && (sub_217753058() & 1) == 0)
    {
      OUTLINED_FUNCTION_58_3();
      sub_2171F0738(v19, v20, v21);
      sub_217276358(v23);
      sub_217276358(__dst);
      OUTLINED_FUNCTION_58_3();
      goto LABEL_26;
    }

    v6 = sub_2175ABBE4(&__dst[2]);
    OUTLINED_FUNCTION_171_1();
    sub_2171F0738(v7, v8, v9);
    sub_217276358(v23);
    sub_217276358(__dst);
    OUTLINED_FUNCTION_171_1();
    sub_2171F0738(v10, v11, v12);
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    sub_2171F0738(v30, &qword_27CB24410, &unk_2177586F0);
    if (v27[1])
    {
LABEL_25:
      v16 = &unk_27CB24448;
      v17 = &unk_217758748;
      v18 = v25;
LABEL_26:
      sub_2171F0738(v18, v16, v17);
      return 0;
    }

    sub_2171F0738(v25, &qword_27CB24410, &unk_2177586F0);
  }

  if ((sub_2172725A8(*(v3 + 768)) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_39_0();
  sub_217284868();
  OUTLINED_FUNCTION_39_0();
  sub_217284868();
  if (!v26)
  {
    if (v27[1])
    {
      goto LABEL_25;
    }

    sub_2171F0738(v25, &qword_27CB24410, &unk_2177586F0);
    return 1;
  }

  sub_217284868();
  if (!v27[1])
  {
    v15 = v30;
    goto LABEL_24;
  }

  memcpy(__dst, v27, 0x2EAuLL);
  v13 = v30[0] == __dst[0] && v30[1] == __dst[1];
  if (v13 || (v14 = 0, (sub_217753058() & 1) != 0))
  {
    v14 = sub_2175ABBE4(&v31);
  }

  sub_217276358(__dst);
  sub_217276358(v30);
  sub_2171F0738(v25, &qword_27CB24410, &unk_2177586F0);
  return v14;
}

void sub_21726F024()
{
  OUTLINED_FUNCTION_99_3();
  if (!v10 || !v0 || v1 == v2)
  {
    return;
  }

  v3 = (v2 + 48);
  v4 = (v1 + 48);
  while (2)
  {
    v5 = *(v4 - 2);
    v6 = *v4;
    v7 = *(v3 - 2);
    v8 = *(v3 - 1);
    v9 = *v3;
    switch(*v4)
    {
      case 1:
        if (v9 != 1)
        {
          goto LABEL_39;
        }

        v44 = OUTLINED_FUNCTION_93();
        sub_21726A608(v44, v45, 1);
        v46 = OUTLINED_FUNCTION_16_0();
        sub_21726A608(v46, v47, 1);
        if (((LODWORD(v7) ^ LODWORD(v5)) & 1) == 0)
        {
          goto LABEL_36;
        }

        return;
      case 2:
        if (v9 != 2)
        {
          goto LABEL_39;
        }

        v36 = OUTLINED_FUNCTION_93();
        sub_21726A608(v36, v37, 2);
        v38 = OUTLINED_FUNCTION_16_0();
        sub_21726A608(v38, v39, 2);
        if (*&v5 == *&v7)
        {
          goto LABEL_36;
        }

        return;
      case 3:
        if (v9 != 3)
        {
          goto LABEL_39;
        }

        v40 = OUTLINED_FUNCTION_93();
        sub_21726A608(v40, v41, 3);
        v42 = OUTLINED_FUNCTION_16_0();
        sub_21726A608(v42, v43, 3);
        if (v5 == v7)
        {
          goto LABEL_36;
        }

        return;
      case 4:
        if (v9 != 4)
        {
          goto LABEL_38;
        }

        v21 = OUTLINED_FUNCTION_16_0();
        sub_21726A5E0(v21, v22, 4);
        v23 = OUTLINED_FUNCTION_93();
        sub_21726A5E0(v23, v24, 4);
        v25 = OUTLINED_FUNCTION_16_0();
        sub_21726A5E0(v25, v26, 4);
        v27 = OUTLINED_FUNCTION_93();
        sub_21726A5E0(v27, v28, 4);
        OUTLINED_FUNCTION_20_6();
        sub_21726F024();
        v11 = v29;
        v30 = OUTLINED_FUNCTION_93();
        sub_21726A608(v30, v31, 4);
        v32 = OUTLINED_FUNCTION_16_0();
        sub_21726A608(v32, v33, 4);
        v34 = OUTLINED_FUNCTION_16_0();
        sub_21726A608(v34, v35, 4);
        v18 = OUTLINED_FUNCTION_93();
        v20 = 4;
        goto LABEL_26;
      case 5:
        if (v9 != 5)
        {
          goto LABEL_38;
        }

        v48 = OUTLINED_FUNCTION_16_0();
        sub_21726A5E0(v48, v49, 5);
        v50 = OUTLINED_FUNCTION_93();
        sub_21726A5E0(v50, v51, 5);
        v52 = OUTLINED_FUNCTION_16_0();
        sub_21726A5E0(v52, v53, 5);
        v54 = OUTLINED_FUNCTION_93();
        sub_21726A5E0(v54, v55, 5);
        v56 = OUTLINED_FUNCTION_20_6();
        v11 = sub_217261FB0(v56, v57);
        v58 = OUTLINED_FUNCTION_93();
        sub_21726A608(v58, v59, 5);
        v60 = OUTLINED_FUNCTION_16_0();
        sub_21726A608(v60, v61, 5);
        v62 = OUTLINED_FUNCTION_16_0();
        sub_21726A608(v62, v63, 5);
        v18 = OUTLINED_FUNCTION_93();
        v20 = 5;
        goto LABEL_26;
      case 6:
        if (v9 != 6 || (v8 | *&v7) != 0)
        {
          goto LABEL_39;
        }

        v65 = OUTLINED_FUNCTION_93();
        sub_21726A608(v65, v66, 6);
        v67 = 0;
        v68 = 0;
        v69 = 6;
        goto LABEL_35;
      default:
        if (!*v3)
        {
          v10 = *&v5 == *&v7 && *(v4 - 1) == v8;
          if (v10)
          {
            sub_21726A5E0(*(v4 - 2), *(v4 - 1), 0);
            v70 = OUTLINED_FUNCTION_93();
            sub_21726A5E0(v70, v71, 0);
            v72 = OUTLINED_FUNCTION_93();
            sub_21726A608(v72, v73, 0);
            v67 = OUTLINED_FUNCTION_93();
            v69 = 0;
LABEL_35:
            sub_21726A608(v67, v68, v69);
          }

          else
          {
            OUTLINED_FUNCTION_39_0();
            v11 = sub_217753058();
            v12 = OUTLINED_FUNCTION_16_0();
            sub_21726A5E0(v12, v13, 0);
            v14 = OUTLINED_FUNCTION_93();
            sub_21726A5E0(v14, v15, 0);
            v16 = OUTLINED_FUNCTION_93();
            sub_21726A608(v16, v17, 0);
            v18 = OUTLINED_FUNCTION_16_0();
            v20 = 0;
LABEL_26:
            sub_21726A608(v18, v19, v20);
            if ((v11 & 1) == 0)
            {
              return;
            }
          }

LABEL_36:
          v3 += 3;
          v4 += 24;
          if (!--v0)
          {
            return;
          }

          continue;
        }

LABEL_38:
        v74 = OUTLINED_FUNCTION_93();
        sub_21726A5E0(v74, v75, v6);
        sub_217751DE8();
LABEL_39:
        v76 = OUTLINED_FUNCTION_16_0();
        sub_21726A5E0(v76, v77, v9);
        v78 = OUTLINED_FUNCTION_93();
        sub_21726A608(v78, v79, v6);
        v80 = OUTLINED_FUNCTION_16_0();
        sub_21726A608(v80, v81, v9);
        v82 = OUTLINED_FUNCTION_93();
        sub_21726A608(v82, v83, v6);
        return;
    }
  }
}

void sub_21726F358()
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_93_1();
  if (v12 && v0 && v1 != v2)
  {
    v3 = (v1 + 64);
    v4 = (v2 + 64);
    while (1)
    {
      v5 = *(v3 - 3);
      v6 = *(v3 - 2);
      v8 = *(v3 - 1);
      v7 = *v3;
      v9 = *(v4 - 3);
      v10 = *(v4 - 2);
      v11 = *(v4 - 1);
      v18 = *v4;
      if (v5)
      {
        if (!v9)
        {
          break;
        }

        v12 = *(v3 - 4) == *(v4 - 4) && v5 == v9;
        if (!v12 && (sub_217753058() & 1) == 0)
        {
          break;
        }
      }

      else if (v9)
      {
        break;
      }

      if (v8)
      {
        if (!v11)
        {
          break;
        }

        if (v6 == v10 && v8 == v11)
        {
          sub_217751DE8();
          v15 = v18;
          sub_217751DE8();
          sub_217751DE8();
          sub_217751DE8();
          sub_217751DE8();
          sub_217751DE8();
        }

        else
        {
          v14 = sub_217753058();
          sub_217751DE8();
          v15 = v18;
          sub_217751DE8();
          sub_217751DE8();
          sub_217751DE8();
          sub_217751DE8();
          sub_217751DE8();
          if ((v14 & 1) == 0)
          {

            break;
          }
        }
      }

      else
      {
        if (v11)
        {
          break;
        }

        sub_217751DE8();
        v15 = v18;
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
      }

      sub_217261FB0(v7, v15);
      v17 = v16;

      if (v17)
      {
        v3 += 5;
        v4 += 5;
        if (--v0)
        {
          continue;
        }
      }

      break;
    }
  }

  OUTLINED_FUNCTION_95_0();
}

void sub_21726F5AC()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8) - 8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_67_3();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_151();
  if (v11 && v0 && v6 != v4)
  {
    OUTLINED_FUNCTION_70_2();
    v13 = v6 + v12;
    v14 = v4 + v12;
    v16 = *(v15 + 72);
    do
    {
      OUTLINED_FUNCTION_105_3();
      sub_217284868();
      OUTLINED_FUNCTION_182_0();
      v17 = OUTLINED_FUNCTION_13_2();
      v18 = v2(v17);
      OUTLINED_FUNCTION_129();
      sub_2171F0738(v19, v20, v21);
      OUTLINED_FUNCTION_129();
      sub_2171F0738(v22, v23, v24);
      if ((v18 & 1) == 0)
      {
        break;
      }

      v14 += v16;
      v13 += v16;
      OUTLINED_FUNCTION_178();
    }

    while (!v11);
  }

  OUTLINED_FUNCTION_13();
}

void sub_21726F708(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_217_1();
  OUTLINED_FUNCTION_23_7();
  if (v7 && v4 && v5 != v6)
  {
    OUTLINED_FUNCTION_90_0();
    do
    {
      memcpy(__dst, v2, sizeof(__dst));
      memcpy(v16, v3, sizeof(v16));
      OUTLINED_FUNCTION_39_0();
      sub_217284868();
      OUTLINED_FUNCTION_39_0();
      sub_217284868();
      v8 = sub_21767DE54(__dst);
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v9, v10, v11);
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v12, v13, v14);
      if ((v8 & 1) == 0)
      {
        break;
      }

      v2 += 616;
      v3 += 616;
      OUTLINED_FUNCTION_152_0();
    }

    while (!v7);
  }

  OUTLINED_FUNCTION_219();
}

void sub_21726F800(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_217_1();
  OUTLINED_FUNCTION_23_7();
  if (v7 && v4 && v5 != v6)
  {
    OUTLINED_FUNCTION_90_0();
    do
    {
      OUTLINED_FUNCTION_39_0();
      sub_217284868();
      OUTLINED_FUNCTION_39_0();
      sub_217284868();
      v8 = sub_21767E124();
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v9, v10, v11);
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v12, v13, v14);
      if ((v8 & 1) == 0)
      {
        break;
      }

      v2 += 640;
      v3 += 640;
      OUTLINED_FUNCTION_152_0();
    }

    while (!v7);
  }

  OUTLINED_FUNCTION_219();
}

void sub_21726F900(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_217_1();
  OUTLINED_FUNCTION_23_7();
  if (v7 && v4 && v5 != v6)
  {
    OUTLINED_FUNCTION_90_0();
    do
    {
      memcpy(__dst, v2, sizeof(__dst));
      memcpy(v16, v3, sizeof(v16));
      OUTLINED_FUNCTION_39_0();
      sub_217284868();
      OUTLINED_FUNCTION_39_0();
      sub_217284868();
      v8 = sub_21767E3C0(__dst);
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v9, v10, v11);
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v12, v13, v14);
      if ((v8 & 1) == 0)
      {
        break;
      }

      v2 += 1272;
      v3 += 1272;
      OUTLINED_FUNCTION_152_0();
    }

    while (!v7);
  }

  OUTLINED_FUNCTION_219();
}

void sub_21726FA70()
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_93_1();
  if (v12 && v0 && v1 != v2)
  {
    v3 = (v1 + 40);
    v4 = (v2 + 40);
    do
    {
      v5 = v3[1];
      v6 = v3[2];
      v7 = v3[5];
      v15 = v3[4];
      v8 = v4[1];
      v9 = v4[2];
      v11 = v4[4];
      v10 = v4[5];
      v12 = *(v3 - 1) == *(v4 - 1) && *v3 == *v4;
      if (!v12 && (sub_217753058() & 1) == 0)
      {
        break;
      }

      v13 = v5 == v8 && v6 == v9;
      if (!v13 && (OUTLINED_FUNCTION_183() & 1) == 0)
      {
        break;
      }

      if (v7)
      {
        if (!v10)
        {
          break;
        }

        v14 = v15 == v11 && v7 == v10;
        if (!v14 && (OUTLINED_FUNCTION_216(v15) & 1) == 0)
        {
          break;
        }
      }

      else if (v10)
      {
        break;
      }

      v3 += 7;
      v4 += 7;
      --v0;
    }

    while (v0);
  }

  OUTLINED_FUNCTION_95_0();
}

void sub_21726FB4C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_217_1();
  OUTLINED_FUNCTION_23_7();
  if (v7 && v4 && v5 != v6)
  {
    OUTLINED_FUNCTION_90_0();
    do
    {
      OUTLINED_FUNCTION_39_0();
      sub_217284868();
      OUTLINED_FUNCTION_39_0();
      sub_217284868();
      v8 = sub_21767E738();
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v9, v10, v11);
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v12, v13, v14);
      if ((v8 & 1) == 0)
      {
        break;
      }

      v2 += 768;
      v3 += 768;
      OUTLINED_FUNCTION_152_0();
    }

    while (!v7);
  }

  OUTLINED_FUNCTION_219();
}

void sub_21726FC24()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_150();
  v54 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24710, &unk_2177A28C0);
  OUTLINED_FUNCTION_45_0(v7);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v10 = &v52 - v9;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24718, &qword_217758CA0);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  v13 = (&v52 - v12);
  v57 = type metadata accessor for CatalogSearchSuggestionsRawResponse.Suggestion(0);
  OUTLINED_FUNCTION_109_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_67_3();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v52 - v19;
  v21 = *(v3 + 16);
  if (v21 != *(v1 + 16) || !v21 || v3 == v1)
  {
    goto LABEL_64;
  }

  OUTLINED_FUNCTION_70_2();
  v23 = v3 + v22;
  v24 = v1 + v22;
  v53 = *(v25 + 72);
  v26 = &qword_27CB24710;
  v27 = &unk_2177A28C0;
  while (1)
  {
    OUTLINED_FUNCTION_177();
    sub_217283FD0();
    v59 = v21;
    v28 = v27;
    v27 = v26;
    v55 = v24;
    v56 = v23;
    v26 = v13;
    v13 = v4;
    v4 = v10;
    OUTLINED_FUNCTION_77_1();
    sub_217283FD0();
    v29 = *v20 ? 0x6C75736552706F74 : 0x736D726574;
    v10 = (*v20 ? 0xEA00000000007374 : 0xE500000000000000);
    v30 = *v17 ? 0x6C75736552706F74 : 0x736D726574;
    v31 = *v17 ? 0xEA00000000007374 : 0xE500000000000000;
    v32 = v29 == v30 && v10 == v31;
    if (v32)
    {

      OUTLINED_FUNCTION_146_0();
    }

    else
    {
      v33 = sub_217753058();

      OUTLINED_FUNCTION_146_0();
      if ((v33 & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    v34 = *(v20 + 2);
    v35 = *(v17 + 16);
    if (v34)
    {
      if (!v35)
      {
        goto LABEL_63;
      }

      v36 = *(v20 + 1) == *(v17 + 8) && v34 == v35;
      if (!v36 && (sub_217753058() & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    else if (v35)
    {
      goto LABEL_63;
    }

    v37 = *(v20 + 4);
    v38 = *(v17 + 32);
    if (v37)
    {
      if (!v38)
      {
        goto LABEL_63;
      }

      v39 = *(v20 + 3) == *(v17 + 24) && v37 == v38;
      if (!v39 && (sub_217753058() & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    else if (v38)
    {
      goto LABEL_63;
    }

    v40 = *(v20 + 6);
    v41 = *(v17 + 48);
    if (v40)
    {
      if (!v41)
      {
        goto LABEL_63;
      }

      v42 = *(v20 + 5) == *(v17 + 40) && v40 == v41;
      if (!v42 && (sub_217753058() & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    else if (v41)
    {
      goto LABEL_63;
    }

    v43 = *(v58 + 48);
    OUTLINED_FUNCTION_229();
    OUTLINED_FUNCTION_229();
    OUTLINED_FUNCTION_133(v13, 1, v4);
    if (!v32)
    {
      break;
    }

    OUTLINED_FUNCTION_133(v13 + v43, 1, v4);
    if (!v32)
    {
      goto LABEL_62;
    }

    v44 = OUTLINED_FUNCTION_160_1();
    sub_2171F0738(v44, v45, v46);
    sub_2172840D8(v17, type metadata accessor for CatalogSearchSuggestionsRawResponse.Suggestion);
    sub_2172840D8(v20, type metadata accessor for CatalogSearchSuggestionsRawResponse.Suggestion);
LABEL_58:
    v24 = v55 + v53;
    v23 = v56 + v53;
    v21 = v28 - 1;
    if (!v21)
    {
      goto LABEL_64;
    }
  }

  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_133(v13 + v43, 1, v4);
  if (!v47)
  {
    v48 = v54;
    sub_217283888(v13 + v43, v54);
    LODWORD(v59) = sub_21767E9A4(v10);
    sub_2171F0738(v48, &qword_27CB24708, &unk_217758C90);
    sub_2171F0738(v10, &qword_27CB24708, &unk_217758C90);
    v49 = OUTLINED_FUNCTION_160_1();
    sub_2171F0738(v49, v50, v51);
    sub_2172840D8(v17, type metadata accessor for CatalogSearchSuggestionsRawResponse.Suggestion);
    sub_2172840D8(v20, type metadata accessor for CatalogSearchSuggestionsRawResponse.Suggestion);
    if ((v59 & 1) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_58;
  }

  sub_2171F0738(v10, &qword_27CB24708, &unk_217758C90);
LABEL_62:
  sub_2171F0738(v13, &qword_27CB24718, &qword_217758CA0);
LABEL_63:
  sub_2172840D8(v17, type metadata accessor for CatalogSearchSuggestionsRawResponse.Suggestion);
  sub_2172840D8(v20, type metadata accessor for CatalogSearchSuggestionsRawResponse.Suggestion);
LABEL_64:
  OUTLINED_FUNCTION_13();
}

void sub_217270140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_214();
  OUTLINED_FUNCTION_210();
  if (v13)
  {
    goto LABEL_28;
  }

  v20 = *(v19 + 16);
LABEL_3:
  if (v15 >> 62)
  {
    v21 = sub_217752D38();
  }

  else
  {
    v21 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v20 != v21 || !v20)
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_203();
  OUTLINED_FUNCTION_202_0();
  if (!v25)
  {
    v24 = v15;
  }

  if (v15 >> 62)
  {
    v23 = v24;
  }

  if (v22 != v23)
  {
    if ((v20 & 0x8000000000000000) == 0)
    {
      type metadata accessor for AnyMusicProperty();
      OUTLINED_FUNCTION_134_0();
      while (1)
      {
        v26 = v17 - 3;
        if (__OFADD__(v17 - 4, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          v20 = sub_217752D38();
          goto LABEL_3;
        }

        if (v18)
        {
          v27 = MEMORY[0x21CEA2E30](v17 - 4, a12);
          if (v16)
          {
            goto LABEL_17;
          }
        }

        else
        {
          OUTLINED_FUNCTION_201_1();
          if (v29)
          {
            goto LABEL_26;
          }

          v27 = *(a12 + 8 * v17);

          if (v16)
          {
LABEL_17:
            v28 = MEMORY[0x21CEA2E30](v17 - 4, v15);
            goto LABEL_22;
          }
        }

        OUTLINED_FUNCTION_201_1();
        if (v29)
        {
          goto LABEL_27;
        }

        v28 = *(v15 + 8 * v17);

LABEL_22:
        v30 = static AnyMusicProperty.== infix(_:_:)(v27, v28);

        if (v30)
        {
          ++v17;
          v15 = v14;
          if (v26 != v12)
          {
            continue;
          }
        }

        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    OUTLINED_FUNCTION_213();
  }
}

void sub_2172702B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_23_7();
  if (v10)
  {
    if (v9)
    {
      OUTLINED_FUNCTION_169();
      if (v11 != v12)
      {
        v13 = 0;
        while (1)
        {
          v14 = *(v7 + v13 + 40);
          if (*(v8 + v13 + 40))
          {
            if (!*(v7 + v13 + 40))
            {
              break;
            }
          }

          else
          {
            if (*(v8 + v13 + 32) != *(v7 + v13 + 32))
            {
              v14 = 1;
            }

            if (v14)
            {
              break;
            }
          }

          if (*(v8 + v13 + 56))
          {
            if (!*(v7 + v13 + 56))
            {
              break;
            }
          }

          else
          {
            if (*(v8 + v13 + 48) == *(v7 + v13 + 48))
            {
              v15 = *(v7 + v13 + 56);
            }

            else
            {
              v15 = 1;
            }

            if (v15)
            {
              break;
            }
          }

          sub_217751DE8();
          sub_217751DE8();
          v16 = OUTLINED_FUNCTION_16_0();
          sub_217261FB0(v16, v17);
          v19 = v18;

          if (v19)
          {
            v13 += 40;
            if (--v9)
            {
              continue;
            }
          }

          break;
        }
      }
    }
  }

  OUTLINED_FUNCTION_218();
}

void sub_217270404()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  v4 = sub_217751428();
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_1();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  v14 = *(v3 + 16);
  if (v14 == *(v1 + 16) && v14 && v3 != v1)
  {
    OUTLINED_FUNCTION_47_3();
    v16 = v3 + v15;
    v17 = v1 + v15;
    v19 = *(v6 + 16);
    v18 = v6 + 16;
    v20 = (v18 - 8);
    v28 = *(v18 + 56);
    v29 = v19;
    do
    {
      v21 = OUTLINED_FUNCTION_16_0();
      v22 = v29;
      (v29)(v21);
      v23 = v18;
      v22(v10, v17, v4);
      OUTLINED_FUNCTION_4_18();
      sub_217284690(&qword_27CB24AC0, 255, v24, MEMORY[0x277CC8928]);
      OUTLINED_FUNCTION_58_3();
      LOBYTE(v22) = sub_217751F08();
      v25 = *v20;
      v26 = OUTLINED_FUNCTION_93();
      v25(v26);
      (v25)(v13, v4);
      if ((v22 & 1) == 0)
      {
        break;
      }

      v17 += v28;
      v16 += v28;
      OUTLINED_FUNCTION_178();
      v18 = v23;
    }

    while (!v27);
  }

  OUTLINED_FUNCTION_13();
}

void sub_2172705FC()
{
  OUTLINED_FUNCTION_103_1();
  if (v5 && v0 && v1 != v2)
  {
    v3 = (v2 + 40);
    v4 = (v1 + 40);
    do
    {
      v5 = *(v4 - 1) == *(v3 - 1) && *v4 == *v3;
      if (!v5 && (sub_217753058() & 1) == 0)
      {
        break;
      }

      v3 += 3;
      v4 += 3;
      --v0;
    }

    while (v0);
  }
}

uint64_t sub_2172706A8()
{
  OUTLINED_FUNCTION_99_3();
  if (v4)
  {
    if (!v1 || v2 == v3)
    {
      v11 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_63_1();
      do
      {
        OUTLINED_FUNCTION_182_0();
        OUTLINED_FUNCTION_196_1();
        OUTLINED_FUNCTION_182_0();
        v11 = v0(v14, &v13);
        OUTLINED_FUNCTION_129();
        sub_2171F0738(v5, v6, v7);
        OUTLINED_FUNCTION_129();
        sub_2171F0738(v8, v9, v10);
        if ((v11 & 1) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_62_2();
      }

      while (!v4);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

void sub_217270790()
{
  OUTLINED_FUNCTION_103_1();
  if (v5 && v0 && v1 != v2)
  {
    v3 = (v1 + 40);
    v4 = (v2 + 40);
    do
    {
      v5 = *(v3 - 1) == *(v4 - 1) && *v3 == *v4;
      if (!v5 && (sub_217753058() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      v4 += 2;
      --v0;
    }

    while (v0);
  }
}

uint64_t sub_2172708B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
LABEL_15:
    v12 = 0;
    return v12 & 1;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    while (1)
    {
      sub_217275858(v3, v16);
      sub_217275858(v4, v14);
      v5 = v16[0] == v14[0] && v16[1] == v14[1];
      if (!v5 && (sub_217753058() & 1) == 0)
      {
        break;
      }

      v6 = v18;
      v7 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      v8 = *(v7 + 104);
      v9 = OUTLINED_FUNCTION_204();
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
      v12 = v8(&v15, v11, v6, v7);
      sub_2172758B4(v14);
      sub_2172758B4(v16);
      if (v12)
      {
        v3 += 56;
        v4 += 56;
        if (--v2)
        {
          continue;
        }
      }

      return v12 & 1;
    }

    sub_2172758B4(v14);
    sub_2172758B4(v16);
    goto LABEL_15;
  }

  v12 = 1;
  return v12 & 1;
}

uint64_t sub_217270A74()
{
  OUTLINED_FUNCTION_99_3();
  if (v7)
  {
    if (!v4 || v5 == v6)
    {
      v9 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_63_1();
      do
      {
        (v2)(v3, v12);
        v8 = OUTLINED_FUNCTION_196_1();
        v2(v8);
        v9 = v1(v12, v11);
        v0(v11);
        v0(v12);
        if ((v9 & 1) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_62_2();
      }

      while (!v7);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void sub_217270BE0()
{
  OUTLINED_FUNCTION_103_1();
  if (v5 && v0 && v1 != v2)
  {
    v3 = (v2 + 56);
    v4 = (v1 + 56);
    do
    {
      v5 = *(v4 - 1) == *(v3 - 1) && *v4 == *v3;
      if (!v5 && (sub_217753058() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      v4 += 4;
      --v0;
    }

    while (v0);
  }
}

uint64_t sub_217270D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *, uint64_t *))
{
  OUTLINED_FUNCTION_93_1();
  if (v16)
  {
    if (v5 && v6 != v7)
    {
      v8 = v6 + 32;
      v9 = v7 + 32;
      while (1)
      {
        sub_217284868();
        sub_217284868();
        if (v29[0])
        {
          if (v29[0] == 1)
          {
            v10 = 0x706F742D79746963;
          }

          else
          {
            v10 = 0xD000000000000010;
          }

          if (v29[0] == 1)
          {
            v11 = 0xE800000000000000;
          }

          else
          {
            v11 = 0x80000002177AA870;
          }
        }

        else
        {
          v10 = 0x616C702D74736F6DLL;
          v11 = 0xEB00000000646579;
        }

        if (v23[0] == 1)
        {
          v12 = 0x706F742D79746963;
        }

        else
        {
          v12 = 0xD000000000000010;
        }

        if (v23[0] == 1)
        {
          v13 = 0xE800000000000000;
        }

        else
        {
          v13 = 0x80000002177AA870;
        }

        if (v23[0])
        {
          v14 = v12;
        }

        else
        {
          v14 = 0x616C702D74736F6DLL;
        }

        if (v23[0])
        {
          v15 = v13;
        }

        else
        {
          v15 = 0xEB00000000646579;
        }

        v16 = v10 == v14 && v11 == v15;
        if (v16)
        {
        }

        else
        {
          v17 = sub_217753058();

          if ((v17 & 1) == 0)
          {
            goto LABEL_56;
          }
        }

        if (v31)
        {
          if (!v25 || (v30 == v24 ? (v18 = v31 == v25) : (v18 = 0), !v18 && (sub_217753058() & 1) == 0))
          {
LABEL_56:
            OUTLINED_FUNCTION_224(v23);
            OUTLINED_FUNCTION_224(v29);
            goto LABEL_57;
          }
        }

        else if (v25)
        {
          goto LABEL_56;
        }

        if (v33)
        {
          if (!v27)
          {
            goto LABEL_56;
          }

          v19 = v32 == v26 && v33 == v27;
          if (!v19 && (sub_217753058() & 1) == 0)
          {
            goto LABEL_56;
          }
        }

        else if (v27)
        {
          goto LABEL_56;
        }

        v20 = a5(&v34, &v28);
        OUTLINED_FUNCTION_224(v23);
        OUTLINED_FUNCTION_224(v29);
        if (v20)
        {
          v8 += 168;
          v9 += 168;
          OUTLINED_FUNCTION_178();
          if (!v16)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v20 = 1;
  }

  else
  {
LABEL_57:
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_2172711A8()
{
  OUTLINED_FUNCTION_23_7();
  if (v5)
  {
    if (!v2 || v3 == v4)
    {
      return 1;
    }

    OUTLINED_FUNCTION_90_0();
    while (1)
    {
      memcpy(__dst, v0, sizeof(__dst));
      memcpy(v24, v1, sizeof(v24));
      memcpy(v22, v0, sizeof(v22));
      memcpy(v21, v1, sizeof(v21));
      OUTLINED_FUNCTION_39_0();
      sub_217284868();
      OUTLINED_FUNCTION_39_0();
      sub_217284868();
      if ((static CloudOffer.== infix(_:_:)(v22, v21) & 1) == 0)
      {
        break;
      }

      sub_217261FB0(__dst[8], v24[8]);
      v7 = v6;
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v8, v9, v10);
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v11, v12, v13);
      if ((v7 & 1) == 0)
      {
        return 0;
      }

      v0 += 72;
      v1 += 72;
      if (!--v2)
      {
        return 1;
      }
    }

    OUTLINED_FUNCTION_58_3();
    sub_2171F0738(v15, v16, v17);
    OUTLINED_FUNCTION_58_3();
    sub_2171F0738(v18, v19, v20);
  }

  return 0;
}

uint64_t sub_217271340(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), void (*a4)(uint64_t *))
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
LABEL_15:
    v15 = 0;
    return v15 & 1;
  }

  if (v4 && a1 != a2)
  {
    v7 = a1 + 32;
    v8 = a2 + 32;
    while (1)
    {
      (a3)(v7, v19);
      v9 = OUTLINED_FUNCTION_196_1();
      a3(v9);
      v10 = v19[0] == v17[0] && v19[1] == v17[1];
      if (!v10 && (sub_217753058() & 1) == 0)
      {
        break;
      }

      v12 = v21;
      v11 = v22;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      v13 = *(v11 + 104);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
      v15 = v13(&v18, v14, v12, v11);
      a4(v17);
      a4(v19);
      if (v15)
      {
        v7 += 56;
        v8 += 56;
        if (--v4)
        {
          continue;
        }
      }

      return v15 & 1;
    }

    a4(v17);
    a4(v19);
    goto LABEL_15;
  }

  v15 = 1;
  return v15 & 1;
}

void sub_217271500(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_217_1();
  OUTLINED_FUNCTION_23_7();
  if (v7 && v4 && v5 != v6)
  {
    OUTLINED_FUNCTION_90_0();
    do
    {
      OUTLINED_FUNCTION_39_0();
      sub_217284868();
      OUTLINED_FUNCTION_39_0();
      sub_217284868();
      v8 = sub_21767EABC();
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v9, v10, v11);
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v12, v13, v14);
      if ((v8 & 1) == 0)
      {
        break;
      }

      v2 += 768;
      v3 += 768;
      OUTLINED_FUNCTION_152_0();
    }

    while (!v7);
  }

  OUTLINED_FUNCTION_219();
}

uint64_t sub_217271600(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    v4 = (a2 + 56);
    do
    {
      v5 = *(v4 - 16);
      if (*(v3 - 16))
      {
        if (!*(v4 - 16))
        {
          return 0;
        }
      }

      else
      {
        if (*(v3 - 3) != *(v4 - 3))
        {
          v5 = 1;
        }

        if (v5)
        {
          return 0;
        }
      }

      if (*v3)
      {
        if (!*v4)
        {
          return 0;
        }
      }

      else
      {
        if (*(v3 - 1) == *(v4 - 1))
        {
          v6 = *v4;
        }

        else
        {
          v6 = 1;
        }

        if (v6)
        {
          return 0;
        }
      }

      v3 += 32;
      v4 += 32;
      --v2;
    }

    while (v2);
  }

  return OUTLINED_FUNCTION_140_0();
}

uint64_t sub_217271698(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 4)
    {
      v5 = v3[1];
      v21[0] = *v3;
      v21[1] = v5;
      v6 = v3[3];
      v22 = v3[2];
      v23 = v6;
      v17 = v21[0];
      v18 = v5;
      v19 = v22;
      v20 = v6;
      v7 = *i;
      v8 = i[1];
      v9 = i[3];
      v25 = i[2];
      v26 = v9;
      v24[0] = v7;
      v24[1] = v8;
      v13 = v7;
      v14 = v8;
      v15 = v25;
      v16 = v9;
      sub_217283A4C(v21, v12);
      sub_217283A4C(v24, v12);
      v10 = static CloudAudioAnalysis.CloudVocalActivity.== infix(_:_:)(&v17, &v13);
      v27[0] = v13;
      v27[1] = v14;
      v27[2] = v15;
      v27[3] = v16;
      sub_217283AA8(v27);
      v28[0] = v17;
      v28[1] = v18;
      v28[2] = v19;
      v28[3] = v20;
      sub_217283AA8(v28);
      if ((v10 & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_217271798(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_140_0();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2172717F0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_140_0();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_217271848()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  v4 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_81();
  v60 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v9);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_150();
  v63 = v11;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24840, &unk_217758DD0);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  v14 = &v54 - v13;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24838, &qword_217758DC8);
  OUTLINED_FUNCTION_109_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_67_3();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v54 - v20;
  v22 = *(v3 + 16);
  if (v22 != *(v1 + 16) || !v22 || v3 == v1)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_70_2();
  v24 = v3 + v23;
  v25 = v1 + v23;
  v54 = (v6 + 32);
  v55 = v21;
  v56 = v14;
  v57 = (v6 + 8);
  v59 = *(v26 + 72);
  while (1)
  {
    OUTLINED_FUNCTION_172_2();
    sub_217284868();
    sub_217284868();
    v27 = *(v62 + 48);
    OUTLINED_FUNCTION_36();
    sub_217284868();
    sub_217284868();
    OUTLINED_FUNCTION_133(v14, 1, v4);
    if (!v30)
    {
      break;
    }

    OUTLINED_FUNCTION_133(&v14[v27], 1, v4);
    if (!v30)
    {
      goto LABEL_29;
    }

    v28 = OUTLINED_FUNCTION_16_0();
    sub_2171F0738(v28, v29, &qword_217758DC0);
LABEL_12:
    type metadata accessor for CloudVideoArtwork.FileAsset(0);
    OUTLINED_FUNCTION_113_1();
    if (v38)
    {
      if (!v37)
      {
        goto LABEL_30;
      }
    }

    else
    {
      OUTLINED_FUNCTION_112();
      if (v39)
      {
        goto LABEL_30;
      }
    }

    OUTLINED_FUNCTION_113_1();
    if (v41)
    {
      if (!v40)
      {
        goto LABEL_30;
      }
    }

    else
    {
      OUTLINED_FUNCTION_112();
      if (v42)
      {
        goto LABEL_30;
      }
    }

    OUTLINED_FUNCTION_113_1();
    if (v44)
    {
      if ((v43 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      OUTLINED_FUNCTION_112();
      if (v45)
      {
        goto LABEL_30;
      }
    }

    sub_217261FB0(*&v21[*(v61 + 28)], *(v18 + *(v61 + 28)));
    v47 = v46;
    sub_2171F0738(v18, &qword_27CB24838, &qword_217758DC8);
    sub_2171F0738(v21, &qword_27CB24838, &qword_217758DC8);
    if (v47)
    {
      v25 += v59;
      v24 += v59;
      if (--v22)
      {
        continue;
      }
    }

    goto LABEL_31;
  }

  sub_217284868();
  OUTLINED_FUNCTION_133(&v14[v27], 1, v4);
  if (!v30)
  {
    v31 = &v14[v27];
    v32 = v60;
    (*v54)(v60, v31, v4);
    OUTLINED_FUNCTION_1_6();
    sub_217284690(&qword_280BE7408, 255, v33, MEMORY[0x277CC9278]);
    OUTLINED_FUNCTION_129();
    v58 = sub_217751F08();
    v34 = *v57;
    v35 = v32;
    v14 = v56;
    (*v57)(v35, v4);
    v36 = OUTLINED_FUNCTION_173();
    (v34)(v36);
    v21 = v55;
    sub_2171F0738(v14, &unk_27CB277C0, &qword_217758DC0);
    if ((v58 & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_12;
  }

  (*v57)(v63, v4);
LABEL_29:
  sub_2171F0738(v14, &qword_27CB24840, &unk_217758DD0);
LABEL_30:
  OUTLINED_FUNCTION_58_3();
  sub_2171F0738(v48, v49, v50);
  OUTLINED_FUNCTION_58_3();
  sub_2171F0738(v51, v52, v53);
LABEL_31:
  OUTLINED_FUNCTION_13();
}

void sub_217271D10()
{
  OUTLINED_FUNCTION_214();
  v2 = *(v0 + 16);
  if (v2 == *(v1 + 16) && v2 && v0 != v1)
  {
    v3 = 0;
    v4 = v0 + 32;
    v5 = v1 + 32;
    v34 = v1 + 32;
    v35 = v0 + 32;
    while (1)
    {
      if (v3 == v2)
      {
        goto LABEL_48;
      }

      v6 = v4 + 56 * v3;
      v7 = v5 + 56 * v3;
      if (*v6 != *v7)
      {
        goto LABEL_46;
      }

      v8 = *(v6 + 8);
      v9 = *(v7 + 8);
      v10 = *(v8 + 16);
      if (v10 != *(v9 + 16))
      {
        goto LABEL_46;
      }

      v11 = *(v6 + 16);
      v12 = *(v6 + 24);
      v13 = *(v6 + 32);
      v15 = *(v6 + 40);
      v14 = *(v6 + 48);
      v16 = *(v7 + 16);
      v17 = *(v7 + 24);
      v18 = *(v7 + 32);
      if (v10)
      {
        v19 = v8 == v9;
      }

      else
      {
        v19 = 1;
      }

      v20 = *(v7 + 40);
      v21 = *(v7 + 48);
      if (!v19)
      {
        v22 = (v8 + 32);
        v23 = (v9 + 32);
        while (v10)
        {
          if (*v22 != *v23)
          {
            goto LABEL_46;
          }

          ++v22;
          ++v23;
          if (!--v10)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
        __break(1u);
        __break(1u);
LABEL_48:
        __break(1u);
        return;
      }

LABEL_16:
      v24 = *(v11 + 16);
      if (v24 != *(v16 + 16))
      {
        goto LABEL_46;
      }

      if (v24 && v11 != v16)
      {
        break;
      }

LABEL_22:
      if (v13)
      {
        if (!v18)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (v12 != v17)
        {
          LOBYTE(v18) = 1;
        }

        if (v18)
        {
          goto LABEL_46;
        }
      }

      if (v15)
      {
        if (!v20)
        {
          goto LABEL_46;
        }

        v27 = v21;
        v28 = *(v15 + 16);
        if (v28 != *(v20 + 16))
        {
          goto LABEL_46;
        }

        if (v28 && v15 != v20)
        {
          v33 = v14;
          v29 = 0;
          while (1)
          {
            v30 = *(v15 + v29 + 32) == *(v20 + v29 + 32) && *(v15 + v29 + 40) == *(v20 + v29 + 40);
            if (!v30 && (sub_217753058() & 1) == 0)
            {
              goto LABEL_46;
            }

            v29 += 16;
            if (!--v28)
            {
              v21 = v27;
              v14 = v33;
              goto LABEL_44;
            }
          }
        }

        v21 = v27;
      }

      else if (v20)
      {
        goto LABEL_46;
      }

LABEL_44:
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217261FB0(v14, v21);
      v32 = v31;

      if (v32)
      {
        ++v3;
        v5 = v34;
        v4 = v35;
        if (v3 != v2)
        {
          continue;
        }
      }

      goto LABEL_46;
    }

    v25 = (v11 + 32);
    v26 = (v16 + 32);
    while (*v25 == *v26)
    {
      ++v25;
      ++v26;
      if (!--v24)
      {
        goto LABEL_22;
      }
    }
  }

LABEL_46:
  OUTLINED_FUNCTION_213();
}

void sub_21727208C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_61_0();
  if (v9 && v0 && v1 != v2)
  {
    v3 = (v1 + 32);
    v4 = (v2 + 32);
    do
    {
      v5 = 0xEB00000000736F6DLL;
      v6 = 0x74612D79626C6F64;
      switch(*v3)
      {
        case 1:
          break;
        case 2:
          v6 = 0x75612D79626C6F64;
          v5 = 0xEB000000006F6964;
          break;
        case 3:
          v5 = 0xE800000000000000;
          v6 = 0x7373656C73736F6CLL;
          break;
        case 4:
          v6 = 0x6C2D7365722D6968;
          v5 = 0xEF7373656C73736FLL;
          break;
        case 5:
          v6 = 0x74732D7973736F6CLL;
          v5 = 0xEC0000006F657265;
          break;
        case 6:
          v6 = 0x2D6C616974617073;
          v5 = 0xED00006F69647561;
          break;
        case 7:
          v5 = 0xE700000000000000;
          v6 = 0x6C616974617073;
          break;
        case 8:
          v6 = 0xD000000000000013;
          v5 = 0x80000002177AA7E0;
          break;
        case 9:
          v5 = 0xE500000000000000;
          v6 = 0x736F6D7461;
          break;
        case 0xA:
          v5 = 0xE800000000000000;
          v6 = 0x646E756F72727573;
          break;
        default:
          v6 = 0xD000000000000014;
          v5 = 0x80000002177AA770;
          break;
      }

      v7 = 0x74612D79626C6F64;
      v8 = 0xEB00000000736F6DLL;
      switch(*v4)
      {
        case 1:
          break;
        case 2:
          v7 = 0x75612D79626C6F64;
          v8 = 0xEB000000006F6964;
          break;
        case 3:
          v8 = 0xE800000000000000;
          v7 = 0x7373656C73736F6CLL;
          break;
        case 4:
          v7 = 0x6C2D7365722D6968;
          v8 = 0xEF7373656C73736FLL;
          break;
        case 5:
          v7 = 0x74732D7973736F6CLL;
          v8 = 0xEC0000006F657265;
          break;
        case 6:
          v7 = 0x2D6C616974617073;
          v8 = 0xED00006F69647561;
          break;
        case 7:
          v8 = 0xE700000000000000;
          v7 = 0x6C616974617073;
          break;
        case 8:
          v7 = 0xD000000000000013;
          v8 = 0x80000002177AA7E0;
          break;
        case 9:
          v8 = 0xE500000000000000;
          v7 = 0x736F6D7461;
          break;
        case 0xA:
          v8 = 0xE800000000000000;
          v7 = 0x646E756F72727573;
          break;
        default:
          v7 = 0xD000000000000014;
          v8 = 0x80000002177AA770;
          break;
      }

      v9 = v6 == v7 && v5 == v8;
      if (v9)
      {
      }

      else
      {
        v10 = sub_217753058();

        if ((v10 & 1) == 0)
        {
          break;
        }
      }

      ++v3;
      ++v4;
      --v0;
    }

    while (v0);
  }

  OUTLINED_FUNCTION_13();
}

void sub_2172723E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_12();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A68, &qword_217759030);
  OUTLINED_FUNCTION_109_1();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_67_3();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  v34 = *(v25 + 16);
  if (v34 == *(v23 + 16) && v34 && v25 != v23)
  {
    OUTLINED_FUNCTION_70_2();
    v36 = v25 + v35;
    v37 = v23 + v35;
    v39 = *(v38 + 72);
    while (1)
    {
      sub_217284868();
      sub_217284868();
      static CloudPreviewAsset.== infix(_:_:)();
      if ((v40 & 1) == 0)
      {
        break;
      }

      sub_217261FB0(*&v33[*(v26 + 28)], *(v30 + *(v26 + 28)));
      v42 = v41;
      v43 = OUTLINED_FUNCTION_135();
      sub_2171F0738(v43, v44, &qword_217759030);
      v45 = OUTLINED_FUNCTION_148();
      sub_2171F0738(v45, v46, &qword_217759030);
      if (v42)
      {
        v37 += v39;
        v36 += v39;
        OUTLINED_FUNCTION_178();
        if (!v47)
        {
          continue;
        }
      }

      goto LABEL_12;
    }

    sub_2171F0738(v30, &qword_27CB24A68, &qword_217759030);
    v48 = OUTLINED_FUNCTION_132();
    sub_2171F0738(v48, v49, &qword_217759030);
  }

LABEL_12:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_2172725A8(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_61_0();
  if (v6)
  {
    if (!v3 || v4 == v5)
    {
      return 1;
    }

    OUTLINED_FUNCTION_90_0();
    while (1)
    {
      sub_217275AA0(v1, v231);
      sub_217275AA0(v2, v230);
      v6 = v231[0] == v230[0] && v231[1] == v230[1];
      if (!v6 && (sub_217753058() & 1) == 0)
      {
LABEL_44:
        sub_217276358(v230);
        sub_217276358(v231);
        return 0;
      }

      sub_2172846D8(v232, __src);
      if (v226)
      {
        v8 = *(*__src + 16);
        v7 = *(*__src + 24);
        sub_217751DE8();
      }

      else
      {
        v9 = OUTLINED_FUNCTION_130();
        memcpy(v9, __src, 0x2D9uLL);
        v8 = *v228;
        v7 = *&v228[8];
        sub_217751DE8();
        v10 = OUTLINED_FUNCTION_130();
        sub_217284734(v10);
      }

      OUTLINED_FUNCTION_215();
      if (v226)
      {
        v12 = *(*__src + 16);
        v11 = *(*__src + 24);
        sub_217751DE8();
      }

      else
      {
        v13 = OUTLINED_FUNCTION_130();
        memcpy(v13, __src, 0x2D9uLL);
        v12 = *v228;
        v11 = *&v228[8];
        sub_217751DE8();
        v14 = OUTLINED_FUNCTION_130();
        sub_217284734(v14);
      }

      if (v8 == v12 && v7 == v11)
      {
      }

      else
      {
        v16 = sub_217753058();

        if ((v16 & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      sub_2172846D8(v232, __src);
      if (v226)
      {
        v17 = *(*__src + 32);
        v18 = *(v17 + 16);

        os_unfair_lock_lock(v18);
        v19 = OUTLINED_FUNCTION_198();
        OUTLINED_FUNCTION_138(v19, v20 + 336);
        v21 = OUTLINED_FUNCTION_198();
        sub_217284788(v21, v22 + 360);
        if (v229)
        {
          v221 = *&v228[16];
          v222 = *v228;
          v219 = *&v228[48];
          v220 = *&v228[32];
          v217 = *&v228[80];
          v218 = *&v228[64];
          v215 = *&v228[112];
          v216 = *&v228[96];
          v213 = *&v228[144];
          v214 = *&v228[128];
          v210 = *&v228[176];
          v211 = *&v228[160];
          v207 = *&v228[208];
          v208 = *&v228[192];
          v204 = *&v228[240];
          v205 = *&v228[224];
          v202 = *&v228[272];
          v203 = *&v228[256];
          v200 = *&v228[304];
          v201 = *&v228[288];
          v198 = *&v228[336];
          v199 = *&v228[320];
          OUTLINED_FUNCTION_54_2();
          v197 = *(v23 + 712);
          OUTLINED_FUNCTION_100_1();
          v195 = *(v24 + 744);
          v196 = v25;
          OUTLINED_FUNCTION_54_2();
          v193 = *(v26 + 776);
          v194 = v27;
          OUTLINED_FUNCTION_100_1();
          v191 = *(v28 + 808);
          v192 = v29;
          OUTLINED_FUNCTION_54_2();
          v189 = *(v30 + 840);
          v190 = v31;
          v212 = *&v228[704];
          v209 = *&v228[712];
          v206 = *&v228[720];
          v32 = v228[728];
          OUTLINED_FUNCTION_100_1();
          v187 = *(v33 + 872);
          v188 = v34;
          OUTLINED_FUNCTION_54_2();
          v185 = *(v35 + 904);
          v186 = v36;
          OUTLINED_FUNCTION_100_1();
          v183 = *(v37 + 936);
          v184 = v38;
          OUTLINED_FUNCTION_54_2();
          v181 = *(v39 + 968);
          v182 = v40;
          OUTLINED_FUNCTION_100_1();
          v179 = *(v41 + 1000);
          v180 = v42;
          v176 = *&v228[688];
          v177 = *&v228[672];
          v178 = v43;
        }

        else
        {
          v44 = OUTLINED_FUNCTION_130();
          sub_2172847E4(v44);
          v212 = 0;
          v209 = 0;
          v206 = 0;
          v32 = 0;
          v222 = 0u;
          v221 = 0u;
          v220 = 0u;
          v219 = 0u;
          v218 = 0u;
          v217 = 0u;
          v216 = 0u;
          v215 = 0u;
          v214 = 0u;
          v213 = 0u;
          v211 = 0u;
          v210 = 0u;
          v208 = 0u;
          v207 = 0u;
          v205 = 0u;
          v204 = 0u;
          v203 = 0u;
          v202 = 0u;
          v201 = 0u;
          v200 = 0u;
          v199 = 0u;
          v198 = 0u;
          v197 = 0u;
          v195 = 0u;
          v196 = 0u;
          v193 = 0u;
          v194 = 0u;
          v191 = 0u;
          v192 = 0u;
          v189 = 0u;
          v190 = 0u;
          v187 = 0u;
          v188 = 0u;
          v185 = 0u;
          v186 = 0u;
          v183 = 0u;
          v184 = 0u;
          v181 = 0u;
          v182 = 0u;
          v179 = 0u;
          v180 = 0u;
          v177 = 0u;
          v178 = 0u;
          v176 = 0u;
        }

        os_unfair_lock_unlock(*(v17 + 16));
      }

      else
      {
        v221 = *&__src[16];
        v222 = *__src;
        v219 = *&__src[48];
        v220 = *&__src[32];
        v217 = *&__src[80];
        v218 = *&__src[64];
        v215 = *&__src[112];
        v216 = *&__src[96];
        v213 = *&__src[144];
        v214 = *&__src[128];
        v210 = *&__src[176];
        v211 = *&__src[160];
        v207 = *&__src[208];
        v208 = *&__src[192];
        v204 = *&__src[240];
        v205 = *&__src[224];
        v202 = *&__src[272];
        v203 = *&__src[256];
        v200 = *&__src[304];
        v201 = *&__src[288];
        v198 = *&__src[336];
        v199 = *&__src[320];
        v197 = *&__src[352];
        v195 = *&__src[384];
        v196 = *&__src[368];
        v193 = *&__src[416];
        v194 = *&__src[400];
        v191 = *&__src[448];
        v192 = *&__src[432];
        v189 = *&__src[480];
        v190 = *&__src[464];
        v212 = *&__src[704];
        v209 = *&__src[712];
        v206 = *&__src[720];
        v32 = __src[728];
        v187 = *&__src[512];
        v188 = *&__src[496];
        v185 = *&__src[544];
        v186 = *&__src[528];
        v183 = *&__src[576];
        v184 = *&__src[560];
        v181 = *&__src[608];
        v182 = *&__src[592];
        v179 = *&__src[640];
        v180 = *&__src[624];
        v176 = *&__src[688];
        v177 = *&__src[672];
        v178 = *&__src[656];
      }

      OUTLINED_FUNCTION_215();
      if (v226)
      {
        v45 = *(*__src + 32);
        v46 = *(v45 + 16);

        os_unfair_lock_lock(v46);
        v47 = OUTLINED_FUNCTION_198();
        OUTLINED_FUNCTION_138(v47, v48 + 312);
        v49 = OUTLINED_FUNCTION_198();
        sub_217284788(v49, v50 + 360);
        if (v229)
        {
          OUTLINED_FUNCTION_54_2();
          v161 = v52;
          v162 = *(v51 + 360);
          OUTLINED_FUNCTION_54_2();
          v159 = v54;
          v160 = *(v53 + 392);
          OUTLINED_FUNCTION_54_2();
          v157 = v56;
          v158 = *(v55 + 424);
          OUTLINED_FUNCTION_54_2();
          v155 = v58;
          v156 = *(v57 + 456);
          OUTLINED_FUNCTION_54_2();
          v153 = v60;
          v154 = *(v59 + 488);
          OUTLINED_FUNCTION_54_2();
          v151 = v62;
          v152 = *(v61 + 520);
          OUTLINED_FUNCTION_54_2();
          v174 = v64;
          v175 = *(v63 + 552);
          OUTLINED_FUNCTION_54_2();
          v172 = v66;
          v173 = *(v65 + 584);
          OUTLINED_FUNCTION_54_2();
          v170 = v68;
          v171 = *(v67 + 616);
          OUTLINED_FUNCTION_54_2();
          v168 = v70;
          v169 = *(v69 + 648);
          OUTLINED_FUNCTION_54_2();
          v166 = v72;
          v167 = *(v71 + 680);
          OUTLINED_FUNCTION_54_2();
          v164 = v74;
          v165 = *(v73 + 712);
          OUTLINED_FUNCTION_54_2();
          v163 = *(v75 + 744);
          OUTLINED_FUNCTION_100_1();
          v149 = *(v76 + 776);
          v150 = v77;
          OUTLINED_FUNCTION_54_2();
          v147 = *(v78 + 808);
          v148 = v79;
          OUTLINED_FUNCTION_100_1();
          v145 = *(v80 + 840);
          v146 = v81;
          v82 = *&v228[704];
          v83 = *&v228[712];
          v84 = *&v228[720];
          v85 = v228[728];
          OUTLINED_FUNCTION_54_2();
          v143 = *(v86 + 872);
          v144 = v87;
          OUTLINED_FUNCTION_100_1();
          v141 = *(v88 + 904);
          v142 = v89;
          OUTLINED_FUNCTION_54_2();
          v139 = *(v90 + 936);
          v140 = v91;
          OUTLINED_FUNCTION_100_1();
          v137 = *(v92 + 968);
          v138 = v93;
          OUTLINED_FUNCTION_54_2();
          v135 = *(v94 + 1000);
          v136 = v95;
          v132 = *&v228[688];
          v133 = *&v228[672];
          v134 = v96;
        }

        else
        {
          v128 = OUTLINED_FUNCTION_130();
          sub_2172847E4(v128);
          v85 = 0;
          v84 = 0;
          v83 = 0;
          v82 = 0;
          v161 = 0u;
          v162 = 0u;
          v159 = 0u;
          v160 = 0u;
          v157 = 0u;
          v158 = 0u;
          v155 = 0u;
          v156 = 0u;
          v153 = 0u;
          v154 = 0u;
          v151 = 0u;
          v152 = 0u;
          v174 = 0u;
          v175 = 0u;
          v172 = 0u;
          v173 = 0u;
          v170 = 0u;
          v171 = 0u;
          v168 = 0u;
          v169 = 0u;
          v166 = 0u;
          v167 = 0u;
          v164 = 0u;
          v165 = 0u;
          v163 = 0u;
          v149 = 0u;
          v150 = 0u;
          v147 = 0u;
          v148 = 0u;
          v145 = 0u;
          v146 = 0u;
          v143 = 0u;
          v144 = 0u;
          v141 = 0u;
          v142 = 0u;
          v139 = 0u;
          v140 = 0u;
          v137 = 0u;
          v138 = 0u;
          v135 = 0u;
          v136 = 0u;
          v133 = 0u;
          v134 = 0u;
          v132 = 0u;
        }

        os_unfair_lock_unlock(*(v45 + 16));

        v97 = v161;
        v98 = v162;
        v99 = v159;
        v100 = v160;
        v101 = v157;
        v102 = v158;
        v103 = v155;
        v104 = v156;
        v105 = v153;
        v106 = v154;
        v107 = v151;
        v108 = v152;
        v111 = v149;
        v109 = v150;
        v113 = v147;
        v110 = v148;
        v115 = v145;
        v112 = v146;
        v117 = v143;
        v114 = v144;
        v119 = v141;
        v116 = v142;
        v121 = v139;
        v118 = v140;
        v123 = v137;
        v120 = v138;
        v125 = v135;
        v122 = v136;
        v127 = v133;
        v124 = v134;
        v126 = v132;
      }

      else
      {
        v97 = *&__src[16];
        v98 = *__src;
        v99 = *&__src[48];
        v100 = *&__src[32];
        v101 = *&__src[80];
        v102 = *&__src[64];
        v103 = *&__src[112];
        v104 = *&__src[96];
        v105 = *&__src[144];
        v106 = *&__src[128];
        v107 = *&__src[176];
        v108 = *&__src[160];
        v174 = *&__src[208];
        v175 = *&__src[192];
        v172 = *&__src[240];
        v173 = *&__src[224];
        v170 = *&__src[272];
        v171 = *&__src[256];
        v168 = *&__src[304];
        v169 = *&__src[288];
        v166 = *&__src[336];
        v167 = *&__src[320];
        v164 = *&__src[368];
        v165 = *&__src[352];
        v109 = *&__src[400];
        v163 = *&__src[384];
        v110 = *&__src[432];
        v111 = *&__src[416];
        v112 = *&__src[464];
        v113 = *&__src[448];
        v114 = *&__src[496];
        v115 = *&__src[480];
        v82 = *&__src[704];
        v83 = *&__src[712];
        v84 = *&__src[720];
        v85 = __src[728];
        v116 = *&__src[528];
        v117 = *&__src[512];
        v118 = *&__src[560];
        v119 = *&__src[544];
        v120 = *&__src[592];
        v121 = *&__src[576];
        v122 = *&__src[624];
        v123 = *&__src[608];
        v124 = *&__src[656];
        v125 = *&__src[640];
        v126 = *&__src[688];
        v127 = *&__src[672];
      }

      *&__src[16] = v221;
      *__src = v222;
      *&__src[48] = v219;
      *&__src[32] = v220;
      *&__src[80] = v217;
      *&__src[64] = v218;
      *&__src[112] = v215;
      *&__src[96] = v216;
      *&__src[144] = v213;
      *&__src[128] = v214;
      *&__src[176] = v210;
      *&__src[160] = v211;
      *&__src[208] = v207;
      *&__src[192] = v208;
      *&__src[240] = v204;
      *&__src[224] = v205;
      *&__src[272] = v202;
      *&__src[256] = v203;
      *&__src[304] = v200;
      *&__src[288] = v201;
      *&__src[336] = v198;
      *&__src[320] = v199;
      *&__src[368] = v196;
      *&__src[352] = v197;
      *&__src[400] = v194;
      *&__src[384] = v195;
      *&__src[432] = v192;
      *&__src[416] = v193;
      *&__src[464] = v190;
      *&__src[448] = v191;
      *&__src[496] = v188;
      *&__src[480] = v189;
      *&__src[528] = v186;
      *&__src[512] = v187;
      *&__src[560] = v184;
      *&__src[544] = v185;
      *&__src[592] = v182;
      *&__src[576] = v183;
      *&__src[624] = v180;
      *&__src[608] = v181;
      *&__src[656] = v178;
      *&__src[640] = v179;
      *&__src[688] = v176;
      *&__src[672] = v177;
      v227[1] = v97;
      v227[0] = v98;
      v227[3] = v99;
      v227[2] = v100;
      v227[5] = v101;
      v227[4] = v102;
      v227[7] = v103;
      v227[6] = v104;
      v227[9] = v105;
      v227[8] = v106;
      v227[11] = v107;
      v227[10] = v108;
      *&__src[704] = v212;
      *&__src[712] = v209;
      *&__src[720] = v206;
      __src[728] = v32;
      v227[13] = v174;
      v227[12] = v175;
      v227[15] = v172;
      v227[14] = v173;
      v227[17] = v170;
      v227[16] = v171;
      v227[19] = v168;
      v227[18] = v169;
      v227[21] = v166;
      v227[20] = v167;
      v227[23] = v164;
      v227[22] = v165;
      v227[25] = v109;
      v227[24] = v163;
      v227[27] = v110;
      v227[26] = v111;
      v227[29] = v112;
      v227[28] = v113;
      v227[31] = v114;
      v227[30] = v115;
      v227[33] = v116;
      v227[32] = v117;
      v227[35] = v118;
      v227[34] = v119;
      v227[37] = v120;
      v227[36] = v121;
      v227[39] = v122;
      v227[38] = v123;
      v227[41] = v124;
      v227[40] = v125;
      v227[43] = v126;
      v227[42] = v127;
      *&v227[44] = v82;
      *(&v227[44] + 1) = v83;
      *&v227[45] = v84;
      BYTE8(v227[45]) = v85;
      if (*(&v222 + 1))
      {
        sub_217284868();
        if (*(&v227[0] + 1))
        {
          memcpy(__dst, v228, 0x2D9uLL);
          memcpy(v223, v227, 0x2D9uLL);
          v129 = sub_2173E2640(__dst);
          sub_217284734(v223);
          sub_217284734(__dst);
          sub_2171F0738(__src, &qword_27CB24AE0, &unk_2177590B0);
          sub_217276358(v230);
          sub_217276358(v231);
          if (!v129)
          {
            return 0;
          }

          goto LABEL_42;
        }

        v130 = OUTLINED_FUNCTION_130();
        sub_217284734(v130);
      }

      sub_2171F0738(__src, &qword_27CB24AD8, &qword_2177590A8);
      sub_217276358(v230);
      sub_217276358(v231);
LABEL_42:
      v2 += 752;
      v1 += 752;
      if (!--v3)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_217273708(uint64_t a1)
{
  OUTLINED_FUNCTION_61_0();
  if (v6)
  {
    if (!v3 || v4 == v5)
    {
      return 1;
    }

    OUTLINED_FUNCTION_90_0();
    while (1)
    {
      memcpy(__dst, v1, 0x91uLL);
      memcpy(v14, v2, 0x91uLL);
      memcpy(v12, v1, sizeof(v12));
      memcpy(__src, v2, sizeof(__src));
      sub_217284914(__dst, v10);
      sub_217284914(v14, v10);
      sub_217284914(__dst, v10);
      sub_217284914(v14, v10);
      static PlayParameters.== infix(_:_:)(v12, __src);
      v8 = v7;
      memcpy(v15, __src, sizeof(v15));
      sub_2172848C0(v15);
      memcpy(v16, v12, sizeof(v16));
      sub_2172848C0(v16);
      sub_217284970(v14);
      sub_217284970(__dst);
      if ((v8 & 1) == 0)
      {
        break;
      }

      if (LOBYTE(__dst[16]))
      {
        if ((LOBYTE(v14[16]) & 1) == 0)
        {
          return 0;
        }
      }

      else if ((LOBYTE(v14[16]) & 1) != 0 || __dst[15] != v14[15])
      {
        return 0;
      }

      if (LOBYTE(__dst[18]))
      {
        if ((LOBYTE(v14[18]) & 1) == 0)
        {
          return 0;
        }
      }

      else if ((LOBYTE(v14[18]) & 1) != 0 || __dst[17] != v14[17])
      {
        return 0;
      }

      v2 += 152;
      v1 += 152;
      if (!--v3)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_217273884(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v11 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        sub_2172830F8(v3, v14);
        sub_2172830F8(v4, v13);
        v5 = v15;
        v6 = v16;
        __swift_project_boxed_opaque_existential_1(v14, v15);
        v7 = *(v6 + 32);
        v8 = OUTLINED_FUNCTION_204();
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
        v11 = v7(v13, v10, v5, v6);
        sub_217283154(v13);
        sub_217283154(v14);
        if ((v11 & 1) == 0)
        {
          break;
        }

        v3 += 40;
        v4 += 40;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_2172739A0(uint64_t a1)
{
  OUTLINED_FUNCTION_61_0();
  if (v6)
  {
    if (!v3 || v4 == v5)
    {
      return 1;
    }

    OUTLINED_FUNCTION_90_0();
    while (1)
    {
      memcpy(__dst, v1, sizeof(__dst));
      memcpy(v11, v1, sizeof(v11));
      memcpy(v13, v2, sizeof(v13));
      memcpy(__src, v2, sizeof(__src));
      sub_21728399C(__dst, v9);
      sub_21728399C(v13, v9);
      v7 = static MusicAPI.Error.== infix(_:_:)(v11, __src);
      memcpy(v14, __src, sizeof(v14));
      sub_2172839F8(v14);
      memcpy(v15, v11, sizeof(v15));
      sub_2172839F8(v15);
      if ((v7 & 1) == 0)
      {
        break;
      }

      v1 += 112;
      v2 += 112;
      if (!--v3)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_217273AA4()
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_93_1();
  if (v12 && v0 && v1 != v2)
  {
    v3 = (v1 + 72);
    v4 = (v2 + 40);
    do
    {
      v5 = *(v3 - 3);
      v6 = *(v3 - 2);
      v7 = *v3;
      v15 = *(v3 - 1);
      v8 = v4[1];
      v9 = v4[2];
      v11 = v4[3];
      v10 = v4[4];
      v12 = *(v3 - 5) == *(v4 - 1) && *(v3 - 4) == *v4;
      if (!v12 && (sub_217753058() & 1) == 0)
      {
        break;
      }

      v13 = v5 == v8 && v6 == v9;
      if (!v13 && (OUTLINED_FUNCTION_183() & 1) == 0)
      {
        break;
      }

      if (v7)
      {
        if (!v10)
        {
          break;
        }

        v14 = v15 == v11 && v7 == v10;
        if (!v14 && (OUTLINED_FUNCTION_216(v15) & 1) == 0)
        {
          break;
        }
      }

      else if (v10)
      {
        break;
      }

      v3 += 6;
      v4 += 6;
      --v0;
    }

    while (v0);
  }

  OUTLINED_FUNCTION_95_0();
}

uint64_t sub_217273BA8()
{
  OUTLINED_FUNCTION_99_3();
  if (v4)
  {
    if (!v1 || v2 == v3)
    {
      v11 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_63_1();
      do
      {
        OUTLINED_FUNCTION_182_0();
        OUTLINED_FUNCTION_196_1();
        OUTLINED_FUNCTION_182_0();
        v11 = v0(v14, &v13);
        OUTLINED_FUNCTION_129();
        sub_2171F0738(v5, v6, v7);
        OUTLINED_FUNCTION_129();
        sub_2171F0738(v8, v9, v10);
        if ((v11 & 1) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_62_2();
      }

      while (!v4);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

void sub_217273D20()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10(0) - 8;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_67_3();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_151();
  if (v16 && v1 && v9 != v7)
  {
    OUTLINED_FUNCTION_70_2();
    v18 = v9 + v17;
    v19 = v7 + v17;
    v21 = *(v20 + 72);
    do
    {
      OUTLINED_FUNCTION_105_3();
      sub_217283FD0();
      sub_217283FD0();
      v22 = OUTLINED_FUNCTION_13_2();
      v23 = v5(v22);
      sub_2172840D8(v14, v3);
      sub_2172840D8(v0, v3);
      if ((v23 & 1) == 0)
      {
        break;
      }

      v19 += v21;
      v18 += v21;
      OUTLINED_FUNCTION_178();
    }

    while (!v16);
  }

  OUTLINED_FUNCTION_13();
}

void sub_217273E7C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_61_0();
  if (v9 && v0 && v1 != v2)
  {
    v3 = (v1 + 32);
    v4 = (v2 + 32);
    do
    {
      if (*v3)
      {
        v5 = 0x6C75736552706F74;
      }

      else
      {
        v5 = 0x736D726574;
      }

      if (*v3)
      {
        v6 = 0xEA00000000007374;
      }

      else
      {
        v6 = 0xE500000000000000;
      }

      if (*v4)
      {
        v7 = 0x6C75736552706F74;
      }

      else
      {
        v7 = 0x736D726574;
      }

      if (*v4)
      {
        v8 = 0xEA00000000007374;
      }

      else
      {
        v8 = 0xE500000000000000;
      }

      v9 = v5 == v7 && v6 == v8;
      if (v9)
      {
      }

      else
      {
        v10 = sub_217753058();

        if ((v10 & 1) == 0)
        {
          break;
        }
      }

      ++v3;
      ++v4;
      --v0;
    }

    while (v0);
  }

  OUTLINED_FUNCTION_13();
}

void sub_217273F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_214();
  OUTLINED_FUNCTION_210();
  if (v13)
  {
    goto LABEL_28;
  }

  v20 = *(v19 + 16);
LABEL_3:
  if (v15 >> 62)
  {
    v21 = sub_217752D38();
  }

  else
  {
    v21 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v20 != v21 || !v20)
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_203();
  OUTLINED_FUNCTION_202_0();
  if (!v25)
  {
    v24 = v15;
  }

  if (v15 >> 62)
  {
    v23 = v24;
  }

  if (v22 != v23)
  {
    if ((v20 & 0x8000000000000000) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB281D0, &qword_217758F58);
      OUTLINED_FUNCTION_134_0();
      while (1)
      {
        v26 = v17 - 3;
        if (__OFADD__(v17 - 4, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          v20 = sub_217752D38();
          goto LABEL_3;
        }

        if (v18)
        {
          v27 = MEMORY[0x21CEA2E30](v17 - 4, a12);
          if (v16)
          {
            goto LABEL_17;
          }
        }

        else
        {
          OUTLINED_FUNCTION_201_1();
          if (v29)
          {
            goto LABEL_26;
          }

          v27 = *(a12 + 8 * v17);

          if (v16)
          {
LABEL_17:
            v28 = MEMORY[0x21CEA2E30](v17 - 4, v15);
            goto LABEL_22;
          }
        }

        OUTLINED_FUNCTION_201_1();
        if (v29)
        {
          goto LABEL_27;
        }

        v28 = *(v15 + 8 * v17);

LABEL_22:
        v30 = static AnyMusicProperty.== infix(_:_:)(v27, v28);

        if (v30)
        {
          ++v17;
          v15 = v14;
          if (v26 != v12)
          {
            continue;
          }
        }

        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    OUTLINED_FUNCTION_213();
  }
}

void sub_2172741E0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_98_2();
  if (!v8 || !v1 || v4 == v5)
  {
LABEL_71:
    OUTLINED_FUNCTION_13();
    return;
  }

  OUTLINED_FUNCTION_50_2();
  while (1)
  {
    OUTLINED_FUNCTION_39_0();
    sub_217284868();
    if (v0 == v1)
    {
      break;
    }

    OUTLINED_FUNCTION_39_0();
    sub_217284868();
    OUTLINED_FUNCTION_97_1();
    v8 = v8 && v6 == v7;
    if (!v8 && (sub_217753058() & 1) == 0 || (OUTLINED_FUNCTION_96_0(), !v8) || ((OUTLINED_FUNCTION_95_1(), v8) ? (v11 = v9 == v10) : (v11 = 0), !v11 && (sub_217753058() & 1) == 0))
    {
LABEL_70:
      OUTLINED_FUNCTION_58_3();
      sub_2171F0738(v87, v88, v89);
      OUTLINED_FUNCTION_58_3();
      sub_2171F0738(v90, v91, v92);
      goto LABEL_71;
    }

    OUTLINED_FUNCTION_195_1();
    v13 = &qword_27CB24188;
    if (v14)
    {
      if (!v12)
      {
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_94();
      v17 = v8 && v15 == v16;
      if (!v17 && (sub_217753058() & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (v12)
    {
      goto LABEL_35;
    }

    v18 = OUTLINED_FUNCTION_55_2();
    v26 = OUTLINED_FUNCTION_32_2(v18, v19, v20, v21, v22, v23, v24, v25, v93, v94, v95, *(&v95 + 1), v96, *(&v96 + 1), v97, v98, v99, v100, v101, v102, v103, *(&v103 + 1), v104, *(&v104 + 1), v105, v106[0], v106[1], v106[2], v107, v108, v109, v110, v111, v112[0], v112[1], v112[2], v112[3], v112[4], v112[5], v112[6], v112[7]);
    if (v101)
    {
      OUTLINED_FUNCTION_80_0(v26, v27, v28, v29, v30, v31, v32, v33, v93, v94, v95, *(&v95 + 1), v96, *(&v96 + 1), v97, v98, v99, v100, v101, v102, v103, *(&v103 + 1), v104, *(&v104 + 1), v105, v106[0]);
      if (*(&v104 + 1))
      {
        v95 = v103;
        v96 = v104;
        v97 = v105;
        v3 = v2;
        v34 = v107;
        v2 = v108;
        OUTLINED_FUNCTION_89_2(v106);
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244A0, &qword_21777F1E0);
        v43 = OUTLINED_FUNCTION_28_1(v35, v36, v37, v38, v39, v40, v41, v42, v93, v94, v95);
        v44 = (qword_21775A380)(v43);
        OUTLINED_FUNCTION_227(v44, v45, v46, v47);
        sub_217283154(v106);
        sub_2171F0738(&v98, &qword_27CB24188, &dword_217758930);
        goto LABEL_36;
      }

      sub_217283154(v106);
    }

    else if (!*(&v104 + 1))
    {
      OUTLINED_FUNCTION_144(v26, v27, v28, v29, v30, v31, v32, v33, v93, v94, v95, *(&v95 + 1), v96, *(&v96 + 1));
      v34 = 1;
      goto LABEL_36;
    }

    sub_2171F0738(&v98, &qword_27CB24928, &unk_21775E020);
LABEL_35:
    v34 = 0;
LABEL_36:
    OUTLINED_FUNCTION_51_1();
    if (v49)
    {
      if ((v48 & 1) == 0)
      {
        goto LABEL_43;
      }

      OUTLINED_FUNCTION_92_0();
      if (!v8 || ([OUTLINED_FUNCTION_193_0() hasSameContentAsSectionedCollection_] & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (v48)
      {
LABEL_43:
        OUTLINED_FUNCTION_194();
        sub_217557EA0(v50);
        OUTLINED_FUNCTION_115_0();
        LOBYTE(v13) = sub_217557EA0(v51);
        v52 = OUTLINED_FUNCTION_173();
        sub_217271340(v52, v53, v54, v55);
        OUTLINED_FUNCTION_226();

        if ((v34 & 1) == 0)
        {
          goto LABEL_70;
        }

        goto LABEL_44;
      }

      if ((v34 & 1) == 0)
      {
        goto LABEL_70;
      }

      OUTLINED_FUNCTION_108_0();
      if (!v8)
      {
        goto LABEL_70;
      }

      if (&dword_217758930 && v3 != &qword_27CB24188)
      {
        OUTLINED_FUNCTION_31_2();
        while (1)
        {
          OUTLINED_FUNCTION_81_0();
          if (!&dword_217758930)
          {
            break;
          }

          v70 = OUTLINED_FUNCTION_79_3();
          v78 = OUTLINED_FUNCTION_121_1(v70, v71, v72, v73, v74, v75, v76, v77, v93, v94, v95, *(&v95 + 1), v96, *(&v96 + 1), v97, v98);
          v80 = sub_217644E54(v78, v79);
          OUTLINED_FUNCTION_73_3();
          sub_2171F0738(v81, v82, v83);
          OUTLINED_FUNCTION_73_3();
          sub_2171F0738(v84, v85, v86);
          if ((v80 & 1) == 0)
          {
            OUTLINED_FUNCTION_27_6();
            goto LABEL_70;
          }

          OUTLINED_FUNCTION_118_1();
          if (v8)
          {
            OUTLINED_FUNCTION_27_6();
            v2 = v93;
            goto LABEL_44;
          }
        }

        __break(1u);
        break;
      }
    }

LABEL_44:
    OUTLINED_FUNCTION_49_2();
    if (!v57)
    {
      goto LABEL_51;
    }

    if (!v56)
    {
      goto LABEL_70;
    }

    OUTLINED_FUNCTION_91_1();
    if (!v8 || v58 != v59)
    {
      LOBYTE(v13) = sub_217753058();
LABEL_51:
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v61, v62, v63);
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v64, v65, v66);
      if ((v13 & 1) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_54;
    }

    sub_2171F0738(v112, &qword_27CB248E8, &qword_21775A380);
    OUTLINED_FUNCTION_36();
    sub_2171F0738(v67, v68, v69);
LABEL_54:
    OUTLINED_FUNCTION_48_3();
    if (v8)
    {
      goto LABEL_71;
    }
  }

  __break(1u);
}

void sub_21727456C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_98_2();
  if (!v8 || !v1 || v4 == v5)
  {
LABEL_71:
    OUTLINED_FUNCTION_13();
    return;
  }

  OUTLINED_FUNCTION_50_2();
  while (1)
  {
    OUTLINED_FUNCTION_39_0();
    sub_217284868();
    if (v0 == v1)
    {
      break;
    }

    OUTLINED_FUNCTION_39_0();
    sub_217284868();
    OUTLINED_FUNCTION_97_1();
    v8 = v8 && v6 == v7;
    if (!v8 && (sub_217753058() & 1) == 0 || (OUTLINED_FUNCTION_96_0(), !v8) || ((OUTLINED_FUNCTION_95_1(), v8) ? (v11 = v9 == v10) : (v11 = 0), !v11 && (sub_217753058() & 1) == 0))
    {
LABEL_70:
      OUTLINED_FUNCTION_58_3();
      sub_2171F0738(v87, v88, v89);
      OUTLINED_FUNCTION_58_3();
      sub_2171F0738(v90, v91, v92);
      goto LABEL_71;
    }

    OUTLINED_FUNCTION_195_1();
    v13 = &qword_27CB24188;
    if (v14)
    {
      if (!v12)
      {
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_94();
      v17 = v8 && v15 == v16;
      if (!v17 && (sub_217753058() & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (v12)
    {
      goto LABEL_35;
    }

    v18 = OUTLINED_FUNCTION_55_2();
    v26 = OUTLINED_FUNCTION_32_2(v18, v19, v20, v21, v22, v23, v24, v25, v93, v94, v95, *(&v95 + 1), v96, *(&v96 + 1), v97, v98, v99, v100, v101, v102, v103, *(&v103 + 1), v104, *(&v104 + 1), v105, v106[0], v106[1], v106[2], v107, v108, v109, v110, v111, v112[0], v112[1], v112[2], v112[3], v112[4], v112[5], v112[6], v112[7]);
    if (v101)
    {
      OUTLINED_FUNCTION_80_0(v26, v27, v28, v29, v30, v31, v32, v33, v93, v94, v95, *(&v95 + 1), v96, *(&v96 + 1), v97, v98, v99, v100, v101, v102, v103, *(&v103 + 1), v104, *(&v104 + 1), v105, v106[0]);
      if (*(&v104 + 1))
      {
        v95 = v103;
        v96 = v104;
        v97 = v105;
        v3 = v2;
        v34 = v107;
        v2 = v108;
        OUTLINED_FUNCTION_89_2(v106);
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244A0, &qword_21777F1E0);
        v43 = OUTLINED_FUNCTION_28_1(v35, v36, v37, v38, v39, v40, v41, v42, v93, v94, v95);
        v44 = (unk_21775A370)(v43);
        OUTLINED_FUNCTION_227(v44, v45, v46, v47);
        sub_217283154(v106);
        sub_2171F0738(&v98, &qword_27CB24188, &dword_217758930);
        goto LABEL_36;
      }

      sub_217283154(v106);
    }

    else if (!*(&v104 + 1))
    {
      OUTLINED_FUNCTION_144(v26, v27, v28, v29, v30, v31, v32, v33, v93, v94, v95, *(&v95 + 1), v96, *(&v96 + 1));
      v34 = 1;
      goto LABEL_36;
    }

    sub_2171F0738(&v98, &qword_27CB24928, &unk_21775E020);
LABEL_35:
    v34 = 0;
LABEL_36:
    OUTLINED_FUNCTION_51_1();
    if (v49)
    {
      if ((v48 & 1) == 0)
      {
        goto LABEL_43;
      }

      OUTLINED_FUNCTION_92_0();
      if (!v8 || ([OUTLINED_FUNCTION_193_0() hasSameContentAsSectionedCollection_] & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (v48)
      {
LABEL_43:
        OUTLINED_FUNCTION_194();
        sub_217558CC8(v50);
        OUTLINED_FUNCTION_115_0();
        LOBYTE(v13) = sub_217558CC8(v51);
        v52 = OUTLINED_FUNCTION_173();
        sub_217271340(v52, v53, v54, v55);
        OUTLINED_FUNCTION_226();

        if ((v34 & 1) == 0)
        {
          goto LABEL_70;
        }

        goto LABEL_44;
      }

      if ((v34 & 1) == 0)
      {
        goto LABEL_70;
      }

      OUTLINED_FUNCTION_108_0();
      if (!v8)
      {
        goto LABEL_70;
      }

      if (&dword_217758930 && v3 != &qword_27CB24188)
      {
        OUTLINED_FUNCTION_31_2();
        while (1)
        {
          OUTLINED_FUNCTION_81_0();
          if (!&dword_217758930)
          {
            break;
          }

          v70 = OUTLINED_FUNCTION_79_3();
          v78 = OUTLINED_FUNCTION_121_1(v70, v71, v72, v73, v74, v75, v76, v77, v93, v94, v95, *(&v95 + 1), v96, *(&v96 + 1), v97, v98);
          v80 = sub_217645338(v78, v79);
          OUTLINED_FUNCTION_73_3();
          sub_2171F0738(v81, v82, v83);
          OUTLINED_FUNCTION_73_3();
          sub_2171F0738(v84, v85, v86);
          if ((v80 & 1) == 0)
          {
            OUTLINED_FUNCTION_27_6();
            goto LABEL_70;
          }

          OUTLINED_FUNCTION_118_1();
          if (v8)
          {
            OUTLINED_FUNCTION_27_6();
            v2 = v93;
            goto LABEL_44;
          }
        }

        __break(1u);
        break;
      }
    }

LABEL_44:
    OUTLINED_FUNCTION_49_2();
    if (!v57)
    {
      goto LABEL_51;
    }

    if (!v56)
    {
      goto LABEL_70;
    }

    OUTLINED_FUNCTION_91_1();
    if (!v8 || v58 != v59)
    {
      LOBYTE(v13) = sub_217753058();
LABEL_51:
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v61, v62, v63);
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v64, v65, v66);
      if ((v13 & 1) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_54;
    }

    sub_2171F0738(v112, &qword_27CB248F8, &unk_21775A370);
    OUTLINED_FUNCTION_36();
    sub_2171F0738(v67, v68, v69);
LABEL_54:
    OUTLINED_FUNCTION_48_3();
    if (v8)
    {
      goto LABEL_71;
    }
  }

  __break(1u);
}

void sub_2172748F8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_98_2();
  if (!v8 || !v1 || v4 == v5)
  {
LABEL_71:
    OUTLINED_FUNCTION_13();
    return;
  }

  OUTLINED_FUNCTION_50_2();
  while (1)
  {
    OUTLINED_FUNCTION_39_0();
    sub_217284868();
    if (v0 == v1)
    {
      break;
    }

    OUTLINED_FUNCTION_39_0();
    sub_217284868();
    OUTLINED_FUNCTION_97_1();
    v8 = v8 && v6 == v7;
    if (!v8 && (sub_217753058() & 1) == 0 || (OUTLINED_FUNCTION_96_0(), !v8) || ((OUTLINED_FUNCTION_95_1(), v8) ? (v11 = v9 == v10) : (v11 = 0), !v11 && (sub_217753058() & 1) == 0))
    {
LABEL_70:
      OUTLINED_FUNCTION_58_3();
      sub_2171F0738(v87, v88, v89);
      OUTLINED_FUNCTION_58_3();
      sub_2171F0738(v90, v91, v92);
      goto LABEL_71;
    }

    OUTLINED_FUNCTION_195_1();
    v13 = &qword_27CB24188;
    if (v14)
    {
      if (!v12)
      {
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_94();
      v17 = v8 && v15 == v16;
      if (!v17 && (sub_217753058() & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (v12)
    {
      goto LABEL_35;
    }

    v18 = OUTLINED_FUNCTION_55_2();
    v26 = OUTLINED_FUNCTION_32_2(v18, v19, v20, v21, v22, v23, v24, v25, v93, v94, v95, *(&v95 + 1), v96, *(&v96 + 1), v97, v98, v99, v100, v101, v102, v103, *(&v103 + 1), v104, *(&v104 + 1), v105, v106[0], v106[1], v106[2], v107, v108, v109, v110, v111, v112[0], v112[1], v112[2], v112[3], v112[4], v112[5], v112[6], v112[7]);
    if (v101)
    {
      OUTLINED_FUNCTION_80_0(v26, v27, v28, v29, v30, v31, v32, v33, v93, v94, v95, *(&v95 + 1), v96, *(&v96 + 1), v97, v98, v99, v100, v101, v102, v103, *(&v103 + 1), v104, *(&v104 + 1), v105, v106[0]);
      if (*(&v104 + 1))
      {
        v95 = v103;
        v96 = v104;
        v97 = v105;
        v3 = v2;
        v34 = v107;
        v2 = v108;
        OUTLINED_FUNCTION_89_2(v106);
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244A0, &qword_21777F1E0);
        v43 = OUTLINED_FUNCTION_28_1(v35, v36, v37, v38, v39, v40, v41, v42, v93, v94, v95);
        v44 = (unk_217768490)(v43);
        OUTLINED_FUNCTION_227(v44, v45, v46, v47);
        sub_217283154(v106);
        sub_2171F0738(&v98, &qword_27CB24188, &dword_217758930);
        goto LABEL_36;
      }

      sub_217283154(v106);
    }

    else if (!*(&v104 + 1))
    {
      OUTLINED_FUNCTION_144(v26, v27, v28, v29, v30, v31, v32, v33, v93, v94, v95, *(&v95 + 1), v96, *(&v96 + 1));
      v34 = 1;
      goto LABEL_36;
    }

    sub_2171F0738(&v98, &qword_27CB24928, &unk_21775E020);
LABEL_35:
    v34 = 0;
LABEL_36:
    OUTLINED_FUNCTION_51_1();
    if (v49)
    {
      if ((v48 & 1) == 0)
      {
        goto LABEL_43;
      }

      OUTLINED_FUNCTION_92_0();
      if (!v8 || ([OUTLINED_FUNCTION_193_0() hasSameContentAsSectionedCollection_] & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (v48)
      {
LABEL_43:
        OUTLINED_FUNCTION_194();
        sub_217558024(v50);
        OUTLINED_FUNCTION_115_0();
        LOBYTE(v13) = sub_217558024(v51);
        v52 = OUTLINED_FUNCTION_173();
        sub_217271340(v52, v53, v54, v55);
        OUTLINED_FUNCTION_226();

        if ((v34 & 1) == 0)
        {
          goto LABEL_70;
        }

        goto LABEL_44;
      }

      if ((v34 & 1) == 0)
      {
        goto LABEL_70;
      }

      OUTLINED_FUNCTION_108_0();
      if (!v8)
      {
        goto LABEL_70;
      }

      if (&dword_217758930 && v3 != &qword_27CB24188)
      {
        OUTLINED_FUNCTION_31_2();
        while (1)
        {
          OUTLINED_FUNCTION_81_0();
          if (!&dword_217758930)
          {
            break;
          }

          v70 = OUTLINED_FUNCTION_79_3();
          v78 = OUTLINED_FUNCTION_121_1(v70, v71, v72, v73, v74, v75, v76, v77, v93, v94, v95, *(&v95 + 1), v96, *(&v96 + 1), v97, v98);
          v80 = sub_217644E7C(v78, v79);
          OUTLINED_FUNCTION_73_3();
          sub_2171F0738(v81, v82, v83);
          OUTLINED_FUNCTION_73_3();
          sub_2171F0738(v84, v85, v86);
          if ((v80 & 1) == 0)
          {
            OUTLINED_FUNCTION_27_6();
            goto LABEL_70;
          }

          OUTLINED_FUNCTION_118_1();
          if (v8)
          {
            OUTLINED_FUNCTION_27_6();
            v2 = v93;
            goto LABEL_44;
          }
        }

        __break(1u);
        break;
      }
    }

LABEL_44:
    OUTLINED_FUNCTION_49_2();
    if (!v57)
    {
      goto LABEL_51;
    }

    if (!v56)
    {
      goto LABEL_70;
    }

    OUTLINED_FUNCTION_91_1();
    if (!v8 || v58 != v59)
    {
      LOBYTE(v13) = sub_217753058();
LABEL_51:
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v61, v62, v63);
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v64, v65, v66);
      if ((v13 & 1) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_54;
    }

    sub_2171F0738(v112, &qword_27CB24918, &unk_217768490);
    OUTLINED_FUNCTION_36();
    sub_2171F0738(v67, v68, v69);
LABEL_54:
    OUTLINED_FUNCTION_48_3();
    if (v8)
    {
      goto LABEL_71;
    }
  }

  __break(1u);
}

void sub_217274C84()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_98_2();
  if (!v8 || !v1 || v4 == v5)
  {
LABEL_71:
    OUTLINED_FUNCTION_13();
    return;
  }

  OUTLINED_FUNCTION_50_2();
  while (1)
  {
    OUTLINED_FUNCTION_39_0();
    sub_217284868();
    if (v0 == v1)
    {
      break;
    }

    OUTLINED_FUNCTION_39_0();
    sub_217284868();
    OUTLINED_FUNCTION_97_1();
    v8 = v8 && v6 == v7;
    if (!v8 && (sub_217753058() & 1) == 0 || (OUTLINED_FUNCTION_96_0(), !v8) || ((OUTLINED_FUNCTION_95_1(), v8) ? (v11 = v9 == v10) : (v11 = 0), !v11 && (sub_217753058() & 1) == 0))
    {
LABEL_70:
      OUTLINED_FUNCTION_58_3();
      sub_2171F0738(v87, v88, v89);
      OUTLINED_FUNCTION_58_3();
      sub_2171F0738(v90, v91, v92);
      goto LABEL_71;
    }

    OUTLINED_FUNCTION_195_1();
    v13 = &qword_27CB24188;
    if (v14)
    {
      if (!v12)
      {
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_94();
      v17 = v8 && v15 == v16;
      if (!v17 && (sub_217753058() & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (v12)
    {
      goto LABEL_35;
    }

    v18 = OUTLINED_FUNCTION_55_2();
    v26 = OUTLINED_FUNCTION_32_2(v18, v19, v20, v21, v22, v23, v24, v25, v93, v94, v95, *(&v95 + 1), v96, *(&v96 + 1), v97, v98, v99, v100, v101, v102, v103, *(&v103 + 1), v104, *(&v104 + 1), v105, v106[0], v106[1], v106[2], v107, v108, v109, v110, v111, v112[0], v112[1], v112[2], v112[3], v112[4], v112[5], v112[6], v112[7]);
    if (v101)
    {
      OUTLINED_FUNCTION_80_0(v26, v27, v28, v29, v30, v31, v32, v33, v93, v94, v95, *(&v95 + 1), v96, *(&v96 + 1), v97, v98, v99, v100, v101, v102, v103, *(&v103 + 1), v104, *(&v104 + 1), v105, v106[0]);
      if (*(&v104 + 1))
      {
        v95 = v103;
        v96 = v104;
        v97 = v105;
        v3 = v2;
        v34 = v107;
        v2 = v108;
        OUTLINED_FUNCTION_89_2(v106);
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244A0, &qword_21777F1E0);
        v43 = OUTLINED_FUNCTION_28_1(v35, v36, v37, v38, v39, v40, v41, v42, v93, v94, v95);
        v44 = (unk_21775A360)(v43);
        OUTLINED_FUNCTION_227(v44, v45, v46, v47);
        sub_217283154(v106);
        sub_2171F0738(&v98, &qword_27CB24188, &dword_217758930);
        goto LABEL_36;
      }

      sub_217283154(v106);
    }

    else if (!*(&v104 + 1))
    {
      OUTLINED_FUNCTION_144(v26, v27, v28, v29, v30, v31, v32, v33, v93, v94, v95, *(&v95 + 1), v96, *(&v96 + 1));
      v34 = 1;
      goto LABEL_36;
    }

    sub_2171F0738(&v98, &qword_27CB24928, &unk_21775E020);
LABEL_35:
    v34 = 0;
LABEL_36:
    OUTLINED_FUNCTION_51_1();
    if (v49)
    {
      if ((v48 & 1) == 0)
      {
        goto LABEL_43;
      }

      OUTLINED_FUNCTION_92_0();
      if (!v8 || ([OUTLINED_FUNCTION_193_0() hasSameContentAsSectionedCollection_] & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (v48)
      {
LABEL_43:
        OUTLINED_FUNCTION_194();
        sub_2175589B0(v50);
        OUTLINED_FUNCTION_115_0();
        LOBYTE(v13) = sub_2175589B0(v51);
        v52 = OUTLINED_FUNCTION_173();
        sub_217271340(v52, v53, v54, v55);
        OUTLINED_FUNCTION_226();

        if ((v34 & 1) == 0)
        {
          goto LABEL_70;
        }

        goto LABEL_44;
      }

      if ((v34 & 1) == 0)
      {
        goto LABEL_70;
      }

      OUTLINED_FUNCTION_108_0();
      if (!v8)
      {
        goto LABEL_70;
      }

      if (&dword_217758930 && v3 != &qword_27CB24188)
      {
        OUTLINED_FUNCTION_31_2();
        while (1)
        {
          OUTLINED_FUNCTION_81_0();
          if (!&dword_217758930)
          {
            break;
          }

          v70 = OUTLINED_FUNCTION_79_3();
          v78 = OUTLINED_FUNCTION_121_1(v70, v71, v72, v73, v74, v75, v76, v77, v93, v94, v95, *(&v95 + 1), v96, *(&v96 + 1), v97, v98);
          v80 = sub_2176452E8(v78, v79);
          OUTLINED_FUNCTION_73_3();
          sub_2171F0738(v81, v82, v83);
          OUTLINED_FUNCTION_73_3();
          sub_2171F0738(v84, v85, v86);
          if ((v80 & 1) == 0)
          {
            OUTLINED_FUNCTION_27_6();
            goto LABEL_70;
          }

          OUTLINED_FUNCTION_118_1();
          if (v8)
          {
            OUTLINED_FUNCTION_27_6();
            v2 = v93;
            goto LABEL_44;
          }
        }

        __break(1u);
        break;
      }
    }

LABEL_44:
    OUTLINED_FUNCTION_49_2();
    if (!v57)
    {
      goto LABEL_51;
    }

    if (!v56)
    {
      goto LABEL_70;
    }

    OUTLINED_FUNCTION_91_1();
    if (!v8 || v58 != v59)
    {
      LOBYTE(v13) = sub_217753058();
LABEL_51:
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v61, v62, v63);
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v64, v65, v66);
      if ((v13 & 1) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_54;
    }

    sub_2171F0738(v112, &qword_27CB24908, &unk_21775A360);
    OUTLINED_FUNCTION_36();
    sub_2171F0738(v67, v68, v69);
LABEL_54:
    OUTLINED_FUNCTION_48_3();
    if (v8)
    {
      goto LABEL_71;
    }
  }

  __break(1u);
}

uint64_t sub_217275010(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_140_0();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_217275068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_23_7();
  if (v22 && v7 && v8 != v9)
  {
    v10 = (v8 + 40);
    v11 = (v9 + 40);
    while (1)
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      switch(*v10)
      {
        case 0uLL:
          if (!v13)
          {
            goto LABEL_20;
          }

          goto LABEL_38;
        case 1uLL:
          if (v13 != 1)
          {
            goto LABEL_38;
          }

          goto LABEL_20;
        case 2uLL:
          if (v13 != 2)
          {
            goto LABEL_38;
          }

          goto LABEL_20;
        case 3uLL:
          if (v13 != 3)
          {
            goto LABEL_38;
          }

          goto LABEL_20;
        case 4uLL:
          if (v13 != 4)
          {
            goto LABEL_38;
          }

          goto LABEL_20;
        case 5uLL:
          if (v13 != 5)
          {
            goto LABEL_38;
          }

LABEL_20:
          v16 = OUTLINED_FUNCTION_16_0();
          sub_21726B87C(v16, v17);
          v18 = OUTLINED_FUNCTION_93();
          sub_21726B8A0(v18, v19);
          v20 = OUTLINED_FUNCTION_16_0();
          goto LABEL_21;
        case 6uLL:
          if (v13 != 6)
          {
            goto LABEL_38;
          }

          sub_21726B8A0(*(v10 - 1), 6uLL);
          v14 = v12;
          v15 = 6;
          goto LABEL_22;
        case 7uLL:
          if (v13 != 7)
          {
            goto LABEL_38;
          }

          sub_21726B8A0(*(v10 - 1), 7uLL);
          v14 = v12;
          v15 = 7;
          goto LABEL_22;
        case 8uLL:
          if (v13 != 8)
          {
            goto LABEL_38;
          }

          sub_21726B8A0(*(v10 - 1), 8uLL);
          v14 = v12;
          v15 = 8;
          goto LABEL_22;
        default:
          if (v13 < 9)
          {
LABEL_38:
            v34 = OUTLINED_FUNCTION_93();
            sub_21726B87C(v34, v35);
            v36 = OUTLINED_FUNCTION_93();
            sub_21726B87C(v36, v37);
            v38 = OUTLINED_FUNCTION_16_0();
            sub_21726B87C(v38, v39);
            v40 = OUTLINED_FUNCTION_93();
            sub_21726B8A0(v40, v41);
            v42 = OUTLINED_FUNCTION_16_0();
            sub_21726B8A0(v42, v43);
            v44 = OUTLINED_FUNCTION_93();
            sub_21726B8A0(v44, v45);
            goto LABEL_39;
          }

          v22 = *(v10 - 1) == v12 && *v10 == v13;
          if (v22)
          {
            sub_21726B87C(*(v10 - 1), *v10);
            v32 = OUTLINED_FUNCTION_93();
            sub_21726B87C(v32, v33);
            v20 = OUTLINED_FUNCTION_93();
LABEL_21:
            sub_21726B8A0(v20, v21);
            v14 = OUTLINED_FUNCTION_93();
LABEL_22:
            sub_21726B8A0(v14, v15);
          }

          else
          {
            OUTLINED_FUNCTION_39_0();
            v23 = sub_217753058();
            v24 = OUTLINED_FUNCTION_16_0();
            sub_21726B87C(v24, v25);
            v26 = OUTLINED_FUNCTION_93();
            sub_21726B87C(v26, v27);
            v28 = OUTLINED_FUNCTION_93();
            sub_21726B8A0(v28, v29);
            v30 = OUTLINED_FUNCTION_16_0();
            sub_21726B8A0(v30, v31);
            if ((v23 & 1) == 0)
            {
              goto LABEL_39;
            }
          }

          v10 += 2;
          v11 += 2;
          if (!--v7)
          {
            goto LABEL_39;
          }

          break;
      }
    }
  }

LABEL_39:
  OUTLINED_FUNCTION_218();
}

void sub_217275264(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_217_1();
  OUTLINED_FUNCTION_23_7();
  if (v7 && v4 && v5 != v6)
  {
    OUTLINED_FUNCTION_90_0();
    do
    {
      OUTLINED_FUNCTION_39_0();
      sub_217284868();
      OUTLINED_FUNCTION_39_0();
      sub_217284868();
      v8 = sub_21767F088();
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v9, v10, v11);
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v12, v13, v14);
      if ((v8 & 1) == 0)
      {
        break;
      }

      v2 += 1072;
      v3 += 1072;
      OUTLINED_FUNCTION_152_0();
    }

    while (!v7);
  }

  OUTLINED_FUNCTION_219();
}

uint64_t sub_21727533C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v6 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3 ^ *v4;
        if (v5)
        {
          break;
        }

        ++v3;
        ++v4;
        --v2;
      }

      while (v2);
      v6 = v5 ^ 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t MusicPlayer.Queue.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_138(v1 + 16, v9);
  sub_217284868();
  if (__src[1])
  {
    memcpy(__dst, __src, 0x2EAuLL);
    OUTLINED_FUNCTION_24();
    sub_217751FF8();
    v2 = sub_2175ABA90();
    OUTLINED_FUNCTION_189_1(v2, v3);

    sub_217276358(__dst);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  sub_2172824CC();
  sub_217284868();
  if (!__src[1])
  {
    return OUTLINED_FUNCTION_25();
  }

  memcpy(__dst, __src, 0x2EAuLL);
  OUTLINED_FUNCTION_24();
  sub_217751FF8();
  v4 = sub_2175ABA90();
  OUTLINED_FUNCTION_189_1(v4, v5);

  return sub_217276358(__dst);
}

uint64_t MusicPlayer.Queue.hashValue.getter()
{
  sub_2177531E8();
  MusicPlayer.Queue.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_217275584(uint64_t a1)
{
  sub_2177531E8();
  MusicPlayer.Queue.hash(into:)(v2);
  return sub_217753238();
}

uint64_t MusicPlayer.Queue.EntryInsertionPosition.hashValue.getter()
{
  sub_2177531E8();
  v0 = OUTLINED_FUNCTION_156_0();
  MEMORY[0x21CEA3550](v0);
  return sub_217753238();
}

uint64_t sub_217275680(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_217275694(result, a2);
  }

  return result;
}

uint64_t sub_217275694(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t objectdestroyTm()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  OUTLINED_FUNCTION_197();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_217275908(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21727591C(a1, a2);
  }

  return a1;
}

uint64_t sub_21727591C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_217275974()
{
  OUTLINED_FUNCTION_169();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_43();
  v3 = OUTLINED_FUNCTION_93();
  v4(v3);
  return v0;
}

id sub_2172759F0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == *(a2 + 48))
  {
    return [*(a1 + 16) hasSameContentAsSectionedCollection_];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217275A34(uint64_t a1, uint64_t a2)
{
  if (dynamic_cast_existential_0_class_conditional(a2, a2))
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
  }

  else
  {

    return sub_217752FD8();
  }
}

uint64_t sub_217275AFC()
{
  sub_217751428();
  OUTLINED_FUNCTION_47_3();
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_116_1();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_217275B68()
{
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_217275BAC()
{
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_116_1();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_217275BEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24188, &dword_217758930);
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_116_1();

  return MEMORY[0x2821FE8D8](v0);
}

void sub_217275C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_137();
  sub_21727C630(v8);
  *v7 = v9;
}

uint64_t sub_217276198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2172770B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2172761B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2172771C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2172761D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2172772D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2172761F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2172773E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_217276218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2172774F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_217276238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_217277608(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_217276258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_217277718(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_217276278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_217277828(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_217276298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_217277938(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2172762B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_217277A48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2172762D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_217277B58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2172762F8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_217277C68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_217276318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_217277E34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_217276338(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_217277F44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2172763AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21727804C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_217276430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21727821C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2172764A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_217278334(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2172764C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_217278444(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2172764E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21727855C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_217276508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_217278674(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_217276528(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21727878C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_217276600(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_217278AD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_217276678(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_217278D74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_217276698(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_217278E8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2172766B8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_217279058(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2172766D8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_217279224(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2172766F8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2172793F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_217276718(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2172795BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_217276738(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_217279788(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_217276758(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_217279954(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_217276778(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_217279B20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_217276798(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_217279CEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2172767B8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_217279EB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2172767D8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21727A084(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2172767F8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21727A250(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_217276818(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21727A41C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_217276838(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21727A5E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_217276858(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21727A7B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_217276948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21727AC80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_217276BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21727BAD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_217276D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_136_0();
  sub_21727C284(v4, v5, v6, v7, v8, v9, v10);
  *v3 = v11;
}

uint64_t sub_217276DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21727C35C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_217276E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21727C474(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_217276F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21727C6DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_217276F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21727C7F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_217276F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21727C90C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_217276FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21727CA24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_217276FC0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21727CB3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_217276FE0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21727CD08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2172770B8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24580, &unk_217758A90);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_21750400C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB279E0, &unk_2177881E0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2172771C8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB248B0, &unk_217758E40);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_21750400C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB248B8, &qword_217771D80);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2172772D8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB246D0, &unk_21775A280);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_21750400C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28090, &qword_217758C50);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2172773E8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24538, &unk_217758A40);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_21750400C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24540, &qword_21776B300);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2172774F8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB246B0, &qword_217758C18);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_21750400C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27FD0, &qword_217758C20);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_217277608(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24690, &qword_217758BE8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_21750400C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27EE0, &qword_217758BF0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_217277718(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24828, &unk_217758DB0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_21750400C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24830, &qword_217771D40);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_217277828(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24568, &unk_217758A70);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_21750400C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27900, &qword_217771CE0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_217277938(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24700, &unk_217758C80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_21750400C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28150, &qword_21776C1A0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_217277A48(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB245F0, &unk_217758B20);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_21750400C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27BD0, &qword_21776B8C0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_217277B58(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24510, &unk_21775A290);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_21750400C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB276C0, &qword_217758A00);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_217277C68(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24970, &unk_217758F00);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24978, &qword_21776DBA0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24978, &qword_21776DBA0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_2175000C4(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_217277E34(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24890, &unk_217758E20);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_21750400C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24898, &unk_21775A270);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_217277F44(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24420, &qword_217758700);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 752);
      if (v5)
      {
LABEL_13:
        sub_217500044((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_21727804C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244E0, &qword_2177589B8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_21750400C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27CB27E20, &unk_2177589C0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_21727815C()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
      v7 = OUTLINED_FUNCTION_34_3(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_2175000D8(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_21727821C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24900, &unk_217758E90);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 160);
      if (v5)
      {
LABEL_13:
        sub_217504034((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24908, &unk_21775A360);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_217278334(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24610, &unk_217758B50);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_21750400C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24618, &qword_217778790);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_217278444(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24910, &unk_217758EA0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 160);
      if (v5)
      {
LABEL_13:
        sub_217504034((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24918, &unk_217768490);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_21727855C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB248F0, &unk_217758E80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 160);
      if (v5)
      {
LABEL_13:
        sub_217504034((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB248F8, &unk_21775A370);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_217278674(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB248E0, &unk_217758E70);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 160);
      if (v5)
      {
LABEL_13:
        sub_217504034((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB248E8, &qword_21775A380);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_21727878C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB248A0, &qword_217758E30);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_21750017C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_217278958()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24518, &qword_217758A08);
      v7 = OUTLINED_FUNCTION_187(v6);
      OUTLINED_FUNCTION_13_7(v7);
      OUTLINED_FUNCTION_38_0(v8 / 8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_217504014(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24520, &unk_217758A10);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_217278A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_52_2();
  if ((v12 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v13 == v14))
  {
LABEL_6:
    OUTLINED_FUNCTION_102_0();
    if (v11)
    {
      OUTLINED_FUNCTION_179_0(v15, v16, v17, v18, v19, v20);
      v21 = swift_allocObject();
      OUTLINED_FUNCTION_225(v21);
      *(v11 + 16) = v10;
      *(v11 + 24) = 2 * (v22 / 56);
      if (v9)
      {
LABEL_8:
        v23 = OUTLINED_FUNCTION_104_1();
        v8(v23);
        *(v7 + 16) = 0;
LABEL_11:

        OUTLINED_FUNCTION_218();
        return;
      }
    }

    else if (v9)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_82_1();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v13)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_217278AD4(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB249F8, &qword_217758FB0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_21750009C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_217278BDC()
{
  OUTLINED_FUNCTION_12();
  v7 = v6;
  v9 = v8;
  v10 = v3;
  v11 = v0;
  if (v2)
  {
    OUTLINED_FUNCTION_6_10();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_35_0();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_8();
    }
  }

  else
  {
    v12 = v1;
  }

  v15 = *(v10 + 16);
  if (v12 <= v15)
  {
    v16 = *(v10 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v20 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_179_0(v0, v1, v2, v3, v4, v5);
  v17 = *(v9(0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = _swift_stdlib_malloc_size(v20);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 - v19 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v20[2] = v15;
  v20[3] = 2 * ((v21 - v19) / v18);
LABEL_18:
  v9(0);
  OUTLINED_FUNCTION_47_3();
  if (v11)
  {
    v7(v10 + v23, v15, v20 + v23);
    *(v10 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_13();
}

void *sub_217278D74(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24570, &unk_217758A80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_21750009C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24578, &qword_217786880);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_217278E8C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24740, &qword_217758CC8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_2175002D4(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_217279058(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A60, &qword_217759028);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A68, &qword_217759030) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A68, &qword_217759030) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_2175002E8(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_217279224(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24730, &qword_217758CB8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24738, &qword_217758CC0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24738, &qword_217758CC0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_2175001B8(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_2172793F0(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24818, &unk_217758DA0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24820, &unk_2177650E0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24820, &unk_2177650E0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_21750012C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_2172795BC(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24788, &unk_217758D10);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24790, &unk_21775A220) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24790, &unk_21775A220) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_2175001CC(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_217279788(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A20, &qword_217758FD8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A28, &qword_217758FE0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A28, &qword_217758FE0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_2175002FC(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}