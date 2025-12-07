void NeuralNetwork.Layer.UnidirectionalLSTMParameters.activations.setter()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v4 = type metadata accessor for NeuralNetwork.Layer.Activation(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = OUTLINED_FUNCTION_1_42();
  v7 = type metadata accessor for Proto_ActivationParams(v6);
  v8 = OUTLINED_FUNCTION_10_17(v7);
  v10 = v9;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  v14 = *(v3 + 16);
  if (v14)
  {
    v29 = MEMORY[0x277D84F90];
    sub_2574846C8(0, v14, 0);
    v15 = v29;
    OUTLINED_FUNCTION_193();
    v17 = v3 + v16;
    v18 = *(v5 + 72);
    do
    {
      sub_25767DBAC(v17, v1);
      v19 = type metadata accessor for Proto_ActivationParams.OneOf_NonlinearityType(0);
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      sub_2574695E4(v13, &qword_27F879CC0, &unk_257752A20);
      sub_2576B76DC();
      OUTLINED_FUNCTION_21();
      __swift_storeEnumTagSinglePayload(v23, v24, v25, v19);
      sub_25763E764(v1, type metadata accessor for NeuralNetwork.Layer.Activation);
      v27 = *(v29 + 16);
      v26 = *(v29 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_2574846C8(v26 > 1, v27 + 1, 1);
      }

      *(v29 + 16) = v27 + 1;
      OUTLINED_FUNCTION_193();
      sub_25767DB50(v13, v29 + v28 + *(v10 + 72) * v27);
      v17 += v18;
      --v14;
    }

    while (v14);
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
  }

  *(v0 + 16) = v15;
  OUTLINED_FUNCTION_35();
}

void (*NeuralNetwork.Layer.UnidirectionalLSTMParameters.activations.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  NeuralNetwork.Layer.UnidirectionalLSTMParameters.activations.getter();
  *a1 = v3;
  return sub_25767C818;
}

void sub_25767C818(uint64_t a1, char a2)
{
  if (a2)
  {

    NeuralNetwork.Layer.UnidirectionalLSTMParameters.activations.setter();
  }

  else
  {
    NeuralNetwork.Layer.UnidirectionalLSTMParameters.activations.setter();
  }
}

void NeuralNetwork.Layer.UnidirectionalLSTMParameters.sequenceOutput.setter()
{
  OUTLINED_FUNCTION_433();
  v6 = v5;
  v7 = OUTLINED_FUNCTION_280();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_13(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_64();
  type metadata accessor for Proto_LSTMParams(v11);
  OUTLINED_FUNCTION_32_1();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_1_42();
  v14 = type metadata accessor for Proto_UniDirectionalLSTMLayerParams(v13);
  OUTLINED_FUNCTION_13_14(v14);
  v15 = OUTLINED_FUNCTION_26_0(v3);
  if (v16)
  {
    *(v2 + 8) = 0;
    *(v2 + 1) = 0;
    OUTLINED_FUNCTION_28_13(v15);
    OUTLINED_FUNCTION_26_0(v3);
    if (!v16)
    {
      sub_2574695E4(v3, &qword_27F87CA40, &qword_257752538);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_54();
    OUTLINED_FUNCTION_38_7();
  }

  *v2 = v6 & 1;
  sub_2574695E4(v0 + v4, &qword_27F87CA40, &qword_257752538);
  OUTLINED_FUNCTION_0_54();
  OUTLINED_FUNCTION_39_8();
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v1);
  OUTLINED_FUNCTION_434();
}

void (*NeuralNetwork.Layer.UnidirectionalLSTMParameters.sequenceOutput.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_27_12(a1);
  v1 = NeuralNetwork.Layer.UnidirectionalLSTMParameters.sequenceOutput.getter();
  OUTLINED_FUNCTION_17_15(v1);
  return sub_25767C9D8;
}

uint64_t NeuralNetwork.Layer.UnidirectionalLSTMParameters.hasBias.getter()
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

void NeuralNetwork.Layer.UnidirectionalLSTMParameters.hasBias.setter()
{
  OUTLINED_FUNCTION_433();
  v6 = v5;
  v7 = OUTLINED_FUNCTION_280();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_13(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_64();
  type metadata accessor for Proto_LSTMParams(v11);
  OUTLINED_FUNCTION_32_1();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_1_42();
  v14 = type metadata accessor for Proto_UniDirectionalLSTMLayerParams(v13);
  OUTLINED_FUNCTION_13_14(v14);
  v15 = OUTLINED_FUNCTION_26_0(v3);
  if (v16)
  {
    *v2 = 0;
    *(v2 + 2) = 0;
    *(v2 + 4) = 0;
    *(v2 + 8) = 0;
    OUTLINED_FUNCTION_28_13(v15);
    OUTLINED_FUNCTION_26_0(v3);
    if (!v16)
    {
      sub_2574695E4(v3, &qword_27F87CA40, &qword_257752538);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_54();
    OUTLINED_FUNCTION_38_7();
  }

  *(v2 + 1) = v6 & 1;
  sub_2574695E4(v0 + v4, &qword_27F87CA40, &qword_257752538);
  OUTLINED_FUNCTION_0_54();
  OUTLINED_FUNCTION_39_8();
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v1);
  OUTLINED_FUNCTION_434();
}

void (*NeuralNetwork.Layer.UnidirectionalLSTMParameters.hasBias.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_27_12(a1);
  v1 = NeuralNetwork.Layer.UnidirectionalLSTMParameters.hasBias.getter();
  OUTLINED_FUNCTION_17_15(v1);
  return sub_25767CC50;
}

uint64_t NeuralNetwork.Layer.UnidirectionalLSTMParameters.hasForgetBias.getter()
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

void NeuralNetwork.Layer.UnidirectionalLSTMParameters.hasForgetBias.setter()
{
  OUTLINED_FUNCTION_433();
  v6 = v5;
  v7 = OUTLINED_FUNCTION_280();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_13(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_64();
  type metadata accessor for Proto_LSTMParams(v11);
  OUTLINED_FUNCTION_32_1();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_1_42();
  v14 = type metadata accessor for Proto_UniDirectionalLSTMLayerParams(v13);
  OUTLINED_FUNCTION_13_14(v14);
  v15 = OUTLINED_FUNCTION_26_0(v3);
  if (v16)
  {
    *v2 = 0;
    *(v2 + 3) = 0;
    *(v2 + 8) = 0;
    OUTLINED_FUNCTION_28_13(v15);
    OUTLINED_FUNCTION_26_0(v3);
    if (!v16)
    {
      sub_2574695E4(v3, &qword_27F87CA40, &qword_257752538);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_54();
    OUTLINED_FUNCTION_38_7();
  }

  *(v2 + 2) = v6 & 1;
  sub_2574695E4(v0 + v4, &qword_27F87CA40, &qword_257752538);
  OUTLINED_FUNCTION_0_54();
  OUTLINED_FUNCTION_39_8();
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v1);
  OUTLINED_FUNCTION_434();
}

void (*NeuralNetwork.Layer.UnidirectionalLSTMParameters.hasForgetBias.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_27_12(a1);
  v1 = NeuralNetwork.Layer.UnidirectionalLSTMParameters.hasForgetBias.getter();
  OUTLINED_FUNCTION_17_15(v1);
  return sub_25767CEC4;
}

uint64_t NeuralNetwork.Layer.UnidirectionalLSTMParameters.hasPeepholeConnections.getter()
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

void NeuralNetwork.Layer.UnidirectionalLSTMParameters.hasPeepholeConnections.setter()
{
  OUTLINED_FUNCTION_433();
  v6 = v5;
  v7 = OUTLINED_FUNCTION_280();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_13(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_64();
  type metadata accessor for Proto_LSTMParams(v11);
  OUTLINED_FUNCTION_32_1();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_1_42();
  v14 = type metadata accessor for Proto_UniDirectionalLSTMLayerParams(v13);
  OUTLINED_FUNCTION_13_14(v14);
  v15 = OUTLINED_FUNCTION_26_0(v3);
  if (v16)
  {
    *v2 = 0;
    *(v2 + 2) = 0;
    *(v2 + 4) = 0;
    *(v2 + 8) = 0;
    OUTLINED_FUNCTION_28_13(v15);
    OUTLINED_FUNCTION_26_0(v3);
    if (!v16)
    {
      sub_2574695E4(v3, &qword_27F87CA40, &qword_257752538);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_54();
    OUTLINED_FUNCTION_38_7();
  }

  *(v2 + 3) = v6 & 1;
  sub_2574695E4(v0 + v4, &qword_27F87CA40, &qword_257752538);
  OUTLINED_FUNCTION_0_54();
  OUTLINED_FUNCTION_39_8();
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v1);
  OUTLINED_FUNCTION_434();
}

void (*NeuralNetwork.Layer.UnidirectionalLSTMParameters.hasPeepholeConnections.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_27_12(a1);
  v1 = NeuralNetwork.Layer.UnidirectionalLSTMParameters.hasPeepholeConnections.getter();
  OUTLINED_FUNCTION_17_15(v1);
  return sub_25767D13C;
}

uint64_t NeuralNetwork.Layer.UnidirectionalLSTMParameters.coupledInputAndForgetGate.getter()
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

void NeuralNetwork.Layer.UnidirectionalLSTMParameters.coupledInputAndForgetGate.setter()
{
  OUTLINED_FUNCTION_433();
  v6 = v5;
  v7 = OUTLINED_FUNCTION_280();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_13(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_64();
  type metadata accessor for Proto_LSTMParams(v11);
  OUTLINED_FUNCTION_32_1();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_1_42();
  v14 = type metadata accessor for Proto_UniDirectionalLSTMLayerParams(v13);
  OUTLINED_FUNCTION_13_14(v14);
  v15 = OUTLINED_FUNCTION_26_0(v3);
  if (v16)
  {
    *(v2 + 8) = 0;
    *v2 = 0;
    OUTLINED_FUNCTION_28_13(v15);
    OUTLINED_FUNCTION_26_0(v3);
    if (!v16)
    {
      sub_2574695E4(v3, &qword_27F87CA40, &qword_257752538);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_54();
    OUTLINED_FUNCTION_38_7();
  }

  *(v2 + 4) = v6 & 1;
  sub_2574695E4(v0 + v4, &qword_27F87CA40, &qword_257752538);
  OUTLINED_FUNCTION_0_54();
  OUTLINED_FUNCTION_39_8();
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v1);
  OUTLINED_FUNCTION_434();
}

void (*NeuralNetwork.Layer.UnidirectionalLSTMParameters.coupledInputAndForgetGate.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_27_12(a1);
  v1 = NeuralNetwork.Layer.UnidirectionalLSTMParameters.coupledInputAndForgetGate.getter();
  OUTLINED_FUNCTION_17_15(v1);
  return sub_25767D3AC;
}

uint64_t NeuralNetwork.Layer.UnidirectionalLSTMParameters.cellClipThreshold.setter(float a1)
{
  v4 = OUTLINED_FUNCTION_36_7();
  OUTLINED_FUNCTION_13(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = type metadata accessor for Proto_LSTMParams(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v10 = OUTLINED_FUNCTION_17_3();
  v11 = *(type metadata accessor for Proto_UniDirectionalLSTMLayerParams(v10) + 36);
  sub_2574A172C(v1 + v11, v7, &qword_27F87CA40, &qword_257752538);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    *(v2 + 4) = 0;
    *v2 = 0;
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
    {
      sub_2574695E4(v7, &qword_27F87CA40, &qword_257752538);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_54();
    sub_25767DB50(v7, v2);
  }

  *(v2 + 8) = a1;
  sub_2574695E4(v1 + v11, &qword_27F87CA40, &qword_257752538);
  OUTLINED_FUNCTION_0_54();
  sub_25767DB50(v2, v1 + v11);
  OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v8);
}

uint64_t (*NeuralNetwork.Layer.UnidirectionalLSTMParameters.cellClipThreshold.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_27_12(a1);
  *(v1 + 8) = NeuralNetwork.Layer.UnidirectionalLSTMParameters.cellClipThreshold.getter();
  return sub_25767D59C;
}

uint64_t sub_25767D5C4(uint64_t a1)
{
  v2 = type metadata accessor for NeuralNetwork.Layer.LSTMWeightParameters(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25767DBAC(a1, v4);
  return NeuralNetwork.Layer.UnidirectionalLSTMParameters.weights.setter(v4);
}

uint64_t NeuralNetwork.Layer.UnidirectionalLSTMParameters.weights.setter(uint64_t a1)
{
  type metadata accessor for Proto_LSTMWeightParams(0);
  OUTLINED_FUNCTION_32_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_24_0();
  sub_25767DB50(a1, v3);
  v6 = *(type metadata accessor for Proto_UniDirectionalLSTMLayerParams(0) + 40);
  sub_2574695E4(v1 + v6, &qword_27F87CA48, &unk_257752540);
  sub_25767DB50(v3, v1 + v6);
  OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v2);
}

void NeuralNetwork.Layer.UnidirectionalLSTMParameters.weights.modify()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87CA48, &unk_257752540);
  OUTLINED_FUNCTION_13(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Proto_LSTMWeightParams(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_4();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = type metadata accessor for NeuralNetwork.Layer.LSTMWeightParameters(0);
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  v3[5] = __swift_coroFrameAllocStub(v13);
  v14 = __swift_coroFrameAllocStub(v13);
  v3[6] = v14;
  v15 = *(type metadata accessor for Proto_UniDirectionalLSTMLayerParams(0) + 40);
  *(v3 + 14) = v15;
  sub_2574A172C(v0 + v15, v6, &qword_27F87CA48, &unk_257752540);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v16 = *(v7 + 20);
    if (qword_27F879590 != -1)
    {
      OUTLINED_FUNCTION_23_13(&qword_27F879590);
    }

    *&v10[v16] = qword_27F87BF38;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);

    if (EnumTagSinglePayload != 1)
    {
      sub_2574695E4(v6, &qword_27F87CA48, &unk_257752540);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_32();
    sub_25767DB50(v6, v10);
  }

  OUTLINED_FUNCTION_6_32();
  sub_25767DB50(v10, v14);
  OUTLINED_FUNCTION_35();
}

void sub_25767D920()
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
    sub_25767DBAC((*v0)[6], v2);
    OUTLINED_FUNCTION_20_11();
    sub_25767DB50(v2, v4);
    sub_2574695E4(v8 + v1, &qword_27F87CA48, &unk_257752540);
    sub_25767DB50(v4, v8 + v1);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v7);
    OUTLINED_FUNCTION_5_19();
    sub_25763E764(v3, v13);
  }

  else
  {
    OUTLINED_FUNCTION_20_11();
    sub_25767DB50(v3, v4);
    sub_2574695E4(v8 + v1, &qword_27F87CA48, &unk_257752540);
    sub_25767DB50(v4, v8 + v1);
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

uint64_t (*NeuralNetwork.Layer.UnidirectionalLSTMParameters.reverseInput.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 24);
  return sub_25767DAA0;
}

uint64_t NeuralNetwork.Layer.UnidirectionalLSTMParameters.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = MEMORY[0x277D84F90];
  *(a1 + 24) = 0;
  type metadata accessor for Proto_UniDirectionalLSTMLayerParams(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  type metadata accessor for Proto_LSTMParams(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  type metadata accessor for Proto_LSTMWeightParams(0);
  OUTLINED_FUNCTION_44();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_25767DB50(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_25767DBAC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(a2, v2);
  return a2;
}

unint64_t sub_25767DC0C()
{
  result = qword_27F87DEB0;
  if (!qword_27F87DEB0)
  {
    type metadata accessor for Proto_UniDirectionalLSTMLayerParams(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87DEB0);
  }

  return result;
}

uint64_t type metadata accessor for NeuralNetwork.Layer.UnidirectionalLSTMParameters(uint64_t a1)
{
  result = qword_27F880B38;
  if (!qword_27F880B38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25767DCD8(uint64_t a1)
{
  result = type metadata accessor for Proto_UniDirectionalLSTMLayerParams(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_41()
{

  return sub_25763E764(v0, type metadata accessor for Proto_LSTMParams);
}

uint64_t OUTLINED_FUNCTION_11_21(uint64_t a1)
{
  *(v1 + 8) = 0;
  *v1 = 0;
  *(v1 + 4) = 0;

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_12_21(uint64_t a1)
{
  v6 = v2 + *(a1 + 36);

  return sub_2574A172C(v6, v1, v3, v4);
}

uint64_t OUTLINED_FUNCTION_13_14(uint64_t a1)
{
  v6 = v1 + *(a1 + 36);

  return sub_2574A172C(v6, v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_14_10()
{

  return type metadata accessor for Proto_LSTMParams(0);
}

uint64_t OUTLINED_FUNCTION_23_13(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_28_13(uint64_t a1)
{

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_36_7()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_37_10()
{

  return sub_25767DB50(v0, v1);
}

uint64_t OUTLINED_FUNCTION_38_7()
{

  return sub_25767DB50(v1, v0);
}

uint64_t OUTLINED_FUNCTION_39_8()
{

  return sub_25767DB50(v1, v0 + v2);
}

uint64_t sub_25767DF4C()
{
  v2 = v0;
  v3 = type metadata accessor for Proto_StringVector(0);
  v4 = OUTLINED_FUNCTION_13(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v5 = OUTLINED_FUNCTION_38();
  v6 = type metadata accessor for Proto_CoreMLModels_WordTagger.OneOf_Tags(v5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880330, &unk_25776B7D0);
  OUTLINED_FUNCTION_13(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = &v45 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B28, &unk_257773B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2577503A0;
  *(inited + 32) = 0x6E6F697369766552;
  *(inited + 40) = 0xE800000000000000;
  v48 = *v0;
  *(inited + 48) = sub_257743674();
  *(inited + 56) = v16;
  *(inited + 64) = 0;
  *(inited + 72) = 0x65676175676E614CLL;
  *(inited + 80) = 0xE800000000000000;
  v17 = *(v0 + 1);
  v18 = *(v0 + 2);
  v48 = 34;
  v49 = 0xE100000000000000;
  MEMORY[0x259C64E90](v17, v18);
  OUTLINED_FUNCTION_7_25();
  v19 = v49;
  *(inited + 88) = v48;
  *(inited + 96) = v19;
  *(inited + 104) = 0;
  *(inited + 112) = 1936154964;
  *(inited + 120) = 0xE400000000000000;
  v20 = type metadata accessor for Proto_CoreMLModels_WordTagger(0);
  sub_25767ED54(v0 + *(v20 + 44), v14);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v6);
  v22 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  if (EnumTagSinglePayload != 1)
  {
    OUTLINED_FUNCTION_1_43();
    sub_25767EDC4(v14, v10, v24);
    OUTLINED_FUNCTION_0_55();
    sub_25767EDC4(v10, v1, v25);
    v23 = *v1;

    sub_25767EE20(v1);
  }

  v26 = *(v23 + 16);
  if (v26)
  {
    v45 = inited;
    v46 = v2;
    v48 = v22;
    result = sub_257484040(0, v26, 0);
    v28 = 0;
    v22 = v48;
    v29 = (v23 + 40);
    v47 = v23;
    while (v28 < *(v23 + 16))
    {
      v30 = *(v29 - 1);
      v31 = *v29;
      v48 = v22;
      v32 = *(v22 + 16);
      v33 = *(v22 + 24);

      if (v32 >= v33 >> 1)
      {
        result = sub_257484040((v33 > 1), v32 + 1, 1);
        v22 = v48;
      }

      ++v28;
      *(v22 + 16) = v32 + 1;
      v34 = v22 + 24 * v32;
      *(v34 + 32) = v30;
      *(v34 + 40) = v31;
      *(v34 + 48) = 0;
      v29 += 2;
      v23 = v47;
      if (v26 == v28)
      {

        inited = v45;
        v2 = v46;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_11:
    *(inited + 128) = v22;
    *(inited + 136) = 0;
    *(inited + 144) = 1;
    *(inited + 152) = 0xD000000000000012;
    *(inited + 160) = 0x8000000257780D20;
    OUTLINED_FUNCTION_20_12();
    OUTLINED_FUNCTION_7_25();
    v35 = v49;
    *(inited + 168) = v48;
    *(inited + 176) = v35;
    *(inited + 184) = 0;
    OUTLINED_FUNCTION_23_7();
    *(inited + 192) = 0xD000000000000016;
    *(inited + 200) = v36;
    OUTLINED_FUNCTION_20_12();
    OUTLINED_FUNCTION_7_25();
    v37 = v49;
    *(inited + 208) = v48;
    *(inited + 216) = v37;
    *(inited + 224) = 0;
    OUTLINED_FUNCTION_23_7();
    *(inited + 232) = 0xD00000000000001BLL;
    *(inited + 240) = v38;
    OUTLINED_FUNCTION_20_12();
    OUTLINED_FUNCTION_7_25();
    v39 = v49;
    *(inited + 248) = v48;
    *(inited + 256) = v39;
    *(inited + 264) = 0;
    OUTLINED_FUNCTION_23_7();
    *(inited + 272) = 0xD000000000000019;
    *(inited + 280) = v40;
    OUTLINED_FUNCTION_20_12();
    OUTLINED_FUNCTION_7_25();
    v41 = v49;
    *(inited + 288) = v48;
    *(inited + 296) = v41;
    *(inited + 304) = 0;
    OUTLINED_FUNCTION_23_7();
    *(inited + 312) = 0xD000000000000014;
    *(inited + 320) = v42;
    v43 = *(v2 + 12);
    v48 = *(v2 + 11);
    v49 = v43;
    sub_257486740(v48, v43);
    *(inited + 328) = sub_257743674();
    *(inited + 336) = v44;
    *(inited + 344) = 0;
    return sub_2576AACFC(inited);
  }

  return result;
}

unint64_t WordTaggerConfiguration.revision.setter(unint64_t result)
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

unint64_t *(*WordTaggerConfiguration.revision.modify(void *a1))(unint64_t *result, char a2)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_25767E390;
}

unint64_t *sub_25767E390(unint64_t *result, char a2)
{
  v2 = *result;
  if (a2)
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_9;
    }

    if (!HIDWORD(v2))
    {
LABEL_7:
      *result[1] = v2;
      return result;
    }

    __break(1u);
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!HIDWORD(v2))
  {
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t WordTaggerConfiguration.language.setter()
{
  OUTLINED_FUNCTION_7_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t WordTaggerConfiguration.language.modify()
{
  OUTLINED_FUNCTION_14_11(*(v0 + 16), *(v0 + 8));

  return OUTLINED_FUNCTION_44_1();
}

uint64_t sub_25767E4B4()
{
  OUTLINED_FUNCTION_12_22();
  if (v3)
  {

    *(v2 + 8) = v1;
    *(v2 + 16) = v0;
  }

  else
  {

    *(v2 + 8) = v1;
    *(v2 + 16) = v0;
  }

  return result;
}

uint64_t WordTaggerConfiguration.tokensOutputFeatureName.setter()
{
  OUTLINED_FUNCTION_7_1();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t WordTaggerConfiguration.tokensOutputFeatureName.modify()
{
  OUTLINED_FUNCTION_14_11(*(v0 + 32), *(v0 + 24));

  return OUTLINED_FUNCTION_44_1();
}

uint64_t sub_25767E60C()
{
  OUTLINED_FUNCTION_12_22();
  if (v3)
  {

    *(v2 + 24) = v1;
    *(v2 + 32) = v0;
  }

  else
  {

    *(v2 + 24) = v1;
    *(v2 + 32) = v0;
  }

  return result;
}

uint64_t WordTaggerConfiguration.tokenTagsOutputFeatureName.setter()
{
  OUTLINED_FUNCTION_7_1();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t WordTaggerConfiguration.tokenTagsOutputFeatureName.modify()
{
  OUTLINED_FUNCTION_14_11(*(v0 + 48), *(v0 + 40));

  return OUTLINED_FUNCTION_44_1();
}

uint64_t sub_25767E764()
{
  OUTLINED_FUNCTION_12_22();
  if (v3)
  {

    *(v2 + 40) = v1;
    *(v2 + 48) = v0;
  }

  else
  {

    *(v2 + 40) = v1;
    *(v2 + 48) = v0;
  }

  return result;
}

uint64_t WordTaggerConfiguration.tokenLocationsOutputFeatureName.setter()
{
  OUTLINED_FUNCTION_7_1();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t WordTaggerConfiguration.tokenLocationsOutputFeatureName.modify()
{
  OUTLINED_FUNCTION_14_11(*(v0 + 64), *(v0 + 56));

  return OUTLINED_FUNCTION_44_1();
}

uint64_t sub_25767E8BC()
{
  OUTLINED_FUNCTION_12_22();
  if (v3)
  {

    *(v2 + 56) = v1;
    *(v2 + 64) = v0;
  }

  else
  {

    *(v2 + 56) = v1;
    *(v2 + 64) = v0;
  }

  return result;
}

uint64_t WordTaggerConfiguration.tokenLengthsOutputFeatureName.setter()
{
  OUTLINED_FUNCTION_7_1();

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t WordTaggerConfiguration.tokenLengthsOutputFeatureName.modify()
{
  OUTLINED_FUNCTION_14_11(*(v0 + 80), *(v0 + 72));

  return OUTLINED_FUNCTION_44_1();
}

uint64_t sub_25767EA14()
{
  OUTLINED_FUNCTION_12_22();
  if (v3)
  {

    *(v2 + 72) = v1;
    *(v2 + 80) = v0;
  }

  else
  {

    *(v2 + 72) = v1;
    *(v2 + 80) = v0;
  }

  return result;
}

uint64_t WordTaggerConfiguration.modelParameterData.getter()
{
  v0 = OUTLINED_FUNCTION_205();
  sub_257486740(v0, v1);
  return OUTLINED_FUNCTION_205();
}

uint64_t WordTaggerConfiguration.modelParameterData.setter()
{
  OUTLINED_FUNCTION_7_1();
  result = sub_257486798(*(v1 + 88), *(v1 + 96));
  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t (*WordTaggerConfiguration.modelParameterData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  *a1 = v3;
  a1[1] = v4;
  sub_257486740(v3, v4);
  return sub_25767EB74;
}

uint64_t sub_25767EB74(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  v5 = *(v3 + 88);
  v6 = *(v3 + 96);
  if (a2)
  {
    v7 = OUTLINED_FUNCTION_44_1();
    sub_257486740(v7, v8);
    sub_257486798(v5, v6);
    *(v3 + 88) = v4;
    *(v3 + 96) = v2;
    v9 = OUTLINED_FUNCTION_44_1();

    return sub_257486798(v9, v10);
  }

  else
  {
    result = sub_257486798(*(v3 + 88), *(v3 + 96));
    *(v3 + 88) = v4;
    *(v3 + 96) = v2;
  }

  return result;
}

uint64_t WordTaggerConfiguration.tags.getter@<X0>(void *a1@<X8>)
{
  v5 = type metadata accessor for Proto_StringVector(0);
  v6 = OUTLINED_FUNCTION_13(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  v7 = type metadata accessor for Proto_CoreMLModels_WordTagger.OneOf_Tags(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880330, &unk_25776B7D0);
  OUTLINED_FUNCTION_13(v12);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_38();
  v15 = type metadata accessor for Proto_CoreMLModels_WordTagger(v14);
  sub_25767ED54(v1 + *(v15 + 44), v3);
  result = __swift_getEnumTagSinglePayload(v3, 1, v7);
  if (result == 1)
  {
    v17 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_1_43();
    sub_25767EDC4(v3, v11, v18);
    OUTLINED_FUNCTION_0_55();
    sub_25767EDC4(v11, v2, v19);
    v17 = *v2;

    result = sub_25767EE20(v2);
  }

  *a1 = v17;
  return result;
}

uint64_t sub_25767ED54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880330, &unk_25776B7D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25767EDC4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_205();
  v5(v4);
  return a2;
}

uint64_t sub_25767EE20(uint64_t a1)
{
  v2 = type metadata accessor for Proto_StringVector(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25767EE7C@<X0>(void *a1@<X8>)
{
  result = WordTaggerConfiguration.tags.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_25767EEB8(uint64_t *a1)
{
  v2 = *a1;

  return WordTaggerConfiguration.tags.setter(&v2);
}

uint64_t WordTaggerConfiguration.tags.setter(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880330, &unk_25776B7D0);
  OUTLINED_FUNCTION_13(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_271();
  v6 = *a1;
  type metadata accessor for Proto_StringVector(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v2 = v6;
  v7 = type metadata accessor for Proto_CoreMLModels_WordTagger.OneOf_Tags(0);
  v8 = OUTLINED_FUNCTION_21_15(v7);
  return sub_25767EF98(v2, v1 + *(v8 + 44));
}

uint64_t sub_25767EF98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880330, &unk_25776B7D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t (*WordTaggerConfiguration.tags.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x48uLL);
  v2 = OUTLINED_FUNCTION_18_20(v1);
  v0[2] = v2;
  OUTLINED_FUNCTION_13(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v0[3] = v4;
  v5 = type metadata accessor for Proto_CoreMLModels_WordTagger.OneOf_Tags(0);
  v0[4] = v5;
  OUTLINED_FUNCTION_4();
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v0[5] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880330, &unk_25776B7D0);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  v0[6] = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  v0[7] = v11;
  v12 = type metadata accessor for Proto_CoreMLModels_WordTagger(0);
  OUTLINED_FUNCTION_19_17(v12);
  if (__swift_getEnumTagSinglePayload(v11, 1, v5) == 1)
  {
    v13 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_1_43();
    sub_25767EDC4(v11, v7, v14);
    OUTLINED_FUNCTION_0_55();
    sub_25767EDC4(v7, v4, v15);
    v13 = *v4;

    sub_25767EE20(v4);
  }

  *v0 = v13;
  return sub_25767FC8C;
}

uint64_t WordTaggerConfiguration.stringTags.getter()
{
  v2 = type metadata accessor for Proto_StringVector(0);
  v3 = OUTLINED_FUNCTION_13(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v6 = (v5 - v4);
  v7 = type metadata accessor for Proto_CoreMLModels_WordTagger.OneOf_Tags(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880330, &unk_25776B7D0);
  OUTLINED_FUNCTION_13(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - v11;
  v13 = type metadata accessor for Proto_CoreMLModels_WordTagger(0);
  sub_25767ED54(v0 + *(v13 + 44), v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v7) == 1)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_1_43();
  sub_25767EDC4(v12, v1, v15);
  OUTLINED_FUNCTION_0_55();
  sub_25767EDC4(v1, v6, v16);
  v14 = *v6;

  sub_25767EE20(v6);
  return v14;
}

uint64_t WordTaggerConfiguration.stringTags.setter(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880330, &unk_25776B7D0);
  OUTLINED_FUNCTION_13(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_271();
  type metadata accessor for Proto_StringVector(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v2 = a1;
  v6 = type metadata accessor for Proto_CoreMLModels_WordTagger.OneOf_Tags(0);
  v7 = OUTLINED_FUNCTION_21_15(v6);
  return sub_25767EF98(v2, v1 + *(v7 + 44));
}

uint64_t (*WordTaggerConfiguration.stringTags.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x48uLL);
  v2 = OUTLINED_FUNCTION_18_20(v1);
  v0[2] = v2;
  OUTLINED_FUNCTION_13(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v0[3] = v4;
  v5 = type metadata accessor for Proto_CoreMLModels_WordTagger.OneOf_Tags(0);
  v0[4] = v5;
  OUTLINED_FUNCTION_4();
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v0[5] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880330, &unk_25776B7D0);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  v0[6] = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  v0[7] = v11;
  v12 = type metadata accessor for Proto_CoreMLModels_WordTagger(0);
  OUTLINED_FUNCTION_19_17(v12);
  if (__swift_getEnumTagSinglePayload(v11, 1, v5) == 1)
  {
    v13 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_1_43();
    sub_25767EDC4(v11, v7, v14);
    OUTLINED_FUNCTION_0_55();
    sub_25767EDC4(v7, v4, v15);
    v13 = *v4;

    sub_25767EE20(v4);
  }

  *v0 = v13;
  return sub_25767F4FC;
}

void sub_25767F500(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 48);
  v5 = *(*a1 + 56);
  v6 = *(*a1 + 40);
  if (a2)
  {

    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_15_11();
  }

  else
  {
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_15_11();
  }

  free(v5);
  free(v4);
  free(v6);
  free(v3);

  free(v2);
}

uint64_t WordTaggerConfiguration.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0xE000000000000000;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0xE000000000000000;
  *(a1 + 88) = xmmword_257745740;
  v2 = *(type metadata accessor for Proto_CoreMLModels_WordTagger(0) + 44);
  v3 = type metadata accessor for Proto_CoreMLModels_WordTagger.OneOf_Tags(0);
  __swift_storeEnumTagSinglePayload(a1 + v2, 1, 1, v3);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t WordTaggerConfiguration.customMirror.getter()
{
  v2 = sub_257743A84();
  v43 = *(v2 - 8);
  v44 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v42 = v4 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_38();
  type metadata accessor for WordTaggerConfiguration(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  sub_25767F9C0(v0, v10 - v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2577503A0;
  *(v11 + 32) = 0x6E6F697369766572;
  *(v11 + 40) = 0xE800000000000000;
  v12 = MEMORY[0x277D83B88];
  *(v11 + 48) = *v0;
  *(v11 + 72) = v12;
  *(v11 + 80) = 0x65676175676E616CLL;
  v14 = v0[1];
  v13 = v0[2];
  *(v11 + 88) = 0xE800000000000000;
  *(v11 + 96) = v14;
  *(v11 + 104) = v13;
  OUTLINED_FUNCTION_13_15();
  *(v11 + 120) = v15;
  *(v11 + 128) = 0xD000000000000017;
  v16 = v0[3];
  v17 = v0[4];
  *(v11 + 136) = v18;
  *(v11 + 144) = v16;
  *(v11 + 152) = v17;
  OUTLINED_FUNCTION_13_15();
  *(v11 + 168) = v20;
  *(v11 + 176) = v19 | 8;
  v21 = v0[5];
  v22 = v0[6];
  *(v11 + 184) = v23;
  *(v11 + 192) = v21;
  *(v11 + 200) = v22;
  OUTLINED_FUNCTION_13_15();
  *(v11 + 216) = v25;
  *(v11 + 224) = v24 | 0xD;
  v26 = v0[7];
  v27 = v0[8];
  *(v11 + 232) = v28;
  *(v11 + 240) = v26;
  *(v11 + 248) = v27;
  OUTLINED_FUNCTION_13_15();
  *(v11 + 264) = v30;
  *(v11 + 272) = v29 + 11;
  v31 = v0[9];
  v32 = v0[10];
  *(v11 + 280) = v33;
  *(v11 + 288) = v31;
  *(v11 + 296) = v32;
  OUTLINED_FUNCTION_13_15();
  *(v11 + 312) = v34;
  *(v11 + 320) = v35;
  v36 = MEMORY[0x277CC9318];
  v38 = v0[11];
  v37 = v0[12];
  *(v11 + 328) = v39;
  *(v11 + 336) = v38;
  *(v11 + 344) = v37;
  *(v11 + 360) = v36;
  *(v11 + 368) = 1936154996;
  *(v11 + 376) = 0xE400000000000000;
  *(v11 + 408) = &type metadata for WordTaggerConfiguration.Tags;

  sub_257486740(v38, v37);
  WordTaggerConfiguration.tags.getter((v11 + 384));
  v40 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v40);
  (*(v43 + 104))(v42, *MEMORY[0x277D84C38], v44);
  return sub_257743AA4();
}

uint64_t type metadata accessor for WordTaggerConfiguration(uint64_t a1)
{
  result = qword_281537A30;
  if (!qword_281537A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25767F9C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WordTaggerConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void WordTaggerConfiguration.Tags.hash(into:)()
{
  MEMORY[0x259C651F0](0);

  sub_2576679DC();
}

uint64_t WordTaggerConfiguration.Tags.hashValue.getter()
{
  sub_257743A14();
  MEMORY[0x259C651F0](0);
  sub_2576679DC();
  return sub_257743A64();
}

uint64_t sub_25767FAE0(uint64_t a1)
{
  sub_257743A14();
  MEMORY[0x259C651F0](0);
  sub_2576679DC();
  return sub_257743A64();
}

unint64_t sub_25767FB38()
{
  result = qword_27F87BB30;
  if (!qword_27F87BB30)
  {
    type metadata accessor for Proto_CoreMLModels_WordTagger(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87BB30);
  }

  return result;
}

unint64_t sub_25767FB94()
{
  result = qword_27F880B48;
  if (!qword_27F880B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880B48);
  }

  return result;
}

uint64_t sub_25767FC10(uint64_t a1)
{
  result = type metadata accessor for Proto_CoreMLModels_WordTagger(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void OUTLINED_FUNCTION_7_25()
{

  JUMPOUT(0x259C64E90);
}

uint64_t OUTLINED_FUNCTION_14_11@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[2] = v3;
  v2[3] = result;
  *v2 = a2;
  v2[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_11()
{
  *v0 = v2;
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);

  return sub_25767EF98(v0, v4 + v3);
}

uint64_t OUTLINED_FUNCTION_18_20(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 8) = v2;

  return type metadata accessor for Proto_StringVector(0);
}

uint64_t OUTLINED_FUNCTION_19_17(uint64_t a1)
{
  v5 = *(a1 + 44);
  *(v2 + 64) = v5;

  return sub_25767ED54(v1 + v5, v3);
}

void OUTLINED_FUNCTION_20_12()
{
  *(v0 + 24) = v1;
  *(v0 + 32) = v2;

  JUMPOUT(0x259C64E90);
}

uint64_t OUTLINED_FUNCTION_21_15(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);

  return type metadata accessor for Proto_CoreMLModels_WordTagger(0);
}

uint64_t sub_25767FDD0()
{
  v2 = v0;
  OUTLINED_FUNCTION_25_11();
  v3 = type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
  OUTLINED_FUNCTION_4();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v54 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AE98, &qword_25776F620);
  OUTLINED_FUNCTION_13(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v13 = &v54 - v12;
  v14 = v0 + *(type metadata accessor for Proto_Imputer(0) + 20);
  v15 = *v14;
  v16 = *(v14 + 16);
  if (!*(v14 + 16))
  {
    v55 = *v14;
    goto LABEL_7;
  }

  if (v16 == 1)
  {
    v55 = *v14;
LABEL_7:
    v18 = sub_257743674();
    v19 = v20;
    goto LABEL_8;
  }

  if (v16 != 2)
  {
    v22 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  v17 = *(v14 + 8);
  v55 = 34;
  v56 = 0xE100000000000000;
  sub_25745D184(v15, v17, 2);
  MEMORY[0x259C64E90](v15, v17);
  MEMORY[0x259C64E90](34, 0xE100000000000000);
  sub_257467084(v15, v17, 2);
  v18 = v55;
  v19 = v56;
LABEL_8:
  sub_257469AE0();
  v22 = v21;
  v24 = *(v21 + 16);
  v23 = *(v21 + 24);
  v1 = v24 + 1;
  if (v24 >= v23 >> 1)
  {
    OUTLINED_FUNCTION_174(v23);
    OUTLINED_FUNCTION_19_18();
    sub_257469AE0();
    v22 = v53;
  }

  *(v22 + 16) = v1;
  OUTLINED_FUNCTION_25_11();
  *(v25 + 32) = v26;
  *(v25 + 40) = v1;
  *(v25 + 48) = v18;
  *(v25 + 56) = v19;
  *(v25 + 64) = 0;
LABEL_12:
  sub_257680590(v2, v13);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v3);
  if (EnumTagSinglePayload == 1)
  {
    v35 = 0;
    v36 = 0;
    v37 = 0;
  }

  else
  {
    sub_25768378C(v13, v9);
    OUTLINED_FUNCTION_1_44();
    v38 = OUTLINED_FUNCTION_368();
    sub_257681988(v38, v39);
    sub_257680758(v7, &v55);
    v35 = v55;
    v36 = v56;
    v37 = v57;
    EnumTagSinglePayload = sub_2574D7A2C(v9, type metadata accessor for Proto_Imputer.OneOf_ImputedValue);
  }

  v55 = v35;
  v56 = v36;
  v57 = v37;
  v40 = sub_2576811A4(EnumTagSinglePayload, v28, v29, v30, v31, v32, v33, v34);
  v42 = v41;
  v44 = v43;
  v45 = OUTLINED_FUNCTION_277();
  sub_257680E94(v45, v46, v37);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_19_18();
    sub_257469AE0();
    v22 = v51;
  }

  v48 = *(v22 + 16);
  v47 = *(v22 + 24);
  if (v48 >= v47 >> 1)
  {
    OUTLINED_FUNCTION_174(v47);
    OUTLINED_FUNCTION_19_18();
    sub_257469AE0();
    v22 = v52;
  }

  *(v22 + 16) = v48 + 1;
  v49 = v22 + 40 * v48;
  *(v49 + 32) = 0x2064657475706D49;
  *(v49 + 40) = v1;
  *(v49 + 48) = v40;
  *(v49 + 56) = v42;
  *(v49 + 64) = v44;
  return sub_2576AACFC(v22);
}

uint64_t ImputerConfiguration.missingValue.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for Proto_Imputer(0);
  v4 = 0;
  v5 = v1 + *(result + 20);
  v6 = *v5;
  v7 = *(v5 + 16);
  if (v7 >= 2)
  {
    if (v7 != 2)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = -1;
      return result;
    }

    v4 = *(v5 + 8);
    result = sub_257466F40(*v5, v4, 2);
  }

  *a1 = v6;
  *(a1 + 8) = v4;
  *(a1 + 16) = v7;
  return result;
}

double sub_257680198@<D0>(uint64_t a1@<X8>)
{
  ImputerConfiguration.missingValue.getter(&v4);
  v2 = v5;
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v2;
  return result;
}

uint64_t sub_2576801DC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v1;
  v5 = v2;
  sub_25745D184(v4[0], v1, v2);
  return ImputerConfiguration.missingValue.setter(v4);
}

uint64_t ImputerConfiguration.missingValue.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  if (!*(a1 + 16) || v3 == 1)
  {
    goto LABEL_6;
  }

  if (v3 != 2)
  {
    v2 = 0;
LABEL_6:
    v4 = 0;
    goto LABEL_7;
  }

  v4 = a1[1];
LABEL_7:
  v5 = v1 + *(type metadata accessor for Proto_Imputer(0) + 20);
  result = sub_257467084(*v5, *(v5 + 8), *(v5 + 16));
  *v5 = v2;
  *(v5 + 8) = v4;
  *(v5 + 16) = v3;
  return result;
}

void (*ImputerConfiguration.missingValue.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = type metadata accessor for Proto_Imputer(0);
  v5 = 0;
  v6 = *(v4 + 20);
  *(v3 + 5) = v6;
  v7 = (v1 + v6);
  v8 = *v7;
  v3[4] = *v7;
  v9 = v7[1];
  v3[5] = v9;
  v10 = *(v7 + 16);
  *(v3 + 17) = v10;
  if (v10 < 2)
  {
    goto LABEL_5;
  }

  if (v10 == 2)
  {
    v11 = OUTLINED_FUNCTION_263();
    sub_257466F40(v11, v12, 2);
    v5 = v9;
LABEL_5:
    *v3 = v8;
    v3[1] = v5;
    *(v3 + 16) = v10;
    return sub_257680360;
  }

  *v3 = 0;
  v3[1] = 0;
  *(v3 + 16) = -1;
  return sub_257680360;
}

void sub_257680360(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  if (a2)
  {
    v5 = *(v3 + 16);
    if (v5 >= 2)
    {
      if (v5 == 2)
      {
        v6 = v3[1];

LABEL_11:
        OUTLINED_FUNCTION_22_14();
        *v2 = v4;
        *(v2 + 8) = v6;
        *(v2 + 16) = v5;
        sub_257467084(*v3, v3[1], *(v3 + 16));
        goto LABEL_14;
      }

      v4 = 0;
    }

    v6 = 0;
    goto LABEL_11;
  }

  v7 = *(v3 + 16);
  if (v7 < 2)
  {
    goto LABEL_12;
  }

  if (v7 != 2)
  {
    v4 = 0;
LABEL_12:
    v8 = 0;
    goto LABEL_13;
  }

  v8 = v3[1];
LABEL_13:
  OUTLINED_FUNCTION_22_14();
  *v2 = v4;
  *(v2 + 8) = v8;
  *(v2 + 16) = v7;
LABEL_14:

  free(v3);
}

uint64_t ImputerConfiguration.imputedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
  OUTLINED_FUNCTION_4();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AE98, &qword_25776F620);
  OUTLINED_FUNCTION_13(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = &v20 - v13;
  sub_257680590(v2, &v20 - v13);
  result = __swift_getEnumTagSinglePayload(v14, 1, v4);
  if (result == 1)
  {
    v16 = 0;
    v17 = 0uLL;
  }

  else
  {
    sub_25768378C(v14, v10);
    OUTLINED_FUNCTION_1_44();
    v18 = OUTLINED_FUNCTION_173();
    sub_257681988(v18, v19);
    sub_257680758(v8, &v21);
    v20 = v21;
    v16 = v22;
    result = sub_2574D7A2C(v10, type metadata accessor for Proto_Imputer.OneOf_ImputedValue);
    v17 = v20;
  }

  *a1 = v17;
  *(a1 + 16) = v16;
  return result;
}

uint64_t sub_257680590(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AE98, &qword_25776F620);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_257680600@<D0>(uint64_t a1@<X8>)
{
  ImputerConfiguration.imputedValue.getter(&v4);
  v2 = v5;
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v2;
  return result;
}

uint64_t sub_257680644(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v1;
  v5 = v2;
  sub_257681F30(v4[0], v1, v2);
  return ImputerConfiguration.imputedValue.setter(v4);
}

uint64_t ImputerConfiguration.imputedValue.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AE98, &qword_25776F620);
  OUTLINED_FUNCTION_13(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v5 = v14 - v4;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v14[1] = *a1;
  v14[2] = v6;
  v15 = v7;
  sub_257680CEC((v14 - v4));
  v8 = OUTLINED_FUNCTION_277();
  sub_257680E94(v8, v9, v7);
  v10 = type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v10);
  v11 = OUTLINED_FUNCTION_292();
  return sub_257680ED4(v11, v12);
}

void sub_257680758(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Proto_Int64ToDoubleMap(0);
  v5 = OUTLINED_FUNCTION_13(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  v9 = type metadata accessor for Proto_StringToDoubleMap(0);
  v10 = OUTLINED_FUNCTION_13(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v13 = (v12 - v11);
  v14 = type metadata accessor for Proto_Int64Vector(0);
  v15 = OUTLINED_FUNCTION_13(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  v18 = v17 - v16;
  v19 = type metadata accessor for Proto_DoubleVector(0);
  v20 = OUTLINED_FUNCTION_13(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3();
  v23 = (v22 - v21);
  type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3();
  v27 = (v26 - v25);
  OUTLINED_FUNCTION_1_44();
  sub_257681988(a1, v27);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_56();
      v28 = 0;
      v30 = *v27;
      v29 = 1;
      goto LABEL_37;
    case 2u:
      OUTLINED_FUNCTION_0_56();
      v30 = *v27;
      v28 = v27[1];
      v29 = 2;
      goto LABEL_37;
    case 3u:
      OUTLINED_FUNCTION_0_56();
      sub_25768378C(v27, v23);
      v30 = *v23;

      sub_2574D7A2C(v23, type metadata accessor for Proto_DoubleVector);
      v28 = 0;
      v29 = 3;
      goto LABEL_37;
    case 4u:
      sub_25768378C(v27, v18);
      v31 = *v18;
      v32 = *(*v18 + 16);
      if (v32)
      {
        v69 = MEMORY[0x277D84F90];
        sub_257483724(0, v32, 0);
        v30 = v69;
        v33 = (v31 + 32);
        v34 = *(v69 + 16);
        do
        {
          v36 = *v33++;
          v35 = v36;
          v37 = *(v69 + 24);
          if (v34 >= v37 >> 1)
          {
            v38 = OUTLINED_FUNCTION_174(v37);
            sub_257483724(v38, v34 + 1, 1);
          }

          *(v69 + 16) = v34 + 1;
          *(v69 + 8 * v34++ + 32) = v35;
          --v32;
        }

        while (v32);
        OUTLINED_FUNCTION_0_56();
        OUTLINED_FUNCTION_10_26();
      }

      else
      {
        OUTLINED_FUNCTION_0_56();
        OUTLINED_FUNCTION_10_26();
        v30 = MEMORY[0x277D84F90];
      }

      v28 = 0;
      v29 = 4;
      goto LABEL_37;
    case 5u:
      OUTLINED_FUNCTION_0_56();
      sub_25768378C(v27, v13);
      v30 = *v13;

      sub_2574D7A2C(v13, type metadata accessor for Proto_StringToDoubleMap);
      v28 = 0;
      v29 = 5;
      goto LABEL_37;
    case 6u:
      sub_25768378C(v27, v8);
      v39 = *v8;
      v40 = *(*v8 + 16);
      v41 = MEMORY[0x277D84F90];
      if (!v40)
      {
        goto LABEL_34;
      }

      v66 = v8;
      v67 = a2;
      v68 = *(*v8 + 16);
      v70 = MEMORY[0x277D84F90];
      sub_257484D60(0, v40, 0);
      v41 = v70;
      v43 = sub_25774107C();
      v45 = v44;
      v46 = v68;
      v47 = 0;
      v48 = v39 + 64;
      v49 = 1;
      v50 = -2;
      if (v43 < 0)
      {
        goto LABEL_38;
      }

      break;
    default:
      OUTLINED_FUNCTION_0_56();
      v28 = 0;
      v29 = 0;
      v30 = *v27;
      goto LABEL_37;
  }

  while (1)
  {
    if (v43 >= v49 << *(v39 + 32))
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      return;
    }

    v51 = v43 >> 6;
    v52 = v49 << v43;
    if ((*(v48 + 8 * (v43 >> 6)) & (v49 << v43)) == 0)
    {
      goto LABEL_39;
    }

    if (*(v39 + 36) != v45)
    {
      goto LABEL_40;
    }

    v53 = *(*(v39 + 48) + 8 * v43);
    v54 = *(*(v39 + 56) + 8 * v43);
    v56 = *(v70 + 16);
    v55 = *(v70 + 24);
    if (v56 >= v55 >> 1)
    {
      sub_257484D60(v55 > 1, v56 + 1, 1);
      OUTLINED_FUNCTION_16_11();
    }

    *(v70 + 16) = v56 + 1;
    v57 = v70 + 16 * v56;
    *(v57 + 32) = v53;
    *(v57 + 40) = v54;
    v58 = v49 << *(v39 + 32);
    if (v43 >= v58)
    {
      goto LABEL_41;
    }

    v59 = *(v48 + 8 * v51);
    if ((v59 & v52) == 0)
    {
      goto LABEL_42;
    }

    if (*(v39 + 36) != v45)
    {
      goto LABEL_43;
    }

    v60 = v59 & (v50 << (v43 & 0x3F));
    if (v60)
    {
      v58 = __clz(__rbit64(v60)) | v43 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v61 = v51 << 6;
      v62 = v51 + 1;
      v63 = (v39 + 72 + 8 * v51);
      while (v62 < (v58 + 63) >> 6)
      {
        v65 = *v63++;
        v64 = v65;
        v61 += 64;
        ++v62;
        if (v65)
        {
          sub_257653FC0(v43, v45, v42 & 1);
          OUTLINED_FUNCTION_16_11();
          v58 = __clz(__rbit64(v64)) + v61;
          goto LABEL_30;
        }
      }

      sub_257653FC0(v43, v45, v42 & 1);
      OUTLINED_FUNCTION_16_11();
    }

LABEL_30:
    if (++v47 == v46)
    {
      break;
    }

    v42 = 0;
    v45 = *(v39 + 36);
    v43 = v58;
    if (v58 < 0)
    {
      goto LABEL_38;
    }
  }

  a2 = v67;
  v8 = v66;
LABEL_34:
  v30 = sub_25772E834(v41);
  OUTLINED_FUNCTION_0_56();
  sub_2574D7A2C(v8, type metadata accessor for Proto_Int64ToDoubleMap);
  v28 = 0;
  v29 = 6;
LABEL_37:
  *a2 = v30;
  *(a2 + 8) = v28;
  *(a2 + 16) = v29;
}

uint64_t sub_257680CEC@<X0>(uint64_t *a2@<X8>)
{
  v4 = *v2;
  v3 = *(v2 + 8);
  switch(*(v2 + 16))
  {
    case 2:
      *a2 = v4;
      a2[1] = v3;
      type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
      OUTLINED_FUNCTION_18_1();
      swift_storeEnumTagMultiPayload();

    case 3:
      type metadata accessor for Proto_DoubleVector(0);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      OUTLINED_FUNCTION_29_11();
      OUTLINED_FUNCTION_18_1();
      swift_storeEnumTagMultiPayload();

      return sub_257681F30(v4, v3, 3);
    case 4:

      sub_25764CFE8(v6);
      type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
      OUTLINED_FUNCTION_18_1();
      goto LABEL_12;
    case 5:

      sub_2577435D4();
      v8 = OUTLINED_FUNCTION_30();
      type metadata accessor for Proto_StringToDoubleMap(v8);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();

      OUTLINED_FUNCTION_29_11();
      OUTLINED_FUNCTION_18_1();
      goto LABEL_12;
    case 6:

      sub_25772E588(v9, a2);
      type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
      OUTLINED_FUNCTION_18_1();
      goto LABEL_12;
    default:
      OUTLINED_FUNCTION_29_11();
      OUTLINED_FUNCTION_18_1();
LABEL_12:

      return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_257680E94(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_257680ED4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AE98, &qword_25776F620);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void (*ImputerConfiguration.imputedValue.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v4;
  v4[3] = v2;
  v5 = type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
  v4[4] = v5;
  OUTLINED_FUNCTION_4();
  v7 = *(v6 + 64);
  v8 = __swift_coroFrameAllocStub(v7);
  v4[5] = v8;
  v9 = __swift_coroFrameAllocStub(v7);
  v4[6] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AE98, &qword_25776F620);
  OUTLINED_FUNCTION_13(v10);
  v12 = *(v11 + 64);
  v4[7] = __swift_coroFrameAllocStub(v12);
  v13 = __swift_coroFrameAllocStub(v12);
  v4[8] = v13;
  sub_257680590(v2, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v5) == 1)
  {
    v14 = 0;
    v15 = 0uLL;
  }

  else
  {
    sub_25768378C(v13, v9);
    OUTLINED_FUNCTION_1_44();
    sub_257681988(v9, v8);
    sub_257680758(v8, &v20);
    v19 = v20;
    v14 = v21;
    v16 = OUTLINED_FUNCTION_277();
    sub_2574D7A2C(v16, v17);
    v15 = v19;
  }

  *v4 = v15;
  *(v4 + 16) = v14;
  return sub_2576810DC;
}

void sub_2576810DC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = *(*a1 + 16);
  v6 = (*a1)[7];
  v7 = (*a1)[8];
  v8 = (*a1)[6];
  v9 = (*a1)[5];
  if (a2)
  {
    OUTLINED_FUNCTION_28_14(a1);
    OUTLINED_FUNCTION_24_13();
    sub_257680E94(*v2, v2[1], *(v2 + 16));
  }

  else
  {
    OUTLINED_FUNCTION_28_14(a1);
    sub_257680E94(v3, v4, v5);
    OUTLINED_FUNCTION_24_13();
  }

  free(v7);
  free(v6);
  free(v8);
  free(v9);

  free(v2);
}

uint64_t sub_2576811A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *v8;
  switch(*(v8 + 16))
  {
    case 1:
      v66 = *v8;
      goto LABEL_17;
    case 2:
      v20 = *(v8 + 8);
      v67 = 0xE100000000000000;
      MEMORY[0x259C64E90](v10, v20);
      MEMORY[0x259C64E90](34, 0xE100000000000000);
      return 34;
    case 3:
      v21 = *(v10 + 16);
      v12 = MEMORY[0x277D84F90];
      if (v21)
      {
        v66 = MEMORY[0x277D84F90];
        v22 = OUTLINED_FUNCTION_5_31();
        sub_257484040(v22, v23, v24);
        v12 = v66;
        v25 = (v10 + 32);
        do
        {
          v68 = *v25;
          sub_257743674();
          OUTLINED_FUNCTION_15_12();
          if (v19)
          {
            sub_257484040((v26 > 1), v9, 1);
            v12 = v66;
          }

          OUTLINED_FUNCTION_30_8();
          ++v25;
          --v21;
        }

        while (v21);
      }

      return v12;
    case 4:
      v11 = *(v10 + 16);
      v12 = MEMORY[0x277D84F90];
      if (v11)
      {
        v66 = MEMORY[0x277D84F90];
        v13 = OUTLINED_FUNCTION_5_31();
        sub_257484040(v13, v14, v15);
        v12 = v66;
        v16 = (v10 + 32);
        do
        {
          v17 = *v16++;
          v68 = v17;
          sub_257743674();
          OUTLINED_FUNCTION_15_12();
          if (v19)
          {
            sub_257484040((v18 > 1), v9, 1);
            v12 = v66;
          }

          OUTLINED_FUNCTION_30_8();
          --v11;
        }

        while (v11);
      }

      return v12;
    case 5:
      sub_2576A8B24(*v8, a2, a3, a4, a5, a6, a7, a8, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81);
      v66 = v27;
      sub_25768223C(&v66);
      v28 = v66;
      v29 = *(v66 + 16);
      if (v29)
      {
        v66 = MEMORY[0x277D84F90];
        v30 = OUTLINED_FUNCTION_5_31();
        sub_257484060(v30, v31, v32);
        v33 = v66;
        v34 = (v28 + 48);
        do
        {
          v35 = *(v34 - 2);
          v36 = *(v34 - 1);
          v68 = *v34;

          v37 = sub_257743674();
          v39 = v38;
          v66 = v33;
          v41 = *(v33 + 16);
          v40 = *(v33 + 24);
          if (v41 >= v40 >> 1)
          {
            sub_257484060(v40 > 1, v41 + 1, 1);
            v33 = v66;
          }

          *(v33 + 16) = v41 + 1;
          v42 = v33 + 40 * v41;
          *(v42 + 32) = v35;
          *(v42 + 40) = v36;
          *(v42 + 48) = v37;
          *(v42 + 56) = v39;
          *(v42 + 64) = 0;
          v34 += 3;
          --v29;
        }

        while (v29);
      }

      else
      {

        v33 = MEMORY[0x277D84F90];
      }

      v62 = v33;
      goto LABEL_34;
    case 6:
      sub_2576A8AF8(*v8, a2, a3, a4, a5, a6, a7, a8, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81);
      v66 = v43;
      sub_257682198(&v66);
      v44 = v66;
      v45 = *(v66 + 16);
      if (v45)
      {
        v66 = MEMORY[0x277D84F90];
        v46 = OUTLINED_FUNCTION_5_31();
        sub_257484060(v46, v47, v48);
        v49 = v66;
        v50 = (v44 + 40);
        do
        {
          v51 = *v50;
          v68 = *(v50 - 1);
          v52 = sub_257743974();
          v54 = v53;
          v68 = v51;
          v55 = sub_257743674();
          v57 = v56;
          v66 = v49;
          v59 = *(v49 + 16);
          v58 = *(v49 + 24);
          if (v59 >= v58 >> 1)
          {
            v61 = OUTLINED_FUNCTION_174(v58);
            sub_257484060(v61, v59 + 1, 1);
            v49 = v66;
          }

          *(v49 + 16) = v59 + 1;
          v60 = v49 + 40 * v59;
          *(v60 + 32) = v52;
          *(v60 + 40) = v54;
          *(v60 + 48) = v55;
          *(v60 + 56) = v57;
          *(v60 + 64) = 0;
          v50 += 2;
          --v45;
        }

        while (v45);
      }

      else
      {

        v49 = MEMORY[0x277D84F90];
      }

      v62 = v49;
LABEL_34:
      v12 = sub_2576AACFC(v62);
      break;
    default:
      v66 = *v8;
LABEL_17:
      v12 = sub_257743674();
      break;
  }

  return v12;
}

uint64_t ImputerConfiguration.init(missingValue:imputedValue:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AE98, &qword_25776F620);
  OUTLINED_FUNCTION_13(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = (v33 - v8);
  v10 = *a1;
  v11 = a1[1];
  v12 = *(a1 + 16);
  v13 = *a2;
  v14 = a2[1];
  v15 = *(a2 + 16);
  type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
  OUTLINED_FUNCTION_19_18();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  v20 = type metadata accessor for Proto_Imputer(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  if (v12 == 2)
  {
    v21 = v10;
  }

  else
  {
    v21 = 0;
  }

  if (v12 == 2)
  {
    v22 = v11;
  }

  else
  {
    v22 = 0;
  }

  if (v12 == 1)
  {
    v21 = v10;
    v22 = 0;
  }

  if (!v12)
  {
    v21 = v10;
    v22 = 0;
  }

  v23 = a3 + *(v20 + 20);
  *v23 = v21;
  *(v23 + 8) = v22;
  *(v23 + 16) = v12;
  v33[1] = v13;
  v33[2] = v14;
  v34 = v15;
  sub_257680CEC(v9);
  v24 = OUTLINED_FUNCTION_277();
  sub_257680E94(v24, v25, v15);
  OUTLINED_FUNCTION_19_18();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  v30 = OUTLINED_FUNCTION_292();
  return sub_257680ED4(v30, v31);
}

uint64_t ImputerConfiguration.customMirror.getter()
{
  v1 = sub_257743A84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v5 = v4 - v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  type metadata accessor for ImputerConfiguration(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  sub_257681988(v0, v12 - v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_257743FF0;
  strcpy((v13 + 32), "missingValue");
  *(v13 + 45) = 0;
  *(v13 + 46) = -5120;
  *(v13 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880B50, &qword_25776F628);
  ImputerConfiguration.missingValue.getter(v13 + 48);
  strcpy((v13 + 80), "imputedValue");
  *(v13 + 93) = 0;
  *(v13 + 94) = -5120;
  *(v13 + 120) = &type metadata for ImputerConfiguration.ImputedValue;
  ImputerConfiguration.imputedValue.getter(v13 + 96);
  v14 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v14);
  (*(v2 + 104))(v5, *MEMORY[0x277D84C38], v1);
  return sub_257743AA4();
}

uint64_t type metadata accessor for ImputerConfiguration(uint64_t a1)
{
  result = qword_281537CF8;
  if (!qword_281537CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257681988(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(a2, v2);
  return a2;
}

BOOL static ImputerConfiguration.MissingValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (v4 == 1)
    {
      if (v6 == 1)
      {
        v7 = OUTLINED_FUNCTION_368();
        sub_257467018(v7, v8, 1);
        v9 = OUTLINED_FUNCTION_188_1();
        sub_257467018(v9, v10, 1);
        return *&v2 == *&v5;
      }

      goto LABEL_15;
    }

    if (v6 == 2)
    {
      v16 = *a1;
      if (*&v2 != *&v5 || v3 != *(a2 + 8))
      {
        v18 = sub_257743994();
        v19 = OUTLINED_FUNCTION_188_1();
        sub_257466F40(v19, v20, 2);
        v21 = OUTLINED_FUNCTION_7_26();
        sub_257466F40(v21, v22, v23);
        v24 = OUTLINED_FUNCTION_7_26();
        sub_257467018(v24, v25, v26);
        v27 = OUTLINED_FUNCTION_188_1();
        sub_257467018(v27, v28, 2);
        return v18 & 1;
      }

      sub_257466F40(*&v16, v3, 2);
      v35 = OUTLINED_FUNCTION_7_26();
      sub_257466F40(v35, v36, v37);
      v38 = OUTLINED_FUNCTION_7_26();
      sub_257467018(v38, v39, v40);
      v41 = OUTLINED_FUNCTION_7_26();
      sub_257467018(v41, v42, v43);
      return 1;
    }

LABEL_15:
    v29 = OUTLINED_FUNCTION_188_1();
    sub_257466F40(v29, v30, v6);
    v31 = OUTLINED_FUNCTION_368();
    sub_257467018(v31, v32, v4);
    v33 = OUTLINED_FUNCTION_188_1();
    sub_257467018(v33, v34, v6);
    return 0;
  }

  if (*(a2 + 16))
  {
    goto LABEL_15;
  }

  v12 = OUTLINED_FUNCTION_368();
  sub_257467018(v12, v13, 0);
  v14 = OUTLINED_FUNCTION_188_1();
  sub_257467018(v14, v15, 0);
  return v2 == v5;
}

uint64_t ImputerConfiguration.MissingValue.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      MEMORY[0x259C651F0](1);
      return MEMORY[0x259C651F0](v1);
    }

    else
    {
      MEMORY[0x259C651F0](2);
      OUTLINED_FUNCTION_44_1();

      return sub_257743694();
    }
  }

  else
  {
    MEMORY[0x259C651F0](0);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    return MEMORY[0x259C65220](v3);
  }
}

uint64_t ImputerConfiguration.MissingValue.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_257743A14();
  if (v2)
  {
    if (v2 == 1)
    {
      MEMORY[0x259C651F0](1);
      MEMORY[0x259C651F0](v1);
    }

    else
    {
      MEMORY[0x259C651F0](2);
      sub_257743694();
    }
  }

  else
  {
    MEMORY[0x259C651F0](0);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x259C65220](v3);
  }

  return sub_257743A64();
}

BOOL static ImputerConfiguration.ImputedValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 16);
  switch(v4)
  {
    case 1:
      if (v6 != 1)
      {
        goto LABEL_22;
      }

      v37 = OUTLINED_FUNCTION_263();
      sub_257680E94(v37, v38, 1);
      v39 = OUTLINED_FUNCTION_44_1();
      sub_257680E94(v39, v40, 1);
      return v2 == *&v5;
    case 2:
      if (v6 != 2)
      {
        goto LABEL_21;
      }

      if (v2 != *&v5 || v3 != *(a2 + 8))
      {
        v12 = sub_257743994();
        v23 = OUTLINED_FUNCTION_44_1();
        v25 = OUTLINED_FUNCTION_4_30(v23, v24, 2);
        v27 = OUTLINED_FUNCTION_4_30(v25, v26, 2);
        sub_257680E94(v27, v28, 2);
        v19 = OUTLINED_FUNCTION_44_1();
        v21 = 2;
        goto LABEL_20;
      }

      v65 = OUTLINED_FUNCTION_4_30(v2, v3, 2);
      v67 = OUTLINED_FUNCTION_4_30(v65, v66, 2);
      sub_257680E94(v67, v68, 2);
      v69 = OUTLINED_FUNCTION_263();
      sub_257680E94(v69, v70, 2);
      return 1;
    case 3:
      if (v6 != 3)
      {
        goto LABEL_21;
      }

      v29 = OUTLINED_FUNCTION_173();
      v12 = sub_257479D04(v29, v30);
      v31 = OUTLINED_FUNCTION_44_1();
      v33 = OUTLINED_FUNCTION_4_30(v31, v32, 3);
      v35 = OUTLINED_FUNCTION_4_30(v33, v34, 3);
      sub_257680E94(v35, v36, 3);
      v19 = OUTLINED_FUNCTION_44_1();
      v21 = 3;
      goto LABEL_20;
    case 4:
      if (v6 != 4)
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_173();
      v12 = sub_257487374();
      v13 = OUTLINED_FUNCTION_44_1();
      v15 = OUTLINED_FUNCTION_4_30(v13, v14, 4);
      v17 = OUTLINED_FUNCTION_4_30(v15, v16, 4);
      sub_257680E94(v17, v18, 4);
      v19 = OUTLINED_FUNCTION_44_1();
      v21 = 4;
      goto LABEL_20;
    case 5:
      if (v6 != 5)
      {
        goto LABEL_21;
      }

      v41 = OUTLINED_FUNCTION_44_1();
      v43 = OUTLINED_FUNCTION_4_30(v41, v42, 5);
      sub_257681F30(v43, v44, 5);
      v45 = OUTLINED_FUNCTION_173();
      sub_257476CF4(v45, v46);
      v12 = v47;
      v48 = OUTLINED_FUNCTION_263();
      sub_257680E94(v48, v49, 5);
      v19 = OUTLINED_FUNCTION_44_1();
      v21 = 5;
      goto LABEL_20;
    case 6:
      if (v6 == 6)
      {
        v50 = OUTLINED_FUNCTION_173();
        sub_257477924(v50, v51);
        v12 = v52;
        v53 = OUTLINED_FUNCTION_44_1();
        v55 = OUTLINED_FUNCTION_4_30(v53, v54, 6);
        v57 = OUTLINED_FUNCTION_4_30(v55, v56, 6);
        sub_257680E94(v57, v58, 6);
        v19 = OUTLINED_FUNCTION_44_1();
        v21 = 6;
LABEL_20:
        sub_257680E94(v19, v20, v21);
        result = v12 & 1;
      }

      else
      {
LABEL_21:

LABEL_22:
        v59 = OUTLINED_FUNCTION_44_1();
        v61 = OUTLINED_FUNCTION_4_30(v59, v60, v6);
        sub_257680E94(v61, v62, v4);
        v63 = OUTLINED_FUNCTION_44_1();
        sub_257680E94(v63, v64, v6);
        result = 0;
      }

      break;
    default:
      if (*(a2 + 16))
      {
        goto LABEL_22;
      }

      v7 = OUTLINED_FUNCTION_263();
      sub_257680E94(v7, v8, 0);
      v9 = OUTLINED_FUNCTION_44_1();
      sub_257680E94(v9, v10, 0);
      result = *&v2 == v5;
      break;
  }

  return result;
}

uint64_t sub_257681F30(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:

      break;
    default:
      return result;
  }

  return result;
}

void ImputerConfiguration.ImputedValue.hash(into:)()
{
  v1 = *v0;
  switch(*(v0 + 16))
  {
    case 1:
      MEMORY[0x259C651F0](1);
      MEMORY[0x259C651F0](v1);
      break;
    case 2:
      MEMORY[0x259C651F0](2);
      OUTLINED_FUNCTION_292();

      sub_257743694();
      break;
    case 3:
      MEMORY[0x259C651F0](3);
      OUTLINED_FUNCTION_292();

      sub_257667984();
      break;
    case 4:
      MEMORY[0x259C651F0](4);
      v3 = OUTLINED_FUNCTION_292();

      sub_257668300(v3, v4);
      break;
    case 5:
      MEMORY[0x259C651F0](5);
      v5 = OUTLINED_FUNCTION_292();

      sub_25749B204(v5, v6);
      break;
    case 6:
      MEMORY[0x259C651F0](6);
      v7 = OUTLINED_FUNCTION_292();

      sub_25749B108(v7, v8);
      break;
    default:
      MEMORY[0x259C651F0](0);
      if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v2 = v1;
      }

      else
      {
        v2 = 0;
      }

      MEMORY[0x259C65220](v2);
      break;
  }
}

uint64_t ImputerConfiguration.ImputedValue.hashValue.getter()
{
  OUTLINED_FUNCTION_18_21();
  sub_257743A14();
  ImputerConfiguration.ImputedValue.hash(into:)();
  return sub_257743A64();
}

uint64_t sub_25768214C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  OUTLINED_FUNCTION_18_21();
  sub_257743A14();
  a4(v6);
  return sub_257743A64();
}

uint64_t sub_257682198(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2576FC214();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_2576822E0(v6, &qword_27F880B68, &unk_25776F930, sub_257682550, sub_2576823FC);
  *a1 = v2;
  return result;
}

uint64_t sub_25768223C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2576FC22C();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_2576822E0(v6, &qword_27F879FF8, &unk_257744930, sub_257682A38, sub_257682474);
  *a1 = v2;
  return result;
}

uint64_t sub_2576822E0(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *(a1 + 8);
  result = sub_257743964();
  if (result < v10)
  {
    if (v10 >= -1)
    {
      v12 = result;
      v13 = v10 / 2;
      if (v10 <= 1)
      {
        v14 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        v14 = sub_257743764();
        *(v14 + 16) = v13;
      }

      v15[0] = v14 + 32;
      v15[1] = v13;
      a4(v15, v16, a1, v12);
      *(v14 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v10 < 0)
  {
    goto LABEL_12;
  }

  if (v10)
  {
    return a5(0, v10, 1, a1);
  }

  return result;
}

uint64_t sub_2576823FC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 16 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 24);
        *(v9 + 16) = *v9;
        *v9 = v7;
        *(v9 + 8) = v10;
        v9 -= 16;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 16;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_257682474(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 24 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == v12[1])
        {
          break;
        }

        result = sub_257743994();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = v12[3];
        v10 = v12[4];
        v14 = v12[5];
        v15 = v12[2];
        *(v12 + 3) = *v12;
        v12[5] = v15;
        *v12 = result;
        v12[1] = v10;
        v12[2] = v14;
        v12 -= 3;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 24;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_257682550(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v87 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v82 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9);
        v11 = (*a3 + 16 * v7);
        v12 = 16 * v7;
        v15 = *v11;
        v14 = v11 + 4;
        v13 = v15;
        v16 = v7 + 2;
        v17 = v10;
        while (1)
        {
          v18 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v14;
          v14 += 2;
          v20 = (v10 < v13) ^ (v19 >= v17);
          ++v16;
          v17 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 16 * v6;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = (v24 + v12);
                v26 = v24 + v21;
                v27 = *v25;
                v28 = v25[1];
                *v25 = *(v26 - 16);
                *(v26 - 16) = v27;
                *(v26 - 8) = v28;
              }

              ++v23;
              v21 -= 16;
              v12 += 16;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v9 != v6)
          {
            v29 = *a3;
            v30 = *a3 + 16 * v9 - 16;
            v31 = v7 - v9;
            do
            {
              v32 = *(v29 + 16 * v9);
              v33 = v31;
              v34 = v30;
              do
              {
                if (v32 >= *v34)
                {
                  break;
                }

                if (!v29)
                {
                  goto LABEL_111;
                }

                v35 = *(v34 + 24);
                *(v34 + 16) = *v34;
                *v34 = v32;
                *(v34 + 8) = v35;
                v34 -= 16;
              }

              while (!__CFADD__(v33++, 1));
              ++v9;
              v30 += 16;
              --v31;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v84 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_257469A28();
        v8 = v80;
      }

      v37 = v8[2];
      v38 = v37 + 1;
      if (v37 >= v8[3] >> 1)
      {
        sub_257469A28();
        v8 = v81;
      }

      v8[2] = v38;
      v39 = v8 + 4;
      v40 = &v8[2 * v37 + 4];
      *v40 = v7;
      v40[1] = v9;
      v85 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v37)
      {
        while (1)
        {
          v41 = v38 - 1;
          v42 = &v39[2 * v38 - 2];
          v43 = &v8[2 * v38];
          if (v38 >= 4)
          {
            break;
          }

          if (v38 == 3)
          {
            v44 = v8[4];
            v45 = v8[5];
            v54 = __OFSUB__(v45, v44);
            v46 = v45 - v44;
            v47 = v54;
LABEL_56:
            if (v47)
            {
              goto LABEL_96;
            }

            v59 = *v43;
            v58 = v43[1];
            v60 = __OFSUB__(v58, v59);
            v61 = v58 - v59;
            v62 = v60;
            if (v60)
            {
              goto LABEL_99;
            }

            v63 = v42[1];
            v64 = v63 - *v42;
            if (__OFSUB__(v63, *v42))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v61, v64))
            {
              goto LABEL_104;
            }

            if (v61 + v64 >= v46)
            {
              if (v46 < v64)
              {
                v41 = v38 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v38 < 2)
          {
            goto LABEL_98;
          }

          v66 = *v43;
          v65 = v43[1];
          v54 = __OFSUB__(v65, v66);
          v61 = v65 - v66;
          v62 = v54;
LABEL_71:
          if (v62)
          {
            goto LABEL_101;
          }

          v68 = *v42;
          v67 = v42[1];
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_103;
          }

          if (v69 < v61)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v41 - 1 >= v38)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v73 = &v39[2 * v41 - 2];
          v74 = *v73;
          v75 = &v39[2 * v41];
          v76 = v75[1];
          sub_2576831F0((*a3 + 16 * *v73), (*a3 + 16 * *v75), (*a3 + 16 * v76), v85);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v76 < v74)
          {
            goto LABEL_91;
          }

          v77 = v8;
          v78 = v8[2];
          if (v41 > v78)
          {
            goto LABEL_92;
          }

          *v73 = v74;
          v73[1] = v76;
          if (v41 >= v78)
          {
            goto LABEL_93;
          }

          v38 = v78 - 1;
          memmove(&v39[2 * v41], v75 + 2, 16 * (v78 - 1 - v41));
          v77[2] = v78 - 1;
          v79 = v78 > 2;
          v8 = v77;
          v5 = 0;
          if (!v79)
          {
            goto LABEL_85;
          }
        }

        v48 = &v39[2 * v38];
        v49 = *(v48 - 8);
        v50 = *(v48 - 7);
        v54 = __OFSUB__(v50, v49);
        v51 = v50 - v49;
        if (v54)
        {
          goto LABEL_94;
        }

        v53 = *(v48 - 6);
        v52 = *(v48 - 5);
        v54 = __OFSUB__(v52, v53);
        v46 = v52 - v53;
        v47 = v54;
        if (v54)
        {
          goto LABEL_95;
        }

        v55 = v43[1];
        v56 = v55 - *v43;
        if (__OFSUB__(v55, *v43))
        {
          goto LABEL_97;
        }

        v54 = __OFADD__(v46, v56);
        v57 = v46 + v56;
        if (v54)
        {
          goto LABEL_100;
        }

        if (v57 >= v51)
        {
          v71 = *v42;
          v70 = v42[1];
          v54 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v54)
          {
            goto LABEL_105;
          }

          if (v46 < v72)
          {
            v41 = v38 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v84;
      a4 = v82;
      if (v84 >= v6)
      {
        v87 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_257682F8C(&v87, *result, a3);
LABEL_89:
}

void sub_257682A38(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v97 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v10 = *a3;
        v11 = (*a3 + 24 * v7);
        v12 = *v11;
        v13 = v11[1];
        v14 = (*a3 + 24 * v9);
        if (v12 == *v14 && v13 == v14[1])
        {
          v16 = 0;
        }

        else
        {
          v16 = sub_257743994();
        }

        v7 = v9 + 2;
        v17 = v10 + 24 * v9;
        v18 = 24 * v9;
        v19 = (v17 + 56);
        while (v7 < v6)
        {
          if (*(v19 - 1) == *(v19 - 4) && *v19 == *(v19 - 3))
          {
            if (v16)
            {
              goto LABEL_21;
            }
          }

          else if ((v16 ^ sub_257743994()))
          {
            break;
          }

          ++v7;
          v19 += 3;
        }

        if ((v16 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v7 < v9)
        {
          goto LABEL_122;
        }

        if (v9 < v7)
        {
          v21 = 24 * v7 - 8;
          v22 = v7;
          v23 = v9;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v25 = (v24 + v18);
              v26 = (v24 + v21);
              v27 = *v25;
              v28 = v25[1];
              v29 = v25[2];
              v30 = *v26;
              *v25 = *(v26 - 1);
              v25[2] = v30;
              *(v26 - 2) = v27;
              *(v26 - 1) = v28;
              *v26 = v29;
            }

            ++v23;
            v21 -= 24;
            v18 += 24;
          }

          while (v23 < v22);
        }
      }

LABEL_28:
      v31 = a3[1];
      if (v7 < v31)
      {
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_121;
        }

        if (v7 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_123;
          }

          if (v9 + a4 >= v31)
          {
            v32 = a3[1];
          }

          else
          {
            v32 = v9 + a4;
          }

          if (v32 < v9)
          {
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
            return;
          }

          if (v7 != v32)
          {
            v33 = *a3;
            v34 = *a3 + 24 * v7 - 24;
            v94 = v9;
            v35 = v9 - v7;
            do
            {
              v36 = (v33 + 24 * v7);
              v37 = *v36;
              v38 = v36[1];
              v39 = v35;
              v40 = v34;
              do
              {
                v41 = v37 == *v40 && v38 == v40[1];
                if (v41 || (sub_257743994() & 1) == 0)
                {
                  break;
                }

                if (!v33)
                {
                  goto LABEL_125;
                }

                v37 = v40[3];
                v38 = v40[4];
                v42 = v40[5];
                v43 = v40[2];
                *(v40 + 3) = *v40;
                v40[5] = v43;
                *v40 = v37;
                v40[1] = v38;
                v40[2] = v42;
                v40 -= 3;
              }

              while (!__CFADD__(v39++, 1));
              ++v7;
              v34 += 24;
              --v35;
            }

            while (v7 != v32);
            v7 = v32;
            v9 = v94;
          }
        }
      }

      if (v7 < v9)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_257469A28();
        v8 = v89;
      }

      v45 = v8[2];
      v46 = v45 + 1;
      if (v45 >= v8[3] >> 1)
      {
        sub_257469A28();
        v8 = v90;
      }

      v8[2] = v46;
      v47 = v8 + 4;
      v48 = &v8[2 * v45 + 4];
      *v48 = v9;
      v48[1] = v7;
      v95 = *result;
      if (!*result)
      {
        goto LABEL_128;
      }

      if (v45)
      {
        v93 = v8 + 4;
        while (1)
        {
          v49 = v46 - 1;
          v50 = &v47[2 * v46 - 2];
          v51 = &v8[2 * v46];
          if (v46 >= 4)
          {
            break;
          }

          if (v46 == 3)
          {
            v52 = v8[4];
            v53 = v8[5];
            v62 = __OFSUB__(v53, v52);
            v54 = v53 - v52;
            v55 = v62;
LABEL_70:
            if (v55)
            {
              goto LABEL_110;
            }

            v67 = *v51;
            v66 = v51[1];
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_113;
            }

            v71 = v50[1];
            v72 = v71 - *v50;
            if (__OFSUB__(v71, *v50))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v69, v72))
            {
              goto LABEL_118;
            }

            if (v69 + v72 >= v54)
            {
              if (v54 < v72)
              {
                v49 = v46 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v46 < 2)
          {
            goto LABEL_112;
          }

          v74 = *v51;
          v73 = v51[1];
          v62 = __OFSUB__(v73, v74);
          v69 = v73 - v74;
          v70 = v62;
LABEL_85:
          if (v70)
          {
            goto LABEL_115;
          }

          v76 = *v50;
          v75 = v50[1];
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_117;
          }

          if (v77 < v69)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v49 - 1 >= v46)
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
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v81 = &v47[2 * v49 - 2];
          v82 = *v81;
          v83 = v49;
          v84 = &v47[2 * v49];
          v85 = v84[1];
          sub_257683374((*a3 + 24 * *v81), (*a3 + 24 * *v84), *a3 + 24 * v85, v95);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v85 < v82)
          {
            goto LABEL_105;
          }

          v86 = v8;
          v87 = v8[2];
          if (v83 > v87)
          {
            goto LABEL_106;
          }

          *v81 = v82;
          v81[1] = v85;
          if (v83 >= v87)
          {
            goto LABEL_107;
          }

          v46 = v87 - 1;
          memmove(v84, v84 + 2, 16 * (v87 - 1 - v83));
          v86[2] = v87 - 1;
          v88 = v87 > 2;
          v8 = v86;
          v5 = 0;
          v47 = v93;
          if (!v88)
          {
            goto LABEL_99;
          }
        }

        v56 = &v47[2 * v46];
        v57 = *(v56 - 8);
        v58 = *(v56 - 7);
        v62 = __OFSUB__(v58, v57);
        v59 = v58 - v57;
        if (v62)
        {
          goto LABEL_108;
        }

        v61 = *(v56 - 6);
        v60 = *(v56 - 5);
        v62 = __OFSUB__(v60, v61);
        v54 = v60 - v61;
        v55 = v62;
        if (v62)
        {
          goto LABEL_109;
        }

        v63 = v51[1];
        v64 = v63 - *v51;
        if (__OFSUB__(v63, *v51))
        {
          goto LABEL_111;
        }

        v62 = __OFADD__(v54, v64);
        v65 = v54 + v64;
        if (v62)
        {
          goto LABEL_114;
        }

        if (v65 >= v59)
        {
          v79 = *v50;
          v78 = v50[1];
          v62 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v62)
          {
            goto LABEL_119;
          }

          if (v54 < v80)
          {
            v49 = v46 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      if (v7 >= v6)
      {
        v97 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_129;
  }

  sub_2576830B8(&v97, *result, a3);
LABEL_103:
}

uint64_t sub_257682F8C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2576FB678();
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_2576831F0((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_2576830B8(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2576FB678();
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_257683374((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_2576831F0(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_257483384(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*v6 >= *v4)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v12;
    goto LABEL_13;
  }

  sub_257483384(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_15:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    if (*(v10 - 2) < *v14)
    {
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_28:
  v16 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v16])
  {
    memmove(v6, v4, 16 * v16);
  }

  return 1;
}

uint64_t sub_257683374(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_2574834A8(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_257743994() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 24;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 24;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 24;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_17;
  }

  sub_2574834A8(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_19:
  v15 = v6 - 24;
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    v17 = *(v10 - 3) == *(v6 - 3) && *(v10 - 2) == *(v6 - 2);
    if (!v17 && (sub_257743994() & 1) != 0)
    {
      v12 = v5 + 24 == v6;
      v6 -= 24;
      if (!v12)
      {
        v19 = *v15;
        *(v5 + 16) = *(v15 + 2);
        *v5 = v19;
        v6 = v15;
      }

      goto LABEL_19;
    }

    if (v10 != (v5 + 24))
    {
      v18 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v18;
    }

    v10 -= 24;
  }

LABEL_36:
  v20 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v20])
  {
    memmove(v6, v4, 24 * v20);
  }

  return 1;
}

unint64_t sub_257683540()
{
  result = qword_27F87AEB0;
  if (!qword_27F87AEB0)
  {
    type metadata accessor for Proto_Imputer(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87AEB0);
  }

  return result;
}

unint64_t sub_25768359C()
{
  result = qword_27F880B58;
  if (!qword_27F880B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880B58);
  }

  return result;
}

unint64_t sub_2576835F4()
{
  result = qword_27F880B60;
  if (!qword_27F880B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880B60);
  }

  return result;
}

uint64_t sub_257683670(uint64_t a1)
{
  result = type metadata accessor for Proto_Imputer(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2576836F8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 17))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 6)
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

uint64_t sub_257683738(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_25768378C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t OUTLINED_FUNCTION_0_56()
{

  return sub_2574D7A2C(v0, type metadata accessor for Proto_Imputer.OneOf_ImputedValue);
}

uint64_t OUTLINED_FUNCTION_10_26()
{

  return sub_2574D7A2C(v0, type metadata accessor for Proto_Int64Vector);
}

__n128 OUTLINED_FUNCTION_18_21()
{
  v2 = v0[1].n128_u8[0];
  result = *v0;
  *(v1 - 48) = *v0;
  *(v1 - 32) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_14()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 17);

  return sub_257467084(v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_24_13()
{
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v2);

  return sub_257680ED4(v0, v1);
}

uint64_t OUTLINED_FUNCTION_28_14(uint64_t a1)
{

  return sub_257680CEC(v1);
}

uint64_t OUTLINED_FUNCTION_29_11()
{
  *v0 = v1;

  return type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
}

void static NeuralNetwork.Layer.upsample(name:inputName:outputName:scalingFactor:interpolation:linearUpsamplingMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 *a21)
{
  OUTLINED_FUNCTION_31();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  OUTLINED_FUNCTION_8_23(v31, v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v33 - 8);
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_3();
  v37 = v36 - v35;
  v46 = *v26;
  v45 = *a21;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v39 = OUTLINED_FUNCTION_13_6(v38);
  *(v39 + 16) = xmmword_2577442B0;
  *(v39 + 32) = v24;
  *(v39 + 40) = v23;
  v40 = OUTLINED_FUNCTION_13_6(v38);
  *(v40 + 16) = xmmword_2577442B0;
  *(v40 + 32) = v30;
  *(v40 + 40) = v28;
  v41 = MEMORY[0x277D84F90];
  *v37 = MEMORY[0x277D84F90];
  *(v37 + 8) = v41;
  *(v37 + 16) = 0;
  *(v37 + 24) = 1;
  *(v37 + 32) = 0;
  *(v37 + 40) = 1;
  type metadata accessor for Proto_UpsampleLayerParams(0);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();

  NeuralNetwork.Layer.UpsampleParameters.scalingFactor.setter(v42);
  *(v37 + 16) = v46;
  *(v37 + 24) = 1;
  *(v37 + 32) = v45;
  *(v37 + 40) = 1;
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v43 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    OUTLINED_FUNCTION_3_22(&qword_27F879260);
  }

  *(v21 + v43) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v40);
  sub_2574897E0(v22);
  v44 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_11_11(v44);
  sub_257634BB4(v37);
  OUTLINED_FUNCTION_35();
}

{
  OUTLINED_FUNCTION_31();
  v26 = v25;
  v47 = v27;
  v29 = v28;
  v31 = v30;
  OUTLINED_FUNCTION_8_23(v32, v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v34 - 8);
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_3();
  v38 = v37 - v36;
  v46 = *v26;
  v45 = *a21;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v40 = OUTLINED_FUNCTION_13_6(v39);
  *(v40 + 16) = xmmword_2577442B0;
  *(v40 + 32) = v24;
  *(v40 + 40) = v23;
  v41 = OUTLINED_FUNCTION_13_6(v39);
  *(v41 + 16) = xmmword_2577442B0;
  *(v41 + 32) = v31;
  *(v41 + 40) = v29;
  v42 = MEMORY[0x277D84F90];
  *v38 = MEMORY[0x277D84F90];
  *(v38 + 8) = v42;
  *(v38 + 16) = 0;
  *(v38 + 24) = 1;
  *(v38 + 32) = 0;
  *(v38 + 40) = 1;
  type metadata accessor for Proto_UpsampleLayerParams(0);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *(v38 + 8) = v47;
  *(v38 + 16) = v46;
  *(v38 + 24) = 1;
  *(v38 + 32) = v45;
  *(v38 + 40) = 1;
  swift_storeEnumTagMultiPayload();

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v43 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    OUTLINED_FUNCTION_3_22(&qword_27F879260);
  }

  *(v21 + v43) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v41);
  sub_2574897E0(v22);
  v44 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_11_11(v44);
  sub_257634BB4(v38);
  OUTLINED_FUNCTION_35();
}

uint64_t static NeuralNetwork.Layer.Kind.upsample(scalingFactor:interpolation:linearUpsamplingMode:)()
{
  OUTLINED_FUNCTION_1_45();
  v2 = OUTLINED_FUNCTION_0_57(MEMORY[0x277D84F90]);
  OUTLINED_FUNCTION_14_12(v2);

  NeuralNetwork.Layer.UpsampleParameters.scalingFactor.setter(v3);
  *(v0 + 16) = v1;
  OUTLINED_FUNCTION_3_42();
  type metadata accessor for NeuralNetwork.Layer.Kind(0);

  return swift_storeEnumTagMultiPayload();
}

{
  OUTLINED_FUNCTION_1_45();
  v3 = OUTLINED_FUNCTION_0_57(MEMORY[0x277D84F90]);
  OUTLINED_FUNCTION_14_12(v3);
  *(v1 + 8) = v0;
  *(v1 + 16) = v2;
  OUTLINED_FUNCTION_3_42();
  type metadata accessor for NeuralNetwork.Layer.Kind(0);
  swift_storeEnumTagMultiPayload();
}

void NeuralNetwork.Layer.UpsampleParameters.init(scalingFactor:interpolation:linearUpsamplingMode:)()
{
  OUTLINED_FUNCTION_1_45();
  v3 = OUTLINED_FUNCTION_0_57(MEMORY[0x277D84F90]);
  OUTLINED_FUNCTION_14_12(v3);
  NeuralNetwork.Layer.UpsampleParameters.scalingFactor.setter(v0);
  *(v1 + 16) = v2;
  OUTLINED_FUNCTION_3_42();
}

{
  OUTLINED_FUNCTION_1_45();
  v3 = OUTLINED_FUNCTION_0_57(MEMORY[0x277D84F90]);
  OUTLINED_FUNCTION_14_12(v3);
  *(v1 + 8) = v0;
  *(v1 + 16) = v2;
  OUTLINED_FUNCTION_3_42();
}

void NeuralNetwork.Layer.UpsampleParameters.propertyDescriptions.getter()
{
  OUTLINED_FUNCTION_31();
  if (*(v0 + 24) == 1 && *(v0 + 16))
  {
    v1 = 0xE800000000000000;
    v2 = 0x7261656E696C6942;
  }

  else
  {
    v1 = 0x8000000257780DC0;
    v2 = 0xD000000000000010;
  }

  v3 = 0x746C7561666544;
  if (*(v0 + 40) == 1 && (v4 = *(v0 + 32)) != 0)
  {
    if (v4 == 1)
    {
      v5 = 0xEF7372656E726F43;
      v3 = 0x2064656E67696C41;
    }

    else
    {
      v5 = 0x8000000257780E00;
      v3 = 0xD000000000000011;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_257744E70;
  strcpy((v6 + 32), "Scaling Factor");
  *(v6 + 47) = -18;
  v7 = NeuralNetwork.Layer.UpsampleParameters.scalingFactor.getter();
  v8 = MEMORY[0x259C64F20](v7, MEMORY[0x277D83B88]);
  v10 = v9;

  *(v6 + 48) = v8;
  *(v6 + 56) = v10;
  *(v6 + 64) = 0xD000000000000019;
  *(v6 + 72) = 0x8000000257780DE0;
  *(v6 + 80) = MEMORY[0x259C64F20](*(v0 + 8), MEMORY[0x277D83A90]);
  *(v6 + 88) = v11;
  strcpy((v6 + 96), "Interpolation");
  *(v6 + 110) = -4864;
  *(v6 + 112) = v2;
  *(v6 + 120) = v1;
  *(v6 + 128) = 0x696C706D61737055;
  *(v6 + 136) = 0xEF65646F4D20676ELL;
  *(v6 + 144) = v3;
  *(v6 + 152) = v5;
  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetwork.Layer.UpsampleParameters.scalingFactor.getter()
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
    while (1)
    {
      v6 = *v4++;
      v5 = v6;
      if (v6 < 0)
      {
        break;
      }

      v10 = result;
      v8 = *(result + 16);
      v7 = *(result + 24);
      if (v8 >= v7 >> 1)
      {
        sub_257483724(v7 > 1, v8 + 1, 1);
        result = v10;
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

void NeuralNetwork.Layer.UpsampleParameters.scalingFactor.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v10 = MEMORY[0x277D84F90];
    sub_257484698(0, v4, 0);
    v5 = 32;
    v6 = v10;
    while (1)
    {
      v7 = *(a1 + v5);
      if (v7 < 0)
      {
        break;
      }

      v9 = *(v10 + 16);
      v8 = *(v10 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_257484698(v8 > 1, v9 + 1, 1);
      }

      *(v10 + 16) = v9 + 1;
      *(v10 + 8 * v9 + 32) = v7;
      v5 += 8;
      if (!--v4)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
LABEL_9:

    *v2 = v6;
  }
}

void (*NeuralNetwork.Layer.UpsampleParameters.scalingFactor.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = NeuralNetwork.Layer.UpsampleParameters.scalingFactor.getter();
  return sub_2576843B4;
}

void sub_2576843B4(uint64_t *a1, char a2)
{
  if (a2)
  {

    NeuralNetwork.Layer.UpsampleParameters.scalingFactor.setter(v2);
  }

  else
  {
    NeuralNetwork.Layer.UpsampleParameters.scalingFactor.setter(*a1);
  }
}

uint64_t NeuralNetwork.Layer.UpsampleParameters.fractionalScalingFactor.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t (*NeuralNetwork.Layer.UpsampleParameters.fractionalScalingFactor.modify(void *a1))(void *a1, char a2)
{
  v3 = *(v1 + 8);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return sub_25763F698;
}

unsigned __int8 *NeuralNetwork.Layer.UpsampleParameters.interpolation.setter(unsigned __int8 *result)
{
  *(v1 + 16) = *result;
  *(v1 + 24) = 1;
  return result;
}

uint64_t *(*NeuralNetwork.Layer.UpsampleParameters.interpolation.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = *(v1 + 24) == 1 && *(v1 + 16) != 0;
  *(a1 + 8) = v2;
  return sub_257498D04;
}

unsigned __int8 *NeuralNetwork.Layer.UpsampleParameters.linearUpsamplingMode.setter(unsigned __int8 *result)
{
  *(v1 + 32) = *result;
  *(v1 + 40) = 1;
  return result;
}

uint64_t *(*NeuralNetwork.Layer.UpsampleParameters.linearUpsamplingMode.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  if (*(v1 + 40) == 1)
  {
    v2 = *(v1 + 32);
  }

  else
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  return sub_25768464C;
}

uint64_t *sub_25768464C(uint64_t *result)
{
  v1 = *result;
  *(v1 + 32) = *(result + 8);
  *(v1 + 40) = 1;
  return result;
}

uint64_t NeuralNetwork.Layer.UpsampleParameters.hash(into:)(uint64_t a1)
{
  type metadata accessor for Proto_UpsampleLayerParams(0);
  OUTLINED_FUNCTION_2_41();
  sub_257684CA0(v1, v2, &unk_257766AB8);

  return sub_2577435F4();
}

uint64_t NeuralNetwork.Layer.UpsampleParameters.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_UpsampleLayerParams(0);
  OUTLINED_FUNCTION_2_41();
  sub_257684CA0(v0, v1, &unk_257766AB8);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_25768475C(uint64_t a1)
{
  sub_257743A14();
  type metadata accessor for Proto_UpsampleLayerParams(0);
  sub_257684CA0(&qword_27F87E0B8, type metadata accessor for Proto_UpsampleLayerParams, &unk_257766AB8);
  sub_2577435F4();
  return sub_257743A64();
}

void NeuralNetwork.Layer.UpsampleParameters.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  v20[1] = v1;
  v2 = sub_257743A84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v20 - v8;
  type metadata accessor for NeuralNetwork.Layer.UpsampleParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  sub_257684BAC(v0, v12 - v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_257744E70;
  strcpy((v13 + 32), "scalingFactor");
  *(v13 + 46) = -4864;
  v14 = NeuralNetwork.Layer.UpsampleParameters.scalingFactor.getter();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879DF8, &qword_25776F230);
  *(v13 + 48) = v14;
  *(v13 + 72) = v15;
  *(v13 + 80) = 0xD000000000000017;
  *(v13 + 88) = 0x800000025777F1B0;
  v16 = *(v0 + 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D68, &qword_25776F940);
  *(v13 + 96) = v16;
  *(v13 + 120) = v17;
  strcpy((v13 + 128), "interpolation");
  *(v13 + 142) = -4864;
  *(v13 + 168) = &type metadata for NeuralNetwork.Layer.UpsampleParameters.Interpolation;
  v18 = *(v0 + 24) == 1 && *(v0 + 16) != 0;
  *(v13 + 144) = v18;
  *(v13 + 176) = 0xD000000000000014;
  *(v13 + 184) = 0x8000000257780E20;
  *(v13 + 216) = &type metadata for NeuralNetwork.Layer.UpsampleParameters.LinearUpsamplingMode;
  NeuralNetwork.Layer.UpsampleParameters.linearUpsamplingMode.getter((v13 + 192));
  v19 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v19);
  (*(v3 + 104))(v6, *MEMORY[0x277D84C38], v2);

  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t sub_257684AEC@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.Layer.UpsampleParameters.Interpolation.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t NeuralNetwork.Layer.UpsampleParameters.LinearUpsamplingMode.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_257684B38@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.Layer.UpsampleParameters.LinearUpsamplingMode.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for NeuralNetwork.Layer.UpsampleParameters(uint64_t a1)
{
  result = qword_27F880B88;
  if (!qword_27F880B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257684BAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NeuralNetwork.Layer.UpsampleParameters(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257684CA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_257684CEC()
{
  result = qword_27F880B78;
  if (!qword_27F880B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880B78);
  }

  return result;
}

unint64_t sub_257684D44()
{
  result = qword_27F880B80;
  if (!qword_27F880B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880B80);
  }

  return result;
}

uint64_t sub_257684DC0(uint64_t a1)
{
  result = type metadata accessor for Proto_UpsampleLayerParams(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s18UpsampleParametersV13InterpolationOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s18UpsampleParametersV20LinearUpsamplingModeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_0_57@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = a1;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;

  return type metadata accessor for Proto_UpsampleLayerParams(0);
}

void OUTLINED_FUNCTION_3_42()
{
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_14_12(uint64_t a1)
{

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_257685078()
{
  v1 = v0;
  v2 = type metadata accessor for Proto_DictVectorizer.OneOf_Map(0);
  OUTLINED_FUNCTION_4();
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A848, &unk_257748540);
  OUTLINED_FUNCTION_13(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2577442B0;
  *(inited + 32) = 1937335627;
  *(inited + 40) = 0xE400000000000000;
  sub_2576853B8(v1, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v2) == 1)
  {
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_257685EA4(v12, v8);
    OUTLINED_FUNCTION_1_46();
    v16 = OUTLINED_FUNCTION_205();
    sub_2576862CC(v16, v17);
    sub_2576855BC(v6, &v22);
    v15 = v22;
    v14 = v23;
    OUTLINED_FUNCTION_0_58();
    sub_2576866CC(v8, v18);
  }

  v22 = v15;
  v23 = v14;
  v19 = sub_2576603F8();

  *(inited + 48) = v19;
  *(inited + 56) = 0;
  *(inited + 64) = 1;
  return sub_2576A6964(inited);
}

uint64_t DictionaryVectorizerConfiguration.keys.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Proto_DictVectorizer.OneOf_Map(0);
  OUTLINED_FUNCTION_4();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A848, &unk_257748540);
  OUTLINED_FUNCTION_13(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - v13;
  sub_2576853B8(v2, &v19 - v13);
  result = __swift_getEnumTagSinglePayload(v14, 1, v4);
  if (result == 1)
  {
    v16 = 0;
    v17 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_257685EA4(v14, v10);
    OUTLINED_FUNCTION_1_46();
    sub_2576862CC(v10, v8);
    sub_2576855BC(v8, &v19);
    v17 = v19;
    v16 = v20;
    OUTLINED_FUNCTION_0_58();
    result = sub_2576866CC(v10, v18);
  }

  *a1 = v17;
  *(a1 + 8) = v16;
  return result;
}

uint64_t sub_2576853B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A848, &unk_257748540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257685428@<X0>(uint64_t a1@<X8>)
{
  result = DictionaryVectorizerConfiguration.keys.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_25768546C(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;

  return DictionaryVectorizerConfiguration.keys.setter(&v3);
}

uint64_t DictionaryVectorizerConfiguration.keys.setter(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A848, &unk_257748540);
  OUTLINED_FUNCTION_13(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v5 = (&v15 - v4);
  v6 = *a1;
  if (a1[1])
  {
    type metadata accessor for Proto_StringVector(0);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    *v5 = v6;
    v7 = type metadata accessor for Proto_DictVectorizer.OneOf_Map(0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {

    sub_25764CFE8(v8);
    v7 = type metadata accessor for Proto_DictVectorizer.OneOf_Map(0);
    swift_storeEnumTagMultiPayload();
  }

  type metadata accessor for Proto_DictVectorizer.OneOf_Map(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v7);
  v12 = OUTLINED_FUNCTION_205();
  return sub_257685824(v12, v13);
}

uint64_t sub_2576855BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Proto_StringVector(0);
  v5 = OUTLINED_FUNCTION_13(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = (v7 - v6);
  v9 = type metadata accessor for Proto_Int64Vector(0);
  v10 = OUTLINED_FUNCTION_13(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  type metadata accessor for Proto_DictVectorizer.OneOf_Map(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v17 = v16 - v15;
  OUTLINED_FUNCTION_1_46();
  sub_2576862CC(a1, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_257685EA4(v17, v13);
    v22 = *v13;
    v23 = *(*v13 + 16);
    if (v23)
    {
      v31 = MEMORY[0x277D84F90];
      sub_257483724(0, v23, 0);
      v20 = v31;
      v24 = (v22 + 32);
      v25 = *(v31 + 16);
      do
      {
        v27 = *v24++;
        v26 = v27;
        v28 = *(v31 + 24);
        if (v25 >= v28 >> 1)
        {
          sub_257483724(v28 > 1, v25 + 1, 1);
        }

        *(v31 + 16) = v25 + 1;
        *(v31 + 8 * v25++ + 32) = v26;
        --v23;
      }

      while (v23);
      OUTLINED_FUNCTION_0_58();
      sub_2576866CC(a1, v29);
      result = OUTLINED_FUNCTION_5_32();
    }

    else
    {
      OUTLINED_FUNCTION_0_58();
      sub_2576866CC(a1, v30);
      result = OUTLINED_FUNCTION_5_32();
      v20 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_58();
    sub_2576866CC(a1, v19);
    sub_257685EA4(v17, v8);
    v20 = *v8;

    result = sub_2576866CC(v8, type metadata accessor for Proto_StringVector);
  }

  *a2 = v20;
  *(a2 + 8) = EnumCaseMultiPayload != 1;
  return result;
}

uint64_t sub_257685824(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A848, &unk_257748540);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void (*DictionaryVectorizerConfiguration.keys.modify(void *a1))(void ***a1, char a2)
{
  v2 = v1;
  v4 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v4;
  v4[2] = v2;
  v5 = type metadata accessor for Proto_DictVectorizer.OneOf_Map(0);
  v4[3] = v5;
  OUTLINED_FUNCTION_4();
  v7 = *(v6 + 64);
  v8 = __swift_coroFrameAllocStub(v7);
  v4[4] = v8;
  v9 = __swift_coroFrameAllocStub(v7);
  v4[5] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A848, &unk_257748540);
  OUTLINED_FUNCTION_13(v10);
  v12 = *(v11 + 64);
  v4[6] = __swift_coroFrameAllocStub(v12);
  v4[7] = __swift_coroFrameAllocStub(v12);
  v13 = __swift_coroFrameAllocStub(v12);
  v4[8] = v13;
  sub_2576853B8(v2, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v5) == 1)
  {
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_257685EA4(v13, v9);
    OUTLINED_FUNCTION_1_46();
    sub_2576862CC(v9, v8);
    sub_2576855BC(v8, &v18);
    v15 = v18;
    v14 = v19;
    OUTLINED_FUNCTION_0_58();
    sub_2576866CC(v9, v16);
  }

  *v4 = v15;
  *(v4 + 8) = v14;
  return sub_257685A38;
}

void sub_257685A38(void ***a1, char a2)
{
  v5 = *a1;
  v6 = **a1;
  v7 = (*a1)[3];
  if (a2)
  {
    v8 = v5[6];
    if ((*a1)[1])
    {
      type metadata accessor for Proto_StringVector(0);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      *v8 = v6;
      OUTLINED_FUNCTION_176();
      swift_storeEnumTagMultiPayload();
    }

    else
    {

      sub_25764CFE8(v9);
      OUTLINED_FUNCTION_176();
      swift_storeEnumTagMultiPayload();
    }

    OUTLINED_FUNCTION_38_5();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    sub_257685824(v8, v4);
  }

  else
  {
    v8 = v5[7];
    if ((*a1)[1])
    {
      type metadata accessor for Proto_StringVector(0);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      *v8 = v6;
      OUTLINED_FUNCTION_176();
      swift_storeEnumTagMultiPayload();
    }

    else
    {

      sub_25764CFE8(v14);
      OUTLINED_FUNCTION_176();
      swift_storeEnumTagMultiPayload();
    }

    OUTLINED_FUNCTION_38_5();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    sub_257685824(v7, v4);
  }

  free(v6);
  free(v7);
  free(v8);
  free(v2);
  free(v3);

  free(v5);
}

uint64_t DictionaryVectorizerConfiguration.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Proto_DictVectorizer.OneOf_Map(0);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  type metadata accessor for Proto_DictVectorizer(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t DictionaryVectorizerConfiguration.init<A>(keys:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  return sub_257685CE8(a1, a2, a3, sub_2576BD5D0, 1, a4);
}

{
  return sub_257685CE8(a1, a2, a3, sub_2576BD6A0, 0, a4);
}

uint64_t sub_257685C3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A848, &unk_257748540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_257685CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, uint64_t, uint64_t)@<X4>, int a6@<W6>, uint64_t a7@<X8>)
{
  v26[3] = a6;
  v12 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  v17 = v16(0);
  OUTLINED_FUNCTION_13(v17);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  v20 = v26 - v19;
  v21 = type metadata accessor for Proto_DictVectorizer.OneOf_Map(0);
  __swift_storeEnumTagSinglePayload(a7, 1, 1, v21);
  type metadata accessor for Proto_DictVectorizer(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  (*(v12 + 16))(v15, a1, a2);
  a4(v15, a2, a3);
  (*(v12 + 8))(a1, a2);
  sub_257685C3C(a7);
  sub_257685EA4(v20, a7);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v22, v23, v24, v21);
}

uint64_t sub_257685EA4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return a2;
}

uint64_t DictionaryVectorizerConfiguration.hash(into:)(uint64_t a1)
{
  type metadata accessor for Proto_DictVectorizer(0);
  OUTLINED_FUNCTION_4_31();
  sub_25768657C(v1, v2, &unk_2577486C0);

  return sub_2577435F4();
}

uint64_t DictionaryVectorizerConfiguration.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_DictVectorizer(0);
  OUTLINED_FUNCTION_4_31();
  sub_25768657C(v0, v1, &unk_2577486C0);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_257685FF4(uint64_t a1)
{
  sub_257743A14();
  type metadata accessor for Proto_DictVectorizer(0);
  sub_25768657C(&qword_27F87A858, type metadata accessor for Proto_DictVectorizer, &unk_2577486C0);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t DictionaryVectorizerConfiguration.customMirror.getter()
{
  v1 = sub_257743A84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v5 = v4 - v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  type metadata accessor for DictionaryVectorizerConfiguration(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  sub_2576862CC(v0, v12 - v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2577442B0;
  *(v13 + 32) = 1937335659;
  *(v13 + 40) = 0xE400000000000000;
  *(v13 + 72) = &type metadata for DictionaryVectorizerConfiguration.Keys;
  DictionaryVectorizerConfiguration.keys.getter(v13 + 48);
  v14 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v14);
  (*(v2 + 104))(v5, *MEMORY[0x277D84C38], v1);
  return sub_257743AA4();
}

uint64_t type metadata accessor for DictionaryVectorizerConfiguration(uint64_t a1)
{
  result = qword_2815375F0;
  if (!qword_2815375F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2576862CC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return a2;
}

uint64_t static DictionaryVectorizerConfiguration.Keys.== infix(_:_:)(uint64_t a1, uint64_t a2)
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

void DictionaryVectorizerConfiguration.Keys.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 8))
  {
    MEMORY[0x259C651F0](1);

    sub_2576679DC();
  }

  else
  {
    MEMORY[0x259C651F0](0);

    sub_257668300(a1, v3);
  }
}

uint64_t DictionaryVectorizerConfiguration.Keys.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_257743A14();
  if (v2)
  {
    MEMORY[0x259C651F0](1);
    sub_2576679DC();
  }

  else
  {
    MEMORY[0x259C651F0](0);
    sub_257668300(v4, v1);
  }

  return sub_257743A64();
}

uint64_t sub_257686474(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_257743A14();
  if (v3)
  {
    MEMORY[0x259C651F0](1);
    sub_2576679DC();
  }

  else
  {
    MEMORY[0x259C651F0](0);
    sub_257668300(v5, v2);
  }

  return sub_257743A64();
}

uint64_t sub_25768657C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2576865C8()
{
  result = qword_27F880BA0;
  if (!qword_27F880BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880BA0);
  }

  return result;
}

uint64_t sub_257686644(uint64_t a1)
{
  result = type metadata accessor for Proto_DictVectorizer(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2576866CC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_5_32()
{

  return sub_2576866CC(v0, type metadata accessor for Proto_Int64Vector);
}

void sub_257686794()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v2 = type metadata accessor for Proto_OneHotEncoder.OneOf_CategoryType(0);
  OUTLINED_FUNCTION_4();
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v26[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FB98, &unk_257767D60);
  OUTLINED_FUNCTION_13(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v26[-v11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2577442C0;
  OUTLINED_FUNCTION_23_7();
  *(v14 + 32) = 0xD000000000000012;
  *(v14 + 40) = v15;
  sub_257686B90(v1, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v2) == 1)
  {
    v16 = 0;
    v17 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_5_33();
    sub_2576880E0(v12, v8);
    OUTLINED_FUNCTION_0_59();
    sub_257687BD0(v8, v6);
    sub_257686D98();
    v17 = v27;
    v16 = v28;
    sub_25761351C(v8, v2);
  }

  v27 = v17;
  v28 = v16;
  v18 = sub_25768759C();

  *(inited + 48) = v18;
  *(inited + 56) = 0;
  *(inited + 64) = 1;
  strcpy((inited + 72), "Sparse Output");
  *(inited + 86) = -4864;
  v19 = type metadata accessor for Proto_OneHotEncoder(0);
  v26[7] = *(v1 + *(v19 + 20));
  *(inited + 88) = sub_257743674();
  *(inited + 96) = v20;
  *(inited + 104) = 0;
  OUTLINED_FUNCTION_23_7();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = v21;
  v22 = v1 + *(v19 + 24);
  if (*(v22 + 8) == 1)
  {
    v23 = vdup_n_s32(*v22 == 0);
    v24.i64[0] = v23.u32[0];
    v24.i64[1] = v23.u32[1];
    v25 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v24, 0x3FuLL)), xmmword_25776FD60, xmmword_25776FD70);
  }

  else
  {
    v25 = xmmword_25776FD60;
  }

  *(inited + 128) = v25;
  *(inited + 144) = 0;
  sub_2576A6964(inited);
  OUTLINED_FUNCTION_35();
}

uint64_t OneHotEncoderConfiguration.orderedCategories.getter()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_16_1();
  v4 = type metadata accessor for Proto_OneHotEncoder.OneOf_CategoryType(v3);
  OUTLINED_FUNCTION_4();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FB98, &unk_257767D60);
  OUTLINED_FUNCTION_13(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - v13;
  sub_257686B90(v2, &v18 - v13);
  result = __swift_getEnumTagSinglePayload(v14, 1, v4);
  if (result == 1)
  {
    v16 = 0;
    v17 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_2576880E0(v14, v10);
    OUTLINED_FUNCTION_0_59();
    sub_257687BD0(v10, v8);
    sub_257686D98();
    v17 = v18;
    v16 = v19;
    result = sub_25761351C(v10, type metadata accessor for Proto_OneHotEncoder.OneOf_CategoryType);
  }

  *v0 = v17;
  *(v0 + 8) = v16;
  return result;
}

uint64_t sub_257686B90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FB98, &unk_257767D60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257686C00@<X0>(uint64_t a1@<X8>)
{
  result = OneHotEncoderConfiguration.orderedCategories.getter();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_257686C44(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;

  return OneHotEncoderConfiguration.orderedCategories.setter(&v3);
}

uint64_t OneHotEncoderConfiguration.orderedCategories.setter(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FB98, &unk_257767D60);
  OUTLINED_FUNCTION_13(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v6 = (&v14 - v5);
  v7 = *a1;
  if (a1[1])
  {

    sub_25764CFE8(v8);
    v9 = type metadata accessor for Proto_OneHotEncoder.OneOf_CategoryType(0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    type metadata accessor for Proto_StringVector(0);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    *v6 = v7;
    v9 = type metadata accessor for Proto_OneHotEncoder.OneOf_CategoryType(0);
    swift_storeEnumTagMultiPayload();
  }

  type metadata accessor for Proto_OneHotEncoder.OneOf_CategoryType(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
  return sub_257686FCC(v6, v1);
}

void sub_257686D98()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_16_1();
  v4 = type metadata accessor for Proto_Int64Vector(v3);
  v5 = OUTLINED_FUNCTION_13(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  v9 = type metadata accessor for Proto_StringVector(0);
  v10 = OUTLINED_FUNCTION_13(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v13 = (v12 - v11);
  type metadata accessor for Proto_OneHotEncoder.OneOf_CategoryType(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v17 = v16 - v15;
  OUTLINED_FUNCTION_0_59();
  sub_257687BD0(v2, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_2576880E0(v17, v8);
    v19 = *v8;
    v20 = *(*v8 + 16);
    if (!v20)
    {
      OUTLINED_FUNCTION_1_47();
      OUTLINED_FUNCTION_1_18();
      sub_25761351C(v8, v29);
      v21 = MEMORY[0x277D84F90];
      goto LABEL_10;
    }

    v30 = MEMORY[0x277D84F90];
    sub_257483724(0, v20, 0);
    v21 = v30;
    v22 = (v19 + 32);
    v23 = *(v30 + 16);
    do
    {
      v25 = *v22++;
      v24 = v25;
      v26 = *(v30 + 24);
      if (v23 >= v26 >> 1)
      {
        sub_257483724(v26 > 1, v23 + 1, 1);
      }

      *(v30 + 16) = v23 + 1;
      *(v30 + 8 * v23++ + 32) = v24;
      --v20;
    }

    while (v20);
    OUTLINED_FUNCTION_1_47();
    OUTLINED_FUNCTION_1_18();
    v28 = v8;
  }

  else
  {
    OUTLINED_FUNCTION_1_47();
    sub_2576880E0(v17, v13);
    v21 = *v13;

    v28 = v13;
    v27 = type metadata accessor for Proto_StringVector;
  }

  sub_25761351C(v28, v27);
LABEL_10:
  *v0 = v21;
  *(v0 + 8) = EnumCaseMultiPayload == 1;
  OUTLINED_FUNCTION_35();
}

uint64_t sub_257686FCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FB98, &unk_257767D60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void (*OneHotEncoderConfiguration.orderedCategories.modify(void *a1))(void ***a1, char a2)
{
  v2 = v1;
  v4 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v4;
  v4[2] = v2;
  v5 = type metadata accessor for Proto_OneHotEncoder.OneOf_CategoryType(0);
  v4[3] = v5;
  OUTLINED_FUNCTION_4();
  v7 = *(v6 + 64);
  v8 = __swift_coroFrameAllocStub(v7);
  v4[4] = v8;
  v9 = __swift_coroFrameAllocStub(v7);
  v4[5] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FB98, &unk_257767D60);
  OUTLINED_FUNCTION_13(v10);
  v12 = *(v11 + 64);
  v4[6] = __swift_coroFrameAllocStub(v12);
  v4[7] = __swift_coroFrameAllocStub(v12);
  v13 = __swift_coroFrameAllocStub(v12);
  v4[8] = v13;
  sub_257686B90(v2, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v5) == 1)
  {
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_5_33();
    sub_2576880E0(v13, v9);
    OUTLINED_FUNCTION_0_59();
    sub_257687BD0(v9, v8);
    sub_257686D98();
    v15 = v17;
    v14 = v18;
    sub_25761351C(v9, v2);
  }

  *v4 = v15;
  *(v4 + 8) = v14;
  return sub_2576871D4;
}

void sub_2576871D4(void ***a1, char a2)
{
  v5 = *a1;
  v6 = **a1;
  v7 = (*a1)[3];
  if (a2)
  {
    v8 = v5[6];
    if ((*a1)[1])
    {

      sub_25764CFE8(v9);
      OUTLINED_FUNCTION_176();
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      type metadata accessor for Proto_StringVector(0);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      *v8 = v6;
      OUTLINED_FUNCTION_176();
      swift_storeEnumTagMultiPayload();
    }

    OUTLINED_FUNCTION_38_5();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
    sub_257686FCC(v8, v4);
  }

  else
  {
    v8 = v5[7];
    if ((*a1)[1])
    {

      sub_25764CFE8(v10);
      OUTLINED_FUNCTION_176();
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      type metadata accessor for Proto_StringVector(0);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      *v8 = v6;
      OUTLINED_FUNCTION_176();
      swift_storeEnumTagMultiPayload();
    }

    OUTLINED_FUNCTION_38_5();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    sub_257686FCC(v7, v4);
  }

  free(v6);
  free(v7);
  free(v8);
  free(v2);
  free(v3);

  free(v5);
}

uint64_t OneHotEncoderConfiguration.sparseOutput.setter(char a1)
{
  result = type metadata accessor for Proto_OneHotEncoder(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*OneHotEncoderConfiguration.sparseOutput.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_OneHotEncoder(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3);
  return sub_2576873F0;
}

uint64_t OneHotEncoderConfiguration.unknownBehaviour.getter()
{
  v2 = OUTLINED_FUNCTION_16_1();
  result = type metadata accessor for Proto_OneHotEncoder(v2);
  v4 = v1 + *(result + 24);
  v5 = *(v4 + 8) == 1 && *v4 != 0;
  *v0 = v5;
  return result;
}

uint64_t sub_257687454@<X0>(_BYTE *a1@<X8>)
{
  result = OneHotEncoderConfiguration.unknownBehaviour.getter();
  *a1 = v3;
  return result;
}

uint64_t OneHotEncoderConfiguration.unknownBehaviour.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  result = type metadata accessor for Proto_OneHotEncoder(0);
  v4 = v1 + *(result + 24);
  *v4 = v2;
  *(v4 + 8) = 1;
  return result;
}

uint64_t (*OneHotEncoderConfiguration.unknownBehaviour.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_OneHotEncoder(0) + 24);
  *(a1 + 8) = v3;
  v4 = v1 + v3;
  v5 = *(v4 + 8) == 1 && *v4 != 0;
  *(a1 + 12) = v5;
  return sub_25768757C;
}

uint64_t sub_25768757C(uint64_t result)
{
  v1 = *result + *(result + 8);
  *v1 = *(result + 12);
  *(v1 + 8) = 1;
  return result;
}

uint64_t sub_25768759C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v0[8])
  {
    if (v2)
    {
      v18 = MEMORY[0x277D84F90];
      sub_257484040(0, v2, 0);
      v3 = v18;
      v4 = v1 + 32;
      do
      {
        v4 += 8;
        v5 = sub_257743674();
        v7 = v6;
        v9 = *(v18 + 16);
        v8 = *(v18 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_257484040((v8 > 1), v9 + 1, 1);
        }

        *(v18 + 16) = v9 + 1;
        v10 = v18 + 24 * v9;
        *(v10 + 32) = v5;
        *(v10 + 40) = v7;
        *(v10 + 48) = 0;
        --v2;
      }

      while (v2);
    }
  }

  else if (v2)
  {
    v19 = MEMORY[0x277D84F90];
    sub_257484040(0, v2, 0);
    v3 = v19;
    v11 = (v1 + 40);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;

      MEMORY[0x259C64E90](v12, v13);
      MEMORY[0x259C64E90](34, 0xE100000000000000);

      v15 = *(v19 + 16);
      v14 = *(v19 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_257484040((v14 > 1), v15 + 1, 1);
      }

      *(v19 + 16) = v15 + 1;
      v16 = v19 + 24 * v15;
      *(v16 + 32) = 34;
      *(v16 + 40) = 0xE100000000000000;
      *(v16 + 48) = 0;
      v11 += 2;
      --v2;
    }

    while (v2);
  }

  return v3;
}

void OneHotEncoderConfiguration.init(orderedCategories:sparseOutput:unknownBehavior:)()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FB98, &unk_257767D60);
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_75_0();
  v7 = type metadata accessor for Proto_OneHotEncoder.OneOf_CategoryType(0);
  v8 = OUTLINED_FUNCTION_18_22();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v7);
  v11 = type metadata accessor for Proto_OneHotEncoder(0);
  OUTLINED_FUNCTION_19_19(v11);
  type metadata accessor for Proto_StringVector(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v0 = v2;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v7);
  sub_257686FCC(v0, v4);
  OUTLINED_FUNCTION_8_24();
  OUTLINED_FUNCTION_35();
}

{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FB98, &unk_257767D60);
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_75_0();
  v7 = type metadata accessor for Proto_OneHotEncoder.OneOf_CategoryType(0);
  v8 = OUTLINED_FUNCTION_18_22();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v7);
  v11 = type metadata accessor for Proto_OneHotEncoder(0);
  OUTLINED_FUNCTION_19_19(v11);
  sub_25764CFE8(v2);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v7);
  sub_257686FCC(v0, v4);
  OUTLINED_FUNCTION_8_24();
  OUTLINED_FUNCTION_35();
}

void OneHotEncoderConfiguration.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_16_1();
  v2 = sub_257743A84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_75_0();
  type metadata accessor for OneHotEncoderConfiguration(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  sub_257687BD0(v0, v11 - v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2577442C0;
  OUTLINED_FUNCTION_23_7();
  v13[4] = 0xD000000000000011;
  v13[5] = v14;
  v13[9] = &type metadata for OneHotEncoderConfiguration.OrderedCategories;
  OneHotEncoderConfiguration.orderedCategories.getter();
  strcpy((v12 + 80), "sparseOutput");
  *(v12 + 93) = 0;
  *(v12 + 94) = -5120;
  *(v12 + 96) = *(v0 + *(type metadata accessor for Proto_OneHotEncoder(0) + 20));
  OUTLINED_FUNCTION_23_7();
  *(v12 + 120) = v15;
  *(v12 + 128) = 0xD000000000000010;
  *(v12 + 136) = v16;
  *(v12 + 168) = &type metadata for OneHotEncoderConfiguration.UnknownBehavior;
  OneHotEncoderConfiguration.unknownBehaviour.getter();
  v17 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v17);
  (*(v3 + 104))(v6, *MEMORY[0x277D84C38], v2);
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t type metadata accessor for OneHotEncoderConfiguration(uint64_t a1)
{
  result = qword_281537960;
  if (!qword_281537960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257687BD0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t static OneHotEncoderConfiguration.OrderedCategories.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v6)
    {
      return sub_257487374();
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

  return sub_257479C78(v4, v5);
}

void OneHotEncoderConfiguration.OrderedCategories.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 8))
  {
    MEMORY[0x259C651F0](1);

    sub_257668300(a1, v3);
  }

  else
  {
    MEMORY[0x259C651F0](0);

    sub_2576679DC();
  }
}

uint64_t OneHotEncoderConfiguration.OrderedCategories.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_257743A14();
  if (v2)
  {
    MEMORY[0x259C651F0](1);
    sub_257668300(v4, v1);
  }

  else
  {
    MEMORY[0x259C651F0](0);
    sub_2576679DC();
  }

  return sub_257743A64();
}

uint64_t sub_257687D7C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_257743A14();
  if (v3)
  {
    MEMORY[0x259C651F0](1);
    sub_257668300(v5, v2);
  }

  else
  {
    MEMORY[0x259C651F0](0);
    sub_2576679DC();
  }

  return sub_257743A64();
}

MLModelSpecification::OneHotEncoderConfiguration::UnknownBehavior_optional __swiftcall OneHotEncoderConfiguration.UnknownBehavior.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_257687E20@<X0>(uint64_t *a1@<X8>)
{
  result = OneHotEncoderConfiguration.UnknownBehavior.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_257687E4C()
{
  result = qword_27F87BB10;
  if (!qword_27F87BB10)
  {
    type metadata accessor for Proto_OneHotEncoder(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87BB10);
  }

  return result;
}

unint64_t sub_257687EA8()
{
  result = qword_27F880BA8;
  if (!qword_27F880BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880BA8);
  }

  return result;
}

unint64_t sub_257687F00()
{
  result = qword_27F880BB0;
  if (!qword_27F880BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880BB0);
  }

  return result;
}

uint64_t sub_257687F7C(uint64_t a1)
{
  result = type metadata accessor for Proto_OneHotEncoder(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OneHotEncoderConfiguration.UnknownBehavior(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2576880E0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_47()
{

  return sub_25761351C(v0, type metadata accessor for Proto_OneHotEncoder.OneOf_CategoryType);
}

void OUTLINED_FUNCTION_8_24()
{
  *(v0 + v5) = v1;
  v6 = v0 + *(v2 + 24);
  *v6 = v3;
  *(v6 + 8) = v4;
}

uint64_t OUTLINED_FUNCTION_19_19(uint64_t a1)
{

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2576881E4()
{
  v2 = v0;
  v3 = type metadata accessor for Proto_StringVector(0);
  v4 = OUTLINED_FUNCTION_13(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v5 = OUTLINED_FUNCTION_17_3();
  v6 = type metadata accessor for Proto_CoreMLModels_TextClassifier.OneOf_ClassLabels(v5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880098, &unk_25776A1C0);
  OUTLINED_FUNCTION_13(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = v28 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257744E70;
  *(inited + 32) = 0x6E6F697369766552;
  *(inited + 40) = 0xE800000000000000;
  v29 = *v0;
  *(inited + 48) = sub_257743674();
  *(inited + 56) = v16;
  *(inited + 64) = 0;
  *(inited + 72) = 0x65676175676E614CLL;
  *(inited + 80) = 0xE800000000000000;
  v17 = *(v0 + 1);
  v18 = *(v0 + 2);
  v29 = 34;
  v30 = 0xE100000000000000;
  MEMORY[0x259C64E90](v17, v18);
  MEMORY[0x259C64E90](34, 0xE100000000000000);
  v19 = v30;
  *(inited + 88) = v29;
  *(inited + 96) = v19;
  *(inited + 104) = 0;
  strcpy((inited + 112), "Class Labels");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  v20 = type metadata accessor for Proto_CoreMLModels_TextClassifier(0);
  sub_257688878(v0 + *(v20 + 28), v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v6) == 1)
  {
    v21 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_1_48();
    sub_2576888E8(v14, v10, v22);
    OUTLINED_FUNCTION_0_60();
    sub_2576888E8(v10, v1, v23);
    v21 = *v1;

    sub_25767EE20(v1);
  }

  v28[1] = v21;
  v24 = sub_257689088();

  *(inited + 128) = v24;
  *(inited + 136) = 0;
  *(inited + 144) = 1;
  *(inited + 152) = 0xD000000000000014;
  *(inited + 160) = 0x8000000257780DA0;
  v25 = *(v2 + 4);
  v29 = *(v2 + 3);
  v30 = v25;
  sub_257486740(v29, v25);
  *(inited + 168) = sub_257743674();
  *(inited + 176) = v26;
  *(inited + 184) = 0;
  return sub_2576A6964(inited);
}

uint64_t sub_2576884DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return TextClassifierConfiguration.language.setter(v1, v2);
}

uint64_t TextClassifierConfiguration.language.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t (*TextClassifierConfiguration.language.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_25764FF90;
}

uint64_t TextClassifierConfiguration.modelParameterData.getter()
{
  v0 = OUTLINED_FUNCTION_205();
  sub_257486740(v0, v1);
  return OUTLINED_FUNCTION_205();
}

uint64_t sub_2576885D0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_257486740(*a1, v2);
  return TextClassifierConfiguration.modelParameterData.setter(v1, v2);
}

uint64_t TextClassifierConfiguration.modelParameterData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_257486798(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t (*TextClassifierConfiguration.modelParameterData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v3;
  a1[1] = v4;
  sub_257486740(v3, v4);
  return sub_257688698;
}

uint64_t sub_257688698(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  if (a2)
  {
    sub_257486740(*a1, v2);
    sub_257486798(v5, v6);
    *(v3 + 24) = v4;
    *(v3 + 32) = v2;

    return sub_257486798(v4, v2);
  }

  else
  {
    result = sub_257486798(*(v3 + 24), *(v3 + 32));
    *(v3 + 24) = v4;
    *(v3 + 32) = v2;
  }

  return result;
}

uint64_t TextClassifierConfiguration.classLabels.getter@<X0>(void *a1@<X8>)
{
  v5 = type metadata accessor for Proto_StringVector(0);
  v6 = OUTLINED_FUNCTION_13(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v7 = OUTLINED_FUNCTION_17_3();
  v8 = type metadata accessor for Proto_CoreMLModels_TextClassifier.OneOf_ClassLabels(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880098, &unk_25776A1C0);
  OUTLINED_FUNCTION_13(v13);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_64();
  v16 = type metadata accessor for Proto_CoreMLModels_TextClassifier(v15);
  sub_257688878(v1 + *(v16 + 28), v3);
  result = __swift_getEnumTagSinglePayload(v3, 1, v8);
  if (result == 1)
  {
    v18 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_1_48();
    sub_2576888E8(v3, v12, v19);
    OUTLINED_FUNCTION_0_60();
    sub_2576888E8(v12, v2, v20);
    v18 = *v2;

    result = sub_25767EE20(v2);
  }

  *a1 = v18;
  return result;
}

uint64_t sub_257688878(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880098, &unk_25776A1C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2576888E8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_205();
  v5(v4);
  return a2;
}

uint64_t sub_257688944@<X0>(void *a1@<X8>)
{
  result = TextClassifierConfiguration.classLabels.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_257688980(uint64_t *a1)
{
  v2 = *a1;

  return TextClassifierConfiguration.classLabels.setter(&v2);
}

uint64_t TextClassifierConfiguration.classLabels.setter(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880098, &unk_25776A1C0);
  OUTLINED_FUNCTION_13(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v6 = (&v11 - v5);
  v7 = *a1;
  type metadata accessor for Proto_StringVector(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v6 = v7;
  v8 = type metadata accessor for Proto_CoreMLModels_TextClassifier.OneOf_ClassLabels(0);
  v9 = OUTLINED_FUNCTION_12_23(v8);
  return sub_257688A64(v6, v1 + *(v9 + 28));
}

uint64_t sub_257688A64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880098, &unk_25776A1C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t (*TextClassifierConfiguration.classLabels.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x48uLL);
  v2 = OUTLINED_FUNCTION_18_20(v1);
  v0[2] = v2;
  OUTLINED_FUNCTION_13(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v0[3] = v4;
  v5 = type metadata accessor for Proto_CoreMLModels_TextClassifier.OneOf_ClassLabels(0);
  v0[4] = v5;
  OUTLINED_FUNCTION_4();
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v0[5] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880098, &unk_25776A1C0);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  v0[6] = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  v0[7] = v11;
  v12 = type metadata accessor for Proto_CoreMLModels_TextClassifier(0);
  OUTLINED_FUNCTION_11_22(v12);
  if (__swift_getEnumTagSinglePayload(v11, 1, v5) == 1)
  {
    v13 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_1_48();
    sub_2576888E8(v11, v7, v14);
    OUTLINED_FUNCTION_0_60();
    sub_2576888E8(v7, v4, v15);
    v13 = *v4;

    sub_25767EE20(v4);
  }

  *v0 = v13;
  return sub_257688C3C;
}

uint64_t TextClassifierConfiguration.stringClassLabels.getter()
{
  v1 = type metadata accessor for Proto_StringVector(0);
  v2 = OUTLINED_FUNCTION_13(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v5 = (v4 - v3);
  v6 = type metadata accessor for Proto_CoreMLModels_TextClassifier.OneOf_ClassLabels(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880098, &unk_25776A1C0);
  OUTLINED_FUNCTION_13(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = &v20 - v13;
  v15 = type metadata accessor for Proto_CoreMLModels_TextClassifier(0);
  sub_257688878(v0 + *(v15 + 28), v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v6) == 1)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_1_48();
  sub_2576888E8(v14, v10, v17);
  OUTLINED_FUNCTION_0_60();
  sub_2576888E8(v10, v5, v18);
  v16 = *v5;

  sub_25767EE20(v5);
  return v16;
}

uint64_t TextClassifierConfiguration.stringClassLabels.setter(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880098, &unk_25776A1C0);
  OUTLINED_FUNCTION_13(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17_3();
  type metadata accessor for Proto_StringVector(v6);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v2 = a1;
  v7 = type metadata accessor for Proto_CoreMLModels_TextClassifier.OneOf_ClassLabels(0);
  v8 = OUTLINED_FUNCTION_12_23(v7);
  return sub_257688A64(v2, v1 + *(v8 + 28));
}

uint64_t (*TextClassifierConfiguration.stringClassLabels.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x48uLL);
  v2 = OUTLINED_FUNCTION_18_20(v1);
  v0[2] = v2;
  OUTLINED_FUNCTION_13(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v0[3] = v4;
  v5 = type metadata accessor for Proto_CoreMLModels_TextClassifier.OneOf_ClassLabels(0);
  v0[4] = v5;
  OUTLINED_FUNCTION_4();
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v0[5] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880098, &unk_25776A1C0);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  v0[6] = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  v0[7] = v11;
  v12 = type metadata accessor for Proto_CoreMLModels_TextClassifier(0);
  OUTLINED_FUNCTION_11_22(v12);
  if (__swift_getEnumTagSinglePayload(v11, 1, v5) == 1)
  {
    v13 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_1_48();
    sub_2576888E8(v11, v7, v14);
    OUTLINED_FUNCTION_0_60();
    sub_2576888E8(v7, v4, v15);
    v13 = *v4;

    sub_25767EE20(v4);
  }

  *v0 = v13;
  return sub_25768975C;
}

void sub_257688FCC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 48);
  v5 = *(*a1 + 56);
  v6 = *(*a1 + 40);
  if (a2)
  {

    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_7_27();
  }

  else
  {
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_7_27();
  }

  free(v5);
  free(v4);
  free(v6);
  free(v3);

  free(v2);
}

uint64_t sub_257689088()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v12 = MEMORY[0x277D84F90];
  result = sub_257484040(0, v2, 0);
  v5 = 0;
  v3 = v12;
  v6 = (v1 + 40);
  while (v5 < *(v1 + 16))
  {
    v8 = *(v6 - 1);
    v7 = *v6;
    v10 = *(v12 + 16);
    v9 = *(v12 + 24);

    if (v10 >= v9 >> 1)
    {
      result = sub_257484040((v9 > 1), v10 + 1, 1);
    }

    ++v5;
    *(v12 + 16) = v10 + 1;
    v11 = v12 + 24 * v10;
    *(v11 + 32) = v8;
    *(v11 + 40) = v7;
    *(v11 + 48) = 0;
    v6 += 2;
    if (v2 == v5)
    {
      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t TextClassifierConfiguration.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = xmmword_257745740;
  v2 = *(type metadata accessor for Proto_CoreMLModels_TextClassifier(0) + 28);
  v3 = type metadata accessor for Proto_CoreMLModels_TextClassifier.OneOf_ClassLabels(0);
  __swift_storeEnumTagSinglePayload(a1 + v2, 1, 1, v3);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t TextClassifierConfiguration.customMirror.getter()
{
  v2 = sub_257743A84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_64();
  type metadata accessor for TextClassifierConfiguration(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  sub_2576894E0(v0, v12 - v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_257744E70;
  *(v13 + 32) = 0x6E6F697369766572;
  *(v13 + 40) = 0xE800000000000000;
  v14 = MEMORY[0x277D83B88];
  *(v13 + 48) = *v0;
  *(v13 + 72) = v14;
  *(v13 + 80) = 0x65676175676E616CLL;
  v16 = v0[1];
  v15 = v0[2];
  v17 = MEMORY[0x277D837D0];
  *(v13 + 88) = 0xE800000000000000;
  *(v13 + 96) = v16;
  *(v13 + 104) = v15;
  *(v13 + 120) = v17;
  *(v13 + 128) = 0xD000000000000012;
  v18 = MEMORY[0x277CC9318];
  v19 = v0[3];
  v20 = v0[4];
  *(v13 + 136) = 0x800000025777AB50;
  *(v13 + 144) = v19;
  *(v13 + 152) = v20;
  *(v13 + 168) = v18;
  *(v13 + 176) = 0x62614C7373616C63;
  *(v13 + 184) = 0xEB00000000736C65;
  *(v13 + 216) = &type metadata for TextClassifierConfiguration.Labels;

  sub_257486740(v19, v20);
  TextClassifierConfiguration.classLabels.getter((v13 + 192));
  v21 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v21);
  (*(v3 + 104))(v6, *MEMORY[0x277D84C38], v2);
  return sub_257743AA4();
}

uint64_t type metadata accessor for TextClassifierConfiguration(uint64_t a1)
{
  result = qword_281537830;
  if (!qword_281537830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2576894E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextClassifierConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void TextClassifierConfiguration.Labels.hash(into:)()
{
  MEMORY[0x259C651F0](0);

  sub_2576679DC();
}

uint64_t TextClassifierConfiguration.Labels.hashValue.getter()
{
  sub_257743A14();
  MEMORY[0x259C651F0](0);
  sub_2576679DC();
  return sub_257743A64();
}

unint64_t sub_257689608()
{
  result = qword_27F87BB28;
  if (!qword_27F87BB28)
  {
    type metadata accessor for Proto_CoreMLModels_TextClassifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87BB28);
  }

  return result;
}

unint64_t sub_257689664()
{
  result = qword_27F880BB8;
  if (!qword_27F880BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880BB8);
  }

  return result;
}

uint64_t sub_2576896E0(uint64_t a1)
{
  result = type metadata accessor for Proto_CoreMLModels_TextClassifier(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_27()
{
  *v0 = v2;
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);

  return sub_257688A64(v0, v4 + v3);
}

uint64_t OUTLINED_FUNCTION_11_22(uint64_t a1)
{
  v5 = *(a1 + 28);
  *(v2 + 64) = v5;

  return sub_257688878(v1 + v5, v3);
}

uint64_t OUTLINED_FUNCTION_12_23(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);

  return type metadata accessor for Proto_CoreMLModels_TextClassifier(0);
}

void sub_257689828()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v2 = type metadata accessor for NeuralNetwork.Preprocessor.MeanImageConfiguration(0);
  v3 = OUTLINED_FUNCTION_13(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v136 = v5 - v4;
  v6 = OUTLINED_FUNCTION_153();
  v7 = type metadata accessor for NeuralNetwork.Preprocessor.ScalerConfiguration(v6);
  v8 = OUTLINED_FUNCTION_13(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v135 = v10 - v9;
  v11 = OUTLINED_FUNCTION_153();
  v144 = type metadata accessor for Proto_NeuralNetworkPreprocessing.OneOf_Preprocessor(v11);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11();
  v134 = v13 - v14;
  MEMORY[0x28223BE20](v15);
  v133 = &v125 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A048, &qword_257744980);
  OUTLINED_FUNCTION_13(v17);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  v143 = &v125 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A0E0, &qword_257773BE0);
  OUTLINED_FUNCTION_13(v20);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v21);
  v23 = &v125 - v22;
  v24 = type metadata accessor for NeuralNetwork.Preprocessor.Kind(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_11();
  v140 = v26 - v27;
  MEMORY[0x28223BE20](v28);
  v146 = &v125 - v29;
  v30 = OUTLINED_FUNCTION_153();
  v31 = type metadata accessor for NeuralNetwork.Preprocessor(v30);
  v32 = OUTLINED_FUNCTION_24(v31);
  v128 = v33;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3();
  v145 = (v35 - v34);
  v36 = OUTLINED_FUNCTION_153();
  v37 = type metadata accessor for NeuralNetwork.Layer(v36);
  v38 = OUTLINED_FUNCTION_24(v37);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_3();
  v138 = v40 - v39;
  v41 = OUTLINED_FUNCTION_153();
  v42 = type metadata accessor for Proto_NeuralNetworkClassifier.OneOf_ClassLabels(v41);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_11();
  v46 = v44 - v45;
  MEMORY[0x28223BE20](v47);
  v127 = &v125 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87CA28, &unk_2577700F0);
  OUTLINED_FUNCTION_13(v49);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v50);
  v129 = &v125 - v51;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257745520;
  v53 = OUTLINED_FUNCTION_34_8(inited, 24908);
  v54 = *(v53 + 16);
  v141 = v24;
  v142 = v23;
  v131 = inited;
  v132 = v0;
  if (v54)
  {
    v126 = v42;
    v130 = v46;
    v147 = MEMORY[0x277D84F90];
    v55 = v53;
    sub_257484040(0, v54, 0);
    v56 = v147;
    OUTLINED_FUNCTION_193();
    v125 = v55;
    v58 = v55 + v57;
    *&v137 = *(v59 + 72);
    do
    {
      OUTLINED_FUNCTION_6_33();
      v60 = v138;
      sub_25768C0D0(v58, v138);
      sub_2576EDD44();
      v62 = v61;
      v64 = v63;
      v66 = v65;
      OUTLINED_FUNCTION_4_32();
      sub_25768C128(v60, v67);
      v147 = v56;
      v69 = *(v56 + 16);
      v68 = *(v56 + 24);
      if (v69 >= v68 >> 1)
      {
        v71 = OUTLINED_FUNCTION_174(v68);
        sub_257484040(v71, v69 + 1, 1);
        v56 = v147;
      }

      *(v56 + 16) = v69 + 1;
      v70 = v56 + 24 * v69;
      *(v70 + 32) = v62;
      *(v70 + 40) = v64;
      *(v70 + 48) = v66;
      v58 += v137;
      --v54;
    }

    while (v54);

    inited = v131;
    v1 = v132;
    v24 = v141;
    v23 = v142;
    v46 = v130;
    v42 = v126;
  }

  else
  {

    v56 = MEMORY[0x277D84F90];
  }

  *(inited + 48) = v56;
  *(inited + 56) = 0;
  *(inited + 64) = 1;
  strcpy((inited + 72), "Class Labels");
  *(inited + 85) = 0;
  *(inited + 86) = -5120;
  v130 = type metadata accessor for Proto_NeuralNetworkClassifier(0);
  v72 = v129;
  sub_2574AD5D8(v1 + *(v130 + 32), v129, &qword_27F87CA28, &unk_2577700F0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v72, 1, v42);
  v74 = MEMORY[0x277D84F90];
  if (EnumTagSinglePayload == 1)
  {
    v75 = 0;
    v76 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_5_34();
    v77 = v127;
    sub_25768C180(v72, v127);
    OUTLINED_FUNCTION_1_49();
    sub_25768C0D0(v77, v46);
    sub_25768B02C();
    v76 = v147;
    v75 = v148;
    OUTLINED_FUNCTION_0_61();
    sub_25768C128(v77, v78);
  }

  v150 = v76;
  v151 = v75;
  v79 = sub_2576603F8();

  *(inited + 88) = v79;
  *(inited + 96) = 0;
  *(inited + 104) = 1;
  strcpy((inited + 112), "Preprocessors");
  *(inited + 126) = -4864;
  v80 = NeuralNetworkClassifier.preprocessors.getter();
  v81 = *(v80 + 16);
  if (v81)
  {
    v149 = v74;
    sub_257484040(0, v81, 0);
    v82 = v149;
    OUTLINED_FUNCTION_193();
    v129 = v80;
    v84 = v80 + v83;
    v138 = *(v85 + 72);
    v137 = xmmword_257743FF0;
    do
    {
      v86 = v145;
      sub_25768C0D0(v84, v145);
      v87 = swift_initStackObject();
      *(v87 + 16) = v137;
      strcpy((v87 + 32), "Feature Name");
      *(v87 + 45) = 0;
      *(v87 + 46) = -5120;
      v88 = *v86;
      v89 = v86[1];
      v147 = 34;
      v148 = 0xE100000000000000;
      MEMORY[0x259C64E90](v88, v89);
      MEMORY[0x259C64E90](34, 0xE100000000000000);
      v90 = v148;
      *(v87 + 48) = v147;
      *(v87 + 56) = v90;
      *(v87 + 64) = 0;
      *(v87 + 72) = 1684957515;
      *(v87 + 80) = 0xE400000000000000;
      v91 = v86 + *(type metadata accessor for Proto_NeuralNetworkPreprocessing(0) + 20);
      v92 = v143;
      sub_2574AD5D8(v91, v143, &qword_27F87A048, &qword_257744980);
      v93 = 1;
      if (__swift_getEnumTagSinglePayload(v92, 1, v144) != 1)
      {
        v94 = v133;
        sub_25768C180(v143, v133);
        v95 = v134;
        sub_25768C0D0(v94, v134);
        swift_getEnumCaseMultiPayload();
        sub_25768C180(v95, v23);
        swift_storeEnumTagMultiPayload();
        sub_25768C128(v94, type metadata accessor for Proto_NeuralNetworkPreprocessing.OneOf_Preprocessor);
        v93 = 0;
      }

      __swift_storeEnumTagSinglePayload(v23, v93, 1, v24);
      if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
      {
        v96 = v146;
        *(v146 + 8) = 0;
        v96[1] = 0;
        type metadata accessor for Proto_NeuralNetworkImageScaler(0);
        _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
        *v96 = 1065353216;
        v96[4] = 0;
        swift_storeEnumTagMultiPayload();
        v97 = __swift_getEnumTagSinglePayload(v23, 1, v24);
        v98 = v140;
        if (v97 != 1)
        {
          sub_257499968(v23);
        }
      }

      else
      {
        v96 = v146;
        sub_25768C180(v23, v146);
        v98 = v140;
      }

      sub_25768C0D0(v96, v98);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v99 = v136;
        sub_25768C180(v98, v136);
        v100 = sub_25749CDBC();
        v102 = v101;
        v104 = v103;
        v105 = type metadata accessor for NeuralNetwork.Preprocessor.MeanImageConfiguration;
      }

      else
      {
        v99 = v135;
        sub_25768C180(v98, v135);
        v100 = sub_25749CC5C();
        v102 = v106;
        v104 = v107;
        v105 = type metadata accessor for NeuralNetwork.Preprocessor.ScalerConfiguration;
      }

      sub_25768C128(v99, v105);
      sub_25768C128(v146, type metadata accessor for NeuralNetwork.Preprocessor.Kind);
      *(v87 + 88) = v100;
      *(v87 + 96) = v102;
      *(v87 + 104) = v104;
      v108 = sub_2576A6964(v87);
      v110 = v109;
      OUTLINED_FUNCTION_10_27();
      sub_25768C128(v145, v111);
      v149 = v82;
      v113 = *(v82 + 16);
      v112 = *(v82 + 24);
      if (v113 >= v112 >> 1)
      {
        v115 = OUTLINED_FUNCTION_174(v112);
        sub_257484040(v115, v113 + 1, 1);
        v82 = v149;
      }

      *(v82 + 16) = v113 + 1;
      v114 = v82 + 24 * v113;
      *(v114 + 32) = v108;
      *(v114 + 40) = v110;
      *(v114 + 48) = 2;
      v84 += v138;
      --v81;
      v24 = v141;
      v23 = v142;
    }

    while (v81);

    inited = v131;
    v1 = v132;
  }

  else
  {

    v82 = MEMORY[0x277D84F90];
  }

  *(inited + 128) = v82;
  *(inited + 136) = 0;
  *(inited + 144) = 1;
  *(inited + 152) = 0xD000000000000019;
  *(inited + 160) = 0x800000025777A070;
  if (*(v1 + 24) == 1)
  {
    v116 = vdup_n_s32(*(v1 + 16) == 0);
    v117.i64[0] = v116.u32[0];
    v117.i64[1] = v116.u32[1];
    v118 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v117, 0x3FuLL)), xmmword_257744E80, xmmword_257744E90);
  }

  else
  {
    v118 = xmmword_257744E80;
  }

  v119 = v130;
  *(inited + 168) = v118;
  *(inited + 184) = 0;
  *(inited + 192) = 0xD000000000000019;
  *(inited + 200) = 0x800000025777A090;
  v120 = 0x35206B6E6152;
  if (*(v1 + 40))
  {
    v120 = 0x34206B6E6152;
  }

  *(inited + 208) = v120;
  *(inited + 216) = 0xE600000000000000;
  *(inited + 224) = 0;
  *(inited + 232) = 0xD00000000000001CLL;
  *(inited + 240) = 0x8000000257780EC0;
  v121 = (v1 + *(v119 + 36));
  v122 = *v121;
  v123 = v121[1];
  v147 = 34;
  v148 = 0xE100000000000000;
  MEMORY[0x259C64E90](v122, v123);
  MEMORY[0x259C64E90](34, 0xE100000000000000);
  v124 = v148;
  *(inited + 248) = v147;
  *(inited + 256) = v124;
  *(inited + 264) = 0;
  sub_2576A6964(inited);
  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetworkClassifier.layers.getter()
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
    v12 = v26;
    v16 = type metadata accessor for Proto_NeuralNetworkLayer(0);
    OUTLINED_FUNCTION_24(v16);
    v18 = v10 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v20 = *(v19 + 72);
    do
    {
      OUTLINED_FUNCTION_9_23();
      sub_25768C0D0(v18, v9);
      OUTLINED_FUNCTION_24_2();
      if (v22)
      {
        v24 = OUTLINED_FUNCTION_174(v21);
        sub_2574841E8(v24, v1, 1);
        v12 = v26;
      }

      *(v12 + 16) = v1;
      OUTLINED_FUNCTION_193();
      sub_25768C180(v9, v12 + v23 + *(v6 + 72) * v2);
      v18 += v20;
      --v11;
    }

    while (v11);
  }

  return v12;
}

void NeuralNetworkClassifier.layers.setter()
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
    v14 = v23;
    OUTLINED_FUNCTION_193();
    v16 = v4 + v15;
    v17 = *(v8 + 72);
    do
    {
      OUTLINED_FUNCTION_6_33();
      sub_25768C0D0(v16, v1);
      OUTLINED_FUNCTION_9_23();
      sub_25768C0D0(v1, v2);
      OUTLINED_FUNCTION_4_32();
      sub_25768C128(v1, v18);
      OUTLINED_FUNCTION_27_2();
      if (v20)
      {
        v22 = OUTLINED_FUNCTION_13_1(v19);
        sub_2574843E0(v22, v8, 1);
        v14 = v23;
      }

      *(v14 + 16) = v8;
      OUTLINED_FUNCTION_193();
      OUTLINED_FUNCTION_17_16();
      sub_25768C180(v2, v21);
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

uint64_t (*NeuralNetworkClassifier.layers.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = NeuralNetworkClassifier.layers.getter();
  return sub_25768A728;
}

uint64_t NeuralNetworkClassifier.preprocessors.getter()
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
    v12 = v26;
    v16 = type metadata accessor for Proto_NeuralNetworkPreprocessing(0);
    OUTLINED_FUNCTION_24(v16);
    v18 = v10 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v20 = *(v19 + 72);
    do
    {
      OUTLINED_FUNCTION_8_25();
      sub_25768C0D0(v18, v9);
      OUTLINED_FUNCTION_24_2();
      if (v22)
      {
        v24 = OUTLINED_FUNCTION_174(v21);
        sub_257484240(v24, v1, 1);
        v12 = v26;
      }

      *(v12 + 16) = v1;
      OUTLINED_FUNCTION_193();
      sub_25768C180(v9, v12 + v23 + *(v6 + 72) * v2);
      v18 += v20;
      --v11;
    }

    while (v11);
  }

  return v12;
}

void NeuralNetworkClassifier.preprocessors.setter()
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
      OUTLINED_FUNCTION_16_12();
      sub_25768C0D0(v16, v1);
      OUTLINED_FUNCTION_8_25();
      sub_25768C0D0(v1, v2);
      OUTLINED_FUNCTION_10_27();
      sub_25768C128(v1, v18);
      OUTLINED_FUNCTION_27_2();
      if (v20)
      {
        v22 = OUTLINED_FUNCTION_13_1(v19);
        sub_257484438(v22, v8, 1);
        v14 = v23;
      }

      *(v14 + 16) = v8;
      OUTLINED_FUNCTION_193();
      OUTLINED_FUNCTION_15_13();
      sub_25768C180(v2, v21);
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

uint64_t (*NeuralNetworkClassifier.preprocessors.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = NeuralNetworkClassifier.preprocessors.getter();
  return sub_25768AB10;
}

uint64_t sub_25768AB28(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  a3(v4);
}

unsigned __int8 *NeuralNetworkClassifier.arrayInputShapeMapping.setter(unsigned __int8 *result)
{
  *(v1 + 16) = *result;
  *(v1 + 24) = 1;
  return result;
}

uint64_t *(*NeuralNetworkClassifier.arrayInputShapeMapping.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = *(v1 + 24) == 1 && *(v1 + 16) != 0;
  *(a1 + 8) = v2;
  return sub_257498D04;
}

uint64_t *(*NeuralNetworkClassifier.imageInputShapeMapping.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 40);
  return sub_257498D9C;
}

uint64_t NeuralNetworkClassifier.classLabels.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for Proto_NeuralNetworkClassifier.OneOf_ClassLabels(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87CA28, &unk_2577700F0);
  OUTLINED_FUNCTION_13(v12);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_78();
  v15 = type metadata accessor for Proto_NeuralNetworkClassifier(v14);
  sub_2574AD5D8(v1 + *(v15 + 32), v2, &qword_27F87CA28, &unk_2577700F0);
  result = __swift_getEnumTagSinglePayload(v2, 1, v4);
  if (result == 1)
  {
    v17 = 0;
    v18 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_5_34();
    sub_25768C180(v2, v11);
    OUTLINED_FUNCTION_1_49();
    sub_25768C0D0(v11, v8);
    sub_25768B02C();
    v18 = v20;
    v17 = v21;
    OUTLINED_FUNCTION_0_61();
    result = sub_25768C128(v11, v19);
  }

  *a1 = v18;
  *(a1 + 8) = v17;
  return result;
}

uint64_t sub_25768AE84@<X0>(uint64_t a1@<X8>)
{
  result = NeuralNetworkClassifier.classLabels.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_25768AEC8(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;

  return NeuralNetworkClassifier.classLabels.setter(&v3);
}

uint64_t NeuralNetworkClassifier.classLabels.setter(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87CA28, &unk_2577700F0);
  OUTLINED_FUNCTION_13(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v6 = (&v12 - v5);
  v7 = *a1;
  if (a1[1])
  {
    type metadata accessor for Proto_StringVector(0);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    *v6 = v7;
    v8 = type metadata accessor for Proto_NeuralNetworkClassifier.OneOf_ClassLabels(0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {

    sub_25764CFE8(v9);
    v8 = type metadata accessor for Proto_NeuralNetworkClassifier.OneOf_ClassLabels(0);
    swift_storeEnumTagMultiPayload();
  }

  type metadata accessor for Proto_NeuralNetworkClassifier.OneOf_ClassLabels(0);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v8);
  v10 = type metadata accessor for Proto_NeuralNetworkClassifier(0);
  return sub_25768BF08(v6, v1 + *(v10 + 32));
}

void sub_25768B02C()
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
  v14 = v13 - v12;
  type metadata accessor for Proto_NeuralNetworkClassifier.OneOf_ClassLabels(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_1_49();
  sub_25768C0D0(v2, v0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_25768C180(v0, v14);
    v19 = *v14;
    v20 = *(*v14 + 16);
    if (v20)
    {
      v21 = OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
      sub_257483724(v21, v20, 0);
      v18 = v30;
      v22 = (v19 + 32);
      v23 = *(v30 + 16);
      do
      {
        v25 = *v22++;
        v24 = v25;
        v26 = *(v30 + 24);
        if (v23 >= v26 >> 1)
        {
          v27 = OUTLINED_FUNCTION_13_1(v26);
          sub_257483724(v27, v23 + 1, 1);
        }

        *(v30 + 16) = v23 + 1;
        *(v30 + 8 * v23++ + 32) = v24;
        --v20;
      }

      while (v20);
      OUTLINED_FUNCTION_0_61();
      sub_25768C128(v2, v28);
      OUTLINED_FUNCTION_18_23();
    }

    else
    {
      OUTLINED_FUNCTION_0_61();
      sub_25768C128(v2, v29);
      OUTLINED_FUNCTION_18_23();
      v18 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_61();
    sub_25768C128(v2, v17);
    sub_25768C180(v0, v9);
    v18 = *v9;

    sub_25768C128(v9, type metadata accessor for Proto_StringVector);
  }

  *v4 = v18;
  *(v4 + 8) = EnumCaseMultiPayload != 1;
  OUTLINED_FUNCTION_35();
}

void (*NeuralNetworkClassifier.classLabels.modify(void *a1))(void ***a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  v3[2] = v1;
  v4 = type metadata accessor for Proto_NeuralNetworkClassifier.OneOf_ClassLabels(0);
  v3[3] = v4;
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 64);
  v7 = __swift_coroFrameAllocStub(v6);
  v3[4] = v7;
  v8 = __swift_coroFrameAllocStub(v6);
  v3[5] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87CA28, &unk_2577700F0);
  OUTLINED_FUNCTION_13(v9);
  v11 = *(v10 + 64);
  v3[6] = __swift_coroFrameAllocStub(v11);
  v3[7] = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v3[8] = v12;
  v13 = *(type metadata accessor for Proto_NeuralNetworkClassifier(0) + 32);
  *(v3 + 3) = v13;
  sub_2574AD5D8(v1 + v13, v12, &qword_27F87CA28, &unk_2577700F0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v4) == 1)
  {
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_5_34();
    sub_25768C180(v12, v8);
    OUTLINED_FUNCTION_1_49();
    sub_25768C0D0(v8, v7);
    sub_25768B02C();
    v15 = v18;
    v14 = v19;
    OUTLINED_FUNCTION_0_61();
    sub_25768C128(v8, v16);
  }

  *v3 = v15;
  *(v3 + 8) = v14;
  return sub_25768B428;
}

void sub_25768B428(void ***a1, char a2)
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
      OUTLINED_FUNCTION_28_15();
      swift_storeEnumTagMultiPayload();
    }

    else
    {

      sub_25764CFE8(v10);
      swift_storeEnumTagMultiPayload();
    }

    OUTLINED_FUNCTION_43_6();
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
    sub_25768BF08(v9, v5 + v4);
  }

  else
  {
    v9 = v6[7];
    if ((*a1)[1])
    {
      type metadata accessor for Proto_StringVector(0);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      *v9 = v7;
      OUTLINED_FUNCTION_28_15();
      swift_storeEnumTagMultiPayload();
    }

    else
    {

      sub_25764CFE8(v12);
      swift_storeEnumTagMultiPayload();
    }

    OUTLINED_FUNCTION_43_6();
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v13);
    sub_25768BF08(v8, v5 + v4);
  }

  free(v7);
  free(v8);
  free(v9);
  free(v2);
  free(v3);

  free(v6);
}

uint64_t NeuralNetworkClassifier.labelProbabilityLayerName.getter()
{
  type metadata accessor for Proto_NeuralNetworkClassifier(0);

  return OUTLINED_FUNCTION_205();
}

uint64_t sub_25768B5E4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return NeuralNetworkClassifier.labelProbabilityLayerName.setter(v1, v2);
}

uint64_t NeuralNetworkClassifier.labelProbabilityLayerName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Proto_NeuralNetworkClassifier(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*NeuralNetworkClassifier.labelProbabilityLayerName.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  v4 = *(type metadata accessor for Proto_NeuralNetworkClassifier(0) + 36);
  *(v3 + 8) = v4;
  v5 = (v1 + v4);
  v7 = *v5;
  v6 = v5[1];
  v3[3] = v6;
  *v3 = v7;
  v3[1] = v6;

  return sub_25768B6F0;
}

void sub_25768B6F0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v6 = (*a1)[2];
  if (a2)
  {
    v7 = (v6 + v5);

    *v7 = v4;
    v7[1] = v3;
  }

  else
  {

    v8 = (v6 + v5);
    *v8 = v4;
    v8[1] = v3;
  }

  free(v2);
}

void NeuralNetworkClassifier.init(layers:preprocessors:)()
{
  OUTLINED_FUNCTION_31();
  v63 = v2;
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
  v24 = type metadata accessor for Proto_NeuralNetworkClassifier(0);
  v25 = v24[8];
  v26 = type metadata accessor for Proto_NeuralNetworkClassifier.OneOf_ClassLabels(0);
  __swift_storeEnumTagSinglePayload(v6 + v25, 1, 1, v26);
  v27 = (v6 + v24[9]);
  *v27 = 0;
  v27[1] = 0xE000000000000000;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v28 = v24[11];
  updated = type metadata accessor for Proto_NetworkUpdateParameters(0);
  v30 = v6 + v28;
  v31 = v4;
  __swift_storeEnumTagSinglePayload(v30, 1, 1, updated);
  v32 = *(v4 + 16);
  if (v32)
  {
    v60 = v10;
    v61 = v1;
    v62 = v6;
    OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_28_15();
    sub_2574843E0(v33, v34, v35);
    v36 = v64;
    OUTLINED_FUNCTION_193();
    v38 = v31 + v37;
    v40 = *(v39 + 72);
    do
    {
      OUTLINED_FUNCTION_6_33();
      sub_25768C0D0(v38, v18);
      OUTLINED_FUNCTION_9_23();
      sub_25768C0D0(v18, v23);
      OUTLINED_FUNCTION_4_32();
      sub_25768C128(v18, v41);
      v64 = v36;
      v43 = *(v36 + 16);
      v42 = *(v36 + 24);
      if (v43 >= v42 >> 1)
      {
        v45 = OUTLINED_FUNCTION_13_1(v42);
        sub_2574843E0(v45, v43 + 1, 1);
      }

      *(v36 + 16) = v43 + 1;
      OUTLINED_FUNCTION_193();
      OUTLINED_FUNCTION_17_16();
      sub_25768C180(v23, v44);
      v38 += v40;
      --v32;
    }

    while (v32);

    v1 = v61;
    v6 = v62;
    v10 = v60;
  }

  else
  {

    v36 = MEMORY[0x277D84F90];
  }

  *v6 = v36;
  v46 = *(v63 + 16);
  if (v46)
  {
    OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_28_15();
    sub_257484438(v47, v48, v49);
    v50 = v64;
    OUTLINED_FUNCTION_193();
    v52 = v63 + v51;
    v53 = *(v10 + 72);
    do
    {
      OUTLINED_FUNCTION_16_12();
      sub_25768C0D0(v52, v0);
      OUTLINED_FUNCTION_8_25();
      sub_25768C0D0(v0, v1);
      OUTLINED_FUNCTION_10_27();
      sub_25768C128(v0, v54);
      v55 = v1;
      v57 = *(v64 + 16);
      v56 = *(v64 + 24);
      if (v57 >= v56 >> 1)
      {
        v59 = OUTLINED_FUNCTION_13_1(v56);
        sub_257484438(v59, v57 + 1, 1);
      }

      *(v64 + 16) = v57 + 1;
      OUTLINED_FUNCTION_193();
      OUTLINED_FUNCTION_15_13();
      sub_25768C180(v55, v58);
      v52 += v53;
      --v46;
      v1 = v55;
    }

    while (v46);
  }

  else
  {

    v50 = MEMORY[0x277D84F90];
  }

  *(v6 + 8) = v50;
  OUTLINED_FUNCTION_35();
}

void NeuralNetworkClassifier.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  v24[1] = v1;
  v2 = sub_257743A84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v10 = v24 - v9;
  type metadata accessor for NeuralNetworkClassifier(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  sub_25768C0D0(v0, v13 - v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_257745520;
  v15 = OUTLINED_FUNCTION_34_8(v14, 24940);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A098, &unk_257744EB0);
  *(v14 + 48) = v15;
  *(v14 + 72) = v16;
  strcpy((v14 + 80), "preprocessors");
  *(v14 + 94) = -4864;
  v17 = NeuralNetworkClassifier.preprocessors.getter();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A0A0, &qword_257770100);
  *(v14 + 96) = v17;
  *(v14 + 120) = v18;
  *(v14 + 128) = 0xD000000000000016;
  *(v14 + 136) = 0x800000025777A030;
  *(v14 + 168) = &type metadata for NeuralNetwork.ArrayShapeMapping;
  v19 = *(v0 + 24) == 1 && *(v0 + 16) != 0;
  *(v14 + 144) = v19;
  *(v14 + 176) = 0xD000000000000016;
  *(v14 + 184) = 0x800000025777A050;
  *(v14 + 192) = *(v0 + 40);
  *(v14 + 216) = &type metadata for NeuralNetwork.ImageShapeMapping;
  *(v14 + 224) = 0x62614C7373616C63;
  *(v14 + 232) = 0xEB00000000736C65;
  *(v14 + 264) = &type metadata for NeuralNetworkClassifier.ClassLabels;
  NeuralNetworkClassifier.classLabels.getter(v14 + 240);
  *(v14 + 272) = 0xD000000000000019;
  *(v14 + 280) = 0x800000025777FCB0;
  v20 = (v0 + *(type metadata accessor for Proto_NeuralNetworkClassifier(0) + 36));
  v21 = *v20;
  v22 = v20[1];
  *(v14 + 312) = MEMORY[0x277D837D0];
  *(v14 + 288) = v21;
  *(v14 + 296) = v22;
  v23 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v23);
  (*(v3 + 104))(v6, *MEMORY[0x277D84C38], v2);

  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t static NeuralNetworkClassifier.ClassLabels.== infix(_:_:)(uint64_t a1, uint64_t a2)
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

uint64_t sub_25768BF08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87CA28, &unk_2577700F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for NeuralNetworkClassifier(uint64_t a1)
{
  result = qword_281537AB0;
  if (!qword_281537AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_25768BFC8()
{
  result = qword_27F87BAF8;
  if (!qword_27F87BAF8)
  {
    type metadata accessor for Proto_NeuralNetworkClassifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87BAF8);
  }

  return result;
}

uint64_t sub_25768C048(uint64_t a1)
{
  result = type metadata accessor for Proto_NeuralNetworkClassifier(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25768C0D0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return a2;
}

uint64_t sub_25768C128(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_25768C180(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return a2;
}

uint64_t OUTLINED_FUNCTION_18_23()
{

  return sub_25768C128(v0, type metadata accessor for Proto_Int64Vector);
}

uint64_t OUTLINED_FUNCTION_34_8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = a2 & 0xFFFF00000000FFFFLL | 0x737265790000;
  *(a1 + 40) = 0xE600000000000000;

  return NeuralNetworkClassifier.layers.getter();
}

BOOL sub_25768C39C(float *a1, float *a2, uint64_t (*a3)(void, float))
{
  result = 0;
  if (*a1 == *a2)
  {
    a3(0, *a1);
    sub_2577431B4();
    sub_25768C788(&qword_27F879B68, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t _s20MLModelSpecification13NeuralNetworkV5LayerV15EqualParametersV20propertyDescriptionsSaySS4name_SS5valuetGvg_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2577442B0;
  *(v0 + 32) = 0x6168706C41;
  *(v0 + 40) = 0xE500000000000000;
  *(v0 + 48) = sub_257743794();
  *(v0 + 56) = v1;
  return v0;
}

uint64_t sub_25768C57C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  *a2 = 0;
  a1(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_25768C788(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25768CA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t static NeuralNetwork.Layer.unary(name:inputName:outputName:function:shift:scale:alpha:epsilon:)()
{
  OUTLINED_FUNCTION_29_2();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v32 = v14;
  v33 = v15;
  v17 = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v30 - v19;
  v21 = type metadata accessor for NeuralNetwork.Layer.Kind(0);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3();
  v24 = v23 - v22;
  v31 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v25 = swift_allocObject();
  v30 = xmmword_2577442B0;
  *(v25 + 16) = xmmword_2577442B0;
  *(v25 + 32) = v13;
  *(v25 + 40) = v11;
  v26 = swift_allocObject();
  *(v26 + 16) = v30;
  *(v26 + 32) = v9;
  *(v26 + 40) = v7;
  *v24 = 0;
  *(v24 + 8) = 1;
  type metadata accessor for Proto_UnaryFunctionLayerParams(0);
  *(v24 + 20) = 0;
  *(v24 + 12) = 0;

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v24 = v31;
  *(v24 + 8) = 1;
  *(v24 + 20) = v3;
  *(v24 + 24) = v2;
  *(v24 + 12) = v1;
  *(v24 + 16) = v0;
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v27 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    swift_once();
  }

  *(v17 + v27) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v26);
  sub_2574897E0(v20);
  v28 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v28);
  sub_25752846C();
  return sub_257634BB4(v24);
}

uint64_t static NeuralNetwork.Layer.Kind.unary(function:shift:scale:alpha:epsilon:)()
{
  OUTLINED_FUNCTION_29_2();
  v1 = OUTLINED_FUNCTION_3_43(v0);
  OUTLINED_FUNCTION_9_24(v1);
  OUTLINED_FUNCTION_6_34();
  type metadata accessor for NeuralNetwork.Layer.Kind(0);

  return swift_storeEnumTagMultiPayload();
}

void NeuralNetwork.Layer.UnaryFunctionParameters.init(function:shift:scale:alpha:epsilon:)()
{
  OUTLINED_FUNCTION_29_2();
  v1 = OUTLINED_FUNCTION_3_43(v0);
  OUTLINED_FUNCTION_9_24(v1);
  OUTLINED_FUNCTION_6_34();
}

uint64_t NeuralNetwork.Layer.UnaryFunctionParameters.propertyDescriptions.getter()
{
  v3 = 0xEB00000000746F6FLL;
  if (*(v0 + 8) == 1)
  {
    v4 = 0x5220657261757153;
    switch(*v0)
    {
      case 1:
        v3 = 0x8000000257780EE0;
        v4 = 0xD000000000000013;
        break;
      case 2:
        v3 = 0xE700000000000000;
        v4 = 0x65737265766E49;
        break;
      case 3:
        v3 = 0xE500000000000000;
        v4 = 0x7265776F50;
        break;
      case 4:
        v3 = 0xE300000000000000;
        v4 = 7370853;
        break;
      case 5:
        v3 = 0xE300000000000000;
        v4 = 6778732;
        break;
      case 6:
        v3 = 0xE300000000000000;
        v4 = 7561825;
        break;
      case 7:
        v3 = 0xE900000000000064;
        v4 = 0x6C6F687365726854;
        break;
      default:
        break;
    }
  }

  else
  {
    v4 = 0x5220657261757153;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2577442B0;
  *(v5 + 32) = 0x6E6F6974637546;
  *(v5 + 40) = 0xE700000000000000;
  *(v5 + 48) = v4;
  *(v5 + 56) = v3;
  if (*(v0 + 12) != 0.0)
  {
    v3 = sub_257743794();
    v4 = v6;
    v1 = 2;
    sub_257469388();
    v5 = v7;
    v7[2] = 2;
    v7[8] = 0x6168706C41;
    v7[9] = 0xE500000000000000;
    v7[10] = v3;
    v7[11] = v4;
  }

  if (*(v0 + 16) != 0.0)
  {
    sub_257743794();
    OUTLINED_FUNCTION_4_33();
    if (v8)
    {
      OUTLINED_FUNCTION_5_35();
      v5 = v17;
    }

    *(v5 + 16) = v1;
    v9 = (v5 + 32 * v2);
    v9[4] = 0x6E6F6C69737045;
    v9[5] = 0xE700000000000000;
    v9[6] = v3;
    v9[7] = v4;
  }

  if (*(v0 + 20) != 0.0)
  {
    sub_257743794();
    OUTLINED_FUNCTION_4_33();
    if (v8)
    {
      OUTLINED_FUNCTION_5_35();
      v5 = v18;
    }

    *(v5 + 16) = v1;
    v10 = (v5 + 32 * v2);
    v10[4] = 0x7466696853;
    v10[5] = 0xE500000000000000;
    v10[6] = v3;
    v10[7] = v4;
  }

  if (*(v0 + 24) != 0.0)
  {
    v11 = sub_257743794();
    v13 = v12;
    v14 = *(v5 + 16);
    if (v14 >= *(v5 + 24) >> 1)
    {
      sub_257469388();
      v5 = v19;
    }

    *(v5 + 16) = v14 + 1;
    v15 = (v5 + 32 * v14);
    v15[4] = 0x656C616353;
    v15[5] = 0xE500000000000000;
    v15[6] = v11;
    v15[7] = v13;
  }

  return v5;
}

void NeuralNetwork.Layer.UnaryFunctionParameters.function.getter(_BYTE *a1@<X8>)
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

unsigned __int8 *NeuralNetwork.Layer.UnaryFunctionParameters.function.setter(unsigned __int8 *result)
{
  *v1 = *result;
  *(v1 + 8) = 1;
  return result;
}

uint64_t *(*NeuralNetwork.Layer.UnaryFunctionParameters.function.modify(uint64_t a1))(uint64_t *result)
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

float (*NeuralNetwork.Layer.UnaryFunctionParameters.alpha.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 12);
  return sub_25749D2F4;
}

float (*NeuralNetwork.Layer.UnaryFunctionParameters.epsilon.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 16);
  return sub_25749D3D8;
}

float (*NeuralNetwork.Layer.UnaryFunctionParameters.shift.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 20);
  return sub_25768D214;
}

float sub_25768D214(float *a1)
{
  result = a1[2];
  *(*a1 + 20) = result;
  return result;
}

float (*NeuralNetwork.Layer.UnaryFunctionParameters.scale.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 24);
  return sub_25768D258;
}

float sub_25768D258(float *a1)
{
  result = a1[2];
  *(*a1 + 24) = result;
  return result;
}

uint64_t NeuralNetwork.Layer.UnaryFunctionParameters.hash(into:)(uint64_t a1)
{
  type metadata accessor for Proto_UnaryFunctionLayerParams(0);
  OUTLINED_FUNCTION_0_62();
  sub_25768D7FC(v1, v2, &unk_257766A78);

  return sub_2577435F4();
}

uint64_t NeuralNetwork.Layer.UnaryFunctionParameters.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_UnaryFunctionLayerParams(0);
  OUTLINED_FUNCTION_0_62();
  sub_25768D7FC(v0, v1, &unk_257766A78);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_25768D360(uint64_t a1)
{
  sub_257743A14();
  type metadata accessor for Proto_UnaryFunctionLayerParams(0);
  sub_25768D7FC(&qword_27F87E0C8, type metadata accessor for Proto_UnaryFunctionLayerParams, &unk_257766A78);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t NeuralNetwork.Layer.UnaryFunctionParameters.customMirror.getter()
{
  v1 = sub_257743A84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v5 = v4 - v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for NeuralNetwork.Layer.UnaryFunctionParameters(0);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  sub_25768D708(v0, v11 - v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_257744000;
  *(v12 + 32) = 0x6E6F6974636E7566;
  *(v12 + 40) = 0xE800000000000000;
  *(v12 + 72) = &type metadata for NeuralNetwork.Layer.UnaryFunctionParameters.Function;
  NeuralNetwork.Layer.UnaryFunctionParameters.function.getter((v12 + 48));
  v13 = v0[4];
  *(v12 + 96) = v0[3];
  *(v12 + 144) = v13;
  v14 = v0[6];
  *(v12 + 192) = v0[5];
  *(v12 + 80) = 0x6168706C61;
  *(v12 + 88) = 0xE500000000000000;
  v15 = MEMORY[0x277D83A90];
  *(v12 + 120) = MEMORY[0x277D83A90];
  *(v12 + 128) = 0x6E6F6C69737065;
  *(v12 + 136) = 0xE700000000000000;
  *(v12 + 168) = v15;
  *(v12 + 176) = 0x7466696873;
  *(v12 + 184) = 0xE500000000000000;
  *(v12 + 216) = v15;
  *(v12 + 224) = 0x656C616373;
  *(v12 + 232) = 0xE500000000000000;
  *(v12 + 264) = v15;
  *(v12 + 240) = v14;
  v16 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v16);
  (*(v2 + 104))(v5, *MEMORY[0x277D84C38], v1);
  return sub_257743AA4();
}

unint64_t NeuralNetwork.Layer.UnaryFunctionParameters.Function.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 8;
  if (result < 8)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_25768D694@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.Layer.UnaryFunctionParameters.Function.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for NeuralNetwork.Layer.UnaryFunctionParameters(uint64_t a1)
{
  result = qword_27F880C30;
  if (!qword_27F880C30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25768D708(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NeuralNetwork.Layer.UnaryFunctionParameters(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25768D7FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25768D848()
{
  result = qword_27F880C28;
  if (!qword_27F880C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880C28);
  }

  return result;
}

uint64_t sub_25768D8C4(uint64_t a1)
{
  result = type metadata accessor for Proto_UnaryFunctionLayerParams(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s23UnaryFunctionParametersV8FunctionOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s23UnaryFunctionParametersV8FunctionOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_43@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;

  return type metadata accessor for Proto_UnaryFunctionLayerParams(0);
}

void OUTLINED_FUNCTION_5_35()
{

  sub_257469388();
}

void OUTLINED_FUNCTION_6_34()
{
  *v0 = v1;
  *(v0 + 8) = v2;
  *(v0 + 20) = v6;
  *(v0 + 24) = v5;
  *(v0 + 12) = v4;
  *(v0 + 16) = v3;
}

uint64_t OUTLINED_FUNCTION_9_24(uint64_t a1)
{
  *(v1 + 20) = 0;
  *(v1 + 12) = 0;

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

void sub_25768DB44()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v5 = v4;
  type metadata accessor for FeatureType.SequenceParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_1();
  v56 = v7;
  v8 = OUTLINED_FUNCTION_153();
  type metadata accessor for FeatureType.DictionaryParameters(v8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_12_1();
  v55 = v10;
  v11 = OUTLINED_FUNCTION_153();
  type metadata accessor for FeatureType.ShapedArrayParameters(v11);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_12_1();
  v54 = v13;
  v14 = OUTLINED_FUNCTION_153();
  type metadata accessor for FeatureType.ImageParameters(v14);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_12_1();
  v53 = v16;
  v17 = OUTLINED_FUNCTION_153();
  type metadata accessor for FeatureType.StringParameters(v17);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  v21 = (v20 - v19);
  type metadata accessor for FeatureType.DoubleParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3();
  v23 = OUTLINED_FUNCTION_37_8();
  type metadata accessor for FeatureType.IntParameters(v23);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3();
  v27 = (v26 - v25);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C28, &qword_257744540);
  OUTLINED_FUNCTION_13(v28);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_75_0();
  sub_257691000(v3, v1);
  v30 = type metadata accessor for Proto_FeatureType.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v30) == 1)
  {
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_1_50();
    sub_257690ACC(v3, v31);
    *v5 = 0;
LABEL_3:
    OUTLINED_FUNCTION_25_12();
LABEL_4:
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_35();
  }

  else
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        OUTLINED_FUNCTION_33_8();
        OUTLINED_FUNCTION_45_5();
        v44 = *(v3 + *(type metadata accessor for Proto_FeatureType(0) + 20));
        OUTLINED_FUNCTION_1_50();
        sub_257690ACC(v45, v46);
        *v0 = v44;
        OUTLINED_FUNCTION_19_20();
        OUTLINED_FUNCTION_46_8();
        goto LABEL_3;
      case 2u:
        sub_25768EF28();
        v38 = *(v3 + *(type metadata accessor for Proto_FeatureType(0) + 20));
        OUTLINED_FUNCTION_1_50();
        sub_257690ACC(v39, v40);
        *v21 = v38;
        OUTLINED_FUNCTION_21_16();
        sub_25768EF28();
        OUTLINED_FUNCTION_25_12();
        goto LABEL_4;
      case 3u:
        OUTLINED_FUNCTION_45_5();
        v41 = *(v3 + *(type metadata accessor for Proto_FeatureType(0) + 20));
        OUTLINED_FUNCTION_1_50();
        sub_257690ACC(v42, v43);
        *v53 = v41;
        OUTLINED_FUNCTION_11_23();
        OUTLINED_FUNCTION_46_8();
        OUTLINED_FUNCTION_25_12();
        goto LABEL_4;
      case 4u:
        OUTLINED_FUNCTION_45_5();
        v35 = *(v3 + *(type metadata accessor for Proto_FeatureType(0) + 20));
        OUTLINED_FUNCTION_1_50();
        sub_257690ACC(v36, v37);
        *v54 = v35;
        OUTLINED_FUNCTION_13_16();
        OUTLINED_FUNCTION_46_8();
        OUTLINED_FUNCTION_25_12();
        goto LABEL_4;
      case 5u:
        OUTLINED_FUNCTION_45_5();
        v47 = *(v3 + *(type metadata accessor for Proto_FeatureType(0) + 20));
        OUTLINED_FUNCTION_1_50();
        sub_257690ACC(v48, v49);
        *v55 = v47;
        OUTLINED_FUNCTION_10_28();
        OUTLINED_FUNCTION_46_8();
        OUTLINED_FUNCTION_25_12();
        goto LABEL_4;
      case 6u:
        OUTLINED_FUNCTION_45_5();
        v50 = *(v3 + *(type metadata accessor for Proto_FeatureType(0) + 20));
        OUTLINED_FUNCTION_1_50();
        sub_257690ACC(v51, v52);
        *v56 = v50;
        OUTLINED_FUNCTION_9_25();
        OUTLINED_FUNCTION_46_8();
        OUTLINED_FUNCTION_25_12();
        goto LABEL_4;
      case 7u:
        sub_2577438C4();
        __break(1u);
        break;
      default:
        OUTLINED_FUNCTION_32_9();
        sub_25768EF28();
        v32 = *(v3 + *(type metadata accessor for Proto_FeatureType(0) + 20));
        OUTLINED_FUNCTION_1_50();
        sub_257690ACC(v33, v34);
        *v27 = v32;
        OUTLINED_FUNCTION_17_17();
        sub_25768EF28();
        OUTLINED_FUNCTION_25_12();
        goto LABEL_4;
    }
  }
}