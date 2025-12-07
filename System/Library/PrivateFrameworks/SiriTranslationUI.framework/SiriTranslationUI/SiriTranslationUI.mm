uint64_t TranslationSnippetProvider.snippet(for:mode:idiom:)(uint64_t a1)
{
  type metadata accessor for DisambiguateTranslationSnippet(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1();
  v5 = v4 - v3;
  v6 = type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(0);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for TranslationResultSnippet(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  v15 = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  MEMORY[0x28223BE20](v15 - 8);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  type metadata accessor for SiriTranslationModels(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1();
  v22 = v21 - v20;
  sub_269439B34(a1, v21 - v20, type metadata accessor for SiriTranslationModels);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_269439AD4(v22, v9, type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel);
    sub_269439B34(v9, v5, type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel);
    sub_269448EB4();
    sub_269439C4C(&qword_2803150D0, type metadata accessor for DisambiguateTranslationSnippet, &unk_26944A3D0);
    v23 = sub_269448DC4();
    sub_269439B94(v5, type metadata accessor for DisambiguateTranslationSnippet);
    v24 = type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel;
    v25 = v9;
  }

  else
  {
    sub_269439AD4(v22, v18, type metadata accessor for SiriTranslationModels.SiriTranslationResultModel);
    sub_269439B34(v18, v14 + *(v10 + 20), type metadata accessor for SiriTranslationModels.SiriTranslationResultModel);
    v26 = sub_269448C74();
    sub_269448CB4();
    OUTLINED_FUNCTION_0();
    (*(v27 + 16))(v14, v26);
    sub_269448EB4();
    sub_269439C4C(&qword_2803150D8, type metadata accessor for TranslationResultSnippet, &unk_26944A13C);
    v23 = sub_269448DC4();
    sub_269439B94(v14, type metadata accessor for TranslationResultSnippet);
    v24 = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel;
    v25 = v18;
  }

  sub_269439B94(v25, v24);
  return v23;
}

uint64_t sub_269439AD4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_269439B34(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_269439B94(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_269439C4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_269439C94@<X0>(uint64_t *a1@<X8>)
{
  result = TranslationSnippetProvider.__allocating_init()();
  *a1 = result;
  return result;
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

uint64_t SiriTranslationModels.SiriTranslationResultModel.sourceLanguageLocale.getter()
{
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  OUTLINED_FUNCTION_41(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t SiriTranslationModels.SiriTranslationResultModel.targetLanguageLocale.getter()
{
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  OUTLINED_FUNCTION_41(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t sub_269439E9C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SiriTranslationModels.SnippetTranslationItem.text.setter(v1, v2);
}

uint64_t (*SiriTranslationModels.SnippetTranslationItem.text.modify())()
{
  v1 = OUTLINED_FUNCTION_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_11(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  *(v0 + 32) = OUTLINED_FUNCTION_58(v3);
  return sub_269441CA4;
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
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150F0, &qword_2694494E8);
  OUTLINED_FUNCTION_41(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t SiriTranslationModels.SnippetTranslationItem.wordType.setter()
{
  v0 = OUTLINED_FUNCTION_18();
  type metadata accessor for SiriTranslationModels.SnippetTranslationItem(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150F0, &qword_2694494E8);
  return OUTLINED_FUNCTION_15(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t (*SiriTranslationModels.SnippetTranslationItem.wordType.modify())()
{
  v1 = OUTLINED_FUNCTION_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3(v2);
  type metadata accessor for SiriTranslationModels.SnippetTranslationItem(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150F0, &qword_2694494E8);
  *(v0 + 32) = OUTLINED_FUNCTION_10(v4);
  return sub_269441CA4;
}

uint64_t SiriTranslationModels.SnippetTranslationItem.definition.getter()
{
  type metadata accessor for SiriTranslationModels.SnippetTranslationItem(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150F0, &qword_2694494E8);
  OUTLINED_FUNCTION_41(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t SiriTranslationModels.SnippetTranslationItem.definition.setter()
{
  v0 = OUTLINED_FUNCTION_18();
  type metadata accessor for SiriTranslationModels.SnippetTranslationItem(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150F0, &qword_2694494E8);
  return OUTLINED_FUNCTION_15(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t (*SiriTranslationModels.SnippetTranslationItem.definition.modify())()
{
  v1 = OUTLINED_FUNCTION_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3(v2);
  type metadata accessor for SiriTranslationModels.SnippetTranslationItem(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150F0, &qword_2694494E8);
  *(v0 + 32) = OUTLINED_FUNCTION_10(v4);
  return sub_26943A1A4;
}

uint64_t SiriTranslationModels.SnippetTranslationItem.id.getter()
{
  type metadata accessor for SiriTranslationModels.SnippetTranslationItem(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  OUTLINED_FUNCTION_41(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t SiriTranslationModels.SnippetTranslationItem.id.setter()
{
  v0 = OUTLINED_FUNCTION_18();
  type metadata accessor for SiriTranslationModels.SnippetTranslationItem(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  return OUTLINED_FUNCTION_15(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t (*SiriTranslationModels.SnippetTranslationItem.id.modify())()
{
  v1 = OUTLINED_FUNCTION_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3(v2);
  type metadata accessor for SiriTranslationModels.SnippetTranslationItem(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  *(v0 + 32) = OUTLINED_FUNCTION_10(v4);
  return sub_269441CA4;
}

uint64_t SiriTranslationModels.SnippetTranslationItem.romanization.getter()
{
  type metadata accessor for SiriTranslationModels.SnippetTranslationItem(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150F0, &qword_2694494E8);
  OUTLINED_FUNCTION_41(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t sub_26943A338(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];

  return a5(v6, v7);
}

uint64_t SiriTranslationModels.SnippetTranslationItem.romanization.setter()
{
  v0 = OUTLINED_FUNCTION_18();
  type metadata accessor for SiriTranslationModels.SnippetTranslationItem(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150F0, &qword_2694494E8);
  return OUTLINED_FUNCTION_15(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t (*SiriTranslationModels.SnippetTranslationItem.romanization.modify())()
{
  v1 = OUTLINED_FUNCTION_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3(v2);
  type metadata accessor for SiriTranslationModels.SnippetTranslationItem(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150F0, &qword_2694494E8);
  *(v0 + 32) = OUTLINED_FUNCTION_10(v4);
  return sub_269441CA4;
}

uint64_t static SiriTranslationModels.SnippetTranslationItem.== infix(_:_:)()
{
  type metadata accessor for SiriTranslationModels.SnippetTranslationItem(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  sub_269448C14();
  sub_269448C14();

  return 1;
}

uint64_t sub_26943A504(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_269449034() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6570795464726F77 && a2 == 0xE800000000000000;
    if (v6 || (sub_269449034() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6974696E69666564 && a2 == 0xEA00000000006E6FLL;
      if (v7 || (sub_269449034() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 25705 && a2 == 0xE200000000000000;
        if (v8 || (sub_269449034() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x617A696E616D6F72 && a2 == 0xEC0000006E6F6974)
        {

          return 4;
        }

        else
        {
          v10 = sub_269449034();

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

uint64_t sub_26943A6F4(char a1)
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

uint64_t sub_26943A7D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26943A504(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26943A820@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26943A6A8();
  *a1 = result;
  return result;
}

uint64_t sub_26943A848(uint64_t a1)
{
  v2 = sub_26943AB1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26943A884(uint64_t a1)
{
  v2 = sub_26943AB1C();

  return MEMORY[0x2821FE720](a1, v2);
}

void SiriTranslationModels.SnippetTranslationItem.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_35();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150F8, &qword_2694494F0);
  OUTLINED_FUNCTION_2();
  v31 = v30;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_21();
  sub_26943AB1C();
  OUTLINED_FUNCTION_33();
  sub_269449084();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  OUTLINED_FUNCTION_1_0();
  sub_26943B270(v33);
  OUTLINED_FUNCTION_26();
  sub_269449024();
  if (!v27)
  {
    v35 = type metadata accessor for SiriTranslationModels.SnippetTranslationItem(0);
    OUTLINED_FUNCTION_43();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150F0, &qword_2694494E8);
    OUTLINED_FUNCTION_1_0();
    sub_26943B2DC(v34);
    OUTLINED_FUNCTION_25(v26 + v28);
    OUTLINED_FUNCTION_25(v26 + *(v35 + 24));
    OUTLINED_FUNCTION_26();
    sub_269449024();
    OUTLINED_FUNCTION_25(v26 + *(v35 + 32));
  }

  (*(v31 + 8))(v28, v29);
  OUTLINED_FUNCTION_34();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_26943AB1C()
{
  result = qword_280315100;
  if (!qword_280315100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280315100);
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

unint64_t sub_26943ABB8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_28(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280315120, &qword_2694494F8);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void SiriTranslationModels.SnippetTranslationItem.init(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_35();
  v3 = v2;
  v36 = v4;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150F0, &qword_2694494E8);
  OUTLINED_FUNCTION_2();
  v46 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_32();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_39();
  v37 = v8;
  OUTLINED_FUNCTION_32();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_53();
  v38 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  OUTLINED_FUNCTION_2();
  v41 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_8();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_53();
  v40 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315130, &unk_269449500);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v19);
  v20 = OUTLINED_FUNCTION_52();
  v21 = type metadata accessor for SiriTranslationModels.SnippetTranslationItem(v20);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1();
  v25 = v24 - v23;
  v27 = *(v26 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315120, &qword_2694494F8);
  sub_269448BF4();
  v45 = v21[6];
  sub_269448BF4();
  v43 = v21[8];
  sub_269448BF4();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_26943AB1C();
  sub_269449074();
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
    OUTLINED_FUNCTION_0_0();
    sub_26943B270(v28);
    sub_269448FF4();
    v35 = *(v41 + 32);
    v35(v25, v40);
    OUTLINED_FUNCTION_0_0();
    sub_26943B2DC(v30);
    v31 = v38;
    OUTLINED_FUNCTION_44();
    sub_269448FF4();
    v39 = *(v46 + 40);
    v39(v25 + v27, v31, v44);
    OUTLINED_FUNCTION_22(2);
    OUTLINED_FUNCTION_44();
    sub_269448FF4();
    v39(v25 + v45, v37, v44);
    OUTLINED_FUNCTION_22(3);
    sub_269448FF4();
    (v35)(v25 + v21[7], v42, v11);
    OUTLINED_FUNCTION_22(4);
    OUTLINED_FUNCTION_44();
    sub_269448FF4();
    v32 = OUTLINED_FUNCTION_42();
    v33(v32);
    v34 = OUTLINED_FUNCTION_46(v43);
    (v39)(v34);
    sub_26943D0F8(v25, v36, type metadata accessor for SiriTranslationModels.SnippetTranslationItem);
    __swift_destroy_boxed_opaque_existential_1(v3);
    sub_26943D158(v25, type metadata accessor for SiriTranslationModels.SnippetTranslationItem);
  }

  OUTLINED_FUNCTION_34();
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

unint64_t sub_26943B270(uint64_t a1)
{
  result = OUTLINED_FUNCTION_28(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803150E8, &qword_2694494E0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26943B2DC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_28(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803150F0, &qword_2694494E8);
    sub_26943ABB8(&unk_280315118);
    sub_26943ABB8(&unk_280315128);
    result = OUTLINED_FUNCTION_36();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_26943B3B8@<X0>(uint64_t *a1@<X8>)
{
  result = SiriTranslationModels.SnippetTranslationItem.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t (*SiriTranslationModels.SiriTranslationResultModel.items.modify())()
{
  v1 = OUTLINED_FUNCTION_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_11(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315148, &unk_26944A2E0);
  *(v0 + 32) = OUTLINED_FUNCTION_58(v3);
  return sub_269441CA4;
}

uint64_t sub_26943B4B8(void (*a1)(void))
{
  a1(0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  OUTLINED_FUNCTION_41(v1, v2, v3, v4, v5, v6, v7, v8, v10);
  return v11;
}

uint64_t sub_26943B50C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SiriTranslationModels.SiriTranslationResultModel.visualID.setter(v1, v2);
}

uint64_t (*SiriTranslationModels.SiriTranslationResultModel.visualID.modify())()
{
  v1 = OUTLINED_FUNCTION_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3(v2);
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  *(v0 + 32) = OUTLINED_FUNCTION_10(v4);
  return sub_269441CA4;
}

uint64_t sub_26943B5EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SiriTranslationModels.SiriTranslationResultModel.phrase.setter(v1, v2);
}

uint64_t (*SiriTranslationModels.SiriTranslationResultModel.phrase.modify())()
{
  v1 = OUTLINED_FUNCTION_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3(v2);
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  *(v0 + 32) = OUTLINED_FUNCTION_10(v4);
  return sub_269441CA4;
}

uint64_t SiriTranslationModels.SiriTranslationResultModel.romanizationExists.getter()
{
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315150, &qword_269449510);
  sub_269448C14();
  return v1;
}

uint64_t SiriTranslationModels.SiriTranslationResultModel.romanizationExists.setter(char a1)
{
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315150, &qword_269449510);
  return sub_269448C24();
}

uint64_t (*SiriTranslationModels.SiriTranslationResultModel.romanizationExists.modify())()
{
  v1 = OUTLINED_FUNCTION_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3(v2);
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315150, &qword_269449510);
  *(v0 + 32) = OUTLINED_FUNCTION_10(v4);
  return sub_269441CA4;
}

uint64_t SiriTranslationModels.SiriTranslationResultModel.targetLanguageLocale.setter()
{
  v0 = OUTLINED_FUNCTION_18();
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  return OUTLINED_FUNCTION_15(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t (*SiriTranslationModels.SiriTranslationResultModel.targetLanguageLocale.modify())()
{
  v1 = OUTLINED_FUNCTION_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3(v2);
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  *(v0 + 32) = OUTLINED_FUNCTION_10(v4);
  return sub_269441CA4;
}

uint64_t SiriTranslationModels.SiriTranslationResultModel.sourceLanguageLocale.setter()
{
  v0 = OUTLINED_FUNCTION_18();
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  return OUTLINED_FUNCTION_15(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t (*SiriTranslationModels.SiriTranslationResultModel.sourceLanguageLocale.modify())()
{
  v1 = OUTLINED_FUNCTION_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3(v2);
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  *(v0 + 32) = OUTLINED_FUNCTION_10(v4);
  return sub_269441CA4;
}

uint64_t SiriTranslationModels.SiriTranslationResultModel.localizedSourceLanguage.getter()
{
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  OUTLINED_FUNCTION_41(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t SiriTranslationModels.SiriTranslationResultModel.localizedSourceLanguage.setter()
{
  v0 = OUTLINED_FUNCTION_18();
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  return OUTLINED_FUNCTION_15(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t (*SiriTranslationModels.SiriTranslationResultModel.localizedSourceLanguage.modify())()
{
  v1 = OUTLINED_FUNCTION_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3(v2);
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  *(v0 + 32) = OUTLINED_FUNCTION_10(v4);
  return sub_269441CA4;
}

uint64_t SiriTranslationModels.SiriTranslationResultModel.localizedtargetLanguage.getter()
{
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  OUTLINED_FUNCTION_41(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t SiriTranslationModels.SiriTranslationResultModel.localizedtargetLanguage.setter()
{
  v0 = OUTLINED_FUNCTION_18();
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  return OUTLINED_FUNCTION_15(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t (*SiriTranslationModels.SiriTranslationResultModel.localizedtargetLanguage.modify())()
{
  v1 = OUTLINED_FUNCTION_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3(v2);
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  *(v0 + 32) = OUTLINED_FUNCTION_10(v4);
  return sub_269441CA4;
}

uint64_t SiriTranslationModels.SiriTranslationResultModel.openMoreInTranslation.getter()
{
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  OUTLINED_FUNCTION_41(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t SiriTranslationModels.SiriTranslationResultModel.openMoreInTranslation.setter()
{
  v0 = OUTLINED_FUNCTION_18();
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  return OUTLINED_FUNCTION_15(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t (*SiriTranslationModels.SiriTranslationResultModel.openMoreInTranslation.modify())()
{
  v1 = OUTLINED_FUNCTION_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3(v2);
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  *(v0 + 32) = OUTLINED_FUNCTION_10(v4);
  return sub_269441CA4;
}

uint64_t sub_26943BD8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736D657469 && a2 == 0xE500000000000000;
  if (v4 || (sub_269449034() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x44496C6175736976 && a2 == 0xE800000000000000;
    if (v6 || (sub_269449034() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x657361726870 && a2 == 0xE600000000000000;
      if (v7 || (sub_269449034() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x800000026944AF70 == a2;
        if (v8 || (sub_269449034() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000014 && 0x800000026944AF90 == a2;
          if (v9 || (sub_269449034() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000014 && 0x800000026944AFB0 == a2;
            if (v10 || (sub_269449034() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000017 && 0x800000026944AFD0 == a2;
              if (v11 || (sub_269449034() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000017 && 0x800000026944AFF0 == a2;
                if (v12 || (sub_269449034() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD000000000000015 && 0x800000026944B010 == a2)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_269449034();

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

unint64_t sub_26943C05C(char a1)
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

uint64_t sub_26943C188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26943BD8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26943C1B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26943C054();
  *a1 = result;
  return result;
}

uint64_t sub_26943C1D8(uint64_t a1)
{
  v2 = sub_26943C4E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26943C214(uint64_t a1)
{
  v2 = sub_26943C4E4();

  return MEMORY[0x2821FE720](a1, v2);
}

void SiriTranslationModels.SiriTranslationResultModel.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_35();
  v30 = v27;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315158, &qword_269449518);
  OUTLINED_FUNCTION_2();
  v33 = v32;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_21();
  sub_26943C4E4();
  OUTLINED_FUNCTION_33();
  sub_269449084();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315148, &unk_26944A2E0);
  OUTLINED_FUNCTION_1_0();
  sub_26943D024(v36);
  OUTLINED_FUNCTION_56(v30);
  if (!v28)
  {
    v37 = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
    OUTLINED_FUNCTION_43();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
    OUTLINED_FUNCTION_1_0();
    sub_26943B270(v38);
    OUTLINED_FUNCTION_6(v30 + v35);
    OUTLINED_FUNCTION_6(v30 + v37[6]);
    v40 = v37[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315150, &qword_269449510);
    OUTLINED_FUNCTION_1_0();
    sub_26943C604(v39);
    OUTLINED_FUNCTION_56(v30 + v40);
    OUTLINED_FUNCTION_6(v30 + v37[8]);
    OUTLINED_FUNCTION_6(v30 + v37[9]);
    OUTLINED_FUNCTION_6(v30 + v37[10]);
    OUTLINED_FUNCTION_6(v30 + v37[11]);
    OUTLINED_FUNCTION_6(v30 + v37[12]);
  }

  (*(v33 + 8))(v29, v31);
  OUTLINED_FUNCTION_34();
}

unint64_t sub_26943C4E4()
{
  result = qword_280315160;
  if (!qword_280315160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280315160);
  }

  return result;
}

unint64_t sub_26943C538(uint64_t a1)
{
  result = OUTLINED_FUNCTION_28(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280315178, &qword_269449520);
    sub_26943C5C0(v4);
    result = OUTLINED_FUNCTION_55();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26943C5C0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_28(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26943C604(uint64_t a1)
{
  result = OUTLINED_FUNCTION_28(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280315150, &qword_269449510);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void SiriTranslationModels.SiriTranslationResultModel.init(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_35();
  v64 = v3;
  v53 = v4;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315150, &qword_269449510);
  OUTLINED_FUNCTION_2();
  v60 = v5;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_40();
  v56 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  OUTLINED_FUNCTION_2();
  v66 = v9;
  v67 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8();
  v54 = v10 - v11;
  OUTLINED_FUNCTION_32();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_39();
  v55 = v16;
  OUTLINED_FUNCTION_32();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_39();
  v58 = v18;
  OUTLINED_FUNCTION_32();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_53();
  v57 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315148, &unk_26944A2E0);
  OUTLINED_FUNCTION_2();
  v62 = v22;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_40();
  v61 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803151A0, &qword_269449528);
  OUTLINED_FUNCTION_2();
  v59 = v25;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_30();
  v27 = sub_269448B84();
  OUTLINED_FUNCTION_2();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1();
  v33 = v32 - v31;
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_51();
  v65 = v35;
  v36 = v35[5];
  sub_269448B74();
  v37 = sub_269448B64();
  v39 = v38;
  (*(v29 + 8))(v33, v27);
  v68[0] = v37;
  v68[1] = v39;
  sub_269448BF4();
  __swift_project_boxed_opaque_existential_1(v64, v64[3]);
  sub_26943C4E4();
  OUTLINED_FUNCTION_50();
  sub_269449074();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v64);
    (*(v66 + 8))(v2 + v36, v67);
  }

  else
  {
    LOBYTE(v68[0]) = 0;
    OUTLINED_FUNCTION_0_0();
    sub_26943D024(v40);
    sub_269448FF4();
    (*(v62 + 32))(v2, v61, v21);
    LOBYTE(v68[0]) = 1;
    OUTLINED_FUNCTION_0_0();
    v42 = sub_26943B270(v41);
    OUTLINED_FUNCTION_45(v42, v68);
    (*(v66 + 40))(v2 + v36, v57, v67);
    OUTLINED_FUNCTION_22(2);
    OUTLINED_FUNCTION_45(v43, v44);
    v45 = *(v66 + 32);
    (v45)(v65[6], v58, v67);
    LOBYTE(v68[0]) = 3;
    OUTLINED_FUNCTION_0_0();
    sub_26943C604(v46);
    sub_269448FF4();
    (*(v60 + 32))(v65[7], v56, v63);
    OUTLINED_FUNCTION_22(4);
    sub_269448FF4();
    (v45)(v65[8], v55, v67);
    OUTLINED_FUNCTION_22(5);
    OUTLINED_FUNCTION_5();
    sub_269448FF4();
    v47 = OUTLINED_FUNCTION_27(v65[9]);
    v45(v47);
    OUTLINED_FUNCTION_22(6);
    OUTLINED_FUNCTION_5();
    sub_269448FF4();
    v48 = OUTLINED_FUNCTION_27(v65[10]);
    v45(v48);
    OUTLINED_FUNCTION_22(7);
    OUTLINED_FUNCTION_5();
    sub_269448FF4();
    v49 = OUTLINED_FUNCTION_27(v65[11]);
    v45(v49);
    OUTLINED_FUNCTION_22(8);
    OUTLINED_FUNCTION_5();
    sub_269448FF4();
    v50 = OUTLINED_FUNCTION_31();
    v51(v50, v59);
    (v45)(v65[12], v54, v67);
    sub_26943D0F8(0, v53, type metadata accessor for SiriTranslationModels.SiriTranslationResultModel);
    __swift_destroy_boxed_opaque_existential_1(v64);
    OUTLINED_FUNCTION_19();
    sub_26943D158(0, v52);
  }

  OUTLINED_FUNCTION_34();
}

unint64_t sub_26943D024(uint64_t a1)
{
  result = OUTLINED_FUNCTION_28(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280315148, &unk_26944A2E0);
    sub_26943C538(&unk_280315170);
    sub_26943C538(&unk_280315188);
    result = OUTLINED_FUNCTION_36();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_26943D0F8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_26943D158(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t _s17SiriTranslationUI0aB6ModelsO07SnippetB4ItemV4textSSvg_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  sub_269448C14();
  return v1;
}

uint64_t sub_26943D21C()
{
  OUTLINED_FUNCTION_13();
  result = SiriTranslationModels.SnippetTranslationItem.text.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t (*SiriTranslationModels.Language.name.modify())()
{
  v1 = OUTLINED_FUNCTION_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_11(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  *(v0 + 32) = OUTLINED_FUNCTION_58(v3);
  return sub_269441CA4;
}

uint64_t sub_26943D2EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SiriTranslationModels.Language.localizedName.setter(v1, v2);
}

uint64_t sub_26943D344()
{
  v0 = OUTLINED_FUNCTION_18();
  v1(v0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  return OUTLINED_FUNCTION_15(v2, v3, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t (*SiriTranslationModels.Language.localizedName.modify())()
{
  v1 = OUTLINED_FUNCTION_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3(v2);
  type metadata accessor for SiriTranslationModels.Language(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  *(v0 + 32) = OUTLINED_FUNCTION_10(v4);
  return sub_269441CA4;
}

uint64_t static SiriTranslationModels.Language.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_269448C34() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for SiriTranslationModels.Language(0);

  return sub_269448C34();
}

uint64_t sub_26943D480(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_269449034() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657A696C61636F6CLL && a2 == 0xED0000656D614E64)
  {

    return 1;
  }

  else
  {
    v7 = sub_269449034();

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

uint64_t sub_26943D558(char a1)
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

uint64_t sub_26943D59C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26943D480(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26943D5C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26943D550();
  *a1 = result;
  return result;
}

uint64_t sub_26943D5EC(uint64_t a1)
{
  v2 = sub_26943D7D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26943D628(uint64_t a1)
{
  v2 = sub_26943D7D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriTranslationModels.Language.encode(to:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803151B8, &qword_269449530);
  OUTLINED_FUNCTION_2();
  v4 = v3;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_21();
  sub_26943D7D4();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_33();
  sub_269449084();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  OUTLINED_FUNCTION_1_0();
  sub_26943B270(v6);
  OUTLINED_FUNCTION_26();
  sub_269449024();
  if (!v0)
  {
    type metadata accessor for SiriTranslationModels.Language(0);
    OUTLINED_FUNCTION_26();
    sub_269449024();
  }

  return (*(v4 + 8))(v1, v2);
}

unint64_t sub_26943D7D4()
{
  result = qword_2803151C0;
  if (!qword_2803151C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803151C0);
  }

  return result;
}

uint64_t SiriTranslationModels.Language.hash(into:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  sub_26943D8A0();
  sub_269448F34();
  type metadata accessor for SiriTranslationModels.Language(0);
  return sub_269448F34();
}

unint64_t sub_26943D8A0()
{
  result = qword_2803151C8;
  if (!qword_2803151C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803150E8, &qword_2694494E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803151C8);
  }

  return result;
}

uint64_t SiriTranslationModels.Language.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_57(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  sub_26943D8A0();
  sub_269448F34();
  type metadata accessor for SiriTranslationModels.Language(0);
  sub_269448F34();
  return sub_269449064();
}

void SiriTranslationModels.Language.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_35();
  v25 = v24;
  v53 = v26;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  OUTLINED_FUNCTION_2();
  v55 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_8();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_53();
  v57 = v33;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803151D0, &qword_269449538);
  OUTLINED_FUNCTION_2();
  v54 = v34;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v35);
  v37 = v50 - v36;
  v38 = type metadata accessor for SiriTranslationModels.Language(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_1();
  v42 = v41 - v40;
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_26943D7D4();
  sub_269449074();
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
    OUTLINED_FUNCTION_0_0();
    v46 = sub_26943B270(v45);
    v47 = v56;
    sub_269448FF4();
    v50[1] = v46;
    v48 = v57;
    v57 = *(v43 + 32);
    v57(v52, v48, v58);
    sub_269448FF4();
    (*(v44 + 8))(v37, v47);
    v49 = v52;
    v57(v52 + *(v51 + 20), v31, v58);
    sub_26943D0F8(v49, v53, type metadata accessor for SiriTranslationModels.Language);
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_26943D158(v49, type metadata accessor for SiriTranslationModels.Language);
  }

  OUTLINED_FUNCTION_34();
}

uint64_t sub_26943DD14()
{
  sub_269449044();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  sub_26943D8A0();
  sub_269448F34();
  sub_269448F34();
  return sub_269449064();
}

uint64_t sub_26943DDB4(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_269448C14();
  return v3;
}

uint64_t (*SiriTranslationModels.SiriTranslationDisambiguationModel.languages.modify())()
{
  v1 = OUTLINED_FUNCTION_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_11(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803151D8, &qword_269449540);
  *(v0 + 32) = OUTLINED_FUNCTION_58(v3);
  return sub_269441CA4;
}

uint64_t (*SiriTranslationModels.SiriTranslationDisambiguationModel.prompt.modify())()
{
  v1 = OUTLINED_FUNCTION_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3(v2);
  type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  *(v0 + 32) = OUTLINED_FUNCTION_10(v4);
  return sub_269441CA4;
}

uint64_t sub_26943DFD8(void (*a1)(void))
{
  a1(0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  OUTLINED_FUNCTION_41(v1, v2, v3, v4, v5, v6, v7, v8, v10);
  return v11;
}

uint64_t sub_26943E02C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SiriTranslationModels.SiriTranslationDisambiguationModel.phrase.setter(v1, v2);
}

uint64_t sub_26943E084()
{
  v0 = OUTLINED_FUNCTION_18();
  v1(v0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  return OUTLINED_FUNCTION_15(v2, v3, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t (*SiriTranslationModels.SiriTranslationDisambiguationModel.phrase.modify())()
{
  v1 = OUTLINED_FUNCTION_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3(v2);
  type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  *(v0 + 32) = OUTLINED_FUNCTION_10(v4);
  return sub_269441CA4;
}

void sub_26943E140(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_26943E18C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65676175676E616CLL && a2 == 0xE900000000000073;
  if (v4 || (sub_269449034() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
    if (v6 || (sub_269449034() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x657361726870 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_269449034();

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

uint64_t sub_26943E2AC(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_57(a1);
  MEMORY[0x26D63CF40](v1);
  return sub_269449064();
}

uint64_t sub_26943E2EC(char a1)
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

uint64_t sub_26943E340()
{
  v1 = *v0;
  sub_269449044();
  MEMORY[0x26D63CF40](v1);
  return sub_269449064();
}

uint64_t sub_26943E38C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26943E18C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26943E3B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26943E2A4();
  *a1 = result;
  return result;
}

uint64_t sub_26943E3DC(uint64_t a1)
{
  v2 = sub_26943E5F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26943E418(uint64_t a1)
{
  v2 = sub_26943E5F8();

  return MEMORY[0x2821FE720](a1, v2);
}

void SiriTranslationModels.SiriTranslationDisambiguationModel.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_35();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803151E0, &qword_269449548);
  OUTLINED_FUNCTION_2();
  v29 = v28;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_21();
  sub_26943E5F8();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_33();
  sub_269449084();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803151D8, &qword_269449540);
  OUTLINED_FUNCTION_1_0();
  sub_26943E64C(v31);
  sub_269449024();
  if (!v25)
  {
    v32 = type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(0);
    OUTLINED_FUNCTION_43();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
    OUTLINED_FUNCTION_1_0();
    sub_26943B270(v33);
    OUTLINED_FUNCTION_47(v24 + v26);
    OUTLINED_FUNCTION_47(v24 + *(v32 + 24));
  }

  (*(v29 + 8))(v26, v27);
  OUTLINED_FUNCTION_34();
}

unint64_t sub_26943E5F8()
{
  result = qword_2803151E8;
  if (!qword_2803151E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803151E8);
  }

  return result;
}

unint64_t sub_26943E64C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_28(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803151D8, &qword_269449540);
    sub_26943E720(&unk_2803151F8);
    sub_26943E720(&unk_280315210);
    result = OUTLINED_FUNCTION_36();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26943E720(uint64_t a1)
{
  result = OUTLINED_FUNCTION_28(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280315200, &qword_269449550);
    sub_26943C5C0(v4);
    result = OUTLINED_FUNCTION_55();
    atomic_store(result, v1);
  }

  return result;
}

void SiriTranslationModels.SiriTranslationDisambiguationModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_35();
  v26 = v25;
  v62 = v27;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  OUTLINED_FUNCTION_2();
  v64 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_8();
  v63 = (v30 - v31);
  OUTLINED_FUNCTION_32();
  MEMORY[0x28223BE20](v32);
  v34 = &v57 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803151D8, &qword_269449540);
  OUTLINED_FUNCTION_2();
  v65 = v36;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_40();
  v67 = v38;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315220, &qword_269449558);
  OUTLINED_FUNCTION_2();
  v66 = v39;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v40);
  v41 = type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_1();
  v45 = v44 - v43;
  v46 = v26[3];
  v70 = v26;
  __swift_project_boxed_opaque_existential_1(v26, v46);
  sub_26943E5F8();
  sub_269449074();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v70);
  }

  else
  {
    v60 = v41;
    v61 = v45;
    v47 = v68;
    OUTLINED_FUNCTION_0_0();
    sub_26943E64C(v48);
    v49 = v67;
    sub_269448FF4();
    (*(v65 + 32))(v61, v49, v35);
    OUTLINED_FUNCTION_0_0();
    v67 = sub_26943B270(v50);
    sub_269448FF4();
    v51 = v61 + *(v60 + 20);
    v58 = *(v64 + 32);
    v59 = v35;
    v58(v51, v34, v47);
    v52 = v63;
    sub_269448FF4();
    v53 = OUTLINED_FUNCTION_29();
    v54(v53);
    v55 = v61;
    v58(v61 + *(v60 + 24), v52, v47);
    sub_26943D0F8(v55, v62, type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel);
    __swift_destroy_boxed_opaque_existential_1(v70);
    OUTLINED_FUNCTION_17();
    sub_26943D158(v55, v56);
  }

  OUTLINED_FUNCTION_34();
}

uint64_t sub_26943EC04(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x800000026944B030 == a2;
  if (v3 || (sub_269449034() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x800000026944B050 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_269449034();

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

uint64_t sub_26943ED10(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_57(a1);
  MEMORY[0x26D63CF40](v1 & 1);
  return sub_269449064();
}

unint64_t sub_26943ED50(char a1)
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

uint64_t sub_26943ED9C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_269449034();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26943EE34(uint64_t a1)
{
  OUTLINED_FUNCTION_57(a1);
  MEMORY[0x26D63CF40](0);
  return sub_269449064();
}

uint64_t sub_26943EED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26943EC04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26943EF00(uint64_t a1)
{
  v2 = sub_26943F5E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26943EF3C(uint64_t a1)
{
  v2 = sub_26943F5E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26943EF9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26943ED88();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26943EFC8(uint64_t a1)
{
  v2 = sub_26943F63C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26943F004(uint64_t a1)
{
  v2 = sub_26943F63C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26943F060()
{
  sub_269449044();
  MEMORY[0x26D63CF40](0);
  return sub_269449064();
}

uint64_t sub_26943F0A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26943ED9C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26943F0CC(uint64_t a1)
{
  v2 = sub_26943F6F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26943F108(uint64_t a1)
{
  v2 = sub_26943F6F0();

  return MEMORY[0x2821FE720](a1, v2);
}

void SiriTranslationModels.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_35();
  v69 = v25;
  v67 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315230, &qword_269449560);
  OUTLINED_FUNCTION_2();
  v65 = v28;
  v66 = v27;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_40();
  v64 = v30;
  v62 = type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1();
  v63 = v33 - v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315238, &qword_269449568);
  OUTLINED_FUNCTION_2();
  v60 = v35;
  v61 = v34;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v36);
  v37 = OUTLINED_FUNCTION_52();
  v59[1] = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v37);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_1();
  v41 = v40 - v39;
  type metadata accessor for SiriTranslationModels(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_51();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315240, &qword_269449570);
  OUTLINED_FUNCTION_2();
  v44 = v43;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v45);
  v47 = v59 - v46;
  OUTLINED_FUNCTION_21();
  sub_26943F5E8();
  sub_269449084();
  sub_26943D0F8(v67, v26, type metadata accessor for SiriTranslationModels);
  v48 = (v44 + 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v49 = v63;
    sub_26943F690(v26, v63, type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel);
    sub_26943F63C();
    v50 = v64;
    v51 = v68;
    sub_269449014();
    OUTLINED_FUNCTION_16();
    sub_26943C5C0(v52);
    v53 = v66;
    sub_269449024();
    (*(v65 + 8))(v50, v53);
    OUTLINED_FUNCTION_17();
    sub_26943D158(v49, v54);
    (*v48)(v47, v51);
  }

  else
  {
    sub_26943F690(v26, v41, type metadata accessor for SiriTranslationModels.SiriTranslationResultModel);
    sub_26943F6F0();
    v55 = v68;
    sub_269449014();
    OUTLINED_FUNCTION_20();
    sub_26943C5C0(v56);
    v57 = v61;
    sub_269449024();
    (*(v60 + 8))(v23, v57);
    OUTLINED_FUNCTION_19();
    sub_26943D158(v41, v58);
    (*v48)(v47, v55);
  }

  OUTLINED_FUNCTION_34();
}

uint64_t sub_26943F5B0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_26943F5E8()
{
  result = qword_280315248;
  if (!qword_280315248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280315248);
  }

  return result;
}

unint64_t sub_26943F63C()
{
  result = qword_280315250;
  if (!qword_280315250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280315250);
  }

  return result;
}

uint64_t sub_26943F690(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_26943F6F0()
{
  result = qword_280315260;
  if (!qword_280315260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280315260);
  }

  return result;
}

void SiriTranslationModels.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_35();
  a23 = v26;
  a24 = v27;
  v105 = v24;
  v29 = v28;
  v96 = v30;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315270, &qword_269449578);
  OUTLINED_FUNCTION_2();
  v99 = v31;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_40();
  v101 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315278, &qword_269449580);
  OUTLINED_FUNCTION_2();
  v97 = v35;
  v98 = v34;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_40();
  v100 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315280, &qword_269449588);
  OUTLINED_FUNCTION_2();
  v102 = v39;
  v103 = v38;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_30();
  v41 = type metadata accessor for SiriTranslationModels(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_8();
  v45 = v43 - v44;
  v47 = MEMORY[0x28223BE20](v46);
  v49 = &v92 - v48;
  MEMORY[0x28223BE20](v47);
  v51 = &v92 - v50;
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  sub_26943F5E8();
  OUTLINED_FUNCTION_50();
  v52 = v105;
  sub_269449074();
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
  v54 = sub_269449004();
  v58 = sub_26943FD8C(v54, 0);
  if (v56 == v57 >> 1)
  {
LABEL_7:
    v73 = v95;
    v74 = sub_269448FB4();
    swift_allocError();
    v76 = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315288, &qword_269449590);
    *v76 = v73;
    sub_269448FE4();
    sub_269448FA4();
    (*(*(v74 - 8) + 104))(v76, *MEMORY[0x277D84160], v74);
    swift_willThrow();
    swift_unknownObjectRelease();
    v77 = OUTLINED_FUNCTION_23();
    v78(v77, v53);
    v29 = v105;
LABEL_8:
    v79 = v29;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v79);
    OUTLINED_FUNCTION_34();
    return;
  }

  if (v56 < (v57 >> 1))
  {
    a10 = *(v55 + v56);
    sub_26943FDD4(v56 + 1, v57 >> 1, v58, v55, v56, v57);
    v60 = v59;
    v62 = v61;
    swift_unknownObjectRelease();
    if (v60 == v62 >> 1)
    {
      v63 = v53;
      if (a10)
      {
        a14 = 1;
        sub_26943F63C();
        OUTLINED_FUNCTION_48(&type metadata for SiriTranslationModels.DisambiguationResultViewCodingKeys, &a14);
        v64 = v94;
        v65 = type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(0);
        OUTLINED_FUNCTION_16();
        v67 = sub_26943C5C0(v66);
        v68 = v92;
        OUTLINED_FUNCTION_54(v65, v69, v70, v71, v67);
        v72 = v102;
        swift_unknownObjectRelease();
        v86 = OUTLINED_FUNCTION_24();
        v87(v86);
        (*(v72 + 8))(v25, v63);
      }

      else
      {
        a13 = 0;
        sub_26943F6F0();
        OUTLINED_FUNCTION_48(&type metadata for SiriTranslationModels.TranslationResultViewCodingKeys, &a13);
        v64 = v94;
        v80 = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
        OUTLINED_FUNCTION_20();
        v82 = sub_26943C5C0(v81);
        v68 = v93;
        OUTLINED_FUNCTION_54(v80, v83, v84, v85, v82);
        swift_unknownObjectRelease();
        v88 = OUTLINED_FUNCTION_24();
        v89(v88);
        v90 = OUTLINED_FUNCTION_23();
        v91(v90, v63);
      }

      swift_storeEnumTagMultiPayload();
      sub_26943F690(v68, v64, type metadata accessor for SiriTranslationModels);
      sub_26943F690(v64, v96, type metadata accessor for SiriTranslationModels);
      v79 = v105;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_26943FD8C(uint64_t result, uint64_t a2)
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

uint64_t sub_26943FDD4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
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

uint64_t sub_269440054()
{
  OUTLINED_FUNCTION_13();
  result = SiriTranslationModels.SnippetTranslationItem.text.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_269440080()
{
  OUTLINED_FUNCTION_13();
  result = SiriTranslationModels.SnippetTranslationItem.wordType.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2694400D4()
{
  OUTLINED_FUNCTION_13();
  result = SiriTranslationModels.SnippetTranslationItem.definition.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_269440128()
{
  OUTLINED_FUNCTION_13();
  result = SiriTranslationModels.SnippetTranslationItem.id.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_269440154()
{
  OUTLINED_FUNCTION_13();
  result = SiriTranslationModels.SnippetTranslationItem.romanization.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2694401A8()
{
  OUTLINED_FUNCTION_13();
  result = SiriTranslationModels.SiriTranslationResultModel.items.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2694401D4()
{
  OUTLINED_FUNCTION_13();
  result = SiriTranslationModels.SiriTranslationResultModel.visualID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_269440200()
{
  OUTLINED_FUNCTION_13();
  result = SiriTranslationModels.SiriTranslationResultModel.phrase.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26944022C()
{
  OUTLINED_FUNCTION_13();
  result = SiriTranslationModels.SiriTranslationResultModel.romanizationExists.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_269440280()
{
  OUTLINED_FUNCTION_13();
  result = SiriTranslationModels.SiriTranslationResultModel.targetLanguageLocale.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2694402AC()
{
  OUTLINED_FUNCTION_13();
  result = SiriTranslationModels.SiriTranslationResultModel.sourceLanguageLocale.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2694402D8()
{
  OUTLINED_FUNCTION_13();
  result = SiriTranslationModels.SiriTranslationResultModel.localizedSourceLanguage.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_269440304()
{
  OUTLINED_FUNCTION_13();
  result = SiriTranslationModels.SiriTranslationResultModel.localizedtargetLanguage.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_269440330()
{
  OUTLINED_FUNCTION_13();
  result = SiriTranslationModels.SiriTranslationResultModel.openMoreInTranslation.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26944035C()
{
  OUTLINED_FUNCTION_13();
  result = SiriTranslationModels.Language.localizedName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_269440388()
{
  OUTLINED_FUNCTION_13();
  result = SiriTranslationModels.SiriTranslationDisambiguationModel.languages.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2694403B4()
{
  OUTLINED_FUNCTION_13();
  result = SiriTranslationModels.SiriTranslationDisambiguationModel.prompt.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2694403E0()
{
  OUTLINED_FUNCTION_13();
  result = SiriTranslationModels.SiriTranslationDisambiguationModel.phrase.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_269440468(uint64_t a1)
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

uint64_t sub_26944054C(uint64_t a1)
{
  sub_269440928(319, &qword_2803152D8, MEMORY[0x277D837D0]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_269440D38(319, &qword_2803152E0, &qword_280315120, &qword_2694494F8);
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

uint64_t sub_269440624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315148, &unk_26944A2E0);
  OUTLINED_FUNCTION_37();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
    OUTLINED_FUNCTION_37();
    if (*(v11 + 84) == v3)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315150, &qword_269449510);
      v12 = *(a3 + 28);
    }

    v9 = v4 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

uint64_t sub_269440730(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315148, &unk_26944A2E0);
  OUTLINED_FUNCTION_37();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
    OUTLINED_FUNCTION_37();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315150, &qword_269449510);
      v14 = *(a4 + 28);
    }

    v11 = v5 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_269440830(uint64_t a1)
{
  sub_269440D38(319, &qword_2803152F8, &qword_280315178, &qword_269449520);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_269440928(319, &qword_2803152D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_269440928(319, &qword_280315300, MEMORY[0x277D839B0]);
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

void sub_269440928(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_269448C44();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_269440988()
{
  OUTLINED_FUNCTION_38();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_2694409EC()
{
  OUTLINED_FUNCTION_38();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

void sub_269440A40(uint64_t a1)
{
  sub_269440928(319, &qword_2803152D8, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  OUTLINED_FUNCTION_38();
  __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_37();
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

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  OUTLINED_FUNCTION_38();
  __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  OUTLINED_FUNCTION_37();
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

void sub_269440C8C(uint64_t a1)
{
  sub_269440D38(319, &qword_280315328, &qword_280315200, &qword_269449550);
  if (v1 <= 0x3F)
  {
    sub_269440928(319, &qword_2803152D8, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_269440D38(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_269448C44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_269440DE8(unsigned __int8 *a1, int a2)
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

  return OUTLINED_FUNCTION_49(a1);
}

_BYTE *sub_269440E34(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x269440ED0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriTranslationModels.SiriTranslationDisambiguationModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
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
        JUMPOUT(0x26944105CLL);
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

uint64_t sub_269441094(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_26944111C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2694411E8);
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
        JUMPOUT(0x269441374);
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
        JUMPOUT(0x269441508);
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

unint64_t sub_269441544()
{
  result = qword_280315330;
  if (!qword_280315330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280315330);
  }

  return result;
}

unint64_t sub_26944159C()
{
  result = qword_280315338;
  if (!qword_280315338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280315338);
  }

  return result;
}

unint64_t sub_2694415F4()
{
  result = qword_280315340;
  if (!qword_280315340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280315340);
  }

  return result;
}

unint64_t sub_26944164C()
{
  result = qword_280315348;
  if (!qword_280315348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280315348);
  }

  return result;
}

unint64_t sub_2694416A4()
{
  result = qword_280315350;
  if (!qword_280315350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280315350);
  }

  return result;
}

unint64_t sub_2694416FC()
{
  result = qword_280315358;
  if (!qword_280315358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280315358);
  }

  return result;
}

unint64_t sub_269441754()
{
  result = qword_280315360;
  if (!qword_280315360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280315360);
  }

  return result;
}

unint64_t sub_2694417AC()
{
  result = qword_280315368;
  if (!qword_280315368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280315368);
  }

  return result;
}

unint64_t sub_269441804()
{
  result = qword_280315370;
  if (!qword_280315370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280315370);
  }

  return result;
}

unint64_t sub_26944185C()
{
  result = qword_280315378;
  if (!qword_280315378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280315378);
  }

  return result;
}

unint64_t sub_2694418B4()
{
  result = qword_280315380;
  if (!qword_280315380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280315380);
  }

  return result;
}

unint64_t sub_26944190C()
{
  result = qword_280315388;
  if (!qword_280315388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280315388);
  }

  return result;
}

unint64_t sub_269441964()
{
  result = qword_280315390;
  if (!qword_280315390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280315390);
  }

  return result;
}

unint64_t sub_2694419BC()
{
  result = qword_280315398;
  if (!qword_280315398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280315398);
  }

  return result;
}

unint64_t sub_269441A14()
{
  result = qword_2803153A0;
  if (!qword_2803153A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803153A0);
  }

  return result;
}

unint64_t sub_269441A6C()
{
  result = qword_2803153A8;
  if (!qword_2803153A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803153A8);
  }

  return result;
}

unint64_t sub_269441AC4()
{
  result = qword_2803153B0;
  if (!qword_2803153B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803153B0);
  }

  return result;
}

unint64_t sub_269441B1C()
{
  result = qword_2803153B8;
  if (!qword_2803153B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803153B8);
  }

  return result;
}

unint64_t sub_269441B74()
{
  result = qword_2803153C0;
  if (!qword_2803153C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803153C0);
  }

  return result;
}

unint64_t sub_269441BCC()
{
  result = qword_2803153C8;
  if (!qword_2803153C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803153C8);
  }

  return result;
}

unint64_t sub_269441C24()
{
  result = qword_2803153D0;
  if (!qword_2803153D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803153D0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6(uint64_t a1)
{

  return sub_269449024();
}

uint64_t OUTLINED_FUNCTION_10(uint64_t a1)
{

  return MEMORY[0x2821CB228](v1, a1);
}

uint64_t OUTLINED_FUNCTION_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_269448C24();
}

uint64_t OUTLINED_FUNCTION_25(uint64_t a1)
{

  return sub_269449024();
}

uint64_t OUTLINED_FUNCTION_36()
{

  return swift_getWitnessTable();
}

void *OUTLINED_FUNCTION_41(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_269448C14();
}

uint64_t OUTLINED_FUNCTION_45(uint64_t a1, uint64_t a2)
{

  return sub_269448FF4();
}

uint64_t OUTLINED_FUNCTION_47(uint64_t a1)
{

  return sub_269449024();
}

uint64_t OUTLINED_FUNCTION_48(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FD968](a1, a2, v2, a1);
}

uint64_t OUTLINED_FUNCTION_54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_269448FF4();
}

uint64_t OUTLINED_FUNCTION_55()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_56(uint64_t a1)
{

  return sub_269449024();
}

void *OUTLINED_FUNCTION_57(uint64_t a1, ...)
{

  return sub_269449044();
}

uint64_t OUTLINED_FUNCTION_58(uint64_t a1)
{

  return MEMORY[0x2821CB228](v1, a1);
}

uint64_t sub_269442180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269448CB4();
  OUTLINED_FUNCTION_37();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
    OUTLINED_FUNCTION_37();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = sub_269448EC4();
      v12 = *(a3 + 24);
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_26944226C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_269448CB4();
  OUTLINED_FUNCTION_37();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
    OUTLINED_FUNCTION_37();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 20);
    }

    else
    {
      v10 = sub_269448EC4();
      v14 = *(a4 + 24);
    }

    v11 = a1 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t type metadata accessor for TranslationResultSnippet(uint64_t a1)
{
  result = qword_2803153D8;
  if (!qword_2803153D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269442398(uint64_t a1)
{
  result = sub_269448CB4();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(319);
    if (v3 <= 0x3F)
    {
      result = sub_269448EC4();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_269442450@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20 = a1;
  v3 = type metadata accessor for TranslationResultSnippet(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803153E8, &unk_26944A190);
  v7 = *(v6 - 8);
  v18 = v6;
  v19 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  sub_269443870(v2, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TranslationResultSnippet);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_269442D2C(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803153F0, &qword_26944A1A0);
  sub_2694430D4(&qword_2803153F8, &qword_2803153F0, &qword_26944A1A0, MEMORY[0x277CE14C8]);
  sub_269448E44();
  sub_269443870(v17, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TranslationResultSnippet);
  v12 = swift_allocObject();
  sub_269442D2C(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v10);
  OUTLINED_FUNCTION_1_1();
  sub_2694430D4(v13, &qword_2803153E8, &unk_26944A190, v14);
  v15 = v18;
  sub_269448DD4();

  return (*(v19 + 8))(v9, v15);
}

uint64_t sub_2694426F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v28 = sub_269448C64();
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315418, &qword_26944A1B8);
  v5 = MEMORY[0x28223BE20](v27);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = type metadata accessor for TranslationSourceLanguageView(0);
  v11 = v10 - 8;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = *(type metadata accessor for TranslationResultSnippet(0) + 20);
  sub_269443870(a1 + v17, v16, type metadata accessor for SiriTranslationModels.SiriTranslationResultModel);
  *&v16[*(v11 + 28)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315420, &qword_26944A1F0);
  swift_storeEnumTagMultiPayload();
  sub_269448EB4();
  sub_269443870(a1 + v17, v9, type metadata accessor for SiriTranslationModels.SiriTranslationResultModel);
  type metadata accessor for TranslationTargetLanguageView(0);
  sub_269448EB4();
  if (qword_2803150C8 != -1)
  {
    swift_once();
  }

  v18 = v28;
  v19 = __swift_project_value_buffer(v28, qword_280315598);
  (*(v26 + 16))(v4, v19, v18);
  v20 = sub_269448E24();
  KeyPath = swift_getKeyPath();
  v22 = &v9[*(v27 + 36)];
  *v22 = KeyPath;
  v22[1] = v20;
  sub_269443870(v16, v14, type metadata accessor for TranslationSourceLanguageView);
  sub_2694438D0(v9, v7);
  v23 = v29;
  sub_269443870(v14, v29, type metadata accessor for TranslationSourceLanguageView);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315428, &qword_26944A228);
  sub_2694438D0(v7, v23 + *(v24 + 48));
  sub_269443940(v9);
  sub_2694439A8(v16);
  sub_269443940(v7);
  return sub_2694439A8(v14);
}

uint64_t sub_269442A48()
{
  v0 = sub_269448F14();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315408, &qword_26944A1A8);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - v5;
  v7 = type metadata accessor for TranslationResultSnippet(0);
  v8 = sub_26944822C();
  v9 = sub_269448CA4();
  v10 = sub_269448F74();

  if (os_log_type_enabled(v9, v10))
  {
    v22 = v7;
    v23 = v1;
    v24 = v0;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136315138;
    v13 = [v8 punchOutUri];
    if (v13)
    {
      v14 = v13;
      sub_269448B44();

      v15 = sub_269448B54();
      v16 = 0;
    }

    else
    {
      v15 = sub_269448B54();
      v16 = 1;
    }

    __swift_storeEnumTagSinglePayload(v6, v16, 1, v15);
    v17 = sub_269448F54();
    v19 = sub_2694431E4(v17, v18, &v25);

    *(v11 + 4) = v19;
    _os_log_impl(&dword_269438000, v9, v10, "command.punchOutUri is %s.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x26D63D270](v12, -1, -1);
    MEMORY[0x26D63D270](v11, -1, -1);

    v1 = v23;
    v0 = v24;
  }

  else
  {
  }

  sub_269448EA4();
  v20 = v8;
  sub_269448EF4();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_269442D2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslationResultSnippet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269442D90@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TranslationResultSnippet(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2694426F8(v4, a1);
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for TranslationResultSnippet(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v24 = *(*v1 + 64);
  v4 = v0 + v3;
  sub_269448CB4();
  OUTLINED_FUNCTION_0();
  (*(v5 + 8))(v0 + v3);
  v6 = v0 + v3 + v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315148, &unk_26944A2E0);
  OUTLINED_FUNCTION_0();
  (*(v7 + 8))(v6);
  v8 = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  v9 = v8[5];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  OUTLINED_FUNCTION_0();
  v12 = *(v11 + 8);
  v12(v6 + v9, v10);
  v13 = OUTLINED_FUNCTION_2_0(v8[6]);
  (v12)(v13);
  v14 = v8[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315150, &qword_269449510);
  OUTLINED_FUNCTION_0();
  (*(v15 + 8))(v6 + v14);
  v16 = OUTLINED_FUNCTION_2_0(v8[8]);
  (v12)(v16);
  v17 = OUTLINED_FUNCTION_2_0(v8[9]);
  (v12)(v17);
  v18 = OUTLINED_FUNCTION_2_0(v8[10]);
  (v12)(v18);
  v19 = OUTLINED_FUNCTION_2_0(v8[11]);
  (v12)(v19);
  v20 = OUTLINED_FUNCTION_2_0(v8[12]);
  (v12)(v20);
  v21 = v1[8];
  sub_269448EC4();
  OUTLINED_FUNCTION_0();
  (*(v22 + 8))(v4 + v21);

  return MEMORY[0x2821FE8E8](v25, v3 + v24, v2 | 7);
}

uint64_t sub_269443074()
{
  type metadata accessor for TranslationResultSnippet(0);

  return sub_269442A48();
}

uint64_t sub_2694430D4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_26944311C(uint64_t a1)
{
  v2 = sub_269448CC4();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_269448D44();
}

unint64_t sub_2694431E4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2694432A8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_269443754(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2694432A8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2694433A8(a5, a6);
    *a1 = v9;
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
    result = sub_269448FC4();
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

uint64_t sub_2694433A8(uint64_t a1, unint64_t a2)
{
  v3 = sub_2694433F4(a1, a2);
  sub_26944350C(&unk_2879F8898);
  return v3;
}

uint64_t sub_2694433F4(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_269448F64())
  {
    result = sub_2694435F0(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_269448F94();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_269448FC4();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_26944350C(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_269443660(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2694435F0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315410, &qword_26944A1B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_269443660(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315410, &qword_26944A1B0);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_269443754(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_269443814@<X0>(uint64_t *a1@<X8>)
{
  result = sub_269448D74();
  *a1 = result;
  return result;
}

uint64_t sub_269443870(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2694438D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315418, &qword_26944A1B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269443940(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315418, &qword_26944A1B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2694439A8(uint64_t a1)
{
  v2 = type metadata accessor for TranslationSourceLanguageView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269443A04()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803153E8, &unk_26944A190);
  OUTLINED_FUNCTION_1_1();
  sub_2694430D4(v0, &qword_2803153E8, &unk_26944A190, v1);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_269443AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_12_0();
  v7 = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v6);
  if (*(*(v7 - 8) + 84) == a2)
  {
    v8 = v7;
    v9 = v3;
  }

  else
  {
    v8 = sub_269448EC4();
    v9 = v3 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_269443B74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_12_0();
  v9 = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v8);
  if (*(*(v9 - 8) + 84) == a3)
  {
    v10 = v9;
    v11 = v4;
  }

  else
  {
    v10 = sub_269448EC4();
    v11 = v4 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t type metadata accessor for TranslationTargetLanguageView(uint64_t a1)
{
  result = qword_280315430;
  if (!qword_280315430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269443C60(uint64_t a1)
{
  result = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(319);
  if (v2 <= 0x3F)
  {
    result = sub_269448EC4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_269443D00()
{
  OUTLINED_FUNCTION_14_0();
  v88 = v2;
  v3 = type metadata accessor for TranslationTargetLanguageView(0);
  v82 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_10_0(&v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_10_0(&v73 - v7);
  v8 = sub_269448EE4();
  OUTLINED_FUNCTION_2();
  v87 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315440, &qword_26944A2D0);
  OUTLINED_FUNCTION_0();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_10_0(&v73 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315448, &qword_26944A2D8);
  OUTLINED_FUNCTION_8_0(v20);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v21);
  v22 = OUTLINED_FUNCTION_6_0();
  v23 = type metadata accessor for SiriTranslationModels.SnippetTranslationItem(v22);
  OUTLINED_FUNCTION_2();
  v78 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_10_0(&v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v28);
  v30 = &v73 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315148, &unk_26944A2E0);
  sub_269448C14();
  sub_269444EE4(v105, v1);

  v81 = v23;
  if (__swift_getEnumTagSinglePayload(v1, 1, v23) == 1)
  {
    sub_2694459CC(v1, &qword_280315448, &qword_26944A2D8);
    v31 = 1;
  }

  else
  {
    v73 = v18;
    v75 = v8;
    OUTLINED_FUNCTION_3_0();
    sub_269445408(v1, v30);
    sub_2694443F4();
    v107 = MEMORY[0x277CE11D0];
    v108 = MEMORY[0x277D63A58];
    v105 = v32;
    v85 = v0;
    sub_269444754();
    v77 = v30;
    v76 = v14;
    v74 = v13;
    if (v36)
    {
      v37 = v33;
      v38 = v34;
      v39 = v35;
      v40 = v36;
      v41 = swift_allocObject();
      *(v41 + 16) = v37;
      *(v41 + 24) = v38;
      *(v41 + 32) = v39 & 1;
      *(v41 + 40) = v40;
      v42 = MEMORY[0x277D638F0];
      v43 = MEMORY[0x277CE0BD0];
    }

    else
    {
      v41 = 0;
      v43 = 0;
      v42 = 0;
      v101 = 0;
      v102 = 0;
    }

    v99 = 0;
    v100 = v41;
    v103 = v43;
    v104 = v42;
    v97 = 0u;
    v98 = 0u;
    v44 = v85;
    v45 = sub_2694449B8();
    v47 = v46;
    v49 = v48;
    v50 = sub_269448DB4();
    v52 = v51;
    v54 = v53;
    v56 = v55;
    sub_269445068(v45, v47, v49 & 1);

    v92 = v50;
    v93 = v52;
    v94 = v54 & 1;
    v95 = v56;
    v57 = sub_269448DC4();
    sub_269445068(v50, v52, v54 & 1);

    v96 = MEMORY[0x277D63A58];
    v95 = MEMORY[0x277CE11D0];
    v92 = v57;
    v91 = 0;
    v90 = 0u;
    v89 = 0u;
    v58 = v83;
    sub_269445078(v44, v83);
    v59 = v79;
    sub_269445078(v77, v79);
    v60 = (*(v82 + 80) + 16) & ~*(v82 + 80);
    v61 = (v60 + v80 + *(v78 + 80)) & ~*(v78 + 80);
    v62 = swift_allocObject();
    sub_269445408(v58, v62 + v60);
    OUTLINED_FUNCTION_3_0();
    sub_269445408(v59, v62 + v61);
    v63 = v84;
    sub_269445078(v85, v84);
    v64 = swift_allocObject();
    sub_269445408(v63, v64 + v60);
    v65 = v74;
    sub_269448ED4();
    KeyPath = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
    v67 = v77;
    sub_269448C14();
    v68 = v105;
    v69 = v106;
    sub_2694457DC(v67);
    v70 = v73;
    (*(v87 + 32))(v73, v65, v75);
    v14 = v76;
    v71 = (v70 + *(v76 + 36));
    *v71 = KeyPath;
    v71[1] = v68;
    v71[2] = v69;
    v72 = v86;
    sub_269445838(v70, v86);
    sub_269445838(v72, v88);
    v31 = 0;
  }

  __swift_storeEnumTagSinglePayload(v88, v31, 1, v14);
  OUTLINED_FUNCTION_13_0();
}

void sub_2694443F4()
{
  OUTLINED_FUNCTION_14_0();
  sub_269448BD4();
  OUTLINED_FUNCTION_2();
  v32 = v3;
  v33 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6_0();
  v4 = sub_269448CF4();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315448, &qword_26944A2D8);
  OUTLINED_FUNCTION_8_0(v11);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - v13;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315468, &qword_26944A330);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315148, &unk_26944A2E0);
  v31 = v0;
  sub_269448C14();
  sub_269444EE4(v34, v14);

  v18 = type metadata accessor for SiriTranslationModels.SnippetTranslationItem(0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    sub_2694459CC(v14, &qword_280315448, &qword_26944A2D8);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
    sub_269448C14();
    sub_2694457DC(v14);
  }

  sub_269448CE4();
  v19 = sub_269448DA4();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  (*(v6 + 8))(v10, v4);
  KeyPath = swift_getKeyPath();
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  sub_269448C14();
  sub_269448B94();
  v27 = &v17[*(v30 + 36)];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315470, &qword_26944A368);
  sub_269448808(v27 + *(v28 + 28));
  (*(v32 + 8))(v1, v33);
  *v27 = KeyPath;
  *v17 = v19;
  *(v17 + 1) = v21;
  v17[16] = v23 & 1;
  *(v17 + 3) = v25;
  sub_269445914();
  sub_269448DC4();
  sub_2694459CC(v17, &qword_280315468, &qword_26944A330);
  OUTLINED_FUNCTION_13_0();
}

void sub_269444754()
{
  OUTLINED_FUNCTION_14_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315458, &qword_26944A328);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v1);
  v3 = v15 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315448, &qword_26944A2D8);
  OUTLINED_FUNCTION_8_0(v4);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v5);
  v7 = v15 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315148, &unk_26944A2E0);
  sub_269448C14();
  sub_269444EE4(v15[2], v7);

  v8 = type metadata accessor for SiriTranslationModels.SnippetTranslationItem(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_2694459CC(v7, &qword_280315448, &qword_26944A2D8);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150F0, &qword_2694494E8);
    sub_269448C14();
    v9 = v15[3];
    sub_2694457DC(v7);
    if (v9)
    {
      sub_269448CE4();
      *&v3[*(v0 + 36)] = 1056964608;
      sub_2694430D4(&qword_280315460, &qword_280315458, &qword_26944A328, MEMORY[0x277CE01E0]);
      v10 = sub_269448DA4();
      v12 = v11;
      v14 = v13;

      sub_2694459CC(v3, &qword_280315458, &qword_26944A328);
      sub_269448DB4();
      sub_269445068(v10, v12, v14 & 1);
    }
  }

  OUTLINED_FUNCTION_13_0();
}

uint64_t sub_2694449B8()
{
  v1 = sub_269448CF4();
  OUTLINED_FUNCTION_2();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v5 = OUTLINED_FUNCTION_6_0();
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  sub_269448C14();
  sub_269448CE4();
  v6 = sub_269448DA4();

  (*(v3 + 8))(v0, v1);
  return v6;
}

void sub_269444AF0(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  v15 = sub_269448F14();
  OUTLINED_FUNCTION_2();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  v6 = v5 - v4;
  type metadata accessor for TranslationTargetLanguageView(0);
  sub_269448EA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315450, &qword_26944A320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26944A230;
  v16[0] = 1954047348;
  v16[1] = 0xE400000000000000;
  v8 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_9_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  sub_269448C14();
  v9 = v16[0];
  v10 = v16[1];
  *(inited + 96) = v8;
  *(inited + 72) = v9;
  *(inited + 80) = v10;
  strcpy(v16, "targetLanguage");
  HIBYTE(v16[1]) = -18;
  OUTLINED_FUNCTION_9_0();
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  sub_269448C14();
  v11 = v16[0];
  v12 = v16[1];
  *(inited + 168) = v8;
  *(inited + 144) = v11;
  *(inited + 152) = v12;
  v16[0] = 0xD000000000000016;
  v16[1] = 0x800000026944B0F0;
  OUTLINED_FUNCTION_9_0();
  type metadata accessor for SiriTranslationModels.SnippetTranslationItem(0);
  sub_269448C14();
  v13 = v16[0];
  v14 = v16[1];
  *(inited + 240) = v8;
  *(inited + 216) = v13;
  *(inited + 224) = v14;
  sub_269448F24();
  sub_269448F04();

  (*(v2 + 8))(v6, v15);
  OUTLINED_FUNCTION_13_0();
}

uint64_t sub_269444D44()
{
  v0 = sub_269448F14();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TranslationTargetLanguageView(0);
  sub_269448EA4();
  sub_269448F24();
  sub_269448F04();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_269444E78@<X0>(uint64_t *a1@<X8>)
{
  result = sub_269448D14();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_269444EE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for SiriTranslationModels.SnippetTranslationItem(0);
  v6 = v5;
  if (v4)
  {
    sub_269445078(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_269444F9C(uint64_t a1)
{
  v2 = sub_269448D04();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_269448D64();
}

uint64_t sub_269445068(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_269445078(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_12_0();
  v5(v4);
  OUTLINED_FUNCTION_0();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_2694450D4()
{
  v2 = (type metadata accessor for TranslationTargetLanguageView(0) - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*v2 + 64);
  type metadata accessor for SiriTranslationModels.SnippetTranslationItem(0);
  OUTLINED_FUNCTION_11_0();
  v7 = v6;
  v9 = v8;
  v10 = *(v7 + 80);
  v11 = (v4 + v5 + v10) & ~v10;
  v36 = v3 | v10;
  v37 = *(v9 + 64);
  v12 = v1 + v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315148, &unk_26944A2E0);
  OUTLINED_FUNCTION_0();
  (*(v13 + 8))(v12);
  v14 = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  v15 = v14[5];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  OUTLINED_FUNCTION_0();
  v18 = *(v17 + 8);
  v18(v12 + v15, v16);
  v19 = OUTLINED_FUNCTION_5_0(v14[6]);
  (v18)(v19);
  v20 = v14[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315150, &qword_269449510);
  OUTLINED_FUNCTION_0();
  (*(v21 + 8))(v12 + v20);
  v22 = OUTLINED_FUNCTION_5_0(v14[8]);
  (v18)(v22);
  v23 = OUTLINED_FUNCTION_5_0(v14[9]);
  (v18)(v23);
  v24 = OUTLINED_FUNCTION_5_0(v14[10]);
  (v18)(v24);
  v25 = OUTLINED_FUNCTION_5_0(v14[11]);
  (v18)(v25);
  v26 = OUTLINED_FUNCTION_5_0(v14[12]);
  (v18)(v26);
  v27 = v2[7];
  sub_269448EC4();
  OUTLINED_FUNCTION_0();
  (*(v28 + 8))(v12 + v27);
  v18(v1 + v11, v16);
  v29 = v0[7];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150F0, &qword_2694494E8);
  OUTLINED_FUNCTION_0();
  v32 = *(v31 + 8);
  v32(v1 + v11 + v29, v30);
  v33 = OUTLINED_FUNCTION_4(v0[8]);
  (v32)(v33);
  v18(v1 + v11 + v0[9], v16);
  v34 = OUTLINED_FUNCTION_4(v0[10]);
  (v32)(v34);

  return MEMORY[0x2821FE8E8](v1, v11 + v37, v36 | 7);
}

uint64_t sub_269445408(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_12_0();
  v5(v4);
  OUTLINED_FUNCTION_0();
  (*(v6 + 32))(a2, v2);
  return a2;
}

void sub_269445464()
{
  v1 = *(type metadata accessor for TranslationTargetLanguageView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for SiriTranslationModels.SnippetTranslationItem(0);
  OUTLINED_FUNCTION_8_0(v4);
  sub_269444AF0(v0 + ((v2 + v3 + *(v5 + 80)) & ~*(v5 + 80)));
}

uint64_t sub_269445520()
{
  type metadata accessor for TranslationTargetLanguageView(0);
  OUTLINED_FUNCTION_11_0();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v23 = *(v5 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315148, &unk_26944A2E0);
  OUTLINED_FUNCTION_0();
  (*(v6 + 8))(v1 + v4);
  v7 = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  v8 = v7[5];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  OUTLINED_FUNCTION_0();
  v11 = *(v10 + 8);
  v11(v1 + v4 + v8, v9);
  v12 = OUTLINED_FUNCTION_4(v7[6]);
  (v11)(v12);
  v13 = v7[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315150, &qword_269449510);
  OUTLINED_FUNCTION_0();
  (*(v14 + 8))(v1 + v4 + v13);
  v15 = OUTLINED_FUNCTION_4(v7[8]);
  (v11)(v15);
  v16 = OUTLINED_FUNCTION_4(v7[9]);
  (v11)(v16);
  v17 = OUTLINED_FUNCTION_4(v7[10]);
  (v11)(v17);
  v18 = OUTLINED_FUNCTION_4(v7[11]);
  (v11)(v18);
  v19 = OUTLINED_FUNCTION_4(v7[12]);
  (v11)(v19);
  v20 = *(v0 + 28);
  sub_269448EC4();
  OUTLINED_FUNCTION_0();
  (*(v21 + 8))(v1 + v4 + v20);

  return MEMORY[0x2821FE8E8](v1, v4 + v23, v3 | 7);
}

uint64_t sub_269445750()
{
  v0 = type metadata accessor for TranslationTargetLanguageView(0);
  OUTLINED_FUNCTION_8_0(v0);

  return sub_269444D44();
}

uint64_t sub_2694457AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_269448D14();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2694457DC(uint64_t a1)
{
  v2 = type metadata accessor for SiriTranslationModels.SnippetTranslationItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269445838(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315440, &qword_26944A2D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2694458A8()
{
  sub_269445068(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_269445914()
{
  result = qword_280315478;
  if (!qword_280315478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280315468, &qword_26944A330);
    sub_2694430D4(&qword_280315480, &qword_280315470, &qword_26944A368, MEMORY[0x277CE0870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280315478);
  }

  return result;
}

uint64_t sub_2694459CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_269445A28()
{
  result = qword_280315488;
  if (!qword_280315488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280315490, &unk_26944A370);
    sub_269445AAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280315488);
  }

  return result;
}

unint64_t sub_269445AAC()
{
  result = qword_280315498;
  if (!qword_280315498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280315440, &qword_26944A2D0);
    sub_269445B64();
    sub_2694430D4(&qword_2803154A8, &qword_2803154B0, qword_26944A550, MEMORY[0x277CE0870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280315498);
  }

  return result;
}

unint64_t sub_269445B64()
{
  result = qword_2803154A0;
  if (!qword_2803154A0)
  {
    sub_269448EE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803154A0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_0()
{

  return sub_269448F84();
}

uint64_t sub_269445C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_12_0();
  v7 = type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(v6);
  if (*(*(v7 - 8) + 84) == a2)
  {
    v8 = v7;
    v9 = v3;
  }

  else
  {
    v8 = sub_269448EC4();
    v9 = v3 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_269445D40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_12_0();
  v9 = type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(v8);
  if (*(*(v9 - 8) + 84) == a3)
  {
    v10 = v9;
    v11 = v4;
  }

  else
  {
    v10 = sub_269448EC4();
    v11 = v4 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t type metadata accessor for DisambiguateTranslationSnippet(uint64_t a1)
{
  result = qword_2803154B8;
  if (!qword_2803154B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269445E2C(uint64_t a1)
{
  result = type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(319);
  if (v2 <= 0x3F)
  {
    result = sub_269448EC4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_269445ECC()
{
  v1 = type metadata accessor for DisambiguateTranslationSnippet(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = sub_269448E94();
  v5 = OUTLINED_FUNCTION_8_0(v4);
  MEMORY[0x28223BE20](v5);
  sub_269446060();
  sub_269446DBC(v0, &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v7 = swift_allocObject();
  sub_269447038(&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803154C8, &qword_26944A420);
  sub_269446A58();
  return sub_269448E54();
}

uint64_t sub_269446060()
{
  type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  sub_269448C14();
  return sub_269448E84();
}

uint64_t sub_2694460F4(uint64_t a1)
{
  v2 = type metadata accessor for DisambiguateTranslationSnippet(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803151D8, &qword_269449540);
  sub_269448C14();
  swift_getKeyPath();
  sub_269446DBC(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_269447038(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315200, &qword_269449550);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803154E8, &unk_26944A460);
  sub_2694430D4(&qword_2803154F0, &qword_280315200, &qword_269449550, MEMORY[0x277D83980]);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803154D8, &qword_26944A428);
  v8 = sub_269448E74();
  v9 = sub_269446B50();
  v13 = v8;
  v14 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v13 = v7;
  v14 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  return sub_269448E34();
}

uint64_t sub_269446348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = type metadata accessor for SiriTranslationModels.Language(0);
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  MEMORY[0x28223BE20](v5);
  v7 = type metadata accessor for DisambiguateTranslationSnippet(0);
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_269448E74();
  v29 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803154D8, &qword_26944A428);
  v13 = *(v12 - 8);
  v30 = v12;
  v31 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  sub_269448C14();
  v59 = MEMORY[0x277D837D0];
  v60 = MEMORY[0x277D63F88];
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  sub_269448E64();
  sub_269446DBC(a2, v9);
  v16 = a1;
  v17 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269446DBC(v16, v17);
  v18 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v19 = (v8 + *(v28 + 80) + v18) & ~*(v28 + 80);
  v20 = swift_allocObject();
  sub_269447038(v9, v20 + v18);
  sub_269447038(v17, v20 + v19);
  v21 = sub_269446B50();
  v22 = v27;
  sub_269448DD4();

  (*(v29 + 8))(v11, v22);
  v57 = v22;
  v58 = v21;
  swift_getOpaqueTypeConformance2();
  v23 = v30;
  sub_269448E14();
  return (*(v31 + 8))(v15, v23);
}

uint64_t sub_269446798()
{
  v0 = sub_269448F14();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DisambiguateTranslationSnippet(0);
  sub_269448EA4();
  v11 = "playerButtonIdentifier";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315450, &qword_26944A320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26944A380;
  OUTLINED_FUNCTION_3_1(0x614C746567726174);
  v5 = MEMORY[0x277D837D0];
  sub_269448F84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  sub_269448C14();
  OUTLINED_FUNCTION_1_2();
  *(inited + 96) = v5;
  *(inited + 72) = v6;
  *(inited + 80) = v7;
  OUTLINED_FUNCTION_3_1(0x657361726870);
  sub_269448F84();
  type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(0);
  sub_269448C14();
  OUTLINED_FUNCTION_1_2();
  *(inited + 168) = v5;
  *(inited + 144) = v8;
  *(inited + 152) = v9;
  sub_269448F24();
  sub_269448F04();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_2694469EC()
{
  v1 = type metadata accessor for DisambiguateTranslationSnippet(0);
  OUTLINED_FUNCTION_8_0(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_2694460F4(v3);
}

unint64_t sub_269446A58()
{
  result = qword_2803154D0;
  if (!qword_2803154D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803154C8, &qword_26944A420);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803154D8, &qword_26944A428);
    sub_269448E74();
    sub_269446B50();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803154D0);
  }

  return result;
}

unint64_t sub_269446B50()
{
  result = qword_2803154E0;
  if (!qword_2803154E0)
  {
    sub_269448E74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803154E0);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  type metadata accessor for DisambiguateTranslationSnippet(0);
  OUTLINED_FUNCTION_11_0();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v15 = *(v5 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803151D8, &qword_269449540);
  OUTLINED_FUNCTION_0();
  (*(v6 + 8))(v1 + v4);
  v7 = type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(0);
  v8 = *(v7 + 20);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  OUTLINED_FUNCTION_0();
  v11 = *(v10 + 8);
  v11(v1 + v4 + v8, v9);
  v11(v1 + v4 + *(v7 + 24), v9);
  v12 = *(v0 + 28);
  sub_269448EC4();
  OUTLINED_FUNCTION_0();
  (*(v13 + 8))(v1 + v4 + v12);

  return MEMORY[0x2821FE8E8](v1, v4 + v15, v3 | 7);
}

uint64_t sub_269446D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for DisambiguateTranslationSnippet(0);
  OUTLINED_FUNCTION_8_0(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_269446348(a1, v7, a2);
}

uint64_t sub_269446DBC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_12_0();
  v5(v4);
  OUTLINED_FUNCTION_0();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_269446E18()
{
  v2 = (type metadata accessor for DisambiguateTranslationSnippet(0) - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*v2 + 64);
  type metadata accessor for SiriTranslationModels.Language(0);
  OUTLINED_FUNCTION_11_0();
  v7 = v6;
  v9 = v8;
  v10 = *(v7 + 80);
  v11 = (v4 + v5 + v10) & ~v10;
  v22 = v3 | v10;
  v23 = *(v9 + 64);
  v12 = v1 + v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803151D8, &qword_269449540);
  OUTLINED_FUNCTION_0();
  (*(v13 + 8))(v1 + v4);
  v14 = type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(0);
  v15 = *(v14 + 20);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  OUTLINED_FUNCTION_0();
  v18 = *(v17 + 8);
  v18(v12 + v15, v16);
  v18(v12 + *(v14 + 24), v16);
  v19 = v2[7];
  sub_269448EC4();
  OUTLINED_FUNCTION_0();
  (*(v20 + 8))(v12 + v19);
  v18(v1 + v11, v16);
  v18(v1 + v11 + *(v0 + 28), v16);

  return MEMORY[0x2821FE8E8](v1, v11 + v23, v22 | 7);
}

uint64_t sub_269447038(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_12_0();
  v5(v4);
  OUTLINED_FUNCTION_0();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_269447094()
{
  type metadata accessor for DisambiguateTranslationSnippet(0);
  v0 = type metadata accessor for SiriTranslationModels.Language(0);
  OUTLINED_FUNCTION_8_0(v0);
  return sub_269446798();
}

uint64_t sub_2694471D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  OUTLINED_FUNCTION_37();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315508, qword_26944A480);
    OUTLINED_FUNCTION_37();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = sub_269448EC4();
      v12 = *(a3 + 24);
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_2694472CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  OUTLINED_FUNCTION_37();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315508, qword_26944A480);
    OUTLINED_FUNCTION_37();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 20);
    }

    else
    {
      v10 = sub_269448EC4();
      v14 = *(a4 + 24);
    }

    v11 = a1 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t type metadata accessor for TranslationSourceLanguageView(uint64_t a1)
{
  result = qword_280315510;
  if (!qword_280315510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269447404(uint64_t a1)
{
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(319);
  if (v1 <= 0x3F)
  {
    sub_2694474A0(319);
    if (v2 <= 0x3F)
    {
      sub_269448EC4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2694474A0(uint64_t a1)
{
  if (!qword_280315520)
  {
    sub_269448CC4();
    v1 = sub_269448CD4();
    if (!v2)
    {
      atomic_store(v1, &qword_280315520);
    }
  }
}

uint64_t sub_269447514@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v3 = type metadata accessor for TranslationSourceLanguageView(0);
  v36 = *(v3 - 8);
  v35[1] = *(v36 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  sub_269448C14();
  v6 = sub_269448DB4();
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v54 = MEMORY[0x277CE0BD0];
  v55 = MEMORY[0x277D638F0];
  v13 = swift_allocObject();
  v52 = v13;
  *(v13 + 16) = v6;
  *(v13 + 24) = v8;
  *(v13 + 32) = v10 & 1;
  *(v13 + 40) = v12;
  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  v14 = sub_269447880();
  v16 = v15;
  LOBYTE(v12) = v17;
  v18 = sub_269448DB4();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_269445068(v14, v16, v12 & 1);

  v44 = MEMORY[0x277CE0BD0];
  v45 = MEMORY[0x277D638F0];
  v25 = swift_allocObject();
  v43 = v25;
  *(v25 + 16) = v18;
  *(v25 + 24) = v20;
  *(v25 + 32) = v22 & 1;
  *(v25 + 40) = v24;
  v42 = 0;
  v41 = 0u;
  v40 = 0u;
  sub_269447D2C(v2, v5);
  v26 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v27 = swift_allocObject();
  sub_269447D94(v5, v27 + v26);
  sub_269447D2C(v2, v5);
  v28 = swift_allocObject();
  sub_269447D94(v5, v28 + v26);
  v29 = v39;
  sub_269448ED4();
  KeyPath = swift_getKeyPath();
  sub_269448C14();
  v31 = v52;
  v32 = v53;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315440, &qword_26944A2D0);
  v34 = (v29 + *(result + 36));
  *v34 = KeyPath;
  v34[1] = v31;
  v34[2] = v32;
  return result;
}

uint64_t sub_269447880()
{
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  sub_269448C14();
  sub_269448D94();
  v0 = sub_269448DA4();

  return v0;
}

uint64_t sub_269447940()
{
  v0 = sub_269448F14();
  v13 = *(v0 - 8);
  v14 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TranslationSourceLanguageView(0);
  sub_269448EA4();
  v12[1] = "Translation.StopSpeakAction";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315450, &qword_26944A320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26944A230;
  v15[0] = 1954047348;
  v15[1] = 0xE400000000000000;
  v4 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_2_1();
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  sub_269448C14();
  v5 = v15[0];
  v6 = v15[1];
  *(inited + 96) = v4;
  *(inited + 72) = v5;
  *(inited + 80) = v6;
  strcpy(v15, "targetLanguage");
  HIBYTE(v15[1]) = -18;
  OUTLINED_FUNCTION_2_1();
  sub_269448C14();
  v7 = v15[0];
  v8 = v15[1];
  *(inited + 168) = v4;
  *(inited + 144) = v7;
  *(inited + 152) = v8;
  v15[0] = 0xD000000000000016;
  v15[1] = 0x800000026944B0F0;
  OUTLINED_FUNCTION_2_1();
  sub_269448C14();
  v9 = v15[0];
  v10 = v15[1];
  *(inited + 240) = v4;
  *(inited + 216) = v9;
  *(inited + 224) = v10;
  sub_269448F24();
  sub_269448F04();

  return (*(v13 + 8))(v2, v14);
}

uint64_t sub_269447BB0()
{
  v0 = sub_269448F14();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TranslationSourceLanguageView(0);
  sub_269448EA4();
  sub_269448F24();
  sub_269448F04();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_269447CE8()
{
  sub_269445068(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_269447D2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslationSourceLanguageView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269447D94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslationSourceLanguageView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_4Tm()
{
  v1 = type metadata accessor for TranslationSourceLanguageView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v23 = *(*(v1 - 8) + 64);
  v4 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315148, &unk_26944A2E0);
  OUTLINED_FUNCTION_0_1();
  (*(v5 + 8))(v0 + v3);
  v6 = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  v7 = v6[5];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v3 + v7, v8);
  v10 = OUTLINED_FUNCTION_4(v6[6]);
  (v9)(v10);
  v11 = v6[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315150, &qword_269449510);
  OUTLINED_FUNCTION_0_1();
  (*(v12 + 8))(v0 + v3 + v11);
  v13 = OUTLINED_FUNCTION_4(v6[8]);
  (v9)(v13);
  v14 = OUTLINED_FUNCTION_4(v6[9]);
  (v9)(v14);
  v15 = OUTLINED_FUNCTION_4(v6[10]);
  (v9)(v15);
  v16 = OUTLINED_FUNCTION_4(v6[11]);
  (v9)(v16);
  v17 = OUTLINED_FUNCTION_4(v6[12]);
  (v9)(v17);
  v18 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315420, &qword_26944A1F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_269448CC4();
    OUTLINED_FUNCTION_0_1();
    (*(v19 + 8))(v4 + v18);
  }

  else
  {
  }

  v20 = *(v1 + 24);
  sub_269448EC4();
  OUTLINED_FUNCTION_0_1();
  (*(v21 + 8))(v4 + v20);

  return MEMORY[0x2821FE8E8](v0, v3 + v23, v2 | 7);
}

uint64_t sub_2694480F4()
{
  type metadata accessor for TranslationSourceLanguageView(0);

  return sub_269447BB0();
}

unint64_t sub_269448160()
{
  result = qword_2803154A8;
  if (!qword_2803154A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803154B0, qword_26944A550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803154A8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_1()
{

  return sub_269448F84();
}

id sub_26944822C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315408, &qword_26944A1A8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v16 - v1;
  v3 = sub_269448B84();
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  sub_269448B74();
  v10 = sub_269448B64();
  v12 = v11;
  (*(v5 + 8))(v8, v3);
  sub_2694487A4(v10, v12, v9);

  sub_269448524(v2);
  v13 = sub_269448B54();
  v14 = 0;
  if (__swift_getEnumTagSinglePayload(v2, 1, v13) != 1)
  {
    v14 = sub_269448B34();
    (*(*(v13 - 8) + 8))(v2, v13);
  }

  [v9 setPunchOutUri_];

  return v9;
}

uint64_t sub_26944840C()
{
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  sub_269448C14();
  v0 = sub_269448C84();

  result = 0;
  if (v0 != 23)
  {
    return sub_269448C94();
  }

  return result;
}

uint64_t sub_269448498()
{
  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  sub_269448C14();
  v0 = sub_269448C84();

  result = 0;
  if (v0 != 23)
  {
    return sub_269448C94();
  }

  return result;
}

uint64_t sub_269448524@<X0>(uint64_t a1@<X8>)
{
  v8[1] = a1;
  v1 = sub_269448B24();
  OUTLINED_FUNCTION_2();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269448B14();
  sub_269448B04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280315528, qword_26944A598);
  sub_269448AD4();
  *(swift_allocObject() + 16) = xmmword_26944A230;
  sub_26944840C();
  sub_269448AC4();

  sub_269448498();
  sub_269448AC4();

  type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803150E8, &qword_2694494E0);
  sub_269448C14();
  sub_269448AC4();

  sub_269448AE4();
  sub_269448AF4();
  return (*(v3 + 8))(v6, v1);
}

void sub_2694487A4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269448F44();

  [a3 setAceId_];
}

uint64_t sub_269448808@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_269448BB4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269448BC4();
  v6 = sub_269448BA4();
  (*(v3 + 8))(v5, v2);
  v7 = sub_269448D04();
  v8 = MEMORY[0x277CDFA98];
  if (v6 != 2)
  {
    v8 = MEMORY[0x277CDFA80];
  }

  return (*(*(v7 - 8) + 104))(a1, *v8, v7);
}

id sub_269448958()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_280315530 = result;
  return result;
}

uint64_t sub_2694489B0()
{
  v0 = sub_269448C64();
  __swift_allocate_value_buffer(v0, qword_280315598);
  __swift_project_value_buffer(v0, qword_280315598);
  if (qword_2803150C0 != -1)
  {
    swift_once();
  }

  v1 = qword_280315530;
  return sub_269448C54();
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