uint64_t sub_2693E15E8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_269423AE8();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_2693E16C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F938, qword_269428910);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

unint64_t sub_2693E17C8(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    sub_269423AE8();
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2693E1870(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_2693E18D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_0_9(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_5_4()
{

  JUMPOUT(0x26D63C8E0);
}

uint64_t OUTLINED_FUNCTION_9_3()
{

  return sub_2693DE1AC(v1, v0, 0xEA00000000007942);
}

unint64_t OUTLINED_FUNCTION_10_3()
{

  return sub_2693DB6E0(v0, v1, (v2 - 120));
}

uint64_t OUTLINED_FUNCTION_18_3()
{

  return sub_269423A78();
}

uint64_t (*SiriTranslationModels.SnippetTranslationItem.text.modify())()
{
  v1 = OUTLINED_FUNCTION_12_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_11_3(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  *(v0 + 32) = OUTLINED_FUNCTION_57(v3);
  return sub_2693E9050;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t SiriTranslationModels.SnippetTranslationItem.wordType.getter()
{
  type metadata accessor for SiriTranslationModels.SnippetTranslationItem(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F948, &qword_269426430);
  OUTLINED_FUNCTION_40(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t SiriTranslationModels.SnippetTranslationItem.wordType.setter()
{
  v0 = OUTLINED_FUNCTION_17_4();
  type metadata accessor for SiriTranslationModels.SnippetTranslationItem(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F948, &qword_269426430);
  return OUTLINED_FUNCTION_14_3(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t (*SiriTranslationModels.SnippetTranslationItem.wordType.modify())()
{
  v1 = OUTLINED_FUNCTION_12_3();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_4(v2);
  type metadata accessor for SiriTranslationModels.SnippetTranslationItem(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F948, &qword_269426430);
  *(v0 + 32) = OUTLINED_FUNCTION_10_4(v4);
  return sub_2693E9050;
}

uint64_t SiriTranslationModels.SnippetTranslationItem.definition.getter()
{
  type metadata accessor for SiriTranslationModels.SnippetTranslationItem(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F948, &qword_269426430);
  OUTLINED_FUNCTION_40(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t SiriTranslationModels.SnippetTranslationItem.definition.setter()
{
  v0 = OUTLINED_FUNCTION_17_4();
  type metadata accessor for SiriTranslationModels.SnippetTranslationItem(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F948, &qword_269426430);
  return OUTLINED_FUNCTION_14_3(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t (*SiriTranslationModels.SnippetTranslationItem.definition.modify())()
{
  v1 = OUTLINED_FUNCTION_12_3();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_4(v2);
  type metadata accessor for SiriTranslationModels.SnippetTranslationItem(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F948, &qword_269426430);
  *(v0 + 32) = OUTLINED_FUNCTION_10_4(v4);
  return sub_2693E1D54;
}

uint64_t SiriTranslationModels.SnippetTranslationItem.id.getter()
{
  type metadata accessor for SiriTranslationModels.SnippetTranslationItem(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  OUTLINED_FUNCTION_40(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t SiriTranslationModels.SnippetTranslationItem.id.setter()
{
  v0 = OUTLINED_FUNCTION_17_4();
  type metadata accessor for SiriTranslationModels.SnippetTranslationItem(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  return OUTLINED_FUNCTION_14_3(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t (*SiriTranslationModels.SnippetTranslationItem.id.modify())()
{
  v1 = OUTLINED_FUNCTION_12_3();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_4(v2);
  type metadata accessor for SiriTranslationModels.SnippetTranslationItem(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  *(v0 + 32) = OUTLINED_FUNCTION_10_4(v4);
  return sub_2693E9050;
}

uint64_t SiriTranslationModels.SnippetTranslationItem.romanization.getter()
{
  type metadata accessor for SiriTranslationModels.SnippetTranslationItem(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F948, &qword_269426430);
  OUTLINED_FUNCTION_40(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t SiriTranslationModels.SnippetTranslationItem.romanization.setter()
{
  v0 = OUTLINED_FUNCTION_17_4();
  type metadata accessor for SiriTranslationModels.SnippetTranslationItem(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F948, &qword_269426430);
  return OUTLINED_FUNCTION_14_3(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t (*SiriTranslationModels.SnippetTranslationItem.romanization.modify())()
{
  v1 = OUTLINED_FUNCTION_12_3();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_4(v2);
  type metadata accessor for SiriTranslationModels.SnippetTranslationItem(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F948, &qword_269426430);
  *(v0 + 32) = OUTLINED_FUNCTION_10_4(v4);
  return sub_2693E9050;
}

uint64_t static SiriTranslationModels.SnippetTranslationItem.== infix(_:_:)()
{
  type metadata accessor for SiriTranslationModels.SnippetTranslationItem(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  sub_269422DB8();
  sub_269422DB8();

  return 1;
}

uint64_t sub_2693E20AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_269424688() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6570795464726F77 && a2 == 0xE800000000000000;
    if (v6 || (sub_269424688() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6974696E69666564 && a2 == 0xEA00000000006E6FLL;
      if (v7 || (sub_269424688() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 25705 && a2 == 0xE200000000000000;
        if (v8 || (sub_269424688() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x617A696E616D6F72 && a2 == 0xEC0000006E6F6974)
        {

          return 4;
        }

        else
        {
          v10 = sub_269424688();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_2693E2258(char a1)
{
  result = 1954047348;
  switch(a1)
  {
    case 1:
      result = 0x6570795464726F77;
      break;
    case 2:
      result = 0x6974696E69666564;
      break;
    case 3:
      result = 25705;
      break;
    case 4:
      result = 0x617A696E616D6F72;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2693E2328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2693E20AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2693E2350@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2693E2250();
  *a1 = result;
  return result;
}

uint64_t sub_2693E2378(uint64_t a1)
{
  v2 = sub_2693E2608();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2693E23B4(uint64_t a1)
{
  v2 = sub_2693E2608();

  return MEMORY[0x2821FE720](a1, v2);
}

void SiriTranslationModels.SnippetTranslationItem.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_35_0();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F950, &qword_269426438);
  OUTLINED_FUNCTION_2();
  v31 = v30;
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_20_3();
  sub_2693E2608();
  OUTLINED_FUNCTION_32_0();
  sub_269424788();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  OUTLINED_FUNCTION_1_6();
  sub_2693E2CC8(v33);
  OUTLINED_FUNCTION_27_0();
  sub_269424648();
  if (!v27)
  {
    v35 = type metadata accessor for SiriTranslationModels.SnippetTranslationItem(0);
    OUTLINED_FUNCTION_43();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F948, &qword_269426430);
    OUTLINED_FUNCTION_1_6();
    sub_2693E2D34(v34);
    OUTLINED_FUNCTION_26_0(v26 + v28);
    OUTLINED_FUNCTION_26_0(v26 + *(v35 + 24));
    OUTLINED_FUNCTION_27_0();
    sub_269424648();
    OUTLINED_FUNCTION_26_0(v26 + *(v35 + 32));
  }

  (*(v31 + 8))(v28, v29);
  OUTLINED_FUNCTION_33_0();
}

unint64_t sub_2693E2608()
{
  result = qword_28030F958;
  if (!qword_28030F958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F958);
  }

  return result;
}

unint64_t sub_2693E265C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_31_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280310140, &qword_269427110);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void SiriTranslationModels.SnippetTranslationItem.init(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_35_0();
  v3 = v2;
  v36 = v4;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F948, &qword_269426430);
  OUTLINED_FUNCTION_2();
  v46 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_39();
  v37 = v8;
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_50();
  v38 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  OUTLINED_FUNCTION_2();
  v41 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_50();
  v40 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F980, &unk_269426440);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x28223BE20](v19);
  v20 = OUTLINED_FUNCTION_52();
  v21 = type metadata accessor for SiriTranslationModels.SnippetTranslationItem(v20);
  OUTLINED_FUNCTION_4_5();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_5();
  v25 = v24 - v23;
  v27 = *(v26 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
  sub_269422D98();
  v45 = v21[6];
  sub_269422D98();
  v43 = v21[8];
  sub_269422D98();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2693E2608();
  sub_269424778();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
    v29 = *(v46 + 8);
    v29(v25 + v27, v44);
    v29(v25 + v45, v44);
    v29(v25 + v43, v44);
  }

  else
  {
    v42 = v16;
    OUTLINED_FUNCTION_0_10();
    sub_2693E2CC8(v28);
    sub_2694245F8();
    v35 = *(v41 + 32);
    v35(v25, v40);
    OUTLINED_FUNCTION_0_10();
    sub_2693E2D34(v30);
    v31 = v38;
    OUTLINED_FUNCTION_42();
    sub_2694245F8();
    v39 = *(v46 + 40);
    v39(v25 + v27, v31, v44);
    OUTLINED_FUNCTION_22_1(2);
    OUTLINED_FUNCTION_42();
    sub_2694245F8();
    v39(v25 + v45, v37, v44);
    OUTLINED_FUNCTION_22_1(3);
    sub_2694245F8();
    (v35)(v25 + v21[7], v42, v11);
    OUTLINED_FUNCTION_22_1(4);
    OUTLINED_FUNCTION_42();
    sub_2694245F8();
    v32 = OUTLINED_FUNCTION_41();
    v33(v32);
    v34 = OUTLINED_FUNCTION_45(v43);
    (v39)(v34);
    sub_2693E4A0C(v25, v36, type metadata accessor for SiriTranslationModels.SnippetTranslationItem);
    __swift_destroy_boxed_opaque_existential_1(v3);
    sub_2693E4A6C(v25, type metadata accessor for SiriTranslationModels.SnippetTranslationItem);
  }

  OUTLINED_FUNCTION_33_0();
}

unint64_t sub_2693E2CC8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_31_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28030F940, &unk_269426420);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2693E2D34(uint64_t a1)
{
  result = OUTLINED_FUNCTION_31_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28030F948, &qword_269426430);
    sub_2693E265C(&unk_28030F970);
    sub_2693E265C(&unk_28030F978);
    result = OUTLINED_FUNCTION_34_0();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_2693E2E10@<X0>(uint64_t *a1@<X8>)
{
  result = SiriTranslationModels.SnippetTranslationItem.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t (*SiriTranslationModels.SiriTranslationResultModel.items.modify())()
{
  v1 = OUTLINED_FUNCTION_12_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_11_3(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F9A0, &qword_269426450);
  *(v0 + 32) = OUTLINED_FUNCTION_57(v3);
  return sub_2693E9050;
}

uint64_t (*SiriTranslationModels.SiriTranslationResultModel.visualID.modify())()
{
  v1 = OUTLINED_FUNCTION_12_3();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_4(v2);
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  *(v0 + 32) = OUTLINED_FUNCTION_10_4(v4);
  return sub_2693E9050;
}

uint64_t (*SiriTranslationModels.SiriTranslationResultModel.phrase.modify())()
{
  v1 = OUTLINED_FUNCTION_12_3();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_4(v2);
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  *(v0 + 32) = OUTLINED_FUNCTION_10_4(v4);
  return sub_2693E9050;
}

uint64_t SiriTranslationModels.SiriTranslationResultModel.romanizationExists.getter()
{
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F9A8, &qword_269426458);
  sub_269422DB8();
  return v1;
}

uint64_t SiriTranslationModels.SiriTranslationResultModel.romanizationExists.setter(char a1)
{
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F9A8, &qword_269426458);
  return sub_269422DC8();
}

uint64_t (*SiriTranslationModels.SiriTranslationResultModel.romanizationExists.modify())()
{
  v1 = OUTLINED_FUNCTION_12_3();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_4(v2);
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F9A8, &qword_269426458);
  *(v0 + 32) = OUTLINED_FUNCTION_10_4(v4);
  return sub_2693E9050;
}

uint64_t SiriTranslationModels.SiriTranslationResultModel.targetLanguageLocale.getter()
{
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  OUTLINED_FUNCTION_40(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t SiriTranslationModels.SiriTranslationResultModel.targetLanguageLocale.setter()
{
  v0 = OUTLINED_FUNCTION_17_4();
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  return OUTLINED_FUNCTION_14_3(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t (*SiriTranslationModels.SiriTranslationResultModel.targetLanguageLocale.modify())()
{
  v1 = OUTLINED_FUNCTION_12_3();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_4(v2);
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  *(v0 + 32) = OUTLINED_FUNCTION_10_4(v4);
  return sub_2693E9050;
}

uint64_t SiriTranslationModels.SiriTranslationResultModel.sourceLanguageLocale.getter()
{
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  OUTLINED_FUNCTION_40(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t SiriTranslationModels.SiriTranslationResultModel.sourceLanguageLocale.setter()
{
  v0 = OUTLINED_FUNCTION_17_4();
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  return OUTLINED_FUNCTION_14_3(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t (*SiriTranslationModels.SiriTranslationResultModel.sourceLanguageLocale.modify())()
{
  v1 = OUTLINED_FUNCTION_12_3();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_4(v2);
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  *(v0 + 32) = OUTLINED_FUNCTION_10_4(v4);
  return sub_2693E9050;
}

uint64_t SiriTranslationModels.SiriTranslationResultModel.localizedSourceLanguage.getter()
{
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  OUTLINED_FUNCTION_40(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t SiriTranslationModels.SiriTranslationResultModel.localizedSourceLanguage.setter()
{
  v0 = OUTLINED_FUNCTION_17_4();
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  return OUTLINED_FUNCTION_14_3(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t (*SiriTranslationModels.SiriTranslationResultModel.localizedSourceLanguage.modify())()
{
  v1 = OUTLINED_FUNCTION_12_3();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_4(v2);
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  *(v0 + 32) = OUTLINED_FUNCTION_10_4(v4);
  return sub_2693E9050;
}

uint64_t SiriTranslationModels.SiriTranslationResultModel.localizedtargetLanguage.getter()
{
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  OUTLINED_FUNCTION_40(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t SiriTranslationModels.SiriTranslationResultModel.localizedtargetLanguage.setter()
{
  v0 = OUTLINED_FUNCTION_17_4();
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  return OUTLINED_FUNCTION_14_3(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t (*SiriTranslationModels.SiriTranslationResultModel.localizedtargetLanguage.modify())()
{
  v1 = OUTLINED_FUNCTION_12_3();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_4(v2);
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  *(v0 + 32) = OUTLINED_FUNCTION_10_4(v4);
  return sub_2693E9050;
}

uint64_t SiriTranslationModels.SiriTranslationResultModel.openMoreInTranslation.getter()
{
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  OUTLINED_FUNCTION_40(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t SiriTranslationModels.SiriTranslationResultModel.openMoreInTranslation.setter()
{
  v0 = OUTLINED_FUNCTION_17_4();
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  return OUTLINED_FUNCTION_14_3(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t (*SiriTranslationModels.SiriTranslationResultModel.openMoreInTranslation.modify())()
{
  v1 = OUTLINED_FUNCTION_12_3();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_4(v2);
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  *(v0 + 32) = OUTLINED_FUNCTION_10_4(v4);
  return sub_2693E9050;
}

uint64_t sub_2693E36A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736D657469 && a2 == 0xE500000000000000;
  if (v4 || (sub_269424688() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x44496C6175736976 && a2 == 0xE800000000000000;
    if (v6 || (sub_269424688() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x657361726870 && a2 == 0xE600000000000000;
      if (v7 || (sub_269424688() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x80000002694291B0 == a2;
        if (v8 || (sub_269424688() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000014 && 0x8000000269429980 == a2;
          if (v9 || (sub_269424688() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000014 && 0x80000002694299A0 == a2;
            if (v10 || (sub_269424688() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000017 && 0x80000002694299C0 == a2;
              if (v11 || (sub_269424688() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000017 && 0x80000002694299E0 == a2;
                if (v12 || (sub_269424688() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD000000000000015 && 0x8000000269429A00 == a2)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_269424688();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_2693E3970(char a1)
{
  result = 0x736D657469;
  switch(a1)
  {
    case 1:
      result = 0x44496C6175736976;
      break;
    case 2:
      result = 0x657361726870;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
    case 7:
      result = 0xD000000000000017;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2693E3A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2693E36A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2693E3AC4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2693E3968();
  *a1 = result;
  return result;
}

uint64_t sub_2693E3AEC(uint64_t a1)
{
  v2 = sub_2693E3DF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2693E3B28(uint64_t a1)
{
  v2 = sub_2693E3DF8();

  return MEMORY[0x2821FE720](a1, v2);
}

void SiriTranslationModels.SiriTranslationResultModel.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_35_0();
  v30 = v27;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F9B0, &qword_269426460);
  OUTLINED_FUNCTION_2();
  v33 = v32;
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_20_3();
  sub_2693E3DF8();
  OUTLINED_FUNCTION_32_0();
  sub_269424788();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F9A0, &qword_269426450);
  OUTLINED_FUNCTION_1_6();
  sub_2693E4938(v36);
  OUTLINED_FUNCTION_55(v30);
  if (!v28)
  {
    v37 = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
    OUTLINED_FUNCTION_43();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
    OUTLINED_FUNCTION_1_6();
    sub_2693E2CC8(v38);
    OUTLINED_FUNCTION_6_3(v30 + v35);
    OUTLINED_FUNCTION_6_3(v30 + v37[6]);
    v40 = v37[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F9A8, &qword_269426458);
    OUTLINED_FUNCTION_1_6();
    sub_2693E3F18(v39);
    OUTLINED_FUNCTION_55(v30 + v40);
    OUTLINED_FUNCTION_6_3(v30 + v37[8]);
    OUTLINED_FUNCTION_6_3(v30 + v37[9]);
    OUTLINED_FUNCTION_6_3(v30 + v37[10]);
    OUTLINED_FUNCTION_6_3(v30 + v37[11]);
    OUTLINED_FUNCTION_6_3(v30 + v37[12]);
  }

  (*(v33 + 8))(v29, v31);
  OUTLINED_FUNCTION_33_0();
}

unint64_t sub_2693E3DF8()
{
  result = qword_28030F9B8;
  if (!qword_28030F9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F9B8);
  }

  return result;
}

unint64_t sub_2693E3E4C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_31_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28030F998, &unk_269427590);
    sub_2693E3ED4(v4);
    result = OUTLINED_FUNCTION_54();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2693E3ED4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_31_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2693E3F18(uint64_t a1)
{
  result = OUTLINED_FUNCTION_31_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28030F9A8, &qword_269426458);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void SiriTranslationModels.SiriTranslationResultModel.init(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_35_0();
  v64 = v3;
  v53 = v4;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F9A8, &qword_269426458);
  OUTLINED_FUNCTION_2();
  v60 = v5;
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_38();
  v56 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  OUTLINED_FUNCTION_2();
  v66 = v9;
  v67 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_10();
  v54 = v10 - v11;
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_39();
  v55 = v16;
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_39();
  v58 = v18;
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_50();
  v57 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F9A0, &qword_269426450);
  OUTLINED_FUNCTION_2();
  v62 = v22;
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_38();
  v61 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F9F0, &qword_269426468);
  OUTLINED_FUNCTION_2();
  v59 = v25;
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_29_0();
  v27 = sub_269422D18();
  OUTLINED_FUNCTION_2();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2_5();
  v33 = v32 - v31;
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  OUTLINED_FUNCTION_4_5();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_51();
  v65 = v35;
  v36 = v35[5];
  sub_269422D08();
  v37 = sub_269422CF8();
  v39 = v38;
  (*(v29 + 8))(v33, v27);
  v68[0] = v37;
  v68[1] = v39;
  sub_269422D98();
  __swift_project_boxed_opaque_existential_1(v64, v64[3]);
  sub_2693E3DF8();
  OUTLINED_FUNCTION_49();
  sub_269424778();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v64);
    (*(v66 + 8))(v2 + v36, v67);
  }

  else
  {
    LOBYTE(v68[0]) = 0;
    OUTLINED_FUNCTION_0_10();
    sub_2693E4938(v40);
    sub_2694245F8();
    (*(v62 + 32))(v2, v61, v21);
    LOBYTE(v68[0]) = 1;
    OUTLINED_FUNCTION_0_10();
    v42 = sub_2693E2CC8(v41);
    OUTLINED_FUNCTION_44(v42, v68);
    (*(v66 + 40))(v2 + v36, v57, v67);
    OUTLINED_FUNCTION_22_1(2);
    OUTLINED_FUNCTION_44(v43, v44);
    v45 = *(v66 + 32);
    (v45)(v65[6], v58, v67);
    LOBYTE(v68[0]) = 3;
    OUTLINED_FUNCTION_0_10();
    sub_2693E3F18(v46);
    sub_2694245F8();
    (*(v60 + 32))(v65[7], v56, v63);
    OUTLINED_FUNCTION_22_1(4);
    sub_2694245F8();
    (v45)(v65[8], v55, v67);
    OUTLINED_FUNCTION_22_1(5);
    OUTLINED_FUNCTION_5_5();
    sub_2694245F8();
    v47 = OUTLINED_FUNCTION_25_0(v65[9]);
    v45(v47);
    OUTLINED_FUNCTION_22_1(6);
    OUTLINED_FUNCTION_5_5();
    sub_2694245F8();
    v48 = OUTLINED_FUNCTION_25_0(v65[10]);
    v45(v48);
    OUTLINED_FUNCTION_22_1(7);
    OUTLINED_FUNCTION_5_5();
    sub_2694245F8();
    v49 = OUTLINED_FUNCTION_25_0(v65[11]);
    v45(v49);
    OUTLINED_FUNCTION_22_1(8);
    OUTLINED_FUNCTION_5_5();
    sub_2694245F8();
    v50 = OUTLINED_FUNCTION_30_0();
    v51(v50, v59);
    (v45)(v65[12], v54, v67);
    sub_2693E4A0C(0, v53, type metadata accessor for SiriTranslationModels.SiriTranslationResultModel);
    __swift_destroy_boxed_opaque_existential_1(v64);
    OUTLINED_FUNCTION_18_4();
    sub_2693E4A6C(0, v52);
  }

  OUTLINED_FUNCTION_33_0();
}

unint64_t sub_2693E4938(uint64_t a1)
{
  result = OUTLINED_FUNCTION_31_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28030F9A0, &qword_269426450);
    sub_2693E3E4C(&unk_28030F9C8);
    sub_2693E3E4C(&unk_28030F9D8);
    result = OUTLINED_FUNCTION_34_0();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_2693E4A0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_5();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2693E4A6C(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_5();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t _s22SiriTranslationIntents0aB6ModelsO07SnippetB4ItemV4textSSvg_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  sub_269422DB8();
  return v1;
}

uint64_t (*SiriTranslationModels.Language.name.modify())()
{
  v1 = OUTLINED_FUNCTION_12_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_11_3(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  *(v0 + 32) = OUTLINED_FUNCTION_57(v3);
  return sub_2693E9050;
}

uint64_t sub_2693E4BF0(void (*a1)(void))
{
  a1(0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  OUTLINED_FUNCTION_40(v1, v2, v3, v4, v5, v6, v7, v8, v10);
  return v11;
}

uint64_t sub_2693E4C7C()
{
  v0 = OUTLINED_FUNCTION_17_4();
  v1(v0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  return OUTLINED_FUNCTION_14_3(v2, v3, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t (*SiriTranslationModels.Language.localizedName.modify())()
{
  v1 = OUTLINED_FUNCTION_12_3();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_4(v2);
  type metadata accessor for SiriTranslationModels.Language(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  *(v0 + 32) = OUTLINED_FUNCTION_10_4(v4);
  return sub_2693E9050;
}

uint64_t sub_2693E4D38(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_269424688() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657A696C61636F6CLL && a2 == 0xED0000656D614E64)
  {

    return 1;
  }

  else
  {
    v7 = sub_269424688();

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

uint64_t sub_2693E4E10(char a1)
{
  if (a1)
  {
    return 0x657A696C61636F6CLL;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_2693E4E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2693E4D38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2693E4E7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2693E4E08();
  *a1 = result;
  return result;
}

uint64_t sub_2693E4EA4(uint64_t a1)
{
  v2 = sub_2693E510C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2693E4EE0(uint64_t a1)
{
  v2 = sub_2693E510C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static SiriTranslationModels.Language.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_269422DD8() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for SiriTranslationModels.Language(0);

  return sub_269422DD8();
}

uint64_t SiriTranslationModels.Language.encode(to:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FA08, &qword_269426470);
  OUTLINED_FUNCTION_2();
  v4 = v3;
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_20_3();
  sub_2693E510C();
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_32_0();
  sub_269424788();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  OUTLINED_FUNCTION_1_6();
  sub_2693E2CC8(v6);
  OUTLINED_FUNCTION_27_0();
  sub_269424648();
  if (!v0)
  {
    type metadata accessor for SiriTranslationModels.Language(0);
    OUTLINED_FUNCTION_27_0();
    sub_269424648();
  }

  return (*(v4 + 8))(v1, v2);
}

unint64_t sub_2693E510C()
{
  result = qword_28030FA10;
  if (!qword_28030FA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FA10);
  }

  return result;
}

uint64_t SiriTranslationModels.Language.hash(into:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  sub_2693E51D8();
  sub_2694240C8();
  type metadata accessor for SiriTranslationModels.Language(0);
  return sub_2694240C8();
}

unint64_t sub_2693E51D8()
{
  result = qword_28030FA18;
  if (!qword_28030FA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28030F940, &unk_269426420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FA18);
  }

  return result;
}

uint64_t SiriTranslationModels.Language.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_56(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  sub_2693E51D8();
  sub_2694240C8();
  type metadata accessor for SiriTranslationModels.Language(0);
  sub_2694240C8();
  return sub_269424758();
}

void SiriTranslationModels.Language.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_35_0();
  v25 = v24;
  v53 = v26;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  OUTLINED_FUNCTION_2();
  v55 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_10();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_50();
  v57 = v33;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FA20, &qword_269426478);
  OUTLINED_FUNCTION_2();
  v54 = v34;
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x28223BE20](v35);
  v37 = v50 - v36;
  v38 = type metadata accessor for SiriTranslationModels.Language(0);
  OUTLINED_FUNCTION_4_5();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_2_5();
  v42 = v41 - v40;
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_2693E510C();
  sub_269424778();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    v51 = v38;
    v52 = v42;
    v44 = v54;
    v43 = v55;
    OUTLINED_FUNCTION_0_10();
    v46 = sub_2693E2CC8(v45);
    v47 = v56;
    sub_2694245F8();
    v50[1] = v46;
    v48 = v57;
    v57 = *(v43 + 32);
    v57(v52, v48, v58);
    sub_2694245F8();
    (*(v44 + 8))(v37, v47);
    v49 = v52;
    v57(v52 + *(v51 + 20), v31, v58);
    sub_2693E4A0C(v49, v53, type metadata accessor for SiriTranslationModels.Language);
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_2693E4A6C(v49, type metadata accessor for SiriTranslationModels.Language);
  }

  OUTLINED_FUNCTION_33_0();
}

uint64_t sub_2693E564C(uint64_t a1)
{
  sub_269424738();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  sub_2693E51D8();
  sub_2694240C8();
  sub_2694240C8();
  return sub_269424758();
}

uint64_t sub_2693E5748(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_269422DB8();
  return v3;
}

uint64_t (*SiriTranslationModels.SiriTranslationDisambiguationModel.languages.modify())()
{
  v1 = OUTLINED_FUNCTION_12_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_11_3(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FA30, &qword_269426488);
  *(v0 + 32) = OUTLINED_FUNCTION_57(v3);
  return sub_2693E9050;
}

uint64_t (*SiriTranslationModels.SiriTranslationDisambiguationModel.prompt.modify())()
{
  v1 = OUTLINED_FUNCTION_12_3();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_4(v2);
  type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  *(v0 + 32) = OUTLINED_FUNCTION_10_4(v4);
  return sub_2693E9050;
}

uint64_t sub_2693E5900(void (*a1)(void))
{
  a1(0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  OUTLINED_FUNCTION_40(v1, v2, v3, v4, v5, v6, v7, v8, v10);
  return v11;
}

uint64_t sub_2693E596C()
{
  v0 = OUTLINED_FUNCTION_17_4();
  v1(v0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  return OUTLINED_FUNCTION_14_3(v2, v3, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t (*SiriTranslationModels.SiriTranslationDisambiguationModel.phrase.modify())()
{
  v1 = OUTLINED_FUNCTION_12_3();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_4(v2);
  type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  *(v0 + 32) = OUTLINED_FUNCTION_10_4(v4);
  return sub_2693E9050;
}

void sub_2693E5A28(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_2693E5A74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65676175676E616CLL && a2 == 0xE900000000000073;
  if (v4 || (sub_269424688() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
    if (v6 || (sub_269424688() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x657361726870 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_269424688();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_2693E5B8C(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_56(a1);
  MEMORY[0x26D63C2F0](v1);
  return sub_269424758();
}

uint64_t sub_2693E5BCC(char a1)
{
  if (!a1)
  {
    return 0x65676175676E616CLL;
  }

  if (a1 == 1)
  {
    return 0x74706D6F7270;
  }

  return 0x657361726870;
}

uint64_t sub_2693E5C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2693E5A74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2693E5C50(uint64_t a1)
{
  v2 = sub_2693E5E6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2693E5C8C(uint64_t a1)
{
  v2 = sub_2693E5E6C();

  return MEMORY[0x2821FE720](a1, v2);
}

void SiriTranslationModels.SiriTranslationDisambiguationModel.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_35_0();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FA38, &qword_269426490);
  OUTLINED_FUNCTION_2();
  v29 = v28;
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_20_3();
  sub_2693E5E6C();
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_32_0();
  sub_269424788();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FA30, &qword_269426488);
  OUTLINED_FUNCTION_1_6();
  sub_2693E5EC0(v31);
  sub_269424648();
  if (!v25)
  {
    v32 = type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(0);
    OUTLINED_FUNCTION_43();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
    OUTLINED_FUNCTION_1_6();
    sub_2693E2CC8(v33);
    OUTLINED_FUNCTION_47(v24 + v26);
    OUTLINED_FUNCTION_47(v24 + *(v32 + 24));
  }

  (*(v29 + 8))(v26, v27);
  OUTLINED_FUNCTION_33_0();
}

unint64_t sub_2693E5E6C()
{
  result = qword_28030FA40;
  if (!qword_28030FA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FA40);
  }

  return result;
}

unint64_t sub_2693E5EC0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_31_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28030FA30, &qword_269426488);
    sub_2693E5F94(&unk_28030FA50);
    sub_2693E5F94(&unk_28030FA60);
    result = OUTLINED_FUNCTION_34_0();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2693E5F94(uint64_t a1)
{
  result = OUTLINED_FUNCTION_31_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28030FA28, &qword_269426480);
    sub_2693E3ED4(v4);
    result = OUTLINED_FUNCTION_54();
    atomic_store(result, v1);
  }

  return result;
}

void SiriTranslationModels.SiriTranslationDisambiguationModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_35_0();
  v26 = v25;
  v62 = v27;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  OUTLINED_FUNCTION_2();
  v64 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_10();
  v63 = (v30 - v31);
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v32);
  v34 = &v57 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FA30, &qword_269426488);
  OUTLINED_FUNCTION_2();
  v65 = v36;
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_38();
  v67 = v38;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FA70, &qword_269426498);
  OUTLINED_FUNCTION_2();
  v66 = v39;
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x28223BE20](v40);
  v41 = type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(0);
  OUTLINED_FUNCTION_4_5();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_2_5();
  v45 = v44 - v43;
  v46 = v26[3];
  v70 = v26;
  __swift_project_boxed_opaque_existential_1(v26, v46);
  sub_2693E5E6C();
  sub_269424778();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v70);
  }

  else
  {
    v60 = v41;
    v61 = v45;
    v47 = v68;
    OUTLINED_FUNCTION_0_10();
    sub_2693E5EC0(v48);
    v49 = v67;
    sub_2694245F8();
    (*(v65 + 32))(v61, v49, v35);
    OUTLINED_FUNCTION_0_10();
    v67 = sub_2693E2CC8(v50);
    sub_2694245F8();
    v51 = v61 + *(v60 + 20);
    v58 = *(v64 + 32);
    v59 = v35;
    v58(v51, v34, v47);
    v52 = v63;
    sub_2694245F8();
    v53 = OUTLINED_FUNCTION_28_0();
    v54(v53);
    v55 = v61;
    v58(v61 + *(v60 + 24), v52, v47);
    sub_2693E4A0C(v55, v62, type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel);
    __swift_destroy_boxed_opaque_existential_1(v70);
    OUTLINED_FUNCTION_16_4();
    sub_2693E4A6C(v55, v56);
  }

  OUTLINED_FUNCTION_33_0();
}

uint64_t sub_2693E6478(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x8000000269429A20 == a2;
  if (v3 || (sub_269424688() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000269429A40 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_269424688();

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

uint64_t sub_2693E6584(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_56(a1);
  MEMORY[0x26D63C2F0](v1 & 1);
  return sub_269424758();
}

unint64_t sub_2693E65C4(char a1)
{
  if (a1)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_2693E6608(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_269424688();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2693E66A0(uint64_t a1)
{
  OUTLINED_FUNCTION_56(a1);
  MEMORY[0x26D63C2F0](0);
  return sub_269424758();
}

uint64_t sub_2693E6744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2693E6478(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2693E676C(uint64_t a1)
{
  v2 = sub_2693E6E1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2693E67A8(uint64_t a1)
{
  v2 = sub_2693E6E1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2693E6808@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2693CC2D4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2693E6834(uint64_t a1)
{
  v2 = sub_2693E6E70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2693E6870(uint64_t a1)
{
  v2 = sub_2693E6E70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2693E68CC(uint64_t a1)
{
  sub_269424738();
  MEMORY[0x26D63C2F0](0);
  return sub_269424758();
}

uint64_t sub_2693E690C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2693E6608(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2693E6938(uint64_t a1)
{
  v2 = sub_2693E6F24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2693E6974(uint64_t a1)
{
  v2 = sub_2693E6F24();

  return MEMORY[0x2821FE720](a1, v2);
}

void SiriTranslationModels.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_35_0();
  v69 = v25;
  v67 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FA80, &qword_2694264A0);
  OUTLINED_FUNCTION_2();
  v65 = v28;
  v66 = v27;
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_38();
  v64 = v30;
  v62 = type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(0);
  OUTLINED_FUNCTION_4_5();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_5();
  v63 = v33 - v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FA88, &qword_2694264A8);
  OUTLINED_FUNCTION_2();
  v60 = v35;
  v61 = v34;
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x28223BE20](v36);
  v37 = OUTLINED_FUNCTION_52();
  v59[1] = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v37);
  OUTLINED_FUNCTION_4_5();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_2_5();
  v41 = v40 - v39;
  type metadata accessor for SiriTranslationModels(0);
  OUTLINED_FUNCTION_4_5();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_51();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FA90, &qword_2694264B0);
  OUTLINED_FUNCTION_2();
  v44 = v43;
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x28223BE20](v45);
  v47 = v59 - v46;
  OUTLINED_FUNCTION_20_3();
  sub_2693E6E1C();
  sub_269424788();
  sub_2693E4A0C(v67, v26, type metadata accessor for SiriTranslationModels);
  v48 = (v44 + 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v49 = v63;
    sub_2693E6EC4(v26, v63, type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel);
    sub_2693E6E70();
    v50 = v64;
    v51 = v68;
    sub_269424618();
    OUTLINED_FUNCTION_15_4();
    sub_2693E3ED4(v52);
    v53 = v66;
    sub_269424648();
    (*(v65 + 8))(v50, v53);
    OUTLINED_FUNCTION_16_4();
    sub_2693E4A6C(v49, v54);
    (*v48)(v47, v51);
  }

  else
  {
    sub_2693E6EC4(v26, v41, type metadata accessor for SiriTranslationModels.SiriTranslationResultModel);
    sub_2693E6F24();
    v55 = v68;
    sub_269424618();
    OUTLINED_FUNCTION_19_3();
    sub_2693E3ED4(v56);
    v57 = v61;
    sub_269424648();
    (*(v60 + 8))(v23, v57);
    OUTLINED_FUNCTION_18_4();
    sub_2693E4A6C(v41, v58);
    (*v48)(v47, v55);
  }

  OUTLINED_FUNCTION_33_0();
}

unint64_t sub_2693E6E1C()
{
  result = qword_28030FA98;
  if (!qword_28030FA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FA98);
  }

  return result;
}

unint64_t sub_2693E6E70()
{
  result = qword_28030FAA0;
  if (!qword_28030FAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FAA0);
  }

  return result;
}

uint64_t sub_2693E6EC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_5();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_2693E6F24()
{
  result = qword_28030FAB0;
  if (!qword_28030FAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FAB0);
  }

  return result;
}

void SiriTranslationModels.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_35_0();
  a23 = v26;
  a24 = v27;
  v105 = v24;
  v29 = v28;
  v96 = v30;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FAC0, &qword_2694264B8);
  OUTLINED_FUNCTION_2();
  v99 = v31;
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_38();
  v101 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FAC8, &qword_2694264C0);
  OUTLINED_FUNCTION_2();
  v97 = v35;
  v98 = v34;
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_38();
  v100 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FAD0, &qword_2694264C8);
  OUTLINED_FUNCTION_2();
  v102 = v39;
  v103 = v38;
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_29_0();
  v41 = type metadata accessor for SiriTranslationModels(0);
  OUTLINED_FUNCTION_4_5();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_10();
  v45 = v43 - v44;
  v47 = MEMORY[0x28223BE20](v46);
  v49 = &v92 - v48;
  MEMORY[0x28223BE20](v47);
  v51 = &v92 - v50;
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  sub_2693E6E1C();
  OUTLINED_FUNCTION_49();
  v52 = v105;
  sub_269424778();
  if (v52)
  {
    goto LABEL_8;
  }

  v92 = v45;
  v93 = v49;
  v53 = v103;
  v94 = v51;
  v95 = v41;
  v105 = v29;
  v54 = sub_269424608();
  v58 = sub_2693E75BC(v54, 0);
  if (v56 == v57 >> 1)
  {
LABEL_7:
    v73 = v95;
    v74 = sub_2694244D8();
    swift_allocError();
    v76 = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FAD8, &qword_2694264D0);
    *v76 = v73;
    sub_2694245C8();
    sub_2694244C8();
    (*(*(v74 - 8) + 104))(v76, *MEMORY[0x277D84160], v74);
    swift_willThrow();
    swift_unknownObjectRelease();
    v77 = OUTLINED_FUNCTION_23_1();
    v78(v77, v53);
    v29 = v105;
LABEL_8:
    v79 = v29;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v79);
    OUTLINED_FUNCTION_33_0();
    return;
  }

  if (v56 < (v57 >> 1))
  {
    a10 = *(v55 + v56);
    sub_2693E7604(v56 + 1, v57 >> 1, v58, v55, v56, v57);
    v60 = v59;
    v62 = v61;
    swift_unknownObjectRelease();
    if (v60 == v62 >> 1)
    {
      v63 = v53;
      if (a10)
      {
        a14 = 1;
        sub_2693E6E70();
        OUTLINED_FUNCTION_48(&type metadata for SiriTranslationModels.DisambiguationResultViewCodingKeys, &a14);
        v64 = v94;
        v65 = type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(0);
        OUTLINED_FUNCTION_15_4();
        v67 = sub_2693E3ED4(v66);
        v68 = v92;
        OUTLINED_FUNCTION_53(v65, v69, v70, v71, v67);
        v72 = v102;
        swift_unknownObjectRelease();
        v86 = OUTLINED_FUNCTION_24_0();
        v87(v86);
        (*(v72 + 8))(v25, v63);
      }

      else
      {
        a13 = 0;
        sub_2693E6F24();
        OUTLINED_FUNCTION_48(&type metadata for SiriTranslationModels.TranslationResultViewCodingKeys, &a13);
        v64 = v94;
        v80 = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
        OUTLINED_FUNCTION_19_3();
        v82 = sub_2693E3ED4(v81);
        v68 = v93;
        OUTLINED_FUNCTION_53(v80, v83, v84, v85, v82);
        swift_unknownObjectRelease();
        v88 = OUTLINED_FUNCTION_24_0();
        v89(v88);
        v90 = OUTLINED_FUNCTION_23_1();
        v91(v90, v63);
      }

      swift_storeEnumTagMultiPayload();
      sub_2693E6EC4(v68, v64, type metadata accessor for SiriTranslationModels);
      sub_2693E6EC4(v64, v96, type metadata accessor for SiriTranslationModels);
      v79 = v105;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_2693E75BC(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_2693E7604(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_2693E788C(uint64_t a1)
{
  result = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2693E7970(uint64_t a1)
{
  sub_2693E7D4C(319, &qword_28030FB28, MEMORY[0x277D837D0]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2693E815C(319, &qword_28030FB30, &qword_280310140, &qword_269427110);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

uint64_t sub_2693E7A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_37_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F9A0, &qword_269426450);
  OUTLINED_FUNCTION_36_0();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
    OUTLINED_FUNCTION_36_0();
    if (*(v11 + 84) == v3)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F9A8, &qword_269426458);
      v12 = *(a3 + 28);
    }

    v9 = v4 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

uint64_t sub_2693E7B54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_37_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F9A0, &qword_269426450);
  OUTLINED_FUNCTION_36_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
    OUTLINED_FUNCTION_36_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F9A8, &qword_269426458);
      v14 = *(a4 + 28);
    }

    v11 = v5 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_2693E7C54(uint64_t a1)
{
  sub_2693E815C(319, &qword_28030FB48, &qword_28030F998, &unk_269427590);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2693E7D4C(319, &qword_28030FB28, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2693E7D4C(319, &qword_28030FB50, MEMORY[0x277D839B0]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

void sub_2693E7D4C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_269422DE8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2693E7DAC()
{
  OUTLINED_FUNCTION_37_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_2693E7E10()
{
  OUTLINED_FUNCTION_37_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

void sub_2693E7E64(uint64_t a1)
{
  sub_2693E7D4C(319, &qword_28030FB28, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  OUTLINED_FUNCTION_37_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_36_0();
  if (*(v15 + 84) == v7)
  {
    v16 = v14;
    v17 = v8;
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
    v17 = v8 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v17, v7, v16);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  OUTLINED_FUNCTION_37_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  OUTLINED_FUNCTION_36_0();
  if (*(v17 + 84) == a3)
  {
    v18 = v16;
    v19 = v9;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    v19 = v9 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v19, v8, v8, v18);
}

void sub_2693E80B0(uint64_t a1)
{
  sub_2693E815C(319, &qword_28030FB78, &qword_28030FA28, &qword_269426480);
  if (v1 <= 0x3F)
  {
    sub_2693E7D4C(319, &qword_28030FB28, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2693E815C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_269422DE8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2693E81F4(unsigned __int8 *a1, int a2)
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

  return OUTLINED_FUNCTION_46(a1);
}

_BYTE *sub_2693E8240(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2693E82DCLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SiriTranslationModels.SiriTranslationDisambiguationModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2693E83E0);
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

uint64_t getEnumTagSinglePayload for TranslationNLIntent.TranslationPhraseReference(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_2693E84A0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2693E856CLL);
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

uint64_t getEnumTagSinglePayload for SiriTranslationModels.SiriTranslationResultModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for SiriTranslationModels.SiriTranslationResultModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2693E86F8);
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

uint64_t getEnumTagSinglePayload for SiriTranslationModels.SnippetTranslationItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SiriTranslationModels.SnippetTranslationItem.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2693E8884);
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

unint64_t sub_2693E88C0()
{
  result = qword_28030FB80;
  if (!qword_28030FB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FB80);
  }

  return result;
}

unint64_t sub_2693E8918()
{
  result = qword_28030FB88;
  if (!qword_28030FB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FB88);
  }

  return result;
}

unint64_t sub_2693E8970()
{
  result = qword_28030FB90;
  if (!qword_28030FB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FB90);
  }

  return result;
}

unint64_t sub_2693E89C8()
{
  result = qword_28030FB98;
  if (!qword_28030FB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FB98);
  }

  return result;
}

unint64_t sub_2693E8A20()
{
  result = qword_28030FBA0;
  if (!qword_28030FBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FBA0);
  }

  return result;
}

unint64_t sub_2693E8A78()
{
  result = qword_28030FBA8;
  if (!qword_28030FBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FBA8);
  }

  return result;
}

unint64_t sub_2693E8AD0()
{
  result = qword_28030FBB0;
  if (!qword_28030FBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FBB0);
  }

  return result;
}

unint64_t sub_2693E8B28()
{
  result = qword_28030FBB8;
  if (!qword_28030FBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FBB8);
  }

  return result;
}

unint64_t sub_2693E8B80()
{
  result = qword_28030FBC0;
  if (!qword_28030FBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FBC0);
  }

  return result;
}

unint64_t sub_2693E8BD8()
{
  result = qword_28030FBC8;
  if (!qword_28030FBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FBC8);
  }

  return result;
}

unint64_t sub_2693E8C30()
{
  result = qword_28030FBD0;
  if (!qword_28030FBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FBD0);
  }

  return result;
}

unint64_t sub_2693E8C88()
{
  result = qword_28030FBD8;
  if (!qword_28030FBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FBD8);
  }

  return result;
}

unint64_t sub_2693E8CE0()
{
  result = qword_28030FBE0;
  if (!qword_28030FBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FBE0);
  }

  return result;
}

unint64_t sub_2693E8D38()
{
  result = qword_28030FBE8;
  if (!qword_28030FBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FBE8);
  }

  return result;
}

unint64_t sub_2693E8D90()
{
  result = qword_28030FBF0;
  if (!qword_28030FBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FBF0);
  }

  return result;
}

unint64_t sub_2693E8DE8()
{
  result = qword_28030FBF8;
  if (!qword_28030FBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FBF8);
  }

  return result;
}

unint64_t sub_2693E8E40()
{
  result = qword_28030FC00;
  if (!qword_28030FC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FC00);
  }

  return result;
}

unint64_t sub_2693E8E98()
{
  result = qword_28030FC08;
  if (!qword_28030FC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FC08);
  }

  return result;
}

unint64_t sub_2693E8EF0()
{
  result = qword_28030FC10;
  if (!qword_28030FC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FC10);
  }

  return result;
}

unint64_t sub_2693E8F48()
{
  result = qword_28030FC18;
  if (!qword_28030FC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FC18);
  }

  return result;
}

unint64_t sub_2693E8FA0()
{
  result = qword_28030FC20;
  if (!qword_28030FC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FC20);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_3(uint64_t a1)
{

  return sub_269424648();
}

uint64_t OUTLINED_FUNCTION_10_4(uint64_t a1)
{

  return MEMORY[0x2821CB228](v1, a1);
}

uint64_t OUTLINED_FUNCTION_14_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_269422DC8();
}

uint64_t OUTLINED_FUNCTION_26_0(uint64_t a1)
{

  return sub_269424648();
}

uint64_t OUTLINED_FUNCTION_34_0()
{

  return swift_getWitnessTable();
}

void *OUTLINED_FUNCTION_40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_269422DB8();
}

uint64_t OUTLINED_FUNCTION_44(uint64_t a1, uint64_t a2)
{

  return sub_2694245F8();
}

uint64_t OUTLINED_FUNCTION_47(uint64_t a1)
{

  return sub_269424648();
}

uint64_t OUTLINED_FUNCTION_48(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FD968](a1, a2, v2, a1);
}

uint64_t OUTLINED_FUNCTION_53(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_2694245F8();
}

uint64_t OUTLINED_FUNCTION_54()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_55(uint64_t a1)
{

  return sub_269424648();
}

void *OUTLINED_FUNCTION_56(uint64_t a1, ...)
{

  return sub_269424738();
}

uint64_t OUTLINED_FUNCTION_57(uint64_t a1)
{

  return MEMORY[0x2821CB228](v1, a1);
}

uint64_t sub_2693E94EC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SiriTranslationIntents9SpeakFlow_log;
  if (qword_28030F0B0 != -1)
  {
    swift_once();
  }

  v4 = sub_269423FC8();
  v5 = __swift_project_value_buffer(v4, qword_280314ED0);
  (*(*(v4 - 8) + 16))(v1 + v3, v5, v4);
  *(v1 + OBJC_IVAR____TtC22SiriTranslationIntents9SpeakFlow_speakAction) = 0;
  *(v1 + OBJC_IVAR____TtC22SiriTranslationIntents9SpeakFlow_stopSpeakAction) = 0;
  *(v1 + OBJC_IVAR____TtC22SiriTranslationIntents9SpeakFlow_translationApiClient) = a1;
  return v1;
}

uint64_t sub_2693E95C0(_DWORD *a1)
{
  v3 = v2;
  v152 = a1;
  v149 = sub_269423418();
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_269423448();
  OUTLINED_FUNCTION_2();
  v151 = v9;
  MEMORY[0x28223BE20](v10);
  v144 = &v138 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_39();
  v145 = v13;
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_39();
  v146 = v15;
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_39();
  v148 = v17;
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v18);
  v20 = &v138 - v19;
  v21 = sub_269423458();
  OUTLINED_FUNCTION_2();
  v23 = v22;
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v138 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_39();
  v150 = v28;
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v29);
  v155 = &v138 - v30;
  v31 = sub_269423FA8();
  v32 = sub_269424368();
  v33 = OUTLINED_FUNCTION_15_0(v32);
  v153 = v23;
  if (v33)
  {
    v34 = OUTLINED_FUNCTION_12_0();
    *v34 = 0;
    _os_log_impl(&dword_2693C9000, v31, v1, "On input.", v34, 2u);
    v23 = v153;
    OUTLINED_FUNCTION_6_0();
  }

  v35 = v155;
  v36 = v152;
  sub_269423408();
  if ((*(v23 + 88))(v35, v21) != *MEMORY[0x277D5C150])
  {
    goto LABEL_15;
  }

  v140 = v5;
  v147 = v3;
  v37 = v150;
  (*(v23 + 16))(v150, v35, v21);
  v38 = *(v23 + 96);
  v143 = v21;
  v38(v37, v21);
  v141 = *(v151 + 16);
  v142 = v151 + 16;
  v141(v20, v37, v154);
  v39 = sub_269423428();
  v41 = v40;
  v157 = 0xD00000000000002BLL;
  v158 = 0x80000002694296D0;
  MEMORY[0x26D63BD80](46, 0xE100000000000000);
  MEMORY[0x26D63BD80](0x7463416B61657053, 0xEB000000006E6F69);
  if (v39 == v157 && v41 == v158)
  {
  }

  else
  {
    v43 = sub_269424688();

    if ((v43 & 1) == 0)
    {
      v44 = v151;
      v45 = *(v151 + 8);
      v46 = v154;
      v146 = v151 + 8;
      v139 = v45;
      v45(v20, v154);
      (*(v44 + 32))(v145, v150, v46);
      v47 = sub_269423428();
      v49 = v48;
      v157 = 0xD00000000000002BLL;
      v158 = 0x80000002694296D0;
      MEMORY[0x26D63BD80](46, 0xE100000000000000);
      MEMORY[0x26D63BD80](0x61657053706F7453, 0xEF6E6F697463416BLL);
      if (v47 == v157 && v49 == v158)
      {

        v52 = v148;
      }

      else
      {
        v51 = sub_269424688();

        v52 = v148;
        if ((v51 & 1) == 0)
        {
          v139(v145, v154);
          v21 = v143;
          v36 = v152;
          v5 = v140;
LABEL_15:
          v53 = *(v5 + 16);
          v54 = v8;
          v55 = v8;
          v56 = v5;
          v57 = v149;
          v53(v54, v36, v149);
          v58 = sub_269423FA8();
          v59 = sub_269424378();
          if (os_log_type_enabled(v58, v59))
          {
            v60 = v57;
            v61 = OUTLINED_FUNCTION_17_0();
            v62 = OUTLINED_FUNCTION_16_0();
            v157 = v62;
            *v61 = 136315138;
            sub_269423408();
            v63 = sub_269424128();
            v65 = v64;
            (*(v56 + 8))(v55, v60);
            v66 = sub_2693DB6E0(v63, v65, &v157);

            *(v61 + 4) = v66;
            _os_log_impl(&dword_2693C9000, v58, v59, "Parse is of unexpected type: %s", v61, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v62);
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_6_0();
          }

          else
          {

            (*(v56 + 8))(v55, v57);
          }

          v67 = 0;
LABEL_19:
          v68 = v153;
          goto LABEL_32;
        }
      }

      v102 = sub_269423FA8();
      v103 = sub_269424368();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = OUTLINED_FUNCTION_12_0();
        OUTLINED_FUNCTION_20_0(v104);
        _os_log_impl(&dword_2693C9000, v102, v103, "Parse is StopSpeakAction DI.", v27, 2u);
        OUTLINED_FUNCTION_4_1();
      }

      v105 = v145;
      v106 = v154;
      v107 = v141;
      v141(v52, v145, v154);
      v108 = sub_2693EA8EC(v52);
      v109 = v144;
      if (v108)
      {
        v110 = v108;
        *(v147 + OBJC_IVAR____TtC22SiriTranslationIntents9SpeakFlow_stopSpeakAction) = v108;
        swift_retain_n();

        v111 = sub_269423FA8();
        v112 = sub_269424368();

        if (os_log_type_enabled(v111, v112))
        {
          v113 = v105;
          v114 = OUTLINED_FUNCTION_17_0();
          v115 = v106;
          v116 = OUTLINED_FUNCTION_16_0();
          v156 = v110;
          v157 = v116;
          *v114 = 136315138;
          type metadata accessor for StopSpeakAction();

          v117 = sub_269424128();
          v119 = sub_2693DB6E0(v117, v118, &v157);

          *(v114 + 4) = v119;
          _os_log_impl(&dword_2693C9000, v111, v112, "Got StopSpeakAction %s", v114, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v116);
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_6_0();

          v120 = v113;
          v121 = v115;
        }

        else
        {

          v120 = v105;
          v121 = v106;
        }

        v139(v120, v121);
        v67 = 1;
      }

      else
      {
        v107(v144, v105, v106);
        v122 = v107;
        v123 = sub_269423FA8();
        v124 = sub_269424378();
        if (os_log_type_enabled(v123, v124))
        {
          v125 = OUTLINED_FUNCTION_17_0();
          v126 = OUTLINED_FUNCTION_16_0();
          v127 = v122;
          v128 = v105;
          v129 = v126;
          v157 = v126;
          *v125 = 136315138;
          v127(v52, v109, v106);
          OUTLINED_FUNCTION_24_1();
          v130 = v106;
          v131 = sub_269424128();
          v132 = v109;
          v134 = v133;
          v135 = v139;
          v139(v132, v130);
          v136 = sub_2693DB6E0(v131, v134, &v157);

          *(v125 + 4) = v136;
          _os_log_impl(&dword_2693C9000, v123, v124, "DI object isn't a StopSpeakAction: %s", v125, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v129);
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_6_0();

          v135(v128, v130);
        }

        else
        {

          v137 = v139;
          v139(v109, v106);
          v137(v105, v106);
        }

        v67 = 0;
      }

      v21 = v143;
      goto LABEL_19;
    }
  }

  v69 = sub_269423FA8();
  v70 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v70))
  {
    v71 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v71);
    OUTLINED_FUNCTION_3_5(&dword_2693C9000, v72, v73, "Parse is SpeakAction DI.");
    OUTLINED_FUNCTION_4_1();
  }

  v74 = v148;
  v75 = v154;
  v76 = v141;
  v141(v148, v20, v154);
  v77 = sub_2693EA5C4(v74);
  v68 = v153;
  v78 = v146;
  if (v77)
  {
    v79 = v77;
    *(v147 + OBJC_IVAR____TtC22SiriTranslationIntents9SpeakFlow_speakAction) = v77;
    swift_retain_n();

    v80 = sub_269423FA8();
    v81 = sub_269424368();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = OUTLINED_FUNCTION_17_0();
      v83 = OUTLINED_FUNCTION_16_0();
      v156 = v79;
      v157 = v83;
      *v82 = 136315138;
      type metadata accessor for SpeakAction();

      v84 = sub_269424128();
      v86 = sub_2693DB6E0(v84, v85, &v157);

      *(v82 + 4) = v86;
      _os_log_impl(&dword_2693C9000, v80, v81, "Got SpeakAction %s", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v83);
      v75 = v154;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
    }

    v99 = *(v151 + 8);
    v100 = OUTLINED_FUNCTION_24_1();
    v99(v100);
    v21 = v143;
    (v99)(v150, v75);
    v67 = 1;
  }

  else
  {
    v76(v146, v20, v75);
    v87 = v76;
    v88 = sub_269423FA8();
    v89 = sub_269424378();
    if (OUTLINED_FUNCTION_12_4(v89))
    {
      v90 = OUTLINED_FUNCTION_17_0();
      v152 = v90;
      v91 = OUTLINED_FUNCTION_16_0();
      v157 = v91;
      *v90 = 136315138;
      v87(v74, v78, v154);
      v92 = sub_269424128();
      LODWORD(v149) = v89;
      v94 = v93;
      v95 = *(v151 + 8);
      v95(v78, v154);
      v96 = sub_2693DB6E0(v92, v94, &v157);

      v97 = v152;
      *(v152 + 1) = v96;
      _os_log_impl(&dword_2693C9000, v88, v149, "DI object isn't a SpeakAction: %s", v97, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v91);
      v75 = v154;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {

      v95 = *(v151 + 8);
      v95(v78, v75);
    }

    v98 = OUTLINED_FUNCTION_24_1();
    (v95)(v98);
    v95(v150, v75);
    v67 = 0;
    v21 = v143;
  }

LABEL_32:
  (*(v68 + 8))(v155, v21);
  return v67;
}

id sub_2693EA2B0(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = sub_269423428();
  v4 = v3;
  type metadata accessor for TranslateAction();
  v19 = 0xD00000000000002BLL;
  v20 = 0x80000002694296D0;
  MEMORY[0x26D63BD80](46, 0xE100000000000000);
  MEMORY[0x26D63BD80](0x74616C736E617254, 0xEF6E6F6974634165);
  if (v2 == 0xD00000000000002BLL && v4 == v20)
  {
  }

  else
  {
    v6 = sub_269424688();

    if ((v6 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  if (!sub_269423438())
  {
    sub_2694240B8();
  }

  v7 = objc_opt_self();
  v8 = sub_269424098();

  v19 = 0;
  v9 = [v7 dataWithJSONObject:v8 options:0 error:&v19];

  v10 = v19;
  if (v9)
  {
    v11 = sub_269422CB8();
    v13 = v12;

    sub_269422B78();
    swift_allocObject();
    sub_269422B68();
    sub_2693ED1B4(&qword_28030FC60, type metadata accessor for TranslateAction, &unk_2694282D8);
    sub_269422B58();
    sub_269423448();
    OUTLINED_FUNCTION_8_3();
    (*(v17 + 8))(a1);

    sub_2693D6C54(v11, v13);
    return v19;
  }

  v14 = v10;
  v15 = sub_269422C48();

  swift_willThrow();
LABEL_13:
  sub_269423448();
  OUTLINED_FUNCTION_8_3();
  (*(v16 + 8))(a1);
  return 0;
}

id sub_2693EA5C4(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = sub_269423428();
  v4 = v3;
  type metadata accessor for SpeakAction();
  v19 = 0xD00000000000002BLL;
  v20 = 0x80000002694296D0;
  MEMORY[0x26D63BD80](46, 0xE100000000000000);
  MEMORY[0x26D63BD80](0x7463416B61657053, 0xEB000000006E6F69);
  if (v2 == 0xD00000000000002BLL && v4 == v20)
  {
  }

  else
  {
    v6 = sub_269424688();

    if ((v6 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  if (!sub_269423438())
  {
    sub_2694240B8();
  }

  v7 = objc_opt_self();
  v8 = sub_269424098();

  v19 = 0;
  v9 = [v7 dataWithJSONObject:v8 options:0 error:&v19];

  v10 = v19;
  if (v9)
  {
    v11 = sub_269422CB8();
    v13 = v12;

    sub_269422B78();
    swift_allocObject();
    sub_269422B68();
    sub_2693ED1B4(&qword_28030F570, type metadata accessor for SpeakAction, &unk_269425444);
    sub_269422B58();
    v17 = sub_269423448();
    (*(*(v17 - 8) + 8))(a1, v17);

    sub_2693D6C54(v11, v13);
    return v19;
  }

  v14 = v10;
  v15 = sub_269422C48();

  swift_willThrow();
LABEL_13:
  v16 = sub_269423448();
  (*(*(v16 - 8) + 8))(a1, v16);
  return 0;
}

id sub_2693EA8EC(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = sub_269423428();
  v4 = v3;
  type metadata accessor for StopSpeakAction();
  v19 = 0xD00000000000002BLL;
  v20 = 0x80000002694296D0;
  MEMORY[0x26D63BD80](46, 0xE100000000000000);
  MEMORY[0x26D63BD80](0x61657053706F7453, 0xEF6E6F697463416BLL);
  if (v2 == 0xD00000000000002BLL && v4 == v20)
  {
  }

  else
  {
    v6 = sub_269424688();

    if ((v6 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  if (!sub_269423438())
  {
    sub_2694240B8();
  }

  v7 = objc_opt_self();
  v8 = sub_269424098();

  v19 = 0;
  v9 = [v7 dataWithJSONObject:v8 options:0 error:&v19];

  v10 = v19;
  if (v9)
  {
    v11 = sub_269422CB8();
    v13 = v12;

    sub_269422B78();
    swift_allocObject();
    sub_269422B68();
    sub_2693ED1B4(&qword_28030FC58, type metadata accessor for StopSpeakAction, &unk_269427338);
    sub_269422B58();
    v17 = sub_269423448();
    (*(*(v17 - 8) + 8))(a1, v17);

    sub_2693D6C54(v11, v13);
    return v19;
  }

  v14 = v10;
  v15 = sub_269422C48();

  swift_willThrow();
LABEL_13:
  v16 = sub_269423448();
  (*(*(v16 - 8) + 8))(a1, v16);
  return 0;
}

uint64_t sub_2693EAC18(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2693EAC38, 0, 0);
}

uint64_t sub_2693EAC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v47 = v10;
  v10[4] = OBJC_IVAR____TtC22SiriTranslationIntents9SpeakFlow_log;
  v11 = sub_269423FA8();
  v12 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v12))
  {
    v13 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v13);
    OUTLINED_FUNCTION_3_5(&dword_2693C9000, v14, v15, "Execute Async.");
    OUTLINED_FUNCTION_4_1();
  }

  v16 = v10[3];

  v17 = *(v16 + OBJC_IVAR____TtC22SiriTranslationIntents9SpeakFlow_speakAction);
  v10[5] = v17;
  if (v17)
  {

    v18 = sub_269423FA8();
    v19 = sub_269424368();
    if (OUTLINED_FUNCTION_12_4(v19))
    {
      v20 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v20 = 136315394;
      v21 = v17[2];
      v22 = v17[3];

      v23 = sub_2693DB6E0(v21, v22, &v46);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2080;
      v24 = v17[4];
      v25 = v17[5];

      v26 = sub_2693DB6E0(v24, v25, &v46);

      *(v20 + 14) = v26;
      _os_log_impl(&dword_2693C9000, v18, v19, "Target Language: %s. Phrase: %s", v20, 0x16u);
      OUTLINED_FUNCTION_15_5();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_4_1();
    }

    v27 = v10[3];
    v28 = swift_task_alloc();
    v10[6] = v28;
    *(v28 + 16) = v27;
    *(v28 + 24) = v17;
    v29 = swift_task_alloc();
    v10[7] = v29;
    *v29 = v10;
    v29[1] = sub_2693EB008;
    v30 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v29, 0, 0, 0x2865747563657865, 0xE900000000000029, sub_2693ECB90, v28, v30, a9, a10);
  }

  else
  {
    if (*(v10[3] + OBJC_IVAR____TtC22SiriTranslationIntents9SpeakFlow_stopSpeakAction))
    {

      v31 = sub_269423FA8();
      v32 = sub_269424368();
      if (OUTLINED_FUNCTION_12_4(v32))
      {
        *OUTLINED_FUNCTION_12_0() = 0;
        OUTLINED_FUNCTION_25_1(&dword_2693C9000, v33, v34, "Executing stop speak request.");
        OUTLINED_FUNCTION_6_0();
      }

      sub_2693D4E70();

      v35 = sub_269423FA8();
      v36 = sub_269424368();
      if (OUTLINED_FUNCTION_12_4(v36))
      {
        *OUTLINED_FUNCTION_12_0() = 0;
        OUTLINED_FUNCTION_25_1(&dword_2693C9000, v37, v38, "Speak request executed.");
        OUTLINED_FUNCTION_6_0();
      }

      sub_269423148();
    }

    else
    {
      v39 = sub_269423FA8();
      v40 = sub_269424378();
      if (OUTLINED_FUNCTION_15_0(v40))
      {
        v41 = OUTLINED_FUNCTION_12_0();
        OUTLINED_FUNCTION_20_0(v41);
        OUTLINED_FUNCTION_3_5(&dword_2693C9000, v42, v43, "All available actions are null.");
        OUTLINED_FUNCTION_4_1();
      }

      sub_269423148();
    }

    OUTLINED_FUNCTION_4_6();

    return v44();
  }
}

uint64_t sub_2693EB008()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v5 = v4;
  *(v3 + 64) = v0;

  if (v0)
  {
    v6 = sub_2693EB1C8;
  }

  else
  {

    v6 = sub_2693EB114;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2693EB114()
{
  OUTLINED_FUNCTION_23_2();
  v0 = sub_269423FA8();
  v1 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v1))
  {
    v2 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v2);
    OUTLINED_FUNCTION_3_5(&dword_2693C9000, v3, v4, "Speak request called.");
    OUTLINED_FUNCTION_4_1();
  }

  sub_269423148();

  OUTLINED_FUNCTION_4_6();

  return v5();
}

uint64_t sub_2693EB1C8()
{
  OUTLINED_FUNCTION_11_0();

  OUTLINED_FUNCTION_4_6();

  return v0();
}

uint64_t sub_2693EB22C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803101A0, &unk_269428730);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  v11 = a3[2];
  v17 = a3[3];
  v18 = v11;
  v12 = a3[5];
  v16 = a3[4];
  (*(v7 + 16))(&v16 - v9, a1, v6);
  v13 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  (*(v7 + 32))(v14 + v13, v10, v6);
  *(v14 + ((v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;

  v19 = 1;
  sub_2693D4578(v18, v17, v16, v12, 0x100000000, sub_2693ECE4C, v14);
}

void sub_2693EB3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803101A0, &unk_269428730);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FC50, &qword_2694271F0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v30 - v15;
  if (xmmword_28030FC28 == __PAIR128__(0xE000000000000000, 0) || (sub_269424688() & 1) != 0)
  {
    v17 = sub_269423FA8();
    v18 = sub_269424378();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2693C9000, v17, v18, "Visual identifier is empty or was not properly set.", v19, 2u);
      MEMORY[0x26D63C8E0](v19, -1, -1);
    }

    sub_269424318();
  }

  else
  {
    v30[0] = a1;
    v20 = sub_269424338();
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v20);
    (*(v11 + 16))(v13, a4, v10);
    v21 = (*(v11 + 80) + 48) & ~*(v11 + 80);
    v22 = swift_allocObject();
    *(v22 + 2) = 0;
    *(v22 + 3) = 0;
    *(v22 + 4) = a3;
    *(v22 + 5) = a5;
    (*(v11 + 32))(&v22[v21], v13, v10);

    sub_2693EBBE0(0, 0, v16, &unk_269427108, v22);

    v23 = sub_269423FA8();
    v24 = sub_269424368();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v30[2] = a2;
      v31 = v26;
      *v25 = 136315138;
      v30[1] = v30[0];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
      v27 = sub_269424128();
      v29 = sub_2693DB6E0(v27, v28, &v31);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_2693C9000, v23, v24, "Speak request executed. Error: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x26D63C8E0](v26, -1, -1);
      MEMORY[0x26D63C8E0](v25, -1, -1);
    }
  }
}

uint64_t sub_2693EB79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_2693EB7C0, 0, 0);
}

uint64_t sub_2693EB7C0()
{
  OUTLINED_FUNCTION_11_0();
  sub_2693EB840(*(*(v0 + 24) + 48), *(*(v0 + 24) + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803101A0, &unk_269428730);
  sub_269424318();
  OUTLINED_FUNCTION_4_6();

  return v1();
}

void sub_2693EB840(uint64_t a1, unint64_t a2)
{
  v4 = sub_269422D78();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, *MEMORY[0x277D633E0], v4);
  sub_269422D88();
  (*(v5 + 8))(v7, v4);

  v8 = sub_269422DF8();

  __swift_destroy_boxed_opaque_existential_1(v30);
  if (v8)
  {
    v9 = OBJC_IVAR____TtC22SiriTranslationIntents9SpeakFlow_log;
    v10 = v8;

    v11 = sub_269423FA8();
    v12 = sub_269424368();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v27 = a1;
      v14 = v13;
      v28 = swift_slowAlloc();
      v30[0] = v28;
      *v14 = 136315650;
      v15 = v10;
      v16 = [v15 description];
      v17 = sub_269424118();
      v29 = v9;
      v19 = v18;

      v20 = sub_2693DB6E0(v17, v19, v30);

      *(v14 + 4) = v20;
      *(v14 + 12) = 2080;
      v21 = xmmword_28030FC28;

      v22 = sub_2693DB6E0(v21, *(&v21 + 1), v30);

      *(v14 + 14) = v22;
      *(v14 + 22) = 2080;
      *(v14 + 24) = sub_2693DB6E0(v27, a2, v30);
      _os_log_impl(&dword_2693C9000, v11, v12, "Constructed command: %s with viewId %s and play button id %s", v14, 0x20u);
      v23 = v28;
      swift_arrayDestroy();
      MEMORY[0x26D63C8E0](v23, -1, -1);
      MEMORY[0x26D63C8E0](v14, -1, -1);
    }

    sub_269423018();
    __swift_project_boxed_opaque_existential_1(v30, v30[3]);
    sub_269423298();
    __swift_destroy_boxed_opaque_existential_1(v30);
    v24 = sub_269423FA8();
    v25 = sub_269424368();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2693C9000, v24, v25, "Sent off the command.", v26, 2u);
      MEMORY[0x26D63C8E0](v26, -1, -1);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2693EBBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FC50, &qword_2694271F0);
  v12 = OUTLINED_FUNCTION_12_2(v11);
  MEMORY[0x28223BE20](v12);
  v14 = v27 - v13;
  sub_2693ECAB0(a3, v27 - v13);
  v15 = sub_269424338();
  OUTLINED_FUNCTION_22_2(v15);
  if (v6 == 1)
  {
    sub_2693ECB20(v14);
  }

  else
  {
    sub_269424328();
    OUTLINED_FUNCTION_20_4();
    (*(v16 + 8))(v14, v5);
  }

  v17 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_269424308();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_269424148() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      OUTLINED_FUNCTION_15_5();
      v25 = swift_task_create();

      sub_2693ECB20(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2693ECB20(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  OUTLINED_FUNCTION_15_5();
  return swift_task_create();
}

uint64_t sub_2693EBE50(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FC50, &qword_2694271F0);
  v6 = OUTLINED_FUNCTION_12_2(v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  v9 = sub_269424338();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;

  sub_2693EC23C(0, 0, v8, &unk_2694270E8, v10);
}

uint64_t sub_2693EBF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = sub_269423158();
  v6[4] = v7;
  v6[5] = *(v7 - 8);
  v8 = swift_task_alloc();
  v6[6] = v8;
  v9 = swift_task_alloc();
  v6[7] = v9;
  *v9 = v6;
  v9[1] = sub_2693EC048;

  return sub_2693EAC18(v8);
}

uint64_t sub_2693EC048()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  v2 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  *(v4 + 64) = v0;

  if (v0)
  {
    v5 = sub_2693EC1E0;
  }

  else
  {
    v5 = sub_2693EC14C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2693EC14C()
{
  OUTLINED_FUNCTION_23_2();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  (*(v0 + 16))(v1);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_4_6();

  return v4();
}

uint64_t sub_2693EC1E0()
{
  OUTLINED_FUNCTION_11_0();

  OUTLINED_FUNCTION_4_6();

  return v0();
}

uint64_t sub_2693EC23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FC50, &qword_2694271F0);
  v11 = OUTLINED_FUNCTION_12_2(v10);
  MEMORY[0x28223BE20](v11);
  v13 = v24 - v12;
  sub_2693ECAB0(a3, v24 - v12);
  v14 = sub_269424338();
  OUTLINED_FUNCTION_22_2(v14);
  if (v6 == 1)
  {
    sub_2693ECB20(v13);
  }

  else
  {
    sub_269424328();
    OUTLINED_FUNCTION_20_4();
    (*(v15 + 8))(v13, v5);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_269424308();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_269424148() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      OUTLINED_FUNCTION_15_5();
      v22 = swift_task_create();

      sub_2693ECB20(a3);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2693ECB20(a3);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  OUTLINED_FUNCTION_15_5();
  return swift_task_create();
}

uint64_t sub_2693EC458()
{
  v1 = OBJC_IVAR____TtC22SiriTranslationIntents9SpeakFlow_log;
  sub_269423FC8();
  OUTLINED_FUNCTION_8_3();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_2693EC4DC()
{
  sub_2693EC458();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for SpeakFlow(uint64_t a1)
{
  result = qword_28030FC40;
  if (!qword_28030FC40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2693EC588(uint64_t a1)
{
  result = sub_269423FC8();
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

uint64_t sub_2693EC658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2693EC708;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_2693EC708()
{
  OUTLINED_FUNCTION_11_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_5();
  v3 = *v0;
  OUTLINED_FUNCTION_9_0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_2693EC818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2693EC8CC;

  return MEMORY[0x2821BA640](a1, a2, a3);
}

uint64_t sub_2693EC8CC()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  v1 = *v0;
  OUTLINED_FUNCTION_9_0();
  *v2 = v1;

  OUTLINED_FUNCTION_4_6();

  return v3();
}

uint64_t sub_2693EC9B0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2693EC9F8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_7_2(v5);
  *v6 = v7;
  v6[1] = sub_2693EC8CC;
  v8 = OUTLINED_FUNCTION_5_6();

  return sub_2693EBF4C(v8, v9, v1, v2, v3, v4);
}

uint64_t sub_2693ECAB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FC50, &qword_2694271F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2693ECB20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FC50, &qword_2694271F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2693ECB98(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2693ECC90;

  return v6(a1);
}

uint64_t sub_2693ECC90()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  v1 = *v0;
  OUTLINED_FUNCTION_9_0();
  *v2 = v1;

  OUTLINED_FUNCTION_4_6();

  return v3();
}

uint64_t sub_2693ECD74()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803101A0, &unk_269428730);
  OUTLINED_FUNCTION_2();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v4 | 7);
}

void sub_2693ECE4C(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803101A0, &unk_269428730) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  sub_2693EB3F0(a1, a2, v8, v2 + v6, v7);
}

uint64_t sub_2693ECF08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803101A0, &unk_269428730);
  OUTLINED_FUNCTION_2();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_2693ECFDC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803101A0, &unk_269428730);
  OUTLINED_FUNCTION_12_2(v1);
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_7_2(v5);
  *v6 = v7;
  v6[1] = sub_2693EC8CC;
  v8 = OUTLINED_FUNCTION_5_6();

  return sub_2693EB79C(v8, v9, v2, v3, v4, v10);
}

uint64_t sub_2693ED0D8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2693ED110()
{
  OUTLINED_FUNCTION_23_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_7_2(v0);
  *v1 = v2;
  v1[1] = sub_2693ED200;
  v3 = OUTLINED_FUNCTION_5_6();

  return v4(v3);
}

uint64_t sub_2693ED1B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void OUTLINED_FUNCTION_3_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

BOOL OUTLINED_FUNCTION_12_4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_22_2(uint64_t a1)
{
  __swift_getEnumTagSinglePayload(v1, 1, a1);
}

void OUTLINED_FUNCTION_25_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_2693ED31C(__int128 *a1, uint64_t a2, __int128 *a3)
{
  v7 = OBJC_IVAR____TtC22SiriTranslationIntents22SupportedLanguagesFlow_log;
  if (qword_28030F0D0 != -1)
  {
    swift_once();
  }

  v8 = sub_269423FC8();
  v9 = __swift_project_value_buffer(v8, qword_280314F30);
  (*(*(v8 - 8) + 16))(v3 + v7, v9, v8);
  *(v3 + OBJC_IVAR____TtC22SiriTranslationIntents22SupportedLanguagesFlow_templatinResultProvider) = a2;
  sub_2693DBCC8(a3, v3 + OBJC_IVAR____TtC22SiriTranslationIntents22SupportedLanguagesFlow_outputPublisher);
  sub_2693DBCC8(a1, v3 + OBJC_IVAR____TtC22SiriTranslationIntents22SupportedLanguagesFlow_deviceState);
  return v3;
}

uint64_t sub_2693ED410(uint64_t a1)
{
  v1 = sub_269423FA8();
  v2 = sub_269424368();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2693C9000, v1, v2, "On input.", v3, 2u);
    MEMORY[0x26D63C8E0](v3, -1, -1);
  }

  return 1;
}

uint64_t sub_2693ED4B0()
{
  OUTLINED_FUNCTION_11_0();
  v1[18] = v2;
  v1[19] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FC98, &qword_269427710);
  v1[20] = swift_task_alloc();
  v1[21] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FCA0, &unk_269427210);
  v1[22] = swift_task_alloc();
  v3 = sub_269423248();
  v1[23] = v3;
  v1[24] = *(v3 - 8);
  v1[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2693ED5E0, 0, 0);
}

uint64_t sub_2693ED5E0(uint64_t a1)
{
  v2 = sub_269423FA8();
  v3 = sub_269424368();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2693C9000, v2, v3, "Execute Async.", v4, 2u);
    MEMORY[0x26D63C8E0](v4, -1, -1);
  }

  v5 = *(v1 + 176);
  v6 = *(v1 + 152);

  sub_2693DBDF8(v6 + OBJC_IVAR____TtC22SiriTranslationIntents22SupportedLanguagesFlow_outputPublisher, v1 + 16);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v7);
  sub_2693F2A8C(v5);
  v9 = *(v1 + 176);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *(v1 + 136) = *v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280310180, &unk_269425CC0);
    swift_willThrowTypedImpl();
    __swift_destroy_boxed_opaque_existential_1((v1 + 16));

    OUTLINED_FUNCTION_4_6();

    return v10();
  }

  else
  {
    v13 = *(v1 + 192);
    v12 = *(v1 + 200);
    v20 = *(v1 + 184);
    v21 = v8;
    v14 = *(v1 + 152);
    v15 = *(v1 + 160);
    (*(v13 + 32))(v12, v9);
    __swift_project_boxed_opaque_existential_1((v14 + OBJC_IVAR____TtC22SiriTranslationIntents22SupportedLanguagesFlow_deviceState), *(v14 + OBJC_IVAR____TtC22SiriTranslationIntents22SupportedLanguagesFlow_deviceState + 24));
    sub_269423028();
    v16 = sub_2694231F8();
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
    v17 = sub_2694234B8();
    *(v1 + 112) = 0u;
    *(v1 + 128) = 0;
    *(v1 + 96) = 0u;
    v18 = MEMORY[0x277D5C1D8];
    *(v1 + 80) = v17;
    *(v1 + 88) = v18;
    __swift_allocate_boxed_opaque_existential_0((v1 + 56));
    sub_2694230F8();
    sub_2693EE27C(v1 + 96, &qword_280310190, qword_269427220);
    sub_2693EE27C(v15, &qword_28030FC98, &qword_269427710);
    (*(v13 + 8))(v12, v20);
    v19 = swift_task_alloc();
    *(v1 + 208) = v19;
    *v19 = v1;
    v19[1] = sub_2693ED93C;

    return MEMORY[0x2821BB5D0](v1 + 56, v7, v21);
  }
}

uint64_t sub_2693ED93C()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v5 = v4;
  *(v3 + 216) = v0;

  if (v0)
  {
    v6 = sub_2693EDAE0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v3 + 56));
    v6 = sub_2693EDA48;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2693EDA48()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_269423148();

  OUTLINED_FUNCTION_4_6();

  return v1();
}

uint64_t sub_2693EDAE0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_4_6();

  return v1();
}

uint64_t sub_2693EDB74(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FC50, &qword_2694271F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_269424338();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;

  sub_2693EC23C(0, 0, v7, &unk_269427200, v9);
}

uint64_t sub_2693EDC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = sub_269423158();
  v6[4] = v7;
  v6[5] = *(v7 - 8);
  v6[6] = swift_task_alloc();
  v8 = swift_task_alloc();
  v6[7] = v8;
  *v8 = v6;
  v8[1] = sub_2693EDD70;

  return sub_2693ED4B0();
}

uint64_t sub_2693EDD70()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  v2 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  *(v4 + 64) = v0;

  if (v0)
  {
    v5 = sub_2693EC1E0;
  }

  else
  {
    v5 = sub_2693EDE74;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2693EDE74()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  (*(v0 + 16))(v1);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_4_6();

  return v4();
}

uint64_t sub_2693EDF0C()
{
  v1 = OBJC_IVAR____TtC22SiriTranslationIntents22SupportedLanguagesFlow_log;
  sub_269423FC8();
  OUTLINED_FUNCTION_8_3();
  (*(v2 + 8))(v0 + v1);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22SiriTranslationIntents22SupportedLanguagesFlow_outputPublisher));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22SiriTranslationIntents22SupportedLanguagesFlow_deviceState));
  return v0;
}

uint64_t sub_2693EDF90()
{
  sub_2693EDF0C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for SupportedLanguagesFlow(uint64_t a1)
{
  result = qword_28030FC88;
  if (!qword_28030FC88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2693EE03C(uint64_t a1)
{
  result = sub_269423FC8();
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

uint64_t sub_2693EE130(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SupportedLanguagesFlow(0);

  return sub_269422FC8();
}

uint64_t sub_2693EE16C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2693EE1B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2693EC8CC;

  return sub_2693EDC74(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2693EE27C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_8_3();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2693EE2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_2693FCEE8(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = sub_269423C08();
    OUTLINED_FUNCTION_4_5();
    (*(v11 + 16))(a4, v9 + *(v11 + 72) * v8, v10);
    v12 = a4;
    v13 = 0;
    v14 = v10;
  }

  else
  {
    v14 = sub_269423C08();
    v12 = a4;
    v13 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v12, v13, 1, v14);
}

id sub_2693EE38C()
{
  if (qword_28030F0E8 != -1)
  {
    swift_once();
  }

  v0 = qword_280314FD8;

  sub_269423468();
  v1 = objc_allocWithZone(type metadata accessor for TranslatePhraseIntentHandler(0));
  result = sub_2693EE41C(v0, v3);
  qword_280315010 = result;
  return result;
}

id sub_2693EE41C(uint64_t a1, void *a2)
{
  v3 = v2;
  type metadata accessor for RecentInteractionUtils();
  swift_initStackObject();
  sub_2693DD7E8();
  v6 = OBJC_IVAR____TtC22SiriTranslationIntents28TranslatePhraseIntentHandler_log;
  if (qword_28030F090 != -1)
  {
    swift_once();
  }

  v7 = sub_269423FC8();
  v8 = __swift_project_value_buffer(v7, qword_280314E70);
  (*(*(v7 - 8) + 16))(&v3[v6], v8, v7);
  *&v3[OBJC_IVAR____TtC22SiriTranslationIntents28TranslatePhraseIntentHandler_translationApiClient] = a1;
  sub_2693DBDF8(a2, &v3[OBJC_IVAR____TtC22SiriTranslationIntents28TranslatePhraseIntentHandler_deviceState]);
  v11.receiver = v3;
  v11.super_class = type metadata accessor for TranslatePhraseIntentHandler(0);
  v9 = objc_msgSendSuper2(&v11, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v9;
}

void sub_2693EE550(void *a1, uint64_t a2, void (**a3)(void, id))
{
  v159 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F8D0, &unk_269427290);
  MEMORY[0x28223BE20](v5 - 8);
  v156 = &v156 - v6;
  v7 = sub_269423AE8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v158 = &v156 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC22SiriTranslationIntents28TranslatePhraseIntentHandler_log;
  v11 = a1;
  v162 = a2;
  v160 = v10;
  v12 = sub_269423FA8();
  v13 = sub_269424368();

  v14 = os_log_type_enabled(v12, v13);
  v161 = v11;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v164[0] = v16;
    *v15 = 136315138;
    v17 = v161;
    v18 = v8;
    v19 = v7;
    v20 = [v17 description];
    v21 = sub_269424118();
    v23 = v22;

    v7 = v19;
    v8 = v18;
    v24 = sub_2693DB6E0(v21, v23, v164);

    *(v15 + 4) = v24;
    _os_log_impl(&dword_2693C9000, v12, v13, "Resolve phrase for intent %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    v25 = v16;
    v11 = v161;
    MEMORY[0x26D63C8E0](v25, -1, -1);
    MEMORY[0x26D63C8E0](v15, -1, -1);
  }

  v26 = sub_26941C110(v11);
  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0xE000000000000000;
  }

  v29 = static TranslationLanguages.getByLocale(locale:)(v26, v28);

  v30 = sub_26941C104(v11);
  if (!v31)
  {
    v30 = 0;
    v31 = 0xE000000000000000;
  }

  LOBYTE(v32) = TranslationLanguages.init(rawValue:)(*&v30);
  v33 = v32;
  v34 = sub_26941C104(v11);
  if (!v35)
  {
    v34 = 0;
    v35 = 0xE000000000000000;
  }

  if (sub_2693D8BA0(v34, v35) != 3)
  {
    v36 = OBJC_IVAR____TtC22SiriTranslationIntents28TranslatePhraseIntentHandler_translationInteraction;
    v37 = v162;
    swift_beginAccess();
    v38 = v158;
    (*(v8 + 16))(v158, v37 + v36, v7);
    v39 = sub_269423A88();
    (*(v8 + 8))(v38, v7);
    if (*(v39 + 16))
    {
      sub_2693FCEE8(0x65676175676E616CLL, 0xED000070756F7247);
      v41 = v40;

      if (v41)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FCF8, &qword_2694272A8);
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FD00, qword_2694272B0) - 8);
    v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_2694256B0;
    strcpy((v44 + v43), "languageGroup");
    *(v44 + v43 + 14) = -4864;
    sub_269424158();

    sub_269423C08();
    sub_2694240B8();
    swift_beginAccess();
    sub_269423A98();
    swift_endAccess();
  }

LABEL_16:
  v45 = sub_269423FA8();
  v46 = sub_269424368();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_2693C9000, v45, v46, "Checking for source and target language equivalency.", v47, 2u);
    MEMORY[0x26D63C8E0](v47, -1, -1);
  }

  if (v29 != 23 && v33 != 23)
  {
    TranslationLanguages.rawValue.getter(v29);
    v71 = v70;
    v73 = v72;
    TranslationLanguages.rawValue.getter(v33);
    if (v71 == v74 && v73 == v75)
    {

LABEL_59:
      v85 = sub_269423FA8();
      v86 = sub_269424368();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v164[0] = v88;
        *v87 = 136315394;
        LOBYTE(v163[0]) = v29;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FCF0, &qword_2694272A0);
        v89 = sub_269424128();
        v91 = v33;
        v92 = sub_2693DB6E0(v89, v90, v164);

        *(v87 + 4) = v92;
        *(v87 + 12) = 2080;
        LOBYTE(v163[0]) = v91;
        v93 = sub_269424128();
        v95 = v11;
        v96 = sub_2693DB6E0(v93, v94, v164);

        *(v87 + 14) = v96;
        v11 = v95;
        _os_log_impl(&dword_2693C9000, v85, v86, "source lang: %s is the same as target lang: : %s", v87, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D63C8E0](v88, -1, -1);
        MEMORY[0x26D63C8E0](v87, -1, -1);
      }

      goto LABEL_62;
    }

    v77 = sub_269424688();

    if (v77)
    {
      goto LABEL_59;
    }
  }

  LODWORD(v158) = v33;
  sub_26941C110(v11);
  v50 = v49;
  if (v49)
  {
  }

  v51 = sub_2693F0E08(v11);
  v52 = [v11 translateToSourceLanguage];
  if (!v52)
  {
    sub_2693D554C(0, &qword_28030FCD8, 0x277CCABB0);
    v52 = sub_2694243D8();
  }

  v53 = sub_2694242D8();

  v54 = sub_269423FA8();
  v55 = sub_269424368();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v157 = v51;
    v57 = v56;
    v58 = swift_slowAlloc();
    v164[0] = v58;
    *v57 = 136315650;
    if (v50)
    {
      v59 = 1702195828;
    }

    else
    {
      v59 = 0x65736C6166;
    }

    v60 = v53;
    if (v50)
    {
      v61 = 0xE400000000000000;
    }

    else
    {
      v61 = 0xE500000000000000;
    }

    v62 = sub_2693DB6E0(v59, v61, v164);

    *(v57 + 4) = v62;
    *(v57 + 12) = 2080;
    if (v157)
    {
      v63 = 1702195828;
    }

    else
    {
      v63 = 0x65736C6166;
    }

    if (v157)
    {
      v64 = 0xE400000000000000;
    }

    else
    {
      v64 = 0xE500000000000000;
    }

    v65 = sub_2693DB6E0(v63, v64, v164);

    *(v57 + 14) = v65;
    *(v57 + 22) = 2080;
    if (v60)
    {
      v66 = 0x65736C6166;
    }

    else
    {
      v66 = 1702195828;
    }

    if (v60)
    {
      v67 = 0xE500000000000000;
    }

    else
    {
      v67 = 0xE400000000000000;
    }

    v68 = sub_2693DB6E0(v66, v67, v164);
    v53 = v60;

    *(v57 + 24) = v68;
    _os_log_impl(&dword_2693C9000, v54, v55, "Checking for unsupported source language. intent source lang: %s unsupported source lang: %s not asked to translate written text: %s.", v57, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D63C8E0](v58, -1, -1);
    v69 = v57;
    v51 = v157;
    MEMORY[0x26D63C8E0](v69, -1, -1);
  }

  if (!((v50 == 0 || !v51) | v53 & 1))
  {
    sub_2693D554C(0, &qword_28030FCE8, 0x277CD4218);
    v84 = v161;
LABEL_63:
    v97 = sub_26941C0F8(v84);
    v99 = v98;
    v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
    v164[0] = v97;
    v164[1] = v99;
    v100 = sub_2693EF638(v164);
    goto LABEL_64;
  }

  v78 = sub_269423FA8();
  v79 = sub_269424368();
  if (os_log_type_enabled(v78, v79))
  {
    v157 = v51;
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v166 = v81;
    *v80 = 136315138;
    sub_269423468();
    __swift_project_boxed_opaque_existential_1(v164, v165);
    if (sub_269423058())
    {
      __swift_destroy_boxed_opaque_existential_1(v164);
      v82 = 0xE400000000000000;
      v83 = 1702195828;
    }

    else
    {
      sub_269423468();
      __swift_project_boxed_opaque_existential_1(v163, v163[3]);
      v103 = sub_269423048();
      __swift_destroy_boxed_opaque_existential_1(v163);
      __swift_destroy_boxed_opaque_existential_1(v164);
      if (v103)
      {
        v83 = 1702195828;
      }

      else
      {
        v83 = 0x65736C6166;
      }

      if (v103)
      {
        v82 = 0xE400000000000000;
      }

      else
      {
        v82 = 0xE500000000000000;
      }
    }

    v11 = v161;
    v104 = sub_2693DB6E0(v83, v82, &v166);

    *(v80 + 4) = v104;
    _os_log_impl(&dword_2693C9000, v78, v79, "Device in voice only or voice forward mode: %s", v80, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v81);
    MEMORY[0x26D63C8E0](v81, -1, -1);
    MEMORY[0x26D63C8E0](v80, -1, -1);

    v51 = v157;
  }

  else
  {

    v11 = v161;
  }

  sub_26941C104(v11);
  v105 = v158;
  if (v106)
  {

    v107 = sub_26941C104(v11);
    if (!v108)
    {
      if (v51)
      {
        goto LABEL_98;
      }

      goto LABEL_81;
    }

    if (!v107 && v108 == 0xE000000000000000)
    {

      goto LABEL_98;
    }

    v109 = sub_269424688();

    if (((v51 | v109) & 1) == 0)
    {
LABEL_81:
      v110 = sub_26941C104(v11);
      if (!v111)
      {
        v110 = 0;
      }

      v112 = 0xE000000000000000;
      if (!v111)
      {
        v111 = 0xE000000000000000;
      }

      v113 = sub_2693D8BA0(v110, v111);
      if (v113 != 3)
      {
        v114 = v113;
        v115 = sub_26941C110(v11);
        if (v116)
        {
          v112 = v116;
        }

        else
        {
          v115 = 0;
        }

        v117 = sub_2693D8858(v115, v112, v114);
        v119 = v118;

        if (v119)
        {
          v120 = v11;
          v121 = sub_269423FA8();
          v122 = sub_269424368();
          if (os_log_type_enabled(v121, v122))
          {
            v123 = swift_slowAlloc();
            *v123 = 0;
            _os_log_impl(&dword_2693C9000, v121, v122, "Target language refers to a language group. But NO need for disambiguation.", v123, 2u);
            MEMORY[0x26D63C8E0](v123, -1, -1);
          }

          v124 = static TranslationLanguages.getByLocale(locale:)(v117, v119);

          if (v124 == 23)
          {
            v125 = 0;
          }

          else
          {
            TranslationLanguages.rawValue.getter(v124);
            v125 = sub_269424108();
          }

          v11 = v120;
          [v120 setTargetLanguage_];

          v126 = sub_26941C104(v120);
          if (!v127)
          {
            v126 = 0;
            v127 = 0xE000000000000000;
          }

          LOBYTE(v128) = TranslationLanguages.init(rawValue:)(*&v126);
          v105 = v128;
          v129 = v156;
          sub_269424158();
          v130 = sub_269423C08();
          __swift_storeEnumTagSinglePayload(v129, 0, 1, v130);
          swift_beginAccess();
          v131 = sub_269423A78();
          sub_2693DE1AC(v129, 0x6465766C6F736572, 0xEA00000000007942);
          v131(v164, 0);
          swift_endAccess();
        }
      }
    }
  }

LABEL_98:
  LODWORD(v158) = v105;
  v132 = sub_2693F11D0(v11);
  v133 = sub_26941C104(v11);
  if (!v134)
  {
    v133 = 0;
    v134 = 0xE000000000000000;
  }

  v135 = sub_2693D8BA0(v133, v134);
  v136 = sub_269423FA8();
  v137 = sub_269424368();
  v138 = os_log_type_enabled(v136, v137);
  v157 = v132;
  LODWORD(v156) = v135;
  if (v138)
  {
    v139 = swift_slowAlloc();
    v140 = swift_slowAlloc();
    v164[0] = v140;
    *v139 = 136315394;
    if (v132)
    {
      v141 = 1702195828;
    }

    else
    {
      v141 = 0x65736C6166;
    }

    if (v132)
    {
      v142 = 0xE400000000000000;
    }

    else
    {
      v142 = 0xE500000000000000;
    }

    v143 = sub_2693DB6E0(v141, v142, v164);

    *(v139 + 4) = v143;
    *(v139 + 12) = 2080;
    if (v135 == 3)
    {
      v144 = 0x65736C6166;
    }

    else
    {
      v144 = 1702195828;
    }

    if (v135 == 3)
    {
      v145 = 0xE500000000000000;
    }

    else
    {
      v145 = 0xE400000000000000;
    }

    v146 = sub_2693DB6E0(v144, v145, v164);

    *(v139 + 14) = v146;
    _os_log_impl(&dword_2693C9000, v136, v137, "Checking for unsupported target language. Unsupported target lang: %s Is target language specific enough: %s.", v139, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D63C8E0](v140, -1, -1);
    MEMORY[0x26D63C8E0](v139, -1, -1);
  }

  sub_26941C104(v11);
  v147 = v158;
  if (v148)
  {

    if (v147 == 23 || v157 || v156 != 3)
    {
      goto LABEL_62;
    }
  }

  else if (v157 || v156 != 3)
  {
    goto LABEL_62;
  }

  sub_26941C0F8(v11);
  if (v149)
  {

    v150 = sub_26941C0F8(v11);
    if (v151)
    {
      if (!v150 && v151 == 0xE000000000000000)
      {

        goto LABEL_125;
      }

      v152 = sub_269424688();

      if (v152)
      {
        goto LABEL_125;
      }
    }

LABEL_62:
    sub_2693D554C(0, &qword_28030FCE8, 0x277CD4218);
    v84 = v11;
    goto LABEL_63;
  }

LABEL_125:
  v153 = sub_269423FA8();
  v154 = sub_269424368();
  if (os_log_type_enabled(v153, v154))
  {
    v155 = swift_slowAlloc();
    *v155 = 0;
    _os_log_impl(&dword_2693C9000, v153, v154, "Phrase needs value.", v155, 2u);
    MEMORY[0x26D63C8E0](v155, -1, -1);
  }

  sub_2693D554C(0, &qword_28030FCE8, 0x277CD4218);
  v100 = [swift_getObjCClassFromMetadata() needsValue];
LABEL_64:
  v101 = v100;
  v102 = v159;
  v159[2](v159, v100);

  _Block_release(v102);
}

id sub_2693EF638(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = sub_269424678();
  v3 = [swift_getObjCClassFromMetadata() resolutionResultSuccessWithResolvedValue_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

void sub_2693EF6C8(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = a1;
  v5 = sub_269423FA8();
  v6 = sub_269424368();

  if (os_log_type_enabled(v5, v6))
  {
    v42 = a3;
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v43[0] = v8;
    *v7 = 136315138;
    v9 = v4;
    v10 = [v9 description];
    v11 = sub_269424118();
    v13 = v12;

    v14 = sub_2693DB6E0(v11, v13, v43);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_2693C9000, v5, v6, "Resolve target language for intent %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D63C8E0](v8, -1, -1);
    v15 = v7;
    a3 = v42;
    MEMORY[0x26D63C8E0](v15, -1, -1);
  }

  sub_26941C104(v4);
  if (v16)
  {

    v17 = sub_26941C104(v4);
    if (!v18)
    {
      goto LABEL_38;
    }

    if (!v17 && v18 == 0xE000000000000000)
    {

      goto LABEL_22;
    }

    v19 = sub_269424688();

    if ((v19 & 1) == 0)
    {
LABEL_38:
      if (!sub_2693F0E08(v4))
      {
        v20 = sub_26941C104(v4);
        if (!v21)
        {
          v20 = 0;
        }

        v22 = 0xE000000000000000;
        if (!v21)
        {
          v21 = 0xE000000000000000;
        }

        v23 = sub_2693D8BA0(v20, v21);
        if (v23 != 3)
        {
          v24 = v23;
          v25 = sub_26941C110(v4);
          if (v26)
          {
            v22 = v26;
          }

          else
          {
            v25 = 0;
          }

          v27 = sub_2693D8684(v25, v22, v24);

          if (v27)
          {
            v28 = sub_269423FA8();
            v29 = sub_269424368();
            if (os_log_type_enabled(v28, v29))
            {
              v30 = swift_slowAlloc();
              *v30 = 0;
              _os_log_impl(&dword_2693C9000, v28, v29, "Target language refers to a language group. Need disambiguation.", v30, 2u);
              MEMORY[0x26D63C8E0](v30, -1, -1);
            }

            goto LABEL_32;
          }
        }
      }
    }
  }

LABEL_22:
  sub_26941C104(v4);
  if (v31)
  {

    v32 = sub_26941C104(v4);
    if (v33)
    {
      if (!v32 && v33 == 0xE000000000000000)
      {

        goto LABEL_28;
      }

      v34 = sub_269424688();

      if (v34)
      {
LABEL_28:
        if (sub_2693F0E08(v4))
        {
          goto LABEL_29;
        }

        goto LABEL_30;
      }
    }

LABEL_29:
    sub_2693D554C(0, &qword_28030FCE8, 0x277CD4218);
    v35 = sub_26941C104(v4);
    v37 = v36;
    v43[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
    v43[0] = v35;
    v43[1] = v37;
    v38 = sub_2693EF638(v43);
    goto LABEL_33;
  }

LABEL_30:
  v28 = sub_269423FA8();
  v39 = sub_269424368();
  if (os_log_type_enabled(v28, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_2693C9000, v28, v39, "Target Language needs value.", v40, 2u);
    MEMORY[0x26D63C8E0](v40, -1, -1);
  }

LABEL_32:

  sub_2693D554C(0, &qword_28030FCE8, 0x277CD4218);
  v38 = [swift_getObjCClassFromMetadata() needsValue];
LABEL_33:
  v41 = v38;
  (a3)[2](a3, v38);

  _Block_release(a3);
}

void sub_2693EFB58(void *a1, char *a2, void (**a3)(void, void))
{
  v69 = a3;
  v5 = sub_269423C08();
  v66 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F8D0, &unk_269427290);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v63 - v9;
  v11 = sub_269423AE8();
  v70 = *(v11 - 8);
  v71 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v67 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v63 - v14;
  v72 = a2;
  v16 = sub_269423FA8();
  v17 = sub_269424368();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2693C9000, v16, v17, "Confirm. Returning empty response.", v18, 2u);
    MEMORY[0x26D63C8E0](v18, -1, -1);
  }

  v19 = OBJC_IVAR____TtC22SiriTranslationIntents28TranslatePhraseIntentHandler_translationInteraction;
  v20 = v72;
  swift_beginAccess();
  v21 = v70;
  v22 = v71;
  v23 = *(v70 + 16);
  v68 = v19;
  v63 = v23;
  v23(v15, &v20[v19], v71);
  v24 = sub_269423A88();
  v64 = *(v21 + 8);
  v65 = v21 + 8;
  v64(v15, v22);
  sub_2693EE2D0(0x65676175676E616CLL, 0xED000070756F7247, v24, v10);

  if (__swift_getEnumTagSinglePayload(v10, 1, v5))
  {
    sub_2693DF81C(v10);
LABEL_5:

    v25 = 0;
    v26 = 0xE000000000000000;
    goto LABEL_7;
  }

  v27 = v66;
  (*(v66 + 16))(v7, v10, v5);
  sub_2693DF81C(v10);
  v25 = sub_269423BF8();
  v26 = v28;
  (*(v27 + 8))(v7, v5);
  if (!v26)
  {
    goto LABEL_5;
  }

LABEL_7:
  v29 = v67;
  v30 = v69;
  v31 = sub_2693D8BA0(v25, v26);
  if (v31 == 3)
  {
LABEL_37:
    type metadata accessor for RecentInteractionUtils();
    swift_initStackObject();
    sub_2693DD7E8();
    v59 = v72;
    v60 = v68;
    swift_beginAccess();
    (*(v70 + 40))(&v59[v60], v29, v71);
    swift_endAccess();
    v61 = objc_allocWithZone(type metadata accessor for TranslatePhraseIntentResponse());
    v62 = TranslatePhraseIntentResponse.init(code:userActivity:)(4, 0);
    (v30)[2](v30, v62);

    _Block_release(v30);
    return;
  }

  v32 = sub_2693D861C(v31);
  v33 = v32[2];
  if (!v33)
  {

    goto LABEL_37;
  }

  v34 = 0;
  while (v34 < v32[2])
  {
    v35 = *(v32 + v34 + 32);
    v36 = sub_26941C104(a1);
    if (!v37)
    {
      v36 = 0;
      v37 = 0xE000000000000000;
    }

    v38.value = TranslationLanguages.init(rawValue:)(*&v36).value;
    if (v38.value != SiriTranslationIntents_TranslationLanguages_unknownDefault)
    {
      value = v38.value;
      TranslationLanguages.rawValue.getter(v35);
      v41 = v40;
      v43 = v42;
      TranslationLanguages.rawValue.getter(value);
      if (v41 == v45 && v43 == v44)
      {

LABEL_23:

        v48 = sub_26941C110(a1);
        if (v49)
        {
          v50 = v48;
        }

        else
        {
          v50 = 0;
        }

        if (v49)
        {
          v51 = v49;
        }

        else
        {
          v51 = 0xE000000000000000;
        }

        v52 = sub_26941C104(a1);
        if (v53)
        {
          v54 = v52;
        }

        else
        {
          v54 = 0;
        }

        if (v53)
        {
          v55 = v53;
        }

        else
        {
          v55 = 0xE000000000000000;
        }

        type metadata accessor for RecentInteractionUtils();
        v57 = v71;
        v56 = v72;
        v63(v29, &v72[v68], v71);
        *(swift_allocObject() + 16) = v56;
        v58 = v56;
        sub_2693DD97C(v50, v51, v54, v55, v29);

        v64(v29, v57);
LABEL_36:
        v30 = v69;
        goto LABEL_37;
      }

      v47 = sub_269424688();

      if (v47)
      {
        goto LABEL_23;
      }
    }

    if (v33 == ++v34)
    {

      goto LABEL_36;
    }
  }

  __break(1u);
}

void sub_2693F0144(uint64_t a1, uint64_t a2)
{

  oslog = sub_269423FA8();
  v2 = sub_269424368();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
    v5 = sub_269424128();
    v7 = sub_2693DB6E0(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_2693C9000, oslog, v2, "Received response with error: %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    MEMORY[0x26D63C8E0](v4, -1, -1);
    MEMORY[0x26D63C8E0](v3, -1, -1);
  }

  else
  {
  }
}

void sub_2693F02D0(void *a1, uint64_t a2, void (**aBlock)(void *, void *))
{
  v3 = aBlock;
  _Block_copy(aBlock);
  v6 = a1;
  v7 = sub_269423FA8();
  v8 = sub_269424368();

  if (os_log_type_enabled(v7, v8))
  {
    v119 = v8;
    v9 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    v121 = v118;
    *v9 = 136315138;
    v10 = v6;
    v11 = a2;
    v12 = [v10 description];
    v13 = v3;
    v14 = sub_269424118();
    v16 = v15;

    a2 = v11;
    v17 = v14;
    v3 = v13;
    v18 = sub_2693DB6E0(v17, v16, &v121);

    *(v9 + 4) = v18;
    _os_log_impl(&dword_2693C9000, v7, v119, "Handle intent: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v118);
    MEMORY[0x26D63C8E0](v118, -1, -1);
    MEMORY[0x26D63C8E0](v9, -1, -1);
  }

  v19 = sub_26941C110(v6);
  if (!v20)
  {
    v19 = 0;
    v20 = 0xE000000000000000;
  }

  v21 = sub_26940C010(v19, v20);
  v22 = 0xE500000000000000;
  v23 = 0x4B485F687ALL;
  v24 = v6;
  switch(v21)
  {
    case 1:
    case 2:
      v23 = 0x4E435F687ALL;
      break;
    case 3:
      v23 = sub_26941C110(v6);
      if (!v22)
      {
        v23 = 0;
        v22 = 0xE000000000000000;
      }

      break;
    default:
      break;
  }

  v25 = sub_26940BCAC(v23, v22);
  if (v25 == 40)
  {
    v26 = v6;
    v27 = sub_269423FA8();
    v28 = sub_269424368();

    if (!os_log_type_enabled(v27, v28))
    {
LABEL_13:

      v38 = objc_allocWithZone(type metadata accessor for TranslatePhraseIntentResponse());
      v39 = 101;
LABEL_66:
      v103 = TranslatePhraseIntentResponse.init(code:userActivity:)(v39, 0);
      v3[2](v3, v103);

      goto LABEL_67;
    }

    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v121 = v30;
    *v29 = 136315138;
    v31 = v26;
    v32 = [v31 description];
    v33 = sub_269424118();
    v35 = v34;

    v36 = sub_2693DB6E0(v33, v35, &v121);

    *(v29 + 4) = v36;
    v37 = "Responding with error because source locale is not supported: %s";
LABEL_12:
    _os_log_impl(&dword_2693C9000, v27, v28, v37, v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x26D63C8E0](v30, -1, -1);
    MEMORY[0x26D63C8E0](v29, -1, -1);
    goto LABEL_13;
  }

  v40 = v25;
  v41 = sub_26941C104(v6);
  if (!v42)
  {
    v41 = 0;
    v42 = 0xE000000000000000;
  }

  v43.value = TranslationLanguages.init(rawValue:)(*&v41).value;
  v44 = sub_26941C104(v6);
  if (!v45)
  {
    v44 = 0;
    v45 = 0xE000000000000000;
  }

  v46 = sub_2693D8BA0(v44, v45);
  v47 = v46;
  if (v43.value == SiriTranslationIntents_TranslationLanguages_unknownDefault)
  {
    if (v46 == 3)
    {
      v48 = 21;
      goto LABEL_24;
    }

    v49 = sub_2693D856C(v46);
  }

  else
  {
    v49 = sub_2693D6D00(v43.value);
  }

  v48 = v49;
LABEL_24:
  sub_26941C110(v24);
  if (v50)
  {

    if (sub_2693F0E08(v24))
    {
      v51 = [v24 translateToSourceLanguage];
      if (!v51)
      {
        sub_2693D554C(0, &qword_28030FCD8, 0x277CCABB0);
        v51 = sub_2694243D8();
      }

      v52 = sub_2694242D8();

      if ((v52 & 1) == 0)
      {
        if (v40 == 24 || v40 == 39)
        {
          v77 = v24;
          v27 = sub_269423FA8();
          v28 = sub_269424368();

          if (!os_log_type_enabled(v27, v28))
          {
            goto LABEL_13;
          }

          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v121 = v30;
          *v29 = 136315138;
          v78 = v77;
          v79 = [v78 description];
          v80 = sub_269424118();
          v82 = v81;

          v83 = sub_2693DB6E0(v80, v82, &v121);

          *(v29 + 4) = v83;
          v37 = "Will respond with unsupported translation because source language isn't supported in both Siri and Translate App: %s";
          goto LABEL_12;
        }

        v111 = v24;
        v91 = sub_269423FA8();
        v92 = sub_269424368();

        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          v121 = v94;
          *v93 = 136315138;
          v112 = v111;
          v113 = [v112 description];
          v114 = sub_269424118();
          v116 = v115;

          v117 = sub_2693DB6E0(v114, v116, &v121);

          *(v93 + 4) = v117;
          v101 = "Will offer user to use Translate App because source language is not the same as the current Siri locale: %s";
          goto LABEL_64;
        }

LABEL_65:

        v102 = objc_allocWithZone(type metadata accessor for TranslatePhraseIntentResponse());
        v39 = 102;
        goto LABEL_66;
      }
    }
  }

  v120 = v24;
  v53 = a2;
  v54 = sub_26940BD14(v40);
  v56 = v55;
  if (v43.value == SiriTranslationIntents_TranslationLanguages_unknownDefault)
  {
  }

  else
  {
    v67 = v54;
    v68 = TranslationLanguages.getLocaleString()();
    if (v67 == v68._countAndFlagsBits && v56 == v68._object)
    {
      goto LABEL_61;
    }

    v70 = sub_269424688();

    if (v70)
    {
      goto LABEL_62;
    }
  }

  if (v47 != 3)
  {
    v57 = sub_26940BD00(v40);
    if (v48 != 21)
    {
      v84 = sub_26940C22C(v57);
      v86 = v85;
      if (v84 != sub_26940C22C(v48) || v86 != v87)
      {
        v89 = sub_269424688();

        if ((v89 & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_62:
        v90 = v120;
        v91 = sub_269423FA8();
        v92 = sub_269424368();

        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          v121 = v94;
          *v93 = 136315138;
          v95 = v90;
          v96 = [v95 description];
          v97 = sub_269424118();
          v99 = v98;

          v100 = sub_2693DB6E0(v97, v99, &v121);

          *(v93 + 4) = v100;
          v101 = "Will offer user to use Translate App for intent because source language is the same as target language: %s";
LABEL_64:
          _os_log_impl(&dword_2693C9000, v91, v92, v101, v93, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v94);
          MEMORY[0x26D63C8E0](v94, -1, -1);
          MEMORY[0x26D63C8E0](v93, -1, -1);
          goto LABEL_65;
        }

        goto LABEL_65;
      }

LABEL_61:

      goto LABEL_62;
    }
  }

LABEL_33:
  v58 = sub_26940BD00(v40);
  if (v48 == 21)
  {
    goto LABEL_34;
  }

  v71 = sub_26940C22C(v58);
  v73 = v72;
  if (v71 == sub_26940C22C(v48) && v73 == v74)
  {

LABEL_71:
    v104 = v120;
    v27 = sub_269423FA8();
    v28 = sub_269424368();

    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_13;
    }

    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v121 = v30;
    *v29 = 136315138;
    v105 = v104;
    v106 = [v105 description];
    v107 = sub_269424118();
    v109 = v108;

    v110 = sub_2693DB6E0(v107, v109, &v121);

    *(v29 + 4) = v110;
    v37 = "Will respond with unsupported translation because source and target languages share the same core: %s";
    goto LABEL_12;
  }

  v76 = sub_269424688();

  if (v76)
  {
    goto LABEL_71;
  }

LABEL_34:
  sub_26941C104(v120);
  if (v59 && (, v48 == 21) || (sub_2693F11D0(v120) & 1) != 0)
  {
    v60 = v120;
    v27 = sub_269423FA8();
    v28 = sub_269424368();

    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_13;
    }

    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v121 = v30;
    *v29 = 136315138;
    v61 = v60;
    v62 = [v61 description];
    v63 = sub_269424118();
    v65 = v64;

    v66 = sub_2693DB6E0(v63, v65, &v121);

    *(v29 + 4) = v66;
    v37 = "Responding with error that the requested target language isn't supported: %s";
    goto LABEL_12;
  }

  _Block_copy(v3);
  sub_2693F146C(v120, v53, v3);
LABEL_67:
  _Block_release(v3);

  _Block_release(v3);
}

void sub_2693F0D7C(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

BOOL sub_2693F0E08(void *a1)
{
  v2 = v1;
  v4 = sub_269423FA8();
  v5 = sub_269424368();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_12_0();
    *v6 = 0;
    _os_log_impl(&dword_2693C9000, v4, v5, "Checking unsupported source language.", v6, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  type metadata accessor for NLConverter(0);
  v7 = sub_26940D5B8((v2 + OBJC_IVAR____TtC22SiriTranslationIntents28TranslatePhraseIntentHandler_deviceState));
  v9 = v7;
  v10 = v8;
  if (v8)
  {
    v11 = v7 == 0x41535F7261 && v8 == 0xE500000000000000;
    if (v11 || (sub_269424688() & 1) != 0)
    {

      v10 = 0xE500000000000000;
      v9 = 0x45415F7261;
    }
  }

  v12 = sub_26941C110(a1);
  if (!v13)
  {
    v12 = 0;
    v13 = 0xE000000000000000;
  }

  v14 = sub_26940BCAC(v12, v13);
  if (v14 != 40)
  {
    v27 = v14;
    if (v10)
    {
      v28 = v9;
    }

    else
    {
      v28 = 0;
    }

    if (v10)
    {
      v29 = v10;
    }

    else
    {
      v29 = 0xE000000000000000;
    }

    v30 = sub_26940BCAC(v28, v29);
    v31 = sub_269423FA8();
    v32 = sub_269424368();
    if (OUTLINED_FUNCTION_4_7(v32))
    {
      v33 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v33 = 136315394;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FCE0, &qword_269427288);
      v34 = sub_269424128();
      v36 = sub_2693DB6E0(v34, v35, &v50);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2080;
      v37 = sub_269424128();
      v39 = sub_2693DB6E0(v37, v38, &v50);

      *(v33 + 14) = v39;
      OUTLINED_FUNCTION_5_7();
      _os_log_impl(v40, v41, v42, v43, v33, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    if (v30 != 40)
    {
      v44 = sub_26940BD14(v30);
      v46 = v45;
      if (v44 == sub_26940BD14(v27) && v46 == v47)
      {

        return 0;
      }

      v49 = sub_269424688();

      result = 0;
      if (v49)
      {
        return result;
      }
    }

    return v30 != 40;
  }

  v15 = a1;
  v16 = sub_269423FA8();
  v17 = sub_269424368();

  if (os_log_type_enabled(v16, v17))
  {
    OUTLINED_FUNCTION_17_0();
    v18 = OUTLINED_FUNCTION_3_6();
    v50 = v18;
    *v2 = 136315138;
    v19 = v15;
    v20 = [v19 description];
    sub_269424118();

    v23 = OUTLINED_FUNCTION_2_6(v21, v22);

    *(v2 + 4) = v23;
    OUTLINED_FUNCTION_6_4(&dword_2693C9000, v24, v25, "Intent source language is nil: %s");
    __swift_destroy_boxed_opaque_existential_1(v18);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  return 1;
}

uint64_t sub_2693F11D0(_DWORD *a1)
{
  v2 = sub_269423FA8();
  v3 = sub_269424368();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_12_0();
    *v4 = 0;
    _os_log_impl(&dword_2693C9000, v2, v3, "Checking if the target language is API supported.", v4, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v5 = sub_26941C110(a1);
  if (!v6)
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  v7 = sub_26940BCAC(v5, v6);
  if (v7 == 40)
  {
    v8 = a1;
    v9 = sub_269423FA8();
    v10 = sub_269424368();

    if (os_log_type_enabled(v9, v10))
    {
      OUTLINED_FUNCTION_17_0();
      v11 = OUTLINED_FUNCTION_3_6();
      *a1 = 136315138;
      v12 = v8;
      v13 = [v12 description];
      sub_269424118();

      v16 = OUTLINED_FUNCTION_2_6(v14, v15);

      *(a1 + 1) = v16;
      v19 = "Intent source language is not on the list of supported source locales: %s";
LABEL_13:
      OUTLINED_FUNCTION_6_4(&dword_2693C9000, v17, v18, v19);
      __swift_destroy_boxed_opaque_existential_1(v11);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }
  }

  else
  {
    v20 = v7;
    v21 = sub_26941C104(a1);
    if (!v22)
    {
      v21 = 0;
      v22 = 0xE000000000000000;
    }

    LOBYTE(v23) = TranslationLanguages.init(rawValue:)(*&v21);
    if (v23 != 23)
    {
      v32 = v23;
      v33 = sub_26940BD14(v20);
      v35 = sub_2693D7A2C(v33, v34, v32);

      v31 = v35 ^ 1;
      return v31 & 1;
    }

    v24 = a1;
    v9 = sub_269423FA8();
    v25 = sub_269424368();

    if (os_log_type_enabled(v9, v25))
    {
      OUTLINED_FUNCTION_17_0();
      v11 = OUTLINED_FUNCTION_3_6();
      *a1 = 136315138;
      v26 = v24;
      v27 = [v26 description];
      sub_269424118();

      v30 = OUTLINED_FUNCTION_2_6(v28, v29);

      *(a1 + 1) = v30;
      v19 = "Intent target language is not on the list of supported target locales:: %s";
      goto LABEL_13;
    }
  }

  v31 = 1;
  return v31 & 1;
}

void sub_2693F146C(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  _Block_copy(a3);
  v6 = sub_26941C0F8(a1);
  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = v6;
  v9 = v7;
  v10 = sub_26941C104(a1);
  if (!v11)
  {
LABEL_12:

LABEL_13:
    v26 = a1;
    v27 = sub_269423FA8();
    v28 = sub_269424378();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v51 = v30;
      *v29 = 136315138;
      v31 = v26;
      v32 = [v31 description];
      v33 = sub_269424118();
      v35 = v34;

      v36 = sub_2693DB6E0(v33, v35, &v51);

      *(v29 + 4) = v36;
      _os_log_impl(&dword_2693C9000, v27, v28, "Phrase and/or target and/or source language are missing: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x26D63C8E0](v30, -1, -1);
      MEMORY[0x26D63C8E0](v29, -1, -1);
    }

    v37 = objc_allocWithZone(type metadata accessor for TranslatePhraseIntentResponse());
    v25 = 5;
    goto LABEL_16;
  }

  v12 = v10;
  v13 = v11;
  if (!v10 && v11 == 0xE000000000000000 || (sub_269424688() & 1) != 0 || (v14 = sub_26941C110(a1), !v15))
  {

    goto LABEL_12;
  }

  v16 = v14;
  v17 = v15;
  v18._countAndFlagsBits = v12;
  v18._object = v13;
  if (TranslationLanguages.init(rawValue:)(v18).value == SiriTranslationIntents_TranslationLanguages_unknownDefault)
  {

    v21 = sub_269423FA8();
    v22 = sub_269424378();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2693C9000, v21, v22, "Requested language unsupported.", v23, 2u);
      MEMORY[0x26D63C8E0](v23, -1, -1);
    }

    v24 = objc_allocWithZone(type metadata accessor for TranslatePhraseIntentResponse());
    v25 = 101;
  }

  else
  {
    if ((sub_2693D4EC8(v8, v9, v19, v20) & 1) == 0)
    {
      if ((sub_2693D32B8() & 1) == 0)
      {
        goto LABEL_28;
      }

      v43 = [a1 isProfanity];
      if (!v43)
      {
        sub_2693D554C(0, &qword_28030FCD8, 0x277CCABB0);
        v43 = sub_2694243D8();
      }

      v44 = sub_2694242D8();

      if ((v44 & 1) == 0)
      {
LABEL_28:

        v45 = sub_269423FA8();
        v46 = sub_269424358();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          log = v45;
          v48 = swift_slowAlloc();
          v51 = v48;
          *v47 = 136315394;
          *(v47 + 4) = sub_2693DB6E0(v8, v9, &v51);
          *(v47 + 12) = 1024;
          *(v47 + 14) = 0;
          _os_log_impl(&dword_2693C9000, log, v46, "Phrase %s subject to explicit language restriction: %{BOOL}d", v47, 0x12u);
          __swift_destroy_boxed_opaque_existential_1(v48);
          MEMORY[0x26D63C8E0](v48, -1, -1);
          MEMORY[0x26D63C8E0](v47, -1, -1);
        }

        else
        {
        }

        v49 = TranslationLanguages.getLocaleString()();
        sub_2693D3328(v8, v9, v49._countAndFlagsBits, v49._object, v16, v17, sub_2693F22CC, v5);

        goto LABEL_17;
      }
    }

    v39 = sub_269423FA8();
    v40 = sub_269424378();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_2693C9000, v39, v40, "Explicit language is disabled. Returning error.", v41, 2u);
      MEMORY[0x26D63C8E0](v41, -1, -1);
    }

    v42 = objc_allocWithZone(type metadata accessor for TranslatePhraseIntentResponse());
    v25 = 103;
  }

LABEL_16:
  v38 = TranslatePhraseIntentResponse.init(code:userActivity:)(v25, 0);
  (a3)[2](a3, v38);

LABEL_17:

  _Block_release(a3);
}

void sub_2693F19F0(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5 = a5;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  *(v9 + 32) = v5;

  v75 = a4;
  v10 = sub_26941C0F8(a1);
  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  v14 = sub_26941C104(a1);
  if (!v15)
  {
LABEL_12:

LABEL_13:
    v35 = a1;
    v36 = sub_269423FA8();
    v37 = sub_269424378();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = OUTLINED_FUNCTION_17_0();
      v74 = swift_slowAlloc();
      v76 = v74;
      *v38 = 136315138;
      v39 = v35;
      v40 = [v39 description];
      v41 = sub_269424118();
      v42 = a3;
      v43 = v5;
      v45 = v44;

      v46 = sub_2693DB6E0(v41, v45, &v76);
      v5 = v43;
      a3 = v42;

      *(v38 + 4) = v46;
      OUTLINED_FUNCTION_5_7();
      _os_log_impl(v47, v48, v49, v50, v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v74);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    v51 = objc_allocWithZone(type metadata accessor for TranslatePhraseIntentResponse());
    v34 = 5;
    goto LABEL_16;
  }

  v16 = v14;
  v17 = v15;
  if (!v14 && v15 == 0xE000000000000000 || (sub_269424688() & 1) != 0 || (v18 = sub_26941C110(a1), !v19))
  {

    goto LABEL_12;
  }

  v20 = v19;
  v73 = v18;
  v21._countAndFlagsBits = v16;
  v21._object = v17;
  if (TranslationLanguages.init(rawValue:)(v21).value == SiriTranslationIntents_TranslationLanguages_unknownDefault)
  {

    v24 = sub_269423FA8();
    v25 = sub_269424378();
    if (OUTLINED_FUNCTION_4_7(v25))
    {
      v26 = a3;
      v27 = v5;
      v28 = OUTLINED_FUNCTION_12_0();
      *v28 = 0;
      OUTLINED_FUNCTION_5_7();
      _os_log_impl(v29, v30, v31, v32, v28, 2u);
      v5 = v27;
      a3 = v26;
      OUTLINED_FUNCTION_6_0();
    }

    v33 = objc_allocWithZone(type metadata accessor for TranslatePhraseIntentResponse());
    v34 = 101;
LABEL_16:
    v52 = TranslatePhraseIntentResponse.init(code:userActivity:)(v34, 0);
    v53 = v52;
    v54 = a3;
    v55 = v75;
    v56 = v5;
LABEL_17:
    sub_269404140(v52, v54, v55, v56);

    goto LABEL_18;
  }

  v72 = v5;
  if (sub_2693D4EC8(v12, v13, v22, v23))
  {
    goto LABEL_22;
  }

  if (sub_2693D32B8())
  {
    v65 = [a1 isProfanity];
    if (!v65)
    {
      sub_2693D554C(0, &qword_28030FCD8, 0x277CCABB0);
      v65 = sub_2694243D8();
    }

    v66 = sub_2694242D8();

    if (v66)
    {
LABEL_22:

      v57 = sub_269423FA8();
      v58 = sub_269424378();
      if (OUTLINED_FUNCTION_4_7(v58))
      {
        v59 = OUTLINED_FUNCTION_12_0();
        *v59 = 0;
        OUTLINED_FUNCTION_5_7();
        _os_log_impl(v60, v61, v62, v63, v59, 2u);
        OUTLINED_FUNCTION_6_0();
      }

      v64 = objc_allocWithZone(type metadata accessor for TranslatePhraseIntentResponse());
      v52 = TranslatePhraseIntentResponse.init(code:userActivity:)(103, 0);
      v53 = v52;
      v54 = a3;
      v55 = v75;
      v56 = v72;
      goto LABEL_17;
    }
  }

  v67 = sub_269423FA8();
  v68 = sub_269424358();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v76 = v70;
    *v69 = 136315394;
    *(v69 + 4) = sub_2693DB6E0(v12, v13, &v76);
    *(v69 + 12) = 1024;
    *(v69 + 14) = 0;
    _os_log_impl(&dword_2693C9000, v67, v68, "Phrase %s subject to explicit language restriction: %{BOOL}d", v69, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v70);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v71 = TranslationLanguages.getLocaleString()();
  sub_2693D3328(v12, v13, v71._countAndFlagsBits, v71._object, v73, v20, sub_2693F2204, v9);

LABEL_18:
}

id sub_2693F1FA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TranslatePhraseIntentHandler(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TranslatePhraseIntentHandler(uint64_t a1)
{
  result = qword_28030FCC8;
  if (!qword_28030FCC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2693F20E4(uint64_t a1)
{
  result = sub_269423AE8();
  if (v2 <= 0x3F)
  {
    result = sub_269423FC8();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2693F21C4()
{

  return MEMORY[0x2821FE8E8](v0, 36, 7);
}

uint64_t sub_2693F2264@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_2693F2294()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2693F22E0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t OUTLINED_FUNCTION_2_6(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_2693DB6E0(v2, v3, va);
}

uint64_t OUTLINED_FUNCTION_3_6()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_4_7(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_6_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_2693F23D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2693F23A0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2693F23FC(uint64_t a1)
{
  v2 = sub_2693F26F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2693F2438(uint64_t a1)
{
  v2 = sub_2693F26F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2693F2498(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FD18, &qword_269427380);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2693F26F4();
  sub_269424788();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2693F25E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2693F25AC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2693F2628(void *a1)
{
  a1[1] = sub_2693F26B4(&qword_28030FC58, &unk_269427338);
  a1[2] = sub_2693F26B4(&qword_28030FD08, &unk_269427310);
  result = sub_2693F26B4(&qword_28030FD10, &unk_2694272E8);
  a1[3] = result;
  return result;
}

uint64_t sub_2693F26B4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StopSpeakAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2693F26F4()
{
  result = qword_28030FD20;
  if (!qword_28030FD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FD20);
  }

  return result;
}

unint64_t sub_2693F275C()
{
  result = qword_28030FD28;
  if (!qword_28030FD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FD28);
  }

  return result;
}

unint64_t sub_2693F27B4()
{
  result = qword_28030FD30;
  if (!qword_28030FD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FD30);
  }

  return result;
}

void sub_2693F2808()
{
  OUTLINED_FUNCTION_17_3();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_269423EB8();
  OUTLINED_FUNCTION_2();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_5();
  v10 = OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_log;
  if (qword_28030F098 != -1)
  {
    swift_once();
  }

  v11 = sub_269423FC8();
  __swift_project_value_buffer(v11, qword_280314E88);
  OUTLINED_FUNCTION_20_5();
  (*(v12 + 16))(v0 + v10);
  v13 = sub_269423CA8();
  sub_2693FD4B8(v3, &v23);
  sub_269423C88();
  sub_2693FD518(&v23, &qword_28030FDB8, &qword_2694275B0);
  v14 = objc_allocWithZone(v13);

  v15 = sub_269423C98();
  type metadata accessor for TranslateCATs(0);
  v16 = *(v8 + 16);
  v17 = OUTLINED_FUNCTION_68();
  v16(v17);
  v22 = v15;
  OUTLINED_FUNCTION_95();
  *(v1 + OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_translateCats) = sub_269423CD8();
  type metadata accessor for TranslateCATsSimple(0);
  v18 = OUTLINED_FUNCTION_68();
  v16(v18);
  OUTLINED_FUNCTION_95();
  *(v1 + OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_translateCATsSimple) = sub_269423DD8();
  v19 = type metadata accessor for TranslateCATPatternsExecutor(0);
  v20 = OUTLINED_FUNCTION_68();
  v16(v20);
  OUTLINED_FUNCTION_95();
  v21 = sub_269423CD8();
  v24 = v19;
  v25 = &off_2879F4358;

  *&v23 = v21;
  (*(v8 + 8))(v5, v6);
  sub_2693DBCC8(&v23, v1 + OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_translatePatternProvider);
  sub_2693DBCC8(v3, v1 + OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_deviceState);
  OUTLINED_FUNCTION_16_3();
}

uint64_t sub_2693F2A8C@<X0>(uint64_t *a1@<X8>)
{
  v88 = a1;
  sub_269423DA8();
  OUTLINED_FUNCTION_2();
  v91 = v4;
  v92 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_5();
  v90 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  v8 = OUTLINED_FUNCTION_12_2(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_7();
  v87 = v9;
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v10);
  v86 = v85 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FDB0, &qword_2694275A8);
  OUTLINED_FUNCTION_12_2(v12);
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x28223BE20](v13);
  v15 = v85 - v14;
  v16 = OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_log;
  v94 = v1;
  v17 = sub_269423FA8();
  v18 = sub_269424368();
  if (os_log_type_enabled(v17, v18))
  {
    OUTLINED_FUNCTION_33_1();
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_2693C9000, v17, v18, "getSupportedLanguages", v19, 2u);
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  type metadata accessor for NLConverter(0);
  v20 = sub_269423FC8();
  OUTLINED_FUNCTION_4_5();
  (*(v21 + 16))(v15, v94 + v16, v20);
  OUTLINED_FUNCTION_11_4();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v20);
  sub_26940D664();
  v26 = v25;
  v28 = v27;
  sub_2693FD518(v15, &qword_28030FDB0, &qword_2694275A8);
  v29 = sub_2693D737C();
  v30 = *(v29 + 16);
  v31 = MEMORY[0x277D84F90];
  v93 = v28;
  v85[1] = v26;
  v89 = v29;
  if (v30)
  {
    v32 = (v29 + 32);
    if (v28)
    {
      v33 = v28;
    }

    else
    {
      v26 = 0;
      v33 = 0xE000000000000000;
    }

    do
    {
      v35 = *v32++;
      v34 = v35;

      v36 = sub_2693D7A2C(v26, v33, v35);

      if (v36)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v95 = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_26941F7F4(0, *(v31 + 16) + 1, 1);
          v31 = v95;
        }

        v39 = *(v31 + 16);
        v38 = *(v31 + 24);
        v2 = v39 + 1;
        if (v39 >= v38 >> 1)
        {
          v40 = OUTLINED_FUNCTION_32_1(v38);
          sub_26941F7F4(v40, v39 + 1, 1);
          v31 = v95;
        }

        *(v31 + 16) = v2;
        *(v31 + v39 + 32) = v34;
      }

      --v30;
    }

    while (v30);
  }

  v41 = *(v31 + 16);
  if (v41)
  {
    v95 = MEMORY[0x277D84F90];
    sub_26941F7D4(0, v41, 0);
    v42 = 32;
    v43 = v95;
    do
    {
      OUTLINED_FUNCTION_27_1();
      v44 = v94;
      sub_2693F66D4();
      OUTLINED_FUNCTION_80();

      if (v2)
      {
        v45 = v44;
      }

      else
      {
        v45 = 0;
      }

      if (!v2)
      {
        v2 = 0xE000000000000000;
      }

      v95 = v43;
      v47 = *(v43 + 16);
      v46 = *(v43 + 24);
      if (v47 >= v46 >> 1)
      {
        v49 = OUTLINED_FUNCTION_32_1(v46);
        sub_26941F7D4(v49, v47 + 1, 1);
        v43 = v95;
      }

      *(v43 + 16) = v47 + 1;
      v48 = v43 + 16 * v47;
      *(v48 + 32) = v45;
      *(v48 + 40) = v2;
      ++v42;
      --v41;
    }

    while (v41);
  }

  else
  {

    v43 = MEMORY[0x277D84F90];
  }

  v50 = v90;
  if (*(v43 + 16))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2693FD15C(v43);
      v43 = v84;
    }

    v51 = *(v43 + 16);
    if (!v51)
    {
      __break(1u);
      JUMPOUT(0x2693F3274);
    }

    v52 = v51 - 1;
    v53 = v43 + 16 * (v51 - 1);
    v54 = *(v53 + 32);
    v55 = *(v53 + 40);
    *(v43 + 16) = v52;
    if (v52)
    {
      v85[0] = v55;
      v89 = v54;
      v95 = MEMORY[0x277D84F90];
      sub_26941F77C(0, v52, 0);
      v56 = v95;
      v57 = v43 + 40;
      do
      {

        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_10_6();
        sub_269423D78();
        v95 = v56;
        v58 = v50;
        v60 = *(v56 + 16);
        v59 = *(v56 + 24);
        if (v60 >= v59 >> 1)
        {
          v63 = OUTLINED_FUNCTION_32_1(v59);
          sub_26941F77C(v63, v60 + 1, 1);
          v56 = v95;
        }

        *(v56 + 16) = v60 + 1;
        OUTLINED_FUNCTION_93();
        (*(v62 + 32))(v56 + v61 + *(v62 + 72) * v60, v58);
        v57 += 16;
        --v52;
        v50 = v58;
      }

      while (v52);
    }

    OUTLINED_FUNCTION_27_1();
    sub_2693F66D4();

    v67 = v86;
    OUTLINED_FUNCTION_10_6();
    sub_269423D78();
    OUTLINED_FUNCTION_11_4();
    v68 = v92;
    __swift_storeEnumTagSinglePayload(v69, v70, v71, v92);
    sub_26941CF28();
    v73 = v72;

    v74 = v87;
    OUTLINED_FUNCTION_10_6();
    sub_269423D78();
    OUTLINED_FUNCTION_11_4();
    __swift_storeEnumTagSinglePayload(v75, v76, v77, v68);
    sub_26940A9D0(v67, v73, v74);

    OUTLINED_FUNCTION_57_0();
    sub_2693FD518(v78, v79, v80);
    OUTLINED_FUNCTION_57_0();
    return sub_2693FD518(v81, v82, v83);
  }

  else
  {

    sub_2693FD35C();
    OUTLINED_FUNCTION_99();
    v64 = swift_allocError();
    *v65 = 3;
    *v88 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FCA0, &unk_269427210);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_2693F32D0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_6_5();
}

uint64_t sub_2693F32E4()
{
  OUTLINED_FUNCTION_103();
  v12 = v1;
  OUTLINED_FUNCTION_58();
  v2 = v0[2];
  sub_26941C104(v2);
  sub_26941C0F8(v2);
  OUTLINED_FUNCTION_88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F600, &qword_269425750);
  v3 = swift_allocObject();
  v0[4] = v3;
  *(v3 + 16) = xmmword_269427440;
  *(v3 + 32) = 0x657361726870;
  *(v3 + 40) = 0xE600000000000000;
  v4 = sub_269423DA8();
  *(v3 + 72) = v4;
  __swift_allocate_boxed_opaque_existential_0((v3 + 48));
  OUTLINED_FUNCTION_10_6();
  sub_269423D78();
  strcpy((v3 + 80), "targetLanguage");
  *(v3 + 95) = -18;

  v5._countAndFlagsBits = OUTLINED_FUNCTION_94();
  if (TranslationLanguages.init(rawValue:)(v5).value != SiriTranslationIntents_TranslationLanguages_unknownDefault)
  {
    TranslationLanguages.getLocaleString()();
  }

  OUTLINED_FUNCTION_27_1();
  sub_2693F66D4();
  v7 = v6;

  if (v7)
  {
  }

  *(v3 + 120) = v4;
  __swift_allocate_boxed_opaque_existential_0((v3 + 96));
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_10_6();
  sub_269423D78();
  OUTLINED_FUNCTION_22_3(MEMORY[0x277D55C70]);
  v11 = v8;
  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = sub_2693F34FC;

  return v11(0xD000000000000027, 0x8000000269429E20, v3);
}

uint64_t sub_2693F34FC()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  v3 = v2;
  OUTLINED_FUNCTION_8_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 48) = v5;
  *(v3 + 56) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2693F3604()
{
  OUTLINED_FUNCTION_23_2();
  v1 = [*(v0 + 48) dialog];
  v2 = sub_2693FD1B0();
  OUTLINED_FUNCTION_29();
  v3 = sub_269424288();

  if (sub_26941C9D4())
  {
    sub_26942008C();
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x26D63C060](0, v3);
    }

    else
    {
      v4 = *(v3 + 32);
    }

    v5 = v4;
    v6 = *(v0 + 48);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FDA8, &qword_2694275A0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_269427450;
    *(v7 + 32) = v5;
    v8 = v5;
    OUTLINED_FUNCTION_34_1();
    sub_269424278();
    OUTLINED_FUNCTION_97();

    [v6 setDialog_];
  }

  else
  {
  }

  OUTLINED_FUNCTION_71();
  v10 = *(v0 + 48);

  return v9(v10);
}

uint64_t sub_2693F375C()
{
  OUTLINED_FUNCTION_11_0();

  OUTLINED_FUNCTION_4_6();

  return v0();
}

uint64_t sub_2693F37B8()
{
  OUTLINED_FUNCTION_11_0();
  v1[25] = v2;
  v1[26] = v0;
  v1[23] = v3;
  v1[24] = v4;
  v5 = sub_269422D18();
  v1[27] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[28] = v6;
  v1[29] = OUTLINED_FUNCTION_82();
  v7 = type metadata accessor for SiriTranslationModels.SnippetTranslationItem(0);
  v1[30] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[31] = v8;
  v1[32] = OUTLINED_FUNCTION_69();
  v1[33] = swift_task_alloc();
  v9 = sub_2694233D8();
  v1[34] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v1[35] = v10;
  v1[36] = OUTLINED_FUNCTION_82();
  v11 = OUTLINED_FUNCTION_16_5();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2693F3904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_62();
  *(v14 + 144) = sub_26941C0F8(*(v14 + 192));
  *(v14 + 152) = v15;
  *(v14 + 296) = v15;
  if (!v15)
  {
    sub_2693FD35C();
    OUTLINED_FUNCTION_99();
    swift_allocError();
    *v19 = 0;
LABEL_13:
    swift_willThrow();

    OUTLINED_FUNCTION_4_6();
    OUTLINED_FUNCTION_44_0();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
  }

  v16 = sub_26941C104(*(v14 + 192));
  if (!v17)
  {
    goto LABEL_11;
  }

  v18.value = TranslationLanguages.init(rawValue:)(*&v16).value;
  *(v14 + 465) = v18;
  if (v18.value == SiriTranslationIntents_TranslationLanguages_unknownDefault)
  {
    goto LABEL_11;
  }

  v20 = *(v14 + 192);
  v21 = TranslationLanguages.getLocaleString()();
  *(v14 + 160) = v21;
  *(v14 + 304) = v21._object;
  *(v14 + 312) = sub_26941C110(v20);
  *(v14 + 320) = v22;
  if (!v22)
  {
    goto LABEL_10;
  }

  v23 = OUTLINED_FUNCTION_24_1();
  sub_26940BCAC(v23, v24);
  OUTLINED_FUNCTION_78();
  if (v55)
  {

LABEL_10:

LABEL_11:

    sub_2693FD35C();
    OUTLINED_FUNCTION_99();
    swift_allocError();
    v26 = 1;
LABEL_12:
    *v25 = v26;
    goto LABEL_13;
  }

  v36 = sub_26941FFC0(*(v14 + 200));
  if (!v36)
  {
    goto LABEL_25;
  }

  v37 = v36;
  if (!sub_26941C9D4())
  {

LABEL_25:

    sub_2693FD35C();
    OUTLINED_FUNCTION_99();
    swift_allocError();
    v26 = 2;
    goto LABEL_12;
  }

  sub_26942008C();
  if ((v37 & 0xC000000000000001) != 0)
  {
    v38 = MEMORY[0x26D63C060](0, v37);
  }

  else
  {
    v38 = *(v37 + 32);
  }

  v39 = v38;

  *(v14 + 328) = sub_26941C11C(v39);
  *(v14 + 336) = v40;
  if (!v40)
  {
    goto LABEL_25;
  }

  v41 = OUTLINED_FUNCTION_24_1();
  sub_26940BCAC(v41, v42);
  OUTLINED_FUNCTION_78();
  if (!v55)
  {
    v44 = sub_26940BD00(v43);
    sub_26940C05C(v44);
  }

  OUTLINED_FUNCTION_27_1();
  sub_2693F66D4();
  v46 = v45;
  v48 = v47;

  v49 = OUTLINED_FUNCTION_24_1();
  sub_26940BCAC(v49, v50);
  OUTLINED_FUNCTION_78();
  if (!v55)
  {
    v52 = sub_26940BD00(v51);
    v53 = sub_26940C22C(v52);
    v55 = v53 == 6649209 && v54 == 0xE300000000000000;
    if (v55)
    {
    }

    else
    {
      LODWORD(a10) = OUTLINED_FUNCTION_8_0(v53, v54);

      if ((a10 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_27_1();
    sub_2693F66D4();
    v46 = v56;
    v48 = v57;
  }

LABEL_35:
  *(v14 + 344) = v48;
  *(v14 + 352) = v46;
  if (!v48)
  {
LABEL_41:

    goto LABEL_11;
  }

  TranslationLanguages.getLocaleString()();
  OUTLINED_FUNCTION_27_1();
  sub_2693F66D4();
  v59 = v58;
  v61 = v60;

  *(v14 + 360) = v59;
  *(v14 + 368) = v61;
  if (!v61)
  {

    goto LABEL_41;
  }

  OUTLINED_FUNCTION_22_3(MEMORY[0x277D55C70]);
  v72 = v62;
  v63 = swift_task_alloc();
  *(v14 + 376) = v63;
  *v63 = v14;
  v63[1] = sub_2693F3D0C;
  OUTLINED_FUNCTION_44_0();

  return v67(v64, v65, v66, v67, v68, v69, v70, v71, a9, v72, a11, a12, a13, a14);
}

uint64_t sub_2693F3D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_59();
  v13 = v12;
  OUTLINED_FUNCTION_10_5();
  v15 = v14;
  OUTLINED_FUNCTION_8_4();
  *v16 = v15;
  v17 = *v11;
  OUTLINED_FUNCTION_9_0();
  *v18 = v17;

  if (v10)
  {

    OUTLINED_FUNCTION_4_6();
    OUTLINED_FUNCTION_73();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
  }

  else
  {
    *(v15 + 384) = v13;
    OUTLINED_FUNCTION_16_5();
    OUTLINED_FUNCTION_73();

    return MEMORY[0x2822009F8](v28, v29, v30);
  }
}

void sub_2693F3E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_50_0();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_62();
  a20 = v22;
  v25 = *(v22 + 384);
  v26 = [v25 dialog];

  sub_2693FD1B0();
  v27 = sub_269424288();

  if (sub_26941C9D4())
  {
    sub_26942008C();
    if ((v27 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x26D63C060](0, v27);
    }

    else
    {
      v28 = *(v27 + 32);
    }

    v29 = v28;

    v30 = [v29 fullPrint];

    v31 = sub_269424118();
    v33 = v32;
  }

  else
  {

    v31 = 0;
    v33 = 0;
  }

  *(v22 + 392) = v31;
  *(v22 + 400) = v33;
  *(v22 + 408) = OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_log;
  v34 = sub_269423FA8();
  v35 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v35))
  {
    OUTLINED_FUNCTION_33_1();
    v36 = swift_slowAlloc();
    OUTLINED_FUNCTION_20_0(v36);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v37, v38, v39, v40, v41, 2u);
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  v42 = sub_269423FA8();
  sub_269424368();
  OUTLINED_FUNCTION_110();
  v43 = OUTLINED_FUNCTION_84();
  v44 = *(v22 + 336);
  if (v43)
  {
    v45 = *(v22 + 328);
    v46 = OUTLINED_FUNCTION_17_0();
    v47 = OUTLINED_FUNCTION_16_0();
    a11 = v47;
    *v46 = 136315138;
    v48 = sub_2693DB6E0(v45, v44, &a11);

    *(v46 + 4) = v48;
    _os_log_impl(&dword_2693C9000, v42, v33, "TranslatedText. %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v47);
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  else
  {
  }

  v49 = sub_269423FA8();
  v50 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v50))
  {
    v51 = *(v22 + 465);
    OUTLINED_FUNCTION_17_0();
    v52 = OUTLINED_FUNCTION_3_6();
    a11 = v52;
    *v44 = 136315138;
    TranslationLanguages.rawValue.getter(v51);
    v55 = sub_2693DB6E0(v53, v54, &a11);

    *(v44 + 4) = v55;
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v56, v57, v58, v59, v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v52);
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  v61 = *(v22 + 344);

  v62 = sub_269423FA8();
  sub_269424368();
  OUTLINED_FUNCTION_110();
  if (OUTLINED_FUNCTION_84())
  {
    OUTLINED_FUNCTION_17_0();
    v63 = OUTLINED_FUNCTION_3_6();
    a11 = v63;
    *v61 = 136315138;
    OUTLINED_FUNCTION_72();
    v64 = sub_269424178();
    v66 = sub_2693DB6E0(v64, v65, &a11);

    *(v61 + 4) = v66;
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v67, v68, v69, v70, v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v63);
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  v72 = *(v22 + 368);

  v73 = sub_269423FA8();
  sub_269424368();
  OUTLINED_FUNCTION_110();
  if (OUTLINED_FUNCTION_84())
  {
    OUTLINED_FUNCTION_17_0();
    v74 = OUTLINED_FUNCTION_3_6();
    a11 = v74;
    *v72 = 136315138;
    OUTLINED_FUNCTION_94();
    v75 = sub_269424178();
    v77 = sub_2693DB6E0(v75, v76, &a11);

    *(v72 + 4) = v77;
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v78, v79, v80, v81, v82, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v74);
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  v83 = *(v22 + 200);
  v84 = *(v22 + 465);
  sub_2694233C8();
  TranslationLanguages.rawValue.getter(v84);
  sub_26941FFC0(v83);
  OUTLINED_FUNCTION_47_0();
  sub_2693FAAE8();
  v86 = v85;
  v88 = v87;

  *(v22 + 416) = v86;
  *(v22 + 466) = v88 & 1;

  v89 = sub_26941C9D4();
  v90 = MEMORY[0x277D84F90];
  if (v89)
  {
    v91 = v89;
    a11 = MEMORY[0x277D84F90];
    sub_26941F814(0, v89 & ~(v89 >> 63), 0);
    if (v91 < 0)
    {
      __break(1u);
      return;
    }

    v92 = 0;
    v93 = *(v22 + 248);
    v90 = a11;
    do
    {
      if ((v86 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D63C060](v92, v86);
      }

      else
      {
      }

      TranslationLanguages.rawValue.getter(*(v22 + 465));
      sub_2693F4AD8();

      a11 = v90;
      v95 = v90[2];
      v94 = v90[3];
      if (v95 >= v94 >> 1)
      {
        v98 = OUTLINED_FUNCTION_32_1(v94);
        sub_26941F814(v98, v95 + 1, 1);
        v90 = a11;
      }

      ++v92;
      v90[2] = v95 + 1;
      OUTLINED_FUNCTION_93();
      sub_2693FD3B0(v97, v90 + v96 + *(v93 + 72) * v95);
    }

    while (v91 != v92);
  }

  *(v22 + 424) = v90;
  v99 = v90[2];
  v100 = MEMORY[0x277D84F90];
  if (v99)
  {
    v101 = *(v22 + 248);
    a11 = MEMORY[0x277D84F90];
    sub_26941F7D4(0, v99, 0);
    v100 = a11;
    OUTLINED_FUNCTION_93();
    v103 = v90 + v102;
    v104 = *(v101 + 72);
    do
    {
      v105 = *(v22 + 256);
      sub_2693FD408(v103, v105);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
      sub_269422DB8();
      sub_2693FD460(v105, type metadata accessor for SiriTranslationModels.SnippetTranslationItem);
      v107 = *(v22 + 16);
      v106 = *(v22 + 24);
      a11 = v100;
      v109 = v100[2];
      v108 = v100[3];
      if (v109 >= v108 >> 1)
      {
        v111 = OUTLINED_FUNCTION_32_1(v108);
        sub_26941F7D4(v111, v109 + 1, 1);
        v100 = a11;
      }

      v100[2] = v109 + 1;
      v110 = &v100[2 * v109];
      v110[4] = v107;
      v110[5] = v106;
      v103 += v104;
      --v99;
    }

    while (v99);
  }

  *(v22 + 432) = v100;
  v112 = swift_task_alloc();
  *(v22 + 440) = v112;
  *v112 = v22;
  v112[1] = sub_2693F457C;
  OUTLINED_FUNCTION_44_0();

  sub_2693F32D0(v113);
}

uint64_t sub_2693F457C(uint64_t a1)
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_10_5();
  v4 = v3;
  OUTLINED_FUNCTION_8_4();
  *v5 = v4;
  *v5 = *v2;
  *(v4 + 448) = v6;
  *(v4 + 456) = v1;

  if (v1)
  {
  }

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2693F46FC()
{
  v45 = v0;
  v1 = *(v0 + 448);
  v2 = sub_269423FA8();
  sub_269424368();

  if (OUTLINED_FUNCTION_84())
  {
    v3 = *(v0 + 448);
    OUTLINED_FUNCTION_17_0();
    v4 = OUTLINED_FUNCTION_3_6();
    v44 = v4;
    *v1 = 136315138;
    v5 = [v3 debugDescription];
    v6 = sub_269424118();
    v8 = v7;

    v9 = sub_2693DB6E0(v6, v8, &v44);

    *(v1 + 1) = v9;
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  v15 = *(v0 + 424);
  v32 = *(v0 + 466);
  v16 = *(v0 + 400);
  v40 = *(v0 + 360);
  v41 = *(v0 + 368);
  v38 = *(v0 + 344);
  v39 = *(v0 + 352);
  v34 = *(v0 + 312);
  v35 = *(v0 + 320);
  v17 = *(v0 + 296);
  v33 = *(v0 + 304);
  v30 = *(v0 + 144);
  v31 = *(v0 + 160);
  v18 = *(v0 + 280);
  v42 = *(v0 + 272);
  v43 = *(v0 + 288);
  v20 = *(v0 + 224);
  v19 = *(v0 + 232);
  v21 = *(v0 + 216);
  if (v16)
  {
    v22 = *(v0 + 392);
  }

  else
  {
    v22 = 0;
  }

  if (!v16)
  {
    v16 = 0xE000000000000000;
  }

  v36 = v16;
  v37 = v22;
  sub_269422D08();
  v23 = sub_269422CF8();
  v25 = v24;
  (*(v20 + 8))(v19, v21);
  *(v0 + 176) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F998, &unk_269427590);
  sub_269422D98();
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  *(v0 + 32) = v23;
  *(v0 + 40) = v25;
  OUTLINED_FUNCTION_81(v0 + 32);
  *(v0 + 48) = v30;
  *(v0 + 56) = v17;
  OUTLINED_FUNCTION_81(v0 + 48);
  *(v0 + 464) = v32;
  sub_269422D98();
  *(v0 + 64) = v31;
  *(v0 + 72) = v33;
  OUTLINED_FUNCTION_81(v0 + 64);
  *(v0 + 80) = v34;
  *(v0 + 88) = v35;
  OUTLINED_FUNCTION_81(v0 + 80);
  *(v0 + 96) = v39;
  *(v0 + 104) = v38;
  OUTLINED_FUNCTION_81(v0 + 96);
  *(v0 + 112) = v40;
  *(v0 + 120) = v41;
  OUTLINED_FUNCTION_81(v0 + 112);
  *(v0 + 128) = v37;
  *(v0 + 136) = v36;
  OUTLINED_FUNCTION_81(v0 + 128);
  (*(v18 + 8))(v43, v42);

  v26 = *(v0 + 8);
  v27 = *(v0 + 448);
  v28 = *(v0 + 432);

  return v26(v27, v28);
}

uint64_t sub_2693F4A3C()
{
  OUTLINED_FUNCTION_23_2();
  (*(v0[35] + 8))(v0[36], v0[34]);

  OUTLINED_FUNCTION_4_6();

  return v1();
}

void sub_2693F4AD8()
{
  OUTLINED_FUNCTION_17_3();
  v3 = v2;
  sub_269422D18();
  OUTLINED_FUNCTION_2();
  v45 = v5;
  v46 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_5();
  v8 = v7 - v6;
  v9 = OUTLINED_FUNCTION_95();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  v12 = OUTLINED_FUNCTION_12_2(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_39_0();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v44 - v15;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_20();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v44 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v44 - v21;
  sub_2693FD290(v3 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_text, &v44 - v21, &qword_28030F610, &qword_269425760);
  v23 = sub_269423DA8();
  OUTLINED_FUNCTION_37_1(v22);
  if (v24)
  {
    sub_2693FD518(v22, &qword_28030F610, &qword_269425760);
    v50 = 0xE000000000000000;
    v51 = 0;
  }

  else
  {
    v25 = sub_269423D88();
    v50 = v26;
    v51 = v25;
    OUTLINED_FUNCTION_20_5();
    (*(v27 + 8))(v22, v23);
  }

  sub_2693FD290(v3 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_wordType, v20, &qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_37_1(v20);
  if (v24)
  {
    sub_2693FD518(v20, &qword_28030F610, &qword_269425760);
    v48 = 0;
    v49 = 0;
  }

  else
  {
    v28 = sub_269423D88();
    v48 = v29;
    v49 = v28;
    OUTLINED_FUNCTION_20_5();
    v30 = OUTLINED_FUNCTION_72();
    v31(v30);
  }

  sub_2693FD290(v3 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_definition, v1, &qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_37_1(v1);
  if (v24)
  {
    sub_2693FD518(v1, &qword_28030F610, &qword_269425760);
    v47 = 0;
    v33 = 0;
  }

  else
  {
    v47 = sub_269423D88();
    v33 = v32;
    OUTLINED_FUNCTION_20_5();
    (*(v34 + 8))(v1, v23);
  }

  sub_2693FD290(v3 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_identifier, v16, &qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_37_1(v16);
  if (v24)
  {
    sub_2693FD518(v16, &qword_28030F610, &qword_269425760);
    sub_269422D08();
    v36 = sub_269422CF8();
    v38 = v35;
    (*(v45 + 8))(v8, v46);
  }

  else
  {
    v36 = sub_269423D88();
    v38 = v37;
    OUTLINED_FUNCTION_20_5();
    (*(v39 + 8))(v16, v23);
  }

  sub_2693FD290(v3 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_romanization, v0, &qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_37_1(v0);
  if (v24)
  {
    sub_2693FD518(v0, &qword_28030F610, &qword_269425760);
    v40 = 0;
    v42 = 0;
  }

  else
  {
    v40 = sub_269423D88();
    v42 = v41;
    OUTLINED_FUNCTION_20_5();
    (*(v43 + 8))(v0, v23);
  }

  v52 = v51;
  v53 = v50;
  sub_269422D98();
  type metadata accessor for SiriTranslationModels.SnippetTranslationItem(0);
  v52 = v49;
  v53 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
  sub_269422D98();
  v52 = v47;
  v53 = v33;
  sub_269422D98();
  v52 = v36;
  v53 = v38;
  sub_269422D98();
  v52 = v40;
  v53 = v42;
  sub_269422D98();
  OUTLINED_FUNCTION_16_3();
}

uint64_t sub_2693F4FC4()
{
  OUTLINED_FUNCTION_11_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = type metadata accessor for TranslateMultipleResultsParameters(0);
  v1[6] = v5;
  OUTLINED_FUNCTION_12_2(v5);
  v1[7] = OUTLINED_FUNCTION_82();
  v6 = OUTLINED_FUNCTION_16_5();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2693F5044(uint64_t a1)
{
  v1[8] = OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_log;
  v2 = sub_269423FA8();
  v3 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v3))
  {
    OUTLINED_FUNCTION_33_1();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_20_0(v4);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  v11 = v1[6];
  v10 = v1[7];
  v12 = v1[5];
  v13 = v1[2];
  v14 = v1[3];
  v50 = v14;

  v15 = sub_26941C104(v13);
  v1[9] = v16;
  if (v16)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  v55 = v17;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0xE000000000000000;
  }

  v19 = sub_26941C110(v13);
  v1[10] = v20;
  if (v20)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  v57 = v21;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0xE000000000000000;
  }

  v48 = v22;
  sub_26941FFC0(v14);
  sub_2693FAAE8();
  v24 = v23;
  HIDWORD(v54) = v25;
  v1[11] = v23;

  v26 = __swift_project_boxed_opaque_existential_1((v12 + OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_translatePatternProvider), *(v12 + OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_translatePatternProvider + 24));
  HIDWORD(v52) = sub_269423398();
  HIDWORD(v49) = sub_2694233B8();
  LODWORD(v49) = sub_2694233A8();
  v27 = sub_269423388();
  v56 = *v26;
  v28 = sub_269423DA8();
  v53 = v13;

  v51 = v50;
  OUTLINED_FUNCTION_21_3();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v28);
  OUTLINED_FUNCTION_21_3();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v28);
  OUTLINED_FUNCTION_21_3();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v28);
  OUTLINED_FUNCTION_21_3();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v28);
  *v10 = 1;
  *(v10 + 8) = 0;
  *(v10 + 16) = 1;
  *(v10 + 17) = BYTE4(v52) & 1;
  *(v10 + 18) = BYTE4(v49) & 1;
  *(v10 + 19) = v49 & 1;
  *(v10 + 20) = v27 & 1;
  *(v10 + 24) = v24;
  *(v10 + 32) = 0;
  *(v10 + 40) = 1;
  *(v10 + v11[15]) = BYTE4(v54) & 1;
  v41 = v10 + v11[18];
  *v41 = 0;
  *(v41 + 8) = 1;
  v42 = v10 + v11[19];
  *v42 = 0;
  *(v42 + 8) = 1;

  sub_2693F60F8(v10, v53, v12, v55, v18, v57, v48, v51, type metadata accessor for TranslateMultipleResultsParameters, type metadata accessor for TranslateMultipleResultsParameters, v47, v48, v49, v51, v52, v18, v53, v54, v55, v56, v57, v59);
  v43 = sub_2693CCD20();
  v1[12] = v43;
  OUTLINED_FUNCTION_22_3(MEMORY[0x277D55BE8]);
  v58 = v44;
  v45 = swift_task_alloc();
  v1[13] = v45;
  *v45 = v1;
  v45[1] = sub_2693F53A8;

  return v58(0xD000000000000019, 0x8000000269429DC0, v43);
}

uint64_t sub_2693F53A8()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_15_6();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v5 = v4;
  *(v7 + 112) = v6;
  *(v7 + 120) = v0;

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2693F54C4()
{
  OUTLINED_FUNCTION_103();
  v27 = v1;
  v28 = v2;
  OUTLINED_FUNCTION_58();
  v26 = v0;
  v3 = v0[14];
  v5 = v0[2];
  v4 = v0[3];
  OUTLINED_FUNCTION_92();
  sub_2693FD460(v6, type metadata accessor for TranslateMultipleResultsParameters);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v7 = v3;
  v8 = sub_269423FA8();
  sub_269424368();

  if (OUTLINED_FUNCTION_84())
  {
    v9 = v0[14];
    OUTLINED_FUNCTION_17_0();
    v10 = OUTLINED_FUNCTION_3_6();
    v25 = v10;
    *v7 = 136315138;
    v11 = v9;
    v12 = [v11 description];
    v13 = sub_269424118();
    v15 = v14;

    v16 = sub_2693DB6E0(v13, v15, &v25);

    *(v7 + 1) = v16;
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  OUTLINED_FUNCTION_71();
  v23 = v0[14];

  return v22(v23);
}

uint64_t sub_2693F5684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_59();
  v11 = v10[7];
  v13 = v10[2];
  v12 = v10[3];
  OUTLINED_FUNCTION_92();
  sub_2693FD460(v11, type metadata accessor for TranslateMultipleResultsParameters);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_73();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_2693F5758()
{
  OUTLINED_FUNCTION_11_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_12_2(v5);
  v1[6] = OUTLINED_FUNCTION_82();
  v6 = type metadata accessor for TranslateSingleItemResultParameters(0);
  v1[7] = v6;
  OUTLINED_FUNCTION_12_2(v6);
  v1[8] = OUTLINED_FUNCTION_82();
  v7 = OUTLINED_FUNCTION_16_5();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

char *sub_2693F5804(uint64_t a1)
{
  v2[9] = OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_log;
  v3 = sub_269423FA8();
  v4 = sub_269424368();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_33_1();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_20_0(v5);
    _os_log_impl(&dword_2693C9000, v3, v4, "Creating response for multiple translation results.", v1, 2u);
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  v7 = v2[2];
  v6 = v2[3];

  v8 = sub_26941C104(v7);
  v2[10] = v9;
  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  v12 = sub_26941C110(v7);
  v75 = v13;
  v2[11] = v13;
  sub_26941FFC0(v6);
  sub_2693FAAE8();
  v15 = v14;
  v17 = v16;
  v2[12] = v14;

  v80 = v15;
  v18 = sub_26941C9D4();
  v19 = MEMORY[0x277D84F90];
  v78 = v11;
  v79 = v10;
  HIDWORD(v77) = v17;
  if (v18)
  {
    v20 = v18;
    v82 = MEMORY[0x277D84F90];
    result = sub_26941F7D4(0, v18 & ~(v18 >> 63), 0);
    if (v20 < 0)
    {
      __break(1u);
      return result;
    }

    v73 = v12;
    v22 = 0;
    v19 = v82;
    do
    {
      if ((v80 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D63C060](v22, v80);
      }

      else
      {
      }

      v23 = v2[6];
      OUTLINED_FUNCTION_48_0();
      sub_2693FD290(v24, v25, v26, &qword_269425760);
      v27 = sub_269423DA8();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v23, 1, v27);
      v29 = v2[6];
      if (EnumTagSinglePayload == 1)
      {
        v30 = OUTLINED_FUNCTION_61();
        sub_2693FD518(v30, v31, &qword_269425760);
        v32 = 0;
        v33 = 0xE000000000000000;
      }

      else
      {
        v32 = sub_269423D88();
        v33 = v34;
        OUTLINED_FUNCTION_20_5();
        (*(v35 + 8))(v29, v27);
      }

      v37 = *(v82 + 16);
      v36 = *(v82 + 24);
      if (v37 >= v36 >> 1)
      {
        v39 = OUTLINED_FUNCTION_32_1(v36);
        sub_26941F7D4(v39, v37 + 1, 1);
      }

      ++v22;
      *(v82 + 16) = v37 + 1;
      v38 = v82 + 16 * v37;
      *(v38 + 32) = v32;
      *(v38 + 40) = v33;
    }

    while (v20 != v22);
    v12 = v73;
  }

  if (v75)
  {
    v40 = v75;
  }

  else
  {
    v40 = 0xE000000000000000;
  }

  v71 = v40;
  if (v75)
  {
    v41 = v12;
  }

  else
  {
    v41 = 0;
  }

  v74 = v41;
  v2[13] = v19;
  v43 = v2[7];
  v42 = v2[8];
  v44 = v2[5];
  v45 = v2[2];
  v68 = v2[3];
  v46 = __swift_project_boxed_opaque_existential_1((v44 + OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_translatePatternProvider), *(v44 + OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_translatePatternProvider + 24));
  HIDWORD(v70) = sub_269423398();
  LODWORD(v70) = sub_2694233B8();
  HIDWORD(v69) = sub_2694233A8();
  v47 = sub_269423388();
  v76 = *v46;
  v48 = sub_269423DA8();
  v72 = v45;

  v49 = v68;
  OUTLINED_FUNCTION_21_3();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v48);
  OUTLINED_FUNCTION_21_3();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v48);
  OUTLINED_FUNCTION_21_3();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v48);
  OUTLINED_FUNCTION_21_3();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v48);
  *v42 = 1;
  *(v42 + 8) = 0;
  *(v42 + 16) = 1;
  *(v42 + 17) = BYTE4(v70) & 1;
  *(v42 + 18) = v70 & 1;
  *(v42 + 19) = BYTE4(v69) & 1;
  *(v42 + 20) = v47 & 1;
  *(v42 + 24) = v80;
  *(v42 + 32) = 0;
  *(v42 + 40) = 1;
  *(v42 + v43[15]) = BYTE4(v77) & 1;
  v62 = v42 + v43[18];
  *v62 = 0;
  *(v62 + 8) = 1;
  v63 = v42 + v43[19];
  *v63 = 0;
  *(v63 + 8) = 1;

  sub_2693F60F8(v42, v72, v44, v79, v78, v74, v71, v49, type metadata accessor for TranslateSingleItemResultParameters, type metadata accessor for TranslateSingleItemResultParameters, v67, v68, v69, v70, v71, v72, v74, v76, v77, v78, v79, v80);
  v64 = sub_2693CCA0C();
  v2[14] = v64;
  OUTLINED_FUNCTION_22_3(MEMORY[0x277D55BE8]);
  v81 = v65;
  v66 = swift_task_alloc();
  v2[15] = v66;
  *v66 = v2;
  v66[1] = sub_2693F5D18;

  return v81(0xD00000000000001ALL, 0x8000000269429DA0, v64);
}

uint64_t sub_2693F5D18()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_15_6();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v5 = v4;
  *(v7 + 128) = v6;
  *(v7 + 136) = v0;

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2693F5E34()
{
  OUTLINED_FUNCTION_103();
  v28 = v1;
  v29 = v2;
  OUTLINED_FUNCTION_58();
  v27 = v0;
  v3 = v0[16];
  v5 = v0[2];
  v4 = v0[3];
  OUTLINED_FUNCTION_92();
  sub_2693FD460(v6, type metadata accessor for TranslateSingleItemResultParameters);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v7 = v3;
  v8 = sub_269423FA8();
  sub_269424368();

  if (OUTLINED_FUNCTION_84())
  {
    v9 = v0[16];
    OUTLINED_FUNCTION_17_0();
    v10 = OUTLINED_FUNCTION_3_6();
    v26 = v10;
    *v7 = 136315138;
    v11 = v9;
    v12 = [v11 description];
    v13 = sub_269424118();
    v15 = v14;

    v16 = sub_2693DB6E0(v13, v15, &v26);

    *(v7 + 1) = v16;
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  v22 = v0[1];
  v23 = v0[16];
  v24 = v0[13];

  return v22(v23, v24);
}

void sub_2693F6008(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_58();
  v9 = v8[8];
  v11 = v8[2];
  v10 = v8[3];
  OUTLINED_FUNCTION_92();
  sub_2693FD460(v9, type metadata accessor for TranslateSingleItemResultParameters);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_102();

  __asm { BRAA            X1, X16 }
}

void sub_2693F60F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t (*a21)(void), void (*a22)(void))
{
  OUTLINED_FUNCTION_17_3();
  v115 = v23;
  v122 = v25;
  v123 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = a21(0);
  OUTLINED_FUNCTION_4_5();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_3_7();
  v114 = v36;
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v37);
  v116 = &v112 - v38;
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v39);
  v121 = &v112 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  v42 = OUTLINED_FUNCTION_12_2(v41);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_3_7();
  v113 = v43;
  OUTLINED_FUNCTION_21_2();
  v45 = MEMORY[0x28223BE20](v44);
  v47 = &v112 - v46;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v48);
  v50 = &v112 - v49;
  v51 = sub_26941C0F8(v31);
  if (v52)
  {
    v53 = v51;
  }

  else
  {
    v53 = 0;
  }

  if (v52)
  {
    v54 = v52;
  }

  else
  {
    v54 = 0xE000000000000000;
  }

  v117 = v53;
  v118 = v54;
  OUTLINED_FUNCTION_10_6();
  sub_269423D78();
  v55 = sub_269423DA8();
  OUTLINED_FUNCTION_11_4();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v55);
  v59 = v34[13];
  v124 = v33;
  sub_2693FD2EC(v50, v33 + v59);

  v119 = v29;
  v120 = v27;
  v60._countAndFlagsBits = OUTLINED_FUNCTION_94();
  if (TranslationLanguages.init(rawValue:)(v60).value != SiriTranslationIntents_TranslationLanguages_unknownDefault)
  {
    TranslationLanguages.getLocaleString()();
  }

  OUTLINED_FUNCTION_27_1();
  sub_2693F66D4();
  v62 = v61;

  if (!v62)
  {
  }

  v63 = v123;
  OUTLINED_FUNCTION_10_6();
  sub_269423D78();
  OUTLINED_FUNCTION_11_4();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v55);
  sub_2693FD2EC(v22, v124 + v34[17]);
  v67 = v122;

  sub_26940BCAC(v63, v67);
  OUTLINED_FUNCTION_78();
  if (v88)
  {
    v70 = 0;
    v72 = 0xE000000000000000;
  }

  else
  {
    v69 = sub_26940BD00(v68);
    v70 = sub_26940C05C(v69);
    v72 = v71;
  }

  v73 = static TranslationLanguages.getByLocale(locale:)(v70, v72);

  if (v73 != 23)
  {
    TranslationLanguages.getLocaleString()();
  }

  OUTLINED_FUNCTION_27_1();
  sub_2693F66D4();
  v75 = v74;

  v76 = v122;
  if (!v75)
  {
  }

  OUTLINED_FUNCTION_10_6();
  sub_269423D78();
  OUTLINED_FUNCTION_11_4();
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v55);
  v80 = v34[16];
  sub_2693FD2EC(v47, v124 + v80);

  v81 = OUTLINED_FUNCTION_38_0();
  sub_26940BCAC(v81, v82);
  OUTLINED_FUNCTION_78();
  v84 = v76;
  if (!v88)
  {
    v85 = sub_26940BD00(v83);
    v86 = sub_26940C22C(v85);
    v88 = v86 == 6649209 && v87 == 0xE300000000000000;
    if (v88)
    {
    }

    else
    {
      v89 = OUTLINED_FUNCTION_8_0(v86, v87);

      if ((v89 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    OUTLINED_FUNCTION_27_1();
    sub_2693F66D4();
    OUTLINED_FUNCTION_31_1(v90, v91);
    v92 = v113;
    OUTLINED_FUNCTION_10_6();
    sub_269423D78();
    v93 = OUTLINED_FUNCTION_9_5();
    __swift_storeEnumTagSinglePayload(v93, v94, v95, v55);
    sub_2693FD2EC(v92, v124 + v80);
  }

LABEL_27:
  if (sub_26941FFC0(v115))
  {
    v96 = sub_26941C9D4();

    v97 = v96;
  }

  else
  {
    v97 = 0.0;
  }

  v98 = v124;
  v99 = v124 + v34[18];
  *v99 = v97;
  *(v99 + 8) = 0;
  v100 = v121;
  sub_2693FD408(v98, v121);
  v101 = v100;
  v102 = v116;
  sub_2693FD408(v101, v116);
  v103 = sub_269423FA8();
  v104 = sub_269424368();
  if (os_log_type_enabled(v103, v104))
  {
    v105 = OUTLINED_FUNCTION_17_0();
    v106 = OUTLINED_FUNCTION_16_0();
    v125[0] = v106;
    *v105 = 136315138;
    sub_2693FD408(v102, v114);
    v107 = sub_269424128();
    v109 = v108;
    sub_2693FD460(v102, a22);
    v110 = sub_2693DB6E0(v107, v109, v125);

    *(v105 + 4) = v110;
    _os_log_impl(&dword_2693C9000, v103, v104, "Got parameters for CAT: %s", v105, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v106);
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
    v84 = v122;
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  else
  {

    sub_2693FD460(v102, a22);
  }

  v111 = v123;
  type metadata accessor for TranslationUtil();
  sub_269423018();
  sub_2693D6934(v111, v84, v119, v120, v117, v118, v50);

  __swift_destroy_boxed_opaque_existential_1(v125);
  sub_2693FD460(v121, a22);
  sub_2693FD2EC(v50, v124 + v34[14]);
  OUTLINED_FUNCTION_16_3();
}

void sub_2693F66D4()
{
  OUTLINED_FUNCTION_17_3();
  v61 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_12_2(v8);
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x28223BE20](v9);
  v11 = &v57 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FCA0, &unk_269427210);
  OUTLINED_FUNCTION_4_5();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v14);
  v63 = &v57 - v15;
  v16 = OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_log;

  v62 = v16;
  v17 = sub_269423FA8();
  v18 = sub_269424368();

  v19 = os_log_type_enabled(v17, v18);
  v64 = v7;
  if (v19)
  {
    v20 = OUTLINED_FUNCTION_17_0();
    v58 = v3;
    v21 = v20;
    v22 = OUTLINED_FUNCTION_16_0();
    v59 = v12;
    v60 = v0;
    v23 = v22;
    v67 = v22;
    *v21 = 136315138;
    v69 = v7;
    v70 = v5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
    v24 = sub_269424128();
    v26 = sub_2693DB6E0(v24, v25, &v67);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_2693C9000, v17, v18, "Generating localized language: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    v0 = v60;
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
    v3 = v58;
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  if (v5)
  {
    v27 = v64;
    v28 = static TranslationLanguages.getByLocale(locale:)(v64, v5);
    if (v28 == 23)
    {

      sub_2693D8BA0(v27, v5);
      OUTLINED_FUNCTION_76();
      v29 = v63;
      switch(v30)
      {
        case 1:
          OUTLINED_FUNCTION_19_1();
          break;
        case 2:
          OUTLINED_FUNCTION_87();
          break;
        case 3:
          OUTLINED_FUNCTION_63();
          break;
        default:
          break;
      }
    }

    else
    {
      sub_2693D768C(v28);
      v29 = v63;
    }

    OUTLINED_FUNCTION_10_6();
    sub_269423D78();
    sub_269423DA8();
    OUTLINED_FUNCTION_11_4();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
    sub_26940A12C(v11, v3, v61);
    sub_2693FD518(v11, &qword_28030F610, &qword_269425760);
    sub_2693FD290(v29, v0, &qword_28030FCA0, &unk_269427210);
    v35 = sub_269423FA8();
    v36 = sub_269424368();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = OUTLINED_FUNCTION_17_0();
      v38 = OUTLINED_FUNCTION_16_0();
      v67 = v38;
      *v37 = 136315138;
      v69 = sub_269424768();
      v70 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
      sub_269424128();
      OUTLINED_FUNCTION_74();
      sub_2693FD518(v0, &qword_28030FCA0, &unk_269427210);
      v40 = OUTLINED_FUNCTION_34_1();
      v43 = sub_2693DB6E0(v40, v41, v42);

      *(v37 + 4) = v43;
      _os_log_impl(&dword_2693C9000, v35, v36, "Unedited language: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      OUTLINED_FUNCTION_12_5();
      MEMORY[0x26D63C8E0]();
      OUTLINED_FUNCTION_12_5();
      MEMORY[0x26D63C8E0]();
    }

    else
    {

      sub_2693FD518(v0, &qword_28030FCA0, &unk_269427210);
    }

    v44 = sub_269424768();
    if (v45)
    {
      v69 = v44;
      v70 = v45;
      v67 = 125;
      v68 = 0xE100000000000000;
      v65 = 0;
      v66 = 0xE000000000000000;
      sub_2693D50A4();
      OUTLINED_FUNCTION_10_6();
      v50 = OUTLINED_FUNCTION_105(v46, v47, v48, v49);
      v52 = v51;

      v69 = v50;
      v70 = v52;
      v67 = 123;
      v68 = 0xE100000000000000;
      v65 = 0;
      v66 = 0xE000000000000000;
      OUTLINED_FUNCTION_10_6();
      OUTLINED_FUNCTION_105(v53, v54, v55, v56);
      OUTLINED_FUNCTION_74();
    }

    sub_2693FD518(v29, &qword_28030FCA0, &unk_269427210);
  }

  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_16_3();
}

uint64_t sub_2693F6BF4()
{
  OUTLINED_FUNCTION_11_0();
  v1[26] = v2;
  v1[27] = v0;
  v1[25] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_12_2(v4);
  v1[28] = OUTLINED_FUNCTION_69();
  v1[29] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_16_5();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2693F6C88(uint64_t a1)
{
  v93 = v1;
  v6 = sub_269423FA8();
  v7 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v7))
  {
    OUTLINED_FUNCTION_33_1();
    v8 = swift_slowAlloc();
    OUTLINED_FUNCTION_20_0(v8);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v9, v10, v11, v12, v13, 2u);
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  v14 = *(v90 + 200);

  v15 = sub_26941C104(v14);
  v17 = OUTLINED_FUNCTION_31_1(v15, v16);
  if (v19)
  {
    v18 = 0xE000000000000000;
  }

  sub_2693D8BA0(v17, v18);
  OUTLINED_FUNCTION_13_4();
  v22 = 0;
  v23 = 0;
  switch(v24)
  {
    case 1:
      OUTLINED_FUNCTION_24_2();
      goto LABEL_8;
    case 2:
      OUTLINED_FUNCTION_23_3();
      goto LABEL_8;
    case 3:
      goto LABEL_9;
    default:
LABEL_8:
      v22 = v21;
      v23 = v20;
LABEL_9:
      *(v90 + 240) = v23;
      v25 = sub_26941C104(*(v90 + 200));
      v27 = OUTLINED_FUNCTION_31_1(v25, v26);
      if (v19)
      {
        v28 = 0xE000000000000000;
      }

      v29 = sub_2693D8BA0(v27, v28);
      if (v29 == 3)
      {
        v30 = sub_2693D737C();
      }

      else
      {
        v30 = sub_2693D861C(v29);
      }

      v87 = v23;
      v31 = *(v30 + 16);
      v32 = MEMORY[0x277D84F90];
      if (v31)
      {
        v4 = v30 + 32;
        v33 = MEMORY[0x277D84F90];
        LOBYTE(v5) = 0;
        do
        {
          v34 = *v4++;
          v2 = v34;
          v35 = sub_26941C110(*(v90 + 200));
          v37 = OUTLINED_FUNCTION_31_1(v35, v36);
          if (v19)
          {
            v39 = 0xE000000000000000;
          }

          else
          {
            v39 = v38;
          }

          v3 = sub_2693D7A2C(v37, v39, v2);

          if (v3)
          {
            v91 = v33;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_83();
              v33 = v91;
            }

            OUTLINED_FUNCTION_70();
            if (v41)
            {
              v42 = OUTLINED_FUNCTION_32_1(v40);
              sub_26941F7F4(v42, v3, 1);
            }

            OUTLINED_FUNCTION_85();
          }

          --v31;
        }

        while (v31);
      }

      else
      {
        v33 = MEMORY[0x277D84F90];
      }

      v43 = *(v33 + 16);
      if (v43)
      {
        v91 = v32;
        v44 = &v91;
        sub_269424518();
        OUTLINED_FUNCTION_101();
        v85 = v33;
        v86 = v22;
        v84 = v43;
        do
        {
          if (v3 >= *(v33 + 16))
          {
            __break(1u);
            goto LABEL_51;
          }

          v45 = *(v90 + 200);
          OUTLINED_FUNCTION_104();
          v47 = v46;
          v49 = v48;
          sub_26941C0F8(v45);
          OUTLINED_FUNCTION_88();
          if (v19)
          {
            v51 = 0xE000000000000000;
          }

          else
          {
            v51 = v50;
          }

          type metadata accessor for TranslateAction();
          v52 = swift_allocObject();
          v52[2] = v47;
          v52[3] = v49;
          v52[4] = v45;
          v52[5] = v51;
          v53 = objc_allocWithZone(MEMORY[0x277D5C218]);

          v54 = OUTLINED_FUNCTION_36_1([v53 init]);
          sub_2694243F8();

          v55 = type metadata accessor for TranslationLanguage.Builder(0);
          v56 = OUTLINED_FUNCTION_10_2(v55);
          v57 = OBJC_IVAR____TtCC22SiriTranslationIntents19TranslationLanguage7Builder_language;
          v4 = sub_269423DA8();
          OUTLINED_FUNCTION_21_3();
          __swift_storeEnumTagSinglePayload(v58, v59, v60, v4);
          v32 = OBJC_IVAR____TtCC22SiriTranslationIntents19TranslationLanguage7Builder_translateAction;
          OUTLINED_FUNCTION_21_3();
          __swift_storeEnumTagSinglePayload(v61, v62, v63, v4);
          TranslationLanguages.getLocaleString()();

          OUTLINED_FUNCTION_61();
          sub_2693F66D4();
          OUTLINED_FUNCTION_100();

          if (!v49)
          {
            TranslationLanguages.rawValue.getter(v31);
            OUTLINED_FUNCTION_100();
          }

          v64 = *(v90 + 224);
          v65 = *(v90 + 232);
          OUTLINED_FUNCTION_72();
          OUTLINED_FUNCTION_10_6();
          sub_269423D78();
          OUTLINED_FUNCTION_11_4();
          __swift_storeEnumTagSinglePayload(v66, v67, v68, v4);
          OUTLINED_FUNCTION_64(v56 + v57, v90 + 152);
          sub_2693FD020(v65, v56 + v57);
          swift_endAccess();
          v2 = &qword_269425760;
          sub_2693FD518(v65, &qword_28030F610, &qword_269425760);
          v3 = v89 + 1;
          OUTLINED_FUNCTION_10_6();
          sub_269423D78();
          OUTLINED_FUNCTION_11_4();
          __swift_storeEnumTagSinglePayload(v69, v70, v71, v4);
          OUTLINED_FUNCTION_64(v56 + v32, v90 + 176);
          sub_2693FD020(v64, v56 + v32);
          swift_endAccess();
          v72 = OUTLINED_FUNCTION_61();
          sub_2693FD518(v72, v73, &qword_269425760);
          v74 = type metadata accessor for TranslationLanguage(0);
          OUTLINED_FUNCTION_10_2(v74);
          v75 = OUTLINED_FUNCTION_97();
          sub_2694025F4(v75);

          sub_2694244F8();
          v31 = *(v91 + 16);
          OUTLINED_FUNCTION_86();
          sub_269424528();
          OUTLINED_FUNCTION_86();
          sub_269424538();
          v44 = &v91;
          sub_269424508();
          v43 = v84;
          v33 = v85;
          v22 = v86;
          v5 = v87;
        }

        while (v84 != v89 + 1);

        v43 = v91;
      }

      else
      {

        v43 = MEMORY[0x277D84F90];
        v5 = v87;
      }

      *(v90 + 248) = v5;
      *(v90 + 256) = v43;
      v87 = v5;
      sub_2693FD4B8(*(v90 + 216) + OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_translatePatternProvider, v90 + 112);
      __swift_project_boxed_opaque_existential_1((v90 + 112), *(v90 + 136));
      LOBYTE(v2) = sub_269423398();
      LOBYTE(v3) = sub_2694233B8();
      LOBYTE(v4) = sub_2694233A8();
      LOBYTE(v44) = sub_269423388();
      *(v90 + 296) = 1;
      *(v90 + 304) = 1;
      *(v90 + 312) = 1;
      LOBYTE(v33) = 1;
      LOBYTE(v5) = 1;
      LOBYTE(v32) = 1;

      v31 = v22;
      if (!(v43 >> 62))
      {
        v76 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_41;
      }

LABEL_51:
      v76 = sub_269424588();
LABEL_41:
      v92 = 0;
      *(v90 + 16) = 0;
      v77 = v2 & 1;
      *(v90 + 24) = 0;
      *(v90 + 32) = v33;
      if (v87)
      {
        v78 = v87;
      }

      else
      {
        v78 = 0xE000000000000000;
      }

      if (v87)
      {
        v79 = v31;
      }

      else
      {
        v79 = 0;
      }

      *(v90 + 33) = v77;
      *(v90 + 34) = v3 & 1;
      *(v90 + 35) = v4 & 1;
      *(v90 + 36) = v44 & 1;
      *(v90 + 40) = v43;
      *(v90 + 48) = v79;
      *(v90 + 56) = v78;
      *(v90 + 64) = 0;
      *(v90 + 72) = v5;
      *(v90 + 80) = v76;
      *(v90 + 88) = 0;
      *(v90 + 96) = 0;
      *(v90 + 104) = v32;
      v80 = sub_2693CCA24();
      *(v90 + 264) = v80;

      sub_2693FD23C(v90 + 16);
      OUTLINED_FUNCTION_22_3(MEMORY[0x277D55BE8]);
      v88 = v81;
      v82 = swift_task_alloc();
      *(v90 + 272) = v82;
      *v82 = v90;
      v82[1] = sub_2693F731C;

      return v88(0xD000000000000020, 0x8000000269429D70, v80);
  }
}