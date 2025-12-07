void static FeatureType.ImageParameters.SizeFlexibility.== infix(_:_:)()
{
  OUTLINED_FUNCTION_31();
  v0 = type metadata accessor for SizeRange(0);
  v1 = OUTLINED_FUNCTION_13(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_11();
  v4 = (v2 - v3);
  v6 = MEMORY[0x28223BE20](v5);
  v34 = &v33 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = (&v33 - v8);
  v10 = type metadata accessor for FeatureType.ImageParameters.SizeFlexibility(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11();
  v14 = (v12 - v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880E88, &qword_257771F28);
  OUTLINED_FUNCTION_13(v16);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  v19 = &v33 - v18;
  sub_2576B418C();
  sub_2576B418C();
  OUTLINED_FUNCTION_205();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_2_49();
    sub_2576B418C();
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880C80, &unk_257770B70) + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_13_22();
      sub_2576B4DAC();
      v21 = v34;
      sub_2576B4DAC();
      sub_2576B4DAC();
      if (*v14 == *v9 && v14[1] == v9[1] && (type metadata accessor for Proto_SizeRange(0), v10 = sub_2577431B4(), sub_2576B4E04(&qword_27F879B68, MEMORY[0x277D216C8], MEMORY[0x277D216D0]), (sub_257743644() & 1) != 0))
      {
        sub_2576B3600(v14, type metadata accessor for SizeRange);
        if (*v21 == *v4 && v21[1] == v4[1])
        {
          sub_257743644();
          sub_2576B3600(v4, type metadata accessor for SizeRange);
          sub_2576B3600(v21, type metadata accessor for SizeRange);
          v22 = OUTLINED_FUNCTION_263();
          sub_2576B3600(v22, v23);
LABEL_16:
          OUTLINED_FUNCTION_1_59();
          sub_2576B3600(v19, v31);
          goto LABEL_17;
        }

        OUTLINED_FUNCTION_4_42();
        v29 = v4;
        v30 = v32;
      }

      else
      {
        OUTLINED_FUNCTION_4_42();
        sub_2576B3600(v14, v28);
        v29 = v4;
        v30 = v10;
      }

      sub_2576B3600(v29, v30);
      sub_2576B3600(v21, v10);
      sub_2576B3600(v9, v10);
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_4_42();
    sub_2576B3600(v14 + v20, v24);
    sub_2576B3600(v14, v10);
  }

  else
  {
    OUTLINED_FUNCTION_2_49();
    sub_2576B418C();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v25 = OUTLINED_FUNCTION_263();
      sub_257482A08(v25, v26);

      OUTLINED_FUNCTION_1_59();
      sub_2576B3600(v19, v27);
      goto LABEL_17;
    }
  }

  sub_2574695E4(v19, &qword_27F880E88, &qword_257771F28);
LABEL_17:
  OUTLINED_FUNCTION_35();
}

uint64_t FeatureType.ImageParameters.SizeFlexibility.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for SizeRange(0);
  v4 = OUTLINED_FUNCTION_13(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_135_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_34_12();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_49();
  sub_2576B418C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880C80, &unk_257770B70);
    sub_2576B4DAC();
    sub_2576B4DAC();
    MEMORY[0x259C651F0](1);
    type metadata accessor for Proto_SizeRange(0);
    sub_2576B4E04(&qword_27F87AAA8, type metadata accessor for Proto_SizeRange, &unk_25774A380);
    OUTLINED_FUNCTION_24_18();
    sub_2577435F4();
    OUTLINED_FUNCTION_24_18();
    sub_2577435F4();
    sub_2576B3600(v1, type metadata accessor for SizeRange);
    return sub_2576B3600(v2, type metadata accessor for SizeRange);
  }

  else
  {
    MEMORY[0x259C651F0](0);
    sub_257668370();
  }
}

uint64_t FeatureType.ImageParameters.SizeFlexibility.hashValue.getter()
{
  sub_257743A14();
  FeatureType.ImageParameters.SizeFlexibility.hash(into:)(v1);
  return sub_257743A64();
}

uint64_t sub_2576B4B50(uint64_t a1)
{
  sub_257743A14();
  FeatureType.ImageParameters.SizeFlexibility.hash(into:)(v2);
  return sub_257743A64();
}

uint64_t FeatureType.ImageParameters.Size.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x259C651F0](*v0);
  return MEMORY[0x259C651F0](v1);
}

uint64_t FeatureType.ImageParameters.Size.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_257743A14();
  MEMORY[0x259C651F0](v1);
  MEMORY[0x259C651F0](v2);
  return sub_257743A64();
}

uint64_t sub_2576B4CBC(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_257743A14();
  MEMORY[0x259C651F0](v2);
  MEMORY[0x259C651F0](v3);
  return sub_257743A64();
}

uint64_t FeatureType.ImageParameters.ColorSpace.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 30)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (result == 40)
  {
    v3 = 3;
  }

  else
  {
    v3 = v2;
  }

  if (result == 20)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (result == 10)
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_2576B4D6C@<X0>(uint64_t *a1@<X8>)
{
  result = FeatureType.ImageParameters.ColorSpace.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2576B4DAC()
{
  OUTLINED_FUNCTION_267();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_205();
  v3(v2);
  return v0;
}

uint64_t sub_2576B4E04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2576B4EE0()
{
  result = qword_27F880E98;
  if (!qword_27F880E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880E98);
  }

  return result;
}

unint64_t sub_2576B4F38()
{
  result = qword_27F880EA0;
  if (!qword_27F880EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880EA0);
  }

  return result;
}

uint64_t sub_2576B4FB4(uint64_t a1)
{
  result = type metadata accessor for Proto_ImageFeatureType(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2576B5030(uint64_t a1)
{
  sub_2576B50A4();
  if (v1 <= 0x3F)
  {
    sub_2576B50F4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2576B50A4()
{
  if (!qword_27F880EB8)
  {
    v0 = sub_257743774();
    if (!v1)
    {
      atomic_store(v0, &qword_27F880EB8);
    }
  }
}

void sub_2576B50F4(uint64_t a1)
{
  if (!qword_27F880EC0)
  {
    type metadata accessor for SizeRange(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F880EC0);
    }
  }
}

uint64_t _s15ImageParametersV4SizeVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s15ImageParametersV4SizeVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

_BYTE *_s15ImageParametersV10ColorSpaceOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_14_16()
{

  return sub_2576B3600(v0, type metadata accessor for Proto_ImageFeatureType.ImageSizeRange);
}

uint64_t OUTLINED_FUNCTION_15_18()
{

  return sub_2576B3600(v0, type metadata accessor for Proto_ImageFeatureType.EnumeratedImageSizes);
}

uint64_t OUTLINED_FUNCTION_26_13()
{

  return type metadata accessor for Proto_ImageFeatureType(0);
}

void *OUTLINED_FUNCTION_27_17()
{

  return __swift_coroFrameAllocStub(v0);
}

uint64_t OUTLINED_FUNCTION_31_11@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = a2 & 0xFFFF00000000FFFFLL | 0x6874640000;
  *(result + 40) = 0xE500000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_34_12()
{

  return type metadata accessor for FeatureType.ImageParameters.SizeFlexibility(0);
}

uint64_t OUTLINED_FUNCTION_35_12(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

void sub_2576B5484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880410, &unk_25776BFB0);
  OUTLINED_FUNCTION_13(v27);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_271();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879CC0, &unk_257752A20);
  OUTLINED_FUNCTION_13(v29);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v30);
  v32 = &a9 - v31;
  v33 = type metadata accessor for Proto_ActivationParams.OneOf_NonlinearityType(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_11();
  v37 = v35 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &a9 - v39;
  sub_2574A172C(v24, v32, &qword_27F879CC0, &unk_257752A20);
  OUTLINED_FUNCTION_155(v32, 1, v33);
  if (v45)
  {
    v41 = &qword_27F879CC0;
    v42 = &unk_257752A20;
    v43 = v32;
LABEL_7:
    sub_2574695E4(v43, v41, v42);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_55_6();
    OUTLINED_FUNCTION_42_13();
    swift_storeEnumTagMultiPayload();
    goto LABEL_8;
  }

  sub_2576B7680(v32, v40);
  sub_2576B7680(v40, v37);
  sub_2576B7CC8(v37, v20);
  v44 = type metadata accessor for NeuralNetwork.Layer.Activation(0);
  OUTLINED_FUNCTION_155(v20, 1, v44);
  if (v45)
  {
    v41 = &qword_27F880410;
    v42 = &unk_25776BFB0;
    v43 = v20;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_55_6();
  OUTLINED_FUNCTION_51_5();
  sub_2576B7680(v20, v26);
LABEL_8:
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2576B5744@<X0>(uint64_t (*a1)(void)@<X0>, float *a2@<X8>, float a3@<S0>)
{
  a1(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a2 = a3;
  OUTLINED_FUNCTION_42_13();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NeuralNetwork.Layer.Kind(0);
  OUTLINED_FUNCTION_66_3();

  return swift_storeEnumTagMultiPayload();
}

void static NeuralNetwork.Layer.parameterizedRelu(name:inputName:outputName:scale:)()
{
  OUTLINED_FUNCTION_31();
  v21 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_17_3();
  v14 = type metadata accessor for NeuralNetwork.Layer.Kind(v13);
  v15 = OUTLINED_FUNCTION_13(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_24_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v17 = OUTLINED_FUNCTION_13_6(v16);
  *(v17 + 16) = xmmword_2577442B0;
  *(v17 + 32) = v8;
  *(v17 + 40) = v6;
  v18 = OUTLINED_FUNCTION_13_6(v16);
  *(v18 + 16) = xmmword_2577442B0;
  *(v18 + 32) = v4;
  *(v18 + 40) = v2;

  static NeuralNetwork.Layer.Kind.parameterizedRelu(scale:)(v21);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v19 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    OUTLINED_FUNCTION_3_22(&qword_27F879260);
  }

  *(v10 + v19) = qword_27F87BEE8;

  OUTLINED_FUNCTION_87_3();
  sub_2575283BC();
  sub_25752842C(v18);
  OUTLINED_FUNCTION_86_4();
  v20 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_11_11(v20);
  OUTLINED_FUNCTION_10_36();
  OUTLINED_FUNCTION_35();
}

uint64_t static NeuralNetwork.Layer.Kind.parameterizedRelu(scale:)(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_16_1();
  v6 = type metadata accessor for Proto_WeightParams(v5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v8 = OUTLINED_FUNCTION_17_3();
  v9 = type metadata accessor for NeuralNetwork.WeightParameters(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_14_17();
  sub_2576B750C(a1, v3);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v10 = *(type metadata accessor for Proto_ActivationPReLU(0) + 20);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v6);
  OUTLINED_FUNCTION_4_43();
  sub_2576B750C(v3 + v14, v2);
  OUTLINED_FUNCTION_2_50();
  sub_2576B7568(v3, v15);
  sub_2574695E4(v1 + v10, &qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_3_56();
  sub_2576B7680(v2, v1 + v10);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v6);
  OUTLINED_FUNCTION_42_13();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NeuralNetwork.Layer.Kind(0);
  OUTLINED_FUNCTION_18_1();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2576B5AC4()
{
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  OUTLINED_FUNCTION_42_13();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NeuralNetwork.Layer.Kind(0);
  OUTLINED_FUNCTION_66_3();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2576B5B54@<X0>(uint64_t (*a1)(void)@<X0>, float *a2@<X8>, float a3@<S0>, float a4@<S1>)
{
  a1(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a2 = a3;
  a2[1] = a4;
  OUTLINED_FUNCTION_42_13();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NeuralNetwork.Layer.Kind(0);
  OUTLINED_FUNCTION_66_3();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2576B5C04(float a1, float a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_71_4(a3, a4);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_17_3();
  type metadata accessor for NeuralNetwork.Layer.Kind(v12);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_24_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v15 = OUTLINED_FUNCTION_13_6(v14);
  *(v15 + 16) = xmmword_2577442B0;
  *(v15 + 32) = v6;
  *(v15 + 40) = v7;
  v16 = OUTLINED_FUNCTION_13_6(v14);
  v17 = OUTLINED_FUNCTION_73_1(v16);
  v18(v17);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v5 = a1;
  v5[1] = a2;
  OUTLINED_FUNCTION_42_13();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_82_3();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v19 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    OUTLINED_FUNCTION_3_22(&qword_27F879260);
  }

  *(v4 + v19) = qword_27F87BEE8;

  OUTLINED_FUNCTION_87_3();
  sub_2575283BC();
  sub_25752842C(v6);
  OUTLINED_FUNCTION_86_4();
  v20 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_11_11(v20);
  return OUTLINED_FUNCTION_10_36();
}

uint64_t sub_2576B5E04(float a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_71_4(a2, a3);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_17_3();
  type metadata accessor for NeuralNetwork.Layer.Kind(v10);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_24_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v13 = OUTLINED_FUNCTION_13_6(v12);
  *(v13 + 16) = xmmword_2577442B0;
  *(v13 + 32) = v5;
  *(v13 + 40) = v6;
  v14 = OUTLINED_FUNCTION_13_6(v12);
  v15 = OUTLINED_FUNCTION_73_1(v14);
  v16(v15);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v4 = a1;
  OUTLINED_FUNCTION_42_13();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_82_3();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v17 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    OUTLINED_FUNCTION_3_22(&qword_27F879260);
  }

  *(v3 + v17) = qword_27F87BEE8;

  OUTLINED_FUNCTION_87_3();
  sub_2575283BC();
  sub_25752842C(v5);
  OUTLINED_FUNCTION_86_4();
  v18 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_11_11(v18);
  return OUTLINED_FUNCTION_10_36();
}

void sub_2576B5FFC()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_17_3();
  type metadata accessor for NeuralNetwork.Layer.Kind(v12);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_24_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v15 = OUTLINED_FUNCTION_13_6(v14);
  *(v15 + 16) = xmmword_2577442B0;
  *(v15 + 32) = v7;
  *(v15 + 40) = v5;
  v16 = OUTLINED_FUNCTION_13_6(v14);
  *(v16 + 16) = xmmword_2577442B0;
  *(v16 + 32) = v3;
  *(v16 + 40) = v1;

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  OUTLINED_FUNCTION_42_13();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_82_3();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v17 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    OUTLINED_FUNCTION_3_22(&qword_27F879260);
  }

  *(v9 + v17) = qword_27F87BEE8;

  OUTLINED_FUNCTION_87_3();
  sub_2575283BC();
  sub_25752842C(v16);
  OUTLINED_FUNCTION_86_4();
  v18 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_11_11(v18);
  OUTLINED_FUNCTION_10_36();
  OUTLINED_FUNCTION_35();
}

void static NeuralNetwork.Layer.parametricSoftplus(name:inputName:outputName:outputScale:inputScale:)()
{
  OUTLINED_FUNCTION_31();
  v22 = v0;
  v23 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v12);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_17_3();
  v15 = type metadata accessor for NeuralNetwork.Layer.Kind(v14);
  v16 = OUTLINED_FUNCTION_13(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_24_0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v18 = OUTLINED_FUNCTION_13_6(v17);
  *(v18 + 16) = xmmword_2577442B0;
  *(v18 + 32) = v9;
  *(v18 + 40) = v7;
  v19 = OUTLINED_FUNCTION_13_6(v17);
  *(v19 + 16) = xmmword_2577442B0;
  *(v19 + 32) = v5;
  *(v19 + 40) = v3;

  static NeuralNetwork.Layer.Kind.parametricSoftplus(outputScale:inputScale:)(v22, v23);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v20 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    OUTLINED_FUNCTION_3_22(&qword_27F879260);
  }

  *(v11 + v20) = qword_27F87BEE8;

  OUTLINED_FUNCTION_87_3();
  sub_2575283BC();
  sub_25752842C(v19);
  OUTLINED_FUNCTION_86_4();
  v21 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_11_11(v21);
  OUTLINED_FUNCTION_10_36();
  OUTLINED_FUNCTION_35();
}

uint64_t static NeuralNetwork.Layer.Kind.parametricSoftplus(outputScale:inputScale:)(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_16_1();
  v6 = type metadata accessor for NeuralNetwork.WeightParameters(v5);
  v7 = OUTLINED_FUNCTION_13(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_329();
  MEMORY[0x28223BE20](v8);
  sub_2576B750C(a1, &v11 - v9);
  sub_2576B750C(a2, v2);
  NeuralNetwork.Layer.Activation.ParametricSoftplusConfiguration.init(outputScale:inputScale:)();
  OUTLINED_FUNCTION_42_13();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NeuralNetwork.Layer.Kind(0);
  OUTLINED_FUNCTION_18_1();
  return swift_storeEnumTagMultiPayload();
}

uint64_t NeuralNetwork.Layer.Activation.ParameterizedReluConfiguration.init(scale:)(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_16_1();
  v5 = type metadata accessor for Proto_WeightParams(v4);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_24_0();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v7 = *(type metadata accessor for Proto_ActivationPReLU(0) + 20);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v5);
  type metadata accessor for NeuralNetwork.WeightParameters(0);
  OUTLINED_FUNCTION_4_43();
  sub_2576B750C(a1 + v11, v2);
  OUTLINED_FUNCTION_2_50();
  sub_2576B7568(a1, v12);
  sub_2574695E4(v1 + v7, &qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_3_56();
  sub_2576B7680(v2, v1 + v7);
  OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v5);
}

uint64_t sub_2576B65CC(float a1, float a2)
{
  v5 = OUTLINED_FUNCTION_16_1();
  v6(v5);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_2576B6630(float a1)
{
  v3 = OUTLINED_FUNCTION_16_1();
  v4(v3);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v1 = a1;
  return result;
}

void NeuralNetwork.Layer.Activation.ParametricSoftplusConfiguration.init(outputScale:inputScale:)()
{
  OUTLINED_FUNCTION_31();
  v24 = v2;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_16_1();
  v6 = type metadata accessor for Proto_WeightParams(v5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_24_0();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v8 = type metadata accessor for Proto_ActivationParametricSoftplus(0);
  v9 = *(v8 + 20);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v6);
  v13 = *(v8 + 24);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v6);
  v17 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  sub_2576B750C(v4 + *(v17 + 20), v1);
  sub_2576B7568(v4, type metadata accessor for NeuralNetwork.WeightParameters);
  sub_2574695E4(v0 + v9, &qword_27F87A1A0, &qword_257745750);
  sub_2576B7680(v1, v0 + v9);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v6);
  sub_2576B750C(v24 + *(v17 + 20), v1);
  sub_2576B7568(v24, type metadata accessor for NeuralNetwork.WeightParameters);
  sub_2574695E4(v0 + v13, &qword_27F87A1A0, &qword_257745750);
  sub_2576B7680(v1, v0 + v13);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v6);
  OUTLINED_FUNCTION_35();
}

void NeuralNetwork.Layer.Activation.propertyDescriptions.getter()
{
  OUTLINED_FUNCTION_31();
  v6 = type metadata accessor for NeuralNetwork.Layer.Activation.ELUConfiguration(0);
  v7 = OUTLINED_FUNCTION_13(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v8 = OUTLINED_FUNCTION_37_8();
  v9 = type metadata accessor for NeuralNetwork.Layer.Activation.SigmoidHardConfiguration(v8);
  v10 = OUTLINED_FUNCTION_13(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v11 = OUTLINED_FUNCTION_17_3();
  v12 = type metadata accessor for NeuralNetwork.Layer.Activation.ScaledTanhConfiguration(v11);
  v13 = OUTLINED_FUNCTION_13(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_24_0();
  v14 = type metadata accessor for NeuralNetwork.Layer.Activation.ThresholdedReluConfiguration(0);
  v15 = OUTLINED_FUNCTION_13(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  v16 = type metadata accessor for NeuralNetwork.Layer.Activation.LeakyReluConfiguration(0);
  v17 = OUTLINED_FUNCTION_13(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_1();
  v18 = type metadata accessor for NeuralNetwork.Layer.Activation.LinearConfiguration(0);
  v19 = OUTLINED_FUNCTION_13(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_30_2();
  type metadata accessor for NeuralNetwork.Layer.Activation(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3();
  v23 = v22 - v21;
  OUTLINED_FUNCTION_0_76();
  sub_2576B750C(v0, v23);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 4u:
    case 5u:
    case 7u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
      OUTLINED_FUNCTION_13_23();
      sub_2576B7568(v23, v24);
      goto LABEL_10;
    case 2u:
      OUTLINED_FUNCTION_25_17();
      sub_2576B7680(v23, v4);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v46 = OUTLINED_FUNCTION_8_4(v45);
      *(v46 + 16) = xmmword_2577442B0;
      strcpy((v46 + 32), "Negative Slope");
      *(v46 + 47) = -18;
      *(v46 + 48) = sub_257743794();
      *(v46 + 56) = v47;
      OUTLINED_FUNCTION_5_42();
      v30 = v4;
      goto LABEL_9;
    case 3u:
      OUTLINED_FUNCTION_30_13();
      sub_2576B7680(v23, v3);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v33 = OUTLINED_FUNCTION_8_4(v32);
      *(v33 + 16) = xmmword_2577442B0;
      *(v33 + 32) = 0x6C6F687365726854;
      *(v33 + 40) = 0xE900000000000064;
      *(v33 + 48) = sub_257743794();
      *(v33 + 56) = v34;
      OUTLINED_FUNCTION_29_16();
      v30 = v3;
      goto LABEL_9;
    case 6u:
      OUTLINED_FUNCTION_28_21();
      sub_2576B7680(v23, v2);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v36 = OUTLINED_FUNCTION_85_4(v35);
      *(v36 + 16) = xmmword_257743FF0;
      OUTLINED_FUNCTION_36_11(v36, 0x207475706E49);
      v37 = sub_257743794();
      OUTLINED_FUNCTION_56_4(v37, v38);
      *(v36 + 80) = sub_257743794();
      *(v36 + 88) = v39;
      OUTLINED_FUNCTION_27_18();
      v30 = v2;
      goto LABEL_9;
    case 8u:
      OUTLINED_FUNCTION_21_22();
      sub_2576B7680(v23, v1);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v26 = OUTLINED_FUNCTION_85_4(v25);
      *(v26 + 16) = xmmword_257743FF0;
      OUTLINED_FUNCTION_31_12(v26, 25427);
      v27 = sub_257743794();
      OUTLINED_FUNCTION_70_6(v27, v28);
      *(v26 + 80) = sub_257743794();
      *(v26 + 88) = v29;
      v30 = OUTLINED_FUNCTION_20_18();
      goto LABEL_9;
    case 9u:
      OUTLINED_FUNCTION_24_19();
      sub_2576B7680(v23, v0);
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v49 = OUTLINED_FUNCTION_8_4(v48);
      *(v49 + 16) = xmmword_2577442B0;
      OUTLINED_FUNCTION_31_12(v49, 25427);
      *(v49 + 48) = sub_257743794();
      *(v49 + 56) = v50;
      OUTLINED_FUNCTION_23_20();
      v30 = v0;
      goto LABEL_9;
    default:
      OUTLINED_FUNCTION_26_14();
      sub_2576B7680(v23, v5);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v41 = OUTLINED_FUNCTION_85_4(v40);
      *(v41 + 16) = xmmword_257743FF0;
      OUTLINED_FUNCTION_31_12(v41, 25427);
      v42 = sub_257743794();
      OUTLINED_FUNCTION_70_6(v42, v43);
      *(v41 + 80) = sub_257743794();
      *(v41 + 88) = v44;
      OUTLINED_FUNCTION_6_41();
      v30 = v5;
LABEL_9:
      sub_2576B7568(v30, v31);
LABEL_10:
      OUTLINED_FUNCTION_35();
      return;
  }
}

uint64_t NeuralNetwork.Layer.Activation.ScaledTanhConfiguration.propertyDescriptions.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = OUTLINED_FUNCTION_85_4(v0);
  *(v1 + 16) = xmmword_257743FF0;
  OUTLINED_FUNCTION_36_11(v1, 0x207475706E49);
  v2 = sub_257743794();
  OUTLINED_FUNCTION_56_4(v2, v3);
  *(v1 + 80) = sub_257743794();
  *(v1 + 88) = v4;
  return v1;
}

uint64_t sub_2576B6D94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v5 = OUTLINED_FUNCTION_8_4(v4);
  *(v5 + 16) = xmmword_2577442B0;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  *(v5 + 48) = sub_257743794();
  *(v5 + 56) = v6;
  return v5;
}

uint64_t NeuralNetwork.Layer.Activation.namedWeights.getter()
{
  v2 = type metadata accessor for NeuralNetwork.Layer.Activation.ParametricSoftplusConfiguration(0);
  v3 = OUTLINED_FUNCTION_13(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_37_8();
  v5 = type metadata accessor for NeuralNetwork.Layer.Activation.ParameterizedReluConfiguration(v4);
  v6 = OUTLINED_FUNCTION_13(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  type metadata accessor for NeuralNetwork.Layer.Activation(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_0_76();
  v11 = OUTLINED_FUNCTION_263();
  sub_2576B750C(v11, v12);
  OUTLINED_FUNCTION_277();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 12)
  {
    OUTLINED_FUNCTION_22_20();
    sub_2576B7680(v1, v0);
    NeuralNetwork.Layer.Activation.ParametricSoftplusConfiguration.namedWeights.getter();
    v14 = v17;
    v15 = type metadata accessor for NeuralNetwork.Layer.Activation.ParametricSoftplusConfiguration;
    v16 = v0;
  }

  else
  {
    if (EnumCaseMultiPayload != 4)
    {
      sub_2576B7568(v1, type metadata accessor for NeuralNetwork.Layer.Activation);
      return MEMORY[0x277D84F90];
    }

    sub_2576B7680(v1, v9);
    v14 = NeuralNetwork.Layer.Activation.ParameterizedReluConfiguration.namedWeights.getter();
    OUTLINED_FUNCTION_49_7();
    v16 = v9;
  }

  sub_2576B7568(v16, v15);
  return v14;
}

uint64_t NeuralNetwork.Layer.Activation.ParameterizedReluConfiguration.namedWeights.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B38, &qword_2577448C0);
  OUTLINED_FUNCTION_63();
  v4 = v3;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_271();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_21_1();
  v8 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  NeuralNetwork.Layer.Activation.ParameterizedReluConfiguration.scale.getter();
  OUTLINED_FUNCTION_155(v2, 1, v8);
  if (v10)
  {
    sub_2574695E4(v2, &qword_27F880938, &unk_25776E510);
    return MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_12_32();
    sub_2576B7680(v2, v1);
    *v0 = 0x656C616353;
    v0[1] = 0xE500000000000000;
    OUTLINED_FUNCTION_14_17();
    sub_2576B750C(v1, v0 + v12);
    sub_257469D34();
    v11 = v13;
    v14 = *(v13 + 16);
    if (v14 >= *(v13 + 24) >> 1)
    {
      sub_257469D34();
      v11 = v17;
    }

    OUTLINED_FUNCTION_2_50();
    sub_2576B7568(v1, v15);
    *(v11 + 16) = v14 + 1;
    sub_25749E9A8(v0, v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v14);
  }

  return v11;
}

void NeuralNetwork.Layer.Activation.ParametricSoftplusConfiguration.namedWeights.getter()
{
  OUTLINED_FUNCTION_31();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B38, &qword_2577448C0);
  OUTLINED_FUNCTION_63();
  v41[1] = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_11();
  v5 = v3 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = (v41 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  v10 = OUTLINED_FUNCTION_13(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v41 - v15;
  v17 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_11();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = v41 - v23;
  NeuralNetwork.Layer.Activation.ParametricSoftplusConfiguration.inputScale.getter();
  OUTLINED_FUNCTION_155(v16, 1, v17);
  if (v25)
  {
    sub_2574695E4(v16, &qword_27F880938, &unk_25776E510);
    v26 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_12_32();
    sub_2576B7680(v16, v24);
    v41[0] = v0;
    *v8 = 0x6353207475706E49;
    v8[1] = 0xEB00000000656C61;
    OUTLINED_FUNCTION_14_17();
    sub_2576B750C(v24, v8 + v27);
    sub_257469D34();
    v26 = v28;
    v29 = *(v28 + 16);
    if (v29 >= *(v28 + 24) >> 1)
    {
      OUTLINED_FUNCTION_84_5();
      v26 = v39;
    }

    OUTLINED_FUNCTION_2_50();
    sub_2576B7568(v24, v30);
    OUTLINED_FUNCTION_65_4();
    sub_25749E9A8(v8, v31 + v32 * v29);
  }

  NeuralNetwork.Layer.Activation.ParametricSoftplusConfiguration.outputScale.getter();
  OUTLINED_FUNCTION_155(v13, 1, v17);
  if (v25)
  {
    sub_2574695E4(v13, &qword_27F880938, &unk_25776E510);
  }

  else
  {
    OUTLINED_FUNCTION_12_32();
    sub_2576B7680(v13, v21);
    strcpy(v5, "Output Scale");
    *(v5 + 13) = 0;
    *(v5 + 14) = -5120;
    OUTLINED_FUNCTION_14_17();
    sub_2576B750C(v21, v5 + v33);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_257469D34();
      v26 = v40;
    }

    v35 = *(v26 + 16);
    if (v35 >= *(v26 + 24) >> 1)
    {
      OUTLINED_FUNCTION_84_5();
    }

    OUTLINED_FUNCTION_2_50();
    sub_2576B7568(v21, v36);
    OUTLINED_FUNCTION_65_4();
    sub_25749E9A8(v5, v37 + v38 * v35);
  }

  OUTLINED_FUNCTION_35();
}

uint64_t sub_2576B750C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_2576B7568(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2576B7680(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 32))(a2, v2);
  return a2;
}

void sub_2576B76DC()
{
  OUTLINED_FUNCTION_31();
  v68 = v5;
  v6 = type metadata accessor for NeuralNetwork.Layer.Activation.ParametricSoftplusConfiguration(0);
  v7 = OUTLINED_FUNCTION_13(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_1();
  v67 = v8;
  v9 = OUTLINED_FUNCTION_153();
  v10 = type metadata accessor for NeuralNetwork.Layer.Activation.SoftplusConfiguration(v9);
  v11 = OUTLINED_FUNCTION_13(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_12_1();
  v66 = v12;
  v13 = OUTLINED_FUNCTION_153();
  v14 = type metadata accessor for NeuralNetwork.Layer.Activation.SoftsignConfiguration(v13);
  v15 = OUTLINED_FUNCTION_13(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_12_1();
  v65 = v16;
  v17 = OUTLINED_FUNCTION_153();
  v18 = type metadata accessor for NeuralNetwork.Layer.Activation.ELUConfiguration(v17);
  v19 = OUTLINED_FUNCTION_13(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_12_1();
  v64 = v20;
  v21 = OUTLINED_FUNCTION_153();
  v22 = type metadata accessor for NeuralNetwork.Layer.Activation.SigmoidHardConfiguration(v21);
  v23 = OUTLINED_FUNCTION_13(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_12_1();
  v63 = v24;
  v25 = OUTLINED_FUNCTION_153();
  v26 = type metadata accessor for NeuralNetwork.Layer.Activation.SigmoidConfiguration(v25);
  v27 = OUTLINED_FUNCTION_13(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3();
  v30 = v29 - v28;
  v31 = type metadata accessor for NeuralNetwork.Layer.Activation.ScaledTanhConfiguration(0);
  v32 = OUTLINED_FUNCTION_13(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3();
  v35 = v34 - v33;
  v36 = type metadata accessor for NeuralNetwork.Layer.Activation.TanhConfiguration(0);
  v37 = OUTLINED_FUNCTION_13(v36);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_3();
  v40 = v39 - v38;
  v41 = type metadata accessor for NeuralNetwork.Layer.Activation.ParameterizedReluConfiguration(0);
  v42 = OUTLINED_FUNCTION_13(v41);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_3();
  v45 = v44 - v43;
  v46 = type metadata accessor for NeuralNetwork.Layer.Activation.ThresholdedReluConfiguration(0);
  v47 = OUTLINED_FUNCTION_13(v46);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_3();
  v48 = OUTLINED_FUNCTION_37_8();
  v49 = type metadata accessor for NeuralNetwork.Layer.Activation.LeakyReluConfiguration(v48);
  v50 = OUTLINED_FUNCTION_13(v49);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_24_0();
  v51 = type metadata accessor for NeuralNetwork.Layer.Activation.ReluConfiguration(0);
  v52 = OUTLINED_FUNCTION_13(v51);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_1();
  v53 = type metadata accessor for NeuralNetwork.Layer.Activation.LinearConfiguration(0);
  v54 = OUTLINED_FUNCTION_13(v53);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_30_2();
  type metadata accessor for NeuralNetwork.Layer.Activation(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  OUTLINED_FUNCTION_0_76();
  sub_2576B750C(v0, v2);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v60 = OUTLINED_FUNCTION_64_5();
      sub_2576B7680(v60, v3);
      v56 = v3;
      break;
    case 2u:
      OUTLINED_FUNCTION_25_17();
      sub_2576B7680(v2, v1);
      v56 = v1;
      break;
    case 3u:
      OUTLINED_FUNCTION_30_13();
      sub_2576B7680(v2, v0);
      v56 = v0;
      break;
    case 4u:
      v58 = OUTLINED_FUNCTION_64_5();
      sub_2576B7680(v58, v45);
      goto LABEL_15;
    case 5u:
      v61 = OUTLINED_FUNCTION_64_5();
      sub_2576B7680(v61, v40);
      v56 = v40;
      break;
    case 6u:
      OUTLINED_FUNCTION_28_21();
      sub_2576B7680(v2, v35);
      v56 = v35;
      break;
    case 7u:
      v59 = OUTLINED_FUNCTION_64_5();
      sub_2576B7680(v59, v30);
      v56 = v30;
      break;
    case 8u:
      OUTLINED_FUNCTION_21_22();
      v45 = v63;
      sub_2576B7680(v2, v63);
      goto LABEL_15;
    case 9u:
      OUTLINED_FUNCTION_24_19();
      v45 = v64;
      sub_2576B7680(v2, v64);
      goto LABEL_15;
    case 0xAu:
      v62 = OUTLINED_FUNCTION_64_5();
      v45 = v65;
      sub_2576B7680(v62, v65);
      goto LABEL_15;
    case 0xBu:
      v57 = OUTLINED_FUNCTION_64_5();
      v45 = v66;
      sub_2576B7680(v57, v66);
      goto LABEL_15;
    case 0xCu:
      OUTLINED_FUNCTION_22_20();
      v45 = v67;
      sub_2576B7680(v2, v67);
LABEL_15:
      v56 = v45;
      break;
    default:
      OUTLINED_FUNCTION_26_14();
      sub_2576B7680(v2, v4);
      v56 = v4;
      break;
  }

  sub_2576B7680(v56, v68);
  type metadata accessor for Proto_ActivationParams.OneOf_NonlinearityType(0);
  OUTLINED_FUNCTION_18_1();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2576B7CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for NeuralNetwork.Layer.Activation(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_24_0();
  type metadata accessor for Proto_ActivationParams.OneOf_NonlinearityType(0);
  OUTLINED_FUNCTION_18_1();
  swift_getEnumCaseMultiPayload();
  sub_2576B7680(a1, v2);
  OUTLINED_FUNCTION_176();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_51_5();
  sub_2576B7680(v2, a2);
  OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v5);
}

void static NeuralNetwork.Layer.Activation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_31();
  v182 = v2;
  v183 = v3;
  v4 = type metadata accessor for NeuralNetwork.Layer.Activation.ParametricSoftplusConfiguration(0);
  v5 = OUTLINED_FUNCTION_13(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_1();
  v172 = v6;
  v7 = OUTLINED_FUNCTION_153();
  v8 = type metadata accessor for NeuralNetwork.Layer.Activation.SoftplusConfiguration(v7);
  v9 = OUTLINED_FUNCTION_13(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_12_1();
  v173 = v10;
  v11 = OUTLINED_FUNCTION_153();
  v12 = type metadata accessor for NeuralNetwork.Layer.Activation.SoftsignConfiguration(v11);
  v13 = OUTLINED_FUNCTION_13(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12_1();
  v171 = v14;
  v15 = OUTLINED_FUNCTION_153();
  v16 = type metadata accessor for NeuralNetwork.Layer.Activation.ELUConfiguration(v15);
  v17 = OUTLINED_FUNCTION_13(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_12_1();
  v170 = v18;
  v19 = OUTLINED_FUNCTION_153();
  v20 = type metadata accessor for NeuralNetwork.Layer.Activation.SigmoidHardConfiguration(v19);
  v21 = OUTLINED_FUNCTION_13(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_12_1();
  v169 = v22;
  v23 = OUTLINED_FUNCTION_153();
  v24 = type metadata accessor for NeuralNetwork.Layer.Activation.SigmoidConfiguration(v23);
  v25 = OUTLINED_FUNCTION_13(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_12_1();
  v167 = v26;
  v27 = OUTLINED_FUNCTION_153();
  v28 = type metadata accessor for NeuralNetwork.Layer.Activation.ScaledTanhConfiguration(v27);
  v29 = OUTLINED_FUNCTION_13(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_12_1();
  v168 = v30;
  v31 = OUTLINED_FUNCTION_153();
  v32 = type metadata accessor for NeuralNetwork.Layer.Activation.TanhConfiguration(v31);
  v33 = OUTLINED_FUNCTION_13(v32);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_12_1();
  v166 = v34;
  v35 = OUTLINED_FUNCTION_153();
  v36 = type metadata accessor for NeuralNetwork.Layer.Activation.ParameterizedReluConfiguration(v35);
  v37 = OUTLINED_FUNCTION_13(v36);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_12_1();
  v164 = v38;
  v39 = OUTLINED_FUNCTION_153();
  v40 = type metadata accessor for NeuralNetwork.Layer.Activation.ThresholdedReluConfiguration(v39);
  v41 = OUTLINED_FUNCTION_13(v40);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_12_1();
  v165 = v42;
  v43 = OUTLINED_FUNCTION_153();
  v44 = type metadata accessor for NeuralNetwork.Layer.Activation.LeakyReluConfiguration(v43);
  v45 = OUTLINED_FUNCTION_13(v44);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_12_1();
  v163 = v46;
  v47 = OUTLINED_FUNCTION_153();
  v48 = type metadata accessor for NeuralNetwork.Layer.Activation.ReluConfiguration(v47);
  v49 = OUTLINED_FUNCTION_13(v48);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_12_1();
  v162 = v50;
  v51 = OUTLINED_FUNCTION_153();
  v52 = type metadata accessor for NeuralNetwork.Layer.Activation.LinearConfiguration(v51);
  v53 = OUTLINED_FUNCTION_13(v52);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_12_1();
  v161 = v54;
  v55 = OUTLINED_FUNCTION_153();
  type metadata accessor for NeuralNetwork.Layer.Activation(v55);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_11();
  v176 = v57 - v58;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_167();
  v179 = v60;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_167();
  v177 = v62;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_167();
  v181 = v64;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_167();
  v180 = v66;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_167();
  v174 = v68;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_167();
  v178 = v70;
  OUTLINED_FUNCTION_158();
  v72 = MEMORY[0x28223BE20](v71);
  v74 = &v161 - v73;
  v75 = MEMORY[0x28223BE20](v72);
  v77 = &v161 - v76;
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_167();
  v175 = v78;
  OUTLINED_FUNCTION_158();
  v80 = MEMORY[0x28223BE20](v79);
  v82 = (&v161 - v81);
  v83 = MEMORY[0x28223BE20](v80);
  v85 = &v161 - v84;
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_218();
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880EC8, &unk_2577721C0);
  OUTLINED_FUNCTION_13(v86);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_30_2();
  v89 = *(v88 + 56);
  sub_2576B750C(v182, v0);
  sub_2576B750C(v183, v0 + v89);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_76();
      sub_2576B750C(v0, v85);
      if (OUTLINED_FUNCTION_69_3() == 1)
      {
        v124 = OUTLINED_FUNCTION_46_9();
        v125 = v162;
        sub_2576B7680(v124, v162);
        sub_2577431B4();
        OUTLINED_FUNCTION_1_60();
        sub_2576BB9EC(v126, v127);
        sub_257743644();
        sub_2576B7568(v125, type metadata accessor for NeuralNetwork.Layer.Activation.ReluConfiguration);
        v101 = v85;
        v114 = type metadata accessor for NeuralNetwork.Layer.Activation.ReluConfiguration;
        goto LABEL_74;
      }

      v90 = type metadata accessor for NeuralNetwork.Layer.Activation.ReluConfiguration;
      v91 = v85;
      goto LABEL_60;
    case 2u:
      OUTLINED_FUNCTION_0_76();
      sub_2576B750C(v0, v82);
      if (OUTLINED_FUNCTION_69_3() != 2)
      {
        OUTLINED_FUNCTION_5_42();
        v91 = v82;
        goto LABEL_60;
      }

      OUTLINED_FUNCTION_25_17();
      v110 = v163;
      sub_2576B7680(v0 + v89, v163);
      if (*v82 == *v110)
      {
        type metadata accessor for Proto_ActivationLeakyReLU(0);
        sub_2577431B4();
        OUTLINED_FUNCTION_1_60();
        sub_2576BB9EC(v111, v112);
        sub_257743644();
      }

      OUTLINED_FUNCTION_5_42();
      sub_2576B7568(v110, v113);
      OUTLINED_FUNCTION_5_42();
      v101 = v82;
      goto LABEL_74;
    case 3u:
      OUTLINED_FUNCTION_0_76();
      v92 = v175;
      sub_2576B750C(v0, v175);
      if (OUTLINED_FUNCTION_69_3() != 3)
      {
        v148 = type metadata accessor for NeuralNetwork.Layer.Activation.ThresholdedReluConfiguration;
        goto LABEL_59;
      }

      OUTLINED_FUNCTION_30_13();
      v115 = v165;
      sub_2576B7680(v0 + v89, v165);
      OUTLINED_FUNCTION_57_1();
      if (v103)
      {
        type metadata accessor for Proto_ActivationThresholdedReLU(0);
        sub_2577431B4();
        OUTLINED_FUNCTION_1_60();
        v118 = sub_2576BB9EC(v116, v117);
        v119 = OUTLINED_FUNCTION_20_4(v118);
        OUTLINED_FUNCTION_29_16();
        sub_2576B7568(v115, v120);
        if (v119)
        {
          v109 = type metadata accessor for NeuralNetwork.Layer.Activation.ThresholdedReluConfiguration;
          goto LABEL_46;
        }
      }

      else
      {
        OUTLINED_FUNCTION_29_16();
        sub_2576B7568(v115, v159);
      }

      v154 = type metadata accessor for NeuralNetwork.Layer.Activation.ThresholdedReluConfiguration;
      goto LABEL_73;
    case 4u:
      OUTLINED_FUNCTION_0_76();
      sub_2576B750C(v0, v77);
      if (OUTLINED_FUNCTION_69_3() == 4)
      {
        v98 = OUTLINED_FUNCTION_46_9();
        v99 = v164;
        sub_2576B7680(v98, v164);
        OUTLINED_FUNCTION_263();
        _s20MLModelSpecification13NeuralNetworkV5LayerV10ActivationO30ParameterizedReluConfigurationV2eeoiySbAI_AItFZ_0();
        v100 = type metadata accessor for NeuralNetwork.Layer.Activation.ParameterizedReluConfiguration;
        sub_2576B7568(v99, type metadata accessor for NeuralNetwork.Layer.Activation.ParameterizedReluConfiguration);
        v101 = v77;
        goto LABEL_39;
      }

      OUTLINED_FUNCTION_49_7();
      v91 = v77;
      goto LABEL_60;
    case 5u:
      OUTLINED_FUNCTION_0_76();
      sub_2576B750C(v0, v74);
      if (OUTLINED_FUNCTION_69_3() == 5)
      {
        v128 = OUTLINED_FUNCTION_46_9();
        v129 = v166;
        sub_2576B7680(v128, v166);
        sub_2577431B4();
        OUTLINED_FUNCTION_1_60();
        sub_2576BB9EC(v130, v131);
        sub_257743644();
        v100 = type metadata accessor for NeuralNetwork.Layer.Activation.TanhConfiguration;
        sub_2576B7568(v129, type metadata accessor for NeuralNetwork.Layer.Activation.TanhConfiguration);
        v101 = v74;
        goto LABEL_39;
      }

      v90 = type metadata accessor for NeuralNetwork.Layer.Activation.TanhConfiguration;
      v91 = v74;
      goto LABEL_60;
    case 6u:
      OUTLINED_FUNCTION_0_76();
      v92 = v178;
      sub_2576B750C(v0, v178);
      if (OUTLINED_FUNCTION_69_3() != 6)
      {
        v148 = type metadata accessor for NeuralNetwork.Layer.Activation.ScaledTanhConfiguration;
        goto LABEL_59;
      }

      OUTLINED_FUNCTION_28_21();
      v132 = v168;
      sub_2576B7680(v0 + v89, v168);
      OUTLINED_FUNCTION_57_1();
      if (v103 && *(v92 + 4) == *(v132 + 4))
      {
        type metadata accessor for Proto_ActivationScaledTanh(0);
        sub_2577431B4();
        OUTLINED_FUNCTION_1_60();
        v135 = sub_2576BB9EC(v133, v134);
        v136 = OUTLINED_FUNCTION_20_4(v135);
        OUTLINED_FUNCTION_27_18();
        sub_2576B7568(v132, v137);
        if (v136)
        {
          v109 = type metadata accessor for NeuralNetwork.Layer.Activation.ScaledTanhConfiguration;
          goto LABEL_46;
        }
      }

      else
      {
        OUTLINED_FUNCTION_27_18();
        sub_2576B7568(v132, v153);
      }

      v154 = type metadata accessor for NeuralNetwork.Layer.Activation.ScaledTanhConfiguration;
      goto LABEL_73;
    case 7u:
      OUTLINED_FUNCTION_0_76();
      v92 = v174;
      sub_2576B750C(v0, v174);
      if (OUTLINED_FUNCTION_69_3() == 7)
      {
        v121 = OUTLINED_FUNCTION_46_9();
        v94 = v167;
        sub_2576B7680(v121, v167);
        sub_2577431B4();
        OUTLINED_FUNCTION_1_60();
        sub_2576BB9EC(v122, v123);
        OUTLINED_FUNCTION_176();
        sub_257743644();
        v97 = type metadata accessor for NeuralNetwork.Layer.Activation.SigmoidConfiguration;
        goto LABEL_38;
      }

      v148 = type metadata accessor for NeuralNetwork.Layer.Activation.SigmoidConfiguration;
      goto LABEL_59;
    case 8u:
      OUTLINED_FUNCTION_0_76();
      v92 = v180;
      sub_2576B750C(v0, v180);
      if (OUTLINED_FUNCTION_69_3() != 8)
      {
        v148 = type metadata accessor for NeuralNetwork.Layer.Activation.SigmoidHardConfiguration;
        goto LABEL_59;
      }

      OUTLINED_FUNCTION_21_22();
      v141 = v169;
      sub_2576B7680(v0 + v89, v169);
      OUTLINED_FUNCTION_57_1();
      if (v103 && *(v92 + 4) == *(v141 + 4))
      {
        type metadata accessor for Proto_ActivationSigmoidHard(0);
        sub_2577431B4();
        OUTLINED_FUNCTION_1_60();
        v144 = sub_2576BB9EC(v142, v143);
        v145 = OUTLINED_FUNCTION_20_4(v144);
        v146 = OUTLINED_FUNCTION_20_18();
        sub_2576B7568(v146, v147);
        if (v145)
        {
          v109 = type metadata accessor for NeuralNetwork.Layer.Activation.SigmoidHardConfiguration;
          goto LABEL_46;
        }
      }

      else
      {
        v155 = OUTLINED_FUNCTION_20_18();
        sub_2576B7568(v155, v156);
      }

      v154 = type metadata accessor for NeuralNetwork.Layer.Activation.SigmoidHardConfiguration;
      goto LABEL_73;
    case 9u:
      OUTLINED_FUNCTION_0_76();
      v92 = v181;
      sub_2576B750C(v0, v181);
      if (OUTLINED_FUNCTION_69_3() != 9)
      {
        v148 = type metadata accessor for NeuralNetwork.Layer.Activation.ELUConfiguration;
        goto LABEL_59;
      }

      OUTLINED_FUNCTION_24_19();
      v102 = v170;
      sub_2576B7680(v0 + v89, v170);
      OUTLINED_FUNCTION_57_1();
      if (v103)
      {
        type metadata accessor for Proto_ActivationELU(0);
        sub_2577431B4();
        OUTLINED_FUNCTION_1_60();
        v106 = sub_2576BB9EC(v104, v105);
        v107 = OUTLINED_FUNCTION_20_4(v106);
        OUTLINED_FUNCTION_23_20();
        sub_2576B7568(v102, v108);
        if (v107)
        {
          v109 = type metadata accessor for NeuralNetwork.Layer.Activation.ELUConfiguration;
LABEL_46:
          v114 = v109;
          v101 = v92;
          goto LABEL_74;
        }
      }

      else
      {
        OUTLINED_FUNCTION_23_20();
        sub_2576B7568(v102, v158);
      }

      v154 = type metadata accessor for NeuralNetwork.Layer.Activation.ELUConfiguration;
LABEL_73:
      v114 = v154;
      v101 = v92;
      goto LABEL_74;
    case 0xAu:
      OUTLINED_FUNCTION_0_76();
      v92 = v177;
      sub_2576B750C(v0, v177);
      if (OUTLINED_FUNCTION_69_3() == 10)
      {
        v138 = OUTLINED_FUNCTION_46_9();
        v94 = v171;
        sub_2576B7680(v138, v171);
        sub_2577431B4();
        OUTLINED_FUNCTION_1_60();
        sub_2576BB9EC(v139, v140);
        OUTLINED_FUNCTION_176();
        sub_257743644();
        v97 = type metadata accessor for NeuralNetwork.Layer.Activation.SoftsignConfiguration;
        goto LABEL_38;
      }

      v148 = type metadata accessor for NeuralNetwork.Layer.Activation.SoftsignConfiguration;
      goto LABEL_59;
    case 0xBu:
      OUTLINED_FUNCTION_0_76();
      v92 = v179;
      sub_2576B750C(v0, v179);
      if (OUTLINED_FUNCTION_69_3() == 11)
      {
        v93 = OUTLINED_FUNCTION_46_9();
        v94 = v173;
        sub_2576B7680(v93, v173);
        sub_2577431B4();
        OUTLINED_FUNCTION_1_60();
        sub_2576BB9EC(v95, v96);
        OUTLINED_FUNCTION_176();
        sub_257743644();
        v97 = type metadata accessor for NeuralNetwork.Layer.Activation.SoftplusConfiguration;
        goto LABEL_38;
      }

      v148 = type metadata accessor for NeuralNetwork.Layer.Activation.SoftplusConfiguration;
      goto LABEL_59;
    case 0xCu:
      OUTLINED_FUNCTION_0_76();
      v92 = v176;
      sub_2576B750C(v0, v176);
      if (OUTLINED_FUNCTION_69_3() == 12)
      {
        OUTLINED_FUNCTION_22_20();
        v94 = v172;
        sub_2576B7680(v0 + v89, v172);
        OUTLINED_FUNCTION_176();
        _s20MLModelSpecification13NeuralNetworkV5LayerV10ActivationO31ParametricSoftplusConfigurationV2eeoiySbAI_AItFZ_0();
        v97 = type metadata accessor for NeuralNetwork.Layer.Activation.ParametricSoftplusConfiguration;
LABEL_38:
        v100 = v97;
        sub_2576B7568(v94, v97);
        v101 = v92;
LABEL_39:
        v114 = v100;
        goto LABEL_74;
      }

      v148 = type metadata accessor for NeuralNetwork.Layer.Activation.ParametricSoftplusConfiguration;
LABEL_59:
      v90 = v148;
      v91 = v92;
      goto LABEL_60;
    default:
      OUTLINED_FUNCTION_0_76();
      sub_2576B750C(v0, v1);
      if (OUTLINED_FUNCTION_69_3())
      {
        OUTLINED_FUNCTION_6_41();
        v91 = v1;
LABEL_60:
        sub_2576B7568(v91, v90);
        sub_2574695E4(v0, &qword_27F880EC8, &unk_2577721C0);
      }

      else
      {
        OUTLINED_FUNCTION_26_14();
        v149 = v161;
        sub_2576B7680(v0 + v89, v161);
        if (*v1 == *v149 && v1[1] == v149[1])
        {
          type metadata accessor for Proto_ActivationLinear(0);
          sub_2577431B4();
          OUTLINED_FUNCTION_1_60();
          sub_2576BB9EC(v150, v151);
          sub_257743644();
          OUTLINED_FUNCTION_6_41();
          sub_2576B7568(v149, v152);
        }

        else
        {
          OUTLINED_FUNCTION_6_41();
          sub_2576B7568(v149, v157);
        }

        OUTLINED_FUNCTION_6_41();
        v101 = v1;
LABEL_74:
        sub_2576B7568(v101, v114);
        OUTLINED_FUNCTION_13_23();
        sub_2576B7568(v0, v160);
      }

      OUTLINED_FUNCTION_35();
      return;
  }
}

uint64_t sub_2576B8D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v7 = OUTLINED_FUNCTION_85_4(v6);
  *(v7 + 16) = xmmword_257743FF0;
  *(v7 + 32) = a1;
  *(v7 + 40) = 0xE500000000000000;
  *(v7 + 48) = sub_257743794();
  *(v7 + 56) = v8;
  *(v7 + 64) = a2;
  *(v7 + 72) = a3;
  *(v7 + 80) = sub_257743794();
  *(v7 + 88) = v9;
  return v7;
}

uint64_t NeuralNetwork.Layer.ClampedReluParameters.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for Proto_ClampedReLULayerParams(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

float (*NeuralNetwork.Layer.Activation.ScaledTanhConfiguration.inputScale.modify(uint64_t a1))(float *)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 4);
  return sub_2576BC7B8;
}

float (*NeuralNetwork.Layer.Activation.LinearConfiguration.offset.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 4);
  return sub_25749D38C;
}

float (*NeuralNetwork.Layer.Activation.SigmoidHardConfiguration.offset.modify(uint64_t a1))(float *)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 4);
  return sub_2576BC7B8;
}

BOOL sub_2576B94E8(float *a1, float *a2, void (*a3)(void))
{
  result = 0;
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    a3(0);
    sub_2577431B4();
    OUTLINED_FUNCTION_1_60();
    v5 = sub_2576BB9EC(v3, v4);
    if (OUTLINED_FUNCTION_4_2(v5))
    {
      return 1;
    }
  }

  return result;
}

void (*NeuralNetwork.Layer.Activation.ParameterizedReluConfiguration.scale.modify())(void ***a1, uint64_t a2)
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = OUTLINED_FUNCTION_68_3(v1);
  v0[1] = v2;
  OUTLINED_FUNCTION_13(v2);
  v0[2] = __swift_coroFrameAllocStub(*(v3 + 64));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v4);
  v6 = *(v5 + 64);
  v0[3] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_77_3(v7);
  NeuralNetwork.Layer.Activation.ParameterizedReluConfiguration.scale.getter();
  return sub_2576B9758;
}

BOOL sub_2576B9A30(float *a1, float *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    v2 = OUTLINED_FUNCTION_30();
    v3(v2);
    sub_2577431B4();
    OUTLINED_FUNCTION_1_60();
    v6 = sub_2576BB9EC(v4, v5);
    if (OUTLINED_FUNCTION_4_2(v6))
    {
      return 1;
    }
  }

  return result;
}

uint64_t _s20MLModelSpecification13NeuralNetworkV5LayerV10ActivationO17ReluConfigurationV2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_30();
  sub_2577431B4();
  OUTLINED_FUNCTION_1_60();
  sub_2576BB9EC(v2, v3);
  return sub_257743644() & 1;
}

void NeuralNetwork.Layer.Activation.ParametricSoftplusConfiguration.inputScale.getter()
{
  OUTLINED_FUNCTION_31();
  v6 = OUTLINED_FUNCTION_88_3(v5);
  type metadata accessor for Proto_WeightParams(v6);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  v9 = OUTLINED_FUNCTION_13(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_329();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_218();
  v11 = *(type metadata accessor for Proto_ActivationParametricSoftplus(0) + 24);
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_75_6();
  if (v4 != 1)
  {
    sub_2574A172C(v0 + v11, v1, &qword_27F87A1A0, &qword_257745750);
    v12 = OUTLINED_FUNCTION_16_10();
    if (v13)
    {
      *v2 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_80_1(v12, xmmword_257745740);
      type metadata accessor for Proto_QuantizationParams(0);
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
      OUTLINED_FUNCTION_16_10();
      if (!v13)
      {
        sub_2574695E4(v1, &qword_27F87A1A0, &qword_257745750);
      }
    }

    else
    {
      OUTLINED_FUNCTION_3_56();
      v18 = OUTLINED_FUNCTION_277();
      sub_2576B7680(v18, v19);
    }

    sub_2576FF45C(v2, &qword_27F87A1A0);
    v3 = 0;
  }

  v20 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  __swift_storeEnumTagSinglePayload(&qword_27F87A1A0, v3, 1, v20);
  OUTLINED_FUNCTION_35();
}

void sub_2576B9F88()
{
  OUTLINED_FUNCTION_31();
  v5 = v4;
  v7 = OUTLINED_FUNCTION_88_3(v6);
  type metadata accessor for Proto_WeightParams(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  v10 = OUTLINED_FUNCTION_13(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_329();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_218();
  v12 = *(v5(0) + 20);
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_75_6();
  if (v3 != 1)
  {
    sub_2574A172C(v0 + v12, v1, &qword_27F87A1A0, &qword_257745750);
    v13 = OUTLINED_FUNCTION_16_10();
    if (v14)
    {
      *v2 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_80_1(v13, xmmword_257745740);
      type metadata accessor for Proto_QuantizationParams(0);
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
      OUTLINED_FUNCTION_16_10();
      if (!v14)
      {
        sub_2574695E4(v1, &qword_27F87A1A0, &qword_257745750);
      }
    }

    else
    {
      v19 = OUTLINED_FUNCTION_277();
      sub_2576B7680(v19, v20);
    }

    sub_2576FF45C(v2, &qword_27F87A1A0);
    v5 = 0;
  }

  v21 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  __swift_storeEnumTagSinglePayload(&qword_27F87A1A0, v5, 1, v21);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2576BA138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v8 = OUTLINED_FUNCTION_277();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_13(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_21_1();
  sub_2574A172C(a1, v5, &qword_27F880938, &unk_25776E510);
  return a5(v5);
}

uint64_t sub_2576BA1F0(uint64_t a1, uint64_t (*a2)(void))
{
  v7 = type metadata accessor for Proto_WeightParams(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_24_0();
  v9 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_155(a1, 1, v9);
  if (v11)
  {
    sub_2574695E4(a1, &qword_27F880938, &unk_25776E510);
    v12 = a2(0);
    sub_2574695E4(v2 + *(v12 + 20), &qword_27F87A1A0, &qword_257745750);
    OUTLINED_FUNCTION_44();

    return __swift_storeEnumTagSinglePayload(v13, v14, v15, v7);
  }

  else
  {
    sub_2576B7680(a1, v4);
    OUTLINED_FUNCTION_4_43();
    sub_2576B750C(v4 + v16, v3);
    OUTLINED_FUNCTION_2_50();
    sub_2576B7568(v4, v17);
    v18 = *(a2(0) + 20);
    sub_2574695E4(v2 + v18, &qword_27F87A1A0, &qword_257745750);
    OUTLINED_FUNCTION_3_56();
    sub_2576B7680(v3, v2 + v18);
    OUTLINED_FUNCTION_21();
    return __swift_storeEnumTagSinglePayload(v19, v20, v21, v7);
  }
}

void (*NeuralNetwork.Layer.Activation.ParametricSoftplusConfiguration.outputScale.modify())(void ***a1, uint64_t a2)
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = OUTLINED_FUNCTION_68_3(v1);
  v0[1] = v2;
  OUTLINED_FUNCTION_13(v2);
  v0[2] = __swift_coroFrameAllocStub(*(v3 + 64));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v4);
  v6 = *(v5 + 64);
  v0[3] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_77_3(v7);
  NeuralNetwork.Layer.Activation.ParametricSoftplusConfiguration.outputScale.getter();
  return sub_2576BA46C;
}

void sub_2576BA498(void ***a1, char a2, uint64_t (*a3)(void), void (*a4)(void *))
{
  v5 = *a1;
  v6 = (*a1)[4];
  if (a2)
  {
    v4 = v5[2];
    v8 = v5[3];
    v9 = OUTLINED_FUNCTION_263();
    sub_2574A172C(v9, v10, &qword_27F880938, &unk_25776E510);
    a4(v8);
    sub_2574695E4(v6, &qword_27F880938, &unk_25776E510);
  }

  else
  {
    v8 = type metadata accessor for NeuralNetwork.WeightParameters(0);
    OUTLINED_FUNCTION_155(v6, 1, v8);
    if (v12)
    {
      v8 = *v5;
      sub_2574695E4(v6, &qword_27F880938, &unk_25776E510);
      v13 = a3(0);
      v18 = sub_2574695E4(v8 + *(v13 + 20), &qword_27F87A1A0, &qword_257745750);
      v19 = 1;
    }

    else
    {
      v4 = v5[2];
      v14 = *v5;
      OUTLINED_FUNCTION_4_43();
      sub_2576B750C(v6 + v15, v4);
      OUTLINED_FUNCTION_2_50();
      sub_2576B7568(v6, v16);
      v17 = v14 + *(a3(0) + 20);
      sub_2574695E4(v17, &qword_27F87A1A0, &qword_257745750);
      OUTLINED_FUNCTION_3_56();
      v18 = sub_2576B7680(v4, v17);
      v19 = 0;
    }

    OUTLINED_FUNCTION_92_2(v18, v19);
  }

  free(v6);
  free(v8);
  free(v4);

  free(v5);
}

uint64_t NeuralNetwork.Layer.Activation.ParametricSoftplusConfiguration.inputScale.setter(uint64_t a1)
{
  v5 = type metadata accessor for Proto_WeightParams(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v7 = OUTLINED_FUNCTION_17_3();
  v8 = type metadata accessor for NeuralNetwork.WeightParameters(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  OUTLINED_FUNCTION_155(a1, 1, v8);
  if (v10)
  {
    sub_2574695E4(a1, &qword_27F880938, &unk_25776E510);
    v11 = type metadata accessor for Proto_ActivationParametricSoftplus(0);
    sub_2574695E4(v1 + *(v11 + 24), &qword_27F87A1A0, &qword_257745750);
    OUTLINED_FUNCTION_44();

    return __swift_storeEnumTagSinglePayload(v12, v13, v14, v5);
  }

  else
  {
    OUTLINED_FUNCTION_12_32();
    v15 = OUTLINED_FUNCTION_277();
    sub_2576B7680(v15, v16);
    OUTLINED_FUNCTION_4_43();
    sub_2576B750C(v3 + v17, v2);
    OUTLINED_FUNCTION_2_50();
    sub_2576B7568(v3, v18);
    v19 = *(type metadata accessor for Proto_ActivationParametricSoftplus(0) + 24);
    sub_2574695E4(v1 + v19, &qword_27F87A1A0, &qword_257745750);
    OUTLINED_FUNCTION_3_56();
    sub_2576B7680(v2, v1 + v19);
    OUTLINED_FUNCTION_21();
    return __swift_storeEnumTagSinglePayload(v20, v21, v22, v5);
  }
}

void (*NeuralNetwork.Layer.Activation.ParametricSoftplusConfiguration.inputScale.modify())(void ***a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = OUTLINED_FUNCTION_68_3(v1);
  v0[1] = v2;
  OUTLINED_FUNCTION_13(v2);
  v0[2] = __swift_coroFrameAllocStub(*(v3 + 64));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v4);
  v6 = *(v5 + 64);
  v0[3] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_77_3(v7);
  NeuralNetwork.Layer.Activation.ParametricSoftplusConfiguration.inputScale.getter();
  return sub_2576BA880;
}

void sub_2576BA880(void ***a1, char a2)
{
  v4 = *a1;
  v5 = (*a1)[4];
  if (a2)
  {
    v3 = v4[2];
    v2 = v4[3];
    v6 = OUTLINED_FUNCTION_263();
    sub_2574A172C(v6, v7, &qword_27F880938, &unk_25776E510);
    NeuralNetwork.Layer.Activation.ParametricSoftplusConfiguration.inputScale.setter(v2);
    sub_2574695E4(v5, &qword_27F880938, &unk_25776E510);
  }

  else
  {
    v8 = type metadata accessor for NeuralNetwork.WeightParameters(0);
    OUTLINED_FUNCTION_155(v5, 1, v8);
    if (v9)
    {
      v10 = *v4;
      sub_2574695E4(v5, &qword_27F880938, &unk_25776E510);
      v11 = type metadata accessor for Proto_ActivationParametricSoftplus(0);
      v15 = sub_2574695E4(v10 + *(v11 + 24), &qword_27F87A1A0, &qword_257745750);
      v16 = 1;
    }

    else
    {
      v2 = v4[2];
      v3 = *v4;
      OUTLINED_FUNCTION_4_43();
      sub_2576B750C(v5 + v12, v2);
      OUTLINED_FUNCTION_2_50();
      sub_2576B7568(v5, v13);
      v14 = v3 + *(type metadata accessor for Proto_ActivationParametricSoftplus(0) + 24);
      sub_2574695E4(v14, &qword_27F87A1A0, &qword_257745750);
      OUTLINED_FUNCTION_3_56();
      v15 = sub_2576B7680(v2, v14);
      v16 = 0;
    }

    OUTLINED_FUNCTION_92_2(v15, v16);
  }

  free(v5);
  free(v2);
  free(v3);

  free(v4);
}

uint64_t sub_2576BAA50(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  v2 = OUTLINED_FUNCTION_176();
  sub_2576BB9EC(v2, v3);

  return sub_2577435F4();
}

uint64_t sub_2576BAB0C(uint64_t (*a1)(void))
{
  sub_257743A14();
  a1(0);
  v2 = OUTLINED_FUNCTION_176();
  sub_2576BB9EC(v2, v3);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2576BABE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_257743A14();
  a4(0);
  v5 = OUTLINED_FUNCTION_176();
  sub_2576BB9EC(v5, v6);
  sub_2577435F4();
  return sub_257743A64();
}

void NeuralNetwork.Layer.Activation.ScaledTanhConfiguration.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  v3 = v0;
  OUTLINED_FUNCTION_16_1();
  v4 = sub_257743A84();
  OUTLINED_FUNCTION_63();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_64();
  type metadata accessor for NeuralNetwork.Layer.Activation.ScaledTanhConfiguration(v10);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_30_2();
  sub_2576B750C(v3, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_257743FF0;
  *(v12 + 48) = *v3;
  v13 = OUTLINED_FUNCTION_36_11(v12, 0x74757074756FLL);
  v14 = MEMORY[0x277D83A90];
  *(v13 + 72) = MEMORY[0x277D83A90];
  *(v13 + 80) = 0x6163537475706E69;
  v16 = OUTLINED_FUNCTION_91_3(v13, v14, v15);
  OUTLINED_FUNCTION_15_7(v16);
  (*(v6 + 104))(v1, *MEMORY[0x277D84C38], v4);
  OUTLINED_FUNCTION_12_18();
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

void sub_2576BAF40()
{
  OUTLINED_FUNCTION_31();
  v4 = v3;
  v5 = v0;
  OUTLINED_FUNCTION_16_1();
  v6 = sub_257743A84();
  OUTLINED_FUNCTION_63();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_64();
  v4(v12);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_30_2();
  sub_2576B750C(v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_257743FF0;
  *(v14 + 48) = *v5;
  v15 = OUTLINED_FUNCTION_31_12(v14, 25459);
  v16 = MEMORY[0x277D83A90];
  *(v15 + 72) = MEMORY[0x277D83A90];
  *(v15 + 80) = 0x74657366666FLL;
  v18 = OUTLINED_FUNCTION_91_3(v15, v16, v17);
  OUTLINED_FUNCTION_15_7(v18);
  (*(v8 + 104))(v1, *MEMORY[0x277D84C38], v6);
  OUTLINED_FUNCTION_12_18();
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

void NeuralNetwork.Layer.Activation.ParameterizedReluConfiguration.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_16_1();
  v3 = sub_257743A84();
  OUTLINED_FUNCTION_63();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_24_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_64();
  type metadata accessor for NeuralNetwork.Layer.Activation.ParameterizedReluConfiguration(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_30_2();
  sub_2576B750C(v0, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2577442B0;
  OUTLINED_FUNCTION_31_12(v11, 25459);
  *(v11 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  __swift_allocate_boxed_opaque_existential_0((v11 + 48));
  NeuralNetwork.Layer.Activation.ParameterizedReluConfiguration.scale.getter();
  v12 = sub_257743A74();
  OUTLINED_FUNCTION_15_7(v12);
  (*(v5 + 104))(v1, *MEMORY[0x277D84C38], v3);
  OUTLINED_FUNCTION_12_18();
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

void sub_2576BB370()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v0;
  OUTLINED_FUNCTION_88_3(v9);
  v10 = sub_257743A84();
  OUTLINED_FUNCTION_63();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v14);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_30_2();
  v7(0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  sub_2576B750C(v8, &v24 - v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2577442B0;
  *(v18 + 32) = v5;
  *(v18 + 40) = v3;
  v19 = *v8;
  *(v18 + 72) = MEMORY[0x277D83A90];
  *(v18 + 48) = v19;
  sub_257743A74();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  (*(v12 + 104))(v1, *MEMORY[0x277D84C38], v10);
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

void sub_2576BB5A8()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = v0;
  OUTLINED_FUNCTION_16_1();
  v4 = sub_257743A84();
  OUTLINED_FUNCTION_63();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_64();
  v2(v13);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  sub_2576B750C(v3, &v17 - v15);
  OUTLINED_FUNCTION_88_3(MEMORY[0x277D84F90]);
  v16 = sub_257743A74();
  OUTLINED_FUNCTION_15_7(v16);
  (*(v6 + 104))(v10, *MEMORY[0x277D84C38], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C08, &qword_2577709D0);
  sub_25748397C();
  sub_257743A94();
  OUTLINED_FUNCTION_35();
}

void NeuralNetwork.Layer.Activation.ParametricSoftplusConfiguration.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_16_1();
  v3 = sub_257743A84();
  OUTLINED_FUNCTION_63();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_24_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_64();
  type metadata accessor for NeuralNetwork.Layer.Activation.ParametricSoftplusConfiguration(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_30_2();
  sub_2576B750C(v0, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_257743FF0;
  OUTLINED_FUNCTION_36_11(v11, 0x74757074756FLL);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  *(v11 + 72) = v12;
  __swift_allocate_boxed_opaque_existential_0((v11 + 48));
  NeuralNetwork.Layer.Activation.ParametricSoftplusConfiguration.outputScale.getter();
  *(v11 + 80) = 0x6163537475706E69;
  *(v11 + 88) = 0xEA0000000000656CLL;
  *(v11 + 120) = v12;
  __swift_allocate_boxed_opaque_existential_0((v11 + 96));
  NeuralNetwork.Layer.Activation.ParametricSoftplusConfiguration.inputScale.getter();
  v13 = sub_257743A74();
  OUTLINED_FUNCTION_15_7(v13);
  (*(v5 + 104))(v1, *MEMORY[0x277D84C38], v3);
  OUTLINED_FUNCTION_12_18();
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2576BB9EC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_66_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2576BC210(uint64_t a1)
{
  result = type metadata accessor for NeuralNetwork.Layer.Activation.LinearConfiguration(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NeuralNetwork.Layer.Activation.ReluConfiguration(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for NeuralNetwork.Layer.Activation.LeakyReluConfiguration(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for NeuralNetwork.Layer.Activation.ThresholdedReluConfiguration(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for NeuralNetwork.Layer.Activation.ParameterizedReluConfiguration(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for NeuralNetwork.Layer.Activation.TanhConfiguration(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for NeuralNetwork.Layer.Activation.ScaledTanhConfiguration(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for NeuralNetwork.Layer.Activation.SigmoidConfiguration(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for NeuralNetwork.Layer.Activation.SigmoidHardConfiguration(319);
                  if (v10 <= 0x3F)
                  {
                    result = type metadata accessor for NeuralNetwork.Layer.Activation.ELUConfiguration(319);
                    if (v11 <= 0x3F)
                    {
                      result = type metadata accessor for NeuralNetwork.Layer.Activation.SoftsignConfiguration(319);
                      if (v12 <= 0x3F)
                      {
                        result = type metadata accessor for NeuralNetwork.Layer.Activation.SoftplusConfiguration(319);
                        if (v13 <= 0x3F)
                        {
                          result = type metadata accessor for NeuralNetwork.Layer.Activation.ParametricSoftplusConfiguration(319);
                          if (v14 <= 0x3F)
                          {
                            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                            return 0;
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
      }
    }
  }

  return result;
}

uint64_t sub_2576BC700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_36()
{

  return sub_2576B7568(v0, type metadata accessor for NeuralNetwork.Layer.Kind);
}

uint64_t OUTLINED_FUNCTION_31_12@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = a2 & 0xFFFF00000000FFFFLL | 0x656C610000;
  *(result + 40) = 0xE500000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_36_11@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = a2 & 0xFFFFFFFFFFFFLL | 0x6353000000000000;
  *(result + 40) = 0xEB00000000656C61;
  return result;
}

uint64_t OUTLINED_FUNCTION_55_6()
{

  return sub_2576B7568(v0, type metadata accessor for Proto_ActivationParams);
}

uint64_t OUTLINED_FUNCTION_56_4(uint64_t result, uint64_t a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2;
  strcpy((v2 + 64), "Output Scale");
  *(v2 + 77) = 0;
  *(v2 + 78) = -5120;
  return result;
}

uint64_t OUTLINED_FUNCTION_68_3(void *a1)
{
  *v1 = a1;
  *a1 = v2;

  return type metadata accessor for Proto_WeightParams(0);
}

uint64_t OUTLINED_FUNCTION_69_3()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_70_6(uint64_t result, uint64_t a2)
{
  v2[6] = result;
  v2[7] = a2;
  v2[8] = 0x74657366664FLL;
  v2[9] = 0xE600000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_71_4(uint64_t result, uint64_t a2)
{
  *(v2 - 112) = result;
  *(v2 - 104) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_73_1(uint64_t a1)
{
  *(a1 + 16) = *(v3 - 144);
  *(a1 + 32) = v1;
  *(a1 + 40) = v2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_75_6()
{
  __swift_getEnumTagSinglePayload(v3, 1, v0);

  return sub_2574695E4(v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_80_1(uint64_t a1, __n128 a2)
{
  *(v2 + 8) = a2;
  *(v2 + 24) = a2;
  *(v2 + 40) = a2;
  *(v2 + 56) = 0;

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_82_3()
{

  return swift_storeEnumTagMultiPayload();
}

void OUTLINED_FUNCTION_84_5()
{

  sub_257469D34();
}

uint64_t OUTLINED_FUNCTION_85_4(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_86_4()
{

  return sub_2574897E0(v0);
}

uint64_t OUTLINED_FUNCTION_87_3()
{

  return sub_257528334();
}

uint64_t OUTLINED_FUNCTION_90_1()
{

  return sub_2574A172C(v1 + v0, v4, v2, v3);
}

uint64_t OUTLINED_FUNCTION_91_3@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S1>)
{
  *(a1 + 88) = v3;
  *(a1 + 120) = a2;
  *(a1 + 96) = a3;

  return sub_257743A74();
}

uint64_t OUTLINED_FUNCTION_92_2(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 8);

  return __swift_storeEnumTagSinglePayload(v3, a2, 1, v5);
}

float OUTLINED_FUNCTION_94_2(uint64_t a1)
{
  *a1 = v1;
  result = *v1;
  *(a1 + 8) = *v1;
  return result;
}

uint64_t sub_2576BCD14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257743FF0;
  v23 = OUTLINED_FUNCTION_0_77(inited, 26191);
  v2 = *v0;
  v3 = *(*v0 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v24 = MEMORY[0x277D84F90];
    sub_257484040(0, v3, 0);
    v4 = v24;
    v5 = v2 + 32;
    do
    {
      v6 = sub_257743674();
      v8 = v7;
      v10 = *(v24 + 16);
      v9 = *(v24 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_257484040((v9 > 1), v10 + 1, 1);
      }

      *(v24 + 16) = v10 + 1;
      v11 = v24 + 24 * v10;
      *(v11 + 32) = v6;
      *(v11 + 40) = v8;
      *(v11 + 48) = 0;
      v5 += 8;
      --v3;
    }

    while (v3);
  }

  *(v23 + 48) = v4;
  *(v23 + 56) = 0;
  *(v23 + 64) = 1;
  *(v23 + 72) = 0x656C616353;
  *(v23 + 80) = 0xE500000000000000;
  v12 = v0[1];
  v13 = *(v12 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v25 = MEMORY[0x277D84F90];
    sub_257484040(0, v13, 0);
    v14 = v25;
    v15 = v12 + 32;
    do
    {
      v16 = sub_257743674();
      v18 = v17;
      v20 = *(v25 + 16);
      v19 = *(v25 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_257484040((v19 > 1), v20 + 1, 1);
      }

      *(v25 + 16) = v20 + 1;
      v21 = v25 + 24 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
      *(v21 + 48) = 0;
      v15 += 8;
      --v13;
    }

    while (v13);
  }

  *(v23 + 88) = v14;
  *(v23 + 96) = 0;
  *(v23 + 104) = 1;
  return sub_2576A6964(v23);
}

uint64_t ScalerConfiguration.offset.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t (*ScalerConfiguration.offset.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *v1;
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return sub_25749D854;
}

uint64_t ScalerConfiguration.scale.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t (*ScalerConfiguration.scale.modify(void *a1))(void *a1, char a2)
{
  v3 = *(v1 + 8);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return sub_25763F698;
}

uint64_t ScalerConfiguration.init(offset:scale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for Proto_Scaler(0);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a3 = a1;
  a3[1] = a2;
  return result;
}

BOOL static ScalerConfiguration.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  result = 0;
  if (sub_257479D04(*a1, *a2) & 1) != 0 && (sub_257479D04(a1[1], a2[1]))
  {
    type metadata accessor for Proto_Scaler(0);
    sub_2577431B4();
    sub_2576BD4E0(&qword_27F879B68, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t ScalerConfiguration.customMirror.getter()
{
  v1 = v0;
  v2 = sub_257743A84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  v9 = type metadata accessor for ScalerConfiguration(0);
  MEMORY[0x28223BE20](v9);
  sub_2576BD430(v1, &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_257743FF0;
  OUTLINED_FUNCTION_0_77(v11, 26223);
  v12 = *v1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F68, &qword_257744890);
  *(v11 + 48) = v12;
  *(v11 + 72) = v13;
  *(v11 + 80) = 0x656C616373;
  v14 = v1[1];
  *(v11 + 120) = v13;
  *(v11 + 88) = 0xE500000000000000;
  *(v11 + 96) = v14;
  v15 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v15);
  (*(v3 + 104))(v5, *MEMORY[0x277D84C38], v2);

  return sub_257743AA4();
}

uint64_t type metadata accessor for ScalerConfiguration(uint64_t a1)
{
  result = qword_281537D08;
  if (!qword_281537D08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2576BD430(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScalerConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2576BD4E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2576BD550(uint64_t a1)
{
  result = type metadata accessor for Proto_Scaler(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_77@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = a2 & 0xFFFF00000000FFFFLL | 0x746573660000;
  *(result + 40) = 0xE600000000000000;
  return result;
}

uint64_t sub_2576BD5D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for Proto_Int64Vector(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v9 = sub_257665DA0(sub_2576BD7B8, 0, a2, MEMORY[0x277D84A28], MEMORY[0x277D84A98], a3, MEMORY[0x277D84AC0], v8);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a4 = v9;
  return result;
}

uint64_t sub_2576BD6A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Proto_StringVector(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  (*(v7 + 16))(v9, a1, a2);
  v10 = sub_257743784();
  result = (*(v7 + 8))(a1, a2);
  *a4 = v10;
  return result;
}

uint64_t static NeuralNetwork.Layer.reshapeStatic(name:inputName:outputName:targetShape:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v25 = a5;
  v26 = a1;
  v27 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v24 - v12;
  v14 = type metadata accessor for NeuralNetwork.Layer.Kind(0);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v17 = (v16 - v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v18 = swift_allocObject();
  v24 = xmmword_2577442B0;
  *(v18 + 16) = xmmword_2577442B0;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  v19 = swift_allocObject();
  *(v19 + 16) = v24;
  *(v19 + 32) = v25;
  *(v19 + 40) = a6;
  *v17 = MEMORY[0x277D84F90];
  type metadata accessor for Proto_ReshapeStaticLayerParams(0);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();

  NeuralNetwork.Layer.ReshapeStaticParameters.targetShape.setter(v20);
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v21 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    swift_once();
  }

  *(a7 + v21) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v19);
  sub_2574897E0(v13);
  v22 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v22);
  sub_25752846C();
  return sub_257634BB4(v17);
}

uint64_t static NeuralNetwork.Layer.Kind.reshapeStatic(targetShape:)@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for Proto_ReshapeStaticLayerParams(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();

  NeuralNetwork.Layer.ReshapeStaticParameters.targetShape.setter(v1);
  type metadata accessor for NeuralNetwork.Layer.Kind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t NeuralNetwork.Layer.ReshapeStaticParameters.init(targetShape:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  type metadata accessor for Proto_ReshapeStaticLayerParams(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  return NeuralNetwork.Layer.ReshapeStaticParameters.targetShape.setter(a1);
}

uint64_t NeuralNetwork.Layer.ReshapeStaticParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  v2 = v1;
  *(v1 + 16) = xmmword_2577442B0;
  strcpy((v1 + 32), "Target Shape");
  *(v1 + 45) = 0;
  *(v1 + 46) = -5120;
  v3 = *v0;
  v4 = *(*v0 + 16);
  if (v4)
  {
    v16 = v1;
    v17 = MEMORY[0x277D84F90];
    sub_257483754(0, v4, 0);
    v5 = v3 + 32;
    do
    {
      v5 += 8;
      v6 = sub_257743974();
      v8 = v7;
      v10 = *(v17 + 16);
      v9 = *(v17 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_257483754((v9 > 1), v10 + 1, 1);
      }

      *(v17 + 16) = v10 + 1;
      v11 = v17 + 16 * v10;
      *(v11 + 32) = v6;
      *(v11 + 40) = v8;
      --v4;
    }

    while (v4);
    v2 = v16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
  sub_2574A16C8();
  v12 = sub_257743604();
  v14 = v13;

  *(v2 + 48) = v12;
  *(v2 + 56) = v14;
  return v2;
}

uint64_t NeuralNetwork.Layer.ReshapeStaticParameters.targetShape.getter()
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

uint64_t NeuralNetwork.Layer.ReshapeStaticParameters.targetShape.setter(uint64_t a1)
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

uint64_t (*NeuralNetwork.Layer.ReshapeStaticParameters.targetShape.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = NeuralNetwork.Layer.ReshapeStaticParameters.targetShape.getter();
  return sub_2576BDEA8;
}

uint64_t sub_2576BDEA8(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return NeuralNetwork.Layer.ReshapeStaticParameters.targetShape.setter(*a1);
  }

  NeuralNetwork.Layer.ReshapeStaticParameters.targetShape.setter(v2);
}

BOOL static NeuralNetwork.Layer.ReshapeStaticParameters.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (sub_257487374())
  {
    type metadata accessor for Proto_ReshapeStaticLayerParams(0);
    sub_2577431B4();
    sub_2576BE2D0(&qword_27F879B68, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t NeuralNetwork.Layer.ReshapeStaticParameters.customMirror.getter()
{
  v1 = sub_257743A84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v5 = v4 - v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = type metadata accessor for NeuralNetwork.Layer.ReshapeStaticParameters(0);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  sub_2576BE224(v0, v11 - v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2577442B0;
  *(v12 + 32) = 0x6853746567726174;
  *(v12 + 40) = 0xEB00000000657061;
  v13 = NeuralNetwork.Layer.ReshapeStaticParameters.targetShape.getter();
  *(v12 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879DF8, &qword_25776F230);
  *(v12 + 48) = v13;
  v14 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v14);
  (*(v2 + 104))(v5, *MEMORY[0x277D84C38], v1);
  return sub_257743AA4();
}

uint64_t type metadata accessor for NeuralNetwork.Layer.ReshapeStaticParameters(uint64_t a1)
{
  result = qword_27F881028;
  if (!qword_27F881028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2576BE224(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NeuralNetwork.Layer.ReshapeStaticParameters(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2576BE2D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2576BE340(uint64_t a1)
{
  result = type metadata accessor for Proto_ReshapeStaticLayerParams(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2576BE3AC()
{
  OUTLINED_FUNCTION_31();
  v0 = type metadata accessor for FeatureVectorizerConfiguration.Input(0);
  v1 = OUTLINED_FUNCTION_24(v0);
  v3 = v2;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v6 = (v5 - v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2577442B0;
  v8 = OUTLINED_FUNCTION_14_18(inited, 28233);
  v9 = *(v8 + 16);
  if (v9)
  {
    v22 = MEMORY[0x277D84F90];
    sub_257484040(0, v9, 0);
    v10 = v22;
    OUTLINED_FUNCTION_193();
    v12 = v8 + v11;
    v21 = *(v3 + 72);
    while (1)
    {
      OUTLINED_FUNCTION_0_78();
      sub_2576BF5A4();
      v13 = swift_initStackObject();
      *(v13 + 16) = xmmword_257743FF0;
      *(v13 + 32) = 1701667150;
      *(v13 + 40) = 0xE400000000000000;
      MEMORY[0x259C64E90](*v6, v6[1]);
      MEMORY[0x259C64E90](34, 0xE100000000000000);
      *(v13 + 48) = 34;
      *(v13 + 56) = 0xE100000000000000;
      *(v13 + 64) = 0;
      *(v13 + 72) = 1702521171;
      *(v13 + 80) = 0xE400000000000000;
      if ((v6[2] & 0x8000000000000000) != 0)
      {
        break;
      }

      *(v13 + 88) = sub_257743674();
      *(v13 + 96) = v14;
      *(v13 + 104) = 0;
      v15 = sub_2576A6964(v13);
      v17 = v16;
      sub_2576BF600(v6);
      v19 = *(v22 + 16);
      v18 = *(v22 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_257484040((v18 > 1), v19 + 1, 1);
      }

      *(v22 + 16) = v19 + 1;
      v20 = v22 + 24 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
      *(v20 + 48) = 2;
      v12 += v21;
      if (!--v9)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
LABEL_9:
    *(inited + 48) = v10;
    *(inited + 56) = 0;
    *(inited + 64) = 1;
    sub_2576A6964(inited);
    OUTLINED_FUNCTION_35();
  }
}

uint64_t FeatureVectorizerConfiguration.inputs.getter()
{
  v1 = type metadata accessor for FeatureVectorizerConfiguration.Input(0);
  v2 = OUTLINED_FUNCTION_24(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v3 = *v0;
  v4 = *(*v0 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v14 = MEMORY[0x277D84F90];
    sub_2574840A0(0, v4, 0);
    v5 = v14;
    v6 = type metadata accessor for Proto_FeatureVectorizer.InputColumn(0);
    OUTLINED_FUNCTION_24(v6);
    v8 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v10 = *(v9 + 72);
    do
    {
      OUTLINED_FUNCTION_4_44();
      sub_2576BF5A4();
      v12 = *(v14 + 16);
      v11 = *(v14 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_2574840A0(v11 > 1, v12 + 1, 1);
      }

      *(v14 + 16) = v12 + 1;
      OUTLINED_FUNCTION_193();
      sub_2576BF65C();
      v8 += v10;
      --v4;
    }

    while (v4);
  }

  return v5;
}

uint64_t FeatureVectorizerConfiguration.Input.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FeatureVectorizerConfiguration.Input.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void FeatureVectorizerConfiguration.inputs.setter()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = type metadata accessor for FeatureVectorizerConfiguration.Input(0);
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = v5;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = type metadata accessor for Proto_FeatureVectorizer.InputColumn(0);
  v11 = OUTLINED_FUNCTION_24(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v12 = *(v2 + 16);
  if (v12)
  {
    v19 = MEMORY[0x277D84F90];
    sub_257484ED0(0, v12, 0);
    v13 = v19;
    OUTLINED_FUNCTION_193();
    v15 = v2 + v14;
    v16 = *(v6 + 72);
    do
    {
      OUTLINED_FUNCTION_0_78();
      sub_2576BF5A4();
      OUTLINED_FUNCTION_4_44();
      sub_2576BF5A4();
      sub_2576BF600(v9);
      v18 = *(v19 + 16);
      v17 = *(v19 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_257484ED0(v17 > 1, v18 + 1, 1);
      }

      *(v19 + 16) = v18 + 1;
      OUTLINED_FUNCTION_193();
      sub_2576BF65C();
      v15 += v16;
      --v12;
    }

    while (v12);
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  *v0 = v13;
  OUTLINED_FUNCTION_35();
}

void (*FeatureVectorizerConfiguration.inputs.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = FeatureVectorizerConfiguration.inputs.getter();
  return sub_2576BEAEC;
}

void sub_2576BEAEC(uint64_t a1, char a2)
{
  if (a2)
  {

    FeatureVectorizerConfiguration.inputs.setter();
  }

  else
  {
    FeatureVectorizerConfiguration.inputs.setter();
  }
}

uint64_t FeatureVectorizerConfiguration.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for Proto_FeatureVectorizer(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

void FeatureVectorizerConfiguration.init(inputs:)(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for Proto_FeatureVectorizer(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  FeatureVectorizerConfiguration.inputs.setter();
}

BOOL static FeatureVectorizerConfiguration.== infix(_:_:)()
{
  OUTLINED_FUNCTION_267();
  sub_257479344();
  result = 0;
  if (v0)
  {
    type metadata accessor for Proto_FeatureVectorizer(0);
    sub_2577431B4();
    OUTLINED_FUNCTION_3_57();
    v3 = sub_2576BF6B8(v1, v2, MEMORY[0x277D216D0]);
    if (OUTLINED_FUNCTION_4_2(v3))
    {
      return 1;
    }
  }

  return result;
}

void FeatureVectorizerConfiguration.customMirror.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v20;
  a20 = v21;
  v22 = sub_257743A84();
  OUTLINED_FUNCTION_63();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3();
  v28 = v27 - v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &a9 - v30;
  type metadata accessor for FeatureVectorizerConfiguration(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3();
  sub_2576BF5A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_2577442B0;
  v34 = OUTLINED_FUNCTION_14_18(v33, 28265);
  *(v33 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881038, &qword_257772E50);
  *(v33 + 48) = v34;
  v35 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v31, 1, 1, v35);
  (*(v24 + 104))(v28, *MEMORY[0x277D84C38], v22);
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2576BEF34(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return FeatureVectorizerConfiguration.Input.name.setter(v1, v2);
}

uint64_t (*FeatureVectorizerConfiguration.Input.name.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *v1;
  v3 = v1[1];
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_25749BD04;
}

uint64_t FeatureVectorizerConfiguration.Input.size.getter()
{
  result = *(v0 + 16);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t FeatureVectorizerConfiguration.Input.size.setter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 16) = result;
  }

  return result;
}

uint64_t *(*FeatureVectorizerConfiguration.Input.size.modify(uint64_t *(*result)(uint64_t *result, char a2)))(uint64_t *result, char a2)
{
  *(result + 1) = v1;
  v2 = *(v1 + 16);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    *result = v2;
    return sub_257664ACC;
  }

  return result;
}

uint64_t FeatureVectorizerConfiguration.Input.init(name:size:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0xE000000000000000;
  a4[2] = 0;
  type metadata accessor for Proto_FeatureVectorizer.InputColumn(0);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a4 = a1;
  a4[1] = a2;
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    a4[2] = a3;
  }

  return result;
}

BOOL static FeatureVectorizerConfiguration.Input.== infix(_:_:)()
{
  OUTLINED_FUNCTION_267();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  result = 0;
  if (v3 || (sub_257743994()) && *(v1 + 16) == v0[2])
  {
    type metadata accessor for Proto_FeatureVectorizer.InputColumn(0);
    sub_2577431B4();
    OUTLINED_FUNCTION_3_57();
    v6 = sub_2576BF6B8(v4, v5, MEMORY[0x277D216D0]);
    if (OUTLINED_FUNCTION_4_2(v6))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_2576BF170(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_8_33();

  return sub_2577435F4();
}

uint64_t sub_2576BF224(uint64_t (*a1)(void))
{
  sub_257743A14();
  a1(0);
  OUTLINED_FUNCTION_8_33();
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2576BF2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_257743A14();
  a4(0);
  OUTLINED_FUNCTION_8_33();
  sub_2577435F4();
  return sub_257743A64();
}

void FeatureVectorizerConfiguration.Input.customMirror.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v24 = sub_257743A84();
  OUTLINED_FUNCTION_63();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3();
  v30 = v29 - v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &a9 - v32;
  type metadata accessor for FeatureVectorizerConfiguration.Input(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_78();
  sub_2576BF5A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_257743FF0;
  *(v35 + 32) = 1701667182;
  *(v35 + 40) = 0xE400000000000000;
  v36 = v23[1];
  v37 = MEMORY[0x277D837D0];
  *(v35 + 48) = *v23;
  *(v35 + 56) = v36;
  *(v35 + 72) = v37;
  *(v35 + 80) = 1702521203;
  *(v35 + 88) = 0xE400000000000000;
  v38 = v23[2];
  if (v38 < 0)
  {
    __break(1u);
  }

  else
  {
    *(v35 + 120) = MEMORY[0x277D83B88];
    *(v35 + 96) = v38;
    v39 = sub_257743A74();
    __swift_storeEnumTagSinglePayload(v33, 1, 1, v39);
    (*(v26 + 104))(v30, *MEMORY[0x277D84C38], v24);

    sub_257743AA4();
    OUTLINED_FUNCTION_35();
  }
}

uint64_t sub_2576BF5A4()
{
  OUTLINED_FUNCTION_267();
  v2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_2576BF600(uint64_t a1)
{
  v2 = type metadata accessor for FeatureVectorizerConfiguration.Input(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2576BF65C()
{
  OUTLINED_FUNCTION_267();
  v2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 32))(v0, v1);
  return v0;
}

uint64_t sub_2576BF6B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2576BF8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_33()
{

  return sub_2576BF6B8(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_14_18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = a2 & 0xFFFF00000000FFFFLL | 0x737475700000;
  *(a1 + 40) = 0xE600000000000000;

  return FeatureVectorizerConfiguration.inputs.getter();
}

void *NeuralNetwork.SamePaddingParameters.propertyDescriptions.getter()
{
  if (*v0)
  {
    v1 = &unk_2868B4358;
  }

  else
  {
    v1 = &unk_2868B4318;
  }

  if (*(v0 + 8))
  {
    return v1;
  }

  else
  {
    return &unk_2868B4318;
  }
}

unsigned __int8 *NeuralNetwork.SamePaddingParameters.asymmetryMode.setter(unsigned __int8 *result)
{
  *v1 = *result;
  *(v1 + 8) = 1;
  return result;
}

uint64_t *(*NeuralNetwork.SamePaddingParameters.asymmetryMode.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = *(v1 + 8) == 1 && *v1 != 0;
  *(a1 + 8) = v2;
  return sub_2576BFAD8;
}

uint64_t *sub_2576BFAD8(uint64_t *result)
{
  v1 = *result;
  *v1 = *(result + 8);
  *(v1 + 8) = 1;
  return result;
}

uint64_t NeuralNetwork.SamePaddingParameters.init(asymmetryMode:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *a2 = 0;
  *(a2 + 8) = 1;
  type metadata accessor for Proto_SamePadding(0);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a2 = v3;
  *(a2 + 8) = 1;
  return result;
}

BOOL static NeuralNetwork.SamePaddingParameters.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  if (*(a2 + 8) == 1)
  {
    if (v3)
    {
      if (v2 != 1)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  type metadata accessor for Proto_SamePadding(0);
  sub_2577431B4();
  sub_2576C0010(&qword_27F879B68, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return (sub_257743644() & 1) != 0;
}

uint64_t NeuralNetwork.SamePaddingParameters.customMirror.getter()
{
  v1 = v0;
  v2 = sub_257743A84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for NeuralNetwork.SamePaddingParameters(0);
  MEMORY[0x28223BE20](v9);
  sub_2576BFEC0(v1, &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2577442B0;
  strcpy((v11 + 32), "asymmetryMode");
  *(v11 + 46) = -4864;
  *(v11 + 72) = &type metadata for NeuralNetwork.SamePaddingParameters.AsymmetryMode;
  v12 = *(v1 + 8) == 1 && *v1 != 0;
  *(v11 + 48) = v12;
  v13 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v13);
  (*(v3 + 104))(v5, *MEMORY[0x277D84C38], v2);
  return sub_257743AA4();
}

uint64_t type metadata accessor for NeuralNetwork.SamePaddingParameters(uint64_t a1)
{
  result = qword_27F881078;
  if (!qword_27F881078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2576BFEC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NeuralNetwork.SamePaddingParameters(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t NeuralNetwork.SamePaddingParameters.AsymmetryMode.hashValue.getter()
{
  v1 = *v0;
  sub_257743A14();
  MEMORY[0x259C651F0](v1);
  return sub_257743A64();
}

uint64_t sub_2576C0010(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2576C005C()
{
  result = qword_27F881060;
  if (!qword_27F881060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881060);
  }

  return result;
}

unint64_t sub_2576C00B4()
{
  result = qword_27F881068;
  if (!qword_27F881068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F881070, &qword_2577730A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881068);
  }

  return result;
}

uint64_t sub_2576C0154(uint64_t a1)
{
  result = type metadata accessor for Proto_SamePadding(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s21SamePaddingParametersV13AsymmetryModeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_2576C029C()
{
  OUTLINED_FUNCTION_31();
  v0 = type metadata accessor for DenseSupportVector(0);
  v1 = OUTLINED_FUNCTION_24(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v4 = v3 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257743FF0;
  *(inited + 32) = 0x657372617053;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = xmmword_257773140;
  *(inited + 64) = 0;
  *(inited + 72) = 0x73726F74636556;
  *(inited + 80) = 0xE700000000000000;
  v6 = *(DenseSupportVectorCollection.vectors.getter() + 16);
  if (v6)
  {
    v25 = inited;
    v30 = MEMORY[0x277D84F90];
    sub_257484040(0, v6, 0);
    v7 = 0;
    v8 = v30;
    OUTLINED_FUNCTION_193();
    v27 = v4;
    v26 = v6;
    do
    {
      OUTLINED_FUNCTION_1_61();
      sub_2576C20EC(v9, v4);
      v10 = *v4;
      v11 = *(*v4 + 16);
      if (v11)
      {
        v28 = v7;
        v29 = MEMORY[0x277D84F90];
        sub_257484040(0, v11, 0);
        v12 = v29;
        v13 = v10 + 32;
        do
        {
          v14 = sub_257743674();
          v16 = v15;
          v18 = *(v29 + 16);
          v17 = *(v29 + 24);
          if (v18 >= v17 >> 1)
          {
            v20 = OUTLINED_FUNCTION_174(v17);
            sub_257484040(v20, v18 + 1, 1);
          }

          *(v29 + 16) = v18 + 1;
          v19 = v29 + 24 * v18;
          *(v19 + 32) = v14;
          *(v19 + 40) = v16;
          *(v19 + 48) = 0;
          v13 += 8;
          --v11;
        }

        while (v11);
        v4 = v27;
        v6 = v26;
        v7 = v28;
      }

      else
      {
        v12 = MEMORY[0x277D84F90];
      }

      OUTLINED_FUNCTION_2_51();
      sub_2576C2AC8();
      v22 = *(v30 + 16);
      v21 = *(v30 + 24);
      if (v22 >= v21 >> 1)
      {
        v24 = OUTLINED_FUNCTION_174(v21);
        sub_257484040(v24, v22 + 1, 1);
      }

      ++v7;
      *(v30 + 16) = v22 + 1;
      v23 = v30 + 24 * v22;
      *(v23 + 32) = v12;
      *(v23 + 40) = 0;
      *(v23 + 48) = 1;
    }

    while (v7 != v6);

    inited = v25;
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  *(inited + 88) = v8;
  *(inited + 96) = 0;
  *(inited + 104) = 1;
  sub_2576A6964(inited);
  OUTLINED_FUNCTION_35();
}

uint64_t DenseSupportVectorCollection.vectors.getter()
{
  v1 = type metadata accessor for DenseSupportVector(0);
  v2 = OUTLINED_FUNCTION_24(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v5 = v4 - v3;
  v6 = *v0;
  v7 = *(*v0 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v19 = MEMORY[0x277D84F90];
    sub_2574836CC(0, v7, 0);
    v8 = v19;
    v9 = type metadata accessor for Proto_DenseVector(0);
    OUTLINED_FUNCTION_24(v9);
    v11 = v6 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v13 = *(v12 + 72);
    do
    {
      OUTLINED_FUNCTION_0_79();
      sub_2576C20EC(v11, v5);
      v15 = *(v19 + 16);
      v14 = *(v19 + 24);
      if (v15 >= v14 >> 1)
      {
        v17 = OUTLINED_FUNCTION_174(v14);
        sub_2574836CC(v17, v15 + 1, 1);
      }

      *(v19 + 16) = v15 + 1;
      OUTLINED_FUNCTION_193();
      OUTLINED_FUNCTION_7_35();
      sub_2576C2148(v5, v16);
      v11 += v13;
      --v7;
    }

    while (v7);
  }

  return v8;
}

void DenseSupportVectorCollection.vectors.setter()
{
  OUTLINED_FUNCTION_31();
  v2 = OUTLINED_FUNCTION_376();
  v3 = type metadata accessor for DenseSupportVector(v2);
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = v5;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = type metadata accessor for Proto_DenseVector(0);
  v11 = OUTLINED_FUNCTION_24(v10);
  v13 = v12;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  v17 = *(v0 + 16);
  if (v17)
  {
    v26 = MEMORY[0x277D84F90];
    sub_257483F90(0, v17, 0);
    v18 = v26;
    OUTLINED_FUNCTION_193();
    v20 = v0 + v19;
    v21 = *(v6 + 72);
    do
    {
      OUTLINED_FUNCTION_1_61();
      sub_2576C20EC(v20, v9);
      OUTLINED_FUNCTION_0_79();
      sub_2576C20EC(v9, v16);
      OUTLINED_FUNCTION_2_51();
      sub_2576C2AC8();
      v23 = *(v26 + 16);
      v22 = *(v26 + 24);
      if (v23 >= v22 >> 1)
      {
        v25 = OUTLINED_FUNCTION_174(v22);
        sub_257483F90(v25, v23 + 1, 1);
      }

      *(v26 + 16) = v23 + 1;
      OUTLINED_FUNCTION_193();
      sub_2576C2148(v16, v26 + v24 + *(v13 + 72) * v23);
      v20 += v21;
      --v17;
    }

    while (v17);
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  *v1 = v18;
  OUTLINED_FUNCTION_35();
}

void (*DenseSupportVectorCollection.vectors.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = DenseSupportVectorCollection.vectors.getter();
  return sub_2576C0998;
}

void sub_2576C0998(uint64_t a1, char a2)
{
  if (a2)
  {

    DenseSupportVectorCollection.vectors.setter();
  }

  else
  {
    DenseSupportVectorCollection.vectors.setter();
  }
}

void DenseSupportVectorCollection.init(vectors:)(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for Proto_DenseSupportVectors(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  DenseSupportVectorCollection.vectors.setter();
}

uint64_t DenseSupportVectorCollection.startIndex.getter()
{
  DenseSupportVectorCollection.vectors.getter();

  return 0;
}

uint64_t DenseSupportVectorCollection.count.getter()
{
  v0 = *(DenseSupportVectorCollection.vectors.getter() + 16);

  return v0;
}

Swift::Int __swiftcall DenseSupportVectorCollection.index(after:)(Swift::Int after)
{
  DenseSupportVectorCollection.vectors.getter();

  result = after + 1;
  if (__OFADD__(after, 1))
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall DenseSupportVectorCollection.index(before:)(Swift::Int before)
{
  DenseSupportVectorCollection.vectors.getter();

  result = before - 1;
  if (__OFSUB__(before, 1))
  {
    __break(1u);
  }

  return result;
}

uint64_t DenseSupportVectorCollection.subscript.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = DenseSupportVectorCollection.vectors.getter();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(result + 16) <= a1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = type metadata accessor for DenseSupportVector(0);
  OUTLINED_FUNCTION_24(v5);
  OUTLINED_FUNCTION_1_61();
  sub_2576C20EC(v6, a2);
}

void sub_2576C0BE0(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = type metadata accessor for DenseSupportVector(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a3;
  sub_2576C20EC(a1, v7);
  DenseSupportVectorCollection.subscript.setter(v7, v8);
}

void DenseSupportVectorCollection.subscript.setter(uint64_t a1, unint64_t a2)
{
  v4 = DenseSupportVectorCollection.vectors.getter();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_25767A108(v4, v5, v6, v7);
  v4 = v11;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v4 + 16) > a2)
  {
    v8 = type metadata accessor for DenseSupportVector(0);
    OUTLINED_FUNCTION_24(v8);
    sub_2576C21A4(a1, v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v10 + 72) * a2);
    DenseSupportVectorCollection.vectors.setter();
    OUTLINED_FUNCTION_2_51();
    sub_2576C2AC8();
    return;
  }

LABEL_7:
  __break(1u);
}

void (*DenseSupportVectorCollection.subscript.modify(unint64_t *a1, unint64_t a2))(unint64_t *a1, char a2)
{
  *a1 = a2;
  a1[1] = v2;
  v5 = type metadata accessor for DenseSupportVector(0);
  OUTLINED_FUNCTION_24(v5);
  v7 = *(v6 + 64);
  a1[2] = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  a1[3] = v8;
  result = DenseSupportVectorCollection.vectors.getter();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(result + 2) > a2)
  {
    OUTLINED_FUNCTION_193();
    OUTLINED_FUNCTION_1_61();
    sub_2576C20EC(v10, v8);

    return sub_2576C0E5C;
  }

  __break(1u);
  return result;
}

void sub_2576C0E5C(unint64_t *a1, char a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *a1;
  if (a2)
  {
    sub_2576C20EC(a1[3], v2);
    DenseSupportVectorCollection.subscript.setter(v2, v4);
    OUTLINED_FUNCTION_2_51();
    sub_2576C2AC8();
  }

  else
  {
    DenseSupportVectorCollection.subscript.setter(a1[3], v4);
  }

  free(v3);

  free(v2);
}

void (*sub_2576C0EF8(void *a1, unint64_t *a2))(uint64_t a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v5;
  v5[1] = v2;
  v6 = *(type metadata accessor for DenseSupportVector(0) - 8);
  v7 = *(v6 + 64);
  v5[2] = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = *a2;
  v5[3] = v8;
  v5[4] = v9;
  v10 = DenseSupportVectorCollection.vectors.getter();
  v11 = j__OUTLINED_FUNCTION_289();
  sub_2576C1F00(v9, v11 & 1, v10);
  if (v11)
  {
    sub_2576C20EC(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v9, v8);
LABEL_3:

    return sub_2576C1084;
  }

  result = sub_2576A8914();
  if (v7 == 8)
  {
    *v5 = result;
    sub_2576C20EC(v5, v8);
    swift_unknownObjectRelease();
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

void sub_2576C1084(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 16);
  if (a2)
  {
    sub_2576C20EC(*(*a1 + 24), v5);
    DenseSupportVectorCollection.subscript.setter(v5, v4);
    OUTLINED_FUNCTION_2_51();
    sub_2576C2AC8();
  }

  else
  {
    DenseSupportVectorCollection.subscript.setter(*(*a1 + 24), v4);
  }

  free(v3);
  free(v5);

  free(v2);
}

uint64_t (*sub_2576C1138(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_25771F560();
  return sub_25767A6E8;
}

void sub_2576C119C(uint64_t *a1@<X8>, uint64_t (*a2)(char *)@<X0>, uint64_t a3@<X1>)
{
  sub_25771FD54(a2, a3);
  if (!v3)
  {
    *a1 = v5;
  }
}

uint64_t sub_2576C11D4@<X0>(void *a1@<X8>)
{
  result = DenseSupportVectorCollection.startIndex.getter();
  *a1 = 0;
  return result;
}

uint64_t sub_2576C11FC@<X0>(uint64_t *a1@<X8>)
{
  result = DenseSupportVectorCollection.count.getter();
  *a1 = result;
  return result;
}

void (*sub_2576C1224(uint64_t a1, unint64_t *a2))(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_376();
  v5 = type metadata accessor for DenseSupportVector(v4);
  OUTLINED_FUNCTION_24(v5);
  v7 = *(v6 + 64);
  v8 = __swift_coroFrameAllocStub(v7);
  v2[1] = v8;
  v9 = *a2;
  v10 = DenseSupportVectorCollection.vectors.getter();
  v11 = j__OUTLINED_FUNCTION_289();
  sub_2576C1F00(v9, v11 & 1, v10);
  if (v11)
  {
    OUTLINED_FUNCTION_193();
    OUTLINED_FUNCTION_1_61();
    sub_2576C20EC(v12, v8);
LABEL_3:

    return sub_2576C1358;
  }

  result = sub_2576A8914();
  if (v7 == 8)
  {
    *v2 = result;
    OUTLINED_FUNCTION_1_61();
    sub_2576C20EC(v2, v8);
    swift_unknownObjectRelease();
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

void sub_2576C1358(uint64_t a1)
{
  v1 = *(a1 + 8);
  OUTLINED_FUNCTION_2_51();
  sub_2576C2AC8();

  free(v1);
}

uint64_t sub_2576C13A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_257720460();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Int sub_2576C1408(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6_31(a1);
  result = DenseSupportVectorCollection.index(after:)(v2);
  *v1 = result;
  return result;
}

void sub_2576C1430()
{
  OUTLINED_FUNCTION_31();
  v4 = OUTLINED_FUNCTION_376();
  v5 = type metadata accessor for DenseSupportVector(v4);
  v6 = OUTLINED_FUNCTION_13(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v7 = OUTLINED_FUNCTION_17_21();
  if (!v7)
  {
    if (__OFADD__(v3, 1))
    {
      goto LABEL_12;
    }

    *v0 = v3 + 1;
    OUTLINED_FUNCTION_35();
    return;
  }

  v8 = v7;
  v19 = sub_2576C1F20();
  sub_257695CC8(v8);
  if (v8 < 0)
  {
    goto LABEL_13;
  }

  v9 = j__OUTLINED_FUNCTION_289();
  while (1)
  {
    if (v9)
    {
      v10 = type metadata accessor for Proto_DenseVector(0);
      OUTLINED_FUNCTION_24(v10);
      OUTLINED_FUNCTION_0_79();
      sub_2576C20EC(v11, v1);
      goto LABEL_8;
    }

    sub_2576A8300();
    v12 = OUTLINED_FUNCTION_30();
    v13 = type metadata accessor for Proto_DenseVector(v12);
    OUTLINED_FUNCTION_13(v13);
    if (*(v14 + 64) != 8)
    {
      break;
    }

    v18 = &v19;
    OUTLINED_FUNCTION_0_79();
    sub_2576C20EC(&v18, v1);
    swift_unknownObjectRelease();
LABEL_8:
    OUTLINED_FUNCTION_5_43();
    sub_2576C1F44(v15);
    v16 = *(v19 + 16);
    sub_2576C1FD0(v16, v2);
    OUTLINED_FUNCTION_8_34();
    sub_2576C204C(v16, v1, v17);
    nullsub_6();
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
}

Swift::Int sub_2576C15EC(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6_31(a1);
  result = DenseSupportVectorCollection.index(before:)(v2);
  *v1 = result;
  return result;
}

void sub_2576C1614()
{
  OUTLINED_FUNCTION_31();
  v4 = OUTLINED_FUNCTION_376();
  v5 = type metadata accessor for DenseSupportVector(v4);
  v6 = OUTLINED_FUNCTION_13(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v7 = OUTLINED_FUNCTION_17_21();
  if (!v7)
  {
    if (__OFSUB__(v3, 1))
    {
      goto LABEL_12;
    }

    *v0 = v3 - 1;
    OUTLINED_FUNCTION_35();
    return;
  }

  v8 = v7;
  v19 = sub_2576C1F20();
  sub_257695CC8(v8);
  if (v8 < 0)
  {
    goto LABEL_13;
  }

  v9 = j__OUTLINED_FUNCTION_289();
  while (1)
  {
    if (v9)
    {
      v10 = type metadata accessor for Proto_DenseVector(0);
      OUTLINED_FUNCTION_24(v10);
      OUTLINED_FUNCTION_0_79();
      sub_2576C20EC(v11, v1);
      goto LABEL_8;
    }

    sub_2576A8300();
    v12 = OUTLINED_FUNCTION_30();
    v13 = type metadata accessor for Proto_DenseVector(v12);
    OUTLINED_FUNCTION_13(v13);
    if (*(v14 + 64) != 8)
    {
      break;
    }

    v18 = &v19;
    OUTLINED_FUNCTION_0_79();
    sub_2576C20EC(&v18, v1);
    swift_unknownObjectRelease();
LABEL_8:
    OUTLINED_FUNCTION_5_43();
    sub_2576C1F44(v15);
    v16 = *(v19 + 16);
    sub_2576C1FD0(v16, v2);
    OUTLINED_FUNCTION_8_34();
    sub_2576C204C(v16, v1, v17);
    nullsub_6();
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t sub_2576C17D0@<X0>(uint64_t a1@<X8>)
{
  sub_2576C20EC(v1, a1);
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880E28, &unk_257771B78) + 36);
  DenseSupportVectorCollection.vectors.getter();

  result = sub_2576C2AC8();
  *(a1 + v3) = 0;
  return result;
}

uint64_t DenseSupportVector.values.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t (*DenseSupportVector.values.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *v1;
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return sub_25749D854;
}

BOOL sub_2576C1940(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  result = 0;
  if (a3(*a1, *a2))
  {
    a4(0);
    sub_2577431B4();
    sub_2576C2250(&qword_27F879B68);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_2576C1A04@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  type metadata accessor for Proto_DenseVector(0);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a2 = a1;
  return result;
}

Swift::Int __swiftcall DenseSupportVector.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall DenseSupportVector.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

unint64_t DenseSupportVector.subscript.getter(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (*(*v1 + 16) <= result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void DenseSupportVector.subscript.setter(unint64_t a1, double a2)
{
  v5 = *v2;

  v9 = v5;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_25767A0F0(v5, v6, v7, v8);
  v9 = v10;
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v9 + 16) > a1)
  {
    *(v9 + 8 * a1 + 32) = a2;

    *v2 = v9;
    return;
  }

LABEL_7:
  __break(1u);
}

void (*DenseSupportVector.subscript.modify(void (*result)(uint64_t a1), unint64_t a2))(uint64_t a1)
{
  *(result + 1) = a2;
  *(result + 2) = v2;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v2 + 16) > a2)
  {
    *result = *(*v2 + 8 * a2 + 32);
    return sub_2576C1BB4;
  }

  __break(1u);
  return result;
}

void (*sub_2576C1BEC(uint64_t *a1, unint64_t *a2))(uint64_t a1)
{
  v4 = *a2;
  a1[1] = v2;
  a1[2] = v4;
  v5 = DenseSupportVector.values.getter();
  v6 = j__OUTLINED_FUNCTION_289();
  sub_2576C1F00(v4, v6 & 1, v5);
  if (v6)
  {
    v7 = *(v5 + 8 * v4 + 32);
  }

  else
  {
    v7 = sub_2576A852C(v4, v5);
    swift_unknownObjectRelease();
  }

  *a1 = v7;
  return sub_2576C1C88;
}

uint64_t (*sub_2576C1CC0(void *a1, uint64_t *a2))()
{
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[4] = sub_25771F680(v4, *a2, a2[1]);
  return sub_257679C3C;
}

unint64_t sub_2576C1D24@<X0>(unint64_t *a1@<X8>, unint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25771FD6C(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_2576C1D5C@<X0>(uint64_t *a1@<X8>)
{
  result = DenseSupportVector.count.getter();
  *a1 = result;
  return result;
}

void (*sub_2576C1D84(uint64_t *a1, unint64_t *a2))()
{
  v3 = *a2;
  v4 = DenseSupportVector.values.getter();
  v5 = j__OUTLINED_FUNCTION_289();
  sub_2576C1F00(v3, v5 & 1, v4);
  if (v5)
  {
    v6 = *(v4 + 8 * v3 + 32);
  }

  else
  {
    v6 = sub_2576A852C(v3, v4);
    swift_unknownObjectRelease();
  }

  *a1 = v6;
  return nullsub_6;
}

uint64_t sub_2576C1E28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2577245A4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Int sub_2576C1E58(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6_31(a1);
  result = DenseSupportVector.index(after:)(v2);
  *v1 = result;
  return result;
}

Swift::Int sub_2576C1E80(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6_31(a1);
  result = DenseSupportVector.index(before:)(v2);
  *v1 = result;
  return result;
}

uint64_t sub_2576C1EA8@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_7_35();
  sub_2576C2148(v2, v3);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880E18, &qword_257771B68);
  *(a1 + *(result + 36)) = 0;
  return result;
}

unint64_t sub_2576C1F00(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2576C1F44(uint64_t (*a1)(void, uint64_t, uint64_t))
{
  v2 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v2;
  if ((result & 1) == 0)
  {
    v4 = *(v2 + 16) + 1;

    return a1(0, v4, 1);
  }

  return result;
}

uint64_t sub_2576C1FD0(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    return a2(v3 > 1);
  }

  return result;
}

uint64_t sub_2576C204C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  *(v6 + 16) = a1 + 1;
  v7 = a3(0);
  OUTLINED_FUNCTION_24(v7);
  return sub_2576C2148(a2, v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v9 + 72) * a1);
}

uint64_t sub_2576C20EC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_2576C2148(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_2576C21A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DenseSupportVector(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_2576C2250(uint64_t a1)
{
  result = OUTLINED_FUNCTION_21_23(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2576C234C()
{
  result = qword_27F8810C0;
  if (!qword_27F8810C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8810C0);
  }

  return result;
}

unint64_t sub_2576C247C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_21_23(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8810B8, &qword_257773210);
    sub_2576C234C();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2576C2540(uint64_t a1)
{
  result = OUTLINED_FUNCTION_21_23(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F881098, &qword_257777600);
    OUTLINED_FUNCTION_6_42();
    sub_2576C2250(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2576C2658()
{
  result = qword_27F881110;
  if (!qword_27F881110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F881118, &qword_257773490);
    sub_2576C2250(&unk_27F881120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881110);
  }

  return result;
}

unint64_t sub_2576C2758()
{
  result = qword_27F881130;
  if (!qword_27F881130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F881118, &qword_257773490);
    sub_2576C2250(&unk_27F881138);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881130);
  }

  return result;
}

unint64_t sub_2576C289C()
{
  result = qword_27F881150;
  if (!qword_27F881150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F881118, &qword_257773490);
    sub_2576C2250(&unk_27F881128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881150);
  }

  return result;
}

unint64_t sub_2576C2994(uint64_t a1)
{
  result = OUTLINED_FUNCTION_21_23(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_2576C2A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2576C2AC8()
{
  v1 = OUTLINED_FUNCTION_376();
  v2(v1);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t OUTLINED_FUNCTION_17_21()
{
  v2 = *v0;

  return OUTLINED_FUNCTION_32(v2);
}

__n128 *NeuralNetwork.Layer.RangeStaticParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_2_52(v0, xmmword_2577442C0);
  v0[3].n128_u64[0] = sub_257743794();
  v0[3].n128_u64[1] = v1;
  v0[4].n128_u64[0] = 6581829;
  v0[4].n128_u64[1] = 0xE300000000000000;
  v0[5].n128_u64[0] = sub_257743794();
  v0[5].n128_u64[1] = v2;
  v0[6].n128_u64[0] = 1885697107;
  v0[6].n128_u64[1] = 0xE400000000000000;
  v0[7].n128_u64[0] = sub_257743794();
  v0[7].n128_u64[1] = v3;
  return v0;
}

uint64_t NeuralNetwork.Layer.RangeStaticParameters.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  type metadata accessor for Proto_RangeStaticLayerParams(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL static NeuralNetwork.Layer.RangeStaticParameters.== infix(_:_:)(float *a1, float *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    OUTLINED_FUNCTION_83_1(a1);
    if (v4)
    {
      if (*(v3 + 8) == *(v2 + 8))
      {
        type metadata accessor for Proto_RangeStaticLayerParams(0);
        sub_2577431B4();
        OUTLINED_FUNCTION_0_80();
        v7 = sub_2576C2FDC(v5, v6, MEMORY[0x277D216D0]);
        if (OUTLINED_FUNCTION_4_2(v7))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

__n128 *NeuralNetwork.Layer.RangeDynamicParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_2_52(v0, xmmword_257743FF0);
  v0[3].n128_u64[0] = sub_257743794();
  v0[3].n128_u64[1] = v1;
  v0[4].n128_u64[0] = 1885697107;
  v0[4].n128_u64[1] = 0xE400000000000000;
  v0[5].n128_u64[0] = sub_257743794();
  v0[5].n128_u64[1] = v2;
  return v0;
}

uint64_t NeuralNetwork.Layer.RangeDynamicParameters.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for Proto_RangeDynamicLayerParams(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL static NeuralNetwork.Layer.RangeDynamicParameters.== infix(_:_:)(float *a1, float *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    OUTLINED_FUNCTION_83_1(a1);
    if (v2)
    {
      type metadata accessor for Proto_RangeDynamicLayerParams(0);
      sub_2577431B4();
      OUTLINED_FUNCTION_0_80();
      v5 = sub_2576C2FDC(v3, v4, MEMORY[0x277D216D0]);
      if (OUTLINED_FUNCTION_4_2(v5))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_2576C2FDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2576C30E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 *OUTLINED_FUNCTION_2_52(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x7472617453;
  result[2].n128_u64[1] = 0xE500000000000000;
  return result;
}

unint64_t TreeEnsemble.PostEvaluationFunction.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 4;
  if (result < 4)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_2576C31AC@<X0>(uint64_t *a1@<X8>)
{
  result = TreeEnsemble.PostEvaluationFunction.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_2576C31D8()
{
  result = qword_27F8811A0;
  if (!qword_27F8811A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8811A0);
  }

  return result;
}

_BYTE *_s22PostEvaluationFunctionOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_2576C3308()
{
  OUTLINED_FUNCTION_31();
  v83 = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for BayesianProbitRegressorConfiguration.FeatureWeight(0);
  v3 = OUTLINED_FUNCTION_24(v2);
  v5 = v4;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8811A8, qword_2577738F8);
  OUTLINED_FUNCTION_13(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v74 - v11;
  v13 = type metadata accessor for BayesianProbitRegressorConfiguration.Gaussian(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B28, &unk_257773B40);
  inited = swift_initStackObject();
  v80 = xmmword_257743FF0;
  *(inited + 16) = xmmword_257743FF0;
  OUTLINED_FUNCTION_41_12();
  *(v17 + 32) = v16 & 0xFFFFFFFFFFFFLL | 0x2065000000000000;
  *(v17 + 40) = 0xED0000746E756F43;
  v81 = *v0;
  *(inited + 48) = sub_257743674();
  *(inited + 56) = v18;
  *(inited + 64) = 0;
  OUTLINED_FUNCTION_41_12();
  *(inited + 72) = v19 & 0xFFFFFFFFFFFFLL | 0x7365000000000000;
  *(inited + 80) = 0xE800000000000000;
  v20 = BayesianProbitRegressorConfiguration.features.getter();
  v21 = *(v20 + 16);
  if (v21)
  {
    v75 = v13;
    v76 = v12;
    v77 = v1;
    v78 = inited;
    v79 = v0;
    v81 = MEMORY[0x277D84F90];
    v22 = v20;
    sub_257484040(0, v21, 0);
    v23 = v81;
    OUTLINED_FUNCTION_193();
    v74 = v22;
    v25 = v22 + v24;
    v26 = *(v5 + 72);
    do
    {
      OUTLINED_FUNCTION_16_18();
      sub_2576C6768();
      sub_2576C4DF4();
      v28 = v27;
      v30 = v29;
      OUTLINED_FUNCTION_15_19();
      sub_2576C6858(v8, v31);
      v81 = v23;
      v33 = *(v23 + 16);
      v32 = *(v23 + 24);
      if (v33 >= v32 >> 1)
      {
        v35 = OUTLINED_FUNCTION_174(v32);
        sub_257484040(v35, v33 + 1, 1);
        v23 = v81;
      }

      *(v23 + 16) = v33 + 1;
      v34 = v23 + 24 * v33;
      *(v34 + 32) = v28;
      *(v34 + 40) = v30;
      *(v34 + 48) = 2;
      v25 += v26;
      --v21;
    }

    while (v21);

    inited = v78;
    v1 = v77;
    v12 = v76;
    v13 = v75;
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
  }

  *(inited + 88) = v23;
  *(inited + 96) = 0;
  *(inited + 104) = 1;
  BayesianProbitRegressorConfiguration.bias.getter();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_2574695E4(v12, &qword_27F8811A8, qword_2577738F8);
  }

  else
  {
    sub_2576C67C0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
    v36 = swift_initStackObject();
    *(v36 + 16) = v80;
    v23 = 0xE400000000000000;
    *(v36 + 32) = 1851876685;
    *(v36 + 40) = 0xE400000000000000;
    v81 = *v1;
    v37 = sub_257743674();
    OUTLINED_FUNCTION_29_17(v37, v38);
    v81 = v1[1];
    *(v36 + 88) = sub_257743674();
    *(v36 + 96) = v39;
    *(v36 + 104) = 0;
    v40 = sub_2576A6964(v36);
    v42 = v41;
    v12 = 3;
    sub_257469AE0();
    inited = v43;
    OUTLINED_FUNCTION_9_32();
    sub_2576C6858(v1, v44);
    *(inited + 16) = 3;
    *(inited + 112) = 1935763778;
    *(inited + 120) = 0xE400000000000000;
    *(inited + 128) = v40;
    *(inited + 136) = v42;
    *(inited + 144) = 2;
  }

  OUTLINED_FUNCTION_1_6();
  if (v45)
  {
    OUTLINED_FUNCTION_4_45();
    OUTLINED_FUNCTION_316();
    OUTLINED_FUNCTION_1_62();
    if (v46)
    {
      OUTLINED_FUNCTION_25_18();
      inited = v66;
    }

    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_12_33(v47);
  }

  OUTLINED_FUNCTION_1_6();
  if (v48)
  {
    OUTLINED_FUNCTION_4_45();
    OUTLINED_FUNCTION_316();
    OUTLINED_FUNCTION_1_62();
    if (v46)
    {
      OUTLINED_FUNCTION_25_18();
      inited = v67;
    }

    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_12_33(v49);
  }

  OUTLINED_FUNCTION_1_6();
  if (v50)
  {
    OUTLINED_FUNCTION_4_45();
    OUTLINED_FUNCTION_316();
    OUTLINED_FUNCTION_1_62();
    if (v46)
    {
      OUTLINED_FUNCTION_25_18();
      inited = v68;
    }

    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_12_33(v51);
  }

  OUTLINED_FUNCTION_1_6();
  if (v52)
  {
    OUTLINED_FUNCTION_4_45();
    OUTLINED_FUNCTION_316();
    OUTLINED_FUNCTION_1_62();
    if (v46)
    {
      OUTLINED_FUNCTION_25_18();
      inited = v69;
    }

    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_12_33(v53);
  }

  OUTLINED_FUNCTION_1_6();
  if (v54)
  {
    OUTLINED_FUNCTION_4_45();
    OUTLINED_FUNCTION_316();
    OUTLINED_FUNCTION_1_62();
    if (v46)
    {
      OUTLINED_FUNCTION_25_18();
      inited = v70;
    }

    OUTLINED_FUNCTION_3_58();
    *(v56 + 32) = 0xD000000000000010;
    *(v56 + 40) = v55;
    *(v56 + 48) = v23;
    *(v56 + 56) = v12;
    *(v56 + 64) = 0;
  }

  OUTLINED_FUNCTION_1_6();
  if (v57)
  {
    OUTLINED_FUNCTION_4_45();
    OUTLINED_FUNCTION_316();
    OUTLINED_FUNCTION_1_62();
    if (v46)
    {
      OUTLINED_FUNCTION_25_18();
      inited = v71;
    }

    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_12_33(v58);
  }

  OUTLINED_FUNCTION_1_6();
  if (v59)
  {
    OUTLINED_FUNCTION_4_45();
    OUTLINED_FUNCTION_316();
    OUTLINED_FUNCTION_1_62();
    if (v46)
    {
      OUTLINED_FUNCTION_25_18();
      inited = v72;
    }

    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_12_33(v60);
  }

  OUTLINED_FUNCTION_1_6();
  if (v61)
  {
    OUTLINED_FUNCTION_4_45();
    OUTLINED_FUNCTION_316();
    v62 = v81;
    v63 = v82;
    v64 = *(inited + 16);
    if (v64 >= *(inited + 24) >> 1)
    {
      sub_257469AE0();
      inited = v73;
    }

    *(inited + 16) = v64 + 1;
    v65 = inited + 40 * v64;
    *(v65 + 32) = 0xD00000000000001FLL;
    *(v65 + 40) = 0x8000000257781480;
    *(v65 + 48) = v62;
    *(v65 + 56) = v63;
    *(v65 + 64) = 0;
  }

  sub_2576AACFC(inited);
  OUTLINED_FUNCTION_35();
}

unint64_t *(*BayesianProbitRegressorConfiguration.featureCount.modify(void *a1))(unint64_t *result, char)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2576C3A00;
}

uint64_t BayesianProbitRegressorConfiguration.features.getter()
{
  v2 = type metadata accessor for BayesianProbitRegressorConfiguration.FeatureWeight(0);
  v3 = OUTLINED_FUNCTION_24(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_6();
  v4 = *(v0 + 8);
  v5 = *(v4 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = OUTLINED_FUNCTION_17_2();
    sub_257484348(v7, v8, v9);
    v6 = v19;
    v10 = type metadata accessor for Proto_BayesianProbitRegressor.FeatureWeight(0);
    OUTLINED_FUNCTION_24(v10);
    v12 = v4 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v14 = *(v13 + 72);
    do
    {
      OUTLINED_FUNCTION_21_24();
      sub_2576C6768();
      OUTLINED_FUNCTION_24_2();
      if (v16)
      {
        v17 = OUTLINED_FUNCTION_174(v15);
        sub_257484348(v17, v1, 1);
        v6 = v19;
      }

      *(v6 + 16) = v1;
      OUTLINED_FUNCTION_193();
      sub_2576C67C0();
      v12 += v14;
      --v5;
    }

    while (v5);
  }

  return v6;
}

void BayesianProbitRegressorConfiguration.features.setter()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v4 = type metadata accessor for BayesianProbitRegressorConfiguration.FeatureWeight(0);
  v5 = OUTLINED_FUNCTION_24(v4);
  v7 = v6;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = OUTLINED_FUNCTION_78();
  v9 = type metadata accessor for Proto_BayesianProbitRegressor.FeatureWeight(v8);
  v10 = OUTLINED_FUNCTION_24(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v11 = *(v3 + 16);
  if (v11)
  {
    v12 = OUTLINED_FUNCTION_63_2(MEMORY[0x277D84F90]);
    sub_257484FA0(v12, v13, v14);
    v15 = v23;
    OUTLINED_FUNCTION_193();
    v17 = v3 + v16;
    v18 = *(v7 + 72);
    do
    {
      OUTLINED_FUNCTION_16_18();
      sub_2576C6768();
      OUTLINED_FUNCTION_21_24();
      sub_2576C6768();
      OUTLINED_FUNCTION_15_19();
      sub_2576C6858(v1, v19);
      OUTLINED_FUNCTION_27_2();
      if (v21)
      {
        v22 = OUTLINED_FUNCTION_174(v20);
        sub_257484FA0(v22, v7, 1);
        v15 = v23;
      }

      *(v15 + 16) = v7;
      OUTLINED_FUNCTION_193();
      sub_2576C67C0();
      v17 += v18;
      --v11;
    }

    while (v11);
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
  }

  *(v0 + 8) = v15;
  OUTLINED_FUNCTION_35();
}

uint64_t (*BayesianProbitRegressorConfiguration.features.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = BayesianProbitRegressorConfiguration.features.getter();
  return sub_2576C3DFC;
}

void BayesianProbitRegressorConfiguration.bias.getter()
{
  OUTLINED_FUNCTION_31();
  type metadata accessor for Proto_BayesianProbitRegressor.Gaussian(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D98, &unk_257746440);
  v7 = OUTLINED_FUNCTION_13(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_26_4();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_30_9();
  v10 = *(type metadata accessor for Proto_BayesianProbitRegressor(v9) + 60);
  OUTLINED_FUNCTION_58_2();
  OUTLINED_FUNCTION_75_6();
  if (v4 != 1)
  {
    sub_257487308(v0 + v10);
    OUTLINED_FUNCTION_16_10();
    if (v11)
    {
      *v2 = 0;
      v2[1] = 0;
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      OUTLINED_FUNCTION_16_10();
      if (!v11)
      {
        sub_2574695E4(v1, &qword_27F879D98, &unk_257746440);
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_81();
      OUTLINED_FUNCTION_277();
      sub_2576C67C0();
    }

    OUTLINED_FUNCTION_0_81();
    sub_2576C67C0();
    v3 = 0;
  }

  v12 = type metadata accessor for BayesianProbitRegressorConfiguration.Gaussian(0);
  __swift_storeEnumTagSinglePayload(&qword_27F879D98, v3, 1, v12);
  OUTLINED_FUNCTION_35();
}

uint64_t BayesianProbitRegressorConfiguration.bias.setter(uint64_t a1)
{
  v3 = type metadata accessor for Proto_BayesianProbitRegressor.Gaussian(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_6();
  type metadata accessor for BayesianProbitRegressorConfiguration.Gaussian(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  if (__swift_getEnumTagSinglePayload(a1, 1, v6) == 1)
  {
    sub_2574695E4(a1, &qword_27F8811A8, qword_2577738F8);
    v7 = type metadata accessor for Proto_BayesianProbitRegressor(0);
    sub_2574695E4(v1 + *(v7 + 60), &qword_27F879D98, &unk_257746440);
    v8 = OUTLINED_FUNCTION_50_7();

    return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_2_53();
    OUTLINED_FUNCTION_277();
    sub_2576C67C0();
    OUTLINED_FUNCTION_24_20();
    sub_2576C67C0();
    v13 = *(type metadata accessor for Proto_BayesianProbitRegressor(0) + 60);
    sub_2574695E4(v1 + v13, &qword_27F879D98, &unk_257746440);
    sub_2576C67C0();
    return __swift_storeEnumTagSinglePayload(v1 + v13, 0, 1, v3);
  }
}

void (*BayesianProbitRegressorConfiguration.bias.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v4 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v4;
  *v4 = v1;
  v5 = type metadata accessor for BayesianProbitRegressorConfiguration.Gaussian(0);
  v4[1] = v5;
  v26 = v5;
  OUTLINED_FUNCTION_4();
  v4[2] = __swift_coroFrameAllocStub(*(v6 + 64));
  v4[3] = type metadata accessor for Proto_BayesianProbitRegressor.Gaussian(0);
  OUTLINED_FUNCTION_4();
  v8 = *(v7 + 64);
  v4[4] = __swift_coroFrameAllocStub(v8);
  v25 = __swift_coroFrameAllocStub(v8);
  v4[5] = v25;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D98, &unk_257746440);
  OUTLINED_FUNCTION_13(v9);
  v10 = OUTLINED_FUNCTION_59_3();
  v4[6] = v10;
  v4[7] = OUTLINED_FUNCTION_59_3();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8811A8, qword_2577738F8);
  OUTLINED_FUNCTION_13(v11);
  v4[8] = OUTLINED_FUNCTION_59_3();
  v12 = OUTLINED_FUNCTION_59_3();
  v4[9] = v12;
  v13 = *(type metadata accessor for Proto_BayesianProbitRegressor(0) + 60);
  OUTLINED_FUNCTION_52_6();
  OUTLINED_FUNCTION_45_9();
  if (v2 != 1)
  {
    sub_257487308(v1 + v13);
    v14 = OUTLINED_FUNCTION_26_15();
    if (v22)
    {
      OUTLINED_FUNCTION_57_2(v14, v15, v16, v17, v18, v19, v20, v21, v24, v25);
      OUTLINED_FUNCTION_26_15();
      if (!v22)
      {
        sub_2574695E4(v10, &qword_27F879D98, &unk_257746440);
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_81();
      sub_2576C67C0();
    }

    OUTLINED_FUNCTION_0_81();
    sub_2576C67C0();
    v4 = 0;
  }

  __swift_storeEnumTagSinglePayload(v12, v4, 1, v26);
  return sub_2576C431C;
}

uint64_t BayesianProbitRegressorConfiguration.regressionInputFeatureName.setter()
{
  OUTLINED_FUNCTION_7_1();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t BayesianProbitRegressorConfiguration.regressionInputFeatureName.modify()
{
  OUTLINED_FUNCTION_14_11(*(v0 + 24), *(v0 + 16));

  return OUTLINED_FUNCTION_44_1();
}

uint64_t sub_2576C441C()
{
  OUTLINED_FUNCTION_12_22();
  if (v3)
  {

    *(v2 + 16) = v1;
    *(v2 + 24) = v0;
  }

  else
  {

    *(v2 + 16) = v1;
    *(v2 + 24) = v0;
  }

  return result;
}

uint64_t BayesianProbitRegressorConfiguration.optimismInputFeatureName.setter()
{
  OUTLINED_FUNCTION_7_1();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t BayesianProbitRegressorConfiguration.optimismInputFeatureName.modify()
{
  OUTLINED_FUNCTION_14_11(*(v0 + 40), *(v0 + 32));

  return OUTLINED_FUNCTION_44_1();
}

uint64_t sub_2576C4574()
{
  OUTLINED_FUNCTION_12_22();
  if (v3)
  {

    *(v2 + 32) = v1;
    *(v2 + 40) = v0;
  }

  else
  {

    *(v2 + 32) = v1;
    *(v2 + 40) = v0;
  }

  return result;
}

uint64_t BayesianProbitRegressorConfiguration.samplingScaleInputFeatureName.setter()
{
  OUTLINED_FUNCTION_7_1();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t BayesianProbitRegressorConfiguration.samplingScaleInputFeatureName.modify()
{
  OUTLINED_FUNCTION_14_11(*(v0 + 56), *(v0 + 48));

  return OUTLINED_FUNCTION_44_1();
}

uint64_t sub_2576C46CC()
{
  OUTLINED_FUNCTION_12_22();
  if (v3)
  {

    *(v2 + 48) = v1;
    *(v2 + 56) = v0;
  }

  else
  {

    *(v2 + 48) = v1;
    *(v2 + 56) = v0;
  }

  return result;
}

uint64_t BayesianProbitRegressorConfiguration.samplingTruncationInputFeatureName.setter()
{
  OUTLINED_FUNCTION_7_1();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t BayesianProbitRegressorConfiguration.samplingTruncationInputFeatureName.modify()
{
  OUTLINED_FUNCTION_14_11(*(v0 + 72), *(v0 + 64));

  return OUTLINED_FUNCTION_44_1();
}

uint64_t sub_2576C4824()
{
  OUTLINED_FUNCTION_12_22();
  if (v3)
  {

    *(v2 + 64) = v1;
    *(v2 + 72) = v0;
  }

  else
  {

    *(v2 + 64) = v1;
    *(v2 + 72) = v0;
  }

  return result;
}

uint64_t BayesianProbitRegressorConfiguration.meanOutputFeatureName.setter()
{
  OUTLINED_FUNCTION_7_1();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t BayesianProbitRegressorConfiguration.meanOutputFeatureName.modify()
{
  OUTLINED_FUNCTION_14_11(*(v0 + 88), *(v0 + 80));

  return OUTLINED_FUNCTION_44_1();
}

uint64_t sub_2576C497C()
{
  OUTLINED_FUNCTION_12_22();
  if (v3)
  {

    *(v2 + 80) = v1;
    *(v2 + 88) = v0;
  }

  else
  {

    *(v2 + 80) = v1;
    *(v2 + 88) = v0;
  }

  return result;
}

uint64_t BayesianProbitRegressorConfiguration.varianceOutputFeatureName.setter()
{
  OUTLINED_FUNCTION_7_1();

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t BayesianProbitRegressorConfiguration.varianceOutputFeatureName.modify()
{
  OUTLINED_FUNCTION_14_11(*(v0 + 104), *(v0 + 96));

  return OUTLINED_FUNCTION_44_1();
}

uint64_t sub_2576C4AD4()
{
  OUTLINED_FUNCTION_12_22();
  if (v3)
  {

    *(v2 + 96) = v1;
    *(v2 + 104) = v0;
  }

  else
  {

    *(v2 + 96) = v1;
    *(v2 + 104) = v0;
  }

  return result;
}

uint64_t BayesianProbitRegressorConfiguration.pessimisticProbabilityOutputFeatureName.setter()
{
  OUTLINED_FUNCTION_7_1();

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t BayesianProbitRegressorConfiguration.pessimisticProbabilityOutputFeatureName.modify()
{
  OUTLINED_FUNCTION_14_11(*(v0 + 120), *(v0 + 112));

  return OUTLINED_FUNCTION_44_1();
}

uint64_t sub_2576C4C2C()
{
  OUTLINED_FUNCTION_12_22();
  if (v3)
  {

    *(v2 + 112) = v1;
    *(v2 + 120) = v0;
  }

  else
  {

    *(v2 + 112) = v1;
    *(v2 + 120) = v0;
  }

  return result;
}

uint64_t BayesianProbitRegressorConfiguration.sampledProbabilityOutputFeatureName.setter()
{
  OUTLINED_FUNCTION_7_1();

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

uint64_t BayesianProbitRegressorConfiguration.sampledProbabilityOutputFeatureName.modify()
{
  OUTLINED_FUNCTION_14_11(*(v0 + 136), *(v0 + 128));

  return OUTLINED_FUNCTION_44_1();
}

uint64_t sub_2576C4D84()
{
  OUTLINED_FUNCTION_12_22();
  if (v3)
  {

    *(v2 + 128) = v1;
    *(v2 + 136) = v0;
  }

  else
  {

    *(v2 + 128) = v1;
    *(v2 + 136) = v0;
  }

  return result;
}

void sub_2576C4DF4()
{
  OUTLINED_FUNCTION_31();
  v1 = type metadata accessor for BayesianProbitRegressorConfiguration.FeatureValueWeight(0);
  v2 = OUTLINED_FUNCTION_24(v1);
  v4 = v3;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257743FF0;
  OUTLINED_FUNCTION_41_12();
  *(v7 + 32) = v6 & 0xFFFFFFFFFFFFLL | 0x2065000000000000;
  *(v7 + 40) = 0xEA00000000004449;
  *(inited + 48) = sub_257743674();
  *(inited + 56) = v8;
  *(inited + 64) = 0;
  *(inited + 72) = 0x73746867696557;
  *(inited + 80) = 0xE700000000000000;
  v9 = BayesianProbitRegressorConfiguration.FeatureWeight.weights.getter();
  v10 = *(v9 + 16);
  if (v10)
  {
    v23 = inited;
    v24 = MEMORY[0x277D84F90];
    sub_257484040(0, v10, 0);
    v11 = v24;
    OUTLINED_FUNCTION_193();
    v13 = v9 + v12;
    v14 = *(v4 + 72);
    do
    {
      OUTLINED_FUNCTION_20_19();
      sub_2576C6768();
      v15 = sub_2576C5568();
      v17 = v16;
      OUTLINED_FUNCTION_19_25();
      sub_2576C6858(v0, v18);
      v20 = *(v24 + 16);
      v19 = *(v24 + 24);
      if (v20 >= v19 >> 1)
      {
        v22 = OUTLINED_FUNCTION_174(v19);
        sub_257484040(v22, v20 + 1, 1);
      }

      *(v24 + 16) = v20 + 1;
      v21 = v24 + 24 * v20;
      *(v21 + 32) = v15;
      *(v21 + 40) = v17;
      *(v21 + 48) = 2;
      v13 += v14;
      --v10;
    }

    while (v10);

    inited = v23;
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  *(inited + 88) = v11;
  *(inited + 96) = 0;
  *(inited + 104) = 1;
  sub_2576A6964(inited);
  OUTLINED_FUNCTION_35();
}

uint64_t BayesianProbitRegressorConfiguration.init(featureCount:bias:)()
{
  OUTLINED_FUNCTION_7_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8811A8, qword_2577738F8);
  OUTLINED_FUNCTION_13(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  result = sub_2574A7E94(v3);
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v1))
  {
    *v3 = v1;
    sub_257487308(v0);
    BayesianProbitRegressorConfiguration.bias.setter(v7);
    return sub_2574695E4(v0, &qword_27F8811A8, qword_2577738F8);
  }

  __break(1u);
  return result;
}

unint64_t *(*BayesianProbitRegressorConfiguration.FeatureWeight.featureID.modify(void *a1))(unint64_t *result, char)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2576C6C8C;
}

uint64_t BayesianProbitRegressorConfiguration.FeatureWeight.weights.getter()
{
  v2 = type metadata accessor for BayesianProbitRegressorConfiguration.FeatureValueWeight(0);
  v3 = OUTLINED_FUNCTION_24(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_6();
  v4 = *(v0 + 8);
  v5 = *(v4 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = OUTLINED_FUNCTION_17_2();
    sub_257484FF8(v7, v8, v9);
    v6 = v19;
    v10 = type metadata accessor for Proto_BayesianProbitRegressor.FeatureValueWeight(0);
    OUTLINED_FUNCTION_24(v10);
    v12 = v4 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v14 = *(v13 + 72);
    do
    {
      OUTLINED_FUNCTION_18_31();
      sub_2576C6768();
      OUTLINED_FUNCTION_24_2();
      if (v16)
      {
        v17 = OUTLINED_FUNCTION_174(v15);
        sub_257484FF8(v17, v1, 1);
        v6 = v19;
      }

      *(v6 + 16) = v1;
      OUTLINED_FUNCTION_193();
      sub_2576C67C0();
      v12 += v14;
      --v5;
    }

    while (v5);
  }

  return v6;
}

void BayesianProbitRegressorConfiguration.FeatureWeight.weights.setter()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v4 = type metadata accessor for BayesianProbitRegressorConfiguration.FeatureValueWeight(0);
  v5 = OUTLINED_FUNCTION_24(v4);
  v7 = v6;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = OUTLINED_FUNCTION_78();
  v9 = type metadata accessor for Proto_BayesianProbitRegressor.FeatureValueWeight(v8);
  v10 = OUTLINED_FUNCTION_24(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v11 = *(v3 + 16);
  if (v11)
  {
    v12 = OUTLINED_FUNCTION_63_2(MEMORY[0x277D84F90]);
    sub_257485050(v12, v13, v14);
    v15 = v23;
    OUTLINED_FUNCTION_193();
    v17 = v3 + v16;
    v18 = *(v7 + 72);
    do
    {
      OUTLINED_FUNCTION_20_19();
      sub_2576C6768();
      OUTLINED_FUNCTION_18_31();
      sub_2576C6768();
      OUTLINED_FUNCTION_19_25();
      sub_2576C6858(v1, v19);
      OUTLINED_FUNCTION_27_2();
      if (v21)
      {
        v22 = OUTLINED_FUNCTION_174(v20);
        sub_257485050(v22, v7, 1);
        v15 = v23;
      }

      *(v15 + 16) = v7;
      OUTLINED_FUNCTION_193();
      sub_2576C67C0();
      v17 += v18;
      --v11;
    }

    while (v11);
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
  }

  *(v0 + 8) = v15;
  OUTLINED_FUNCTION_35();
}

uint64_t (*BayesianProbitRegressorConfiguration.FeatureWeight.weights.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = BayesianProbitRegressorConfiguration.FeatureWeight.weights.getter();
  return sub_2576C54E0;
}

uint64_t sub_2576C54F8(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  a3(v4);
}

uint64_t sub_2576C5568()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8811A8, qword_2577738F8);
  OUTLINED_FUNCTION_13(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_78();
  v5 = type metadata accessor for BayesianProbitRegressorConfiguration.Gaussian(v4);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B28, &unk_257773B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2577442B0;
  strcpy((inited + 32), "Feature Value");
  *(inited + 46) = -4864;
  *(inited + 48) = sub_257743674();
  *(inited + 56) = v8;
  *(inited + 64) = 0;
  BayesianProbitRegressorConfiguration.FeatureValueWeight.featureWeight.getter();
  if (__swift_getEnumTagSinglePayload(v1, 1, v5) == 1)
  {
    sub_2574695E4(v1, &qword_27F8811A8, qword_2577738F8);
  }

  else
  {
    OUTLINED_FUNCTION_2_53();
    sub_2576C67C0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_257743FF0;
    *(v9 + 32) = 1851876685;
    *(v9 + 40) = 0xE400000000000000;
    v10 = sub_257743674();
    OUTLINED_FUNCTION_29_17(v10, v11);
    *(v9 + 88) = sub_257743674();
    *(v9 + 96) = v12;
    *(v9 + 104) = 0;
    v13 = sub_2576A6964(v9);
    v15 = v14;
    sub_257469AE0();
    inited = v16;
    OUTLINED_FUNCTION_9_32();
    sub_2576C6858(v0, v17);
    *(inited + 16) = 2;
    strcpy((inited + 72), "Feature Weight");
    *(inited + 87) = -18;
    *(inited + 88) = v13;
    *(inited + 96) = v15;
    *(inited + 104) = 2;
  }

  return sub_2576AACFC(inited);
}

void BayesianProbitRegressorConfiguration.FeatureWeight.init(featureID:weights:)()
{
  OUTLINED_FUNCTION_7_1();
  v2 = v1;
  *v1 = 0;
  *(v1 + 8) = MEMORY[0x277D84F90];
  type metadata accessor for Proto_BayesianProbitRegressor.FeatureWeight(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  if ((v0 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v0))
  {
    *v2 = v0;
    BayesianProbitRegressorConfiguration.FeatureWeight.weights.setter();
    return;
  }

  __break(1u);
}

BOOL static BayesianProbitRegressorConfiguration.FeatureWeight.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    OUTLINED_FUNCTION_267();
    sub_25747B56C();
    if (v2)
    {
      type metadata accessor for Proto_BayesianProbitRegressor.FeatureWeight(0);
      sub_2577431B4();
      OUTLINED_FUNCTION_23_21();
      v5 = sub_2576C68B0(v3, v4, MEMORY[0x277D216D0]);
      if (OUTLINED_FUNCTION_4_2(v5))
      {
        return 1;
      }
    }
  }

  return result;
}

unint64_t sub_2576C59D0(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    *v1 = result;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *(*BayesianProbitRegressorConfiguration.FeatureValueWeight.featureValue.modify(void *a1))(unint64_t *result, char)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2576C6C8C;
}

void BayesianProbitRegressorConfiguration.FeatureValueWeight.featureWeight.getter()
{
  OUTLINED_FUNCTION_31();
  type metadata accessor for Proto_BayesianProbitRegressor.Gaussian(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D98, &unk_257746440);
  v7 = OUTLINED_FUNCTION_13(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_26_4();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_30_9();
  v10 = *(type metadata accessor for Proto_BayesianProbitRegressor.FeatureValueWeight(v9) + 24);
  OUTLINED_FUNCTION_58_2();
  OUTLINED_FUNCTION_75_6();
  if (v4 != 1)
  {
    sub_257487308(v0 + v10);
    OUTLINED_FUNCTION_16_10();
    if (v11)
    {
      *v2 = 0;
      v2[1] = 0;
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      OUTLINED_FUNCTION_16_10();
      if (!v11)
      {
        sub_2574695E4(v1, &qword_27F879D98, &unk_257746440);
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_81();
      OUTLINED_FUNCTION_277();
      sub_2576C67C0();
    }

    OUTLINED_FUNCTION_0_81();
    sub_2576C67C0();
    v3 = 0;
  }

  v12 = type metadata accessor for BayesianProbitRegressorConfiguration.Gaussian(0);
  __swift_storeEnumTagSinglePayload(&qword_27F879D98, v3, 1, v12);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2576C5B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = OUTLINED_FUNCTION_277();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_13(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v14 - v11;
  sub_257487308(a1);
  return a5(v12);
}

uint64_t BayesianProbitRegressorConfiguration.FeatureValueWeight.featureWeight.setter(uint64_t a1)
{
  v3 = type metadata accessor for Proto_BayesianProbitRegressor.Gaussian(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_6();
  type metadata accessor for BayesianProbitRegressorConfiguration.Gaussian(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  if (__swift_getEnumTagSinglePayload(a1, 1, v6) == 1)
  {
    sub_2574695E4(a1, &qword_27F8811A8, qword_2577738F8);
    v7 = type metadata accessor for Proto_BayesianProbitRegressor.FeatureValueWeight(0);
    sub_2574695E4(v1 + *(v7 + 24), &qword_27F879D98, &unk_257746440);
    v8 = OUTLINED_FUNCTION_50_7();

    return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_2_53();
    OUTLINED_FUNCTION_277();
    sub_2576C67C0();
    OUTLINED_FUNCTION_24_20();
    sub_2576C67C0();
    v13 = *(type metadata accessor for Proto_BayesianProbitRegressor.FeatureValueWeight(0) + 24);
    sub_2574695E4(v1 + v13, &qword_27F879D98, &unk_257746440);
    sub_2576C67C0();
    return __swift_storeEnumTagSinglePayload(v1 + v13, 0, 1, v3);
  }
}

void (*BayesianProbitRegressorConfiguration.FeatureValueWeight.featureWeight.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v4 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v4;
  *v4 = v1;
  v5 = type metadata accessor for BayesianProbitRegressorConfiguration.Gaussian(0);
  v4[1] = v5;
  v26 = v5;
  OUTLINED_FUNCTION_4();
  v4[2] = __swift_coroFrameAllocStub(*(v6 + 64));
  v4[3] = type metadata accessor for Proto_BayesianProbitRegressor.Gaussian(0);
  OUTLINED_FUNCTION_4();
  v8 = *(v7 + 64);
  v4[4] = __swift_coroFrameAllocStub(v8);
  v25 = __swift_coroFrameAllocStub(v8);
  v4[5] = v25;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D98, &unk_257746440);
  OUTLINED_FUNCTION_13(v9);
  v10 = OUTLINED_FUNCTION_60_4();
  v4[6] = v10;
  v4[7] = OUTLINED_FUNCTION_60_4();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8811A8, qword_2577738F8);
  OUTLINED_FUNCTION_13(v11);
  v4[8] = OUTLINED_FUNCTION_60_4();
  v12 = OUTLINED_FUNCTION_60_4();
  v4[9] = v12;
  v13 = *(type metadata accessor for Proto_BayesianProbitRegressor.FeatureValueWeight(0) + 24);
  OUTLINED_FUNCTION_52_6();
  OUTLINED_FUNCTION_45_9();
  if (v2 != 1)
  {
    sub_257487308(v1 + v13);
    v14 = OUTLINED_FUNCTION_26_15();
    if (v22)
    {
      OUTLINED_FUNCTION_57_2(v14, v15, v16, v17, v18, v19, v20, v21, v24, v25);
      OUTLINED_FUNCTION_26_15();
      if (!v22)
      {
        sub_2574695E4(v10, &qword_27F879D98, &unk_257746440);
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_81();
      sub_2576C67C0();
    }

    OUTLINED_FUNCTION_0_81();
    sub_2576C67C0();
    v4 = 0;
  }

  __swift_storeEnumTagSinglePayload(v12, v4, 1, v26);
  return sub_2576C5FC0;
}

void sub_2576C5FD8()
{
  OUTLINED_FUNCTION_31();
  v2 = *v0;
  v3 = (*v0)[9];
  if (v4)
  {
    v5 = v1;
    v7 = v2[7];
    v6 = v2[8];
    v9 = v2[5];
    v8 = v2[6];
    v10 = v2[4];
    v11 = v2[2];
    sub_257487308((*v0)[9]);
    v5(v6);
    sub_2574695E4(v3, &qword_27F8811A8, qword_2577738F8);
  }

  else
  {
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload((*v0)[9], 1, v2[1]);
    v13 = *(v2 + 20);
    if (EnumTagSinglePayload == 1)
    {
      v14 = *v2;
      sub_2574695E4(v3, &qword_27F8811A8, qword_2577738F8);
      sub_2574695E4(v14 + v13, &qword_27F879D98, &unk_257746440);
      v15 = 1;
    }

    else
    {
      v16 = *v2;
      OUTLINED_FUNCTION_2_53();
      sub_2576C67C0();
      sub_2576C67C0();
      sub_2574695E4(v16 + v13, &qword_27F879D98, &unk_257746440);
      sub_2576C67C0();
      v15 = 0;
    }

    v6 = v2[8];
    v3 = v2[9];
    v8 = v2[6];
    v7 = v2[7];
    v10 = v2[4];
    v9 = v2[5];
    v11 = v2[2];
    __swift_storeEnumTagSinglePayload(*v2 + *(v2 + 20), v15, 1, v2[3]);
  }

  free(v3);
  free(v6);
  free(v7);
  free(v8);
  free(v9);
  free(v10);
  free(v11);
  OUTLINED_FUNCTION_35();

  free(v17);
}

uint64_t BayesianProbitRegressorConfiguration.FeatureValueWeight.init(featureValue:featureWeight:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8811A8, qword_2577738F8);
  OUTLINED_FUNCTION_13(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  *a3 = 0;
  v10 = type metadata accessor for Proto_BayesianProbitRegressor.FeatureValueWeight(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v11 = *(v10 + 24);
  v12 = type metadata accessor for Proto_BayesianProbitRegressor.Gaussian(0);
  result = __swift_storeEnumTagSinglePayload(a3 + v11, 1, 1, v12);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a1))
  {
    *a3 = a1;
    sub_2576C6768();
    v14 = type metadata accessor for BayesianProbitRegressorConfiguration.Gaussian(0);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v14);
    BayesianProbitRegressorConfiguration.FeatureValueWeight.featureWeight.setter(v9);
    OUTLINED_FUNCTION_9_32();
    return sub_2576C6858(a2, v15);
  }

  __break(1u);
  return result;
}

double (*BayesianProbitRegressorConfiguration.Gaussian.mean.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_2576C63E8;
}

double sub_2576C63E8(uint64_t a1)
{
  result = *a1;
  **(a1 + 8) = *a1;
  return result;
}

double (*BayesianProbitRegressorConfiguration.Gaussian.precision.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return sub_2576C6434;
}

double sub_2576C6434(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + 8) = *a1;
  return result;
}

uint64_t BayesianProbitRegressorConfiguration.Gaussian.init(mean:precision:)@<X0>(double *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  type metadata accessor for Proto_BayesianProbitRegressor.Gaussian(0);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a1 = a2;
  a1[1] = a3;
  return result;
}

BOOL static BayesianProbitRegressorConfiguration.Gaussian.== infix(_:_:)(double *a1, double *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    OUTLINED_FUNCTION_267();
    if (*(v2 + 8) == *(v3 + 8))
    {
      type metadata accessor for Proto_BayesianProbitRegressor.Gaussian(0);
      sub_2577431B4();
      OUTLINED_FUNCTION_23_21();
      v6 = sub_2576C68B0(v4, v5, MEMORY[0x277D216D0]);
      if (OUTLINED_FUNCTION_4_2(v6))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_2576C656C(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_51_6();

  return sub_2577435F4();
}

uint64_t sub_2576C6620(uint64_t (*a1)(void))
{
  sub_257743A14();
  a1(0);
  OUTLINED_FUNCTION_51_6();
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2576C66EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_257743A14();
  a4(0);
  OUTLINED_FUNCTION_51_6();
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2576C6768()
{
  OUTLINED_FUNCTION_267();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_205();
  v3(v2);
  return v0;
}

uint64_t sub_2576C67C0()
{
  OUTLINED_FUNCTION_267();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_205();
  v3(v2);
  return v0;
}

uint64_t sub_2576C6858(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2576C68B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2576C6C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void OUTLINED_FUNCTION_4_45()
{
  *(v0 - 336) = 34;
  *(v0 - 328) = 0xE100000000000000;

  JUMPOUT(0x259C64E90);
}

void OUTLINED_FUNCTION_12_33(uint64_t a1@<X8>)
{
  *(v1 + 32) = v2;
  *(v1 + 40) = a1;
  *(v1 + 48) = v3;
  *(v1 + 56) = v4;
  *(v1 + 64) = 0;
}

void OUTLINED_FUNCTION_25_18()
{

  sub_257469AE0();
}

uint64_t OUTLINED_FUNCTION_29_17(uint64_t result, uint64_t a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0x6F69736963657250;
  *(v2 + 80) = 0xE90000000000006ELL;
  return result;
}

uint64_t OUTLINED_FUNCTION_45_9()
{
  __swift_getEnumTagSinglePayload(v0, 1, v1);

  return sub_2574695E4(v0, v2, v3);
}

uint64_t OUTLINED_FUNCTION_51_6()
{

  return sub_2576C68B0(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_52_6()
{
  *(v2 + 80) = v1;

  return sub_257487308(v0 + v1);
}

uint64_t OUTLINED_FUNCTION_57_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  *a10 = 0;
  a10[1] = 0;

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_58_2()
{

  return sub_257487308(v1 + v0);
}

void *OUTLINED_FUNCTION_59_3()
{

  return __swift_coroFrameAllocStub(v0);
}

void *OUTLINED_FUNCTION_60_4()
{

  return __swift_coroFrameAllocStub(v0);
}

uint64_t static NeuralNetwork.Layer.convolution(name:inputName:outputName:outputChannelCount:kernelChannelCount:groupCount:kernelSize:strides:padding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t *a11, uint64_t *a12, uint64_t a13)
{
  v60 = a8;
  *&v62 = a7;
  v53 = a1;
  v54 = a2;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v18 - 8);
  v55 = &v51 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8811F8, &unk_257777F90);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v52 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v51 - v23;
  v51 = type metadata accessor for NeuralNetwork.Layer.Kind(0);
  MEMORY[0x28223BE20](v51);
  v26 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a11;
  v58 = a11[1];
  v59 = v27;
  v28 = *a12;
  v56 = a12[1];
  v57 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v30 = OUTLINED_FUNCTION_13_6(v29);
  v61 = xmmword_2577442B0;
  *(v30 + 16) = xmmword_2577442B0;
  *(v30 + 32) = a3;
  *(v30 + 40) = a4;
  v31 = OUTLINED_FUNCTION_13_6(v29);
  *(v31 + 16) = v61;
  *(v31 + 32) = a5;
  *(v31 + 40) = a6;
  sub_2576C76C4(a13, v24);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v32 = *(type metadata accessor for Proto_ConvolutionLayerParams(0) + 20);
  if (qword_27F879358 != -1)
  {
    OUTLINED_FUNCTION_0_82(&qword_27F879358);
  }

  *&v26[v32] = qword_27F87BEF0;
  v33 = v62;
  if ((v62 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  a6 = *&v26[v32];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = type metadata accessor for Proto_ConvolutionLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v35);
    OUTLINED_FUNCTION_1_63();
    a6 = v36;
    *&v26[v32] = v36;
  }

  v37 = v60;
  OUTLINED_FUNCTION_447(a6 + 16, v65);
  *(a6 + 16) = v33;
  if (v37 < 0)
  {
    goto LABEL_19;
  }

  v38 = swift_isUniquelyReferenced_nonNull_native();
  a6 = *&v26[v32];
  if ((v38 & 1) == 0)
  {
    v39 = type metadata accessor for Proto_ConvolutionLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v39);
    OUTLINED_FUNCTION_1_63();
    a6 = v40;
    *&v26[v32] = v40;
  }

  OUTLINED_FUNCTION_447(a6 + 24, v64);
  *(a6 + 24) = v37;
  if (a10 < 0)
  {
    goto LABEL_20;
  }

  v41 = swift_isUniquelyReferenced_nonNull_native();
  a6 = *&v26[v32];
  if ((v41 & 1) == 0)
  {
    v42 = type metadata accessor for Proto_ConvolutionLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v42);
    OUTLINED_FUNCTION_1_63();
    a6 = v43;
    *&v26[v32] = v43;
  }

  OUTLINED_FUNCTION_447(a6 + 32, v63);
  *(a6 + 32) = a10;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F98, &unk_2577448C8);
  v45 = OUTLINED_FUNCTION_13_6(v44);
  *(v45 + 16) = xmmword_257743FF0;
  if (v59 < 0)
  {
    goto LABEL_21;
  }

  *(v45 + 32) = v59;
  if (v58 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  *(v45 + 40) = v58;
  a6 = v26;
  v62 = xmmword_257743FF0;
  sub_257531098(v45);
  v46 = OUTLINED_FUNCTION_13_6(v44);
  *(v46 + 16) = v62;
  if (v57 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  *(v46 + 32) = v57;
  if (v56 < 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  *(v46 + 40) = v56;
  sub_257531170();
  v47 = v52;
  sub_2576C76C4(v24, v52);
  NeuralNetwork.Layer.ConvolutionParameters.padding.setter(v47);
  sub_2576C7734(v24);
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  a6 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
LABEL_25:
    swift_once();
  }

  *(a9 + a6) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v31);
  v48 = v55;
  sub_2574897E0(v55);
  v49 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  __swift_storeEnumTagSinglePayload(v48, 0, 1, v49);
  sub_25752846C();
  return sub_257634BB4(v26);
}

uint64_t static NeuralNetwork.Layer.Kind.convolution(outputChannelCount:kernelChannelCount:groupCount:kernelSize:strides:padding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8811F8, &unk_257777F90);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v21 = *a4;
  v20 = a4[1];
  v22 = *a5;
  v39 = a5[1];
  v40 = v22;
  sub_2576C76C4(a6, &v38 - v18);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v23 = *(type metadata accessor for Proto_ConvolutionLayerParams(0) + 20);
  if (qword_27F879358 != -1)
  {
    OUTLINED_FUNCTION_0_82(&qword_27F879358);
  }

  result = qword_27F87BEF0;
  *(a7 + v23) = qword_27F87BEF0;
  if (a1 < 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *(a7 + v23);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v27 = type metadata accessor for Proto_ConvolutionLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v27);
    OUTLINED_FUNCTION_1_63();
    v26 = v28;
    *(a7 + v23) = v28;
  }

  result = OUTLINED_FUNCTION_447(v26 + 16, v43);
  *(v26 + 16) = a1;
  if (a2 < 0)
  {
    goto LABEL_18;
  }

  v29 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(a7 + v23);
  if ((v29 & 1) == 0)
  {
    v31 = type metadata accessor for Proto_ConvolutionLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v31);
    OUTLINED_FUNCTION_1_63();
    v30 = v32;
    *(a7 + v23) = v32;
  }

  result = OUTLINED_FUNCTION_447(v30 + 24, v42);
  *(v30 + 24) = a2;
  if (a3 < 0)
  {
    goto LABEL_19;
  }

  v33 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *(a7 + v23);
  if ((v33 & 1) == 0)
  {
    v35 = type metadata accessor for Proto_ConvolutionLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v35);
    OUTLINED_FUNCTION_1_63();
    v34 = v36;
    *(a7 + v23) = v36;
  }

  OUTLINED_FUNCTION_447(v34 + 32, v41);
  *(v34 + 32) = a3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F98, &unk_2577448C8);
  result = OUTLINED_FUNCTION_13_6(v37);
  *(result + 16) = xmmword_257743FF0;
  if (v21 < 0)
  {
    goto LABEL_20;
  }

  *(result + 32) = v21;
  if (v20 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  *(result + 40) = v20;
  v38 = xmmword_257743FF0;
  sub_257531098(result);
  result = OUTLINED_FUNCTION_13_6(v37);
  *(result + 16) = v38;
  if (v40 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  *(result + 32) = v40;
  if ((v39 & 0x8000000000000000) == 0)
  {
    *(result + 40) = v39;
    sub_257531170();
    sub_2576C76C4(v19, v17);
    NeuralNetwork.Layer.ConvolutionParameters.padding.setter(v17);
    sub_2576C7734(v19);
    type metadata accessor for NeuralNetwork.Layer.Kind(0);
    return swift_storeEnumTagMultiPayload();
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_2576C76C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8811F8, &unk_257777F90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2576C7734(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8811F8, &unk_257777F90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_82(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_1_63()
{

  sub_25759AD38();
}

void sub_2576C77D8()
{
  OUTLINED_FUNCTION_31();
  v2 = type metadata accessor for NeuralNetwork.Preprocessor.MeanImageConfiguration(0);
  v3 = OUTLINED_FUNCTION_13(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v109 = v5 - v4;
  v6 = OUTLINED_FUNCTION_153();
  v7 = type metadata accessor for NeuralNetwork.Preprocessor.ScalerConfiguration(v6);
  v8 = OUTLINED_FUNCTION_13(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v108 = v10 - v9;
  v11 = OUTLINED_FUNCTION_153();
  v117 = type metadata accessor for Proto_NeuralNetworkPreprocessing.OneOf_Preprocessor(v11);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_25_0();
  v107 = v13;
  MEMORY[0x28223BE20](v14);
  v106 = v103 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A048, &qword_257744980);
  v17 = OUTLINED_FUNCTION_13(v16);
  MEMORY[0x28223BE20](v17);
  v116 = v103 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A0E0, &qword_257773BE0);
  v20 = OUTLINED_FUNCTION_13(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_21_1();
  v21 = type metadata accessor for NeuralNetwork.Preprocessor.Kind(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_25_0();
  v113 = v23;
  MEMORY[0x28223BE20](v24);
  v119 = v103 - v25;
  v26 = OUTLINED_FUNCTION_153();
  v27 = type metadata accessor for NeuralNetwork.Preprocessor(v26);
  v28 = OUTLINED_FUNCTION_24(v27);
  v103[1] = v29;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3();
  v118 = (v31 - v30);
  v32 = OUTLINED_FUNCTION_153();
  v33 = type metadata accessor for NeuralNetwork.Layer(v32);
  v34 = OUTLINED_FUNCTION_24(v33);
  v36 = v35;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_3();
  v111 = v38 - v37;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257744E70;
  v40 = OUTLINED_FUNCTION_27_19(inited, 24908);
  v41 = *(v40 + 16);
  v42 = MEMORY[0x277D84F90];
  v114 = v21;
  v115 = v1;
  v104 = inited;
  v105 = v0;
  if (v41)
  {
    v120 = MEMORY[0x277D84F90];
    sub_257484040(0, v41, 0);
    v43 = v120;
    OUTLINED_FUNCTION_193();
    v103[0] = v40;
    v45 = v40 + v44;
    *&v110 = *(v36 + 72);
    do
    {
      v46 = OUTLINED_FUNCTION_2_54();
      v47 = v111;
      sub_2576C928C(v46, v111);
      sub_2576EDD44();
      v49 = v48;
      v51 = v50;
      v53 = v52;
      OUTLINED_FUNCTION_3_2();
      sub_257499A2C(v47, v54);
      v120 = v43;
      v56 = *(v43 + 16);
      v55 = *(v43 + 24);
      if (v56 >= v55 >> 1)
      {
        OUTLINED_FUNCTION_174(v55);
        OUTLINED_FUNCTION_310();
        sub_257484040(v58, v59, v60);
        v43 = v120;
      }

      *(v43 + 16) = v56 + 1;
      v57 = v43 + 24 * v56;
      *(v57 + 32) = v49;
      *(v57 + 40) = v51;
      *(v57 + 48) = v53;
      v45 += v110;
      --v41;
    }

    while (v41);

    inited = v104;
    v0 = v105;
    v21 = v114;
    v1 = v115;
    v42 = MEMORY[0x277D84F90];
  }

  else
  {

    v43 = MEMORY[0x277D84F90];
  }

  *(inited + 48) = v43;
  *(inited + 56) = 0;
  *(inited + 64) = 1;
  strcpy((inited + 72), "Preprocessors");
  *(inited + 86) = -4864;
  v61 = NeuralNetworkRegressor.preprocessors.getter();
  v62 = *(v61 + 16);
  if (v62)
  {
    v122 = v42;
    sub_257484040(0, v62, 0);
    v63 = v122;
    OUTLINED_FUNCTION_193();
    v103[0] = v61;
    v65 = v61 + v64;
    v111 = *(v66 + 72);
    v110 = xmmword_257743FF0;
    do
    {
      v67 = v118;
      sub_2576C928C(v65, v118);
      v68 = swift_initStackObject();
      *(v68 + 16) = v110;
      strcpy((v68 + 32), "Feature Name");
      *(v68 + 45) = 0;
      *(v68 + 46) = -5120;
      v69 = *v67;
      v70 = v67[1];
      v120 = 34;
      v121 = 0xE100000000000000;
      MEMORY[0x259C64E90](v69, v70);
      MEMORY[0x259C64E90](34, 0xE100000000000000);
      v71 = v121;
      *(v68 + 48) = v120;
      *(v68 + 56) = v71;
      *(v68 + 64) = 0;
      *(v68 + 72) = 1684957515;
      *(v68 + 80) = 0xE400000000000000;
      v72 = v67 + *(type metadata accessor for Proto_NeuralNetworkPreprocessing(0) + 20);
      v73 = v116;
      sub_2574998F8(v72, v116);
      v74 = 1;
      if (__swift_getEnumTagSinglePayload(v73, 1, v117) != 1)
      {
        v75 = v106;
        sub_257499A84(v116, v106);
        v76 = v107;
        sub_2576C928C(v75, v107);
        swift_getEnumCaseMultiPayload();
        sub_257499A84(v76, v1);
        swift_storeEnumTagMultiPayload();
        sub_257499A2C(v75, type metadata accessor for Proto_NeuralNetworkPreprocessing.OneOf_Preprocessor);
        v74 = 0;
      }

      __swift_storeEnumTagSinglePayload(v1, v74, 1, v21);
      if (__swift_getEnumTagSinglePayload(v1, 1, v21) == 1)
      {
        v77 = v119;
        *(v119 + 8) = 0;
        v77[1] = 0;
        type metadata accessor for Proto_NeuralNetworkImageScaler(0);
        _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
        *v77 = 1065353216;
        v77[4] = 0;
        swift_storeEnumTagMultiPayload();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v21);
        v79 = v113;
        if (EnumTagSinglePayload != 1)
        {
          sub_257499968(v1);
        }
      }

      else
      {
        v77 = v119;
        sub_257499A84(v1, v119);
        v79 = v113;
      }

      sub_2576C928C(v77, v79);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v80 = v109;
        sub_257499A84(v79, v109);
        v81 = sub_25749CDBC();
        v83 = v82;
        v85 = v84;
        v86 = type metadata accessor for NeuralNetwork.Preprocessor.MeanImageConfiguration;
      }

      else
      {
        v80 = v108;
        sub_257499A84(v79, v108);
        v81 = sub_25749CC5C();
        v83 = v87;
        v85 = v88;
        v86 = type metadata accessor for NeuralNetwork.Preprocessor.ScalerConfiguration;
      }

      sub_257499A2C(v80, v86);
      sub_257499A2C(v119, type metadata accessor for NeuralNetwork.Preprocessor.Kind);
      *(v68 + 88) = v81;
      *(v68 + 96) = v83;
      *(v68 + 104) = v85;
      v89 = sub_2576A6964(v68);
      v91 = v90;
      OUTLINED_FUNCTION_6_1();
      sub_257499A2C(v118, v92);
      v122 = v63;
      v94 = *(v63 + 16);
      v93 = *(v63 + 24);
      if (v94 >= v93 >> 1)
      {
        OUTLINED_FUNCTION_174(v93);
        OUTLINED_FUNCTION_310();
        sub_257484040(v96, v97, v98);
        v63 = v122;
      }

      *(v63 + 16) = v94 + 1;
      v95 = v63 + 24 * v94;
      *(v95 + 32) = v89;
      *(v95 + 40) = v91;
      *(v95 + 48) = 2;
      v65 += v111;
      --v62;
      v21 = v114;
      v1 = v115;
    }

    while (v62);

    inited = v104;
    v0 = v105;
  }

  else
  {

    v63 = MEMORY[0x277D84F90];
  }

  *(inited + 88) = v63;
  *(inited + 96) = 0;
  *(inited + 104) = 1;
  *(inited + 112) = 0xD000000000000019;
  *(inited + 120) = 0x800000025777A070;
  if (*(v0 + 24) == 1)
  {
    v99 = vdup_n_s32(*(v0 + 16) == 0);
    v100.i64[0] = v99.u32[0];
    v100.i64[1] = v99.u32[1];
    v101 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v100, 0x3FuLL)), xmmword_257744E80, xmmword_257744E90);
  }

  else
  {
    v101 = xmmword_257744E80;
  }

  *(inited + 128) = v101;
  *(inited + 144) = 0;
  *(inited + 152) = 0xD000000000000019;
  *(inited + 160) = 0x800000025777A090;
  v102 = 0x35206B6E6152;
  if (*(v0 + 40))
  {
    v102 = 0x34206B6E6152;
  }

  *(inited + 168) = v102;
  *(inited + 176) = 0xE600000000000000;
  *(inited + 184) = 0;
  sub_2576A6964(inited);
  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetworkRegressor.layers.getter()
{
  v3 = type metadata accessor for NeuralNetwork.Layer(0);
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = v5;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = *v0;
  v11 = *(*v0 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v13 = OUTLINED_FUNCTION_17_2();
    sub_2574841E8(v13, v14, v15);
    v12 = v28;
    v16 = type metadata accessor for Proto_NeuralNetworkLayer(0);
    OUTLINED_FUNCTION_24(v16);
    v18 = v10 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v20 = *(v19 + 72);
    do
    {
      OUTLINED_FUNCTION_4_46();
      sub_2576C928C(v18, v9);
      OUTLINED_FUNCTION_24_2();
      if (v22)
      {
        OUTLINED_FUNCTION_174(v21);
        OUTLINED_FUNCTION_310();
        sub_2574841E8(v24, v25, v26);
        v12 = v28;
      }

      *(v12 + 16) = v1;
      OUTLINED_FUNCTION_193();
      sub_257499A84(v9, v12 + v23 + *(v6 + 72) * v2);
      v18 += v20;
      --v11;
    }

    while (v11);
  }

  return v12;
}

void NeuralNetworkRegressor.layers.setter()
{
  OUTLINED_FUNCTION_31();
  v4 = v3;
  v5 = type metadata accessor for NeuralNetwork.Layer(0);
  v6 = OUTLINED_FUNCTION_24(v5);
  v8 = v7;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v9 = OUTLINED_FUNCTION_78();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer(v9);
  v11 = OUTLINED_FUNCTION_24(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_1();
  v12 = *(v4 + 16);
  if (v12)
  {
    v13 = OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
    sub_2574843E0(v13, v12, 0);
    v14 = v24;
    OUTLINED_FUNCTION_193();
    v16 = v4 + v15;
    v17 = *(v8 + 72);
    do
    {
      v18 = OUTLINED_FUNCTION_2_54();
      sub_2576C928C(v18, v1);
      OUTLINED_FUNCTION_4_46();
      sub_2576C928C(v1, v2);
      OUTLINED_FUNCTION_3_2();
      sub_257499A2C(v1, v19);
      OUTLINED_FUNCTION_27_2();
      if (v21)
      {
        v23 = OUTLINED_FUNCTION_13_1(v20);
        sub_2574843E0(v23, v8, 1);
        v14 = v24;
      }

      *(v14 + 16) = v8;
      OUTLINED_FUNCTION_193();
      OUTLINED_FUNCTION_11_2();
      sub_257499A84(v2, v22);
      v16 += v17;
      --v12;
    }

    while (v12);
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  *v0 = v14;
  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetworkRegressor.preprocessors.getter()
{
  v3 = type metadata accessor for NeuralNetwork.Preprocessor(0);
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = v5;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = *(v0 + 8);
  v11 = *(v10 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v13 = OUTLINED_FUNCTION_17_2();
    sub_257484240(v13, v14, v15);
    v12 = v28;
    v16 = type metadata accessor for Proto_NeuralNetworkPreprocessing(0);
    OUTLINED_FUNCTION_24(v16);
    v18 = v10 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v20 = *(v19 + 72);
    do
    {
      OUTLINED_FUNCTION_6_43();
      sub_2576C928C(v18, v9);
      OUTLINED_FUNCTION_24_2();
      if (v22)
      {
        OUTLINED_FUNCTION_174(v21);
        OUTLINED_FUNCTION_310();
        sub_257484240(v24, v25, v26);
        v12 = v28;
      }

      *(v12 + 16) = v1;
      OUTLINED_FUNCTION_193();
      sub_257499A84(v9, v12 + v23 + *(v6 + 72) * v2);
      v18 += v20;
      --v11;
    }

    while (v11);
  }

  return v12;
}

void NeuralNetworkRegressor.preprocessors.setter()
{
  OUTLINED_FUNCTION_31();
  v4 = v3;
  v5 = type metadata accessor for NeuralNetwork.Preprocessor(0);
  v6 = OUTLINED_FUNCTION_24(v5);
  v8 = v7;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v9 = OUTLINED_FUNCTION_78();
  v10 = type metadata accessor for Proto_NeuralNetworkPreprocessing(v9);
  v11 = OUTLINED_FUNCTION_24(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_1();
  v12 = *(v4 + 16);
  if (v12)
  {
    v13 = OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
    sub_257484438(v13, v12, 0);
    v14 = v23;
    OUTLINED_FUNCTION_193();
    v16 = v4 + v15;
    v17 = *(v8 + 72);
    do
    {
      OUTLINED_FUNCTION_10_37();
      sub_2576C928C(v16, v1);
      OUTLINED_FUNCTION_6_43();
      sub_2576C928C(v1, v2);
      OUTLINED_FUNCTION_6_1();
      sub_257499A2C(v1, v18);
      OUTLINED_FUNCTION_27_2();
      if (v20)
      {
        v22 = OUTLINED_FUNCTION_13_1(v19);
        sub_257484438(v22, v8, 1);
        v14 = v23;
      }

      *(v14 + 16) = v8;
      OUTLINED_FUNCTION_193();
      OUTLINED_FUNCTION_9_2();
      sub_257499A84(v2, v21);
      v16 += v17;
      --v12;
    }

    while (v12);
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  *(v0 + 8) = v14;
  OUTLINED_FUNCTION_35();
}

uint64_t (*NeuralNetworkRegressor.layers.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = NeuralNetworkRegressor.layers.getter();
  return sub_2576C8818;
}

uint64_t (*NeuralNetworkRegressor.preprocessors.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = NeuralNetworkRegressor.preprocessors.getter();
  return sub_2576C88A4;
}

uint64_t sub_2576C88BC(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  a3(v4);
}

unsigned __int8 *NeuralNetworkRegressor.arrayInputShapeMapping.setter(unsigned __int8 *result)
{
  *(v1 + 16) = *result;
  *(v1 + 24) = 1;
  return result;
}

uint64_t *(*NeuralNetworkRegressor.arrayInputShapeMapping.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = *(v1 + 24) == 1 && *(v1 + 16) != 0;
  *(a1 + 8) = v2;
  return sub_257498D04;
}

uint64_t *(*NeuralNetworkRegressor.imageInputShapeMapping.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 40);
  return sub_257498D9C;
}

void NeuralNetworkRegressor.init(layers:preprocessors:)()
{
  OUTLINED_FUNCTION_31();
  v57 = v2;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for NeuralNetwork.Preprocessor(0);
  v8 = OUTLINED_FUNCTION_24(v7);
  v10 = v9;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v11 = OUTLINED_FUNCTION_78();
  v12 = type metadata accessor for Proto_NeuralNetworkPreprocessing(v11);
  v13 = OUTLINED_FUNCTION_24(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_1();
  v14 = type metadata accessor for NeuralNetwork.Layer(0);
  v15 = OUTLINED_FUNCTION_24(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  v18 = v17 - v16;
  v19 = type metadata accessor for Proto_NeuralNetworkLayer(0);
  v20 = OUTLINED_FUNCTION_24(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3();
  v23 = v22 - v21;
  *(v6 + 16) = 0;
  *(v6 + 24) = 1;
  *(v6 + 32) = 0;
  *(v6 + 40) = 1;
  v24 = type metadata accessor for Proto_NeuralNetworkRegressor(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v25 = *(v24 + 36);
  updated = type metadata accessor for Proto_NetworkUpdateParameters(0);
  v27 = v6 + v25;
  v28 = v4;
  __swift_storeEnumTagSinglePayload(v27, 1, 1, updated);
  v29 = *(v4 + 16);
  if (v29)
  {
    v54 = v10;
    v55 = v1;
    v56 = v6;
    v30 = OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
    sub_2574843E0(v30, v29, 0);
    v31 = v58;
    OUTLINED_FUNCTION_193();
    v33 = v28 + v32;
    v35 = *(v34 + 72);
    do
    {
      v36 = OUTLINED_FUNCTION_2_54();
      sub_2576C928C(v36, v18);
      OUTLINED_FUNCTION_4_46();
      sub_2576C928C(v18, v23);
      OUTLINED_FUNCTION_3_2();
      sub_257499A2C(v18, v37);
      v58 = v31;
      v39 = *(v31 + 16);
      v38 = *(v31 + 24);
      if (v39 >= v38 >> 1)
      {
        v41 = OUTLINED_FUNCTION_13_1(v38);
        sub_2574843E0(v41, v39 + 1, 1);
      }

      *(v31 + 16) = v39 + 1;
      OUTLINED_FUNCTION_193();
      OUTLINED_FUNCTION_11_2();
      sub_257499A84(v23, v40);
      v33 += v35;
      --v29;
    }

    while (v29);

    v1 = v55;
    v6 = v56;
    v10 = v54;
  }

  else
  {

    v31 = MEMORY[0x277D84F90];
  }

  *v6 = v31;
  v42 = *(v57 + 16);
  if (v42)
  {
    v43 = OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
    sub_257484438(v43, v42, 0);
    v44 = v58;
    OUTLINED_FUNCTION_193();
    v46 = v57 + v45;
    v47 = *(v10 + 72);
    do
    {
      OUTLINED_FUNCTION_10_37();
      sub_2576C928C(v46, v0);
      OUTLINED_FUNCTION_6_43();
      sub_2576C928C(v0, v1);
      OUTLINED_FUNCTION_6_1();
      sub_257499A2C(v0, v48);
      v49 = v1;
      v51 = *(v58 + 16);
      v50 = *(v58 + 24);
      if (v51 >= v50 >> 1)
      {
        v53 = OUTLINED_FUNCTION_13_1(v50);
        sub_257484438(v53, v51 + 1, 1);
      }

      *(v58 + 16) = v51 + 1;
      OUTLINED_FUNCTION_193();
      OUTLINED_FUNCTION_9_2();
      sub_257499A84(v49, v52);
      v46 += v47;
      --v42;
      v1 = v49;
    }

    while (v42);
  }

  else
  {

    v44 = MEMORY[0x277D84F90];
  }

  *(v6 + 8) = v44;
  OUTLINED_FUNCTION_35();
}

void NeuralNetworkRegressor.customMirror.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v21;
  a20 = v22;
  v23 = sub_257743A84();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3();
  v27 = v26 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  v29 = OUTLINED_FUNCTION_13(v28);
  MEMORY[0x28223BE20](v29);
  v31 = &a9 - v30;
  type metadata accessor for NeuralNetworkRegressor(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3();
  sub_2576C928C(v20, v34 - v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_257744E70;
  v36 = OUTLINED_FUNCTION_27_19(v35, 24940);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A098, &unk_257744EB0);
  *(v35 + 48) = v36;
  *(v35 + 72) = v37;
  strcpy((v35 + 80), "preprocessors");
  *(v35 + 94) = -4864;
  v38 = NeuralNetworkRegressor.preprocessors.getter();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A0A0, &qword_257770100);
  *(v35 + 96) = v38;
  *(v35 + 120) = v39;
  *(v35 + 128) = 0xD000000000000016;
  *(v35 + 136) = 0x800000025777A030;
  *(v35 + 168) = &type metadata for NeuralNetwork.ArrayShapeMapping;
  v40 = *(v20 + 24) == 1 && *(v20 + 16) != 0;
  *(v35 + 144) = v40;
  *(v35 + 176) = 0xD000000000000016;
  *(v35 + 184) = 0x800000025777A050;
  *(v35 + 216) = &type metadata for NeuralNetwork.ImageShapeMapping;
  *(v35 + 192) = *(v20 + 40);
  v41 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v31, 1, 1, v41);
  (*(v24 + 104))(v27, *MEMORY[0x277D84C38], v23);
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t type metadata accessor for NeuralNetworkRegressor(uint64_t a1)
{
  result = qword_281537C08;
  if (!qword_281537C08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2576C91A0()
{
  result = qword_27F87BAE0;
  if (!qword_27F87BAE0)
  {
    type metadata accessor for Proto_NeuralNetworkRegressor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87BAE0);
  }

  return result;
}

uint64_t sub_2576C9220(uint64_t a1)
{
  result = type metadata accessor for Proto_NeuralNetworkRegressor(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2576C928C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t OUTLINED_FUNCTION_27_19@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = a2 & 0xFFFF00000000FFFFLL | 0x737265790000;
  *(a1 + 40) = 0xE600000000000000;

  return NeuralNetworkRegressor.layers.getter();
}

uint64_t NeuralNetwork.Layer.SliceParameters.init(startIndex:endIndex:stride:axis:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X8>)
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
  }

  return result;
}

uint64_t (*NeuralNetwork.Layer.SliceParameters.startIndex.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_257636A44;
}

uint64_t (*NeuralNetwork.Layer.SliceParameters.endIndex.modify(void *a1))()
{
  *a1 = *(v1 + 8);
  a1[1] = v1;
  return sub_2576C9454;
}

uint64_t NeuralNetwork.Layer.SliceParameters.stride.getter()
{
  result = *(v0 + 16);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t NeuralNetwork.Layer.SliceParameters.stride.setter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 16) = result;
  }

  return result;
}

uint64_t *(*NeuralNetwork.Layer.SliceParameters.stride.modify(uint64_t *(*result)(uint64_t *result, char a2)))(uint64_t *result, char a2)
{
  *(result + 1) = v1;
  v2 = *(v1 + 16);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    *result = v2;
    return sub_257664ACC;
  }

  return result;
}

void NeuralNetwork.Layer.SliceParameters.axis.getter(_BYTE *a1@<X8>)
{
  if (*(v1 + 32) == 1)
  {
    v2 = *(v1 + 24);
  }

  else
  {
    v2 = 0;
  }

  *a1 = v2;
}

unsigned __int8 *NeuralNetwork.Layer.SliceParameters.axis.setter(unsigned __int8 *result)
{
  *(v1 + 24) = *result;
  *(v1 + 32) = 1;
  return result;
}

uint64_t *(*NeuralNetwork.Layer.SliceParameters.axis.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  if (*(v1 + 32) == 1)
  {
    v2 = *(v1 + 24);
  }

  else
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  return sub_2576C959C;
}

uint64_t *sub_2576C959C(uint64_t *result)
{
  v1 = *result;
  *(v1 + 24) = *(result + 8);
  *(v1 + 32) = 1;
  return result;
}

uint64_t (*NeuralNetwork.Layer.SliceBySizeParameters.size.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_257673058;
}

void *(*NeuralNetwork.Layer.SliceBySizeParameters.axis.modify(void *a1))(void *result)
{
  *a1 = *(v1 + 8);
  a1[1] = v1;
  return sub_2576C98FC;
}

uint64_t NeuralNetwork.Layer.SliceParameters.customMirror.getter()
{
  v1 = sub_257743A84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for NeuralNetwork.Layer.SliceParameters(0);
  MEMORY[0x28223BE20](v8);
  sub_2576C9888(v0, &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  result = swift_allocObject();
  *(result + 16) = xmmword_257744E70;
  *(result + 32) = 0x646E497472617473;
  *(result + 40) = 0xEA00000000007865;
  v11 = MEMORY[0x277D83B88];
  v12 = v0[1];
  *(result + 48) = *v0;
  *(result + 72) = v11;
  *(result + 80) = 0x7865646E49646E65;
  *(result + 88) = 0xE800000000000000;
  *(result + 96) = v12;
  *(result + 120) = v11;
  *(result + 128) = 0x656469727473;
  *(result + 136) = 0xE600000000000000;
  v13 = v0[2];
  if (v13 < 0)
  {
    __break(1u);
  }

  else
  {
    *(result + 144) = v13;
    *(result + 168) = v11;
    *(result + 176) = 1936291937;
    *(result + 184) = 0xE400000000000000;
    *(result + 216) = &type metadata for NeuralNetwork.Layer.SliceParameters.Axis;
    NeuralNetwork.Layer.SliceParameters.axis.getter((result + 192));
    v14 = sub_257743A74();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v14);
    (*(v2 + 104))(v4, *MEMORY[0x277D84C38], v1);
    return sub_257743AA4();
  }

  return result;
}

uint64_t sub_2576C9888(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NeuralNetwork.Layer.SliceParameters(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t NeuralNetwork.Layer.MatrixBandPartParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_257743FF0;
  *(v0 + 32) = 0x6F43207265776F4CLL;
  *(v0 + 40) = 0xEB00000000746E75;
  *(v0 + 48) = sub_257743974();
  *(v0 + 56) = v1;
  *(v0 + 64) = 0x6F43207265707055;
  *(v0 + 72) = 0xEB00000000746E75;
  *(v0 + 80) = sub_257743974();
  *(v0 + 88) = v2;
  return v0;
}

uint64_t NeuralNetwork.Layer.MatrixBandPartParameters.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for Proto_MatrixBandPartLayerParams(0);
  *a1 = 0;
  a1[1] = 0;
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL static NeuralNetwork.Layer.MatrixBandPartParameters.== infix(_:_:)(void *a1, void *a2)
{
  result = 0;
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    type metadata accessor for Proto_MatrixBandPartLayerParams(0);
    sub_2577431B4();
    OUTLINED_FUNCTION_1_64();
    v4 = sub_2576C9D70(v2, v3, MEMORY[0x277D216D0]);
    if (OUTLINED_FUNCTION_4_2(v4))
    {
      return 1;
    }
  }

  return result;
}

uint64_t _s20MLModelSpecification13NeuralNetworkV5LayerV25LowerTriangularParametersV20propertyDescriptionsSaySS4name_SS5valuetGvg_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2577442B0;
  *(v0 + 32) = 0x6C616E6F67616944;
  *(v0 + 40) = 0xE800000000000000;
  *(v0 + 48) = sub_257743974();
  *(v0 + 56) = v1;
  return v0;
}

uint64_t sub_2576C9BA8@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a1(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL sub_2576C9C00(void *a1, void *a2, void (*a3)(void))
{
  result = 0;
  if (*a1 == *a2)
  {
    a3(0);
    sub_2577431B4();
    OUTLINED_FUNCTION_1_64();
    v5 = sub_2576C9D70(v3, v4, MEMORY[0x277D216D0]);
    if (OUTLINED_FUNCTION_4_2(v5))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_2576C9D70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2576C9ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2576C9F64()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  type metadata accessor for Proto_TreeEnsembleClassifier.OneOf_ClassLabels(0);
  OUTLINED_FUNCTION_4();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8800E0, &qword_25776A3E8);
  OUTLINED_FUNCTION_13(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v12 = type metadata accessor for TreeEnsemble(0);
  v13 = OUTLINED_FUNCTION_13(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2577442C0;
  strcpy((inited + 32), "Tree Ensemble");
  *(inited + 46) = -4864;
  TreeEnsembleClassifierConfiguration.treeEnsemble.getter(v16);
  sub_25766B950();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  OUTLINED_FUNCTION_8_35();
  sub_2576CB730(v16, v24);
  *(inited + 48) = v19;
  *(inited + 56) = v21;
  *(inited + 64) = v23;
  strcpy((inited + 72), "Class Labels");
  *(inited + 85) = 0;
  *(inited + 86) = -5120;
  v25 = type metadata accessor for Proto_TreeEnsembleClassifier(0);
  sub_2574A172C(v1 + *(v25 + 20), v11, &qword_27F8800E0, &qword_25776A3E8);
  OUTLINED_FUNCTION_65(v11);
  if (v26)
  {
    v28 = 0;
    v27 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_4_47();
    sub_2576CB6D4(v11, v7);
    OUTLINED_FUNCTION_2_55();
    sub_2576CB524(v7, v5);
    sub_2576CAAEC();
    v27 = v33;
    v28 = v34;
    OUTLINED_FUNCTION_0_83();
    sub_2576CB730(v7, v29);
  }

  v33 = v27;
  v34 = v28;
  v30 = sub_2576603F8();

  *(inited + 88) = v30;
  *(inited + 96) = 0;
  *(inited + 104) = 1;
  *(inited + 112) = 0xD000000000000018;
  *(inited + 120) = 0x80000002577811E0;
  if (*(v1 + 8) == 1)
  {
    v31 = *&aIdentitysoftma_0[8 * *v1];
    v32 = qword_257773EC0[*v1];
  }

  else
  {
    v32 = 0xE800000000000000;
    v31 = 0x797469746E656449;
  }

  *(inited + 128) = v31;
  *(inited + 136) = v32;
  *(inited + 144) = 0;
  sub_2576A6964(inited);
  OUTLINED_FUNCTION_35();
}

uint64_t TreeEnsembleClassifierConfiguration.treeEnsemble.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8800E8, &unk_25776A3F0);
  OUTLINED_FUNCTION_13(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_38();
  v7 = type metadata accessor for Proto_TreeEnsembleParameters(v6);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v11 = (v10 - v9);
  v12 = type metadata accessor for Proto_TreeEnsembleClassifier(0);
  sub_2574A172C(v1 + *(v12 + 28), v2, &qword_27F8800E8, &unk_25776A3F0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v7) == 1)
  {
    v13 = MEMORY[0x277D84F90];
    *v11 = MEMORY[0x277D84F90];
    v11[1] = 0;
    v11[2] = v13;
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    if (__swift_getEnumTagSinglePayload(v2, 1, v7) != 1)
    {
      sub_25769F258(v2);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_65();
    sub_2576CB6D4(v2, v11);
  }

  OUTLINED_FUNCTION_1_65();
  return sub_2576CB6D4(v11, a1);
}

uint64_t sub_2576CA38C(uint64_t a1)
{
  v2 = type metadata accessor for TreeEnsemble(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2576CB524(a1, v4);
  return TreeEnsembleClassifierConfiguration.treeEnsemble.setter(v4);
}

uint64_t TreeEnsembleClassifierConfiguration.treeEnsemble.setter(uint64_t a1)
{
  v3 = type metadata accessor for Proto_TreeEnsembleParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  sub_2576CB6D4(a1, v6 - v5);
  v8 = *(type metadata accessor for Proto_TreeEnsembleClassifier(0) + 28);
  sub_25769F258(v1 + v8);
  sub_2576CB6D4(v7, v1 + v8);
  OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v3);
}

void TreeEnsembleClassifierConfiguration.treeEnsemble.modify()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8800E8, &unk_25776A3F0);
  OUTLINED_FUNCTION_13(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Proto_TreeEnsembleParameters(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_4();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = type metadata accessor for TreeEnsemble(0);
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  v3[5] = __swift_coroFrameAllocStub(v13);
  v14 = __swift_coroFrameAllocStub(v13);
  v3[6] = v14;
  v15 = *(type metadata accessor for Proto_TreeEnsembleClassifier(0) + 28);
  *(v3 + 14) = v15;
  sub_2574A172C(v0 + v15, v6, &qword_27F8800E8, &unk_25776A3F0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    v16 = MEMORY[0x277D84F90];
    *v10 = MEMORY[0x277D84F90];
    v10[1] = 0;
    v10[2] = v16;
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
    {
      sub_25769F258(v6);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_65();
    v17 = OUTLINED_FUNCTION_176();
    sub_2576CB6D4(v17, v18);
  }

  OUTLINED_FUNCTION_1_65();
  sub_2576CB6D4(v10, v14);
  OUTLINED_FUNCTION_35();
}

void sub_2576CA6A8()
{
  OUTLINED_FUNCTION_31();
  v1 = *(*v0 + 14);
  v2 = (*v0)[5];
  v3 = (*v0)[6];
  v4 = (*v0)[3];
  v5 = (*v0)[4];
  v6 = (*v0)[1];
  v7 = (*v0)[2];
  v8 = **v0;
  if (v9)
  {
    sub_2576CB524((*v0)[6], v2);
    OUTLINED_FUNCTION_6_44();
    sub_2576CB6D4(v2, v4);
    sub_25769F258(v8 + v1);
    sub_2576CB6D4(v4, v8 + v1);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v7);
    OUTLINED_FUNCTION_8_35();
    sub_2576CB730(v3, v13);
  }

  else
  {
    OUTLINED_FUNCTION_6_44();
    sub_2576CB6D4(v3, v4);
    sub_25769F258(v8 + v1);
    sub_2576CB6D4(v4, v8 + v1);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v7);
  }

  free(v3);
  free(v2);
  free(v5);
  free(v4);
  free(v6);
  OUTLINED_FUNCTION_35();

  free(v17);
}

uint64_t TreeEnsembleClassifierConfiguration.classLabels.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Proto_TreeEnsembleClassifier.OneOf_ClassLabels(0);
  OUTLINED_FUNCTION_4();
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8800E0, &qword_25776A3E8);
  OUTLINED_FUNCTION_13(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  v13 = type metadata accessor for Proto_TreeEnsembleClassifier(0);
  sub_2574A172C(v1 + *(v13 + 20), v12, &qword_27F8800E0, &qword_25776A3E8);
  result = OUTLINED_FUNCTION_65(v12);
  if (v15)
  {
    v17 = 0;
    v16 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_4_47();
    sub_2576CB6D4(v12, v8);
    OUTLINED_FUNCTION_2_55();
    sub_2576CB524(v8, v6);
    sub_2576CAAEC();
    v16 = v19;
    v17 = v20;
    OUTLINED_FUNCTION_0_83();
    result = sub_2576CB730(v8, v18);
  }

  *a1 = v16;
  *(a1 + 8) = v17;
  return result;
}

uint64_t sub_2576CA948@<X0>(uint64_t a1@<X8>)
{
  result = TreeEnsembleClassifierConfiguration.classLabels.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_2576CA98C(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;

  return TreeEnsembleClassifierConfiguration.classLabels.setter(&v3);
}

uint64_t TreeEnsembleClassifierConfiguration.classLabels.setter(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8800E0, &qword_25776A3E8);
  OUTLINED_FUNCTION_13(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v6 = (&v15 - v5);
  v7 = *a1;
  if (a1[1])
  {
    type metadata accessor for Proto_StringVector(0);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    *v6 = v7;
    v8 = type metadata accessor for Proto_TreeEnsembleClassifier.OneOf_ClassLabels(0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {

    sub_25764CFE8(v9);
    v8 = type metadata accessor for Proto_TreeEnsembleClassifier.OneOf_ClassLabels(0);
    swift_storeEnumTagMultiPayload();
  }

  type metadata accessor for Proto_TreeEnsembleClassifier.OneOf_ClassLabels(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v8);
  v13 = type metadata accessor for Proto_TreeEnsembleClassifier(0);
  return sub_2576CAD3C(v6, v1 + *(v13 + 20));
}

void sub_2576CAAEC()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for Proto_StringVector(0);
  v6 = OUTLINED_FUNCTION_13(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v9 = (v8 - v7);
  v10 = type metadata accessor for Proto_Int64Vector(0);
  v11 = OUTLINED_FUNCTION_13(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v12 = OUTLINED_FUNCTION_38();
  type metadata accessor for Proto_TreeEnsembleClassifier.OneOf_ClassLabels(v12);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_2_55();
  sub_2576CB524(v2, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_2576CB6D4(v16, v0);
    v20 = *v0;
    v21 = *(*v0 + 16);
    if (v21)
    {
      v29 = MEMORY[0x277D84F90];
      sub_257483724(0, v21, 0);
      v19 = v29;
      v22 = (v20 + 32);
      v23 = *(v29 + 16);
      do
      {
        v25 = *v22++;
        v24 = v25;
        v26 = *(v29 + 24);
        if (v23 >= v26 >> 1)
        {
          sub_257483724(v26 > 1, v23 + 1, 1);
        }

        *(v29 + 16) = v23 + 1;
        *(v29 + 8 * v23++ + 32) = v24;
        --v21;
      }

      while (v21);
      OUTLINED_FUNCTION_0_83();
      sub_2576CB730(v2, v27);
      OUTLINED_FUNCTION_9_33();
    }

    else
    {
      OUTLINED_FUNCTION_0_83();
      sub_2576CB730(v2, v28);
      OUTLINED_FUNCTION_9_33();
      v19 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_83();
    sub_2576CB730(v2, v18);
    sub_2576CB6D4(v16, v9);
    v19 = *v9;

    sub_2576CB730(v9, type metadata accessor for Proto_StringVector);
  }

  *v4 = v19;
  *(v4 + 8) = EnumCaseMultiPayload != 1;
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2576CAD3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8800E0, &qword_25776A3E8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void (*TreeEnsembleClassifierConfiguration.classLabels.modify(void *a1))(void ***a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  v3[2] = v1;
  v3[3] = type metadata accessor for Proto_TreeEnsembleClassifier.OneOf_ClassLabels(0);
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 64);
  v6 = __swift_coroFrameAllocStub(v5);
  v3[4] = v6;
  v7 = __swift_coroFrameAllocStub(v5);
  v3[5] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8800E0, &qword_25776A3E8);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  v3[6] = __swift_coroFrameAllocStub(v10);
  v3[7] = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  v3[8] = v11;
  v12 = *(type metadata accessor for Proto_TreeEnsembleClassifier(0) + 20);
  *(v3 + 3) = v12;
  sub_2574A172C(v1 + v12, v11, &qword_27F8800E0, &qword_25776A3E8);
  OUTLINED_FUNCTION_65(v11);
  if (v13)
  {
    v15 = 0;
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_4_47();
    sub_2576CB6D4(v11, v7);
    OUTLINED_FUNCTION_2_55();
    sub_2576CB524(v7, v6);
    sub_2576CAAEC();
    v14 = v18;
    v15 = v19;
    OUTLINED_FUNCTION_0_83();
    sub_2576CB730(v7, v16);
  }

  *v3 = v14;
  *(v3 + 8) = v15;
  return sub_2576CAF58;
}

void sub_2576CAF58(void ***a1, char a2)
{
  v6 = *a1;
  v7 = **a1;
  v8 = (*a1)[3];
  if (a2)
  {
    v9 = v6[6];
    if ((*a1)[1])
    {
      type metadata accessor for Proto_StringVector(0);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      *v9 = v7;
      OUTLINED_FUNCTION_176();
      swift_storeEnumTagMultiPayload();
    }

    else
    {

      sub_25764CFE8(v10);
      OUTLINED_FUNCTION_176();
      swift_storeEnumTagMultiPayload();
    }

    OUTLINED_FUNCTION_43_6();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
    sub_2576CAD3C(v9, v5 + v4);
  }

  else
  {
    v9 = v6[7];
    if ((*a1)[1])
    {
      type metadata accessor for Proto_StringVector(0);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      *v9 = v7;
      OUTLINED_FUNCTION_176();
      swift_storeEnumTagMultiPayload();
    }

    else
    {

      sub_25764CFE8(v15);
      OUTLINED_FUNCTION_176();
      swift_storeEnumTagMultiPayload();
    }

    OUTLINED_FUNCTION_43_6();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    sub_2576CAD3C(v8, v5 + v4);
  }

  free(v7);
  free(v8);
  free(v9);
  free(v2);
  free(v3);

  free(v6);
}

void TreeEnsembleClassifierConfiguration.postEvaluationFunction.getter(_BYTE *a1@<X8>)
{
  if (v1[8] == 1)
  {
    v2 = 0x1020100u >> (8 * *v1);
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  *a1 = v2;
}

unsigned __int8 *TreeEnsembleClassifierConfiguration.postEvaluationFunction.setter(unsigned __int8 *result)
{
  *v1 = *result;
  *(v1 + 8) = 1;
  return result;
}

uint64_t *(*TreeEnsembleClassifierConfiguration.postEvaluationFunction.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  if (v1[8] == 1)
  {
    v2 = 0x1020100u >> (8 * *v1);
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  *(a1 + 8) = v2;
  return sub_25749B4B4;
}

uint64_t TreeEnsembleClassifierConfiguration.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for Proto_TreeEnsembleClassifier(0);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for Proto_TreeEnsembleClassifier.OneOf_ClassLabels(0);
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v5 = *(v2 + 28);
  v6 = type metadata accessor for Proto_TreeEnsembleParameters(0);

  return __swift_storeEnumTagSinglePayload(a1 + v5, 1, 1, v6);
}

void TreeEnsembleClassifierConfiguration.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  v2 = sub_257743A84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_38();
  type metadata accessor for TreeEnsembleClassifierConfiguration(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  sub_2576CB524(v0, v12 - v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2577442C0;
  strcpy((v13 + 32), "treeEnsemble");
  *(v13 + 45) = 0;
  *(v13 + 46) = -5120;
  *(v13 + 72) = type metadata accessor for TreeEnsemble(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v13 + 48));
  TreeEnsembleClassifierConfiguration.treeEnsemble.getter(boxed_opaque_existential_0);
  *(v13 + 80) = 0x62614C7373616C63;
  *(v13 + 88) = 0xEB00000000736C65;
  *(v13 + 120) = &type metadata for TreeEnsembleClassifierConfiguration.ClassLabels;
  TreeEnsembleClassifierConfiguration.classLabels.getter(v13 + 96);
  *(v13 + 128) = 0xD000000000000016;
  *(v13 + 136) = 0x8000000257780980;
  *(v13 + 168) = &type metadata for TreeEnsemble.PostEvaluationFunction;
  TreeEnsembleClassifierConfiguration.postEvaluationFunction.getter((v13 + 144));
  v15 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v15);
  (*(v3 + 104))(v6, *MEMORY[0x277D84C38], v2);
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t type metadata accessor for TreeEnsembleClassifierConfiguration(uint64_t a1)
{
  result = qword_281537528;
  if (!qword_281537528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2576CB524(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t static TreeEnsembleClassifierConfiguration.ClassLabels.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v6)
    {
      return sub_257479C78(v4, v5);
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

  return sub_257487374();
}

unint64_t sub_2576CB5C8()
{
  result = qword_27F87BAF0;
  if (!qword_27F87BAF0)
  {
    type metadata accessor for Proto_TreeEnsembleClassifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87BAF0);
  }

  return result;
}

uint64_t sub_2576CB64C(uint64_t a1)
{
  result = type metadata accessor for Proto_TreeEnsembleClassifier(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2576CB6D4(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_2576CB730(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_9_33()
{

  return sub_2576CB730(v0, type metadata accessor for Proto_Int64Vector);
}

uint64_t NeuralNetwork.Layer.Kind.propertyDescriptions.getter()
{
  v0 = type metadata accessor for NeuralNetwork.Layer.CustomParameters(0);
  v1 = OUTLINED_FUNCTION_13(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_12_1();
  v977 = v2;
  v3 = OUTLINED_FUNCTION_153();
  v4 = type metadata accessor for NeuralNetwork.Layer.NonMaximumSuppressionParameters(v3);
  v5 = OUTLINED_FUNCTION_13(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_1();
  v975 = v6;
  v7 = OUTLINED_FUNCTION_153();
  v8 = type metadata accessor for NeuralNetwork.Layer.ArgSortParameters(v7);
  v9 = OUTLINED_FUNCTION_13(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_12_1();
  v976 = v10;
  v11 = OUTLINED_FUNCTION_153();
  v12 = type metadata accessor for NeuralNetwork.Layer.TopKParameters(v11);
  v13 = OUTLINED_FUNCTION_13(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12_1();
  v973 = v14;
  v15 = OUTLINED_FUNCTION_153();
  v16 = type metadata accessor for NeuralNetwork.Layer.OneHotParameters(v15);
  v17 = OUTLINED_FUNCTION_13(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_12_1();
  v971 = v18;
  v19 = OUTLINED_FUNCTION_153();
  v20 = type metadata accessor for NeuralNetwork.Layer.BiasParameters(v19);
  v21 = OUTLINED_FUNCTION_13(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_12_1();
  v970 = v22;
  v23 = OUTLINED_FUNCTION_153();
  v24 = type metadata accessor for NeuralNetwork.Layer.EmbeddingNDParameters(v23);
  v25 = OUTLINED_FUNCTION_13(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_12_1();
  v974 = v26;
  v27 = OUTLINED_FUNCTION_153();
  v28 = type metadata accessor for NeuralNetwork.Layer.EmbeddingParameters(v27);
  v29 = OUTLINED_FUNCTION_13(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_12_1();
  v972 = v30;
  v31 = OUTLINED_FUNCTION_153();
  v32 = type metadata accessor for NeuralNetwork.Layer.UpperTriangularParameters(v31);
  v33 = OUTLINED_FUNCTION_13(v32);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_12_1();
  v969 = v34;
  v35 = OUTLINED_FUNCTION_153();
  v36 = type metadata accessor for NeuralNetwork.Layer.LowerTriangularParameters(v35);
  v37 = OUTLINED_FUNCTION_13(v36);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_12_1();
  v968 = v38;
  v39 = OUTLINED_FUNCTION_153();
  v40 = type metadata accessor for NeuralNetwork.Layer.MatrixBandPartParameters(v39);
  v41 = OUTLINED_FUNCTION_13(v40);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_12_1();
  v967 = v42;
  v43 = OUTLINED_FUNCTION_153();
  v44 = type metadata accessor for NeuralNetwork.Layer.CategoricalDistributionParameters(v43);
  v45 = OUTLINED_FUNCTION_13(v44);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_12_1();
  v965 = v46;
  v47 = OUTLINED_FUNCTION_153();
  v48 = type metadata accessor for NeuralNetwork.Layer.RandomBernoulliDynamicParameters(v47);
  v49 = OUTLINED_FUNCTION_13(v48);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_12_1();
  v966 = v50;
  v51 = OUTLINED_FUNCTION_153();
  v52 = type metadata accessor for NeuralNetwork.Layer.RandomBernoulliStaticParameters(v51);
  v53 = OUTLINED_FUNCTION_13(v52);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_12_1();
  v55 = OUTLINED_FUNCTION_38_0(v54);
  v56 = type metadata accessor for NeuralNetwork.Layer.RandomBernoulliLikeParameters(v55);
  v57 = OUTLINED_FUNCTION_13(v56);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_12_1();
  v59 = OUTLINED_FUNCTION_38_0(v58);
  v60 = type metadata accessor for NeuralNetwork.Layer.RandomUniformDynamicParameters(v59);
  v61 = OUTLINED_FUNCTION_13(v60);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_12_1();
  v63 = OUTLINED_FUNCTION_38_0(v62);
  v64 = type metadata accessor for NeuralNetwork.Layer.RandomUniformStaticParameters(v63);
  v65 = OUTLINED_FUNCTION_13(v64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_12_1();
  v67 = OUTLINED_FUNCTION_38_0(v66);
  v68 = type metadata accessor for NeuralNetwork.Layer.RandomUniformLikeParameters(v67);
  v69 = OUTLINED_FUNCTION_13(v68);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_12_1();
  v71 = OUTLINED_FUNCTION_38_0(v70);
  v72 = type metadata accessor for NeuralNetwork.Layer.RandomNormalDynamicParameters(v71);
  v73 = OUTLINED_FUNCTION_13(v72);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_12_1();
  v75 = OUTLINED_FUNCTION_38_0(v74);
  v76 = type metadata accessor for NeuralNetwork.Layer.RandomNormalStaticParameters(v75);
  v77 = OUTLINED_FUNCTION_13(v76);
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_12_1();
  v79 = OUTLINED_FUNCTION_38_0(v78);
  v80 = type metadata accessor for NeuralNetwork.Layer.RandomNormalLikeParameters(v79);
  v81 = OUTLINED_FUNCTION_13(v80);
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_12_1();
  v83 = OUTLINED_FUNCTION_38_0(v82);
  v84 = type metadata accessor for NeuralNetwork.Layer.GreaterEqualParameters(v83);
  v85 = OUTLINED_FUNCTION_13(v84);
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_12_1();
  v87 = OUTLINED_FUNCTION_38_0(v86);
  v88 = type metadata accessor for NeuralNetwork.Layer.GreaterThanParameters(v87);
  v89 = OUTLINED_FUNCTION_13(v88);
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_12_1();
  v91 = OUTLINED_FUNCTION_38_0(v90);
  v92 = type metadata accessor for NeuralNetwork.Layer.LessEqualParameters(v91);
  v93 = OUTLINED_FUNCTION_13(v92);
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_12_1();
  v95 = OUTLINED_FUNCTION_38_0(v94);
  v96 = type metadata accessor for NeuralNetwork.Layer.LessThanParameters(v95);
  v97 = OUTLINED_FUNCTION_13(v96);
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_12_1();
  v99 = OUTLINED_FUNCTION_38_0(v98);
  v100 = type metadata accessor for NeuralNetwork.Layer.NotEqualParameters(v99);
  v101 = OUTLINED_FUNCTION_13(v100);
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_12_1();
  v103 = OUTLINED_FUNCTION_38_0(v102);
  v104 = type metadata accessor for NeuralNetwork.Layer.EqualParameters(v103);
  v105 = OUTLINED_FUNCTION_13(v104);
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_12_1();
  v107 = OUTLINED_FUNCTION_38_0(v106);
  v108 = type metadata accessor for NeuralNetwork.Layer.RangeDynamicParameters(v107);
  v109 = OUTLINED_FUNCTION_13(v108);
  MEMORY[0x28223BE20](v109);
  OUTLINED_FUNCTION_12_1();
  v111 = OUTLINED_FUNCTION_38_0(v110);
  v112 = type metadata accessor for NeuralNetwork.Layer.RangeStaticParameters(v111);
  v113 = OUTLINED_FUNCTION_13(v112);
  MEMORY[0x28223BE20](v113);
  OUTLINED_FUNCTION_12_1();
  v115 = OUTLINED_FUNCTION_38_0(v114);
  v116 = type metadata accessor for NeuralNetwork.Layer.LoopParameters(v115);
  v117 = OUTLINED_FUNCTION_13(v116);
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_12_1();
  v119 = OUTLINED_FUNCTION_38_0(v118);
  v120 = type metadata accessor for NeuralNetwork.Layer.ArgMaxParameters(v119);
  v121 = OUTLINED_FUNCTION_13(v120);
  MEMORY[0x28223BE20](v121);
  OUTLINED_FUNCTION_12_1();
  v123 = OUTLINED_FUNCTION_38_0(v122);
  v124 = type metadata accessor for NeuralNetwork.Layer.ArgMinParameters(v123);
  v125 = OUTLINED_FUNCTION_13(v124);
  MEMORY[0x28223BE20](v125);
  OUTLINED_FUNCTION_12_1();
  v127 = OUTLINED_FUNCTION_38_0(v126);
  v128 = type metadata accessor for NeuralNetwork.Layer.CumulativeSumParameters(v127);
  v129 = OUTLINED_FUNCTION_13(v128);
  MEMORY[0x28223BE20](v129);
  OUTLINED_FUNCTION_12_1();
  v131 = OUTLINED_FUNCTION_38_0(v130);
  v132 = type metadata accessor for NeuralNetwork.Layer.ReduceLogSumExpParameters(v131);
  v133 = OUTLINED_FUNCTION_13(v132);
  MEMORY[0x28223BE20](v133);
  OUTLINED_FUNCTION_12_1();
  v135 = OUTLINED_FUNCTION_38_0(v134);
  v136 = type metadata accessor for NeuralNetwork.Layer.ReduceSumSquareParameters(v135);
  v137 = OUTLINED_FUNCTION_13(v136);
  MEMORY[0x28223BE20](v137);
  OUTLINED_FUNCTION_12_1();
  v139 = OUTLINED_FUNCTION_38_0(v138);
  v140 = type metadata accessor for NeuralNetwork.Layer.ReduceLogSumParameters(v139);
  v141 = OUTLINED_FUNCTION_13(v140);
  MEMORY[0x28223BE20](v141);
  OUTLINED_FUNCTION_12_1();
  v143 = OUTLINED_FUNCTION_38_0(v142);
  v144 = type metadata accessor for NeuralNetwork.Layer.ReduceMeanParameters(v143);
  v145 = OUTLINED_FUNCTION_13(v144);
  MEMORY[0x28223BE20](v145);
  OUTLINED_FUNCTION_12_1();
  v147 = OUTLINED_FUNCTION_38_0(v146);
  v148 = type metadata accessor for NeuralNetwork.Layer.ReduceProdParameters(v147);
  v149 = OUTLINED_FUNCTION_13(v148);
  MEMORY[0x28223BE20](v149);
  OUTLINED_FUNCTION_12_1();
  v151 = OUTLINED_FUNCTION_38_0(v150);
  v152 = type metadata accessor for NeuralNetwork.Layer.ReduceSumParameters(v151);
  v153 = OUTLINED_FUNCTION_13(v152);
  MEMORY[0x28223BE20](v153);
  OUTLINED_FUNCTION_12_1();
  v155 = OUTLINED_FUNCTION_38_0(v154);
  v156 = type metadata accessor for NeuralNetwork.Layer.ReduceMinParameters(v155);
  v157 = OUTLINED_FUNCTION_13(v156);
  MEMORY[0x28223BE20](v157);
  OUTLINED_FUNCTION_12_1();
  v159 = OUTLINED_FUNCTION_38_0(v158);
  v160 = type metadata accessor for NeuralNetwork.Layer.ReduceMaxParameters(v159);
  v161 = OUTLINED_FUNCTION_13(v160);
  MEMORY[0x28223BE20](v161);
  OUTLINED_FUNCTION_12_1();
  v163 = OUTLINED_FUNCTION_38_0(v162);
  v164 = type metadata accessor for NeuralNetwork.Layer.ReduceL2Parameters(v163);
  v165 = OUTLINED_FUNCTION_13(v164);
  MEMORY[0x28223BE20](v165);
  OUTLINED_FUNCTION_12_1();
  v167 = OUTLINED_FUNCTION_38_0(v166);
  v168 = type metadata accessor for NeuralNetwork.Layer.ReduceL1Parameters(v167);
  v169 = OUTLINED_FUNCTION_13(v168);
  MEMORY[0x28223BE20](v169);
  OUTLINED_FUNCTION_12_1();
  v171 = OUTLINED_FUNCTION_38_0(v170);
  v172 = type metadata accessor for NeuralNetwork.Layer.ReduceParameters(v171);
  v173 = OUTLINED_FUNCTION_13(v172);
  MEMORY[0x28223BE20](v173);
  OUTLINED_FUNCTION_12_1();
  v175 = OUTLINED_FUNCTION_38_0(v174);
  v176 = type metadata accessor for NeuralNetwork.Layer.CropResizeParameters(v175);
  v177 = OUTLINED_FUNCTION_13(v176);
  MEMORY[0x28223BE20](v177);
  OUTLINED_FUNCTION_12_1();
  v179 = OUTLINED_FUNCTION_38_0(v178);
  v180 = type metadata accessor for NeuralNetwork.Layer.ResizeBilinearParameters(v179);
  v181 = OUTLINED_FUNCTION_13(v180);
  MEMORY[0x28223BE20](v181);
  OUTLINED_FUNCTION_12_1();
  v183 = OUTLINED_FUNCTION_38_0(v182);
  v184 = type metadata accessor for NeuralNetwork.Layer.CropParameters(v183);
  v185 = OUTLINED_FUNCTION_13(v184);
  MEMORY[0x28223BE20](v185);
  OUTLINED_FUNCTION_12_1();
  v187 = OUTLINED_FUNCTION_38_0(v186);
  v188 = type metadata accessor for NeuralNetwork.Layer.GRUParameters(v187);
  v189 = OUTLINED_FUNCTION_13(v188);
  MEMORY[0x28223BE20](v189);
  OUTLINED_FUNCTION_12_1();
  v191 = OUTLINED_FUNCTION_38_0(v190);
  v192 = type metadata accessor for NeuralNetwork.Layer.SimpleRecurrentParameters(v191);
  v193 = OUTLINED_FUNCTION_13(v192);
  MEMORY[0x28223BE20](v193);
  OUTLINED_FUNCTION_12_1();
  v195 = OUTLINED_FUNCTION_38_0(v194);
  v196 = type metadata accessor for NeuralNetwork.Layer.BidirectionalLSTMParameters(v195);
  v197 = OUTLINED_FUNCTION_13(v196);
  MEMORY[0x28223BE20](v197);
  OUTLINED_FUNCTION_12_1();
  v199 = OUTLINED_FUNCTION_38_0(v198);
  v200 = type metadata accessor for NeuralNetwork.Layer.UnidirectionalLSTMParameters(v199);
  v201 = OUTLINED_FUNCTION_13(v200);
  MEMORY[0x28223BE20](v201);
  OUTLINED_FUNCTION_12_1();
  v203 = OUTLINED_FUNCTION_38_0(v202);
  v204 = type metadata accessor for NeuralNetwork.Layer.LayerNormalizeParameters(v203);
  v205 = OUTLINED_FUNCTION_13(v204);
  MEMORY[0x28223BE20](v205);
  OUTLINED_FUNCTION_12_1();
  v207 = OUTLINED_FUNCTION_38_0(v206);
  v208 = type metadata accessor for NeuralNetwork.Layer.LRNParameters(v207);
  v209 = OUTLINED_FUNCTION_13(v208);
  MEMORY[0x28223BE20](v209);
  OUTLINED_FUNCTION_12_1();
  v211 = OUTLINED_FUNCTION_38_0(v210);
  v212 = type metadata accessor for NeuralNetwork.Layer.L2NormalizeParameters(v211);
  v213 = OUTLINED_FUNCTION_13(v212);
  MEMORY[0x28223BE20](v213);
  OUTLINED_FUNCTION_12_1();
  v215 = OUTLINED_FUNCTION_38_0(v214);
  v216 = type metadata accessor for NeuralNetwork.Layer.MeanVarianceNormalizeParameters(v215);
  v217 = OUTLINED_FUNCTION_13(v216);
  MEMORY[0x28223BE20](v217);
  OUTLINED_FUNCTION_12_1();
  v219 = OUTLINED_FUNCTION_38_0(v218);
  v220 = type metadata accessor for NeuralNetwork.Layer.SoftmaxNDParameters(v219);
  v221 = OUTLINED_FUNCTION_13(v220);
  MEMORY[0x28223BE20](v221);
  OUTLINED_FUNCTION_12_1();
  v223 = OUTLINED_FUNCTION_38_0(v222);
  v224 = type metadata accessor for NeuralNetwork.Layer.BatchNormalizeParameters(v223);
  v225 = OUTLINED_FUNCTION_13(v224);
  MEMORY[0x28223BE20](v225);
  OUTLINED_FUNCTION_12_1();
  v227 = OUTLINED_FUNCTION_38_0(v226);
  v228 = type metadata accessor for NeuralNetwork.Layer.ScaleParameters(v227);
  v229 = OUTLINED_FUNCTION_13(v228);
  MEMORY[0x28223BE20](v229);
  OUTLINED_FUNCTION_12_1();
  v231 = OUTLINED_FUNCTION_38_0(v230);
  v232 = type metadata accessor for NeuralNetwork.Layer.MultiplyParameters(v231);
  v233 = OUTLINED_FUNCTION_13(v232);
  MEMORY[0x28223BE20](v233);
  OUTLINED_FUNCTION_12_1();
  v235 = OUTLINED_FUNCTION_38_0(v234);
  v236 = type metadata accessor for NeuralNetwork.Layer.AddParameters(v235);
  v237 = OUTLINED_FUNCTION_13(v236);
  MEMORY[0x28223BE20](v237);
  OUTLINED_FUNCTION_12_1();
  v239 = OUTLINED_FUNCTION_38_0(v238);
  v240 = type metadata accessor for NeuralNetwork.Layer.Pool3DParameters(v239);
  v241 = OUTLINED_FUNCTION_13(v240);
  MEMORY[0x28223BE20](v241);
  OUTLINED_FUNCTION_12_1();
  v243 = OUTLINED_FUNCTION_38_0(v242);
  v244 = type metadata accessor for NeuralNetwork.Layer.PoolParameters(v243);
  v245 = OUTLINED_FUNCTION_13(v244);
  MEMORY[0x28223BE20](v245);
  OUTLINED_FUNCTION_12_1();
  v247 = OUTLINED_FUNCTION_38_0(v246);
  v248 = type metadata accessor for NeuralNetwork.Layer.Convolution3DParameters(v247);
  v249 = OUTLINED_FUNCTION_13(v248);
  MEMORY[0x28223BE20](v249);
  OUTLINED_FUNCTION_12_1();
  v251 = OUTLINED_FUNCTION_38_0(v250);
  v252 = type metadata accessor for NeuralNetwork.Layer.ConvolutionParameters(v251);
  v253 = OUTLINED_FUNCTION_13(v252);
  MEMORY[0x28223BE20](v253);
  OUTLINED_FUNCTION_12_1();
  v255 = OUTLINED_FUNCTION_38_0(v254);
  v256 = type metadata accessor for NeuralNetwork.Layer.ClampedReluParameters(v255);
  v257 = OUTLINED_FUNCTION_13(v256);
  MEMORY[0x28223BE20](v257);
  OUTLINED_FUNCTION_12_1();
  v259 = OUTLINED_FUNCTION_38_0(v258);
  v260 = type metadata accessor for NeuralNetwork.Layer.GELUParameters(v259);
  v261 = OUTLINED_FUNCTION_13(v260);
  MEMORY[0x28223BE20](v261);
  OUTLINED_FUNCTION_12_1();
  v263 = OUTLINED_FUNCTION_38_0(v262);
  v264 = type metadata accessor for NeuralNetwork.Layer.ClipParameters(v263);
  v265 = OUTLINED_FUNCTION_13(v264);
  MEMORY[0x28223BE20](v265);
  OUTLINED_FUNCTION_12_1();
  v267 = OUTLINED_FUNCTION_38_0(v266);
  v268 = type metadata accessor for NeuralNetwork.Layer.UnaryFunctionParameters(v267);
  v269 = OUTLINED_FUNCTION_13(v268);
  MEMORY[0x28223BE20](v269);
  OUTLINED_FUNCTION_12_1();
  v271 = OUTLINED_FUNCTION_38_0(v270);
  v272 = type metadata accessor for NeuralNetwork.Layer.Activation(v271);
  v273 = OUTLINED_FUNCTION_13(v272);
  MEMORY[0x28223BE20](v273);
  OUTLINED_FUNCTION_12_1();
  v275 = OUTLINED_FUNCTION_38_0(v274);
  v276 = type metadata accessor for NeuralNetwork.Layer.InnerProductParameters(v275);
  v277 = OUTLINED_FUNCTION_13(v276);
  MEMORY[0x28223BE20](v277);
  OUTLINED_FUNCTION_12_1();
  v279 = OUTLINED_FUNCTION_38_0(v278);
  v280 = type metadata accessor for NeuralNetwork.Layer.SlidingWindowsParameters(v279);
  v281 = OUTLINED_FUNCTION_13(v280);
  MEMORY[0x28223BE20](v281);
  OUTLINED_FUNCTION_12_1();
  v283 = OUTLINED_FUNCTION_38_0(v282);
  v284 = type metadata accessor for NeuralNetwork.Layer.SliceBySizeParameters(v283);
  v285 = OUTLINED_FUNCTION_13(v284);
  MEMORY[0x28223BE20](v285);
  OUTLINED_FUNCTION_12_1();
  v287 = OUTLINED_FUNCTION_38_0(v286);
  v288 = type metadata accessor for NeuralNetwork.Layer.SliceDynamicParameters(v287);
  v289 = OUTLINED_FUNCTION_13(v288);
  MEMORY[0x28223BE20](v289);
  OUTLINED_FUNCTION_12_1();
  v291 = OUTLINED_FUNCTION_38_0(v290);
  v292 = type metadata accessor for NeuralNetwork.Layer.SliceStaticParameters(v291);
  v293 = OUTLINED_FUNCTION_13(v292);
  MEMORY[0x28223BE20](v293);
  OUTLINED_FUNCTION_12_1();
  v295 = OUTLINED_FUNCTION_38_0(v294);
  v296 = type metadata accessor for NeuralNetwork.Layer.SliceParameters(v295);
  v297 = OUTLINED_FUNCTION_13(v296);
  MEMORY[0x28223BE20](v297);
  OUTLINED_FUNCTION_12_1();
  v299 = OUTLINED_FUNCTION_38_0(v298);
  v300 = type metadata accessor for NeuralNetwork.Layer.ScatterAlongAxisParameters(v299);
  v301 = OUTLINED_FUNCTION_13(v300);
  MEMORY[0x28223BE20](v301);
  OUTLINED_FUNCTION_12_1();
  v303 = OUTLINED_FUNCTION_38_0(v302);
  v304 = type metadata accessor for NeuralNetwork.Layer.ScatterNDParameters(v303);
  v305 = OUTLINED_FUNCTION_13(v304);
  MEMORY[0x28223BE20](v305);
  OUTLINED_FUNCTION_12_1();
  v307 = OUTLINED_FUNCTION_38_0(v306);
  v308 = type metadata accessor for NeuralNetwork.Layer.ScatterParameters(v307);
  v309 = OUTLINED_FUNCTION_13(v308);
  MEMORY[0x28223BE20](v309);
  OUTLINED_FUNCTION_12_1();
  v311 = OUTLINED_FUNCTION_38_0(v310);
  v312 = type metadata accessor for NeuralNetwork.Layer.GatherAlongAxisParameters(v311);
  v313 = OUTLINED_FUNCTION_13(v312);
  MEMORY[0x28223BE20](v313);
  OUTLINED_FUNCTION_12_1();
  v315 = OUTLINED_FUNCTION_38_0(v314);
  v316 = type metadata accessor for NeuralNetwork.Layer.GatherParameters(v315);
  v317 = OUTLINED_FUNCTION_13(v316);
  MEMORY[0x28223BE20](v317);
  OUTLINED_FUNCTION_12_1();
  v319 = OUTLINED_FUNCTION_38_0(v318);
  v320 = type metadata accessor for NeuralNetwork.Layer.StackParameters(v319);
  v321 = OUTLINED_FUNCTION_13(v320);
  MEMORY[0x28223BE20](v321);
  OUTLINED_FUNCTION_12_1();
  v323 = OUTLINED_FUNCTION_38_0(v322);
  v324 = type metadata accessor for NeuralNetwork.Layer.FlattenTo2DParameters(v323);
  v325 = OUTLINED_FUNCTION_13(v324);
  MEMORY[0x28223BE20](v325);
  OUTLINED_FUNCTION_12_1();
  v327 = OUTLINED_FUNCTION_38_0(v326);
  v328 = type metadata accessor for NeuralNetwork.Layer.BroadcastToStaticParameters(v327);
  v329 = OUTLINED_FUNCTION_13(v328);
  MEMORY[0x28223BE20](v329);
  OUTLINED_FUNCTION_12_1();
  v331 = OUTLINED_FUNCTION_38_0(v330);
  v332 = type metadata accessor for NeuralNetwork.Layer.TransposeParameters(v331);
  v333 = OUTLINED_FUNCTION_13(v332);
  MEMORY[0x28223BE20](v333);
  OUTLINED_FUNCTION_12_1();
  v335 = OUTLINED_FUNCTION_38_0(v334);
  v336 = type metadata accessor for NeuralNetwork.Layer.PermuteParameters(v335);
  v337 = OUTLINED_FUNCTION_13(v336);
  MEMORY[0x28223BE20](v337);
  OUTLINED_FUNCTION_12_1();
  v339 = OUTLINED_FUNCTION_38_0(v338);
  v340 = type metadata accessor for NeuralNetwork.Layer.RankPreservingReshapeParameters(v339);
  v341 = OUTLINED_FUNCTION_13(v340);
  MEMORY[0x28223BE20](v341);
  OUTLINED_FUNCTION_12_1();
  v343 = OUTLINED_FUNCTION_38_0(v342);
  v344 = type metadata accessor for NeuralNetwork.Layer.ReshapeStaticParameters(v343);
  v345 = OUTLINED_FUNCTION_13(v344);
  MEMORY[0x28223BE20](v345);
  OUTLINED_FUNCTION_12_1();
  v347 = OUTLINED_FUNCTION_38_0(v346);
  v348 = type metadata accessor for NeuralNetwork.Layer.ReshapeParameters(v347);
  v349 = OUTLINED_FUNCTION_13(v348);
  MEMORY[0x28223BE20](v349);
  OUTLINED_FUNCTION_12_1();
  v351 = OUTLINED_FUNCTION_38_0(v350);
  v352 = type metadata accessor for NeuralNetwork.Layer.FlattenParameters(v351);
  v353 = OUTLINED_FUNCTION_13(v352);
  MEMORY[0x28223BE20](v353);
  OUTLINED_FUNCTION_12_1();
  v355 = OUTLINED_FUNCTION_38_0(v354);
  v356 = type metadata accessor for NeuralNetwork.Layer.ExpandDimensionsParameters(v355);
  v357 = OUTLINED_FUNCTION_13(v356);
  MEMORY[0x28223BE20](v357);
  OUTLINED_FUNCTION_12_1();
  v359 = OUTLINED_FUNCTION_38_0(v358);
  v360 = type metadata accessor for NeuralNetwork.Layer.SqueezeParameters(v359);
  v361 = OUTLINED_FUNCTION_13(v360);
  MEMORY[0x28223BE20](v361);
  OUTLINED_FUNCTION_12_1();
  v363 = OUTLINED_FUNCTION_38_0(v362);
  v364 = type metadata accessor for NeuralNetwork.Layer.TileParameters(v363);
  v365 = OUTLINED_FUNCTION_13(v364);
  MEMORY[0x28223BE20](v365);
  OUTLINED_FUNCTION_12_1();
  v367 = OUTLINED_FUNCTION_38_0(v366);
  v368 = type metadata accessor for NeuralNetwork.Layer.ReorganizeDataParameters(v367);
  v369 = OUTLINED_FUNCTION_13(v368);
  MEMORY[0x28223BE20](v369);
  OUTLINED_FUNCTION_12_1();
  v371 = OUTLINED_FUNCTION_38_0(v370);
  v372 = type metadata accessor for NeuralNetwork.Layer.ReverseParameters(v371);
  v373 = OUTLINED_FUNCTION_13(v372);
  MEMORY[0x28223BE20](v373);
  OUTLINED_FUNCTION_12_1();
  v375 = OUTLINED_FUNCTION_38_0(v374);
  v376 = type metadata accessor for NeuralNetwork.Layer.ReverseSequenceParameters(v375);
  v377 = OUTLINED_FUNCTION_13(v376);
  MEMORY[0x28223BE20](v377);
  OUTLINED_FUNCTION_12_1();
  v379 = OUTLINED_FUNCTION_38_0(v378);
  v380 = type metadata accessor for NeuralNetwork.Layer.SequenceRepeatParameters(v379);
  v381 = OUTLINED_FUNCTION_13(v380);
  MEMORY[0x28223BE20](v381);
  OUTLINED_FUNCTION_12_1();
  v383 = OUTLINED_FUNCTION_38_0(v382);
  v384 = type metadata accessor for NeuralNetwork.Layer.FillDynamicParameters(v383);
  v385 = OUTLINED_FUNCTION_13(v384);
  MEMORY[0x28223BE20](v385);
  OUTLINED_FUNCTION_12_1();
  v387 = OUTLINED_FUNCTION_38_0(v386);
  v388 = type metadata accessor for NeuralNetwork.Layer.FillStaticParameters(v387);
  v389 = OUTLINED_FUNCTION_13(v388);
  MEMORY[0x28223BE20](v389);
  OUTLINED_FUNCTION_12_1();
  v391 = OUTLINED_FUNCTION_38_0(v390);
  v392 = type metadata accessor for NeuralNetwork.Layer.FillLikeParameters(v391);
  v393 = OUTLINED_FUNCTION_13(v392);
  MEMORY[0x28223BE20](v393);
  OUTLINED_FUNCTION_12_1();
  v395 = OUTLINED_FUNCTION_38_0(v394);
  v396 = type metadata accessor for NeuralNetwork.Layer.UpsampleParameters(v395);
  v397 = OUTLINED_FUNCTION_13(v396);
  MEMORY[0x28223BE20](v397);
  OUTLINED_FUNCTION_3();
  v400 = v399 - v398;
  v401 = type metadata accessor for NeuralNetwork.Layer.SplitNDParameters(0);
  v402 = OUTLINED_FUNCTION_13(v401);
  MEMORY[0x28223BE20](v402);
  OUTLINED_FUNCTION_3();
  v405 = v404 - v403;
  v406 = type metadata accessor for NeuralNetwork.Layer.SplitParameters(0);
  v407 = OUTLINED_FUNCTION_13(v406);
  MEMORY[0x28223BE20](v407);
  OUTLINED_FUNCTION_12_1();
  v409 = OUTLINED_FUNCTION_38_0(v408);
  v410 = type metadata accessor for NeuralNetwork.Layer.ConcatenateNDParameters(v409);
  v411 = OUTLINED_FUNCTION_13(v410);
  MEMORY[0x28223BE20](v411);
  OUTLINED_FUNCTION_3();
  v414 = (v413 - v412);
  v415 = type metadata accessor for NeuralNetwork.Layer.ConcatenateParameters(0);
  v416 = OUTLINED_FUNCTION_13(v415);
  MEMORY[0x28223BE20](v416);
  OUTLINED_FUNCTION_3();
  v419 = (v418 - v417);
  v420 = type metadata accessor for NeuralNetwork.Layer.ConstantPadParameters(0);
  v421 = OUTLINED_FUNCTION_13(v420);
  MEMORY[0x28223BE20](v421);
  OUTLINED_FUNCTION_3();
  v424 = (v423 - v422);
  v425 = type metadata accessor for NeuralNetwork.Layer.PadParameters(0);
  v426 = OUTLINED_FUNCTION_13(v425);
  MEMORY[0x28223BE20](v426);
  OUTLINED_FUNCTION_3();
  v429 = v428 - v427;
  v430 = type metadata accessor for NeuralNetwork.Layer.ConstantNDParameters(0);
  v431 = OUTLINED_FUNCTION_13(v430);
  MEMORY[0x28223BE20](v431);
  OUTLINED_FUNCTION_3();
  v434 = (v433 - v432);
  v435 = type metadata accessor for NeuralNetwork.Layer.ConstantParameters(0);
  v436 = OUTLINED_FUNCTION_13(v435);
  MEMORY[0x28223BE20](v436);
  OUTLINED_FUNCTION_3();
  v439 = v438 - v437;
  type metadata accessor for NeuralNetwork.Layer.Kind(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v440);
  OUTLINED_FUNCTION_3();
  v443 = v442 - v441;
  v444 = OUTLINED_FUNCTION_13_24();
  sub_2576D0534(v444, v443, v445);
  v978 = v443;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v447 = MEMORY[0x277D84F90];
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v735 = OUTLINED_FUNCTION_13_24();
      v737 = sub_2576D0594(v735, v434, v736);
      v447 = NeuralNetwork.Layer.ConstantNDParameters.propertyDescriptions.getter(v737);
      v533 = type metadata accessor for NeuralNetwork.Layer.ConstantNDParameters;
      goto LABEL_138;
    case 2:
      v740 = OUTLINED_FUNCTION_13_24();
      sub_2576D0594(v740, v429, v741);
      NeuralNetwork.Layer.PadParameters.propertyDescriptions.getter();
      v447 = v742;
      v448 = type metadata accessor for NeuralNetwork.Layer.PadParameters;
      v449 = v429;
      goto LABEL_162;
    case 3:
      v673 = OUTLINED_FUNCTION_13_24();
      sub_2576D0594(v673, v424, v674);
      v675 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_34_13(v675);
      v676 = OUTLINED_FUNCTION_22_21(v447, xmmword_2577442C0);
      v676[2].n128_u64[0] = v677;
      v676[2].n128_u64[1] = 0xE500000000000000;
      *(v447 + 48) = sub_257743794();
      *(v447 + 56) = v678;
      *(v447 + 64) = 0x73746E756F6D41;
      *(v447 + 72) = 0xE700000000000000;
      NeuralNetwork.Layer.ConstantPadParameters.amounts.getter();
      v679 = MEMORY[0x259C64F20]();
      v681 = v680;

      *(v447 + 80) = v679;
      *(v447 + 88) = v681;
      OUTLINED_FUNCTION_9_34();
      *(v447 + 96) = v682 | 3;
      *(v447 + 104) = v683;
      OUTLINED_FUNCTION_28_22();
      v686 = v685 | 0x65750000u;
      if (v684)
      {
        v686 = 0x65736C6166;
      }

      v687 = 0xE400000000000000;
      if (v684)
      {
        v687 = 0xE500000000000000;
      }

      *(v447 + 112) = v686;
      *(v447 + 120) = v687;
      v466 = type metadata accessor for NeuralNetwork.Layer.ConstantPadParameters;
      goto LABEL_158;
    case 4:
      v628 = OUTLINED_FUNCTION_13_24();
      sub_2576D0594(v628, v419, v629);
      v630 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_8_4(v630);
      *(v447 + 16) = xmmword_2577442B0;
      OUTLINED_FUNCTION_9_34();
      *(v632 + 32) = v631 | 3;
      *(v632 + 40) = v633;
      OUTLINED_FUNCTION_28_22();
      v637 = v636 | 0x65750000u;
      if (v634)
      {
        v637 = 0x65736C6166;
      }

      v638 = 0xE500000000000000;
      if (!v634)
      {
        v638 = 0xE400000000000000;
      }

      *(v635 + 48) = v637;
      *(v635 + 56) = v638;
      v490 = type metadata accessor for NeuralNetwork.Layer.ConcatenateParameters;
      goto LABEL_143;
    case 5:
      v573 = OUTLINED_FUNCTION_13_24();
      sub_2576D0594(v573, v414, v574);
      v575 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_85_4(v575);
      v576 = OUTLINED_FUNCTION_6_45(v447, xmmword_257743FF0);
      v576[2].n128_u64[0] = v577;
      v576[2].n128_u64[1] = 0xE400000000000000;
      v983 = *v414;
      *(v447 + 48) = sub_257743974();
      *(v447 + 56) = v578;
      OUTLINED_FUNCTION_9_34();
      *(v447 + 64) = v579 | 1;
      *(v447 + 72) = v580;
      OUTLINED_FUNCTION_28_22();
      v583 = v582 | 0x65750000u;
      if (v581)
      {
        v583 = 0x65736C6166;
      }

      v584 = 0xE500000000000000;
      if (!v581)
      {
        v584 = 0xE400000000000000;
      }

      *(v447 + 80) = v583;
      *(v447 + 88) = v584;
      v448 = type metadata accessor for NeuralNetwork.Layer.ConcatenateNDParameters;
      v449 = v414;
      goto LABEL_162;
    case 6:
      v756 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_27_20(v756, v757, &v912);
      v758 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      result = OUTLINED_FUNCTION_8_4(v758);
      *(result + 16) = xmmword_2577442B0;
      *(result + 32) = 0x7374757074754FLL;
      *(result + 40) = 0xE700000000000000;
      if ((*v424 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v447 = result;
        v983 = *v424;
        *(result + 48) = sub_257743974();
        *(v447 + 56) = v760;
        v466 = type metadata accessor for NeuralNetwork.Layer.SplitParameters;
LABEL_158:
        v448 = v466;
        v449 = v424;
LABEL_162:
        sub_2576D05F4(v449, v448);
        return v447;
      }

      return result;
    case 7:
      v761 = OUTLINED_FUNCTION_13_24();
      sub_2576D0594(v761, v405, v762);
      v447 = NeuralNetwork.Layer.SplitNDParameters.propertyDescriptions.getter();
      v448 = type metadata accessor for NeuralNetwork.Layer.SplitNDParameters;
      v449 = v405;
      goto LABEL_162;
    case 8:
      v691 = OUTLINED_FUNCTION_13_24();
      sub_2576D0594(v691, v400, v692);
      NeuralNetwork.Layer.UpsampleParameters.propertyDescriptions.getter();
      v447 = v693;
      v448 = type metadata accessor for NeuralNetwork.Layer.UpsampleParameters;
      v449 = v400;
      goto LABEL_162;
    case 9:
      v614 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_27_20(v614, v615, &v914);
      v616 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_8_4(v616);
      v617 = OUTLINED_FUNCTION_22_21(v447, xmmword_2577442B0);
      *(v447 + 48) = OUTLINED_FUNCTION_16_19(v617, v618);
      *(v447 + 56) = v619;
      v466 = type metadata accessor for NeuralNetwork.Layer.FillLikeParameters;
      goto LABEL_158;
    case 10:
      v596 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_24_21(v596, v597, &v913);
      v447 = NeuralNetwork.Layer.FillStaticParameters.propertyDescriptions.getter();
      v461 = type metadata accessor for NeuralNetwork.Layer.FillStaticParameters;
      goto LABEL_161;
    case 11:
      v588 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_27_20(v588, v589, &v915);
      v590 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_8_4(v590);
      v591 = OUTLINED_FUNCTION_22_21(v447, xmmword_2577442B0);
      *(v447 + 48) = OUTLINED_FUNCTION_16_19(v591, v592);
      *(v447 + 56) = v593;
      v466 = type metadata accessor for NeuralNetwork.Layer.FillDynamicParameters;
      goto LABEL_158;
    case 12:
      v553 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_27_20(v553, v554, &v916);
      v555 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_8_4(v555);
      *(v447 + 16) = xmmword_2577442B0;
      OUTLINED_FUNCTION_7_36(v447, 0x6974697465706552);
      *(v447 + 48) = sub_257743974();
      *(v447 + 56) = v556;
      v466 = type metadata accessor for NeuralNetwork.Layer.SequenceRepeatParameters;
      goto LABEL_158;
    case 13:
      v727 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_36_12(v727, v728, &v919);
      v729 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_85_4(v729);
      *(v447 + 16) = xmmword_257743FF0;
      OUTLINED_FUNCTION_37_12();
      *(v731 + 32) = v732;
      *(v731 + 40) = v730 + 3580;
      v983 = *v434;
      OUTLINED_FUNCTION_368();
      *(v447 + 48) = sub_257743974();
      *(v447 + 56) = v733;
      strcpy((v447 + 64), "Sequence Axis");
      *(v447 + 78) = -4864;
      v983 = v434[1];
      OUTLINED_FUNCTION_368();
      *(v447 + 80) = sub_257743974();
      *(v447 + 88) = v734;
      v533 = type metadata accessor for NeuralNetwork.Layer.ReverseSequenceParameters;
      goto LABEL_138;
    case 14:
      v708 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_27_20(v708, v709, &v918);
      v710 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_8_4(v710);
      *(v447 + 16) = xmmword_2577442B0;
      *(v447 + 32) = 0x65737265766552;
      *(v447 + 40) = 0xE700000000000000;
      *(v447 + 48) = MEMORY[0x259C64F20](*v424, MEMORY[0x277D839B0]);
      *(v447 + 56) = v711;
      v466 = type metadata accessor for NeuralNetwork.Layer.ReverseParameters;
      goto LABEL_158;
    case 15:
      v604 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_24_21(v604, v605, &v917);
      v447 = NeuralNetwork.Layer.ReorganizeDataParameters.propertyDescriptions.getter();
      v461 = type metadata accessor for NeuralNetwork.Layer.ReorganizeDataParameters;
      goto LABEL_161;
    case 16:
      v611 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_36_12(v611, v612, &v920);
      v613 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_8_4(v613);
      *(v447 + 16) = xmmword_2577442B0;
      *(v447 + 32) = 0x6974697465706552;
      *(v447 + 40) = 0xEB00000000736E6FLL;
      NeuralNetwork.Layer.TileParameters.repetitions.getter();
      MEMORY[0x259C64F20]();
      OUTLINED_FUNCTION_25_19();
      *(v447 + 48) = v434;
      *(v447 + 56) = v443;
      v533 = type metadata accessor for NeuralNetwork.Layer.TileParameters;
      goto LABEL_138;
    case 17:
      v655 = OUTLINED_FUNCTION_13_24();
      v419 = v910;
      sub_2576D0594(v655, v910, v656);
      v657 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_85_4(v657);
      v658 = OUTLINED_FUNCTION_6_45(v447, xmmword_257743FF0);
      v658[2].n128_u64[0] = v659 - 0x40000;
      v658[2].n128_u64[1] = 0xE400000000000000;
      NeuralNetwork.Layer.SqueezeParameters.axes.getter();
      MEMORY[0x259C64F20]();
      OUTLINED_FUNCTION_25_19();
      *(v447 + 48) = v910;
      *(v447 + 56) = v443;
      *(v447 + 64) = 0xD00000000000001BLL;
      *(v447 + 72) = 0x8000000257780CA0;
      OUTLINED_FUNCTION_28_22();
      v662 = v661 | 0x65750000u;
      if (v660)
      {
        v662 = 0x65736C6166;
      }

      v663 = 0xE500000000000000;
      if (!v660)
      {
        v663 = 0xE400000000000000;
      }

      *(v447 + 80) = v662;
      *(v447 + 88) = v663;
      v490 = type metadata accessor for NeuralNetwork.Layer.SqueezeParameters;
      goto LABEL_143;
    case 18:
      v749 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_36_12(v749, v750, &v922);
      v751 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_8_4(v751);
      v752 = OUTLINED_FUNCTION_6_45(v447, xmmword_2577442B0);
      OUTLINED_FUNCTION_18_32(v752, v753 - 0x40000);
      NeuralNetwork.Layer.ExpandDimensionsParameters.axes.getter();
      MEMORY[0x259C64F20]();
      OUTLINED_FUNCTION_25_19();
      *(v447 + 48) = v434;
      *(v447 + 56) = v443;
      v533 = type metadata accessor for NeuralNetwork.Layer.ExpandDimensionsParameters;
      goto LABEL_138;
    case 19:
      v546 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_24_21(v546, v547, &v924);
      if (*(v439 + 8) == 1 && *v439)
      {
        v548 = 0xEC0000007473614CLL;
      }

      else
      {
        v548 = 0xED00007473726946;
      }

      v906 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_8_4(v906);
      *(v447 + 16) = xmmword_2577442B0;
      *(v447 + 32) = 0xD000000000000015;
      *(v447 + 40) = 0x80000002577814F0;
      *(v447 + 48) = 0x206C656E6E616843;
      *(v447 + 56) = v548;
      v461 = type metadata accessor for NeuralNetwork.Layer.FlattenParameters;
      goto LABEL_161;
    case 20:
      v602 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_24_21(v602, v603, &v921);
      v447 = NeuralNetwork.Layer.ReshapeParameters.propertyDescriptions.getter();
      v461 = type metadata accessor for NeuralNetwork.Layer.ReshapeParameters;
      goto LABEL_161;
    case 21:
      v712 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_24_21(v712, v713, &v923);
      v447 = NeuralNetwork.Layer.ReshapeStaticParameters.propertyDescriptions.getter();
      v461 = type metadata accessor for NeuralNetwork.Layer.ReshapeStaticParameters;
      goto LABEL_161;
    case 22:
      v763 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_24_21(v763, v764, &v925);
      v447 = NeuralNetwork.Layer.RankPreservingReshapeParameters.propertyDescriptions.getter();
      v461 = type metadata accessor for NeuralNetwork.Layer.RankPreservingReshapeParameters;
      goto LABEL_161;
    case 23:
      v837 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_36_12(v837, v838, &v927);
      v839 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_8_4(v839);
      *(v447 + 16) = xmmword_2577442B0;
      *(v447 + 32) = 0x746174756D726550;
      *(v447 + 40) = 0xEB000000006E6F69;
      NeuralNetwork.Layer.PermuteParameters.permutation.getter();
      MEMORY[0x259C64F20]();
      OUTLINED_FUNCTION_25_19();
      *(v447 + 48) = v434;
      *(v447 + 56) = v443;
      v533 = type metadata accessor for NeuralNetwork.Layer.PermuteParameters;
      goto LABEL_138;
    case 24:
      v528 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_36_12(v528, v529, &v928);
      v530 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_8_4(v530);
      v531 = OUTLINED_FUNCTION_6_45(v447, xmmword_2577442B0);
      OUTLINED_FUNCTION_18_32(v531, v532 - 0x40000);
      NeuralNetwork.Layer.TransposeParameters.axes.getter();
      MEMORY[0x259C64F20]();
      OUTLINED_FUNCTION_25_19();
      *(v447 + 48) = v434;
      *(v447 + 56) = v443;
      v533 = type metadata accessor for NeuralNetwork.Layer.TransposeParameters;
LABEL_138:
      v448 = v533;
      v449 = v434;
      goto LABEL_162;
    case 25:
    case 27:
    case 29:
    case 30:
    case 33:
    case 53:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
    case 61:
    case 62:
    case 63:
    case 64:
    case 67:
    case 80:
    case 92:
    case 93:
    case 97:
    case 98:
    case 99:
    case 100:
    case 102:
    case 103:
      v448 = type metadata accessor for NeuralNetwork.Layer.Kind;
      v449 = v978;
      goto LABEL_162;
    case 26:
      v725 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_24_21(v725, v726, &v926);
      v447 = NeuralNetwork.Layer.BroadcastToStaticParameters.propertyDescriptions.getter();
      v461 = type metadata accessor for NeuralNetwork.Layer.BroadcastToStaticParameters;
      goto LABEL_161;
    case 28:
      v840 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_27_20(v840, v841, &v929);
      v842 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_8_4(v842);
      OUTLINED_FUNCTION_3_59(v447, xmmword_2577442B0);
      *(v447 + 48) = sub_257743974();
      *(v447 + 56) = v843;
      v466 = type metadata accessor for NeuralNetwork.Layer.FlattenTo2DParameters;
      goto LABEL_158;
    case 31:
      v620 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_27_20(v620, v621, &v930);
      v622 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_8_4(v622);
      OUTLINED_FUNCTION_3_59(v447, xmmword_2577442B0);
      *(v447 + 48) = sub_257743974();
      *(v447 + 56) = v623;
      v466 = type metadata accessor for NeuralNetwork.Layer.StackParameters;
      goto LABEL_158;
    case 32:
      v510 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_27_20(v510, v511, &v931);
      v512 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_8_4(v512);
      OUTLINED_FUNCTION_3_59(v447, xmmword_2577442B0);
      *(v447 + 48) = sub_257743974();
      *(v447 + 56) = v513;
      v466 = type metadata accessor for NeuralNetwork.Layer.GatherParameters;
      goto LABEL_158;
    case 34:
      v598 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_27_20(v598, v599, &v933);
      v600 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_8_4(v600);
      OUTLINED_FUNCTION_3_59(v447, xmmword_2577442B0);
      *(v447 + 48) = sub_257743974();
      *(v447 + 56) = v601;
      v466 = type metadata accessor for NeuralNetwork.Layer.GatherAlongAxisParameters;
      goto LABEL_158;
    case 35:
      v714 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_24_21(v714, v715, &v932);
      v447 = NeuralNetwork.Layer.ScatterParameters.propertyDescriptions.getter();
      v461 = type metadata accessor for NeuralNetwork.Layer.ScatterParameters;
      goto LABEL_161;
    case 36:
      v796 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_32_10(v796, v797, &v938);
      if (*(v443 + 8) == 1)
      {
        v798 = 0xE300000000000000;
        v799 = 6579265;
        switch(*v443)
        {
          case 1:
            break;
          case 2:
            v798 = 0xE800000000000000;
            v799 = 0x7463617274627553;
            break;
          case 3:
            v798 = 0xE800000000000000;
            v799 = 0x796C7069746C754DLL;
            break;
          case 4:
            v798 = 0xE600000000000000;
            v799 = 0x656469766944;
            break;
          case 5:
            v798 = 0xE700000000000000;
            v909 = 1769496909;
            goto LABEL_173;
          case 6:
            v798 = 0xE700000000000000;
            v909 = 1768843597;
LABEL_173:
            v799 = v909 | 0x6D756D00000000;
            break;
          default:
            goto LABEL_118;
        }
      }

      else
      {
LABEL_118:
        v798 = 0xE600000000000000;
        v799 = 0x657461647055;
      }

      v800 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_8_4(v800);
      *(v447 + 16) = xmmword_2577442B0;
      v801 = OUTLINED_FUNCTION_18_32(v447, 1701080909);
      *(v801 + 48) = v799;
      *(v801 + 56) = v798;
      v458 = type metadata accessor for NeuralNetwork.Layer.ScatterNDParameters;
      goto LABEL_166;
    case 37:
      v790 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_24_21(v790, v791, &v934);
      v447 = NeuralNetwork.Layer.ScatterAlongAxisParameters.propertyDescriptions.getter();
      v461 = type metadata accessor for NeuralNetwork.Layer.ScatterAlongAxisParameters;
      goto LABEL_161;
    case 38:
      v551 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_24_21(v551, v552, &v935);
      v447 = NeuralNetwork.Layer.SliceParameters.propertyDescriptions.getter();
      v461 = type metadata accessor for NeuralNetwork.Layer.SliceParameters;
      goto LABEL_161;
    case 39:
      v536 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_24_21(v536, v537, &v936);
      v447 = NeuralNetwork.Layer.SliceStaticParameters.propertyDescriptions.getter();
      v461 = type metadata accessor for NeuralNetwork.Layer.SliceStaticParameters;
      goto LABEL_161;
    case 40:
      v846 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_24_21(v846, v847, &v937);
      v447 = NeuralNetwork.Layer.SliceDynamicParameters.propertyDescriptions.getter();
      v461 = type metadata accessor for NeuralNetwork.Layer.SliceDynamicParameters;
      goto LABEL_161;
    case 41:
      v848 = OUTLINED_FUNCTION_13_24();
      v419 = v911;
      sub_2576D0594(v848, v911, v849);
      v850 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_85_4(v850);
      *(v447 + 16) = xmmword_257743FF0;
      *(v447 + 32) = 1702521171;
      *(v447 + 40) = 0xE400000000000000;
      v983 = *v911;
      OUTLINED_FUNCTION_368();
      *(v447 + 48) = sub_257743974();
      *(v447 + 56) = v851;
      *(v447 + 64) = 1936291905;
      *(v447 + 72) = 0xE400000000000000;
      v983 = v911[1];
      OUTLINED_FUNCTION_368();
      *(v447 + 80) = sub_257743974();
      *(v447 + 88) = v852;
      v490 = type metadata accessor for NeuralNetwork.Layer.SliceBySizeParameters;
      goto LABEL_143;
    case 42:
      v886 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_24_21(v886, v887, &v939);
      v447 = NeuralNetwork.Layer.SlidingWindowsParameters.propertyDescriptions.getter();
      v461 = type metadata accessor for NeuralNetwork.Layer.SlidingWindowsParameters;
      goto LABEL_161;
    case 43:
      v666 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_24_21(v666, v667, &v940);
      v447 = NeuralNetwork.Layer.InnerProductParameters.propertyDescriptions.getter();
      v461 = type metadata accessor for NeuralNetwork.Layer.InnerProductParameters;
      goto LABEL_161;
    case 44:
      v507 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_24_21(v507, v508, &v941);
      NeuralNetwork.Layer.Activation.propertyDescriptions.getter();
      v447 = v509;
      v461 = type metadata accessor for NeuralNetwork.Layer.Activation;
      goto LABEL_161;
    case 45:
      v505 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_24_21(v505, v506, &v942);
      v447 = NeuralNetwork.Layer.UnaryFunctionParameters.propertyDescriptions.getter();
      v461 = type metadata accessor for NeuralNetwork.Layer.UnaryFunctionParameters;
      goto LABEL_161;
    case 46:
      v538 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_24_21(v538, v539, &v943);
      v540 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_85_4(v540);
      *(v447 + 16) = xmmword_257743FF0;
      OUTLINED_FUNCTION_17_22();
      *(v541 + 32) = v542;
      *(v541 + 40) = v424;
      *(v447 + 48) = sub_257743794();
      *(v447 + 56) = v543;
      OUTLINED_FUNCTION_20_20();
      *(v447 + 64) = v544;
      *(v447 + 72) = v424;
      *(v447 + 80) = sub_257743794();
      *(v447 + 88) = v545;
      v461 = type metadata accessor for NeuralNetwork.Layer.ClipParameters;
      goto LABEL_161;
    case 47:
      v802 = 0x7463617845;
      v803 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_32_10(v803, v804, &v947);
      if (*(v443 + 8) == 1 && *v443)
      {
        if (*v443 == 1)
        {
          v805 = 0x80000002577814C0;
          v802 = 0xD000000000000020;
        }

        else
        {
          v805 = 0x80000002577814A0;
          v802 = 0xD000000000000015;
        }
      }

      else
      {
        v805 = 0xE500000000000000;
      }

      v907 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_8_4(v907);
      *(v447 + 16) = xmmword_2577442B0;
      v908 = OUTLINED_FUNCTION_18_32(v447, 1701080909);
      *(v908 + 48) = v802;
      *(v908 + 56) = v805;
      v458 = type metadata accessor for NeuralNetwork.Layer.GELUParameters;
      goto LABEL_166;
    case 48:
      v606 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_27_20(v606, v607, &v946);
      v608 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_85_4(v608);
      *(v447 + 48) = OUTLINED_FUNCTION_4_48(v447, xmmword_257743FF0);
      *(v447 + 56) = v609;
      *(v447 + 64) = 1635018050;
      *(v447 + 72) = 0xE400000000000000;
      *(v447 + 80) = sub_257743794();
      *(v447 + 88) = v610;
      v466 = type metadata accessor for NeuralNetwork.Layer.ClampedReluParameters;
      goto LABEL_158;
    case 49:
      v808 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_24_21(v808, v809, &v944);
      NeuralNetwork.Layer.ConvolutionParameters.propertyDescriptions.getter();
      v447 = v810;
      v461 = type metadata accessor for NeuralNetwork.Layer.ConvolutionParameters;
      goto LABEL_161;
    case 50:
      v469 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_24_21(v469, v470, &v945);
      v447 = NeuralNetwork.Layer.Convolution3DParameters.propertyDescriptions.getter();
      v461 = type metadata accessor for NeuralNetwork.Layer.Convolution3DParameters;
      goto LABEL_161;
    case 51:
      v585 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_24_21(v585, v586, &v948);
      NeuralNetwork.Layer.PoolParameters.propertyDescriptions.getter();
      v447 = v587;
      v461 = type metadata accessor for NeuralNetwork.Layer.PoolParameters;
      goto LABEL_161;
    case 52:
      v493 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_24_21(v493, v494, &v949);
      v447 = NeuralNetwork.Layer.Pool3DParameters.propertyDescriptions.getter();
      v461 = type metadata accessor for NeuralNetwork.Layer.Pool3DParameters;
      goto LABEL_161;
    case 54:
      v792 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_27_20(v792, v793, &v950);
      v794 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_8_4(v794);
      *(v447 + 48) = OUTLINED_FUNCTION_30_14(v447, xmmword_2577442B0);
      *(v447 + 56) = v795;
      v466 = type metadata accessor for NeuralNetwork.Layer.AddParameters;
      goto LABEL_158;
    case 55:
      v501 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_27_20(v501, v502, &v952);
      v503 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_8_4(v503);
      *(v447 + 48) = OUTLINED_FUNCTION_30_14(v447, xmmword_2577442B0);
      *(v447 + 56) = v504;
      v466 = type metadata accessor for NeuralNetwork.Layer.MultiplyParameters;
      goto LABEL_158;
    case 65:
      v459 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_24_21(v459, v460, &v951);
      v447 = NeuralNetwork.Layer.ScaleParameters.propertyDescriptions.getter();
      v461 = type metadata accessor for NeuralNetwork.Layer.ScaleParameters;
      goto LABEL_161;
    case 66:
      v884 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_24_21(v884, v885, &v953);
      v447 = NeuralNetwork.Layer.BatchNormalizeParameters.propertyDescriptions.getter();
      v461 = type metadata accessor for NeuralNetwork.Layer.BatchNormalizeParameters;
      goto LABEL_161;
    case 68:
      v624 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_27_20(v624, v625, &v955);
      v626 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_8_4(v626);
      OUTLINED_FUNCTION_3_59(v447, xmmword_2577442B0);
      *(v447 + 48) = sub_257743974();
      *(v447 + 56) = v627;
      v466 = type metadata accessor for NeuralNetwork.Layer.SoftmaxNDParameters;
      goto LABEL_158;
    case 69:
      v882 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_24_21(v882, v883, &v954);
      v447 = NeuralNetwork.Layer.MeanVarianceNormalizeParameters.propertyDescriptions.getter();
      v461 = type metadata accessor for NeuralNetwork.Layer.MeanVarianceNormalizeParameters;
      goto LABEL_161;
    case 70:
      v878 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_27_20(v878, v879, &v957);
      v880 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_8_4(v880);
      *(v447 + 16) = xmmword_2577442B0;
      *(v447 + 32) = 0x6E6F6C69737045;
      *(v447 + 40) = 0xE700000000000000;
      *(v447 + 48) = sub_257743794();
      *(v447 + 56) = v881;
      v466 = type metadata accessor for NeuralNetwork.Layer.L2NormalizeParameters;
      goto LABEL_158;
    case 71:
      v559 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_24_21(v559, v560, &v956);
      v447 = NeuralNetwork.Layer.LRNParameters.propertyDescriptions.getter();
      v461 = type metadata accessor for NeuralNetwork.Layer.LRNParameters;
      goto LABEL_161;
    case 72:
      v534 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_24_21(v534, v535, &v958);
      v447 = NeuralNetwork.Layer.LayerNormalizeParameters.propertyDescriptions.getter();
      v461 = type metadata accessor for NeuralNetwork.Layer.LayerNormalizeParameters;
      goto LABEL_161;
    case 73:
      v671 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_24_21(v671, v672, &v959);
      v447 = NeuralNetwork.Layer.UnidirectionalLSTMParameters.propertyDescriptions.getter();
      v461 = type metadata accessor for NeuralNetwork.Layer.UnidirectionalLSTMParameters;
      goto LABEL_161;
    case 74:
      v664 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_24_21(v664, v665, &v960);
      v447 = NeuralNetwork.Layer.BidirectionalLSTMParameters.propertyDescriptions.getter();
      v461 = type metadata accessor for NeuralNetwork.Layer.BidirectionalLSTMParameters;
      goto LABEL_161;
    case 75:
      v516 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_24_21(v516, v517, &v961);
      v447 = NeuralNetwork.Layer.SimpleRecurrentParameters.propertyDescriptions.getter();
      v461 = type metadata accessor for NeuralNetwork.Layer.SimpleRecurrentParameters;
      goto LABEL_161;
    case 76:
      v491 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_24_21(v491, v492, &v962);
      v447 = NeuralNetwork.Layer.GRUParameters.propertyDescriptions.getter();
      v461 = type metadata accessor for NeuralNetwork.Layer.GRUParameters;
      goto LABEL_161;
    case 77:
      v861 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_24_21(v861, v862, &v963);
      NeuralNetwork.Layer.CropParameters.propertyDescriptions.getter();
      v447 = v863;
      v461 = type metadata accessor for NeuralNetwork.Layer.CropParameters;
      goto LABEL_161;
    case 78:
      v832 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_24_21(v832, v833, &v964);
      NeuralNetwork.Layer.ResizeBilinearParameters.propertyDescriptions.getter();
      v447 = v834;
      v461 = type metadata accessor for NeuralNetwork.Layer.ResizeBilinearParameters;
      goto LABEL_161;
    case 79:
      v668 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_24_21(v668, v669, &v965);
      NeuralNetwork.Layer.CropResizeParameters.propertyDescriptions.getter();
      v447 = v670;
      v461 = type metadata accessor for NeuralNetwork.Layer.CropResizeParameters;
      goto LABEL_161;
    case 81:
      v653 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_24_21(v653, v654, &v966);
      v447 = NeuralNetwork.Layer.ReduceParameters.propertyDescriptions.getter();
      v461 = type metadata accessor for NeuralNetwork.Layer.ReduceParameters;
      goto LABEL_161;
    case 82:
      v828 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_24_21(v828, v829, &v967);
      v447 = NeuralNetwork.Layer.ReduceL1Parameters.propertyDescriptions.getter();
      v461 = type metadata accessor for NeuralNetwork.Layer.ReduceL1Parameters;
      goto LABEL_161;
    case 83:
      v844 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_24_21(v844, v845, &v968);
      v447 = NeuralNetwork.Layer.ReduceL2Parameters.propertyDescriptions.getter();
      v461 = type metadata accessor for NeuralNetwork.Layer.ReduceL2Parameters;
      goto LABEL_161;
    case 84:
      v738 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_24_21(v738, v739, &v969);
      v447 = NeuralNetwork.Layer.ReduceMaxParameters.propertyDescriptions.getter();
      v461 = type metadata accessor for NeuralNetwork.Layer.ReduceMaxParameters;
      goto LABEL_161;
    case 85:
      v835 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_24_21(v835, v836, &v970);
      v447 = NeuralNetwork.Layer.ReduceMinParameters.propertyDescriptions.getter();
      v461 = type metadata accessor for NeuralNetwork.Layer.ReduceMinParameters;
      goto LABEL_161;
    case 86:
      v830 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_24_21(v830, v831, &v971);
      v447 = NeuralNetwork.Layer.ReduceSumParameters.propertyDescriptions.getter();
      v461 = type metadata accessor for NeuralNetwork.Layer.ReduceSumParameters;
      goto LABEL_161;
    case 87:
      v557 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_24_21(v557, v558, &v972);
      v447 = NeuralNetwork.Layer.ReduceProdParameters.propertyDescriptions.getter();
      v461 = type metadata accessor for NeuralNetwork.Layer.ReduceProdParameters;
      goto LABEL_161;
    case 88:
      v754 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_24_21(v754, v755, &v973);
      v447 = NeuralNetwork.Layer.ReduceMeanParameters.propertyDescriptions.getter();
      v461 = type metadata accessor for NeuralNetwork.Layer.ReduceMeanParameters;
      goto LABEL_161;
    case 89:
      v514 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_24_21(v514, v515, &v974);
      v447 = NeuralNetwork.Layer.ReduceLogSumParameters.propertyDescriptions.getter();
      v461 = type metadata accessor for NeuralNetwork.Layer.ReduceLogSumParameters;
      goto LABEL_161;
    case 90:
      v467 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_24_21(v467, v468, &v975);
      v447 = NeuralNetwork.Layer.ReduceSumSquareParameters.propertyDescriptions.getter();
      v461 = type metadata accessor for NeuralNetwork.Layer.ReduceSumSquareParameters;
      goto LABEL_161;
    case 91:
      v868 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_24_21(v868, v869, &v976);
      v447 = NeuralNetwork.Layer.ReduceLogSumExpParameters.propertyDescriptions.getter();
      v461 = type metadata accessor for NeuralNetwork.Layer.ReduceLogSumExpParameters;
      goto LABEL_161;
    case 94:
      v788 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_24_21(v788, v789, &v977);
      v447 = NeuralNetwork.Layer.CumulativeSumParameters.propertyDescriptions.getter();
      v461 = type metadata accessor for NeuralNetwork.Layer.CumulativeSumParameters;
      goto LABEL_161;
    case 95:
      v811 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_32_10(v811, v812, &v978);
      v813 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_85_4(v813);
      v814 = OUTLINED_FUNCTION_6_45(v447, xmmword_257743FF0);
      OUTLINED_FUNCTION_8_36(v814, v815);
      *(v447 + 48) = sub_257743974();
      *(v447 + 56) = v816;
      OUTLINED_FUNCTION_9_34();
      *(v447 + 64) = v818;
      *(v447 + 72) = v817;
      OUTLINED_FUNCTION_28_22();
      v821 = v820 | 0x65750000u;
      if (v819)
      {
        v821 = 0x65736C6166;
      }

      v822 = 0xE500000000000000;
      if (!v819)
      {
        v822 = v424;
      }

      *(v447 + 80) = v821;
      *(v447 + 88) = v822;
      v458 = type metadata accessor for NeuralNetwork.Layer.ArgMinParameters;
      goto LABEL_166;
    case 96:
      v765 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_32_10(v765, v766, &v979);
      v767 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_85_4(v767);
      v768 = OUTLINED_FUNCTION_6_45(v447, xmmword_257743FF0);
      OUTLINED_FUNCTION_8_36(v768, v769);
      *(v447 + 48) = sub_257743974();
      *(v447 + 56) = v770;
      OUTLINED_FUNCTION_9_34();
      *(v447 + 64) = v772;
      *(v447 + 72) = v771;
      OUTLINED_FUNCTION_28_22();
      v775 = v774 | 0x65750000u;
      if (v773)
      {
        v775 = 0x65736C6166;
      }

      v776 = 0xE500000000000000;
      if (!v773)
      {
        v776 = v424;
      }

      *(v447 + 80) = v775;
      *(v447 + 88) = v776;
      v458 = type metadata accessor for NeuralNetwork.Layer.ArgMaxParameters;
      goto LABEL_166;
    case 101:
      v823 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_27_20(v823, v824, &v980);
      v825 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_85_4(v825);
      *(v447 + 16) = xmmword_257743FF0;
      OUTLINED_FUNCTION_7_36(v447, 0x657469202E78614DLL);
      *(v447 + 48) = sub_257743974();
      *(v447 + 56) = v826;
      *(v447 + 64) = 0x6F697469646E6F43;
      *(v447 + 72) = 0xE90000000000006ELL;
      v827 = v424[2];
      *(v447 + 80) = v424[1];
      *(v447 + 88) = v827;

      v466 = type metadata accessor for NeuralNetwork.Layer.LoopParameters;
      goto LABEL_158;
    case 104:
      v743 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_27_20(v743, v744, &v981);
      v745 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_34_13(v745);
      *(v447 + 16) = xmmword_2577442C0;
      *(v447 + 32) = 0x7472617453;
      *(v447 + 40) = 0xE500000000000000;
      *(v447 + 48) = sub_257743794();
      *(v447 + 56) = v746;
      *(v447 + 64) = 6581829;
      *(v447 + 72) = 0xE300000000000000;
      *(v447 + 80) = sub_257743794();
      *(v447 + 88) = v747;
      *(v447 + 96) = 1885697107;
      *(v447 + 104) = 0xE400000000000000;
      *(v447 + 112) = sub_257743794();
      *(v447 + 120) = v748;
      v466 = type metadata accessor for NeuralNetwork.Layer.RangeStaticParameters;
      goto LABEL_158;
    case 105:
      v720 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_27_20(v720, v721, &v982);
      v722 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_85_4(v722);
      *(v447 + 16) = xmmword_257743FF0;
      *(v447 + 48) = OUTLINED_FUNCTION_16_19(v447, 0x7472617453);
      *(v447 + 56) = v723;
      *(v447 + 64) = 1885697107;
      *(v447 + 72) = 0xE400000000000000;
      *(v447 + 80) = sub_257743794();
      *(v447 + 88) = v724;
      v466 = type metadata accessor for NeuralNetwork.Layer.RangeDynamicParameters;
      goto LABEL_158;
    case 106:
      v462 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_27_20(v462, v463, &v983);
      v464 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_8_4(v464);
      *(v447 + 48) = OUTLINED_FUNCTION_4_48(v447, xmmword_2577442B0);
      *(v447 + 56) = v465;
      v466 = type metadata accessor for NeuralNetwork.Layer.EqualParameters;
      goto LABEL_158;
    case 107:
      v477 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_27_20(v477, v478, &v984);
      v479 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_8_4(v479);
      *(v447 + 48) = OUTLINED_FUNCTION_4_48(v447, xmmword_2577442B0);
      *(v447 + 56) = v480;
      v466 = type metadata accessor for NeuralNetwork.Layer.NotEqualParameters;
      goto LABEL_158;
    case 108:
      v902 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_27_20(v902, v903, &v985);
      v904 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_8_4(v904);
      *(v447 + 48) = OUTLINED_FUNCTION_4_48(v447, xmmword_2577442B0);
      *(v447 + 56) = v905;
      v466 = type metadata accessor for NeuralNetwork.Layer.LessThanParameters;
      goto LABEL_158;
    case 109:
      v890 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_27_20(v890, v891, &v986);
      v892 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_8_4(v892);
      *(v447 + 48) = OUTLINED_FUNCTION_4_48(v447, xmmword_2577442B0);
      *(v447 + 56) = v893;
      v466 = type metadata accessor for NeuralNetwork.Layer.LessEqualParameters;
      goto LABEL_158;
    case 110:
      v716 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_27_20(v716, v717, &v987);
      v718 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_8_4(v718);
      *(v447 + 48) = OUTLINED_FUNCTION_4_48(v447, xmmword_2577442B0);
      *(v447 + 56) = v719;
      v466 = type metadata accessor for NeuralNetwork.Layer.GreaterThanParameters;
      goto LABEL_158;
    case 111:
      v864 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_27_20(v864, v865, &v988);
      v866 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_8_4(v866);
      *(v447 + 48) = OUTLINED_FUNCTION_4_48(v447, xmmword_2577442B0);
      *(v447 + 56) = v867;
      v466 = type metadata accessor for NeuralNetwork.Layer.GreaterEqualParameters;
      goto LABEL_158;
    case 112:
      v518 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_32_10(v518, v519, &v990);
      v520 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_34_13(v520);
      v521 = OUTLINED_FUNCTION_14_20(v447, xmmword_2577442C0);
      OUTLINED_FUNCTION_8_36(v521, v522);
      v523 = sub_257743974();
      v525 = OUTLINED_FUNCTION_33_11(v523, v524);
      *(v447 + 112) = OUTLINED_FUNCTION_21_25(v525, v526);
      *(v447 + 120) = v527;
      v458 = type metadata accessor for NeuralNetwork.Layer.RandomNormalLikeParameters;
      goto LABEL_166;
    case 113:
      v495 = OUTLINED_FUNCTION_13_24();
      v497 = OUTLINED_FUNCTION_24_21(v495, v496, &v989);
      v447 = NeuralNetwork.Layer.RandomNormalStaticParameters.propertyDescriptions.getter(v497, v498, v499, v500);
      v461 = type metadata accessor for NeuralNetwork.Layer.RandomNormalStaticParameters;
      goto LABEL_161;
    case 114:
      v694 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_32_10(v694, v695, &v992);
      v696 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_34_13(v696);
      v697 = OUTLINED_FUNCTION_14_20(v447, xmmword_2577442C0);
      OUTLINED_FUNCTION_8_36(v697, v698);
      v699 = sub_257743974();
      v701 = OUTLINED_FUNCTION_33_11(v699, v700);
      *(v447 + 112) = OUTLINED_FUNCTION_21_25(v701, v702);
      *(v447 + 120) = v703;
      v458 = type metadata accessor for NeuralNetwork.Layer.RandomNormalDynamicParameters;
      goto LABEL_166;
    case 115:
      v450 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_32_10(v450, v451, &v993);
      v452 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_34_13(v452);
      OUTLINED_FUNCTION_10_38(v447, xmmword_2577442C0);
      v983 = *v443;
      *(v447 + 48) = sub_257743974();
      *(v447 + 56) = v453;
      OUTLINED_FUNCTION_17_22();
      *(v447 + 64) = v454;
      *(v447 + 72) = v424;
      *(v447 + 80) = sub_257743794();
      *(v447 + 88) = v455;
      OUTLINED_FUNCTION_20_20();
      *(v447 + 96) = v456;
      *(v447 + 104) = v424;
      *(v447 + 112) = sub_257743794();
      *(v447 + 120) = v457;
      v458 = type metadata accessor for NeuralNetwork.Layer.RandomUniformLikeParameters;
      goto LABEL_166;
    case 116:
      v894 = OUTLINED_FUNCTION_13_24();
      v896 = OUTLINED_FUNCTION_24_21(v894, v895, &v991);
      v447 = NeuralNetwork.Layer.RandomUniformStaticParameters.propertyDescriptions.getter(v896, v897, v898, v899);
      v461 = type metadata accessor for NeuralNetwork.Layer.RandomUniformStaticParameters;
      goto LABEL_161;
    case 117:
      v870 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_32_10(v870, v871, &v995);
      v872 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_34_13(v872);
      OUTLINED_FUNCTION_10_38(v447, xmmword_2577442C0);
      v983 = *v443;
      *(v447 + 48) = sub_257743974();
      *(v447 + 56) = v873;
      OUTLINED_FUNCTION_17_22();
      *(v447 + 64) = v874;
      *(v447 + 72) = v424;
      *(v447 + 80) = sub_257743794();
      *(v447 + 88) = v875;
      OUTLINED_FUNCTION_20_20();
      *(v447 + 96) = v876;
      *(v447 + 104) = v424;
      *(v447 + 112) = sub_257743794();
      *(v447 + 120) = v877;
      v458 = type metadata accessor for NeuralNetwork.Layer.RandomUniformDynamicParameters;
      goto LABEL_166;
    case 118:
      v645 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_27_20(v645, v646, &v996);
      v647 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_85_4(v647);
      v648 = OUTLINED_FUNCTION_14_20(v447, xmmword_257743FF0);
      OUTLINED_FUNCTION_5_44(v648, v649);
      v650 = sub_257743974();
      *(v447 + 80) = OUTLINED_FUNCTION_23_22(v650, v651);
      *(v447 + 88) = v652;
      v466 = type metadata accessor for NeuralNetwork.Layer.RandomBernoulliLikeParameters;
      goto LABEL_158;
    case 119:
      v806 = OUTLINED_FUNCTION_13_24();
      OUTLINED_FUNCTION_24_21(v806, v807, &v994);
      v447 = NeuralNetwork.Layer.RandomBernoulliStaticParameters.propertyDescriptions.getter();
      v461 = type metadata accessor for NeuralNetwork.Layer.RandomBernoulliStaticParameters;
      goto LABEL_161;
    case 120:
      v853 = OUTLINED_FUNCTION_13_24();
      v424 = v966;
      sub_2576D0594(v853, v966, v854);
      v855 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_85_4(v855);
      v856 = OUTLINED_FUNCTION_14_20(v447, xmmword_257743FF0);
      OUTLINED_FUNCTION_5_44(v856, v857);
      v858 = sub_257743974();
      *(v447 + 80) = OUTLINED_FUNCTION_23_22(v858, v859);
      *(v447 + 88) = v860;
      v466 = type metadata accessor for NeuralNetwork.Layer.RandomBernoulliDynamicParameters;
      goto LABEL_158;
    case 121:
      v900 = OUTLINED_FUNCTION_13_24();
      v439 = v965;
      sub_2576D0594(v900, v965, v901);
      v447 = NeuralNetwork.Layer.CategoricalDistributionParameters.propertyDescriptions.getter();
      v461 = type metadata accessor for NeuralNetwork.Layer.CategoricalDistributionParameters;
      goto LABEL_161;
    case 122:
      v485 = OUTLINED_FUNCTION_13_24();
      v419 = v967;
      sub_2576D0594(v485, v967, v486);
      v487 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_85_4(v487);
      *(v447 + 16) = xmmword_257743FF0;
      *(v447 + 32) = 0x6F43207265776F4CLL;
      *(v447 + 40) = 0xEB00000000746E75;
      v983 = *v419;
      OUTLINED_FUNCTION_368();
      *(v447 + 48) = sub_257743974();
      *(v447 + 56) = v488;
      *(v447 + 64) = 0x6F43207265707055;
      *(v447 + 72) = 0xEB00000000746E75;
      v983 = v419[1];
      OUTLINED_FUNCTION_368();
      *(v447 + 80) = sub_257743974();
      *(v447 + 88) = v489;
      v490 = type metadata accessor for NeuralNetwork.Layer.MatrixBandPartParameters;
      goto LABEL_143;
    case 123:
      v704 = OUTLINED_FUNCTION_13_24();
      v424 = v968;
      sub_2576D0594(v704, v968, v705);
      v706 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_8_4(v706);
      *(v447 + 16) = xmmword_2577442B0;
      OUTLINED_FUNCTION_7_36(v447, 0x6C616E6F67616944);
      *(v447 + 48) = sub_257743974();
      *(v447 + 56) = v707;
      v466 = type metadata accessor for NeuralNetwork.Layer.LowerTriangularParameters;
      goto LABEL_158;
    case 124:
      v481 = OUTLINED_FUNCTION_13_24();
      v424 = v969;
      sub_2576D0594(v481, v969, v482);
      v483 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_8_4(v483);
      *(v447 + 16) = xmmword_2577442B0;
      OUTLINED_FUNCTION_7_36(v447, 0x6C616E6F67616944);
      *(v447 + 48) = sub_257743974();
      *(v447 + 56) = v484;
      v466 = type metadata accessor for NeuralNetwork.Layer.UpperTriangularParameters;
      goto LABEL_158;
    case 125:
      v779 = OUTLINED_FUNCTION_13_24();
      v419 = v972;
      sub_2576D0594(v779, v972, v780);
      v781 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_85_4(v781);
      *(v447 + 16) = xmmword_257743FF0;
      OUTLINED_FUNCTION_37_12();
      *(v783 + 32) = v784;
      *(v783 + 40) = v782 + 13;
      v785 = type metadata accessor for Proto_EmbeddingLayerParams(0);
      OUTLINED_FUNCTION_31_13(v785);
      v980 = v434[2];
      OUTLINED_FUNCTION_368();
      *(v447 + 48) = sub_257743974();
      *(v447 + 56) = v786;
      OUTLINED_FUNCTION_35_13(0x432074757074754FLL);
      v979 = v434[3];
      OUTLINED_FUNCTION_368();
      *(v447 + 80) = sub_257743974();
      *(v447 + 88) = v787;
      v490 = type metadata accessor for NeuralNetwork.Layer.EmbeddingParameters;
      goto LABEL_143;
    case 126:
      v639 = OUTLINED_FUNCTION_13_24();
      v419 = v974;
      sub_2576D0594(v639, v974, v640);
      v641 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_85_4(v641);
      *(v447 + 16) = xmmword_257743FF0;
      *(v447 + 32) = 0x616C756261636F56;
      *(v447 + 40) = 0xEF657A6953207972;
      v642 = type metadata accessor for Proto_EmbeddingNDLayerParams(0);
      OUTLINED_FUNCTION_31_13(v642);
      v980 = v434[2];
      OUTLINED_FUNCTION_368();
      *(v447 + 48) = sub_257743974();
      *(v447 + 56) = v643;
      OUTLINED_FUNCTION_35_13(0x6E69646465626D45);
      v979 = v434[3];
      OUTLINED_FUNCTION_368();
      *(v447 + 80) = sub_257743974();
      *(v447 + 88) = v644;
      v490 = type metadata accessor for NeuralNetwork.Layer.EmbeddingNDParameters;
LABEL_143:
      v448 = v490;
      v449 = v419;
      goto LABEL_162;
    case 127:
      v594 = OUTLINED_FUNCTION_13_24();
      v439 = v970;
      sub_2576D0594(v594, v970, v595);
      v447 = NeuralNetwork.Layer.BiasParameters.propertyDescriptions.getter();
      v461 = type metadata accessor for NeuralNetwork.Layer.BiasParameters;
      goto LABEL_161;
    case 128:
      v777 = OUTLINED_FUNCTION_13_24();
      v439 = v971;
      sub_2576D0594(v777, v971, v778);
      v447 = NeuralNetwork.Layer.OneHotParameters.propertyDescriptions.getter();
      v461 = type metadata accessor for NeuralNetwork.Layer.OneHotParameters;
      goto LABEL_161;
    case 129:
      v888 = OUTLINED_FUNCTION_13_24();
      v439 = v973;
      sub_2576D0594(v888, v973, v889);
      v447 = NeuralNetwork.Layer.TopKParameters.propertyDescriptions.getter();
      v461 = type metadata accessor for NeuralNetwork.Layer.TopKParameters;
      goto LABEL_161;
    case 130:
      v561 = OUTLINED_FUNCTION_13_24();
      v443 = v976;
      sub_2576D0594(v561, v976, v562);
      v563 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_85_4(v563);
      v564 = OUTLINED_FUNCTION_6_45(v447, xmmword_257743FF0);
      OUTLINED_FUNCTION_8_36(v564, v565);
      *(v447 + 48) = sub_257743974();
      *(v447 + 56) = v566;
      OUTLINED_FUNCTION_37_12();
      *(v447 + 64) = v568;
      *(v447 + 72) = v567 + 513;
      OUTLINED_FUNCTION_28_22();
      v571 = v570 | 0x65750000u;
      if (v569)
      {
        v571 = 0x65736C6166;
      }

      v572 = 0xE500000000000000;
      if (!v569)
      {
        v572 = v424;
      }

      *(v447 + 80) = v571;
      *(v447 + 88) = v572;
      v458 = type metadata accessor for NeuralNetwork.Layer.ArgSortParameters;
LABEL_166:
      v448 = v458;
      v449 = v443;
      goto LABEL_162;
    case 131:
      v549 = OUTLINED_FUNCTION_13_24();
      v439 = v975;
      sub_2576D0594(v549, v975, v550);
      v447 = NeuralNetwork.Layer.NonMaximumSuppressionParameters.propertyDescriptions.getter();
      v461 = type metadata accessor for NeuralNetwork.Layer.NonMaximumSuppressionParameters;
      goto LABEL_161;
    case 132:
      v439 = v977;
      sub_2576D0594(v978, v977, type metadata accessor for NeuralNetwork.Layer.CustomParameters);
      v471 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v447 = OUTLINED_FUNCTION_85_4(v471);
      *(v447 + 16) = xmmword_257743FF0;
      OUTLINED_FUNCTION_37_12();
      *(v472 + 32) = v473;
      *(v472 + 40) = v474;
      v475 = *(v439 + 8);
      *(v447 + 48) = *v439;
      *(v447 + 56) = v475;
      *(v447 + 64) = 0x7470697263736544;
      *(v447 + 72) = 0xEB000000006E6F69;
      v476 = *(v439 + 40);
      *(v447 + 80) = *(v439 + 32);
      *(v447 + 88) = v476;

      v461 = type metadata accessor for NeuralNetwork.Layer.CustomParameters;
      goto LABEL_161;
    case 133:
    case 134:
    case 135:
    case 136:
    case 137:
    case 138:
    case 139:
    case 140:
    case 141:
    case 142:
    case 143:
    case 144:
    case 145:
    case 146:
    case 147:
    case 148:
    case 149:
    case 150:
    case 151:
    case 152:
    case 153:
    case 154:
    case 155:
    case 156:
    case 157:
      return v447;
    default:
      v688 = OUTLINED_FUNCTION_13_24();
      v690 = sub_2576D0594(v688, v439, v689);
      v447 = NeuralNetwork.Layer.ConstantParameters.propertyDescriptions.getter(v690);
      v461 = type metadata accessor for NeuralNetwork.Layer.ConstantParameters;
LABEL_161:
      v448 = v461;
      v449 = v439;
      goto LABEL_162;
  }
}