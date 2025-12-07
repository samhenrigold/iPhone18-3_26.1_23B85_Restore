BOOL sub_257667378(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_267();
  result = 0;
  if (v7(*v5, *v6))
  {
    a4(0);
    sub_2577431B4();
    OUTLINED_FUNCTION_6_26();
    v10 = sub_257664E78(v8, v9);
    if (OUTLINED_FUNCTION_4_2(v10))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_257667454(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_87_2();
  OUTLINED_FUNCTION_211();

  return sub_2577435F4();
}

uint64_t sub_257667504(uint64_t (*a1)(void))
{
  sub_257743A14();
  a1(0);
  OUTLINED_FUNCTION_87_2();
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2576675D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_257743A14();
  a4(0);
  OUTLINED_FUNCTION_87_2();
  sub_2577435F4();
  return sub_257743A64();
}

void sub_257667650(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for Proto_MILSpec_DictionaryValue(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  MLProgram.Value.Dictionary.keyValuePairs.setter();
}

void MLProgram.Value.Dictionary.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_16_1();
  v2 = sub_257743A84();
  OUTLINED_FUNCTION_63();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_24_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_38();
  type metadata accessor for MLProgram.Value.Dictionary(v8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_30_2();
  v10 = OUTLINED_FUNCTION_156();
  sub_257664F1C(v10, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2577442B0;
  strcpy((v11 + 32), "keyValuePairs");
  *(v11 + 46) = -4864;
  MLProgram.Value.Dictionary.keyValuePairs.getter();
  v13 = v12;
  *(v11 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880848, &qword_25776DC20);
  *(v11 + 48) = v13;
  sub_257743A74();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  (*(v4 + 104))(v0, *MEMORY[0x277D84C38], v2);
  OUTLINED_FUNCTION_201();
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t MLProgram.Value.Dictionary.debugDescription.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_63_5();
  v5 = v1;
  MLProgram.Value.Dictionary.keyValuePairs.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879ED0, &qword_2577447F8);
  v2 = OUTLINED_FUNCTION_18_1();
  MEMORY[0x259C64F20](v2);
  OUTLINED_FUNCTION_96_3();

  v3 = OUTLINED_FUNCTION_263();
  MEMORY[0x259C64E90](v3);

  OUTLINED_FUNCTION_75_4();
  return v5;
}

uint64_t sub_257667914(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879ED0, &qword_2577447F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_257667984()
{
  OUTLINED_FUNCTION_65_3();
  if (v0)
  {
    v2 = (v1 + 32);
    do
    {
      v3 = *v2++;
      v4 = v3;
      if (v3 == 0.0)
      {
        v4 = 0.0;
      }

      MEMORY[0x259C65220](*&v4);
      --v0;
    }

    while (v0);
  }
}

void sub_2576679DC()
{
  OUTLINED_FUNCTION_65_3();
  if (v0)
  {
    v2 = v1 + 40;
    do
    {

      sub_257743694();

      v2 += 16;
      --v0;
    }

    while (v0);
  }
}

uint64_t sub_257667A44(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x259C651F0](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      ++v5;
      result = sub_257743A34();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_257667A94(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x259C651F0](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      v5 += 4;
      result = sub_257743A44();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_257667AE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x259C651F0](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      v5 += 4;
      result = sub_257743A44();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_257667B4C(uint64_t result, unint64_t a2, char a3)
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  switch((a2 >> 60) & 3 | v3)
  {
    case 6uLL:
      result = sub_257486740(result, a2 & 0xCFFFFFFFFFFFFFFFLL);
      break;
    case 7uLL:
      return result;
    default:

      break;
  }

  return result;
}

unint64_t sub_257667CFC()
{
  result = qword_27F880868;
  if (!qword_27F880868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880868);
  }

  return result;
}

uint64_t sub_257667F48(uint64_t a1)
{
  result = type metadata accessor for MLProgram.Value.ImmediateValue(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MLProgram.Value.BlobFileValue(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_257667FBC(uint64_t a1)
{
  result = type metadata accessor for MLProgram.Value.Tuple(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MLProgram.Value.List(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for MLProgram.Value.Dictionary(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2576680A4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FA && *(a1 + 17))
    {
      v2 = *a1 + 1017;
    }

    else
    {
      v2 = ((*(a1 + 8) >> 60) & 3 | (4 * *(a1 + 16))) ^ 0x3FF;
      if (v2 >= 0x3F9)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_2576680F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3F9)
  {
    *(result + 16) = 0;
    *result = a2 - 1018;
    *(result + 8) = 0;
    if (a3 >= 0x3FA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (-a2 & 3) << 60;
      *(result + 16) = -a2 >> 2;
    }
  }

  return result;
}

uint64_t sub_257668150(uint64_t result, char a2)
{
  *(result + 8) = *(result + 8) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 3) << 60);
  *(result + 16) = (a2 & 4) != 0;
  return result;
}

uint64_t sub_25766823C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2576682AC()
{
  result = qword_27F8808E8;
  if (!qword_27F8808E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8808E8);
  }

  return result;
}

uint64_t sub_257668318(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *(a2 + 16);
  result = MEMORY[0x259C651F0](v5);
  if (v5)
  {
    v7 = (a2 + 32);
    do
    {
      v8 = *v7++;
      result = a3(v8);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_257668370()
{
  OUTLINED_FUNCTION_65_3();
  if (v0)
  {
    v2 = (v1 + 40);
    do
    {
      v3 = *v2;
      MEMORY[0x259C651F0](*(v2 - 1));
      MEMORY[0x259C651F0](v3);
      v2 += 2;
      --v0;
    }

    while (v0);
  }
}

void OUTLINED_FUNCTION_30_8()
{
  *(v0 + 16) = v3;
  v6 = v0 + v5 * v4;
  *(v6 + 32) = v1;
  *(v6 + 40) = v2;
  *(v6 + 48) = 0;
}

char *OUTLINED_FUNCTION_32_7()
{

  return sub_257484040(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_49_4()
{

  return sub_257664D34();
}

uint64_t OUTLINED_FUNCTION_50_4()
{

  return sub_257664D34();
}

char *OUTLINED_FUNCTION_61_2(char *a1)
{

  return sub_257484040(a1, v1, 1);
}

void OUTLINED_FUNCTION_65_3()
{

  JUMPOUT(0x259C651F0);
}

void OUTLINED_FUNCTION_75_4()
{

  JUMPOUT(0x259C64E90);
}

uint64_t OUTLINED_FUNCTION_85_3()
{
  *v1 = v0;

  return type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value(0);
}

uint64_t OUTLINED_FUNCTION_86_3(uint64_t a1)
{

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_87_2()
{

  return sub_257664E78(v1, v0);
}

uint64_t OUTLINED_FUNCTION_88_2()
{

  return sub_257743674();
}

uint64_t OUTLINED_FUNCTION_101_3()
{

  return sub_257664D88(v1, v0);
}

uint64_t static NeuralNetwork.Layer.slice(name:inputName:outputName:startIndex:endIndex:stride:axis:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 *a11)
{
  v35 = a7;
  v36 = a8;
  v31 = a1;
  v32 = a2;
  v34 = a10;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v29 - v17;
  v19 = type metadata accessor for NeuralNetwork.Layer.Kind(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *a11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v22 = swift_allocObject();
  v33 = xmmword_2577442B0;
  *(v22 + 16) = xmmword_2577442B0;
  *(v22 + 32) = a3;
  *(v22 + 40) = a4;
  v23 = swift_allocObject();
  *(v23 + 16) = v33;
  *(v23 + 32) = a5;
  *(v23 + 40) = a6;
  *v21 = 0u;
  *(v21 + 1) = 0u;
  v24 = 1;
  v21[32] = 1;
  type metadata accessor for Proto_SliceLayerParams(0);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v25 = v34;
  v26 = v36;
  *v21 = v35;
  *(v21 + 1) = v26;
  if (v25 < 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  *(v21 + 2) = v25;
  *(v21 + 3) = v30;
  v21[32] = 1;
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v24 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
LABEL_5:
    swift_once();
  }

  *(a9 + v24) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v23);
  sub_2574897E0(v18);
  v27 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v27);
  sub_25752846C();
  return sub_257634BB4(v21);
}

uint64_t static NeuralNetwork.Layer.Kind.slice(startIndex:endIndex:stride:axis:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 1;
  type metadata accessor for Proto_SliceLayerParams(0);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a5 = a1;
  *(a5 + 8) = a2;
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = a3;
    *(a5 + 24) = v9;
    *(a5 + 32) = 1;
    type metadata accessor for NeuralNetwork.Layer.Kind(0);

    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

void sub_257668B70()
{
  OUTLINED_FUNCTION_31();
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880900, &qword_25776E3A8);
  OUTLINED_FUNCTION_13(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_40();
  v77 = type metadata accessor for SupportVectorCoefficients(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v78 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8808F8, &qword_25776E398);
  OUTLINED_FUNCTION_13(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v74 - v11;
  v13 = type metadata accessor for SupportVectorRegressorConfiguration.SupportVectors(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v17 = v16 - v15;
  v18 = type metadata accessor for SupportVectorKernel.Kind(0);
  v19 = OUTLINED_FUNCTION_13(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880638, &unk_25776CCB8);
  OUTLINED_FUNCTION_13(v23);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v24);
  v25 = OUTLINED_FUNCTION_17_3();
  v26 = type metadata accessor for SupportVectorKernel(v25);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3();
  v30 = v29 - v28;
  SupportVectorRegressorConfiguration.kernel.getter();
  v31 = OUTLINED_FUNCTION_33_5();
  OUTLINED_FUNCTION_155(v31, v32, v26);
  if (v33)
  {
    sub_2574695E4(v1, &qword_27F880638, &unk_25776CCB8);
    v34 = MEMORY[0x277D84F90];
  }

  else
  {
    v76 = v0;
    OUTLINED_FUNCTION_11_17();
    sub_257669410(v1, v30);
    SupportVectorKernel.kind.getter();
    v75 = sub_2576D4A84();
    v36 = v35;
    v38 = v37;
    sub_257669E7C(v22, type metadata accessor for SupportVectorKernel.Kind);
    sub_257469AE0();
    v34 = v39;
    v40 = *(v39 + 16);
    if (v40 >= *(v39 + 24) >> 1)
    {
      OUTLINED_FUNCTION_18_18();
      v34 = v69;
    }

    sub_257669E7C(v30, type metadata accessor for SupportVectorKernel);
    *(v34 + 16) = v40 + 1;
    v41 = v34 + 40 * v40;
    *(v41 + 32) = 0x6C656E72654BLL;
    *(v41 + 40) = 0xE600000000000000;
    *(v41 + 48) = v75;
    *(v41 + 56) = v36;
    *(v41 + 64) = v38;
    v3 = v76;
  }

  SupportVectorRegressorConfiguration.supportVectors.getter(v12);
  OUTLINED_FUNCTION_155(v12, 1, v13);
  if (v33)
  {
    sub_2574695E4(v12, &qword_27F8808F8, &qword_25776E398);
  }

  else
  {
    sub_257669410(v12, v17);
    v42 = sub_25766AA58();
    v44 = v43;
    v46 = v45;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_19_15();
      v34 = v70;
    }

    v48 = *(v34 + 16);
    if (v48 >= *(v34 + 24) >> 1)
    {
      OUTLINED_FUNCTION_18_18();
      v34 = v71;
    }

    OUTLINED_FUNCTION_2_35();
    sub_257669E7C(v17, v49);
    *(v34 + 16) = v48 + 1;
    v50 = v34 + 40 * v48;
    *(v50 + 32) = 0x2074726F70707553;
    *(v50 + 40) = 0xEF73726F74636556;
    *(v50 + 48) = v42;
    *(v50 + 56) = v44;
    *(v50 + 64) = v46;
  }

  SupportVectorRegressorConfiguration.coefficients.getter();
  v51 = OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_155(v51, v52, v77);
  if (v33)
  {
    sub_2574695E4(v2, &qword_27F880900, &qword_25776E3A8);
  }

  else
  {
    v53 = v3;
    OUTLINED_FUNCTION_10_24();
    sub_257669410(v2, v78);
    v54 = sub_25771F1B0();
    v56 = v55;
    v58 = v57;
    v59 = swift_isUniquelyReferenced_nonNull_native();
    if ((v59 & 1) == 0)
    {
      OUTLINED_FUNCTION_19_15();
      v34 = v72;
    }

    v60 = *(v34 + 16);
    if (v60 >= *(v34 + 24) >> 1)
    {
      OUTLINED_FUNCTION_18_18();
      v34 = v73;
    }

    sub_257669E7C(v78, type metadata accessor for SupportVectorCoefficients);
    *(v34 + 16) = v60 + 1;
    v61 = v34 + 40 * v60;
    strcpy((v61 + 32), "Coefficients");
    *(v61 + 45) = 0;
    *(v61 + 46) = -5120;
    *(v61 + 48) = v54;
    *(v61 + 56) = v56;
    *(v61 + 64) = v58;
    v3 = v53;
  }

  v79 = *(v3 + *(type metadata accessor for Proto_SupportVectorRegressor(0) + 20));
  v62 = sub_257743674();
  v64 = v63;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_19_15();
    v34 = v67;
  }

  v65 = *(v34 + 16);
  if (v65 >= *(v34 + 24) >> 1)
  {
    sub_257469AE0();
    v34 = v68;
  }

  *(v34 + 16) = v65 + 1;
  v66 = v34 + 40 * v65;
  *(v66 + 32) = 7301202;
  *(v66 + 40) = 0xE300000000000000;
  *(v66 + 48) = v62;
  *(v66 + 56) = v64;
  *(v66 + 64) = 0;
  sub_2576AACFC(v34);
  OUTLINED_FUNCTION_35();
}

void SupportVectorRegressorConfiguration.kernel.getter()
{
  OUTLINED_FUNCTION_31();
  v5 = v4;
  type metadata accessor for Proto_Kernel(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v22 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FDE0, &unk_257768D60);
  v10 = OUTLINED_FUNCTION_13(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_26_4();
  MEMORY[0x28223BE20](v11);
  v12 = *(OUTLINED_FUNCTION_35_5() + 28);
  OUTLINED_FUNCTION_34_6();
  v13 = OUTLINED_FUNCTION_29_9();
  sub_2574695E4(v13, v14, &unk_257768D60);
  if (v3 != 1)
  {
    sub_2574AD5D8(v0 + v12, v1, &qword_27F87FDE0, &unk_257768D60);
    OUTLINED_FUNCTION_16_10();
    if (v15)
    {
      type metadata accessor for Proto_Kernel.OneOf_Kernel(0);
      v20 = v22;
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      OUTLINED_FUNCTION_16_10();
      if (!v15)
      {
        sub_2574695E4(v1, &qword_27F87FDE0, &unk_257768D60);
      }
    }

    else
    {
      OUTLINED_FUNCTION_3_35();
      v20 = v22;
      sub_257669410(v1, v22);
    }

    OUTLINED_FUNCTION_3_35();
    sub_257669410(v20, v5);
    v2 = 0;
  }

  v21 = type metadata accessor for SupportVectorKernel(0);
  __swift_storeEnumTagSinglePayload(v5, v2, 1, v21);
  OUTLINED_FUNCTION_35();
}

uint64_t SupportVectorRegressorConfiguration.kernel.setter(uint64_t a1)
{
  v5 = type metadata accessor for Proto_Kernel(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v7 = OUTLINED_FUNCTION_17_3();
  type metadata accessor for SupportVectorKernel(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  v9 = OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_155(v9, v10, v11);
  if (v12)
  {
    sub_2574695E4(a1, &qword_27F880638, &unk_25776CCB8);
    v13 = type metadata accessor for Proto_SupportVectorRegressor(0);
    sub_2574695E4(v1 + *(v13 + 28), &qword_27F87FDE0, &unk_257768D60);
    OUTLINED_FUNCTION_44();

    return __swift_storeEnumTagSinglePayload(v14, v15, v16, v5);
  }

  else
  {
    OUTLINED_FUNCTION_11_17();
    v17 = OUTLINED_FUNCTION_277();
    sub_257669410(v17, v18);
    sub_257669410(v3, v2);
    v19 = *(type metadata accessor for Proto_SupportVectorRegressor(0) + 28);
    sub_2574695E4(v1 + v19, &qword_27F87FDE0, &unk_257768D60);
    sub_257669410(v2, v1 + v19);
    return __swift_storeEnumTagSinglePayload(v1 + v19, 0, 1, v5);
  }
}

uint64_t sub_257669410(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return a2;
}

void (*SupportVectorRegressorConfiguration.kernel.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x58uLL);
  v2 = OUTLINED_FUNCTION_26_9(v1);
  v3 = type metadata accessor for SupportVectorKernel(v2);
  v1[1] = v3;
  v24 = v3;
  OUTLINED_FUNCTION_4();
  v1[2] = __swift_coroFrameAllocStub(*(v4 + 64));
  v5 = type metadata accessor for Proto_Kernel(0);
  v1[3] = v5;
  OUTLINED_FUNCTION_4();
  v7 = *(v6 + 64);
  v1[4] = __swift_coroFrameAllocStub(v7);
  v23 = __swift_coroFrameAllocStub(v7);
  v1[5] = v23;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FDE0, &unk_257768D60);
  OUTLINED_FUNCTION_13(v8);
  v9 = OUTLINED_FUNCTION_37_9();
  v1[6] = v9;
  v10 = OUTLINED_FUNCTION_37_9();
  v1[7] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880638, &unk_25776CCB8);
  OUTLINED_FUNCTION_13(v11);
  v1[8] = OUTLINED_FUNCTION_37_9();
  v12 = OUTLINED_FUNCTION_37_9();
  v1[9] = v12;
  v13 = *(type metadata accessor for Proto_SupportVectorRegressor(0) + 28);
  *(v1 + 20) = v13;
  sub_2574AD5D8(v0 + v13, v10, &qword_27F87FDE0, &unk_257768D60);
  v14 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v5);
  sub_2574695E4(v10, &qword_27F87FDE0, &unk_257768D60);
  if (EnumTagSinglePayload != 1)
  {
    sub_2574AD5D8(v0 + v13, v9, &qword_27F87FDE0, &unk_257768D60);
    OUTLINED_FUNCTION_155(v9, 1, v5);
    if (v16)
    {
      type metadata accessor for Proto_Kernel.OneOf_Kernel(0);
      v21 = v23;
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      OUTLINED_FUNCTION_155(v9, 1, v5);
      if (!v16)
      {
        sub_2574695E4(v9, &qword_27F87FDE0, &unk_257768D60);
      }
    }

    else
    {
      OUTLINED_FUNCTION_3_35();
      v21 = v23;
      sub_257669410(v9, v23);
    }

    OUTLINED_FUNCTION_3_35();
    sub_257669410(v21, v12);
    v14 = 0;
  }

  __swift_storeEnumTagSinglePayload(v12, v14, 1, v24);
  return sub_2576696E8;
}

void sub_2576696E8()
{
  OUTLINED_FUNCTION_31();
  v1 = *v0;
  v2 = (*v0)[9];
  if (v3)
  {
    v5 = v1[7];
    v4 = v1[8];
    v7 = v1[5];
    v6 = v1[6];
    v8 = v1[4];
    v9 = v1[2];
    v10 = OUTLINED_FUNCTION_263();
    sub_2574AD5D8(v10, v11, &qword_27F880638, v12);
    SupportVectorRegressorConfiguration.kernel.setter(v4);
    sub_2574695E4(v2, &qword_27F880638, &unk_25776CCB8);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_33_5();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, v14, v15);
    v17 = *(v1 + 20);
    if (EnumTagSinglePayload == 1)
    {
      v18 = *v1;
      sub_2574695E4(v2, &qword_27F880638, &unk_25776CCB8);
      sub_2574695E4(v18 + v17, &qword_27F87FDE0, &unk_257768D60);
      v19 = 1;
    }

    else
    {
      v20 = v1[4];
      v21 = v1[2];
      v22 = *v1;
      OUTLINED_FUNCTION_11_17();
      v23 = OUTLINED_FUNCTION_263();
      sub_257669410(v23, v24);
      sub_257669410(v21, v20);
      sub_2574695E4(v22 + v17, &qword_27F87FDE0, &unk_257768D60);
      sub_257669410(v20, v22 + v17);
      v19 = 0;
    }

    v4 = v1[8];
    v2 = v1[9];
    v6 = v1[6];
    v5 = v1[7];
    v8 = v1[4];
    v7 = v1[5];
    v9 = v1[2];
    __swift_storeEnumTagSinglePayload(*v1 + *(v1 + 20), v19, 1, v1[3]);
  }

  free(v2);
  free(v4);
  free(v5);
  free(v6);
  free(v7);
  free(v8);
  free(v9);
  OUTLINED_FUNCTION_35();

  free(v25);
}

uint64_t SupportVectorRegressorConfiguration.supportVectors.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = type metadata accessor for Proto_SupportVectorRegressor.OneOf_SupportVectors(0);
  OUTLINED_FUNCTION_4();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FDD8, &qword_25776E390);
  OUTLINED_FUNCTION_13(v12);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_40();
  sub_2574AD5D8(v3, v2, &qword_27F87FDD8, &qword_25776E390);
  v14 = 1;
  v15 = OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_155(v15, v16, v5);
  if (!v17)
  {
    sub_257669410(v2, v11);
    sub_25766AFD4(v11, v9);
    sub_257669BEC();
    sub_257669E7C(v11, type metadata accessor for Proto_SupportVectorRegressor.OneOf_SupportVectors);
    v14 = 0;
  }

  v18 = type metadata accessor for SupportVectorRegressorConfiguration.SupportVectors(0);
  return __swift_storeEnumTagSinglePayload(a1, v14, 1, v18);
}

uint64_t sub_257669A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_13(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = &v16 - v13;
  sub_2574AD5D8(a1, &v16 - v13, a5, a6);
  return a7(v14);
}

uint64_t SupportVectorRegressorConfiguration.supportVectors.setter(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FDD8, &qword_25776E390);
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_17_3();
  v8 = type metadata accessor for SupportVectorRegressorConfiguration.SupportVectors(v7);
  OUTLINED_FUNCTION_155(a1, 1, v8);
  if (v9)
  {
    sub_2574695E4(a1, &qword_27F8808F8, &qword_25776E398);
    v11 = type metadata accessor for Proto_SupportVectorRegressor.OneOf_SupportVectors(0);
    v12 = 1;
  }

  else
  {
    sub_257669CF8(v2);
    OUTLINED_FUNCTION_2_35();
    sub_257669E7C(a1, v10);
    v11 = type metadata accessor for Proto_SupportVectorRegressor.OneOf_SupportVectors(0);
    v12 = 0;
  }

  __swift_storeEnumTagSinglePayload(v2, v12, 1, v11);
  return sub_257669C88(v2, v3);
}

uint64_t sub_257669BEC()
{
  type metadata accessor for Proto_SupportVectorRegressor.OneOf_SupportVectors(0);
  swift_getEnumCaseMultiPayload();
  v2 = OUTLINED_FUNCTION_205();
  sub_257669410(v2, v3);
  type metadata accessor for SupportVectorRegressorConfiguration.SupportVectors(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_257669C88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FDD8, &qword_25776E390);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_257669CF8@<X0>(uint64_t a1@<X8>)
{
  v4 = v1;
  v6 = type metadata accessor for DenseSupportVectorCollection(0);
  v7 = OUTLINED_FUNCTION_13(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  v11 = type metadata accessor for SparseSupportVectorCollection(0);
  v12 = OUTLINED_FUNCTION_13(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  type metadata accessor for SupportVectorRegressorConfiguration.SupportVectors(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  OUTLINED_FUNCTION_4_24();
  sub_25766AFD4(v4, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_9_16();
    sub_257669410(v3, v10);
    sub_257669410(v10, a1);
  }

  else
  {
    OUTLINED_FUNCTION_8_17();
    sub_257669410(v3, v2);
    sub_257669410(v2, a1);
  }

  type metadata accessor for Proto_SupportVectorRegressor.OneOf_SupportVectors(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_257669E7C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

void SupportVectorRegressorConfiguration.supportVectors.modify()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  v3 = OUTLINED_FUNCTION_26_9(v2);
  v4 = type metadata accessor for Proto_SupportVectorRegressor.OneOf_SupportVectors(v3);
  v2[1] = v4;
  OUTLINED_FUNCTION_4();
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v2[2] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FDD8, &qword_25776E390);
  OUTLINED_FUNCTION_13(v7);
  v2[3] = OUTLINED_FUNCTION_36_5();
  v8 = OUTLINED_FUNCTION_36_5();
  v2[4] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8808F8, &qword_25776E398);
  OUTLINED_FUNCTION_13(v9);
  v2[5] = OUTLINED_FUNCTION_36_5();
  v10 = OUTLINED_FUNCTION_36_5();
  v2[6] = v10;
  sub_2574AD5D8(v1, v8, &qword_27F87FDD8, &qword_25776E390);
  v11 = 1;
  OUTLINED_FUNCTION_155(v8, 1, v4);
  if (!v12)
  {
    sub_257669410(v8, v6);
    sub_257669BEC();
    v11 = 0;
  }

  v13 = type metadata accessor for SupportVectorRegressorConfiguration.SupportVectors(0);
  __swift_storeEnumTagSinglePayload(v10, v11, 1, v13);
  OUTLINED_FUNCTION_35();
}

void sub_25766A054()
{
  OUTLINED_FUNCTION_31();
  v1 = *v0;
  v2 = (*v0)[6];
  if (v3)
  {
    v5 = v1[4];
    v4 = v1[5];
    v7 = v1[2];
    v6 = v1[3];
    v8 = OUTLINED_FUNCTION_263();
    sub_2574AD5D8(v8, v9, &qword_27F8808F8, &qword_25776E398);
    SupportVectorRegressorConfiguration.supportVectors.setter(v4);
    sub_2574695E4(v2, &qword_27F8808F8, &qword_25776E398);
  }

  else
  {
    type metadata accessor for SupportVectorRegressorConfiguration.SupportVectors(0);
    v10 = OUTLINED_FUNCTION_33_5();
    OUTLINED_FUNCTION_155(v10, v11, v12);
    if (v13)
    {
      sub_2574695E4(v2, &qword_27F8808F8, &qword_25776E398);
      v15 = 1;
    }

    else
    {
      sub_257669CF8(v1[3]);
      OUTLINED_FUNCTION_2_35();
      sub_257669E7C(v2, v14);
      v15 = 0;
    }

    v4 = v1[5];
    v2 = v1[6];
    v6 = v1[3];
    v5 = v1[4];
    v7 = v1[2];
    v16 = *v1;
    __swift_storeEnumTagSinglePayload(v6, v15, 1, v1[1]);
    sub_257669C88(v6, v16);
  }

  free(v2);
  free(v4);
  free(v5);
  free(v6);
  free(v7);
  OUTLINED_FUNCTION_35();

  free(v17);
}

void SupportVectorRegressorConfiguration.coefficients.getter()
{
  OUTLINED_FUNCTION_31();
  v17 = v5;
  type metadata accessor for Proto_Coefficients(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FDE8, &qword_25776E3A0);
  v8 = OUTLINED_FUNCTION_13(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_26_4();
  MEMORY[0x28223BE20](v9);
  v10 = *(OUTLINED_FUNCTION_35_5() + 32);
  OUTLINED_FUNCTION_34_6();
  v11 = OUTLINED_FUNCTION_29_9();
  sub_2574695E4(v11, v12, &qword_25776E3A0);
  if (v4 != 1)
  {
    sub_2574AD5D8(v0 + v10, v1, &qword_27F87FDE8, &qword_25776E3A0);
    OUTLINED_FUNCTION_16_10();
    if (v13)
    {
      *v2 = MEMORY[0x277D84F90];
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      OUTLINED_FUNCTION_16_10();
      if (!v13)
      {
        sub_2574695E4(v1, &qword_27F87FDE8, &qword_25776E3A0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_5_26();
      v14 = OUTLINED_FUNCTION_277();
      sub_257669410(v14, v15);
    }

    OUTLINED_FUNCTION_5_26();
    sub_257669410(v2, v17);
    v3 = 0;
  }

  v16 = type metadata accessor for SupportVectorCoefficients(0);
  __swift_storeEnumTagSinglePayload(v17, v3, 1, v16);
  OUTLINED_FUNCTION_35();
}

uint64_t SupportVectorRegressorConfiguration.coefficients.setter(uint64_t a1)
{
  v5 = type metadata accessor for Proto_Coefficients(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v7 = OUTLINED_FUNCTION_17_3();
  type metadata accessor for SupportVectorCoefficients(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  v9 = OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_155(v9, v10, v11);
  if (v12)
  {
    sub_2574695E4(a1, &qword_27F880900, &qword_25776E3A8);
    v13 = type metadata accessor for Proto_SupportVectorRegressor(0);
    sub_2574695E4(v1 + *(v13 + 32), &qword_27F87FDE8, &qword_25776E3A0);
    OUTLINED_FUNCTION_44();

    return __swift_storeEnumTagSinglePayload(v14, v15, v16, v5);
  }

  else
  {
    OUTLINED_FUNCTION_10_24();
    v17 = OUTLINED_FUNCTION_277();
    sub_257669410(v17, v18);
    sub_257669410(v3, v2);
    v19 = *(type metadata accessor for Proto_SupportVectorRegressor(0) + 32);
    sub_2574695E4(v1 + v19, &qword_27F87FDE8, &qword_25776E3A0);
    sub_257669410(v2, v1 + v19);
    return __swift_storeEnumTagSinglePayload(v1 + v19, 0, 1, v5);
  }
}

void (*SupportVectorRegressorConfiguration.coefficients.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x60uLL);
  v2 = OUTLINED_FUNCTION_26_9(v1);
  v3 = type metadata accessor for SupportVectorCoefficients(v2);
  v1[1] = v3;
  v27 = v3;
  OUTLINED_FUNCTION_4();
  v1[2] = __swift_coroFrameAllocStub(*(v4 + 64));
  v5 = type metadata accessor for Proto_Coefficients(0);
  v1[3] = v5;
  OUTLINED_FUNCTION_4();
  v7 = *(v6 + 64);
  v1[4] = __swift_coroFrameAllocStub(v7);
  v25 = __swift_coroFrameAllocStub(v7);
  v1[5] = v25;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FDE8, &qword_25776E3A0);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  v24 = __swift_coroFrameAllocStub(v10);
  v1[6] = v24;
  v11 = __swift_coroFrameAllocStub(v10);
  v1[7] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880900, &qword_25776E3A8);
  OUTLINED_FUNCTION_13(v12);
  v14 = *(v13 + 64);
  v1[8] = __swift_coroFrameAllocStub(v14);
  v15 = __swift_coroFrameAllocStub(v14);
  v1[9] = v15;
  v26 = __swift_coroFrameAllocStub(v14);
  v1[10] = v26;
  v16 = *(type metadata accessor for Proto_SupportVectorRegressor(0) + 32);
  *(v1 + 22) = v16;
  sub_2574AD5D8(v0 + v16, v11, &qword_27F87FDE8, &qword_25776E3A0);
  v17 = 1;
  v18 = OUTLINED_FUNCTION_188();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, v19, v5);
  sub_2574695E4(v11, &qword_27F87FDE8, &qword_25776E3A0);
  if (EnumTagSinglePayload != 1)
  {
    sub_2574AD5D8(v0 + v16, v24, &qword_27F87FDE8, &qword_25776E3A0);
    OUTLINED_FUNCTION_155(v24, 1, v5);
    if (v21)
    {
      v22 = v25;
      *v25 = MEMORY[0x277D84F90];
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      OUTLINED_FUNCTION_155(v24, 1, v5);
      if (!v21)
      {
        sub_2574695E4(v24, &qword_27F87FDE8, &qword_25776E3A0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_5_26();
      v22 = v25;
      sub_257669410(v24, v25);
    }

    OUTLINED_FUNCTION_5_26();
    sub_257669410(v22, v15);
    v17 = 0;
  }

  __swift_storeEnumTagSinglePayload(v15, v17, 1, v27);
  sub_25766A928(v15, v26);
  return sub_25766A764;
}

void sub_25766A764()
{
  OUTLINED_FUNCTION_31();
  v1 = *v0;
  v2 = (*v0)[10];
  if (v3)
  {
    v4 = v1[8];
    v5 = v1[9];
    v7 = v1[6];
    v6 = v1[7];
    v9 = v1[4];
    v8 = v1[5];
    v10 = v1[2];
    sub_2574AD5D8((*v0)[10], v4, &qword_27F880900, &qword_25776E3A8);
    SupportVectorRegressorConfiguration.coefficients.setter(v4);
    sub_2574695E4(v2, &qword_27F880900, &qword_25776E3A8);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_33_5();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, v12, v13);
    v15 = *(v1 + 22);
    if (EnumTagSinglePayload == 1)
    {
      v16 = *v1;
      sub_2574695E4(v2, &qword_27F880900, &qword_25776E3A8);
      sub_2574695E4(v16 + v15, &qword_27F87FDE8, &qword_25776E3A0);
      v17 = 1;
    }

    else
    {
      v18 = v1[4];
      v19 = v1[2];
      v20 = *v1;
      OUTLINED_FUNCTION_10_24();
      v21 = OUTLINED_FUNCTION_263();
      sub_257669410(v21, v22);
      sub_257669410(v19, v18);
      sub_2574695E4(v20 + v15, &qword_27F87FDE8, &qword_25776E3A0);
      sub_257669410(v18, v20 + v15);
      v17 = 0;
    }

    v5 = v1[9];
    v2 = v1[10];
    v6 = v1[7];
    v4 = v1[8];
    v8 = v1[5];
    v7 = v1[6];
    v9 = v1[4];
    v10 = v1[2];
    __swift_storeEnumTagSinglePayload(*v1 + *(v1 + 22), v17, 1, v1[3]);
  }

  free(v2);
  free(v5);
  free(v4);
  free(v6);
  free(v7);
  free(v8);
  free(v9);
  free(v10);
  OUTLINED_FUNCTION_35();

  free(v23);
}

uint64_t sub_25766A928(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880900, &qword_25776E3A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SupportVectorRegressorConfiguration.rho.setter(double a1)
{
  result = type metadata accessor for Proto_SupportVectorRegressor(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

double (*SupportVectorRegressorConfiguration.rho.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_SupportVectorRegressor(0) + 20);
  v4 = *(v1 + v3);
  *(a1 + 16) = v3;
  *a1 = v4;
  return sub_25766AA44;
}

double sub_25766AA44(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + *(a1 + 16)) = *a1;
  return result;
}

uint64_t sub_25766AA58()
{
  v1 = type metadata accessor for DenseSupportVectorCollection(0);
  v2 = OUTLINED_FUNCTION_13(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v5 = v4 - v3;
  v6 = type metadata accessor for SparseSupportVectorCollection(0);
  v7 = OUTLINED_FUNCTION_13(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  type metadata accessor for SupportVectorRegressorConfiguration.SupportVectors(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_4_24();
  v12 = OUTLINED_FUNCTION_263();
  sub_25766AFD4(v12, v13);
  OUTLINED_FUNCTION_277();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_9_16();
    sub_257669410(v0, v5);
    sub_2576C029C();
    OUTLINED_FUNCTION_1_36();
    v15 = v5;
  }

  else
  {
    OUTLINED_FUNCTION_8_17();
    sub_257669410(v0, v10);
    sub_25771C79C();
    OUTLINED_FUNCTION_0_48();
    v15 = v10;
  }

  sub_257669E7C(v15, v14);
  return OUTLINED_FUNCTION_263();
}

uint64_t SupportVectorRegressorConfiguration.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Proto_SupportVectorRegressor.OneOf_SupportVectors(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  *(a1 + *(type metadata accessor for Proto_SupportVectorRegressor(0) + 20)) = 0;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  type metadata accessor for Proto_Kernel(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  type metadata accessor for Proto_Coefficients(0);
  OUTLINED_FUNCTION_44();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

void static SupportVectorRegressorConfiguration.SupportVectors.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v28 = type metadata accessor for DenseSupportVectorCollection(0);
  v29 = OUTLINED_FUNCTION_13(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3();
  v30 = OUTLINED_FUNCTION_17_3();
  v31 = type metadata accessor for SparseSupportVectorCollection(v30);
  v32 = OUTLINED_FUNCTION_13(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3();
  v35 = v34 - v33;
  type metadata accessor for SupportVectorRegressorConfiguration.SupportVectors(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_26_4();
  MEMORY[0x28223BE20](v37);
  v39 = &a9 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880908, &qword_25776E3B0);
  OUTLINED_FUNCTION_13(v40);
  OUTLINED_FUNCTION_29();
  v42 = MEMORY[0x28223BE20](v41);
  v44 = &a9 - v43;
  v45 = *(v42 + 56);
  sub_25766AFD4(v27, &a9 - v43);
  sub_25766AFD4(v25, &v44[v45]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_4_24();
    sub_25766AFD4(v44, v21);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_9_16();
      sub_257669410(&v44[v45], v20);
      sub_25747B378(*v21);
      if (v46)
      {
        type metadata accessor for Proto_DenseSupportVectors(0);
        sub_2577431B4();
        OUTLINED_FUNCTION_15_9();
        sub_25766B074(v47, v48, MEMORY[0x277D216D0]);
        sub_257743644();
      }

      OUTLINED_FUNCTION_1_36();
      sub_257669E7C(v20, v49);
      OUTLINED_FUNCTION_1_36();
      v51 = v21;
LABEL_14:
      sub_257669E7C(v51, v50);
      OUTLINED_FUNCTION_2_35();
      sub_257669E7C(v44, v58);
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_1_36();
    v53 = v21;
  }

  else
  {
    OUTLINED_FUNCTION_4_24();
    sub_25766AFD4(v44, v39);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_8_17();
      sub_257669410(&v44[v45], v35);
      sub_25747B1CC();
      if (v54)
      {
        type metadata accessor for Proto_SparseSupportVectors(0);
        sub_2577431B4();
        OUTLINED_FUNCTION_15_9();
        sub_25766B074(v55, v56, MEMORY[0x277D216D0]);
        sub_257743644();
      }

      OUTLINED_FUNCTION_0_48();
      sub_257669E7C(v35, v57);
      OUTLINED_FUNCTION_0_48();
      v51 = v39;
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_0_48();
    v53 = v39;
  }

  sub_257669E7C(v53, v52);
  sub_2574695E4(v44, &qword_27F880908, &qword_25776E3B0);
LABEL_15:
  OUTLINED_FUNCTION_35();
}

uint64_t sub_25766AFD4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return a2;
}

uint64_t sub_25766B074(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25766B104(uint64_t a1)
{
  result = type metadata accessor for Proto_SupportVectorRegressor(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void OUTLINED_FUNCTION_18_18()
{

  sub_257469AE0();
}

void OUTLINED_FUNCTION_19_15()
{

  sub_257469AE0();
}

uint64_t OUTLINED_FUNCTION_26_9(void *a1)
{
  *v1 = a1;
  *a1 = v2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_34_6()
{

  return sub_2574AD5D8(v1 + v0, v4, v2, v3);
}

uint64_t OUTLINED_FUNCTION_35_5()
{

  return type metadata accessor for Proto_SupportVectorRegressor(0);
}

void *OUTLINED_FUNCTION_36_5()
{

  return __swift_coroFrameAllocStub(v0);
}

void *OUTLINED_FUNCTION_37_9()
{

  return __swift_coroFrameAllocStub(v0);
}

uint64_t TreeEnsemble.nodes.getter()
{
  v1 = type metadata accessor for TreeEnsemble.TreeNode(0);
  v2 = OUTLINED_FUNCTION_24(v1);
  v4 = v3;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = *v0;
  v9 = *(*v0 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v20 = MEMORY[0x277D84F90];
    sub_257484138(0, v9, 0);
    v10 = v20;
    v11 = type metadata accessor for Proto_TreeEnsembleParameters.TreeNode(0);
    OUTLINED_FUNCTION_24(v11);
    v13 = v8 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v15 = *(v14 + 72);
    do
    {
      OUTLINED_FUNCTION_0_49();
      sub_25766C2FC(v13, v7);
      v17 = *(v20 + 16);
      v16 = *(v20 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_257484138(v16 > 1, v17 + 1, 1);
      }

      *(v20 + 16) = v17 + 1;
      OUTLINED_FUNCTION_193();
      sub_25766C254(v7, v20 + v18 + *(v4 + 72) * v17);
      v13 += v15;
      --v9;
    }

    while (v9);
  }

  return v10;
}

void TreeEnsemble.nodes.setter()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v4 = type metadata accessor for TreeEnsemble.TreeNode(0);
  v5 = OUTLINED_FUNCTION_24(v4);
  v7 = v6;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  v8 = type metadata accessor for Proto_TreeEnsembleParameters.TreeNode(0);
  v9 = OUTLINED_FUNCTION_24(v8);
  v11 = v10;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  v15 = *(v3 + 16);
  if (v15)
  {
    OUTLINED_FUNCTION_8_18(MEMORY[0x277D84F90]);
    v16 = v24;
    OUTLINED_FUNCTION_193();
    v18 = v3 + v17;
    v19 = *(v7 + 72);
    do
    {
      OUTLINED_FUNCTION_1_37();
      sub_25766C2FC(v18, v1);
      OUTLINED_FUNCTION_0_49();
      sub_25766C2FC(v1, v14);
      sub_25766C1F8(v1);
      v21 = *(v24 + 16);
      v20 = *(v24 + 24);
      if (v21 >= v20 >> 1)
      {
        OUTLINED_FUNCTION_7_19(v20);
      }

      *(v24 + 16) = v21 + 1;
      OUTLINED_FUNCTION_193();
      OUTLINED_FUNCTION_4_25(v23, v24 + v22 + *(v11 + 72) * v21);
      v18 += v19;
      --v15;
    }

    while (v15);
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  *v0 = v16;
  OUTLINED_FUNCTION_35();
}

void (*TreeEnsemble.nodes.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = TreeEnsemble.nodes.getter();
  return sub_25766B780;
}

void sub_25766B780(uint64_t a1, char a2)
{
  if (a2)
  {

    TreeEnsemble.nodes.setter();
  }

  else
  {
    TreeEnsemble.nodes.setter();
  }
}

uint64_t TreeEnsemble.predictionSize.getter()
{
  result = *(v0 + 8);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t TreeEnsemble.predictionSize.setter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 8) = result;
  }

  return result;
}

uint64_t *(*TreeEnsemble.predictionSize.modify(uint64_t *(*result)(uint64_t *result, char a2)))(uint64_t *result, char a2)
{
  *(result + 1) = v1;
  v2 = *(v1 + 8);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    *result = v2;
    return sub_25763D5CC;
  }

  return result;
}

uint64_t TreeEnsemble.basePrediction.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t (*TreeEnsemble.basePrediction.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 16);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return sub_25766B8DC;
}

uint64_t sub_25766B8DC(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {

    *(v2 + 16) = v3;
  }

  else
  {

    *(v2 + 16) = v3;
  }

  return result;
}

void sub_25766B950()
{
  OUTLINED_FUNCTION_31();
  v2 = type metadata accessor for TreeEnsemble.TreeNode(0);
  v3 = OUTLINED_FUNCTION_24(v2);
  v5 = v4;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2577442C0;
  v7 = OUTLINED_FUNCTION_13_12(inited, 28494);
  v8 = *(v7 + 16);
  v31 = inited;
  if (v8)
  {
    v33 = MEMORY[0x277D84F90];
    sub_257484040(0, v8, 0);
    v9 = v33;
    OUTLINED_FUNCTION_193();
    v11 = v7 + v10;
    v32 = *(v5 + 72);
    do
    {
      OUTLINED_FUNCTION_1_37();
      sub_25766C2FC(v11, v1);
      v12 = sub_25773F384();
      v14 = v13;
      v16 = v15;
      sub_25766C1F8(v1);
      v18 = *(v33 + 16);
      v17 = *(v33 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_257484040((v17 > 1), v18 + 1, 1);
      }

      *(v33 + 16) = v18 + 1;
      v19 = v33 + 24 * v18;
      *(v19 + 32) = v12;
      *(v19 + 40) = v14;
      *(v19 + 48) = v16;
      v11 += v32;
      --v8;
    }

    while (v8);

    inited = v31;
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  *(inited + 48) = v9;
  *(inited + 56) = 0;
  *(inited + 64) = 1;
  *(inited + 72) = 0x6974636964657250;
  *(inited + 80) = 0xEF657A6953206E6FLL;
  if ((*(v0 + 8) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *(inited + 88) = sub_257743674();
    *(inited + 96) = v20;
    *(inited + 104) = 0;
    *(inited + 112) = 0x6572502065736142;
    *(inited + 120) = 0xEF6E6F6974636964;
    v21 = *(v0 + 16);
    v22 = *(v21 + 16);
    v23 = MEMORY[0x277D84F90];
    if (v22)
    {
      v34 = MEMORY[0x277D84F90];
      sub_257484040(0, v22, 0);
      v23 = v34;
      v24 = v21 + 32;
      do
      {
        v25 = sub_257743674();
        v27 = v26;
        v29 = *(v34 + 16);
        v28 = *(v34 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_257484040((v28 > 1), v29 + 1, 1);
        }

        *(v34 + 16) = v29 + 1;
        v30 = v34 + 24 * v29;
        *(v30 + 32) = v25;
        *(v30 + 40) = v27;
        *(v30 + 48) = 0;
        v24 += 8;
        --v22;
      }

      while (v22);
      inited = v31;
    }

    *(inited + 128) = v23;
    *(inited + 136) = 0;
    *(inited + 144) = 1;
    sub_2576A6964(inited);
    OUTLINED_FUNCTION_35();
  }
}

uint64_t TreeEnsemble.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = 0;
  a1[2] = v2;
  type metadata accessor for Proto_TreeEnsembleParameters(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

void TreeEnsemble.init(basePrediction:nodes:)()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for TreeEnsemble.TreeNode(0);
  v8 = OUTLINED_FUNCTION_24(v7);
  v10 = v9;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  v11 = type metadata accessor for Proto_TreeEnsembleParameters.TreeNode(0);
  v12 = OUTLINED_FUNCTION_24(v11);
  v14 = v13;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v17 = v16 - v15;
  type metadata accessor for Proto_TreeEnsembleParameters(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v6[1] = *(v4 + 16);
  v6[2] = v4;
  v18 = *(v2 + 16);
  if (v18)
  {
    OUTLINED_FUNCTION_8_18(MEMORY[0x277D84F90]);
    v19 = v27;
    OUTLINED_FUNCTION_193();
    v21 = v2 + v20;
    v22 = *(v10 + 72);
    do
    {
      OUTLINED_FUNCTION_1_37();
      sub_25766C2FC(v21, v0);
      OUTLINED_FUNCTION_0_49();
      sub_25766C2FC(v0, v17);
      sub_25766C1F8(v0);
      v24 = *(v27 + 16);
      v23 = *(v27 + 24);
      if (v24 >= v23 >> 1)
      {
        OUTLINED_FUNCTION_7_19(v23);
      }

      *(v27 + 16) = v24 + 1;
      OUTLINED_FUNCTION_193();
      OUTLINED_FUNCTION_4_25(v26, v27 + v25 + *(v14 + 72) * v24);
      v21 += v22;
      --v18;
    }

    while (v18);
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  *v6 = v19;
  OUTLINED_FUNCTION_35();
}

BOOL static TreeEnsemble.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_257481CB8();
  result = 0;
  if (v4 & 1) != 0 && *(a1 + 8) == *(a2 + 8) && (sub_257479D04(*(a1 + 16), *(a2 + 16)))
  {
    type metadata accessor for Proto_TreeEnsembleParameters(0);
    sub_2577431B4();
    sub_25766C3A0(&qword_27F879B68, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

void TreeEnsemble.customMirror.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v22;
  a20 = v23;
  v24 = sub_257743A84();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &a9 - v27;
  type metadata accessor for TreeEnsemble(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3();
  sub_25766C2FC(v20, v31 - v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_2577442C0;
  v33 = OUTLINED_FUNCTION_13_12(v32, 28526);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880920, &unk_25776E470);
  *(v32 + 48) = v33;
  *(v32 + 72) = v34;
  strcpy((v32 + 80), "predictionSize");
  *(v32 + 95) = -18;
  v35 = *(v20 + 8);
  if (v35 < 0)
  {
    __break(1u);
  }

  else
  {
    v36 = MEMORY[0x277D83B88];
    *(v32 + 96) = v35;
    *(v32 + 120) = v36;
    strcpy((v32 + 128), "basePrediction");
    *(v32 + 143) = -18;
    v37 = *(v20 + 16);
    *(v32 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F68, &qword_257744890);
    *(v32 + 144) = v37;
    v38 = sub_257743A74();
    __swift_storeEnumTagSinglePayload(v28, 1, 1, v38);
    (*(v25 + 104))(v21, *MEMORY[0x277D84C38], v24);

    sub_257743AA4();
    OUTLINED_FUNCTION_35();
  }
}

uint64_t sub_25766C1F8(uint64_t a1)
{
  v2 = type metadata accessor for TreeEnsemble.TreeNode(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25766C254(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t type metadata accessor for TreeEnsemble(uint64_t a1)
{
  result = qword_27F880928;
  if (!qword_27F880928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25766C2FC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_25766C3A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25766C410(uint64_t a1)
{
  result = type metadata accessor for Proto_TreeEnsembleParameters(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_25(uint64_t a1, uint64_t a2)
{

  return sub_25766C254(v2, a2);
}

void OUTLINED_FUNCTION_7_19(unint64_t a1@<X8>)
{

  sub_257484D08(a1 > 1, v1, 1);
}

void OUTLINED_FUNCTION_8_18(uint64_t a1@<X8>)
{
  *(v2 - 88) = a1;

  sub_257484D08(0, v1, 0);
}

uint64_t OUTLINED_FUNCTION_13_12@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = a2 & 0xFFFF00000000FFFFLL | 0x7365640000;
  *(a1 + 40) = 0xE500000000000000;

  return TreeEnsemble.nodes.getter();
}

void static NeuralNetwork.Layer.batchNormalize(name:inputName:outputName:inputChannelCount:)()
{
  OUTLINED_FUNCTION_31();
  v36 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v34[2] = v9;
  v34[3] = v10;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v13);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v16 = v34 - v15;
  v17 = type metadata accessor for NeuralNetwork.Layer.BatchNormalizeParameters(0);
  v18 = OUTLINED_FUNCTION_13(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  v21 = v20 - v19;
  v34[1] = type metadata accessor for NeuralNetwork.Layer.Kind(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3();
  v25 = v24 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v26 = swift_allocObject();
  v35 = xmmword_2577442B0;
  *(v26 + 16) = xmmword_2577442B0;
  *(v26 + 32) = v8;
  *(v26 + 40) = v6;
  v27 = swift_allocObject();
  *(v27 + 16) = v35;
  *(v27 + 32) = v4;
  *(v27 + 40) = v2;

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v28 = *(type metadata accessor for Proto_BatchnormLayerParams(0) + 20);
  if (qword_27F8793B0 != -1)
  {
    OUTLINED_FUNCTION_5_27(&qword_27F8793B0);
  }

  *(v21 + v28) = qword_27F87BF18;
  v29 = v36;
  if (v36 < 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_7;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *(v21 + v28);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v32 = type metadata accessor for Proto_BatchnormLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v32);
    v31 = OUTLINED_FUNCTION_7_20();
    *(v21 + v28) = v31;
  }

  OUTLINED_FUNCTION_447(v31 + 16, &v37);
  *(v31 + 16) = v29;
  OUTLINED_FUNCTION_9_17();
  sub_25766E5F0(v21, v25);
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v2 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    goto LABEL_9;
  }

LABEL_7:
  *(v12 + v2) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v27);
  sub_2574897E0(v16);
  v33 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v33);
  sub_25752846C();
  sub_25766E598(v25, type metadata accessor for NeuralNetwork.Layer.Kind);
  OUTLINED_FUNCTION_35();
}

uint64_t static NeuralNetwork.Layer.Kind.batchNormalize(inputChannelCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NeuralNetwork.Layer.BatchNormalizeParameters(0);
  v5 = OUTLINED_FUNCTION_13(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v9 = *(type metadata accessor for Proto_BatchnormLayerParams(0) + 20);
  if (qword_27F8793B0 != -1)
  {
    OUTLINED_FUNCTION_5_27(&qword_27F8793B0);
  }

  result = qword_27F87BF18;
  *(v8 + v9) = qword_27F87BF18;
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v8 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = type metadata accessor for Proto_BatchnormLayerParams._StorageClass(0);
      OUTLINED_FUNCTION_448(v13);
      v12 = OUTLINED_FUNCTION_7_20();
      *(v8 + v9) = v12;
    }

    OUTLINED_FUNCTION_447(v12 + 16, v14);
    *(v12 + 16) = a1;
    OUTLINED_FUNCTION_9_17();
    sub_25766E5F0(v8, a2);
    type metadata accessor for NeuralNetwork.Layer.Kind(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t NeuralNetwork.Layer.BatchNormalizeParameters.init(inputChannelCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v4 = *(type metadata accessor for Proto_BatchnormLayerParams(0) + 20);
  if (qword_27F8793B0 != -1)
  {
    OUTLINED_FUNCTION_5_27(&qword_27F8793B0);
  }

  result = qword_27F87BF18;
  *(a2 + v4) = qword_27F87BF18;
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(a2 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = type metadata accessor for Proto_BatchnormLayerParams._StorageClass(0);
      OUTLINED_FUNCTION_448(v9);
      v10 = OUTLINED_FUNCTION_7_20();
      OUTLINED_FUNCTION_355_0(v10);
    }

    result = OUTLINED_FUNCTION_237_0(v8 + 16, v7);
    *(v8 + 16) = a1;
  }

  return result;
}

uint64_t type metadata accessor for NeuralNetwork.Layer.BatchNormalizeParameters(uint64_t a1)
{
  result = qword_27F880940;
  if (!qword_27F880940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NeuralNetwork.Layer.BatchNormalizeParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257744E70;
  strcpy((v1 + 32), "Input Channels");
  *(v1 + 47) = -18;
  v2 = *(v0 + *(type metadata accessor for Proto_BatchnormLayerParams(0) + 20));
  result = OUTLINED_FUNCTION_296(v2 + 16, v15);
  if ((*(v2 + 16) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v14[0] = *(v2 + 16);
    *(v1 + 48) = sub_257743974();
    *(v1 + 56) = v4;
    OUTLINED_FUNCTION_23_7();
    *(v1 + 64) = 0xD00000000000001ALL;
    *(v1 + 72) = v5;
    OUTLINED_FUNCTION_296(v2 + 24, v14);
    if (*(v2 + 24))
    {
      v6 = 1702195828;
    }

    else
    {
      v6 = 0x65736C6166;
    }

    if (*(v2 + 24))
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    *(v1 + 80) = v6;
    *(v1 + 88) = v7;
    *(v1 + 96) = 0xD000000000000016;
    *(v1 + 104) = 0x8000000257780BE0;
    OUTLINED_FUNCTION_296(v2 + 25, v13);
    if (*(v2 + 25))
    {
      v8 = 1702195828;
    }

    else
    {
      v8 = 0x65736C6166;
    }

    if (*(v2 + 25))
    {
      v9 = 0xE400000000000000;
    }

    else
    {
      v9 = 0xE500000000000000;
    }

    *(v1 + 112) = v8;
    *(v1 + 120) = v9;
    OUTLINED_FUNCTION_23_7();
    *(v1 + 128) = 0xD000000000000010;
    *(v1 + 136) = v10;
    OUTLINED_FUNCTION_296(v2 + 28, &v12);
    *(v1 + 144) = sub_257743794();
    *(v1 + 152) = v11;
    return v1;
  }

  return result;
}

uint64_t NeuralNetwork.Layer.BatchNormalizeParameters.inputChannelCount.getter()
{
  type metadata accessor for Proto_BatchnormLayerParams(0);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_296(v0 + 16, v2);
  result = *(v0 + 16);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t NeuralNetwork.Layer.BatchNormalizeParameters.computesMeanVariance.getter()
{
  type metadata accessor for Proto_BatchnormLayerParams(0);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_296(v0 + 24, v2);
  return *(v0 + 24);
}

uint64_t NeuralNetwork.Layer.BatchNormalizeParameters.instanceNormalization.getter()
{
  type metadata accessor for Proto_BatchnormLayerParams(0);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_296(v0 + 25, v2);
  return *(v0 + 25);
}

float NeuralNetwork.Layer.BatchNormalizeParameters.minimumVariance.getter()
{
  type metadata accessor for Proto_BatchnormLayerParams(0);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_296(v0 + 28, v2);
  return *(v0 + 28);
}

void NeuralNetwork.Layer.BatchNormalizeParameters.namedWeights.getter()
{
  OUTLINED_FUNCTION_31();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B38, &qword_2577448C0);
  OUTLINED_FUNCTION_63();
  v80 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_11();
  v79 = (v4 - v5);
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v6);
  v84 = (v78 - v7);
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v8);
  v81 = (v78 - v9);
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v10);
  v12 = (v78 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  v14 = OUTLINED_FUNCTION_13(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_11();
  v85 = v15 - v16;
  OUTLINED_FUNCTION_158();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = v78 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v78 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = OUTLINED_FUNCTION_30_9();
  v25 = type metadata accessor for NeuralNetwork.WeightParameters(v24);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_11();
  v86 = v27 - v28;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v29);
  v82 = v78 - v30;
  OUTLINED_FUNCTION_158();
  v32 = MEMORY[0x28223BE20](v31);
  v34 = v78 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = v78 - v35;
  NeuralNetwork.Layer.BatchNormalizeParameters.scale.getter();
  v83 = v25;
  OUTLINED_FUNCTION_155(v0, 1, v25);
  if (v37)
  {
    sub_2574695E4(v0, &qword_27F880938, &unk_25776E510);
    v38 = MEMORY[0x277D84F90];
  }

  else
  {
    v39 = v80;
    OUTLINED_FUNCTION_1_38();
    sub_25766E5F0(v0, v36);
    v78[1] = v1;
    *v12 = 0x656C616353;
    v12[1] = 0xE500000000000000;
    OUTLINED_FUNCTION_2_36();
    sub_25766E64C(v36, v12 + v40);
    sub_257469D34();
    v38 = v41;
    v42 = *(v41 + 16);
    if (v42 >= *(v41 + 24) >> 1)
    {
      sub_257469D34();
      v38 = v72;
    }

    OUTLINED_FUNCTION_0_50();
    sub_25766E598(v36, v43);
    *(v38 + 16) = v42 + 1;
    sub_25749E9A8(v12, v38 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v42);
  }

  NeuralNetwork.Layer.BatchNormalizeParameters.offset.getter();
  v44 = v83;
  OUTLINED_FUNCTION_155(v23, 1, v83);
  if (v37)
  {
    sub_2574695E4(v23, &qword_27F880938, &unk_25776E510);
  }

  else
  {
    OUTLINED_FUNCTION_1_38();
    sub_25766E5F0(v23, v34);
    v45 = v81;
    *v81 = 0x74657366664FLL;
    v45[1] = 0xE600000000000000;
    OUTLINED_FUNCTION_2_36();
    sub_25766E64C(v34, v47 + v46);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_12_19();
      v38 = v73;
    }

    v49 = *(v38 + 16);
    if (v49 >= *(v38 + 24) >> 1)
    {
      OUTLINED_FUNCTION_13_13();
      v38 = v74;
    }

    OUTLINED_FUNCTION_0_50();
    sub_25766E598(v34, v50);
    OUTLINED_FUNCTION_6_27();
    sub_25749E9A8(v81, v51 + v52 * v49);
  }

  NeuralNetwork.Layer.BatchNormalizeParameters.mean.getter();
  OUTLINED_FUNCTION_155(v20, 1, v44);
  if (v37)
  {
    sub_2574695E4(v20, &qword_27F880938, &unk_25776E510);
  }

  else
  {
    OUTLINED_FUNCTION_1_38();
    v53 = v82;
    sub_25766E5F0(v20, v82);
    v54 = v84;
    *v84 = 1851876685;
    v54[1] = 0xE400000000000000;
    OUTLINED_FUNCTION_2_36();
    sub_25766E64C(v53, v56 + v55);
    v57 = swift_isUniquelyReferenced_nonNull_native();
    if ((v57 & 1) == 0)
    {
      OUTLINED_FUNCTION_12_19();
      v38 = v75;
    }

    v58 = *(v38 + 16);
    if (v58 >= *(v38 + 24) >> 1)
    {
      OUTLINED_FUNCTION_13_13();
      v38 = v76;
    }

    OUTLINED_FUNCTION_0_50();
    sub_25766E598(v82, v59);
    OUTLINED_FUNCTION_6_27();
    sub_25749E9A8(v84, v60 + v61 * v58);
  }

  v62 = v85;
  NeuralNetwork.Layer.BatchNormalizeParameters.variance.getter();
  OUTLINED_FUNCTION_155(v62, 1, v44);
  if (v37)
  {
    sub_2574695E4(v62, &qword_27F880938, &unk_25776E510);
  }

  else
  {
    OUTLINED_FUNCTION_1_38();
    v63 = v62;
    v64 = v86;
    sub_25766E5F0(v63, v86);
    v65 = v79;
    *v79 = 0x65636E6169726156;
    *(v65 + 8) = 0xE800000000000000;
    OUTLINED_FUNCTION_2_36();
    sub_25766E64C(v64, v65 + v66);
    v67 = swift_isUniquelyReferenced_nonNull_native();
    if ((v67 & 1) == 0)
    {
      OUTLINED_FUNCTION_12_19();
      v38 = v77;
    }

    v68 = *(v38 + 16);
    if (v68 >= *(v38 + 24) >> 1)
    {
      OUTLINED_FUNCTION_13_13();
    }

    OUTLINED_FUNCTION_0_50();
    sub_25766E598(v86, v69);
    OUTLINED_FUNCTION_6_27();
    sub_25749E9A8(v65, v70 + v71 * v68);
  }

  OUTLINED_FUNCTION_35();
}

void sub_25766D2A0()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v25 = v4;
  v5 = type metadata accessor for Proto_WeightParams(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  v11 = OUTLINED_FUNCTION_13(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v16 = OUTLINED_FUNCTION_30_9();
  v17 = *(v0 + *(type metadata accessor for Proto_BatchnormLayerParams(v16) + 20));
  v18 = *v3;
  OUTLINED_FUNCTION_296(v17 + *v3, &v26);
  sub_2574A172C(v17 + v18, v1, &qword_27F87A1A0, &qword_257745750);
  v19 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v5);
  sub_2574695E4(v1, &qword_27F87A1A0, &qword_257745750);
  if (EnumTagSinglePayload != 1)
  {
    sub_2574A172C(v17 + v18, v14, &qword_27F87A1A0, &qword_257745750);
    OUTLINED_FUNCTION_155(v14, 1, v5);
    if (v21)
    {
      *v9 = MEMORY[0x277D84F90];
      *(v9 + 8) = xmmword_257745740;
      *(v9 + 24) = xmmword_257745740;
      *(v9 + 40) = xmmword_257745740;
      *(v9 + 56) = 0;
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      v22 = *(v5 + 40);
      v23 = type metadata accessor for Proto_QuantizationParams(0);
      __swift_storeEnumTagSinglePayload(v9 + v22, 1, 1, v23);
      OUTLINED_FUNCTION_155(v14, 1, v5);
      if (!v21)
      {
        sub_2574695E4(v14, &qword_27F87A1A0, &qword_257745750);
      }
    }

    else
    {
      sub_25766E5F0(v14, v9);
    }

    sub_2576FF45C(v9, v25);
    v19 = 0;
  }

  v24 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  __swift_storeEnumTagSinglePayload(v25, v19, 1, v24);
  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetwork.Layer.BatchNormalizeParameters.inputChannelCount.setter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    v3 = *(type metadata accessor for Proto_BatchnormLayerParams(0) + 20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v1 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = type metadata accessor for Proto_BatchnormLayerParams._StorageClass(0);
      OUTLINED_FUNCTION_448(v7);
      v8 = OUTLINED_FUNCTION_7_20();
      OUTLINED_FUNCTION_355_0(v8);
    }

    result = OUTLINED_FUNCTION_237_0(v6 + 16, v5);
    *(v6 + 16) = v2;
  }

  return result;
}

void (*NeuralNetwork.Layer.BatchNormalizeParameters.inputChannelCount.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[10] = v1;
  v4 = *(type metadata accessor for Proto_BatchnormLayerParams(0) + 20);
  *(v3 + 22) = v4;
  v5 = *(v1 + v4);
  result = OUTLINED_FUNCTION_296(v5 + 16, v3);
  v7 = *(v5 + 16);
  if (v7 < 0)
  {
    __break(1u);
  }

  else
  {
    v3[9] = v7;
    return sub_25766D5F8;
  }

  return result;
}

void sub_25766D5F8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  if ((a2 & 1) == 0)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v4 = v2 + 48;
      goto LABEL_6;
    }

LABEL_12:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v2 + 24;
LABEL_6:
  v5 = *(v2 + 88);
  v6 = *(v2 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v2 + 88);
    v10 = *(v2 + 80);
    v11 = type metadata accessor for Proto_BatchnormLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v11);
    v8 = OUTLINED_FUNCTION_7_20();
    *(v10 + v9) = v8;
  }

  OUTLINED_FUNCTION_447(v8 + 16, v4);
  *(v8 + 16) = v3;

  free(v2);
}

uint64_t NeuralNetwork.Layer.BatchNormalizeParameters.computesMeanVariance.setter(char a1)
{
  v3 = *(type metadata accessor for Proto_BatchnormLayerParams(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for Proto_BatchnormLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v7);
    v8 = OUTLINED_FUNCTION_7_20();
    OUTLINED_FUNCTION_355_0(v8);
  }

  result = OUTLINED_FUNCTION_237_0(v6 + 24, v5);
  *(v6 + 24) = a1 & 1;
  return result;
}

uint64_t NeuralNetwork.Layer.BatchNormalizeParameters.computesMeanVariance.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  v3 = *(OUTLINED_FUNCTION_17_13(v2) + 20);
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_296(v4 + 24, v1);
  *(v1 + 84) = *(v4 + 24);
  return OUTLINED_FUNCTION_15_10();
}

void sub_25766D790(uint64_t a1)
{
  v6 = OUTLINED_FUNCTION_21_13(a1);
  v7 = *(v5 + v2);
  if ((v6 & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for Proto_BatchnormLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v10);
    v7 = OUTLINED_FUNCTION_7_20();
    *(v9 + v8) = v7;
  }

  v11 = 48;
  if (v3)
  {
    v11 = 24;
  }

  OUTLINED_FUNCTION_447(v7 + 24, v1 + v11);
  *(v7 + 24) = v4;

  free(v1);
}

uint64_t NeuralNetwork.Layer.BatchNormalizeParameters.instanceNormalization.setter(char a1)
{
  v3 = *(type metadata accessor for Proto_BatchnormLayerParams(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for Proto_BatchnormLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v7);
    v8 = OUTLINED_FUNCTION_7_20();
    OUTLINED_FUNCTION_355_0(v8);
  }

  result = OUTLINED_FUNCTION_237_0(v6 + 25, v5);
  *(v6 + 25) = a1 & 1;
  return result;
}

uint64_t NeuralNetwork.Layer.BatchNormalizeParameters.instanceNormalization.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  v3 = *(OUTLINED_FUNCTION_17_13(v2) + 20);
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_296(v4 + 25, v1);
  *(v1 + 84) = *(v4 + 25);
  return OUTLINED_FUNCTION_15_10();
}

void sub_25766D900(uint64_t a1)
{
  v6 = OUTLINED_FUNCTION_21_13(a1);
  v7 = *(v5 + v2);
  if ((v6 & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for Proto_BatchnormLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v10);
    v7 = OUTLINED_FUNCTION_7_20();
    *(v9 + v8) = v7;
  }

  v11 = 48;
  if (v3)
  {
    v11 = 24;
  }

  OUTLINED_FUNCTION_447(v7 + 25, v1 + v11);
  *(v7 + 25) = v4;

  free(v1);
}

uint64_t NeuralNetwork.Layer.BatchNormalizeParameters.minimumVariance.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_BatchnormLayerParams(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Proto_BatchnormLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v8);
    v7 = OUTLINED_FUNCTION_7_20();
    *(v2 + v4) = v7;
  }

  result = OUTLINED_FUNCTION_237_0(v7 + 28, v6);
  *(v7 + 28) = a1;
  return result;
}

uint64_t NeuralNetwork.Layer.BatchNormalizeParameters.minimumVariance.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  v3 = *(OUTLINED_FUNCTION_17_13(v2) + 20);
  *(v1 + 84) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_296(v4 + 28, v1);
  *(v1 + 80) = *(v4 + 28);
  return OUTLINED_FUNCTION_15_10();
}

void sub_25766DA78(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 84);
  v6 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v3 + 84);
    v10 = *(v3 + 72);
    v11 = type metadata accessor for Proto_BatchnormLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v11);
    v8 = OUTLINED_FUNCTION_7_20();
    *(v10 + v9) = v8;
  }

  v12 = 48;
  if (a2)
  {
    v12 = 24;
  }

  OUTLINED_FUNCTION_447(v8 + 28, v3 + v12);
  *(v8 + 28) = v4;

  free(v3);
}

uint64_t NeuralNetwork.Layer.BatchNormalizeParameters.scale.modify(void *a1)
{
  OUTLINED_FUNCTION_27_12(a1);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v1);
  v3 = __swift_coroFrameAllocStub(*(v2 + 64));
  v4 = OUTLINED_FUNCTION_28_12(v3);
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_11_18(v5);
  NeuralNetwork.Layer.BatchNormalizeParameters.scale.getter();
  return OUTLINED_FUNCTION_15_10();
}

void sub_25766DC04()
{
  OUTLINED_FUNCTION_31();
  v32 = v2;
  v33 = v3;
  v4 = v0;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_64();
  v10 = type metadata accessor for Proto_WeightParams(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v15);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - v17;
  v19 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3();
  v23 = v22 - v21;
  sub_2574A172C(v6, v18, &qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_155(v18, 1, v19);
  if (v24)
  {
    sub_2574695E4(v18, &qword_27F880938, &unk_25776E510);
    v25 = *(type metadata accessor for Proto_BatchnormLayerParams(0) + 20);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_2574695E4(v6, &qword_27F880938, &unk_25776E510);
      v26 = *(v4 + v25);
    }

    else
    {
      v28 = type metadata accessor for Proto_BatchnormLayerParams._StorageClass(0);
      OUTLINED_FUNCTION_448(v28);

      v26 = sub_2575A5E88(v29);
      sub_2574695E4(v6, &qword_27F880938, &unk_25776E510);

      *(v4 + v25) = v26;
    }

    __swift_storeEnumTagSinglePayload(v1, 1, 1, v10);
    v30 = *v33;
    swift_beginAccess();
    sub_25763A1E4(v1, v26 + v30);
    swift_endAccess();
  }

  else
  {
    sub_25766E5F0(v18, v23);
    sub_25766E64C(v23 + *(v19 + 20), v14);
    v32(v14);
    sub_2574695E4(v6, &qword_27F880938, &unk_25776E510);
    OUTLINED_FUNCTION_0_50();
    sub_25766E598(v23, v27);
  }

  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetwork.Layer.BatchNormalizeParameters.offset.modify(void *a1)
{
  OUTLINED_FUNCTION_27_12(a1);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v1);
  v3 = __swift_coroFrameAllocStub(*(v2 + 64));
  v4 = OUTLINED_FUNCTION_28_12(v3);
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_11_18(v5);
  NeuralNetwork.Layer.BatchNormalizeParameters.offset.getter();
  return OUTLINED_FUNCTION_15_10();
}

uint64_t NeuralNetwork.Layer.BatchNormalizeParameters.mean.modify(void *a1)
{
  OUTLINED_FUNCTION_27_12(a1);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v1);
  v3 = __swift_coroFrameAllocStub(*(v2 + 64));
  v4 = OUTLINED_FUNCTION_28_12(v3);
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_11_18(v5);
  NeuralNetwork.Layer.BatchNormalizeParameters.mean.getter();
  return OUTLINED_FUNCTION_15_10();
}

uint64_t sub_25766E01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - v9;
  sub_2574A172C(a1, &v12 - v9, &qword_27F880938, &unk_25776E510);
  return a5(v10);
}

uint64_t NeuralNetwork.Layer.BatchNormalizeParameters.variance.modify(void *a1)
{
  OUTLINED_FUNCTION_27_12(a1);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v1);
  v3 = __swift_coroFrameAllocStub(*(v2 + 64));
  v4 = OUTLINED_FUNCTION_28_12(v3);
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_11_18(v5);
  NeuralNetwork.Layer.BatchNormalizeParameters.variance.getter();
  return OUTLINED_FUNCTION_15_10();
}

void sub_25766E180(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2)
  {
    sub_2574A172C(*(a1 + 16), v4, &qword_27F880938, &unk_25776E510);
    a3(v4);
    sub_2574695E4(v5, &qword_27F880938, &unk_25776E510);
  }

  else
  {
    a3(*(a1 + 16));
  }

  free(v5);

  free(v4);
}

void NeuralNetwork.Layer.BatchNormalizeParameters.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  v3 = sub_257743A84();
  OUTLINED_FUNCTION_63();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_64();
  type metadata accessor for NeuralNetwork.Layer.BatchNormalizeParameters(v12);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  sub_25766E64C(v1, v15 - v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2577503A0;
  OUTLINED_FUNCTION_23_7();
  *(v17 + 32) = 0xD000000000000011;
  *(v17 + 40) = v18;
  type metadata accessor for Proto_BatchnormLayerParams(0);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_296(v0 + 16, &v30);
  v19 = *(v0 + 16);
  if (v19 < 0)
  {
    __break(1u);
  }

  else
  {
    *(v16 + 48) = v19;
    OUTLINED_FUNCTION_23_7();
    *(v16 + 72) = v20;
    *(v16 + 80) = 0xD000000000000014;
    *(v16 + 88) = v21;
    OUTLINED_FUNCTION_296(v0 + 24, &v29);
    v22 = MEMORY[0x277D839B0];
    *(v16 + 96) = *(v0 + 24);
    OUTLINED_FUNCTION_23_7();
    *(v16 + 120) = v22;
    *(v16 + 128) = 0xD000000000000015;
    *(v16 + 136) = v23;
    OUTLINED_FUNCTION_296(v0 + 25, &v28);
    *(v16 + 144) = *(v0 + 25);
    *(v16 + 168) = v22;
    *(v16 + 176) = 0x566D756D696E696DLL;
    *(v16 + 184) = 0xEF65636E61697261;
    OUTLINED_FUNCTION_296(v0 + 28, &v27);
    v24 = MEMORY[0x277D83A90];
    *(v16 + 192) = *(v0 + 28);
    *(v16 + 216) = v24;
    *(v16 + 224) = 0x656C616373;
    *(v16 + 232) = 0xE500000000000000;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
    *(v16 + 264) = v25;
    __swift_allocate_boxed_opaque_existential_0((v16 + 240));
    NeuralNetwork.Layer.BatchNormalizeParameters.scale.getter();
    *(v16 + 272) = 0x74657366666FLL;
    *(v16 + 280) = 0xE600000000000000;
    *(v16 + 312) = v25;
    __swift_allocate_boxed_opaque_existential_0((v16 + 288));
    NeuralNetwork.Layer.BatchNormalizeParameters.offset.getter();
    *(v16 + 320) = 1851876717;
    *(v16 + 328) = 0xE400000000000000;
    *(v16 + 360) = v25;
    __swift_allocate_boxed_opaque_existential_0((v16 + 336));
    NeuralNetwork.Layer.BatchNormalizeParameters.mean.getter();
    *(v16 + 368) = 0x65636E6169726176;
    *(v16 + 376) = 0xE800000000000000;
    *(v16 + 408) = v25;
    __swift_allocate_boxed_opaque_existential_0((v16 + 384));
    NeuralNetwork.Layer.BatchNormalizeParameters.variance.getter();
    v26 = sub_257743A74();
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v26);
    (*(v5 + 104))(v9, *MEMORY[0x277D84C38], v3);
    sub_257743AA4();
    OUTLINED_FUNCTION_35();
  }
}

uint64_t sub_25766E598(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_25766E5F0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_25766E64C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(a2, v2);
  return a2;
}

unint64_t sub_25766E6AC()
{
  result = qword_27F87E1F8;
  if (!qword_27F87E1F8)
  {
    type metadata accessor for Proto_BatchnormLayerParams(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87E1F8);
  }

  return result;
}

uint64_t sub_25766E72C(uint64_t a1)
{
  result = type metadata accessor for Proto_BatchnormLayerParams(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_27(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_20()
{

  return sub_2575A5E88(v0);
}

void OUTLINED_FUNCTION_12_19()
{

  sub_257469D34();
}

void OUTLINED_FUNCTION_13_13()
{

  sub_257469D34();
}

uint64_t OUTLINED_FUNCTION_17_13(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;

  return type metadata accessor for Proto_BatchnormLayerParams(0);
}

uint64_t OUTLINED_FUNCTION_21_13(uint64_t a1)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t static NeuralNetwork.Layer.concatenate(name:inputName:outputName:alongSequenceAxis:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, char a5@<W6>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_42_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v16 = (v15 - v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2577442B0;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2577442B0;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  type metadata accessor for Proto_ConcatLayerParams(0);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v16 = a5;
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v19 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    OUTLINED_FUNCTION_3_22(&qword_27F879260);
  }

  *(a6 + v19) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v18);
  sub_2574897E0(v6);
  v20 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_11_11(v20);
  return sub_257634BB4(v16);
}

uint64_t static NeuralNetwork.Layer.Kind.concatenate(alongSequenceAxis:)@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  type metadata accessor for Proto_ConcatLayerParams(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a2 = a1;
  type metadata accessor for NeuralNetwork.Layer.Kind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t static NeuralNetwork.Layer.concatenate(name:inputNames:outputName:alongSequenceAxis:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, char a3@<W5>, uint64_t a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_42_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v13 = (v12 - v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2577442B0;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  type metadata accessor for Proto_ConcatLayerParams(0);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v13 = a3;
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v15 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    OUTLINED_FUNCTION_3_22(&qword_27F879260);
  }

  *(a4 + v15) = qword_27F87BEE8;

  sub_257528334();

  sub_2575283BC();
  sub_25752842C(v14);
  sub_2574897E0(v4);
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_11_11(v16);
  return sub_257634BB4(v13);
}

uint64_t NeuralNetwork.Layer.ConcatenateParameters.init(alongSequenceAxis:)@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  type metadata accessor for Proto_ConcatLayerParams(0);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a2 = a1;
  return result;
}

uint64_t NeuralNetwork.Layer.ConcatenateParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  result = swift_allocObject();
  *(result + 16) = xmmword_2577442B0;
  *(result + 32) = 0xD000000000000013;
  *(result + 40) = 0x8000000257780C60;
  v2 = 1702195828;
  if (!*v0)
  {
    v2 = 0x65736C6166;
  }

  v3 = 0xE500000000000000;
  if (*v0)
  {
    v3 = 0xE400000000000000;
  }

  *(result + 48) = v2;
  *(result + 56) = v3;
  return result;
}

uint64_t (*NeuralNetwork.Layer.ConcatenateParameters.alongSequenceAxis.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return sub_257642180;
}

BOOL static NeuralNetwork.Layer.ConcatenateParameters.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    type metadata accessor for Proto_ConcatLayerParams(0);
    sub_2577431B4();
    sub_25766F204(&qword_27F879B68, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t NeuralNetwork.Layer.ConcatenateParameters.customMirror.getter()
{
  v1 = v0;
  v2 = sub_257743A84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  type metadata accessor for NeuralNetwork.Layer.ConcatenateParameters(0);
  OUTLINED_FUNCTION_42_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  sub_25766F158(v1, v12 - v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2577442B0;
  *(v13 + 32) = 0xD000000000000011;
  *(v13 + 40) = 0x8000000257780C80;
  v14 = *v1;
  *(v13 + 72) = MEMORY[0x277D839B0];
  *(v13 + 48) = v14;
  v15 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v15);
  (*(v3 + 104))(v6, *MEMORY[0x277D84C38], v2);
  return sub_257743AA4();
}

uint64_t type metadata accessor for NeuralNetwork.Layer.ConcatenateParameters(uint64_t a1)
{
  result = qword_27F880950;
  if (!qword_27F880950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25766F158(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NeuralNetwork.Layer.ConcatenateParameters(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25766F204(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25766F278(uint64_t a1)
{
  result = type metadata accessor for Proto_ConcatLayerParams(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t static NeuralNetwork.Layer.squeeze(name:inputName:outputName:axes:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v16 = OUTLINED_FUNCTION_13_6(v15);
  *(v16 + 16) = xmmword_2577442B0;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;
  v17 = OUTLINED_FUNCTION_13_6(v15);
  *(v17 + 16) = xmmword_2577442B0;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  *v14 = MEMORY[0x277D84F90];
  *(v14 + 8) = 0;
  type metadata accessor for Proto_SqueezeLayerParams(0);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();

  NeuralNetwork.Layer.SqueezeParameters.axes.setter(v18);
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v19 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    OUTLINED_FUNCTION_3_22(&qword_27F879260);
  }

  *(a5 + v19) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v17);
  sub_2574897E0(v5);
  v20 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_11_11(v20);
  return sub_257634BB4(v14);
}

uint64_t static NeuralNetwork.Layer.Kind.squeeze(axes:)@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  type metadata accessor for Proto_SqueezeLayerParams(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();

  NeuralNetwork.Layer.SqueezeParameters.axes.setter(v1);
  type metadata accessor for NeuralNetwork.Layer.Kind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t static NeuralNetwork.Layer.squeezeAll(name:inputName:outputName:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v11 - 8);
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v17 = OUTLINED_FUNCTION_13_6(v16);
  *(v17 + 16) = xmmword_2577442B0;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;
  v18 = OUTLINED_FUNCTION_13_6(v16);
  *(v18 + 16) = xmmword_2577442B0;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  *v15 = MEMORY[0x277D84F90];
  *(v15 + 8) = 0;
  type metadata accessor for Proto_SqueezeLayerParams(0);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *(v15 + 8) = 1;
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v19 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    OUTLINED_FUNCTION_3_22(&qword_27F879260);
  }

  *(a5 + v19) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v18);
  sub_2574897E0(v5);
  v20 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_11_11(v20);
  return sub_257634BB4(v15);
}

uint64_t static NeuralNetwork.Layer.Kind.squeezeAll()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_3_36(MEMORY[0x277D84F90]);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *(a1 + 8) = 1;
  type metadata accessor for NeuralNetwork.Layer.Kind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t NeuralNetwork.Layer.SqueezeParameters.init(axes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  type metadata accessor for Proto_SqueezeLayerParams(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  return NeuralNetwork.Layer.SqueezeParameters.axes.setter(a1);
}

uint64_t static NeuralNetwork.Layer.SqueezeParameters.allUnitDimensions()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_3_36(MEMORY[0x277D84F90]);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *(a1 + 8) = 1;
  return result;
}

uint64_t NeuralNetwork.Layer.SqueezeParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257743FF0;
  *(v1 + 32) = 1936029761;
  *(v1 + 40) = 0xE400000000000000;
  NeuralNetwork.Layer.SqueezeParameters.axes.getter();
  v2 = MEMORY[0x259C64F20]();
  v4 = v3;

  *(v1 + 48) = v2;
  *(v1 + 56) = v4;
  *(v1 + 64) = 0xD00000000000001BLL;
  *(v1 + 72) = 0x8000000257780CA0;
  v5 = 1702195828;
  if (!*(v0 + 8))
  {
    v5 = 0x65736C6166;
  }

  v6 = 0xE500000000000000;
  if (*(v0 + 8))
  {
    v6 = 0xE400000000000000;
  }

  *(v1 + 80) = v5;
  *(v1 + 88) = v6;
  return v1;
}

uint64_t NeuralNetwork.Layer.SqueezeParameters.axes.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    sub_257483724(0, v2, 0);
    result = v9;
    v4 = (v1 + 32);
    v5 = *(v9 + 16);
    do
    {
      v7 = *v4++;
      v6 = v7;
      v10 = result;
      v8 = *(result + 24);
      if (v5 >= v8 >> 1)
      {
        sub_257483724(v8 > 1, v5 + 1, 1);
        result = v10;
      }

      *(result + 16) = v5 + 1;
      *(result + 8 * v5++ + 32) = v6;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t NeuralNetwork.Layer.SqueezeParameters.axes.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v11 = MEMORY[0x277D84F90];
    sub_2574845B8(0, v4, 0);
    v5 = v11;
    v6 = *(v11 + 16);
    v7 = 32;
    do
    {
      v8 = *(a1 + v7);
      v9 = *(v11 + 24);
      if (v6 >= v9 >> 1)
      {
        sub_2574845B8(v9 > 1, v6 + 1, 1);
      }

      *(v11 + 16) = v6 + 1;
      *(v11 + 8 * v6 + 32) = v8;
      v7 += 8;
      ++v6;
      --v4;
    }

    while (v4);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  *v2 = v5;
  return result;
}

uint64_t (*NeuralNetwork.Layer.SqueezeParameters.axes.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = NeuralNetwork.Layer.SqueezeParameters.axes.getter();
  return sub_25766FB6C;
}

uint64_t sub_25766FB6C(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return NeuralNetwork.Layer.SqueezeParameters.axes.setter(*a1);
  }

  NeuralNetwork.Layer.SqueezeParameters.axes.setter(v2);
}

uint64_t (*NeuralNetwork.Layer.SqueezeParameters.squeezeAllUnitDimensions.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 8);
  return sub_25766FBF8;
}

BOOL static NeuralNetwork.Layer.SqueezeParameters.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if ((sub_257487374() & 1) != 0 && *(a1 + 8) == *(a2 + 8))
  {
    type metadata accessor for Proto_SqueezeLayerParams(0);
    sub_2577431B4();
    sub_257670038(&qword_27F879B68, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t NeuralNetwork.Layer.SqueezeParameters.customMirror.getter()
{
  v1 = sub_257743A84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v5 = v4 - v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  type metadata accessor for NeuralNetwork.Layer.SqueezeParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  sub_25766FF8C(v0, v11 - v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_257743FF0;
  *(v12 + 32) = 1936029793;
  *(v12 + 40) = 0xE400000000000000;
  v13 = NeuralNetwork.Layer.SqueezeParameters.axes.getter();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879DF8, &qword_25776F230);
  *(v12 + 48) = v13;
  *(v12 + 72) = v14;
  *(v12 + 80) = 0xD000000000000018;
  *(v12 + 88) = 0x8000000257780CC0;
  v15 = *(v0 + 8);
  *(v12 + 120) = MEMORY[0x277D839B0];
  *(v12 + 96) = v15;
  v16 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v16);
  (*(v2 + 104))(v5, *MEMORY[0x277D84C38], v1);
  return sub_257743AA4();
}

uint64_t type metadata accessor for NeuralNetwork.Layer.SqueezeParameters(uint64_t a1)
{
  result = qword_27F880960;
  if (!qword_27F880960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25766FF8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NeuralNetwork.Layer.SqueezeParameters(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257670038(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2576700A8(uint64_t a1)
{
  result = type metadata accessor for Proto_SqueezeLayerParams(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_36@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 0;

  return type metadata accessor for Proto_SqueezeLayerParams(0);
}

uint64_t sub_257670130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v90 = a2;
  v7 = type metadata accessor for FeatureType.StateParameters.ElementType(0);
  v8 = OUTLINED_FUNCTION_13(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12_1();
  v88 = v9;
  v10 = OUTLINED_FUNCTION_153();
  v11 = type metadata accessor for FeatureType.StateParameters(v10);
  v12 = OUTLINED_FUNCTION_13(v11);
  MEMORY[0x28223BE20](v12);
  v14 = (&v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for FeatureType.SequenceParameters(0);
  v16 = OUTLINED_FUNCTION_13(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_12_1();
  v87 = v17;
  v18 = OUTLINED_FUNCTION_153();
  v19 = type metadata accessor for FeatureType.ImageParameters(v18);
  v20 = OUTLINED_FUNCTION_13(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_12_1();
  v86 = v21;
  v22 = OUTLINED_FUNCTION_153();
  v23 = type metadata accessor for FeatureType.DictionaryParameters(v22);
  v24 = OUTLINED_FUNCTION_13(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_12_1();
  v85 = v25;
  v26 = OUTLINED_FUNCTION_153();
  v27 = type metadata accessor for FeatureType.ShapedArrayParameters(v26);
  v28 = OUTLINED_FUNCTION_13(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_12_1();
  v89 = v29;
  v30 = OUTLINED_FUNCTION_153();
  type metadata accessor for FeatureType(v30);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v31);
  v33 = &v83 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C38, &qword_257744550);
  v35 = OUTLINED_FUNCTION_13(v34);
  MEMORY[0x28223BE20](v35);
  v37 = &v83 - v36;
  v38 = MEMORY[0x277D84F90];
  v92 = MEMORY[0x277D84F90];
  v39 = v3[1];
  v40 = *v3 & 0xFFFFFFFFFFFFLL;
  if ((v39 & 0x2000000000000000) != 0)
  {
    v40 = HIBYTE(v39) & 0xF;
  }

  if (!v40)
  {
    v83 = a1;
    v84 = a3;
    v91 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
    sub_2574A16C8();
    OUTLINED_FUNCTION_8_19();
    v41 = sub_257743604();
    v43 = v42;
    sub_25746996C();
    v38 = v44;
    v45 = *(v44 + 16);
    if (v45 >= *(v44 + 24) >> 1)
    {
      sub_25746996C();
      v38 = v82;
    }

    *(v38 + 16) = v45 + 1;
    v46 = v38 + 48 * v45;
    *(v46 + 32) = 0;
    *(v46 + 40) = xmmword_25776E6E0;
    *(v46 + 56) = 3;
    *(v46 + 64) = v41;
    *(v46 + 72) = v43;
    v92 = v38;
    a1 = v83;
    a3 = v84;
  }

  v47 = type metadata accessor for Proto_FeatureDescription(0);
  sub_257635668(v4 + *(v47 + 28), v37);
  v48 = type metadata accessor for Proto_FeatureType(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37, 1, v48);
  sub_25763559C(v37);
  if (EnumTagSinglePayload == 1)
  {
    v84 = v14;
    v91 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
    sub_2574A16C8();
    OUTLINED_FUNCTION_8_19();
    v50 = sub_257743604();
    v52 = v51;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v92 = v38;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25746996C();
      v38 = v80;
      v92 = v80;
    }

    v54 = *(v38 + 16);
    if (v54 >= *(v38 + 24) >> 1)
    {
      sub_25746996C();
      v38 = v81;
    }

    *(v38 + 16) = v54 + 1;
    v55 = v38 + 48 * v54;
    *(v55 + 32) = 0;
    *(v55 + 40) = xmmword_25776E6F0;
    *(v55 + 56) = 3;
    *(v55 + 64) = v50;
    *(v55 + 72) = v52;
    v92 = v38;
    v14 = v84;
  }

  FeatureDescription.type.getter();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 3u:
      v59 = OUTLINED_FUNCTION_166();
      v33 = v86;
      sub_25767071C(v59, v86, v60);
      v61 = OUTLINED_FUNCTION_1_39();
      sub_257692C54(v61, v62, v63);
      OUTLINED_FUNCTION_7_21();
      v56 = type metadata accessor for FeatureType.ImageParameters;
      goto LABEL_20;
    case 4u:
      v57 = OUTLINED_FUNCTION_2_37();
      v33 = v89;
      sub_25767071C(v57, v89, v58);
      OUTLINED_FUNCTION_1_39();
      sub_257702A64();
      OUTLINED_FUNCTION_7_21();
      v56 = type metadata accessor for FeatureType.ShapedArrayParameters;
      goto LABEL_20;
    case 5u:
      v71 = OUTLINED_FUNCTION_166();
      v33 = v85;
      sub_25767071C(v71, v85, v72);
      OUTLINED_FUNCTION_1_39();
      sub_25772D020(v73);
      OUTLINED_FUNCTION_7_21();
      v56 = type metadata accessor for FeatureType.DictionaryParameters;
      goto LABEL_20;
    case 6u:
      v74 = OUTLINED_FUNCTION_166();
      v33 = v87;
      sub_25767071C(v74, v87, v75);
      v76 = OUTLINED_FUNCTION_1_39();
      sub_2576D7438(v76, v77, v78);
      OUTLINED_FUNCTION_7_21();
      v56 = type metadata accessor for FeatureType.SequenceParameters;
      goto LABEL_20;
    case 7u:
      v64 = OUTLINED_FUNCTION_166();
      sub_25767071C(v64, v14, v65);
      FeatureType.StateParameters.elementType.getter(v88);
      v66 = OUTLINED_FUNCTION_2_37();
      v67 = v89;
      sub_25767071C(v66, v89, v68);
      sub_257702A64();
      sub_25767077C(v67, type metadata accessor for FeatureType.ShapedArrayParameters);
      OUTLINED_FUNCTION_7_21();
      v69 = type metadata accessor for FeatureType.StateParameters;
      v70 = v14;
      goto LABEL_21;
    default:
      v56 = type metadata accessor for FeatureType;
LABEL_20:
      v69 = v56;
      v70 = v33;
LABEL_21:
      result = sub_25767077C(v70, v69);
      *a3 = v92;
      return result;
  }
}

uint64_t sub_25767071C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_25767077C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

void OUTLINED_FUNCTION_7_21()
{
  v2 = *(v0 - 96);

  sub_25763D14C(v2);
}

uint64_t NeuralNetwork.Layer.L2NormalizeParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2577442B0;
  OUTLINED_FUNCTION_9_18();
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  *(v0 + 48) = sub_257743794();
  *(v0 + 56) = v4;
  return v0;
}

uint64_t NeuralNetwork.Layer.L2NormalizeParameters.init()@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for Proto_L2NormalizeLayerParams(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL static NeuralNetwork.Layer.L2NormalizeParameters.== infix(_:_:)(float *a1, float *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    type metadata accessor for Proto_L2NormalizeLayerParams(0);
    sub_2577431B4();
    OUTLINED_FUNCTION_3_37();
    v4 = sub_2576713A8(v2, v3, MEMORY[0x277D216D0]);
    if (OUTLINED_FUNCTION_4_2(v4))
    {
      return 1;
    }
  }

  return result;
}

uint64_t NeuralNetwork.Layer.LRNParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_257744E70;
  *(v0 + 32) = 0x6168706C41;
  *(v0 + 40) = 0xE500000000000000;
  *(v0 + 48) = sub_257743794();
  *(v0 + 56) = v1;
  *(v0 + 64) = 1635018050;
  *(v0 + 72) = 0xE400000000000000;
  *(v0 + 80) = sub_257743794();
  *(v0 + 88) = v2;
  *(v0 + 96) = 0x6953206C61636F4CLL;
  *(v0 + 104) = 0xEA0000000000657ALL;
  *(v0 + 112) = sub_257743974();
  *(v0 + 120) = v3;
  *(v0 + 128) = 107;
  *(v0 + 136) = 0xE100000000000000;
  *(v0 + 144) = sub_257743794();
  *(v0 + 152) = v4;
  return v0;
}

uint64_t NeuralNetwork.Layer.LRNParameters.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Proto_LRNLayerParams(0);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL static NeuralNetwork.Layer.LRNParameters.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 4) == *(a2 + 4) && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    type metadata accessor for Proto_LRNLayerParams(0);
    sub_2577431B4();
    OUTLINED_FUNCTION_3_37();
    v4 = sub_2576713A8(v2, v3, MEMORY[0x277D216D0]);
    if (OUTLINED_FUNCTION_4_2(v4))
    {
      return 1;
    }
  }

  return result;
}

uint64_t NeuralNetwork.Layer.LayerNormalizeParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257743FF0;
  *(v1 + 32) = 0xD000000000000010;
  *(v1 + 40) = 0x8000000257780CE0;
  v2 = *(v0 + *(type metadata accessor for Proto_LayerNormalizationLayerParams(0) + 20));
  OUTLINED_FUNCTION_296(v2 + 16, v23);
  v3 = *(v2 + 16);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v20 = v2;
    v21 = v1;
    v22[0] = MEMORY[0x277D84F90];

    sub_257483754(0, v4, 0);
    v6 = 32;
    v5 = v22[0];
    do
    {
      v22[3] = *(v3 + v6);
      v7 = sub_257743974();
      v9 = v8;
      v22[0] = v5;
      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_257483754((v10 > 1), v11 + 1, 1);
        v5 = v22[0];
      }

      *(v5 + 16) = v11 + 1;
      v12 = v5 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
      v6 += 8;
      --v4;
    }

    while (v4);

    v2 = v20;
    v1 = v21;
  }

  v22[0] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
  sub_2574A16C8();
  v13 = sub_257743604();
  v15 = v14;

  *(v1 + 48) = v13;
  *(v1 + 56) = v15;
  OUTLINED_FUNCTION_9_18();
  *(v1 + 64) = v16;
  *(v1 + 72) = v17;
  OUTLINED_FUNCTION_296(v2 + 24, v22);
  *(v1 + 80) = sub_257743794();
  *(v1 + 88) = v18;
  return v1;
}

uint64_t NeuralNetwork.Layer.LayerNormalizeParameters.namedWeights.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B38, &qword_2577448C0);
  v2 = *(v1 - 8);
  v60 = v1;
  v61 = v2;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_25_0();
  v59 = v3;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v4);
  v6 = (&v56 - v5);
  v7 = type metadata accessor for Proto_WeightParams(0);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_25_0();
  v58 = v8;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v9);
  v11 = &v56 - v10;
  v12 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_25_0();
  v57 = v13;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v14);
  v16 = (&v56 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  MEMORY[0x28223BE20](v17 - 8);
  OUTLINED_FUNCTION_25_0();
  v56 = v18;
  OUTLINED_FUNCTION_158();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v56 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v56 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v56 - v26;
  v28 = *(v0 + *(type metadata accessor for Proto_LayerNormalizationLayerParams(0) + 20));
  v29 = OBJC_IVAR____TtCV20MLModelSpecification35Proto_LayerNormalizationLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__gamma;
  OUTLINED_FUNCTION_296(v28 + OBJC_IVAR____TtCV20MLModelSpecification35Proto_LayerNormalizationLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__gamma, v63);
  sub_25749E8D0(v28 + v29, v27);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v27, 1, v7);
  sub_25749E940(v27);
  v31 = MEMORY[0x277D84F90];
  if (EnumTagSinglePayload != 1)
  {
    sub_25749E8D0(v28 + v29, v25);
    OUTLINED_FUNCTION_65(v25);
    if (v32)
    {
      *v11 = MEMORY[0x277D84F90];
      *(v11 + 8) = xmmword_257745740;
      *(v11 + 24) = xmmword_257745740;
      *(v11 + 40) = xmmword_257745740;
      v11[56] = 0;
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      v33 = *(v7 + 40);
      v34 = type metadata accessor for Proto_QuantizationParams(0);
      __swift_storeEnumTagSinglePayload(&v11[v33], 1, 1, v34);
      OUTLINED_FUNCTION_65(v25);
      if (!v32)
      {
        sub_25749E940(v25);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_5();
      sub_25749EA18(v25, v11, v35);
    }

    sub_2576FF45C(v11, v16);
    *v6 = 0x616D6D6147;
    v6[1] = 0xE500000000000000;
    OUTLINED_FUNCTION_4_26();
    sub_25749EA18(v16, v6 + v36, v37);
    sub_257469D34();
    v31 = v38;
    if (*(v38 + 16) >= *(v38 + 24) >> 1)
    {
      OUTLINED_FUNCTION_10_4();
      v31 = v53;
    }

    OUTLINED_FUNCTION_6_28();
    sub_25749E9A8(v6, v39);
  }

  v40 = OBJC_IVAR____TtCV20MLModelSpecification35Proto_LayerNormalizationLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__beta;
  OUTLINED_FUNCTION_296(v28 + OBJC_IVAR____TtCV20MLModelSpecification35Proto_LayerNormalizationLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__beta, v62);
  sub_25749E8D0(v28 + v40, v22);
  v41 = __swift_getEnumTagSinglePayload(v22, 1, v7);
  sub_25749E940(v22);
  if (v41 != 1)
  {
    v42 = v56;
    sub_25749E8D0(v28 + v40, v56);
    OUTLINED_FUNCTION_65(v42);
    if (v32)
    {
      v45 = v58;
      *v58 = MEMORY[0x277D84F90];
      *(v45 + 1) = xmmword_257745740;
      *(v45 + 3) = xmmword_257745740;
      *(v45 + 5) = xmmword_257745740;
      *(v45 + 56) = 0;
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      v43 = *(v7 + 40);
      v44 = type metadata accessor for Proto_QuantizationParams(0);
      __swift_storeEnumTagSinglePayload(v45 + v43, 1, 1, v44);
      OUTLINED_FUNCTION_65(v42);
      v47 = v59;
      if (!v32)
      {
        sub_25749E940(v42);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_5();
      v45 = v58;
      sub_25749EA18(v42, v58, v46);
      v47 = v59;
    }

    v48 = v57;
    sub_2576FF45C(v45, v57);
    *v47 = 1635018050;
    v47[1] = 0xE400000000000000;
    OUTLINED_FUNCTION_4_26();
    sub_25749EA18(v48, v47 + v49, v50);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_257469D34();
      v31 = v54;
    }

    if (*(v31 + 16) >= *(v31 + 24) >> 1)
    {
      OUTLINED_FUNCTION_10_4();
      v31 = v55;
    }

    OUTLINED_FUNCTION_6_28();
    sub_25749E9A8(v47, v51);
  }

  return v31;
}

uint64_t NeuralNetwork.Layer.LayerNormalizeParameters.init()@<X0>(uint64_t a2@<X8>)
{
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v3 = *(type metadata accessor for Proto_LayerNormalizationLayerParams(0) + 20);
  if (qword_27F8798C0 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_27F87BF48;
}

uint64_t sub_2576713A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_257671510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void static NeuralNetwork.Layer.scatterND(name:inputNames:outputName:mode:)()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  v15 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2577442B0;
  *(v16 + 32) = v6;
  *(v16 + 40) = v4;
  *v14 = 0;
  *(v14 + 8) = 1;
  type metadata accessor for Proto_ScatterNDLayerParams(0);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v14 = v15;
  *(v14 + 8) = 1;
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v17 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    OUTLINED_FUNCTION_3_22(&qword_27F879260);
  }

  *(v8 + v17) = qword_27F87BEE8;

  sub_257528334();

  sub_2575283BC();
  sub_25752842C(v16);
  sub_2574897E0(v0);
  v18 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_11_11(v18);
  sub_257634BB4(v14);
  OUTLINED_FUNCTION_35();
}

uint64_t static NeuralNetwork.Layer.Kind.scatterND(mode:)@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_6_29(a1);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v1 = v2;
  *(v1 + 8) = v3;
  type metadata accessor for NeuralNetwork.Layer.Kind(0);

  return swift_storeEnumTagMultiPayload();
}

void sub_2576718A4()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v22 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v12);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v17 = v16 - v15;
  v18 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2577442B0;
  *(v19 + 32) = v9;
  *(v19 + 40) = v7;
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v17 + 16) = 1;
  v2(0);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v17 = v22;
  *(v17 + 8) = v18;
  *(v17 + 16) = 1;
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v20 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    OUTLINED_FUNCTION_3_22(&qword_27F879260);
  }

  *(v11 + v20) = qword_27F87BEE8;

  sub_257528334();

  sub_2575283BC();
  sub_25752842C(v19);
  sub_2574897E0(v0);
  v21 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_11_11(v21);
  sub_257634BB4(v17);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_257671A9C@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  a3(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a4 = a1;
  *(a4 + 8) = v6;
  *(a4 + 16) = 1;
  type metadata accessor for NeuralNetwork.Layer.Kind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t NeuralNetwork.Layer.ScatterNDParameters.init(mode:)@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_6_29(a1);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t sub_257671B94@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  a3(0);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a4 = a1;
  *(a4 + 8) = v6;
  *(a4 + 16) = 1;
  return result;
}

void NeuralNetwork.Layer.ScatterParameters.mode.getter(_BYTE *a1@<X8>)
{
  if (*(v1 + 16) == 1)
  {
    v2 = *(v1 + 8);
  }

  else
  {
    v2 = 0;
  }

  *a1 = v2;
}

uint64_t (*NeuralNetwork.Layer.ScatterParameters.axis.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_257636A44;
}

unsigned __int8 *NeuralNetwork.Layer.ScatterParameters.mode.setter(unsigned __int8 *result)
{
  *(v1 + 8) = *result;
  *(v1 + 16) = 1;
  return result;
}

uint64_t *(*NeuralNetwork.Layer.ScatterParameters.mode.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  if (*(v1 + 16) == 1)
  {
    v2 = *(v1 + 8);
  }

  else
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  return sub_257671CA0;
}

uint64_t *sub_257671CA0(uint64_t *result)
{
  v1 = *result;
  *(v1 + 8) = *(result + 8);
  *(v1 + 16) = 1;
  return result;
}

double NeuralNetwork.Layer.ScatterNDParameters.propertyDescriptions.getter()
{
  if (*(v0 + 8) == 1)
  {
    v1 = *v0;
    v2 = 0xE600000000000000;
    v3 = 0x657461647055;
    switch(v1)
    {
      case 1:
        v2 = 0xE300000000000000;
        v3 = 6579265;
        break;
      case 2:
        v2 = 0xE800000000000000;
        v3 = 0x7463617274627553;
        break;
      case 3:
        v2 = 0xE800000000000000;
        v3 = 0x796C7069746C754DLL;
        break;
      case 4:
        v3 = 0x656469766944;
        break;
      case 5:
        v2 = 0xE700000000000000;
        v4 = 1769496909;
        goto LABEL_10;
      case 6:
        v2 = 0xE700000000000000;
        v4 = 1768843597;
LABEL_10:
        v3 = v4 | 0x6D756D00000000;
        break;
      default:
        break;
    }
  }

  else
  {
    v2 = 0xE600000000000000;
    v3 = 0x657461647055;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v5 = swift_allocObject();
  *&result = 1;
  *(v5 + 16) = xmmword_2577442B0;
  *(v5 + 32) = 1701080909;
  *(v5 + 40) = 0xE400000000000000;
  *(v5 + 48) = v3;
  *(v5 + 56) = v2;
  return result;
}

void NeuralNetwork.Layer.ScatterNDParameters.mode.getter(_BYTE *a1@<X8>)
{
  if (v1[8] == 1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  *a1 = v2;
}

unsigned __int8 *NeuralNetwork.Layer.ScatterNDParameters.mode.setter(unsigned __int8 *result)
{
  *v1 = *result;
  *(v1 + 8) = 1;
  return result;
}

uint64_t *(*NeuralNetwork.Layer.ScatterNDParameters.mode.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  if (v1[8] == 1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  return sub_25749B4B4;
}

void NeuralNetwork.Layer.ScatterNDParameters.customMirror.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v22;
  a20 = v23;
  sub_257743A84();
  OUTLINED_FUNCTION_35_4();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3();
  v29 = v28 - v27;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v30);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  type metadata accessor for NeuralNetwork.Layer.ScatterNDParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_3();
  sub_2576724E4(v20, v36 - v35, type metadata accessor for NeuralNetwork.Layer.ScatterNDParameters);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_2577442B0;
  *(v37 + 32) = 1701080941;
  *(v37 + 40) = 0xE400000000000000;
  *(v37 + 72) = &type metadata for NeuralNetwork.Layer.ScatterMode;
  NeuralNetwork.Layer.ScatterNDParameters.mode.getter((v37 + 48));
  v38 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v33, 1, 1, v38);
  (*(v25 + 104))(v29, *MEMORY[0x277D84C38], v21);
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t _s20MLModelSpecification13NeuralNetworkV5LayerV17ScatterParametersV20propertyDescriptionsSaySS4name_SS5valuetGvg_0()
{
  if (*(v0 + 16) == 1)
  {
    v1 = 0xE600000000000000;
    v2 = 0x657461647055;
    switch(*(v0 + 8))
    {
      case 1:
        v1 = 0xE300000000000000;
        v2 = 6579265;
        break;
      case 2:
        v1 = 0xE800000000000000;
        v2 = 0x7463617274627553;
        break;
      case 3:
        v1 = 0xE800000000000000;
        v2 = 0x796C7069746C754DLL;
        break;
      case 4:
        v2 = 0x656469766944;
        break;
      case 5:
        v1 = 0xE700000000000000;
        v3 = 1769496909;
        goto LABEL_10;
      case 6:
        v1 = 0xE700000000000000;
        v3 = 1768843597;
LABEL_10:
        v2 = v3 | 0x6D756D00000000;
        break;
      default:
        break;
    }
  }

  else
  {
    v1 = 0xE600000000000000;
    v2 = 0x657461647055;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  *(v4 + 32) = 1936291905;
  *(v4 + 40) = 0xE400000000000000;
  *(v4 + 48) = sub_257743974();
  *(v4 + 56) = v5;
  *(v4 + 64) = 1701080909;
  *(v4 + 72) = 0xE400000000000000;
  *(v4 + 80) = v2;
  *(v4 + 88) = v1;
  return v4;
}

uint64_t (*NeuralNetwork.Layer.ScatterAlongAxisParameters.axis.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_257673058;
}

uint64_t sub_25767247C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2576724E4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t *(*NeuralNetwork.Layer.ScatterAlongAxisParameters.mode.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  if (*(v1 + 16) == 1)
  {
    v2 = *(v1 + 8);
  }

  else
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  return sub_25767306C;
}

uint64_t static NeuralNetwork.Layer.ScatterAlongAxisParameters.== infix(_:_:)(void *a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = a1[1];
    v3 = *(a2 + 8);
    if (*(a2 + 16) == 1)
    {
      switch(v3)
      {
        case 1:
          if (v2 != 1)
          {
            return 0;
          }

          goto LABEL_7;
        case 2:
          if (v2 != 2)
          {
            return 0;
          }

          goto LABEL_7;
        case 3:
          if (v2 != 3)
          {
            return 0;
          }

          goto LABEL_7;
        case 4:
          if (v2 != 4)
          {
            return 0;
          }

          goto LABEL_7;
        case 5:
          if (v2 != 5)
          {
            return 0;
          }

          goto LABEL_7;
        case 6:
          if (v2 != 6)
          {
            return 0;
          }

          goto LABEL_7;
        default:
          if (!v2)
          {
            goto LABEL_7;
          }

          return 0;
      }
    }

    if (v2 == v3)
    {
LABEL_7:
      type metadata accessor for Proto_ScatterAlongAxisLayerParams(0);
      sub_2577431B4();
      sub_25767247C(&qword_27F879B68, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      if (sub_257743644())
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_257672704(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_19();

  return sub_2577435F4();
}

uint64_t sub_2576727B8(uint64_t (*a1)(void))
{
  sub_257743A14();
  a1(0);
  OUTLINED_FUNCTION_9_19();
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_257672884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_257743A14();
  a4(0);
  OUTLINED_FUNCTION_9_19();
  sub_2577435F4();
  return sub_257743A64();
}

void sub_257672940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_257743A84();
  OUTLINED_FUNCTION_35_4();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3();
  v35 = v34 - v33;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v36);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v37);
  v39 = &a9 - v38;
  v29(0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v40);
  sub_2576724E4(v20, &a9 - v41, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_257743FF0;
  *(v42 + 32) = 1936291937;
  *(v42 + 40) = 0xE400000000000000;
  v43 = MEMORY[0x277D83B88];
  *(v42 + 48) = *v20;
  *(v42 + 72) = v43;
  *(v42 + 80) = 1701080941;
  *(v42 + 88) = 0xE400000000000000;
  *(v42 + 120) = &type metadata for NeuralNetwork.Layer.ScatterMode;
  v25();
  v44 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v39, 1, 1, v44);
  (*(v31 + 104))(v35, *MEMORY[0x277D84C38], v21);
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

unint64_t NeuralNetwork.Layer.ScatterMode.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 7;
  if (result < 7)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_257672D40@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.Layer.ScatterMode.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_257672D6C()
{
  result = qword_27F8809B8;
  if (!qword_27F8809B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8809B8);
  }

  return result;
}

uint64_t sub_257672E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s11ScatterModeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s11ScatterModeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_29@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;

  return type metadata accessor for Proto_ScatterNDLayerParams(0);
}

uint64_t OUTLINED_FUNCTION_9_19()
{

  return sub_25767247C(v2, v1, v0);
}

void sub_2576730B4()
{
  OUTLINED_FUNCTION_31();
  v1 = type metadata accessor for MLProgram.Value(0);
  v2 = OUTLINED_FUNCTION_13(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v45 = v4 - v3;
  v5 = OUTLINED_FUNCTION_153();
  v48 = type metadata accessor for MLProgram.Argument.Binding(v5);
  OUTLINED_FUNCTION_63();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_329();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v44 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v44 - v13;
  MLProgram.Argument.bindings.getter();
  v16 = *(v15 + 16);

  MLProgram.Argument.bindings.getter();
  v18 = v17;
  v19 = *(v17 + 16);
  if (v16 != 1)
  {
    if (v19)
    {
      v22 = OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
      sub_257484040(v22, v19, 0);
      v23 = v51;
      OUTLINED_FUNCTION_193();
      v44 = v18;
      v25 = v18 + v24;
      v46 = *(v7 + 72);
      v47 = v0;
      do
      {
        sub_257677F00(v25, v12);
        v26 = OUTLINED_FUNCTION_322();
        sub_257677F00(v26, v27);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          OUTLINED_FUNCTION_1_40();
          v28 = v45;
          sub_257675D28(v0, v45);
          sub_25771810C();
          v30 = v29;
          v32 = v31;
          v34 = v33;
          OUTLINED_FUNCTION_5_28();
          sub_257677F58(v28, v35);
        }

        else
        {
          v36 = *v0;
          v37 = v0[1];
          v49 = 0x2228666552;
          v50 = 0xE500000000000000;
          MEMORY[0x259C64E90](v36, v37);

          MEMORY[0x259C64E90](10530, 0xE200000000000000);
          v34 = 0;
          v30 = v49;
          v32 = v50;
        }

        OUTLINED_FUNCTION_0_51();
        v38 = v12;
        sub_257677F58(v12, v39);
        v51 = v23;
        v41 = *(v23 + 16);
        v40 = *(v23 + 24);
        if (v41 >= v40 >> 1)
        {
          v43 = OUTLINED_FUNCTION_13_1(v40);
          sub_257484040(v43, v41 + 1, 1);
          v23 = v51;
        }

        *(v23 + 16) = v41 + 1;
        v42 = v23 + 24 * v41;
        *(v42 + 32) = v30;
        *(v42 + 40) = v32;
        *(v42 + 48) = v34;
        v25 += v46;
        --v19;
        v12 = v38;
        v0 = v47;
      }

      while (v19);
    }

    goto LABEL_13;
  }

  if (v19)
  {
    OUTLINED_FUNCTION_193();
    OUTLINED_FUNCTION_2_38();
    sub_257677F00(v18 + v20, v14);

    sub_257676174();
    OUTLINED_FUNCTION_0_51();
    sub_257677F58(v14, v21);
LABEL_13:
    OUTLINED_FUNCTION_35();
    return;
  }

  __break(1u);
}

void sub_2576733B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  v128 = v22;
  v23 = OUTLINED_FUNCTION_30();
  v24 = type metadata accessor for MLProgram.Value.BlobFileValue(v23);
  v25 = OUTLINED_FUNCTION_13(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3();
  v127 = (v27 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B190, &qword_25774C170);
  OUTLINED_FUNCTION_13(v28);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v29);
  v132 = (v124 - v30);
  v31 = OUTLINED_FUNCTION_153();
  v126 = type metadata accessor for Proto_MILSpec_Value.ImmediateValue.OneOf_Value(v31);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_196();
  v35 = OUTLINED_FUNCTION_38_0(v34);
  v124[1] = type metadata accessor for MLProgram.Value.ImmediateValue(v35);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_3();
  v129 = (v38 - v37);
  v39 = OUTLINED_FUNCTION_153();
  v40 = type metadata accessor for Proto_MILSpec_Value.ImmediateValue(v39);
  v41 = OUTLINED_FUNCTION_13(v40);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_25_0();
  v131 = v42;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_196();
  v130 = v44;
  v45 = OUTLINED_FUNCTION_153();
  v143 = type metadata accessor for MLProgram.Value.Representation(v45);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_25_0();
  v135 = v47;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_196();
  v134 = v49;
  v50 = OUTLINED_FUNCTION_153();
  v139 = type metadata accessor for Proto_MILSpec_Value.OneOf_Value(v50);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_25_0();
  v133 = v52;
  OUTLINED_FUNCTION_158();
  v54 = MEMORY[0x28223BE20](v53);
  v56 = v124 - v55;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_196();
  v137 = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EA8, &unk_2577447D0);
  OUTLINED_FUNCTION_13(v58);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v59);
  v138 = v124 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  OUTLINED_FUNCTION_13(v61);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_40();
  v63 = type metadata accessor for MLProgram.Value(0);
  v64 = OUTLINED_FUNCTION_13(v63);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_3();
  v67 = v66 - v65;
  type metadata accessor for MLProgram.Argument.Binding(0);
  OUTLINED_FUNCTION_63();
  v141 = v69;
  v142 = v68;
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_11();
  v72 = v70 - v71;
  MEMORY[0x28223BE20](v73);
  v75 = v124 - v74;
  v144 = v20;
  MLProgram.Argument.bindings.getter();
  v77 = *(v76 + 16);

  v140 = v77;
  if (v77)
  {
    v78 = 0;
    v136 = v67;
    while (1)
    {
      MLProgram.Argument.bindings.getter();
      if (v78 >= *(v79 + 16))
      {
        break;
      }

      v80 = v56;
      OUTLINED_FUNCTION_193();
      sub_257677F00(v81 + v82 + *(v83 + 72) * v78, v75);

      sub_257677F00(v75, v72);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_257675D28(v72, v67);
        v84 = type metadata accessor for Proto_MILSpec_Value(0);
        v85 = v138;
        sub_257487308(v67 + *(v84 + 20));
        v86 = 1;
        OUTLINED_FUNCTION_155(v85, 1, v139);
        v56 = v80;
        if (!v87)
        {
          v88 = v137;
          sub_257675D28(v138, v137);
          OUTLINED_FUNCTION_31_7();
          sub_257677F00(v88, v80);
          v89 = v133;
          sub_257677F00(v80, v133);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_257677F58(v80, type metadata accessor for Proto_MILSpec_Value.OneOf_Value);
            sub_257677F58(v137, type metadata accessor for Proto_MILSpec_Value.OneOf_Value);
            OUTLINED_FUNCTION_4_27();
            v90 = v89;
            v56 = v80;
            v91 = v134;
            sub_257675D28(v90, v134);
            v67 = v136;
          }

          else
          {
            v92 = v89;
            v93 = v130;
            sub_257675D28(v92, v130);
            OUTLINED_FUNCTION_22_13();
            v94 = v93;
            v95 = v131;
            sub_257677F00(v94, v131);
            v96 = v95;
            v97 = v132;
            sub_257487308(v96);
            OUTLINED_FUNCTION_155(v97, 1, v126);
            if (v87)
            {
              sub_2574695E4(v132, &qword_27F87B190, &qword_25774C170);
              OUTLINED_FUNCTION_36_6();
              sub_257677F58(v131, v98);
              sub_257677F58(v130, v97);
              OUTLINED_FUNCTION_34_7();
              sub_257677F58(v80, v99);
              sub_257677F58(v137, v97);
              v100 = v129;
              *v129 = MEMORY[0x277D84F90];
              v100[1] = 0;
              *(v100 + 16) = 0;
              swift_storeEnumTagMultiPayload();
            }

            else
            {
              v101 = v125;
              sub_257675D28(v132, v125);
              OUTLINED_FUNCTION_20_10();
              OUTLINED_FUNCTION_38_6();
              sub_257677F00(v102, v103);
              sub_257663CD4();
              OUTLINED_FUNCTION_19_16();
              v104 = v101;
              v56 = v80;
              sub_257677F58(v104, v105);
              OUTLINED_FUNCTION_36_6();
              sub_257677F58(v131, v106);
              sub_257677F58(v130, v97);
              OUTLINED_FUNCTION_34_7();
              sub_257677F58(v80, v107);
              sub_257677F58(v137, v97);
            }

            v67 = v136;
            OUTLINED_FUNCTION_7_22();
            v91 = v134;
            sub_257675D28(v129, v134);
          }

          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_18_19();
          sub_257675D28(v91, v21);
          v86 = 0;
        }

        v108 = v86;
        v109 = v143;
        __swift_storeEnumTagSinglePayload(v21, v108, 1, v143);
        OUTLINED_FUNCTION_155(v21, 1, v109);
        if (v87)
        {
          sub_257677F58(v67, type metadata accessor for MLProgram.Value);
          OUTLINED_FUNCTION_0_51();
          sub_257677F58(v75, v110);
          sub_2574695E4(v21, &qword_27F880A30, &qword_25776ED00);
        }

        else
        {
          v111 = v135;
          sub_257677F00(v21, v135);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload == 1)
          {
            v113 = v21;
            v114 = v127;
            sub_257675D28(v111, v127);
            v115 = *v114;
            v116 = v114[1];

            v117 = v116;
            v56 = v80;
            sub_25771BACC(&v145, v115, v117);

            v118 = v114;
            v21 = v113;
            v67 = v136;
            sub_257677F58(v118, type metadata accessor for MLProgram.Value.BlobFileValue);
            OUTLINED_FUNCTION_5_28();
            sub_257677F58(v67, v119);
            OUTLINED_FUNCTION_0_51();
            v121 = v75;
          }

          else
          {
            sub_257677F58(v67, type metadata accessor for MLProgram.Value);
            OUTLINED_FUNCTION_0_51();
            sub_257677F58(v75, v122);
            OUTLINED_FUNCTION_3_38();
            v121 = v111;
          }

          sub_257677F58(v121, v120);
          OUTLINED_FUNCTION_3_38();
          sub_257677F58(v21, v123);
        }
      }

      else
      {
        sub_257677F58(v75, type metadata accessor for MLProgram.Argument.Binding);
        sub_257677F58(v72, type metadata accessor for MLProgram.Argument.Binding);
      }

      if (v140 == ++v78)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_22:
    OUTLINED_FUNCTION_35();
  }
}

void sub_257673C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  v23 = v22;
  v193 = v24;
  v25 = OUTLINED_FUNCTION_30();
  v26 = type metadata accessor for MLProgram.Value.BlobFileValue(v25);
  v27 = OUTLINED_FUNCTION_13(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_196();
  v192 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B190, &qword_25774C170);
  v31 = OUTLINED_FUNCTION_13(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_196();
  v201 = v33;
  v34 = OUTLINED_FUNCTION_153();
  v200 = type metadata accessor for Proto_MILSpec_Value.ImmediateValue.OneOf_Value(v34);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_196();
  v38 = OUTLINED_FUNCTION_38_0(v37);
  v191[1] = type metadata accessor for MLProgram.Value.ImmediateValue(v38);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_196();
  v42 = OUTLINED_FUNCTION_38_0(v41);
  v195 = type metadata accessor for Proto_MILSpec_Value.ImmediateValue(v42);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_25_0();
  v205 = v44;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_196();
  v204 = v46;
  v47 = OUTLINED_FUNCTION_153();
  v209 = type metadata accessor for MLProgram.Value.Representation(v47);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_329();
  v50 = MEMORY[0x28223BE20](v49);
  v52 = v191 - v51;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_196();
  v203 = v54;
  v55 = OUTLINED_FUNCTION_153();
  v220 = type metadata accessor for Proto_MILSpec_Value.OneOf_Value(v55);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_25_0();
  v202 = v57;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_167();
  v208 = v59;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_196();
  v212 = v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EA8, &unk_2577447D0);
  v63 = OUTLINED_FUNCTION_13(v62);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_11();
  v66 = v64 - v65;
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_167();
  v207 = v68;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_196();
  v214 = v70;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  v72 = OUTLINED_FUNCTION_13(v71);
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_25_0();
  v206 = v73;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_167();
  v211 = v75;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_167();
  v210 = v77;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_196();
  v213 = v79;
  v80 = OUTLINED_FUNCTION_153();
  v81 = type metadata accessor for MLProgram.Argument.Binding(v80);
  OUTLINED_FUNCTION_63();
  v218 = v82;
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_3();
  v219 = v85 - v84;
  v86 = OUTLINED_FUNCTION_153();
  v87 = type metadata accessor for MLProgram.Value(v86);
  v88 = OUTLINED_FUNCTION_13(v87);
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_3();
  v217 = v90 - v89;
  v221 = v20;
  MLProgram.Argument.bindings.getter();
  v92 = *(v91 + 16);

  v216 = v92;
  if (v92)
  {
    v191[4] = v52;
    v196 = v21;
    v194 = v23;
    v93 = 0;
    v94 = v209;
    v198 = v66;
    v95 = v213;
    v197 = v81;
    while (1)
    {
      MLProgram.Argument.bindings.getter();
      v97 = v96;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25767A5EC(v97, v98, v99, v100);
        v97 = v189;
      }

      v101 = v219;
      if (v93 >= *(v97 + 16))
      {
        break;
      }

      OUTLINED_FUNCTION_193();
      v104 = v97 + v102 + *(v103 + 72) * v93;
      OUTLINED_FUNCTION_2_38();
      sub_257677F00(v104, v101);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_257677F58(v104, type metadata accessor for MLProgram.Argument.Binding);
        OUTLINED_FUNCTION_1_40();
        v105 = v101;
        v106 = v217;
        sub_257675D28(v105, v217);
        v215 = *(type metadata accessor for Proto_MILSpec_Value(0) + 20);
        v107 = v214;
        sub_257487308(v106 + v215);
        v108 = 1;
        OUTLINED_FUNCTION_155(v107, 1, v220);
        if (!v109)
        {
          v110 = v212;
          sub_257675D28(v214, v212);
          OUTLINED_FUNCTION_31_7();
          v111 = v110;
          v112 = v208;
          sub_257677F00(v111, v208);
          v113 = v202;
          sub_257677F00(v112, v202);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_257677F58(v112, type metadata accessor for Proto_MILSpec_Value.OneOf_Value);
            OUTLINED_FUNCTION_4_27();
            sub_257675D28(v113, v203);
          }

          else
          {
            v114 = v204;
            sub_257675D28(v113, v204);
            OUTLINED_FUNCTION_22_13();
            v115 = v114;
            v116 = v205;
            sub_257677F00(v115, v205);
            v117 = v201;
            sub_257487308(v116);
            OUTLINED_FUNCTION_155(v117, 1, v200);
            if (v109)
            {
              sub_2574695E4(v201, &qword_27F87B190, &qword_25774C170);
              OUTLINED_FUNCTION_6_30();
              sub_257677F58(v205, v118);
              v119 = v199;
              *v199 = MEMORY[0x277D84F90];
              v119[1] = 0;
              *(v119 + 16) = 0;
              swift_storeEnumTagMultiPayload();
            }

            else
            {
              OUTLINED_FUNCTION_38_6();
              sub_257675D28(v120, v121);
              OUTLINED_FUNCTION_20_10();
              OUTLINED_FUNCTION_29_10();
              sub_257677F00(v122, v123);
              v94 = v209;
              sub_257663CD4();
              OUTLINED_FUNCTION_6_30();
              sub_257677F58(v205, v124);
              OUTLINED_FUNCTION_19_16();
              sub_257677F58(v117, v125);
            }

            v126 = v203;
            v95 = v213;
            OUTLINED_FUNCTION_7_22();
            sub_257675D28(v199, v126);
            OUTLINED_FUNCTION_9_20();
            sub_257677F58(v208, v127);
            OUTLINED_FUNCTION_6_30();
            sub_257677F58(v204, v128);
          }

          OUTLINED_FUNCTION_373();
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_18_19();
          v129 = OUTLINED_FUNCTION_44_1();
          sub_257675D28(v129, v130);
          OUTLINED_FUNCTION_9_20();
          sub_257677F58(v212, v131);
          v108 = 0;
        }

        __swift_storeEnumTagSinglePayload(v95, v108, 1, v94);
        v132 = OUTLINED_FUNCTION_64_6();
        if (__swift_getEnumTagSinglePayload(v132, v133, v94))
        {
          v134 = v104;
          v135 = v210;
          sub_257487308(v95);
          v136 = v211;
          sub_257487308(v135);
          v137 = OUTLINED_FUNCTION_64_6();
          OUTLINED_FUNCTION_155(v137, v138, v94);
          if (v109)
          {
            sub_2574695E4(v135, &qword_27F880A30, &qword_25776ED00);
            v139 = sub_2574695E4(v136, &qword_27F880A30, &qword_25776ED00);
            v140 = 1;
          }

          else
          {
            OUTLINED_FUNCTION_38_6();
            sub_257677F00(v145, v146);
            OUTLINED_FUNCTION_373();
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            if (EnumCaseMultiPayload == 1)
            {
              sub_2574695E4(v210, &qword_27F880A30, &qword_25776ED00);
              OUTLINED_FUNCTION_8_20();
              OUTLINED_FUNCTION_29_10();
              sub_257675D28(v148, v149);
              OUTLINED_FUNCTION_4_27();
              sub_257675D28(v136, v207);
            }

            else
            {
              OUTLINED_FUNCTION_38_6();
              sub_257675D28(v164, v165);
              OUTLINED_FUNCTION_44();
              v166 = v200;
              __swift_storeEnumTagSinglePayload(v167, v168, v169, v200);
              OUTLINED_FUNCTION_67_5();
              _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
              OUTLINED_FUNCTION_68_1();
              v170 = OUTLINED_FUNCTION_11_19();
              sub_257677F58(v170, v171);
              sub_2574695E4(v210, &qword_27F880A30, &qword_25776ED00);
              v172 = OUTLINED_FUNCTION_39_7();
              __swift_storeEnumTagSinglePayload(v172, v173, v174, v166);
              sub_25751BB28();
            }

            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_3_38();
            v139 = sub_257677F58(v211, v175);
            v140 = 0;
            v94 = v209;
          }

          OUTLINED_FUNCTION_61_3(v139, v140);
          v176 = v217;
          sub_25751BB28();
          v95 = v213;
          sub_2574695E4(v213, &qword_27F880A30, &qword_25776ED00);
        }

        else
        {
          OUTLINED_FUNCTION_38_6();
          sub_257677F00(v141, v142);
          OUTLINED_FUNCTION_373();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_257677F58(v95, type metadata accessor for MLProgram.Value.Representation);
            v143 = v192;
            sub_257675D28(v108, v192);
            v144 = v194;

            v95 = v213;
            v94 = v209;

            *v143 = v193;
            v143[1] = v144;
            sub_257675D28(v143, v95);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            sub_257677F58(v108, type metadata accessor for MLProgram.Value.Representation);
          }

          v150 = v95;
          v151 = v95;
          v152 = v206;
          sub_257487308(v150);
          v153 = OUTLINED_FUNCTION_64_6();
          v134 = v104;
          if (__swift_getEnumTagSinglePayload(v153, v154, v94) == 1)
          {
            sub_2574695E4(v151, &qword_27F880A30, &qword_25776ED00);
            v155 = OUTLINED_FUNCTION_205();
            sub_2574695E4(v155, v156, &qword_25776ED00);
            v157 = 1;
            v158 = v220;
            v95 = v151;
            v159 = v198;
          }

          else
          {
            OUTLINED_FUNCTION_38_6();
            sub_257677F00(v160, v161);
            OUTLINED_FUNCTION_373();
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              OUTLINED_FUNCTION_29_10();
              sub_257675D28(v162, v163);
              OUTLINED_FUNCTION_4_27();
              v159 = v198;
              sub_257675D28(v152, v198);
            }

            else
            {
              OUTLINED_FUNCTION_38_6();
              sub_257675D28(v177, v178);
              v159 = v198;
              OUTLINED_FUNCTION_44();
              v179 = v200;
              __swift_storeEnumTagSinglePayload(v180, v181, v182, v200);
              OUTLINED_FUNCTION_67_5();
              _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
              OUTLINED_FUNCTION_68_1();
              v183 = OUTLINED_FUNCTION_11_19();
              sub_257677F58(v183, v184);
              v185 = OUTLINED_FUNCTION_39_7();
              __swift_storeEnumTagSinglePayload(v185, v186, v187, v179);
              sub_25751BB28();
            }

            v158 = v220;
            swift_storeEnumTagMultiPayload();
            v95 = v213;
            sub_2574695E4(v213, &qword_27F880A30, &qword_25776ED00);
            OUTLINED_FUNCTION_3_38();
            sub_257677F58(v206, v188);
            v157 = 0;
            v94 = v209;
          }

          __swift_storeEnumTagSinglePayload(v159, v157, 1, v158);
          v176 = v217;
          sub_25751BB28();
        }

        sub_257675D28(v176, v134);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        sub_257677F58(v101, type metadata accessor for MLProgram.Argument.Binding);
      }

      ++v93;
      MLProgram.Argument.bindings.setter();
      if (v216 == v93)
      {

        OUTLINED_FUNCTION_35();
        return;
      }
    }

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_35();
  }
}

void sub_257674A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  v213 = v22;
  OUTLINED_FUNCTION_30();
  v212 = sub_257743094();
  OUTLINED_FUNCTION_63();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3();
  v28 = OUTLINED_FUNCTION_38_0(v27 - v26);
  v29 = type metadata accessor for MLProgram.Value.BlobFileValue(v28);
  v30 = OUTLINED_FUNCTION_13(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_196();
  v223 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B190, &qword_25774C170);
  v34 = OUTLINED_FUNCTION_13(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_196();
  v37 = OUTLINED_FUNCTION_38_0(v36);
  v221 = type metadata accessor for Proto_MILSpec_Value.ImmediateValue.OneOf_Value(v37);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_196();
  v41 = OUTLINED_FUNCTION_38_0(v40);
  v208[1] = type metadata accessor for MLProgram.Value.ImmediateValue(v41);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_196();
  v45 = OUTLINED_FUNCTION_38_0(v44);
  v215 = type metadata accessor for Proto_MILSpec_Value.ImmediateValue(v45);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_11();
  v49 = v47 - v48;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_196();
  v52 = OUTLINED_FUNCTION_38_0(v51);
  v53 = type metadata accessor for MLProgram.Value.Representation(v52);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_196();
  v59 = OUTLINED_FUNCTION_38_0(v58);
  v236 = type metadata accessor for Proto_MILSpec_Value.OneOf_Value(v59);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_329();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_196();
  v229 = v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EA8, &unk_2577447D0);
  v65 = OUTLINED_FUNCTION_13(v64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  v67 = MEMORY[0x28223BE20](v66);
  v69 = v208 - v68;
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_196();
  v231 = v70;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  v72 = OUTLINED_FUNCTION_13(v71);
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_11();
  v75 = v73 - v74;
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_167();
  v226 = v77;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_167();
  v228 = v79;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_196();
  v239 = v81;
  v82 = OUTLINED_FUNCTION_153();
  v237 = type metadata accessor for MLProgram.Argument.Binding(v82);
  OUTLINED_FUNCTION_63();
  v234 = v83;
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_3();
  v235 = v86 - v85;
  v87 = OUTLINED_FUNCTION_153();
  v88 = type metadata accessor for MLProgram.Value(v87);
  v89 = OUTLINED_FUNCTION_13(v88);
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_3();
  v233 = v91 - v90;
  v238 = v20;
  MLProgram.Argument.bindings.getter();
  v93 = *(v92 + 16);

  v232 = v93;
  if (v93)
  {
    v94 = 0;
    v210 = (v24 + 16);
    v209 = (v24 + 8);
    v217 = v53;
    v224 = v69;
    v225 = v21;
    v222 = v75;
    v214 = v49;
    while (1)
    {
      MLProgram.Argument.bindings.getter();
      v96 = v95;
      v100 = v53;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25767A5EC(v96, v97, v98, v99);
        v96 = v207;
      }

      v102 = v235;
      v101 = v236;
      if (v94 >= *(v96 + 16))
      {
        break;
      }

      OUTLINED_FUNCTION_193();
      v105 = v96 + v103 + *(v104 + 72) * v94;
      OUTLINED_FUNCTION_2_38();
      sub_257677F00(v105, v102);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_0_51();
        sub_257677F58(v105, v106);
        OUTLINED_FUNCTION_1_40();
        v107 = v233;
        sub_257675D28(v102, v233);
        v108 = *(type metadata accessor for Proto_MILSpec_Value(0) + 20);
        v109 = v231;
        sub_257487308(v107 + v108);
        v110 = 1;
        OUTLINED_FUNCTION_155(v109, 1, v101);
        v53 = v100;
        if (!v111)
        {
          v112 = v229;
          sub_257675D28(v231, v229);
          v113 = v112;
          v114 = v225;
          sub_257677F00(v113, v225);
          v115 = v218;
          sub_257677F00(v114, v218);
          OUTLINED_FUNCTION_205();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            OUTLINED_FUNCTION_9_20();
            sub_257677F58(v114, v116);
            OUTLINED_FUNCTION_4_27();
            OUTLINED_FUNCTION_29_10();
            sub_257675D28(v117, v118);
          }

          else
          {
            OUTLINED_FUNCTION_29_10();
            sub_257675D28(v120, v121);
            OUTLINED_FUNCTION_22_13();
            OUTLINED_FUNCTION_29_10();
            sub_257677F00(v122, v123);
            v124 = v216;
            sub_257487308(v115);
            OUTLINED_FUNCTION_155(v124, 1, v221);
            if (v111)
            {
              v125 = OUTLINED_FUNCTION_176();
              sub_2574695E4(v125, v126, &qword_25774C170);
              OUTLINED_FUNCTION_6_30();
              sub_257677F58(v115, v127);
              v128 = v220;
              *v220 = MEMORY[0x277D84F90];
              v128[1] = 0;
              *(v128 + 16) = 0;
              swift_storeEnumTagMultiPayload();
            }

            else
            {
              OUTLINED_FUNCTION_38_6();
              sub_257675D28(v129, v130);
              OUTLINED_FUNCTION_20_10();
              OUTLINED_FUNCTION_29_10();
              sub_257677F00(v131, v132);
              sub_257663CD4();
              OUTLINED_FUNCTION_6_30();
              v53 = v217;
              sub_257677F58(v115, v133);
              OUTLINED_FUNCTION_19_16();
              sub_257677F58(v101, v134);
            }

            OUTLINED_FUNCTION_7_22();
            OUTLINED_FUNCTION_29_10();
            sub_257675D28(v135, v136);
            OUTLINED_FUNCTION_9_20();
            sub_257677F58(v225, v137);
            OUTLINED_FUNCTION_6_30();
            sub_257677F58(v219, v138);
          }

          OUTLINED_FUNCTION_55_4();
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_18_19();
          sub_257675D28(v115, v239);
          OUTLINED_FUNCTION_9_20();
          sub_257677F58(v229, v139);
          v110 = 0;
        }

        v140 = v239;
        __swift_storeEnumTagSinglePayload(v239, v110, 1, v53);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v140, 1, v53);
        v142 = v228;
        if (EnumTagSinglePayload)
        {
          v230 = v105;
          sub_257487308(v239);
          v143 = v226;
          sub_257487308(v142);
          OUTLINED_FUNCTION_155(v143, 1, v53);
          if (v111)
          {
            v144 = OUTLINED_FUNCTION_176();
            sub_2574695E4(v144, v145, &qword_25776ED00);
            v146 = sub_2574695E4(v143, &qword_27F880A30, &qword_25776ED00);
            v147 = 1;
          }

          else
          {
            OUTLINED_FUNCTION_21_14();
            OUTLINED_FUNCTION_29_10();
            sub_257677F00(v157, v158);
            OUTLINED_FUNCTION_55_4();
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            if (EnumCaseMultiPayload == 1)
            {
              v160 = OUTLINED_FUNCTION_176();
              sub_2574695E4(v160, v161, &qword_25776ED00);
              OUTLINED_FUNCTION_8_20();
              OUTLINED_FUNCTION_29_10();
              sub_257675D28(v162, v163);
              OUTLINED_FUNCTION_4_27();
              sub_257675D28(&qword_25776ED00, v224);
            }

            else
            {
              OUTLINED_FUNCTION_7_22();
              OUTLINED_FUNCTION_38_6();
              sub_257675D28(v165, v166);
              v227 = v108;
              OUTLINED_FUNCTION_44();
              v167 = v142;
              v168 = v221;
              __swift_storeEnumTagSinglePayload(v169, v170, v171, v221);
              OUTLINED_FUNCTION_67_5();
              _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
              OUTLINED_FUNCTION_68_1();
              v172 = OUTLINED_FUNCTION_11_19();
              sub_257677F58(v172, v173);
              sub_2574695E4(v167, &qword_27F880A30, &qword_25776ED00);
              v174 = OUTLINED_FUNCTION_39_7();
              v143 = v226;
              __swift_storeEnumTagSinglePayload(v174, v175, v176, v168);
              sub_25751BB28();
            }

            OUTLINED_FUNCTION_205();
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_3_38();
            v146 = sub_257677F58(v143, v177);
            v147 = 0;
          }

          OUTLINED_FUNCTION_61_3(v146, v147);
          sub_25751BB28();
          sub_2574695E4(v239, &qword_27F880A30, &qword_25776ED00);
        }

        else
        {
          OUTLINED_FUNCTION_21_14();
          OUTLINED_FUNCTION_29_10();
          sub_257677F00(v148, v149);
          OUTLINED_FUNCTION_55_4();
          v150 = swift_getEnumCaseMultiPayload();
          v227 = v108;
          if (v150 == 1)
          {
            OUTLINED_FUNCTION_3_38();
            sub_257677F58(v239, v151);
            OUTLINED_FUNCTION_8_20();
            sub_257675D28(v110, v223);
            v152 = v211;
            v153 = v212;
            (*v210)(v211, v213, v212);
            v154 = sub_257743054();
            v156 = v155;
            (*v209)(v152, v153);
            if (sub_2577436F4())
            {
            }

            else
            {
              *&v242 = v154;
              *(&v242 + 1) = v156;

              MEMORY[0x259C64E90](47, 0xE100000000000000);
            }

            v178 = v223;
            v179 = *v223;
            v180 = v223[1];
            OUTLINED_FUNCTION_44_1();
            v181 = sub_2577436E4();

            if (v181)
            {
              OUTLINED_FUNCTION_44_1();
              sub_2577436A4();

              sub_2577436B4();
              v241 = v180;
              strcpy(&v242, "@model_path/");
              BYTE13(v242) = 0;
              HIWORD(v242) = -5120;
              v240 = v179;
              sub_2576682AC();
              sub_257743684();

              v182 = v241;
              *v178 = v240;
              v178[1] = v182;
            }

            else
            {
            }

            OUTLINED_FUNCTION_8_20();
            sub_257675D28(v223, v239);
            v53 = v217;
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            OUTLINED_FUNCTION_3_38();
            sub_257677F58(v110, v164);
          }

          v183 = v222;
          sub_257487308(v239);
          OUTLINED_FUNCTION_155(v183, 1, v53);
          if (v111)
          {
            sub_2574695E4(v239, &qword_27F880A30, &qword_25776ED00);
            v184 = sub_2574695E4(v183, &qword_27F880A30, &qword_25776ED00);
            v185 = 1;
          }

          else
          {
            OUTLINED_FUNCTION_21_14();
            OUTLINED_FUNCTION_29_10();
            sub_257677F00(v186, v187);
            OUTLINED_FUNCTION_55_4();
            v188 = swift_getEnumCaseMultiPayload();
            if (v188 == 1)
            {
              OUTLINED_FUNCTION_8_20();
              OUTLINED_FUNCTION_29_10();
              sub_257675D28(v189, v190);
              OUTLINED_FUNCTION_4_27();
              OUTLINED_FUNCTION_29_10();
              sub_257675D28(v191, v192);
            }

            else
            {
              OUTLINED_FUNCTION_7_22();
              OUTLINED_FUNCTION_38_6();
              sub_257675D28(v193, v194);
              OUTLINED_FUNCTION_44();
              v195 = v221;
              __swift_storeEnumTagSinglePayload(v196, v197, v198, v221);
              OUTLINED_FUNCTION_67_5();
              _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
              OUTLINED_FUNCTION_68_1();
              v199 = OUTLINED_FUNCTION_11_19();
              sub_257677F58(v199, v200);
              v201 = OUTLINED_FUNCTION_39_7();
              __swift_storeEnumTagSinglePayload(v201, v202, v203, v195);
              sub_25751BB28();
            }

            OUTLINED_FUNCTION_205();
            swift_storeEnumTagMultiPayload();
            sub_2574695E4(v239, &qword_27F880A30, &qword_25776ED00);
            OUTLINED_FUNCTION_3_38();
            v184 = sub_257677F58(v222, v204);
            v185 = 0;
          }

          OUTLINED_FUNCTION_61_3(v184, v185);
          sub_25751BB28();
        }

        OUTLINED_FUNCTION_1_40();
        v205 = OUTLINED_FUNCTION_373();
        sub_257675D28(v205, v206);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        OUTLINED_FUNCTION_0_51();
        sub_257677F58(v102, v119);
        v53 = v100;
      }

      ++v94;
      MLProgram.Argument.bindings.setter();
      if (v232 == v94)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_44:
    OUTLINED_FUNCTION_35();
  }
}

void MLProgram.Argument.bindings.getter()
{
  OUTLINED_FUNCTION_31();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E70, &qword_257744798);
  OUTLINED_FUNCTION_13(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_56_2();
  v4 = type metadata accessor for Proto_MILSpec_Argument.Binding.OneOf_Binding(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_25_0();
  v49 = v6;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_196();
  v54 = v8;
  v9 = OUTLINED_FUNCTION_153();
  type metadata accessor for MLProgram.Argument.Binding(v9);
  OUTLINED_FUNCTION_63();
  v52 = v11;
  v53 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11();
  v14 = (v12 - v13);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_167();
  v51 = v16;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_167();
  v50 = v18;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_196();
  v55 = v20;
  v21 = OUTLINED_FUNCTION_153();
  v22 = type metadata accessor for Proto_MILSpec_Argument.Binding(v21) - 8;
  MEMORY[0x28223BE20](v22);
  v25 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(*v1 + 16);
  if (v26)
  {
    v27 = *v1 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v28 = *(v23 + 72);
    v29 = MEMORY[0x277D84F90];
    do
    {
      sub_257677F00(v27, v25);
      sub_257487308(v25);
      sub_257677F58(v25, type metadata accessor for Proto_MILSpec_Argument.Binding);
      v30 = OUTLINED_FUNCTION_64_6();
      OUTLINED_FUNCTION_155(v30, v31, v4);
      if (v32)
      {
        v33 = OUTLINED_FUNCTION_205();
        sub_2574695E4(v33, v34, &qword_257744798);
      }

      else
      {
        v35 = v4;
        v36 = v54;
        sub_257675D28(v0, v54);
        v37 = v49;
        sub_257675D28(v36, v49);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 1)
        {
          OUTLINED_FUNCTION_17_14();
          sub_257675D28(v37, v14);
        }

        else
        {
          v39 = v37[1];
          *v14 = *v37;
          v14[1] = v39;
        }

        swift_storeEnumTagMultiPayload();
        v40 = v51;
        sub_257675D28(v14, v51);
        v41 = v40;
        v42 = v50;
        sub_257675D28(v41, v50);
        sub_257675D28(v42, v55);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_257469E14(0, *(v29 + 16) + 1, 1, v29);
          v29 = v46;
        }

        v44 = *(v29 + 16);
        v43 = *(v29 + 24);
        if (v44 >= v43 >> 1)
        {
          sub_257469E14(v43 > 1, v44 + 1, 1, v29);
          v29 = v47;
        }

        *(v29 + 16) = v44 + 1;
        OUTLINED_FUNCTION_193();
        OUTLINED_FUNCTION_23_12();
        sub_257675D28(v55, v45);
        v4 = v35;
      }

      v27 += v28;
      --v26;
    }

    while (v26);
  }

  OUTLINED_FUNCTION_35();
}

uint64_t sub_257675D28(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return a2;
}

void MLProgram.Argument.bindings.setter()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = type metadata accessor for MLProgram.Value(0);
  v4 = OUTLINED_FUNCTION_13(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v41 = v6 - v5;
  v7 = OUTLINED_FUNCTION_153();
  v44 = type metadata accessor for MLProgram.Argument.Binding(v7);
  OUTLINED_FUNCTION_63();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11();
  v13 = (v11 - v12);
  MEMORY[0x28223BE20](v14);
  v16 = v39 - v15;
  v43 = type metadata accessor for Proto_MILSpec_Argument.Binding(0);
  OUTLINED_FUNCTION_63();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  v22 = (v21 - v20);
  v23 = *(v2 + 16);
  if (v23)
  {
    v40 = v0;
    v24 = OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
    sub_257484B30(v24, v23, 0);
    v25 = v45;
    OUTLINED_FUNCTION_193();
    v39[1] = v2;
    v27 = v2 + v26;
    v42 = *(v9 + 72);
    do
    {
      sub_257677F00(v27, v16);
      v28 = type metadata accessor for Proto_MILSpec_Argument.Binding.OneOf_Binding(0);
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v29, v30, v31, v28);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      sub_2574695E4(v22, &qword_27F879E70, &qword_257744798);
      sub_257677F00(v16, v13);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_1_40();
        v32 = v41;
        sub_257675D28(v13, v41);
        OUTLINED_FUNCTION_17_14();
        sub_257675D28(v32, v22);
      }

      else
      {
        v33 = v13[1];
        *v22 = *v13;
        v22[1] = v33;
      }

      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v28);
      OUTLINED_FUNCTION_0_51();
      sub_257677F58(v16, v34);
      v45 = v25;
      v36 = *(v25 + 16);
      v35 = *(v25 + 24);
      if (v36 >= v35 >> 1)
      {
        v38 = OUTLINED_FUNCTION_13_1(v35);
        sub_257484B30(v38, v36 + 1, 1);
        v25 = v45;
      }

      *(v25 + 16) = v36 + 1;
      OUTLINED_FUNCTION_193();
      sub_257675D28(v22, v25 + v37 + *(v18 + 72) * v36);
      v27 += v42;
      --v23;
    }

    while (v23);

    v0 = v40;
  }

  else
  {

    v25 = MEMORY[0x277D84F90];
  }

  *v0 = v25;
  OUTLINED_FUNCTION_35();
}

void (*MLProgram.Argument.bindings.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  MLProgram.Argument.bindings.getter();
  *a1 = v3;
  return sub_25767611C;
}

void sub_25767611C(uint64_t a1, char a2)
{
  if (a2)
  {

    MLProgram.Argument.bindings.setter();
  }

  else
  {
    MLProgram.Argument.bindings.setter();
  }
}

uint64_t sub_257676174()
{
  v2 = type metadata accessor for MLProgram.Value(0);
  v3 = OUTLINED_FUNCTION_13(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_47_7();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_56_2();
  OUTLINED_FUNCTION_2_38();
  v5 = OUTLINED_FUNCTION_292();
  sub_257677F00(v5, v6);
  OUTLINED_FUNCTION_98_2();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_1_40();
    v7 = OUTLINED_FUNCTION_205();
    sub_257675D28(v7, v8);
    sub_25771810C();
    v10 = v9;
    OUTLINED_FUNCTION_5_28();
    sub_257677F58(v1, v11);
  }

  else
  {
    MEMORY[0x259C64E90](*v0, v0[1]);

    MEMORY[0x259C64E90](10530, 0xE200000000000000);
    return 0x2228666552;
  }

  return v10;
}

uint64_t MLProgram.Argument.init(binding:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_16_1();
  type metadata accessor for Proto_MILSpec_Argument(v3);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E80, &qword_2577447A8);
  v4 = *(type metadata accessor for Proto_MILSpec_Argument.Binding(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2577442B0;
  v7 = v6 + v5;
  v8 = type metadata accessor for Proto_MILSpec_Argument.Binding.OneOf_Binding(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  sub_2574695E4(v7, &qword_27F879E70, &qword_257744798);
  sub_257676FD8();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  OUTLINED_FUNCTION_0_51();
  result = sub_257677F58(a1, v12);
  *v1 = v6;
  return result;
}

void sub_2576763E0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for MLProgram.Value(0);
  MEMORY[0x28223BE20](v4 - 8);
  v44 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Proto_MILSpec_Argument.Binding(0);
  v48 = *(v6 - 8);
  v49 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = (&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = (&v40 - v10);
  v47 = type metadata accessor for MLProgram.Argument.Binding(0);
  v12 = *(v47 - 8);
  v13 = MEMORY[0x28223BE20](v47);
  v15 = (&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v13);
  v45 = &v40 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = (&v40 - v19);
  MEMORY[0x28223BE20](v18);
  v50 = &v40 - v21;
  type metadata accessor for Proto_MILSpec_Argument(0);
  v40 = a2;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v22 = *(a1 + 16);
  v51 = MEMORY[0x277D84F90];
  sub_257484B30(0, v22, 0);
  v23 = v51;
  v46 = v12;
  if (!v22)
  {
    goto LABEL_10;
  }

  v24 = 0;
  v25 = *(a1 + 16);
  v42 = a1;
  v43 = v25;
  v41 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  while (v43 != v24)
  {
    v26 = v41 + *(v12 + 72) * v24;
    v27 = v45;
    sub_257677F00(v26, v45);
    v28 = type metadata accessor for Proto_MILSpec_Argument.Binding.OneOf_Binding(0);
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v28);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    sub_2574695E4(v9, &qword_27F879E70, &qword_257744798);
    sub_257677F00(v27, v15);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v29 = v44;
      sub_257675D28(v15, v44);
      sub_257675D28(v29, v9);
    }

    else
    {
      v30 = v15[1];
      *v9 = *v15;
      v9[1] = v30;
    }

    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v28);
    sub_257677F58(v45, type metadata accessor for MLProgram.Argument.Binding);
    v51 = v23;
    v32 = *(v23 + 16);
    v31 = *(v23 + 24);
    if (v32 >= v31 >> 1)
    {
      sub_257484B30(v31 > 1, v32 + 1, 1);
      v23 = v51;
    }

    ++v24;
    *(v23 + 16) = v32 + 1;
    sub_257675D28(v9, v23 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v32);
    a1 = v42;
    v12 = v46;
    if (v22 == v24)
    {
      while (1)
      {
LABEL_10:
        v33 = *(a1 + 16);
        if (v22 == v33)
        {

          *v40 = v23;
          return;
        }

        if (v22 >= v33)
        {
          break;
        }

        v34 = v50;
        sub_257677F00(a1 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v22, v50);
        v35 = type metadata accessor for Proto_MILSpec_Argument.Binding.OneOf_Binding(0);
        __swift_storeEnumTagSinglePayload(v11, 1, 1, v35);
        _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
        sub_2574695E4(v11, &qword_27F879E70, &qword_257744798);
        sub_257677F00(v34, v20);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v36 = v44;
          sub_257675D28(v20, v44);
          sub_257675D28(v36, v11);
        }

        else
        {
          v37 = v20[1];
          *v11 = *v20;
          v11[1] = v37;
        }

        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v35);
        sub_257677F58(v50, type metadata accessor for MLProgram.Argument.Binding);
        v51 = v23;
        v39 = *(v23 + 16);
        v38 = *(v23 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_257484B30(v38 > 1, v39 + 1, 1);
          v23 = v51;
        }

        *(v23 + 16) = v39 + 1;
        sub_257675D28(v11, v23 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v39);
        ++v22;
      }

      __break(1u);
      break;
    }
  }

  __break(1u);
}

uint64_t MLProgram.Argument.init<A>(bindings:)()
{
  v3 = OUTLINED_FUNCTION_60_2();
  type metadata accessor for Proto_MILSpec_Argument(v3);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v4 = type metadata accessor for Proto_MILSpec_Argument.Binding(0);
  v9 = OUTLINED_FUNCTION_62_5(v4, v5, v6, v4, MEMORY[0x277D84A98], v7, MEMORY[0x277D84AC0], v8);
  result = (*(*(v1 - 8) + 8))(v0, v1);
  *v2 = v9;
  return result;
}

uint64_t sub_257676AAC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Proto_MILSpec_Argument.Binding.OneOf_Binding(0);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  type metadata accessor for Proto_MILSpec_Argument.Binding(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  sub_2574695E4(a1, &qword_27F879E70, &qword_257744798);
  sub_257676FD8();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
}

BOOL static MLProgram.Argument.== infix(_:_:)()
{
  OUTLINED_FUNCTION_267();
  sub_25747CD74();
  result = 0;
  if (v0)
  {
    type metadata accessor for Proto_MILSpec_Argument(0);
    sub_2577431B4();
    sub_257677FB0(&qword_27F879B68, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t MLProgram.Argument.hash(into:)(uint64_t a1)
{
  type metadata accessor for Proto_MILSpec_Argument(0);
  OUTLINED_FUNCTION_33_6();
  sub_257677FB0(v1, v2, &unk_25774F058);

  return sub_2577435F4();
}

uint64_t MLProgram.Argument.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_MILSpec_Argument(0);
  OUTLINED_FUNCTION_33_6();
  sub_257677FB0(v0, v1, &unk_25774F058);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_257676CE8(uint64_t a1)
{
  sub_257743A14();
  type metadata accessor for Proto_MILSpec_Argument(0);
  sub_257677FB0(&qword_27F87B678, type metadata accessor for Proto_MILSpec_Argument, &unk_25774F058);
  sub_2577435F4();
  return sub_257743A64();
}

void MLProgram.Argument.customMirror.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_16_1();
  v22 = sub_257743A84();
  OUTLINED_FUNCTION_63();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v26);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v27);
  type metadata accessor for MLProgram.Argument(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3();
  sub_257677F00(v20, v30 - v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_2577442B0;
  *(v31 + 32) = 0x73676E69646E6962;
  *(v31 + 40) = 0xE800000000000000;
  MLProgram.Argument.bindings.getter();
  v33 = v32;
  *(v31 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8809F0, &qword_25776EB68);
  *(v31 + 48) = v33;
  sub_257743A74();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  (*(v24 + 104))(v21, *MEMORY[0x277D84C38], v22);
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t MLProgram.Argument.debugDescription.getter()
{
  sub_2576730B4();
  v1 = v0;
  sub_2576A66C8(0, v2, v3, v0);
  v5 = v4;
  v6 = OUTLINED_FUNCTION_205();
  sub_257483A28(v6, v7, v1);
  return v5;
}

uint64_t sub_257676FD8()
{
  v2 = OUTLINED_FUNCTION_16_1();
  v3 = type metadata accessor for MLProgram.Value(v2);
  v4 = OUTLINED_FUNCTION_13(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_47_7();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_2_38();
  v6 = OUTLINED_FUNCTION_176();
  sub_257677F00(v6, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_1_40();
    v8 = OUTLINED_FUNCTION_173();
    sub_257675D28(v8, v9);
    OUTLINED_FUNCTION_17_14();
    v10 = OUTLINED_FUNCTION_44_1();
    sub_257675D28(v10, v11);
  }

  else
  {
    v12 = v1[1];
    *v0 = *v1;
    v0[1] = v12;
  }

  type metadata accessor for Proto_MILSpec_Argument.Binding.OneOf_Binding(0);
  return swift_storeEnumTagMultiPayload();
}

void static MLProgram.Argument.Binding.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v28 = type metadata accessor for MLProgram.Value(0);
  v29 = OUTLINED_FUNCTION_13(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_47_7();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_11();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = (&a9 - v35);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8809F8, &qword_25776EB70);
  OUTLINED_FUNCTION_13(v37);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_56_2();
  v40 = (v20 + *(v39 + 56));
  sub_257677F00(v27, v20);
  sub_257677F00(v25, v40);
  OUTLINED_FUNCTION_98_2();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_2_38();
    sub_257677F00(v20, v33);
    OUTLINED_FUNCTION_322();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_1_40();
      sub_257675D28(v40, v21);
      OUTLINED_FUNCTION_173();
      _s20MLModelSpecification9MLProgramV5ValueV2eeoiySbAE_AEtFZ_0();
      sub_257677F58(v21, type metadata accessor for MLProgram.Value);
      sub_257677F58(v33, type metadata accessor for MLProgram.Value);
      OUTLINED_FUNCTION_0_51();
      sub_257677F58(v20, v41);
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_5_28();
    sub_257677F58(v33, v46);
LABEL_7:
    sub_2574695E4(v20, &qword_27F8809F8, &qword_25776EB70);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_2_38();
  v42 = OUTLINED_FUNCTION_55_4();
  sub_257677F00(v42, v43);
  v45 = *v36;
  v44 = v36[1];
  OUTLINED_FUNCTION_322();
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    goto LABEL_7;
  }

  if (v45 != *v40 || v44 != v40[1])
  {
    OUTLINED_FUNCTION_173();
    sub_257743994();
  }

  OUTLINED_FUNCTION_0_51();
  sub_257677F58(v20, v48);
LABEL_14:
  OUTLINED_FUNCTION_35();
}

uint64_t MLProgram.Argument.Binding.hash(into:)()
{
  v1 = OUTLINED_FUNCTION_30();
  v2 = type metadata accessor for MLProgram.Value(v1);
  v3 = OUTLINED_FUNCTION_13(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_56_2();
  type metadata accessor for MLProgram.Argument.Binding(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_2_38();
  v5 = OUTLINED_FUNCTION_176();
  sub_257677F00(v5, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_1_40();
    v7 = OUTLINED_FUNCTION_292();
    sub_257675D28(v7, v8);
    MEMORY[0x259C651F0](1);
    type metadata accessor for Proto_MILSpec_Value(0);
    sub_257677FB0(&qword_27F87B570, type metadata accessor for Proto_MILSpec_Value, &unk_25774F018);
    sub_2577435F4();
    OUTLINED_FUNCTION_5_28();
    return sub_257677F58(v0, v9);
  }

  else
  {
    MEMORY[0x259C651F0](0);
    OUTLINED_FUNCTION_44_1();
    sub_257743694();
  }
}

uint64_t MLProgram.Argument.Binding.hashValue.getter()
{
  sub_257743A14();
  MLProgram.Argument.Binding.hash(into:)();
  return sub_257743A64();
}

uint64_t sub_257677508(uint64_t a1)
{
  sub_257743A14();
  MLProgram.Argument.Binding.hash(into:)();
  return sub_257743A64();
}

uint64_t MLProgram.Argument.Binding.debugDescription.getter()
{
  v1 = type metadata accessor for MLProgram.Value(0);
  v2 = OUTLINED_FUNCTION_13(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_47_7();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_56_2();
  OUTLINED_FUNCTION_2_38();
  v4 = OUTLINED_FUNCTION_292();
  sub_257677F00(v4, v5);
  OUTLINED_FUNCTION_98_2();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_1_40();
    v6 = OUTLINED_FUNCTION_205();
    sub_257675D28(v6, v7);
    sub_25771810C();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    sub_2576A66C8(0, v8, v10, v12);
    sub_257483A28(v9, v11, v13);
    OUTLINED_FUNCTION_5_28();
    sub_257677F58(v0, v14);
  }

  return OUTLINED_FUNCTION_292();
}

uint64_t MLProgram.Argument.init(name:)()
{
  OUTLINED_FUNCTION_267();
  type metadata accessor for MLProgram.Argument.Binding(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  *v2 = v1;
  v2[1] = v0;
  swift_storeEnumTagMultiPayload();
  return MLProgram.Argument.init(binding:)(v2);
}

void MLProgram.Argument.init(names:)()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_16_1();
  type metadata accessor for MLProgram.Argument.Binding(v3);
  OUTLINED_FUNCTION_63();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v7 = (v6 - v5);
  v8 = *(v2 + 16);
  if (v8)
  {
    v16 = v0;
    v9 = OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
    sub_257484D90(v9, v8, 0);
    v10 = v17;
    v11 = (v2 + 40);
    do
    {
      v12 = *v11;
      *v7 = *(v11 - 1);
      v7[1] = v12;
      OUTLINED_FUNCTION_322();
      swift_storeEnumTagMultiPayload();
      v13 = *(v17 + 16);
      v14 = *(v17 + 24);

      if (v13 >= v14 >> 1)
      {
        sub_257484D90(v14 > 1, v13 + 1, 1);
      }

      *(v17 + 16) = v13 + 1;
      OUTLINED_FUNCTION_193();
      OUTLINED_FUNCTION_23_12();
      sub_257675D28(v7, v15);
      v11 += 2;
      --v8;
    }

    while (v8);

    v0 = v16;
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  sub_2576763E0(v10, v0);
  OUTLINED_FUNCTION_35();
}

uint64_t MLProgram.Argument.init(value:)(uint64_t a1)
{
  type metadata accessor for MLProgram.Argument.Binding(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_35_6();
  v4 = OUTLINED_FUNCTION_98_2();
  sub_257677F00(v4, v5);
  OUTLINED_FUNCTION_176();
  swift_storeEnumTagMultiPayload();
  MLProgram.Argument.init(binding:)(v1);
  OUTLINED_FUNCTION_5_28();
  return sub_257677F58(a1, v6);
}

{
  type metadata accessor for MLProgram.Argument.Binding(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  MLProgram.Value.init(_:)();
  OUTLINED_FUNCTION_176();
  swift_storeEnumTagMultiPayload();
  return MLProgram.Argument.init(binding:)(v1);
}

{
  type metadata accessor for MLProgram.Argument.Binding(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  MLProgram.Value.init(_:)();
  OUTLINED_FUNCTION_176();
  swift_storeEnumTagMultiPayload();
  return MLProgram.Argument.init(binding:)(v1);
}

void MLProgram.Argument.init(values:)()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_16_1();
  type metadata accessor for MLProgram.Argument.Binding(v3);
  OUTLINED_FUNCTION_63();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = *(v2 + 16);
  if (v8)
  {
    v18 = v0;
    v9 = OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
    sub_257484D90(v9, v8, 0);
    v10 = v19;
    v11 = *(type metadata accessor for MLProgram.Value(0) - 8);
    v12 = v2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v13 = *(v11 + 72);
    do
    {
      OUTLINED_FUNCTION_35_6();
      sub_257677F00(v12, v7);
      OUTLINED_FUNCTION_322();
      swift_storeEnumTagMultiPayload();
      v15 = *(v19 + 16);
      v14 = *(v19 + 24);
      if (v15 >= v14 >> 1)
      {
        v17 = OUTLINED_FUNCTION_13_1(v14);
        sub_257484D90(v17, v15 + 1, 1);
      }

      *(v19 + 16) = v15 + 1;
      OUTLINED_FUNCTION_193();
      OUTLINED_FUNCTION_23_12();
      sub_257675D28(v7, v16);
      v12 += v13;
      --v8;
    }

    while (v8);

    v0 = v18;
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  sub_2576763E0(v10, v0);
  OUTLINED_FUNCTION_35();
}

uint64_t MLProgram.Argument.init<A>(values:)()
{
  v3 = OUTLINED_FUNCTION_60_2();
  v4 = type metadata accessor for MLProgram.Argument.Binding(v3);
  v9 = OUTLINED_FUNCTION_62_5(v4, v5, v6, v4, MEMORY[0x277D84A98], v7, MEMORY[0x277D84AC0], v8);
  sub_2576763E0(v9, v2);
  v10 = *(*(v1 - 8) + 8);

  return v10(v0, v1);
}

uint64_t sub_257677B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_257677F00(a1, a2);
  type metadata accessor for MLProgram.Argument.Binding(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t MLProgram.Argument.init(value:)(float a1)
{
  v3 = OUTLINED_FUNCTION_16_1();
  type metadata accessor for MLProgram.Argument.Binding(v3);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  MLProgram.Value.init(_:)(a1);
  OUTLINED_FUNCTION_173();
  swift_storeEnumTagMultiPayload();
  return MLProgram.Argument.init(binding:)(v1);
}

uint64_t MLProgram.Argument.init(value:)(double a1)
{
  v3 = OUTLINED_FUNCTION_16_1();
  type metadata accessor for MLProgram.Argument.Binding(v3);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  MLProgram.Value.init(_:)(a1);
  OUTLINED_FUNCTION_173();
  swift_storeEnumTagMultiPayload();
  return MLProgram.Argument.init(binding:)(v1);
}

uint64_t MLProgram.Argument.init(value:shape:)(uint64_t a1, uint64_t a2)
{
  return sub_257677E28(a1, a2, MLProgram.Value.init(_:shape:));
}

{
  return sub_257677E28(a1, a2, MLProgram.Value.init(_:shape:));
}

{
  return sub_257677E28(a1, a2, MLProgram.Value.init(_:shape:));
}

uint64_t sub_257677E28(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  type metadata accessor for MLProgram.Argument.Binding(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = OUTLINED_FUNCTION_173();
  a3(v8);
  swift_storeEnumTagMultiPayload();
  return MLProgram.Argument.init(binding:)(v7);
}

uint64_t sub_257677F00(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return a2;
}

uint64_t sub_257677F58(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_257677FB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_257678118(uint64_t a1)
{
  result = type metadata accessor for Proto_MILSpec_Argument(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_257678184(uint64_t a1)
{
  result = type metadata accessor for MLProgram.Value(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_47_7()
{

  return type metadata accessor for MLProgram.Argument.Binding(0);
}

uint64_t OUTLINED_FUNCTION_61_3(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(v2, a2, 1, v3);
}

uint64_t OUTLINED_FUNCTION_62_5(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return sub_257665DA0(v8, 0, v10, a4, a5, v9, a7, a8);
}

void OUTLINED_FUNCTION_68_1()
{

  sub_257663A58();
}

uint64_t NeuralNetwork.Layer.SliceParameters.propertyDescriptions.getter()
{
  if (*(v0 + 32) == 1)
  {
    v1 = *(v0 + 24);
    if (v1)
    {
      if (v1 == 1)
      {
        v2 = 0xE600000000000000;
        v3 = 0x746867696548;
      }

      else
      {
        v2 = 0xE500000000000000;
        v3 = 0x6874646957;
      }
    }

    else
    {
      v2 = 0xE700000000000000;
      v3 = 0x6C656E6E616843;
    }
  }

  else
  {
    v2 = 0xE700000000000000;
    v3 = 0x6E776F6E6B6E55;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744E70;
  *(v4 + 32) = 0x6E49207472617453;
  *(v4 + 40) = 0xEB00000000786564;
  *(v4 + 48) = OUTLINED_FUNCTION_5_29();
  *(v4 + 56) = v5;
  OUTLINED_FUNCTION_11_20();
  *(v4 + 64) = v6 | 0x65646E4900000000;
  *(v4 + 72) = 0xE900000000000078;
  *(v4 + 80) = OUTLINED_FUNCTION_5_29();
  *(v4 + 88) = v7;
  OUTLINED_FUNCTION_9_21();
  *(v4 + 96) = v8;
  *(v4 + 104) = 0xE600000000000000;
  *(v4 + 112) = sub_257743974();
  *(v4 + 120) = v9;
  *(v4 + 128) = 1936291905;
  *(v4 + 136) = 0xE400000000000000;
  *(v4 + 144) = v3;
  *(v4 + 152) = v2;
  return v4;
}

BOOL static NeuralNetwork.Layer.SliceParameters.== infix(_:_:)()
{
  OUTLINED_FUNCTION_104_0();
  result = 0;
  if (v2)
  {
    OUTLINED_FUNCTION_65_2();
    if (v2)
    {
      if (*(v1 + 16) == *(v0 + 16) && sub_257487360(*(v1 + 24), *(v1 + 32), *(v0 + 24)))
      {
        type metadata accessor for Proto_SliceLayerParams(0);
        sub_2577431B4();
        OUTLINED_FUNCTION_0_52();
        v5 = sub_257678EC4(v3, v4, MEMORY[0x277D216D0]);
        if (OUTLINED_FUNCTION_4_2(v5))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t NeuralNetwork.Layer.SliceBySizeParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257743FF0;
  OUTLINED_FUNCTION_12_20(v1, 1702521171);
  *(v1 + 48) = OUTLINED_FUNCTION_5_29();
  *(v1 + 56) = v2;
  *(v1 + 64) = 1936291905;
  *(v1 + 72) = v0;
  *(v1 + 80) = OUTLINED_FUNCTION_5_29();
  *(v1 + 88) = v3;
  return v1;
}

uint64_t NeuralNetwork.Layer.SliceBySizeParameters.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for Proto_SliceBySizeLayerParams(0);
  *a1 = 0;
  a1[1] = 0;
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL static NeuralNetwork.Layer.SliceBySizeParameters.== infix(_:_:)()
{
  OUTLINED_FUNCTION_104_0();
  result = 0;
  if (v0)
  {
    OUTLINED_FUNCTION_65_2();
    if (v0)
    {
      type metadata accessor for Proto_SliceBySizeLayerParams(0);
      sub_2577431B4();
      OUTLINED_FUNCTION_0_52();
      v3 = sub_257678EC4(v1, v2, MEMORY[0x277D216D0]);
      if (OUTLINED_FUNCTION_4_2(v3))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t NeuralNetwork.Layer.SliceStaticParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257745520;
  *(v1 + 32) = 0x4449206E69676542;
  *(v1 + 40) = 0xE900000000000073;
  v2 = MEMORY[0x277D84A28];
  *(v1 + 48) = MEMORY[0x259C64F20](*v0, MEMORY[0x277D84A28]);
  *(v1 + 56) = v3;
  OUTLINED_FUNCTION_8_21();
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  v6 = MEMORY[0x277D839B0];
  *(v1 + 80) = MEMORY[0x259C64F20](v0[1], MEMORY[0x277D839B0]);
  *(v1 + 88) = v7;
  OUTLINED_FUNCTION_11_20();
  *(v1 + 96) = v8 | 0x73444900000000;
  *(v1 + 104) = 0xE700000000000000;
  *(v1 + 112) = MEMORY[0x259C64F20](v0[2], v2);
  *(v1 + 120) = v9;
  OUTLINED_FUNCTION_11_20();
  *(v1 + 128) = v10 | 0x6B73614D00000000;
  *(v1 + 136) = 0xE900000000000073;
  *(v1 + 144) = MEMORY[0x259C64F20](v0[3], v6);
  *(v1 + 152) = v11;
  OUTLINED_FUNCTION_9_21();
  *(v1 + 160) = v12 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
  *(v1 + 168) = 0xE700000000000000;
  *(v1 + 176) = MEMORY[0x259C64F20](v0[4], v2);
  *(v1 + 184) = v13;
  OUTLINED_FUNCTION_7_23();
  *(v1 + 192) = v14;
  *(v1 + 200) = v15;
  *(v1 + 208) = MEMORY[0x259C64F20](v0[5], v6);
  *(v1 + 216) = v16;
  return v1;
}

uint64_t NeuralNetwork.Layer.SliceStaticParameters.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v2;
  a1[2] = v2;
  a1[3] = v2;
  a1[4] = v2;
  a1[5] = v2;
  type metadata accessor for Proto_SliceStaticLayerParams(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t NeuralNetwork.Layer.SliceDynamicParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257744000;
  OUTLINED_FUNCTION_8_21();
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  v5 = MEMORY[0x277D839B0];
  *(v1 + 48) = MEMORY[0x259C64F20](*v0, MEMORY[0x277D839B0]);
  *(v1 + 56) = v6;
  OUTLINED_FUNCTION_11_20();
  *(v1 + 64) = v7 | 0x73444900000000;
  *(v1 + 72) = 0xE700000000000000;
  v8 = MEMORY[0x277D84A28];
  *(v1 + 80) = MEMORY[0x259C64F20](v0[1], MEMORY[0x277D84A28]);
  *(v1 + 88) = v9;
  OUTLINED_FUNCTION_11_20();
  *(v1 + 96) = v10 | 0x6B73614D00000000;
  *(v1 + 104) = 0xE900000000000073;
  *(v1 + 112) = MEMORY[0x259C64F20](v0[2], v5);
  *(v1 + 120) = v11;
  OUTLINED_FUNCTION_9_21();
  *(v1 + 128) = v12 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
  *(v1 + 136) = 0xE700000000000000;
  *(v1 + 144) = MEMORY[0x259C64F20](v0[3], v8);
  *(v1 + 152) = v13;
  OUTLINED_FUNCTION_7_23();
  *(v1 + 160) = v14;
  *(v1 + 168) = v15;
  *(v1 + 176) = MEMORY[0x259C64F20](v0[4], v5);
  *(v1 + 184) = v16;
  return v1;
}

uint64_t NeuralNetwork.Layer.SliceDynamicParameters.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v2;
  a1[2] = v2;
  a1[3] = v2;
  a1[4] = v2;
  type metadata accessor for Proto_SliceDynamicLayerParams(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t NeuralNetwork.Layer.SlidingWindowsParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2577442C0;
  OUTLINED_FUNCTION_12_20(v1, 1936291905);
  *(v1 + 48) = sub_257743974();
  *(v1 + 56) = v2;
  *(v1 + 64) = 0x5320776F646E6957;
  *(v1 + 72) = 0xEB00000000657A69;
  *(v1 + 80) = OUTLINED_FUNCTION_5_29();
  *(v1 + 88) = v3;
  *(v1 + 96) = 1885697107;
  *(v1 + 104) = v0;
  *(v1 + 112) = OUTLINED_FUNCTION_5_29();
  *(v1 + 120) = v4;
  return v1;
}

uint64_t NeuralNetwork.Layer.SlidingWindowsParameters.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for Proto_SlidingWindowsLayerParams(0);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL static NeuralNetwork.Layer.SlidingWindowsParameters.== infix(_:_:)()
{
  OUTLINED_FUNCTION_104_0();
  result = 0;
  if (v2)
  {
    OUTLINED_FUNCTION_65_2();
    if (v2)
    {
      if (*(v1 + 16) == *(v0 + 16))
      {
        type metadata accessor for Proto_SlidingWindowsLayerParams(0);
        sub_2577431B4();
        OUTLINED_FUNCTION_0_52();
        v5 = sub_257678EC4(v3, v4, MEMORY[0x277D216D0]);
        if (OUTLINED_FUNCTION_4_2(v5))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

unint64_t NeuralNetwork.Layer.SliceParameters.Axis.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_257678EC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_257678F14@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.Layer.SliceParameters.Axis.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_257678F40()
{
  result = qword_27F880A38;
  if (!qword_27F880A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880A38);
  }

  return result;
}

uint64_t sub_257679174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s15SliceParametersV4AxisOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_5_29()
{

  return sub_257743974();
}

uint64_t OUTLINED_FUNCTION_12_20@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = a2;
  *(result + 40) = 0xE400000000000000;
  return result;
}

void Analysis.append(severity:kind:property:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  sub_257466F40(*a2, v9, v10);

  sub_25767A064();
  v11 = *(*v4 + 16);
  sub_25767A0B0(v11);
  OUTLINED_FUNCTION_1_41(v11 + 1);
  v14 = v13 + v11 * v12;
  *(v14 + 32) = v7;
  *(v14 + 40) = v8;
  *(v14 + 48) = v9;
  *(v14 + 56) = v10;
  *(v14 + 64) = a3;
  *(v14 + 72) = a4;
  *v4 = v13;
}

Swift::Void __swiftcall Analysis.append(contentsOf:)(MLModelSpecification::Analysis contentsOf)
{

  sub_25763D14C(v1);
}

void Analysis.errors.getter()
{
  OUTLINED_FUNCTION_9_22();
  v5 = MEMORY[0x277D84F90];
  v6 = 48;
  while (v0 != v3)
  {
    if (v3 >= *(v4 + 16))
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_7_24();
    if (!v7)
    {
      OUTLINED_FUNCTION_2_39();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = v1;
      v14 = v5;
      v12 = v2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_4_28();
        OUTLINED_FUNCTION_8_22();
      }

      v1 = *(v5 + 16);
      v9 = *(v5 + 24);
      v2 = v1 + 1;
      if (v1 >= v9 >> 1)
      {
        v6 = &v14;
        sub_257484DE8((v9 > 1), v1 + 1, 1);
        OUTLINED_FUNCTION_8_22();
      }

      *(v5 + 16) = v2;
      v10 = v5 + v1 * v6;
      *(v10 + 32) = 0;
      OUTLINED_FUNCTION_3_39(v10, v11, v12, v13);
    }
  }
}

void Analysis.warnings.getter()
{
  OUTLINED_FUNCTION_9_22();
  v5 = MEMORY[0x277D84F90];
  v6 = 48;
  while (v0 != v3)
  {
    if (v3 >= *(v4 + 16))
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_7_24();
    if (v7 == 1)
    {
      OUTLINED_FUNCTION_2_39();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = v1;
      v14 = v5;
      v12 = v2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_4_28();
        OUTLINED_FUNCTION_8_22();
      }

      v1 = *(v5 + 16);
      v9 = *(v5 + 24);
      v2 = v1 + 1;
      if (v1 >= v9 >> 1)
      {
        v6 = &v14;
        sub_257484DE8((v9 > 1), v1 + 1, 1);
        OUTLINED_FUNCTION_8_22();
      }

      *(v5 + 16) = v2;
      v10 = v5 + v1 * v6;
      *(v10 + 32) = 1;
      OUTLINED_FUNCTION_3_39(v10, v11, v12, v13);
    }
  }
}

void Analysis.init(severity:kind:property:)(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  v10 = a2[1];
  v11 = *(a2 + 16);
  *a5 = MEMORY[0x277D84F90];
  sub_25767A064();
  v12 = *(*a5 + 16);
  sub_25767A0B0(v12);
  OUTLINED_FUNCTION_1_41(v12 + 1);
  v15 = v14 + v12 * v13;
  *(v15 + 32) = v8;
  *(v15 + 40) = v9;
  *(v15 + 48) = v10;
  *(v15 + 56) = v11;
  *(v15 + 64) = a3;
  *(v15 + 72) = a4;
}

void Analysis.append(_:)(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v6 = *(a1 + 4);
  v5 = *(a1 + 5);
  v7 = a1[24];
  sub_257466F40(v3, v4, v7);

  sub_25767A064();
  v8 = *(*v1 + 16);
  sub_25767A0B0(v8);
  OUTLINED_FUNCTION_1_41(v8 + 1);
  v11 = v10 + v8 * v9;
  *(v11 + 32) = v2;
  *(v11 + 40) = v3;
  *(v11 + 48) = v4;
  *(v11 + 56) = v7;
  *(v11 + 64) = v6;
  *(v11 + 72) = v5;
  *v1 = v10;
}

Swift::Int __swiftcall Analysis.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall Analysis.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

unint64_t Analysis.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(*v2 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v3 = *v2 + 48 * result;
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  v6 = *(v3 + 64);
  v7 = *(v3 + 72);
  *a2 = *(v3 + 32);
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  v8 = *(v3 + 56);
  *(a2 + 24) = v8;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  sub_257466F40(v4, v5, v8);
}

double sub_2576797DC@<D0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v15 = v4;
  Analysis.subscript.getter(v5, v10);
  v6 = v12;
  v7 = v13;
  v8 = v14;
  *a3 = v10[0];
  result = *&v11;
  *(a3 + 8) = v11;
  *(a3 + 24) = v6;
  *(a3 + 32) = v7;
  *(a3 + 40) = v8;
  return result;
}

void sub_25767983C(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v3 = *a3;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 24);
  v9[0] = *a1;
  v10 = v5;
  v11 = v4;
  v12 = v8;
  v13 = v6;
  v14 = v7;
  sub_257466F40(v5, v4, v8);

  Analysis.subscript.setter(v9, v3);
}

void Analysis.subscript.setter(char *a1, unint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = a1[24];
  v8 = *(a1 + 4);
  v9 = *(a1 + 5);
  v10 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v10;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_25767A138(v10, v12, v13, v14);
  v10 = v19;
  *v2 = v19;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v10 + 16) > a2)
  {
    v15 = v10 + 48 * a2;
    v16 = *(v15 + 40);
    v17 = *(v15 + 48);
    *(v15 + 32) = v4;
    *(v15 + 40) = v5;
    *(v15 + 48) = v6;
    v18 = *(v15 + 56);
    *(v15 + 56) = v7;
    *(v15 + 64) = v8;
    *(v15 + 72) = v9;
    sub_257467018(v16, v17, v18);

    *v2 = v10;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t (*Analysis.subscript.modify(uint64_t (**a1)(), unint64_t a2))()
{
  result = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = result;
  *(result + 6) = a2;
  *(result + 7) = v2;
  v6 = *v2;
  *(result + 8) = *v2;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v6 + 16) > a2)
  {
    v7 = result;
    v8 = v6 + 48 * a2;
    v9 = *(v8 + 40);
    v10 = *(v8 + 48);
    v11 = *(v8 + 64);
    v12 = *(v8 + 72);
    v13 = *(v8 + 56);
    *v7 = *(v8 + 32);
    *(v7 + 1) = v9;
    *(v7 + 2) = v10;
    *(v7 + 24) = v13;
    *(v7 + 4) = v11;
    *(v7 + 5) = v12;
    sub_257466F40(v9, v10, v13);

    return sub_257679A28;
  }

  __break(1u);
  return result;
}

void sub_257679A28(uint64_t *a1, char a2)
{
  v3 = *a1;
  v5 = *(*a1 + 56);
  v4 = *(*a1 + 64);
  if (a2)
  {
    sub_257466F40(*(*a1 + 8), *(*a1 + 16), *(*a1 + 24));

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v5 = v4;
    v10 = *(v3 + 64);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = *(v3 + 56);
      sub_25767A138(*(v3 + 64), v7, v8, v9);
      v10 = v15;
      *v14 = v15;
    }

    v11 = *(v3 + 48);
    if (*(v10 + 16) > v11)
    {
      OUTLINED_FUNCTION_0_53(v11);
      *v2 = v10;
      sub_257467018(*(v3 + 8), *(v3 + 16), *(v3 + 24));

      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_13;
  }

  v12 = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v4;
  v10 = *(v3 + 64);
  if ((v12 & 1) == 0)
  {
LABEL_13:
    v16 = *(v3 + 56);
    sub_25767A138(v10, v7, v8, v9);
    v10 = v17;
    *v16 = v17;
  }

  v13 = *(v3 + 48);
  if (*(v10 + 16) <= v13)
  {
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_0_53(v13);
  *v2 = v10;
LABEL_9:

  free(v3);
}

uint64_t (*sub_257679B60(uint64_t (***a1)(), unint64_t *a2))()
{
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[4] = Analysis.subscript.modify(v4, *a2);
  return sub_25767A6E8;
}

uint64_t (*sub_257679BD8(uint64_t (***a1)(), uint64_t *a2))()
{
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[4] = sub_25771F448(v4, *a2, a2[1]);
  return sub_257679C3C;
}

void sub_257679C40(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*sub_257679C88@<X0>(uint64_t *a1@<X8>, uint64_t (*a2)(_BYTE *)@<X0>, uint64_t a3@<X1>))(_BYTE *)
{
  result = sub_25771FD3C(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

Swift::Int sub_257679D08(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6_31(a1);
  result = Analysis.index(before:)(v2);
  *v1 = result;
  return result;
}

void *sub_257679D30(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t sub_257679D48(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_5:
    if ((result ^ 0x7FFFFFFFFFFFFFFFuLL) >= a2)
    {
      __break(1u);
      return result;
    }

    goto LABEL_6;
  }

  if (!a2)
  {
    return result;
  }

  if ((result ^ 0x7FFFFFFFFFFFFFFFuLL) <= a2 - 1)
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_6:
  result += a2;
  return result;
}

uint64_t sub_257679D7C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    v3 = 0;
    while (result - a3 + v3)
    {
      v4 = result + v3 - 1;
      if (__OFSUB__(result + v3, 1))
      {
LABEL_15:
        __break(1u);
        return result;
      }

      if (--v3 <= a2)
      {
        return v4;
      }
    }

    return 0;
  }

  if (a2)
  {
    while (a3 != result)
    {
      if (result == 0x7FFFFFFFFFFFFFFFLL)
      {
        __break(1u);
        goto LABEL_15;
      }

      ++result;
      if (!--a2)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_257679DFC(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  v4 = __OFSUB__(a2, a1);
  result = a2 - a1;
  v3 = result < 0;
  if (!((result < 0) ^ v4 | (result == 0)))
  {
    v2 -= a2;
    v4 = __OFSUB__(v2, 0x8000000000000001);
    v3 = (v2 + 0x7FFFFFFFFFFFFFFFLL) < 0;
    if (v2 >= 0x8000000000000001)
    {
      return result;
    }

    __break(1u);
  }

  if (v3 == v4)
  {
    return 0;
  }

  v6 = ~a2 + v2;
  v7 = v2 ^ 0x8000000000000000;
  if (v6 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v7 <= v6)
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_257679E5C@<X0>(uint64_t *a1@<X8>)
{
  result = Analysis.count.getter();
  *a1 = result;
  return result;
}

void (*sub_257679E84(void *a1, unint64_t *a2))(uint64_t *a1)
{
  v4 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v4;
  Analysis.subscript.getter(*a2, v4);
  return sub_257679EEC;
}

void sub_257679EEC(uint64_t *a1)
{
  v1 = *a1;
  sub_257467018(*(*a1 + 8), *(v1 + 16), *(v1 + 24));

  free(v1);
}

uint64_t sub_257679F5C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6_31(a1);
  result = sub_257679D7C(v2, v4, *v3);
  *v1 = result;
  *(v1 + 8) = v6 & 1;
  return result;
}

Swift::Int sub_257679FD4(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6_31(a1);
  result = Analysis.index(after:)(v2);
  *v1 = result;
  return result;
}

void *sub_257679FFC(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

void sub_25767A064()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_25746996C();
    *v0 = v3;
  }
}

void sub_25767A0B0(uint64_t result)
{
  if (result + 1 > *(*v1 + 24) >> 1)
  {
    sub_25746996C();
    *v1 = v2;
  }
}

unint64_t sub_25767A150()
{
  result = qword_27F880A90;
  if (!qword_27F880A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880A90);
  }

  return result;
}

unint64_t sub_25767A1EC()
{
  result = qword_27F880AA8;
  if (!qword_27F880AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880AA8);
  }

  return result;
}

unint64_t sub_25767A244()
{
  result = qword_27F880AB0;
  if (!qword_27F880AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F880AB8, &qword_25776F040);
    sub_25767A2C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880AB0);
  }

  return result;
}

unint64_t sub_25767A2C8()
{
  result = qword_27F880AC0;
  if (!qword_27F880AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880AC0);
  }

  return result;
}

uint64_t sub_25767A364(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F880AA0, &qword_25776EFC8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25767A3E0()
{
  result = qword_27F880AD0;
  if (!qword_27F880AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880AD0);
  }

  return result;
}

uint64_t sub_25767A50C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_25767A560(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_25767A5A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_53@<X0>(uint64_t a1@<X8>)
{
  v8 = v5 + 48 * a1;
  v9 = *(v8 + 40);
  v10 = *(v8 + 48);
  *(v8 + 32) = v7;
  *(v8 + 40) = v4;
  *(v8 + 48) = v3;
  v11 = *(v8 + 56);
  *(v8 + 56) = v2;
  *(v8 + 64) = v6;
  *(v8 + 72) = v1;
  sub_257467018(v9, v10, v11);
}

uint64_t OUTLINED_FUNCTION_2_39()
{
  sub_257466F40(*(v0 - 24), *(v0 - 16), *(v0 - 8));
}

void OUTLINED_FUNCTION_3_39(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 40) = a4;
  *(a1 + 48) = a3;
  *(a1 + 56) = v4;
  *(a1 + 64) = a2;
  *(a1 + 72) = v5;
}

char *OUTLINED_FUNCTION_4_28()
{
  v2 = *(v0 + 16) + 1;

  return sub_257484DE8(0, v2, 1);
}

uint64_t sub_25767A828()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2577442B0;
  v1 = *(OUTLINED_FUNCTION_3_40(inited, 0x6E49u) + 16);
  if (v1)
  {
    v14 = inited;
    v15 = MEMORY[0x277D84F90];
    v2 = OUTLINED_FUNCTION_269();
    sub_257484040(v2, v3, v4);
    v5 = 32;
    v6 = v15;
    do
    {
      v7 = sub_257743674();
      v9 = v8;
      v11 = *(v15 + 16);
      v10 = *(v15 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_257484040((v10 > 1), v11 + 1, 1);
      }

      *(v15 + 16) = v11 + 1;
      v12 = v15 + 24 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
      *(v12 + 48) = 0;
      v5 += 8;
      --v1;
    }

    while (v1);

    inited = v14;
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  *(inited + 48) = v6;
  *(inited + 56) = 0;
  *(inited + 64) = 1;
  return sub_2576A6964(inited);
}

uint64_t ArrayFeatureExtractorConfiguration.indices.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v10 = MEMORY[0x277D84F90];
    sub_257483724(0, v2, 0);
    result = v10;
    v4 = (v1 + 32);
    while (1)
    {
      v6 = *v4++;
      v5 = v6;
      if (v6 < 0)
      {
        break;
      }

      v11 = result;
      v8 = *(result + 16);
      v7 = *(result + 24);
      if (v8 >= v7 >> 1)
      {
        v9 = OUTLINED_FUNCTION_2_26(v7);
        sub_257483724(v9, v8 + 1, 1);
        result = v11;
      }

      *(result + 16) = v8 + 1;
      *(result + 8 * v8 + 32) = v5;
      if (!--v2)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

void ArrayFeatureExtractorConfiguration.indices.setter(uint64_t a1)
{
  v3 = v1;
  if (*(a1 + 16))
  {
    v13 = MEMORY[0x277D84F90];
    v5 = OUTLINED_FUNCTION_269();
    sub_257484698(v5, v6, v7);
    v8 = v13;
    while ((*(a1 + 32) & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_4_29();
      if (v10)
      {
        v12 = OUTLINED_FUNCTION_2_26(v9);
        sub_257484698(v12, v2, 1);
        v8 = v13;
      }

      OUTLINED_FUNCTION_2_40();
      if (v11)
      {

        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
LABEL_10:

    *v3 = v8;
  }
}

void (*ArrayFeatureExtractorConfiguration.indices.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = ArrayFeatureExtractorConfiguration.indices.getter();
  return sub_25767AB7C;
}

void sub_25767AB7C(uint64_t *a1, char a2)
{
  if (a2)
  {

    ArrayFeatureExtractorConfiguration.indices.setter(v2);
  }

  else
  {
    ArrayFeatureExtractorConfiguration.indices.setter(*a1);
  }
}

void ArrayFeatureExtractorConfiguration.init(indices:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for Proto_ArrayFeatureExtractor(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  if (*(a1 + 16))
  {
    v13 = MEMORY[0x277D84F90];
    v5 = OUTLINED_FUNCTION_269();
    sub_257484698(v5, v6, v7);
    v8 = v13;
    while ((*(a1 + 32) & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_4_29();
      if (v10)
      {
        v12 = OUTLINED_FUNCTION_2_26(v9);
        sub_257484698(v12, v2, 1);
        v8 = v13;
      }

      OUTLINED_FUNCTION_2_40();
      if (v11)
      {

        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
LABEL_10:
    *a2 = v8;
  }
}

BOOL static ArrayFeatureExtractorConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (sub_257487374())
  {
    type metadata accessor for Proto_ArrayFeatureExtractor(0);
    sub_2577431B4();
    sub_25767B070(&qword_27F879B68, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t ArrayFeatureExtractorConfiguration.customMirror.getter()
{
  v1 = sub_257743A84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for ArrayFeatureExtractorConfiguration(0);
  MEMORY[0x28223BE20](v8);
  sub_25767AFC4(v0, &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2577442B0;
  v11 = OUTLINED_FUNCTION_3_40(v10, 0x6E69u);
  *(v10 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879DF8, &qword_25776F230);
  *(v10 + 48) = v11;
  v12 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v12);
  (*(v2 + 104))(v4, *MEMORY[0x277D84C38], v1);
  return sub_257743AA4();
}

uint64_t type metadata accessor for ArrayFeatureExtractorConfiguration(uint64_t a1)
{
  result = qword_281537558;
  if (!qword_281537558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25767AFC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArrayFeatureExtractorConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25767B070(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25767B0E0(uint64_t a1)
{
  result = type metadata accessor for Proto_ArrayFeatureExtractor(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_40@<X0>(uint64_t a1@<X0>, unsigned __int16 a2@<W8>)
{
  *(a1 + 32) = a2 | 0x73656369640000;
  *(a1 + 40) = 0xE700000000000000;

  return ArrayFeatureExtractorConfiguration.indices.getter();
}

uint64_t _s20MLModelSpecification13NeuralNetworkV5LayerV26BroadcastableModParametersV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_2577431B4();
  sub_25767B37C(&qword_27F879B68, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_257743644() & 1;
}

uint64_t sub_25767B37C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25767B544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void static NeuralNetwork.Layer.unidirectionalLSTM(name:inputNames:outputNames:inputSize:outputSize:sequenceOutput:)()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_17_3();
  type metadata accessor for NeuralNetwork.Layer.Kind(v5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  NeuralNetwork.Layer.UnidirectionalLSTMParameters.init(inputSize:outputSize:sequenceOutput:)();
  OUTLINED_FUNCTION_280();
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v10 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    swift_once();
  }

  *(v2 + v10) = qword_27F87BEE8;

  sub_257528334();

  sub_2575283BC();

  sub_25752842C(v11);
  sub_2574897E0(v0);
  type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  sub_25752846C();
  sub_25763E764(v9, type metadata accessor for NeuralNetwork.Layer.Kind);
  OUTLINED_FUNCTION_35();
}

uint64_t static NeuralNetwork.Layer.Kind.unidirectionalLSTM(inputSize:outputSize:sequenceOutput:)()
{
  NeuralNetwork.Layer.UnidirectionalLSTMParameters.init(inputSize:outputSize:sequenceOutput:)();
  type metadata accessor for NeuralNetwork.Layer.Kind(0);

  return swift_storeEnumTagMultiPayload();
}

void NeuralNetwork.Layer.UnidirectionalLSTMParameters.init(inputSize:outputSize:sequenceOutput:)()
{
  OUTLINED_FUNCTION_31();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87CA40, &qword_257752538);
  OUTLINED_FUNCTION_13(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_64();
  type metadata accessor for Proto_LSTMParams(v13);
  OUTLINED_FUNCTION_32_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_24_0();
  *(v10 + 16) = MEMORY[0x277D84F90];
  *(v10 + 24) = 0;
  v15 = type metadata accessor for Proto_UniDirectionalLSTMLayerParams(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v16 = *(v15 + 36);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v0);
  type metadata accessor for Proto_LSTMWeightParams(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  if (v8 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  *v10 = v8;
  if (v6 < 0)
  {
LABEL_9:
    __break(1u);
    return;
  }

  *(v10 + 8) = v6;
  sub_2574A172C(v10 + v16, v2, &qword_27F87CA40, &qword_257752538);
  v24 = OUTLINED_FUNCTION_26_0(v2);
  if (v25)
  {
    *(v1 + 8) = 0;
    *(v1 + 1) = 0;
    OUTLINED_FUNCTION_28_13(v24);
    OUTLINED_FUNCTION_26_0(v2);
    if (!v25)
    {
      sub_2574695E4(v2, &qword_27F87CA40, &qword_257752538);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_54();
    OUTLINED_FUNCTION_38_7();
  }

  *v1 = v4 & 1;
  sub_2574695E4(v10 + v16, &qword_27F87CA40, &qword_257752538);
  OUTLINED_FUNCTION_0_54();
  sub_25767DB50(v1, v10 + v16);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F80, &qword_25776BFA0);
  type metadata accessor for NeuralNetwork.Layer.Activation(0);
  *(swift_allocObject() + 16) = xmmword_2577442C0;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  swift_storeEnumTagMultiPayload();
  NeuralNetwork.Layer.UnidirectionalLSTMParameters.activations.setter();
  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetwork.Layer.UnidirectionalLSTMParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  result = swift_allocObject();
  *(result + 16) = xmmword_257744000;
  *(result + 32) = 0x6953207475706E49;
  *(result + 40) = 0xEA0000000000657ALL;
  if ((*v0 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v2 = result;
  result = sub_257743974();
  *(v2 + 48) = result;
  *(v2 + 56) = v3;
  *(v2 + 64) = 0x532074757074754FLL;
  *(v2 + 72) = 0xEB00000000657A69;
  if ((*(v0 + 8) & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  *(v2 + 80) = sub_257743974();
  *(v2 + 88) = v4;
  *(v2 + 96) = 0x65636E6575716553;
  *(v2 + 104) = 0xEF74757074754F20;
  v5 = NeuralNetwork.Layer.UnidirectionalLSTMParameters.sequenceOutput.getter();
  if (v5)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v5)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  *(v2 + 112) = v6;
  *(v2 + 120) = v7;
  *(v2 + 128) = 0xD000000000000013;
  *(v2 + 136) = 0x8000000257780D00;
  NeuralNetwork.Layer.UnidirectionalLSTMParameters.cellClipThreshold.getter();
  *(v2 + 144) = sub_257743794();
  *(v2 + 152) = v8;
  strcpy((v2 + 160), "Reverse Input");
  *(v2 + 174) = -4864;
  if (*(v0 + 24))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(v0 + 24))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  *(v2 + 176) = v9;
  *(v2 + 184) = v10;
  return v2;
}

uint64_t NeuralNetwork.Layer.UnidirectionalLSTMParameters.inputSize.getter()
{
  result = *v0;
  if (*v0 < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t NeuralNetwork.Layer.UnidirectionalLSTMParameters.outputSize.getter()
{
  result = *(v0 + 8);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t NeuralNetwork.Layer.UnidirectionalLSTMParameters.sequenceOutput.getter()
{
  v1 = OUTLINED_FUNCTION_36_7();
  OUTLINED_FUNCTION_13(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_14_10();
  OUTLINED_FUNCTION_32_1();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_1_42();
  v5 = type metadata accessor for Proto_UniDirectionalLSTMLayerParams(v4);
  OUTLINED_FUNCTION_12_21(v5);
  v6 = OUTLINED_FUNCTION_26_0(v0);
  if (v7)
  {
    OUTLINED_FUNCTION_11_21(v6);
    OUTLINED_FUNCTION_26_0(v0);
    if (!v7)
    {
      sub_2574695E4(v0, &qword_27F87CA40, &qword_257752538);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_54();
    OUTLINED_FUNCTION_37_10();
  }

  OUTLINED_FUNCTION_3_41();
  return OUTLINED_FUNCTION_33_7();
}

float NeuralNetwork.Layer.UnidirectionalLSTMParameters.cellClipThreshold.getter()
{
  v2 = OUTLINED_FUNCTION_36_7();
  OUTLINED_FUNCTION_13(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_10();
  OUTLINED_FUNCTION_32_1();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_1_42();
  v6 = type metadata accessor for Proto_UniDirectionalLSTMLayerParams(v5);
  OUTLINED_FUNCTION_12_21(v6);
  v7 = OUTLINED_FUNCTION_26_0(v0);
  if (v8)
  {
    OUTLINED_FUNCTION_11_21(v7);
    OUTLINED_FUNCTION_26_0(v0);
    if (!v8)
    {
      sub_2574695E4(v0, &qword_27F87CA40, &qword_257752538);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_54();
    OUTLINED_FUNCTION_37_10();
  }

  v9 = *(v1 + 8);
  OUTLINED_FUNCTION_3_41();
  return v9;
}

uint64_t NeuralNetwork.Layer.UnidirectionalLSTMParameters.namedWeights.getter()
{
  v0 = type metadata accessor for NeuralNetwork.Layer.LSTMWeightParameters(0);
  v1 = OUTLINED_FUNCTION_13(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v4 = v3 - v2;
  NeuralNetwork.Layer.UnidirectionalLSTMParameters.weights.getter();
  v5 = NeuralNetwork.Layer.LSTMWeightParameters.namedWeights.getter();
  OUTLINED_FUNCTION_5_19();
  sub_25763E764(v4, v6);
  return v5;
}

void NeuralNetwork.Layer.UnidirectionalLSTMParameters.weights.getter()
{
  OUTLINED_FUNCTION_433();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_280();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_64();
  v10 = type metadata accessor for Proto_LSTMWeightParams(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v12 = OUTLINED_FUNCTION_17_3();
  v13 = type metadata accessor for Proto_UniDirectionalLSTMLayerParams(v12);
  sub_2574A172C(v0 + *(v13 + 40), v2, &qword_27F87CA48, &unk_257752540);
  if (__swift_getEnumTagSinglePayload(v2, 1, v10) == 1)
  {
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v14 = *(v10 + 20);
    if (qword_27F879590 != -1)
    {
      OUTLINED_FUNCTION_23_13(&qword_27F879590);
    }

    *(v1 + v14) = qword_27F87BF38;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v10);

    if (EnumTagSinglePayload != 1)
    {
      sub_2574695E4(v2, &qword_27F87CA48, &unk_257752540);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_32();
    sub_25767DB50(v2, v1);
  }

  OUTLINED_FUNCTION_6_32();
  sub_25767DB50(v1, v4);
  OUTLINED_FUNCTION_434();
}

uint64_t NeuralNetwork.Layer.UnidirectionalLSTMParameters.inputSize.setter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *v1 = result;
  }

  return result;
}

uint64_t *(*NeuralNetwork.Layer.UnidirectionalLSTMParameters.inputSize.modify(uint64_t *(*result)(uint64_t *result, char a2)))(uint64_t *result, char a2)
{
  *(result + 1) = v1;
  if ((*v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *result = *v1;
    return sub_25763D564;
  }

  return result;
}

uint64_t NeuralNetwork.Layer.UnidirectionalLSTMParameters.outputSize.setter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 8) = result;
  }

  return result;
}

uint64_t *(*NeuralNetwork.Layer.UnidirectionalLSTMParameters.outputSize.modify(uint64_t *(*result)(uint64_t *result, char a2)))(uint64_t *result, char a2)
{
  *(result + 1) = v1;
  v2 = *(v1 + 8);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    *result = v2;
    return sub_25763D5CC;
  }

  return result;
}

void NeuralNetwork.Layer.UnidirectionalLSTMParameters.activations.getter()
{
  OUTLINED_FUNCTION_31();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880410, &unk_25776BFB0);
  OUTLINED_FUNCTION_13(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v5 = &v46 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879CC0, &unk_257752A20);
  OUTLINED_FUNCTION_13(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_17_3();
  v51 = type metadata accessor for Proto_ActivationParams.OneOf_NonlinearityType(v8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11();
  v48 = v10 - v11;
  MEMORY[0x28223BE20](v12);
  v47 = &v46 - v13;
  v14 = type metadata accessor for Proto_ActivationParams(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_11();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v46 - v20;
  v22 = type metadata accessor for NeuralNetwork.Layer.Activation(0);
  v23 = OUTLINED_FUNCTION_10_17(v22);
  v50 = v24;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_11();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v46 - v29;
  v31 = *(v0 + 16);
  v32 = *(v31 + 16);
  if (v32)
  {
    v46 = v5;
    v53 = MEMORY[0x277D84F90];
    sub_257484720(0, v32, 0);
    v33 = v53;
    OUTLINED_FUNCTION_193();
    v35 = v31 + v34;
    v49 = *(v15 + 72);
    do
    {
      sub_25767DBAC(v35, v21);
      sub_25767DBAC(v21, v18);
      sub_2574A172C(v18, v1, &qword_27F879CC0, &unk_257752A20);
      if (__swift_getEnumTagSinglePayload(v1, 1, v51) == 1)
      {
        v36 = v1;
        v37 = &qword_27F879CC0;
        v38 = &unk_257752A20;
      }

      else
      {
        v39 = v47;
        sub_25767DB50(v1, v47);
        v40 = v39;
        v41 = v48;
        sub_25767DB50(v40, v48);
        v42 = v46;
        sub_2576B7CC8(v41, v46);
        if (__swift_getEnumTagSinglePayload(v42, 1, v52) != 1)
        {
          sub_25763E764(v18, type metadata accessor for Proto_ActivationParams);
          sub_25763E764(v21, type metadata accessor for Proto_ActivationParams);
          OUTLINED_FUNCTION_10_25();
          sub_25767DB50(v42, v27);
          goto LABEL_9;
        }

        v36 = v42;
        v37 = &qword_27F880410;
        v38 = &unk_25776BFB0;
      }

      sub_2574695E4(v36, v37, v38);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      sub_25763E764(v18, type metadata accessor for Proto_ActivationParams);
      sub_25763E764(v21, type metadata accessor for Proto_ActivationParams);
      swift_storeEnumTagMultiPayload();
LABEL_9:
      OUTLINED_FUNCTION_10_25();
      sub_25767DB50(v27, v30);
      v53 = v33;
      v44 = *(v33 + 16);
      v43 = *(v33 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_257484720(v43 > 1, v44 + 1, 1);
        v33 = v53;
      }

      *(v33 + 16) = v44 + 1;
      OUTLINED_FUNCTION_193();
      OUTLINED_FUNCTION_10_25();
      sub_25767DB50(v30, v45);
      v35 += v49;
      --v32;
    }

    while (v32);
  }

  OUTLINED_FUNCTION_35();
}