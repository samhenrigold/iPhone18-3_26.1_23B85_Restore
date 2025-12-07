uint64_t sub_257464148@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.Layer.ConcatenateNDParameters.axis.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25746419C@<X0>(_BYTE *a1@<X8>)
{
  result = NeuralNetwork.Layer.ConcatenateNDParameters.interleaveInputs.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2574641F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_ConcatNDLayerParams(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_25746423C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_ConcatNDLayerParams(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_257464288@<X0>(uint64_t *a1@<X8>)
{
  result = VisionFeaturePrintKind.SceneParameters.version.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2574642DC@<X0>(uint64_t *a1@<X8>)
{
  result = VisionFeaturePrintKind.ObjectParameters.version.getter();
  *a1 = result;
  return result;
}

uint64_t sub_257464330@<X0>(uint64_t *a1@<X8>)
{
  result = VisionFeaturePrintKind.ObjectParameters.outputs.getter();
  *a1 = result;
  return result;
}

uint64_t sub_257464360()
{
  v1 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Scene(v1);
  v2 = OUTLINED_FUNCTION_72_0();

  return __swift_getEnumTagSinglePayload(v2, v0, v3);
}

uint64_t sub_25746439C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Scene(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_2574643D4()
{
  v1 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Objects(v1);
  v2 = OUTLINED_FUNCTION_72_0();

  return __swift_getEnumTagSinglePayload(v2, v0, v3);
}

uint64_t sub_257464410()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Objects(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257464448(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_GRULayerParams(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_257464490(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_GRULayerParams(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_257464578@<X0>(uint64_t *a1@<X8>)
{
  result = MLProgram.Value.documentation.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2574645D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_MILSpec_Value(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_257464620(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_MILSpec_Value(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

unint64_t sub_25746466C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6_31(a1);
  result = sub_257720514(v2, v3);
  *v1 = result;
  return result;
}

unint64_t sub_257464694(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6_31(a1);
  result = sub_257720640(v2, v4, *v3);
  *v1 = result;
  *(v1 + 8) = v6 & 1;
  return result;
}

uint64_t sub_25746470C()
{
  OUTLINED_FUNCTION_220();
  result = SparseSupportVectorCollection.vectors.getter();
  *v0 = result;
  return result;
}

uint64_t sub_257464774()
{
  OUTLINED_FUNCTION_220();
  result = SparseSupportVector.nodes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2574647A0()
{
  OUTLINED_FUNCTION_220();
  result = SparseSupportVector.SparseNode.index.getter();
  *v0 = result;
  return result;
}

uint64_t sub_257464840()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_SparseSupportVectors(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257464878()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_SparseSupportVectors(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_2574648B0()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_SparseVector(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_2574648E8()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_SparseVector(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257464920()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_SparseNode(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257464958()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_SparseNode(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

unint64_t sub_2574649A0@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>, uint64_t a3@<X1>)
{
  result = sub_2577204D8(*a1, a3);
  *a2 = result;
  return result;
}

unint64_t sub_2574649CC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_257720590(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_257464A5C@<X0>(uint64_t *a1@<X8>)
{
  result = SupportVectorCoefficients.values.getter();
  *a1 = result;
  return result;
}

uint64_t sub_257464AD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Coefficients(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_257464B18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Coefficients(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_257464B6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_FlattenLayerParams(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_257464BB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_FlattenLayerParams(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_257464C28@<X0>(uint64_t *a1@<X8>)
{
  result = GazetteerConfiguration.language.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_257464C58@<X0>(uint64_t *a1@<X8>)
{
  result = GazetteerConfiguration.modelParameterData.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_257464C90@<X0>(uint64_t *a1@<X8>)
{
  result = GazetteerConfiguration.stringClassLabels.getter();
  *a1 = result;
  return result;
}

uint64_t sub_257464CC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_CoreMLModels_Gazetteer(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_257464D08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_CoreMLModels_Gazetteer(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_257464F34()
{
  OUTLINED_FUNCTION_220();
  result = NeuralNetwork.Layer.NonMaximumSuppressionParameters.maximumBoxCount.getter();
  *v0 = result;
  return result;
}

uint64_t sub_257464F84()
{
  OUTLINED_FUNCTION_220();
  result = NeuralNetwork.Layer.NonMaximumSuppressionParameters.perClassSuppression.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_257464FD8()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_EmbeddingLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257465010()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_EmbeddingLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257465048()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_EmbeddingNDLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257465080()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_EmbeddingNDLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_2574650B8()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_BiasLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_2574650F0()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_BiasLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257465128()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_TopKLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257465160()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_TopKLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257465198()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_CustomLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_2574651D0()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_CustomLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257465208()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_NonMaximumSuppressionLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257465240()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_NonMaximumSuppressionLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257465278()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_OneHotLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_2574652B0()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_OneHotLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_2574652E8()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ArgSortLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257465320()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ArgSortLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257465358()
{
  OUTLINED_FUNCTION_220();
  result = NeuralNetwork.Layer.SplitParameters.outputCount.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2574653A8()
{
  OUTLINED_FUNCTION_220();
  result = NeuralNetwork.Layer.SplitNDParameters.axis.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2574653F8()
{
  OUTLINED_FUNCTION_220();
  result = NeuralNetwork.Layer.SplitNDParameters.splitCount.getter();
  *v0 = result;
  return result;
}

uint64_t sub_257465448()
{
  OUTLINED_FUNCTION_220();
  result = NeuralNetwork.Layer.SplitNDParameters.splitSizes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_257465474()
{
  v2 = OUTLINED_FUNCTION_0_0();
  v3 = type metadata accessor for Proto_SplitLayerParams(v2);

  return __swift_getEnumTagSinglePayload(v1, v0, v3);
}

uint64_t sub_2574654B4()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_SplitLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_2574654EC()
{
  v2 = OUTLINED_FUNCTION_0_0();
  v3 = type metadata accessor for Proto_SplitNDLayerParams(v2);

  return __swift_getEnumTagSinglePayload(v1, v0, v3);
}

uint64_t sub_25746552C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_SplitNDLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257465654(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for Proto_SequenceFeatureType(0);
    v11 = &a1[*(a3 + 20)];

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

_BYTE *sub_2574656DC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for Proto_SequenceFeatureType(0);
    v8 = &v5[*(a4 + 20)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_257465780(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for Proto_DictionaryFeatureType(0);
    v11 = &a1[*(a3 + 20)];

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

_BYTE *sub_257465808(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for Proto_DictionaryFeatureType(0);
    v8 = &v5[*(a4 + 20)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_257465884()
{
  OUTLINED_FUNCTION_220();
  result = NeuralNetwork.Layer.ConvolutionParameters.outputChannelCount.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2574658D4()
{
  OUTLINED_FUNCTION_220();
  result = NeuralNetwork.Layer.ConvolutionParameters.kernelChannelCount.getter();
  *v0 = result;
  return result;
}

uint64_t sub_257465924()
{
  OUTLINED_FUNCTION_220();
  result = NeuralNetwork.Layer.ConvolutionParameters.groupCount.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2574659F4()
{
  OUTLINED_FUNCTION_220();
  result = NeuralNetwork.Layer.ConvolutionParameters.isDeconvolution.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_257465AD0()
{
  OUTLINED_FUNCTION_220();
  result = NeuralNetwork.Layer.ConvolutionParameters.hasBias.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_257465B24()
{
  v2 = OUTLINED_FUNCTION_0_0();
  v3 = type metadata accessor for Proto_ConvolutionLayerParams(v2);

  return __swift_getEnumTagSinglePayload(v1, v0, v3);
}

uint64_t sub_257465B64()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ConvolutionLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257465B9C()
{
  v2 = OUTLINED_FUNCTION_0_0();
  v3 = type metadata accessor for Proto_Convolution3DLayerParams(v2);

  return __swift_getEnumTagSinglePayload(v1, v0, v3);
}

uint64_t sub_257465BDC()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_Convolution3DLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257465C1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_GeluLayerParams(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_257465C64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_GeluLayerParams(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_257465CD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Identity(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_257465D20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Identity(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_257465DC4@<X0>(uint64_t *a1@<X8>)
{
  result = LinearClassifierConfiguration.ClassEncoding.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_257465DEC@<X0>(uint64_t *a1@<X8>)
{
  result = LinearClassifierConfiguration.weights.getter();
  *a1 = result;
  return result;
}

uint64_t sub_257465E1C@<X0>(uint64_t *a1@<X8>)
{
  result = LinearClassifierConfiguration.offset.getter();
  *a1 = result;
  return result;
}

uint64_t sub_257465E64(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_GLMClassifier(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_257465EA8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_GLMClassifier(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_257465F70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_MultiplyLayerParams(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_257465FB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_MultiplyLayerParams(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2574661DC@<X0>(uint64_t *a1@<X8>)
{
  result = SizeRange.lowerBound.getter();
  *a1 = result;
  return result;
}

uint64_t sub_257466230@<X0>(uint64_t a1@<X8>)
{
  result = SizeRange.upperBound.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_257466268(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_SizeRange(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2574662B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_SizeRange(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2574662FC()
{
  OUTLINED_FUNCTION_220();
  v0 = NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.transposeLeft.getter();
  return OUTLINED_FUNCTION_27_13(v0);
}

uint64_t sub_257466348()
{
  OUTLINED_FUNCTION_220();
  v0 = NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.transposeRight.getter();
  return OUTLINED_FUNCTION_27_13(v0);
}

uint64_t sub_257466394()
{
  OUTLINED_FUNCTION_220();
  result = NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.weightMatrixFirstDimension.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2574663E4()
{
  OUTLINED_FUNCTION_220();
  result = NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.weightMatrixSecondDimension.getter();
  *v0 = result;
  return result;
}

uint64_t sub_25746645C()
{
  OUTLINED_FUNCTION_220();
  v0 = NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.hasBias.getter();
  return OUTLINED_FUNCTION_27_13(v0);
}

uint64_t sub_2574664A8()
{
  OUTLINED_FUNCTION_220();
  v0 = NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.int8DynamicQuantize.getter();
  return OUTLINED_FUNCTION_27_13(v0);
}

uint64_t sub_2574664F4(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_BatchedMatMulLayerParams(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_257466538(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_BatchedMatMulLayerParams(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_257466580()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_RandomNormalLikeLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_2574665B8()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_RandomNormalLikeLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_2574665F0()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_RandomNormalStaticLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257466628()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_RandomNormalStaticLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257466660()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_RandomNormalDynamicLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257466698()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_RandomNormalDynamicLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_2574666D0()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_RandomUniformLikeLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257466708()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_RandomUniformLikeLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257466740()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_RandomUniformStaticLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257466778()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_RandomUniformStaticLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_2574667B0()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_RandomUniformDynamicLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_2574667E8()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_RandomUniformDynamicLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257466820()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_RandomBernoulliLikeLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257466858()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_RandomBernoulliLikeLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257466890()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_RandomBernoulliStaticLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_2574668C8()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_RandomBernoulliStaticLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257466900()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_RandomBernoulliDynamicLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257466938()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_RandomBernoulliDynamicLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257466970()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_CategoricalDistributionLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_2574669A8()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_CategoricalDistributionLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_2574669E0()
{
  OUTLINED_FUNCTION_220();
  result = TreeEnsemble.TreeNode.treeID.getter();
  *v0 = result;
  return result;
}

uint64_t sub_257466A2C()
{
  OUTLINED_FUNCTION_220();
  result = TreeEnsemble.TreeNode.nodeID.getter();
  *v0 = result;
  return result;
}

uint64_t sub_257466A80()
{
  OUTLINED_FUNCTION_220();
  result = TreeEnsemble.TreeNode.featureIndex.getter();
  *v0 = result;
  return result;
}

uint64_t sub_257466B1C()
{
  OUTLINED_FUNCTION_220();
  result = TreeEnsemble.TreeNode.trueChildNodeID.getter();
  *v0 = result;
  return result;
}

uint64_t sub_257466B68()
{
  OUTLINED_FUNCTION_220();
  result = TreeEnsemble.TreeNode.falseChildNodeID.getter();
  *v0 = result;
  return result;
}

uint64_t sub_257466BB4()
{
  OUTLINED_FUNCTION_220();
  result = TreeEnsemble.TreeNode.missingValueFollowsTrueBranch.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_257466C08()
{
  OUTLINED_FUNCTION_220();
  result = TreeEnsemble.TreeNode.leafValue.getter();
  *v0 = result;
  return result;
}

uint64_t sub_257466C84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_TreeEnsembleParameters.TreeNode(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_257466CCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_TreeEnsembleParameters.TreeNode(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_257466D70@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = NeuralNetwork.Layer.ConstantParameters.shape.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_257466E40()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_LoadConstantLayerParams(v0);
  v1 = OUTLINED_FUNCTION_44_1();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257466E7C()
{
  v1 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_LoadConstantLayerParams(v1);
  v2 = OUTLINED_FUNCTION_44_1();

  return __swift_storeEnumTagSinglePayload(v2, v3, v0, v4);
}

uint64_t sub_257466EBC()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_LoadConstantNDLayerParams(v0);
  v1 = OUTLINED_FUNCTION_44_1();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257466EF8()
{
  v1 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_LoadConstantNDLayerParams(v1);
  v2 = OUTLINED_FUNCTION_44_1();

  return __swift_storeEnumTagSinglePayload(v2, v3, v0, v4);
}

uint64_t sub_257466F40(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for Proto_GLMRegressor.PostEvaluationTransform(uint64_t result, int a2, int a3)
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

uint64_t sub_257466F90(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_257466FC8(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_257466FD8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= a2)
  {
    v4 = __OFSUB__(result, a3);
    v3 = result - a3 < 0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  if (v3 == v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_257467018(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

BOOL sub_25746703C@<W0>(_BOOL8 *a1@<X8>)
{
  result = sub_2574A5B1C(*v1, *(v1 + 8));
  *a1 = result;
  return result;
}

uint64_t sub_25746706C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_257466FC8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_257467084(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_257467018(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_2574670D4(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_25745B0A8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t NeuralNetwork.ValidPaddingParameters.propertyDescriptions.getter()
{
  v0 = type metadata accessor for NeuralNetwork.Border(0);
  v1 = OUTLINED_FUNCTION_13(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v4 = v3 - v2;
  NeuralNetwork.ValidPaddingParameters.amount.getter(v3 - v2);
  NeuralNetwork.Border.leadingHeight.getter();
  OUTLINED_FUNCTION_37();
  if (v4)
  {
    OUTLINED_FUNCTION_41();
    NeuralNetwork.Border.leadingHeight.getter();
    OUTLINED_FUNCTION_37();
    v5 = sub_257743974();
    v7 = v6;
    sub_257469388();
    v9 = v8;
    if (*(v8 + 16) >= *(v8 + 24) >> 1)
    {
      OUTLINED_FUNCTION_27();
      v9 = v28;
    }

    OUTLINED_FUNCTION_23();
    v11[4] = 0xD000000000000012;
    v11[5] = v10;
    v11[6] = v5;
    v11[7] = v7;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_41();
  NeuralNetwork.Border.trailingHeight.getter();
  OUTLINED_FUNCTION_37();
  if (v4)
  {
    OUTLINED_FUNCTION_41();
    NeuralNetwork.Border.trailingHeight.getter();
    OUTLINED_FUNCTION_37();
    v12 = sub_257743974();
    v14 = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_26();
      v9 = v29;
    }

    if (*(v9 + 16) >= *(v9 + 24) >> 1)
    {
      OUTLINED_FUNCTION_27();
      v9 = v30;
    }

    OUTLINED_FUNCTION_23();
    v16[4] = 0xD000000000000013;
    v16[5] = v15;
    v16[6] = v12;
    v16[7] = v14;
  }

  OUTLINED_FUNCTION_41();
  NeuralNetwork.Border.leadingWidth.getter();
  OUTLINED_FUNCTION_37();
  if (v4)
  {
    OUTLINED_FUNCTION_41();
    NeuralNetwork.Border.leadingWidth.getter();
    OUTLINED_FUNCTION_37();
    v17 = sub_257743974();
    v19 = v18;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_26();
      v9 = v31;
    }

    if (*(v9 + 16) >= *(v9 + 24) >> 1)
    {
      OUTLINED_FUNCTION_27();
      v9 = v32;
    }

    OUTLINED_FUNCTION_23();
    v21[4] = 0xD000000000000011;
    v21[5] = v20;
    v21[6] = v17;
    v21[7] = v19;
  }

  OUTLINED_FUNCTION_41();
  NeuralNetwork.Border.trailingWidth.getter();
  OUTLINED_FUNCTION_37();
  if (v4)
  {
    OUTLINED_FUNCTION_41();
    NeuralNetwork.Border.trailingWidth.getter();
    sub_257467D94(v4);
    v22 = sub_257743974();
    v24 = v23;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_26();
      v9 = v33;
    }

    v25 = *(v9 + 16);
    if (v25 >= *(v9 + 24) >> 1)
    {
      sub_257469388();
      v9 = v34;
    }

    *(v9 + 16) = v25 + 1;
    v26 = (v9 + 32 * v25);
    v26[4] = 0xD000000000000012;
    v26[5] = 0x80000002577797D0;
    v26[6] = v22;
    v26[7] = v24;
  }

  return v9;
}

uint64_t sub_25746745C(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for NeuralNetwork.Border(0);
  v3 = OUTLINED_FUNCTION_13(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  valid = NeuralNetwork.ValidPaddingParameters.amount.getter(v5 - v4);
  v8 = a1(valid);
  sub_257467D94(v6);
  return v8;
}

uint64_t NeuralNetwork.ValidPaddingParameters.amount.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AC8, &unk_257744010);
  OUTLINED_FUNCTION_13(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_38();
  v7 = type metadata accessor for Proto_BorderAmounts(v6);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v11 = (v10 - v9);
  valid = type metadata accessor for Proto_ValidPadding(0);
  sub_257469494(v1 + *(valid + 20), v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v7) == 1)
  {
    *v11 = MEMORY[0x277D84F90];
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    if (__swift_getEnumTagSinglePayload(v2, 1, v7) != 1)
    {
      sub_2574695E4(v2, &qword_27F879AC8, &unk_257744010);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2();
    sub_257469588(v2, v11);
  }

  OUTLINED_FUNCTION_2();
  return sub_257469588(v11, a1);
}

uint64_t sub_257467650(uint64_t a1)
{
  v2 = type metadata accessor for NeuralNetwork.Border(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257469688(a1, v4);
  return NeuralNetwork.ValidPaddingParameters.amount.setter(v4);
}

uint64_t NeuralNetwork.ValidPaddingParameters.amount.setter(uint64_t a1)
{
  v4 = type metadata accessor for Proto_BorderAmounts(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_19();
  sub_257469588(a1, v2);
  v6 = *(type metadata accessor for Proto_ValidPadding(0) + 20);
  sub_2574695E4(v1 + v6, &qword_27F879AC8, &unk_257744010);
  sub_257469588(v2, v1 + v6);
  OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v4);
}

void (*NeuralNetwork.ValidPaddingParameters.amount.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AC8, &unk_257744010);
  OUTLINED_FUNCTION_13(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Proto_BorderAmounts(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_4();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = type metadata accessor for NeuralNetwork.Border(0);
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  v3[5] = __swift_coroFrameAllocStub(v13);
  v14 = __swift_coroFrameAllocStub(v13);
  v3[6] = v14;
  v15 = *(type metadata accessor for Proto_ValidPadding(0) + 20);
  *(v3 + 14) = v15;
  sub_257469494(v1 + v15, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    *v10 = MEMORY[0x277D84F90];
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
    {
      sub_2574695E4(v6, &qword_27F879AC8, &unk_257744010);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2();
    sub_257469588(v6, v10);
  }

  OUTLINED_FUNCTION_2();
  sub_257469588(v10, v14);
  return sub_257467970;
}

void sub_257467970(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_31();
  v3 = *(*v2 + 14);
  v4 = (*v2)[5];
  v5 = (*v2)[6];
  v6 = (*v2)[3];
  v7 = (*v2)[4];
  v8 = (*v2)[1];
  v9 = (*v2)[2];
  v10 = **v2;
  if (v11)
  {
    sub_257469688((*v2)[6], v4);
    OUTLINED_FUNCTION_18();
    sub_257469588(v4, v6);
    sub_2574695E4(v10 + v3, &qword_27F879AC8, &unk_257744010);
    sub_257469588(v6, v10 + v3);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v9);
    sub_257467D94(v5);
  }

  else
  {
    OUTLINED_FUNCTION_18();
    sub_257469588(v5, v6);
    sub_2574695E4(v10 + v3, &qword_27F879AC8, &unk_257744010);
    sub_257469588(v6, v10 + v3);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v9);
  }

  free(v5);
  free(v4);
  free(v7);
  free(v6);
  free(v8);
  OUTLINED_FUNCTION_35();

  free(v18);
}

uint64_t sub_257467AB8@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.ValidPaddingParameters.leadingHeight.getter();
  *a1 = result;
  return result;
}

void NeuralNetwork.ValidPaddingParameters.leadingHeight.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_31();
  v9 = v8;
  v10 = type metadata accessor for Proto_BorderAmounts(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v12 = OUTLINED_FUNCTION_38();
  v13 = type metadata accessor for NeuralNetwork.Border.EdgeSizes(v12);
  v14 = OUTLINED_FUNCTION_13(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_11();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_39();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AD0, &qword_257777FB0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  v20 = OUTLINED_FUNCTION_14();
  v21 = type metadata accessor for NeuralNetwork.Border(v20);
  v22 = OUTLINED_FUNCTION_13(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_32_0();
  NeuralNetwork.ValidPaddingParameters.amount.getter(v7);
  NeuralNetwork.Border.extent.getter(v6);
  if (v9 < 0)
  {
    __break(1u);
  }

  else
  {
    *v6 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AD8, &unk_257744020);
    v23 = OUTLINED_FUNCTION_30();
    v24 = type metadata accessor for Proto_BorderAmounts.EdgeSizes(v23);
    OUTLINED_FUNCTION_24(v24);
    v25 = v3;
    v27 = *(v26 + 72);
    OUTLINED_FUNCTION_6();
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_257743FF0;
    OUTLINED_FUNCTION_1();
    sub_257469688(v6, v4);
    v29 = OUTLINED_FUNCTION_5();
    sub_257469588(v29, v28 + v10);
    OUTLINED_FUNCTION_42();
    sub_257469588(v17, v28 + v10 + v27);
    sub_2574695E4(v6, &qword_27F879AD0, &qword_257777FB0);

    *v7 = v28;
    OUTLINED_FUNCTION_0();
    sub_257469588(v7, v5);
    v30 = *(type metadata accessor for Proto_ValidPadding(0) + 20);
    sub_2574695E4(v25 + v30, &qword_27F879AC8, &unk_257744010);
    sub_257469588(v5, v25 + v30);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
    OUTLINED_FUNCTION_35();
  }
}

uint64_t sub_257467D94(uint64_t a1)
{
  v2 = type metadata accessor for NeuralNetwork.Border(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NeuralNetwork.ValidPaddingParameters.leadingHeight.modify(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_36(a1);
  OUTLINED_FUNCTION_13(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  OUTLINED_FUNCTION_34(v5);
  NeuralNetwork.Border.leadingHeight.getter();
  OUTLINED_FUNCTION_37();
  *v1 = v2;
  return OUTLINED_FUNCTION_43();
}

uint64_t sub_257467E74@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.ValidPaddingParameters.trailingHeight.getter();
  *a1 = result;
  return result;
}

void NeuralNetwork.ValidPaddingParameters.trailingHeight.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_31();
  v9 = v8;
  v10 = type metadata accessor for Proto_BorderAmounts(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v12 = OUTLINED_FUNCTION_38();
  v13 = type metadata accessor for NeuralNetwork.Border.EdgeSizes(v12);
  v14 = OUTLINED_FUNCTION_13(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_11();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_39();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AD0, &qword_257777FB0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  v20 = OUTLINED_FUNCTION_14();
  v21 = type metadata accessor for NeuralNetwork.Border(v20);
  v22 = OUTLINED_FUNCTION_13(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_32_0();
  NeuralNetwork.ValidPaddingParameters.amount.getter(v7);
  NeuralNetwork.Border.extent.getter(v6);
  if (v9 < 0)
  {
    __break(1u);
  }

  else
  {
    v6[1] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AD8, &unk_257744020);
    v23 = OUTLINED_FUNCTION_30();
    v24 = type metadata accessor for Proto_BorderAmounts.EdgeSizes(v23);
    OUTLINED_FUNCTION_24(v24);
    v25 = v3;
    v27 = *(v26 + 72);
    OUTLINED_FUNCTION_6();
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_257743FF0;
    OUTLINED_FUNCTION_1();
    sub_257469688(v6, v4);
    v29 = OUTLINED_FUNCTION_5();
    sub_257469588(v29, v28 + v10);
    OUTLINED_FUNCTION_42();
    sub_257469588(v17, v28 + v10 + v27);
    sub_2574695E4(v6, &qword_27F879AD0, &qword_257777FB0);

    *v7 = v28;
    OUTLINED_FUNCTION_0();
    sub_257469588(v7, v5);
    v30 = *(type metadata accessor for Proto_ValidPadding(0) + 20);
    sub_2574695E4(v25 + v30, &qword_27F879AC8, &unk_257744010);
    sub_257469588(v5, v25 + v30);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
    OUTLINED_FUNCTION_35();
  }
}

uint64_t NeuralNetwork.ValidPaddingParameters.trailingHeight.modify(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_36(a1);
  OUTLINED_FUNCTION_13(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  OUTLINED_FUNCTION_34(v5);
  NeuralNetwork.Border.trailingHeight.getter();
  OUTLINED_FUNCTION_37();
  *v1 = v2;
  return OUTLINED_FUNCTION_43();
}

uint64_t sub_2574681D4@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.ValidPaddingParameters.leadingWidth.getter();
  *a1 = result;
  return result;
}

void NeuralNetwork.ValidPaddingParameters.leadingWidth.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_31();
  v8 = v7;
  v9 = type metadata accessor for Proto_BorderAmounts(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  v11 = type metadata accessor for NeuralNetwork.Border.EdgeSizes(0);
  v12 = OUTLINED_FUNCTION_13(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AD0, &qword_257777FB0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  v21 = OUTLINED_FUNCTION_45();
  v22 = OUTLINED_FUNCTION_13(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_32_0();
  NeuralNetwork.ValidPaddingParameters.amount.getter(v6);
  NeuralNetwork.Border.extent.getter(v5);
  if (v8 < 0)
  {
    __break(1u);
  }

  else
  {
    v37 = v4;
    v23 = *(v19 + 36);
    *(v5 + v23) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AD8, &unk_257744020);
    v24 = OUTLINED_FUNCTION_30();
    v25 = type metadata accessor for Proto_BorderAmounts.EdgeSizes(v24);
    OUTLINED_FUNCTION_24(v25);
    v36 = v3;
    v27 = *(v26 + 72);
    OUTLINED_FUNCTION_6();
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_257743FF0;
    OUTLINED_FUNCTION_17();
    sub_257469688(v5, v18);
    sub_257469588(v18, v28 + v9);
    sub_257469688(v5 + v23, v15);
    sub_257469588(v15, v28 + v9 + v27);
    sub_2574695E4(v5, &qword_27F879AD0, &qword_257777FB0);

    *v6 = v28;
    OUTLINED_FUNCTION_0();
    v29 = v37;
    sub_257469588(v6, v37);
    v30 = *(type metadata accessor for Proto_ValidPadding(0) + 20);
    v31 = v36;
    sub_2574695E4(v36 + v30, &qword_27F879AC8, &unk_257744010);
    sub_257469588(v29, v31 + v30);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v38);
    OUTLINED_FUNCTION_35();
  }
}

uint64_t NeuralNetwork.ValidPaddingParameters.leadingWidth.modify(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_36(a1);
  OUTLINED_FUNCTION_13(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  OUTLINED_FUNCTION_34(v5);
  NeuralNetwork.Border.leadingWidth.getter();
  OUTLINED_FUNCTION_37();
  *v1 = v2;
  return OUTLINED_FUNCTION_43();
}

uint64_t sub_257468560@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.ValidPaddingParameters.trailingWidth.getter();
  *a1 = result;
  return result;
}

void NeuralNetwork.ValidPaddingParameters.trailingWidth.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_31();
  v8 = v3;
  v10 = v9;
  v11 = type metadata accessor for Proto_BorderAmounts(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v13 = OUTLINED_FUNCTION_14();
  v14 = type metadata accessor for NeuralNetwork.Border.EdgeSizes(v13);
  v15 = OUTLINED_FUNCTION_13(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_11();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_39();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AD0, &qword_257777FB0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v21);
  v22 = OUTLINED_FUNCTION_45();
  v23 = OUTLINED_FUNCTION_13(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_32_0();
  NeuralNetwork.ValidPaddingParameters.amount.getter(v7);
  NeuralNetwork.Border.extent.getter(v6);
  if (v10 < 0)
  {
    __break(1u);
  }

  else
  {
    v24 = v6 + *(v20 + 36);
    *(v24 + 8) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AD8, &unk_257744020);
    v25 = type metadata accessor for Proto_BorderAmounts.EdgeSizes(0);
    OUTLINED_FUNCTION_24(v25);
    v34 = v8;
    v27 = *(v26 + 72);
    OUTLINED_FUNCTION_6();
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_257743FF0;
    OUTLINED_FUNCTION_1();
    sub_257469688(v6, v4);
    v29 = OUTLINED_FUNCTION_5();
    sub_257469588(v29, v28 + v11);
    sub_257469688(v24, v18);
    sub_257469588(v18, v28 + v11 + v27);
    sub_2574695E4(v6, &qword_27F879AD0, &qword_257777FB0);

    *v7 = v28;
    OUTLINED_FUNCTION_0();
    sub_257469588(v7, v5);
    v30 = *(type metadata accessor for Proto_ValidPadding(0) + 20);
    sub_2574695E4(v34 + v30, &qword_27F879AC8, &unk_257744010);
    sub_257469588(v5, v34 + v30);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v35);
    OUTLINED_FUNCTION_35();
  }
}

uint64_t NeuralNetwork.ValidPaddingParameters.trailingWidth.modify(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_36(a1);
  OUTLINED_FUNCTION_13(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  OUTLINED_FUNCTION_34(v5);
  NeuralNetwork.Border.trailingWidth.getter();
  OUTLINED_FUNCTION_37();
  *v1 = v2;
  return OUTLINED_FUNCTION_43();
}

void sub_2574688D0(void *a1, uint64_t a2, void (*a3)(void))
{
  v3 = a1[2];
  (a3)(*a1, a2);

  free(v3);
}

void NeuralNetwork.ValidPaddingParameters.init()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_31();
  v5 = v4;
  v6 = type metadata accessor for Proto_BorderAmounts(0);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v41 = v8 - v7;
  v9 = type metadata accessor for NeuralNetwork.Border.EdgeSizes(0);
  v10 = OUTLINED_FUNCTION_13(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11();
  v40 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AD0, &qword_257777FB0) - 8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_32_0();
  v18 = type metadata accessor for NeuralNetwork.Border(0);
  v19 = OUTLINED_FUNCTION_13(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  v22 = (v21 - v20);
  v38 = v5;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v23 = *(type metadata accessor for Proto_ValidPadding(0) + 20);
  OUTLINED_FUNCTION_44();
  v39 = v6;
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v6);
  *v22 = MEMORY[0x277D84F90];
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v27 = type metadata accessor for Proto_BorderAmounts.EdgeSizes(0);
  *v3 = 0;
  v3[1] = 0;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v3 = 0;
  v3[1] = 0;
  v28 = (v3 + *(v16 + 44));
  *v28 = 0;
  v28[1] = 0;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v28 = 0;
  v28[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AD8, &unk_257744020);
  v29 = *(*(v27 - 8) + 72);
  v30 = (*(*(v27 - 8) + 80) + 32) & ~*(*(v27 - 8) + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_257743FF0;
  OUTLINED_FUNCTION_1();
  sub_257469688(v3, v15);
  OUTLINED_FUNCTION_16();
  sub_257469588(v15, v31 + v30);
  v32 = v40;
  sub_257469688(v28, v40);
  sub_257469588(v32, v31 + v30 + v29);
  sub_2574695E4(v3, &qword_27F879AD0, &qword_257777FB0);
  *v22 = v31;
  OUTLINED_FUNCTION_0();
  v33 = v41;
  sub_257469588(v22, v41);
  v34 = v38;
  sub_2574695E4(v38 + v23, &qword_27F879AC8, &unk_257744010);
  sub_257469588(v33, v34 + v23);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v39);
  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetwork.ValidPaddingParameters.init(amount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Proto_BorderAmounts(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v7 = *(type metadata accessor for Proto_ValidPadding(0) + 20);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v5);
  OUTLINED_FUNCTION_19();
  sub_257469588(a1, v2);
  sub_2574695E4(a2 + v7, &qword_27F879AC8, &unk_257744010);
  sub_257469588(v2, a2 + v7);
  OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v5);
}

void NeuralNetwork.ValidPaddingParameters.init(leadingHeight:trailingHeight:leadingWidth:trailingWidth:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_31();
  v55 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = type metadata accessor for Proto_BorderAmounts(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  v16 = type metadata accessor for NeuralNetwork.Border.EdgeSizes(0);
  v17 = OUTLINED_FUNCTION_13(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_11();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v53 = &v50 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AD0, &qword_257777FB0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v24);
  v25 = OUTLINED_FUNCTION_14();
  v26 = type metadata accessor for NeuralNetwork.Border(v25);
  v27 = OUTLINED_FUNCTION_13(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3();
  v30 = (v29 - v28);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v54 = *(type metadata accessor for Proto_ValidPadding(0) + 20);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v14);
  *v30 = MEMORY[0x277D84F90];
  v52 = v30;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v34 = type metadata accessor for Proto_BorderAmounts.EdgeSizes(0);
  *v4 = 0;
  v4[1] = 0;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  if (v11 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  *v4 = v11;
  if (v9 < 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4[1] = v9;
  v35 = (v4 + *(v23 + 36));
  *v35 = 0;
  v35[1] = 0;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  if (v7 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *v35 = v7;
  if ((v55 & 0x8000000000000000) == 0)
  {
    v35[1] = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AD8, &unk_257744020);
    v36 = *(v34 - 8);
    v51 = v3;
    v37 = v20;
    v38 = v13;
    v39 = *(v36 + 72);
    v40 = *(v36 + 80);
    v55 = v14;
    v41 = (v40 + 32) & ~v40;
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_257743FF0;
    OUTLINED_FUNCTION_17();
    v43 = v53;
    sub_257469688(v4, v53);
    OUTLINED_FUNCTION_16();
    sub_257469588(v43, v42 + v41);
    sub_257469688(v35, v37);
    sub_257469588(v37, v42 + v41 + v39);
    sub_2574695E4(v4, &qword_27F879AD0, &qword_257777FB0);
    v44 = v51;
    *v52 = v42;
    OUTLINED_FUNCTION_0();
    sub_257469588(v45, v44);
    v46 = v54;
    sub_2574695E4(v38 + v54, &qword_27F879AC8, &unk_257744010);
    sub_257469588(v44, v38 + v46);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v55);
    OUTLINED_FUNCTION_35();
    return;
  }

LABEL_9:
  __break(1u);
}

void NeuralNetwork.ValidPaddingParameters.customMirror.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_31();
  v6 = v3;
  v24 = sub_257743A84();
  v7 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_14();
  v11 = type metadata accessor for NeuralNetwork.Border(v10);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  type metadata accessor for NeuralNetwork.ValidPaddingParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_32_0();
  sub_257469688(v6, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_257744000;
  *(v17 + 32) = 0x746E756F6D61;
  *(v17 + 40) = 0xE600000000000000;
  *(v17 + 72) = v11;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v17 + 48));
  NeuralNetwork.ValidPaddingParameters.amount.getter(boxed_opaque_existential_0);
  strcpy((v17 + 80), "leadingHeight");
  *(v17 + 94) = -4864;
  NeuralNetwork.ValidPaddingParameters.amount.getter(v15);
  NeuralNetwork.Border.leadingHeight.getter();
  OUTLINED_FUNCTION_47();
  v19 = MEMORY[0x277D83B88];
  *(v17 + 96) = v15;
  *(v17 + 120) = v19;
  strcpy((v17 + 128), "trailingHeight");
  *(v17 + 143) = -18;
  NeuralNetwork.ValidPaddingParameters.amount.getter(v15);
  NeuralNetwork.Border.trailingHeight.getter();
  OUTLINED_FUNCTION_47();
  *(v17 + 144) = v15;
  *(v17 + 168) = v19;
  strcpy((v17 + 176), "leadingWidth");
  *(v17 + 189) = 0;
  *(v17 + 190) = -5120;
  NeuralNetwork.ValidPaddingParameters.amount.getter(v15);
  NeuralNetwork.Border.leadingWidth.getter();
  OUTLINED_FUNCTION_47();
  *(v17 + 192) = v15;
  *(v17 + 216) = v19;
  strcpy((v17 + 224), "trailingWidth");
  *(v17 + 238) = -4864;
  NeuralNetwork.ValidPaddingParameters.amount.getter(v15);
  NeuralNetwork.Border.trailingWidth.getter();
  OUTLINED_FUNCTION_47();
  *(v17 + 264) = v19;
  *(v17 + 240) = v15;
  sub_257743A74();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  (*(v7 + 104))(v4, *MEMORY[0x277D84C38], v24);
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

void sub_257469388()
{
  OUTLINED_FUNCTION_25();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_8(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_9();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
      v7 = OUTLINED_FUNCTION_46(v6);
      OUTLINED_FUNCTION_15(v7);
      OUTLINED_FUNCTION_22(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_10();
        sub_2574833A4(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B60, &unk_257744120);
    OUTLINED_FUNCTION_28(v12, v13, v14, v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_20();
  if (!v4)
  {
    OUTLINED_FUNCTION_7();
    goto LABEL_6;
  }

  __break(1u);
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

uint64_t sub_257469494(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AC8, &unk_257744010);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_257469588(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_2574695E4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t type metadata accessor for NeuralNetwork.ValidPaddingParameters(uint64_t a1)
{
  result = qword_27F879AF8;
  if (!qword_27F879AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257469688(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

unint64_t sub_257469748()
{
  result = qword_27F879AF0;
  if (!qword_27F879AF0)
  {
    type metadata accessor for Proto_ValidPadding(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F879AF0);
  }

  return result;
}

uint64_t sub_2574697C8(uint64_t a1)
{
  result = type metadata accessor for Proto_ValidPadding(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_257469834()
{
  OUTLINED_FUNCTION_25();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_8(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_9();
    if (v3)
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B20, &unk_2577440E0);
      v8 = OUTLINED_FUNCTION_46(v7);
      OUTLINED_FUNCTION_15(v8);
      OUTLINED_FUNCTION_22(v9);
      if (v1)
      {
LABEL_8:
        v10 = OUTLINED_FUNCTION_10();
        sub_2574833F4(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy((v3 + 32), (v0 + 32), 8 * v2);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_20();
  if (!v5)
  {
    OUTLINED_FUNCTION_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25746996C()
{
  OUTLINED_FUNCTION_25();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_8(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_9();
    if (v2)
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B08, &qword_2577440C8);
      v10 = OUTLINED_FUNCTION_33(v9);
      v11 = _swift_stdlib_malloc_size(v10);
      v6 = OUTLINED_FUNCTION_12_0(v11);
      if (v1)
      {
LABEL_8:
        v12 = OUTLINED_FUNCTION_10();
        sub_257483444(v12, v13, v14);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_28(v6, v7, v8, &type metadata for Diagnostic);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_20();
  if (!v4)
  {
    OUTLINED_FUNCTION_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_257469A28()
{
  OUTLINED_FUNCTION_25();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_8(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_9();
    if (v3)
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B18, &qword_257775B90);
      v8 = OUTLINED_FUNCTION_46(v7);
      OUTLINED_FUNCTION_15(v8);
      OUTLINED_FUNCTION_22(v9);
      if (v1)
      {
LABEL_8:
        v10 = OUTLINED_FUNCTION_10();
        sub_257483384(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy((v3 + 32), (v0 + 32), 16 * v2);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_20();
  if (!v5)
  {
    OUTLINED_FUNCTION_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_257469AE0()
{
  OUTLINED_FUNCTION_25();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_8(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_9();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B28, &unk_257773B40);
      v7 = OUTLINED_FUNCTION_33(v6);
      v8 = _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_12_0(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_10();
        sub_257487364(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B30, &unk_2577440F0);
    OUTLINED_FUNCTION_28(v12, v13, v14, v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_20();
  if (!v4)
  {
    OUTLINED_FUNCTION_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_257469BAC()
{
  OUTLINED_FUNCTION_25();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_8(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_9();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B48, &qword_257744390);
      v7 = OUTLINED_FUNCTION_33(v6);
      v8 = _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_12_0(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_10();
        sub_257483444(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B50, &unk_257744110);
    OUTLINED_FUNCTION_28(v12, v13, v14, v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_20();
  if (!v4)
  {
    OUTLINED_FUNCTION_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_257469C78()
{
  OUTLINED_FUNCTION_25();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_8(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_9();
    if (v2)
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B40, &unk_257744100);
      v10 = OUTLINED_FUNCTION_33(v9);
      v11 = _swift_stdlib_malloc_size(v10);
      v6 = OUTLINED_FUNCTION_12_0(v11);
      if (v1)
      {
LABEL_8:
        v12 = OUTLINED_FUNCTION_10();
        sub_25748346C(v12, v13, v14);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_28(v6, v7, v8, &type metadata for PrintNode);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_20();
  if (!v4)
  {
    OUTLINED_FUNCTION_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_257469D34()
{
  OUTLINED_FUNCTION_25();
  if (v3)
  {
    OUTLINED_FUNCTION_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_20();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  v8 = sub_257701778(v7, v4);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B38, &qword_2577448C0) - 8);
  if (v1)
  {
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    sub_257483514(v0 + v10, v7, v8 + v10);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_257469ED4()
{
  OUTLINED_FUNCTION_25();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_8(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_9();
    if (v2)
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
      v10 = OUTLINED_FUNCTION_46(v9);
      OUTLINED_FUNCTION_15(v10);
      OUTLINED_FUNCTION_22(v11);
      if (v1)
      {
LABEL_8:
        v12 = OUTLINED_FUNCTION_10();
        sub_257483384(v12, v13, v14);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_28(v6, v7, v8, MEMORY[0x277D837D0]);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_20();
  if (!v4)
  {
    OUTLINED_FUNCTION_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25746A108(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), void (*a7)(unint64_t, uint64_t, unint64_t))
{
  v10 = a1;
  if (a3)
  {
    OUTLINED_FUNCTION_8();
    if (v12 != v13)
    {
      OUTLINED_FUNCTION_20();
      if (v12)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(a6(0) - 8);
  if (v10)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    a7(a4 + v17, v14, v15 + v17);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t OUTLINED_FUNCTION_12_0(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

void OUTLINED_FUNCTION_26()
{

  sub_257469388();
}

void OUTLINED_FUNCTION_27()
{

  sub_257469388();
}

uint64_t OUTLINED_FUNCTION_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_33(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_34(uint64_t a1)
{
  *(v1 + 16) = a1;

  return NeuralNetwork.ValidPaddingParameters.amount.getter(a1);
}

uint64_t OUTLINED_FUNCTION_36(uint64_t a1)
{
  *(a1 + 8) = v1;

  return type metadata accessor for NeuralNetwork.Border(0);
}

uint64_t OUTLINED_FUNCTION_37()
{

  return sub_257467D94(v0);
}

uint64_t OUTLINED_FUNCTION_41()
{

  return NeuralNetwork.ValidPaddingParameters.amount.getter(v0);
}

uint64_t OUTLINED_FUNCTION_42()
{
  v4 = v0 + *(*(v2 - 96) + 36);

  return sub_257469688(v4, v1);
}

uint64_t OUTLINED_FUNCTION_45()
{

  return type metadata accessor for NeuralNetwork.Border(0);
}

uint64_t OUTLINED_FUNCTION_46(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_47()
{

  return sub_257467D94(v0);
}

uint64_t NeuralNetwork.Layer.LoopParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257743FF0;
  *(v1 + 32) = 0x657469202E78614DLL;
  *(v1 + 40) = 0xEF736E6F69746172;
  *(v1 + 48) = sub_257743974();
  *(v1 + 56) = v2;
  *(v1 + 64) = 0x6F697469646E6F43;
  *(v1 + 72) = 0xE90000000000006ELL;
  v3 = *(v0 + 16);
  *(v1 + 80) = *(v0 + 8);
  *(v1 + 88) = v3;

  return v1;
}

uint64_t NeuralNetwork.Layer.LoopParameters.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  v2 = type metadata accessor for Proto_LoopLayerParams(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v3 = *(v2 + 28);
  v4 = type metadata accessor for Proto_NeuralNetwork(0);
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
  v5 = a1 + *(v2 + 32);

  return __swift_storeEnumTagSinglePayload(v5, 1, 1, v4);
}

uint64_t _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_2577431B4();
  sub_25746A928(&qword_27F879B68, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_257743644() & 1;
}

uint64_t sub_25746A928(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25746AAD8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25746AB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Model.specificationVersion.getter()
{
  type metadata accessor for Proto_Model(0);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_296(v0 + 16, v2);
  return *(v0 + 16);
}

uint64_t Model.specificationVersion.setter(uint64_t result)
{
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = result;
  if (result > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v3 = v1;
  v4 = *(type metadata accessor for Proto_Model(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for Proto_Model._StorageClass(0);
    OUTLINED_FUNCTION_448(v7);
    OUTLINED_FUNCTION_327();
    v6 = v8;
    *(v3 + v4) = v8;
  }

  result = OUTLINED_FUNCTION_447(v6 + 16, v9);
  *(v6 + 16) = v2;
  return result;
}

void (*Model.specificationVersion.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[10] = v1;
  v4 = *(type metadata accessor for Proto_Model(0) + 20);
  *(v3 + 22) = v4;
  v5 = *(v1 + v4);
  OUTLINED_FUNCTION_296(v5 + 16, v3);
  v3[9] = *(v5 + 16);
  return sub_25746AD3C;
}

void sub_25746AD3C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  if ((a2 & 1) == 0)
  {
    if (v3 >= 0xFFFFFFFF80000000)
    {
      if (v3 <= 0x7FFFFFFF)
      {
        v4 = v2 + 48;
        goto LABEL_8;
      }

LABEL_16:
      __break(1u);
      return;
    }

    goto LABEL_14;
  }

  if (v3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v3 > 0x7FFFFFFF)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = v2 + 24;
LABEL_8:
  v5 = *(v2 + 88);
  v6 = *(v2 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v2 + 88);
    v10 = *(v2 + 80);
    v11 = type metadata accessor for Proto_Model._StorageClass(0);
    OUTLINED_FUNCTION_448(v11);
    OUTLINED_FUNCTION_327();
    v8 = v12;
    *(v10 + v9) = v12;
  }

  OUTLINED_FUNCTION_447(v8 + 16, v4);
  *(v8 + 16) = v3;

  free(v2);
}

void Model.versionString.getter()
{
  OUTLINED_FUNCTION_31();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BD0, &unk_257744360);
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_71();
  type metadata accessor for Proto_Metadata(v7);
  OUTLINED_FUNCTION_32_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_0();
  v9 = OUTLINED_FUNCTION_311();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_13(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for Proto_ModelDescription(v13);
  OUTLINED_FUNCTION_30_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_24_0();
  type metadata accessor for Proto_Model(0);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_178(v0 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p);
  OUTLINED_FUNCTION_215();
  OUTLINED_FUNCTION_34_0(v3);
  if (v15)
  {
    OUTLINED_FUNCTION_68(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_44();
    v19 = OUTLINED_FUNCTION_313(v16, v17, v18);
    OUTLINED_FUNCTION_34_0(v19);
    if (!v15)
    {
      sub_2574695E4(v3, &qword_27F879BD8, &qword_257750240);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    v20 = OUTLINED_FUNCTION_322();
    sub_2574792EC(v20);
  }

  OUTLINED_FUNCTION_390(*(v2 + 52));
  OUTLINED_FUNCTION_26_0(v4);
  if (v15)
  {
    OUTLINED_FUNCTION_83();
    v21 = sub_2577435D4();
    OUTLINED_FUNCTION_300(v21);
    OUTLINED_FUNCTION_26_0(v4);
    if (!v15)
    {
      sub_2574695E4(v4, &qword_27F879BD0, &unk_257744360);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_0();
    v22 = OUTLINED_FUNCTION_228();
    sub_2574792EC(v22);
  }

  OUTLINED_FUNCTION_6_0();
  sub_257479298(v1);

  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_35();
}

void Model.versionString.setter()
{
  OUTLINED_FUNCTION_31();
  v31 = v5;
  v32 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BD0, &unk_257744360);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_31_0();
  v10 = type metadata accessor for Proto_Metadata(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_23_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BD8, &qword_257750240);
  OUTLINED_FUNCTION_13(v12);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_135();
  v15 = type metadata accessor for Proto_ModelDescription(v14);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  v17 = OUTLINED_FUNCTION_16_0();
  type metadata accessor for Proto_Model(v17);
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_178(v0 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p);
  v18 = OUTLINED_FUNCTION_275();
  sub_257487308(v18);
  OUTLINED_FUNCTION_54(v4);
  if (v19)
  {
    OUTLINED_FUNCTION_87(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v10);
    OUTLINED_FUNCTION_54(v4);
    if (!v19)
    {
      sub_2574695E4(v4, &qword_27F879BD8, &qword_257750240);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    v23 = OUTLINED_FUNCTION_307();
    sub_2574792EC(v23);
  }

  v24 = *(v15 + 52);
  OUTLINED_FUNCTION_442();
  OUTLINED_FUNCTION_35_0(v2);
  if (v19)
  {
    OUTLINED_FUNCTION_149();
    v25 = sub_2577435D4();
    OUTLINED_FUNCTION_320(v25);
    OUTLINED_FUNCTION_35_0(v2);
    if (!v19)
    {
      sub_2574695E4(v2, &qword_27F879BD0, &unk_257744360);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_0();
    v26 = OUTLINED_FUNCTION_294();
    sub_2574792EC(v26);
  }

  *(v1 + 16) = v31;
  *(v1 + 24) = v32;
  sub_2574695E4(v3 + v24, &qword_27F879BD0, &unk_257744360);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_439();
  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_413(v27, v28, v29, v30);
  OUTLINED_FUNCTION_35();
}

uint64_t Model.versionString.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_424(a1);
  Model.versionString.getter();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_43();
}

void Model.modelDescription.getter()
{
  OUTLINED_FUNCTION_31();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BD0, &unk_257744360);
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_71();
  type metadata accessor for Proto_Metadata(v7);
  OUTLINED_FUNCTION_32_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_0();
  v9 = OUTLINED_FUNCTION_311();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_13(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for Proto_ModelDescription(v13);
  OUTLINED_FUNCTION_30_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_24_0();
  type metadata accessor for Proto_Model(0);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_178(v0 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p);
  OUTLINED_FUNCTION_215();
  OUTLINED_FUNCTION_34_0(v3);
  if (v15)
  {
    OUTLINED_FUNCTION_68(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_44();
    v19 = OUTLINED_FUNCTION_313(v16, v17, v18);
    OUTLINED_FUNCTION_34_0(v19);
    if (!v15)
    {
      sub_2574695E4(v3, &qword_27F879BD8, &qword_257750240);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    v20 = OUTLINED_FUNCTION_322();
    sub_2574792EC(v20);
  }

  OUTLINED_FUNCTION_390(*(v2 + 52));
  OUTLINED_FUNCTION_26_0(v4);
  if (v15)
  {
    OUTLINED_FUNCTION_83();
    v21 = sub_2577435D4();
    OUTLINED_FUNCTION_300(v21);
    OUTLINED_FUNCTION_26_0(v4);
    if (!v15)
    {
      sub_2574695E4(v4, &qword_27F879BD0, &unk_257744360);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_0();
    v22 = OUTLINED_FUNCTION_228();
    sub_2574792EC(v22);
  }

  OUTLINED_FUNCTION_6_0();
  sub_257479298(v1);

  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_35();
}

void Model.modelDescription.setter()
{
  OUTLINED_FUNCTION_31();
  v31 = v5;
  v32 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BD0, &unk_257744360);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_31_0();
  v10 = type metadata accessor for Proto_Metadata(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_23_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BD8, &qword_257750240);
  OUTLINED_FUNCTION_13(v12);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_135();
  v15 = type metadata accessor for Proto_ModelDescription(v14);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  v17 = OUTLINED_FUNCTION_16_0();
  type metadata accessor for Proto_Model(v17);
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_178(v0 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p);
  v18 = OUTLINED_FUNCTION_275();
  sub_257487308(v18);
  OUTLINED_FUNCTION_54(v4);
  if (v19)
  {
    OUTLINED_FUNCTION_87(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v10);
    OUTLINED_FUNCTION_54(v4);
    if (!v19)
    {
      sub_2574695E4(v4, &qword_27F879BD8, &qword_257750240);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    v23 = OUTLINED_FUNCTION_307();
    sub_2574792EC(v23);
  }

  v24 = *(v15 + 52);
  OUTLINED_FUNCTION_442();
  OUTLINED_FUNCTION_35_0(v2);
  if (v19)
  {
    OUTLINED_FUNCTION_149();
    v25 = sub_2577435D4();
    OUTLINED_FUNCTION_320(v25);
    OUTLINED_FUNCTION_35_0(v2);
    if (!v19)
    {
      sub_2574695E4(v2, &qword_27F879BD0, &unk_257744360);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_0();
    v26 = OUTLINED_FUNCTION_294();
    sub_2574792EC(v26);
  }

  *v1 = v31;
  v1[1] = v32;
  sub_2574695E4(v3 + v24, &qword_27F879BD0, &unk_257744360);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_439();
  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_413(v27, v28, v29, v30);
  OUTLINED_FUNCTION_35();
}

uint64_t Model.modelDescription.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_424(a1);
  Model.modelDescription.getter();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_43();
}

void Model.author.getter()
{
  OUTLINED_FUNCTION_31();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BD0, &unk_257744360);
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_71();
  type metadata accessor for Proto_Metadata(v7);
  OUTLINED_FUNCTION_32_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_0();
  v9 = OUTLINED_FUNCTION_311();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_13(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for Proto_ModelDescription(v13);
  OUTLINED_FUNCTION_30_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_24_0();
  type metadata accessor for Proto_Model(0);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_178(v0 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p);
  OUTLINED_FUNCTION_215();
  OUTLINED_FUNCTION_34_0(v3);
  if (v15)
  {
    OUTLINED_FUNCTION_68(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_44();
    v19 = OUTLINED_FUNCTION_313(v16, v17, v18);
    OUTLINED_FUNCTION_34_0(v19);
    if (!v15)
    {
      sub_2574695E4(v3, &qword_27F879BD8, &qword_257750240);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    v20 = OUTLINED_FUNCTION_322();
    sub_2574792EC(v20);
  }

  OUTLINED_FUNCTION_390(*(v2 + 52));
  OUTLINED_FUNCTION_26_0(v4);
  if (v15)
  {
    OUTLINED_FUNCTION_83();
    v21 = sub_2577435D4();
    OUTLINED_FUNCTION_300(v21);
    OUTLINED_FUNCTION_26_0(v4);
    if (!v15)
    {
      sub_2574695E4(v4, &qword_27F879BD0, &unk_257744360);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_0();
    v22 = OUTLINED_FUNCTION_228();
    sub_2574792EC(v22);
  }

  OUTLINED_FUNCTION_6_0();
  sub_257479298(v1);

  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_35();
}

void Model.author.setter()
{
  OUTLINED_FUNCTION_31();
  v31 = v5;
  v32 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BD0, &unk_257744360);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_31_0();
  v10 = type metadata accessor for Proto_Metadata(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_23_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BD8, &qword_257750240);
  OUTLINED_FUNCTION_13(v12);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_135();
  v15 = type metadata accessor for Proto_ModelDescription(v14);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  v17 = OUTLINED_FUNCTION_16_0();
  type metadata accessor for Proto_Model(v17);
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_178(v0 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p);
  v18 = OUTLINED_FUNCTION_275();
  sub_257487308(v18);
  OUTLINED_FUNCTION_54(v4);
  if (v19)
  {
    OUTLINED_FUNCTION_87(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v10);
    OUTLINED_FUNCTION_54(v4);
    if (!v19)
    {
      sub_2574695E4(v4, &qword_27F879BD8, &qword_257750240);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    v23 = OUTLINED_FUNCTION_307();
    sub_2574792EC(v23);
  }

  v24 = *(v15 + 52);
  OUTLINED_FUNCTION_442();
  OUTLINED_FUNCTION_35_0(v2);
  if (v19)
  {
    OUTLINED_FUNCTION_149();
    v25 = sub_2577435D4();
    OUTLINED_FUNCTION_320(v25);
    OUTLINED_FUNCTION_35_0(v2);
    if (!v19)
    {
      sub_2574695E4(v2, &qword_27F879BD0, &unk_257744360);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_0();
    v26 = OUTLINED_FUNCTION_294();
    sub_2574792EC(v26);
  }

  *(v1 + 32) = v31;
  *(v1 + 40) = v32;
  sub_2574695E4(v3 + v24, &qword_27F879BD0, &unk_257744360);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_439();
  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_413(v27, v28, v29, v30);
  OUTLINED_FUNCTION_35();
}

uint64_t Model.author.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_424(a1);
  Model.author.getter();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_43();
}

void Model.license.getter()
{
  OUTLINED_FUNCTION_31();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BD0, &unk_257744360);
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_71();
  type metadata accessor for Proto_Metadata(v7);
  OUTLINED_FUNCTION_32_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_0();
  v9 = OUTLINED_FUNCTION_311();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_13(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for Proto_ModelDescription(v13);
  OUTLINED_FUNCTION_30_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_24_0();
  type metadata accessor for Proto_Model(0);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_178(v0 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p);
  OUTLINED_FUNCTION_215();
  OUTLINED_FUNCTION_34_0(v3);
  if (v15)
  {
    OUTLINED_FUNCTION_68(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_44();
    v19 = OUTLINED_FUNCTION_313(v16, v17, v18);
    OUTLINED_FUNCTION_34_0(v19);
    if (!v15)
    {
      sub_2574695E4(v3, &qword_27F879BD8, &qword_257750240);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    v20 = OUTLINED_FUNCTION_322();
    sub_2574792EC(v20);
  }

  OUTLINED_FUNCTION_390(*(v2 + 52));
  OUTLINED_FUNCTION_26_0(v4);
  if (v15)
  {
    OUTLINED_FUNCTION_83();
    v21 = sub_2577435D4();
    OUTLINED_FUNCTION_300(v21);
    OUTLINED_FUNCTION_26_0(v4);
    if (!v15)
    {
      sub_2574695E4(v4, &qword_27F879BD0, &unk_257744360);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_0();
    v22 = OUTLINED_FUNCTION_228();
    sub_2574792EC(v22);
  }

  OUTLINED_FUNCTION_6_0();
  sub_257479298(v1);

  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_35();
}

void Model.license.setter()
{
  OUTLINED_FUNCTION_31();
  v31 = v5;
  v32 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BD0, &unk_257744360);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_31_0();
  v10 = type metadata accessor for Proto_Metadata(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_23_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BD8, &qword_257750240);
  OUTLINED_FUNCTION_13(v12);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_135();
  v15 = type metadata accessor for Proto_ModelDescription(v14);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  v17 = OUTLINED_FUNCTION_16_0();
  type metadata accessor for Proto_Model(v17);
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_178(v0 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p);
  v18 = OUTLINED_FUNCTION_275();
  sub_257487308(v18);
  OUTLINED_FUNCTION_54(v4);
  if (v19)
  {
    OUTLINED_FUNCTION_87(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v10);
    OUTLINED_FUNCTION_54(v4);
    if (!v19)
    {
      sub_2574695E4(v4, &qword_27F879BD8, &qword_257750240);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    v23 = OUTLINED_FUNCTION_307();
    sub_2574792EC(v23);
  }

  v24 = *(v15 + 52);
  OUTLINED_FUNCTION_442();
  OUTLINED_FUNCTION_35_0(v2);
  if (v19)
  {
    OUTLINED_FUNCTION_149();
    v25 = sub_2577435D4();
    OUTLINED_FUNCTION_320(v25);
    OUTLINED_FUNCTION_35_0(v2);
    if (!v19)
    {
      sub_2574695E4(v2, &qword_27F879BD0, &unk_257744360);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_0();
    v26 = OUTLINED_FUNCTION_294();
    sub_2574792EC(v26);
  }

  *(v1 + 48) = v31;
  *(v1 + 56) = v32;
  sub_2574695E4(v3 + v24, &qword_27F879BD0, &unk_257744360);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_439();
  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_413(v27, v28, v29, v30);
  OUTLINED_FUNCTION_35();
}

uint64_t Model.license.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_424(a1);
  Model.license.getter();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_43();
}

uint64_t sub_25746C268(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {

    v4 = OUTLINED_FUNCTION_176();
    a3(v4);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_176();
    return a3(v6);
  }
}

void Model.metadata.getter()
{
  OUTLINED_FUNCTION_31();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BD0, &unk_257744360);
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_71();
  type metadata accessor for Proto_Metadata(v7);
  OUTLINED_FUNCTION_32_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_0();
  v9 = OUTLINED_FUNCTION_311();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_13(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for Proto_ModelDescription(v13);
  OUTLINED_FUNCTION_30_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_24_0();
  type metadata accessor for Proto_Model(0);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_178(v0 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p);
  OUTLINED_FUNCTION_215();
  OUTLINED_FUNCTION_34_0(v3);
  if (v15)
  {
    OUTLINED_FUNCTION_68(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_44();
    v19 = OUTLINED_FUNCTION_313(v16, v17, v18);
    OUTLINED_FUNCTION_34_0(v19);
    if (!v15)
    {
      sub_2574695E4(v3, &qword_27F879BD8, &qword_257750240);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    v20 = OUTLINED_FUNCTION_322();
    sub_2574792EC(v20);
  }

  OUTLINED_FUNCTION_390(*(v2 + 52));
  OUTLINED_FUNCTION_26_0(v4);
  if (v15)
  {
    OUTLINED_FUNCTION_83();
    v21 = sub_2577435D4();
    OUTLINED_FUNCTION_300(v21);
    OUTLINED_FUNCTION_26_0(v4);
    if (!v15)
    {
      sub_2574695E4(v4, &qword_27F879BD0, &unk_257744360);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_0();
    v22 = OUTLINED_FUNCTION_228();
    sub_2574792EC(v22);
  }

  OUTLINED_FUNCTION_6_0();
  sub_257479298(v1);

  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_372();
  OUTLINED_FUNCTION_35();
}

void Model.metadata.setter()
{
  OUTLINED_FUNCTION_31();
  v30 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BD0, &unk_257744360);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_64();
  type metadata accessor for Proto_Metadata(v9);
  OUTLINED_FUNCTION_32_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_24_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BD8, &qword_257750240);
  OUTLINED_FUNCTION_13(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_332();
  v14 = type metadata accessor for Proto_ModelDescription(v13);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_19_0();
  v16 = *(v0 + *(type metadata accessor for Proto_Model(0) + 20));
  v17 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p;
  OUTLINED_FUNCTION_178(v16 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p);
  sub_257487308(v16 + v17);
  OUTLINED_FUNCTION_28_0(v5);
  if (v18)
  {
    v19 = MEMORY[0x277D84F90];
    *v4 = MEMORY[0x277D84F90];
    v4[1] = 0;
    v4[2] = 0xE000000000000000;
    v4[3] = v19;
    v4[4] = v19;
    v4[5] = v19;
    v4[6] = 0;
    v4[7] = 0xE000000000000000;
    v4[8] = 0;
    v4[9] = 0xE000000000000000;
    v4[10] = v19;
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v1);
    OUTLINED_FUNCTION_28_0(v5);
    if (!v18)
    {
      sub_2574695E4(v5, &qword_27F879BD8, &qword_257750240);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    v23 = OUTLINED_FUNCTION_367();
    sub_2574792EC(v23);
  }

  v24 = *(v14 + 52);
  sub_257487308(v4 + v24);
  OUTLINED_FUNCTION_26_0(v3);
  if (v18)
  {
    *v2 = 0;
    v2[1] = 0xE000000000000000;
    v2[2] = 0;
    v2[3] = 0xE000000000000000;
    v2[4] = 0;
    v2[5] = 0xE000000000000000;
    v2[6] = 0;
    v2[7] = 0xE000000000000000;
    v2[8] = sub_2577435D4();
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_26_0(v3);
    if (!v18)
    {
      sub_2574695E4(v3, &qword_27F879BD0, &unk_257744360);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_0();
    v25 = OUTLINED_FUNCTION_222();
    sub_2574792EC(v25);
  }

  v2[8] = v30;
  sub_2574695E4(v4 + v24, &qword_27F879BD0, &unk_257744360);
  OUTLINED_FUNCTION_7_0();
  sub_2574792EC(v2);
  OUTLINED_FUNCTION_21();
  v29 = OUTLINED_FUNCTION_313(v26, v27, v28);
  sub_2574FE460(v29);
  OUTLINED_FUNCTION_35();
}

uint64_t Model.metadata.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_375(a1);
  Model.metadata.getter();
  *v1 = v2;
  return OUTLINED_FUNCTION_43();
}

void Model.inputs.getter()
{
  OUTLINED_FUNCTION_31();
  v4 = type metadata accessor for FeatureDescription(0);
  v5 = OUTLINED_FUNCTION_24(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  v6 = OUTLINED_FUNCTION_201();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_13(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_78();
  type metadata accessor for Proto_ModelDescription(v10);
  OUTLINED_FUNCTION_30_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19_0();
  type metadata accessor for Proto_Model(0);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_178(v0 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p);
  OUTLINED_FUNCTION_175();
  v12 = OUTLINED_FUNCTION_188();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, v13, v2);
  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_86(EnumTagSinglePayload);
    OUTLINED_FUNCTION_438();
    v15 = OUTLINED_FUNCTION_317();
    OUTLINED_FUNCTION_29_0(v15, v16, v17, v18);
    if (!v19)
    {
      sub_2574695E4(v1, &qword_27F879BD8, &qword_257750240);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    v20 = OUTLINED_FUNCTION_264();
    sub_2574792EC(v20);
  }

  v21 = *(v3 + 24);

  OUTLINED_FUNCTION_6_0();
  sub_257479298(v3);
  if (*(v21 + 16))
  {
    v22 = OUTLINED_FUNCTION_147();
    sub_257483774(v22, v23, v24);
    v25 = OUTLINED_FUNCTION_404();
    v26 = type metadata accessor for Proto_FeatureDescription(v25);
    OUTLINED_FUNCTION_24(v26);
    do
    {
      OUTLINED_FUNCTION_8_0();
      v27 = OUTLINED_FUNCTION_229();
      sub_257483824(v27);
      OUTLINED_FUNCTION_187();
      if (v29)
      {
        v30 = OUTLINED_FUNCTION_144(v28);
        sub_257483774(v30, v31, v32);
      }

      OUTLINED_FUNCTION_76();
      OUTLINED_FUNCTION_141();
      OUTLINED_FUNCTION_396();
    }

    while (!v19);
  }

  OUTLINED_FUNCTION_372();
  OUTLINED_FUNCTION_35();
}

void Model.inputs.setter()
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_257();
  v6 = type metadata accessor for FeatureDescription(v5);
  v7 = OUTLINED_FUNCTION_24(v6);
  v9 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = OUTLINED_FUNCTION_16_0();
  v11 = type metadata accessor for Proto_FeatureDescription(v10);
  v12 = OUTLINED_FUNCTION_24(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_227();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BD8, &qword_257750240);
  OUTLINED_FUNCTION_13(v13);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_64();
  type metadata accessor for Proto_ModelDescription(v15);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_19_0();
  if (*(v0 + 16))
  {
    v17 = OUTLINED_FUNCTION_75(MEMORY[0x277D84F90]);
    sub_2574837CC(v17, v18, v19);
    OUTLINED_FUNCTION_74();
    do
    {
      OUTLINED_FUNCTION_15_0();
      v20 = OUTLINED_FUNCTION_280();
      sub_257483824(v20);
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_389();
      OUTLINED_FUNCTION_14_0();
      sub_257479298(v4);
      OUTLINED_FUNCTION_184();
      if (v22)
      {
        v24 = OUTLINED_FUNCTION_145(v21);
        sub_2574837CC(v24, v25, v26);
        v1 = v35;
      }

      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_140();
      OUTLINED_FUNCTION_395();
    }

    while (!v23);

    OUTLINED_FUNCTION_394();
  }

  else
  {

    v1 = MEMORY[0x277D84F90];
  }

  type metadata accessor for Proto_Model(0);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_178(v9 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p);
  OUTLINED_FUNCTION_437();
  v27 = OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_69(v27, v28);
  if (v23)
  {
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_436(v29);
    OUTLINED_FUNCTION_435();
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
    OUTLINED_FUNCTION_26_0(v2);
    if (!v23)
    {
      sub_2574695E4(v2, &qword_27F879BD8, &qword_257750240);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    v34 = OUTLINED_FUNCTION_211();
    sub_2574792EC(v34);
  }

  *(v3 + 24) = v1;
  sub_2574FE460(v3);
  OUTLINED_FUNCTION_35();
}

uint64_t Model.inputs.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_375(a1);
  Model.inputs.getter();
  *v1 = v2;
  return OUTLINED_FUNCTION_43();
}

void Model.outputs.getter()
{
  OUTLINED_FUNCTION_31();
  v4 = type metadata accessor for FeatureDescription(0);
  v5 = OUTLINED_FUNCTION_24(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  v6 = OUTLINED_FUNCTION_201();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_13(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_78();
  type metadata accessor for Proto_ModelDescription(v10);
  OUTLINED_FUNCTION_30_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19_0();
  type metadata accessor for Proto_Model(0);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_178(v0 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p);
  OUTLINED_FUNCTION_175();
  v12 = OUTLINED_FUNCTION_188();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, v13, v2);
  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_86(EnumTagSinglePayload);
    OUTLINED_FUNCTION_438();
    v15 = OUTLINED_FUNCTION_317();
    OUTLINED_FUNCTION_29_0(v15, v16, v17, v18);
    if (!v19)
    {
      sub_2574695E4(v1, &qword_27F879BD8, &qword_257750240);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    v20 = OUTLINED_FUNCTION_264();
    sub_2574792EC(v20);
  }

  v21 = *(v3 + 32);

  OUTLINED_FUNCTION_6_0();
  sub_257479298(v3);
  if (*(v21 + 16))
  {
    v22 = OUTLINED_FUNCTION_147();
    sub_257483774(v22, v23, v24);
    v25 = OUTLINED_FUNCTION_404();
    v26 = type metadata accessor for Proto_FeatureDescription(v25);
    OUTLINED_FUNCTION_24(v26);
    do
    {
      OUTLINED_FUNCTION_8_0();
      v27 = OUTLINED_FUNCTION_229();
      sub_257483824(v27);
      OUTLINED_FUNCTION_187();
      if (v29)
      {
        v30 = OUTLINED_FUNCTION_144(v28);
        sub_257483774(v30, v31, v32);
      }

      OUTLINED_FUNCTION_76();
      OUTLINED_FUNCTION_141();
      OUTLINED_FUNCTION_396();
    }

    while (!v19);
  }

  OUTLINED_FUNCTION_372();
  OUTLINED_FUNCTION_35();
}

void Model.outputs.setter()
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_257();
  v6 = type metadata accessor for FeatureDescription(v5);
  v7 = OUTLINED_FUNCTION_24(v6);
  v9 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = OUTLINED_FUNCTION_16_0();
  v11 = type metadata accessor for Proto_FeatureDescription(v10);
  v12 = OUTLINED_FUNCTION_24(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_227();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BD8, &qword_257750240);
  OUTLINED_FUNCTION_13(v13);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_64();
  type metadata accessor for Proto_ModelDescription(v15);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_19_0();
  if (*(v0 + 16))
  {
    v17 = OUTLINED_FUNCTION_75(MEMORY[0x277D84F90]);
    sub_2574837CC(v17, v18, v19);
    OUTLINED_FUNCTION_74();
    do
    {
      OUTLINED_FUNCTION_15_0();
      v20 = OUTLINED_FUNCTION_280();
      sub_257483824(v20);
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_389();
      OUTLINED_FUNCTION_14_0();
      sub_257479298(v4);
      OUTLINED_FUNCTION_184();
      if (v22)
      {
        v24 = OUTLINED_FUNCTION_145(v21);
        sub_2574837CC(v24, v25, v26);
        v1 = v35;
      }

      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_140();
      OUTLINED_FUNCTION_395();
    }

    while (!v23);

    OUTLINED_FUNCTION_394();
  }

  else
  {

    v1 = MEMORY[0x277D84F90];
  }

  type metadata accessor for Proto_Model(0);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_178(v9 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p);
  OUTLINED_FUNCTION_437();
  v27 = OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_69(v27, v28);
  if (v23)
  {
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_436(v29);
    OUTLINED_FUNCTION_435();
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
    OUTLINED_FUNCTION_26_0(v2);
    if (!v23)
    {
      sub_2574695E4(v2, &qword_27F879BD8, &qword_257750240);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    v34 = OUTLINED_FUNCTION_211();
    sub_2574792EC(v34);
  }

  *(v3 + 32) = v1;
  sub_2574FE460(v3);
  OUTLINED_FUNCTION_35();
}

uint64_t Model.outputs.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_375(a1);
  Model.outputs.getter();
  *v1 = v2;
  return OUTLINED_FUNCTION_43();
}

void Model.predictedFeatureName.getter()
{
  OUTLINED_FUNCTION_433();
  v3 = OUTLINED_FUNCTION_277();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for Proto_ModelDescription(v7);
  OUTLINED_FUNCTION_32_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_0();
  type metadata accessor for Proto_Model(0);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_296(v1 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p, &v15);
  OUTLINED_FUNCTION_314();
  OUTLINED_FUNCTION_26_0(v2);
  if (v9)
  {
    OUTLINED_FUNCTION_170(MEMORY[0x277D84F90]);
    type metadata accessor for Proto_Metadata(0);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    OUTLINED_FUNCTION_26_0(v2);
    if (!v9)
    {
      sub_2574695E4(v2, &qword_27F879BD8, &qword_257750240);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    v14 = OUTLINED_FUNCTION_230();
    sub_2574792EC(v14);
  }

  OUTLINED_FUNCTION_6_0();
  sub_257479298(v0);
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_434();
}

void Model.predictedFeatureName.setter()
{
  OUTLINED_FUNCTION_31();
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_201();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_13(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_78();
  v12 = type metadata accessor for Proto_ModelDescription(v11);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_23_0();
  v14 = *(v0 + *(type metadata accessor for Proto_Model(0) + 20));
  v15 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p;
  OUTLINED_FUNCTION_178(v14 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p);
  OUTLINED_FUNCTION_214(v14 + v15);
  OUTLINED_FUNCTION_65(v1);
  if (v16)
  {
    OUTLINED_FUNCTION_169(MEMORY[0x277D84F90]);
    v17 = *(v12 + 52);
    v18 = type metadata accessor for Proto_Metadata(0);
    v21 = OUTLINED_FUNCTION_37_0(v2 + v17, v19, v20, v18);
    OUTLINED_FUNCTION_142(v21, v22);
    if (!v16)
    {
      sub_2574695E4(v1, &qword_27F879BD8, &qword_257750240);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    v23 = OUTLINED_FUNCTION_277();
    sub_2574792EC(v23);
  }

  *(v2 + 48) = v6;
  *(v2 + 56) = v4;
  sub_2574FE460(v2);
  OUTLINED_FUNCTION_35();
}

void Model.predictedFeatureName.modify()
{
  OUTLINED_FUNCTION_31();
  v5 = __swift_coroFrameAllocStub(0x40uLL);
  OUTLINED_FUNCTION_330(v5);
  v6 = OUTLINED_FUNCTION_201();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_13(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  OUTLINED_FUNCTION_383(v10);
  OUTLINED_FUNCTION_30_0();
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  OUTLINED_FUNCTION_387(v12);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_296(v0 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p, v4);
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_34_0(v2);
  if (v13)
  {
    OUTLINED_FUNCTION_168(MEMORY[0x277D84F90]);
    v14 = *(v3 + 52);
    v15 = type metadata accessor for Proto_Metadata(0);
    OUTLINED_FUNCTION_29_0(v1 + v14, v16, v17, v15);
    if (!v13)
    {
      sub_2574695E4(v2, &qword_27F879BD8, &qword_257750240);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    v18 = OUTLINED_FUNCTION_176();
    sub_2574792EC(v18);
  }

  v20 = *(v1 + 48);
  v19 = *(v1 + 56);

  OUTLINED_FUNCTION_6_0();
  sub_257479298(v1);
  *(v4 + 24) = v20;
  *(v4 + 32) = v19;
  OUTLINED_FUNCTION_35();
}

void Model.predictedProbabilitiesName.getter()
{
  OUTLINED_FUNCTION_433();
  v3 = OUTLINED_FUNCTION_277();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for Proto_ModelDescription(v7);
  OUTLINED_FUNCTION_32_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_0();
  type metadata accessor for Proto_Model(0);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_296(v1 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p, &v15);
  OUTLINED_FUNCTION_314();
  OUTLINED_FUNCTION_26_0(v2);
  if (v9)
  {
    OUTLINED_FUNCTION_170(MEMORY[0x277D84F90]);
    type metadata accessor for Proto_Metadata(0);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    OUTLINED_FUNCTION_26_0(v2);
    if (!v9)
    {
      sub_2574695E4(v2, &qword_27F879BD8, &qword_257750240);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    v14 = OUTLINED_FUNCTION_230();
    sub_2574792EC(v14);
  }

  OUTLINED_FUNCTION_6_0();
  sub_257479298(v0);
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_434();
}

void Model.predictedProbabilitiesName.setter()
{
  OUTLINED_FUNCTION_31();
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_201();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_13(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_78();
  v12 = type metadata accessor for Proto_ModelDescription(v11);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_23_0();
  v14 = *(v0 + *(type metadata accessor for Proto_Model(0) + 20));
  v15 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p;
  OUTLINED_FUNCTION_178(v14 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p);
  OUTLINED_FUNCTION_214(v14 + v15);
  OUTLINED_FUNCTION_65(v1);
  if (v16)
  {
    OUTLINED_FUNCTION_169(MEMORY[0x277D84F90]);
    v17 = *(v12 + 52);
    v18 = type metadata accessor for Proto_Metadata(0);
    v21 = OUTLINED_FUNCTION_37_0(v2 + v17, v19, v20, v18);
    OUTLINED_FUNCTION_142(v21, v22);
    if (!v16)
    {
      sub_2574695E4(v1, &qword_27F879BD8, &qword_257750240);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    v23 = OUTLINED_FUNCTION_277();
    sub_2574792EC(v23);
  }

  *(v2 + 64) = v6;
  *(v2 + 72) = v4;
  sub_2574FE460(v2);
  OUTLINED_FUNCTION_35();
}

void Model.predictedProbabilitiesName.modify()
{
  OUTLINED_FUNCTION_31();
  v5 = __swift_coroFrameAllocStub(0x40uLL);
  OUTLINED_FUNCTION_330(v5);
  v6 = OUTLINED_FUNCTION_201();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_13(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  OUTLINED_FUNCTION_383(v10);
  OUTLINED_FUNCTION_30_0();
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  OUTLINED_FUNCTION_387(v12);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_296(v0 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p, v4);
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_34_0(v2);
  if (v13)
  {
    OUTLINED_FUNCTION_168(MEMORY[0x277D84F90]);
    v14 = *(v3 + 52);
    v15 = type metadata accessor for Proto_Metadata(0);
    OUTLINED_FUNCTION_29_0(v1 + v14, v16, v17, v15);
    if (!v13)
    {
      sub_2574695E4(v2, &qword_27F879BD8, &qword_257750240);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    v18 = OUTLINED_FUNCTION_176();
    sub_2574792EC(v18);
  }

  v20 = *(v1 + 64);
  v19 = *(v1 + 72);

  OUTLINED_FUNCTION_6_0();
  sub_257479298(v1);
  *(v4 + 24) = v20;
  *(v4 + 32) = v19;
  OUTLINED_FUNCTION_35();
}

void Model.trainingInput.getter()
{
  OUTLINED_FUNCTION_31();
  v4 = type metadata accessor for FeatureDescription(0);
  v5 = OUTLINED_FUNCTION_24(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  v6 = OUTLINED_FUNCTION_201();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_13(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_78();
  type metadata accessor for Proto_ModelDescription(v10);
  OUTLINED_FUNCTION_30_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19_0();
  type metadata accessor for Proto_Model(0);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_178(v0 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p);
  OUTLINED_FUNCTION_175();
  v12 = OUTLINED_FUNCTION_188();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, v13, v2);
  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_86(EnumTagSinglePayload);
    OUTLINED_FUNCTION_438();
    v15 = OUTLINED_FUNCTION_317();
    OUTLINED_FUNCTION_29_0(v15, v16, v17, v18);
    if (!v19)
    {
      sub_2574695E4(v1, &qword_27F879BD8, &qword_257750240);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    v20 = OUTLINED_FUNCTION_264();
    sub_2574792EC(v20);
  }

  v21 = *(v3 + 80);

  OUTLINED_FUNCTION_6_0();
  sub_257479298(v3);
  if (*(v21 + 16))
  {
    v22 = OUTLINED_FUNCTION_147();
    sub_257483774(v22, v23, v24);
    v25 = OUTLINED_FUNCTION_404();
    v26 = type metadata accessor for Proto_FeatureDescription(v25);
    OUTLINED_FUNCTION_24(v26);
    do
    {
      OUTLINED_FUNCTION_8_0();
      v27 = OUTLINED_FUNCTION_229();
      sub_257483824(v27);
      OUTLINED_FUNCTION_187();
      if (v29)
      {
        v30 = OUTLINED_FUNCTION_144(v28);
        sub_257483774(v30, v31, v32);
      }

      OUTLINED_FUNCTION_76();
      OUTLINED_FUNCTION_141();
      OUTLINED_FUNCTION_396();
    }

    while (!v19);
  }

  OUTLINED_FUNCTION_372();
  OUTLINED_FUNCTION_35();
}

void Model.trainingInput.setter()
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_257();
  v6 = type metadata accessor for FeatureDescription(v5);
  v7 = OUTLINED_FUNCTION_24(v6);
  v9 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = OUTLINED_FUNCTION_16_0();
  v11 = type metadata accessor for Proto_FeatureDescription(v10);
  v12 = OUTLINED_FUNCTION_24(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_227();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BD8, &qword_257750240);
  OUTLINED_FUNCTION_13(v13);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_64();
  type metadata accessor for Proto_ModelDescription(v15);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_19_0();
  if (*(v0 + 16))
  {
    v17 = OUTLINED_FUNCTION_75(MEMORY[0x277D84F90]);
    sub_2574837CC(v17, v18, v19);
    OUTLINED_FUNCTION_74();
    do
    {
      OUTLINED_FUNCTION_15_0();
      v20 = OUTLINED_FUNCTION_280();
      sub_257483824(v20);
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_389();
      OUTLINED_FUNCTION_14_0();
      sub_257479298(v4);
      OUTLINED_FUNCTION_184();
      if (v22)
      {
        v24 = OUTLINED_FUNCTION_145(v21);
        sub_2574837CC(v24, v25, v26);
        v1 = v35;
      }

      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_140();
      OUTLINED_FUNCTION_395();
    }

    while (!v23);

    OUTLINED_FUNCTION_394();
  }

  else
  {

    v1 = MEMORY[0x277D84F90];
  }

  type metadata accessor for Proto_Model(0);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_178(v9 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p);
  OUTLINED_FUNCTION_437();
  v27 = OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_69(v27, v28);
  if (v23)
  {
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_436(v29);
    OUTLINED_FUNCTION_435();
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
    OUTLINED_FUNCTION_26_0(v2);
    if (!v23)
    {
      sub_2574695E4(v2, &qword_27F879BD8, &qword_257750240);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    v34 = OUTLINED_FUNCTION_211();
    sub_2574792EC(v34);
  }

  *(v3 + 80) = v1;
  sub_2574FE460(v3);
  OUTLINED_FUNCTION_35();
}

uint64_t Model.trainingInput.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_375(a1);
  Model.trainingInput.getter();
  *v1 = v2;
  return OUTLINED_FUNCTION_43();
}

uint64_t Model.isUpdatable.getter()
{
  type metadata accessor for Proto_Model(0);
  OUTLINED_FUNCTION_328();
  v1 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__isUpdatable;
  OUTLINED_FUNCTION_296(v0 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__isUpdatable, v3);
  return *(v0 + v1);
}

uint64_t Model.isUpdatable.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Model(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for Proto_Model._StorageClass(0);
    OUTLINED_FUNCTION_448(v7);
    OUTLINED_FUNCTION_327();
    v6 = v8;
    *(v2 + v4) = v8;
  }

  v9 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__isUpdatable;
  result = OUTLINED_FUNCTION_447(v6 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__isUpdatable, v11);
  *(v6 + v9) = a1 & 1;
  return result;
}

void (*Model.isUpdatable.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v3;
  v3[9] = v1;
  v4 = *(type metadata accessor for Proto_Model(0) + 20);
  *(v3 + 20) = v4;
  v5 = *(v1 + v4);
  v6 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__isUpdatable;
  OUTLINED_FUNCTION_296(v5 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__isUpdatable, v3);
  *(v3 + 84) = *(v5 + v6);
  return sub_25746E1A0;
}

void sub_25746E1A0(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v3 + 80);
    v10 = *(v3 + 72);
    v11 = type metadata accessor for Proto_Model._StorageClass(0);
    OUTLINED_FUNCTION_448(v11);
    OUTLINED_FUNCTION_327();
    v8 = v12;
    *(v10 + v9) = v12;
  }

  v13 = 48;
  if (a2)
  {
    v13 = 24;
  }

  v14 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__isUpdatable;
  OUTLINED_FUNCTION_447(v8 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__isUpdatable, v3 + v13);
  *(v8 + v14) = v6;

  free(v3);
}

void Model.kind.getter()
{
  OUTLINED_FUNCTION_31();
  type metadata accessor for Proto_Model.OneOf_Type(0);
  OUTLINED_FUNCTION_30_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_39();
  v5 = OUTLINED_FUNCTION_311();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE8, &qword_257744378);
  OUTLINED_FUNCTION_13(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for Proto_Model(v13);
  OUTLINED_FUNCTION_206();
  v14 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  OUTLINED_FUNCTION_178(v0 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type);
  sub_257487308(v0 + v14);
  v15 = 1;
  OUTLINED_FUNCTION_34_0(v10);
  if (!v16)
  {
    sub_2574792EC(v10);
    v17 = OUTLINED_FUNCTION_176();
    sub_257483824(v17);
    sub_25746E5BC();
    OUTLINED_FUNCTION_4_0();
    sub_257479298(v1);
    v15 = 0;
  }

  v18 = type metadata accessor for ModelKind(0);
  __swift_storeEnumTagSinglePayload(v2, v15, 1, v18);
  OUTLINED_FUNCTION_42_0(v2);
  if (v16)
  {
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_205();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_42_0(v2);
    if (!v16)
    {
      sub_2574695E4(v2, &qword_27F879BE8, &qword_257744378);
    }
  }

  else
  {
    v19 = OUTLINED_FUNCTION_189();
    sub_2574792EC(v19);
  }

  OUTLINED_FUNCTION_35();
}

uint64_t sub_25746E470(uint64_t a1)
{
  v2 = type metadata accessor for ModelKind(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257483824(a1);
  return Model.kind.setter(v4);
}

void sub_25746E5BC()
{
  OUTLINED_FUNCTION_31();
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing(0);
  v9 = OUTLINED_FUNCTION_13(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_163();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_39();
  v11 = type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint(0);
  v12 = OUTLINED_FUNCTION_13(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_183();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_290();
  v14 = type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint(0);
  v15 = OUTLINED_FUNCTION_13(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_11();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v20 = OUTLINED_FUNCTION_425();
  type metadata accessor for Proto_Model.OneOf_Type(v20);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_421();
  v22 = OUTLINED_FUNCTION_166();
  sub_257483824(v22);
  switch(swift_getEnumCaseMultiPayload())
  {
    case ' ':
      v28 = OUTLINED_FUNCTION_156();
      sub_2574792EC(v28);
      v29 = OUTLINED_FUNCTION_189();
      sub_257483824(v29);
      sub_257712C64(v2);
      OUTLINED_FUNCTION_4_0();
      sub_257479298(v5);
      sub_257479298(v1);
      break;
    case '!':
      v25 = OUTLINED_FUNCTION_156();
      sub_2574792EC(v25);
      v26 = OUTLINED_FUNCTION_277();
      sub_257483824(v26);
      sub_257691D5C(v0, v7);
      OUTLINED_FUNCTION_4_0();
      sub_257479298(v5);
      v27 = OUTLINED_FUNCTION_195();
      sub_257479298(v27);
      break;
    case '$':
      v23 = OUTLINED_FUNCTION_156();
      sub_2574792EC(v23);
      v24 = OUTLINED_FUNCTION_311();
      sub_257483824(v24);
      sub_257654518(v18, v7);
      OUTLINED_FUNCTION_4_0();
      sub_257479298(v5);
      sub_257479298(v3);
      break;
    default:
      OUTLINED_FUNCTION_4_0();
      sub_257479298(v5);
      v30 = OUTLINED_FUNCTION_55();
      sub_2574792EC(v30);
      break;
  }

  type metadata accessor for ModelKind(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_35();
}

void sub_25746EEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  v171 = v27;
  v28 = type metadata accessor for NearestNeighborsConfiguration(0);
  v29 = OUTLINED_FUNCTION_13(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_12_1();
  v30 = OUTLINED_FUNCTION_153();
  v31 = type metadata accessor for BayesianProbitRegressorConfiguration(v30);
  v32 = OUTLINED_FUNCTION_13(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_12_1();
  v33 = OUTLINED_FUNCTION_153();
  v34 = type metadata accessor for SupportVectorRegressorConfiguration(v33);
  v35 = OUTLINED_FUNCTION_13(v34);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_12_1();
  v36 = OUTLINED_FUNCTION_153();
  v37 = type metadata accessor for SupportVectorClassifierConfiguration(v36);
  v38 = OUTLINED_FUNCTION_13(v37);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_12_1();
  v39 = OUTLINED_FUNCTION_153();
  v40 = type metadata accessor for ClassConfidenceThresholding(v39);
  v41 = OUTLINED_FUNCTION_13(v40);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_12_1();
  v42 = OUTLINED_FUNCTION_153();
  v43 = type metadata accessor for ODIELibrary(v42);
  v44 = OUTLINED_FUNCTION_13(v43);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_12_1();
  v45 = OUTLINED_FUNCTION_153();
  v46 = type metadata accessor for MLProgram(v45);
  v47 = OUTLINED_FUNCTION_13(v46);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_12_1();
  v48 = OUTLINED_FUNCTION_153();
  v49 = type metadata accessor for NeuralNetworkRegressor(v48);
  v50 = OUTLINED_FUNCTION_13(v49);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_12_1();
  v51 = OUTLINED_FUNCTION_153();
  v52 = type metadata accessor for NeuralNetworkClassifier(v51);
  v53 = OUTLINED_FUNCTION_13(v52);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_12_1();
  v54 = OUTLINED_FUNCTION_153();
  v55 = type metadata accessor for NeuralNetwork(v54);
  v56 = OUTLINED_FUNCTION_13(v55);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_12_1();
  v57 = OUTLINED_FUNCTION_153();
  v58 = type metadata accessor for ItemSimilarityRecommenderConfiguration(v57);
  v59 = OUTLINED_FUNCTION_13(v58);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_12_1();
  v60 = OUTLINED_FUNCTION_153();
  v61 = type metadata accessor for GazetteerConfiguration(v60);
  v62 = OUTLINED_FUNCTION_13(v61);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_12_1();
  v63 = OUTLINED_FUNCTION_153();
  v64 = type metadata accessor for TextClassifierConfiguration(v63);
  v65 = OUTLINED_FUNCTION_13(v64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_12_1();
  v66 = OUTLINED_FUNCTION_153();
  v67 = type metadata accessor for WordEmbeddingConfiguration(v66);
  v68 = OUTLINED_FUNCTION_13(v67);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_12_1();
  v69 = OUTLINED_FUNCTION_153();
  v70 = type metadata accessor for WordTaggerConfiguration(v69);
  v71 = OUTLINED_FUNCTION_13(v70);
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_12_1();
  v72 = OUTLINED_FUNCTION_153();
  v73 = type metadata accessor for SoundAnalysisPreprocessorKind(v72);
  v74 = OUTLINED_FUNCTION_13(v73);
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_12_1();
  v169 = v75;
  v76 = OUTLINED_FUNCTION_153();
  v77 = type metadata accessor for VisionFeaturePrintKind(v76);
  v78 = OUTLINED_FUNCTION_13(v77);
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_12_1();
  v170 = v79;
  v80 = OUTLINED_FUNCTION_153();
  v81 = type metadata accessor for AudioFeaturePrintKind(v80);
  v82 = OUTLINED_FUNCTION_13(v81);
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_12_1();
  v168 = v83;
  v84 = OUTLINED_FUNCTION_153();
  v85 = type metadata accessor for ArrayFeatureExtractorConfiguration(v84);
  v86 = OUTLINED_FUNCTION_13(v85);
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_12_1();
  v87 = OUTLINED_FUNCTION_153();
  v88 = type metadata accessor for TreeEnsembleRegressorConfiguration(v87);
  v89 = OUTLINED_FUNCTION_13(v88);
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_12_1();
  v91 = OUTLINED_FUNCTION_38_0(v90);
  v92 = type metadata accessor for TreeEnsembleClassifierConfiguration(v91);
  v93 = OUTLINED_FUNCTION_13(v92);
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_12_1();
  v95 = OUTLINED_FUNCTION_38_0(v94);
  v96 = type metadata accessor for LinearRegressorConfiguration(v95);
  v97 = OUTLINED_FUNCTION_13(v96);
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_12_1();
  v99 = OUTLINED_FUNCTION_38_0(v98);
  v100 = type metadata accessor for LinearClassifierConfiguration(v99);
  v101 = OUTLINED_FUNCTION_13(v100);
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_12_1();
  v103 = OUTLINED_FUNCTION_38_0(v102);
  v104 = type metadata accessor for NonMaximumSuppressorConfiguration(v103);
  v105 = OUTLINED_FUNCTION_13(v104);
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_12_1();
  v107 = OUTLINED_FUNCTION_38_0(v106);
  v108 = type metadata accessor for ScalerConfiguration(v107);
  v109 = OUTLINED_FUNCTION_13(v108);
  MEMORY[0x28223BE20](v109);
  OUTLINED_FUNCTION_12_1();
  v111 = OUTLINED_FUNCTION_38_0(v110);
  v112 = type metadata accessor for NormalizerConfiguration(v111);
  v113 = OUTLINED_FUNCTION_13(v112);
  MEMORY[0x28223BE20](v113);
  OUTLINED_FUNCTION_12_1();
  v115 = OUTLINED_FUNCTION_38_0(v114);
  v116 = type metadata accessor for OneHotEncoderConfiguration(v115);
  v117 = OUTLINED_FUNCTION_13(v116);
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_12_1();
  v119 = OUTLINED_FUNCTION_38_0(v118);
  v120 = type metadata accessor for CategoricalMappingConfiguration(v119);
  v121 = OUTLINED_FUNCTION_13(v120);
  MEMORY[0x28223BE20](v121);
  OUTLINED_FUNCTION_12_1();
  v123 = OUTLINED_FUNCTION_38_0(v122);
  v124 = type metadata accessor for ImputerConfiguration(v123);
  v125 = OUTLINED_FUNCTION_13(v124);
  MEMORY[0x28223BE20](v125);
  OUTLINED_FUNCTION_12_1();
  v127 = OUTLINED_FUNCTION_38_0(v126);
  v128 = type metadata accessor for DictionaryVectorizerConfiguration(v127);
  v129 = OUTLINED_FUNCTION_13(v128);
  MEMORY[0x28223BE20](v129);
  OUTLINED_FUNCTION_12_1();
  v131 = OUTLINED_FUNCTION_38_0(v130);
  v132 = type metadata accessor for FeatureVectorizerConfiguration(v131);
  v133 = OUTLINED_FUNCTION_13(v132);
  MEMORY[0x28223BE20](v133);
  OUTLINED_FUNCTION_24_0();
  v134 = type metadata accessor for SerializedModelConfiguration(0);
  v135 = OUTLINED_FUNCTION_13(v134);
  MEMORY[0x28223BE20](v135);
  OUTLINED_FUNCTION_23_0();
  v136 = type metadata accessor for LinkedModelConfiguration(0);
  v137 = OUTLINED_FUNCTION_13(v136);
  MEMORY[0x28223BE20](v137);
  OUTLINED_FUNCTION_19_0();
  v138 = type metadata accessor for CustomModelConfiguration(0);
  v139 = OUTLINED_FUNCTION_13(v138);
  MEMORY[0x28223BE20](v139);
  v140 = OUTLINED_FUNCTION_16_0();
  v141 = type metadata accessor for IdentityModelConfiguration(v140);
  v142 = OUTLINED_FUNCTION_13(v141);
  MEMORY[0x28223BE20](v142);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_227();
  v143 = type metadata accessor for PipelineConfiguration(0);
  v144 = OUTLINED_FUNCTION_13(v143);
  MEMORY[0x28223BE20](v144);
  OUTLINED_FUNCTION_3();
  v145 = OUTLINED_FUNCTION_335();
  v146 = type metadata accessor for PipelineRegressorConfiguration(v145);
  v147 = OUTLINED_FUNCTION_13(v146);
  MEMORY[0x28223BE20](v147);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_421();
  v148 = type metadata accessor for PipelineClassifierConfiguration(0);
  v149 = OUTLINED_FUNCTION_13(v148);
  MEMORY[0x28223BE20](v149);
  OUTLINED_FUNCTION_17_0();
  type metadata accessor for ModelKind(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v150);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_3_0();
  sub_257483824(v20);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_50();
      v156 = OUTLINED_FUNCTION_173();
      sub_2574792EC(v156);
      v157 = OUTLINED_FUNCTION_156();
      OUTLINED_FUNCTION_297(v157);
      break;
    case 2u:
      OUTLINED_FUNCTION_51();
      sub_2574792EC(v21);
      OUTLINED_FUNCTION_297(v26);
      break;
    case 3u:
      v154 = OUTLINED_FUNCTION_166();
      sub_2574792EC(v154);
      OUTLINED_FUNCTION_297(v25);
      break;
    case 4u:
      OUTLINED_FUNCTION_119();
      v152 = OUTLINED_FUNCTION_409();
      sub_2574792EC(v152);
      OUTLINED_FUNCTION_297(v24);
      break;
    case 5u:
      OUTLINED_FUNCTION_109();
      sub_2574792EC(v21);
      v158 = OUTLINED_FUNCTION_189();
      OUTLINED_FUNCTION_297(v158);
      break;
    case 6u:
      OUTLINED_FUNCTION_105();
      v166 = OUTLINED_FUNCTION_408();
      sub_2574792EC(v166);
      OUTLINED_FUNCTION_297(v23);
      break;
    case 7u:
      OUTLINED_FUNCTION_113();
      v155 = OUTLINED_FUNCTION_263();
      sub_2574792EC(v155);
      OUTLINED_FUNCTION_297(v22);
      break;
    case 8u:
      OUTLINED_FUNCTION_102();
      OUTLINED_FUNCTION_319(v21);
      OUTLINED_FUNCTION_81();
      break;
    case 9u:
      OUTLINED_FUNCTION_117();
      OUTLINED_FUNCTION_319(v21);
      OUTLINED_FUNCTION_81();
      break;
    case 0xAu:
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_319(v21);
      OUTLINED_FUNCTION_81();
      break;
    case 0xBu:
      OUTLINED_FUNCTION_120();
      OUTLINED_FUNCTION_319(v21);
      OUTLINED_FUNCTION_81();
      break;
    case 0xCu:
      OUTLINED_FUNCTION_118();
      OUTLINED_FUNCTION_319(v21);
      OUTLINED_FUNCTION_81();
      break;
    case 0xDu:
      OUTLINED_FUNCTION_106();
      OUTLINED_FUNCTION_319(v21);
      OUTLINED_FUNCTION_81();
      break;
    case 0xEu:
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_319(v21);
      OUTLINED_FUNCTION_81();
      break;
    case 0xFu:
      OUTLINED_FUNCTION_114();
      OUTLINED_FUNCTION_318();
      sub_2574792EC(v153);
      OUTLINED_FUNCTION_81();
      break;
    case 0x10u:
      OUTLINED_FUNCTION_123();
      OUTLINED_FUNCTION_319(v21);
      OUTLINED_FUNCTION_81();
      break;
    case 0x11u:
      OUTLINED_FUNCTION_111();
      OUTLINED_FUNCTION_319(v21);
      OUTLINED_FUNCTION_81();
      break;
    case 0x12u:
      OUTLINED_FUNCTION_104();
      OUTLINED_FUNCTION_319(v21);
      OUTLINED_FUNCTION_81();
      break;
    case 0x13u:
      OUTLINED_FUNCTION_99();
      sub_2574792EC(v21);
      OUTLINED_FUNCTION_81();
      break;
    case 0x14u:
      OUTLINED_FUNCTION_110();
      sub_2574792EC(v21);
      sub_257654400(v171);
      sub_257479298(v168);
      break;
    case 0x15u:
      OUTLINED_FUNCTION_108();
      sub_2574792EC(v21);
      v159 = type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.OneOf_VisionFeaturePrintType(0);
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v160, v161, v162, v159);
      type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint(0);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      sub_2574695E4(v171, &qword_27F87A068, &qword_2577449A0);
      sub_2577131AC();
      sub_257479298(v170);
      OUTLINED_FUNCTION_21();
      __swift_storeEnumTagSinglePayload(v163, v164, v165, v159);
      break;
    case 0x16u:
      v167 = OUTLINED_FUNCTION_166();
      sub_2574792EC(v167);
      sub_257691C3C(v171);
      sub_257479298(v169);
      break;
    case 0x17u:
      OUTLINED_FUNCTION_98();
      sub_2574792EC(v21);
      OUTLINED_FUNCTION_81();
      break;
    case 0x18u:
      OUTLINED_FUNCTION_115();
      sub_2574792EC(v21);
      OUTLINED_FUNCTION_81();
      break;
    case 0x19u:
      OUTLINED_FUNCTION_116();
      sub_2574792EC(v21);
      OUTLINED_FUNCTION_81();
      break;
    case 0x1Au:
      OUTLINED_FUNCTION_95();
      sub_2574792EC(v21);
      OUTLINED_FUNCTION_81();
      break;
    case 0x1Bu:
      OUTLINED_FUNCTION_125();
      sub_2574792EC(v21);
      OUTLINED_FUNCTION_81();
      break;
    case 0x1Cu:
      OUTLINED_FUNCTION_97();
      sub_2574792EC(v21);
      OUTLINED_FUNCTION_81();
      break;
    case 0x1Du:
      OUTLINED_FUNCTION_96();
      sub_2574792EC(v21);
      OUTLINED_FUNCTION_81();
      break;
    case 0x1Eu:
      OUTLINED_FUNCTION_101();
      sub_2574792EC(v21);
      OUTLINED_FUNCTION_81();
      break;
    case 0x1Fu:
      OUTLINED_FUNCTION_112();
      sub_2574792EC(v21);
      OUTLINED_FUNCTION_81();
      break;
    case 0x20u:
      OUTLINED_FUNCTION_100();
      sub_2574792EC(v21);
      OUTLINED_FUNCTION_81();
      break;
    case 0x21u:
      OUTLINED_FUNCTION_121();
      sub_2574792EC(v21);
      OUTLINED_FUNCTION_81();
      break;
    case 0x22u:
      OUTLINED_FUNCTION_124();
      sub_2574792EC(v21);
      OUTLINED_FUNCTION_81();
      break;
    case 0x23u:
      OUTLINED_FUNCTION_127();
      sub_2574792EC(v21);
      OUTLINED_FUNCTION_81();
      break;
    case 0x24u:
      OUTLINED_FUNCTION_126();
      sub_2574792EC(v21);
      OUTLINED_FUNCTION_81();
      break;
    case 0x25u:
      OUTLINED_FUNCTION_128();
      sub_2574792EC(v21);
      OUTLINED_FUNCTION_81();
      break;
    default:
      OUTLINED_FUNCTION_52();
      v151 = OUTLINED_FUNCTION_292();
      sub_2574792EC(v151);
      OUTLINED_FUNCTION_81();
      break;
  }

  type metadata accessor for Proto_Model.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_35();
}

uint64_t (*Model.kind.modify(void *a1))()
{
  *a1 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  OUTLINED_FUNCTION_13(v3);
  a1[1] = __swift_coroFrameAllocStub(*(v4 + 64));
  v5 = type metadata accessor for ModelKind(0);
  OUTLINED_FUNCTION_13(v5);
  v7 = *(v6 + 64);
  a1[2] = __swift_coroFrameAllocStub(v7);
  a1[3] = __swift_coroFrameAllocStub(v7);
  Model.kind.getter();
  return sub_25746FF80;
}

void Model.functions.getter()
{
  OUTLINED_FUNCTION_31();
  v4 = type metadata accessor for FunctionDescription(0);
  v5 = OUTLINED_FUNCTION_24(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  v6 = OUTLINED_FUNCTION_201();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_13(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_78();
  type metadata accessor for Proto_ModelDescription(v10);
  OUTLINED_FUNCTION_30_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19_0();
  type metadata accessor for Proto_Model(0);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_178(v0 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p);
  OUTLINED_FUNCTION_175();
  v12 = OUTLINED_FUNCTION_188();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, v13, v2);
  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_86(EnumTagSinglePayload);
    OUTLINED_FUNCTION_438();
    v15 = OUTLINED_FUNCTION_317();
    OUTLINED_FUNCTION_29_0(v15, v16, v17, v18);
    if (!v19)
    {
      sub_2574695E4(v1, &qword_27F879BD8, &qword_257750240);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    v20 = OUTLINED_FUNCTION_264();
    sub_2574792EC(v20);
  }

  v21 = *v3;

  OUTLINED_FUNCTION_6_0();
  sub_257479298(v3);
  if (*(v21 + 16))
  {
    v22 = OUTLINED_FUNCTION_147();
    sub_25748389C(v22, v23, v24);
    v25 = OUTLINED_FUNCTION_404();
    v26 = type metadata accessor for Proto_FunctionDescription(v25);
    OUTLINED_FUNCTION_24(v26);
    do
    {
      OUTLINED_FUNCTION_93();
      v27 = OUTLINED_FUNCTION_229();
      sub_257483824(v27);
      OUTLINED_FUNCTION_187();
      if (v29)
      {
        v31 = OUTLINED_FUNCTION_144(v28);
        sub_25748389C(v31, v32, v33);
      }

      OUTLINED_FUNCTION_76();
      v30 = OUTLINED_FUNCTION_166();
      sub_2574792EC(v30);
      OUTLINED_FUNCTION_396();
    }

    while (!v19);
  }

  OUTLINED_FUNCTION_372();
  OUTLINED_FUNCTION_35();
}

void Model.functions.setter()
{
  OUTLINED_FUNCTION_31();
  v6 = OUTLINED_FUNCTION_257();
  v7 = type metadata accessor for FunctionDescription(v6);
  v8 = OUTLINED_FUNCTION_24(v7);
  v10 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = OUTLINED_FUNCTION_16_0();
  v12 = type metadata accessor for Proto_FunctionDescription(v11);
  v13 = OUTLINED_FUNCTION_24(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_227();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BD8, &qword_257750240);
  OUTLINED_FUNCTION_13(v14);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  v16 = OUTLINED_FUNCTION_64();
  type metadata accessor for Proto_ModelDescription(v16);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_19_0();
  if (*(v0 + 16))
  {
    v18 = OUTLINED_FUNCTION_75(MEMORY[0x277D84F90]);
    sub_2574838F4(v18, v19, v20);
    OUTLINED_FUNCTION_74();
    do
    {
      v21 = OUTLINED_FUNCTION_189();
      sub_257483824(v21);
      OUTLINED_FUNCTION_93();
      OUTLINED_FUNCTION_389();
      OUTLINED_FUNCTION_237();
      sub_257479298(v4);
      OUTLINED_FUNCTION_184();
      if (v23)
      {
        v25 = OUTLINED_FUNCTION_145(v22);
        sub_2574838F4(v25, v26, v27);
        v1 = v36;
      }

      OUTLINED_FUNCTION_73();
      sub_2574792EC(v5);
      OUTLINED_FUNCTION_395();
    }

    while (!v24);

    OUTLINED_FUNCTION_394();
  }

  else
  {

    v1 = MEMORY[0x277D84F90];
  }

  type metadata accessor for Proto_Model(0);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_178(v10 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p);
  OUTLINED_FUNCTION_437();
  v28 = OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_69(v28, v29);
  if (v24)
  {
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_436(v30);
    OUTLINED_FUNCTION_435();
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
    OUTLINED_FUNCTION_26_0(v2);
    if (!v24)
    {
      sub_2574695E4(v2, &qword_27F879BD8, &qword_257750240);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    v35 = OUTLINED_FUNCTION_211();
    sub_2574792EC(v35);
  }

  *v3 = v1;
  sub_2574FE460(v3);
  OUTLINED_FUNCTION_35();
}

uint64_t Model.functions.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_375(a1);
  Model.functions.getter();
  *v1 = v2;
  return OUTLINED_FUNCTION_43();
}

uint64_t sub_2574705F0(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  a3(v4);
}

void Model.defaultFunctionName.getter()
{
  OUTLINED_FUNCTION_433();
  v3 = OUTLINED_FUNCTION_277();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for Proto_ModelDescription(v7);
  OUTLINED_FUNCTION_32_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_0();
  type metadata accessor for Proto_Model(0);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_296(v1 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p, &v15);
  OUTLINED_FUNCTION_314();
  OUTLINED_FUNCTION_26_0(v2);
  if (v9)
  {
    OUTLINED_FUNCTION_170(MEMORY[0x277D84F90]);
    type metadata accessor for Proto_Metadata(0);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    OUTLINED_FUNCTION_26_0(v2);
    if (!v9)
    {
      sub_2574695E4(v2, &qword_27F879BD8, &qword_257750240);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    v14 = OUTLINED_FUNCTION_230();
    sub_2574792EC(v14);
  }

  OUTLINED_FUNCTION_6_0();
  sub_257479298(v0);
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_434();
}

void Model.defaultFunctionName.setter()
{
  OUTLINED_FUNCTION_31();
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_201();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_13(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_78();
  v12 = type metadata accessor for Proto_ModelDescription(v11);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_23_0();
  v14 = *(v0 + *(type metadata accessor for Proto_Model(0) + 20));
  v15 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p;
  OUTLINED_FUNCTION_178(v14 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p);
  OUTLINED_FUNCTION_214(v14 + v15);
  OUTLINED_FUNCTION_65(v1);
  if (v16)
  {
    OUTLINED_FUNCTION_169(MEMORY[0x277D84F90]);
    v17 = *(v12 + 52);
    v18 = type metadata accessor for Proto_Metadata(0);
    v21 = OUTLINED_FUNCTION_37_0(v2 + v17, v19, v20, v18);
    OUTLINED_FUNCTION_142(v21, v22);
    if (!v16)
    {
      sub_2574695E4(v1, &qword_27F879BD8, &qword_257750240);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    v23 = OUTLINED_FUNCTION_277();
    sub_2574792EC(v23);
  }

  *(v2 + 8) = v6;
  *(v2 + 16) = v4;
  sub_2574FE460(v2);
  OUTLINED_FUNCTION_35();
}

void Model.defaultFunctionName.modify()
{
  OUTLINED_FUNCTION_31();
  v5 = __swift_coroFrameAllocStub(0x40uLL);
  OUTLINED_FUNCTION_330(v5);
  v6 = OUTLINED_FUNCTION_201();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_13(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  OUTLINED_FUNCTION_383(v10);
  OUTLINED_FUNCTION_30_0();
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  OUTLINED_FUNCTION_387(v12);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_296(v0 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p, v4);
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_34_0(v2);
  if (v13)
  {
    OUTLINED_FUNCTION_168(MEMORY[0x277D84F90]);
    v14 = *(v3 + 52);
    v15 = type metadata accessor for Proto_Metadata(0);
    OUTLINED_FUNCTION_29_0(v1 + v14, v16, v17, v15);
    if (!v13)
    {
      sub_2574695E4(v2, &qword_27F879BD8, &qword_257750240);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    v18 = OUTLINED_FUNCTION_176();
    sub_2574792EC(v18);
  }

  v20 = *(v1 + 8);
  v19 = *(v1 + 16);

  OUTLINED_FUNCTION_6_0();
  sub_257479298(v1);
  *(v4 + 24) = v20;
  *(v4 + 32) = v19;
  OUTLINED_FUNCTION_35();
}

void sub_257470A8C(uint64_t a1)
{
  OUTLINED_FUNCTION_433();
  v2 = v1;
  v4 = *(*v3 + 48);
  v5 = *(*v3 + 56);
  if (v6)
  {

    v7 = OUTLINED_FUNCTION_194();
    v2(v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_194();
    v2(v8);
  }

  free(v5);
  free(v4);
  OUTLINED_FUNCTION_434();

  free(v9);
}

uint64_t Model.nestedModels.getter()
{
  v4 = type metadata accessor for PipelineRegressorConfiguration(0);
  v5 = OUTLINED_FUNCTION_13(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17_0();
  v6 = type metadata accessor for PipelineClassifierConfiguration(0);
  v7 = OUTLINED_FUNCTION_13(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_24_0();
  v8 = type metadata accessor for PipelineConfiguration(0);
  v9 = OUTLINED_FUNCTION_13(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_23_0();
  type metadata accessor for ModelKind(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  Model.kind.getter();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_50();
      v15 = OUTLINED_FUNCTION_292();
      sub_2574792EC(v15);
      PipelineRegressorConfiguration.models.getter();
      v13 = v16;
      OUTLINED_FUNCTION_90();
      v14 = v0;
    }

    else if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_51();
      v12 = OUTLINED_FUNCTION_408();
      sub_2574792EC(v12);
      v13 = PipelineConfiguration.models.getter();
      OUTLINED_FUNCTION_91();
      v14 = v3;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BF0, &unk_257744380);
      v19 = OUTLINED_FUNCTION_376();
      v20 = type metadata accessor for Model(v19);
      OUTLINED_FUNCTION_24(v20);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_2577442B0;
      sub_257483824(v1);
      OUTLINED_FUNCTION_9_0();
      v14 = v2;
    }
  }

  else
  {
    OUTLINED_FUNCTION_52();
    v17 = OUTLINED_FUNCTION_263();
    sub_2574792EC(v17);
    PipelineClassifierConfiguration.models.getter();
    v13 = v18;
    v14 = OUTLINED_FUNCTION_195();
  }

  sub_257479298(v14);
  return v13;
}

void sub_257470D6C()
{
  OUTLINED_FUNCTION_31();
  v3 = v0;
  v414[17] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for FunctionDescription(0);
  v5 = OUTLINED_FUNCTION_24(v4);
  v373 = v6;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_1();
  v389 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BD8, &qword_257750240);
  v9 = OUTLINED_FUNCTION_13(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_25_0();
  v377 = v10;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_167();
  v380 = v12;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_167();
  v375 = v14;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_196();
  v378 = v16;
  v17 = OUTLINED_FUNCTION_153();
  v18 = type metadata accessor for Proto_ModelDescription(v17);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_25_0();
  v376 = v20;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_167();
  v379 = v22;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_167();
  v374 = v24;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_218();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C38, &qword_257744550);
  v27 = OUTLINED_FUNCTION_13(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_25_0();
  v388 = v28;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_167();
  v398 = v30;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_196();
  v395 = v32;
  v33 = OUTLINED_FUNCTION_153();
  v406 = type metadata accessor for Proto_FeatureType(v33);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_25_0();
  v390 = v35;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_167();
  v397 = v37;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_196();
  v394 = v39;
  v40 = OUTLINED_FUNCTION_153();
  v41 = type metadata accessor for FeatureType(v40);
  v42 = OUTLINED_FUNCTION_13(v41);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_25_0();
  v387 = v43;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_167();
  v396 = v45;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_196();
  v393 = v47;
  v48 = OUTLINED_FUNCTION_153();
  v49 = type metadata accessor for FeatureDescription(v48);
  v50 = OUTLINED_FUNCTION_24(v49);
  v384 = v51;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_25_0();
  v399 = v52;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_167();
  v405 = v54;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_196();
  v403 = v56;
  v57 = OUTLINED_FUNCTION_153();
  v58 = type metadata accessor for ModelKind(v57);
  v59 = OUTLINED_FUNCTION_13(v58);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_3();
  v62 = v61 - v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B28, &unk_257773B40);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_356(inited, xmmword_257743FF0);
  Model.kind.getter();
  ModelKind.name.getter();
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_9_0();
  v381 = v62;
  sub_257479298(v62);
  inited[3].n128_u64[0] = v62;
  inited[3].n128_u64[1] = v1;
  inited[4].n128_u8[0] = 0;
  strcpy(&inited[4].n128_i8[8], "Spec. Version");
  inited[5].n128_u16[3] = -4864;
  v64 = *(v0 + *(type metadata accessor for Proto_Model(0) + 20));
  OUTLINED_FUNCTION_296(v64 + 16, v414);
  v385 = v64;
  v412 = *(v64 + 16);
  inited[5].n128_u64[1] = sub_257743674();
  inited[6].n128_u64[0] = v65;
  inited[6].n128_u8[8] = 0;
  Model.versionString.getter();
  OUTLINED_FUNCTION_266();

  OUTLINED_FUNCTION_191();
  v386 = v3;
  if (v66)
  {
    Model.versionString.getter();
    OUTLINED_FUNCTION_199();
    OUTLINED_FUNCTION_221();

    v67 = v412;
    v68 = v413;
    sub_257469AE0();
    v69[1].n128_u64[0] = 3;
    strcpy(&v69[7], "Model Version");
    v69[7].n128_u16[7] = -4864;
    v69[8].n128_u64[0] = v67;
    v69[8].n128_u64[1] = v68;
    v391 = v69;
    v69[9].n128_u8[0] = 0;
  }

  else
  {
    v391 = inited;
  }

  Model.modelDescription.getter();
  OUTLINED_FUNCTION_266();

  OUTLINED_FUNCTION_191();
  if (v70)
  {
    Model.modelDescription.getter();
    OUTLINED_FUNCTION_199();
    OUTLINED_FUNCTION_221();

    v71 = v412;
    v72 = v413;
    OUTLINED_FUNCTION_150();
    if (v78)
    {
      OUTLINED_FUNCTION_174(v77);
      OUTLINED_FUNCTION_295();
      sub_257469AE0();
      v76 = v73;
    }

    *(v76 + 16) = v3;
    OUTLINED_FUNCTION_162(v73, v74, v75, v76);
    *(v79 + 32) = 0x7470697263736544;
    *(v79 + 40) = 0xEB000000006E6F69;
    *(v79 + 48) = v71;
    *(v79 + 56) = v72;
    *(v79 + 64) = 0;
  }

  Model.author.getter();
  OUTLINED_FUNCTION_266();

  OUTLINED_FUNCTION_191();
  if (v80)
  {
    Model.author.getter();
    OUTLINED_FUNCTION_199();
    OUTLINED_FUNCTION_221();

    OUTLINED_FUNCTION_150();
    if (v78)
    {
      OUTLINED_FUNCTION_174(v85);
      OUTLINED_FUNCTION_295();
      sub_257469AE0();
      v84 = v81;
    }

    *(v84 + 16) = v3;
    OUTLINED_FUNCTION_162(v81, v82, v83, v84);
    OUTLINED_FUNCTION_420(v86);
  }

  Model.license.getter();
  OUTLINED_FUNCTION_266();

  OUTLINED_FUNCTION_191();
  if (v87)
  {
    Model.license.getter();
    OUTLINED_FUNCTION_199();
    OUTLINED_FUNCTION_221();

    OUTLINED_FUNCTION_150();
    if (v78)
    {
      OUTLINED_FUNCTION_174(v92);
      OUTLINED_FUNCTION_295();
      sub_257469AE0();
      v91 = v88;
    }

    *(v91 + 16) = v3;
    OUTLINED_FUNCTION_162(v88, v89, v90, v91);
    OUTLINED_FUNCTION_420(v93);
  }

  Model.metadata.getter();
  v95 = *(v94 + 16);

  v382 = v2;
  v383 = v18;
  if (v95)
  {
    Model.metadata.getter();
    sub_2576A8C78(v96, v97, v98, v99, v100, v101, v102, v103, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v62, v2, v18, v384, v385, v3, v387, v388);
    v412 = v104;
    sub_2574867F0(&v412);

    v105 = v412;
    v106 = *(v412 + 16);
    if (v106)
    {
      v410 = MEMORY[0x277D84F90];
      v107 = OUTLINED_FUNCTION_269();
      sub_257484060(v107, v108, v109);
      v110 = v410;
      v111 = (v105 + 56);
      do
      {
        v112 = *(v111 - 2);
        v400 = *(v111 - 3);
        v113 = *(v111 - 1);
        v114 = *v111;
        OUTLINED_FUNCTION_151();
        swift_bridgeObjectRetain_n();

        MEMORY[0x259C64E90](v113, v114);
        OUTLINED_FUNCTION_221();

        v115 = v412;
        v116 = v413;
        v410 = v110;
        v118 = *(v110 + 16);
        v117 = *(v110 + 24);
        if (v118 >= v117 >> 1)
        {
          OUTLINED_FUNCTION_174(v117);
          OUTLINED_FUNCTION_310();
          sub_257484060(v120, v121, v122);
          v110 = v410;
        }

        *(v110 + 16) = v118 + 1;
        v119 = v110 + 40 * v118;
        *(v119 + 32) = v400;
        *(v119 + 40) = v112;
        *(v119 + 48) = v115;
        *(v119 + 56) = v116;
        *(v119 + 64) = 0;
        v111 += 4;
        --v106;
      }

      while (v106);

      v2 = v382;
      v18 = v383;
    }

    else
    {

      v110 = MEMORY[0x277D84F90];
    }

    sub_2576AACFC(v110);
    OUTLINED_FUNCTION_136();
    if (v78)
    {
      OUTLINED_FUNCTION_174(v127);
      OUTLINED_FUNCTION_378();
      v126 = v123;
    }

    *(v126 + 16) = 0;
    OUTLINED_FUNCTION_162(v123, v124, v125, v126);
    OUTLINED_FUNCTION_285(v128);
  }

  Model.inputs.getter();
  v130 = v129;
  v131 = *(v129 + 16);
  if (v131)
  {
    v410 = MEMORY[0x277D84F90];
    sub_257484060(0, v131, 0);
    v132 = v410;
    OUTLINED_FUNCTION_193();
    v372 = v130;
    v134 = v130 + v133;
    v392 = *(v135 + 72);
    do
    {
      OUTLINED_FUNCTION_15_0();
      sub_257483824(v134);
      OUTLINED_FUNCTION_151();
      MEMORY[0x259C64E90](*v403, v403[1]);
      OUTLINED_FUNCTION_221();
      v136 = v412;
      v401 = v413;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
      v137 = swift_initStackObject();
      v138 = v403 + *(OUTLINED_FUNCTION_182(v137) + 28);
      sub_257487308(v138);
      v139 = OUTLINED_FUNCTION_177();
      OUTLINED_FUNCTION_80(v139, v140);
      if (v141)
      {
        type metadata accessor for Proto_FeatureType.OneOf_Type(0);
        OUTLINED_FUNCTION_44();
        __swift_storeEnumTagSinglePayload(v142, v143, v144, v145);
        *(v394 + *(v406 + 20)) = 0;
        _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
        OUTLINED_FUNCTION_42_0(v395);
        if (!v141)
        {
          sub_2574695E4(v395, &qword_27F879C38, &qword_257744550);
        }
      }

      else
      {
        OUTLINED_FUNCTION_11_0();
        sub_2574792EC(v395);
      }

      sub_25768DB44();
      v146 = sub_25768E918();
      v148 = v147;
      v150 = v149;
      OUTLINED_FUNCTION_131();
      sub_257479298(v393);
      *(v137 + 48) = v146;
      *(v137 + 56) = v148;
      *(v137 + 64) = v150;
      OUTLINED_FUNCTION_278();
      *(v137 + 72) = v151;
      OUTLINED_FUNCTION_338();
      *(v137 + 80) = v152;
      OUTLINED_FUNCTION_151();
      MEMORY[0x259C64E90]();
      OUTLINED_FUNCTION_221();
      v153 = v413;
      *(v137 + 88) = v412;
      *(v137 + 96) = v153;
      *(v137 + 104) = 0;
      v130 = sub_2576A6964(v137);
      v155 = v154;
      OUTLINED_FUNCTION_14_0();
      sub_257479298(v403);
      v410 = v132;
      v157 = *(v132 + 16);
      v156 = *(v132 + 24);
      if (v157 >= v156 >> 1)
      {
        OUTLINED_FUNCTION_174(v156);
        OUTLINED_FUNCTION_310();
        sub_257484060(v159, v160, v161);
        v132 = v410;
      }

      *(v132 + 16) = v157 + 1;
      v158 = v132 + 40 * v157;
      *(v158 + 32) = v136;
      *(v158 + 40) = v401;
      *(v158 + 48) = v130;
      *(v158 + 56) = v155;
      *(v158 + 64) = 2;
      v134 += v392;
      --v131;
    }

    while (v131);

    v2 = v382;
    v18 = v383;
  }

  else
  {

    v132 = MEMORY[0x277D84F90];
  }

  sub_2576AACFC(v132);
  OUTLINED_FUNCTION_136();
  if (v78)
  {
    OUTLINED_FUNCTION_174(v166);
    OUTLINED_FUNCTION_378();
    v165 = v162;
  }

  *(v165 + 16) = v130;
  OUTLINED_FUNCTION_162(v162, v163, v164, v165);
  OUTLINED_FUNCTION_285(v167);
  Model.outputs.getter();
  v169 = v168;
  v170 = *(v168 + 16);
  if (v170)
  {
    v410 = MEMORY[0x277D84F90];
    v171 = OUTLINED_FUNCTION_269();
    sub_257484060(v171, v172, v173);
    v174 = v410;
    OUTLINED_FUNCTION_193();
    v176 = v169 + v175;
    v402 = *(v177 + 72);
    do
    {
      OUTLINED_FUNCTION_15_0();
      sub_257483824(v176);
      OUTLINED_FUNCTION_151();
      MEMORY[0x259C64E90](*v405, v405[1]);
      OUTLINED_FUNCTION_221();
      v178 = v412;
      v404 = v413;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
      v179 = swift_initStackObject();
      v180 = v405 + *(OUTLINED_FUNCTION_182(v179) + 28);
      sub_257487308(v180);
      OUTLINED_FUNCTION_80(v398, 1);
      if (v141)
      {
        type metadata accessor for Proto_FeatureType.OneOf_Type(0);
        OUTLINED_FUNCTION_44();
        __swift_storeEnumTagSinglePayload(v181, v182, v183, v184);
        *(v397 + *(v406 + 20)) = 0;
        _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
        OUTLINED_FUNCTION_42_0(v398);
        if (!v141)
        {
          sub_2574695E4(v398, &qword_27F879C38, &qword_257744550);
        }
      }

      else
      {
        OUTLINED_FUNCTION_11_0();
        sub_2574792EC(v398);
      }

      sub_25768DB44();
      v185 = sub_25768E918();
      v187 = v186;
      v189 = v188;
      OUTLINED_FUNCTION_131();
      sub_257479298(v396);
      *(v179 + 48) = v185;
      *(v179 + 56) = v187;
      *(v179 + 64) = v189;
      OUTLINED_FUNCTION_278();
      *(v179 + 72) = v190;
      OUTLINED_FUNCTION_338();
      *(v179 + 80) = v191;
      OUTLINED_FUNCTION_151();
      MEMORY[0x259C64E90]();
      OUTLINED_FUNCTION_221();
      v192 = v413;
      *(v179 + 88) = v412;
      *(v179 + 96) = v192;
      *(v179 + 104) = 0;
      v193 = sub_2576A6964(v179);
      v195 = v194;
      OUTLINED_FUNCTION_14_0();
      sub_257479298(v405);
      v410 = v174;
      v197 = *(v174 + 16);
      v196 = *(v174 + 24);
      if (v197 >= v196 >> 1)
      {
        v199 = OUTLINED_FUNCTION_174(v196);
        sub_257484060(v199, v197 + 1, 1);
        v174 = v410;
      }

      *(v174 + 16) = v197 + 1;
      v198 = v174 + 40 * v197;
      *(v198 + 32) = v178;
      *(v198 + 40) = v404;
      *(v198 + 48) = v193;
      *(v198 + 56) = v195;
      *(v198 + 64) = 2;
      v176 += v402;
      --v170;
    }

    while (v170);

    v2 = v382;
    v18 = v383;
  }

  else
  {

    v174 = MEMORY[0x277D84F90];
  }

  sub_2576AACFC(v174);
  OUTLINED_FUNCTION_136();
  if (v78)
  {
    OUTLINED_FUNCTION_174(v204);
    OUTLINED_FUNCTION_378();
    v203 = v200;
  }

  v205 = v390;
  *(v203 + 16) = 0;
  OUTLINED_FUNCTION_162(v200, v201, v202, v203);
  OUTLINED_FUNCTION_285(v206);
  v207 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p;
  OUTLINED_FUNCTION_296(v385 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p, &v412);
  sub_257487308(v385 + v207);
  OUTLINED_FUNCTION_54(v378);
  if (v141)
  {
    v208 = MEMORY[0x277D84F90];
    *v2 = MEMORY[0x277D84F90];
    v2[1] = 0;
    v2[2] = 0xE000000000000000;
    v2[3] = v208;
    v2[4] = v208;
    v2[5] = v208;
    v2[6] = 0;
    v2[7] = 0xE000000000000000;
    v2[8] = 0;
    v2[9] = 0xE000000000000000;
    v2[10] = v208;
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v209 = OUTLINED_FUNCTION_440();
    v212 = OUTLINED_FUNCTION_37_0(v2 + v385, v210, v211, v209);
    OUTLINED_FUNCTION_155(v212, v213, v18);
    if (!v141)
    {
      sub_2574695E4(v378, &qword_27F879BD8, &qword_257750240);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    v214 = OUTLINED_FUNCTION_362();
    sub_2574792EC(v214);
  }

  v216 = v2[6];
  v215 = v2[7];

  OUTLINED_FUNCTION_6_0();
  sub_257479298(v2);

  v217 = HIBYTE(v215) & 0xF;
  if ((v215 & 0x2000000000000000) == 0)
  {
    v217 = v216 & 0xFFFFFFFFFFFFLL;
  }

  if (v217)
  {
    sub_257487308(v385 + v207);
    OUTLINED_FUNCTION_54(v375);
    if (v141)
    {
      v222 = v374;
      OUTLINED_FUNCTION_56();
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      OUTLINED_FUNCTION_440();
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v218, v219, v220, v221);
      OUTLINED_FUNCTION_54(v375);
      if (!v141)
      {
        sub_2574695E4(v375, &qword_27F879BD8, &qword_257750240);
      }
    }

    else
    {
      OUTLINED_FUNCTION_5_0();
      v222 = v374;
      sub_2574792EC(v375);
    }

    OUTLINED_FUNCTION_6_0();
    sub_257479298(v222);
    v410 = 34;
    v411 = 0xE100000000000000;
    v223 = OUTLINED_FUNCTION_263();
    MEMORY[0x259C64E90](v223);
    OUTLINED_FUNCTION_316();

    v227 = v391;
    v229 = v391[1].n128_u64[0];
    v228 = v391[1].n128_u64[1];
    v215 = v229 + 1;
    if (v229 >= v228 >> 1)
    {
      OUTLINED_FUNCTION_174(v228);
      OUTLINED_FUNCTION_295();
      sub_257469AE0();
      v227 = v224;
    }

    OUTLINED_FUNCTION_209(v224, v225, v226, v227);
    v232 = v230 + v229 * v231;
    *(v232 + 32) = 0xD000000000000016;
    *(v232 + 40) = v233;
    *(v232 + 48) = 34;
    *(v232 + 56) = 0xE100000000000000;
    *(v232 + 64) = 0;
    v205 = v390;
  }

  v234 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p;
  sub_257487308(v385 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p);
  OUTLINED_FUNCTION_54(v380);
  if (v141)
  {
    v235 = MEMORY[0x277D84F90];
    v241 = v379;
    *v379 = MEMORY[0x277D84F90];
    v379[1] = 0;
    v379[2] = 0xE000000000000000;
    v379[3] = v235;
    v379[4] = v235;
    v379[5] = v235;
    v379[6] = 0;
    v379[7] = 0xE000000000000000;
    v379[8] = 0;
    v379[9] = 0xE000000000000000;
    v379[10] = v235;
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v236 = OUTLINED_FUNCTION_440();
    v239 = OUTLINED_FUNCTION_37_0(v379 + v215, v237, v238, v236);
    OUTLINED_FUNCTION_155(v239, v240, v18);
    v242 = v386;
    if (!v141)
    {
      sub_2574695E4(v380, &qword_27F879BD8, &qword_257750240);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    v241 = v379;
    sub_2574792EC(v380);
    v242 = v386;
  }

  v243 = *(v241 + 64);
  v244 = *(v241 + 72);

  OUTLINED_FUNCTION_6_0();
  sub_257479298(v241);

  v245 = HIBYTE(v244) & 0xF;
  if ((v244 & 0x2000000000000000) == 0)
  {
    v245 = v243 & 0xFFFFFFFFFFFFLL;
  }

  if (v245)
  {
    sub_257487308(v385 + v234);
    OUTLINED_FUNCTION_54(v377);
    if (v141)
    {
      v244 = v376;
      v246 = MEMORY[0x277D84F90];
      *v376 = MEMORY[0x277D84F90];
      v376[1] = 0;
      v376[2] = 0xE000000000000000;
      v376[3] = v246;
      v376[4] = v246;
      v376[5] = v246;
      v376[6] = 0;
      v376[7] = 0xE000000000000000;
      v376[8] = 0;
      v376[9] = 0xE000000000000000;
      v376[10] = v246;
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      OUTLINED_FUNCTION_440();
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v247, v248, v249, v250);
      OUTLINED_FUNCTION_54(v377);
      if (!v141)
      {
        sub_2574695E4(v377, &qword_27F879BD8, &qword_257750240);
      }
    }

    else
    {
      OUTLINED_FUNCTION_5_0();
      v244 = v376;
      sub_2574792EC(v377);
    }

    OUTLINED_FUNCTION_6_0();
    sub_257479298(v244);
    v410 = 34;
    v411 = 0xE100000000000000;
    v251 = OUTLINED_FUNCTION_263();
    MEMORY[0x259C64E90](v251);
    OUTLINED_FUNCTION_316();

    OUTLINED_FUNCTION_150();
    if (v78)
    {
      OUTLINED_FUNCTION_174(v256);
      OUTLINED_FUNCTION_295();
      sub_257469AE0();
      v255 = v252;
    }

    OUTLINED_FUNCTION_209(v252, v253, v254, v255);
    v259 = v257 + v244 * v258;
    *(v259 + 32) = 0xD00000000000001CLL;
    *(v259 + 40) = v260;
    *(v259 + 48) = 34;
    *(v259 + 56) = 0xE100000000000000;
    *(v259 + 64) = 0;
    v242 = v386;
  }

  Model.trainingInput.getter();
  v262 = *(v261 + 16);

  if (v262)
  {
    Model.trainingInput.getter();
    v264 = v263;
    v265 = *(v263 + 16);
    if (v265)
    {
      v408 = MEMORY[0x277D84F90];
      v266 = OUTLINED_FUNCTION_269();
      sub_257484040(v266, v267, v268);
      v269 = v408;
      OUTLINED_FUNCTION_193();
      v244 = v264 + v270;
      v272 = *(v271 + 72);
      do
      {
        OUTLINED_FUNCTION_15_0();
        sub_257483824(v244);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
        v273 = swift_initStackObject();
        v274 = v399 + *(OUTLINED_FUNCTION_182(v273) + 28);
        sub_257487308(v274);
        OUTLINED_FUNCTION_69(v388, 1);
        if (v141)
        {
          type metadata accessor for Proto_FeatureType.OneOf_Type(0);
          OUTLINED_FUNCTION_44();
          __swift_storeEnumTagSinglePayload(v275, v276, v277, v278);
          *(v205 + *(v406 + 20)) = 0;
          _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
          OUTLINED_FUNCTION_26_0(v388);
          if (!v141)
          {
            sub_2574695E4(v388, &qword_27F879C38, &qword_257744550);
          }
        }

        else
        {
          OUTLINED_FUNCTION_11_0();
          v279 = OUTLINED_FUNCTION_373();
          sub_2574792EC(v279);
        }

        sub_25768DB44();
        sub_25768E918();
        OUTLINED_FUNCTION_266();
        v281 = v280;
        OUTLINED_FUNCTION_131();
        sub_257479298(v387);
        *(v273 + 48) = v387;
        *(v273 + 56) = v406;
        *(v273 + 64) = v281;
        OUTLINED_FUNCTION_278();
        *(v273 + 72) = v282;
        OUTLINED_FUNCTION_338();
        *(v273 + 80) = v283;
        v284 = *(v399 + 16);
        v285 = *(v399 + 24);
        v410 = 34;
        v411 = 0xE100000000000000;
        MEMORY[0x259C64E90](v284, v285);
        OUTLINED_FUNCTION_316();
        *(v273 + 88) = 34;
        *(v273 + 96) = 0xE100000000000000;
        *(v273 + 104) = 0;
        v286 = sub_2576A6964(v273);
        v288 = v287;
        OUTLINED_FUNCTION_14_0();
        sub_257479298(v399);
        v290 = *(v408 + 16);
        v289 = *(v408 + 24);
        if (v290 >= v289 >> 1)
        {
          OUTLINED_FUNCTION_174(v289);
          OUTLINED_FUNCTION_310();
          sub_257484040(v292, v293, v294);
        }

        *(v408 + 16) = v290 + 1;
        v291 = v408 + 24 * v290;
        *(v291 + 32) = v286;
        *(v291 + 40) = v288;
        *(v291 + 48) = 2;
        v244 += v272;
        --v265;
        v205 = v390;
      }

      while (v265);

      v242 = v386;
    }

    else
    {

      v269 = MEMORY[0x277D84F90];
    }

    OUTLINED_FUNCTION_423();
    if (v78)
    {
      OUTLINED_FUNCTION_174(v299);
      OUTLINED_FUNCTION_378();
      v298 = v295;
    }

    OUTLINED_FUNCTION_417(v295, v296, v297, v298);
    *(v300 + 32) = 0x676E696E69617254;
    *(v300 + 40) = 0xEF737475706E4920;
    *(v300 + 48) = v269;
    *(v300 + 56) = 0;
    *(v300 + 64) = 1;
  }

  v301 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__isUpdatable;
  OUTLINED_FUNCTION_296(v385 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__isUpdatable, &v410);
  if (*(v385 + v301) == 1)
  {
    sub_257743674();
    OUTLINED_FUNCTION_136();
    if (v78)
    {
      OUTLINED_FUNCTION_174(v306);
      OUTLINED_FUNCTION_378();
      v305 = v302;
    }

    *(v305 + 16) = v385;
    OUTLINED_FUNCTION_162(v302, v303, v304, v305);
    *(v307 + 32) = 0x6C62617461647055;
    *(v307 + 40) = 0xE900000000000065;
    *(v307 + 48) = v242;
    *(v307 + 56) = v301;
    *(v307 + 64) = 0;
  }

  Model.functions.getter();
  v309 = *(v308 + 16);

  if (v309)
  {
    Model.functions.getter();
    v311 = v310;
    v312 = *(v310 + 16);
    if (v312)
    {
      v409 = MEMORY[0x277D84F90];
      v313 = OUTLINED_FUNCTION_269();
      sub_257484040(v313, v314, v315);
      v316 = v409;
      OUTLINED_FUNCTION_193();
      v244 = v311 + v317;
      v407 = *(v318 + 72);
      do
      {
        sub_257483824(v244);
        v319 = sub_2576DEA98();
        v321 = v320;
        v323 = v322;
        OUTLINED_FUNCTION_237();
        sub_257479298(v389);
        v325 = *(v409 + 16);
        v324 = *(v409 + 24);
        if (v325 >= v324 >> 1)
        {
          v327 = OUTLINED_FUNCTION_174(v324);
          sub_257484040(v327, v325 + 1, 1);
        }

        *(v409 + 16) = v325 + 1;
        v326 = v409 + 24 * v325;
        *(v326 + 32) = v319;
        *(v326 + 40) = v321;
        *(v326 + 48) = v323;
        v244 += v407;
        --v312;
      }

      while (v312);
    }

    else
    {

      v316 = MEMORY[0x277D84F90];
    }

    OUTLINED_FUNCTION_423();
    if (v78)
    {
      OUTLINED_FUNCTION_174(v332);
      OUTLINED_FUNCTION_378();
      v331 = v328;
    }

    OUTLINED_FUNCTION_417(v328, v329, v330, v331);
    *(v333 + 32) = 0x6E6F6974636E7546;
    *(v333 + 40) = 0xE900000000000073;
    *(v333 + 48) = v316;
    *(v333 + 56) = 0;
    *(v333 + 64) = 1;
  }

  Model.defaultFunctionName.getter();
  v335 = v334;
  v337 = v336;

  v338 = HIBYTE(v337) & 0xF;
  if ((v337 & 0x2000000000000000) == 0)
  {
    v338 = v335 & 0xFFFFFFFFFFFFLL;
  }

  if (v338)
  {
    Model.defaultFunctionName.getter();
    MEMORY[0x259C64E90]();
    OUTLINED_FUNCTION_316();

    OUTLINED_FUNCTION_150();
    if (v78)
    {
      OUTLINED_FUNCTION_174(v343);
      OUTLINED_FUNCTION_295();
      sub_257469AE0();
      v342 = v339;
    }

    OUTLINED_FUNCTION_209(v339, v340, v341, v342);
    v346 = v344 + v244 * v345;
    *(v346 + 32) = 0xD000000000000015;
    *(v346 + 40) = v347;
    *(v346 + 48) = 34;
    *(v346 + 56) = 0xE100000000000000;
    *(v346 + 64) = 0;
  }

  v348 = v381;
  Model.kind.getter();
  sub_25747291C(v349, v350, v351, v352, v353, v354, v355, v356, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382);
  v358 = v357;
  v360 = v359;
  v362 = v361;
  OUTLINED_FUNCTION_9_0();
  sub_257479298(v348);
  if (v362 == 2)
  {
    v363 = v391;
    if (*(v358 + 16))
    {
      v365 = v391[1].n128_u64[0];
      v364 = v391[1].n128_u64[1];
      if (v365 >= v364 >> 1)
      {
        OUTLINED_FUNCTION_174(v364);
        OUTLINED_FUNCTION_378();
        v363 = v370;
      }

      *(v363 + 16) = v365 + 1;
      v366 = v363 + 40 * v365;
      *(v366 + 32) = 0x6574656D61726150;
      *(v366 + 40) = 0xEA00000000007372;
      *(v366 + 48) = v358;
      *(v366 + 56) = v360;
      *(v366 + 64) = 2;
    }

    else
    {
      v367 = OUTLINED_FUNCTION_137();
      sub_257483A28(v367, v368, v369);
      v363 = v391;
    }

    sub_2576AACFC(v363);
    OUTLINED_FUNCTION_35();
  }

  else
  {
    sub_2577438C4();
    __break(1u);
    MEMORY[0x259C65580](v358);

    __break(1u);
  }
}

uint64_t ModelKind.name.getter()
{
  type metadata accessor for ModelKind(0);
  OUTLINED_FUNCTION_32_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_17_0();
  v2 = OUTLINED_FUNCTION_2_1();
  sub_257483824(v2);
  OUTLINED_FUNCTION_368();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 9u:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0x12u:
    case 0x13u:
    case 0x16u:
    case 0x17u:
    case 0x18u:
    case 0x19u:
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
    case 0x1Fu:
    case 0x20u:
      break;
    default:
      OUTLINED_FUNCTION_60();
      break;
  }

  sub_257479298(v0);
  return OUTLINED_FUNCTION_173();
}

void sub_25747291C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  v28 = type metadata accessor for NearestNeighborsConfiguration(0);
  v29 = OUTLINED_FUNCTION_13(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_12_1();
  v174 = v30;
  v31 = OUTLINED_FUNCTION_153();
  v32 = type metadata accessor for BayesianProbitRegressorConfiguration(v31);
  v33 = OUTLINED_FUNCTION_13(v32);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_12_1();
  v173 = v34;
  v35 = OUTLINED_FUNCTION_153();
  v36 = type metadata accessor for SupportVectorRegressorConfiguration(v35);
  v37 = OUTLINED_FUNCTION_13(v36);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_12_1();
  v39 = OUTLINED_FUNCTION_38_0(v38);
  v40 = type metadata accessor for SupportVectorClassifierConfiguration(v39);
  v41 = OUTLINED_FUNCTION_13(v40);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_12_1();
  v43 = OUTLINED_FUNCTION_38_0(v42);
  v44 = type metadata accessor for ClassConfidenceThresholding(v43);
  v45 = OUTLINED_FUNCTION_13(v44);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_12_1();
  v47 = OUTLINED_FUNCTION_38_0(v46);
  v48 = type metadata accessor for ODIELibrary(v47);
  v49 = OUTLINED_FUNCTION_13(v48);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_12_1();
  v51 = OUTLINED_FUNCTION_38_0(v50);
  v52 = type metadata accessor for MLProgram(v51);
  v53 = OUTLINED_FUNCTION_13(v52);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_12_1();
  v55 = OUTLINED_FUNCTION_38_0(v54);
  v56 = type metadata accessor for NeuralNetworkRegressor(v55);
  v57 = OUTLINED_FUNCTION_13(v56);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_12_1();
  v59 = OUTLINED_FUNCTION_38_0(v58);
  v60 = type metadata accessor for NeuralNetworkClassifier(v59);
  v61 = OUTLINED_FUNCTION_13(v60);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_12_1();
  v63 = OUTLINED_FUNCTION_38_0(v62);
  v64 = type metadata accessor for NeuralNetwork(v63);
  v65 = OUTLINED_FUNCTION_13(v64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_12_1();
  v67 = OUTLINED_FUNCTION_38_0(v66);
  v68 = type metadata accessor for ItemSimilarityRecommenderConfiguration(v67);
  v69 = OUTLINED_FUNCTION_13(v68);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_12_1();
  v71 = OUTLINED_FUNCTION_38_0(v70);
  v72 = type metadata accessor for GazetteerConfiguration(v71);
  v73 = OUTLINED_FUNCTION_13(v72);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_12_1();
  v75 = OUTLINED_FUNCTION_38_0(v74);
  v76 = type metadata accessor for TextClassifierConfiguration(v75);
  v77 = OUTLINED_FUNCTION_13(v76);
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_12_1();
  v79 = OUTLINED_FUNCTION_38_0(v78);
  v80 = type metadata accessor for WordEmbeddingConfiguration(v79);
  v81 = OUTLINED_FUNCTION_13(v80);
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_12_1();
  v83 = OUTLINED_FUNCTION_38_0(v82);
  v84 = type metadata accessor for WordTaggerConfiguration(v83);
  v85 = OUTLINED_FUNCTION_13(v84);
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_12_1();
  v87 = OUTLINED_FUNCTION_38_0(v86);
  v88 = type metadata accessor for VisionFeaturePrintKind(v87);
  v89 = OUTLINED_FUNCTION_13(v88);
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_12_1();
  v91 = OUTLINED_FUNCTION_38_0(v90);
  v92 = type metadata accessor for AudioFeaturePrintKind(v91);
  v93 = OUTLINED_FUNCTION_13(v92);
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_12_1();
  v95 = OUTLINED_FUNCTION_38_0(v94);
  v96 = type metadata accessor for ArrayFeatureExtractorConfiguration(v95);
  v97 = OUTLINED_FUNCTION_13(v96);
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_12_1();
  v99 = OUTLINED_FUNCTION_38_0(v98);
  v100 = type metadata accessor for TreeEnsembleRegressorConfiguration(v99);
  v101 = OUTLINED_FUNCTION_13(v100);
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_12_1();
  v103 = OUTLINED_FUNCTION_38_0(v102);
  v104 = type metadata accessor for TreeEnsembleClassifierConfiguration(v103);
  v105 = OUTLINED_FUNCTION_13(v104);
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_12_1();
  v107 = OUTLINED_FUNCTION_38_0(v106);
  v108 = type metadata accessor for LinearRegressorConfiguration(v107);
  v109 = OUTLINED_FUNCTION_13(v108);
  MEMORY[0x28223BE20](v109);
  OUTLINED_FUNCTION_12_1();
  v111 = OUTLINED_FUNCTION_38_0(v110);
  v112 = type metadata accessor for LinearClassifierConfiguration(v111);
  v113 = OUTLINED_FUNCTION_13(v112);
  MEMORY[0x28223BE20](v113);
  OUTLINED_FUNCTION_12_1();
  v115 = OUTLINED_FUNCTION_38_0(v114);
  v116 = type metadata accessor for NonMaximumSuppressorConfiguration(v115);
  v117 = OUTLINED_FUNCTION_13(v116);
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_12_1();
  v119 = OUTLINED_FUNCTION_38_0(v118);
  v120 = type metadata accessor for ScalerConfiguration(v119);
  v121 = OUTLINED_FUNCTION_13(v120);
  MEMORY[0x28223BE20](v121);
  OUTLINED_FUNCTION_12_1();
  v123 = OUTLINED_FUNCTION_38_0(v122);
  v124 = type metadata accessor for NormalizerConfiguration(v123);
  v125 = OUTLINED_FUNCTION_13(v124);
  MEMORY[0x28223BE20](v125);
  OUTLINED_FUNCTION_12_1();
  v127 = OUTLINED_FUNCTION_38_0(v126);
  v128 = type metadata accessor for OneHotEncoderConfiguration(v127);
  v129 = OUTLINED_FUNCTION_13(v128);
  MEMORY[0x28223BE20](v129);
  OUTLINED_FUNCTION_12_1();
  v131 = OUTLINED_FUNCTION_38_0(v130);
  v132 = type metadata accessor for CategoricalMappingConfiguration(v131);
  v133 = OUTLINED_FUNCTION_13(v132);
  MEMORY[0x28223BE20](v133);
  OUTLINED_FUNCTION_12_1();
  v135 = OUTLINED_FUNCTION_38_0(v134);
  v136 = type metadata accessor for ImputerConfiguration(v135);
  v137 = OUTLINED_FUNCTION_13(v136);
  MEMORY[0x28223BE20](v137);
  OUTLINED_FUNCTION_12_1();
  v139 = OUTLINED_FUNCTION_38_0(v138);
  v140 = type metadata accessor for DictionaryVectorizerConfiguration(v139);
  v141 = OUTLINED_FUNCTION_13(v140);
  MEMORY[0x28223BE20](v141);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  v142 = type metadata accessor for FeatureVectorizerConfiguration(0);
  v143 = OUTLINED_FUNCTION_13(v142);
  MEMORY[0x28223BE20](v143);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_227();
  v144 = type metadata accessor for SerializedModelConfiguration(0);
  v145 = OUTLINED_FUNCTION_13(v144);
  MEMORY[0x28223BE20](v145);
  v146 = OUTLINED_FUNCTION_16_0();
  v147 = type metadata accessor for LinkedModelConfiguration(v146);
  v148 = OUTLINED_FUNCTION_13(v147);
  MEMORY[0x28223BE20](v148);
  OUTLINED_FUNCTION_3();
  v149 = OUTLINED_FUNCTION_332();
  v150 = type metadata accessor for CustomModelConfiguration(v149);
  v151 = OUTLINED_FUNCTION_13(v150);
  MEMORY[0x28223BE20](v151);
  OUTLINED_FUNCTION_3();
  v152 = OUTLINED_FUNCTION_335();
  v153 = type metadata accessor for PipelineConfiguration(v152);
  v154 = OUTLINED_FUNCTION_13(v153);
  MEMORY[0x28223BE20](v154);
  OUTLINED_FUNCTION_17_0();
  v155 = type metadata accessor for PipelineRegressorConfiguration(0);
  v156 = OUTLINED_FUNCTION_13(v155);
  MEMORY[0x28223BE20](v156);
  OUTLINED_FUNCTION_19_0();
  v157 = type metadata accessor for PipelineClassifierConfiguration(0);
  v158 = OUTLINED_FUNCTION_13(v157);
  MEMORY[0x28223BE20](v158);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_421();
  type metadata accessor for ModelKind(0);
  OUTLINED_FUNCTION_30_0();
  MEMORY[0x28223BE20](v159);
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_3_0();
  sub_257483824(v21);
  OUTLINED_FUNCTION_277();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_50();
      v167 = OUTLINED_FUNCTION_264();
      sub_2574792EC(v167);
      sub_257694484();
      OUTLINED_FUNCTION_58();
      OUTLINED_FUNCTION_90();
      v160 = v24;
      goto LABEL_42;
    case 2u:
      OUTLINED_FUNCTION_51();
      v165 = OUTLINED_FUNCTION_204();
      sub_2574792EC(v165);
      sub_257694720();
      OUTLINED_FUNCTION_58();
      OUTLINED_FUNCTION_91();
      v160 = v20;
      goto LABEL_42;
    case 3u:
      sub_2576AACFC(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_9_0();
      v160 = v23;
      goto LABEL_42;
    case 4u:
      OUTLINED_FUNCTION_119();
      sub_2574792EC(v23);
      sub_25770CF4C();
      OUTLINED_FUNCTION_58();
      v160 = OUTLINED_FUNCTION_308();
      goto LABEL_42;
    case 5u:
      OUTLINED_FUNCTION_109();
      v168 = OUTLINED_FUNCTION_252();
      sub_2574792EC(v168);
      sub_2577110C4();
      OUTLINED_FUNCTION_58();
      v160 = v26;
      goto LABEL_42;
    case 6u:
      OUTLINED_FUNCTION_105();
      v169 = OUTLINED_FUNCTION_412();
      sub_2574792EC(v169);
      sub_25764D7E8();
      OUTLINED_FUNCTION_58();
      v160 = v25;
      goto LABEL_42;
    case 7u:
      OUTLINED_FUNCTION_113();
      v166 = OUTLINED_FUNCTION_362();
      sub_2574792EC(v166);
      sub_2576BE3AC();
      OUTLINED_FUNCTION_58();
      OUTLINED_FUNCTION_132();
      v160 = v27;
      goto LABEL_42;
    case 8u:
      OUTLINED_FUNCTION_102();
      v170 = OUTLINED_FUNCTION_176();
      sub_2574792EC(v170);
      sub_257685078();
      v160 = v22;
      goto LABEL_42;
    case 9u:
      OUTLINED_FUNCTION_117();
      OUTLINED_FUNCTION_301(v23);
      sub_25767FDD0();
      OUTLINED_FUNCTION_58();
      goto LABEL_41;
    case 0xAu:
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_301(v23);
      sub_2576FC990();
      OUTLINED_FUNCTION_58();
      goto LABEL_41;
    case 0xBu:
      OUTLINED_FUNCTION_120();
      OUTLINED_FUNCTION_301(v23);
      sub_257686794();
      OUTLINED_FUNCTION_58();
      goto LABEL_41;
    case 0xCu:
      OUTLINED_FUNCTION_118();
      OUTLINED_FUNCTION_319(v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
      inited = swift_initStackObject();
      v162 = OUTLINED_FUNCTION_356(inited, xmmword_2577442B0);
      if (*(v20 + 8) == 1)
      {
        v163 = *&aLMax[8 * *v20];
        v164 = qword_2577449D8[*v20];
      }

      else
      {
        v164 = 0xE500000000000000;
        v163 = 0x78616D2D4CLL;
      }

      v162[3].n128_u64[0] = v163;
      v162[3].n128_u64[1] = v164;
      v162[4].n128_u8[0] = 0;
      sub_2576A6964(v162);
      OUTLINED_FUNCTION_129();
      v160 = v20;
      goto LABEL_42;
    case 0xDu:
      OUTLINED_FUNCTION_106();
      OUTLINED_FUNCTION_301(v23);
      sub_2576BCD14();
      OUTLINED_FUNCTION_58();
      goto LABEL_41;
    case 0xEu:
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_301(v23);
      sub_2576EAFC4();
      OUTLINED_FUNCTION_58();
      goto LABEL_41;
    case 0xFu:
      OUTLINED_FUNCTION_114();
      OUTLINED_FUNCTION_301(v23);
      sub_257737CA0();
      OUTLINED_FUNCTION_58();
      goto LABEL_41;
    case 0x10u:
      OUTLINED_FUNCTION_123();
      OUTLINED_FUNCTION_301(v23);
      sub_25763EF6C();
      OUTLINED_FUNCTION_58();
      goto LABEL_41;
    case 0x11u:
      OUTLINED_FUNCTION_111();
      OUTLINED_FUNCTION_301(v23);
      sub_2576C9F64();
      OUTLINED_FUNCTION_58();
      goto LABEL_41;
    case 0x12u:
      OUTLINED_FUNCTION_104();
      OUTLINED_FUNCTION_301(v23);
      sub_25769EF58();
      OUTLINED_FUNCTION_58();
      goto LABEL_41;
    case 0x13u:
      OUTLINED_FUNCTION_99();
      OUTLINED_FUNCTION_301(v23);
      sub_25767A828();
      OUTLINED_FUNCTION_58();
      goto LABEL_41;
    case 0x14u:
      OUTLINED_FUNCTION_110();
      OUTLINED_FUNCTION_301(v23);
      sub_2576546DC();
      OUTLINED_FUNCTION_58();
      goto LABEL_41;
    case 0x15u:
      OUTLINED_FUNCTION_108();
      OUTLINED_FUNCTION_301(v23);
      sub_257712E44();
      OUTLINED_FUNCTION_58();
      goto LABEL_41;
    case 0x16u:
      sub_257479298(v23);
      goto LABEL_43;
    case 0x17u:
      OUTLINED_FUNCTION_98();
      OUTLINED_FUNCTION_301(v23);
      sub_25767DF4C();
      OUTLINED_FUNCTION_58();
      goto LABEL_41;
    case 0x18u:
      OUTLINED_FUNCTION_115();
      OUTLINED_FUNCTION_301(v23);
      sub_2576D7840();
      OUTLINED_FUNCTION_58();
      goto LABEL_41;
    case 0x19u:
      OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_301(v23);
      sub_2576881E4();
      OUTLINED_FUNCTION_58();
      goto LABEL_41;
    case 0x1Au:
      OUTLINED_FUNCTION_95();
      OUTLINED_FUNCTION_301(v23);
      sub_257725354();
      OUTLINED_FUNCTION_58();
      goto LABEL_41;
    case 0x1Bu:
      OUTLINED_FUNCTION_125();
      OUTLINED_FUNCTION_301(v23);
      sub_2576D8140();
      OUTLINED_FUNCTION_58();
      goto LABEL_41;
    case 0x1Cu:
      OUTLINED_FUNCTION_97();
      OUTLINED_FUNCTION_301(v23);
      sub_257497ABC();
      OUTLINED_FUNCTION_58();
      goto LABEL_41;
    case 0x1Du:
      OUTLINED_FUNCTION_96();
      OUTLINED_FUNCTION_301(v23);
      sub_257689828();
      OUTLINED_FUNCTION_58();
      goto LABEL_41;
    case 0x1Eu:
      OUTLINED_FUNCTION_101();
      OUTLINED_FUNCTION_301(v23);
      sub_2576C77D8();
      OUTLINED_FUNCTION_58();
      goto LABEL_41;
    case 0x1Fu:
      OUTLINED_FUNCTION_112();
      OUTLINED_FUNCTION_301(v23);
      sub_257657310();
      OUTLINED_FUNCTION_58();
      goto LABEL_41;
    case 0x20u:
      OUTLINED_FUNCTION_100();
      OUTLINED_FUNCTION_301(v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B28, &unk_257773B40);
      v171 = swift_initStackObject();
      *(v171 + 16) = xmmword_2577442B0;
      *(v171 + 32) = 0x656D614E656C6966;
      *(v171 + 40) = 0xE800000000000000;
      v172 = v21[1];
      *(v171 + 48) = *v21;
      *(v171 + 56) = v172;
      *(v171 + 64) = 0;

      sub_2576AACFC(v171);
      OUTLINED_FUNCTION_130();
      v160 = v21;
      goto LABEL_42;
    case 0x21u:
      OUTLINED_FUNCTION_121();
      OUTLINED_FUNCTION_301(v23);
      sub_25770BF48();
      OUTLINED_FUNCTION_58();
      goto LABEL_41;
    case 0x22u:
      OUTLINED_FUNCTION_124();
      OUTLINED_FUNCTION_301(v23);
      sub_257649AC4();
      OUTLINED_FUNCTION_58();
      goto LABEL_41;
    case 0x23u:
      OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_301(v23);
      sub_257668B70();
      OUTLINED_FUNCTION_58();
      goto LABEL_41;
    case 0x24u:
      OUTLINED_FUNCTION_126();
      v21 = v173;
      sub_2574792EC(v23);
      sub_2576C3308();
      OUTLINED_FUNCTION_58();
      goto LABEL_41;
    case 0x25u:
      OUTLINED_FUNCTION_128();
      v21 = v174;
      sub_2574792EC(v23);
      sub_25765E490();
      OUTLINED_FUNCTION_58();
      goto LABEL_41;
    default:
      OUTLINED_FUNCTION_52();
      sub_2574792EC(v23);
      sub_257694458();
      OUTLINED_FUNCTION_58();
LABEL_41:
      v160 = v21;
LABEL_42:
      sub_257479298(v160);
LABEL_43:
      OUTLINED_FUNCTION_360();
      OUTLINED_FUNCTION_35();
      return;
  }
}

uint64_t Model.init()@<X0>(uint64_t a2@<X8>)
{
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v3 = *(type metadata accessor for Proto_Model(0) + 20);
  if (qword_281538010 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_281538018;
}

void Model.customMirror.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  v161 = v23;
  v159 = sub_257743A84();
  OUTLINED_FUNCTION_63();
  v158 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_12_1();
  v160 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v27);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_198();
  v30 = OUTLINED_FUNCTION_38_0(v29);
  v156 = type metadata accessor for Model(v30);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_12_1();
  v155 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BD8, &qword_257750240);
  v34 = OUTLINED_FUNCTION_13(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v37);
  v39 = &v152[-v38];
  v40 = type metadata accessor for Proto_ModelDescription(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  v43 = MEMORY[0x28223BE20](v42);
  v45 = &v152[-v44];
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_163();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_218();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B48, &qword_257744390);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_2577442C0;
  *(v47 + 32) = 0xD000000000000014;
  *(v47 + 40) = 0x8000000257779AB0;
  v48 = *(v20 + *(type metadata accessor for Proto_Model(0) + 20));
  OUTLINED_FUNCTION_296(v48 + 16, &v169);
  v49 = *(v48 + 16);
  *(v47 + 72) = MEMORY[0x277D83B88];
  *(v47 + 48) = v49;
  *(v47 + 80) = xmmword_2577442D0;
  Model.inputs.getter();
  v51 = v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BF8, &qword_257744398);
  *(v47 + 120) = v52;
  *(v47 + 96) = v51;
  *(v47 + 128) = xmmword_2577442E0;
  Model.outputs.getter();
  v153 = v52;
  *(v47 + 168) = v52;
  *(v47 + 144) = v53;
  Model.modelDescription.getter();
  v55 = v54;
  v57 = v56;

  v58 = HIBYTE(v57) & 0xF;
  if ((v57 & 0x2000000000000000) == 0)
  {
    v58 = v55 & 0xFFFFFFFFFFFFLL;
  }

  v59 = MEMORY[0x277D837D0];
  if (v58)
  {
    Model.modelDescription.getter();
    v168 = v59;
    *&v167 = v60;
    *(&v167 + 1) = v61;
    *&v165 = 0xD000000000000010;
    *(&v165 + 1) = 0x8000000257779AD0;
    OUTLINED_FUNCTION_146(&v165);
    if (v62)
    {
      OUTLINED_FUNCTION_171();
      v47 = v144;
    }

    OUTLINED_FUNCTION_57();
  }

  Model.versionString.getter();
  OUTLINED_FUNCTION_380();
  OUTLINED_FUNCTION_273();
  if (v63)
  {
    Model.versionString.getter();
    OUTLINED_FUNCTION_341(v64, v65, MEMORY[0x277D837D0]);
    v165 = xmmword_2577442F0;
    OUTLINED_FUNCTION_146(v66);
    if (v62)
    {
      OUTLINED_FUNCTION_171();
      v47 = v145;
    }

    OUTLINED_FUNCTION_57();
  }

  Model.author.getter();
  OUTLINED_FUNCTION_380();
  OUTLINED_FUNCTION_273();
  if (v67)
  {
    Model.author.getter();
    OUTLINED_FUNCTION_341(v68, v69, MEMORY[0x277D837D0]);
    v165 = xmmword_257744300;
    OUTLINED_FUNCTION_146(v70);
    if (v62)
    {
      OUTLINED_FUNCTION_171();
      v47 = v146;
    }

    OUTLINED_FUNCTION_57();
  }

  Model.license.getter();
  OUTLINED_FUNCTION_380();
  OUTLINED_FUNCTION_273();
  if (v71)
  {
    Model.license.getter();
    OUTLINED_FUNCTION_341(v72, v73, MEMORY[0x277D837D0]);
    v165 = xmmword_257744310;
    OUTLINED_FUNCTION_146(v74);
    if (v62)
    {
      OUTLINED_FUNCTION_171();
      v47 = v147;
    }

    OUTLINED_FUNCTION_57();
  }

  Model.metadata.getter();
  v76 = *(v75 + 16);

  if (v76)
  {
    Model.metadata.getter();
    v78 = v77;
    v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C00, &unk_2577443A0);
    *&v167 = v78;
    v165 = xmmword_257744320;
    OUTLINED_FUNCTION_146(&v165);
    if (v62)
    {
      OUTLINED_FUNCTION_171();
      v47 = v148;
    }

    OUTLINED_FUNCTION_57();
  }

  v79 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p;
  OUTLINED_FUNCTION_296(v48 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p, &v164);
  v162 = v48;
  sub_257487308(v48 + v79);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v39, 1, v40);
  v81 = MEMORY[0x277D84F90];
  if (EnumTagSinglePayload == 1)
  {
    *v22 = MEMORY[0x277D84F90];
    v22[1] = 0;
    v22[2] = 0xE000000000000000;
    v22[3] = v81;
    v22[4] = v81;
    v22[5] = v81;
    v22[6] = 0;
    v22[7] = 0xE000000000000000;
    v22[8] = 0;
    v22[9] = 0xE000000000000000;
    v22[10] = v81;
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    type metadata accessor for Proto_Metadata(0);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v82, v83, v84, v85);
    OUTLINED_FUNCTION_35_0(v39);
    if (!v86)
    {
      sub_2574695E4(v39, &qword_27F879BD8, &qword_257750240);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    sub_2574792EC(v39);
  }

  v88 = v22[6];
  v87 = v22[7];

  OUTLINED_FUNCTION_6_0();
  sub_257479298(v22);

  v89 = HIBYTE(v87) & 0xF;
  if ((v87 & 0x2000000000000000) == 0)
  {
    v89 = v88 & 0xFFFFFFFFFFFFLL;
  }

  if (v89)
  {
    OUTLINED_FUNCTION_359();
    sub_257487308(v90);
    v91 = OUTLINED_FUNCTION_35_0(v22);
    if (v86)
    {
      OUTLINED_FUNCTION_299(v91);
      type metadata accessor for Proto_Metadata(0);
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v92, v93, v94, v95);
      OUTLINED_FUNCTION_35_0(v22);
      if (!v86)
      {
        sub_2574695E4(v22, &qword_27F879BD8, &qword_257750240);
      }
    }

    else
    {
      OUTLINED_FUNCTION_5_0();
      sub_2574792EC(v22);
    }

    v98 = *(v21 + 48);
    v97 = *(v21 + 56);

    OUTLINED_FUNCTION_6_0();
    sub_257479298(v21);
    v168 = MEMORY[0x277D837D0];
    *&v167 = v98;
    *(&v167 + 1) = v97;
    *&v165 = 0xD000000000000014;
    *(&v165 + 1) = 0x8000000257779AF0;
    sub_25748396C(&v167, v166);
    v21 = *(v47 + 16);
    v99 = *(v47 + 24);
    if (v21 >= v99 >> 1)
    {
      OUTLINED_FUNCTION_174(v99);
      OUTLINED_FUNCTION_293();
      sub_257469BAC();
      v47 = v149;
    }

    v96 = v162;
    OUTLINED_FUNCTION_401();
    OUTLINED_FUNCTION_59(v47 + v21 * v100);
  }

  else
  {
    v96 = v162;
  }

  OUTLINED_FUNCTION_261();
  sub_257487308(v101);
  OUTLINED_FUNCTION_35_0(v21);
  if (v86)
  {
    *v45 = v81;
    v45[1] = 0;
    v45[2] = 0xE000000000000000;
    v45[3] = v81;
    v45[4] = v81;
    v45[5] = v81;
    v45[6] = 0;
    v45[7] = 0xE000000000000000;
    v45[8] = 0;
    v45[9] = 0xE000000000000000;
    v45[10] = v81;
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    type metadata accessor for Proto_Metadata(0);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v102, v103, v104, v105);
    OUTLINED_FUNCTION_35_0(v21);
    if (!v86)
    {
      sub_2574695E4(v21, &qword_27F879BD8, &qword_257750240);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    v106 = OUTLINED_FUNCTION_360();
    sub_2574792EC(v106);
  }

  v108 = v45[8];
  v107 = v45[9];

  OUTLINED_FUNCTION_6_0();
  sub_257479298(v45);

  v109 = HIBYTE(v107) & 0xF;
  if ((v107 & 0x2000000000000000) == 0)
  {
    v109 = v108 & 0xFFFFFFFFFFFFLL;
  }

  if (v109)
  {
    OUTLINED_FUNCTION_180();
    sub_257487308(v110);
    v111 = OUTLINED_FUNCTION_35_0(v45);
    if (v86)
    {
      v108 = v154;
      OUTLINED_FUNCTION_299(v111);
      type metadata accessor for Proto_Metadata(0);
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v112, v113, v114, v115);
      OUTLINED_FUNCTION_35_0(v45);
      v117 = MEMORY[0x277D837D0];
      if (!v86)
      {
        sub_2574695E4(v45, &qword_27F879BD8, &qword_257750240);
      }
    }

    else
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_261();
      sub_2574792EC(v116);
      v117 = MEMORY[0x277D837D0];
    }

    v119 = *(v108 + 64);
    v118 = *(v108 + 72);

    OUTLINED_FUNCTION_6_0();
    sub_257479298(v108);
    v168 = v117;
    *&v167 = v119;
    *(&v167 + 1) = v118;
    *&v165 = 0xD00000000000001ALL;
    *(&v165 + 1) = 0x8000000257779B10;
    sub_25748396C(&v167, v166);
    v121 = *(v47 + 16);
    v120 = *(v47 + 24);
    if (v121 >= v120 >> 1)
    {
      OUTLINED_FUNCTION_174(v120);
      OUTLINED_FUNCTION_293();
      sub_257469BAC();
      v47 = v150;
    }

    OUTLINED_FUNCTION_401();
    OUTLINED_FUNCTION_59(v47 + v121 * v122);
  }

  Model.trainingInput.getter();
  v124 = *(v123 + 16);

  if (v124)
  {
    Model.trainingInput.getter();
    v168 = v153;
    *&v167 = v125;
    v165 = xmmword_257744330;
    sub_25748396C(&v167, v166);
    v127 = *(v47 + 16);
    v126 = *(v47 + 24);
    if (v127 >= v126 >> 1)
    {
      OUTLINED_FUNCTION_174(v126);
      OUTLINED_FUNCTION_293();
      sub_257469BAC();
      v47 = v151;
    }

    OUTLINED_FUNCTION_401();
    OUTLINED_FUNCTION_59(v47 + v127 * v128);
  }

  v168 = type metadata accessor for ModelKind(0);
  __swift_allocate_boxed_opaque_existential_0(&v167);
  Model.kind.getter();
  v165 = xmmword_257744340;
  sub_25748396C(&v167, v166);
  v130 = *(v47 + 16);
  v129 = *(v47 + 24);
  if (v130 >= v129 >> 1)
  {
    OUTLINED_FUNCTION_174(v129);
    OUTLINED_FUNCTION_293();
    sub_257469BAC();
    v47 = v142;
  }

  OUTLINED_FUNCTION_401();
  OUTLINED_FUNCTION_59(v47 + v130 * v131);
  v132 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__isUpdatable;
  OUTLINED_FUNCTION_296(v96 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__isUpdatable, &v163);
  v133 = *(v96 + v132);
  v168 = MEMORY[0x277D839B0];
  LOBYTE(v167) = v133;
  v165 = xmmword_257744350;
  sub_25748396C(&v167, v166);
  v134 = *(v47 + 24);
  if ((v130 + 2) > (v134 >> 1))
  {
    OUTLINED_FUNCTION_174(v134);
    sub_257469BAC();
    v47 = v143;
  }

  *(v47 + 16) = v130 + 2;
  OUTLINED_FUNCTION_59(v47 + 48 * (v130 + 1));
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_185();
  sub_257483824(v135);
  *&v165 = v47;
  v136 = *MEMORY[0x277D84C10];
  v137 = sub_257743A74();
  OUTLINED_FUNCTION_4();
  (*(v138 + 104))(v157, v136, v137);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v139, v140, v141, v137);
  (*(v158 + 104))(v160, *MEMORY[0x277D84C38], v159);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C08, &qword_2577709D0);
  sub_25748397C();
  sub_257743A94();
  OUTLINED_FUNCTION_35();
}

void static ModelKind.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  v463 = v26;
  v464 = v25;
  v27 = type metadata accessor for NearestNeighborsConfiguration(0);
  v28 = OUTLINED_FUNCTION_13(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_12_1();
  v30 = OUTLINED_FUNCTION_38_0(v29);
  v31 = type metadata accessor for BayesianProbitRegressorConfiguration(v30);
  v32 = OUTLINED_FUNCTION_13(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_12_1();
  v34 = OUTLINED_FUNCTION_38_0(v33);
  v35 = type metadata accessor for SupportVectorRegressorConfiguration(v34);
  v36 = OUTLINED_FUNCTION_13(v35);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_12_1();
  v38 = OUTLINED_FUNCTION_38_0(v37);
  v39 = type metadata accessor for SupportVectorClassifierConfiguration(v38);
  v40 = OUTLINED_FUNCTION_13(v39);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_12_1();
  v42 = OUTLINED_FUNCTION_38_0(v41);
  v43 = type metadata accessor for ClassConfidenceThresholding(v42);
  v44 = OUTLINED_FUNCTION_13(v43);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_12_1();
  v46 = OUTLINED_FUNCTION_38_0(v45);
  v47 = type metadata accessor for ODIELibrary(v46);
  v48 = OUTLINED_FUNCTION_13(v47);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_12_1();
  v50 = OUTLINED_FUNCTION_38_0(v49);
  v51 = type metadata accessor for MLProgram(v50);
  v52 = OUTLINED_FUNCTION_13(v51);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_12_1();
  v54 = OUTLINED_FUNCTION_38_0(v53);
  v55 = type metadata accessor for NeuralNetworkRegressor(v54);
  v56 = OUTLINED_FUNCTION_13(v55);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_12_1();
  v58 = OUTLINED_FUNCTION_38_0(v57);
  v59 = type metadata accessor for NeuralNetworkClassifier(v58);
  v60 = OUTLINED_FUNCTION_13(v59);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_12_1();
  v62 = OUTLINED_FUNCTION_38_0(v61);
  v63 = type metadata accessor for NeuralNetwork(v62);
  v64 = OUTLINED_FUNCTION_13(v63);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_12_1();
  v66 = OUTLINED_FUNCTION_38_0(v65);
  v67 = type metadata accessor for ItemSimilarityRecommenderConfiguration(v66);
  v68 = OUTLINED_FUNCTION_13(v67);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_12_1();
  v70 = OUTLINED_FUNCTION_38_0(v69);
  v71 = type metadata accessor for GazetteerConfiguration(v70);
  v72 = OUTLINED_FUNCTION_13(v71);
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_12_1();
  v74 = OUTLINED_FUNCTION_38_0(v73);
  v75 = type metadata accessor for TextClassifierConfiguration(v74);
  v76 = OUTLINED_FUNCTION_13(v75);
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_12_1();
  v78 = OUTLINED_FUNCTION_38_0(v77);
  v79 = type metadata accessor for WordEmbeddingConfiguration(v78);
  v80 = OUTLINED_FUNCTION_13(v79);
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_12_1();
  v82 = OUTLINED_FUNCTION_38_0(v81);
  v83 = type metadata accessor for WordTaggerConfiguration(v82);
  v84 = OUTLINED_FUNCTION_13(v83);
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_12_1();
  v86 = OUTLINED_FUNCTION_38_0(v85);
  v87 = type metadata accessor for SoundAnalysisPreprocessorKind(v86);
  v88 = OUTLINED_FUNCTION_13(v87);
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_12_1();
  v90 = OUTLINED_FUNCTION_38_0(v89);
  v91 = type metadata accessor for VisionFeaturePrintKind(v90);
  v92 = OUTLINED_FUNCTION_13(v91);
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_12_1();
  v94 = OUTLINED_FUNCTION_38_0(v93);
  v95 = type metadata accessor for AudioFeaturePrintKind(v94);
  v96 = OUTLINED_FUNCTION_13(v95);
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_12_1();
  v98 = OUTLINED_FUNCTION_38_0(v97);
  v99 = type metadata accessor for ArrayFeatureExtractorConfiguration(v98);
  v100 = OUTLINED_FUNCTION_13(v99);
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_12_1();
  v102 = OUTLINED_FUNCTION_38_0(v101);
  v103 = type metadata accessor for TreeEnsembleRegressorConfiguration(v102);
  v104 = OUTLINED_FUNCTION_13(v103);
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_12_1();
  v106 = OUTLINED_FUNCTION_38_0(v105);
  v107 = type metadata accessor for TreeEnsembleClassifierConfiguration(v106);
  v108 = OUTLINED_FUNCTION_13(v107);
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_12_1();
  v110 = OUTLINED_FUNCTION_38_0(v109);
  v111 = type metadata accessor for LinearRegressorConfiguration(v110);
  v112 = OUTLINED_FUNCTION_13(v111);
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_12_1();
  v114 = OUTLINED_FUNCTION_38_0(v113);
  v115 = type metadata accessor for LinearClassifierConfiguration(v114);
  v116 = OUTLINED_FUNCTION_13(v115);
  MEMORY[0x28223BE20](v116);
  OUTLINED_FUNCTION_12_1();
  v118 = OUTLINED_FUNCTION_38_0(v117);
  v119 = type metadata accessor for NonMaximumSuppressorConfiguration(v118);
  v120 = OUTLINED_FUNCTION_13(v119);
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_12_1();
  v122 = OUTLINED_FUNCTION_38_0(v121);
  v123 = type metadata accessor for ScalerConfiguration(v122);
  v124 = OUTLINED_FUNCTION_13(v123);
  MEMORY[0x28223BE20](v124);
  OUTLINED_FUNCTION_12_1();
  v126 = OUTLINED_FUNCTION_38_0(v125);
  v127 = type metadata accessor for NormalizerConfiguration(v126);
  v128 = OUTLINED_FUNCTION_13(v127);
  MEMORY[0x28223BE20](v128);
  OUTLINED_FUNCTION_12_1();
  v130 = OUTLINED_FUNCTION_38_0(v129);
  v131 = type metadata accessor for OneHotEncoderConfiguration(v130);
  v132 = OUTLINED_FUNCTION_13(v131);
  MEMORY[0x28223BE20](v132);
  OUTLINED_FUNCTION_12_1();
  v134 = OUTLINED_FUNCTION_38_0(v133);
  v135 = type metadata accessor for CategoricalMappingConfiguration(v134);
  v136 = OUTLINED_FUNCTION_13(v135);
  MEMORY[0x28223BE20](v136);
  OUTLINED_FUNCTION_12_1();
  v138 = OUTLINED_FUNCTION_38_0(v137);
  v139 = type metadata accessor for ImputerConfiguration(v138);
  v140 = OUTLINED_FUNCTION_13(v139);
  MEMORY[0x28223BE20](v140);
  OUTLINED_FUNCTION_12_1();
  v142 = OUTLINED_FUNCTION_38_0(v141);
  v143 = type metadata accessor for DictionaryVectorizerConfiguration(v142);
  v144 = OUTLINED_FUNCTION_13(v143);
  MEMORY[0x28223BE20](v144);
  OUTLINED_FUNCTION_12_1();
  v146 = OUTLINED_FUNCTION_38_0(v145);
  v147 = type metadata accessor for FeatureVectorizerConfiguration(v146);
  v148 = OUTLINED_FUNCTION_13(v147);
  MEMORY[0x28223BE20](v148);
  OUTLINED_FUNCTION_12_1();
  v150 = OUTLINED_FUNCTION_38_0(v149);
  v151 = type metadata accessor for SerializedModelConfiguration(v150);
  v152 = OUTLINED_FUNCTION_13(v151);
  MEMORY[0x28223BE20](v152);
  OUTLINED_FUNCTION_12_1();
  v154 = OUTLINED_FUNCTION_38_0(v153);
  v155 = type metadata accessor for LinkedModelConfiguration(v154);
  v156 = OUTLINED_FUNCTION_13(v155);
  MEMORY[0x28223BE20](v156);
  OUTLINED_FUNCTION_12_1();
  v158 = OUTLINED_FUNCTION_38_0(v157);
  v159 = type metadata accessor for CustomModelConfiguration(v158);
  v160 = OUTLINED_FUNCTION_13(v159);
  MEMORY[0x28223BE20](v160);
  OUTLINED_FUNCTION_12_1();
  v162 = OUTLINED_FUNCTION_38_0(v161);
  v163 = type metadata accessor for IdentityModelConfiguration(v162);
  v164 = OUTLINED_FUNCTION_13(v163);
  MEMORY[0x28223BE20](v164);
  OUTLINED_FUNCTION_12_1();
  v166 = OUTLINED_FUNCTION_38_0(v165);
  v167 = type metadata accessor for PipelineConfiguration(v166);
  v168 = OUTLINED_FUNCTION_13(v167);
  MEMORY[0x28223BE20](v168);
  OUTLINED_FUNCTION_12_1();
  v170 = OUTLINED_FUNCTION_38_0(v169);
  v171 = type metadata accessor for PipelineRegressorConfiguration(v170);
  v172 = OUTLINED_FUNCTION_13(v171);
  MEMORY[0x28223BE20](v172);
  OUTLINED_FUNCTION_12_1();
  v174 = OUTLINED_FUNCTION_38_0(v173);
  v175 = type metadata accessor for PipelineClassifierConfiguration(v174);
  v176 = OUTLINED_FUNCTION_13(v175);
  MEMORY[0x28223BE20](v176);
  OUTLINED_FUNCTION_12_1();
  v178 = OUTLINED_FUNCTION_38_0(v177);
  v462 = type metadata accessor for ModelKind(v178);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v179);
  OUTLINED_FUNCTION_25_0();
  v459 = v180;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v181);
  OUTLINED_FUNCTION_167();
  v458 = v182;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v183);
  OUTLINED_FUNCTION_167();
  v456 = v184;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v185);
  OUTLINED_FUNCTION_167();
  v455 = v186;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v187);
  OUTLINED_FUNCTION_167();
  v460 = v188;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v189);
  OUTLINED_FUNCTION_167();
  v461 = v190;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v191);
  OUTLINED_FUNCTION_167();
  v454 = v192;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v193);
  OUTLINED_FUNCTION_167();
  v453 = v194;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v195);
  OUTLINED_FUNCTION_167();
  v452 = v196;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v197);
  OUTLINED_FUNCTION_167();
  v451 = v198;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v199);
  OUTLINED_FUNCTION_167();
  v449 = v200;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v201);
  OUTLINED_FUNCTION_167();
  v447 = v202;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v203);
  OUTLINED_FUNCTION_167();
  v446 = v204;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v205);
  OUTLINED_FUNCTION_167();
  v457 = v206;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v207);
  OUTLINED_FUNCTION_167();
  v445 = v208;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v209);
  OUTLINED_FUNCTION_167();
  v444 = v210;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v211);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v212);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v213);
  OUTLINED_FUNCTION_167();
  v448 = v214;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v215);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v216);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v217);
  OUTLINED_FUNCTION_167();
  v450 = v218;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v219);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v220);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v221);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v222);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v223);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v224);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  v226 = MEMORY[0x28223BE20](v225);
  v228 = &v432 - v227;
  MEMORY[0x28223BE20](v226);
  OUTLINED_FUNCTION_329();
  MEMORY[0x28223BE20](v229);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v230);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v231);
  OUTLINED_FUNCTION_163();
  MEMORY[0x28223BE20](v232);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v233);
  OUTLINED_FUNCTION_207();
  MEMORY[0x28223BE20](v234);
  OUTLINED_FUNCTION_183();
  MEMORY[0x28223BE20](v235);
  OUTLINED_FUNCTION_281();
  MEMORY[0x28223BE20](v236);
  v238 = &v432 - v237;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C18, &qword_2577443B0);
  OUTLINED_FUNCTION_13(v239);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v240);
  OUTLINED_FUNCTION_421();
  v242 = *(v241 + 56);
  sub_257483824(v464);
  v464 = v242;
  sub_257483824(v463);
  OUTLINED_FUNCTION_373();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v335 = OUTLINED_FUNCTION_2_1();
      sub_257483824(v335);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_50();
        OUTLINED_FUNCTION_185();
        sub_2574792EC(v336);
        _s20MLModelSpecification30PipelineRegressorConfigurationV2eeoiySbAC_ACtFZ_0(v20, v22);
        v238 = v21;
        sub_257479298(v22);
        v328 = OUTLINED_FUNCTION_205();
        goto LABEL_72;
      }

      OUTLINED_FUNCTION_90();
      v244 = v20;
      goto LABEL_164;
    case 2u:
      v316 = OUTLINED_FUNCTION_2_1();
      sub_257483824(v316);
      if (OUTLINED_FUNCTION_164() != 2)
      {
        OUTLINED_FUNCTION_91();
        v244 = v24;
        goto LABEL_164;
      }

      OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_185();
      sub_2574792EC(v317);
      sub_257482184();
      if (v318 & 1) != 0 && (sub_257479C78(*(v24 + 8), v22[1]))
      {
        type metadata accessor for Proto_Pipeline(0);
        sub_2577431B4();
        OUTLINED_FUNCTION_231();
        OUTLINED_FUNCTION_1_1();
        sub_257483ACC(v319, v320, MEMORY[0x277D216D0]);
        v21 = v238;
        sub_257743644();
      }

      OUTLINED_FUNCTION_236();
      sub_257479298(v22);
      v321 = v24;
      goto LABEL_118;
    case 3u:
      v324 = OUTLINED_FUNCTION_2_1();
      sub_257483824(v324);
      if (OUTLINED_FUNCTION_164() != 3)
      {
        v244 = OUTLINED_FUNCTION_308();
        goto LABEL_164;
      }

      OUTLINED_FUNCTION_185();
      sub_2574792EC(v325);
      sub_2577431B4();
      OUTLINED_FUNCTION_231();
      OUTLINED_FUNCTION_1_1();
      sub_257483ACC(v326, v327, MEMORY[0x277D216D0]);
      OUTLINED_FUNCTION_406();
      sub_257743644();
      sub_257479298(v22);
      v328 = OUTLINED_FUNCTION_361();
LABEL_72:
      sub_257479298(v328);
      OUTLINED_FUNCTION_9_0();
      v337 = v238;
      goto LABEL_129;
    case 4u:
      OUTLINED_FUNCTION_2_1();
      OUTLINED_FUNCTION_261();
      sub_257483824(v288);
      if (OUTLINED_FUNCTION_164() != 4)
      {
        goto LABEL_162;
      }

      OUTLINED_FUNCTION_119();
      OUTLINED_FUNCTION_185();
      sub_2574792EC(v289);
      OUTLINED_FUNCTION_351();
      v292 = v292 && v290 == v291;
      if (v292 || (sub_257743994() & 1) != 0)
      {
        sub_257477E10(v23[2], v22[2]);
        if (v293)
        {
          v294 = v23[3] == v22[3] && v23[4] == v22[4];
          if (v294 || (sub_257743994() & 1) != 0)
          {
            type metadata accessor for Proto_CustomModel(0);
            sub_2577431B4();
            OUTLINED_FUNCTION_231();
            OUTLINED_FUNCTION_1_1();
            v297 = sub_257483ACC(v295, v296, MEMORY[0x277D216D0]);
            v21 = v238;
            OUTLINED_FUNCTION_143(v297);
          }
        }
      }

      goto LABEL_95;
    case 5u:
      v350 = OUTLINED_FUNCTION_2_1();
      sub_257483824(v350);
      if (OUTLINED_FUNCTION_164() != 5)
      {
        goto LABEL_162;
      }

      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_180();
      sub_2574792EC(v351);
      OUTLINED_FUNCTION_360();
      _s20MLModelSpecification24LinkedModelConfigurationV2eeoiySbAC_ACtFZ_0();
      sub_257479298(v238);
      v305 = v23;
      goto LABEL_128;
    case 6u:
      OUTLINED_FUNCTION_2_1();
      OUTLINED_FUNCTION_261();
      sub_257483824(v369);
      if (OUTLINED_FUNCTION_164() != 6)
      {
        goto LABEL_162;
      }

      OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_185();
      sub_2574792EC(v370);
      OUTLINED_FUNCTION_351();
      v373 = v292 && v371 == v372;
      if (v373 || (sub_257743994()) && (MEMORY[0x259C648D0](v23[2], v23[3], v22[2], v22[3]))
      {
        type metadata accessor for Proto_SerializedModel(0);
        sub_2577431B4();
        OUTLINED_FUNCTION_231();
        OUTLINED_FUNCTION_1_1();
        v376 = sub_257483ACC(v374, v375, MEMORY[0x277D216D0]);
        v21 = v238;
        OUTLINED_FUNCTION_143(v376);
      }

      goto LABEL_95;
    case 7u:
      OUTLINED_FUNCTION_2_1();
      OUTLINED_FUNCTION_261();
      sub_257483824(v329);
      if (OUTLINED_FUNCTION_164() != 7)
      {
        goto LABEL_162;
      }

      OUTLINED_FUNCTION_113();
      OUTLINED_FUNCTION_185();
      sub_2574792EC(v330);
      OUTLINED_FUNCTION_354();
      sub_257479344();
      if ((v331 & 1) == 0)
      {
        OUTLINED_FUNCTION_132();
        sub_257479298(v22);
        goto LABEL_180;
      }

      type metadata accessor for Proto_FeatureVectorizer(0);
      OUTLINED_FUNCTION_391();
      OUTLINED_FUNCTION_231();
      OUTLINED_FUNCTION_1_1();
      v334 = sub_257483ACC(v332, v333, MEMORY[0x277D216D0]);
      OUTLINED_FUNCTION_143(v334);
      OUTLINED_FUNCTION_374();
      OUTLINED_FUNCTION_132();
      sub_257479298(v22);
      if ((v20 & 1) == 0)
      {
        goto LABEL_180;
      }

      goto LABEL_117;
    case 8u:
      v385 = OUTLINED_FUNCTION_2_1();
      sub_257483824(v385);
      if (OUTLINED_FUNCTION_164() != 8)
      {
        goto LABEL_163;
      }

      OUTLINED_FUNCTION_102();
      OUTLINED_FUNCTION_180();
      sub_2574792EC(v386);
      v387 = OUTLINED_FUNCTION_176();
      _s20MLModelSpecification33DictionaryVectorizerConfigurationV2eeoiySbAC_ACtFZ_0(v387, v388);
      goto LABEL_127;
    case 9u:
      v303 = OUTLINED_FUNCTION_2_1();
      sub_257483824(v303);
      if (OUTLINED_FUNCTION_164() == 9)
      {
        OUTLINED_FUNCTION_117();
        OUTLINED_FUNCTION_180();
        sub_2574792EC(v304);
        _s20MLModelSpecification20ImputerConfigurationV2eeoiySbAC_ACtFZ_0(v228, v238);
        sub_257479298(v238);
        v305 = v228;
        goto LABEL_128;
      }

      v244 = v228;
      goto LABEL_164;
    case 0xAu:
      OUTLINED_FUNCTION_2_1();
      OUTLINED_FUNCTION_185();
      sub_257483824(v381);
      if (OUTLINED_FUNCTION_164() != 10)
      {
        goto LABEL_163;
      }

      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_180();
      sub_2574792EC(v382);
      v383 = OUTLINED_FUNCTION_176();
      _s20MLModelSpecification31CategoricalMappingConfigurationV2eeoiySbAC_ACtFZ_0(v383, v384);
      goto LABEL_127;
    case 0xBu:
      OUTLINED_FUNCTION_2_1();
      OUTLINED_FUNCTION_185();
      sub_257483824(v284);
      if (OUTLINED_FUNCTION_164() != 11)
      {
        goto LABEL_163;
      }

      OUTLINED_FUNCTION_120();
      OUTLINED_FUNCTION_180();
      sub_2574792EC(v285);
      v286 = OUTLINED_FUNCTION_176();
      _s20MLModelSpecification26OneHotEncoderConfigurationV2eeoiySbAC_ACtFZ_0(v286, v287);
      goto LABEL_127;
    case 0xCu:
      OUTLINED_FUNCTION_2_1();
      OUTLINED_FUNCTION_261();
      sub_257483824(v298);
      if (OUTLINED_FUNCTION_164() != 12)
      {
        goto LABEL_162;
      }

      OUTLINED_FUNCTION_118();
      OUTLINED_FUNCTION_185();
      sub_2574792EC(v299);
      if (!sub_25744D670(*v23, *(v23 + 8), *v22))
      {
        OUTLINED_FUNCTION_129();
        sub_257479298(v22);
        goto LABEL_180;
      }

      type metadata accessor for Proto_Normalizer(0);
      OUTLINED_FUNCTION_391();
      OUTLINED_FUNCTION_231();
      OUTLINED_FUNCTION_1_1();
      v302 = sub_257483ACC(v300, v301, MEMORY[0x277D216D0]);
      OUTLINED_FUNCTION_143(v302);
      OUTLINED_FUNCTION_374();
      OUTLINED_FUNCTION_129();
      sub_257479298(v22);
      if ((v20 & 1) == 0)
      {
        goto LABEL_180;
      }

      goto LABEL_117;
    case 0xDu:
      OUTLINED_FUNCTION_2_1();
      OUTLINED_FUNCTION_261();
      sub_257483824(v362);
      if (OUTLINED_FUNCTION_164() != 13)
      {
        goto LABEL_162;
      }

      OUTLINED_FUNCTION_106();
      OUTLINED_FUNCTION_185();
      sub_2574792EC(v363);
      v364 = OUTLINED_FUNCTION_354();
      if (sub_257479D04(v364, v365) & 1) != 0 && (sub_257479D04(v23[1], v22[1]))
      {
        type metadata accessor for Proto_Scaler(0);
        sub_2577431B4();
        OUTLINED_FUNCTION_231();
        OUTLINED_FUNCTION_1_1();
        v368 = sub_257483ACC(v366, v367, MEMORY[0x277D216D0]);
        v21 = v238;
        OUTLINED_FUNCTION_143(v368);
      }

      goto LABEL_95;
    case 0xEu:
      OUTLINED_FUNCTION_2_1();
      OUTLINED_FUNCTION_185();
      sub_257483824(v265);
      if (OUTLINED_FUNCTION_164() != 14)
      {
        goto LABEL_163;
      }

      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_180();
      sub_2574792EC(v266);
      v267 = OUTLINED_FUNCTION_176();
      _s20MLModelSpecification33NonMaximumSuppressorConfigurationV2eeoiySbAC_ACtFZ_0(v267, v268);
      goto LABEL_127;
    case 0xFu:
      OUTLINED_FUNCTION_2_1();
      OUTLINED_FUNCTION_185();
      sub_257483824(v322);
      if (OUTLINED_FUNCTION_164() != 15)
      {
        goto LABEL_163;
      }

      OUTLINED_FUNCTION_114();
      OUTLINED_FUNCTION_180();
      sub_2574792EC(v323);
      OUTLINED_FUNCTION_176();
      _s20MLModelSpecification29LinearClassifierConfigurationV2eeoiySbAC_ACtFZ_0();
      goto LABEL_127;
    case 0x10u:
      v259 = OUTLINED_FUNCTION_2_1();
      v23 = v450;
      sub_257483824(v259);
      if (OUTLINED_FUNCTION_164() != 16)
      {
        goto LABEL_162;
      }

      OUTLINED_FUNCTION_123();
      OUTLINED_FUNCTION_185();
      sub_2574792EC(v260);
      OUTLINED_FUNCTION_354();
      sub_257480040();
      if ((v261 & 1) != 0 && (sub_257479D04(v23[1], v22[1]) & 1) != 0 && sub_25744D670(v23[2], *(v23 + 24), v22[2]))
      {
        type metadata accessor for Proto_GLMRegressor(0);
        sub_2577431B4();
        OUTLINED_FUNCTION_231();
        OUTLINED_FUNCTION_1_1();
        v264 = sub_257483ACC(v262, v263, MEMORY[0x277D216D0]);
        v21 = v238;
        OUTLINED_FUNCTION_143(v264);
      }

      goto LABEL_95;
    case 0x11u:
      OUTLINED_FUNCTION_2_1();
      OUTLINED_FUNCTION_185();
      sub_257483824(v342);
      if (OUTLINED_FUNCTION_164() != 17)
      {
        goto LABEL_163;
      }

      OUTLINED_FUNCTION_111();
      OUTLINED_FUNCTION_180();
      sub_2574792EC(v343);
      v344 = OUTLINED_FUNCTION_176();
      _s20MLModelSpecification35TreeEnsembleClassifierConfigurationV2eeoiySbAC_ACtFZ_0(v344, v345);
      goto LABEL_127;
    case 0x12u:
      OUTLINED_FUNCTION_2_1();
      OUTLINED_FUNCTION_185();
      sub_257483824(v377);
      if (OUTLINED_FUNCTION_164() != 18)
      {
        goto LABEL_163;
      }

      OUTLINED_FUNCTION_104();
      OUTLINED_FUNCTION_180();
      sub_2574792EC(v378);
      v379 = OUTLINED_FUNCTION_176();
      _s20MLModelSpecification34TreeEnsembleRegressorConfigurationV2eeoiySbAC_ACtFZ_0(v379, v380);
      goto LABEL_127;
    case 0x13u:
      v405 = OUTLINED_FUNCTION_2_1();
      v23 = v448;
      sub_257483824(v405);
      if (OUTLINED_FUNCTION_164() != 19)
      {
        goto LABEL_162;
      }

      OUTLINED_FUNCTION_99();
      OUTLINED_FUNCTION_185();
      sub_2574792EC(v406);
      v407 = OUTLINED_FUNCTION_354();
      if ((sub_25747B178(v407, v408) & 1) == 0)
      {
        v431 = OUTLINED_FUNCTION_195();
        sub_257479298(v431);
        goto LABEL_180;
      }

      type metadata accessor for Proto_ArrayFeatureExtractor(0);
      OUTLINED_FUNCTION_391();
      OUTLINED_FUNCTION_231();
      OUTLINED_FUNCTION_1_1();
      v411 = sub_257483ACC(v409, v410, MEMORY[0x277D216D0]);
      OUTLINED_FUNCTION_143(v411);
      OUTLINED_FUNCTION_374();
      v412 = OUTLINED_FUNCTION_195();
      sub_257479298(v412);
      if ((v20 & 1) == 0)
      {
        goto LABEL_180;
      }

      goto LABEL_117;
    case 0x14u:
      OUTLINED_FUNCTION_2_1();
      OUTLINED_FUNCTION_185();
      sub_257483824(v346);
      if (OUTLINED_FUNCTION_164() != 20)
      {
        goto LABEL_163;
      }

      OUTLINED_FUNCTION_110();
      OUTLINED_FUNCTION_180();
      sub_2574792EC(v347);
      v348 = OUTLINED_FUNCTION_176();
      static AudioFeaturePrintKind.== infix(_:_:)(v348, v349);
      goto LABEL_127;
    case 0x15u:
      OUTLINED_FUNCTION_2_1();
      OUTLINED_FUNCTION_185();
      sub_257483824(v352);
      if (OUTLINED_FUNCTION_164() != 21)
      {
        goto LABEL_163;
      }

      OUTLINED_FUNCTION_108();
      OUTLINED_FUNCTION_180();
      sub_2574792EC(v353);
      v354 = OUTLINED_FUNCTION_176();
      static VisionFeaturePrintKind.== infix(_:_:)(v354, v355, v356, v357, v358, v359, v360, v361, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443);
      goto LABEL_127;
    case 0x16u:
      v401 = OUTLINED_FUNCTION_2_1();
      v22 = v444;
      sub_257483824(v401);
      if (OUTLINED_FUNCTION_164() != 22)
      {
        goto LABEL_163;
      }

      OUTLINED_FUNCTION_180();
      sub_2574792EC(v402);
      v403 = OUTLINED_FUNCTION_176();
      static SoundAnalysisPreprocessorKind.== infix(_:_:)(v403, v404);
      goto LABEL_127;
    case 0x17u:
      v413 = OUTLINED_FUNCTION_2_1();
      v22 = v445;
      sub_257483824(v413);
      if (OUTLINED_FUNCTION_164() != 23)
      {
        goto LABEL_163;
      }

      OUTLINED_FUNCTION_98();
      OUTLINED_FUNCTION_180();
      sub_2574792EC(v414);
      v415 = OUTLINED_FUNCTION_176();
      _s20MLModelSpecification23WordTaggerConfigurationV2eeoiySbAC_ACtFZ_0(v415, v416);
      goto LABEL_127;
    case 0x18u:
      v310 = OUTLINED_FUNCTION_2_1();
      v23 = v457;
      sub_257483824(v310);
      if (OUTLINED_FUNCTION_164() != 24)
      {
        goto LABEL_162;
      }

      OUTLINED_FUNCTION_115();
      OUTLINED_FUNCTION_185();
      sub_2574792EC(v311);
      if (*v23 == *v22)
      {
        v312 = v23[1] == v22[1] && v23[2] == v22[2];
        if (v312 || (sub_257743994()) && (MEMORY[0x259C648D0](v23[3], v23[4], v22[3], v22[4]))
        {
          type metadata accessor for Proto_CoreMLModels_WordEmbedding(0);
          sub_2577431B4();
          OUTLINED_FUNCTION_231();
          OUTLINED_FUNCTION_1_1();
          v315 = sub_257483ACC(v313, v314, MEMORY[0x277D216D0]);
          v21 = v238;
          OUTLINED_FUNCTION_143(v315);
        }
      }

LABEL_95:
      sub_257479298(v22);
      v321 = v23;
      goto LABEL_118;
    case 0x19u:
      v306 = OUTLINED_FUNCTION_2_1();
      v22 = v446;
      sub_257483824(v306);
      if (OUTLINED_FUNCTION_164() != 25)
      {
        goto LABEL_163;
      }

      OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_180();
      sub_2574792EC(v307);
      v308 = OUTLINED_FUNCTION_176();
      _s20MLModelSpecification27TextClassifierConfigurationV2eeoiySbAC_ACtFZ_0(v308, v309);
      goto LABEL_127;
    case 0x1Au:
      v423 = OUTLINED_FUNCTION_2_1();
      v22 = v447;
      sub_257483824(v423);
      if (OUTLINED_FUNCTION_164() != 26)
      {
        goto LABEL_163;
      }

      OUTLINED_FUNCTION_95();
      OUTLINED_FUNCTION_180();
      sub_2574792EC(v424);
      v425 = OUTLINED_FUNCTION_176();
      _s20MLModelSpecification22GazetteerConfigurationV2eeoiySbAC_ACtFZ_0(v425, v426);
      goto LABEL_127;
    case 0x1Bu:
      v253 = OUTLINED_FUNCTION_2_1();
      v22 = v449;
      sub_257483824(v253);
      if (OUTLINED_FUNCTION_164() != 27)
      {
        goto LABEL_163;
      }

      OUTLINED_FUNCTION_125();
      OUTLINED_FUNCTION_180();
      sub_2574792EC(v254);
      v255 = OUTLINED_FUNCTION_176();
      _s20MLModelSpecification38ItemSimilarityRecommenderConfigurationV2eeoiySbAC_ACtFZ_0(v255, v256);
      goto LABEL_127;
    case 0x1Cu:
      v417 = OUTLINED_FUNCTION_2_1();
      v22 = v451;
      sub_257483824(v417);
      if (OUTLINED_FUNCTION_164() != 28)
      {
        goto LABEL_163;
      }

      OUTLINED_FUNCTION_97();
      OUTLINED_FUNCTION_180();
      sub_2574792EC(v418);
      v419 = OUTLINED_FUNCTION_176();
      _s20MLModelSpecification13NeuralNetworkV2eeoiySbAC_ACtFZ_0(v419, v420);
      goto LABEL_127;
    case 0x1Du:
      v421 = OUTLINED_FUNCTION_2_1();
      v22 = v452;
      sub_257483824(v421);
      if (OUTLINED_FUNCTION_164() != 29)
      {
        goto LABEL_163;
      }

      OUTLINED_FUNCTION_96();
      OUTLINED_FUNCTION_180();
      sub_2574792EC(v422);
      OUTLINED_FUNCTION_176();
      _s20MLModelSpecification23NeuralNetworkClassifierV2eeoiySbAC_ACtFZ_0();
      goto LABEL_127;
    case 0x1Eu:
      v389 = OUTLINED_FUNCTION_2_1();
      v22 = v453;
      sub_257483824(v389);
      if (OUTLINED_FUNCTION_164() != 30)
      {
        goto LABEL_163;
      }

      OUTLINED_FUNCTION_101();
      OUTLINED_FUNCTION_180();
      sub_2574792EC(v390);
      v391 = OUTLINED_FUNCTION_176();
      _s20MLModelSpecification22NeuralNetworkRegressorV2eeoiySbAC_ACtFZ_0(v391, v392);
      goto LABEL_127;
    case 0x1Fu:
      v338 = OUTLINED_FUNCTION_2_1();
      v22 = v454;
      sub_257483824(v338);
      if (OUTLINED_FUNCTION_164() != 31)
      {
        goto LABEL_163;
      }

      OUTLINED_FUNCTION_112();
      OUTLINED_FUNCTION_180();
      sub_2574792EC(v339);
      v340 = OUTLINED_FUNCTION_176();
      sub_2574E0FAC(v340, v341);
      goto LABEL_127;
    case 0x20u:
      v393 = OUTLINED_FUNCTION_2_1();
      v23 = v461;
      sub_257483824(v393);
      if (OUTLINED_FUNCTION_164() != 32)
      {
        goto LABEL_162;
      }

      OUTLINED_FUNCTION_100();
      OUTLINED_FUNCTION_185();
      sub_2574792EC(v394);
      OUTLINED_FUNCTION_351();
      v397 = v292 && v395 == v396;
      if (!v397 && (sub_257743994() & 1) == 0)
      {
        OUTLINED_FUNCTION_130();
        sub_257479298(v22);
        goto LABEL_180;
      }

      type metadata accessor for Proto_Odie_Library(0);
      OUTLINED_FUNCTION_391();
      OUTLINED_FUNCTION_231();
      OUTLINED_FUNCTION_1_1();
      v400 = sub_257483ACC(v398, v399, MEMORY[0x277D216D0]);
      OUTLINED_FUNCTION_143(v400);
      OUTLINED_FUNCTION_374();
      OUTLINED_FUNCTION_130();
      sub_257479298(v22);
      if ((v20 & 1) == 0)
      {
        goto LABEL_180;
      }

      goto LABEL_117;
    case 0x21u:
      v269 = OUTLINED_FUNCTION_2_1();
      v23 = v460;
      sub_257483824(v269);
      if (OUTLINED_FUNCTION_164() == 33)
      {
        OUTLINED_FUNCTION_121();
        OUTLINED_FUNCTION_185();
        sub_2574792EC(v270);
        v271 = OUTLINED_FUNCTION_354();
        sub_257479510(v271, v272, v273, v274, v275, v276, v277, v278, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441);
        if (v279)
        {
          type metadata accessor for Proto_ClassConfidenceThresholding(0);
          OUTLINED_FUNCTION_391();
          OUTLINED_FUNCTION_231();
          OUTLINED_FUNCTION_1_1();
          v282 = sub_257483ACC(v280, v281, MEMORY[0x277D216D0]);
          OUTLINED_FUNCTION_143(v282);
          OUTLINED_FUNCTION_374();
          v283 = OUTLINED_FUNCTION_195();
          sub_257479298(v283);
          if (v20)
          {
LABEL_117:
            v321 = v23;
LABEL_118:
            sub_257479298(v321);
            OUTLINED_FUNCTION_9_0();
            sub_257479298(v21);
            goto LABEL_165;
          }
        }

        else
        {
          v430 = OUTLINED_FUNCTION_195();
          sub_257479298(v430);
        }

LABEL_180:
        v321 = v23;
        goto LABEL_118;
      }

LABEL_162:
      v244 = v23;
LABEL_164:
      sub_257479298(v244);
      sub_2574695E4(v21, &qword_27F879C18, &qword_2577443B0);
LABEL_165:
      OUTLINED_FUNCTION_35();
      return;
    case 0x22u:
      v257 = OUTLINED_FUNCTION_2_1();
      v22 = v455;
      sub_257483824(v257);
      if (OUTLINED_FUNCTION_164() != 34)
      {
        goto LABEL_163;
      }

      OUTLINED_FUNCTION_124();
      OUTLINED_FUNCTION_180();
      sub_2574792EC(v258);
      OUTLINED_FUNCTION_176();
      _s20MLModelSpecification36SupportVectorClassifierConfigurationV2eeoiySbAC_ACtFZ_0();
      goto LABEL_127;
    case 0x23u:
      v247 = OUTLINED_FUNCTION_2_1();
      v22 = v456;
      sub_257483824(v247);
      if (OUTLINED_FUNCTION_164() != 35)
      {
        goto LABEL_163;
      }

      OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_180();
      sub_2574792EC(v248);
      OUTLINED_FUNCTION_176();
      _s20MLModelSpecification35SupportVectorRegressorConfigurationV2eeoiySbAC_ACtFZ_0();
      goto LABEL_127;
    case 0x24u:
      v249 = OUTLINED_FUNCTION_2_1();
      v22 = v458;
      sub_257483824(v249);
      if (OUTLINED_FUNCTION_164() != 36)
      {
        goto LABEL_163;
      }

      OUTLINED_FUNCTION_126();
      OUTLINED_FUNCTION_180();
      sub_2574792EC(v250);
      v251 = OUTLINED_FUNCTION_176();
      _s20MLModelSpecification36BayesianProbitRegressorConfigurationV2eeoiySbAC_ACtFZ_0(v251, v252);
      goto LABEL_127;
    case 0x25u:
      v245 = OUTLINED_FUNCTION_2_1();
      v22 = v459;
      sub_257483824(v245);
      if (OUTLINED_FUNCTION_164() != 37)
      {
LABEL_163:
        v244 = v22;
        goto LABEL_164;
      }

      OUTLINED_FUNCTION_128();
      OUTLINED_FUNCTION_180();
      sub_2574792EC(v246);
      OUTLINED_FUNCTION_176();
      _s20MLModelSpecification29NearestNeighborsConfigurationV2eeoiySbAC_ACtFZ_0();
LABEL_127:
      sub_257479298(v238);
      v305 = v22;
      goto LABEL_128;
    default:
      v243 = OUTLINED_FUNCTION_2_1();
      sub_257483824(v243);
      if (OUTLINED_FUNCTION_164())
      {
        v244 = v238;
        goto LABEL_164;
      }

      OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_185();
      sub_2574792EC(v427);
      v428 = OUTLINED_FUNCTION_263();
      _s20MLModelSpecification31PipelineClassifierConfigurationV2eeoiySbAC_ACtFZ_0(v428, v429);
      sub_257479298(v22);
      v305 = v238;
LABEL_128:
      sub_257479298(v305);
      OUTLINED_FUNCTION_9_0();
      v337 = v21;
LABEL_129:
      sub_257479298(v337);
      goto LABEL_165;
  }
}

uint64_t Model.debugDescription.getter()
{
  sub_257470D6C();
  sub_2576A66C8(0, v0, v1, 2);
  v2 = OUTLINED_FUNCTION_205();
  sub_257483A28(v2, v3, 2);
  return OUTLINED_FUNCTION_263();
}

uint64_t sub_257476784(unsigned __int8 a1, char a2)
{
  v2 = 0x737475706E49;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x7374757074754FLL;
    }

    else
    {
      v4 = 0x676E696E69617254;
    }

    if (v3 == 1)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xEE00737475706E49;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x737475706E49;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x7374757074754FLL;
    }

    else
    {
      v2 = 0x676E696E69617254;
    }

    if (a2 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xEE00737475706E49;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_257743994();
  }

  return v8 & 1;
}

uint64_t sub_257476894(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = sub_25749B324(a1);
  v5 = v4;
  if (v3 == sub_25749B324(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_292();
    v8 = sub_257743994();
  }

  return v8 & 1;
}

BOOL sub_257476914(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    a1 = qword_257744AA0[a1];
  }

  if (a4)
  {
    a3 = qword_257744AA0[a3];
  }

  return a1 == a3;
}

BOOL sub_257476938(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v4 = 10 * a1;
  if ((a2 & 1) == 0)
  {
    v4 = a1;
  }

  v5 = 10 * a3;
  if ((a4 & 1) == 0)
  {
    v5 = a3;
  }

  return v4 == v5;
}

BOOL sub_257476988(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    a1 = qword_257744B80[a1];
  }

  if (a4)
  {
    a3 = qword_257744B80[a3];
  }

  return a1 == a3;
}

void sub_2574769AC(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v3 = 0;
    v4 = a1 + 64;
    OUTLINED_FUNCTION_27_0();
    v7 = v6 >> 6;
    while (v5)
    {
      OUTLINED_FUNCTION_77();
      v25 = v10;
LABEL_11:
      v14 = (*(v8 + 56) + 16 * (v9 | (v3 << 6)));
      v16 = *v14;
      v15 = v14[1];

      v17 = OUTLINED_FUNCTION_211();
      v19 = sub_25765368C(v17, v18);
      v21 = v20;

      if ((v21 & 1) == 0)
      {

        return;
      }

      v22 = (*(a2 + 56) + 16 * v19);
      if (*v22 == v16 && v22[1] == v15)
      {

        v5 = v25;
      }

      else
      {
        v24 = sub_257743994();

        v5 = v25;
        if ((v24 & 1) == 0)
        {
          return;
        }
      }
    }

    v11 = v3;
    while (1)
    {
      v3 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v3 >= v7)
      {
        return;
      }

      ++v11;
      if (*(v4 + 8 * v3))
      {
        OUTLINED_FUNCTION_212();
        v25 = v13 & v12;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_257476B38()
{
  OUTLINED_FUNCTION_31();
  if (v4 != v5 && (OUTLINED_FUNCTION_371(), v6))
  {
    v7 = 0;
    OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_334();
    while (v3)
    {
      OUTLINED_FUNCTION_274();
LABEL_12:
      OUTLINED_FUNCTION_403();
      v13 = *(v12 + 8 * v11);

      v14 = OUTLINED_FUNCTION_263();
      v16 = sub_25765368C(v14, v15);
      v18 = v17;

      if ((v18 & 1) == 0 || *(*(v1 + 56) + 8 * v16) != v13)
      {
        goto LABEL_14;
      }
    }

    v8 = v7;
    while (1)
    {
      v7 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v7 >= v2)
      {
        goto LABEL_14;
      }

      ++v8;
      if (*(v0 + 64 + 8 * v7))
      {
        OUTLINED_FUNCTION_212();
        v3 = v10 & v9;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    OUTLINED_FUNCTION_35();
  }
}

void sub_257476C0C()
{
  OUTLINED_FUNCTION_31();
  if (v4 != v5 && (OUTLINED_FUNCTION_370(), v21))
  {
    v7 = v6;
    v8 = 0;
    OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_334();
    while (v3)
    {
      OUTLINED_FUNCTION_274();
LABEL_12:
      v13 = v9 | (v8 << 6);
      v14 = *(*(v1 + 48) + 8 * v13);
      v15 = (*(v1 + 56) + 16 * v13);
      v16 = *v15;
      v17 = v15[1];
      v18 = v7(v14);
      if (v19)
      {
        v20 = (*(v0 + 56) + 16 * v18);
        v21 = *v20 == v16 && v20[1] == v17;
        if (v21 || (sub_257743994() & 1) != 0)
        {
          continue;
        }
      }

      goto LABEL_18;
    }

    v10 = v8;
    while (1)
    {
      v8 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v8 >= v2)
      {
        goto LABEL_18;
      }

      ++v10;
      if (*(v1 + 64 + 8 * v8))
      {
        OUTLINED_FUNCTION_212();
        v3 = v12 & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:
    OUTLINED_FUNCTION_35();
  }
}

void sub_257476CF4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_426();
  if (v6 != v7 && (OUTLINED_FUNCTION_371(), v8))
  {
    v9 = 0;
    OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_334();
    while (v5)
    {
      OUTLINED_FUNCTION_274();
LABEL_12:
      OUTLINED_FUNCTION_403();
      v15 = *(v14 + 8 * v13);

      v16 = OUTLINED_FUNCTION_263();
      v18 = sub_25765368C(v16, v17);
      v20 = v19;

      if ((v20 & 1) == 0 || *(*(v3 + 56) + 8 * v18) != v15)
      {
        goto LABEL_14;
      }
    }

    v10 = v9;
    while (1)
    {
      v9 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v9 >= v4)
      {
        goto LABEL_14;
      }

      ++v10;
      if (*(v2 + 64 + 8 * v9))
      {
        OUTLINED_FUNCTION_212();
        v5 = v12 & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    OUTLINED_FUNCTION_427();
  }
}

void sub_257476DC8()
{
  OUTLINED_FUNCTION_31();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_376();
  v6 = type metadata accessor for Proto_MILSpec_Value(v5);
  v7 = OUTLINED_FUNCTION_24(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_183();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_290();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EF0, &qword_257744818);
  v10 = OUTLINED_FUNCTION_13(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_25_0();
  v54 = v11;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v12);
  if (v0 == v4 || *(v0 + 16) != *(v4 + 16))
  {
LABEL_19:
    OUTLINED_FUNCTION_35();
  }

  else
  {
    v52 = v4;
    v53 = &v50 - v13;
    v14 = 0;
    v51 = v0;
    v50 = v0 + 64;
    OUTLINED_FUNCTION_27_0();
    v17 = v16 >> 6;
    while (v15)
    {
      OUTLINED_FUNCTION_77();
      v55 = v18;
      v20 = v19 | (v14 << 6);
      v21 = v54;
LABEL_11:
      v27 = (*(v51 + 48) + 16 * v20);
      v28 = *v27;
      v29 = v27[1];
      OUTLINED_FUNCTION_107();
      sub_257483824(v30);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EF8, &qword_257744820);
      *v21 = v28;
      v21[1] = v29;
      OUTLINED_FUNCTION_21_0();
      sub_2574792EC(v1);
      OUTLINED_FUNCTION_21();
      __swift_storeEnumTagSinglePayload(v32, v33, v34, v31);

      v22 = v53;
LABEL_12:
      v35 = OUTLINED_FUNCTION_368();
      sub_257487240(v35);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EF8, &qword_257744820);
      OUTLINED_FUNCTION_54(v22);
      if (v36)
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_21_0();
      sub_2574792EC(v22 + v37);
      v38 = OUTLINED_FUNCTION_367();
      sub_25765368C(v38, v39);
      v41 = v40;

      if ((v41 & 1) == 0)
      {
        sub_257479298(v2);
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_107();
      sub_257483824(v42);
      OUTLINED_FUNCTION_369();
      _s20MLModelSpecification9MLProgramV5ValueV2eeoiySbAE_AEtFZ_0();
      v44 = v43;
      sub_257479298(v1);
      v45 = OUTLINED_FUNCTION_201();
      sub_257479298(v45);
      v15 = v55;
      if ((v44 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v22 = v53;
    v21 = v54;
    while (1)
    {
      v23 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v23 >= v17)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EF8, &qword_257744820);
        OUTLINED_FUNCTION_399();
        OUTLINED_FUNCTION_44();
        __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
        v55 = 0;
        goto LABEL_12;
      }

      ++v14;
      if (*(v50 + 8 * v23))
      {
        OUTLINED_FUNCTION_134();
        v55 = v24;
        v20 = v26 | (v25 << 6);
        v14 = v25;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_257477114()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_267();
  v57 = type metadata accessor for Proto_MILSpec_Argument(0);
  OUTLINED_FUNCTION_63();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_207();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_179();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_196();
  v56 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E20, &qword_257744740);
  v9 = OUTLINED_FUNCTION_13(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v10);
  v59 = v0;
  if (v1 == v0 || *(v1 + 16) != *(v59 + 16))
  {
LABEL_21:
    OUTLINED_FUNCTION_35();
  }

  else
  {
    v54[1] = v1;
    v55 = v54 - v11;
    v58 = v12;
    v13 = 0;
    v54[0] = v1 + 64;
    OUTLINED_FUNCTION_27_0();
    v16 = v15 >> 6;
    while (v14)
    {
      OUTLINED_FUNCTION_77();
      v60 = v17;
LABEL_11:
      OUTLINED_FUNCTION_331();
      OUTLINED_FUNCTION_247();
      v21 = v56;
      sub_257483824(v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E28, &qword_257744748);
      OUTLINED_FUNCTION_407();
      OUTLINED_FUNCTION_246();
      v23 = v21;
      v18 = v24;
      sub_2574792EC(v23);
      OUTLINED_FUNCTION_159();
      __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);

LABEL_12:
      v29 = v18;
      v30 = v55;
      sub_257487240(v29);
      v31 = OUTLINED_FUNCTION_252();
      __swift_instantiateConcreteTypeFromMangledNameV2(v31, v32);
      OUTLINED_FUNCTION_42_0(v30);
      if (v33)
      {
        goto LABEL_21;
      }

      v34 = v30;
      v35 = v3;
      v36 = *v34;
      v37 = v34[1];
      OUTLINED_FUNCTION_246();
      sub_2574792EC(v39 + v38);
      sub_25765368C(v36, v37);
      v41 = v40;

      if ((v41 & 1) == 0)
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_247();
      v3 = v35;
      sub_257483824(v42);
      sub_25747CD74();
      if ((v43 & 1) == 0)
      {
        v53 = OUTLINED_FUNCTION_308();
        sub_257479298(v53);
LABEL_20:
        sub_257479298(v2);
        goto LABEL_21;
      }

      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      sub_257483ACC(&qword_27F879B68, v44, MEMORY[0x277D216D0]);
      v45 = sub_257743644();
      sub_257479298(v35);
      v46 = OUTLINED_FUNCTION_294();
      sub_257479298(v46);
      v14 = v60;
      if ((v45 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v18 = v58;
    while (1)
    {
      v19 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v19 >= v16)
      {
        v47 = OUTLINED_FUNCTION_252();
        __swift_instantiateConcreteTypeFromMangledNameV2(v47, v48);
        OUTLINED_FUNCTION_44();
        __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
        v60 = 0;
        goto LABEL_12;
      }

      ++v13;
      if (*(v54[0] + 8 * v19))
      {
        OUTLINED_FUNCTION_134();
        v60 = v20;
        OUTLINED_FUNCTION_400();
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_257477D24(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    OUTLINED_FUNCTION_370();
    if (v5)
    {
      v6 = v4;
      v7 = 0;
      OUTLINED_FUNCTION_41_0();
      v10 = v9 & v8;
      v12 = (v11 + 63) >> 6;
      while (v10)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v17 = v13 | (v7 << 6);
        v18 = *(*(v3 + 56) + 8 * v17);
        v19 = v6(*(*(v3 + 48) + 8 * v17));
        if ((v20 & 1) == 0 || *(*(v2 + 56) + 8 * v19) != v18)
        {
          return;
        }
      }

      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v12)
        {
          return;
        }

        ++v14;
        if (*(v3 + 64 + 8 * v7))
        {
          OUTLINED_FUNCTION_212();
          v10 = v16 & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }
  }
}

void sub_257477E10(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_426();
  v8 = v7;
  v10 = v9;
  v133 = *MEMORY[0x277D85DE8];
  type metadata accessor for Proto_CustomModel.CustomModelParamValue(0);
  OUTLINED_FUNCTION_63();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_329();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_281();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_363(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A038, &qword_257744970);
  v16 = OUTLINED_FUNCTION_13(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_163();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_290();
  if (v10 == v8 || *(v10 + 16) != *(v8 + 16))
  {
    goto LABEL_76;
  }

  v18 = 0;
  v127 = v5;
  v129 = v2;
  v19 = v10 + 64;
  OUTLINED_FUNCTION_27_0();
  v21 = &qword_27F87A040;
  v128 = v22 >> 6;
  v131 = v4;
  while (2)
  {
    if (v20)
    {
      OUTLINED_FUNCTION_77();
      v132 = v23;
      goto LABEL_10;
    }

    do
    {
      v24 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_65:
        v95 = OUTLINED_FUNCTION_283();
        v97 = v96;
        sub_257487298(v95, v98, v99);
        v100 = OUTLINED_FUNCTION_366();
        sub_257487298(v100, v101, v21);
        v102 = OUTLINED_FUNCTION_366();
        sub_2574872D0(v102, v103, v21);
        v92 = v2;
        v93 = v97;
        goto LABEL_79;
      }

      if (v24 >= v128)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A040, &qword_257744978);
        OUTLINED_FUNCTION_44();
        __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
        v132 = 0;
        goto LABEL_11;
      }

      ++v18;
    }

    while (!*(v19 + 8 * v24));
    OUTLINED_FUNCTION_134();
    v132 = v25;
    v18 = v26;
LABEL_10:
    OUTLINED_FUNCTION_331();
    OUTLINED_FUNCTION_259();
    sub_257483824(v27);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A040, &qword_257744978);
    *v131 = v4;
    v131[1] = v8;
    OUTLINED_FUNCTION_258();
    sub_2574792EC(v130);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v28);

LABEL_11:
    v32 = OUTLINED_FUNCTION_211();
    sub_257487240(v32);
    v33 = OUTLINED_FUNCTION_263();
    __swift_instantiateConcreteTypeFromMangledNameV2(v33, v34);
    OUTLINED_FUNCTION_42_0(v5);
    if (v62)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_258();
    sub_2574792EC(v5 + v35);
    v36 = OUTLINED_FUNCTION_288();
    sub_25765368C(v36, v37);
    v39 = v38;

    if ((v39 & 1) == 0)
    {
      goto LABEL_75;
    }

    OUTLINED_FUNCTION_259();
    sub_257483824(v40);
    v41 = v2;
    v2 = *v3;
    v42 = *(v3 + 8);
    v43 = *(v3 + 16);
    v45 = *v41;
    v44 = *(v41 + 8);
    LODWORD(v21) = *(v41 + 16);
    if (v43 == 255)
    {
      if (v21 == 255)
      {
        LOBYTE(v43) = -1;
        v6 = *(v3 + 8);
        sub_257487298(*v3, v6, 255);
        v49 = OUTLINED_FUNCTION_226();
        sub_257487298(v49, v50, 255);
        goto LABEL_60;
      }

LABEL_63:
      v89 = *(v3 + 8);
      sub_257487298(*v3, v89, *(v3 + 16));
      v90 = OUTLINED_FUNCTION_226();
      sub_257487298(v90, v91, v21);
      sub_2574872D0(v2, v89, v43);
      v92 = OUTLINED_FUNCTION_226();
      v94 = v21;
      goto LABEL_74;
    }

    if (v21 == 255)
    {
      goto LABEL_63;
    }

    switch(*(v3 + 16))
    {
      case 1:
        if (v21 == 1)
        {
          v62 = v2 == v45 && v42 == v44;
          if (v62)
          {
            v6 = *(v3 + 8);
            sub_257487298(*v3, v6, 1);
            v72 = OUTLINED_FUNCTION_369();
            sub_257487298(v72, v73, 1);
            v70 = OUTLINED_FUNCTION_369();
            v74 = 1;
LABEL_59:
            sub_2574872D0(v70, v71, v74);
            goto LABEL_60;
          }

          v63 = *(v41 + 8);
          v64 = *(v3 + 8);
          v126 = sub_257743994();
          v65 = v45;
          v45 = v2;
          v6 = v64;
          sub_257487298(v2, v64, 1);
          v66 = OUTLINED_FUNCTION_309();
          sub_257487298(v66, v67, 1);
          v68 = v65;
          v5 = v127;
          sub_2574872D0(v68, v63, 1);
          if ((v126 & 1) == 0)
          {
            goto LABEL_73;
          }

LABEL_60:
          v85 = OUTLINED_FUNCTION_369();
          sub_2574872D0(v85, v86, v43);
          sub_2577431B4();
          OUTLINED_FUNCTION_0_1();
          sub_257483ACC(&qword_27F879B68, v87, MEMORY[0x277D216D0]);
          v2 = v129;
          v8 = sub_257743644();
          sub_257479298(v3);
          v88 = OUTLINED_FUNCTION_368();
          sub_257479298(v88);
          v4 = v131;
          v20 = v132;
          v21 = &qword_27F87A040;
          if ((v8 & 1) == 0)
          {
            goto LABEL_76;
          }

          continue;
        }

        v107 = OUTLINED_FUNCTION_79();
        sub_257487298(v107, v108, 1);
        v109 = OUTLINED_FUNCTION_367();
        sub_257487298(v109, v110, v21);
        v111 = OUTLINED_FUNCTION_367();
LABEL_72:
        sub_2574872D0(v111, v112, v21);
LABEL_73:
        v92 = v45;
        v93 = v6;
        v94 = v43;
LABEL_74:
        sub_2574872D0(v92, v93, v94);
        v115 = OUTLINED_FUNCTION_195();
        sub_257479298(v115);
        v2 = v129;
LABEL_75:
        sub_257479298(v2);
LABEL_76:
        OUTLINED_FUNCTION_427();
        return;
      case 2:
        if (v21 != 2)
        {
          v104 = OUTLINED_FUNCTION_79();
          v106 = 2;
LABEL_71:
          sub_257487298(v104, v105, v106);
          v113 = OUTLINED_FUNCTION_309();
          sub_257487298(v113, v114, v21);
          v111 = OUTLINED_FUNCTION_309();
          goto LABEL_72;
        }

        v6 = *(v3 + 8);
        sub_257487298(*v3, v6, 2);
        v58 = OUTLINED_FUNCTION_226();
        sub_257487298(v58, v59, 2);
        v60 = v45;
        v45 = v2;
        if (v2 == v60)
        {
          goto LABEL_60;
        }

        goto LABEL_73;
      case 3:
        v61 = *(v41 + 8);
        if (v21 != 3)
        {
          v104 = OUTLINED_FUNCTION_79();
          v106 = 3;
          goto LABEL_71;
        }

        v6 = *(v3 + 8);
        sub_257487298(*v3, v6, 3);
        if (v2 == v45)
        {
          sub_257487298(v2, v61, 3);
          v5 = v127;
          goto LABEL_60;
        }

        v116 = v45;
        v45 = v2;
        sub_257487298(v116, v61, 3);
        goto LABEL_73;
      case 4:
        v55 = *(v41 + 8);
        if (v21 != 4)
        {
          v104 = OUTLINED_FUNCTION_79();
          v106 = 4;
          goto LABEL_71;
        }

        v56 = OUTLINED_FUNCTION_79();
        sub_257487298(v56, v57, 4);
        v5 = v127;
        sub_257487298(v45, v55, 4);
        if (((v45 ^ v2) & 1) == 0)
        {
          goto LABEL_60;
        }

        goto LABEL_73;
      case 5:
        if (v21 != 5)
        {
          goto LABEL_65;
        }

        if (*&v2 == 0.0)
        {
          v69 = v42 == 0xC000000000000000 && v44 >> 62 == 3;
          if (v69 && *&v45 == 0.0 && v44 == 0xC000000000000000)
          {
            LOBYTE(v43) = 5;
            v6 = *(v3 + 8);
            sub_257487298(0, 0xC000000000000000, 5);
            sub_257487298(0, 0xC000000000000000, 5);
            v70 = 0;
            v71 = 0xC000000000000000;
LABEL_58:
            v74 = 5;
            goto LABEL_59;
          }
        }

        switch(v44 >> 62)
        {
          case 1uLL:
            LODWORD(v75) = HIDWORD(v45) - v45;
            if (__OFSUB__(HIDWORD(v45), v45))
            {
              goto LABEL_80;
            }

            v75 = v75;
LABEL_56:
            if (!v75)
            {
LABEL_57:
              LOBYTE(v43) = 5;
              v79 = OUTLINED_FUNCTION_283();
              v6 = v80;
              sub_257487298(v79, v81, v82);
              v83 = OUTLINED_FUNCTION_360();
              sub_257487298(v83, v84, 5);
              v70 = OUTLINED_FUNCTION_360();
              goto LABEL_58;
            }

            v117 = OUTLINED_FUNCTION_283();
            sub_257487298(v117, v118, v119);
            OUTLINED_FUNCTION_217();
            sub_257487298(v120, v121, v122);
            OUTLINED_FUNCTION_217();
            sub_2574872D0(v123, v124, v125);
            v92 = OUTLINED_FUNCTION_369();
            break;
          case 2uLL:
            v77 = *(v45 + 16);
            v76 = *(v45 + 24);
            v78 = __OFSUB__(v76, v77);
            v75 = v76 - v77;
            if (!v78)
            {
              goto LABEL_56;
            }

            __break(1u);
LABEL_80:
            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
            return;
          case 3uLL:
            goto LABEL_57;
          default:
            v75 = BYTE6(v44);
            goto LABEL_56;
        }

        break;
      default:
        v46 = *(v41 + 8);
        if (*(v41 + 16))
        {
          v104 = OUTLINED_FUNCTION_79();
          v106 = 0;
          goto LABEL_71;
        }

        v47 = OUTLINED_FUNCTION_79();
        sub_257487298(v47, v48, 0);
        sub_257487298(v45, v46, 0);
        if (*&v2 == *&v45)
        {
          goto LABEL_60;
        }

        goto LABEL_73;
    }

    break;
  }

LABEL_79:
  v94 = 5;
  goto LABEL_74;
}