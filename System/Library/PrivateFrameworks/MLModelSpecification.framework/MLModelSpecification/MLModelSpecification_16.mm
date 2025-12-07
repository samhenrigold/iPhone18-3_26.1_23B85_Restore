uint64_t sub_257640C84@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = 0;
  a2(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL static NeuralNetwork.Layer.CumulativeSumParameters.== infix(_:_:)(void *a1, void *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    OUTLINED_FUNCTION_6_20();
    if (v4)
    {
      if (*(v3 + 9) == *(v2 + 9))
      {
        type metadata accessor for Proto_CumSumLayerParams(0);
        sub_2577431B4();
        OUTLINED_FUNCTION_1_27();
        v7 = sub_25764134C(v5, v6, MEMORY[0x277D216D0]);
        if (OUTLINED_FUNCTION_4_2(v7))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_25764134C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_257641B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 *OUTLINED_FUNCTION_5_20(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 1936291905;
  result[2].n128_u64[1] = 0xE400000000000000;
  return result;
}

uint64_t NeuralNetwork.Layer.DotProductParameters.init()@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for Proto_DotProductLayerParams(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t static NeuralNetwork.Layer.dotProduct(name:inputNames:outputName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_3_26(a1, a2, a3, a4, a5, a6, a7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v14 = swift_allocObject();
  v15 = OUTLINED_FUNCTION_4_15(v14, xmmword_257743FF0);
  OUTLINED_FUNCTION_6_21(v15, xmmword_2577442B0);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v16 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    OUTLINED_FUNCTION_3_22(&qword_27F879260);
  }

  *(v7 + v16) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v15);
  sub_2574897E0(v8);
  v17 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_11_11(v17);
  return sub_257634BB4(v13);
}

uint64_t static NeuralNetwork.Layer.cosineSimilarity(name:inputNames:outputName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_3_26(a1, a2, a3, a4, a5, a6, a7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v13 = (v12 - v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v14 = swift_allocObject();
  v15 = OUTLINED_FUNCTION_4_15(v14, xmmword_257743FF0);
  OUTLINED_FUNCTION_6_21(v15, xmmword_2577442B0);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v13 = 1;
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v16 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    OUTLINED_FUNCTION_3_22(&qword_27F879260);
  }

  *(v7 + v16) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v15);
  sub_2574897E0(v8);
  v17 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_11_11(v17);
  return sub_257634BB4(v13);
}

uint64_t static NeuralNetwork.Layer.DotProductParameters.cosineSimilarity()@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for Proto_DotProductLayerParams(0);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a1 = 1;
  return result;
}

uint64_t NeuralNetwork.Layer.DotProductParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  result = swift_allocObject();
  *(result + 16) = xmmword_2577442B0;
  *(result + 32) = 0xD000000000000010;
  *(result + 40) = 0x8000000257780A60;
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

uint64_t (*NeuralNetwork.Layer.DotProductParameters.normalizeInputs.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return sub_257642180;
}

BOOL static NeuralNetwork.Layer.DotProductParameters.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    type metadata accessor for Proto_DotProductLayerParams(0);
    sub_2577431B4();
    sub_257642710(&qword_27F879B68, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t NeuralNetwork.Layer.DotProductParameters.hash(into:)(uint64_t a1)
{
  type metadata accessor for Proto_DotProductLayerParams(0);
  OUTLINED_FUNCTION_0_37();
  sub_257642710(v1, v2, &unk_257766BF8);

  return sub_2577435F4();
}

uint64_t NeuralNetwork.Layer.DotProductParameters.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_DotProductLayerParams(0);
  OUTLINED_FUNCTION_0_37();
  sub_257642710(v0, v1, &unk_257766BF8);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_257642338(uint64_t a1)
{
  sub_257743A14();
  type metadata accessor for Proto_DotProductLayerParams(0);
  sub_257642710(&qword_27F87DF48, type metadata accessor for Proto_DotProductLayerParams, &unk_257766BF8);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t NeuralNetwork.Layer.DotProductParameters.customMirror.getter()
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
  type metadata accessor for NeuralNetwork.Layer.DotProductParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  sub_25764261C(v1, v12 - v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2577442B0;
  *(v13 + 32) = 0x7A696C616D726F6ELL;
  *(v13 + 40) = 0xEF737475706E4965;
  v14 = *v1;
  *(v13 + 72) = MEMORY[0x277D839B0];
  *(v13 + 48) = v14;
  v15 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v15);
  (*(v3 + 104))(v6, *MEMORY[0x277D84C38], v2);
  return sub_257743AA4();
}

uint64_t type metadata accessor for NeuralNetwork.Layer.DotProductParameters(uint64_t a1)
{
  result = qword_27F8805A0;
  if (!qword_27F8805A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25764261C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NeuralNetwork.Layer.DotProductParameters(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257642710(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_257642784(uint64_t a1)
{
  result = type metadata accessor for Proto_DotProductLayerParams(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_26(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 - 112) = a5;
  *(v7 - 104) = a7;
  *(v7 - 96) = result;
  *(v7 - 88) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_15(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v4;
  a1[2].n128_u64[1] = v3;
  a1[3].n128_u64[0] = *(v5 - 112);
  a1[3].n128_u64[1] = v2;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_6_21(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = *(v4 - 104);
  a1[2].n128_u64[1] = v3;
  *v2 = 0;

  return type metadata accessor for Proto_DotProductLayerParams(0);
}

uint64_t static NeuralNetwork.Layer.expandDimensions(name:inputName:outputName:axes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
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

  NeuralNetwork.Layer.ExpandDimensionsParameters.init(axes:)(v20, v17);
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

uint64_t static NeuralNetwork.Layer.Kind.expandDimensions(axes:)@<X0>(void *a1@<X8>)
{

  NeuralNetwork.Layer.ExpandDimensionsParameters.init(axes:)(v2, a1);
  type metadata accessor for NeuralNetwork.Layer.Kind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t NeuralNetwork.Layer.ExpandDimensionsParameters.init(axes:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for Proto_ExpandDimsLayerParams(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  if (*(a1 + 16))
  {
    OUTLINED_FUNCTION_5_21();
    v5 = v11;
    do
    {
      OUTLINED_FUNCTION_4_16();
      if (v7)
      {
        v9 = OUTLINED_FUNCTION_2_26(v6);
        sub_2574845B8(v9, v2, 1);
        v5 = v11;
      }

      OUTLINED_FUNCTION_1_28();
    }

    while (!v8);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  *a2 = v5;
  return result;
}

uint64_t NeuralNetwork.Layer.ExpandDimensionsParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2577442B0;
  *(v0 + 32) = 1936029761;
  *(v0 + 40) = 0xE400000000000000;
  NeuralNetwork.Layer.ExpandDimensionsParameters.axes.getter();
  v1 = MEMORY[0x259C64F20]();
  v3 = v2;

  *(v0 + 48) = v1;
  *(v0 + 56) = v3;
  return v0;
}

uint64_t NeuralNetwork.Layer.ExpandDimensionsParameters.axes.getter()
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
    v5 = *(v10 + 16);
    do
    {
      v7 = *v4++;
      v6 = v7;
      v11 = result;
      v8 = *(result + 24);
      if (v5 >= v8 >> 1)
      {
        v9 = OUTLINED_FUNCTION_2_26(v8);
        sub_257483724(v9, v5 + 1, 1);
        result = v11;
      }

      *(result + 16) = v5 + 1;
      *(result + 8 * v5++ + 32) = v6;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t NeuralNetwork.Layer.ExpandDimensionsParameters.axes.setter(uint64_t a1)
{
  v3 = v1;
  if (*(a1 + 16))
  {
    OUTLINED_FUNCTION_5_21();
    v4 = v10;
    do
    {
      OUTLINED_FUNCTION_4_16();
      if (v6)
      {
        v8 = OUTLINED_FUNCTION_2_26(v5);
        sub_2574845B8(v8, v2, 1);
        v4 = v10;
      }

      OUTLINED_FUNCTION_1_28();
    }

    while (!v7);
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  *v3 = v4;
  return result;
}

uint64_t (*NeuralNetwork.Layer.ExpandDimensionsParameters.axes.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = NeuralNetwork.Layer.ExpandDimensionsParameters.axes.getter();
  return sub_257642E3C;
}

uint64_t sub_257642E3C(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return NeuralNetwork.Layer.ExpandDimensionsParameters.axes.setter(*a1);
  }

  NeuralNetwork.Layer.ExpandDimensionsParameters.axes.setter(v2);
}

BOOL static NeuralNetwork.Layer.ExpandDimensionsParameters.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (sub_257487374())
  {
    type metadata accessor for Proto_ExpandDimsLayerParams(0);
    sub_2577431B4();
    sub_257643414(&qword_27F879B68, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t NeuralNetwork.Layer.ExpandDimensionsParameters.hash(into:)(uint64_t a1)
{
  type metadata accessor for Proto_ExpandDimsLayerParams(0);
  OUTLINED_FUNCTION_0_38();
  sub_257643414(v1, v2, &unk_257766BB8);

  return sub_2577435F4();
}

uint64_t NeuralNetwork.Layer.ExpandDimensionsParameters.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_ExpandDimsLayerParams(0);
  OUTLINED_FUNCTION_0_38();
  sub_257643414(v0, v1, &unk_257766BB8);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_257643038(uint64_t a1)
{
  sub_257743A14();
  type metadata accessor for Proto_ExpandDimsLayerParams(0);
  sub_257643414(&qword_27F87D7E8, type metadata accessor for Proto_ExpandDimsLayerParams, &unk_257766BB8);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t NeuralNetwork.Layer.ExpandDimensionsParameters.customMirror.getter()
{
  v1 = sub_257743A84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v5 = v4 - v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = type metadata accessor for NeuralNetwork.Layer.ExpandDimensionsParameters(0);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  sub_257643320(v0, v11 - v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2577442B0;
  *(v12 + 32) = 1936029793;
  *(v12 + 40) = 0xE400000000000000;
  v13 = NeuralNetwork.Layer.ExpandDimensionsParameters.axes.getter();
  *(v12 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879DF8, &qword_25776F230);
  *(v12 + 48) = v13;
  v14 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v14);
  (*(v2 + 104))(v5, *MEMORY[0x277D84C38], v1);
  return sub_257743AA4();
}

uint64_t type metadata accessor for NeuralNetwork.Layer.ExpandDimensionsParameters(uint64_t a1)
{
  result = qword_27F8805B8;
  if (!qword_27F8805B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257643320(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NeuralNetwork.Layer.ExpandDimensionsParameters(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257643414(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_257643484(uint64_t a1)
{
  result = type metadata accessor for Proto_ExpandDimsLayerParams(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void OUTLINED_FUNCTION_5_21()
{

  sub_2574845B8(0, v0, 0);
}

uint64_t sub_25764359C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return MLProgram.Operation.name.setter(v1, v2);
}

uint64_t MLProgram.Operation.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t (*MLProgram.Operation.name.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *v1;
  v3 = v1[1];
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_25749BD04;
}

void MLProgram.Operation.inputs.getter()
{
  OUTLINED_FUNCTION_31();
  v5 = type metadata accessor for MLProgram.Argument(0);
  v6 = OUTLINED_FUNCTION_24(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_1();
  v22 = v7;
  v8 = OUTLINED_FUNCTION_153();
  v9 = type metadata accessor for Proto_MILSpec_Argument(v8);
  v10 = OUTLINED_FUNCTION_24(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_64_2(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8805C8, &qword_25776CBC0);
  v13 = sub_2577438E4();
  OUTLINED_FUNCTION_35_3(v13);
  if (v1)
  {
    while (1)
    {
      OUTLINED_FUNCTION_50_2();
LABEL_8:
      OUTLINED_FUNCTION_55_3(v14);
      OUTLINED_FUNCTION_42_6();
      sub_25764953C(v16, v0);
      OUTLINED_FUNCTION_40_7();
      v17 = v0;
      v0 = v22;
      sub_257649420(v17, v22);
      OUTLINED_FUNCTION_36_3();
      OUTLINED_FUNCTION_31_5();
      sub_257649420(v22, v18);
      v19 = *(v12 + 16);
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        break;
      }

      *(v12 + 16) = v21;

      if (!v1)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v15 = v3;
    while (1)
    {
      v3 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v3 >= v4)
      {
        OUTLINED_FUNCTION_35();
        return;
      }

      ++v15;
      if (*(v2 + 8 * v3))
      {
        OUTLINED_FUNCTION_49_2();
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t MLProgram.Operation.inputs.setter(uint64_t a1)
{
  sub_257648D5C(a1);
  v3 = v2;

  *(v1 + 16) = v3;
  return result;
}

uint64_t MLProgram.Operation.inputs.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_375(a1);
  MLProgram.Operation.inputs.getter();
  *v1 = v2;
  return OUTLINED_FUNCTION_43();
}

uint64_t sub_2576438C4(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v4 = *a1;
  if (a2)
  {

    sub_257648D5C(v5);
    OUTLINED_FUNCTION_84_4();

    *(v3 + 16) = v2;
  }

  else
  {
    sub_257648D5C(v4);
    OUTLINED_FUNCTION_84_4();

    *(v3 + 16) = v2;
  }

  return result;
}

uint64_t MLProgram.Operation.outputs.getter()
{
  v3 = type metadata accessor for MLProgram.NamedValueType(0);
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = v5;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = *(v0 + 24);
  v11 = *(v10 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v13 = OUTLINED_FUNCTION_17_2();
    sub_2574848C0(v13, v14, v15);
    v12 = v26;
    v16 = type metadata accessor for Proto_MILSpec_NamedValueType(0);
    OUTLINED_FUNCTION_24(v16);
    v18 = v10 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v20 = *(v19 + 72);
    do
    {
      OUTLINED_FUNCTION_27_8();
      sub_25764953C(v18, v9);
      OUTLINED_FUNCTION_24_2();
      if (v22)
      {
        v24 = OUTLINED_FUNCTION_174(v21);
        sub_2574848C0(v24, v1, 1);
        v12 = v26;
      }

      *(v12 + 16) = v1;
      OUTLINED_FUNCTION_193();
      sub_257649420(v9, v12 + v23 + *(v6 + 72) * v2);
      v18 += v20;
      --v11;
    }

    while (v11);
  }

  return v12;
}

void MLProgram.Operation.outputs.setter()
{
  OUTLINED_FUNCTION_31();
  v3 = OUTLINED_FUNCTION_376();
  v4 = type metadata accessor for MLProgram.NamedValueType(v3);
  v5 = OUTLINED_FUNCTION_24(v4);
  v7 = v6;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  v8 = type metadata accessor for Proto_MILSpec_NamedValueType(0);
  v9 = OUTLINED_FUNCTION_24(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  v13 = *(v0 + 16);
  if (v13)
  {
    v14 = OUTLINED_FUNCTION_63_2(MEMORY[0x277D84F90]);
    sub_257484918(v14, v15, v16);
    v17 = v25;
    OUTLINED_FUNCTION_193();
    v19 = v0 + v18;
    v20 = *(v7 + 72);
    do
    {
      OUTLINED_FUNCTION_24_10();
      sub_25764953C(v19, v2);
      OUTLINED_FUNCTION_27_8();
      sub_25764953C(v2, v12);
      OUTLINED_FUNCTION_23_9();
      sub_2576494E8();
      OUTLINED_FUNCTION_27_2();
      if (v22)
      {
        v24 = OUTLINED_FUNCTION_174(v21);
        sub_257484918(v24, v7, 1);
        v17 = v25;
      }

      *(v17 + 16) = v7;
      OUTLINED_FUNCTION_193();
      OUTLINED_FUNCTION_45_2();
      sub_257649420(v12, v23);
      v19 += v20;
      --v13;
    }

    while (v13);
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  *(v1 + 24) = v17;
  OUTLINED_FUNCTION_35();
}

uint64_t MLProgram.Operation.outputs.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_375(a1);
  *v1 = MLProgram.Operation.outputs.getter();
  return OUTLINED_FUNCTION_43();
}

uint64_t MLProgram.Operation.blocks.getter()
{
  v3 = type metadata accessor for MLProgram.Block(0);
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = v5;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = *(v0 + 32);
  v11 = *(v10 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v13 = OUTLINED_FUNCTION_17_2();
    sub_257484970(v13, v14, v15);
    v12 = v26;
    v16 = type metadata accessor for Proto_MILSpec_Block(0);
    OUTLINED_FUNCTION_24(v16);
    v18 = v10 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v20 = *(v19 + 72);
    do
    {
      OUTLINED_FUNCTION_44_4();
      sub_25764953C(v18, v9);
      OUTLINED_FUNCTION_24_2();
      if (v22)
      {
        v24 = OUTLINED_FUNCTION_174(v21);
        sub_257484970(v24, v1, 1);
        v12 = v26;
      }

      *(v12 + 16) = v1;
      OUTLINED_FUNCTION_193();
      sub_257649420(v9, v12 + v23 + *(v6 + 72) * v2);
      v18 += v20;
      --v11;
    }

    while (v11);
  }

  return v12;
}

void MLProgram.Operation.blocks.setter()
{
  OUTLINED_FUNCTION_31();
  v3 = OUTLINED_FUNCTION_376();
  v4 = type metadata accessor for MLProgram.Block(v3);
  v5 = OUTLINED_FUNCTION_24(v4);
  v7 = v6;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  v8 = type metadata accessor for Proto_MILSpec_Block(0);
  v9 = OUTLINED_FUNCTION_24(v8);
  v11 = v10;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  v15 = *(v0 + 16);
  if (v15)
  {
    v16 = OUTLINED_FUNCTION_63_2(MEMORY[0x277D84F90]);
    sub_2574849C8(v16, v17, v18);
    v19 = v27;
    OUTLINED_FUNCTION_193();
    v21 = v0 + v20;
    v22 = *(v7 + 72);
    do
    {
      OUTLINED_FUNCTION_30_5();
      sub_25764953C(v21, v2);
      OUTLINED_FUNCTION_44_4();
      sub_25764953C(v2, v14);
      OUTLINED_FUNCTION_29_7();
      sub_2576494E8();
      OUTLINED_FUNCTION_27_2();
      if (v24)
      {
        v26 = OUTLINED_FUNCTION_174(v23);
        sub_2574849C8(v26, v7, 1);
        v19 = v27;
      }

      *(v19 + 16) = v7;
      OUTLINED_FUNCTION_193();
      sub_257649420(v14, v19 + v25 + *(v11 + 72) * v0);
      v21 += v22;
      --v15;
    }

    while (v15);
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  *(v1 + 32) = v19;
  OUTLINED_FUNCTION_35();
}

uint64_t MLProgram.Operation.blocks.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_375(a1);
  *v1 = MLProgram.Operation.blocks.getter();
  return OUTLINED_FUNCTION_43();
}

uint64_t sub_257644128(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  a3(v4);
}

void MLProgram.Operation.attributes.getter()
{
  OUTLINED_FUNCTION_31();
  v5 = type metadata accessor for MLProgram.Value(0);
  v6 = OUTLINED_FUNCTION_24(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_1();
  v22 = v7;
  v8 = OUTLINED_FUNCTION_153();
  v9 = type metadata accessor for Proto_MILSpec_Value(v8);
  v10 = OUTLINED_FUNCTION_24(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_64_2(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8805D0, &qword_25776CBC8);
  v13 = sub_2577438E4();
  OUTLINED_FUNCTION_35_3(v13);
  if (v1)
  {
    while (1)
    {
      OUTLINED_FUNCTION_50_2();
LABEL_8:
      v16 = OUTLINED_FUNCTION_55_3(v14);
      sub_25764953C(v16, v0);
      v17 = v0;
      v0 = v22;
      sub_257649420(v17, v22);
      OUTLINED_FUNCTION_36_3();
      OUTLINED_FUNCTION_28_8();
      sub_257649420(v22, v18);
      v19 = *(v12 + 16);
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        break;
      }

      *(v12 + 16) = v21;

      if (!v1)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v15 = v3;
    while (1)
    {
      v3 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v3 >= v4)
      {
        OUTLINED_FUNCTION_35();
        return;
      }

      ++v15;
      if (*(v2 + 8 * v3))
      {
        OUTLINED_FUNCTION_49_2();
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t MLProgram.Operation.attributes.setter(uint64_t a1)
{
  v2 = sub_257648FB0(a1);

  *(v1 + 40) = v2;
  return result;
}

uint64_t MLProgram.Operation.attributes.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_375(a1);
  MLProgram.Operation.attributes.getter();
  *v1 = v2;
  return OUTLINED_FUNCTION_43();
}

uint64_t sub_257644418(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v4 = *a1;
  if (a2)
  {

    sub_257648FB0(v5);
    OUTLINED_FUNCTION_84_4();

    *(v3 + 40) = v2;
  }

  else
  {
    sub_257648FB0(v4);
    OUTLINED_FUNCTION_84_4();

    *(v3 + 40) = v2;
  }

  return result;
}

void sub_2576444AC()
{
  OUTLINED_FUNCTION_31();
  v356 = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for MLProgram.Block(0);
  v2 = OUTLINED_FUNCTION_24(v1);
  v306 = v3;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_12_1();
  v331 = v4;
  v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E00, &qword_257744720);
  OUTLINED_FUNCTION_63();
  v332 = v5;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v329 = &v290 - v7;
  v8 = OUTLINED_FUNCTION_153();
  v321 = type metadata accessor for MLProgram.ValueType.ListParameters(v8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_12_1();
  v324 = v10;
  v11 = OUTLINED_FUNCTION_153();
  v334 = type metadata accessor for MLProgram.ValueType.TensorParameters(v11);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_12_1();
  v333 = v13;
  v14 = OUTLINED_FUNCTION_153();
  v320 = type metadata accessor for MLProgram.ValueType.StateParameters(v14);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_25_0();
  v296 = v16;
  OUTLINED_FUNCTION_158();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v290 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v290 - v22;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_196();
  v327 = v24;
  v25 = OUTLINED_FUNCTION_153();
  v319 = type metadata accessor for MLProgram.ValueType.DictionaryParameters(v25);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_12_1();
  v323 = v27;
  v28 = OUTLINED_FUNCTION_153();
  v318 = type metadata accessor for MLProgram.ValueType.TupleParameters(v28);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_12_1();
  v322 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  v32 = OUTLINED_FUNCTION_13(v31);
  v33 = MEMORY[0x28223BE20](v32);
  v35 = &v290 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_167();
  v311 = v36;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v37);
  v39 = &v290 - v38;
  v340 = type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_25_0();
  v303 = v41;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_167();
  v300 = v43;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_167();
  v310 = v45;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_167();
  v307 = v47;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_167();
  v339 = v49;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_196();
  v328 = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E10, &qword_257744730);
  v53 = OUTLINED_FUNCTION_13(v52);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_25_0();
  v298 = v54;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_167();
  v299 = v56;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_167();
  v302 = v58;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_167();
  v304 = v60;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_167();
  v309 = v62;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_167();
  v317 = v64;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_196();
  v338 = v66;
  v67 = OUTLINED_FUNCTION_153();
  v341 = type metadata accessor for Proto_MILSpec_ValueType(v67);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_25_0();
  v297 = v69;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_167();
  v301 = v71;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_167();
  v308 = v73;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_196();
  v337 = v75;
  v76 = OUTLINED_FUNCTION_153();
  v77 = type metadata accessor for MLProgram.NamedValueType(v76);
  v78 = OUTLINED_FUNCTION_24(v77);
  v80 = v79;
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_3();
  v83 = (v82 - v81);
  v316 = v0;
  v84 = MLProgram.Operation.outputs.getter();
  v85 = *(v84 + 16);
  if (v85)
  {
    v294 = v35;
    v295 = v23;
    v293 = v20;
    v347 = MEMORY[0x277D84F90];
    v86 = v84;
    sub_257484060(0, v85, 0);
    OUTLINED_FUNCTION_193();
    v305 = v86;
    v346 = v347;
    v335 = *(v80 + 72);
    v314 = xmmword_2577442B0;
    v336 = v39;
    v315 = v83;
    do
    {
      v342 = v85;
      OUTLINED_FUNCTION_24_10();
      v345 = v87;
      sub_25764953C(v87, v83);
      OUTLINED_FUNCTION_82_2();
      MEMORY[0x259C64E90](*v83, v83[1]);
      MEMORY[0x259C64E90](34, 0xE100000000000000);
      v343 = v355;
      v344 = v354;
      v88 = type metadata accessor for Proto_MILSpec_NamedValueType(0);
      v89 = v83;
      v90 = v338;
      sub_2574AD5D8(v83 + *(v88 + 24), v338, &qword_27F879E10, &qword_257744730);
      v91 = OUTLINED_FUNCTION_188();
      v92 = v341;
      OUTLINED_FUNCTION_155(v91, v93, v341);
      if (v94)
      {
        v99 = v337;
        _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
        v95 = *(v92 + 20);
        if (qword_27F878FF0 != -1)
        {
          OUTLINED_FUNCTION_12_15();
          swift_once();
        }

        *(v99 + v95) = qword_27F87B038;
        v96 = OUTLINED_FUNCTION_188();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v96, v97, v92);

        if (EnumTagSinglePayload != 1)
        {
          sub_2574695E4(v90, &qword_27F879E10, &qword_257744730);
        }
      }

      else
      {
        OUTLINED_FUNCTION_8_12();
        v99 = v337;
        sub_257649420(v90, v337);
      }

      v100 = *(v99 + *(v92 + 20));
      v101 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
      OUTLINED_FUNCTION_296(v100 + OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type, &v353);
      v102 = v100 + v101;
      v103 = &qword_257744660;
      sub_2574AD5D8(v102, v39, &qword_27F879D40, &qword_257744660);
      OUTLINED_FUNCTION_28_0(v39);
      if (v94)
      {
        sub_2574695E4(v39, &qword_27F879D40, &qword_257744660);
        swift_allocBox();
        LOBYTE(v354) = 3;
        MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
        OUTLINED_FUNCTION_0_39();
        sub_2576494E8();
        v83 = v89;
LABEL_12:
        v104 = v342;
        swift_projectBox();
        OUTLINED_FUNCTION_7_14();
        sub_25764953C(v105, v333);
        sub_2576F1B84();
        v107 = v106;
        OUTLINED_FUNCTION_2_27();
        sub_2576494E8();
      }

      else
      {
        OUTLINED_FUNCTION_0_39();
        sub_2576494E8();
        v108 = v328;
        sub_257649420(v39, v328);
        v109 = v108;
        v103 = v339;
        sub_257649420(v109, v339);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v83 = v89;
        switch(EnumCaseMultiPayload)
        {
          case 1:
            swift_allocBox();
            OUTLINED_FUNCTION_20_7();
            sub_257649420(v339, v126);
            OUTLINED_FUNCTION_9_10();
            v127 = sub_25764953C(type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type, v324);
            v107 = sub_2576F210C(v127);
            OUTLINED_FUNCTION_4_17();
            goto LABEL_20;
          case 2:
            swift_allocBox();
            OUTLINED_FUNCTION_19_9();
            sub_257649420(v339, v122);
            OUTLINED_FUNCTION_11_14();
            sub_25764953C(type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type, v322);
            sub_2576F2344();
            v107 = v123;
            OUTLINED_FUNCTION_3_27();
            goto LABEL_20;
          case 3:
            swift_allocBox();
            OUTLINED_FUNCTION_21_9();
            sub_257649420(v339, v124);
            OUTLINED_FUNCTION_10_18();
            v125 = sub_25764953C(type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type, v323);
            v107 = sub_2576F4D1C(v125);
            OUTLINED_FUNCTION_5_22();
LABEL_20:
            sub_2576494E8();
            v104 = v342;
            break;
          case 4:
            v326 = swift_allocBox();
            v113 = v112;
            OUTLINED_FUNCTION_25_6();
            sub_257649420(v339, v114);
            OUTLINED_FUNCTION_6_22();
            v115 = v327;
            sub_25764953C(v113, v327);
            v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
            inited = swift_initStackObject();
            OUTLINED_FUNCTION_33_4(inited);
            v325 = v117;
            *(v117 + 40) = v118;
            v312 = type metadata accessor for Proto_MILSpec_StateType(0);
            v90 = *(v115 + *(v312 + 20));
            v119 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType;
            OUTLINED_FUNCTION_296(v90 + OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType, &v352);
            v120 = v317;
            sub_2574AD5D8(v90 + v119, v317, &qword_27F879E10, &qword_257744730);
            v121 = v341;
            v103 = __swift_getEnumTagSinglePayload(v120, 1, v341);
            sub_2574695E4(v120, &qword_27F879E10, &qword_257744730);
            v104 = v342;
            if (v103 == 1)
            {
              swift_allocBox();
              OUTLINED_FUNCTION_18_12();
              MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
              v83 = v315;
              goto LABEL_30;
            }

            v128 = v90 + v119;
            v129 = v309;
            sub_2574AD5D8(v128, v309, &qword_27F879E10, &qword_257744730);
            v130 = OUTLINED_FUNCTION_197();
            OUTLINED_FUNCTION_155(v130, v131, v121);
            if (v94)
            {
              v136 = v308;
              _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
              v132 = *(v121 + 20);
              v83 = v315;
              if (qword_27F878FF0 != -1)
              {
                OUTLINED_FUNCTION_12_15();
                swift_once();
              }

              *(v136 + v132) = qword_27F87B038;
              v133 = OUTLINED_FUNCTION_197();
              v135 = __swift_getEnumTagSinglePayload(v133, v134, v121);

              if (v135 != 1)
              {
                sub_2574695E4(v129, &qword_27F879E10, &qword_257744730);
              }
            }

            else
            {
              OUTLINED_FUNCTION_8_12();
              v136 = v308;
              sub_257649420(v129, v308);
              v83 = v315;
            }

            v137 = *(v136 + v341[1].n128_i32[1]);
            v138 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
            OUTLINED_FUNCTION_296(v137 + OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type, &v351);
            v139 = v137 + v138;
            v90 = v311;
            v103 = &qword_27F879D40;
            sub_2574AD5D8(v139, v311, &qword_27F879D40, &qword_257744660);
            OUTLINED_FUNCTION_28_0(v90);
            if (v94)
            {
              sub_2574695E4(v90, &qword_27F879D40, &qword_257744660);
              swift_allocBox();
              OUTLINED_FUNCTION_18_12();
              MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
              OUTLINED_FUNCTION_0_39();
              sub_2576494E8();
LABEL_30:
              swift_projectBox();
              OUTLINED_FUNCTION_7_14();
              sub_25764953C(v140, v333);
              sub_2576F1B84();
              v142 = v141;
              OUTLINED_FUNCTION_2_27();
              sub_2576494E8();
LABEL_31:
              v143 = v325;
              goto LABEL_32;
            }

            OUTLINED_FUNCTION_0_39();
            sub_2576494E8();
            OUTLINED_FUNCTION_43_5();
            v149 = v90;
            v90 = v307;
            sub_257649420(v149, v307);
            v150 = v90;
            LOBYTE(v90) = v310;
            sub_257649420(v150, v310);
            v151 = swift_getEnumCaseMultiPayload();
            switch(v151)
            {
              case 1:
                swift_allocBox();
                OUTLINED_FUNCTION_20_7();
                sub_257649420(v310, v170);
                OUTLINED_FUNCTION_9_10();
                v171 = sub_25764953C(v136, v324);
                v142 = sub_2576F210C(v171);
                OUTLINED_FUNCTION_4_17();
                goto LABEL_44;
              case 2:
                swift_allocBox();
                OUTLINED_FUNCTION_19_9();
                sub_257649420(v310, v166);
                OUTLINED_FUNCTION_11_14();
                sub_25764953C(v136, v322);
                sub_2576F2344();
                v142 = v167;
                OUTLINED_FUNCTION_3_27();
                goto LABEL_44;
              case 3:
                swift_allocBox();
                OUTLINED_FUNCTION_21_9();
                sub_257649420(v310, v168);
                OUTLINED_FUNCTION_10_18();
                v169 = sub_25764953C(v136, v323);
                v142 = sub_2576F4D1C(v169);
                OUTLINED_FUNCTION_5_22();
LABEL_44:
                sub_2576494E8();
                goto LABEL_31;
              case 4:
                v292 = swift_allocBox();
                v154 = v153;
                OUTLINED_FUNCTION_25_6();
                sub_257649420(v310, v155);
                OUTLINED_FUNCTION_6_22();
                v156 = v154;
                v157 = v295;
                sub_25764953C(v156, v295);
                v158 = swift_initStackObject();
                OUTLINED_FUNCTION_33_4(v158);
                v291 = v159;
                *(v159 + 40) = v160;
                v90 = *(v157 + *(v312 + 20));
                v161 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType;
                OUTLINED_FUNCTION_296(v90 + OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType, &v350);
                v162 = v304;
                sub_2574AD5D8(v90 + v161, v304, &qword_27F879E10, &qword_257744730);
                v163 = v341;
                v103 = __swift_getEnumTagSinglePayload(v162, 1, v341);
                v164 = OUTLINED_FUNCTION_75_3();
                sub_2574695E4(v164, v165, &qword_257744730);
                if (v103 == 1)
                {
                  swift_allocBox();
                  OUTLINED_FUNCTION_18_12();
                  MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
                  v83 = v315;
LABEL_54:
                  swift_projectBox();
                  OUTLINED_FUNCTION_7_14();
                  sub_25764953C(v185, v333);
                  sub_2576F1B84();
                  v187 = v186;
                  OUTLINED_FUNCTION_2_27();
                  sub_2576494E8();
                  goto LABEL_55;
                }

                v172 = v90 + v161;
                v173 = v302;
                sub_2574AD5D8(v172, v302, &qword_27F879E10, &qword_257744730);
                v174 = OUTLINED_FUNCTION_197();
                OUTLINED_FUNCTION_155(v174, v175, v163);
                if (v94)
                {
                  v176 = v301;
                  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
                  v177 = *(v163 + 20);
                  v83 = v315;
                  if (qword_27F878FF0 != -1)
                  {
                    OUTLINED_FUNCTION_12_15();
                    swift_once();
                  }

                  *(v176 + v177) = qword_27F87B038;
                  v178 = OUTLINED_FUNCTION_197();
                  v180 = __swift_getEnumTagSinglePayload(v178, v179, v163);

                  v181 = v176;
                  if (v180 != 1)
                  {
                    sub_2574695E4(v173, &qword_27F879E10, &qword_257744730);
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_8_12();
                  v181 = v301;
                  sub_257649420(v173, v301);
                  v83 = v315;
                }

                v182 = *(v181 + v341[1].n128_i32[1]);
                v183 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
                OUTLINED_FUNCTION_296(v182 + OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type, &v349);
                v184 = v182 + v183;
                v90 = v294;
                v103 = &qword_27F879D40;
                sub_2574AD5D8(v184, v294, &qword_27F879D40, &qword_257744660);
                OUTLINED_FUNCTION_28_0(v90);
                if (v94)
                {
                  sub_2574695E4(v90, &qword_27F879D40, &qword_257744660);
                  swift_allocBox();
                  OUTLINED_FUNCTION_18_12();
                  MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
                  OUTLINED_FUNCTION_0_39();
                  sub_2576494E8();
                  goto LABEL_54;
                }

                OUTLINED_FUNCTION_0_39();
                sub_2576494E8();
                OUTLINED_FUNCTION_43_5();
                v189 = v90;
                v90 = v300;
                sub_257649420(v189, v300);
                v190 = v90;
                LOBYTE(v90) = v303;
                sub_257649420(v190, v303);
                v191 = swift_getEnumCaseMultiPayload();
                switch(v191)
                {
                  case 1:
                    swift_allocBox();
                    OUTLINED_FUNCTION_20_7();
                    sub_257649420(v303, v211);
                    OUTLINED_FUNCTION_9_10();
                    v212 = sub_25764953C(v181, v324);
                    v187 = sub_2576F210C(v212);
                    OUTLINED_FUNCTION_4_17();
                    goto LABEL_63;
                  case 2:
                    swift_allocBox();
                    OUTLINED_FUNCTION_19_9();
                    sub_257649420(v303, v207);
                    OUTLINED_FUNCTION_11_14();
                    sub_25764953C(v181, v322);
                    sub_2576F2344();
                    v187 = v208;
                    OUTLINED_FUNCTION_3_27();
                    goto LABEL_63;
                  case 3:
                    swift_allocBox();
                    OUTLINED_FUNCTION_21_9();
                    sub_257649420(v303, v209);
                    OUTLINED_FUNCTION_10_18();
                    v210 = sub_25764953C(v181, v323);
                    v187 = sub_2576F4D1C(v210);
                    OUTLINED_FUNCTION_5_22();
LABEL_63:
                    sub_2576494E8();
                    break;
                  case 4:
                    v292 = swift_allocBox();
                    v195 = v194;
                    OUTLINED_FUNCTION_25_6();
                    sub_257649420(v303, v196);
                    OUTLINED_FUNCTION_6_22();
                    v197 = v195;
                    v198 = v293;
                    sub_25764953C(v197, v293);
                    v199 = swift_initStackObject();
                    OUTLINED_FUNCTION_33_4(v199);
                    v313 = v200;
                    *(v200 + 40) = v201;
                    v103 = *(v198 + *(v312 + 20));
                    v90 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType;
                    OUTLINED_FUNCTION_296(v103 + OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType, &v348);
                    v202 = v299;
                    sub_2574AD5D8(v103 + v90, v299, &qword_27F879E10, &qword_257744730);
                    v203 = OUTLINED_FUNCTION_197();
                    v204 = v341;
                    v206 = __swift_getEnumTagSinglePayload(v203, v205, v341);
                    sub_2574695E4(v202, &qword_27F879E10, &qword_257744730);
                    if (v206 == 1)
                    {
                      swift_allocBox();
                      OUTLINED_FUNCTION_18_12();
                      MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
                      v354 = v202;
                      v83 = v315;
                    }

                    else
                    {
                      v213 = v103 + v90;
                      v90 = v298;
                      sub_2574AD5D8(v213, v298, &qword_27F879E10, &qword_257744730);
                      OUTLINED_FUNCTION_28_0(v90);
                      if (v94)
                      {
                        v214 = v297;
                        _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
                        v215 = *(v204 + 20);
                        v83 = v315;
                        if (qword_27F878FF0 != -1)
                        {
                          OUTLINED_FUNCTION_12_15();
                          swift_once();
                        }

                        *(v214 + v215) = qword_27F87B038;
                        v216 = OUTLINED_FUNCTION_188();
                        v103 = __swift_getEnumTagSinglePayload(v216, v217, v204);

                        if (v103 != 1)
                        {
                          sub_2574695E4(v90, &qword_27F879E10, &qword_257744730);
                        }
                      }

                      else
                      {
                        OUTLINED_FUNCTION_8_12();
                        sub_257649420(v90, v297);
                        v83 = v315;
                      }

                      sub_2576F0F64();
                      v202 = v354;
                    }

                    switch(v202 >> 61)
                    {
                      case 1uLL:
                        OUTLINED_FUNCTION_85_2();
                        OUTLINED_FUNCTION_9_10();
                        v229 = sub_25764953C(v228, v324);
                        v220 = sub_2576F210C(v229);
                        OUTLINED_FUNCTION_4_17();
                        goto LABEL_77;
                      case 2uLL:
                        OUTLINED_FUNCTION_85_2();
                        OUTLINED_FUNCTION_11_14();
                        sub_25764953C(v224, v322);
                        sub_2576F2344();
                        v220 = v225;
                        OUTLINED_FUNCTION_3_27();
                        goto LABEL_77;
                      case 3uLL:
                        OUTLINED_FUNCTION_85_2();
                        OUTLINED_FUNCTION_10_18();
                        v227 = sub_25764953C(v226, v323);
                        v220 = sub_2576F4D1C(v227);
                        OUTLINED_FUNCTION_5_22();
                        goto LABEL_77;
                      case 4uLL:
                        OUTLINED_FUNCTION_85_2();
                        OUTLINED_FUNCTION_6_22();
                        sub_25764953C(v221, v296);
                        v220 = sub_2576F4F60();
                        v103 = v222;
                        LOBYTE(v90) = v223;
LABEL_77:
                        sub_2576494E8();
                        break;
                      default:
                        swift_projectBox();
                        OUTLINED_FUNCTION_7_14();
                        sub_25764953C(v218, v333);
                        sub_2576F1B84();
                        v220 = v219;
                        OUTLINED_FUNCTION_2_27();
                        sub_2576494E8();
                        break;
                    }

                    v230 = v313;
                    *(v313 + 48) = v220;
                    *(v230 + 56) = v103;
                    *(v230 + 64) = v90;
                    v187 = sub_2576A6964(v230);
                    OUTLINED_FUNCTION_22_9();
                    sub_2576494E8();
                    LOBYTE(v90) = 2;
                    break;
                  default:
                    swift_allocBox();
                    OUTLINED_FUNCTION_26_6();
                    sub_257649420(v303, v192);
                    goto LABEL_54;
                }

LABEL_55:
                v143 = v325;

                v188 = v291;
                *(v291 + 48) = v187;
                *(v188 + 56) = v103;
                *(v188 + 64) = v90;
                v142 = sub_2576A6964(v188);
                OUTLINED_FUNCTION_22_9();
                sub_2576494E8();
                LOBYTE(v90) = 2;
                break;
              default:
                swift_allocBox();
                OUTLINED_FUNCTION_26_6();
                sub_257649420(v310, v152);
                goto LABEL_30;
            }

LABEL_32:

            *(v143 + 48) = v142;
            *(v143 + 56) = v103;
            *(v143 + 64) = v90;
            v107 = sub_2576A6964(v143);
            OUTLINED_FUNCTION_22_9();
            sub_2576494E8();
            LOBYTE(v90) = 2;
            break;
          default:
            swift_allocBox();
            OUTLINED_FUNCTION_26_6();
            sub_257649420(v339, v111);
            goto LABEL_12;
        }
      }

      OUTLINED_FUNCTION_23_9();
      sub_2576494E8();

      v144 = v346;
      v347 = v346;
      v146 = *(v346 + 16);
      v145 = *(v346 + 24);
      if (v146 >= v145 >> 1)
      {
        v193 = OUTLINED_FUNCTION_174(v145);
        sub_257484060(v193, v146 + 1, 1);
        v144 = v347;
      }

      *(v144 + 16) = v146 + 1;
      v346 = v144;
      v147 = v144 + 40 * v146;
      v148 = v343;
      *(v147 + 32) = v344;
      *(v147 + 40) = v148;
      *(v147 + 48) = v107;
      *(v147 + 56) = v103;
      *(v147 + 64) = v90;
      v39 = v336;
      v85 = v104 - 1;
    }

    while (v85);
  }

  else
  {

    v346 = MEMORY[0x277D84F90];
  }

  v231 = v316;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B28, &unk_257773B40);
  v232 = swift_initStackObject();
  v233 = OUTLINED_FUNCTION_62_2(v232, xmmword_2577442B0);
  v234 = v231[1];
  v233[3].n128_u64[0] = *v231;
  v233[3].n128_u64[1] = v234;
  v233[4].n128_u8[0] = 0;
  MLProgram.Operation.inputs.getter();
  v236 = *(v235 + 16);

  if (!v236)
  {
LABEL_90:
    v243 = sub_2576AACFC(v346);
    v244 = v265;
    v242 = v232[1].n128_u64[0];
    v247 = v232[1].n128_u64[1];
    v241 = v242 + 1;
    if (v242 < v247 >> 1)
    {
      goto LABEL_91;
    }

    goto LABEL_104;
  }

  MLProgram.Operation.inputs.getter();
  v354 = sub_2576A8D28(v237, v238, v239, v240);
  sub_2576479FC(&v354);
  v341 = v232;

  v241 = v354;
  v242 = *(v354 + 16);
  if (!v242)
  {

    v246 = MEMORY[0x277D84F90];
LABEL_89:
    v261 = sub_2576AACFC(v246);
    v263 = v262;
    sub_257469AE0();
    v232 = v264;
    v264[1].n128_u64[0] = 2;
    v264[4].n128_u64[1] = 0x737475706E69;
    v264[5].n128_u64[0] = 0xE600000000000000;
    v264[5].n128_u64[1] = v261;
    v264[6].n128_u64[0] = v263;
    v264[6].n128_u8[8] = 2;
    goto LABEL_90;
  }

  v347 = MEMORY[0x277D84F90];
  v243 = &v347;
  sub_257484060(0, v242, 0);
  v244 = 0;
  OUTLINED_FUNCTION_193();
  v342 = v241 + v245;
  v343 = v242;
  v246 = v347;
  v344 = v241;
  while (1)
  {
    v247 = *(v241 + 16);
    if (v244 >= v247)
    {
      break;
    }

    v248 = v329;
    sub_2574AD5D8(v342 + *(v332 + 72) * v244, v329, &qword_27F879E00, &qword_257744720);
    v249 = *(v330 + 48);
    OUTLINED_FUNCTION_82_2();
    MEMORY[0x259C64E90]();
    MEMORY[0x259C64E90](34, 0xE100000000000000);
    v250 = v355;
    v345 = v354;
    v243 = (v248 + v249);
    sub_2576730B4();
    v252 = v251;
    v254 = v253;
    v256 = v255;
    sub_2574695E4(v248, &qword_27F879E00, &qword_257744720);
    v347 = v246;
    v258 = *(v246 + 16);
    v257 = *(v246 + 24);
    if (v258 >= v257 >> 1)
    {
      v260 = OUTLINED_FUNCTION_174(v257);
      v243 = &v347;
      sub_257484060(v260, v258 + 1, 1);
      v246 = v347;
    }

    ++v244;
    *(v246 + 16) = v258 + 1;
    v259 = v246 + 40 * v258;
    *(v259 + 32) = v345;
    *(v259 + 40) = v250;
    *(v259 + 48) = v252;
    *(v259 + 56) = v254;
    *(v259 + 64) = v256;
    v242 = v343;
    v241 = v344;
    if (v343 == v244)
    {

      goto LABEL_89;
    }
  }

  __break(1u);
LABEL_104:
  OUTLINED_FUNCTION_174(v247);
  sub_257469AE0();
  v232 = v288;
LABEL_91:
  v232[1].n128_u64[0] = v241;
  v266 = v232 + 40 * v242;
  *(v266 + 4) = 0x7374757074756FLL;
  *(v266 + 5) = 0xE700000000000000;
  *(v266 + 6) = v243;
  *(v266 + 7) = v244;
  v266[64] = 2;
  v267 = *(MLProgram.Operation.blocks.getter() + 16);

  if (v267)
  {
    v268 = MLProgram.Operation.blocks.getter();
    v269 = *(v268 + 16);
    if (v269)
    {
      v341 = v232;
      v354 = MEMORY[0x277D84F90];
      sub_257484040(0, v269, 0);
      v270 = v354;
      OUTLINED_FUNCTION_193();
      v272 = v268 + v271;
      v274 = *(v273 + 72);
      v345 = v268;
      v346 = v274;
      do
      {
        OUTLINED_FUNCTION_30_5();
        sub_25764953C(v272, v331);
        sub_2576963A8();
        v276 = v275;
        v278 = v277;
        v280 = v279;
        OUTLINED_FUNCTION_29_7();
        sub_2576494E8();
        v354 = v270;
        v282 = *(v270 + 16);
        v281 = *(v270 + 24);
        if (v282 >= v281 >> 1)
        {
          v284 = OUTLINED_FUNCTION_174(v281);
          sub_257484040(v284, v282 + 1, 1);
          v270 = v354;
        }

        *(v270 + 16) = v282 + 1;
        v283 = v270 + 24 * v282;
        *(v283 + 32) = v276;
        *(v283 + 40) = v278;
        *(v283 + 48) = v280;
        v272 += v346;
        --v269;
      }

      while (v269);

      v232 = v341;
    }

    else
    {

      v270 = MEMORY[0x277D84F90];
    }

    v286 = v232[1].n128_u64[0];
    v285 = v232[1].n128_u64[1];
    if (v286 >= v285 >> 1)
    {
      OUTLINED_FUNCTION_174(v285);
      sub_257469AE0();
      v232 = v289;
    }

    v232[1].n128_u64[0] = v286 + 1;
    v287 = v232 + 40 * v286;
    *(v287 + 4) = 0x736B636F6C42;
    *(v287 + 5) = 0xE600000000000000;
    *(v287 + 6) = v270;
    *(v287 + 7) = 0;
    v287[64] = 1;
  }

  sub_2576AACFC(v232);
  OUTLINED_FUNCTION_35();
}

void MLProgram.Operation.init(name:inputs:outputs:)()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v34 = v4;
  v35 = v5;
  v7 = v6;
  v8 = type metadata accessor for MLProgram.NamedValueType(0);
  v9 = OUTLINED_FUNCTION_24(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  v13 = type metadata accessor for Proto_MILSpec_NamedValueType(0);
  v14 = OUTLINED_FUNCTION_24(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v17 = v16 - v15;
  type metadata accessor for Proto_MILSpec_Argument(0);
  v18 = MEMORY[0x277D84F90];
  sub_2577435D4();
  v7[4] = v18;
  type metadata accessor for Proto_MILSpec_Value(0);
  v19 = v1;
  v7[5] = sub_2577435D4();
  type metadata accessor for Proto_MILSpec_Operation(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v7 = v34;
  v7[1] = v35;
  sub_257648D5C(v3);
  v21 = v20;

  v7[2] = v21;
  v22 = *(v19 + 16);
  if (v22)
  {
    sub_257484918(0, v22, 0);
    v23 = v18;
    OUTLINED_FUNCTION_193();
    v25 = v19 + v24;
    v27 = *(v26 + 72);
    do
    {
      OUTLINED_FUNCTION_24_10();
      v28 = OUTLINED_FUNCTION_72_2();
      sub_25764953C(v28, v29);
      OUTLINED_FUNCTION_27_8();
      sub_25764953C(v12, v17);
      OUTLINED_FUNCTION_23_9();
      sub_2576494E8();
      v31 = *(v23 + 16);
      v30 = *(v23 + 24);
      if (v31 >= v30 >> 1)
      {
        v33 = OUTLINED_FUNCTION_174(v30);
        sub_257484918(v33, v31 + 1, 1);
      }

      *(v23 + 16) = v31 + 1;
      OUTLINED_FUNCTION_193();
      OUTLINED_FUNCTION_45_2();
      sub_257649420(v17, v32);
      v25 += v27;
      --v22;
    }

    while (v22);
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
  }

  v7[3] = v23;
  OUTLINED_FUNCTION_35();
}

void sub_2576460F4()
{
  OUTLINED_FUNCTION_31();
  v59 = v2;
  v60 = v1;
  v62 = v3;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_30();
  v7 = type metadata accessor for MLProgram.Block(v6);
  v8 = OUTLINED_FUNCTION_24(v7);
  v58[1] = v9;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880608, &unk_25776D460);
  OUTLINED_FUNCTION_13(v13);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_64_2(v58 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880610, &qword_25776CC98);
  OUTLINED_FUNCTION_13(v16);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_40();
  MLProgram.Operation.inputs.getter();
  v19 = v18 + 64;
  v63 = v18;
  v64 = v5;
  OUTLINED_FUNCTION_56_1();
  v23 = v22 & v21;
  v25 = (v24 + 63) >> 6;
  if ((v22 & v21) != 0)
  {
    while (1)
    {
      v26 = v20;
LABEL_6:
      OUTLINED_FUNCTION_60_1();
      v29 = *v27;
      v28 = v27[1];
      MLProgram.Operation.inputs.getter();
      v31 = v30;

      sub_257657A94(v29, v28, v31, v0);

      type metadata accessor for MLProgram.Argument(0);
      v32 = OUTLINED_FUNCTION_188();
      OUTLINED_FUNCTION_155(v32, v33, v34);
      if (v35)
      {
        break;
      }

      v23 &= v23 - 1;

      v5 = v64;
      v62(v0, v64);
      OUTLINED_FUNCTION_41_7();
      sub_2576494E8();
      v20 = v26;
      if (!v23)
      {
        goto LABEL_3;
      }
    }

LABEL_25:
    __break(1u);
  }

  else
  {
    while (1)
    {
LABEL_3:
      v26 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (v26 >= v25)
      {
        break;
      }

      v23 = *(v19 + 8 * v26);
      ++v20;
      if (v23)
      {
        goto LABEL_6;
      }
    }

    v36 = *(MLProgram.Operation.blocks.getter() + 16);

    v37 = v59;
    if (v36)
    {
      v38 = 0;
      while (v38 < *(MLProgram.Operation.blocks.getter() + 16))
      {
        OUTLINED_FUNCTION_193();
        OUTLINED_FUNCTION_30_5();
        sub_25764953C(v39, v12);

        v37(v12, v5);
        OUTLINED_FUNCTION_29_7();
        sub_2576494E8();
        if (v36 == ++v38)
        {
          goto LABEL_13;
        }
      }

      goto LABEL_24;
    }

LABEL_13:
    MLProgram.Operation.attributes.getter();
    v41 = v40 + 64;
    OUTLINED_FUNCTION_56_1();
    v45 = v44 & v43;
    v47 = (v46 + 63) >> 6;
    if ((v44 & v43) == 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v48 = v42;
LABEL_18:
      OUTLINED_FUNCTION_60_1();
      v51 = *v49;
      v50 = v49[1];
      MLProgram.Operation.attributes.getter();
      v53 = v52;

      v54 = v61;
      sub_257657A68(v51, v50, v53, v61);

      type metadata accessor for MLProgram.Value(0);
      v55 = OUTLINED_FUNCTION_188();
      OUTLINED_FUNCTION_155(v55, v56, v57);
      if (v35)
      {
        break;
      }

      v45 &= v45 - 1;

      v60(v54, v64);
      sub_2576494E8();
      v42 = v48;
      if (!v45)
      {
LABEL_15:
        while (1)
        {
          v48 = v42 + 1;
          if (__OFADD__(v42, 1))
          {
            goto LABEL_23;
          }

          if (v48 >= v47)
          {

            OUTLINED_FUNCTION_35();
            return;
          }

          v45 = *(v41 + 8 * v48);
          ++v42;
          if (v45)
          {
            goto LABEL_18;
          }
        }
      }
    }
  }

  __break(1u);
}

void sub_257646520()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v112 = v3;
  v118 = v4;
  v6 = v5;
  v128 = v7;
  v8 = OUTLINED_FUNCTION_30();
  v113 = type metadata accessor for MLProgram.Value(v8);
  OUTLINED_FUNCTION_63();
  v111 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12_1();
  v108 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880608, &unk_25776D460);
  v13 = OUTLINED_FUNCTION_13(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_25_0();
  v110 = v14;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_196();
  v122 = v16;
  v17 = OUTLINED_FUNCTION_153();
  v18 = type metadata accessor for MLProgram.Argument(v17);
  OUTLINED_FUNCTION_63();
  v117 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_12_1();
  v109 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880610, &qword_25776CC98);
  v23 = OUTLINED_FUNCTION_13(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_25_0();
  v116 = v24;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_196();
  v123 = v26;

  MLProgram.Operation.inputs.getter();
  v28 = v27 + 64;
  OUTLINED_FUNCTION_41_0();
  v31 = v30 & v29;
  isUniquelyReferenced_nonNull_native = ((v32 + 63) >> 6);
  swift_bridgeObjectRetain_n();
  v34 = 0;
  v35 = 0;
  v124 = v0;
  v125 = v6;
  v114 = isUniquelyReferenced_nonNull_native;
  v115 = v28;
  v119 = v2;
  if (!v31)
  {
    goto LABEL_3;
  }

  do
  {
    v126 = v35;
    v36 = v18;
LABEL_7:
    OUTLINED_FUNCTION_60_1();
    v39 = *v38;
    v40 = v38[1];
    MLProgram.Operation.inputs.getter();
    v42 = v41;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v129 = v42;
    sub_25765368C(v39, v40);
    OUTLINED_FUNCTION_52_3();
    if (__OFADD__(v45, v46))
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v47 = v43;
    v48 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880618, &unk_25776D480);
    if (sub_257743894())
    {
      v49 = sub_25765368C(v39, v40);
      v51 = v124;
      if ((v48 & 1) != (v50 & 1))
      {
        goto LABEL_49;
      }

      v47 = v49;
    }

    else
    {
      v51 = v124;
    }

    isUniquelyReferenced_nonNull_native = v36;
    if ((v48 & 1) == 0)
    {
      goto LABEL_47;
    }

    v52 = *(v117 + 72) * v47;
    OUTLINED_FUNCTION_31_5();
    sub_257649420(v53 + v52, v123);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, isUniquelyReferenced_nonNull_native);

    v118(v123, v128, v125);
    sub_2574AD5D8(v123, v116, &qword_27F880610, &qword_25776CC98);
    OUTLINED_FUNCTION_155(v116, 1, isUniquelyReferenced_nonNull_native);
    if (v57)
    {
      sub_2574695E4(v116, &qword_27F880610, &qword_25776CC98);
      sub_2576493CC(*(v129 + 48) + 16 * v47);
      sub_2577438B4();
    }

    else
    {
      sub_257649420(v116, v109);
      sub_257649420(v109, *(v129 + 56) + v52);
    }

    v18 = isUniquelyReferenced_nonNull_native;
    v31 &= v31 - 1;
    sub_2574695E4(v123, &qword_27F880610, &qword_25776CC98);
    v35 = v126;
    sub_257648D5C(v129);
    v59 = v58;

    *(v51 + 16) = v59;
    v2 = v119;
    v6 = v125;
    isUniquelyReferenced_nonNull_native = v114;
    v28 = v115;
  }

  while (v31);
  while (1)
  {
LABEL_3:
    v37 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v37 >= isUniquelyReferenced_nonNull_native)
    {
      break;
    }

    v31 = *(v28 + 8 * v37);
    ++v34;
    if (v31)
    {
      v126 = v35;
      v36 = v18;
      v34 = v37;
      goto LABEL_7;
    }
  }

  v60 = *(MLProgram.Operation.blocks.getter() + 16);

  if (v60)
  {
    v61 = 0;
    do
    {
      v62 = MLProgram.Operation.blocks.getter();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25767A61C(v62, v63, v64, v65);
        v62 = v70;
      }

      if (v61 >= *(v62 + 16))
      {
        goto LABEL_44;
      }

      isUniquelyReferenced_nonNull_native = (v61 + 1);
      v66 = type metadata accessor for MLProgram.Block(0);
      OUTLINED_FUNCTION_24(v66);
      v69 = v62 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v68 + 72) * v61;

      v2(v69, v128, v6);
      MLProgram.Operation.blocks.setter();
      v61 = isUniquelyReferenced_nonNull_native;
    }

    while (v60 != isUniquelyReferenced_nonNull_native);
  }

  MLProgram.Operation.attributes.getter();
  v71 = 0;
  OUTLINED_FUNCTION_41_0();
  v75 = v74 & v73;
  v77 = (v76 + 63) >> 6;
  v120 = v77;
  v121 = v72;
  if ((v74 & v73) == 0)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v127 = v35;
LABEL_30:
    OUTLINED_FUNCTION_60_1();
    MLProgram.Operation.attributes.getter();
    v80 = v79;

    swift_isUniquelyReferenced_nonNull_native();
    v81 = OUTLINED_FUNCTION_75_3();
    sub_25765368C(v81, v82);
    OUTLINED_FUNCTION_52_3();
    isUniquelyReferenced_nonNull_native = (v85 + v86);
    if (__OFADD__(v85, v86))
    {
      break;
    }

    v87 = v83;
    v88 = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880620, &qword_25776CCA0);
    if (sub_257743894())
    {
      v89 = OUTLINED_FUNCTION_75_3();
      v91 = sub_25765368C(v89, v90);
      v93 = v125;
      if ((v88 & 1) != (v92 & 1))
      {
        goto LABEL_49;
      }

      v87 = v91;
    }

    else
    {
      v93 = v125;
    }

    if ((v88 & 1) == 0)
    {
      goto LABEL_48;
    }

    v94 = *(v111 + 72) * v87;
    OUTLINED_FUNCTION_28_8();
    sub_257649420(v95 + v94, v122);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v96, v97, v98, v113);

    v112(v122, v128, v93);
    isUniquelyReferenced_nonNull_native = &qword_27F880608;
    sub_2574AD5D8(v122, v110, &qword_27F880608, &unk_25776D460);
    OUTLINED_FUNCTION_155(v110, 1, v113);
    if (v57)
    {
      v99 = OUTLINED_FUNCTION_72_2();
      sub_2574695E4(v99, v100, &unk_25776D460);
      sub_2576493CC(*(v80 + 48) + 16 * v87);
      sub_2577438B4();
    }

    else
    {
      sub_257649420(v110, v108);
      sub_257649420(v108, *(v80 + 56) + v94);
    }

    v35 = v127;
    v75 &= v75 - 1;
    sub_2574695E4(v122, &qword_27F880608, &unk_25776D460);
    v101 = sub_257648FB0(v80);

    *(v124 + 40) = v101;
    v77 = v120;
    v72 = v121;
    if (!v75)
    {
LABEL_26:
      while (1)
      {
        v78 = v71 + 1;
        if (__OFADD__(v71, 1))
        {
          goto LABEL_43;
        }

        if (v78 >= v77)
        {
          swift_bridgeObjectRelease_n();

          OUTLINED_FUNCTION_35();
          return;
        }

        v75 = *(v72 + 8 * v78);
        ++v71;
        if (v75)
        {
          v127 = v35;
          v71 = v78;
          goto LABEL_30;
        }
      }
    }
  }

LABEL_46:
  __break(1u);
LABEL_47:
  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v102, v103, v104, isUniquelyReferenced_nonNull_native);
  __break(1u);
LABEL_48:
  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v105, v106, v107, v113);
  __break(1u);
LABEL_49:
  swift_bridgeObjectRelease_n();
  sub_2577439B4();
  __break(1u);
}

void sub_257646D80()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_30();
  type metadata accessor for MLProgram.Value(v3);
  OUTLINED_FUNCTION_63();
  v108 = v5;
  v109 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12_1();
  v106 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880608, &unk_25776D460);
  v8 = OUTLINED_FUNCTION_13(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_25_0();
  v110 = v9;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_196();
  v118 = v11;
  v12 = OUTLINED_FUNCTION_153();
  type metadata accessor for MLProgram.Argument(v12);
  OUTLINED_FUNCTION_63();
  v114 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_12_1();
  v107 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880610, &qword_25776CC98);
  v17 = OUTLINED_FUNCTION_13(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_25_0();
  v113 = v18;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_64_2(v20);
  MLProgram.Operation.inputs.getter();
  v21 = 0;
  v22 = 0;
  v116 = v23;
  OUTLINED_FUNCTION_41_0();
  v27 = v26 & v25;
  v29 = (v28 + 63) >> 6;
  v119 = v0;
  v111 = v29;
  v112 = v24;
  if ((v26 & v25) == 0)
  {
    goto LABEL_3;
  }

  do
  {
    OUTLINED_FUNCTION_78_2();
LABEL_7:
    OUTLINED_FUNCTION_60_1();
    MLProgram.Operation.inputs.getter();
    v33 = v32;

    swift_isUniquelyReferenced_nonNull_native();
    v34 = OUTLINED_FUNCTION_72_2();
    sub_25765368C(v34, v35);
    OUTLINED_FUNCTION_52_3();
    if (__OFADD__(v38, v39))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v40 = v36;
    v41 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880618, &unk_25776D480);
    if (sub_257743894())
    {
      v42 = OUTLINED_FUNCTION_72_2();
      v44 = sub_25765368C(v42, v43);
      if ((v41 & 1) != (v45 & 1))
      {
        goto LABEL_47;
      }

      v40 = v44;
    }

    if ((v41 & 1) == 0)
    {
      goto LABEL_45;
    }

    v46 = *(v114 + 72) * v40;
    OUTLINED_FUNCTION_31_5();
    sub_257649420(v47 + v46, v120);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v48, v49, v50, v22);
    sub_257674A68(v120, v2, v51, v52, v53, v54, v55, v56, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v116, v118);
    sub_2574AD5D8(v120, v113, &qword_27F880610, &qword_25776CC98);
    OUTLINED_FUNCTION_155(v113, 1, v22);
    if (v57)
    {
      sub_2574695E4(v113, &qword_27F880610, &qword_25776CC98);
      sub_2576493CC(*(v33 + 48) + 16 * v40);
      sub_2577438B4();
    }

    else
    {
      sub_257649420(v113, v107);
      sub_257649420(v107, *(v33 + 56) + v46);
    }

    v22 = v121;
    v27 &= v27 - 1;
    sub_2574695E4(v120, &qword_27F880610, &qword_25776CC98);
    sub_257648D5C(v33);
    v59 = v58;

    *(v119 + 16) = v59;
    v29 = v111;
    v24 = v112;
  }

  while (v27);
  while (1)
  {
LABEL_3:
    v30 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    if (v30 >= v29)
    {
      break;
    }

    v27 = *(v24 + 8 * v30);
    ++v21;
    if (v27)
    {
      OUTLINED_FUNCTION_78_2();
      v21 = v31;
      goto LABEL_7;
    }
  }

  v60 = *(MLProgram.Operation.blocks.getter() + 16);

  if (v60)
  {
    v61 = 0;
    do
    {
      v62 = MLProgram.Operation.blocks.getter();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25767A61C(v62, v63, v64, v65);
        v62 = v67;
      }

      if (v61 >= *(v62 + 16))
      {
        goto LABEL_42;
      }

      v66 = type metadata accessor for MLProgram.Block(0);
      OUTLINED_FUNCTION_24(v66);
      sub_2576986A0();
      MLProgram.Operation.blocks.setter();
    }

    while (v60 != ++v61);
  }

  MLProgram.Operation.attributes.getter();
  v68 = 0;
  OUTLINED_FUNCTION_41_0();
  v72 = v71 & v70;
  v74 = (v73 + 63) >> 6;
  v115 = v74;
  v117 = v69;
  if ((v71 & v70) == 0)
  {
    goto LABEL_25;
  }

  while (1)
  {
    OUTLINED_FUNCTION_78_2();
LABEL_29:
    OUTLINED_FUNCTION_60_1();
    v79 = *v77;
    v78 = v77[1];
    MLProgram.Operation.attributes.getter();
    v81 = v80;

    swift_isUniquelyReferenced_nonNull_native();
    sub_25765368C(v79, v78);
    OUTLINED_FUNCTION_52_3();
    if (__OFADD__(v84, v85))
    {
      break;
    }

    v86 = v82;
    v87 = v83;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880620, &qword_25776CCA0);
    if (sub_257743894())
    {
      v88 = sub_25765368C(v79, v78);
      if ((v87 & 1) != (v89 & 1))
      {
        goto LABEL_47;
      }

      v86 = v88;
    }

    if ((v87 & 1) == 0)
    {
      goto LABEL_46;
    }

    v90 = *(v108 + 72) * v86;
    OUTLINED_FUNCTION_28_8();
    sub_257649420(v91 + v90, v118);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v92, v93, v94, v109);
    sub_257718008();
    v95 = v22;
    sub_2574AD5D8(v118, v110, v22, &unk_25776D460);
    OUTLINED_FUNCTION_28_0(v110);
    if (v57)
    {
      v96 = OUTLINED_FUNCTION_75_3();
      sub_2574695E4(v96, v97, &unk_25776D460);
      sub_2576493CC(*(v81 + 48) + 16 * v86);
      sub_2577438B4();
    }

    else
    {
      sub_257649420(v110, v106);
      sub_257649420(v106, *(v81 + 56) + v90);
    }

    v22 = v121;
    v72 &= v72 - 1;
    sub_2574695E4(v118, v95, &unk_25776D460);
    v98 = sub_257648FB0(v81);

    *(v119 + 40) = v98;
    v74 = v115;
    v69 = v117;
    if (!v72)
    {
LABEL_25:
      while (1)
      {
        v75 = v68 + 1;
        if (__OFADD__(v68, 1))
        {
          goto LABEL_41;
        }

        if (v75 >= v74)
        {

          OUTLINED_FUNCTION_35();
          return;
        }

        v72 = *(v69 + 8 * v75);
        ++v68;
        if (v72)
        {
          OUTLINED_FUNCTION_78_2();
          v68 = v76;
          goto LABEL_29;
        }
      }
    }
  }

LABEL_44:
  __break(1u);
LABEL_45:
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v99, v100, v101, v22);
  __break(1u);
LABEL_46:
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v102, v103, v104, v109);
  __break(1u);
LABEL_47:
  sub_2577439B4();
  __break(1u);
}

void MLProgram.Operation.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  v26 = sub_257743A84();
  OUTLINED_FUNCTION_63();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  type metadata accessor for MLProgram.Operation(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  sub_25764953C(v0, v9 - v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v10 = swift_allocObject();
  v11 = OUTLINED_FUNCTION_62_2(v10, xmmword_257744000);
  v12 = v0[1];
  v13 = MEMORY[0x277D837D0];
  v11[3].n128_u64[0] = *v0;
  v11[3].n128_u64[1] = v12;
  v11[4].n128_u64[1] = v13;
  v11[5].n128_u64[0] = 0x737475706E69;
  v11[5].n128_u64[1] = 0xE600000000000000;
  MLProgram.Operation.inputs.getter();
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8805D8, &qword_25776CBD0);
  v10[6].n128_u64[0] = v15;
  v10[7].n128_u64[1] = v16;
  v10[8].n128_u64[0] = 0x7374757074756FLL;
  v10[8].n128_u64[1] = 0xE700000000000000;

  v17 = MLProgram.Operation.outputs.getter();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8805E0, &qword_25776CBD8);
  v10[9].n128_u64[0] = v17;
  v10[10].n128_u64[1] = v18;
  v10[11].n128_u64[0] = 0x736B636F6C62;
  v10[11].n128_u64[1] = 0xE600000000000000;
  v19 = MLProgram.Operation.blocks.getter();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8805E8, &qword_25776CBE0);
  v10[12].n128_u64[0] = v19;
  v10[13].n128_u64[1] = v20;
  v10[14].n128_u64[0] = 0x7475626972747461;
  v10[14].n128_u64[1] = 0xEA00000000007365;
  MLProgram.Operation.attributes.getter();
  v22 = v21;
  v10[16].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8805F0, &qword_25776CBE8);
  v10[15].n128_u64[0] = v22;
  sub_257743A74();
  v23 = OUTLINED_FUNCTION_197();
  __swift_storeEnumTagSinglePayload(v23, v24, 1, v25);
  (*(v3 + 104))(v1, *MEMORY[0x277D84C38], v26);
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t MLProgram.Operation.debugDescription.getter()
{
  sub_257743834();
  MEMORY[0x259C64E90](0xD000000000000010, 0x8000000257780A80);
  MEMORY[0x259C64E90](*v0, v0[1]);
  MEMORY[0x259C64E90](0x737475706E69202CLL, 0xEA0000000000203ALL);
  MLProgram.Operation.inputs.getter();
  v1 = OUTLINED_FUNCTION_30();
  type metadata accessor for MLProgram.Argument(v1);
  sub_2577435C4();
  OUTLINED_FUNCTION_70_4();
  OUTLINED_FUNCTION_69_0();

  MEMORY[0x259C64E90](0x74757074756F202CLL, 0xEB00000000203A73);
  MLProgram.Operation.outputs.getter();
  v2 = OUTLINED_FUNCTION_30();
  v3 = type metadata accessor for MLProgram.NamedValueType(v2);
  MEMORY[0x259C64F20](v0, v3);
  OUTLINED_FUNCTION_70_4();
  OUTLINED_FUNCTION_69_0();

  MEMORY[0x259C64E90](0x736B636F6C62202CLL, 0xEA0000000000203ALL);
  MLProgram.Operation.blocks.getter();
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for MLProgram.Block(v4);
  MEMORY[0x259C64F20](v0, v5);
  OUTLINED_FUNCTION_70_4();
  OUTLINED_FUNCTION_69_0();

  MEMORY[0x259C64E90](0x626972747461202CLL, 0xEE00203A73657475);
  MLProgram.Operation.attributes.getter();
  v6 = OUTLINED_FUNCTION_376();
  type metadata accessor for MLProgram.Value(v6);
  v7 = sub_2577435C4();
  v9 = v8;

  MEMORY[0x259C64E90](v7, v9);

  MEMORY[0x259C64E90](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_2576479FC(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E00, &qword_257744720) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2576FC2A4();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_257647AB0(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_257647AB0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_257743964();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E00, &qword_257744720);
        v6 = sub_257743764();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E00, &qword_257744720) - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_257647E64(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_257647BF8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_257647BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E00, &qword_257744720);
  v8 = MEMORY[0x28223BE20](v36);
  v35 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v27 - v11);
  result = MEMORY[0x28223BE20](v10);
  v16 = (&v27 - v15);
  v29 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v34 = v17;
    v28 = v18;
    v22 = v17 + v18 * a3;
    while (2)
    {
      v32 = v19;
      v33 = a3;
      v30 = v22;
      v31 = v21;
      while (1)
      {
        sub_2574AD5D8(v22, v16, &qword_27F879E00, &qword_257744720);
        sub_2574AD5D8(v19, v12, &qword_27F879E00, &qword_257744720);
        if (*v16 == *v12 && v16[1] == v12[1])
        {
          break;
        }

        v24 = sub_257743994();
        sub_2574695E4(v12, &qword_27F879E00, &qword_257744720);
        result = sub_2574695E4(v16, &qword_27F879E00, &qword_257744720);
        if (v24)
        {
          if (!v34)
          {
            __break(1u);
            return result;
          }

          v25 = v35;
          sub_257649478(v22, v35);
          swift_arrayInitWithTakeFrontToBack();
          result = sub_257649478(v25, v19);
          v19 += v20;
          v22 += v20;
          if (!__CFADD__(v21++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      sub_2574695E4(v12, &qword_27F879E00, &qword_257744720);
      result = sub_2574695E4(v16, &qword_27F879E00, &qword_257744720);
LABEL_14:
      a3 = v33 + 1;
      v19 = v32 + v28;
      v21 = v31 - 1;
      v22 = v30 + v28;
      if (v33 + 1 != v29)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_257647E64(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v119 = a1;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E00, &qword_257744720);
  v126 = *(v134 - 8);
  v6 = MEMORY[0x28223BE20](v134);
  v122 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v133 = &v114 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v135 = (&v114 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v114 - v13);
  v15 = MEMORY[0x28223BE20](v12);
  v130 = (&v114 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v129 = (&v114 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v118 = (&v114 - v20);
  MEMORY[0x28223BE20](v19);
  v117 = (&v114 - v21);
  v128 = a3;
  v22 = a3[1];
  if (v22 < 1)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_112:
    v25 = *v119;
    if (!*v119)
    {
      goto LABEL_152;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_114:
      v106 = (v24 + 16);
      for (i = *(v24 + 2); i >= 2; *v106 = i)
      {
        if (!*v128)
        {
          goto LABEL_149;
        }

        v108 = &v24[16 * i];
        v109 = *v108;
        v110 = &v106[2 * i];
        v111 = *(v110 + 1);
        v112 = v132;
        sub_257648804(*v128 + *(v126 + 72) * *v108, *v128 + *(v126 + 72) * *v110, *v128 + *(v126 + 72) * v111, v25);
        v132 = v112;
        if (v112)
        {
          break;
        }

        if (v111 < v109)
        {
          goto LABEL_137;
        }

        if (i - 2 >= *v106)
        {
          goto LABEL_138;
        }

        *v108 = v109;
        *(v108 + 1) = v111;
        v113 = *v106 - i;
        if (*v106 < i)
        {
          goto LABEL_139;
        }

        i = *v106 - 1;
        sub_2576FB794(v110 + 16, v113, v110);
      }

LABEL_110:

      return;
    }

LABEL_146:
    v24 = sub_2576FB678();
    goto LABEL_114;
  }

  v114 = a4;
  v23 = 0;
  v24 = MEMORY[0x277D84F90];
  v25 = &qword_257744720;
  v123 = v14;
  while (1)
  {
    v26 = v23;
    v27 = v23 + 1;
    if (v23 + 1 < v22)
    {
      v124 = v22;
      v28 = *v128;
      v29 = *(v126 + 72);
      v131 = v23 + 1;
      v30 = v117;
      sub_2574AD5D8(v28 + v29 * v27, v117, &qword_27F879E00, &qword_257744720);
      v127 = v29;
      v31 = v118;
      sub_2574AD5D8(v28 + v29 * v26, v118, &qword_27F879E00, &qword_257744720);
      if (*v30 == *v31 && v30[1] == v31[1])
      {
        LODWORD(v125) = 0;
      }

      else
      {
        LODWORD(v125) = sub_257743994();
      }

      v115 = v24;
      v25 = &qword_257744720;
      sub_2574695E4(v118, &qword_27F879E00, &qword_257744720);
      sub_2574695E4(v117, &qword_27F879E00, &qword_257744720);
      v116 = v26;
      v33 = v26 + 2;
      v34 = v127 * (v26 + 2);
      v35 = v28 + v34;
      v36 = v131;
      v37 = v127 * v131;
      v38 = v28 + v127 * v131;
      do
      {
        v27 = v33;
        v39 = v36;
        v40 = v37;
        v41 = v34;
        if (v33 >= v124)
        {
          break;
        }

        v131 = v33;
        v42 = v129;
        sub_2574AD5D8(v35, v129, &qword_27F879E00, &qword_257744720);
        v43 = v130;
        sub_2574AD5D8(v38, v130, &qword_27F879E00, &qword_257744720);
        v44 = *v42 == *v43 && v42[1] == v43[1];
        v45 = v44 ? 0 : sub_257743994();
        v27 = v131;
        sub_2574695E4(v130, &qword_27F879E00, &qword_257744720);
        v25 = &qword_257744720;
        sub_2574695E4(v129, &qword_27F879E00, &qword_257744720);
        v33 = v27 + 1;
        v35 += v127;
        v38 += v127;
        v36 = v39 + 1;
        v37 = v40 + v127;
        v34 = v41 + v127;
        v14 = v123;
      }

      while (((v125 ^ v45) & 1) == 0);
      if (v125)
      {
        v46 = v116;
        if (v27 < v116)
        {
          goto LABEL_143;
        }

        if (v116 >= v27)
        {
          v24 = v115;
          v26 = v116;
          goto LABEL_37;
        }

        v47 = v116 * v127;
        do
        {
          if (v46 != v39)
          {
            v48 = *v128;
            if (!*v128)
            {
              goto LABEL_150;
            }

            v25 = v48 + v47;
            sub_257649478(v48 + v47, v122);
            v49 = v47 < v40 || v25 >= v48 + v41;
            if (v49)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v47 != v40)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_257649478(v122, v48 + v40);
          }

          ++v46;
          v40 -= v127;
          v41 -= v127;
          v47 += v127;
        }

        while (v46 < v39--);
      }

      v24 = v115;
      v26 = v116;
    }

LABEL_37:
    v51 = v128[1];
    if (v27 < v51)
    {
      if (__OFSUB__(v27, v26))
      {
        goto LABEL_142;
      }

      if (v27 - v26 < v114)
      {
        break;
      }
    }

LABEL_59:
    if (v27 < v26)
    {
      goto LABEL_141;
    }

    v131 = v27;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_257469A28();
      v24 = v104;
    }

    v62 = *(v24 + 2);
    v63 = v62 + 1;
    v23 = v131;
    if (v62 >= *(v24 + 3) >> 1)
    {
      sub_257469A28();
      v23 = v131;
      v24 = v105;
    }

    *(v24 + 2) = v63;
    v64 = v24 + 32;
    v65 = &v24[16 * v62 + 32];
    *v65 = v26;
    *(v65 + 1) = v23;
    v127 = *v119;
    if (!v127)
    {
      goto LABEL_151;
    }

    if (v62)
    {
      while (1)
      {
        v25 = v63 - 1;
        v66 = &v64[16 * v63 - 16];
        v67 = &v24[16 * v63];
        if (v63 >= 4)
        {
          break;
        }

        if (v63 == 3)
        {
          v68 = *(v24 + 4);
          v69 = *(v24 + 5);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_79:
          if (v71)
          {
            goto LABEL_128;
          }

          v83 = *v67;
          v82 = *(v67 + 1);
          v84 = __OFSUB__(v82, v83);
          v85 = v82 - v83;
          v86 = v84;
          if (v84)
          {
            goto LABEL_131;
          }

          v87 = *(v66 + 1);
          v88 = v87 - *v66;
          if (__OFSUB__(v87, *v66))
          {
            goto LABEL_134;
          }

          if (__OFADD__(v85, v88))
          {
            goto LABEL_136;
          }

          if (v85 + v88 >= v70)
          {
            if (v70 < v88)
            {
              v25 = v63 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        if (v63 < 2)
        {
          goto LABEL_130;
        }

        v90 = *v67;
        v89 = *(v67 + 1);
        v78 = __OFSUB__(v89, v90);
        v85 = v89 - v90;
        v86 = v78;
LABEL_94:
        if (v86)
        {
          goto LABEL_133;
        }

        v92 = *v66;
        v91 = *(v66 + 1);
        v78 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v78)
        {
          goto LABEL_135;
        }

        if (v93 < v85)
        {
          goto LABEL_108;
        }

LABEL_101:
        if (v25 - 1 >= v63)
        {
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        if (!*v128)
        {
          goto LABEL_148;
        }

        v97 = v24;
        v98 = &v64[16 * v25 - 16];
        v99 = *v98;
        v100 = &v64[16 * v25];
        v101 = *(v100 + 1);
        v102 = v132;
        sub_257648804(*v128 + *(v126 + 72) * *v98, *v128 + *(v126 + 72) * *v100, *v128 + *(v126 + 72) * v101, v127);
        v132 = v102;
        if (v102)
        {
          goto LABEL_110;
        }

        if (v101 < v99)
        {
          goto LABEL_123;
        }

        v103 = *(v97 + 2);
        if (v25 > v103)
        {
          goto LABEL_124;
        }

        *v98 = v99;
        *(v98 + 1) = v101;
        if (v25 >= v103)
        {
          goto LABEL_125;
        }

        v63 = v103 - 1;
        sub_2576FB794(v100 + 16, v103 - 1 - v25, &v64[16 * v25]);
        v24 = v97;
        *(v97 + 2) = v103 - 1;
        v23 = v131;
        if (v103 <= 2)
        {
          goto LABEL_108;
        }
      }

      v72 = &v64[16 * v63];
      v73 = *(v72 - 8);
      v74 = *(v72 - 7);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_126;
      }

      v77 = *(v72 - 6);
      v76 = *(v72 - 5);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_127;
      }

      v79 = *(v67 + 1);
      v80 = v79 - *v67;
      if (__OFSUB__(v79, *v67))
      {
        goto LABEL_129;
      }

      v78 = __OFADD__(v70, v80);
      v81 = v70 + v80;
      if (v78)
      {
        goto LABEL_132;
      }

      if (v81 >= v75)
      {
        v95 = *v66;
        v94 = *(v66 + 1);
        v78 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v78)
        {
          goto LABEL_140;
        }

        if (v70 < v96)
        {
          v25 = v63 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_79;
    }

LABEL_108:
    v22 = v128[1];
    v25 = &qword_257744720;
    if (v23 >= v22)
    {
      goto LABEL_112;
    }
  }

  v52 = v26 + v114;
  if (__OFADD__(v26, v114))
  {
    goto LABEL_144;
  }

  if (v52 >= v51)
  {
    v52 = v128[1];
  }

  if (v52 < v26)
  {
LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  if (v27 == v52)
  {
    goto LABEL_59;
  }

  v115 = v24;
  v116 = v26;
  v53 = *v128;
  v54 = *(v126 + 72);
  v55 = *v128 + v54 * (v27 - 1);
  v25 = -v54;
  v56 = v26 - v27;
  v120 = v54;
  v121 = v52;
  v57 = v53 + v27 * v54;
LABEL_46:
  v131 = v27;
  v124 = v57;
  v125 = v56;
  v127 = v55;
  while (1)
  {
    sub_2574AD5D8(v57, v14, &qword_27F879E00, &qword_257744720);
    v58 = v135;
    sub_2574AD5D8(v55, v135, &qword_27F879E00, &qword_257744720);
    if (*v14 == *v58 && v14[1] == v58[1])
    {
      sub_2574695E4(v135, &qword_27F879E00, &qword_257744720);
      sub_2574695E4(v14, &qword_27F879E00, &qword_257744720);
LABEL_57:
      v27 = v131 + 1;
      v55 = v127 + v120;
      v56 = v125 - 1;
      v57 = v124 + v120;
      if (v131 + 1 == v121)
      {
        v27 = v121;
        v24 = v115;
        v26 = v116;
        goto LABEL_59;
      }

      goto LABEL_46;
    }

    v60 = sub_257743994();
    sub_2574695E4(v135, &qword_27F879E00, &qword_257744720);
    sub_2574695E4(v14, &qword_27F879E00, &qword_257744720);
    if ((v60 & 1) == 0)
    {
      goto LABEL_57;
    }

    if (!v53)
    {
      break;
    }

    v61 = v133;
    sub_257649478(v57, v133);
    swift_arrayInitWithTakeFrontToBack();
    sub_257649478(v61, v55);
    v55 += v25;
    v57 += v25;
    v49 = __CFADD__(v56++, 1);
    if (v49)
    {
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
}

uint64_t sub_257648804(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E00, &qword_257744720);
  v8 = MEMORY[0x28223BE20](v65);
  v64 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v63 = (&v56 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v56 - v13);
  result = MEMORY[0x28223BE20](v12);
  v17 = (&v56 - v16);
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  v20 = a2 - a1;
  v21 = a2 - a1 == 0x8000000000000000 && v19 == -1;
  if (v21)
  {
    goto LABEL_72;
  }

  v22 = a2;
  v23 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_73;
  }

  v25 = v20 / v19;
  v68 = a1;
  v67 = a4;
  v26 = v23 / v19;
  if (v20 / v19 < v23 / v19)
  {
    v27 = v22;
    sub_257483558(a1, v20 / v19, a4);
    v28 = v27;
    v64 = a4 + v25 * v19;
    v66 = v64;
    v62 = a3;
    while (1)
    {
      if (a4 >= v64 || v28 >= a3)
      {
        goto LABEL_70;
      }

      v30 = v28;
      sub_2574AD5D8(v28, v17, &qword_27F879E00, &qword_257744720);
      sub_2574AD5D8(a4, v14, &qword_27F879E00, &qword_257744720);
      if (*v17 == *v14 && v17[1] == v14[1])
      {
        sub_2574695E4(v14, &qword_27F879E00, &qword_257744720);
        sub_2574695E4(v17, &qword_27F879E00, &qword_257744720);
      }

      else
      {
        v32 = sub_257743994();
        sub_2574695E4(v14, &qword_27F879E00, &qword_257744720);
        sub_2574695E4(v17, &qword_27F879E00, &qword_257744720);
        if (v32)
        {
          v33 = v30;
          v34 = v30 + v19;
          if (a1 < v30 || a1 >= v34)
          {
            swift_arrayInitWithTakeFrontToBack();
            v28 = v30 + v19;
            a3 = v62;
          }

          else
          {
            a3 = v62;
            if (a1 != v33)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v28 = v34;
          }

          goto LABEL_37;
        }
      }

      if (a1 < a4 || a1 >= a4 + v19)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v67 = a4 + v19;
      a4 += v19;
      v28 = v30;
      a3 = v62;
LABEL_37:
      a1 += v19;
      v68 = a1;
    }
  }

  v37 = v22;
  sub_257483558(v22, v23 / v19, a4);
  v38 = v37;
  v39 = a4 + v26 * v19;
  v40 = -v19;
  v41 = v39;
  v61 = -v19;
  v58 = a4;
LABEL_42:
  v42 = v38 + v40;
  v43 = a3;
  v44 = v41;
  v62 = v38;
  v59 = v41;
  v60 = v42;
  while (1)
  {
    if (v39 <= a4)
    {
      v68 = v38;
      v66 = v44;
      goto LABEL_70;
    }

    if (v38 <= a1)
    {
      break;
    }

    v57 = v44;
    v45 = v61;
    v46 = v39 + v61;
    v47 = v63;
    sub_2574AD5D8(v39 + v61, v63, &qword_27F879E00, &qword_257744720);
    v48 = v42;
    v49 = v64;
    sub_2574AD5D8(v48, v64, &qword_27F879E00, &qword_257744720);
    if (*v47 == *v49 && v47[1] == v49[1])
    {
      v51 = 0;
    }

    else
    {
      v51 = sub_257743994();
    }

    a3 = v43 + v45;
    sub_2574695E4(v64, &qword_27F879E00, &qword_257744720);
    sub_2574695E4(v63, &qword_27F879E00, &qword_257744720);
    if (v51)
    {
      v53 = v43 < v62 || a3 >= v62;
      a4 = v58;
      if (v53)
      {
        v54 = v60;
        swift_arrayInitWithTakeFrontToBack();
        v38 = v54;
        v41 = v57;
        v40 = v61;
      }

      else
      {
        v41 = v57;
        v55 = v60;
        v40 = v61;
        v38 = v60;
        if (v43 != v62)
        {
          v41 = v57;
          swift_arrayInitWithTakeBackToFront();
          v38 = v55;
        }
      }

      goto LABEL_42;
    }

    v52 = v43 < v39 || a3 >= v39;
    a4 = v58;
    if (v52)
    {
      swift_arrayInitWithTakeFrontToBack();
      v43 = a3;
      v39 = v46;
      v44 = v46;
      v38 = v62;
      v41 = v59;
      v42 = v60;
    }

    else
    {
      v44 = v46;
      v21 = v39 == v43;
      v43 = a3;
      v39 = v46;
      v38 = v62;
      v41 = v59;
      v42 = v60;
      if (!v21)
      {
        swift_arrayInitWithTakeBackToFront();
        v38 = v62;
        v43 = a3;
        v39 = v46;
        v44 = v46;
      }
    }
  }

  v68 = v38;
  v66 = v41;
LABEL_70:
  sub_2576FB6A4(&v68, &v67, &v66);
  return 1;
}

void sub_257648D5C(uint64_t a1)
{
  v2 = type metadata accessor for Proto_MILSpec_Argument(0);
  v3 = OUTLINED_FUNCTION_24(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_12_1();
  v33 = v4;
  v5 = OUTLINED_FUNCTION_153();
  v6 = type metadata accessor for MLProgram.Argument(v5);
  v7 = OUTLINED_FUNCTION_24(v6);
  v32 = v8;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_64_2(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880628, &unk_25776CCA8);
  sub_2577438E4();
  v10 = 0;
  v34 = a1;
  v11 = a1 + 64;
  OUTLINED_FUNCTION_41_0();
  v14 = v13 & v12;
  v16 = (v15 + 63) >> 6;
  v29 = v17 + 64;
  v30 = v17;
  if ((v13 & v12) != 0)
  {
    while (1)
    {
      OUTLINED_FUNCTION_50_2();
LABEL_8:
      v20 = v18 | (v10 << 6);
      v21 = (*(v34 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      sub_25764953C(*(v34 + 56) + *(v32 + 72) * v20, v31);
      OUTLINED_FUNCTION_42_6();
      sub_25764953C(v31, v33);

      OUTLINED_FUNCTION_41_7();
      sub_2576494E8();
      *(v29 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v24 = (*(v30 + 48) + 16 * v20);
      *v24 = v22;
      v24[1] = v23;
      OUTLINED_FUNCTION_40_7();
      sub_257649420(v33, v25);
      v26 = *(v30 + 16);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      *(v30 + 16) = v28;
      if (!v14)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v16)
      {
        return;
      }

      ++v19;
      if (*(v11 + 8 * v10))
      {
        OUTLINED_FUNCTION_49_2();
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void *sub_257648FB0(uint64_t a1)
{
  v2 = type metadata accessor for Proto_MILSpec_Value(0);
  v35 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v34 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLProgram.Value(0);
  v33 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v32 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880630, &qword_25776D4A0);
  result = sub_2577438E4();
  v7 = result;
  v8 = 0;
  v36 = a1;
  v11 = *(a1 + 64);
  v10 = a1 + 64;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v30 = result + 8;
  v31 = result;
  if ((v13 & v9) != 0)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_10:
      v19 = v16 | (v8 << 6);
      v20 = (*(v36 + 48) + 16 * v19);
      v21 = *v20;
      v22 = v20[1];
      v23 = v32;
      sub_25764953C(*(v36 + 56) + *(v33 + 72) * v19, v32);
      v24 = v34;
      sub_25764953C(v23, v34);

      sub_2576494E8();
      v7 = v31;
      *(v30 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v25 = (v7[6] + 16 * v19);
      *v25 = v21;
      v25[1] = v22;
      result = sub_257649420(v24, v7[7] + *(v35 + 72) * v19);
      v26 = v7[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      v7[2] = v28;
      if (!v14)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v15)
      {
        return v7;
      }

      v18 = *(v10 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for MLProgram.Operation(uint64_t a1)
{
  result = qword_27F8805F8;
  if (!qword_27F8805F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2576492E0()
{
  result = qword_27F87B640;
  if (!qword_27F87B640)
  {
    type metadata accessor for Proto_MILSpec_Operation(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87B640);
  }

  return result;
}

uint64_t sub_257649360(uint64_t a1)
{
  result = type metadata accessor for Proto_MILSpec_Operation(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_257649420(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return a2;
}

uint64_t sub_257649478(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E00, &qword_257744720);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2576494E8()
{
  v1 = OUTLINED_FUNCTION_376();
  v2(v1);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_25764953C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return a2;
}

__n128 OUTLINED_FUNCTION_33_4(__n128 *a1)
{
  result = v1[12];
  a1[1] = result;
  a1[2].n128_u64[0] = 0x2064657070617257;
  return result;
}

void OUTLINED_FUNCTION_36_3()
{
  *(*(v4 - 120) + ((v1 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v1;
  v5 = (*(v0 + 48) + 16 * v1);
  *v5 = v2;
  v5[1] = v3;
}

__n128 *OUTLINED_FUNCTION_62_2(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 1701667182;
  result[2].n128_u64[1] = 0xE400000000000000;
  return result;
}

void OUTLINED_FUNCTION_69_0()
{

  JUMPOUT(0x259C64E90);
}

uint64_t OUTLINED_FUNCTION_70_4()
{
}

uint64_t OUTLINED_FUNCTION_84_4()
{
}

uint64_t OUTLINED_FUNCTION_85_2()
{
  *(v0 + 296) = v1 & 0x1FFFFFFFFFFFFFFFLL;

  return swift_projectBox();
}

void sub_257649AC4()
{
  OUTLINED_FUNCTION_31();
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FE08, &qword_25776CCD0);
  OUTLINED_FUNCTION_13(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v164 = v160 - v6;
  v7 = OUTLINED_FUNCTION_153();
  v163 = type metadata accessor for Proto_SupportVectorClassifier.OneOf_ClassLabels(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11();
  v161 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v162 = v160 - v12;
  v13 = OUTLINED_FUNCTION_153();
  v14 = type metadata accessor for SupportVectorCoefficients(v13);
  v15 = OUTLINED_FUNCTION_24(v14);
  v169 = v16;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880640, &qword_25776CCC8);
  OUTLINED_FUNCTION_13(v20);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v21);
  v171 = v160 - v22;
  v23 = OUTLINED_FUNCTION_153();
  v170 = type metadata accessor for SupportVectorClassifierConfiguration.SupportVectors(v23);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3();
  v172 = (v26 - v25);
  v27 = OUTLINED_FUNCTION_153();
  v28 = type metadata accessor for SupportVectorKernel.Kind(v27);
  v29 = OUTLINED_FUNCTION_13(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880638, &unk_25776CCB8);
  OUTLINED_FUNCTION_13(v30);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v31);
  v32 = OUTLINED_FUNCTION_17_3();
  v33 = type metadata accessor for SupportVectorKernel(v32);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_56_2();
  SupportVectorClassifierConfiguration.kernel.getter();
  OUTLINED_FUNCTION_155(v2, 1, v33);
  if (v35)
  {
    sub_2574695E4(v2, &qword_27F880638, &unk_25776CCB8);
    v36 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_10_19();
    sub_25764A9B0(v2, v0);
    SupportVectorKernel.kind.getter();
    v37 = sub_2576D4A84();
    v39 = v38;
    v41 = v40;
    sub_25764D180();
    sub_257469AE0();
    v36 = v42;
    v44 = *(v42 + 16);
    v43 = *(v42 + 24);
    if (v44 >= v43 >> 1)
    {
      OUTLINED_FUNCTION_174(v43);
      OUTLINED_FUNCTION_34_4();
      v36 = v158;
    }

    sub_25764D180();
    *(v36 + 16) = v44 + 1;
    v45 = v36 + 40 * v44;
    *(v45 + 32) = 0x6C656E72654BLL;
    *(v45 + 40) = 0xE600000000000000;
    *(v45 + 48) = v37;
    *(v45 + 56) = v39;
    *(v45 + 64) = v41;
  }

  v46 = MEMORY[0x277D84F90];
  v47 = SupportVectorClassifierConfiguration.supportVectorCountPerClass.getter();
  v48 = *(v47 + 16);
  v165 = v3;
  v168 = v19;
  if (v48)
  {
    v49 = OUTLINED_FUNCTION_27_9();
    sub_257484040(v49, v48, 0);
    v50 = 32;
    v51 = v173;
    do
    {
      v176 = *(v47 + v50);
      v52 = sub_257743674();
      v54 = v53;
      v173 = v51;
      v56 = *(v51 + 16);
      v55 = *(v51 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_257484040((v55 > 1), v56 + 1, 1);
        v51 = v173;
      }

      *(v51 + 16) = v56 + 1;
      v57 = v51 + 24 * v56;
      *(v57 + 32) = v52;
      *(v57 + 40) = v54;
      *(v57 + 48) = 0;
      v50 += 8;
      --v48;
    }

    while (v48);

    v3 = v165;
    v36 = v166;
    v19 = v168;
    v46 = MEMORY[0x277D84F90];
  }

  else
  {

    v51 = MEMORY[0x277D84F90];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_34_4();
    v36 = v151;
  }

  v59 = *(v36 + 16);
  v58 = *(v36 + 24);
  if (v59 >= v58 >> 1)
  {
    OUTLINED_FUNCTION_174(v58);
    OUTLINED_FUNCTION_34_4();
    v36 = v152;
  }

  *(v36 + 16) = v59 + 1;
  v60 = v36 + 40 * v59;
  *(v60 + 32) = 0xD00000000000001ELL;
  *(v60 + 40) = 0x8000000257780AA0;
  *(v60 + 48) = v51;
  *(v60 + 56) = 0;
  *(v60 + 64) = 1;
  v61 = v171;
  SupportVectorClassifierConfiguration.supportVectors.getter();
  OUTLINED_FUNCTION_155(v61, 1, v170);
  if (v35)
  {
    sub_2574695E4(v61, &qword_27F880640, &qword_25776CCC8);
  }

  else
  {
    sub_25764A9B0(v61, v172);
    v62 = sub_25764C88C();
    v64 = v63;
    v66 = v65;
    v68 = *(v36 + 16);
    v67 = *(v36 + 24);
    if (v68 >= v67 >> 1)
    {
      OUTLINED_FUNCTION_174(v67);
      OUTLINED_FUNCTION_34_4();
      v36 = v159;
    }

    OUTLINED_FUNCTION_3_28();
    sub_25764D180();
    *(v36 + 16) = v68 + 1;
    v69 = v36 + 40 * v68;
    *(v69 + 32) = 0x2074726F70707553;
    *(v69 + 40) = 0xEF73726F74636556;
    *(v69 + 48) = v62;
    *(v69 + 56) = v64;
    *(v69 + 64) = v66;
  }

  v70 = SupportVectorClassifierConfiguration.coefficients.getter();
  v71 = *(v70 + 16);
  if (v71)
  {
    v72 = OUTLINED_FUNCTION_27_9();
    sub_257484040(v72, v71, 0);
    v73 = 0;
    v74 = v173;
    OUTLINED_FUNCTION_193();
    v160[1] = v70;
    v170 = v70 + v75;
    v169 = *(v76 + 72);
    v167 = v71;
    do
    {
      OUTLINED_FUNCTION_20_8();
      sub_25764D1D4(v77, v19);
      v78 = *v19;
      v79 = *(*v19 + 16);
      if (v79)
      {
        v171 = v73;
        v172 = v74;
        v176 = v46;
        v80 = OUTLINED_FUNCTION_13_8();
        sub_257484040(v80, v81, v82);
        v83 = v176;
        v84 = (v78 + 32);
        do
        {
          v175 = *v84;
          v85 = sub_257743674();
          v87 = v86;
          v176 = v83;
          v89 = *(v83 + 16);
          v88 = *(v83 + 24);
          if (v89 >= v88 >> 1)
          {
            v91 = OUTLINED_FUNCTION_174(v88);
            sub_257484040(v91, v89 + 1, 1);
            v83 = v176;
          }

          *(v83 + 16) = v89 + 1;
          v90 = v83 + 24 * v89;
          *(v90 + 32) = v85;
          *(v90 + 40) = v87;
          *(v90 + 48) = 0;
          ++v84;
          --v79;
        }

        while (v79);
        v71 = v167;
        v19 = v168;
        v46 = MEMORY[0x277D84F90];
        v73 = v171;
        v74 = v172;
      }

      else
      {
        v83 = v46;
      }

      OUTLINED_FUNCTION_23_10();
      sub_25764D180();
      v173 = v74;
      v93 = *(v74 + 16);
      v92 = *(v74 + 24);
      if (v93 >= v92 >> 1)
      {
        v95 = OUTLINED_FUNCTION_174(v92);
        sub_257484040(v95, v93 + 1, 1);
        v74 = v173;
      }

      ++v73;
      *(v74 + 16) = v93 + 1;
      v94 = v74 + 24 * v93;
      *(v94 + 32) = v83;
      *(v94 + 40) = 0;
      *(v94 + 48) = 1;
    }

    while (v73 != v71);

    v3 = v165;
    v36 = v166;
  }

  else
  {

    v74 = MEMORY[0x277D84F90];
  }

  v97 = *(v36 + 16);
  v96 = *(v36 + 24);
  v98 = v97 + 1;
  if (v97 >= v96 >> 1)
  {
    OUTLINED_FUNCTION_174(v96);
    OUTLINED_FUNCTION_34_4();
    v36 = v153;
  }

  *(v36 + 16) = v98;
  v99 = v36 + 40 * v97;
  strcpy((v99 + 32), "Coefficients");
  *(v99 + 45) = 0;
  *(v99 + 46) = -5120;
  *(v99 + 48) = v74;
  *(v99 + 56) = 0;
  *(v99 + 64) = 1;
  v100 = type metadata accessor for Proto_SupportVectorClassifier(0);
  v101 = *(v3 + *(v100 + 28));
  v102 = *(v101 + 16);
  v103 = MEMORY[0x277D84F90];
  v172 = v100;
  if (v102)
  {
    v166 = v36;
    v173 = MEMORY[0x277D84F90];
    v104 = OUTLINED_FUNCTION_13_8();
    sub_257484040(v104, v105, v106);
    v103 = v173;
    v107 = (v101 + 32);
    do
    {
      v108 = OUTLINED_FUNCTION_45_3(*v107);
      v71 = v109;
      v173 = v103;
      v111 = *(v103 + 16);
      v110 = *(v103 + 24);
      if (v111 >= v110 >> 1)
      {
        v113 = OUTLINED_FUNCTION_174(v110);
        OUTLINED_FUNCTION_46_5(v113);
        v103 = v173;
      }

      *(v103 + 16) = v111 + 1;
      v112 = v103 + 24 * v111;
      *(v112 + 32) = v108;
      *(v112 + 40) = v71;
      *(v112 + 48) = 0;
      ++v107;
      --v102;
    }

    while (v102);
    v3 = v165;
    v36 = v166;
    v98 = *(v166 + 16);
    v114 = v172;
  }

  else
  {
    v114 = v100;
  }

  v115 = *(v36 + 24);
  if (v98 >= v115 >> 1)
  {
    OUTLINED_FUNCTION_174(v115);
    OUTLINED_FUNCTION_34_4();
    v36 = v154;
  }

  *(v36 + 16) = v98 + 1;
  v116 = v36 + 40 * v98;
  *(v116 + 32) = 7301202;
  *(v116 + 40) = 0xE300000000000000;
  *(v116 + 48) = v103;
  *(v116 + 56) = 0;
  *(v116 + 64) = 1;
  v117 = *(v3 + v114[8]);
  v118 = *(v117 + 16);
  if (v118)
  {
    v166 = v36;
    v173 = MEMORY[0x277D84F90];
    v119 = OUTLINED_FUNCTION_13_8();
    sub_257484040(v119, v120, v121);
    v122 = v173;
    v123 = (v117 + 32);
    do
    {
      OUTLINED_FUNCTION_45_3(*v123);
      OUTLINED_FUNCTION_31_6();
      if (v125)
      {
        v127 = OUTLINED_FUNCTION_174(v124);
        OUTLINED_FUNCTION_46_5(v127);
        v122 = v173;
      }

      *(v122 + 16) = v3;
      v126 = v122 + 24 * v36;
      *(v126 + 32) = v114;
      *(v126 + 40) = v71;
      *(v126 + 48) = 0;
      ++v123;
      --v118;
    }

    while (v118);
    v3 = v165;
    v36 = v166;
    v114 = v172;
  }

  v129 = *(v36 + 16);
  v128 = *(v36 + 24);
  v130 = v129 + 1;
  if (v129 >= v128 >> 1)
  {
    OUTLINED_FUNCTION_174(v128);
    OUTLINED_FUNCTION_34_4();
    v36 = v155;
  }

  OUTLINED_FUNCTION_54_3();
  *(v36 + 16) = v130;
  OUTLINED_FUNCTION_42_7(v36 + 40 * v129);
  v131 = *(v3 + v114[9]);
  v132 = *(v131 + 16);
  if (v132)
  {
    v166 = v36;
    v173 = MEMORY[0x277D84F90];
    v133 = OUTLINED_FUNCTION_13_8();
    sub_257484040(v133, v134, v135);
    v136 = v173;
    v137 = (v131 + 32);
    do
    {
      OUTLINED_FUNCTION_45_3(*v137);
      OUTLINED_FUNCTION_31_6();
      if (v125)
      {
        v140 = OUTLINED_FUNCTION_174(v138);
        OUTLINED_FUNCTION_46_5(v140);
        v136 = v173;
      }

      *(v136 + 16) = v3;
      v139 = v136 + 24 * v36;
      *(v139 + 32) = v114;
      *(v139 + 40) = v71;
      *(v139 + 48) = 0;
      ++v137;
      --v132;
    }

    while (v132);
    v3 = v165;
    v36 = v166;
    v130 = *(v166 + 16);
    v114 = v172;
    OUTLINED_FUNCTION_54_3();
  }

  v141 = *(v36 + 24);
  if (v130 >= v141 >> 1)
  {
    OUTLINED_FUNCTION_174(v141);
    OUTLINED_FUNCTION_34_4();
    v36 = v156;
  }

  *(v36 + 16) = v130 + 1;
  OUTLINED_FUNCTION_42_7(v36 + 40 * v130);
  v142 = v164;
  sub_2574FD880(v3 + v114[10], v164, &qword_27F87FE08, &qword_25776CCD0);
  v143 = OUTLINED_FUNCTION_155(v142, 1, v163);
  if (v35)
  {
    v146 = 0;
    v145 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_9_11();
    v144 = v162;
    sub_25764A9B0(v142, v162);
    OUTLINED_FUNCTION_4_18();
    sub_25764D1D4(v144, v161);
    sub_25764C344();
    v145 = v173;
    v146 = v174;
    OUTLINED_FUNCTION_0_40();
    v143 = sub_25764D180();
  }

  v173 = v145;
  v174 = v146;
  v147 = sub_25764C9E0(v143);

  v149 = *(v36 + 16);
  v148 = *(v36 + 24);
  if (v149 >= v148 >> 1)
  {
    OUTLINED_FUNCTION_174(v148);
    OUTLINED_FUNCTION_34_4();
    v36 = v157;
  }

  *(v36 + 16) = v149 + 1;
  v150 = v36 + 40 * v149;
  strcpy((v150 + 32), "Class Labels");
  *(v150 + 45) = 0;
  *(v150 + 46) = -5120;
  *(v150 + 48) = v147;
  *(v150 + 56) = 0;
  *(v150 + 64) = 1;
  sub_2576AACFC(v36);
  OUTLINED_FUNCTION_35();
}

void SupportVectorClassifierConfiguration.kernel.getter()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = type metadata accessor for Proto_Kernel(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v30 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FDE0, &unk_257768D60);
  v8 = OUTLINED_FUNCTION_13(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - v13;
  v15 = *(type metadata accessor for Proto_SupportVectorClassifier(0) + 48);
  sub_2574FD880(v0 + v15, v14, &qword_27F87FDE0, &unk_257768D60);
  v16 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v3);
  sub_2574695E4(v14, &qword_27F87FDE0, &unk_257768D60);
  if (EnumTagSinglePayload != 1)
  {
    sub_2574FD880(v0 + v15, v11, &qword_27F87FDE0, &unk_257768D60);
    v18 = OUTLINED_FUNCTION_188();
    OUTLINED_FUNCTION_155(v18, v19, v3);
    if (v20)
    {
      type metadata accessor for Proto_Kernel.OneOf_Kernel(0);
      v27 = v30;
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      v25 = OUTLINED_FUNCTION_188();
      OUTLINED_FUNCTION_155(v25, v26, v3);
      if (!v20)
      {
        sub_2574695E4(v11, &qword_27F87FDE0, &unk_257768D60);
      }
    }

    else
    {
      OUTLINED_FUNCTION_5_23();
      v27 = v30;
      sub_25764A9B0(v11, v30);
    }

    OUTLINED_FUNCTION_5_23();
    sub_25764A9B0(v27, v2);
    v16 = 0;
  }

  v28 = type metadata accessor for SupportVectorKernel(0);
  __swift_storeEnumTagSinglePayload(v2, v16, 1, v28);
  OUTLINED_FUNCTION_35();
}

uint64_t SupportVectorClassifierConfiguration.kernel.setter(uint64_t a1)
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
    v13 = type metadata accessor for Proto_SupportVectorClassifier(0);
    sub_2574695E4(v1 + *(v13 + 48), &qword_27F87FDE0, &unk_257768D60);
    OUTLINED_FUNCTION_44();

    return __swift_storeEnumTagSinglePayload(v14, v15, v16, v5);
  }

  else
  {
    OUTLINED_FUNCTION_10_19();
    v17 = OUTLINED_FUNCTION_277();
    sub_25764A9B0(v17, v18);
    sub_25764A9B0(v3, v2);
    v19 = *(type metadata accessor for Proto_SupportVectorClassifier(0) + 48);
    sub_2574695E4(v1 + v19, &qword_27F87FDE0, &unk_257768D60);
    sub_25764A9B0(v2, v1 + v19);
    OUTLINED_FUNCTION_21();
    return __swift_storeEnumTagSinglePayload(v20, v21, v22, v5);
  }
}

uint64_t sub_25764A9B0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return a2;
}

void (*SupportVectorClassifierConfiguration.kernel.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = type metadata accessor for SupportVectorKernel(0);
  v3[1] = v4;
  v29 = v4;
  OUTLINED_FUNCTION_4();
  v3[2] = __swift_coroFrameAllocStub(*(v5 + 64));
  v6 = type metadata accessor for Proto_Kernel(0);
  v3[3] = v6;
  OUTLINED_FUNCTION_4();
  v8 = *(v7 + 64);
  v3[4] = __swift_coroFrameAllocStub(v8);
  v28 = __swift_coroFrameAllocStub(v8);
  v3[5] = v28;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FDE0, &unk_257768D60);
  OUTLINED_FUNCTION_13(v9);
  v10 = OUTLINED_FUNCTION_67_2();
  v3[6] = v10;
  v11 = OUTLINED_FUNCTION_67_2();
  v3[7] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880638, &unk_25776CCB8);
  OUTLINED_FUNCTION_13(v12);
  v3[8] = OUTLINED_FUNCTION_67_2();
  v13 = OUTLINED_FUNCTION_67_2();
  v3[9] = v13;
  v14 = *(type metadata accessor for Proto_SupportVectorClassifier(0) + 48);
  *(v3 + 20) = v14;
  sub_2574FD880(v1 + v14, v11, &qword_27F87FDE0, &unk_257768D60);
  v15 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v6);
  sub_2574695E4(v11, &qword_27F87FDE0, &unk_257768D60);
  if (EnumTagSinglePayload != 1)
  {
    sub_2574FD880(v1 + v14, v10, &qword_27F87FDE0, &unk_257768D60);
    v17 = OUTLINED_FUNCTION_50_3();
    OUTLINED_FUNCTION_155(v17, v18, v6);
    if (v19)
    {
      type metadata accessor for Proto_Kernel.OneOf_Kernel(0);
      v26 = v28;
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      v24 = OUTLINED_FUNCTION_50_3();
      OUTLINED_FUNCTION_155(v24, v25, v6);
      if (!v19)
      {
        sub_2574695E4(v10, &qword_27F87FDE0, &unk_257768D60);
      }
    }

    else
    {
      OUTLINED_FUNCTION_5_23();
      v26 = v28;
      sub_25764A9B0(v10, v28);
    }

    OUTLINED_FUNCTION_5_23();
    sub_25764A9B0(v26, v13);
    v15 = 0;
  }

  __swift_storeEnumTagSinglePayload(v13, v15, 1, v29);
  return sub_25764AC88;
}

void sub_25764AC88()
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
    sub_2574FD880(v10, v11, &qword_27F880638, v12);
    SupportVectorClassifierConfiguration.kernel.setter(v4);
    sub_2574695E4(v2, &qword_27F880638, &unk_25776CCB8);
  }

  else
  {
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload((*v0)[9], 1, v1[1]);
    v14 = *(v1 + 20);
    if (EnumTagSinglePayload == 1)
    {
      v15 = *v1;
      sub_2574695E4(v2, &qword_27F880638, &unk_25776CCB8);
      sub_2574695E4(v15 + v14, &qword_27F87FDE0, &unk_257768D60);
      v16 = 1;
    }

    else
    {
      v17 = v1[4];
      v18 = v1[2];
      v19 = *v1;
      OUTLINED_FUNCTION_10_19();
      v20 = OUTLINED_FUNCTION_263();
      sub_25764A9B0(v20, v21);
      sub_25764A9B0(v18, v17);
      sub_2574695E4(v19 + v14, &qword_27F87FDE0, &unk_257768D60);
      sub_25764A9B0(v17, v19 + v14);
      v16 = 0;
    }

    v4 = v1[8];
    v2 = v1[9];
    v6 = v1[6];
    v5 = v1[7];
    v8 = v1[4];
    v7 = v1[5];
    v9 = v1[2];
    __swift_storeEnumTagSinglePayload(*v1 + *(v1 + 20), v16, 1, v1[3]);
  }

  free(v2);
  free(v4);
  free(v5);
  free(v6);
  free(v7);
  free(v8);
  free(v9);
  OUTLINED_FUNCTION_35();

  free(v22);
}

uint64_t SupportVectorClassifierConfiguration.supportVectorCountPerClass.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v13 = MEMORY[0x277D84F90];
    v4 = OUTLINED_FUNCTION_13_8();
    sub_257483724(v4, v5, v6);
    result = v13;
    v7 = (v1 + 32);
    v8 = *(v13 + 16);
    do
    {
      v10 = *v7++;
      v9 = v10;
      v14 = result;
      v11 = *(result + 24);
      if (v8 >= v11 >> 1)
      {
        v12 = OUTLINED_FUNCTION_174(v11);
        sub_257483724(v12, v8 + 1, 1);
        result = v14;
      }

      *(result + 16) = v8 + 1;
      *(result + 8 * v8++ + 32) = v9;
      --v2;
    }

    while (v2);
  }

  return result;
}

void SupportVectorClassifierConfiguration.supportVectorCountPerClass.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_63_3();
  v4 = v1;
  v6 = v5;
  v7 = *(v5 + 16);
  if (v7)
  {
    v17 = MEMORY[0x277D84F90];
    v8 = OUTLINED_FUNCTION_269();
    sub_257484BE0(v8, v9, v10);
    v11 = 32;
    v12 = v17;
    while (1)
    {
      v13 = *(v6 + v11);
      if (v13 < 0xFFFFFFFF80000000)
      {
        break;
      }

      if (v13 > 0x7FFFFFFF)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_53_2();
      if (v15)
      {
        v16 = OUTLINED_FUNCTION_174(v14);
        sub_257484BE0(v16, v2, 1);
        v12 = v17;
      }

      *(v12 + 16) = v2;
      *(v12 + 4 * v3 + 32) = v13;
      v11 += 8;
      if (!--v7)
      {

        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
LABEL_10:

    *v4 = v12;
    OUTLINED_FUNCTION_62_3();
  }
}

uint64_t (*SupportVectorClassifierConfiguration.supportVectorCountPerClass.modify(uint64_t a1))(uint64_t *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_375(a1);
  *v1 = SupportVectorClassifierConfiguration.supportVectorCountPerClass.getter();
  return sub_25764B04C;
}

uint64_t SupportVectorClassifierConfiguration.supportVectors.getter()
{
  v3 = OUTLINED_FUNCTION_16_1();
  v4 = type metadata accessor for Proto_SupportVectorClassifier.OneOf_SupportVectors(v3);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FE00, &unk_257768E10);
  OUTLINED_FUNCTION_13(v12);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12_6();
  v14 = type metadata accessor for Proto_SupportVectorClassifier(0);
  sub_2574FD880(v1 + *(v14 + 20), v2, &qword_27F87FE00, &unk_257768E10);
  v15 = 1;
  OUTLINED_FUNCTION_155(v2, 1, v4);
  if (!v16)
  {
    OUTLINED_FUNCTION_19_10();
    sub_25764A9B0(v2, v11);
    sub_25764D1D4(v11, v8);
    sub_25764B39C();
    sub_25764D180();
    v15 = 0;
  }

  v17 = type metadata accessor for SupportVectorClassifierConfiguration.SupportVectors(0);
  return __swift_storeEnumTagSinglePayload(v0, v15, 1, v17);
}

uint64_t sub_25764B1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_13(v12);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_21_1();
  sub_2574FD880(a1, v7, a5, a6);
  return a7(v7);
}

uint64_t SupportVectorClassifierConfiguration.supportVectors.setter(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FE00, &unk_257768E10);
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_17_3();
  v8 = type metadata accessor for SupportVectorClassifierConfiguration.SupportVectors(v7);
  OUTLINED_FUNCTION_155(a1, 1, v8);
  if (v9)
  {
    sub_2574695E4(a1, &qword_27F880640, &qword_25776CCC8);
    v10 = type metadata accessor for Proto_SupportVectorClassifier.OneOf_SupportVectors(0);
    v11 = 1;
  }

  else
  {
    sub_25764B438();
    OUTLINED_FUNCTION_3_28();
    sub_25764D180();
    v10 = type metadata accessor for Proto_SupportVectorClassifier.OneOf_SupportVectors(0);
    v11 = 0;
  }

  __swift_storeEnumTagSinglePayload(v2, v11, 1, v10);
  v12 = type metadata accessor for Proto_SupportVectorClassifier(0);
  return sub_2574FD834(v2, v3 + *(v12 + 20), &qword_27F87FE00, &unk_257768E10);
}

uint64_t sub_25764B39C()
{
  type metadata accessor for Proto_SupportVectorClassifier.OneOf_SupportVectors(0);
  swift_getEnumCaseMultiPayload();
  v2 = OUTLINED_FUNCTION_205();
  sub_25764A9B0(v2, v3);
  type metadata accessor for SupportVectorClassifierConfiguration.SupportVectors(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25764B438()
{
  v4 = OUTLINED_FUNCTION_16_1();
  v5 = type metadata accessor for DenseSupportVectorCollection(v4);
  v6 = OUTLINED_FUNCTION_13(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v7 = OUTLINED_FUNCTION_37_8();
  v8 = type metadata accessor for SparseSupportVectorCollection(v7);
  v9 = OUTLINED_FUNCTION_13(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v10 = OUTLINED_FUNCTION_78();
  type metadata accessor for SupportVectorClassifierConfiguration.SupportVectors(v10);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  OUTLINED_FUNCTION_6_23();
  sub_25764D1D4(v1, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_12_16();
    sub_25764A9B0(v3, v1);
    v12 = OUTLINED_FUNCTION_44_1();
    sub_25764A9B0(v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_11_15();
    sub_25764A9B0(v3, v2);
    sub_25764A9B0(v2, v0);
  }

  type metadata accessor for Proto_SupportVectorClassifier.OneOf_SupportVectors(0);
  return swift_storeEnumTagMultiPayload();
}

void SupportVectorClassifierConfiguration.supportVectors.modify()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = type metadata accessor for Proto_SupportVectorClassifier.OneOf_SupportVectors(0);
  v3[1] = v4;
  OUTLINED_FUNCTION_4();
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[2] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FE00, &unk_257768E10);
  OUTLINED_FUNCTION_13(v7);
  v3[3] = OUTLINED_FUNCTION_66_2();
  v8 = OUTLINED_FUNCTION_66_2();
  v3[4] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880640, &qword_25776CCC8);
  OUTLINED_FUNCTION_13(v9);
  v3[5] = OUTLINED_FUNCTION_66_2();
  v10 = OUTLINED_FUNCTION_66_2();
  v3[6] = v10;
  v11 = *(type metadata accessor for Proto_SupportVectorClassifier(0) + 20);
  *(v3 + 14) = v11;
  OUTLINED_FUNCTION_64_3(v11);
  v12 = 1;
  v13 = OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_155(v13, v14, v4);
  if (!v15)
  {
    OUTLINED_FUNCTION_19_10();
    sub_25764A9B0(v8, v6);
    sub_25764B39C();
    v12 = 0;
  }

  v16 = type metadata accessor for SupportVectorClassifierConfiguration.SupportVectors(0);
  __swift_storeEnumTagSinglePayload(v10, v12, 1, v16);
  OUTLINED_FUNCTION_35();
}

void sub_25764B718()
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
    sub_2574FD880(v8, v9, &qword_27F880640, &qword_25776CCC8);
    SupportVectorClassifierConfiguration.supportVectors.setter(v4);
    sub_2574695E4(v2, &qword_27F880640, &qword_25776CCC8);
  }

  else
  {
    v10 = type metadata accessor for SupportVectorClassifierConfiguration.SupportVectors(0);
    OUTLINED_FUNCTION_155(v2, 1, v10);
    if (v11)
    {
      sub_2574695E4(v2, &qword_27F880640, &qword_25776CCC8);
      v12 = 1;
    }

    else
    {
      sub_25764B438();
      OUTLINED_FUNCTION_3_28();
      sub_25764D180();
      v12 = 0;
    }

    v13 = *(v1 + 14);
    v4 = v1[5];
    v2 = v1[6];
    v6 = v1[3];
    v5 = v1[4];
    v7 = v1[2];
    v14 = *v1;
    __swift_storeEnumTagSinglePayload(v6, v12, 1, v1[1]);
    sub_2574FD834(v6, v14 + v13, &qword_27F87FE00, &unk_257768E10);
  }

  free(v2);
  free(v4);
  free(v5);
  free(v6);
  free(v7);
  OUTLINED_FUNCTION_35();

  free(v15);
}

uint64_t SupportVectorClassifierConfiguration.coefficients.getter()
{
  v2 = type metadata accessor for SupportVectorCoefficients(0);
  v3 = OUTLINED_FUNCTION_24(v2);
  v5 = v4;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v6 = OUTLINED_FUNCTION_17_3();
  v7 = *(v0 + *(type metadata accessor for Proto_SupportVectorClassifier(v6) + 24));
  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v23 = MEMORY[0x277D84F90];
    v10 = OUTLINED_FUNCTION_269();
    sub_2574842F0(v10, v11, v12);
    v9 = v23;
    v13 = type metadata accessor for Proto_Coefficients(0);
    OUTLINED_FUNCTION_24(v13);
    v15 = v7 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v17 = *(v16 + 72);
    do
    {
      OUTLINED_FUNCTION_21_10();
      sub_25764D1D4(v15, v1);
      v19 = *(v23 + 16);
      v18 = *(v23 + 24);
      if (v19 >= v18 >> 1)
      {
        v21 = OUTLINED_FUNCTION_174(v18);
        sub_2574842F0(v21, v19 + 1, 1);
      }

      *(v23 + 16) = v19 + 1;
      OUTLINED_FUNCTION_193();
      sub_25764A9B0(v1, v23 + v20 + *(v5 + 72) * v19);
      v15 += v17;
      --v8;
    }

    while (v8);
  }

  return v9;
}

void SupportVectorClassifierConfiguration.coefficients.setter()
{
  OUTLINED_FUNCTION_31();
  v4 = OUTLINED_FUNCTION_376();
  v5 = type metadata accessor for SupportVectorCoefficients(v4);
  v6 = OUTLINED_FUNCTION_24(v5);
  v8 = v7;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v9 = OUTLINED_FUNCTION_78();
  v10 = type metadata accessor for Proto_Coefficients(v9);
  v11 = OUTLINED_FUNCTION_24(v10);
  v13 = v12;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_1();
  v14 = *(v0 + 16);
  if (v14)
  {
    v15 = OUTLINED_FUNCTION_63_2(MEMORY[0x277D84F90]);
    sub_257484C00(v15, v16, v17);
    v18 = v27;
    OUTLINED_FUNCTION_193();
    v20 = v0 + v19;
    v21 = *(v8 + 72);
    do
    {
      OUTLINED_FUNCTION_20_8();
      sub_25764D1D4(v20, v2);
      OUTLINED_FUNCTION_21_10();
      sub_25764D1D4(v2, v3);
      OUTLINED_FUNCTION_23_10();
      sub_25764D180();
      v23 = *(v27 + 16);
      v22 = *(v27 + 24);
      if (v23 >= v22 >> 1)
      {
        v25 = OUTLINED_FUNCTION_174(v22);
        sub_257484C00(v25, v23 + 1, 1);
      }

      *(v27 + 16) = v23 + 1;
      OUTLINED_FUNCTION_193();
      sub_25764A9B0(v3, v27 + v24 + *(v13 + 72) * v23);
      v20 += v21;
      --v14;
    }

    while (v14);
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  v26 = *(type metadata accessor for Proto_SupportVectorClassifier(0) + 24);

  *(v1 + v26) = v18;
  OUTLINED_FUNCTION_35();
}

uint64_t (*SupportVectorClassifierConfiguration.coefficients.modify(uint64_t a1))(uint64_t *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_375(a1);
  *v1 = SupportVectorClassifierConfiguration.coefficients.getter();
  return sub_25764BC6C;
}

uint64_t sub_25764BC84(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  a3(v4);
}

uint64_t SupportVectorClassifierConfiguration.rho.getter()
{
  type metadata accessor for Proto_SupportVectorClassifier(0);
}

uint64_t SupportVectorClassifierConfiguration.rho.setter()
{
  v2 = OUTLINED_FUNCTION_376();
  v3 = *(type metadata accessor for Proto_SupportVectorClassifier(v2) + 28);

  *(v1 + v3) = v0;
  return result;
}

uint64_t SupportVectorClassifierConfiguration.rho.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_375(a1);
  v1 = type metadata accessor for Proto_SupportVectorClassifier(0);
  OUTLINED_FUNCTION_25_7(*(v1 + 28));

  return OUTLINED_FUNCTION_44_1();
}

uint64_t SupportVectorClassifierConfiguration.probabilityA.getter()
{
  type metadata accessor for Proto_SupportVectorClassifier(0);
}

uint64_t SupportVectorClassifierConfiguration.probabilityA.setter()
{
  v2 = OUTLINED_FUNCTION_376();
  v3 = *(type metadata accessor for Proto_SupportVectorClassifier(v2) + 32);

  *(v1 + v3) = v0;
  return result;
}

uint64_t SupportVectorClassifierConfiguration.probabilityA.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_375(a1);
  v1 = type metadata accessor for Proto_SupportVectorClassifier(0);
  OUTLINED_FUNCTION_25_7(*(v1 + 32));

  return OUTLINED_FUNCTION_44_1();
}

uint64_t SupportVectorClassifierConfiguration.probabilityB.getter()
{
  type metadata accessor for Proto_SupportVectorClassifier(0);
}

uint64_t SupportVectorClassifierConfiguration.probabilityB.setter()
{
  v2 = OUTLINED_FUNCTION_376();
  v3 = *(type metadata accessor for Proto_SupportVectorClassifier(v2) + 36);

  *(v1 + v3) = v0;
  return result;
}

uint64_t SupportVectorClassifierConfiguration.probabilityB.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_375(a1);
  v1 = type metadata accessor for Proto_SupportVectorClassifier(0);
  OUTLINED_FUNCTION_25_7(*(v1 + 36));

  return OUTLINED_FUNCTION_44_1();
}

uint64_t sub_25764BFBC(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *(a1 + 6);
  v4 = *a1;
  if (a2)
  {

    *(v2 + v3) = v4;
  }

  else
  {

    *(v2 + v3) = v4;
  }

  return result;
}

uint64_t SupportVectorClassifierConfiguration.classLabels.getter()
{
  v3 = OUTLINED_FUNCTION_16_1();
  v4 = type metadata accessor for Proto_SupportVectorClassifier.OneOf_ClassLabels(v3);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FE08, &qword_25776CCD0);
  OUTLINED_FUNCTION_13(v12);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_78();
  v15 = type metadata accessor for Proto_SupportVectorClassifier(v14);
  sub_2574FD880(v1 + *(v15 + 40), v2, &qword_27F87FE08, &qword_25776CCD0);
  v16 = OUTLINED_FUNCTION_188();
  result = OUTLINED_FUNCTION_155(v16, v17, v4);
  if (v19)
  {
    v23 = 0;
    v22 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_9_11();
    v20 = OUTLINED_FUNCTION_277();
    sub_25764A9B0(v20, v21);
    OUTLINED_FUNCTION_4_18();
    sub_25764D1D4(v11, v8);
    sub_25764C344();
    v22 = v24;
    v23 = v25;
    OUTLINED_FUNCTION_0_40();
    result = sub_25764D180();
  }

  *v0 = v22;
  *(v0 + 8) = v23;
  return result;
}

uint64_t sub_25764C194@<X0>(uint64_t a1@<X8>)
{
  result = SupportVectorClassifierConfiguration.classLabels.getter();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_25764C1D8(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;

  return SupportVectorClassifierConfiguration.classLabels.setter(&v3);
}

uint64_t SupportVectorClassifierConfiguration.classLabels.setter(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FE08, &qword_25776CCD0);
  OUTLINED_FUNCTION_13(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_56_2();
  v6 = *a1;
  if (a1[1])
  {
    type metadata accessor for Proto_StringVector(0);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    *v1 = v6;
    v7 = type metadata accessor for Proto_SupportVectorClassifier.OneOf_ClassLabels(0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {

    sub_25764CFE8(v8);
    v7 = type metadata accessor for Proto_SupportVectorClassifier.OneOf_ClassLabels(0);
    swift_storeEnumTagMultiPayload();
  }

  type metadata accessor for Proto_SupportVectorClassifier.OneOf_ClassLabels(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v7);
  v12 = type metadata accessor for Proto_SupportVectorClassifier(0);
  return sub_2574FD834(v1, v2 + *(v12 + 40), &qword_27F87FE08, &qword_25776CCD0);
}

void sub_25764C344()
{
  OUTLINED_FUNCTION_31();
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for Proto_StringVector(0);
  v8 = OUTLINED_FUNCTION_13(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v9 = OUTLINED_FUNCTION_37_8();
  v10 = type metadata accessor for Proto_Int64Vector(v9);
  v11 = OUTLINED_FUNCTION_13(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  type metadata accessor for Proto_SupportVectorClassifier.OneOf_ClassLabels(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_4_18();
  sub_25764D1D4(v4, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_25764A9B0(v2, v1);
    v15 = *v1;
    v16 = *(*v1 + 16);
    if (v16)
    {
      v17 = OUTLINED_FUNCTION_63_2(MEMORY[0x277D84F90]);
      sub_257483724(v17, v18, v19);
      v14 = v26;
      v20 = (v15 + 32);
      v21 = *(v26 + 16);
      do
      {
        v23 = *v20++;
        v22 = v23;
        v24 = *(v26 + 24);
        if (v21 >= v24 >> 1)
        {
          v25 = OUTLINED_FUNCTION_174(v24);
          sub_257483724(v25, v21 + 1, 1);
        }

        *(v26 + 16) = v21 + 1;
        *(v26 + 8 * v21++ + 32) = v22;
        --v16;
      }

      while (v16);
      OUTLINED_FUNCTION_0_40();
      sub_25764D180();
      OUTLINED_FUNCTION_24_11();
    }

    else
    {
      OUTLINED_FUNCTION_0_40();
      sub_25764D180();
      OUTLINED_FUNCTION_24_11();
      v14 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_40();
    sub_25764D180();
    sub_25764A9B0(v2, v0);
    v14 = *v0;

    sub_25764D180();
  }

  *v6 = v14;
  *(v6 + 8) = EnumCaseMultiPayload != 1;
  OUTLINED_FUNCTION_35();
}

void SupportVectorClassifierConfiguration.classLabels.modify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  OUTLINED_FUNCTION_63_3();
  v12 = v11;
  v13 = __swift_coroFrameAllocStub(0x48uLL);
  *v12 = v13;
  v13[2] = v10;
  v14 = type metadata accessor for Proto_SupportVectorClassifier.OneOf_ClassLabels(0);
  v13[3] = v14;
  OUTLINED_FUNCTION_4();
  v16 = *(v15 + 64);
  v13[4] = __swift_coroFrameAllocStub(v16);
  v17 = __swift_coroFrameAllocStub(v16);
  v13[5] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FE08, &qword_25776CCD0);
  OUTLINED_FUNCTION_13(v18);
  v20 = *(v19 + 64);
  v13[6] = __swift_coroFrameAllocStub(v20);
  v13[7] = __swift_coroFrameAllocStub(v20);
  v21 = __swift_coroFrameAllocStub(v20);
  v13[8] = v21;
  v22 = *(type metadata accessor for Proto_SupportVectorClassifier(0) + 40);
  *(v13 + 3) = v22;
  OUTLINED_FUNCTION_64_3(v22);
  v23 = OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_155(v23, v24, v14);
  if (v25)
  {
    a10 = 0;
    a9 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_9_11();
    sub_25764A9B0(v21, v17);
    OUTLINED_FUNCTION_4_18();
    v26 = OUTLINED_FUNCTION_263();
    sub_25764D1D4(v26, v27);
    sub_25764C344();
    OUTLINED_FUNCTION_0_40();
    sub_25764D180();
  }

  *v13 = a9;
  *(v13 + 8) = a10;
  OUTLINED_FUNCTION_62_3();
}

void sub_25764C6FC(void ***a1, char a2)
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
    sub_2574FD834(v9, v5 + v4, &qword_27F87FE08, &qword_25776CCD0);
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
    sub_2574FD834(v8, v5 + v4, &qword_27F87FE08, &qword_25776CCD0);
  }

  free(v7);
  free(v8);
  free(v9);
  free(v2);
  free(v3);

  free(v6);
}

uint64_t sub_25764C88C()
{
  v2 = type metadata accessor for DenseSupportVectorCollection(0);
  v3 = OUTLINED_FUNCTION_13(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_37_8();
  v5 = type metadata accessor for SparseSupportVectorCollection(v4);
  v6 = OUTLINED_FUNCTION_13(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_56_2();
  type metadata accessor for SupportVectorClassifierConfiguration.SupportVectors(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_6_23();
  v11 = OUTLINED_FUNCTION_263();
  sub_25764D1D4(v11, v12);
  OUTLINED_FUNCTION_277();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_12_16();
    sub_25764A9B0(v10, v1);
    sub_2576C029C();
    OUTLINED_FUNCTION_2_28();
  }

  else
  {
    OUTLINED_FUNCTION_11_15();
    sub_25764A9B0(v10, v0);
    sub_25771C79C();
    OUTLINED_FUNCTION_1_29();
  }

  sub_25764D180();
  return OUTLINED_FUNCTION_263();
}

uint64_t sub_25764C9E0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v1[8])
  {
    if (v3)
    {
      v25 = MEMORY[0x277D84F90];
      v5 = OUTLINED_FUNCTION_13_8();
      sub_257484040(v5, v6, v7);
      v4 = v25;
      v8 = v2 + 40;
      do
      {

        v9 = OUTLINED_FUNCTION_277();
        MEMORY[0x259C64E90](v9);
        MEMORY[0x259C64E90](34, 0xE100000000000000);

        v11 = *(v25 + 16);
        v10 = *(v25 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_257484040((v10 > 1), v11 + 1, 1);
        }

        *(v25 + 16) = v11 + 1;
        v12 = v25 + 24 * v11;
        *(v12 + 32) = 34;
        *(v12 + 40) = 0xE100000000000000;
        *(v12 + 48) = 0;
        v8 += 16;
        --v3;
      }

      while (v3);
    }
  }

  else if (v3)
  {
    v24 = MEMORY[0x277D84F90];
    v13 = OUTLINED_FUNCTION_13_8();
    sub_257484040(v13, v14, v15);
    v4 = v24;
    v16 = v2 + 32;
    do
    {
      v16 += 8;
      v17 = sub_257743674();
      v19 = v18;
      v21 = *(v24 + 16);
      v20 = *(v24 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_257484040((v20 > 1), v21 + 1, 1);
      }

      *(v24 + 16) = v21 + 1;
      v22 = v24 + 24 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
      *(v22 + 48) = 0;
      --v3;
    }

    while (v3);
  }

  return v4;
}

uint64_t SupportVectorClassifierConfiguration.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  v3 = type metadata accessor for Proto_SupportVectorClassifier(0);
  type metadata accessor for Proto_SupportVectorClassifier.OneOf_SupportVectors(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  *(a1 + v3[6]) = v2;
  *(a1 + v3[7]) = v2;
  *(a1 + v3[8]) = v2;
  *(a1 + v3[9]) = v2;
  type metadata accessor for Proto_SupportVectorClassifier.OneOf_ClassLabels(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  type metadata accessor for Proto_Kernel(0);
  OUTLINED_FUNCTION_44();

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

void static SupportVectorClassifierConfiguration.SupportVectors.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v28 = v27;
  v29 = type metadata accessor for DenseSupportVectorCollection(0);
  v30 = OUTLINED_FUNCTION_13(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3();
  v31 = OUTLINED_FUNCTION_17_3();
  v32 = type metadata accessor for SparseSupportVectorCollection(v31);
  v33 = OUTLINED_FUNCTION_13(v32);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_1();
  type metadata accessor for SupportVectorClassifierConfiguration.SupportVectors(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_11();
  v37 = (v35 - v36);
  MEMORY[0x28223BE20](v38);
  v40 = &a9 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880648, &qword_25776CCD8);
  OUTLINED_FUNCTION_13(v41);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_56_2();
  v44 = *(v43 + 56);
  sub_25764D1D4(v28, v20);
  sub_25764D1D4(v26, v20 + v44);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_6_23();
    sub_25764D1D4(v20, v37);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_12_16();
      sub_25764A9B0(v20 + v44, v21);
      sub_25747B378(*v37);
      if (v45)
      {
        type metadata accessor for Proto_DenseSupportVectors(0);
        sub_2577431B4();
        OUTLINED_FUNCTION_22_10();
        sub_25764D274(v46, v47, MEMORY[0x277D216D0]);
        sub_257743644();
      }

      OUTLINED_FUNCTION_2_28();
      sub_25764D180();
      OUTLINED_FUNCTION_2_28();
LABEL_14:
      sub_25764D180();
      OUTLINED_FUNCTION_3_28();
      sub_25764D180();
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_2_28();
  }

  else
  {
    OUTLINED_FUNCTION_6_23();
    sub_25764D1D4(v20, v40);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_11_15();
      sub_25764A9B0(v20 + v44, v22);
      sub_25747B1CC();
      if (v48)
      {
        type metadata accessor for Proto_SparseSupportVectors(0);
        sub_2577431B4();
        OUTLINED_FUNCTION_22_10();
        sub_25764D274(v49, v50, MEMORY[0x277D216D0]);
        sub_257743644();
      }

      OUTLINED_FUNCTION_1_29();
      sub_25764D180();
      OUTLINED_FUNCTION_1_29();
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_1_29();
  }

  sub_25764D180();
  sub_2574695E4(v20, &qword_27F880648, &qword_25776CCD8);
LABEL_15:
  OUTLINED_FUNCTION_35();
}

void sub_25764CFE8(uint64_t a1)
{
  OUTLINED_FUNCTION_63_3();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_16_1();
  type metadata accessor for Proto_Int64Vector(v6);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v7 = *(v5 + 16);
  v27 = MEMORY[0x277D84F90];
  v8 = OUTLINED_FUNCTION_269();
  sub_2574845B8(v8, v9, v10);
  v11 = v27;
  if (v7)
  {
    v12 = *(v5 + 16);
    v13 = (v5 + 32);
    v14 = v7;
    while (v12)
    {
      v15 = *v13;
      OUTLINED_FUNCTION_53_2();
      if (v17)
      {
        v18 = OUTLINED_FUNCTION_174(v16);
        sub_2574845B8(v18, v2, 1);
        v11 = v27;
      }

      *(v11 + 16) = v2;
      *(v11 + 8 * v3 + 32) = v15;
      ++v13;
      --v12;
      if (!--v14)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_7:
  v19 = *(v5 + 16);
  v20 = v19 - v7;
  if (v19 == v7)
  {
LABEL_8:

    *v1 = v11;
    OUTLINED_FUNCTION_62_3();
    return;
  }

  if (v19 > v7)
  {
    v21 = *(v11 + 16);
    v22 = (v5 + 8 * v7 + 32);
    do
    {
      v24 = *v22++;
      v23 = v24;
      v25 = *(v11 + 24);
      if (v21 >= v25 >> 1)
      {
        v26 = OUTLINED_FUNCTION_174(v25);
        sub_2574845B8(v26, v21 + 1, 1);
      }

      *(v11 + 16) = v21 + 1;
      *(v11 + 8 * v21++ + 32) = v23;
      --v20;
    }

    while (v20);
    goto LABEL_8;
  }

LABEL_16:
  __break(1u);
}

uint64_t static SupportVectorClassifierConfiguration.ClassLabels.== infix(_:_:)(uint64_t a1, uint64_t a2)
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

uint64_t sub_25764D180()
{
  v1 = OUTLINED_FUNCTION_376();
  v2(v1);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_25764D1D4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return a2;
}

uint64_t sub_25764D274(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25764D304(uint64_t a1)
{
  result = type metadata accessor for Proto_SupportVectorClassifier(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25764D370(uint64_t a1)
{
  result = type metadata accessor for SparseSupportVectorCollection(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DenseSupportVectorCollection(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t _s14ShapeDimensionOwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t _s14ShapeDimensionOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_24_11()
{

  return sub_25764D180();
}

uint64_t OUTLINED_FUNCTION_25_7@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 24) = a1;
  result = *(v2 + a1);
  *(v1 + 16) = result;
  *v1 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_9()
{
  *(v2 - 168) = v1;
  *(v2 - 112) = v0;
  return 0;
}

void OUTLINED_FUNCTION_34_4()
{

  sub_257469AE0();
}

void OUTLINED_FUNCTION_42_7(uint64_t a1@<X8>)
{
  *(a1 + 32) = v2;
  *(a1 + 40) = v1 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
  *(a1 + 48) = v3;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
}

uint64_t OUTLINED_FUNCTION_45_3(double a1)
{
  *(v1 - 88) = a1;

  return sub_257743674();
}

char *OUTLINED_FUNCTION_46_5(char *a1)
{

  return sub_257484040(a1, v1, 1);
}

uint64_t OUTLINED_FUNCTION_64_3@<X0>(uint64_t a1@<X8>)
{

  return sub_2574FD880(v1 + a1, v2, v3, v4);
}

void *OUTLINED_FUNCTION_66_2()
{

  return __swift_coroFrameAllocStub(v0);
}

void *OUTLINED_FUNCTION_67_2()
{

  return __swift_coroFrameAllocStub(v0);
}

uint64_t sub_25764D7E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257743FF0;
  OUTLINED_FUNCTION_1_30(inited, 0x6449u);
  MEMORY[0x259C64E90](*v0, v0[1]);
  MEMORY[0x259C64E90](34, 0xE100000000000000);
  *(inited + 48) = 34;
  *(inited + 56) = 0xE100000000000000;
  *(inited + 64) = 0;
  *(inited + 72) = 1635017028;
  *(inited + 80) = 0xE400000000000000;
  sub_257486740(v0[2], v0[3]);
  *(inited + 88) = sub_257743674();
  *(inited + 96) = v2;
  *(inited + 104) = 0;
  return sub_2576A6964(inited);
}

uint64_t SerializedModelConfiguration.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_25764D8F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SerializedModelConfiguration.identifier.setter(v1, v2);
}

uint64_t SerializedModelConfiguration.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t (*SerializedModelConfiguration.identifier.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *v1;
  v3 = v1[1];
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_25749BD04;
}

uint64_t SerializedModelConfiguration.data.getter()
{
  v1 = *(v0 + 16);
  sub_257486740(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_25764D9EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_257486740(*a1, v2);
  return SerializedModelConfiguration.data.setter(v1, v2);
}

uint64_t SerializedModelConfiguration.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_257486798(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t (*SerializedModelConfiguration.data.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = v3;
  a1[1] = v4;
  sub_257486740(v3, v4);
  return sub_25764DAB4;
}

uint64_t sub_25764DAB4(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  if (a2)
  {
    sub_257486740(*a1, v2);
    sub_257486798(v5, v6);
    *(v3 + 16) = v4;
    *(v3 + 24) = v2;

    return sub_257486798(v4, v2);
  }

  else
  {
    result = sub_257486798(*(v3 + 16), *(v3 + 24));
    *(v3 + 16) = v4;
    *(v3 + 24) = v2;
  }

  return result;
}

uint64_t SerializedModelConfiguration.init(identifier:data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *(a5 + 1) = xmmword_257745740;
  type metadata accessor for Proto_SerializedModel(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a5 = a1;
  a5[1] = a2;
  result = sub_257486798(a5[2], a5[3]);
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

BOOL static SerializedModelConfiguration.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  result = 0;
  if (v4 || (sub_257743994()) && (MEMORY[0x259C648D0](a1[2], a1[3], a2[2], a2[3]))
  {
    type metadata accessor for Proto_SerializedModel(0);
    sub_2577431B4();
    sub_25764E194(&qword_27F879B68, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t SerializedModelConfiguration.hash(into:)(uint64_t a1)
{
  type metadata accessor for Proto_SerializedModel(0);
  OUTLINED_FUNCTION_0_41();
  sub_25764E194(v1, v2, &unk_2577501B4);

  return sub_2577435F4();
}

uint64_t SerializedModelConfiguration.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_SerializedModel(0);
  OUTLINED_FUNCTION_0_41();
  sub_25764E194(v0, v1, &unk_2577501B4);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_25764DD80(uint64_t a1)
{
  sub_257743A14();
  type metadata accessor for Proto_SerializedModel(0);
  sub_25764E194(&qword_27F87BA00, type metadata accessor for Proto_SerializedModel, &unk_2577501B4);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t SerializedModelConfiguration.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20[1] = a1;
  v3 = sub_257743A84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v20 - v8;
  v10 = type metadata accessor for SerializedModelConfiguration(0);
  MEMORY[0x28223BE20](v10);
  sub_25764E0A0(v2, v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_257743FF0;
  v13 = OUTLINED_FUNCTION_1_30(v12, 0x6469u);
  v14 = v2[1];
  v15 = MEMORY[0x277D837D0];
  v13[6] = *v2;
  v13[7] = v14;
  v13[9] = v15;
  v13[10] = 1635017060;
  v13[15] = MEMORY[0x277CC9318];
  v17 = v2[2];
  v16 = v2[3];
  v13[11] = 0xE400000000000000;
  v13[12] = v17;
  v13[13] = v16;
  v18 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v18);
  (*(v4 + 104))(v6, *MEMORY[0x277D84C38], v3);

  sub_257486740(v17, v16);
  return sub_257743AA4();
}

uint64_t type metadata accessor for SerializedModelConfiguration(uint64_t a1)
{
  result = qword_281537770;
  if (!qword_281537770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25764E0A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SerializedModelConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25764E194(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25764E204(uint64_t a1)
{
  result = type metadata accessor for Proto_SerializedModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_30@<X0>(uint64_t result@<X0>, unsigned __int16 a2@<W8>)
{
  *(result + 32) = a2 | 0x696669746E650000;
  *(result + 40) = 0xEA00000000007265;
  return result;
}

uint64_t sub_25764E2A4(uint64_t a1, uint64_t *a2)
{
  v64 = a2;
  v4 = type metadata accessor for MLProgram.ValueType.StateParameters(0);
  MEMORY[0x28223BE20](v4 - 8);
  v61 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MLProgram.ValueType.DictionaryParameters(0);
  MEMORY[0x28223BE20](v6 - 8);
  v60 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MLProgram.ValueType.TupleParameters(0);
  MEMORY[0x28223BE20](v8 - 8);
  v59 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MLProgram.ValueType.ListParameters(0);
  MEMORY[0x28223BE20](v10 - 8);
  v58 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for MLProgram.ValueType.TensorParameters(0);
  MEMORY[0x28223BE20](v62);
  v57 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v56 - v14;
  v69 = type metadata accessor for Proto_MILSpec_ValueType(0);
  MEMORY[0x28223BE20](v69);
  v17 = v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for MLProgram.NamedValueType(0);
  v63 = *(v18 - 8);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = (v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(a1 + 16);
  v22 = MEMORY[0x277D84F90];
  if (v21)
  {
    v56[1] = v2;
    v71 = MEMORY[0x277D84F90];
    sub_2574848C0(0, v21, 0);
    v23 = (a1 + 40);
    v22 = v71;
    v68 = v17;
    do
    {
      v66 = v22;
      v67 = v21;
      v24 = v15;
      v26 = *(v23 - 1);
      v25 = *v23;
      v27 = *v64;
      v28 = *(*v64 + 16);
      swift_bridgeObjectRetain_n();
      if (v28 && (v29 = sub_25765368C(v26, v25), (v30 & 1) != 0))
      {
        v31 = *(*(v27 + 56) + 8 * v29);
      }

      else
      {
        v31 = swift_allocBox();
        v70 = 3;
        MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
      }

      v32 = type metadata accessor for Proto_MILSpec_NamedValueType(0);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      v33 = *(v32 + 24);
      v34 = v69;
      __swift_storeEnumTagSinglePayload(v20 + v33, 1, 1, v69);
      *v20 = v26;
      v20[1] = v25;
      v65 = v25;
      v35 = v68;
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      v36 = *(v34 + 20);
      if (qword_27F878FF0 != -1)
      {
        swift_once();
      }

      *&v35[v36] = qword_27F87B038;
      v15 = v24;
      switch(v31 >> 61)
      {
        case 1uLL:
          v45 = swift_projectBox();
          v46 = v58;
          sub_257653FCC(v45, v58);
          sub_257653D3C(v46, v24);
          break;
        case 2uLL:
          v41 = swift_projectBox();
          v42 = v59;
          sub_257653FCC(v41, v59);
          sub_257653D3C(v42, v24);
          break;
        case 3uLL:
          v43 = swift_projectBox();
          v44 = v60;
          sub_257653FCC(v43, v60);
          sub_257653D3C(v44, v24);
          break;
        case 4uLL:
          v39 = swift_projectBox();
          v40 = v61;
          sub_257653FCC(v39, v61);
          sub_257653D3C(v40, v24);
          break;
        default:
          v37 = swift_projectBox();
          v38 = v57;
          sub_257653FCC(v37, v57);
          sub_257653D3C(v38, v24);
          break;
      }

      v47 = type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(0);
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v47);

      v48 = v68;
      if (swift_isUniquelyReferenced_nonNull_native())
      {

        v49 = *(v48 + v36);
      }

      else
      {
        type metadata accessor for Proto_MILSpec_ValueType._StorageClass(0);
        swift_allocObject();

        v49 = sub_2574E503C(v50);

        *(v48 + v36) = v49;
      }

      v51 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
      swift_beginAccess();
      sub_25749FBA8(v15, v49 + v51);
      swift_endAccess();
      sub_2574695E4(v20 + v33, &qword_27F879E10, &qword_257744730);
      sub_257653D3C(v48, v20 + v33);
      __swift_storeEnumTagSinglePayload(v20 + v33, 0, 1, v69);

      v22 = v66;
      v52 = v67;
      v71 = v66;
      v54 = *(v66 + 16);
      v53 = *(v66 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_2574848C0(v53 > 1, v54 + 1, 1);
        v22 = v71;
      }

      *(v22 + 16) = v54 + 1;
      sub_257653D3C(v20, v22 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v54);
      v23 += 2;
      v21 = v52 - 1;
    }

    while (v21);
  }

  return v22;
}

uint64_t MLProgram.Function.inputs.getter()
{
  v1 = type metadata accessor for MLProgram.NamedValueType(0);
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
    sub_2574848C0(0, v7, 0);
    v8 = v19;
    v9 = type metadata accessor for Proto_MILSpec_NamedValueType(0);
    OUTLINED_FUNCTION_24(v9);
    v11 = v6 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v13 = *(v12 + 72);
    do
    {
      OUTLINED_FUNCTION_26_7();
      sub_257653FCC(v11, v5);
      v15 = *(v19 + 16);
      v14 = *(v19 + 24);
      if (v15 >= v14 >> 1)
      {
        v17 = OUTLINED_FUNCTION_174(v14);
        sub_2574848C0(v17, v15 + 1, 1);
      }

      *(v19 + 16) = v15 + 1;
      OUTLINED_FUNCTION_193();
      OUTLINED_FUNCTION_42_8();
      sub_257653D3C(v5, v16);
      v11 += v13;
      --v7;
    }

    while (v7);
  }

  return v8;
}

void MLProgram.Function.inputs.setter()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v4 = type metadata accessor for MLProgram.NamedValueType(0);
  v5 = OUTLINED_FUNCTION_24(v4);
  v7 = v6;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  v8 = type metadata accessor for Proto_MILSpec_NamedValueType(0);
  v9 = OUTLINED_FUNCTION_24(v8);
  v11 = v10;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  v15 = *(v3 + 16);
  if (v15)
  {
    v25 = MEMORY[0x277D84F90];
    sub_257484918(0, v15, 0);
    v16 = v25;
    OUTLINED_FUNCTION_193();
    v18 = v3 + v17;
    v19 = *(v7 + 72);
    do
    {
      OUTLINED_FUNCTION_13_9();
      sub_257653FCC(v18, v1);
      OUTLINED_FUNCTION_26_7();
      sub_257653FCC(v1, v14);
      OUTLINED_FUNCTION_11_16();
      sub_257654024(v1, v20);
      v22 = *(v25 + 16);
      v21 = *(v25 + 24);
      if (v22 >= v21 >> 1)
      {
        v24 = OUTLINED_FUNCTION_174(v21);
        sub_257484918(v24, v22 + 1, 1);
      }

      *(v25 + 16) = v22 + 1;
      OUTLINED_FUNCTION_193();
      sub_257653D3C(v14, v25 + v23 + *(v11 + 72) * v22);
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

void (*MLProgram.Function.inputs.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = MLProgram.Function.inputs.getter();
  return sub_25764EE08;
}

void sub_25764EE08(uint64_t a1, char a2)
{
  if (a2)
  {

    MLProgram.Function.inputs.setter();
  }

  else
  {
    MLProgram.Function.inputs.setter();
  }
}

void MLProgram.Function.outputs.getter()
{
  OUTLINED_FUNCTION_31();
  v1 = type metadata accessor for MLProgram.Operation(0);
  v2 = OUTLINED_FUNCTION_24(v1);
  v189 = v3;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_12_1();
  v195 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  v6 = OUTLINED_FUNCTION_13(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_11();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_196();
  v192 = v11;
  v12 = OUTLINED_FUNCTION_153();
  v13 = type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(v12);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_11();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_167();
  v197 = v19;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_167();
  v193 = v21;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_196();
  v188 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E10, &qword_257744730);
  v25 = OUTLINED_FUNCTION_13(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_25_0();
  v200 = v26;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_196();
  v194 = v28;
  v29 = OUTLINED_FUNCTION_153();
  v30 = type metadata accessor for Proto_MILSpec_ValueType(v29);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_25_0();
  v199 = v32;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_196();
  v201 = v34;
  v35 = OUTLINED_FUNCTION_153();
  v36 = type metadata accessor for MLProgram.NamedValueType(v35);
  v37 = OUTLINED_FUNCTION_24(v36);
  v206 = v38;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_25_0();
  v205 = v39;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_167();
  v187 = v41;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v42);
  v44 = (&v185 - v43);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880668, &unk_257774DB0);
  OUTLINED_FUNCTION_13(v45);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_40();
  v47 = type metadata accessor for MLProgram.Block(0);
  v48 = OUTLINED_FUNCTION_13(v47);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_11();
  v51 = v49 - v50;
  MEMORY[0x28223BE20](v52);
  v54 = &v185 - v53;
  MLProgram.Function.blockSpecializations.getter();
  sub_25763CD70(v55, v0);

  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880428, &unk_25776C030);
  v57 = OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_155(v57, v58, v56);
  if (v59)
  {
    sub_2574695E4(v0, &qword_27F880668, &unk_257774DB0);
LABEL_77:
    OUTLINED_FUNCTION_35();
    return;
  }

  v196 = v17;
  v198 = v9;

  sub_257653D3C(v0 + *(v56 + 48), v51);
  v186 = v54;
  sub_257653D3C(v51, v54);
  v210 = MEMORY[0x277D84F98];
  v60 = MLProgram.Function.inputs.getter();
  v61 = v60;
  v62 = *(v60 + 16);
  v203 = v13;
  v204 = v30;
  v191 = v62;
  if (v62)
  {
    v63 = 0;
    OUTLINED_FUNCTION_193();
    v190 = v61 + v64;
    v65 = v194;
    v66 = v201;
    while (v63 < *(v61 + 16))
    {
      OUTLINED_FUNCTION_13_9();
      sub_257653FCC(v67, v44);
      v68 = v44[1];
      v202 = *v44;
      v69 = type metadata accessor for Proto_MILSpec_NamedValueType(0);
      sub_2574AD5D8(v44 + *(v69 + 24), v65, &qword_27F879E10, &qword_257744730);
      OUTLINED_FUNCTION_155(v65, 1, v30);
      if (v59)
      {
        _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
        v70 = *(v30 + 20);
        v72 = v203;
        if (qword_27F878FF0 != -1)
        {
          OUTLINED_FUNCTION_12_15();
          swift_once();
        }

        *(v66 + v70) = qword_27F87B038;
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v65, 1, v30);

        if (EnumTagSinglePayload != 1)
        {
          sub_2574695E4(v65, &qword_27F879E10, &qword_257744730);
        }
      }

      else
      {
        OUTLINED_FUNCTION_2_29();
        sub_257653D3C(v65, v66);
        v72 = v203;
      }

      v73 = *(v66 + *(v30 + 20));
      v74 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
      OUTLINED_FUNCTION_296(v73 + OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type, &v209);
      v75 = v73 + v74;
      v76 = v192;
      sub_2574AD5D8(v75, v192, &qword_27F879D40, &qword_257744660);
      OUTLINED_FUNCTION_155(v76, 1, v72);
      if (v59)
      {
        sub_2574695E4(v76, &qword_27F879D40, &qword_257744660);
        type metadata accessor for MLProgram.ValueType.TensorParameters(0);
        v77 = swift_allocBox();
        LOBYTE(v207) = 3;
        MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
        OUTLINED_FUNCTION_0_42();
        sub_257654024(v66, v78);
      }

      else
      {
        OUTLINED_FUNCTION_0_42();
        sub_257654024(v66, v88);
        OUTLINED_FUNCTION_46_6();
        v89 = v76;
        v90 = v188;
        sub_257653D3C(v89, v188);
        sub_257653D3C(v90, v193);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        switch(EnumCaseMultiPayload)
        {
          case 1:
            type metadata accessor for MLProgram.ValueType.ListParameters(0);
            v110 = swift_allocBox();
            OUTLINED_FUNCTION_3_29();
            OUTLINED_FUNCTION_69_1(v111, v112);
            v77 = v110 | 0x2000000000000000;
            break;
          case 2:
            type metadata accessor for MLProgram.ValueType.TupleParameters(0);
            v104 = swift_allocBox();
            OUTLINED_FUNCTION_5_24();
            OUTLINED_FUNCTION_69_1(v105, v106);
            v77 = v104 | 0x4000000000000000;
            break;
          case 3:
            type metadata accessor for MLProgram.ValueType.DictionaryParameters(0);
            v107 = swift_allocBox();
            OUTLINED_FUNCTION_4_19();
            OUTLINED_FUNCTION_69_1(v108, v109);
            v77 = v107 | 0x6000000000000000;
            break;
          case 4:
            type metadata accessor for MLProgram.ValueType.StateParameters(0);
            v101 = swift_allocBox();
            OUTLINED_FUNCTION_6_24();
            OUTLINED_FUNCTION_69_1(v102, v103);
            v77 = v101 | 0x8000000000000000;
            break;
          default:
            type metadata accessor for MLProgram.ValueType.TensorParameters(0);
            v77 = swift_allocBox();
            OUTLINED_FUNCTION_7_15();
            OUTLINED_FUNCTION_69_1(v92, v93);
            break;
        }
      }

      v79 = v210;
      swift_isUniquelyReferenced_nonNull_native();
      v207 = v79;
      sub_25765368C(v202, v68);
      OUTLINED_FUNCTION_52_3();
      if (__OFADD__(v82, v83))
      {
        goto LABEL_82;
      }

      v84 = v80;
      v85 = v81;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880670, &qword_25776CF20);
      if (sub_257743894())
      {
        v86 = sub_25765368C(v202, v68);
        v66 = v201;
        if ((v85 & 1) != (v87 & 1))
        {
          goto LABEL_85;
        }

        v84 = v86;
      }

      else
      {
        v66 = v201;
      }

      v94 = v207;
      if (v85)
      {
        *(*(v207 + 56) + 8 * v84) = v77;
      }

      else
      {
        OUTLINED_FUNCTION_71_1(v207 + 8 * (v84 >> 6));
        v96 = (v95 + 16 * v84);
        *v96 = v202;
        v96[1] = v68;
        *(*(v94 + 56) + 8 * v84) = v77;
        v97 = *(v94 + 16);
        v98 = __OFADD__(v97, 1);
        v99 = v97 + 1;
        if (v98)
        {
          goto LABEL_84;
        }

        *(v94 + 16) = v99;
      }

      ++v63;
      v210 = v94;
      OUTLINED_FUNCTION_11_16();
      sub_257654024(v44, v100);
      v30 = v204;
      v65 = v194;
      if (v191 == v63)
      {
        goto LABEL_33;
      }
    }

LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

LABEL_33:

  v113 = v186;
  v193 = *(MLProgram.Block.operations.getter() + 16);
  if (!v193)
  {

LABEL_76:
    sub_25764E2A4(*(v113 + 8), &v210);
    OUTLINED_FUNCTION_17_10();
    sub_257654024(v113, v184);

    goto LABEL_77;
  }

  v114 = 0;
  OUTLINED_FUNCTION_193();
  v192 = v115 + v116;
  v117 = v198;
  v191 = v115;
  while (v114 < *(v115 + 16))
  {
    v118 = *(v189 + 72);
    v194 = v114;
    v119 = v192 + v118 * v114;
    v120 = v195;
    sub_257653FCC(v119, v195);
    v121 = *(v120 + 24);
    v122 = *(v121 + 16);
    if (v122)
    {
      v208 = MEMORY[0x277D84F90];
      v123 = OUTLINED_FUNCTION_64_4();
      sub_2574848C0(v123, v124, v125);
      v126 = v187;
      v127 = v208;
      v128 = type metadata accessor for Proto_MILSpec_NamedValueType(0);
      OUTLINED_FUNCTION_24(v128);
      v130 = v121 + ((*(v129 + 80) + 32) & ~*(v129 + 80));
      v132 = *(v131 + 72);
      do
      {
        OUTLINED_FUNCTION_26_7();
        sub_257653FCC(v130, v126);
        v208 = v127;
        v134 = *(v127 + 16);
        v133 = *(v127 + 24);
        if (v134 >= v133 >> 1)
        {
          v136 = OUTLINED_FUNCTION_174(v133);
          sub_2574848C0(v136, v134 + 1, 1);
          v126 = v187;
          v127 = v208;
        }

        *(v127 + 16) = v134 + 1;
        OUTLINED_FUNCTION_193();
        OUTLINED_FUNCTION_42_8();
        sub_257653D3C(v126, v135);
        v130 += v132;
        --v122;
      }

      while (v122);
      v30 = v204;
    }

    else
    {
      v127 = MEMORY[0x277D84F90];
    }

    sub_257654024(v195, type metadata accessor for MLProgram.Operation);
    v202 = *(v127 + 16);
    if (v202)
    {
      v137 = 0;
      OUTLINED_FUNCTION_193();
      v201 = v127 + v138;
      while (v137 < *(v127 + 16))
      {
        v139 = v205;
        OUTLINED_FUNCTION_13_9();
        sub_257653FCC(v140, v139);
        v142 = *v139;
        v141 = v139[1];
        v143 = type metadata accessor for Proto_MILSpec_NamedValueType(0);
        v144 = v200;
        sub_2574AD5D8(v139 + *(v143 + 24), v200, &qword_27F879E10, &qword_257744730);
        v145 = OUTLINED_FUNCTION_188();
        OUTLINED_FUNCTION_155(v145, v146, v30);
        if (v59)
        {
          v151 = v199;
          _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
          v147 = *(v30 + 20);
          if (qword_27F878FF0 != -1)
          {
            OUTLINED_FUNCTION_12_15();
            swift_once();
          }

          *(v151 + v147) = qword_27F87B038;
          v148 = OUTLINED_FUNCTION_188();
          v150 = __swift_getEnumTagSinglePayload(v148, v149, v30);

          if (v150 != 1)
          {
            sub_2574695E4(v144, &qword_27F879E10, &qword_257744730);
          }
        }

        else
        {
          OUTLINED_FUNCTION_2_29();
          v151 = v199;
          sub_257653D3C(v144, v199);
        }

        v152 = *(v151 + *(v30 + 20));
        v153 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
        OUTLINED_FUNCTION_296(v152 + OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type, &v207);
        sub_2574AD5D8(v152 + v153, v117, &qword_27F879D40, &qword_257744660);
        OUTLINED_FUNCTION_155(v117, 1, v203);
        if (v59)
        {
          sub_2574695E4(v117, &qword_27F879D40, &qword_257744660);
          type metadata accessor for MLProgram.ValueType.TensorParameters(0);
          v154 = swift_allocBox();
          LOBYTE(v208) = 3;
          MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
          OUTLINED_FUNCTION_0_42();
          sub_257654024(v151, v155);
        }

        else
        {
          OUTLINED_FUNCTION_0_42();
          sub_257654024(v151, v164);
          OUTLINED_FUNCTION_46_6();
          v165 = v197;
          sub_257653D3C(v117, v197);
          v166 = v165;
          v167 = v196;
          sub_257653D3C(v166, v196);
          v168 = swift_getEnumCaseMultiPayload();
          switch(v168)
          {
            case 1:
              type metadata accessor for MLProgram.ValueType.ListParameters(0);
              v182 = swift_allocBox();
              OUTLINED_FUNCTION_3_29();
              sub_257653D3C(v167, v183);
              v154 = v182 | 0x2000000000000000;
              break;
            case 2:
              type metadata accessor for MLProgram.ValueType.TupleParameters(0);
              v178 = swift_allocBox();
              OUTLINED_FUNCTION_5_24();
              sub_257653D3C(v167, v179);
              v154 = v178 | 0x4000000000000000;
              break;
            case 3:
              type metadata accessor for MLProgram.ValueType.DictionaryParameters(0);
              v180 = swift_allocBox();
              OUTLINED_FUNCTION_4_19();
              sub_257653D3C(v167, v181);
              v154 = v180 | 0x6000000000000000;
              break;
            case 4:
              type metadata accessor for MLProgram.ValueType.StateParameters(0);
              v176 = swift_allocBox();
              OUTLINED_FUNCTION_6_24();
              sub_257653D3C(v167, v177);
              v154 = v176 | 0x8000000000000000;
              break;
            default:
              type metadata accessor for MLProgram.ValueType.TensorParameters(0);
              v154 = swift_allocBox();
              OUTLINED_FUNCTION_7_15();
              sub_257653D3C(v167, v169);
              break;
          }
        }

        v156 = v210;
        swift_isUniquelyReferenced_nonNull_native();
        v208 = v156;
        sub_25765368C(v142, v141);
        OUTLINED_FUNCTION_52_3();
        if (__OFADD__(v159, v160))
        {
          goto LABEL_79;
        }

        v161 = v157;
        v162 = v158;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880670, &qword_25776CF20);
        if (sub_257743894())
        {
          sub_25765368C(v142, v141);
          OUTLINED_FUNCTION_63_4();
          v117 = v198;
          if (!v59)
          {
            goto LABEL_85;
          }

          v161 = v163;
        }

        else
        {
          v117 = v198;
        }

        v170 = v208;
        if (v162)
        {
          *(*(v208 + 56) + 8 * v161) = v154;
        }

        else
        {
          OUTLINED_FUNCTION_71_1(v208 + 8 * (v161 >> 6));
          v172 = (v171 + 16 * v161);
          *v172 = v142;
          v172[1] = v141;
          *(*(v170 + 56) + 8 * v161) = v154;
          v173 = *(v170 + 16);
          v98 = __OFADD__(v173, 1);
          v174 = v173 + 1;
          if (v98)
          {
            goto LABEL_80;
          }

          *(v170 + 16) = v174;
        }

        ++v137;
        v210 = v170;
        OUTLINED_FUNCTION_11_16();
        sub_257654024(v205, v175);
        v30 = v204;
        if (v202 == v137)
        {
          goto LABEL_73;
        }
      }

      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

LABEL_73:
    v114 = v194 + 1;

    v115 = v191;
    if (v114 == v193)
    {

      v113 = v186;
      goto LABEL_76;
    }
  }

LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  sub_2577439B4();
  __break(1u);
}

void MLProgram.Function.blockSpecializations.getter()
{
  OUTLINED_FUNCTION_31();
  v5 = type metadata accessor for MLProgram.Block(0);
  v6 = OUTLINED_FUNCTION_24(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_1();
  v22 = v7;
  v8 = OUTLINED_FUNCTION_153();
  v9 = type metadata accessor for Proto_MILSpec_Block(v8);
  v10 = OUTLINED_FUNCTION_24(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_64_2(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880678, &qword_25776CF28);
  v13 = sub_2577438E4();
  OUTLINED_FUNCTION_35_3(v13);
  if (v1)
  {
    while (1)
    {
      OUTLINED_FUNCTION_50_2();
LABEL_8:
      OUTLINED_FUNCTION_55_3(v14);
      OUTLINED_FUNCTION_44_5();
      sub_257653FCC(v16, v0);
      OUTLINED_FUNCTION_43_7();
      v17 = v0;
      v0 = v22;
      sub_257653D3C(v17, v22);
      OUTLINED_FUNCTION_36_3();
      OUTLINED_FUNCTION_15_6();
      sub_257653D3C(v22, v18);
      v19 = *(v12 + 16);
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        break;
      }

      *(v12 + 16) = v21;

      if (!v1)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v15 = v3;
    while (1)
    {
      v3 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v3 >= v4)
      {
        OUTLINED_FUNCTION_35();
        return;
      }

      ++v15;
      if (*(v2 + 8 * v3))
      {
        OUTLINED_FUNCTION_49_2();
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_25764FEC8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return MLProgram.Function.opset.setter(v1, v2);
}

uint64_t MLProgram.Function.opset.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t (*MLProgram.Function.opset.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_25764FF90;
}

uint64_t sub_25764FF90(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {

    *(v4 + 8) = v3;
    *(v4 + 16) = v2;
  }

  else
  {

    *(v4 + 8) = v3;
    *(v4 + 16) = v2;
  }

  return result;
}

uint64_t MLProgram.Function.blockSpecializations.setter(uint64_t a1)
{
  sub_257653AF8(a1);
  v3 = v2;

  *(v1 + 24) = v3;
  return result;
}

uint64_t (*MLProgram.Function.blockSpecializations.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  MLProgram.Function.blockSpecializations.getter();
  *a1 = v3;
  return sub_2576500C8;
}

uint64_t sub_2576500C8(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v4 = *a1;
  if (a2)
  {

    sub_257653AF8(v5);
    OUTLINED_FUNCTION_84_4();

    *(v3 + 24) = v2;
  }

  else
  {
    sub_257653AF8(v4);
    OUTLINED_FUNCTION_84_4();

    *(v3 + 24) = v2;
  }

  return result;
}

void MLProgram.Function.attributes.getter()
{
  OUTLINED_FUNCTION_31();
  v5 = type metadata accessor for MLProgram.Value(0);
  v6 = OUTLINED_FUNCTION_24(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_1();
  v22 = v7;
  v8 = OUTLINED_FUNCTION_153();
  v9 = type metadata accessor for Proto_MILSpec_Value(v8);
  v10 = OUTLINED_FUNCTION_24(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_64_2(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8805D0, &qword_25776CBC8);
  v13 = sub_2577438E4();
  OUTLINED_FUNCTION_35_3(v13);
  if (v1)
  {
    while (1)
    {
      OUTLINED_FUNCTION_50_2();
LABEL_8:
      v16 = OUTLINED_FUNCTION_55_3(v14);
      sub_257653FCC(v16, v0);
      v17 = v0;
      v0 = v22;
      sub_257653D3C(v17, v22);
      OUTLINED_FUNCTION_36_3();
      OUTLINED_FUNCTION_18_13();
      sub_257653D3C(v22, v18);
      v19 = *(v12 + 16);
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        break;
      }

      *(v12 + 16) = v21;

      if (!v1)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v15 = v3;
    while (1)
    {
      v3 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v3 >= v4)
      {
        OUTLINED_FUNCTION_35();
        return;
      }

      ++v15;
      if (*(v2 + 8 * v3))
      {
        OUTLINED_FUNCTION_49_2();
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t MLProgram.Function.attributes.setter(uint64_t a1)
{
  v2 = sub_257653818(a1);

  *(v1 + 32) = v2;
  return result;
}

uint64_t (*MLProgram.Function.attributes.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  MLProgram.Function.attributes.getter();
  *a1 = v3;
  return sub_2576503E4;
}

uint64_t sub_2576503E4(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v4 = *a1;
  if (a2)
  {

    sub_257653818(v5);
    OUTLINED_FUNCTION_84_4();

    *(v3 + 32) = v2;
  }

  else
  {
    sub_257653818(v4);
    OUTLINED_FUNCTION_84_4();

    *(v3 + 32) = v2;
  }

  return result;
}

void sub_257650478()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v430 = *MEMORY[0x277D85DE8];
  v402 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D18, &unk_257775F30);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_25_0();
  v401 = v3;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_167();
  v400 = v5;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_196();
  v399 = v7;
  v408 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880428, &unk_25776C030);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_25_0();
  v407 = v9;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_167();
  v406 = v11;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_196();
  v405 = v13;
  v14 = OUTLINED_FUNCTION_153();
  v390 = type metadata accessor for MLProgram.ValueType.ListParameters(v14);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_12_1();
  v393 = v16;
  v17 = OUTLINED_FUNCTION_153();
  v404 = type metadata accessor for MLProgram.ValueType.TensorParameters(v17);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_12_1();
  v403 = v19;
  v20 = OUTLINED_FUNCTION_153();
  v389 = type metadata accessor for MLProgram.ValueType.StateParameters(v20);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_25_0();
  v365 = v22;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_167();
  v369 = v24;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_167();
  v376 = v26;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_196();
  v397 = v28;
  v29 = OUTLINED_FUNCTION_153();
  v388 = type metadata accessor for MLProgram.ValueType.DictionaryParameters(v29);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_12_1();
  v392 = v31;
  v32 = OUTLINED_FUNCTION_153();
  v387 = type metadata accessor for MLProgram.ValueType.TupleParameters(v32);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_12_1();
  v391 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  v36 = OUTLINED_FUNCTION_13(v35);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_25_0();
  v373 = v37;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_167();
  v381 = v39;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v40);
  v42 = v362 - v41;
  v43 = type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_25_0();
  v372 = v45;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_167();
  v370 = v47;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_167();
  v380 = v49;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_167();
  v378 = v51;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_167();
  v415 = v53;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_196();
  v398 = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E10, &qword_257744730);
  v57 = OUTLINED_FUNCTION_13(v56);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_25_0();
  v367 = v58;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_167();
  v368 = v60;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_167();
  v374 = v62;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_167();
  v375 = v64;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_167();
  v384 = v66;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_167();
  v386 = v68;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v69);
  v71 = v362 - v70;
  v72 = type metadata accessor for Proto_MILSpec_ValueType(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_25_0();
  v366 = v74;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_167();
  v371 = v76;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_167();
  v379 = v78;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_196();
  v414 = v80;
  v81 = OUTLINED_FUNCTION_153();
  v82 = type metadata accessor for MLProgram.NamedValueType(v81);
  v83 = OUTLINED_FUNCTION_24(v82);
  v85 = v84;
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_3();
  v88 = (v87 - v86);
  v89 = MLProgram.Function.inputs.getter();
  v90 = *(v89 + 16);
  v413 = v0;
  if (v90)
  {
    v421 = MEMORY[0x277D84F90];
    v91 = v89;
    v419 = v90;
    sub_257484060(0, v90, 0);
    OUTLINED_FUNCTION_193();
    v377 = v91;
    v93 = v91 + v92;
    v420 = v421;
    v409 = *(v85 + 72);
    v385 = xmmword_2577442B0;
    v411 = v43;
    v412 = v42;
    v410 = v71;
    v416 = v72;
    do
    {
      OUTLINED_FUNCTION_13_9();
      sub_257653FCC(v93, v88);
      OUTLINED_FUNCTION_82_2();
      MEMORY[0x259C64E90](*v88, v88[1]);
      OUTLINED_FUNCTION_316();
      v417 = v429;
      v418 = v428;
      v94 = type metadata accessor for Proto_MILSpec_NamedValueType(0);
      v95 = v88;
      sub_2574AD5D8(v88 + *(v94 + 24), v71, &qword_27F879E10, &qword_257744730);
      OUTLINED_FUNCTION_155(v71, 1, v72);
      if (v96)
      {
        v99 = v414;
        _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
        v97 = *(v72 + 20);
        if (qword_27F878FF0 != -1)
        {
          OUTLINED_FUNCTION_12_15();
          swift_once();
        }

        *(v99 + v97) = qword_27F87B038;
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v71, 1, v72);

        if (EnumTagSinglePayload != 1)
        {
          sub_2574695E4(v71, &qword_27F879E10, &qword_257744730);
        }
      }

      else
      {
        OUTLINED_FUNCTION_2_29();
        v99 = v414;
        sub_257653D3C(v71, v414);
      }

      v100 = *(v99 + *(v72 + 20));
      v101 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
      OUTLINED_FUNCTION_296(v100 + OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type, &v427);
      v102 = v100 + v101;
      v103 = &qword_257744660;
      sub_2574AD5D8(v102, v42, &qword_27F879D40, &qword_257744660);
      v104 = OUTLINED_FUNCTION_197();
      OUTLINED_FUNCTION_155(v104, v105, v43);
      if (v96)
      {
        sub_2574695E4(v42, &qword_27F879D40, &qword_257744660);
        swift_allocBox();
        OUTLINED_FUNCTION_28_9();
        MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
        OUTLINED_FUNCTION_0_42();
        sub_257654024(v99, v106);
        v88 = v95;
LABEL_12:
        swift_projectBox();
        OUTLINED_FUNCTION_19_11();
        v107 = v403;
        sub_257653FCC(v108, v403);
        sub_2576F1B84();
        OUTLINED_FUNCTION_49_3();
        v109 = type metadata accessor for MLProgram.ValueType.TensorParameters;
LABEL_13:
        sub_257654024(v107, v109);
      }

      else
      {
        OUTLINED_FUNCTION_0_42();
        sub_257654024(v99, v116);
        v103 = v398;
        sub_257653D3C(v42, v398);
        v117 = v103;
        LOBYTE(v103) = v415;
        sub_257653D3C(v117, v415);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v88 = v95;
        switch(EnumCaseMultiPayload)
        {
          case 1:
            swift_allocBox();
            v143 = v142;
            OUTLINED_FUNCTION_3_29();
            sub_257653D3C(v415, v144);
            OUTLINED_FUNCTION_10_20();
            v145 = v143;
            v107 = v393;
            v146 = sub_257653FCC(v145, v393);
            sub_2576F210C(v146);
            OUTLINED_FUNCTION_49_3();
            v109 = type metadata accessor for MLProgram.ValueType.ListParameters;
            goto LABEL_13;
          case 2:
            swift_allocBox();
            v134 = v133;
            OUTLINED_FUNCTION_5_24();
            sub_257653D3C(v415, v135);
            OUTLINED_FUNCTION_14_8();
            v136 = v134;
            v107 = v391;
            sub_257653FCC(v136, v391);
            sub_2576F2344();
            OUTLINED_FUNCTION_49_3();
            v109 = type metadata accessor for MLProgram.ValueType.TupleParameters;
            goto LABEL_13;
          case 3:
            swift_allocBox();
            v138 = v137;
            OUTLINED_FUNCTION_4_19();
            sub_257653D3C(v415, v139);
            OUTLINED_FUNCTION_12_17();
            v140 = v138;
            v107 = v392;
            v141 = sub_257653FCC(v140, v392);
            sub_2576F4D1C(v141);
            OUTLINED_FUNCTION_49_3();
            v109 = type metadata accessor for MLProgram.ValueType.DictionaryParameters;
            goto LABEL_13;
          case 4:
            v394 = v93;
            v396 = swift_allocBox();
            v121 = v120;
            OUTLINED_FUNCTION_6_24();
            sub_257653D3C(v415, v122);
            OUTLINED_FUNCTION_16_7();
            v123 = v397;
            sub_257653FCC(v121, v397);
            v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
            inited = swift_initStackObject();
            OUTLINED_FUNCTION_33_4(inited);
            v395 = v125;
            *(v125 + 40) = v126;
            v382 = type metadata accessor for Proto_MILSpec_StateType(0);
            v127 = *(v123 + *(v382 + 20));
            v128 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType;
            OUTLINED_FUNCTION_296(v127 + OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType, &v426);
            v129 = v386;
            sub_2574AD5D8(v127 + v128, v386, &qword_27F879E10, &qword_257744730);
            v130 = OUTLINED_FUNCTION_197();
            v131 = v416;
            v103 = __swift_getEnumTagSinglePayload(v130, v132, v416);
            sub_2574695E4(v129, &qword_27F879E10, &qword_257744730);
            if (v103 == 1)
            {
              swift_allocBox();
              OUTLINED_FUNCTION_28_9();
              MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
              v93 = v394;
LABEL_34:
              swift_projectBox();
              OUTLINED_FUNCTION_19_11();
              v162 = v403;
              sub_257653FCC(v163, v403);
              v164 = v162;
              sub_2576F1B84();
              OUTLINED_FUNCTION_32_6();
              OUTLINED_FUNCTION_30_6();
              goto LABEL_35;
            }

            v147 = v384;
            sub_2574AD5D8(v127 + v128, v384, &qword_27F879E10, &qword_257744730);
            v148 = OUTLINED_FUNCTION_188();
            OUTLINED_FUNCTION_155(v148, v149, v131);
            v128 = v131;
            v93 = v394;
            if (v96)
            {
              v155 = v379;
              _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
              v150 = *(v128 + 20);
              if (qword_27F878FF0 != -1)
              {
                OUTLINED_FUNCTION_12_15();
                swift_once();
              }

              *(v155 + v150) = qword_27F87B038;
              v151 = v384;
              v152 = OUTLINED_FUNCTION_197();
              v154 = __swift_getEnumTagSinglePayload(v152, v153, v128);

              if (v154 != 1)
              {
                sub_2574695E4(v151, &qword_27F879E10, &qword_257744730);
              }
            }

            else
            {
              OUTLINED_FUNCTION_2_29();
              v155 = v379;
              sub_257653D3C(v147, v379);
            }

            v156 = *(v155 + *(v128 + 20));
            v157 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
            OUTLINED_FUNCTION_296(v156 + OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type, &v425);
            v158 = v156 + v157;
            v103 = v381;
            sub_2574AD5D8(v158, v381, &qword_27F879D40, &qword_257744660);
            v159 = OUTLINED_FUNCTION_188();
            OUTLINED_FUNCTION_155(v159, v160, v43);
            if (v96)
            {
              sub_2574695E4(v103, &qword_27F879D40, &qword_257744660);
              swift_allocBox();
              OUTLINED_FUNCTION_28_9();
              MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
              OUTLINED_FUNCTION_0_42();
              sub_257654024(v155, v161);
              goto LABEL_34;
            }

            OUTLINED_FUNCTION_0_42();
            sub_257654024(v155, v168);
            v169 = OUTLINED_FUNCTION_47_5();
            v103 = v170;
            v171 = v378;
            sub_257653D3C(v169, v378);
            sub_257653D3C(v171, v380);
            v172 = swift_getEnumCaseMultiPayload();
            switch(v172)
            {
              case 1:
                swift_allocBox();
                v197 = v196;
                OUTLINED_FUNCTION_3_29();
                sub_257653D3C(v380, v198);
                OUTLINED_FUNCTION_10_20();
                v190 = v393;
                v199 = sub_257653FCC(v197, v393);
                v164 = v190;
                sub_2576F210C(v199);
                OUTLINED_FUNCTION_32_6();
                v191 = type metadata accessor for MLProgram.ValueType.ListParameters;
                goto LABEL_43;
              case 2:
                swift_allocBox();
                v188 = v187;
                OUTLINED_FUNCTION_5_24();
                sub_257653D3C(v380, v189);
                OUTLINED_FUNCTION_14_8();
                v190 = v391;
                sub_257653FCC(v188, v391);
                v164 = v190;
                sub_2576F2344();
                OUTLINED_FUNCTION_32_6();
                v191 = type metadata accessor for MLProgram.ValueType.TupleParameters;
                goto LABEL_43;
              case 3:
                swift_allocBox();
                v193 = v192;
                OUTLINED_FUNCTION_4_19();
                sub_257653D3C(v380, v194);
                OUTLINED_FUNCTION_12_17();
                v190 = v392;
                v195 = sub_257653FCC(v193, v392);
                v164 = v190;
                sub_2576F4D1C(v195);
                OUTLINED_FUNCTION_32_6();
                v191 = type metadata accessor for MLProgram.ValueType.DictionaryParameters;
LABEL_43:
                sub_257654024(v190, v191);
                break;
              case 4:
                v364 = swift_allocBox();
                v175 = v174;
                OUTLINED_FUNCTION_6_24();
                sub_257653D3C(v380, v176);
                OUTLINED_FUNCTION_16_7();
                v177 = v175;
                v178 = v376;
                sub_257653FCC(v177, v376);
                v179 = swift_initStackObject();
                OUTLINED_FUNCTION_33_4(v179);
                v363 = v180;
                *(v180 + 40) = v181;
                v182 = *(v178 + *(v382 + 20));
                v128 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType;
                OUTLINED_FUNCTION_296(v182 + OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType, &v424);
                v183 = v375;
                sub_2574AD5D8(v182 + v128, v375, &qword_27F879E10, &qword_257744730);
                v184 = OUTLINED_FUNCTION_197();
                v185 = v416;
                v103 = __swift_getEnumTagSinglePayload(v184, v186, v416);
                sub_2574695E4(v183, &qword_27F879E10, &qword_257744730);
                if (v103 == 1)
                {
                  swift_allocBox();
                  OUTLINED_FUNCTION_28_9();
                  MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
LABEL_53:
                  swift_projectBox();
                  OUTLINED_FUNCTION_19_11();
                  v215 = v403;
                  sub_257653FCC(v216, v403);
                  v164 = v215;
                  sub_2576F1B84();
                  OUTLINED_FUNCTION_32_6();
                  OUTLINED_FUNCTION_30_6();
                  goto LABEL_54;
                }

                v200 = v374;
                sub_2574AD5D8(v182 + v128, v374, &qword_27F879E10, &qword_257744730);
                v201 = OUTLINED_FUNCTION_188();
                OUTLINED_FUNCTION_155(v201, v202, v185);
                v128 = v185;
                if (v96)
                {
                  v208 = v371;
                  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
                  v203 = *(v128 + 20);
                  if (qword_27F878FF0 != -1)
                  {
                    OUTLINED_FUNCTION_12_15();
                    swift_once();
                  }

                  *(v208 + v203) = qword_27F87B038;
                  v204 = v374;
                  v205 = OUTLINED_FUNCTION_197();
                  v207 = __swift_getEnumTagSinglePayload(v205, v206, v128);

                  if (v207 != 1)
                  {
                    sub_2574695E4(v204, &qword_27F879E10, &qword_257744730);
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_2_29();
                  v208 = v371;
                  sub_257653D3C(v200, v371);
                }

                v209 = *(v208 + *(v128 + 20));
                v210 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
                OUTLINED_FUNCTION_296(v209 + OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type, &v423);
                v211 = v209 + v210;
                v103 = v373;
                sub_2574AD5D8(v211, v373, &qword_27F879D40, &qword_257744660);
                v212 = OUTLINED_FUNCTION_188();
                OUTLINED_FUNCTION_155(v212, v213, v43);
                if (v96)
                {
                  sub_2574695E4(v103, &qword_27F879D40, &qword_257744660);
                  swift_allocBox();
                  OUTLINED_FUNCTION_28_9();
                  MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
                  OUTLINED_FUNCTION_0_42();
                  sub_257654024(v208, v214);
                  goto LABEL_53;
                }

                OUTLINED_FUNCTION_0_42();
                sub_257654024(v208, v219);
                v220 = OUTLINED_FUNCTION_47_5();
                v103 = v221;
                v222 = v370;
                sub_257653D3C(v220, v370);
                sub_257653D3C(v222, v372);
                v223 = swift_getEnumCaseMultiPayload();
                switch(v223)
                {
                  case 1:
                    swift_allocBox();
                    OUTLINED_FUNCTION_67_3();
                    OUTLINED_FUNCTION_3_29();
                    sub_257653D3C(v372, v245);
                    OUTLINED_FUNCTION_10_20();
                    v241 = v393;
                    v246 = sub_257653FCC(v208, v393);
                    v164 = v241;
                    sub_2576F210C(v246);
                    OUTLINED_FUNCTION_32_6();
                    v242 = type metadata accessor for MLProgram.ValueType.ListParameters;
                    goto LABEL_62;
                  case 2:
                    swift_allocBox();
                    OUTLINED_FUNCTION_67_3();
                    OUTLINED_FUNCTION_5_24();
                    sub_257653D3C(v372, v240);
                    OUTLINED_FUNCTION_14_8();
                    v241 = v391;
                    sub_257653FCC(v208, v391);
                    v164 = v241;
                    sub_2576F2344();
                    OUTLINED_FUNCTION_32_6();
                    v242 = type metadata accessor for MLProgram.ValueType.TupleParameters;
                    goto LABEL_62;
                  case 3:
                    swift_allocBox();
                    OUTLINED_FUNCTION_67_3();
                    OUTLINED_FUNCTION_4_19();
                    sub_257653D3C(v372, v243);
                    OUTLINED_FUNCTION_12_17();
                    v241 = v392;
                    v244 = sub_257653FCC(v208, v392);
                    v164 = v241;
                    sub_2576F4D1C(v244);
                    OUTLINED_FUNCTION_32_6();
                    v242 = type metadata accessor for MLProgram.ValueType.DictionaryParameters;
LABEL_62:
                    sub_257654024(v241, v242);
                    break;
                  case 4:
                    v362[1] = swift_allocBox();
                    v227 = v226;
                    OUTLINED_FUNCTION_6_24();
                    sub_257653D3C(v372, v228);
                    OUTLINED_FUNCTION_16_7();
                    v229 = v227;
                    v230 = v369;
                    sub_257653FCC(v229, v369);
                    v231 = swift_initStackObject();
                    OUTLINED_FUNCTION_33_4(v231);
                    v383 = v232;
                    *(v232 + 40) = v233;
                    v103 = *(v230 + *(v382 + 20));
                    v234 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType;
                    OUTLINED_FUNCTION_296(v103 + OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType, &v422);
                    v235 = v368;
                    sub_2574AD5D8(v103 + v234, v368, &qword_27F879E10, &qword_257744730);
                    v236 = OUTLINED_FUNCTION_197();
                    v238 = __swift_getEnumTagSinglePayload(v236, v237, v128);
                    sub_2574695E4(v235, &qword_27F879E10, &qword_257744730);
                    if (v238 == 1)
                    {
                      v239 = swift_allocBox();
                      OUTLINED_FUNCTION_28_9();
                      MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
                      v428 = v239;
                    }

                    else
                    {
                      v247 = v367;
                      sub_2574AD5D8(v103 + v234, v367, &qword_27F879E10, &qword_257744730);
                      v248 = OUTLINED_FUNCTION_197();
                      OUTLINED_FUNCTION_155(v248, v249, v128);
                      if (v96)
                      {
                        v250 = v366;
                        _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
                        v251 = *(v128 + 20);
                        if (qword_27F878FF0 != -1)
                        {
                          OUTLINED_FUNCTION_12_15();
                          swift_once();
                        }

                        *(v250 + v251) = qword_27F87B038;
                        v252 = OUTLINED_FUNCTION_197();
                        v103 = __swift_getEnumTagSinglePayload(v252, v253, v128);

                        if (v103 != 1)
                        {
                          sub_2574695E4(v247, &qword_27F879E10, &qword_257744730);
                        }
                      }

                      else
                      {
                        OUTLINED_FUNCTION_2_29();
                        sub_257653D3C(v247, v366);
                      }

                      sub_2576F0F64();
                      v239 = v428;
                    }

                    switch(v239 >> 61)
                    {
                      case 1uLL:
                        OUTLINED_FUNCTION_79_2();
                        OUTLINED_FUNCTION_10_20();
                        v258 = v393;
                        v268 = sub_257653FCC(v267, v393);
                        v164 = v258;
                        sub_2576F210C(v268);
                        OUTLINED_FUNCTION_39_5();
                        v257 = v269;
                        v261 = type metadata accessor for MLProgram.ValueType.ListParameters;
                        goto LABEL_76;
                      case 2uLL:
                        OUTLINED_FUNCTION_79_2();
                        OUTLINED_FUNCTION_14_8();
                        v258 = v391;
                        sub_257653FCC(v262, v391);
                        v164 = v258;
                        sub_2576F2344();
                        OUTLINED_FUNCTION_39_5();
                        v257 = v263;
                        v261 = type metadata accessor for MLProgram.ValueType.TupleParameters;
                        goto LABEL_76;
                      case 3uLL:
                        OUTLINED_FUNCTION_79_2();
                        OUTLINED_FUNCTION_12_17();
                        v258 = v392;
                        v265 = sub_257653FCC(v264, v392);
                        v164 = v258;
                        sub_2576F4D1C(v265);
                        OUTLINED_FUNCTION_39_5();
                        v257 = v266;
                        v261 = type metadata accessor for MLProgram.ValueType.DictionaryParameters;
                        goto LABEL_76;
                      case 4uLL:
                        OUTLINED_FUNCTION_79_2();
                        OUTLINED_FUNCTION_16_7();
                        v258 = v365;
                        sub_257653FCC(v259, v365);
                        v164 = v258;
                        sub_2576F4F60();
                        OUTLINED_FUNCTION_39_5();
                        v257 = v260;
                        v261 = type metadata accessor for MLProgram.ValueType.StateParameters;
LABEL_76:
                        sub_257654024(v258, v261);
                        break;
                      default:
                        swift_projectBox();
                        OUTLINED_FUNCTION_19_11();
                        v254 = v403;
                        sub_257653FCC(v255, v403);
                        v164 = v254;
                        sub_2576F1B84();
                        OUTLINED_FUNCTION_39_5();
                        v257 = v256;
                        OUTLINED_FUNCTION_30_6();
                        break;
                    }

                    v270 = v383;
                    *(v383 + 48) = v164;
                    *(v270 + 56) = v103;
                    *(v270 + 64) = v257;
                    sub_2576A6964(v270);
                    OUTLINED_FUNCTION_39_5();
                    OUTLINED_FUNCTION_27_10();
                    sub_257654024(v369, v271);
                    LOBYTE(v128) = 2;
                    break;
                  default:
                    swift_allocBox();
                    OUTLINED_FUNCTION_7_15();
                    sub_257653D3C(v372, v224);
                    goto LABEL_53;
                }

LABEL_54:

                v217 = v363;
                *(v363 + 48) = v164;
                *(v217 + 56) = v103;
                *(v217 + 64) = v128;
                sub_2576A6964(v217);
                OUTLINED_FUNCTION_39_5();
                OUTLINED_FUNCTION_27_10();
                sub_257654024(v376, v218);
                LOBYTE(v128) = 2;
                break;
              default:
                swift_allocBox();
                OUTLINED_FUNCTION_7_15();
                sub_257653D3C(v380, v173);
                goto LABEL_34;
            }

LABEL_35:

            v165 = v395;
            *(v395 + 48) = v164;
            *(v165 + 56) = v103;
            *(v165 + 64) = v128;
            v72 = sub_2576A6964(v165);
            v43 = v166;
            OUTLINED_FUNCTION_27_10();
            sub_257654024(v397, v167);
            LOBYTE(v103) = 2;
            break;
          default:
            swift_allocBox();
            OUTLINED_FUNCTION_7_15();
            sub_257653D3C(v415, v119);
            goto LABEL_12;
        }
      }

      OUTLINED_FUNCTION_11_16();
      sub_257654024(v88, v110);

      v111 = v420;
      v421 = v420;
      v113 = *(v420 + 16);
      v112 = *(v420 + 24);
      if (v113 >= v112 >> 1)
      {
        v225 = OUTLINED_FUNCTION_174(v112);
        sub_257484060(v225, v113 + 1, 1);
        v111 = v421;
      }

      *(v111 + 16) = v113 + 1;
      v420 = v111;
      v114 = v111 + 40 * v113;
      v115 = v417;
      *(v114 + 32) = v418;
      *(v114 + 40) = v115;
      *(v114 + 48) = v72;
      *(v114 + 56) = v43;
      *(v114 + 64) = v103;
      v71 = v410;
      v93 += v409;
      --v419;
      v43 = v411;
      v42 = v412;
      v72 = v416;
    }

    while (v419);

    v1 = v413;
  }

  else
  {

    v420 = MEMORY[0x277D84F90];
  }

  MLProgram.Function.blockSpecializations.getter();
  v273 = v272;
  v274 = *(v272 + 16);
  if (v274)
  {
    v421 = MEMORY[0x277D84F90];
    v275 = &v421;
    v276 = OUTLINED_FUNCTION_64_4();
    sub_257484060(v276, v277, v278);
    v279 = v421;
    sub_25774107C();
    OUTLINED_FUNCTION_67_3();
    v281 = v280;
    v411 = v273;
    v412 = (v273 + 64);
    do
    {
      if (v71 < 0 || v71 >= 1 << *(v273 + 32))
      {
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
      }

      if (((*&v412[(v71 >> 3) & 0x1FFFFFFFFFFFFFF8] >> v71) & 1) == 0)
      {
        goto LABEL_105;
      }

      if (*(v273 + 36) != v275)
      {
        goto LABEL_106;
      }

      v416 = v274;
      LODWORD(v417) = v281;
      v418 = v275;
      v282 = v408;
      v283 = *(v408 + 48);
      v284 = (*(v273 + 48) + 16 * v71);
      v285 = *v284;
      v286 = v284[1];
      v287 = type metadata accessor for MLProgram.Block(0);
      OUTLINED_FUNCTION_13(v287);
      OUTLINED_FUNCTION_25_8();
      v288 = v405;
      sub_257653FCC(v289, v405 + v283);
      v419 = v279;
      v290 = v406;
      *v406 = v285;
      *(v290 + 8) = v286;
      OUTLINED_FUNCTION_15_6();
      sub_257653D3C(v288 + v283, v290 + v291);
      OUTLINED_FUNCTION_82_2();

      MEMORY[0x259C64E90](v285, v286);
      OUTLINED_FUNCTION_316();
      v414 = v429;
      v415 = v428;
      v292 = v407;
      sub_2574AD5D8(v290, v407, &qword_27F880428, &unk_25776C030);

      v293 = *(v282 + 48);
      sub_2576963A8();
      v295 = v294;
      v297 = v296;
      v275 = v298;
      OUTLINED_FUNCTION_17_10();
      sub_257654024(v292 + v293, v299);
      v300 = v290;
      v279 = v419;
      sub_2574695E4(v300, &qword_27F880428, &unk_25776C030);
      v421 = v279;
      v302 = *(v279 + 16);
      v301 = *(v279 + 24);
      if (v302 >= v301 >> 1)
      {
        v306 = OUTLINED_FUNCTION_174(v301);
        sub_257484060(v306, v302 + 1, 1);
        v279 = v421;
      }

      *(v279 + 16) = v302 + 1;
      v303 = v279 + 40 * v302;
      v304 = v414;
      *(v303 + 32) = v415;
      *(v303 + 40) = v304;
      *(v303 + 48) = v295;
      *(v303 + 56) = v297;
      *(v303 + 64) = v275;
      v273 = v411;
      sub_25765C64C();
      OUTLINED_FUNCTION_67_3();
      v281 = v305;
      v274 = v416 - 1;
      v1 = v413;
    }

    while (v416 != 1);

    sub_257653FC0(v71, v275, v281 & 1);
  }

  else
  {

    v279 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B28, &unk_257773B40);
  v307 = swift_initStackObject();
  *(v307 + 16) = xmmword_2577442C0;
  *(v307 + 32) = 0x746573706FLL;
  *(v307 + 40) = 0xE500000000000000;
  v308 = *(v1 + 8);
  v309 = *(v1 + 16);
  v428 = 34;
  v429 = 0xE100000000000000;
  MEMORY[0x259C64E90](v308, v309);
  OUTLINED_FUNCTION_316();
  v310 = v429;
  *(v307 + 48) = v428;
  *(v307 + 56) = v310;
  *(v307 + 64) = 0;
  *(v307 + 72) = 0x737475706E69;
  *(v307 + 80) = 0xE600000000000000;
  *(v307 + 88) = sub_2576AACFC(v420);
  *(v307 + 96) = v311;
  *(v307 + 104) = 2;
  *(v307 + 112) = 0x736B636F6C62;
  *(v307 + 120) = 0xE600000000000000;
  *(v307 + 128) = sub_2576AACFC(v279);
  *(v307 + 136) = v312;
  *(v307 + 144) = 2;
  MLProgram.Function.attributes.getter();
  v314 = *(v313 + 16);

  if (v314)
  {
    MLProgram.Function.attributes.getter();
    v316 = v315;
    v317 = *(v315 + 16);
    if (v317)
    {
      v412 = v307;
      v421 = MEMORY[0x277D84F90];
      v318 = OUTLINED_FUNCTION_64_4();
      sub_257484060(v318, v319, v320);
      v321 = v421;
      v322 = sub_25774107C();
      v324 = v323;
      v326 = v325;
      v413 = v316;
      v414 = v316 + 64;
      v327 = v400;
      do
      {
        if (v322 < 0 || v322 >= 1 << *(v316 + 32))
        {
          goto LABEL_107;
        }

        if (((*(v414 + ((v322 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v322) & 1) == 0)
        {
          goto LABEL_108;
        }

        if (*(v316 + 36) != v324)
        {
          goto LABEL_109;
        }

        v418 = v317;
        LODWORD(v419) = v326;
        v420 = v324;
        v328 = v402;
        v329 = v321;
        v330 = *(v402 + 48);
        v331 = *(v316 + 56);
        v332 = (*(v316 + 48) + 16 * v322);
        v333 = *v332;
        v334 = v332[1];
        v335 = type metadata accessor for MLProgram.Value(0);
        OUTLINED_FUNCTION_13(v335);
        v337 = v331 + *(v336 + 72) * v322;
        v338 = v399;
        sub_257653FCC(v337, v399 + v330);
        *v327 = v333;
        v327[1] = v334;
        OUTLINED_FUNCTION_18_13();
        sub_257653D3C(v338 + v330, v327 + v339);
        OUTLINED_FUNCTION_82_2();

        MEMORY[0x259C64E90](v333, v334);
        OUTLINED_FUNCTION_316();
        v416 = v429;
        v417 = v428;
        v340 = v401;
        sub_2574AD5D8(v327, v401, &qword_27F879D18, &unk_257775F30);

        v341 = *(v328 + 48);
        sub_25771810C();
        v321 = v329;
        v343 = v342;
        v415 = v344;
        v346 = v345;
        OUTLINED_FUNCTION_45_4();
        sub_257654024(v340 + v341, v347);
        sub_2574695E4(v327, &qword_27F879D18, &unk_257775F30);
        v421 = v321;
        v349 = *(v321 + 16);
        v348 = *(v321 + 24);
        if (v349 >= v348 >> 1)
        {
          v355 = OUTLINED_FUNCTION_174(v348);
          sub_257484060(v355, v349 + 1, 1);
          v321 = v421;
        }

        *(v321 + 16) = v349 + 1;
        v350 = v321 + 40 * v349;
        v351 = v416;
        *(v350 + 32) = v417;
        *(v350 + 40) = v351;
        v352 = v415;
        *(v350 + 48) = v343;
        *(v350 + 56) = v352;
        *(v350 + 64) = v346;
        v316 = v413;
        v322 = sub_25765C64C();
        v324 = v353;
        v326 = v354;
        v317 = v418 - 1;
      }

      while (v418 != 1);

      sub_257653FC0(v322, v324, v326 & 1);
    }

    else
    {

      v321 = MEMORY[0x277D84F90];
    }

    v356 = sub_2576AACFC(v321);
    v358 = v357;
    sub_257469AE0();
    v307 = v359;
    *(v359 + 16) = 4;
    OUTLINED_FUNCTION_76_3();
    *(v360 + 152) = v361;
    *(v360 + 160) = 0xEA00000000007365;
    *(v360 + 168) = v356;
    *(v360 + 176) = v358;
    *(v360 + 184) = 2;
  }

  sub_2576AACFC(v307);
  OUTLINED_FUNCTION_35();
}

uint64_t MLProgram.Function.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  type metadata accessor for Proto_MILSpec_Block(0);
  a1[3] = sub_2577435D4();
  type metadata accessor for Proto_MILSpec_Value(0);
  a1[4] = sub_2577435D4();
  type metadata accessor for Proto_MILSpec_Function(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t MLProgram.Function.weightsFileNames()()
{
  v1 = MEMORY[0x277D84FA0];
  sub_257652114();
  return v1;
}

void sub_257652114()
{
  OUTLINED_FUNCTION_31();
  v45 = v2;
  v46 = v1;
  v48 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880608, &unk_25776D460);
  OUTLINED_FUNCTION_13(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_40();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880698, &qword_25776CFE0);
  OUTLINED_FUNCTION_13(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v45 - v8;
  MLProgram.Function.blockSpecializations.getter();
  v11 = v10 + 64;
  v47 = v10;
  OUTLINED_FUNCTION_56_1();
  v15 = v14 & v13;
  v17 = (v16 + 63) >> 6;
  if ((v14 & v13) != 0)
  {
    while (1)
    {
      v18 = v12;
LABEL_6:
      OUTLINED_FUNCTION_60_1();
      v21 = *v19;
      v20 = v19[1];
      MLProgram.Function.blockSpecializations.getter();
      v23 = v22;

      sub_257657B7C(v21, v20, v23, v9);

      v24 = type metadata accessor for MLProgram.Block(0);
      OUTLINED_FUNCTION_155(v9, 1, v24);
      if (v25)
      {
        break;
      }

      v15 &= v15 - 1;

      v46(v9, v48);
      OUTLINED_FUNCTION_17_10();
      sub_257654024(v9, v26);
      v12 = v18;
      if (!v15)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    while (1)
    {
      v18 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v18 >= v17)
      {

        MLProgram.Function.attributes.getter();
        v28 = v27 + 64;
        OUTLINED_FUNCTION_56_1();
        v32 = v31 & v30;
        v34 = (v33 + 63) >> 6;
        if ((v31 & v30) == 0)
        {
          goto LABEL_11;
        }

        while (1)
        {
          v35 = v29;
LABEL_14:
          OUTLINED_FUNCTION_60_1();
          v38 = *v36;
          v37 = v36[1];
          MLProgram.Function.attributes.getter();
          v40 = v39;

          sub_257657A68(v38, v37, v40, v0);

          type metadata accessor for MLProgram.Value(0);
          v41 = OUTLINED_FUNCTION_188();
          OUTLINED_FUNCTION_155(v41, v42, v43);
          if (v25)
          {
            goto LABEL_21;
          }

          v32 &= v32 - 1;

          v45(v0, v48);
          OUTLINED_FUNCTION_45_4();
          sub_257654024(v0, v44);
          v29 = v35;
          if (!v32)
          {
LABEL_11:
            while (1)
            {
              v35 = v29 + 1;
              if (__OFADD__(v29, 1))
              {
                goto LABEL_19;
              }

              if (v35 >= v34)
              {

                OUTLINED_FUNCTION_35();
                return;
              }

              v32 = *(v28 + 8 * v35);
              ++v29;
              if (v32)
              {
                goto LABEL_14;
              }
            }
          }
        }
      }

      v15 = *(v11 + 8 * v18);
      ++v12;
      if (v15)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_257652460()
{
  OUTLINED_FUNCTION_31();
  v95 = v1;
  v101 = v2;
  v4 = v3;
  v106 = v5;
  v6 = OUTLINED_FUNCTION_30();
  v96 = type metadata accessor for MLProgram.Value(v6);
  OUTLINED_FUNCTION_63();
  v94 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12_1();
  v91 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880608, &unk_25776D460);
  v11 = OUTLINED_FUNCTION_13(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_25_0();
  v93 = v12;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_196();
  v104 = v14;
  v15 = OUTLINED_FUNCTION_153();
  v16 = type metadata accessor for MLProgram.Block(v15);
  OUTLINED_FUNCTION_63();
  v100 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_12_1();
  v92 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880698, &qword_25776CFE0);
  v21 = OUTLINED_FUNCTION_13(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_25_0();
  v99 = v22;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_196();
  v107 = v24;
  MLProgram.Function.blockSpecializations.getter();
  v26 = v25 + 64;
  OUTLINED_FUNCTION_41_0();
  v29 = v28 & v27;
  v31 = (v30 + 63) >> 6;
  v108 = v4;
  swift_bridgeObjectRetain_n();
  v32 = 0;
  v33 = 0;
  v105 = v0;
  v97 = v31;
  v98 = v26;
  if (!v29)
  {
    goto LABEL_3;
  }

  while (1)
  {
    v109 = v33;
    v33 = v16;
LABEL_7:
    OUTLINED_FUNCTION_60_1();
    v36 = *v35;
    v37 = v35[1];
    MLProgram.Function.blockSpecializations.getter();
    v39 = v38;

    swift_isUniquelyReferenced_nonNull_native();
    sub_25765368C(v36, v37);
    OUTLINED_FUNCTION_52_3();
    if (__OFADD__(v42, v43))
    {
      break;
    }

    v44 = v40;
    v45 = v41;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8806A0, &qword_25776CFE8);
    if (OUTLINED_FUNCTION_77_2(v46))
    {
      sub_25765368C(v36, v37);
      OUTLINED_FUNCTION_63_4();
      if (!v48)
      {
        goto LABEL_41;
      }

      v44 = v47;
    }

    if ((v45 & 1) == 0)
    {
      goto LABEL_39;
    }

    v49 = *(v100 + 72) * v44;
    OUTLINED_FUNCTION_15_6();
    sub_257653D3C(v50 + v49, v107);
    OUTLINED_FUNCTION_21();
    v16 = v33;
    __swift_storeEnumTagSinglePayload(v51, v52, v53, v33);

    v101(v107, v106, v108);
    sub_2574AD5D8(v107, v99, &qword_27F880698, &qword_25776CFE0);
    OUTLINED_FUNCTION_155(v99, 1, v33);
    if (v48)
    {
      sub_2574695E4(v99, &qword_27F880698, &qword_25776CFE0);
      sub_2576493CC(*(v39 + 48) + 16 * v44);
      sub_2577438B4();
    }

    else
    {
      sub_257653D3C(v99, v92);
      sub_257653D3C(v92, *(v39 + 56) + v49);
    }

    v33 = v109;
    v26 = v98;
    v29 &= v29 - 1;
    sub_2574695E4(v107, &qword_27F880698, &qword_25776CFE0);
    sub_257653AF8(v39);
    v55 = v54;

    *(v105 + 24) = v55;
    v31 = v97;
    if (!v29)
    {
LABEL_3:
      while (1)
      {
        v34 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v34 >= v31)
        {

          MLProgram.Function.attributes.getter();
          v56 = 0;
          OUTLINED_FUNCTION_41_0();
          v60 = v59 & v58;
          v62 = (v61 + 63) >> 6;
          v63 = &qword_27F880608;
          v102 = v62;
          v103 = v57;
          if ((v59 & v58) == 0)
          {
            goto LABEL_20;
          }

          while (1)
          {
            v110 = v33;
            v33 = v63;
LABEL_24:
            OUTLINED_FUNCTION_60_1();
            v67 = *v65;
            v66 = v65[1];
            MLProgram.Function.attributes.getter();
            v69 = v68;

            swift_isUniquelyReferenced_nonNull_native();
            sub_25765368C(v67, v66);
            OUTLINED_FUNCTION_52_3();
            if (__OFADD__(v72, v73))
            {
              goto LABEL_38;
            }

            v74 = v70;
            v75 = v71;
            v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880620, &qword_25776CCA0);
            if (OUTLINED_FUNCTION_77_2(v76))
            {
              v77 = sub_25765368C(v67, v66);
              if ((v75 & 1) != (v78 & 1))
              {
                goto LABEL_41;
              }

              v74 = v77;
            }

            v63 = v33;
            if ((v75 & 1) == 0)
            {
              goto LABEL_40;
            }

            v79 = *(v94 + 72) * v74;
            OUTLINED_FUNCTION_18_13();
            sub_257653D3C(v80 + v79, v104);
            OUTLINED_FUNCTION_21();
            __swift_storeEnumTagSinglePayload(v81, v82, v83, v96);

            v95(v104, v106, v108);
            sub_2574AD5D8(v104, v93, v33, &unk_25776D460);
            OUTLINED_FUNCTION_155(v93, 1, v96);
            if (v48)
            {
              sub_2574695E4(v93, v33, &unk_25776D460);
              sub_2576493CC(*(v69 + 48) + 16 * v74);
              sub_2577438B4();
            }

            else
            {
              sub_257653D3C(v93, v91);
              sub_257653D3C(v91, *(v69 + 56) + v79);
            }

            v60 &= v60 - 1;
            sub_2574695E4(v104, v33, &unk_25776D460);
            v33 = v110;
            v84 = sub_257653818(v69);

            *(v105 + 32) = v84;
            v62 = v102;
            v57 = v103;
            if (!v60)
            {
LABEL_20:
              while (1)
              {
                v64 = v56 + 1;
                if (__OFADD__(v56, 1))
                {
                  goto LABEL_36;
                }

                if (v64 >= v62)
                {
                  swift_bridgeObjectRelease_n();

                  OUTLINED_FUNCTION_35();
                  return;
                }

                v60 = *(v57 + 8 * v64);
                ++v56;
                if (v60)
                {
                  v110 = v33;
                  v33 = v63;
                  v56 = v64;
                  goto LABEL_24;
                }
              }
            }
          }
        }

        v29 = *(v26 + 8 * v34);
        ++v32;
        if (v29)
        {
          v109 = v33;
          v33 = v16;
          v32 = v34;
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
      break;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v33);
  __break(1u);
LABEL_40:
  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v88, v89, v90, v96);
  __break(1u);
LABEL_41:
  swift_bridgeObjectRelease_n();
  sub_2577439B4();
  __break(1u);
}

void sub_257652BA8()
{
  OUTLINED_FUNCTION_31();
  v1 = OUTLINED_FUNCTION_30();
  type metadata accessor for MLProgram.Value(v1);
  OUTLINED_FUNCTION_63();
  v86 = v3;
  v87 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_12_1();
  v83 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880608, &unk_25776D460);
  v6 = OUTLINED_FUNCTION_13(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_25_0();
  v85 = v7;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_196();
  v94 = v9;
  v10 = OUTLINED_FUNCTION_153();
  v11 = type metadata accessor for MLProgram.Block(v10);
  OUTLINED_FUNCTION_63();
  v90 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12_1();
  v84 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880698, &qword_25776CFE0);
  v16 = OUTLINED_FUNCTION_13(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_25_0();
  v91 = v17;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_64_2(v19);
  MLProgram.Function.blockSpecializations.getter();
  v20 = 0;
  v21 = 0;
  v92 = v11;
  OUTLINED_FUNCTION_41_0();
  v25 = v24 & v23;
  v27 = (v26 + 63) >> 6;
  v95 = v0;
  v88 = v27;
  v89 = v22;
  if ((v24 & v23) == 0)
  {
    goto LABEL_3;
  }

  while (1)
  {
    v97 = v21;
LABEL_7:
    OUTLINED_FUNCTION_60_1();
    v30 = *v29;
    v31 = v29[1];
    MLProgram.Function.blockSpecializations.getter();
    v33 = v32;

    swift_isUniquelyReferenced_nonNull_native();
    sub_25765368C(v30, v31);
    OUTLINED_FUNCTION_52_3();
    if (__OFADD__(v36, v37))
    {
      break;
    }

    v38 = v34;
    v39 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8806A0, &qword_25776CFE8);
    if (sub_257743894())
    {
      sub_25765368C(v30, v31);
      OUTLINED_FUNCTION_63_4();
      if (!v41)
      {
        goto LABEL_42;
      }

      v38 = v40;
    }

    if ((v39 & 1) == 0)
    {
      goto LABEL_40;
    }

    v42 = *(v90 + 72) * v38;
    OUTLINED_FUNCTION_15_6();
    sub_257653D3C(v43 + v42, v96);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v92);
    sub_2576986A0();
    sub_2574AD5D8(v96, v91, &qword_27F880698, &qword_25776CFE0);
    OUTLINED_FUNCTION_155(v91, 1, v92);
    if (v41)
    {
      sub_2574695E4(v91, &qword_27F880698, &qword_25776CFE0);
      sub_2576493CC(*(v33 + 48) + 16 * v38);
      sub_2577438B4();
    }

    else
    {
      sub_257653D3C(v91, v84);
      sub_257653D3C(v84, *(v33 + 56) + v42);
    }

    v21 = v97;
    v25 &= v25 - 1;
    sub_2574695E4(v96, &qword_27F880698, &qword_25776CFE0);
    sub_257653AF8(v33);
    v48 = v47;

    *(v95 + 24) = v48;
    v27 = v88;
    v22 = v89;
    if (!v25)
    {
LABEL_3:
      while (1)
      {
        v28 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v28 >= v27)
        {

          MLProgram.Function.attributes.getter();
          v49 = 0;
          OUTLINED_FUNCTION_41_0();
          v53 = v52 & v51;
          v55 = (v54 + 63) >> 6;
          v92 = v55;
          v93 = v50;
          if ((v52 & v51) == 0)
          {
            goto LABEL_20;
          }

          while (1)
          {
            v98 = v21;
LABEL_24:
            OUTLINED_FUNCTION_60_1();
            v58 = *v57;
            v59 = v57[1];
            MLProgram.Function.attributes.getter();
            v61 = v60;

            swift_isUniquelyReferenced_nonNull_native();
            v99 = v61;
            sub_25765368C(v58, v59);
            OUTLINED_FUNCTION_52_3();
            if (__OFADD__(v64, v65))
            {
              goto LABEL_39;
            }

            v66 = v62;
            v67 = v63;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880620, &qword_25776CCA0);
            if (sub_257743894())
            {
              v68 = sub_25765368C(v58, v59);
              v70 = v95;
              if ((v67 & 1) != (v69 & 1))
              {
                goto LABEL_42;
              }

              v66 = v68;
            }

            else
            {
              v70 = v95;
            }

            if ((v67 & 1) == 0)
            {
              goto LABEL_41;
            }

            v71 = *(v86 + 72) * v66;
            OUTLINED_FUNCTION_18_13();
            sub_257653D3C(v72 + v71, v94);
            OUTLINED_FUNCTION_21();
            __swift_storeEnumTagSinglePayload(v73, v74, v75, v87);
            sub_257718008();
            sub_2574AD5D8(v94, v85, &qword_27F880608, &unk_25776D460);
            OUTLINED_FUNCTION_155(v85, 1, v87);
            if (v41)
            {
              sub_2574695E4(v85, &qword_27F880608, &unk_25776D460);
              sub_2576493CC(*(v99 + 48) + 16 * v66);
              sub_2577438B4();
            }

            else
            {
              sub_257653D3C(v85, v83);
              sub_257653D3C(v83, *(v99 + 56) + v71);
            }

            v53 &= v53 - 1;
            sub_2574695E4(v94, &qword_27F880608, &unk_25776D460);
            v21 = v98;
            v76 = sub_257653818(v99);

            *(v70 + 32) = v76;
            v55 = v92;
            v50 = v93;
            if (!v53)
            {
LABEL_20:
              while (1)
              {
                v56 = v49 + 1;
                if (__OFADD__(v49, 1))
                {
                  goto LABEL_37;
                }

                if (v56 >= v55)
                {

                  OUTLINED_FUNCTION_35();
                  return;
                }

                v53 = *(v50 + 8 * v56);
                ++v49;
                if (v53)
                {
                  v98 = v21;
                  v49 = v56;
                  goto LABEL_24;
                }
              }
            }
          }
        }

        v25 = *(v22 + 8 * v28);
        ++v20;
        if (v25)
        {
          v97 = v21;
          v20 = v28;
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
      break;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v92);
  __break(1u);
LABEL_41:
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v87);
  __break(1u);
LABEL_42:
  sub_2577439B4();
  __break(1u);
}

void MLProgram.Function.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  v2 = sub_257743A84();
  OUTLINED_FUNCTION_63();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  type metadata accessor for MLProgram.Function(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  sub_257653FCC(v0, v10 - v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_257744E70;
  *(v11 + 32) = 0x737475706E69;
  *(v11 + 40) = 0xE600000000000000;
  v12 = MLProgram.Function.inputs.getter();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8805E0, &qword_25776CBD8);
  *(v11 + 48) = v12;
  *(v11 + 72) = v13;
  *(v11 + 80) = 0x746573706FLL;
  v14 = MEMORY[0x277D837D0];
  v15 = *(v0 + 8);
  v16 = *(v0 + 16);
  *(v11 + 88) = 0xE500000000000000;
  *(v11 + 96) = v15;
  *(v11 + 104) = v16;
  *(v11 + 120) = v14;
  *(v11 + 128) = 0xD000000000000014;
  *(v11 + 136) = 0x8000000257780AC0;
  MLProgram.Function.blockSpecializations.getter();
  v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880680, &qword_25776CF30);
  *(v11 + 144) = v18;
  OUTLINED_FUNCTION_76_3();
  *(v11 + 168) = v19;
  *(v11 + 176) = v20;
  *(v11 + 184) = 0xEA00000000007365;
  MLProgram.Function.attributes.getter();
  v22 = v21;
  *(v11 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8805F0, &qword_25776CBE8);
  *(v11 + 192) = v22;
  sub_257743A74();
  v23 = OUTLINED_FUNCTION_197();
  __swift_storeEnumTagSinglePayload(v23, v24, 1, v25);
  (*(v4 + 104))(v1, *MEMORY[0x277D84C38], v2);

  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}